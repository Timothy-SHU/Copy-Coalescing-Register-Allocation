; ModuleID = 'kernel/freezer.c'
source_filename = "kernel/freezer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_freezer_active: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad freezer_active ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_freezing_slow_path: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad freezing_slow_path ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___refrigerator: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __refrigerator ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_set_freezable: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad set_freezable ; .previous"

%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon }
%struct.atomic_t = type { i32 }
%union.anon = type { i64 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.pcpu_hot = type { %union.anon.20 }
%union.anon.20 = type { %struct.anon.21, [16 x i8] }
%struct.anon.21 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.static_call_key = type { ptr, %union.anon.22 }
%union.anon.22 = type { i64 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i64, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, ptr, [32 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, %union.rcu_special, %struct.list_head, ptr, i64, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i16, i64, %struct.restart_block, i32, i32, i64, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, ptr, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, %struct.task_io_accounting, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.mutex, i32, ptr, %struct.mutex, %struct.list_head, ptr, i16, i16, ptr, i32, i32, i64, i32, i32, i32, i32, %struct.callback_head, %struct.tlbflush_unmap_batch, ptr, %struct.page_frag, ptr, i32, i32, i64, i64, i64, i64, ptr, ptr, %struct.kmap_ctrl, %struct.callback_head, %struct.refcount_struct, i32, ptr, %struct.timer_list, ptr, %struct.refcount_struct, ptr, ptr, i64, i64, i64, %struct.callback_head, i32, %struct.llist_head, %struct.llist_head, %struct.callback_head, [48 x i8], %struct.thread_struct }
%struct.thread_info = type { i64, i64, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.9, i16, i16 }
%struct.llist_node = type { ptr }
%union.anon.9 = type { i32 }
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
%struct.restart_block = type { i64, ptr, %union.anon.11 }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.16, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.19 }
%union.anon.16 = type { %struct.anon.17 }
%struct.anon.17 = type { i64, i64 }
%union.anon.19 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.sighand_struct = type { %struct.spinlock, %struct.refcount_struct, %struct.wait_queue_head, [64 x %struct.k_sigaction] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.k_sigaction = type { %struct.sigaction }
%struct.sigaction = type { ptr, i64, ptr, %struct.sigset_t }

@freezer_active = hidden global %struct.static_key_false zeroinitializer, align 8, !dbg !0
@__UNIQUE_ID___addressable_freezer_active349 = internal global ptr @freezer_active, section ".discard.addressable", align 8, !dbg !5992
@pm_nosig_freezing = hidden global i8 0, align 1, !dbg !6007
@pm_freezing = hidden global i8 0, align 1, !dbg !6005
@__UNIQUE_ID___addressable_freezing_slow_path350 = internal global ptr @freezing_slow_path, section ".discard.addressable", align 8, !dbg !5994
@.str = private unnamed_addr constant [17 x i8] c"kernel/freezer.c\00", align 1, !dbg !5996
@freezer_lock = internal global %struct.spinlock zeroinitializer, align 4, !dbg !6009
@__UNIQUE_ID___addressable___refrigerator354 = internal global ptr @__refrigerator, section ".discard.addressable", align 8, !dbg !6001
@__UNIQUE_ID___addressable_set_freezable358 = internal global ptr @set_freezable, section ".discard.addressable", align 8, !dbg !6003
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@might_resched.__UNIQUE_ID___addressable___SCK__might_resched2 = internal global ptr @__SCK__might_resched, section ".discard.addressable", align 8, !dbg !6011
@__SCK__might_resched = external dso_local global %struct.static_call_key, align 8
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID___addressable_freezer_active349, ptr @__UNIQUE_ID___addressable_freezing_slow_path350, ptr @__UNIQUE_ID___addressable___refrigerator354, ptr @__UNIQUE_ID___addressable_set_freezable358, ptr @might_resched.__UNIQUE_ID___addressable___SCK__might_resched2], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @freezing_slow_path(ptr noundef %p) #0 align 16 !dbg !6027 {
entry:
  %retval = alloca i1, align 1
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6031, metadata !DIExpression()), !dbg !6032
  %0 = load ptr, ptr %p.addr, align 8, !dbg !6033
  %flags = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 4, !dbg !6035
  %1 = load i32, ptr %flags, align 4, !dbg !6035
  %and = and i32 %1, -2147450880, !dbg !6036
  %tobool = icmp ne i32 %and, 0, !dbg !6036
  br i1 %tobool, label %if.then, label %if.end, !dbg !6037

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !6038
  br label %return, !dbg !6038

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %p.addr, align 8, !dbg !6039
  %call = call i32 @test_tsk_thread_flag(ptr noundef %2, i32 noundef 20) #9, !dbg !6041
  %tobool1 = icmp ne i32 %call, 0, !dbg !6041
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !6042

if.then2:                                         ; preds = %if.end
  store i1 false, ptr %retval, align 1, !dbg !6043
  br label %return, !dbg !6043

if.end3:                                          ; preds = %if.end
  %3 = load i8, ptr @pm_nosig_freezing, align 1, !dbg !6044, !range !6046, !noundef !633
  %tobool4 = trunc i8 %3 to i1, !dbg !6044
  br i1 %tobool4, label %if.then6, label %lor.lhs.false, !dbg !6047

lor.lhs.false:                                    ; preds = %if.end3
  %4 = load ptr, ptr %p.addr, align 8, !dbg !6048
  %call5 = call zeroext i1 @cgroup_freezing(ptr noundef %4) #9, !dbg !6049
  br i1 %call5, label %if.then6, label %if.end7, !dbg !6050

if.then6:                                         ; preds = %lor.lhs.false, %if.end3
  store i1 true, ptr %retval, align 1, !dbg !6051
  br label %return, !dbg !6051

if.end7:                                          ; preds = %lor.lhs.false
  %5 = load i8, ptr @pm_freezing, align 1, !dbg !6052, !range !6046, !noundef !633
  %tobool8 = trunc i8 %5 to i1, !dbg !6052
  br i1 %tobool8, label %land.lhs.true, label %if.end13, !dbg !6054

land.lhs.true:                                    ; preds = %if.end7
  %6 = load ptr, ptr %p.addr, align 8, !dbg !6055
  %flags9 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 4, !dbg !6056
  %7 = load i32, ptr %flags9, align 4, !dbg !6056
  %and10 = and i32 %7, 2097152, !dbg !6057
  %tobool11 = icmp ne i32 %and10, 0, !dbg !6057
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !6058

if.then12:                                        ; preds = %land.lhs.true
  store i1 true, ptr %retval, align 1, !dbg !6059
  br label %return, !dbg !6059

if.end13:                                         ; preds = %land.lhs.true, %if.end7
  store i1 false, ptr %retval, align 1, !dbg !6060
  br label %return, !dbg !6060

return:                                           ; preds = %if.end13, %if.then12, %if.then6, %if.then2, %if.then
  %8 = load i1, ptr %retval, align 1, !dbg !6061
  ret i1 %8, !dbg !6061
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @test_tsk_thread_flag(ptr noundef %tsk, i32 noundef %flag) #2 align 16 !dbg !6062 {
entry:
  %tsk.addr = alloca ptr, align 8
  %flag.addr = alloca i32, align 4
  store ptr %tsk, ptr %tsk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tsk.addr, metadata !6066, metadata !DIExpression()), !dbg !6068
  store i32 %flag, ptr %flag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flag.addr, metadata !6067, metadata !DIExpression()), !dbg !6069
  %0 = load ptr, ptr %tsk.addr, align 8, !dbg !6070
  %thread_info = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 0, !dbg !6070
  %1 = load i32, ptr %flag.addr, align 4, !dbg !6071
  %call = call i32 @test_ti_thread_flag(ptr noundef %thread_info, i32 noundef %1) #9, !dbg !6072
  ret i32 %call, !dbg !6073
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6074 dso_local zeroext i1 @cgroup_freezing(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @frozen(ptr noundef %p) #0 align 16 !dbg !6076 {
entry:
  %p.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6078, metadata !DIExpression()), !dbg !6079
  br label %do.body, !dbg !6080

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6082

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %p.addr, align 8, !dbg !6080
  %__state = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 1, !dbg !6080
  %1 = load volatile i32, ptr %__state, align 8, !dbg !6080
  store i32 %1, ptr %tmp, align 4, !dbg !6082
  %2 = load i32, ptr %tmp, align 4, !dbg !6080
  %and = and i32 %2, 32768, !dbg !6084
  %tobool = icmp ne i32 %and, 0, !dbg !6085
  ret i1 %tobool, !dbg !6086
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @__refrigerator(i1 noundef zeroext %check_kthr_stop) #0 align 16 !dbg !6087 {
entry:
  %check_kthr_stop.addr = alloca i8, align 1
  %state = alloca i32, align 4
  %tmp = alloca i32, align 4
  %was_frozen = alloca i8, align 1
  %tmp1 = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp23 = alloca i64, align 8
  %freeze = alloca i8, align 1
  %__ai_ptr = alloca ptr, align 8
  %tmp45 = alloca i32, align 4
  %__ret = alloca i32, align 4
  %tmp46 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp87 = alloca i32, align 4
  %frombool = zext i1 %check_kthr_stop to i8
  store i8 %frombool, ptr %check_kthr_stop.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %check_kthr_stop.addr, metadata !6091, metadata !DIExpression()), !dbg !6110
  call void @llvm.lifetime.start.p0(i64 4, ptr %state) #10, !dbg !6111
  call void @llvm.dbg.declare(metadata ptr %state, metadata !6092, metadata !DIExpression()), !dbg !6112
  br label %do.body, !dbg !6113

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6115

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6115

do.end:                                           ; preds = %do.cond
  %call = call ptr @get_current() #9, !dbg !6113
  %__state = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 1, !dbg !6113
  %0 = load volatile i32, ptr %__state, align 8, !dbg !6113
  store i32 %0, ptr %tmp, align 4, !dbg !6115
  %1 = load i32, ptr %tmp, align 4, !dbg !6113
  store i32 %1, ptr %state, align 4, !dbg !6112
  call void @llvm.lifetime.start.p0(i64 1, ptr %was_frozen) #10, !dbg !6117
  call void @llvm.dbg.declare(metadata ptr %was_frozen, metadata !6093, metadata !DIExpression()), !dbg !6118
  store i8 0, ptr %was_frozen, align 1, !dbg !6118
  store i32 0, ptr %tmp1, align 4, !dbg !6119
  %2 = load i32, ptr %tmp1, align 4, !dbg !6122
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !6123
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6094, metadata !DIExpression()), !dbg !6123
  %3 = load i32, ptr %state, align 4, !dbg !6123
  %tobool = icmp ne i32 %3, 0, !dbg !6123
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !6123

land.rhs:                                         ; preds = %do.end
  %4 = load i32, ptr %state, align 4, !dbg !6123
  %and = and i32 %4, 3, !dbg !6123
  %tobool2 = icmp ne i32 %and, 0, !dbg !6123
  %lnot = xor i1 %tobool2, true, !dbg !6123
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.end
  %5 = phi i1 [ false, %do.end ], [ %lnot, %land.rhs ], !dbg !6124
  %lnot3 = xor i1 %5, true, !dbg !6123
  %lnot4 = xor i1 %lnot3, true, !dbg !6123
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !6123
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !6123
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !6125
  %tobool5 = icmp ne i32 %6, 0, !dbg !6125
  %lnot6 = xor i1 %tobool5, true, !dbg !6125
  %lnot8 = xor i1 %lnot6, true, !dbg !6125
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !6125
  %conv = sext i32 %lnot.ext9 to i64, !dbg !6125
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6125
  %tobool10 = icmp ne i64 %expval, 0, !dbg !6125
  br i1 %tobool10, label %if.then, label %if.end, !dbg !6123

if.then:                                          ; preds = %land.end
  br label %do.body11, !dbg !6125

do.body11:                                        ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #10, !dbg !6126
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6096, metadata !DIExpression()), !dbg !6126
  store i32 2307, ptr %__flags, align 4, !dbg !6126
  br label %do.body12, !dbg !6126

do.body12:                                        ; preds = %do.body11
  br label %do.cond13, !dbg !6127

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !6127

do.end14:                                         ; preds = %do.cond13
  br label %do.body15, !dbg !6126

do.body15:                                        ; preds = %do.end14
  %7 = load i32, ptr %__flags, align 4, !dbg !6129
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 69, i32 %7, i64 12) #10, !dbg !6129, !srcloc !6131
  br label %do.cond16, !dbg !6129

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !6129

do.end17:                                         ; preds = %do.cond16
  br label %do.body18, !dbg !6126

do.body18:                                        ; preds = %do.end17
  br label %do.cond19, !dbg !6132

do.cond19:                                        ; preds = %do.body18
  br label %do.end20, !dbg !6132

do.end20:                                         ; preds = %do.cond19
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #10, !dbg !6125
  br label %do.cond21, !dbg !6126

do.cond21:                                        ; preds = %do.end20
  br label %do.end22, !dbg !6126

do.end22:                                         ; preds = %do.cond21
  br label %if.end, !dbg !6126

if.end:                                           ; preds = %do.end22, %land.end
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !6123
  %tobool24 = icmp ne i32 %8, 0, !dbg !6123
  %lnot25 = xor i1 %tobool24, true, !dbg !6123
  %lnot27 = xor i1 %lnot25, true, !dbg !6123
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !6123
  %conv29 = sext i32 %lnot.ext28 to i64, !dbg !6123
  %expval30 = call i64 @llvm.expect.i64(i64 %conv29, i64 0), !dbg !6123
  store i64 %expval30, ptr %tmp23, align 8, !dbg !6125
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !6134
  %9 = load i64, ptr %tmp23, align 8, !dbg !6123
  br label %for.cond, !dbg !6135

for.cond:                                         ; preds = %cleanup.cont, %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr %freeze) #10, !dbg !6136
  call void @llvm.dbg.declare(metadata ptr %freeze, metadata !6099, metadata !DIExpression()), !dbg !6137
  br label %do.body31, !dbg !6138

do.body31:                                        ; preds = %for.cond
  br label %do.body32, !dbg !6139

do.body32:                                        ; preds = %do.body31
  br label %do.cond33, !dbg !6140

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !6140

do.end34:                                         ; preds = %do.cond33
  br label %do.body35, !dbg !6139

do.body35:                                        ; preds = %do.end34
  br label %do.body36, !dbg !6142

do.body36:                                        ; preds = %do.body35
  br label %do.cond37, !dbg !6143

do.cond37:                                        ; preds = %do.body36
  br label %do.end38, !dbg !6143

do.end38:                                         ; preds = %do.cond37
  br label %do.body39, !dbg !6142

do.body39:                                        ; preds = %do.end38
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr) #10, !dbg !6145
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr, metadata !6103, metadata !DIExpression()), !dbg !6145
  %call40 = call ptr @get_current() #9, !dbg !6145
  %__state41 = getelementptr inbounds %struct.task_struct, ptr %call40, i32 0, i32 1, !dbg !6145
  store ptr %__state41, ptr %__ai_ptr, align 8, !dbg !6145
  br label %do.body42, !dbg !6145

do.body42:                                        ; preds = %do.body39
  br label %do.cond43, !dbg !6146

do.cond43:                                        ; preds = %do.body42
  br label %do.end44, !dbg !6146

do.end44:                                         ; preds = %do.cond43
  %10 = load ptr, ptr %__ai_ptr, align 8, !dbg !6145
  call void @instrument_atomic_read_write(ptr noundef %10, i64 noundef 4) #9, !dbg !6145
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #10, !dbg !6148
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !6108, metadata !DIExpression()), !dbg !6148
  store i32 32768, ptr %__ret, align 4, !dbg !6148
  %11 = load i32, ptr %__ret, align 4, !dbg !6148
  %12 = load ptr, ptr %__ai_ptr, align 8, !dbg !6148
  %13 = call i32 asm sideeffect "xchgl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %12, i32 %11, ptr elementtype(i32) %12) #10, !dbg !6148, !srcloc !6149
  store i32 %13, ptr %__ret, align 4, !dbg !6148
  %14 = load i32, ptr %__ret, align 4, !dbg !6148
  store i32 %14, ptr %tmp46, align 4, !dbg !6148
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #10, !dbg !6145
  %15 = load i32, ptr %tmp46, align 4, !dbg !6148
  store i32 %15, ptr %tmp45, align 4, !dbg !6145
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr) #10, !dbg !6150
  %16 = load i32, ptr %tmp45, align 4, !dbg !6145
  br label %do.cond47, !dbg !6150

do.cond47:                                        ; preds = %do.end44
  br label %do.end48, !dbg !6150

do.end48:                                         ; preds = %do.cond47
  br label %do.cond49, !dbg !6142

do.cond49:                                        ; preds = %do.end48
  br label %do.end50, !dbg !6142

do.end50:                                         ; preds = %do.cond49
  br label %do.cond51, !dbg !6139

do.cond51:                                        ; preds = %do.end50
  br label %do.end52, !dbg !6139

do.end52:                                         ; preds = %do.cond51
  call void @spin_lock_irq(ptr noundef @freezer_lock) #9, !dbg !6151
  %call53 = call ptr @get_current() #9, !dbg !6152
  %call54 = call zeroext i1 @freezing(ptr noundef %call53) #9, !dbg !6153
  br i1 %call54, label %land.rhs56, label %land.end65, !dbg !6154

land.rhs56:                                       ; preds = %do.end52
  %17 = load i8, ptr %check_kthr_stop.addr, align 1, !dbg !6155, !range !6046, !noundef !633
  %tobool57 = trunc i8 %17 to i1, !dbg !6155
  br i1 %tobool57, label %land.rhs59, label %land.end62, !dbg !6156

land.rhs59:                                       ; preds = %land.rhs56
  %call60 = call zeroext i1 @kthread_should_stop() #9, !dbg !6157
  br label %land.end62

land.end62:                                       ; preds = %land.rhs59, %land.rhs56
  %18 = phi i1 [ false, %land.rhs56 ], [ %call60, %land.rhs59 ], !dbg !6158
  %lnot63 = xor i1 %18, true, !dbg !6159
  br label %land.end65

land.end65:                                       ; preds = %land.end62, %do.end52
  %19 = phi i1 [ false, %do.end52 ], [ %lnot63, %land.end62 ], !dbg !6158
  %frombool66 = zext i1 %19 to i8, !dbg !6160
  store i8 %frombool66, ptr %freeze, align 1, !dbg !6160
  call void @spin_unlock_irq(ptr noundef @freezer_lock) #9, !dbg !6161
  %20 = load i8, ptr %freeze, align 1, !dbg !6162, !range !6046, !noundef !633
  %tobool67 = trunc i8 %20 to i1, !dbg !6162
  br i1 %tobool67, label %if.end69, label %if.then68, !dbg !6164

if.then68:                                        ; preds = %land.end65
  store i32 12, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6165

if.end69:                                         ; preds = %land.end65
  store i8 1, ptr %was_frozen, align 1, !dbg !6166
  call void @schedule() #9, !dbg !6167
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6168
  br label %cleanup, !dbg !6168

cleanup:                                          ; preds = %if.end69, %if.then68
  call void @llvm.lifetime.end.p0(i64 1, ptr %freeze) #10, !dbg !6168
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 12, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond, !dbg !6169, !llvm.loop !6170

for.end:                                          ; preds = %cleanup
  br label %do.body70, !dbg !6174

do.body70:                                        ; preds = %for.end
  br label %do.body71, !dbg !6175

do.body71:                                        ; preds = %do.body70
  br label %do.cond72, !dbg !6177

do.cond72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !6177

do.end73:                                         ; preds = %do.cond72
  br label %do.body74, !dbg !6175

do.body74:                                        ; preds = %do.end73
  br label %do.body75, !dbg !6179

do.body75:                                        ; preds = %do.body74
  br label %do.cond76, !dbg !6181

do.cond76:                                        ; preds = %do.body75
  br label %do.end77, !dbg !6181

do.end77:                                         ; preds = %do.cond76
  br label %do.body78, !dbg !6179

do.body78:                                        ; preds = %do.end77
  %call79 = call ptr @get_current() #9, !dbg !6183
  %__state80 = getelementptr inbounds %struct.task_struct, ptr %call79, i32 0, i32 1, !dbg !6183
  store volatile i32 0, ptr %__state80, align 8, !dbg !6183
  br label %do.cond81, !dbg !6183

do.cond81:                                        ; preds = %do.body78
  br label %do.end82, !dbg !6183

do.end82:                                         ; preds = %do.cond81
  br label %do.cond83, !dbg !6179

do.cond83:                                        ; preds = %do.end82
  br label %do.end84, !dbg !6179

do.end84:                                         ; preds = %do.cond83
  br label %do.cond85, !dbg !6175

do.cond85:                                        ; preds = %do.end84
  br label %do.end86, !dbg !6175

do.end86:                                         ; preds = %do.cond85
  store i32 0, ptr %tmp87, align 4, !dbg !6185
  %21 = load i32, ptr %tmp87, align 4, !dbg !6188
  %22 = load i8, ptr %was_frozen, align 1, !dbg !6189, !range !6046, !noundef !633
  %tobool88 = trunc i8 %22 to i1, !dbg !6189
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr %was_frozen) #10, !dbg !6190
  call void @llvm.lifetime.end.p0(i64 4, ptr %state) #10, !dbg !6190
  ret i1 %tobool88, !dbg !6191

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #5 align 16 !dbg !6192 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #10, !dbg !6203
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !6197, metadata !DIExpression()), !dbg !6203
  br label %do.body, !dbg !6203

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #10, !dbg !6204
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6199, metadata !DIExpression()), !dbg !6204
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6204
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6204
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #10, !dbg !6203
  br label %do.cond, !dbg !6204

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6204

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #10, !dbg !6205
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !6201, metadata !DIExpression()), !dbg !6205
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #11, !dbg !6205, !srcloc !6206
  store i64 %1, ptr %pfo_val__, align 8, !dbg !6205
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !6205
  %3 = inttoptr i64 %2 to ptr, !dbg !6205
  store ptr %3, ptr %tmp, align 8, !dbg !6205
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #10, !dbg !6203
  %4 = load ptr, ptr %tmp, align 8, !dbg !6205
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !6203
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !6203
  store ptr %5, ptr %tmp1, align 8, !dbg !6203
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #10, !dbg !6207
  %6 = load ptr, ptr %tmp1, align 8, !dbg !6203
  ret ptr %6, !dbg !6208
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !6209 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6217, metadata !DIExpression()), !dbg !6219
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6218, metadata !DIExpression()), !dbg !6220
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6221
  %1 = load i64, ptr %size.addr, align 8, !dbg !6222
  %conv = trunc i64 %1 to i32, !dbg !6222
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #9, !dbg !6223
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6224
  %3 = load i64, ptr %size.addr, align 8, !dbg !6224
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #9, !dbg !6224
  ret void, !dbg !6225
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock_irq(ptr noundef %lock) #5 align 16 !dbg !6226 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6231, metadata !DIExpression()), !dbg !6232
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6233
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !6233
  call void @_raw_spin_lock_irq(ptr noundef %1) #9, !dbg !6233
  ret void, !dbg !6234
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @freezing(ptr noundef %p) #2 align 16 !dbg !6235 {
entry:
  %retval = alloca i1, align 1
  %p.addr = alloca ptr, align 8
  %branch = alloca i8, align 1
  %tmp = alloca i64, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6237, metadata !DIExpression()), !dbg !6241
  call void @llvm.lifetime.start.p0(i64 1, ptr %branch) #10, !dbg !6242
  call void @llvm.dbg.declare(metadata ptr %branch, metadata !6238, metadata !DIExpression()), !dbg !6242
  %call = call zeroext i1 @arch_static_branch(ptr noundef @freezer_active, i1 noundef zeroext false) #9, !dbg !6243
  %frombool = zext i1 %call to i8, !dbg !6243
  store i8 %frombool, ptr %branch, align 1, !dbg !6243
  %0 = load i8, ptr %branch, align 1, !dbg !6242, !range !6046, !noundef !633
  %tobool = trunc i8 %0 to i1, !dbg !6242
  %lnot = xor i1 %tobool, true, !dbg !6242
  %lnot1 = xor i1 %lnot, true, !dbg !6242
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6242
  %conv = sext i32 %lnot.ext to i64, !dbg !6242
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6242
  store i64 %expval, ptr %tmp, align 8, !dbg !6246
  call void @llvm.lifetime.end.p0(i64 1, ptr %branch) #10, !dbg !6247
  %1 = load i64, ptr %tmp, align 8, !dbg !6242
  %tobool2 = icmp ne i64 %1, 0, !dbg !6247
  br i1 %tobool2, label %if.then, label %if.end, !dbg !6248

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %p.addr, align 8, !dbg !6249
  %call3 = call zeroext i1 @freezing_slow_path(ptr noundef %2) #9, !dbg !6250
  store i1 %call3, ptr %retval, align 1, !dbg !6251
  br label %return, !dbg !6251

if.end:                                           ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !6252
  br label %return, !dbg !6252

return:                                           ; preds = %if.end, %if.then
  %3 = load i1, ptr %retval, align 1, !dbg !6253
  ret i1 %3, !dbg !6253
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6254 dso_local zeroext i1 @kthread_should_stop() #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irq(ptr noundef %lock) #5 align 16 !dbg !6256 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6258, metadata !DIExpression()), !dbg !6259
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6260
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !6260
  call void @_raw_spin_unlock_irq(ptr noundef %1) #9, !dbg !6260
  ret void, !dbg !6261
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6262 dso_local void @schedule() #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @freeze_task(ptr noundef %p) #0 align 16 !dbg !6263 {
entry:
  %retval = alloca i1, align 1
  %p.addr = alloca ptr, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6265, metadata !DIExpression()), !dbg !6272
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #10, !dbg !6273
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !6266, metadata !DIExpression()), !dbg !6274
  br label %do.body, !dbg !6275

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6276

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #10, !dbg !6277
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !6267, metadata !DIExpression()), !dbg !6277
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #10, !dbg !6277
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !6271, metadata !DIExpression()), !dbg !6277
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !6277
  %conv = zext i1 %cmp to i32, !dbg !6277
  store i32 1, ptr %tmp, align 4, !dbg !6277
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #10, !dbg !6278
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #10, !dbg !6278
  %0 = load i32, ptr %tmp, align 4, !dbg !6277
  %call = call ptr @spinlock_check(ptr noundef @freezer_lock) #9, !dbg !6278
  %call2 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #9, !dbg !6278
  store i64 %call2, ptr %flags, align 8, !dbg !6278
  br label %do.cond, !dbg !6278

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !6278

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !6276

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !6276

do.end4:                                          ; preds = %do.cond3
  %1 = load ptr, ptr %p.addr, align 8, !dbg !6279
  %call5 = call zeroext i1 @freezing(ptr noundef %1) #9, !dbg !6281
  br i1 %call5, label %lor.lhs.false, label %if.then, !dbg !6282

lor.lhs.false:                                    ; preds = %do.end4
  %2 = load ptr, ptr %p.addr, align 8, !dbg !6283
  %call6 = call zeroext i1 @frozen(ptr noundef %2) #9, !dbg !6284
  br i1 %call6, label %if.then, label %lor.lhs.false8, !dbg !6285

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %3 = load ptr, ptr %p.addr, align 8, !dbg !6286
  %call9 = call zeroext i1 @__freeze_task(ptr noundef %3) #9, !dbg !6287
  br i1 %call9, label %if.then, label %if.end, !dbg !6288

if.then:                                          ; preds = %lor.lhs.false8, %lor.lhs.false, %do.end4
  %4 = load i64, ptr %flags, align 8, !dbg !6289
  call void @spin_unlock_irqrestore(ptr noundef @freezer_lock, i64 noundef %4) #9, !dbg !6291
  store i1 false, ptr %retval, align 1, !dbg !6292
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6292

if.end:                                           ; preds = %lor.lhs.false8
  %5 = load ptr, ptr %p.addr, align 8, !dbg !6293
  %flags11 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 4, !dbg !6295
  %6 = load i32, ptr %flags11, align 4, !dbg !6295
  %and = and i32 %6, 2097152, !dbg !6296
  %tobool = icmp ne i32 %and, 0, !dbg !6296
  br i1 %tobool, label %if.else, label %if.then12, !dbg !6297

if.then12:                                        ; preds = %if.end
  %7 = load ptr, ptr %p.addr, align 8, !dbg !6298
  call void @fake_signal_wake_up(ptr noundef %7) #9, !dbg !6299
  br label %if.end14, !dbg !6299

if.else:                                          ; preds = %if.end
  %8 = load ptr, ptr %p.addr, align 8, !dbg !6300
  %call13 = call i32 @wake_up_state(ptr noundef %8, i32 noundef 3) #9, !dbg !6301
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then12
  %9 = load i64, ptr %flags, align 8, !dbg !6302
  call void @spin_unlock_irqrestore(ptr noundef @freezer_lock, i64 noundef %9) #9, !dbg !6303
  store i1 true, ptr %retval, align 1, !dbg !6304
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6304

cleanup:                                          ; preds = %if.end14, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #10, !dbg !6305
  %10 = load i1, ptr %retval, align 1, !dbg !6305
  ret i1 %10, !dbg !6305
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6306 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #5 align 16 !dbg !6311 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6315, metadata !DIExpression()), !dbg !6316
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6317
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !6318
  ret ptr %1, !dbg !6319
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__freeze_task(ptr noundef %p) #0 align 16 !dbg !6320 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6322, metadata !DIExpression()), !dbg !6323
  %0 = load ptr, ptr %p.addr, align 8, !dbg !6324
  %call = call i32 @task_call_func(ptr noundef %0, ptr noundef @__set_task_frozen, ptr noundef null) #9, !dbg !6325
  %tobool = icmp ne i32 %call, 0, !dbg !6325
  ret i1 %tobool, !dbg !6326
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irqrestore(ptr noundef %lock, i64 noundef %flags) #5 align 16 !dbg !6327 {
entry:
  %lock.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6331, metadata !DIExpression()), !dbg !6337
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6332, metadata !DIExpression()), !dbg !6338
  br label %do.body, !dbg !6339

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #10, !dbg !6340
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !6333, metadata !DIExpression()), !dbg !6340
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #10, !dbg !6340
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !6336, metadata !DIExpression()), !dbg !6340
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !6340
  %conv = zext i1 %cmp to i32, !dbg !6340
  store i32 1, ptr %tmp, align 4, !dbg !6340
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #10, !dbg !6341
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #10, !dbg !6341
  %0 = load i32, ptr %tmp, align 4, !dbg !6340
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !6341
  %2 = getelementptr inbounds %struct.spinlock, ptr %1, i32 0, i32 0, !dbg !6341
  %3 = load i64, ptr %flags.addr, align 8, !dbg !6341
  call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i64 noundef %3) #9, !dbg !6341
  br label %do.end, !dbg !6341

do.end:                                           ; preds = %do.body
  ret void, !dbg !6342
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @fake_signal_wake_up(ptr noundef %p) #0 align 16 !dbg !6343 {
entry:
  %p.addr = alloca ptr, align 8
  %flags = alloca i64, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6345, metadata !DIExpression()), !dbg !6347
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #10, !dbg !6348
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !6346, metadata !DIExpression()), !dbg !6349
  %0 = load ptr, ptr %p.addr, align 8, !dbg !6350
  %call = call ptr @lock_task_sighand(ptr noundef %0, ptr noundef %flags) #9, !dbg !6352
  %tobool = icmp ne ptr %call, null, !dbg !6352
  br i1 %tobool, label %if.then, label %if.end, !dbg !6353

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %p.addr, align 8, !dbg !6354
  call void @signal_wake_up(ptr noundef %1, i1 noundef zeroext false) #9, !dbg !6356
  %2 = load ptr, ptr %p.addr, align 8, !dbg !6357
  call void @unlock_task_sighand(ptr noundef %2, ptr noundef %flags) #9, !dbg !6358
  br label %if.end, !dbg !6359

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #10, !dbg !6360
  ret void, !dbg !6360
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6361 dso_local i32 @wake_up_state(ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__thaw_task(ptr noundef %p) #0 align 16 !dbg !6364 {
entry:
  %p.addr = alloca ptr, align 8
  %flags = alloca i64, align 8
  %flags2 = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp25 = alloca i64, align 8
  %ret = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6366, metadata !DIExpression()), !dbg !6384
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #10, !dbg !6385
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !6367, metadata !DIExpression()), !dbg !6386
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags2) #10, !dbg !6385
  call void @llvm.dbg.declare(metadata ptr %flags2, metadata !6368, metadata !DIExpression()), !dbg !6387
  br label %do.body, !dbg !6388

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6389

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #10, !dbg !6390
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !6369, metadata !DIExpression()), !dbg !6390
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #10, !dbg !6390
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !6373, metadata !DIExpression()), !dbg !6390
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !6390
  %conv = zext i1 %cmp to i32, !dbg !6390
  store i32 1, ptr %tmp, align 4, !dbg !6390
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #10, !dbg !6391
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #10, !dbg !6391
  %0 = load i32, ptr %tmp, align 4, !dbg !6390
  %call = call ptr @spinlock_check(ptr noundef @freezer_lock) #9, !dbg !6391
  %call2 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #9, !dbg !6391
  store i64 %call2, ptr %flags, align 8, !dbg !6391
  br label %do.cond, !dbg !6391

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !6391

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !6389

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !6389

do.end4:                                          ; preds = %do.cond3
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !6392
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6374, metadata !DIExpression()), !dbg !6392
  %1 = load ptr, ptr %p.addr, align 8, !dbg !6392
  %call5 = call zeroext i1 @freezing(ptr noundef %1) #9, !dbg !6392
  %lnot = xor i1 %call5, true, !dbg !6392
  %lnot6 = xor i1 %lnot, true, !dbg !6392
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !6392
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !6392
  %2 = load i32, ptr %__ret_warn_on, align 4, !dbg !6393
  %tobool = icmp ne i32 %2, 0, !dbg !6393
  %lnot7 = xor i1 %tobool, true, !dbg !6393
  %lnot9 = xor i1 %lnot7, true, !dbg !6393
  %lnot.ext10 = zext i1 %lnot9 to i32, !dbg !6393
  %conv11 = sext i32 %lnot.ext10 to i64, !dbg !6393
  %expval = call i64 @llvm.expect.i64(i64 %conv11, i64 0), !dbg !6393
  %tobool12 = icmp ne i64 %expval, 0, !dbg !6393
  br i1 %tobool12, label %if.then, label %if.end, !dbg !6392

if.then:                                          ; preds = %do.end4
  br label %do.body13, !dbg !6393

do.body13:                                        ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #10, !dbg !6394
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6377, metadata !DIExpression()), !dbg !6394
  store i32 2307, ptr %__flags, align 4, !dbg !6394
  br label %do.body14, !dbg !6394

do.body14:                                        ; preds = %do.body13
  br label %do.cond15, !dbg !6395

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !6395

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !6394

do.body17:                                        ; preds = %do.end16
  %3 = load i32, ptr %__flags, align 4, !dbg !6397
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 199, i32 %3, i64 12) #10, !dbg !6397, !srcloc !6399
  br label %do.cond18, !dbg !6397

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !6397

do.end19:                                         ; preds = %do.cond18
  br label %do.body20, !dbg !6394

do.body20:                                        ; preds = %do.end19
  br label %do.cond21, !dbg !6400

do.cond21:                                        ; preds = %do.body20
  br label %do.end22, !dbg !6400

do.end22:                                         ; preds = %do.cond21
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #10, !dbg !6393
  br label %do.cond23, !dbg !6394

do.cond23:                                        ; preds = %do.end22
  br label %do.end24, !dbg !6394

do.end24:                                         ; preds = %do.cond23
  br label %if.end, !dbg !6394

if.end:                                           ; preds = %do.end24, %do.end4
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !6392
  %tobool26 = icmp ne i32 %4, 0, !dbg !6392
  %lnot27 = xor i1 %tobool26, true, !dbg !6392
  %lnot29 = xor i1 %lnot27, true, !dbg !6392
  %lnot.ext30 = zext i1 %lnot29 to i32, !dbg !6392
  %conv31 = sext i32 %lnot.ext30 to i64, !dbg !6392
  %expval32 = call i64 @llvm.expect.i64(i64 %conv31, i64 0), !dbg !6392
  store i64 %expval32, ptr %tmp25, align 8, !dbg !6393
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !6402
  %5 = load i64, ptr %tmp25, align 8, !dbg !6392
  %tobool33 = icmp ne i64 %5, 0, !dbg !6402
  br i1 %tobool33, label %if.then34, label %if.end35, !dbg !6403

if.then34:                                        ; preds = %if.end
  br label %unlock, !dbg !6404

if.end35:                                         ; preds = %if.end
  %6 = load ptr, ptr %p.addr, align 8, !dbg !6405
  %call36 = call ptr @lock_task_sighand(ptr noundef %6, ptr noundef %flags2) #9, !dbg !6406
  %tobool37 = icmp ne ptr %call36, null, !dbg !6406
  br i1 %tobool37, label %if.then38, label %if.end44, !dbg !6407

if.then38:                                        ; preds = %if.end35
  call void @llvm.lifetime.start.p0(i64 1, ptr %ret) #10, !dbg !6408
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6380, metadata !DIExpression()), !dbg !6409
  %7 = load ptr, ptr %p.addr, align 8, !dbg !6410
  %call39 = call i32 @task_call_func(ptr noundef %7, ptr noundef @__set_task_special, ptr noundef null) #9, !dbg !6411
  %tobool40 = icmp ne i32 %call39, 0, !dbg !6411
  %frombool = zext i1 %tobool40 to i8, !dbg !6409
  store i8 %frombool, ptr %ret, align 1, !dbg !6409
  %8 = load ptr, ptr %p.addr, align 8, !dbg !6412
  call void @unlock_task_sighand(ptr noundef %8, ptr noundef %flags2) #9, !dbg !6413
  %9 = load i8, ptr %ret, align 1, !dbg !6414, !range !6046, !noundef !633
  %tobool41 = trunc i8 %9 to i1, !dbg !6414
  br i1 %tobool41, label %if.then42, label %if.end43, !dbg !6416

if.then42:                                        ; preds = %if.then38
  store i32 14, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6417

if.end43:                                         ; preds = %if.then38
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6418
  br label %cleanup, !dbg !6418

cleanup:                                          ; preds = %if.then42, %if.end43
  call void @llvm.lifetime.end.p0(i64 1, ptr %ret) #10, !dbg !6418
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 14, label %unlock
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end44, !dbg !6419

if.end44:                                         ; preds = %cleanup.cont, %if.end35
  %10 = load ptr, ptr %p.addr, align 8, !dbg !6420
  %call45 = call i32 @wake_up_state(ptr noundef %10, i32 noundef 32768) #9, !dbg !6421
  br label %unlock, !dbg !6421

unlock:                                           ; preds = %if.end44, %cleanup, %if.then34
  call void @llvm.dbg.label(metadata !6383), !dbg !6422
  %11 = load i64, ptr %flags, align 8, !dbg !6423
  call void @spin_unlock_irqrestore(ptr noundef @freezer_lock, i64 noundef %11) #9, !dbg !6424
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags2) #10, !dbg !6425
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #10, !dbg !6425
  ret void, !dbg !6425

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @lock_task_sighand(ptr noundef %task, ptr noundef %flags) #2 align 16 !dbg !6426 {
entry:
  %task.addr = alloca ptr, align 8
  %flags.addr = alloca ptr, align 8
  %ret = alloca ptr, align 8
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !6430, metadata !DIExpression()), !dbg !6433
  store ptr %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6431, metadata !DIExpression()), !dbg !6434
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #10, !dbg !6435
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6432, metadata !DIExpression()), !dbg !6436
  %0 = load ptr, ptr %task.addr, align 8, !dbg !6437
  %1 = load ptr, ptr %flags.addr, align 8, !dbg !6438
  %call = call ptr @__lock_task_sighand(ptr noundef %0, ptr noundef %1) #9, !dbg !6439
  store ptr %call, ptr %ret, align 8, !dbg !6440
  %2 = load ptr, ptr %ret, align 8, !dbg !6441
  %3 = load ptr, ptr %ret, align 8, !dbg !6442
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #10, !dbg !6443
  ret ptr %3, !dbg !6444
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6445 dso_local i32 @task_call_func(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__set_task_special(ptr noundef %p, ptr noundef %arg) #0 align 16 !dbg !6452 {
entry:
  %p.addr = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  %state = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6454, metadata !DIExpression()), !dbg !6457
  store ptr %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !6455, metadata !DIExpression()), !dbg !6458
  call void @llvm.lifetime.start.p0(i64 4, ptr %state) #10, !dbg !6459
  call void @llvm.dbg.declare(metadata ptr %state, metadata !6456, metadata !DIExpression()), !dbg !6460
  store i32 0, ptr %state, align 4, !dbg !6460
  %0 = load ptr, ptr %p.addr, align 8, !dbg !6461
  %jobctl = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 55, !dbg !6463
  %1 = load i64, ptr %jobctl, align 32, !dbg !6463
  %and = and i64 %1, 134217728, !dbg !6464
  %tobool = icmp ne i64 %and, 0, !dbg !6464
  br i1 %tobool, label %if.then, label %if.else, !dbg !6465

if.then:                                          ; preds = %entry
  store i32 8, ptr %state, align 4, !dbg !6466
  br label %if.end5, !dbg !6467

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %p.addr, align 8, !dbg !6468
  %jobctl1 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 55, !dbg !6470
  %3 = load i64, ptr %jobctl1, align 32, !dbg !6470
  %and2 = and i64 %3, 67108864, !dbg !6471
  %tobool3 = icmp ne i64 %and2, 0, !dbg !6471
  br i1 %tobool3, label %if.then4, label %if.end, !dbg !6472

if.then4:                                         ; preds = %if.else
  store i32 260, ptr %state, align 4, !dbg !6473
  br label %if.end, !dbg !6474

if.end:                                           ; preds = %if.then4, %if.else
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then
  %4 = load i32, ptr %state, align 4, !dbg !6475
  %tobool6 = icmp ne i32 %4, 0, !dbg !6475
  br i1 %tobool6, label %if.then7, label %if.end14, !dbg !6477

if.then7:                                         ; preds = %if.end5
  br label %do.body, !dbg !6478

do.body:                                          ; preds = %if.then7
  br label %do.body8, !dbg !6479

do.body8:                                         ; preds = %do.body
  br label %do.cond, !dbg !6481

do.cond:                                          ; preds = %do.body8
  br label %do.end, !dbg !6481

do.end:                                           ; preds = %do.cond
  br label %do.body9, !dbg !6479

do.body9:                                         ; preds = %do.end
  %5 = load i32, ptr %state, align 4, !dbg !6483
  %6 = load ptr, ptr %p.addr, align 8, !dbg !6483
  %__state = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 1, !dbg !6483
  store volatile i32 %5, ptr %__state, align 8, !dbg !6483
  br label %do.cond10, !dbg !6483

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !6483

do.end11:                                         ; preds = %do.cond10
  br label %do.cond12, !dbg !6479

do.cond12:                                        ; preds = %do.end11
  br label %do.end13, !dbg !6479

do.end13:                                         ; preds = %do.cond12
  br label %if.end14, !dbg !6479

if.end14:                                         ; preds = %do.end13, %if.end5
  %7 = load i32, ptr %state, align 4, !dbg !6485
  call void @llvm.lifetime.end.p0(i64 4, ptr %state) #10, !dbg !6486
  ret i32 %7, !dbg !6487
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @unlock_task_sighand(ptr noundef %task, ptr noundef %flags) #2 align 16 !dbg !6488 {
entry:
  %task.addr = alloca ptr, align 8
  %flags.addr = alloca ptr, align 8
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !6492, metadata !DIExpression()), !dbg !6494
  store ptr %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6493, metadata !DIExpression()), !dbg !6495
  %0 = load ptr, ptr %task.addr, align 8, !dbg !6496
  %sighand = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 105, !dbg !6497
  %1 = load ptr, ptr %sighand, align 8, !dbg !6497
  %siglock = getelementptr inbounds %struct.sighand_struct, ptr %1, i32 0, i32 0, !dbg !6498
  %2 = load ptr, ptr %flags.addr, align 8, !dbg !6499
  %3 = load i64, ptr %2, align 8, !dbg !6500
  call void @spin_unlock_irqrestore(ptr noundef %siglock, i64 noundef %3) #9, !dbg !6501
  ret void, !dbg !6502
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @set_freezable() #0 align 16 !dbg !6503 {
entry:
  br label %do.body, !dbg !6504

do.body:                                          ; preds = %entry
  call void @might_resched() #9, !dbg !6505
  br label %do.end, !dbg !6505

do.end:                                           ; preds = %do.body
  call void @spin_lock_irq(ptr noundef @freezer_lock) #9, !dbg !6507
  %call = call ptr @get_current() #9, !dbg !6508
  %flags = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 4, !dbg !6509
  %0 = load i32, ptr %flags, align 4, !dbg !6510
  %and = and i32 %0, -32769, !dbg !6510
  store i32 %and, ptr %flags, align 4, !dbg !6510
  call void @spin_unlock_irq(ptr noundef @freezer_lock) #9, !dbg !6511
  %call1 = call zeroext i1 @try_to_freeze() #9, !dbg !6512
  ret i1 %call1, !dbg !6513
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @might_resched() #5 align 16 !dbg !6013 {
entry:
  %tmp = alloca ptr, align 8
  store ptr @__SCT__might_resched, ptr %tmp, align 8, !dbg !6514
  %0 = load ptr, ptr %tmp, align 8, !dbg !6514
  %call = call i32 %0() #9, !dbg !6516
  ret void, !dbg !6517
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @try_to_freeze() #2 align 16 !dbg !6518 {
entry:
  %retval = alloca i1, align 1
  br label %do.body, !dbg !6519

do.body:                                          ; preds = %entry
  call void @might_resched() #9, !dbg !6520
  br label %do.end, !dbg !6520

do.end:                                           ; preds = %do.body
  %call = call ptr @get_current() #9, !dbg !6522
  %call1 = call zeroext i1 @freezing(ptr noundef %call) #9, !dbg !6522
  %lnot = xor i1 %call1, true, !dbg !6522
  %lnot2 = xor i1 %lnot, true, !dbg !6522
  %lnot3 = xor i1 %lnot2, true, !dbg !6522
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !6522
  %conv = sext i32 %lnot.ext to i64, !dbg !6522
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6522
  %tobool = icmp ne i64 %expval, 0, !dbg !6522
  br i1 %tobool, label %if.then, label %if.end, !dbg !6524

if.then:                                          ; preds = %do.end
  store i1 false, ptr %retval, align 1, !dbg !6525
  br label %return, !dbg !6525

if.end:                                           ; preds = %do.end
  %call4 = call ptr @get_current() #9, !dbg !6526
  %flags = getelementptr inbounds %struct.task_struct, ptr %call4, i32 0, i32 4, !dbg !6528
  %0 = load i32, ptr %flags, align 4, !dbg !6528
  %and = and i32 %0, 32768, !dbg !6529
  %tobool5 = icmp ne i32 %and, 0, !dbg !6529
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !6530

if.then6:                                         ; preds = %if.end
  call void @debug_check_no_locks_held() #9, !dbg !6531
  br label %if.end7, !dbg !6531

if.end7:                                          ; preds = %if.then6, %if.end
  %call8 = call zeroext i1 @__refrigerator(i1 noundef zeroext false) #9, !dbg !6532
  store i1 %call8, ptr %retval, align 1, !dbg !6533
  br label %return, !dbg !6533

return:                                           ; preds = %if.end7, %if.then
  %1 = load i1, ptr %retval, align 1, !dbg !6534
  ret i1 %1, !dbg !6534
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @test_ti_thread_flag(ptr noundef %ti, i32 noundef %flag) #2 align 16 !dbg !6535 {
entry:
  %ti.addr = alloca ptr, align 8
  %flag.addr = alloca i32, align 4
  store ptr %ti, ptr %ti.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ti.addr, metadata !6541, metadata !DIExpression()), !dbg !6543
  store i32 %flag, ptr %flag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flag.addr, metadata !6542, metadata !DIExpression()), !dbg !6544
  %0 = load i32, ptr %flag.addr, align 4, !dbg !6545
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !6545
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !6545

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %ti.addr, align 8, !dbg !6545
  %flags = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 0, !dbg !6545
  %3 = ptrtoint ptr %flags to i64, !dbg !6545
  %cmp = icmp ne i64 %3, 0, !dbg !6545
  %conv = zext i1 %cmp to i32, !dbg !6545
  %4 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !6545
  br i1 %4, label %land.lhs.true1, label %cond.false, !dbg !6545

land.lhs.true1:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %ti.addr, align 8, !dbg !6545
  %flags2 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 0, !dbg !6545
  %6 = ptrtoint ptr %flags2 to i64, !dbg !6545
  %cmp3 = icmp ne i64 %6, 0, !dbg !6545
  br i1 %cmp3, label %land.lhs.true5, label %cond.false, !dbg !6545

land.lhs.true5:                                   ; preds = %land.lhs.true1
  %7 = load ptr, ptr %ti.addr, align 8, !dbg !6545
  %flags6 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 0, !dbg !6545
  %8 = load i64, ptr %flags6, align 8, !dbg !6545
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !6545
  br i1 %9, label %cond.true, label %cond.false, !dbg !6545

cond.true:                                        ; preds = %land.lhs.true5
  %10 = load i32, ptr %flag.addr, align 4, !dbg !6545
  %conv7 = sext i32 %10 to i64, !dbg !6545
  %11 = load ptr, ptr %ti.addr, align 8, !dbg !6545
  %flags8 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 0, !dbg !6545
  %call = call zeroext i1 @const_test_bit(i64 noundef %conv7, ptr noundef %flags8) #9, !dbg !6545
  %conv9 = zext i1 %call to i32, !dbg !6545
  br label %cond.end, !dbg !6545

cond.false:                                       ; preds = %land.lhs.true5, %land.lhs.true1, %land.lhs.true, %entry
  %12 = load i32, ptr %flag.addr, align 4, !dbg !6545
  %conv10 = sext i32 %12 to i64, !dbg !6545
  %13 = load ptr, ptr %ti.addr, align 8, !dbg !6545
  %flags11 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 0, !dbg !6545
  %call12 = call zeroext i1 @_test_bit(i64 noundef %conv10, ptr noundef %flags11) #9, !dbg !6545
  %conv13 = zext i1 %call12 to i32, !dbg !6545
  br label %cond.end, !dbg !6545

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv9, %cond.true ], [ %conv13, %cond.false ], !dbg !6545
  ret i32 %cond, !dbg !6546
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #7

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !6547 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6555, metadata !DIExpression()), !dbg !6560
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6556, metadata !DIExpression()), !dbg !6561
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #10, !dbg !6562
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6557, metadata !DIExpression()), !dbg !6563
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6564
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6565
  %div = udiv i64 %1, 64, !dbg !6565
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6566
  store ptr %add.ptr, ptr %p, align 8, !dbg !6563
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #10, !dbg !6567
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !6558, metadata !DIExpression()), !dbg !6568
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6569
  %rem = urem i64 %2, 64, !dbg !6569
  %shl = shl i64 1, %rem, !dbg !6569
  store i64 %shl, ptr %mask, align 8, !dbg !6568
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #10, !dbg !6570
  call void @llvm.dbg.declare(metadata ptr %val, metadata !6559, metadata !DIExpression()), !dbg !6571
  %3 = load ptr, ptr %p, align 8, !dbg !6572
  %4 = load i64, ptr %3, align 8, !dbg !6573
  store i64 %4, ptr %val, align 8, !dbg !6571
  %5 = load i64, ptr %val, align 8, !dbg !6574
  %6 = load i64, ptr %mask, align 8, !dbg !6575
  %and = and i64 %5, %6, !dbg !6576
  %tobool = icmp ne i64 %and, 0, !dbg !6577
  %lnot = xor i1 %tobool, true, !dbg !6577
  %lnot1 = xor i1 %lnot, true, !dbg !6578
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #10, !dbg !6579
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #10, !dbg !6579
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #10, !dbg !6579
  ret i1 %lnot1, !dbg !6580
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !6581 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6584, metadata !DIExpression()), !dbg !6586
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6585, metadata !DIExpression()), !dbg !6587
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6588
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6589
  %div = udiv i64 %1, 64, !dbg !6589
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6590
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #9, !dbg !6591
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6592
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6593
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #9, !dbg !6594
  ret i1 %call, !dbg !6595
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !6596 {
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
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #9, !dbg !6604
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6605
  %3 = load i64, ptr %size.addr, align 8, !dbg !6605
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #9, !dbg !6605
  ret void, !dbg !6606
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !6607 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6610, metadata !DIExpression()), !dbg !6612
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6611, metadata !DIExpression()), !dbg !6613
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6614
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6615
  br i1 %1, label %cond.true, label %cond.false, !dbg !6615

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6616
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6617
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #9, !dbg !6618
  %conv = zext i1 %call to i32, !dbg !6618
  br label %cond.end, !dbg !6615

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !6619
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !6620
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #9, !dbg !6621
  %conv2 = zext i1 %call1 to i32, !dbg !6621
  br label %cond.end, !dbg !6615

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !6615
  %tobool = icmp ne i32 %cond, 0, !dbg !6615
  ret i1 %tobool, !dbg !6622
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #2 align 16 !dbg !6623 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6628, metadata !DIExpression()), !dbg !6630
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6629, metadata !DIExpression()), !dbg !6631
  ret i1 true, !dbg !6632
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #2 align 16 !dbg !6633 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6638, metadata !DIExpression()), !dbg !6641
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6639, metadata !DIExpression()), !dbg !6642
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6640, metadata !DIExpression()), !dbg !6643
  ret void, !dbg !6644
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !6645 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6649, metadata !DIExpression()), !dbg !6651
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6650, metadata !DIExpression()), !dbg !6652
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6653
  %and = and i64 %0, 63, !dbg !6654
  %shl = shl i64 1, %and, !dbg !6655
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !6656
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6657
  %shr = ashr i64 %2, 6, !dbg !6658
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !6656
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !6656
  %and1 = and i64 %shl, %3, !dbg !6659
  %cmp = icmp ne i64 %and1, 0, !dbg !6660
  ret i1 %cmp, !dbg !6661
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !6662 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6664, metadata !DIExpression()), !dbg !6667
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6665, metadata !DIExpression()), !dbg !6668
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #10, !dbg !6669
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !6666, metadata !DIExpression()), !dbg !6670
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6671
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6672
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #10, !dbg !6673, !srcloc !6674
  %3 = icmp ult i8 %2, 2, !dbg !6673
  call void @llvm.assume(i1 %3), !dbg !6673
  store i8 %2, ptr %oldbit, align 1, !dbg !6673
  %4 = load i8, ptr %oldbit, align 1, !dbg !6675, !range !6046, !noundef !633
  %tobool = trunc i8 %4 to i1, !dbg !6675
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #10, !dbg !6676
  ret i1 %tobool, !dbg !6677
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #2 align 16 !dbg !6678 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6680, metadata !DIExpression()), !dbg !6682
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6681, metadata !DIExpression()), !dbg !6683
  ret i1 true, !dbg !6684
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6685 dso_local void @_raw_spin_lock_irq(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #5 align 16 !dbg !6688 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !6694, metadata !DIExpression()), !dbg !6697
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !6695, metadata !DIExpression()), !dbg !6698
  %0 = load ptr, ptr %key.addr, align 8, !dbg !6699
  %1 = load i8, ptr %branch.addr, align 1, !dbg !6700, !range !6046, !noundef !633
  %tobool = trunc i8 %1 to i1, !dbg !6700
  %conv = zext i1 %tobool to i32, !dbg !6700
  %or = or i32 2, %conv, !dbg !6701
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #10
          to label %asm.fallthrough [label %l_yes], !dbg !6702, !srcloc !6703

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !6704
  br label %return, !dbg !6704

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !6696), !dbg !6705
  store i1 true, ptr %retval, align 1, !dbg !6706
  br label %return, !dbg !6706

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !6707
  ret i1 %2, !dbg !6707
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6708 dso_local void @_raw_spin_unlock_irq(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__set_task_frozen(ptr noundef %p, ptr noundef %arg) #0 align 16 !dbg !6709 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  %state = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp35 = alloca i64, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6711, metadata !DIExpression()), !dbg !6720
  store ptr %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !6712, metadata !DIExpression()), !dbg !6721
  call void @llvm.lifetime.start.p0(i64 4, ptr %state) #10, !dbg !6722
  call void @llvm.dbg.declare(metadata ptr %state, metadata !6713, metadata !DIExpression()), !dbg !6723
  br label %do.body, !dbg !6724

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6726

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6726

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %p.addr, align 8, !dbg !6724
  %__state = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 1, !dbg !6724
  %1 = load volatile i32, ptr %__state, align 8, !dbg !6724
  store i32 %1, ptr %tmp, align 4, !dbg !6726
  %2 = load i32, ptr %tmp, align 4, !dbg !6724
  store i32 %2, ptr %state, align 4, !dbg !6723
  %3 = load ptr, ptr %p.addr, align 8, !dbg !6728
  %on_rq = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 13, !dbg !6730
  %4 = load i32, ptr %on_rq, align 8, !dbg !6730
  %tobool = icmp ne i32 %4, 0, !dbg !6728
  br i1 %tobool, label %if.then, label %if.end, !dbg !6731

if.then:                                          ; preds = %do.end
  store i32 0, ptr %retval, align 4, !dbg !6732
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6732

if.end:                                           ; preds = %do.end
  %5 = load ptr, ptr %p.addr, align 8, !dbg !6733
  %call = call ptr @get_current() #9, !dbg !6735
  %cmp = icmp ne ptr %5, %call, !dbg !6736
  br i1 %cmp, label %land.lhs.true, label %if.end4, !dbg !6737

land.lhs.true:                                    ; preds = %if.end
  %6 = load ptr, ptr %p.addr, align 8, !dbg !6738
  %call1 = call i32 @task_curr(ptr noundef %6) #9, !dbg !6739
  %tobool2 = icmp ne i32 %call1, 0, !dbg !6739
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !6740

if.then3:                                         ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4, !dbg !6741
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6741

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %7 = load i32, ptr %state, align 4, !dbg !6742
  %and = and i32 %7, 8204, !dbg !6744
  %tobool5 = icmp ne i32 %and, 0, !dbg !6744
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !6745

if.then6:                                         ; preds = %if.end4
  store i32 0, ptr %retval, align 4, !dbg !6746
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6746

if.end7:                                          ; preds = %if.end4
  %8 = load i32, ptr %state, align 4, !dbg !6747
  %and8 = and i32 %8, 8192, !dbg !6748
  %tobool9 = icmp ne i32 %and8, 0, !dbg !6748
  br i1 %tobool9, label %if.then10, label %if.end43, !dbg !6749

if.then10:                                        ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !6750
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6714, metadata !DIExpression()), !dbg !6750
  %9 = load i32, ptr %state, align 4, !dbg !6750
  %and11 = and i32 %9, 3, !dbg !6750
  %tobool12 = icmp ne i32 %and11, 0, !dbg !6750
  %lnot = xor i1 %tobool12, true, !dbg !6750
  %lnot13 = xor i1 %lnot, true, !dbg !6750
  %lnot14 = xor i1 %lnot13, true, !dbg !6750
  %lnot.ext = zext i1 %lnot14 to i32, !dbg !6750
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !6750
  %10 = load i32, ptr %__ret_warn_on, align 4, !dbg !6751
  %tobool15 = icmp ne i32 %10, 0, !dbg !6751
  %lnot16 = xor i1 %tobool15, true, !dbg !6751
  %lnot18 = xor i1 %lnot16, true, !dbg !6751
  %lnot.ext19 = zext i1 %lnot18 to i32, !dbg !6751
  %conv = sext i32 %lnot.ext19 to i64, !dbg !6751
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6751
  %tobool20 = icmp ne i64 %expval, 0, !dbg !6751
  br i1 %tobool20, label %if.then21, label %if.end34, !dbg !6750

if.then21:                                        ; preds = %if.then10
  br label %do.body22, !dbg !6751

do.body22:                                        ; preds = %if.then21
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #10, !dbg !6752
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6717, metadata !DIExpression()), !dbg !6752
  store i32 2307, ptr %__flags, align 4, !dbg !6752
  br label %do.body23, !dbg !6752

do.body23:                                        ; preds = %do.body22
  br label %do.cond24, !dbg !6753

do.cond24:                                        ; preds = %do.body23
  br label %do.end25, !dbg !6753

do.end25:                                         ; preds = %do.cond24
  br label %do.body26, !dbg !6752

do.body26:                                        ; preds = %do.end25
  %11 = load i32, ptr %__flags, align 4, !dbg !6755
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 122, i32 %11, i64 12) #10, !dbg !6755, !srcloc !6757
  br label %do.cond27, !dbg !6755

do.cond27:                                        ; preds = %do.body26
  br label %do.end28, !dbg !6755

do.end28:                                         ; preds = %do.cond27
  br label %do.body29, !dbg !6752

do.body29:                                        ; preds = %do.end28
  br label %do.cond30, !dbg !6758

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !6758

do.end31:                                         ; preds = %do.cond30
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #10, !dbg !6751
  br label %do.cond32, !dbg !6752

do.cond32:                                        ; preds = %do.end31
  br label %do.end33, !dbg !6752

do.end33:                                         ; preds = %do.cond32
  br label %if.end34, !dbg !6752

if.end34:                                         ; preds = %do.end33, %if.then10
  %12 = load i32, ptr %__ret_warn_on, align 4, !dbg !6750
  %tobool36 = icmp ne i32 %12, 0, !dbg !6750
  %lnot37 = xor i1 %tobool36, true, !dbg !6750
  %lnot39 = xor i1 %lnot37, true, !dbg !6750
  %lnot.ext40 = zext i1 %lnot39 to i32, !dbg !6750
  %conv41 = sext i32 %lnot.ext40 to i64, !dbg !6750
  %expval42 = call i64 @llvm.expect.i64(i64 %conv41, i64 0), !dbg !6750
  store i64 %expval42, ptr %tmp35, align 8, !dbg !6751
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !6760
  %13 = load i64, ptr %tmp35, align 8, !dbg !6750
  br label %if.end43, !dbg !6760

if.end43:                                         ; preds = %if.end34, %if.end7
  br label %do.body44, !dbg !6761

do.body44:                                        ; preds = %if.end43
  br label %do.body45, !dbg !6762

do.body45:                                        ; preds = %do.body44
  br label %do.cond46, !dbg !6764

do.cond46:                                        ; preds = %do.body45
  br label %do.end47, !dbg !6764

do.end47:                                         ; preds = %do.cond46
  br label %do.body48, !dbg !6762

do.body48:                                        ; preds = %do.end47
  %14 = load ptr, ptr %p.addr, align 8, !dbg !6766
  %__state49 = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 1, !dbg !6766
  store volatile i32 32768, ptr %__state49, align 8, !dbg !6766
  br label %do.cond50, !dbg !6766

do.cond50:                                        ; preds = %do.body48
  br label %do.end51, !dbg !6766

do.end51:                                         ; preds = %do.cond50
  br label %do.cond52, !dbg !6762

do.cond52:                                        ; preds = %do.end51
  br label %do.end53, !dbg !6762

do.end53:                                         ; preds = %do.cond52
  store i32 32768, ptr %retval, align 4, !dbg !6768
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6768

cleanup:                                          ; preds = %do.end53, %if.then6, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %state) #10, !dbg !6769
  %15 = load i32, ptr %retval, align 4, !dbg !6769
  ret i32 %15, !dbg !6769
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6770 dso_local i32 @task_curr(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6775 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #3 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @signal_wake_up(ptr noundef %t, i1 noundef zeroext %fatal) #2 align 16 !dbg !6778 {
entry:
  %t.addr = alloca ptr, align 8
  %fatal.addr = alloca i8, align 1
  %state = alloca i32, align 4
  store ptr %t, ptr %t.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %t.addr, metadata !6782, metadata !DIExpression()), !dbg !6785
  %frombool = zext i1 %fatal to i8
  store i8 %frombool, ptr %fatal.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %fatal.addr, metadata !6783, metadata !DIExpression()), !dbg !6786
  call void @llvm.lifetime.start.p0(i64 4, ptr %state) #10, !dbg !6787
  call void @llvm.dbg.declare(metadata ptr %state, metadata !6784, metadata !DIExpression()), !dbg !6788
  store i32 0, ptr %state, align 4, !dbg !6788
  %0 = load i8, ptr %fatal.addr, align 1, !dbg !6789, !range !6046, !noundef !633
  %tobool = trunc i8 %0 to i1, !dbg !6789
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !6791

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %t.addr, align 8, !dbg !6792
  %jobctl = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 55, !dbg !6793
  %2 = load i64, ptr %jobctl, align 32, !dbg !6793
  %and = and i64 %2, 16777216, !dbg !6794
  %tobool1 = icmp ne i64 %and, 0, !dbg !6794
  br i1 %tobool1, label %if.end, label %if.then, !dbg !6795

if.then:                                          ; preds = %land.lhs.true
  %3 = load ptr, ptr %t.addr, align 8, !dbg !6796
  %jobctl2 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 55, !dbg !6798
  %4 = load i64, ptr %jobctl2, align 32, !dbg !6799
  %and3 = and i64 %4, -201326593, !dbg !6799
  store i64 %and3, ptr %jobctl2, align 32, !dbg !6799
  store i32 264, ptr %state, align 4, !dbg !6800
  br label %if.end, !dbg !6801

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %5 = load ptr, ptr %t.addr, align 8, !dbg !6802
  %6 = load i32, ptr %state, align 4, !dbg !6803
  call void @signal_wake_up_state(ptr noundef %5, i32 noundef %6) #9, !dbg !6804
  call void @llvm.lifetime.end.p0(i64 4, ptr %state) #10, !dbg !6805
  ret void, !dbg !6805
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6806 dso_local void @signal_wake_up_state(ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6809 dso_local ptr @__lock_task_sighand(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__might_resched() #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @debug_check_no_locks_held() #2 align 16 !dbg !6810 {
entry:
  ret void, !dbg !6812
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { noredzone }
attributes #10 = { nounwind }
attributes #11 = { nounwind memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!6018, !6019, !6020, !6021, !6022, !6023, !6024, !6025}
!llvm.ident = !{!6026}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "freezer_active", scope: !2, file: !3, line: 16, type: !6015, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/.freezer.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/freezer\22 -D KBUILD_BASENAME=\22freezer\22 -D KBUILD_MODNAME=\22freezer\22 -D __KBUILD_MODNAME=kmod_freezer -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/freezer.ll kernel/freezer.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !284, globals: !5991, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "kernel/freezer.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4cc462f5d10687c0cd308eb3d81d1d6a")
!4 = !{!5, !11, !107, !115, !122, !130, !146, !151, !158, !164, !171, !179, !186, !192, !201, !206, !211, !217, !228, !234, !243, !248, !254, !266, !272, !279}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !6, line: 65, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!10 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !13, file: !12, line: 147, baseType: !7, size: 32, elements: !104)
!12 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !12, line: 135, size: 512, elements: !14)
!14 = !{!15, !19, !21, !23, !27, !28, !44, !102, !103}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !13, file: !12, line: 136, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!18 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !13, file: !12, line: 137, baseType: !20, size: 64, offset: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !13, file: !12, line: 138, baseType: !22, size: 32, offset: 128)
!22 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !13, file: !12, line: 139, baseType: !24, size: 16, offset: 160)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !25, line: 24, baseType: !26)
!25 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!26 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !13, file: !12, line: 150, baseType: !11, size: 32, offset: 192)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !13, file: !12, line: 151, baseType: !29, size: 64, offset: 256)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !12, line: 64, baseType: !31)
!31 = !DISubroutineType(types: !32)
!32 = !{!22, !33, !22, !20, !34, !40}
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !25, line: 61, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !37, line: 72, baseType: !38)
!37 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !37, line: 16, baseType: !39)
!39 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !25, line: 52, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !37, line: 88, baseType: !43)
!43 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !13, file: !12, line: 152, baseType: !45, size: 64, offset: 320)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !12, line: 117, size: 256, elements: !47)
!47 = !{!48, !53}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !46, file: !12, line: 118, baseType: !49, size: 32)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !25, line: 174, baseType: !50)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !25, line: 172, size: 32, elements: !51)
!51 = !{!52}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !50, file: !25, line: 173, baseType: !22, size: 32)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !46, file: !12, line: 119, baseType: !54, size: 192, offset: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !55, line: 41, baseType: !56)
!55 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !55, line: 37, size: 192, elements: !57)
!57 = !{!58, !96}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !56, file: !55, line: 38, baseType: !59, size: 32)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !60, line: 29, baseType: !61)
!60 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !60, line: 17, size: 32, elements: !62)
!62 = !{!63}
!63 = !DIDerivedType(tag: DW_TAG_member, scope: !61, file: !60, line: 18, baseType: !64, size: 32)
!64 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !61, file: !60, line: 18, size: 32, elements: !65)
!65 = !{!66}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !64, file: !60, line: 19, baseType: !67, size: 32)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !68, line: 14, size: 32, elements: !69)
!68 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!69 = !{!70}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !67, file: !68, line: 15, baseType: !71, size: 32)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !72, line: 44, baseType: !73)
!72 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !72, line: 14, size: 32, elements: !74)
!74 = !{!75}
!75 = !DIDerivedType(tag: DW_TAG_member, scope: !73, file: !72, line: 15, baseType: !76, size: 32)
!76 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !73, file: !72, line: 15, size: 32, elements: !77)
!77 = !{!78, !79, !89}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !76, file: !72, line: 16, baseType: !49, size: 32)
!79 = !DIDerivedType(tag: DW_TAG_member, scope: !76, file: !72, line: 24, baseType: !80, size: 16)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !76, file: !72, line: 24, size: 16, elements: !81)
!81 = !{!82, !88}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !80, file: !72, line: 25, baseType: !83, size: 8)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !84, line: 17, baseType: !85)
!84 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !86, line: 21, baseType: !87)
!86 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!87 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !80, file: !72, line: 26, baseType: !83, size: 8, offset: 8)
!89 = !DIDerivedType(tag: DW_TAG_member, scope: !76, file: !72, line: 28, baseType: !90, size: 32)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !76, file: !72, line: 28, size: 32, elements: !91)
!91 = !{!92, !95}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !90, file: !72, line: 29, baseType: !93, size: 16)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !84, line: 19, baseType: !94)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !86, line: 24, baseType: !26)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !90, file: !72, line: 30, baseType: !93, size: 16, offset: 16)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !56, file: !55, line: 39, baseType: !97, size: 128, offset: 64)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !25, line: 190, size: 128, elements: !98)
!98 = !{!99, !101}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !97, file: !25, line: 191, baseType: !100, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !97, file: !25, line: 191, baseType: !100, size: 64, offset: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !13, file: !12, line: 153, baseType: !20, size: 64, offset: 384)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !13, file: !12, line: 154, baseType: !20, size: 64, offset: 448)
!104 = !{!105, !106}
!105 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!106 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !108, line: 9, baseType: !7, size: 32, elements: !109)
!108 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!109 = !{!110, !111, !112, !113, !114}
!110 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!111 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!112 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!113 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!114 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!115 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !116, line: 312, baseType: !7, size: 32, elements: !117)
!116 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!117 = !{!118, !119, !120, !121}
!118 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!119 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!120 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!121 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !123, line: 68, baseType: !7, size: 32, elements: !124)
!123 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!124 = !{!125, !126, !127, !128, !129}
!125 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!126 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!127 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!128 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!129 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!130 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !131, line: 1325, baseType: !7, size: 32, elements: !132)
!131 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!132 = !{!133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145}
!133 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!134 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!135 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!136 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!137 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!138 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!139 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!140 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!141 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!142 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!143 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!144 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!145 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!146 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "writeback_sync_modes", file: !147, line: 32, baseType: !7, size: 32, elements: !148)
!147 = !DIFile(filename: "./include/linux/writeback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "529df0d846991cd3030ee9505d2aaa60")
!148 = !{!149, !150}
!149 = !DIEnumerator(name: "WB_SYNC_NONE", value: 0)
!150 = !DIEnumerator(name: "WB_SYNC_ALL", value: 1)
!151 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !152, line: 15, baseType: !7, size: 32, elements: !153)
!152 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!153 = !{!154, !155, !156, !157}
!154 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!155 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!156 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!157 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!158 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !159, line: 45, baseType: !7, size: 32, elements: !160)
!159 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!160 = !{!161, !162, !163}
!161 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!162 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!163 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!164 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !165, line: 487, baseType: !7, size: 32, elements: !166)
!165 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!166 = !{!167, !168, !169, !170}
!167 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!168 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!169 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!170 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!171 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !172, line: 620, baseType: !7, size: 32, elements: !173)
!172 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!173 = !{!174, !175, !176, !177, !178}
!174 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!175 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!176 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!177 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!178 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!179 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !172, line: 597, baseType: !22, size: 32, elements: !180)
!180 = !{!181, !182, !183, !184, !185}
!181 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!182 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!183 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!184 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!185 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!186 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !187, line: 26, baseType: !7, size: 32, elements: !188)
!187 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!188 = !{!189, !190, !191}
!189 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!190 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!191 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!192 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !165, line: 547, baseType: !7, size: 32, elements: !193)
!193 = !{!194, !195, !196, !197, !198, !199, !200}
!194 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!195 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!196 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!197 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!198 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!199 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!200 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!201 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !165, line: 564, baseType: !7, size: 32, elements: !202)
!202 = !{!203, !204, !205}
!203 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!204 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!205 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!206 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !165, line: 577, baseType: !7, size: 32, elements: !207)
!207 = !{!208, !209, !210}
!208 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!209 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!210 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!211 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !165, line: 503, baseType: !7, size: 32, elements: !212)
!212 = !{!213, !214, !215, !216}
!213 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!214 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!215 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!216 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!217 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "trace_reg", file: !218, line: 253, baseType: !7, size: 32, elements: !219)
!218 = !DIFile(filename: "./include/linux/trace_events.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85bf8311371fd36a6792d4cca4559454")
!219 = !{!220, !221, !222, !223, !224, !225, !226, !227}
!220 = !DIEnumerator(name: "TRACE_REG_REGISTER", value: 0)
!221 = !DIEnumerator(name: "TRACE_REG_UNREGISTER", value: 1)
!222 = !DIEnumerator(name: "TRACE_REG_PERF_REGISTER", value: 2)
!223 = !DIEnumerator(name: "TRACE_REG_PERF_UNREGISTER", value: 3)
!224 = !DIEnumerator(name: "TRACE_REG_PERF_OPEN", value: 4)
!225 = !DIEnumerator(name: "TRACE_REG_PERF_CLOSE", value: 5)
!226 = !DIEnumerator(name: "TRACE_REG_PERF_ADD", value: 6)
!227 = !DIEnumerator(name: "TRACE_REG_PERF_DEL", value: 7)
!228 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "print_line_t", file: !218, line: 158, baseType: !7, size: 32, elements: !229)
!229 = !{!230, !231, !232, !233}
!230 = !DIEnumerator(name: "TRACE_TYPE_PARTIAL_LINE", value: 0)
!231 = !DIEnumerator(name: "TRACE_TYPE_HANDLED", value: 1)
!232 = !DIEnumerator(name: "TRACE_TYPE_UNHANDLED", value: 2)
!233 = !DIEnumerator(name: "TRACE_TYPE_NO_CONSUME", value: 3)
!234 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "perf_event_state", file: !235, line: 593, baseType: !22, size: 32, elements: !236)
!235 = !DIFile(filename: "./include/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5ce692f6af4d2c300194824e4904b29b")
!236 = !{!237, !238, !239, !240, !241, !242}
!237 = !DIEnumerator(name: "PERF_EVENT_STATE_DEAD", value: -4)
!238 = !DIEnumerator(name: "PERF_EVENT_STATE_EXIT", value: -3)
!239 = !DIEnumerator(name: "PERF_EVENT_STATE_ERROR", value: -2)
!240 = !DIEnumerator(name: "PERF_EVENT_STATE_OFF", value: -1)
!241 = !DIEnumerator(name: "PERF_EVENT_STATE_INACTIVE", value: 0)
!242 = !DIEnumerator(name: "PERF_EVENT_STATE_ACTIVE", value: 1)
!243 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !244, line: 2052, baseType: !7, size: 32, elements: !245)
!244 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!245 = !{!246, !247}
!246 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!247 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!248 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !249, line: 54, baseType: !7, size: 32, elements: !250)
!249 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!250 = !{!251, !252, !253}
!251 = !DIEnumerator(name: "USRQUOTA", value: 0)
!252 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!253 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!254 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "wb_reason", file: !255, line: 44, baseType: !7, size: 32, elements: !256)
!255 = !DIFile(filename: "./include/linux/backing-dev-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48876dd2050c245a6230a2e03c4bc3c9")
!256 = !{!257, !258, !259, !260, !261, !262, !263, !264, !265}
!257 = !DIEnumerator(name: "WB_REASON_BACKGROUND", value: 0)
!258 = !DIEnumerator(name: "WB_REASON_VMSCAN", value: 1)
!259 = !DIEnumerator(name: "WB_REASON_SYNC", value: 2)
!260 = !DIEnumerator(name: "WB_REASON_PERIODIC", value: 3)
!261 = !DIEnumerator(name: "WB_REASON_LAPTOP_TIMER", value: 4)
!262 = !DIEnumerator(name: "WB_REASON_FS_FREE_SPACE", value: 5)
!263 = !DIEnumerator(name: "WB_REASON_FORKER_THREAD", value: 6)
!264 = !DIEnumerator(name: "WB_REASON_FOREIGN_FLUSH", value: 7)
!265 = !DIEnumerator(name: "WB_REASON_MAX", value: 8)
!266 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !267, line: 16, baseType: !7, size: 32, elements: !268)
!267 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!268 = !{!269, !270, !271}
!269 = !DIEnumerator(name: "TT_NONE", value: 0)
!270 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!271 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!272 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !273, line: 51, baseType: !7, size: 32, elements: !274)
!273 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!274 = !{!275, !276, !277, !278}
!275 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!276 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!277 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!278 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!279 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !280, line: 10, baseType: !7, size: 32, elements: !281)
!280 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!281 = !{!282, !283}
!282 = !DIEnumerator(name: "false", value: 0)
!283 = !DIEnumerator(name: "true", value: 1)
!284 = !{!20, !285, !288, !289, !290, !291, !293, !294, !39}
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !287)
!287 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !25, line: 42, baseType: !39)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !296, line: 746, size: 58368, elements: !297)
!296 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!297 = !{!298, !308, !309, !310, !316, !317, !318, !319, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !402, !413, !514, !518, !521, !552, !553, !554, !555, !566, !568, !569, !570, !571, !572, !573, !584, !585, !588, !589, !590, !591, !592, !593, !594, !595, !602, !603, !610, !611, !5073, !5074, !5075, !5076, !5077, !5078, !5079, !5080, !5081, !5082, !5083, !5084, !5085, !5086, !5087, !5088, !5089, !5090, !5091, !5092, !5093, !5094, !5095, !5157, !5160, !5161, !5162, !5163, !5164, !5165, !5166, !5167, !5168, !5169, !5170, !5172, !5173, !5174, !5175, !5176, !5177, !5178, !5179, !5180, !5181, !5182, !5183, !5184, !5185, !5186, !5187, !5188, !5200, !5206, !5207, !5208, !5209, !5210, !5212, !5215, !5222, !5227, !5230, !5233, !5236, !5268, !5466, !5493, !5494, !5495, !5496, !5497, !5498, !5499, !5500, !5501, !5504, !5505, !5506, !5515, !5523, !5524, !5525, !5526, !5527, !5532, !5533, !5534, !5537, !5538, !5541, !5544, !5549, !5556, !5559, !5560, !5646, !5647, !5648, !5649, !5650, !5656, !5657, !5658, !5659, !5660, !5661, !5664, !5667, !5668, !5671, !5672, !5673, !5674, !5675, !5676, !5677, !5678, !5679, !5692, !5693, !5694, !5695, !5696, !5697, !5698, !5699, !5700, !5711, !5712, !5718, !5721, !5722, !5723, !5724, !5725, !5726, !5727, !5728, !5800, !5802, !5803, !5804, !5805, !5806, !5807, !5810, !5811, !5812, !5813, !5814, !5815, !5816, !5817, !5818, !5819, !5820, !5824, !5825, !5826}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !295, file: !296, line: 752, baseType: !299, size: 192)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !300, line: 56, size: 192, elements: !301)
!300 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!301 = !{!302, !303, !304, !307}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !299, file: !300, line: 57, baseType: !39, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !299, file: !300, line: 58, baseType: !39, size: 64, offset: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !299, file: !300, line: 59, baseType: !305, size: 32, offset: 128)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !84, line: 21, baseType: !306)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !86, line: 27, baseType: !7)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !299, file: !300, line: 61, baseType: !305, size: 32, offset: 160)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !295, file: !296, line: 754, baseType: !7, size: 32, offset: 192)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !295, file: !296, line: 767, baseType: !20, size: 64, offset: 256)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !295, file: !296, line: 768, baseType: !311, size: 32, offset: 320)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !312, line: 113, baseType: !313)
!312 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !312, line: 111, size: 32, elements: !314)
!314 = !{!315}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !313, file: !312, line: 112, baseType: !49, size: 32)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !295, file: !296, line: 770, baseType: !7, size: 32, offset: 352)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !295, file: !296, line: 771, baseType: !7, size: 32, offset: 384)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !295, file: !296, line: 774, baseType: !22, size: 32, offset: 416)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !295, file: !296, line: 775, baseType: !320, size: 128, offset: 448)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !321, line: 58, size: 128, elements: !322)
!321 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!322 = !{!323, !329, !334, !335}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !320, file: !321, line: 59, baseType: !324, size: 64)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !325, line: 60, size: 64, elements: !326)
!325 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!326 = !{!327}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !324, file: !325, line: 61, baseType: !328, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, scope: !320, file: !321, line: 60, baseType: !330, size: 32, offset: 64)
!330 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !320, file: !321, line: 60, size: 32, elements: !331)
!331 = !{!332, !333}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !330, file: !321, line: 61, baseType: !7, size: 32)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !330, file: !321, line: 62, baseType: !49, size: 32)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !320, file: !321, line: 65, baseType: !93, size: 16, offset: 96)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !320, file: !321, line: 65, baseType: !93, size: 16, offset: 112)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !295, file: !296, line: 776, baseType: !7, size: 32, offset: 576)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !295, file: !296, line: 777, baseType: !39, size: 64, offset: 640)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !295, file: !296, line: 778, baseType: !294, size: 64, offset: 704)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !295, file: !296, line: 787, baseType: !22, size: 32, offset: 768)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !295, file: !296, line: 788, baseType: !22, size: 32, offset: 800)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !295, file: !296, line: 790, baseType: !22, size: 32, offset: 832)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !295, file: !296, line: 792, baseType: !22, size: 32, offset: 864)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !295, file: !296, line: 793, baseType: !22, size: 32, offset: 896)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !295, file: !296, line: 794, baseType: !22, size: 32, offset: 928)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !295, file: !296, line: 795, baseType: !7, size: 32, offset: 960)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !295, file: !296, line: 797, baseType: !347, size: 2048, offset: 1024)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !296, line: 551, size: 2048, elements: !348)
!348 = !{!349, !354, !362, !366, !367, !368, !369, !370, !371, !372, !373, !376, !377, !378, !379, !381, !384, !385, !386}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !347, file: !296, line: 553, baseType: !350, size: 128)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !296, line: 411, size: 128, elements: !351)
!351 = !{!352, !353}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !350, file: !296, line: 412, baseType: !39, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !350, file: !296, line: 413, baseType: !305, size: 32, offset: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !347, file: !296, line: 554, baseType: !355, size: 192, align: 64, offset: 128)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !356, line: 5, size: 192, align: 64, elements: !357)
!356 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!357 = !{!358, !359, !361}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !355, file: !356, line: 6, baseType: !39, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !355, file: !356, line: 7, baseType: !360, size: 64, offset: 64)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !355, file: !356, line: 8, baseType: !360, size: 64, offset: 128)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !347, file: !296, line: 555, baseType: !363, size: 64, offset: 320)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !84, line: 23, baseType: !364)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !86, line: 31, baseType: !365)
!365 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !347, file: !296, line: 556, baseType: !363, size: 64, offset: 384)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !347, file: !296, line: 558, baseType: !97, size: 128, offset: 448)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !347, file: !296, line: 559, baseType: !7, size: 32, offset: 576)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !347, file: !296, line: 561, baseType: !363, size: 64, offset: 640)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !347, file: !296, line: 562, baseType: !363, size: 64, offset: 704)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !347, file: !296, line: 563, baseType: !363, size: 64, offset: 768)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !347, file: !296, line: 564, baseType: !363, size: 64, offset: 832)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !347, file: !296, line: 565, baseType: !374, size: 64, offset: 896)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !84, line: 22, baseType: !375)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !86, line: 30, baseType: !43)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !347, file: !296, line: 566, baseType: !363, size: 64, offset: 960)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !347, file: !296, line: 568, baseType: !363, size: 64, offset: 1024)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !347, file: !296, line: 571, baseType: !22, size: 32, offset: 1088)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !347, file: !296, line: 572, baseType: !380, size: 64, offset: 1152)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !347, file: !296, line: 574, baseType: !382, size: 64, offset: 1216)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !296, line: 49, flags: DIFlagFwdDecl)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !347, file: !296, line: 576, baseType: !382, size: 64, offset: 1280)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !347, file: !296, line: 578, baseType: !39, size: 64, offset: 1344)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !347, file: !296, line: 588, baseType: !387, size: 512, align: 512, offset: 1536)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !296, line: 497, size: 512, align: 512, elements: !388)
!388 = !{!389, !390, !391, !392, !393, !394, !395, !396, !397}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !387, file: !296, line: 498, baseType: !363, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !387, file: !296, line: 499, baseType: !363, size: 64, offset: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !387, file: !296, line: 500, baseType: !363, size: 64, offset: 128)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !387, file: !296, line: 501, baseType: !305, size: 32, offset: 192)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !387, file: !296, line: 502, baseType: !305, size: 32, offset: 224)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !387, file: !296, line: 503, baseType: !39, size: 64, offset: 256)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !387, file: !296, line: 504, baseType: !39, size: 64, offset: 320)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !387, file: !296, line: 505, baseType: !39, size: 64, offset: 384)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !387, file: !296, line: 506, baseType: !398, size: 64, align: 64, offset: 448)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !296, line: 445, size: 64, align: 64, elements: !399)
!399 = !{!400, !401}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !398, file: !296, line: 446, baseType: !7, size: 32)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !398, file: !296, line: 447, baseType: !7, size: 32, offset: 32)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !295, file: !296, line: 798, baseType: !403, size: 384, offset: 3072)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !296, line: 592, size: 384, elements: !404)
!404 = !{!405, !406, !407, !408, !409, !410, !411}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !403, file: !296, line: 593, baseType: !97, size: 128)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !403, file: !296, line: 594, baseType: !39, size: 64, offset: 128)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !403, file: !296, line: 595, baseType: !39, size: 64, offset: 192)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !403, file: !296, line: 596, baseType: !7, size: 32, offset: 256)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !403, file: !296, line: 597, baseType: !26, size: 16, offset: 288)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !403, file: !296, line: 598, baseType: !26, size: 16, offset: 304)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !403, file: !296, line: 600, baseType: !412, size: 64, offset: 320)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !295, file: !296, line: 799, baseType: !414, size: 1792, offset: 3456)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !296, line: 610, size: 1792, elements: !415)
!415 = !{!416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !511, !512}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !414, file: !296, line: 611, baseType: !355, size: 192, align: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !414, file: !296, line: 618, baseType: !363, size: 64, offset: 192)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !414, file: !296, line: 619, baseType: !363, size: 64, offset: 256)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !414, file: !296, line: 620, baseType: !363, size: 64, offset: 320)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !414, file: !296, line: 621, baseType: !363, size: 64, offset: 384)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !414, file: !296, line: 622, baseType: !363, size: 64, offset: 448)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !414, file: !296, line: 629, baseType: !374, size: 64, offset: 512)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !414, file: !296, line: 630, baseType: !363, size: 64, offset: 576)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !414, file: !296, line: 631, baseType: !7, size: 32, offset: 640)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !414, file: !296, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !414, file: !296, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !414, file: !296, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !414, file: !296, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !414, file: !296, line: 662, baseType: !430, size: 512, offset: 704)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !431)
!431 = !{!432, !440, !441, !446, !507, !508, !509, !510}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !430, file: !6, line: 119, baseType: !433, size: 256)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !434, line: 9, size: 256, elements: !435)
!434 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!435 = !{!436, !437}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !433, file: !434, line: 10, baseType: !355, size: 192, align: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !433, file: !434, line: 11, baseType: !438, size: 64, offset: 192)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !439, line: 29, baseType: !374)
!439 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!440 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !430, file: !6, line: 120, baseType: !438, size: 64, offset: 256)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !430, file: !6, line: 121, baseType: !442, size: 64, offset: 320)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DISubroutineType(types: !444)
!444 = !{!5, !445}
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !430, file: !6, line: 122, baseType: !447, size: 64, offset: 384)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !449)
!449 = !{!450, !476, !477, !480, !490, !491, !502, !506}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !448, file: !6, line: 160, baseType: !451, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 215, size: 4608, align: 512, elements: !453)
!453 = !{!454, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !452, file: !6, line: 216, baseType: !455, size: 32)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !68, line: 23, baseType: !67)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !452, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !452, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !452, file: !6, line: 219, baseType: !7, size: 32, offset: 96)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !452, file: !6, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !452, file: !6, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !452, file: !6, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !452, file: !6, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !452, file: !6, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !452, file: !6, line: 226, baseType: !7, size: 32, offset: 160)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !452, file: !6, line: 227, baseType: !26, size: 16, offset: 192)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !452, file: !6, line: 228, baseType: !26, size: 16, offset: 208)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !452, file: !6, line: 229, baseType: !7, size: 32, offset: 224)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !452, file: !6, line: 235, baseType: !438, size: 64, offset: 256)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !452, file: !6, line: 236, baseType: !445, size: 64, offset: 320)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !452, file: !6, line: 237, baseType: !438, size: 64, offset: 384)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !452, file: !6, line: 238, baseType: !445, size: 64, offset: 448)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !452, file: !6, line: 239, baseType: !473, size: 4096, align: 512, offset: 512)
!473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !448, size: 4096, align: 512, elements: !474)
!474 = !{!475}
!475 = !DISubrange(count: 8)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !448, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !448, file: !6, line: 162, baseType: !478, size: 32, offset: 96)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !25, line: 32, baseType: !479)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !37, line: 96, baseType: !22)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !448, file: !6, line: 163, baseType: !481, size: 32, offset: 128)
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !482, line: 274, baseType: !483)
!482 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !482, line: 274, size: 32, elements: !484)
!484 = !{!485}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !483, file: !482, line: 274, baseType: !486, size: 32)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !482, line: 69, baseType: !487)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !482, line: 64, size: 32, elements: !488)
!488 = !{!489}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !487, file: !482, line: 65, baseType: !7, size: 32)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !448, file: !6, line: 164, baseType: !445, size: 64, offset: 192)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !448, file: !6, line: 165, baseType: !492, size: 128, offset: 256)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !434, line: 14, size: 128, elements: !493)
!493 = !{!494}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !492, file: !434, line: 15, baseType: !495, size: 128)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !356, line: 26, size: 128, elements: !496)
!496 = !{!497, !501}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !495, file: !356, line: 27, baseType: !498, size: 64)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !356, line: 12, size: 64, elements: !499)
!499 = !{!500}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !498, file: !356, line: 13, baseType: !360, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !495, file: !356, line: 28, baseType: !360, size: 64, offset: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !448, file: !6, line: 166, baseType: !503, size: 64, offset: 384)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DISubroutineType(types: !505)
!505 = !{!438}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !448, file: !6, line: 167, baseType: !438, size: 64, offset: 448)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !430, file: !6, line: 123, baseType: !83, size: 8, offset: 448)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !430, file: !6, line: 124, baseType: !83, size: 8, offset: 456)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !430, file: !6, line: 125, baseType: !83, size: 8, offset: 464)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !430, file: !6, line: 126, baseType: !83, size: 8, offset: 472)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !414, file: !296, line: 671, baseType: !430, size: 512, offset: 1216)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !414, file: !296, line: 679, baseType: !513, size: 64, offset: 1728)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !295, file: !296, line: 800, baseType: !515, size: 64, offset: 5248)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !517)
!517 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !296, line: 800, flags: DIFlagFwdDecl)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !295, file: !296, line: 809, baseType: !519, size: 64, offset: 5312)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !296, line: 70, flags: DIFlagFwdDecl)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !295, file: !296, line: 825, baseType: !522, size: 2048, align: 512, offset: 5632)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !296, line: 509, size: 2048, align: 512, elements: !523)
!523 = !{!524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !522, file: !296, line: 511, baseType: !363, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !522, file: !296, line: 512, baseType: !363, size: 64, offset: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !522, file: !296, line: 513, baseType: !363, size: 64, offset: 128)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !522, file: !296, line: 514, baseType: !363, size: 64, offset: 192)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !522, file: !296, line: 515, baseType: !363, size: 64, offset: 256)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !522, file: !296, line: 516, baseType: !363, size: 64, offset: 320)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !522, file: !296, line: 518, baseType: !363, size: 64, offset: 384)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !522, file: !296, line: 519, baseType: !363, size: 64, offset: 448)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !522, file: !296, line: 520, baseType: !374, size: 64, offset: 512)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !522, file: !296, line: 522, baseType: !363, size: 64, offset: 576)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !522, file: !296, line: 523, baseType: !363, size: 64, offset: 640)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !522, file: !296, line: 524, baseType: !374, size: 64, offset: 704)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !522, file: !296, line: 526, baseType: !374, size: 64, offset: 768)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !522, file: !296, line: 527, baseType: !363, size: 64, offset: 832)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !522, file: !296, line: 529, baseType: !363, size: 64, offset: 896)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !522, file: !296, line: 530, baseType: !363, size: 64, offset: 960)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !522, file: !296, line: 531, baseType: !363, size: 64, offset: 1024)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !522, file: !296, line: 532, baseType: !363, size: 64, offset: 1088)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !522, file: !296, line: 533, baseType: !363, size: 64, offset: 1152)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !522, file: !296, line: 535, baseType: !363, size: 64, offset: 1216)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !522, file: !296, line: 536, baseType: !363, size: 64, offset: 1280)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !522, file: !296, line: 537, baseType: !363, size: 64, offset: 1344)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !522, file: !296, line: 538, baseType: !363, size: 64, offset: 1408)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !522, file: !296, line: 539, baseType: !363, size: 64, offset: 1472)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !522, file: !296, line: 540, baseType: !363, size: 64, offset: 1536)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !522, file: !296, line: 541, baseType: !363, size: 64, offset: 1600)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !522, file: !296, line: 542, baseType: !363, size: 64, offset: 1664)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !522, file: !296, line: 543, baseType: !363, size: 64, offset: 1728)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !295, file: !296, line: 833, baseType: !7, size: 32, offset: 7680)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !295, file: !296, line: 836, baseType: !7, size: 32, offset: 7712)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !295, file: !296, line: 837, baseType: !22, size: 32, offset: 7744)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !295, file: !296, line: 838, baseType: !556, size: 64, offset: 7808)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !558)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !559, line: 19, baseType: !560)
!559 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !559, line: 19, size: 64, elements: !561)
!561 = !{!562}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !560, file: !559, line: 19, baseType: !563, size: 64)
!563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 64, elements: !564)
!564 = !{!565}
!565 = !DISubrange(count: 1)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !295, file: !296, line: 839, baseType: !567, size: 64, offset: 7872)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !295, file: !296, line: 840, baseType: !558, size: 64, offset: 7936)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !295, file: !296, line: 841, baseType: !20, size: 64, offset: 8000)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !295, file: !296, line: 843, baseType: !26, size: 16, offset: 8064)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !295, file: !296, line: 845, baseType: !26, size: 16, offset: 8080)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !295, file: !296, line: 848, baseType: !22, size: 32, offset: 8096)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !295, file: !296, line: 849, baseType: !574, size: 32, offset: 8128)
!574 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !296, line: 718, size: 32, elements: !575)
!575 = !{!576, !583}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !574, file: !296, line: 724, baseType: !577, size: 32)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !574, file: !296, line: 719, size: 32, elements: !578)
!578 = !{!579, !580, !581, !582}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !577, file: !296, line: 720, baseType: !83, size: 8)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !577, file: !296, line: 721, baseType: !83, size: 8, offset: 8)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !577, file: !296, line: 722, baseType: !83, size: 8, offset: 16)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !577, file: !296, line: 723, baseType: !83, size: 8, offset: 24)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !574, file: !296, line: 725, baseType: !305, size: 32)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !295, file: !296, line: 850, baseType: !97, size: 128, offset: 8192)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !295, file: !296, line: 851, baseType: !586, size: 64, offset: 8320)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !296, line: 60, flags: DIFlagFwdDecl)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !295, file: !296, line: 855, baseType: !39, size: 64, offset: 8384)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !295, file: !296, line: 856, baseType: !83, size: 8, offset: 8448)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !295, file: !296, line: 857, baseType: !83, size: 8, offset: 8456)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !295, file: !296, line: 858, baseType: !22, size: 32, offset: 8480)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !295, file: !296, line: 859, baseType: !97, size: 128, offset: 8512)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !295, file: !296, line: 860, baseType: !22, size: 32, offset: 8640)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !295, file: !296, line: 861, baseType: !97, size: 128, offset: 8704)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !295, file: !296, line: 873, baseType: !596, size: 256, offset: 8832)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !296, line: 376, size: 256, elements: !597)
!597 = !{!598, !599, !600, !601}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !596, file: !296, line: 381, baseType: !39, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !596, file: !296, line: 384, baseType: !365, size: 64, offset: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !596, file: !296, line: 389, baseType: !365, size: 64, offset: 128)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !596, file: !296, line: 392, baseType: !365, size: 64, offset: 192)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !295, file: !296, line: 875, baseType: !97, size: 128, offset: 9088)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !295, file: !296, line: 877, baseType: !604, size: 320, offset: 9216)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !605, line: 86, size: 320, elements: !606)
!605 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!606 = !{!607, !608, !609}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !604, file: !605, line: 87, baseType: !22, size: 32)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !604, file: !605, line: 88, baseType: !97, size: 128, offset: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !604, file: !605, line: 89, baseType: !97, size: 128, offset: 192)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !295, file: !296, line: 878, baseType: !355, size: 192, align: 64, offset: 9536)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !295, file: !296, line: 881, baseType: !612, size: 64, offset: 9728)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !131, line: 733, size: 10240, elements: !614)
!614 = !{!615, !5071}
!615 = !DIDerivedType(tag: DW_TAG_member, scope: !613, file: !131, line: 734, baseType: !616, size: 10240)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !613, file: !131, line: 734, size: 10240, elements: !617)
!617 = !{!618, !622, !636, !4951, !4952, !4953, !4954, !4955, !4956, !4963, !4964, !4965, !4971, !4972, !4973, !4974, !4975, !4976, !4977, !4978, !4979, !4980, !4981, !4982, !4983, !4984, !4985, !4986, !4987, !4988, !4989, !4990, !4991, !4992, !4993, !4994, !4995, !4996, !4997, !4998, !4999, !5000, !5004, !5005, !5008, !5051, !5052, !5053, !5056, !5057, !5058, !5061, !5062, !5063, !5069, !5070}
!618 = !DIDerivedType(tag: DW_TAG_member, scope: !616, file: !131, line: 739, baseType: !619, size: 512, align: 512)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !616, file: !131, line: 739, size: 512, align: 512, elements: !620)
!620 = !{!621}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !619, file: !131, line: 747, baseType: !49, size: 32)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !616, file: !131, line: 750, baseType: !623, size: 128, offset: 512)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !624, line: 218, size: 128, elements: !625)
!624 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!625 = !{!626, !634, !635}
!626 = !DIDerivedType(tag: DW_TAG_member, scope: !623, file: !624, line: 219, baseType: !627, size: 32)
!627 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !623, file: !624, line: 219, size: 32, elements: !628)
!628 = !{!629, !630}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !627, file: !624, line: 220, baseType: !59, size: 32)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !627, file: !624, line: 221, baseType: !631)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !624, line: 197, baseType: !632)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !624, line: 197, elements: !633)
!633 = !{}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !623, file: !624, line: 223, baseType: !7, size: 32, offset: 32)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !623, file: !624, line: 224, baseType: !20, size: 64, offset: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !616, file: !131, line: 752, baseType: !637, size: 64, offset: 640)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DISubroutineType(types: !639)
!639 = !{!39, !640, !39, !39, !39, !39}
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !244, line: 994, size: 1856, align: 64, elements: !642)
!642 = !{!643, !657, !658, !660, !667, !679, !680, !681, !1063, !1141, !1150, !4942, !4943, !4944, !4945, !4946, !4947, !4948, !4949, !4950}
!643 = !DIDerivedType(tag: DW_TAG_member, scope: !641, file: !244, line: 995, baseType: !644, size: 128)
!644 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !641, file: !244, line: 995, size: 128, elements: !645)
!645 = !{!646, !647, !656}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !644, file: !244, line: 996, baseType: !324, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !644, file: !244, line: 997, baseType: !648, size: 128, align: 64)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !25, line: 232, size: 128, align: 64, elements: !649)
!649 = !{!650, !652}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !648, file: !25, line: 233, baseType: !651, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !648, file: !25, line: 234, baseType: !653, size: 64, offset: 64)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DISubroutineType(types: !655)
!655 = !{null, !651}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !644, file: !244, line: 998, baseType: !7, size: 32)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !641, file: !244, line: 1005, baseType: !59, size: 32, offset: 128)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !641, file: !244, line: 1006, baseType: !659, size: 32, offset: 160)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !25, line: 156, baseType: !7)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !641, file: !244, line: 1007, baseType: !661, size: 64, offset: 192)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !662, line: 13, baseType: !663)
!662 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !25, line: 181, baseType: !664)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !25, line: 179, size: 64, elements: !665)
!665 = !{!666}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !664, file: !25, line: 180, baseType: !374, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !641, file: !244, line: 1008, baseType: !668, size: 256, offset: 256)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !669, line: 66, size: 256, elements: !670)
!669 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!670 = !{!671, !672, !673, !678}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !668, file: !669, line: 67, baseType: !661, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !668, file: !669, line: 68, baseType: !455, size: 32, offset: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !668, file: !669, line: 70, baseType: !674, size: 32, offset: 96)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !675, line: 15, size: 32, elements: !676)
!675 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!676 = !{!677}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !674, file: !675, line: 20, baseType: !49, size: 32)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !668, file: !669, line: 72, baseType: !97, size: 128, offset: 128)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !641, file: !244, line: 1009, baseType: !41, size: 64, offset: 512)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !641, file: !244, line: 1010, baseType: !7, size: 32, offset: 576)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !641, file: !244, line: 1011, baseType: !682, size: 256, offset: 640)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !244, line: 948, size: 256, elements: !683)
!683 = !{!684, !707, !1059, !1060, !1061, !1062}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !682, file: !244, line: 949, baseType: !685, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !686, line: 34, baseType: !687)
!686 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !686, line: 25, size: 64, elements: !688)
!688 = !{!689}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !687, file: !686, line: 26, baseType: !690, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !691, line: 27, baseType: !692)
!691 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !691, line: 13, size: 64, elements: !693)
!693 = !{!694, !706}
!694 = !DIDerivedType(tag: DW_TAG_member, scope: !692, file: !691, line: 14, baseType: !695, size: 32)
!695 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !692, file: !691, line: 14, size: 32, elements: !696)
!696 = !{!697, !698}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !695, file: !691, line: 15, baseType: !49, size: 32)
!698 = !DIDerivedType(tag: DW_TAG_member, scope: !695, file: !691, line: 16, baseType: !699, size: 32)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !695, file: !691, line: 16, size: 32, elements: !700)
!700 = !{!701, !702}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !699, file: !691, line: 18, baseType: !83, size: 8)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !699, file: !691, line: 19, baseType: !703, size: 24, offset: 8)
!703 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 24, elements: !704)
!704 = !{!705}
!705 = !DISubrange(count: 3)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !692, file: !691, line: 26, baseType: !71, size: 32, offset: 32)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !682, file: !244, line: 950, baseType: !708, size: 64, offset: 64)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !108, line: 59, size: 768, elements: !710)
!710 = !{!711, !712, !713, !714, !727, !728, !729, !730}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !709, file: !108, line: 61, baseType: !311, size: 32)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !709, file: !108, line: 62, baseType: !7, size: 32, offset: 32)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !709, file: !108, line: 63, baseType: !59, size: 32, offset: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !709, file: !108, line: 65, baseType: !715, size: 256, offset: 128)
!715 = !DICompositeType(tag: DW_TAG_array_type, baseType: !716, size: 256, elements: !725)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !25, line: 194, size: 64, elements: !717)
!717 = !{!718}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !716, file: !25, line: 195, baseType: !719, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !25, line: 198, size: 128, elements: !721)
!721 = !{!722, !723}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !720, file: !25, line: 199, baseType: !719, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !720, file: !25, line: 199, baseType: !724, size: 64, offset: 64)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!725 = !{!726}
!726 = !DISubrange(count: 4)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !709, file: !108, line: 66, baseType: !716, size: 64, offset: 384)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !709, file: !108, line: 68, baseType: !54, size: 192, offset: 448)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !709, file: !108, line: 69, baseType: !648, size: 128, align: 64, offset: 640)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !709, file: !108, line: 70, baseType: !731, offset: 768)
!731 = !DICompositeType(tag: DW_TAG_array_type, baseType: !732, elements: !1057)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !108, line: 54, size: 128, elements: !733)
!733 = !{!734, !735}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !732, file: !108, line: 55, baseType: !22, size: 32)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !732, file: !108, line: 56, baseType: !736, size: 64, offset: 64)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !738, line: 26, size: 1152, elements: !739)
!738 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!739 = !{!740, !754, !755, !756, !757, !761, !762, !763, !766, !1053, !1054, !1055, !1056}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !737, file: !738, line: 27, baseType: !741, size: 192)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !742, line: 19, size: 192, elements: !743)
!742 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!743 = !{!744, !752, !753}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !741, file: !742, line: 20, baseType: !745, size: 128)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !746, line: 296, size: 128, elements: !747)
!746 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!747 = !{!748, !749, !751}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !745, file: !746, line: 297, baseType: !59, size: 32)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !745, file: !746, line: 299, baseType: !750, size: 32, offset: 32)
!750 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !25, line: 154, baseType: !7)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !745, file: !746, line: 300, baseType: !20, size: 64, offset: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !741, file: !742, line: 21, baseType: !7, size: 32, offset: 128)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !741, file: !742, line: 22, baseType: !7, size: 32, offset: 160)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !737, file: !738, line: 28, baseType: !648, size: 128, align: 64, offset: 192)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !737, file: !738, line: 29, baseType: !7, size: 32, offset: 320)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !737, file: !738, line: 30, baseType: !294, size: 64, offset: 384)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !737, file: !738, line: 31, baseType: !758, size: 64, offset: 448)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !760, line: 325, flags: DIFlagFwdDecl)
!760 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!761 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !737, file: !738, line: 32, baseType: !7, size: 32, offset: 512)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !737, file: !738, line: 33, baseType: !736, size: 64, offset: 576)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !737, file: !738, line: 35, baseType: !764, size: 64, offset: 640)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !738, line: 17, flags: DIFlagFwdDecl)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !737, file: !738, line: 37, baseType: !767, size: 64, offset: 704)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !769, line: 68, size: 4800, elements: !770)
!769 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!770 = !{!771, !793, !794, !795, !796, !797, !805, !812, !823, !824, !827, !828, !950, !951, !963, !1033, !1034, !1048, !1051}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !768, file: !769, line: 69, baseType: !772, size: 576)
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !769, line: 23, size: 576, elements: !773)
!773 = !{!774, !775}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !772, file: !769, line: 24, baseType: !305, size: 32)
!775 = !DIDerivedType(tag: DW_TAG_member, scope: !772, file: !769, line: 25, baseType: !776, size: 512, offset: 64)
!776 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !772, file: !769, line: 25, size: 512, elements: !777)
!777 = !{!778, !787}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !776, file: !769, line: 26, baseType: !779, size: 480)
!779 = !DICompositeType(tag: DW_TAG_array_type, baseType: !780, size: 480, elements: !785)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !769, line: 17, size: 96, elements: !781)
!781 = !{!782, !783, !784}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !780, file: !769, line: 18, baseType: !305, size: 32)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !780, file: !769, line: 19, baseType: !305, size: 32, offset: 32)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !780, file: !769, line: 20, baseType: !305, size: 32, offset: 64)
!785 = !{!786}
!786 = !DISubrange(count: 5)
!787 = !DIDerivedType(tag: DW_TAG_member, scope: !776, file: !769, line: 27, baseType: !788, size: 128)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !776, file: !769, line: 27, size: 128, elements: !789)
!789 = !{!790, !792}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !788, file: !769, line: 28, baseType: !791, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !788, file: !769, line: 29, baseType: !791, size: 64, offset: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !768, file: !769, line: 70, baseType: !772, size: 576, offset: 576)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !768, file: !769, line: 71, baseType: !772, size: 576, offset: 1152)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !768, file: !769, line: 72, baseType: !767, size: 64, offset: 1728)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !768, file: !769, line: 73, baseType: !22, size: 32, offset: 1792)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !768, file: !769, line: 74, baseType: !798, size: 32, offset: 1824)
!798 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !799, line: 23, baseType: !800)
!799 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !799, line: 21, size: 32, elements: !801)
!801 = !{!802}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !800, file: !799, line: 22, baseType: !803, size: 32)
!803 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !25, line: 37, baseType: !804)
!804 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !37, line: 49, baseType: !7)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !768, file: !769, line: 75, baseType: !806, size: 32, offset: 1856)
!806 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !799, line: 28, baseType: !807)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !799, line: 26, size: 32, elements: !808)
!808 = !{!809}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !807, file: !799, line: 27, baseType: !810, size: 32)
!810 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !25, line: 38, baseType: !811)
!811 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !37, line: 50, baseType: !7)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !768, file: !769, line: 76, baseType: !813, size: 192, offset: 1920)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !814, line: 9, size: 192, elements: !815)
!814 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!815 = !{!816, !817, !821, !822}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !813, file: !814, line: 10, baseType: !661, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !813, file: !814, line: 11, baseType: !818, size: 64, offset: 64)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !820)
!820 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !814, line: 7, flags: DIFlagFwdDecl)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !813, file: !814, line: 12, baseType: !7, size: 32, offset: 128)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !813, file: !814, line: 13, baseType: !311, size: 32, offset: 160)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !768, file: !769, line: 77, baseType: !39, size: 64, offset: 2112)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !768, file: !769, line: 80, baseType: !825, size: 8, offset: 2176)
!825 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !25, line: 35, baseType: !826)
!826 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !768, file: !769, line: 88, baseType: !97, size: 128, offset: 2240)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !768, file: !769, line: 89, baseType: !829, size: 64, offset: 2368)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !831, line: 195, size: 1728, elements: !832)
!831 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!832 = !{!833, !834, !839, !844, !853, !856, !857, !864, !865, !866, !867, !870, !871, !872, !874, !875, !914, !935}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !830, file: !831, line: 196, baseType: !311, size: 32)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !830, file: !831, line: 197, baseType: !835, size: 32, offset: 32)
!835 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !831, line: 28, baseType: !836)
!836 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !25, line: 104, baseType: !837)
!837 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !84, line: 20, baseType: !838)
!838 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !86, line: 26, baseType: !22)
!839 = !DIDerivedType(tag: DW_TAG_member, scope: !830, file: !831, line: 198, baseType: !840, size: 192, offset: 64)
!840 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !830, file: !831, line: 198, size: 192, elements: !841)
!841 = !{!842, !843}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !840, file: !831, line: 199, baseType: !97, size: 128)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !840, file: !831, line: 200, baseType: !355, size: 192, align: 64)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !830, file: !831, line: 205, baseType: !845, size: 320, offset: 256)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !846, line: 48, size: 320, elements: !847)
!846 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!847 = !{!848, !849, !850, !851, !852}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !845, file: !846, line: 49, baseType: !661, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !845, file: !846, line: 55, baseType: !661, size: 64, offset: 64)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !845, file: !846, line: 57, baseType: !674, size: 32, offset: 128)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !845, file: !846, line: 59, baseType: !455, size: 32, offset: 160)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !845, file: !846, line: 60, baseType: !97, size: 128, offset: 192)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !830, file: !831, line: 206, baseType: !854, size: 64, offset: 576)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !831, line: 206, flags: DIFlagFwdDecl)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !830, file: !831, line: 207, baseType: !20, size: 64, offset: 640)
!857 = !DIDerivedType(tag: DW_TAG_member, scope: !830, file: !831, line: 208, baseType: !858, size: 64, offset: 704)
!858 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !830, file: !831, line: 208, size: 64, elements: !859)
!859 = !{!860, !863}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !858, file: !831, line: 209, baseType: !861, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !862, line: 8, baseType: !375)
!862 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!863 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !858, file: !831, line: 210, baseType: !861, size: 64)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !830, file: !831, line: 212, baseType: !861, size: 64, offset: 768)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !830, file: !831, line: 213, baseType: !798, size: 32, offset: 832)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !830, file: !831, line: 214, baseType: !806, size: 32, offset: 864)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !830, file: !831, line: 215, baseType: !868, size: 32, offset: 896)
!868 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !831, line: 31, baseType: !869)
!869 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !25, line: 110, baseType: !305)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !830, file: !831, line: 216, baseType: !26, size: 16, offset: 928)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !830, file: !831, line: 217, baseType: !26, size: 16, offset: 944)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !830, file: !831, line: 221, baseType: !873, size: 16, offset: 960)
!873 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !830, file: !831, line: 228, baseType: !39, size: 64, offset: 1024)
!875 = !DIDerivedType(tag: DW_TAG_member, scope: !830, file: !831, line: 245, baseType: !876, size: 320, offset: 1088)
!876 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !830, file: !831, line: 245, size: 320, elements: !877)
!877 = !{!878, !905}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !876, file: !831, line: 246, baseType: !879, size: 320)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !831, line: 114, size: 320, elements: !880)
!880 = !{!881, !882, !894, !897, !904}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !879, file: !831, line: 116, baseType: !39, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, scope: !879, file: !831, line: 117, baseType: !883, size: 64, offset: 64)
!883 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !879, file: !831, line: 117, size: 64, elements: !884)
!884 = !{!885, !893}
!885 = !DIDerivedType(tag: DW_TAG_member, scope: !883, file: !831, line: 118, baseType: !886, size: 64)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !883, file: !831, line: 118, size: 64, elements: !887)
!887 = !{!888, !889}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !886, file: !831, line: 120, baseType: !93, size: 16)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !886, file: !831, line: 121, baseType: !890, size: 48, offset: 16)
!890 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 48, elements: !891)
!891 = !{!892}
!892 = !DISubrange(count: 6)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !883, file: !831, line: 127, baseType: !39, size: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !879, file: !831, line: 129, baseType: !895, size: 64, offset: 128)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !831, line: 102, flags: DIFlagFwdDecl)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !879, file: !831, line: 130, baseType: !898, size: 64, offset: 192)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !831, line: 108, size: 192, elements: !900)
!900 = !{!901, !902, !903}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !899, file: !831, line: 109, baseType: !648, size: 128, align: 64)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !899, file: !831, line: 110, baseType: !311, size: 32, offset: 128)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !899, file: !831, line: 111, baseType: !825, size: 8, offset: 160)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !879, file: !831, line: 131, baseType: !16, size: 64, offset: 256)
!905 = !DIDerivedType(tag: DW_TAG_member, scope: !876, file: !831, line: 247, baseType: !906, size: 320)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !876, file: !831, line: 247, size: 320, elements: !907)
!907 = !{!908, !909, !910, !911, !912}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !906, file: !831, line: 248, baseType: !39, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !906, file: !831, line: 249, baseType: !39, size: 64, offset: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !906, file: !831, line: 250, baseType: !895, size: 64, offset: 128)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !906, file: !831, line: 251, baseType: !898, size: 64, offset: 192)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !906, file: !831, line: 252, baseType: !913, size: 64, offset: 256)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, scope: !830, file: !831, line: 260, baseType: !915, size: 256, offset: 1408)
!915 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !830, file: !831, line: 260, size: 256, elements: !916)
!916 = !{!917, !923}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !915, file: !831, line: 261, baseType: !918, size: 256)
!918 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !831, line: 134, size: 256, elements: !919)
!919 = !{!920, !921}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !918, file: !831, line: 135, baseType: !20, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !918, file: !831, line: 136, baseType: !922, size: 256)
!922 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 256, elements: !725)
!923 = !DIDerivedType(tag: DW_TAG_member, scope: !915, file: !831, line: 262, baseType: !924, size: 256)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !915, file: !831, line: 262, size: 256, elements: !925)
!925 = !{!926, !927}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !924, file: !831, line: 264, baseType: !97, size: 128)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !924, file: !831, line: 265, baseType: !928, size: 128, offset: 128)
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !929, line: 22, size: 128, elements: !930)
!929 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!930 = !{!931, !934}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !928, file: !929, line: 23, baseType: !932, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !929, line: 23, flags: DIFlagFwdDecl)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !928, file: !929, line: 24, baseType: !39, size: 64, offset: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !830, file: !831, line: 280, baseType: !936, size: 64, offset: 1664)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !831, line: 176, size: 192, elements: !938)
!938 = !{!939, !948, !949}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !937, file: !831, line: 177, baseType: !940, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !831, line: 171, baseType: !941)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DISubroutineType(types: !943)
!943 = !{!22, !829, !944, !946, !829}
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !896)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !918)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !937, file: !831, line: 178, baseType: !829, size: 64, offset: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !937, file: !831, line: 179, baseType: !895, size: 64, offset: 128)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !768, file: !769, line: 90, baseType: !845, size: 320, offset: 2432)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !768, file: !769, line: 97, baseType: !952, size: 256, offset: 2752)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !953, line: 98, size: 256, elements: !954)
!953 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!954 = !{!955, !956, !957}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !952, file: !953, line: 99, baseType: !661, size: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !952, file: !953, line: 100, baseType: !97, size: 128, offset: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !952, file: !953, line: 101, baseType: !958, size: 64, offset: 192)
!958 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !953, line: 21, baseType: !959)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = !DISubroutineType(types: !961)
!961 = !{null, !962}
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !768, file: !769, line: 99, baseType: !964, size: 768, offset: 3008)
!964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !12, line: 199, size: 768, elements: !965)
!965 = !{!966, !971}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !964, file: !12, line: 200, baseType: !967, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DISubroutineType(types: !969)
!969 = !{!22, !970}
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !964, file: !12, line: 201, baseType: !972, size: 704, offset: 64)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !12, line: 193, size: 704, elements: !973)
!973 = !{!974, !1032}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !972, file: !12, line: 195, baseType: !975, size: 640)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !12, line: 173, size: 640, elements: !976)
!976 = !{!977, !989, !1001, !1002, !1022, !1023, !1025, !1031}
!977 = !DIDerivedType(tag: DW_TAG_member, scope: !975, file: !12, line: 174, baseType: !978, size: 192)
!978 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !975, file: !12, line: 174, size: 192, elements: !979)
!979 = !{!980, !988}
!980 = !DIDerivedType(tag: DW_TAG_member, scope: !978, file: !12, line: 175, baseType: !981, size: 192)
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !978, file: !12, line: 175, size: 192, elements: !982)
!982 = !{!983, !984, !985, !986, !987}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !981, file: !12, line: 176, baseType: !33, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !981, file: !12, line: 177, baseType: !22, size: 32, offset: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !981, file: !12, line: 178, baseType: !22, size: 32, offset: 96)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !981, file: !12, line: 179, baseType: !22, size: 32, offset: 128)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !981, file: !12, line: 180, baseType: !22, size: 32, offset: 160)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !978, file: !12, line: 182, baseType: !648, size: 128, align: 64)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !975, file: !12, line: 184, baseType: !990, size: 64, offset: 192)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !992, line: 26, size: 256, elements: !993)
!992 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!993 = !{!994, !995}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !991, file: !992, line: 27, baseType: !7, size: 32)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !991, file: !992, line: 28, baseType: !996, size: 192, offset: 64)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !997, line: 43, size: 192, elements: !998)
!997 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!998 = !{!999, !1000}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !996, file: !997, line: 44, baseType: !455, size: 32)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !996, file: !997, line: 45, baseType: !97, size: 128, offset: 64)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !975, file: !12, line: 185, baseType: !33, size: 64, offset: 256)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !975, file: !12, line: 186, baseType: !1003, size: 64, offset: 320)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !12, line: 204, size: 960, elements: !1005)
!1005 = !{!1006, !1007, !1011, !1018}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !1004, file: !12, line: 205, baseType: !964, size: 768)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1004, file: !12, line: 206, baseType: !1008, size: 64, offset: 768)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{!970, !1003}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !1004, file: !12, line: 207, baseType: !1012, size: 64, offset: 832)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = !DISubroutineType(types: !1014)
!1014 = !{null, !1015, !1016, !1017}
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !1004, file: !12, line: 209, baseType: !1019, size: 64, offset: 896)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{!22, !1015, !33}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !975, file: !12, line: 187, baseType: !970, size: 64, offset: 384)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !975, file: !12, line: 188, baseType: !1024, size: 64, offset: 448)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !975, file: !12, line: 189, baseType: !1026, size: 64, offset: 512)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !12, line: 157, size: 256, elements: !1028)
!1028 = !{!1029, !1030}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1027, file: !12, line: 158, baseType: !355, size: 192, align: 64)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1027, file: !12, line: 159, baseType: !1015, size: 64, offset: 192)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !975, file: !12, line: 190, baseType: !716, size: 64, offset: 576)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !972, file: !12, line: 196, baseType: !498, size: 64, offset: 640)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !768, file: !769, line: 100, baseType: !1015, size: 64, offset: 3776)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !768, file: !769, line: 102, baseType: !1035, size: 64, offset: 3840)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !769, line: 107, size: 1152, elements: !1037)
!1037 = !{!1038, !1039, !1040, !1041, !1042, !1046}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1036, file: !769, line: 108, baseType: !720, size: 128)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1036, file: !769, line: 109, baseType: !767, size: 64, offset: 128)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1036, file: !769, line: 110, baseType: !798, size: 32, offset: 192)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1036, file: !769, line: 111, baseType: !49, size: 32, offset: 224)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !1036, file: !769, line: 112, baseType: !1043, size: 640, offset: 256)
!1043 = !DICompositeType(tag: DW_TAG_array_type, baseType: !661, size: 640, elements: !1044)
!1044 = !{!1045}
!1045 = !DISubrange(count: 10)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !1036, file: !769, line: 113, baseType: !1047, size: 256, offset: 896)
!1047 = !DICompositeType(tag: DW_TAG_array_type, baseType: !661, size: 256, elements: !725)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !768, file: !769, line: 103, baseType: !1049, size: 640, offset: 3904)
!1049 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1050, size: 640, elements: !1044)
!1050 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !768, file: !769, line: 104, baseType: !1052, size: 256, offset: 4544)
!1052 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1050, size: 256, elements: !725)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !737, file: !738, line: 38, baseType: !1035, size: 64, offset: 768)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !737, file: !738, line: 39, baseType: !22, size: 32, offset: 832)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !737, file: !738, line: 40, baseType: !813, size: 192, offset: 896)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !737, file: !738, line: 42, baseType: !22, size: 32, offset: 1088)
!1057 = !{!1058}
!1058 = !DISubrange(count: -1)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !682, file: !244, line: 951, baseType: !107, size: 32, offset: 128)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !682, file: !244, line: 952, baseType: !798, size: 32, offset: 160)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !682, file: !244, line: 952, baseType: !798, size: 32, offset: 192)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !682, file: !244, line: 953, baseType: !22, size: 32, offset: 224)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !641, file: !244, line: 1012, baseType: !1064, size: 64, offset: 896)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1066)
!1066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1067, line: 110, size: 1472, elements: !1068)
!1067 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1068 = !{!1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1126, !1127, !1128, !1136}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1066, file: !1067, line: 111, baseType: !661, size: 64)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1066, file: !1067, line: 112, baseType: !798, size: 32, offset: 64)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1066, file: !1067, line: 113, baseType: !806, size: 32, offset: 96)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1066, file: !1067, line: 114, baseType: !798, size: 32, offset: 128)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1066, file: !1067, line: 115, baseType: !806, size: 32, offset: 160)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1066, file: !1067, line: 116, baseType: !798, size: 32, offset: 192)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1066, file: !1067, line: 117, baseType: !806, size: 32, offset: 224)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1066, file: !1067, line: 118, baseType: !798, size: 32, offset: 256)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1066, file: !1067, line: 119, baseType: !806, size: 32, offset: 288)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1066, file: !1067, line: 120, baseType: !7, size: 32, offset: 320)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1066, file: !1067, line: 121, baseType: !1080, size: 64, offset: 384)
!1080 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1081, line: 24, baseType: !1082)
!1081 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1082 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1081, line: 24, size: 64, elements: !1083)
!1083 = !{!1084}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1082, file: !1081, line: 24, baseType: !363, size: 64)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1066, file: !1067, line: 122, baseType: !1080, size: 64, offset: 448)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1066, file: !1067, line: 123, baseType: !1080, size: 64, offset: 512)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1066, file: !1067, line: 124, baseType: !1080, size: 64, offset: 576)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1066, file: !1067, line: 125, baseType: !1080, size: 64, offset: 640)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1066, file: !1067, line: 127, baseType: !87, size: 8, offset: 704)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1066, file: !1067, line: 129, baseType: !829, size: 64, offset: 768)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1066, file: !1067, line: 130, baseType: !829, size: 64, offset: 832)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1066, file: !1067, line: 131, baseType: !829, size: 64, offset: 896)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1066, file: !1067, line: 132, baseType: !829, size: 64, offset: 960)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1066, file: !1067, line: 135, baseType: !20, size: 64, offset: 1024)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1066, file: !1067, line: 137, baseType: !1096, size: 64, offset: 1088)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1098, line: 14, size: 1088, elements: !1099)
!1098 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1099 = !{!1100, !1101, !1110, !1111, !1112, !1113, !1114, !1115}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1097, file: !1098, line: 15, baseType: !311, size: 32)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1097, file: !1098, line: 17, baseType: !1102, size: 320, offset: 64)
!1102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1103, line: 22, size: 320, elements: !1104)
!1103 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1104 = !{!1105, !1106, !1107, !1108}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1102, file: !1103, line: 23, baseType: !455, size: 32)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1102, file: !1103, line: 24, baseType: !374, size: 64, offset: 64)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1102, file: !1103, line: 26, baseType: !97, size: 128, offset: 128)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1102, file: !1103, line: 28, baseType: !1109, size: 64, offset: 256)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1097, file: !1098, line: 19, baseType: !39, size: 64, offset: 384)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1097, file: !1098, line: 20, baseType: !661, size: 64, offset: 448)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1097, file: !1098, line: 23, baseType: !720, size: 128, offset: 512)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1097, file: !1098, line: 24, baseType: !798, size: 32, offset: 640)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1097, file: !1098, line: 29, baseType: !661, size: 64, offset: 704)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1097, file: !1098, line: 36, baseType: !1116, size: 320, offset: 768)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1117, line: 15, size: 320, elements: !1118)
!1117 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1118 = !{!1119, !1120, !1121, !1122, !1123, !1124, !1125}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1116, file: !1117, line: 16, baseType: !455, size: 32)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1116, file: !1117, line: 18, baseType: !22, size: 32, offset: 32)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1116, file: !1117, line: 19, baseType: !22, size: 32, offset: 64)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1116, file: !1117, line: 20, baseType: !22, size: 32, offset: 96)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1116, file: !1117, line: 21, baseType: !22, size: 32, offset: 128)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1116, file: !1117, line: 22, baseType: !39, size: 64, offset: 192)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1116, file: !1117, line: 23, baseType: !39, size: 64, offset: 256)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1066, file: !1067, line: 138, baseType: !767, size: 64, offset: 1152)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1066, file: !1067, line: 139, baseType: !1035, size: 64, offset: 1216)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1066, file: !1067, line: 140, baseType: !1129, size: 64, offset: 1280)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1067, line: 25, size: 64, elements: !1131)
!1131 = !{!1132, !1133, !1134}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1130, file: !1067, line: 26, baseType: !49, size: 32)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1130, file: !1067, line: 27, baseType: !22, size: 32, offset: 32)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1130, file: !1067, line: 28, baseType: !1135, offset: 64)
!1135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !806, elements: !1057)
!1136 = !DIDerivedType(tag: DW_TAG_member, scope: !1066, file: !1067, line: 142, baseType: !1137, size: 128, offset: 1344)
!1137 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1066, file: !1067, line: 142, size: 128, elements: !1138)
!1138 = !{!1139, !1140}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1137, file: !1067, line: 143, baseType: !22, size: 32)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1137, file: !1067, line: 144, baseType: !648, size: 128, align: 64)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !641, file: !244, line: 1013, baseType: !1142, size: 256, offset: 960)
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !244, line: 970, size: 256, elements: !1143)
!1143 = !{!1144, !1145, !1146, !1147, !1148, !1149}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1142, file: !244, line: 971, baseType: !39, size: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1142, file: !244, line: 972, baseType: !7, size: 32, offset: 64)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1142, file: !244, line: 973, baseType: !7, size: 32, offset: 96)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1142, file: !244, line: 974, baseType: !7, size: 32, offset: 128)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1142, file: !244, line: 975, baseType: !7, size: 32, offset: 160)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1142, file: !244, line: 976, baseType: !41, size: 64, offset: 192)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !641, file: !244, line: 1014, baseType: !1151, size: 128, offset: 1216)
!1151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1152, line: 8, size: 128, elements: !1153)
!1152 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1153 = !{!1154, !4941}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1151, file: !1152, line: 9, baseType: !1155, size: 64)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !1157, line: 70, size: 256, elements: !1158)
!1157 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!1158 = !{!1159, !4938, !4939, !4940}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !1156, file: !1157, line: 71, baseType: !1160, size: 64)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !1162, line: 82, size: 1536, elements: !1163)
!1162 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!1163 = !{!1164, !1165, !1170, !1178, !1179, !1194, !4906, !4908, !4921, !4922, !4923, !4924, !4925, !4930, !4931, !4932}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !1161, file: !1162, line: 84, baseType: !7, size: 32)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !1161, file: !1162, line: 85, baseType: !1166, size: 32, offset: 32)
!1166 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !482, line: 275, baseType: !1167)
!1167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !482, line: 275, size: 32, elements: !1168)
!1168 = !{!1169}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1167, file: !482, line: 275, baseType: !486, size: 32)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1161, file: !1162, line: 86, baseType: !1171, size: 128, offset: 64)
!1171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !1172, line: 38, size: 128, elements: !1173)
!1172 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!1173 = !{!1174, !1176}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1171, file: !1172, line: 39, baseType: !1175, size: 64)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1171, file: !1172, line: 39, baseType: !1177, size: 64, offset: 64)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !1161, file: !1162, line: 87, baseType: !1160, size: 64, offset: 192)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !1161, file: !1162, line: 88, baseType: !1180, size: 128, offset: 256)
!1180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !1162, line: 49, size: 128, elements: !1181)
!1181 = !{!1182, !1191}
!1182 = !DIDerivedType(tag: DW_TAG_member, scope: !1180, file: !1162, line: 50, baseType: !1183, size: 64)
!1183 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1180, file: !1162, line: 50, size: 64, elements: !1184)
!1184 = !{!1185, !1190}
!1185 = !DIDerivedType(tag: DW_TAG_member, scope: !1183, file: !1162, line: 51, baseType: !1186, size: 64)
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1183, file: !1162, line: 51, size: 64, elements: !1187)
!1187 = !{!1188, !1189}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1186, file: !1162, line: 52, baseType: !305, size: 32)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1186, file: !1162, line: 52, baseType: !305, size: 32, offset: 32)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !1183, file: !1162, line: 54, baseType: !363, size: 64)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1180, file: !1162, line: 56, baseType: !1192, size: 64, offset: 64)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !1161, file: !1162, line: 89, baseType: !1195, size: 64, offset: 384)
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !244, line: 641, size: 4800, elements: !1197)
!1197 = !{!1198, !1199, !1200, !1201, !1202, !1203, !1204, !1207, !1208, !1395, !4721, !4722, !4723, !4724, !4729, !4730, !4731, !4732, !4733, !4734, !4735, !4736, !4737, !4738, !4739, !4740, !4741, !4742, !4743, !4744, !4745, !4746, !4747, !4752, !4753, !4754, !4755, !4756, !4757, !4758, !4888, !4891, !4892, !4893, !4902, !4903, !4904, !4905}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !1196, file: !244, line: 642, baseType: !24, size: 16)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !1196, file: !244, line: 643, baseType: !26, size: 16, offset: 16)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !1196, file: !244, line: 644, baseType: !798, size: 32, offset: 32)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !1196, file: !244, line: 645, baseType: !97, size: 128, offset: 64)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !1196, file: !244, line: 646, baseType: !806, size: 32, offset: 192)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1196, file: !244, line: 647, baseType: !7, size: 32, offset: 224)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !1196, file: !244, line: 650, baseType: !1205, size: 64, offset: 256)
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !244, line: 607, flags: DIFlagFwdDecl)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !1196, file: !244, line: 651, baseType: !1205, size: 64, offset: 320)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !1196, file: !244, line: 654, baseType: !1209, size: 64, offset: 384)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1211)
!1211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !244, line: 1966, size: 2048, align: 512, elements: !1212)
!1212 = !{!1213, !1217, !1230, !1236, !1240, !1244, !1248, !1252, !1256, !1260, !1264, !1265, !1271, !1275, !1312, !1343, !1350, !1356, !1360, !1364, !1368, !1372, !1376, !1382, !1386}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1211, file: !244, line: 1967, baseType: !1214, size: 64)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1215 = !DISubroutineType(types: !1216)
!1216 = !{!1160, !1195, !1160, !7}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !1211, file: !244, line: 1968, baseType: !1218, size: 64, offset: 64)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1219 = !DISubroutineType(types: !1220)
!1220 = !{!16, !1160, !1195, !1221}
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !1223, line: 10, size: 128, elements: !1224)
!1223 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!1224 = !{!1225, !1229}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1222, file: !1223, line: 11, baseType: !1226, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1227 = !DISubroutineType(types: !1228)
!1228 = !{null, !20}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1222, file: !1223, line: 12, baseType: !20, size: 64, offset: 64)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !1211, file: !244, line: 1969, baseType: !1231, size: 64, offset: 128)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DISubroutineType(types: !1233)
!1233 = !{!22, !1234, !1195, !22}
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1081, line: 42, flags: DIFlagFwdDecl)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !1211, file: !244, line: 1970, baseType: !1237, size: 64, offset: 192)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = !DISubroutineType(types: !1239)
!1239 = !{!1205, !1195, !22, !825}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !1211, file: !244, line: 1972, baseType: !1241, size: 64, offset: 256)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = !DISubroutineType(types: !1243)
!1243 = !{!22, !1160, !913, !22}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !1211, file: !244, line: 1974, baseType: !1245, size: 64, offset: 320)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = !DISubroutineType(types: !1247)
!1247 = !{!22, !1234, !1195, !1160, !24, !825}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1211, file: !244, line: 1976, baseType: !1249, size: 64, offset: 384)
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1250 = !DISubroutineType(types: !1251)
!1251 = !{!22, !1160, !1195, !1160}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !1211, file: !244, line: 1977, baseType: !1253, size: 64, offset: 448)
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1254 = !DISubroutineType(types: !1255)
!1255 = !{!22, !1195, !1160}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1211, file: !244, line: 1978, baseType: !1257, size: 64, offset: 512)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = !DISubroutineType(types: !1259)
!1259 = !{!22, !1234, !1195, !1160, !16}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1211, file: !244, line: 1980, baseType: !1261, size: 64, offset: 576)
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1262 = !DISubroutineType(types: !1263)
!1263 = !{!22, !1234, !1195, !1160, !24}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1211, file: !244, line: 1982, baseType: !1253, size: 64, offset: 640)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !1211, file: !244, line: 1983, baseType: !1266, size: 64, offset: 704)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = !DISubroutineType(types: !1268)
!1268 = !{!22, !1234, !1195, !1160, !24, !1269}
!1269 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !25, line: 21, baseType: !1270)
!1270 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !25, line: 18, baseType: !305)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1211, file: !244, line: 1985, baseType: !1272, size: 64, offset: 768)
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = !DISubroutineType(types: !1274)
!1274 = !{!22, !1234, !1195, !1160, !1195, !1160, !7}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !1211, file: !244, line: 1987, baseType: !1276, size: 64, offset: 832)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = !DISubroutineType(types: !1278)
!1278 = !{!22, !1234, !1160, !1279}
!1279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1280, size: 64)
!1280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !244, line: 226, size: 640, elements: !1281)
!1281 = !{!1282, !1283, !1284, !1294, !1303, !1304, !1309, !1310, !1311}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1280, file: !244, line: 227, baseType: !7, size: 32)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1280, file: !244, line: 228, baseType: !24, size: 16, offset: 32)
!1284 = !DIDerivedType(tag: DW_TAG_member, scope: !1280, file: !244, line: 241, baseType: !1285, size: 32, offset: 64)
!1285 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1280, file: !244, line: 241, size: 32, elements: !1286)
!1286 = !{!1287, !1288}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1285, file: !244, line: 242, baseType: !798, size: 32)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !1285, file: !244, line: 243, baseType: !1289, size: 32)
!1289 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !1290, line: 16, baseType: !1291)
!1290 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!1291 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1290, line: 14, size: 32, elements: !1292)
!1292 = !{!1293}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1291, file: !1290, line: 15, baseType: !803, size: 32)
!1294 = !DIDerivedType(tag: DW_TAG_member, scope: !1280, file: !244, line: 245, baseType: !1295, size: 32, offset: 96)
!1295 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1280, file: !244, line: 245, size: 32, elements: !1296)
!1296 = !{!1297, !1298}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1295, file: !244, line: 246, baseType: !806, size: 32)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !1295, file: !244, line: 247, baseType: !1299, size: 32)
!1299 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !1290, line: 20, baseType: !1300)
!1300 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1290, line: 18, size: 32, elements: !1301)
!1301 = !{!1302}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1300, file: !1290, line: 19, baseType: !810, size: 32)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1280, file: !244, line: 249, baseType: !41, size: 64, offset: 128)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1280, file: !244, line: 250, baseType: !1305, size: 128, offset: 192)
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !862, line: 13, size: 128, elements: !1306)
!1306 = !{!1307, !1308}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1305, file: !862, line: 14, baseType: !861, size: 64)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1305, file: !862, line: 15, baseType: !1050, size: 64, offset: 64)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1280, file: !244, line: 251, baseType: !1305, size: 128, offset: 320)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1280, file: !244, line: 252, baseType: !1305, size: 128, offset: 448)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1280, file: !244, line: 259, baseType: !640, size: 64, offset: 576)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !1211, file: !244, line: 1988, baseType: !1313, size: 64, offset: 896)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1314 = !DISubroutineType(types: !1315)
!1315 = !{!22, !1234, !1316, !1318, !305, !7}
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1317 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1151)
!1318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1319, size: 64)
!1319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1320, line: 22, size: 1280, elements: !1321)
!1320 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1321 = !{!1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1319, file: !1320, line: 23, baseType: !305, size: 32)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1319, file: !1320, line: 24, baseType: !24, size: 16, offset: 32)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1319, file: !1320, line: 25, baseType: !7, size: 32, offset: 64)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1319, file: !1320, line: 26, baseType: !869, size: 32, offset: 96)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1319, file: !1320, line: 27, baseType: !363, size: 64, offset: 128)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1319, file: !1320, line: 28, baseType: !363, size: 64, offset: 192)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1319, file: !1320, line: 41, baseType: !363, size: 64, offset: 256)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1319, file: !1320, line: 42, baseType: !1269, size: 32, offset: 320)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1319, file: !1320, line: 43, baseType: !1269, size: 32, offset: 352)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1319, file: !1320, line: 44, baseType: !798, size: 32, offset: 384)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1319, file: !1320, line: 45, baseType: !806, size: 32, offset: 416)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1319, file: !1320, line: 46, baseType: !41, size: 64, offset: 448)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1319, file: !1320, line: 47, baseType: !1305, size: 128, offset: 512)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1319, file: !1320, line: 48, baseType: !1305, size: 128, offset: 640)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1319, file: !1320, line: 49, baseType: !1305, size: 128, offset: 768)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1319, file: !1320, line: 50, baseType: !1305, size: 128, offset: 896)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1319, file: !1320, line: 51, baseType: !363, size: 64, offset: 1024)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1319, file: !1320, line: 52, baseType: !363, size: 64, offset: 1088)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1319, file: !1320, line: 53, baseType: !305, size: 32, offset: 1152)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1319, file: !1320, line: 54, baseType: !305, size: 32, offset: 1184)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1319, file: !1320, line: 55, baseType: !363, size: 64, offset: 1216)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !1211, file: !244, line: 1990, baseType: !1344, size: 64, offset: 960)
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1345 = !DISubroutineType(types: !1346)
!1346 = !{!1347, !1160, !913, !35}
!1347 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !25, line: 66, baseType: !1348)
!1348 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !37, line: 73, baseType: !1349)
!1349 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !37, line: 15, baseType: !1050)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !1211, file: !244, line: 1991, baseType: !1351, size: 64, offset: 1024)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = !DISubroutineType(types: !1353)
!1353 = !{!22, !1195, !1354, !363, !363}
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1355, size: 64)
!1355 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !244, line: 55, flags: DIFlagFwdDecl)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !1211, file: !244, line: 1993, baseType: !1357, size: 64, offset: 1088)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1358 = !DISubroutineType(types: !1359)
!1359 = !{!22, !1195, !22}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !1211, file: !244, line: 1994, baseType: !1361, size: 64, offset: 1152)
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!1362 = !DISubroutineType(types: !1363)
!1363 = !{!22, !1195, !1160, !640, !7, !24}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !1211, file: !244, line: 1997, baseType: !1365, size: 64, offset: 1216)
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1366 = !DISubroutineType(types: !1367)
!1367 = !{!22, !1234, !1195, !640, !24}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !1211, file: !244, line: 1999, baseType: !1369, size: 64, offset: 1280)
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = !DISubroutineType(types: !1371)
!1371 = !{!1205, !1234, !1160, !22}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !1211, file: !244, line: 2001, baseType: !1373, size: 64, offset: 1344)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = !DISubroutineType(types: !1375)
!1375 = !{!22, !1234, !1160, !1205, !22}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !1211, file: !244, line: 2003, baseType: !1377, size: 64, offset: 1408)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = !DISubroutineType(types: !1379)
!1379 = !{!22, !1234, !1160, !1380}
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1381 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !244, line: 76, flags: DIFlagFwdDecl)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !1211, file: !244, line: 2005, baseType: !1383, size: 64, offset: 1472)
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1384 = !DISubroutineType(types: !1385)
!1385 = !{!22, !1160, !1380}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !1211, file: !244, line: 2006, baseType: !1387, size: 64, offset: 1536)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DISubroutineType(types: !1389)
!1389 = !{!1390, !1195}
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !244, line: 3192, size: 192, elements: !1392)
!1392 = !{!1393, !1394}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1391, file: !244, line: 3193, baseType: !745, size: 128)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1391, file: !244, line: 3194, baseType: !305, size: 32, offset: 128)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !1196, file: !244, line: 655, baseType: !1396, size: 64, offset: 448)
!1396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1397, size: 64)
!1397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !244, line: 1190, size: 10752, elements: !1398)
!1398 = !{!1399, !1400, !1401, !1402, !1403, !1404, !4185, !4317, !4357, !4440, !4444, !4445, !4446, !4447, !4448, !4449, !4450, !4451, !4452, !4457, !4461, !4462, !4463, !4466, !4524, !4527, !4528, !4529, !4570, !4592, !4593, !4594, !4595, !4596, !4597, !4600, !4604, !4613, !4614, !4615, !4616, !4675, !4690, !4691, !4692, !4693, !4694, !4695, !4696, !4697, !4712, !4713, !4714, !4715, !4716, !4717, !4718, !4719, !4720}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1397, file: !244, line: 1191, baseType: !97, size: 128)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1397, file: !244, line: 1192, baseType: !1269, size: 32, offset: 128)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1397, file: !244, line: 1193, baseType: !87, size: 8, offset: 160)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1397, file: !244, line: 1194, baseType: !39, size: 64, offset: 192)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1397, file: !244, line: 1195, baseType: !41, size: 64, offset: 256)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1397, file: !244, line: 1196, baseType: !1405, size: 64, offset: 320)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !244, line: 2366, size: 576, elements: !1407)
!1407 = !{!1408, !1409, !1410, !1416, !1420, !1424, !1428, !4173, !4174, !4175, !4177, !4178, !4179, !4181, !4182, !4183, !4184}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1406, file: !244, line: 2367, baseType: !16, size: 64)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1406, file: !244, line: 2368, baseType: !22, size: 32, offset: 64)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1406, file: !244, line: 2376, baseType: !1411, size: 64, offset: 128)
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1412 = !DISubroutineType(types: !1413)
!1413 = !{!22, !1414}
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1415 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !1157, line: 21, flags: DIFlagFwdDecl)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1406, file: !244, line: 2377, baseType: !1417, size: 64, offset: 192)
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64)
!1418 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1419)
!1419 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !244, line: 75, flags: DIFlagFwdDecl)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1406, file: !244, line: 2378, baseType: !1421, size: 64, offset: 256)
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1422 = !DISubroutineType(types: !1423)
!1423 = !{!1160, !1405, !22, !16, !20}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1406, file: !244, line: 2380, baseType: !1425, size: 64, offset: 320)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = !DISubroutineType(types: !1427)
!1427 = !{null, !1396}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1406, file: !244, line: 2381, baseType: !1429, size: 64, offset: 384)
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!1430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !116, line: 402, size: 9216, align: 512, elements: !1431)
!1431 = !{!1432, !1433, !1434, !1438, !2742, !2768, !2769, !2770, !2771, !2775, !2778, !2779, !2780, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2846, !2850, !2870, !2890, !2891, !2892, !2893, !2902, !2925, !2926, !2929, !2932, !2933, !2934, !2935, !2936, !2937, !2938, !2943, !2944, !3032, !3040, !3041, !3042, !3044, !4152, !4153, !4162, !4163, !4164, !4165, !4166, !4167, !4168, !4169, !4170, !4171, !4172}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1430, file: !116, line: 403, baseType: !115, size: 32)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1430, file: !116, line: 406, baseType: !97, size: 128, offset: 64)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1430, file: !116, line: 409, baseType: !1435, size: 448, offset: 192)
!1435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 448, elements: !1436)
!1436 = !{!1437}
!1437 = !DISubrange(count: 56)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1430, file: !116, line: 417, baseType: !1439, size: 768, offset: 640)
!1439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !116, line: 45, size: 768, elements: !1440)
!1440 = !{!1441, !2736, !2737, !2738, !2741}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1439, file: !116, line: 46, baseType: !1442, size: 512)
!1442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1443, line: 64, size: 512, elements: !1444)
!1443 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1444 = !{!1445, !1446, !1447, !1449, !1493, !2583, !2726, !2731, !2732, !2733, !2734, !2735}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1442, file: !1443, line: 65, baseType: !16, size: 64)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1442, file: !1443, line: 66, baseType: !97, size: 128, offset: 64)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1442, file: !1443, line: 67, baseType: !1448, size: 64, offset: 192)
!1448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1442, file: !1443, line: 68, baseType: !1450, size: 64, offset: 256)
!1450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1451, size: 64)
!1451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1443, line: 168, size: 768, elements: !1452)
!1452 = !{!1453, !1454, !1455, !1456}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1451, file: !1443, line: 169, baseType: !97, size: 128)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1451, file: !1443, line: 170, baseType: !59, size: 32, offset: 128)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1451, file: !1443, line: 171, baseType: !1442, size: 512, offset: 192)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1451, file: !1443, line: 172, baseType: !1457, size: 64, offset: 704)
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1458, size: 64)
!1458 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1459)
!1459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1443, line: 133, size: 192, elements: !1460)
!1460 = !{!1461, !1468, !1473}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1459, file: !1443, line: 134, baseType: !1462, size: 64)
!1462 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1463)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = !DISubroutineType(types: !1465)
!1465 = !{!22, !1466}
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1467, size: 64)
!1467 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1442)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1459, file: !1443, line: 135, baseType: !1469, size: 64, offset: 64)
!1469 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1470)
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1471 = !DISubroutineType(types: !1472)
!1472 = !{!16, !1466}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1459, file: !1443, line: 136, baseType: !1474, size: 64, offset: 128)
!1474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1475)
!1475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64)
!1476 = !DISubroutineType(types: !1477)
!1477 = !{!22, !1466, !1478}
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1443, line: 125, size: 20736, elements: !1480)
!1480 = !{!1481, !1483, !1487, !1488, !1492}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1479, file: !1443, line: 126, baseType: !1482, size: 192)
!1482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !913, size: 192, elements: !704)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1479, file: !1443, line: 127, baseType: !1484, size: 4096, offset: 192)
!1484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !913, size: 4096, elements: !1485)
!1485 = !{!1486}
!1486 = !DISubrange(count: 64)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1479, file: !1443, line: 128, baseType: !22, size: 32, offset: 4288)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1479, file: !1443, line: 129, baseType: !1489, size: 16384, offset: 4320)
!1489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 16384, elements: !1490)
!1490 = !{!1491}
!1491 = !DISubrange(count: 2048)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1479, file: !1443, line: 130, baseType: !22, size: 32, offset: 20704)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1442, file: !1443, line: 69, baseType: !1494, size: 64, offset: 320)
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1495, size: 64)
!1495 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1496)
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1443, line: 116, size: 384, elements: !1497)
!1497 = !{!1498, !1502, !1521, !2571, !2575, !2579}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1496, file: !1443, line: 117, baseType: !1499, size: 64)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = !DISubroutineType(types: !1501)
!1501 = !{null, !1448}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1496, file: !1443, line: 118, baseType: !1503, size: 64, offset: 64)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1504 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1505)
!1505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1506, line: 254, size: 128, elements: !1507)
!1506 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1507 = !{!1508, !1517}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1505, file: !1506, line: 255, baseType: !1509, size: 64)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1510 = !DISubroutineType(types: !1511)
!1511 = !{!1347, !1448, !1512, !913}
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!1513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1506, line: 30, size: 128, elements: !1514)
!1514 = !{!1515, !1516}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1513, file: !1506, line: 31, baseType: !16, size: 64)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1513, file: !1506, line: 32, baseType: !24, size: 16, offset: 64)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1505, file: !1506, line: 256, baseType: !1518, size: 64, offset: 64)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = !DISubroutineType(types: !1520)
!1520 = !{!1347, !1448, !1512, !16, !35}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1496, file: !1443, line: 119, baseType: !1522, size: 64, offset: 128)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1525)
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1506, line: 84, size: 320, elements: !1526)
!1526 = !{!1527, !1528, !1532, !2567, !2569}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1525, file: !1506, line: 85, baseType: !16, size: 64)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1525, file: !1506, line: 86, baseType: !1529, size: 64, offset: 64)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = !DISubroutineType(types: !1531)
!1531 = !{!24, !1448, !1512, !22}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1525, file: !1506, line: 88, baseType: !1533, size: 64, offset: 128)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = !DISubroutineType(types: !1535)
!1535 = !{!24, !1448, !1536, !22}
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1506, line: 175, size: 512, elements: !1538)
!1538 = !{!1539, !1540, !1541, !1542, !2558, !2562, !2563}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1537, file: !1506, line: 176, baseType: !1513, size: 128)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1537, file: !1506, line: 177, baseType: !35, size: 64, offset: 128)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1537, file: !1506, line: 178, baseType: !20, size: 64, offset: 192)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1537, file: !1506, line: 179, baseType: !1543, size: 64, offset: 256)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = !DISubroutineType(types: !1545)
!1545 = !{!1546}
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !244, line: 472, size: 1536, align: 64, elements: !1548)
!1548 = !{!1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !2550, !2551, !2552, !2555, !2556, !2557}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1547, file: !244, line: 473, baseType: !1195, size: 64)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1547, file: !244, line: 474, baseType: !745, size: 128, offset: 64)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1547, file: !244, line: 475, baseType: !845, size: 320, offset: 192)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1547, file: !244, line: 476, baseType: !750, size: 32, offset: 512)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1547, file: !244, line: 477, baseType: !49, size: 32, offset: 544)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1547, file: !244, line: 482, baseType: !495, size: 128, offset: 576)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1547, file: !244, line: 483, baseType: !39, size: 64, offset: 704)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1547, file: !244, line: 484, baseType: !39, size: 64, offset: 768)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1547, file: !244, line: 485, baseType: !1558, size: 64, offset: 832)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1560)
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !244, line: 404, size: 1280, elements: !1561)
!1561 = !{!1562, !1872, !1942, !1946, !1950, !1967, !1973, !1977, !1982, !1986, !1990, !1994, !2038, !2042, !2046, !2050, !2055, !2059, !2542, !2546}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1560, file: !244, line: 405, baseType: !1563, size: 64)
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!1564 = !DISubroutineType(types: !1565)
!1565 = !{!22, !1566, !1852}
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !131, line: 74, size: 512, align: 128, elements: !1568)
!1568 = !{!1569, !1570, !1846, !1851}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1567, file: !131, line: 75, baseType: !39, size: 64)
!1570 = !DIDerivedType(tag: DW_TAG_member, scope: !1567, file: !131, line: 83, baseType: !1571, size: 320, offset: 64)
!1571 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1567, file: !131, line: 83, size: 320, elements: !1572)
!1572 = !{!1573, !1594, !1608, !1612, !1845}
!1573 = !DIDerivedType(tag: DW_TAG_member, scope: !1571, file: !131, line: 84, baseType: !1574, size: 320)
!1574 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1571, file: !131, line: 84, size: 320, elements: !1575)
!1575 = !{!1576, !1587, !1588, !1593}
!1576 = !DIDerivedType(tag: DW_TAG_member, scope: !1574, file: !131, line: 90, baseType: !1577, size: 128)
!1577 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1574, file: !131, line: 90, size: 128, elements: !1578)
!1578 = !{!1579, !1580, !1585, !1586}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1577, file: !131, line: 91, baseType: !97, size: 128)
!1580 = !DIDerivedType(tag: DW_TAG_member, scope: !1577, file: !131, line: 94, baseType: !1581, size: 128)
!1581 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1577, file: !131, line: 94, size: 128, elements: !1582)
!1582 = !{!1583, !1584}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1581, file: !131, line: 96, baseType: !20, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1581, file: !131, line: 98, baseType: !7, size: 32, offset: 64)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1577, file: !131, line: 102, baseType: !97, size: 128)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1577, file: !131, line: 103, baseType: !97, size: 128)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1574, file: !131, line: 106, baseType: !1546, size: 64, offset: 128)
!1588 = !DIDerivedType(tag: DW_TAG_member, scope: !1574, file: !131, line: 107, baseType: !1589, size: 64, offset: 192)
!1589 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1574, file: !131, line: 107, size: 64, elements: !1590)
!1590 = !{!1591, !1592}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1589, file: !131, line: 108, baseType: !39, size: 64)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1589, file: !131, line: 109, baseType: !39, size: 64)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1574, file: !131, line: 117, baseType: !39, size: 64, offset: 256)
!1594 = !DIDerivedType(tag: DW_TAG_member, scope: !1571, file: !131, line: 119, baseType: !1595, size: 320)
!1595 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1571, file: !131, line: 119, size: 320, elements: !1596)
!1596 = !{!1597, !1598, !1601, !1602, !1603}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1595, file: !131, line: 124, baseType: !39, size: 64)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1595, file: !131, line: 125, baseType: !1599, size: 64, offset: 64)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !131, line: 125, flags: DIFlagFwdDecl)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1595, file: !131, line: 126, baseType: !39, size: 64, offset: 128)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1595, file: !131, line: 127, baseType: !39, size: 64, offset: 192)
!1603 = !DIDerivedType(tag: DW_TAG_member, scope: !1595, file: !131, line: 128, baseType: !1604, size: 64, offset: 256)
!1604 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1595, file: !131, line: 128, size: 64, elements: !1605)
!1605 = !{!1606, !1607}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1604, file: !131, line: 133, baseType: !39, size: 64)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1604, file: !131, line: 138, baseType: !661, size: 64)
!1608 = !DIDerivedType(tag: DW_TAG_member, scope: !1571, file: !131, line: 141, baseType: !1609, size: 64)
!1609 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1571, file: !131, line: 141, size: 64, elements: !1610)
!1610 = !{!1611}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1609, file: !131, line: 142, baseType: !39, size: 64)
!1612 = !DIDerivedType(tag: DW_TAG_member, scope: !1571, file: !131, line: 144, baseType: !1613, size: 128)
!1613 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1571, file: !131, line: 144, size: 128, elements: !1614)
!1614 = !{!1615, !1844}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1613, file: !131, line: 146, baseType: !1616, size: 64)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !123, line: 126, size: 1216, elements: !1618)
!1618 = !{!1619, !1628, !1649, !1650, !1651, !1652, !1653, !1826, !1827, !1828}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1617, file: !123, line: 127, baseType: !1620, size: 384)
!1620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !123, line: 21, size: 384, elements: !1621)
!1621 = !{!1622, !1623, !1624, !1625, !1626, !1627}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1620, file: !123, line: 22, baseType: !39, size: 64)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1620, file: !123, line: 23, baseType: !292, size: 64, offset: 64)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1620, file: !123, line: 24, baseType: !292, size: 64, offset: 128)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1620, file: !123, line: 25, baseType: !39, size: 64, offset: 192)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1620, file: !123, line: 26, baseType: !39, size: 64, offset: 256)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1620, file: !123, line: 27, baseType: !39, size: 64, offset: 320)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1617, file: !123, line: 128, baseType: !1629, size: 128, offset: 384)
!1629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1630, line: 105, size: 128, elements: !1631)
!1630 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1631 = !{!1632, !1633}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1629, file: !1630, line: 110, baseType: !39, size: 64)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1629, file: !1630, line: 118, baseType: !1634, size: 64, offset: 64)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1630, line: 95, size: 448, elements: !1636)
!1636 = !{!1637, !1638, !1644, !1645, !1646, !1647, !1648}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1635, file: !1630, line: 96, baseType: !661, size: 64)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1635, file: !1630, line: 97, baseType: !1639, size: 64, offset: 64)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1630, line: 60, baseType: !1641)
!1641 = !DISubroutineType(types: !1642)
!1642 = !{null, !1643}
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1635, file: !1630, line: 98, baseType: !1639, size: 64, offset: 128)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1635, file: !1630, line: 99, baseType: !825, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1635, file: !1630, line: 100, baseType: !825, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1635, file: !1630, line: 101, baseType: !648, size: 128, align: 64, offset: 256)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1635, file: !1630, line: 102, baseType: !1643, size: 64, offset: 384)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1617, file: !123, line: 129, baseType: !991, size: 256, offset: 512)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1617, file: !123, line: 130, baseType: !122, size: 32, offset: 768)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1617, file: !123, line: 131, baseType: !7, size: 32, offset: 800)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1617, file: !123, line: 132, baseType: !39, size: 64, offset: 832)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1617, file: !123, line: 133, baseType: !1654, size: 64, offset: 896)
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1655 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1656)
!1656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !123, line: 77, size: 192, elements: !1657)
!1657 = !{!1658, !1662, !1822}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1656, file: !123, line: 83, baseType: !1659, size: 64)
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1660, size: 64)
!1660 = !DISubroutineType(types: !1661)
!1661 = !{null, !1566}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1656, file: !123, line: 89, baseType: !1663, size: 64, offset: 64)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = !DISubroutineType(types: !1665)
!1665 = !{!1666, !1667}
!1666 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !131, line: 1184, baseType: !7)
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1669, line: 512, size: 896, elements: !1670)
!1669 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1670 = !{!1671, !1789, !1790, !1797, !1804, !1814, !1815, !1816, !1818, !1820}
!1671 = !DIDerivedType(tag: DW_TAG_member, scope: !1668, file: !1669, line: 513, baseType: !1672, size: 320)
!1672 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1668, file: !1669, line: 513, size: 320, elements: !1673)
!1673 = !{!1674, !1785, !1786, !1787, !1788}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1672, file: !1669, line: 514, baseType: !1675, size: 64)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !131, line: 625, size: 1344, elements: !1677)
!1677 = !{!1678, !1687, !1688, !1696, !1703, !1704, !1709, !1710, !1715, !1716, !1719, !1778, !1779, !1780, !1781, !1782, !1783}
!1678 = !DIDerivedType(tag: DW_TAG_member, scope: !1676, file: !131, line: 628, baseType: !1679, size: 128)
!1679 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1676, file: !131, line: 628, size: 128, elements: !1680)
!1680 = !{!1681, !1686}
!1681 = !DIDerivedType(tag: DW_TAG_member, scope: !1679, file: !131, line: 629, baseType: !1682, size: 128)
!1682 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1679, file: !131, line: 629, size: 128, elements: !1683)
!1683 = !{!1684, !1685}
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1682, file: !131, line: 631, baseType: !39, size: 64)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1682, file: !131, line: 632, baseType: !39, size: 64, offset: 64)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1679, file: !131, line: 635, baseType: !648, size: 128, align: 64)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1676, file: !131, line: 639, baseType: !612, size: 64, offset: 128)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1676, file: !131, line: 640, baseType: !1689, size: 64, offset: 192)
!1689 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1690, line: 297, baseType: !1691)
!1690 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1690, line: 297, size: 64, elements: !1692)
!1692 = !{!1693}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1691, file: !1690, line: 297, baseType: !1694, size: 64)
!1694 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1695, line: 19, baseType: !39)
!1695 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1696 = !DIDerivedType(tag: DW_TAG_member, scope: !1676, file: !131, line: 646, baseType: !1697, size: 64, offset: 256)
!1697 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1676, file: !131, line: 646, size: 64, elements: !1698)
!1698 = !{!1699, !1702}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1697, file: !131, line: 647, baseType: !1700, size: 64)
!1700 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1701)
!1701 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !131, line: 542, baseType: !39)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1697, file: !131, line: 648, baseType: !1701, size: 64)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1676, file: !131, line: 666, baseType: !22, size: 32, offset: 320)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1676, file: !131, line: 667, baseType: !1705, size: 64, offset: 384)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !131, line: 579, size: 320, elements: !1707)
!1707 = !{!1708}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1706, file: !131, line: 580, baseType: !845, size: 320)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1676, file: !131, line: 670, baseType: !825, size: 8, offset: 448)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1676, file: !131, line: 681, baseType: !1711, size: 256, offset: 512)
!1711 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1676, file: !131, line: 678, size: 256, elements: !1712)
!1712 = !{!1713, !1714}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1711, file: !131, line: 679, baseType: !355, size: 192, align: 64)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1711, file: !131, line: 680, baseType: !39, size: 64, offset: 192)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1676, file: !131, line: 689, baseType: !97, size: 128, offset: 768)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1676, file: !131, line: 691, baseType: !1717, size: 64, offset: 896)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !131, line: 691, flags: DIFlagFwdDecl)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1676, file: !131, line: 694, baseType: !1720, size: 64, offset: 960)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1722)
!1722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1669, line: 563, size: 1024, elements: !1723)
!1723 = !{!1724, !1728, !1729, !1733, !1737, !1741, !1742, !1746, !1750, !1754, !1755, !1756, !1760, !1764, !1770, !1774}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1722, file: !1669, line: 564, baseType: !1725, size: 64)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1726 = !DISubroutineType(types: !1727)
!1727 = !{null, !1675}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1722, file: !1669, line: 569, baseType: !1725, size: 64, offset: 64)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1722, file: !1669, line: 571, baseType: !1730, size: 64, offset: 128)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = !DISubroutineType(types: !1732)
!1732 = !{!22, !1675, !39}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1722, file: !1669, line: 572, baseType: !1734, size: 64, offset: 192)
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!1735 = !DISubroutineType(types: !1736)
!1736 = !{!22, !1675}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1722, file: !1669, line: 578, baseType: !1738, size: 64, offset: 256)
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1739 = !DISubroutineType(types: !1740)
!1740 = !{!22, !1675, !39, !39, !39}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1722, file: !1669, line: 580, baseType: !1663, size: 64, offset: 320)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1722, file: !1669, line: 581, baseType: !1743, size: 64, offset: 384)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = !DISubroutineType(types: !1745)
!1745 = !{!1666, !1667, !7}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1722, file: !1669, line: 582, baseType: !1747, size: 64, offset: 448)
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!1748 = !DISubroutineType(types: !1749)
!1749 = !{!1666, !1667, !39, !39}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1722, file: !1669, line: 584, baseType: !1751, size: 64, offset: 512)
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1752 = !DISubroutineType(types: !1753)
!1753 = !{!39, !1675}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1722, file: !1669, line: 588, baseType: !1663, size: 64, offset: 576)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1722, file: !1669, line: 591, baseType: !1663, size: 64, offset: 640)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1722, file: !1669, line: 597, baseType: !1757, size: 64, offset: 704)
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = !DISubroutineType(types: !1759)
!1759 = !{!22, !1675, !39, !20, !22, !22}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1722, file: !1669, line: 603, baseType: !1761, size: 64, offset: 768)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = !DISubroutineType(types: !1763)
!1763 = !{!16, !1675}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1722, file: !1669, line: 613, baseType: !1765, size: 64, offset: 832)
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1766, size: 64)
!1766 = !DISubroutineType(types: !1767)
!1767 = !{!22, !1675, !1768}
!1768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1769, size: 64)
!1769 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !296, line: 54, flags: DIFlagFwdDecl)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1722, file: !1669, line: 625, baseType: !1771, size: 64, offset: 896)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1772 = !DISubroutineType(types: !1773)
!1773 = !{!1768, !1675, !39}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1722, file: !1669, line: 633, baseType: !1775, size: 64, offset: 960)
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1776, size: 64)
!1776 = !DISubroutineType(types: !1777)
!1777 = !{!1566, !1675, !39}
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1676, file: !131, line: 697, baseType: !39, size: 64, offset: 1024)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1676, file: !131, line: 699, baseType: !640, size: 64, offset: 1088)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1676, file: !131, line: 700, baseType: !20, size: 64, offset: 1152)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1676, file: !131, line: 711, baseType: !661, size: 64, offset: 1216)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1676, file: !131, line: 717, baseType: !1768, size: 64, offset: 1280)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1676, file: !131, line: 722, baseType: !1784, offset: 1344)
!1784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !131, line: 570, elements: !633)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1672, file: !1669, line: 515, baseType: !750, size: 32, offset: 64)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1672, file: !1669, line: 516, baseType: !39, size: 64, offset: 128)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1672, file: !1669, line: 517, baseType: !39, size: 64, offset: 192)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1672, file: !1669, line: 518, baseType: !39, size: 64, offset: 256)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1668, file: !1669, line: 520, baseType: !130, size: 32, offset: 320)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1668, file: !1669, line: 522, baseType: !1791, size: 64, offset: 384)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1792 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1695, line: 22, baseType: !1793)
!1793 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1695, line: 22, size: 64, elements: !1794)
!1794 = !{!1795}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1793, file: !1695, line: 22, baseType: !1796, size: 64)
!1796 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1695, line: 15, baseType: !39)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1668, file: !1669, line: 524, baseType: !1798, size: 64, offset: 448)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1799 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1690, line: 372, baseType: !1800)
!1800 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1690, line: 372, size: 64, elements: !1801)
!1801 = !{!1802}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1800, file: !1690, line: 372, baseType: !1803, size: 64)
!1803 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1695, line: 16, baseType: !39)
!1804 = !DIDerivedType(tag: DW_TAG_member, scope: !1668, file: !1669, line: 527, baseType: !1805, size: 64, offset: 512)
!1805 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1668, file: !1669, line: 527, size: 64, elements: !1806)
!1806 = !{!1807, !1813}
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1805, file: !1669, line: 528, baseType: !1808, size: 64)
!1808 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1695, line: 21, baseType: !1809)
!1809 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1695, line: 21, size: 64, elements: !1810)
!1810 = !{!1811}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1809, file: !1695, line: 21, baseType: !1812, size: 64)
!1812 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1695, line: 14, baseType: !39)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1805, file: !1669, line: 529, baseType: !1792, size: 64)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1668, file: !1669, line: 534, baseType: !1566, size: 64, offset: 576)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1668, file: !1669, line: 535, baseType: !1566, size: 64, offset: 640)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1668, file: !1669, line: 541, baseType: !1817, size: 64, offset: 704)
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1808, size: 64)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1668, file: !1669, line: 545, baseType: !1819, size: 64, offset: 768)
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1668, file: !1669, line: 549, baseType: !1821, size: 64, offset: 832)
!1821 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1690, line: 520, baseType: !1566)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1656, file: !123, line: 100, baseType: !1823, size: 64, offset: 128)
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1824 = !DISubroutineType(types: !1825)
!1825 = !{!22, !1616, !39, !39, !22}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1617, file: !123, line: 134, baseType: !20, size: 64, offset: 960)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1617, file: !123, line: 135, baseType: !22, size: 32, offset: 1024)
!1828 = !DIDerivedType(tag: DW_TAG_member, scope: !1617, file: !123, line: 136, baseType: !1829, size: 128, offset: 1088)
!1829 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1617, file: !123, line: 136, size: 128, elements: !1830)
!1830 = !{!1831, !1837}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1829, file: !123, line: 137, baseType: !1832, size: 128)
!1832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1833, line: 6, size: 128, elements: !1834)
!1833 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1834 = !{!1835, !1836}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1832, file: !1833, line: 7, baseType: !363, size: 64)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1832, file: !1833, line: 8, baseType: !363, size: 64, offset: 64)
!1837 = !DIDerivedType(tag: DW_TAG_member, scope: !1829, file: !123, line: 138, baseType: !1838)
!1838 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1829, file: !123, line: 138, elements: !1839)
!1839 = !{!1840, !1842}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1838, file: !123, line: 138, baseType: !1841)
!1841 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1838, file: !123, line: 138, elements: !633)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1838, file: !123, line: 138, baseType: !1843)
!1843 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1832, elements: !1057)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1613, file: !131, line: 147, baseType: !20, size: 64, offset: 64)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1571, file: !131, line: 161, baseType: !648, size: 128, align: 64)
!1846 = !DIDerivedType(tag: DW_TAG_member, scope: !1567, file: !131, line: 164, baseType: !1847, size: 32, offset: 384)
!1847 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1567, file: !131, line: 164, size: 32, elements: !1848)
!1848 = !{!1849, !1850}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1847, file: !131, line: 169, baseType: !49, size: 32)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1847, file: !131, line: 177, baseType: !7, size: 32)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1567, file: !131, line: 181, baseType: !49, size: 32, offset: 416)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !147, line: 42, size: 384, elements: !1854)
!1854 = !{!1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868}
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_write", scope: !1853, file: !147, line: 43, baseType: !1050, size: 64)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "pages_skipped", scope: !1853, file: !147, line: 45, baseType: !1050, size: 64, offset: 64)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "range_start", scope: !1853, file: !147, line: 52, baseType: !41, size: 64, offset: 128)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "range_end", scope: !1853, file: !147, line: 53, baseType: !41, size: 64, offset: 192)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "sync_mode", scope: !1853, file: !147, line: 55, baseType: !146, size: 32, offset: 256)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "for_kupdate", scope: !1853, file: !147, line: 57, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "for_background", scope: !1853, file: !147, line: 58, baseType: !7, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "tagged_writepages", scope: !1853, file: !147, line: 59, baseType: !7, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "for_reclaim", scope: !1853, file: !147, line: 60, baseType: !7, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "range_cyclic", scope: !1853, file: !147, line: 61, baseType: !7, size: 1, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "for_sync", scope: !1853, file: !147, line: 62, baseType: !7, size: 1, offset: 293, flags: DIFlagBitField, extraData: i64 288)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "unpinned_fscache_wb", scope: !1853, file: !147, line: 63, baseType: !7, size: 1, offset: 294, flags: DIFlagBitField, extraData: i64 288)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_owner", scope: !1853, file: !147, line: 71, baseType: !7, size: 1, offset: 295, flags: DIFlagBitField, extraData: i64 288)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "swap_plug", scope: !1853, file: !147, line: 78, baseType: !1869, size: 64, offset: 320)
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_iocb", file: !147, line: 78, flags: DIFlagFwdDecl)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1560, file: !244, line: 406, baseType: !1873, size: 64, offset: 64)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = !DISubroutineType(types: !1875)
!1875 = !{!22, !640, !1876}
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1877, size: 64)
!1877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !131, line: 293, size: 1536, elements: !1878)
!1878 = !{!1879, !1909, !1923}
!1879 = !DIDerivedType(tag: DW_TAG_member, scope: !1877, file: !131, line: 295, baseType: !1880, size: 512)
!1880 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1877, file: !131, line: 295, size: 512, elements: !1881)
!1881 = !{!1882, !1908}
!1882 = !DIDerivedType(tag: DW_TAG_member, scope: !1880, file: !131, line: 296, baseType: !1883, size: 448)
!1883 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1880, file: !131, line: 296, size: 448, elements: !1884)
!1884 = !{!1885, !1886, !1895, !1896, !1897, !1906, !1907}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1883, file: !131, line: 298, baseType: !39, size: 64)
!1886 = !DIDerivedType(tag: DW_TAG_member, scope: !1883, file: !131, line: 299, baseType: !1887, size: 128, offset: 64)
!1887 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1883, file: !131, line: 299, size: 128, elements: !1888)
!1888 = !{!1889, !1890}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1887, file: !131, line: 300, baseType: !97, size: 128)
!1890 = !DIDerivedType(tag: DW_TAG_member, scope: !1887, file: !131, line: 302, baseType: !1891, size: 128)
!1891 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1887, file: !131, line: 302, size: 128, elements: !1892)
!1892 = !{!1893, !1894}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1891, file: !131, line: 303, baseType: !20, size: 64)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1891, file: !131, line: 305, baseType: !7, size: 32, offset: 64)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1883, file: !131, line: 310, baseType: !1546, size: 64, offset: 192)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1883, file: !131, line: 311, baseType: !39, size: 64, offset: 256)
!1897 = !DIDerivedType(tag: DW_TAG_member, scope: !1883, file: !131, line: 312, baseType: !1898, size: 64, offset: 320)
!1898 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1883, file: !131, line: 312, size: 64, elements: !1899)
!1899 = !{!1900, !1901}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1898, file: !131, line: 313, baseType: !20, size: 64)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1898, file: !131, line: 314, baseType: !1902, size: 64)
!1902 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !131, line: 257, baseType: !1903)
!1903 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !131, line: 255, size: 64, elements: !1904)
!1904 = !{!1905}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1903, file: !131, line: 256, baseType: !39, size: 64)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1883, file: !131, line: 316, baseType: !49, size: 32, offset: 384)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1883, file: !131, line: 317, baseType: !49, size: 32, offset: 416)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1880, file: !131, line: 323, baseType: !1567, size: 512, align: 128)
!1909 = !DIDerivedType(tag: DW_TAG_member, scope: !1877, file: !131, line: 325, baseType: !1910, size: 512, offset: 512)
!1910 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1877, file: !131, line: 325, size: 512, elements: !1911)
!1911 = !{!1912, !1922}
!1912 = !DIDerivedType(tag: DW_TAG_member, scope: !1910, file: !131, line: 326, baseType: !1913, size: 320)
!1913 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1910, file: !131, line: 326, size: 320, elements: !1914)
!1914 = !{!1915, !1916, !1917, !1918, !1919, !1920, !1921}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1913, file: !131, line: 327, baseType: !39, size: 64)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1913, file: !131, line: 328, baseType: !39, size: 64, offset: 64)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1913, file: !131, line: 329, baseType: !39, size: 64, offset: 128)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1913, file: !131, line: 331, baseType: !49, size: 32, offset: 192)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1913, file: !131, line: 332, baseType: !49, size: 32, offset: 224)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1913, file: !131, line: 333, baseType: !49, size: 32, offset: 256)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1913, file: !131, line: 335, baseType: !7, size: 32, offset: 288)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1910, file: !131, line: 339, baseType: !1567, size: 512, align: 128)
!1923 = !DIDerivedType(tag: DW_TAG_member, scope: !1877, file: !131, line: 341, baseType: !1924, size: 512, offset: 1024)
!1924 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1877, file: !131, line: 341, size: 512, elements: !1925)
!1925 = !{!1926, !1935, !1941}
!1926 = !DIDerivedType(tag: DW_TAG_member, scope: !1924, file: !131, line: 342, baseType: !1927, size: 384)
!1927 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1924, file: !131, line: 342, size: 384, elements: !1928)
!1928 = !{!1929, !1930, !1931, !1932, !1933, !1934}
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1927, file: !131, line: 343, baseType: !39, size: 64)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1927, file: !131, line: 344, baseType: !39, size: 64, offset: 64)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1927, file: !131, line: 346, baseType: !20, size: 64, offset: 128)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1927, file: !131, line: 347, baseType: !20, size: 64, offset: 192)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1927, file: !131, line: 348, baseType: !20, size: 64, offset: 256)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1927, file: !131, line: 349, baseType: !20, size: 64, offset: 320)
!1935 = !DIDerivedType(tag: DW_TAG_member, scope: !1924, file: !131, line: 352, baseType: !1936, size: 256)
!1936 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1924, file: !131, line: 352, size: 256, elements: !1937)
!1937 = !{!1938, !1939, !1940}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1936, file: !131, line: 353, baseType: !39, size: 64)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1936, file: !131, line: 354, baseType: !39, size: 64, offset: 64)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1936, file: !131, line: 356, baseType: !97, size: 128, offset: 128)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1924, file: !131, line: 359, baseType: !1567, size: 512, align: 128)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1560, file: !244, line: 409, baseType: !1943, size: 64, offset: 128)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = !DISubroutineType(types: !1945)
!1945 = !{!22, !1546, !1852}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1560, file: !244, line: 412, baseType: !1947, size: 64, offset: 192)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = !DISubroutineType(types: !1949)
!1949 = !{!825, !1546, !1876}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1560, file: !244, line: 414, baseType: !1951, size: 64, offset: 256)
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1952 = !DISubroutineType(types: !1953)
!1953 = !{null, !1954}
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1955, size: 64)
!1955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !1956, line: 1276, size: 448, elements: !1957)
!1956 = !DIFile(filename: "./include/linux/pagemap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "76aa51d60be898371b0ef39d034a0ec4")
!1957 = !{!1958, !1959, !1960, !1962, !1963, !1964, !1965, !1966}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1955, file: !1956, line: 1277, baseType: !640, size: 64)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1955, file: !1956, line: 1278, baseType: !1546, size: 64, offset: 64)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "ra", scope: !1955, file: !1956, line: 1279, baseType: !1961, size: 64, offset: 128)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "_index", scope: !1955, file: !1956, line: 1281, baseType: !39, size: 64, offset: 192)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages", scope: !1955, file: !1956, line: 1282, baseType: !7, size: 32, offset: 256)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "_batch_count", scope: !1955, file: !1956, line: 1283, baseType: !7, size: 32, offset: 288)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "_workingset", scope: !1955, file: !1956, line: 1284, baseType: !825, size: 8, offset: 320)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "_pflags", scope: !1955, file: !1956, line: 1285, baseType: !39, size: 64, offset: 384)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1560, file: !244, line: 416, baseType: !1968, size: 64, offset: 320)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = !DISubroutineType(types: !1970)
!1970 = !{!22, !640, !1546, !41, !7, !1971, !1972}
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1560, file: !244, line: 419, baseType: !1974, size: 64, offset: 384)
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1975, size: 64)
!1975 = !DISubroutineType(types: !1976)
!1976 = !{!22, !640, !1546, !41, !7, !7, !1566, !20}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1560, file: !244, line: 424, baseType: !1978, size: 64, offset: 448)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = !DISubroutineType(types: !1980)
!1980 = !{!1981, !1546, !1981}
!1981 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !25, line: 131, baseType: !363)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1560, file: !244, line: 425, baseType: !1983, size: 64, offset: 512)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = !DISubroutineType(types: !1985)
!1985 = !{null, !1876, !35, !35}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1560, file: !244, line: 426, baseType: !1987, size: 64, offset: 576)
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = !DISubroutineType(types: !1989)
!1989 = !{!825, !1876, !750}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1560, file: !244, line: 427, baseType: !1991, size: 64, offset: 640)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DISubroutineType(types: !1993)
!1993 = !{null, !1876}
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1560, file: !244, line: 428, baseType: !1995, size: 64, offset: 704)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = !DISubroutineType(types: !1997)
!1997 = !{!1347, !1998, !2036}
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!1999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !244, line: 373, size: 384, elements: !2000)
!2000 = !{!2001, !2002, !2003, !2007, !2008, !2009, !2010}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1999, file: !244, line: 374, baseType: !640, size: 64)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1999, file: !244, line: 375, baseType: !41, size: 64, offset: 64)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1999, file: !244, line: 376, baseType: !2004, size: 64, offset: 128)
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2005 = !DISubroutineType(types: !2006)
!2006 = !{null, !1998, !1050}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1999, file: !244, line: 377, baseType: !20, size: 64, offset: 192)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1999, file: !244, line: 378, baseType: !22, size: 32, offset: 256)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1999, file: !244, line: 379, baseType: !93, size: 16, offset: 288)
!2010 = !DIDerivedType(tag: DW_TAG_member, scope: !1999, file: !244, line: 380, baseType: !2011, size: 64, offset: 320)
!2011 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1999, file: !244, line: 380, size: 64, elements: !2012)
!2012 = !{!2013, !2032}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2011, file: !244, line: 386, baseType: !2014, size: 64)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !1956, line: 998, size: 448, elements: !2016)
!2016 = !{!2017, !2018, !2019}
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "folio", scope: !2015, file: !1956, line: 999, baseType: !1876, size: 64)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !2015, file: !1956, line: 1000, baseType: !22, size: 32, offset: 64)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2015, file: !1956, line: 1001, baseType: !2020, size: 320, offset: 128)
!2020 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !55, line: 14, baseType: !2021)
!2021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !55, line: 30, size: 320, elements: !2022)
!2022 = !{!2023, !2024, !2025, !2031}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2021, file: !55, line: 31, baseType: !7, size: 32)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2021, file: !55, line: 32, baseType: !20, size: 64, offset: 64)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2021, file: !55, line: 33, baseType: !2026, size: 64, offset: 128)
!2026 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !55, line: 16, baseType: !2027)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = !DISubroutineType(types: !2029)
!2029 = !{!22, !2030, !7, !22, !20}
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2021, file: !55, line: 34, baseType: !97, size: 128, offset: 192)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2011, file: !244, line: 395, baseType: !2033, size: 64)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = !DISubroutineType(types: !2035)
!2035 = !{!1347, !20}
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2037 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !244, line: 69, flags: DIFlagFwdDecl)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1560, file: !244, line: 433, baseType: !2039, size: 64, offset: 768)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = !DISubroutineType(types: !2041)
!2041 = !{!22, !1546, !1876, !1876, !151}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1560, file: !244, line: 435, baseType: !2043, size: 64, offset: 832)
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!2044 = !DISubroutineType(types: !2045)
!2045 = !{!22, !1876}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1560, file: !244, line: 436, baseType: !2047, size: 64, offset: 896)
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2048 = !DISubroutineType(types: !2049)
!2049 = !{!825, !1876, !35, !35}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1560, file: !244, line: 438, baseType: !2051, size: 64, offset: 960)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = !DISubroutineType(types: !2053)
!2053 = !{null, !1876, !2054, !2054}
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1560, file: !244, line: 439, baseType: !2056, size: 64, offset: 1024)
!2056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2057, size: 64)
!2057 = !DISubroutineType(types: !2058)
!2058 = !{!22, !1546, !1566}
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1560, file: !244, line: 442, baseType: !2060, size: 64, offset: 1088)
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2061, size: 64)
!2061 = !DISubroutineType(types: !2062)
!2062 = !{!22, !2063, !640, !2541}
!2063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2064, size: 64)
!2064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !2065, line: 282, size: 2176, elements: !2066)
!2065 = !DIFile(filename: "./include/linux/swap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b48f968c4d3c1313a5ba7451c8be5b79")
!2066 = !{!2067, !2068, !2069, !2070, !2071, !2073, !2074, !2076, !2083, !2088, !2089, !2090, !2091, !2092, !2093, !2094, !2096, !2102, !2103, !2532, !2533, !2534, !2535, !2536, !2537, !2538, !2539}
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !2064, file: !2065, line: 283, baseType: !1629, size: 128)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2064, file: !2065, line: 284, baseType: !39, size: 64, offset: 128)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2064, file: !2065, line: 285, baseType: !873, size: 16, offset: 192)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2064, file: !2065, line: 286, baseType: !604, size: 320, offset: 256)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2064, file: !2065, line: 287, baseType: !2072, size: 8, offset: 576)
!2072 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2064, file: !2065, line: 288, baseType: !7, size: 32, offset: 608)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "swap_map", scope: !2064, file: !2065, line: 289, baseType: !2075, size: 64, offset: 640)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_info", scope: !2064, file: !2065, line: 290, baseType: !2077, size: 64, offset: 704)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_cluster_info", file: !2065, line: 250, size: 64, elements: !2079)
!2079 = !{!2080, !2081, !2082}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2078, file: !2065, line: 251, baseType: !59, size: 32)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2078, file: !2065, line: 257, baseType: !7, size: 24, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2078, file: !2065, line: 258, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "free_clusters", scope: !2064, file: !2065, line: 291, baseType: !2084, size: 128, offset: 768)
!2084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_cluster_list", file: !2065, line: 274, size: 128, elements: !2085)
!2085 = !{!2086, !2087}
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2084, file: !2065, line: 275, baseType: !2078, size: 64)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !2084, file: !2065, line: 276, baseType: !2078, size: 64, offset: 64)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "lowest_bit", scope: !2064, file: !2065, line: 292, baseType: !7, size: 32, offset: 896)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "highest_bit", scope: !2064, file: !2065, line: 293, baseType: !7, size: 32, offset: 928)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2064, file: !2065, line: 294, baseType: !7, size: 32, offset: 960)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "inuse_pages", scope: !2064, file: !2065, line: 295, baseType: !7, size: 32, offset: 992)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_next", scope: !2064, file: !2065, line: 296, baseType: !7, size: 32, offset: 1024)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_nr", scope: !2064, file: !2065, line: 297, baseType: !7, size: 32, offset: 1056)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_next_cpu", scope: !2064, file: !2065, line: 298, baseType: !2095, size: 64, offset: 1088)
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_cluster", scope: !2064, file: !2065, line: 299, baseType: !2097, size: 64, offset: 1152)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_cluster", file: !2065, line: 269, size: 96, elements: !2099)
!2099 = !{!2100, !2101}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2098, file: !2065, line: 270, baseType: !2078, size: 64)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2098, file: !2065, line: 271, baseType: !7, size: 32, offset: 64)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "swap_extent_root", scope: !2064, file: !2065, line: 300, baseType: !498, size: 64, offset: 1216)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !2064, file: !2065, line: 301, baseType: !2104, size: 64, offset: 1280)
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2105, size: 64)
!2105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !2106, line: 40, size: 7424, elements: !2107)
!2106 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b57ddd3a65e6bb0d967309f2bec65a56")
!2107 = !{!2108, !2109, !2110, !2113, !2117, !2120, !2121, !2122, !2123, !2124, !2125, !2126, !2127, !2128, !2129, !2130, !2131, !2135, !2136, !2137, !2138, !2139, !2140, !2141, !2144, !2145}
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "bd_start_sect", scope: !2105, file: !2106, line: 41, baseType: !1981, size: 64)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "bd_nr_sectors", scope: !2105, file: !2106, line: 42, baseType: !1981, size: 64, offset: 64)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !2105, file: !2106, line: 43, baseType: !2111, size: 64, offset: 128)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !296, line: 1453, flags: DIFlagFwdDecl)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "bd_queue", scope: !2105, file: !2106, line: 44, baseType: !2114, size: 64, offset: 192)
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2115 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2116, line: 74, flags: DIFlagFwdDecl)
!2116 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stats", scope: !2105, file: !2106, line: 45, baseType: !2118, size: 64, offset: 256)
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2119, size: 64)
!2119 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !2106, line: 45, flags: DIFlagFwdDecl)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stamp", scope: !2105, file: !2106, line: 46, baseType: !39, size: 64, offset: 320)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "bd_read_only", scope: !2105, file: !2106, line: 47, baseType: !825, size: 8, offset: 384)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !2105, file: !2106, line: 48, baseType: !83, size: 8, offset: 392)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !2105, file: !2106, line: 49, baseType: !825, size: 8, offset: 400)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "bd_has_submit_bio", scope: !2105, file: !2106, line: 50, baseType: !825, size: 8, offset: 408)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !2105, file: !2106, line: 51, baseType: !1269, size: 32, offset: 416)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !2105, file: !2106, line: 52, baseType: !49, size: 32, offset: 448)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !2105, file: !2106, line: 53, baseType: !59, size: 32, offset: 480)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !2105, file: !2106, line: 54, baseType: !1195, size: 64, offset: 512)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !2105, file: !2106, line: 55, baseType: !20, size: 64, offset: 576)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !2105, file: !2106, line: 56, baseType: !20, size: 64, offset: 640)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_ops", scope: !2105, file: !2106, line: 57, baseType: !2132, size: 64, offset: 704)
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2134)
!2134 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_holder_ops", file: !2106, line: 57, flags: DIFlagFwdDecl)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_lock", scope: !2105, file: !2106, line: 58, baseType: !668, size: 256, offset: 768)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !2105, file: !2106, line: 60, baseType: !22, size: 32, offset: 1024)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !2105, file: !2106, line: 61, baseType: !22, size: 32, offset: 1056)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_dir", scope: !2105, file: !2106, line: 62, baseType: !1448, size: 64, offset: 1088)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !2105, file: !2106, line: 65, baseType: !668, size: 256, offset: 1152)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_sb", scope: !2105, file: !2106, line: 66, baseType: !1396, size: 64, offset: 1408)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "bd_meta_info", scope: !2105, file: !2106, line: 68, baseType: !2142, size: 64, offset: 1472)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !2106, line: 68, flags: DIFlagFwdDecl)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "bd_ro_warned", scope: !2105, file: !2106, line: 72, baseType: !825, size: 8, offset: 1536)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "bd_device", scope: !2105, file: !2106, line: 77, baseType: !2146, size: 5824, offset: 1600)
!2146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !165, line: 705, size: 5824, elements: !2147)
!2147 = !{!2148, !2149, !2151, !2154, !2155, !2208, !2278, !2279, !2280, !2281, !2282, !2289, !2392, !2405, !2415, !2419, !2421, !2422, !2423, !2427, !2434, !2435, !2438, !2441, !2445, !2448, !2449, !2450, !2451, !2452, !2453, !2509, !2510, !2511, !2514, !2517, !2526, !2527, !2528, !2529, !2530, !2531}
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2146, file: !165, line: 706, baseType: !1442, size: 512)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2146, file: !165, line: 707, baseType: !2150, size: 64, offset: 512)
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2146, size: 64)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2146, file: !165, line: 709, baseType: !2152, size: 64, offset: 576)
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2153 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !165, line: 37, flags: DIFlagFwdDecl)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2146, file: !165, line: 711, baseType: !16, size: 64, offset: 640)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2146, file: !165, line: 712, baseType: !2156, size: 64, offset: 704)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2158)
!2158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !165, line: 89, size: 384, elements: !2159)
!2159 = !{!2160, !2161, !2162, !2168, !2173, !2177}
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2158, file: !165, line: 90, baseType: !16, size: 64)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2158, file: !165, line: 91, baseType: !1522, size: 64, offset: 64)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2158, file: !165, line: 92, baseType: !2163, size: 64, offset: 128)
!2163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2164, size: 64)
!2164 = !DISubroutineType(types: !2165)
!2165 = !{!22, !2166, !1478}
!2166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2167, size: 64)
!2167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2146)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2158, file: !165, line: 93, baseType: !2169, size: 64, offset: 192)
!2169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2170, size: 64)
!2170 = !DISubroutineType(types: !2171)
!2171 = !{!913, !2166, !2172, !1016, !1017}
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2158, file: !165, line: 95, baseType: !2174, size: 64, offset: 256)
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2175 = !DISubroutineType(types: !2176)
!2176 = !{null, !2150}
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2158, file: !165, line: 97, baseType: !2178, size: 64, offset: 320)
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64)
!2179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2180)
!2180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !172, line: 286, size: 1472, elements: !2181)
!2181 = !{!2182, !2186, !2187, !2188, !2189, !2190, !2191, !2192, !2193, !2194, !2195, !2196, !2197, !2198, !2199, !2200, !2201, !2202, !2203, !2204, !2205, !2206, !2207}
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2180, file: !172, line: 287, baseType: !2183, size: 64)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = !DISubroutineType(types: !2185)
!2185 = !{!22, !2150}
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2180, file: !172, line: 288, baseType: !2174, size: 64, offset: 64)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2180, file: !172, line: 289, baseType: !2183, size: 64, offset: 128)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2180, file: !172, line: 290, baseType: !2183, size: 64, offset: 192)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2180, file: !172, line: 291, baseType: !2183, size: 64, offset: 256)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2180, file: !172, line: 292, baseType: !2183, size: 64, offset: 320)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2180, file: !172, line: 293, baseType: !2183, size: 64, offset: 384)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2180, file: !172, line: 294, baseType: !2183, size: 64, offset: 448)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2180, file: !172, line: 295, baseType: !2183, size: 64, offset: 512)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2180, file: !172, line: 296, baseType: !2183, size: 64, offset: 576)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2180, file: !172, line: 297, baseType: !2183, size: 64, offset: 640)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2180, file: !172, line: 298, baseType: !2183, size: 64, offset: 704)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2180, file: !172, line: 299, baseType: !2183, size: 64, offset: 768)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2180, file: !172, line: 300, baseType: !2183, size: 64, offset: 832)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2180, file: !172, line: 301, baseType: !2183, size: 64, offset: 896)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2180, file: !172, line: 302, baseType: !2183, size: 64, offset: 960)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2180, file: !172, line: 303, baseType: !2183, size: 64, offset: 1024)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2180, file: !172, line: 304, baseType: !2183, size: 64, offset: 1088)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2180, file: !172, line: 305, baseType: !2183, size: 64, offset: 1152)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2180, file: !172, line: 306, baseType: !2183, size: 64, offset: 1216)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2180, file: !172, line: 307, baseType: !2183, size: 64, offset: 1280)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2180, file: !172, line: 308, baseType: !2183, size: 64, offset: 1344)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2180, file: !172, line: 309, baseType: !2183, size: 64, offset: 1408)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2146, file: !165, line: 714, baseType: !2209, size: 64, offset: 768)
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2210, size: 64)
!2210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2211)
!2211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2212, line: 80, size: 1344, elements: !2213)
!2212 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!2213 = !{!2214, !2215, !2216, !2217, !2218, !2219, !2260, !2261, !2262, !2263, !2264, !2265, !2266, !2267, !2268, !2269, !2270, !2271, !2272, !2273, !2277}
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2211, file: !2212, line: 81, baseType: !16, size: 64)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2211, file: !2212, line: 82, baseType: !16, size: 64, offset: 64)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2211, file: !2212, line: 83, baseType: !1522, size: 64, offset: 128)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2211, file: !2212, line: 84, baseType: !1522, size: 64, offset: 192)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2211, file: !2212, line: 85, baseType: !1522, size: 64, offset: 256)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2211, file: !2212, line: 87, baseType: !2220, size: 64, offset: 320)
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2221, size: 64)
!2221 = !DISubroutineType(types: !2222)
!2222 = !{!22, !2150, !2223}
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2224, size: 64)
!2224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !159, line: 96, size: 1152, elements: !2225)
!2225 = !{!2226, !2227, !2228, !2229, !2230, !2231, !2232, !2236, !2240, !2241, !2242, !2243, !2244, !2252, !2253, !2254, !2255, !2256, !2257}
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2224, file: !159, line: 97, baseType: !16, size: 64)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2224, file: !159, line: 98, baseType: !2209, size: 64, offset: 64)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2224, file: !159, line: 100, baseType: !1429, size: 64, offset: 128)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2224, file: !159, line: 101, baseType: !16, size: 64, offset: 192)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2224, file: !159, line: 103, baseType: !825, size: 8, offset: 256)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2224, file: !159, line: 104, baseType: !158, size: 32, offset: 288)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2224, file: !159, line: 106, baseType: !2233, size: 64, offset: 320)
!2233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2234, size: 64)
!2234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2235)
!2235 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !159, line: 106, flags: DIFlagFwdDecl)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2224, file: !159, line: 107, baseType: !2237, size: 64, offset: 384)
!2237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2238, size: 64)
!2238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2239)
!2239 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !159, line: 107, flags: DIFlagFwdDecl)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2224, file: !159, line: 109, baseType: !2183, size: 64, offset: 448)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2224, file: !159, line: 110, baseType: !2174, size: 64, offset: 512)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2224, file: !159, line: 111, baseType: !2183, size: 64, offset: 576)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2224, file: !159, line: 112, baseType: !2174, size: 64, offset: 640)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2224, file: !159, line: 113, baseType: !2245, size: 64, offset: 704)
!2245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2246, size: 64)
!2246 = !DISubroutineType(types: !2247)
!2247 = !{!22, !2150, !2248}
!2248 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !172, line: 60, baseType: !2249)
!2249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !172, line: 58, size: 32, elements: !2250)
!2250 = !{!2251}
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2249, file: !172, line: 59, baseType: !22, size: 32)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2224, file: !159, line: 114, baseType: !2183, size: 64, offset: 768)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2224, file: !159, line: 115, baseType: !1522, size: 64, offset: 832)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2224, file: !159, line: 116, baseType: !1522, size: 64, offset: 896)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2224, file: !159, line: 118, baseType: !2178, size: 64, offset: 960)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2224, file: !159, line: 119, baseType: !2174, size: 64, offset: 1024)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2224, file: !159, line: 121, baseType: !2258, size: 64, offset: 1088)
!2258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2259, size: 64)
!2259 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !159, line: 121, flags: DIFlagFwdDecl)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2211, file: !2212, line: 88, baseType: !2163, size: 64, offset: 384)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2211, file: !2212, line: 89, baseType: !2183, size: 64, offset: 448)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2211, file: !2212, line: 90, baseType: !2174, size: 64, offset: 512)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2211, file: !2212, line: 91, baseType: !2174, size: 64, offset: 576)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2211, file: !2212, line: 92, baseType: !2174, size: 64, offset: 640)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2211, file: !2212, line: 94, baseType: !2183, size: 64, offset: 704)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2211, file: !2212, line: 95, baseType: !2183, size: 64, offset: 768)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2211, file: !2212, line: 97, baseType: !2245, size: 64, offset: 832)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2211, file: !2212, line: 98, baseType: !2183, size: 64, offset: 896)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2211, file: !2212, line: 100, baseType: !2183, size: 64, offset: 960)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2211, file: !2212, line: 102, baseType: !2183, size: 64, offset: 1024)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !2211, file: !2212, line: 103, baseType: !2174, size: 64, offset: 1088)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2211, file: !2212, line: 105, baseType: !2178, size: 64, offset: 1152)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2211, file: !2212, line: 107, baseType: !2274, size: 64, offset: 1216)
!2274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2275, size: 64)
!2275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2276)
!2276 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2212, line: 107, flags: DIFlagFwdDecl)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2211, file: !2212, line: 109, baseType: !825, size: 8, offset: 1280)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2146, file: !165, line: 715, baseType: !2223, size: 64, offset: 832)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2146, file: !165, line: 717, baseType: !20, size: 64, offset: 896)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2146, file: !165, line: 719, baseType: !20, size: 64, offset: 960)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2146, file: !165, line: 721, baseType: !668, size: 256, offset: 1024)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2146, file: !165, line: 725, baseType: !2283, size: 448, offset: 1280)
!2283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !165, line: 517, size: 448, elements: !2284)
!2284 = !{!2285, !2286, !2287, !2288}
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2283, file: !165, line: 518, baseType: !97, size: 128)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2283, file: !165, line: 519, baseType: !97, size: 128, offset: 128)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !2283, file: !165, line: 520, baseType: !97, size: 128, offset: 256)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2283, file: !165, line: 521, baseType: !164, size: 32, offset: 384)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2146, file: !165, line: 726, baseType: !2290, size: 2496, offset: 1728)
!2290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !172, line: 663, size: 2496, elements: !2291)
!2291 = !{!2292, !2293, !2294, !2295, !2296, !2297, !2298, !2299, !2300, !2301, !2302, !2303, !2304, !2305, !2306, !2307, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353, !2354, !2355, !2356, !2357, !2358, !2359, !2360, !2361, !2362, !2363, !2364, !2365, !2366, !2367, !2368, !2369, !2370, !2371, !2372, !2373, !2374, !2375, !2376, !2377, !2378, !2379, !2385, !2389}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !2290, file: !172, line: 664, baseType: !2248, size: 32)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !2290, file: !172, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !2290, file: !172, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !2290, file: !172, line: 667, baseType: !825, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !2290, file: !172, line: 668, baseType: !825, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !2290, file: !172, line: 669, baseType: !825, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !2290, file: !172, line: 670, baseType: !825, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !2290, file: !172, line: 671, baseType: !825, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !2290, file: !172, line: 672, baseType: !825, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2290, file: !172, line: 673, baseType: !825, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !2290, file: !172, line: 674, baseType: !825, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !2290, file: !172, line: 675, baseType: !305, size: 32, offset: 64)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2290, file: !172, line: 676, baseType: !59, size: 32, offset: 96)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2290, file: !172, line: 678, baseType: !97, size: 128, offset: 128)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !2290, file: !172, line: 679, baseType: !991, size: 256, offset: 256)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2290, file: !172, line: 680, baseType: !2308, size: 64, offset: 512)
!2308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2309, size: 64)
!2309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !2310, line: 43, size: 1536, elements: !2311)
!2310 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!2311 = !{!2312, !2313, !2314, !2315, !2316, !2319, !2331, !2332, !2333, !2334, !2335, !2336, !2337, !2338, !2339, !2340, !2341, !2342, !2343, !2344}
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2309, file: !2310, line: 44, baseType: !16, size: 64)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2309, file: !2310, line: 45, baseType: !22, size: 32, offset: 64)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2309, file: !2310, line: 46, baseType: !97, size: 128, offset: 128)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2309, file: !2310, line: 47, baseType: !59, size: 32, offset: 256)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2309, file: !2310, line: 48, baseType: !2317, size: 64, offset: 320)
!2317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2318, size: 64)
!2318 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !172, line: 629, flags: DIFlagFwdDecl)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2309, file: !2310, line: 49, baseType: !2320, size: 320, offset: 384)
!2320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2321, line: 11, size: 320, elements: !2322)
!2321 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2322 = !{!2323, !2324, !2325, !2330}
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2320, file: !2321, line: 16, baseType: !720, size: 128)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2320, file: !2321, line: 17, baseType: !39, size: 64, offset: 128)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2320, file: !2321, line: 18, baseType: !2326, size: 64, offset: 192)
!2326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2327, size: 64)
!2327 = !DISubroutineType(types: !2328)
!2328 = !{null, !2329}
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2320, file: !2321, line: 19, baseType: !305, size: 32, offset: 256)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2309, file: !2310, line: 50, baseType: !39, size: 64, offset: 704)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !2309, file: !2310, line: 51, baseType: !438, size: 64, offset: 768)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !2309, file: !2310, line: 52, baseType: !438, size: 64, offset: 832)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !2309, file: !2310, line: 53, baseType: !438, size: 64, offset: 896)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !2309, file: !2310, line: 54, baseType: !438, size: 64, offset: 960)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !2309, file: !2310, line: 55, baseType: !438, size: 64, offset: 1024)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !2309, file: !2310, line: 56, baseType: !39, size: 64, offset: 1088)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !2309, file: !2310, line: 57, baseType: !39, size: 64, offset: 1152)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !2309, file: !2310, line: 58, baseType: !39, size: 64, offset: 1216)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !2309, file: !2310, line: 59, baseType: !39, size: 64, offset: 1280)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !2309, file: !2310, line: 60, baseType: !39, size: 64, offset: 1344)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2309, file: !2310, line: 61, baseType: !2150, size: 64, offset: 1408)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2309, file: !2310, line: 62, baseType: !825, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !2309, file: !2310, line: 63, baseType: !825, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !2290, file: !172, line: 681, baseType: !825, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !2290, file: !172, line: 682, baseType: !825, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !2290, file: !172, line: 683, baseType: !825, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !2290, file: !172, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !2290, file: !172, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !2290, file: !172, line: 690, baseType: !430, size: 512, offset: 640)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2290, file: !172, line: 691, baseType: !363, size: 64, offset: 1152)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2290, file: !172, line: 692, baseType: !952, size: 256, offset: 1216)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !2290, file: !172, line: 693, baseType: !54, size: 192, offset: 1472)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2290, file: !172, line: 694, baseType: !2317, size: 64, offset: 1664)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !2290, file: !172, line: 695, baseType: !49, size: 32, offset: 1728)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2290, file: !172, line: 696, baseType: !49, size: 32, offset: 1760)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !2290, file: !172, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !2290, file: !172, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !2290, file: !172, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !2290, file: !172, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !2290, file: !172, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !2290, file: !172, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !2290, file: !172, line: 703, baseType: !825, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !2290, file: !172, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !2290, file: !172, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !2290, file: !172, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !2290, file: !172, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !2290, file: !172, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !2290, file: !172, line: 709, baseType: !7, size: 32, offset: 1824)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2290, file: !172, line: 710, baseType: !171, size: 32, offset: 1856)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !2290, file: !172, line: 711, baseType: !179, size: 32, offset: 1888)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !2290, file: !172, line: 712, baseType: !179, size: 32, offset: 1920)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !2290, file: !172, line: 713, baseType: !22, size: 32, offset: 1952)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !2290, file: !172, line: 714, baseType: !22, size: 32, offset: 1984)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !2290, file: !172, line: 715, baseType: !363, size: 64, offset: 2048)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !2290, file: !172, line: 716, baseType: !363, size: 64, offset: 2112)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !2290, file: !172, line: 717, baseType: !363, size: 64, offset: 2176)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !2290, file: !172, line: 718, baseType: !363, size: 64, offset: 2240)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !2290, file: !172, line: 720, baseType: !2380, size: 64, offset: 2304)
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2381, size: 64)
!2381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !172, line: 632, size: 64, elements: !2382)
!2382 = !{!2383, !2384}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2381, file: !172, line: 633, baseType: !59, size: 32)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2381, file: !172, line: 634, baseType: !7, size: 32, offset: 32)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !2290, file: !172, line: 721, baseType: !2386, size: 64, offset: 2368)
!2386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2387, size: 64)
!2387 = !DISubroutineType(types: !2388)
!2388 = !{null, !2150, !837}
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !2290, file: !172, line: 722, baseType: !2390, size: 64, offset: 2432)
!2390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2391, size: 64)
!2391 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !172, line: 722, flags: DIFlagFwdDecl)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2146, file: !165, line: 727, baseType: !2393, size: 64, offset: 4224)
!2393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2394, size: 64)
!2394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !172, line: 742, size: 1792, elements: !2395)
!2395 = !{!2396, !2397, !2398, !2402, !2403, !2404}
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2394, file: !172, line: 743, baseType: !2180, size: 1472)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2394, file: !172, line: 744, baseType: !2183, size: 64, offset: 1472)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2394, file: !172, line: 745, baseType: !2399, size: 64, offset: 1536)
!2399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2400, size: 64)
!2400 = !DISubroutineType(types: !2401)
!2401 = !{null, !2150, !825}
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2394, file: !172, line: 746, baseType: !2183, size: 64, offset: 1600)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2394, file: !172, line: 747, baseType: !2174, size: 64, offset: 1664)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !2394, file: !172, line: 748, baseType: !2174, size: 64, offset: 1728)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !2146, file: !165, line: 736, baseType: !2406, size: 128, offset: 4288)
!2406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !165, line: 529, size: 128, elements: !2407)
!2407 = !{!2408, !2412}
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !2406, file: !165, line: 531, baseType: !2409, size: 64)
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 64)
!2410 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !2411, line: 13, flags: DIFlagFwdDecl)
!2411 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2406, file: !165, line: 532, baseType: !2413, size: 64, offset: 64)
!2413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2414, size: 64)
!2414 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !165, line: 49, flags: DIFlagFwdDecl)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !2146, file: !165, line: 738, baseType: !2416, size: 64, offset: 4416)
!2416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2417, size: 64)
!2417 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2418)
!2418 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !165, line: 738, flags: DIFlagFwdDecl)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2146, file: !165, line: 740, baseType: !2420, size: 64, offset: 4480)
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2146, file: !165, line: 741, baseType: !363, size: 64, offset: 4544)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !2146, file: !165, line: 746, baseType: !363, size: 64, offset: 4608)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !2146, file: !165, line: 747, baseType: !2424, size: 64, offset: 4672)
!2424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2425, size: 64)
!2425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2426)
!2426 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !165, line: 747, flags: DIFlagFwdDecl)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2146, file: !165, line: 749, baseType: !2428, size: 64, offset: 4736)
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !165, line: 428, size: 128, elements: !2430)
!2430 = !{!2431, !2432, !2433}
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2429, file: !165, line: 433, baseType: !7, size: 32)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !2429, file: !165, line: 434, baseType: !7, size: 32, offset: 32)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2429, file: !165, line: 435, baseType: !39, size: 64, offset: 64)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2146, file: !165, line: 751, baseType: !97, size: 128, offset: 4800)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !2146, file: !165, line: 762, baseType: !2436, size: 64, offset: 4928)
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2437, size: 64)
!2437 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !165, line: 762, flags: DIFlagFwdDecl)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2146, file: !165, line: 770, baseType: !2439, offset: 4992)
!2439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2440, line: 5, elements: !633)
!2440 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2146, file: !165, line: 772, baseType: !2442, size: 64, offset: 4992)
!2442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2443, size: 64)
!2443 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !2444, line: 18, flags: DIFlagFwdDecl)
!2444 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2146, file: !165, line: 773, baseType: !2446, size: 64, offset: 5056)
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2447, size: 64)
!2447 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2212, line: 22, flags: DIFlagFwdDecl)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !2146, file: !165, line: 776, baseType: !22, size: 32, offset: 5120)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2146, file: !165, line: 778, baseType: !1269, size: 32, offset: 5152)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2146, file: !165, line: 779, baseType: !305, size: 32, offset: 5184)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2146, file: !165, line: 781, baseType: !59, size: 32, offset: 5216)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2146, file: !165, line: 782, baseType: !97, size: 128, offset: 5248)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2146, file: !165, line: 784, baseType: !2454, size: 64, offset: 5376)
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2456)
!2456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2457, line: 52, size: 768, elements: !2458)
!2457 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!2458 = !{!2459, !2460, !2461, !2462, !2463, !2467, !2471, !2472, !2473, !2500, !2504, !2508}
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2456, file: !2457, line: 53, baseType: !16, size: 64)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2456, file: !2457, line: 55, baseType: !1522, size: 64, offset: 64)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2456, file: !2457, line: 56, baseType: !1522, size: 64, offset: 128)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2456, file: !2457, line: 58, baseType: !2163, size: 64, offset: 192)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2456, file: !2457, line: 59, baseType: !2464, size: 64, offset: 256)
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64)
!2465 = !DISubroutineType(types: !2466)
!2466 = !{!913, !2166, !2172}
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2456, file: !2457, line: 61, baseType: !2468, size: 64, offset: 320)
!2468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2469, size: 64)
!2469 = !DISubroutineType(types: !2470)
!2470 = !{null, !2454}
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2456, file: !2457, line: 62, baseType: !2174, size: 64, offset: 384)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2456, file: !2457, line: 64, baseType: !2183, size: 64, offset: 448)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2456, file: !2457, line: 66, baseType: !2474, size: 64, offset: 512)
!2474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2475, size: 64)
!2475 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2476)
!2476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !187, line: 39, size: 384, elements: !2477)
!2477 = !{!2478, !2479, !2483, !2487, !2495, !2499}
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2476, file: !187, line: 40, baseType: !186, size: 32)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2476, file: !187, line: 41, baseType: !2480, size: 64, offset: 64)
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2481, size: 64)
!2481 = !DISubroutineType(types: !2482)
!2482 = !{!825}
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2476, file: !187, line: 42, baseType: !2484, size: 64, offset: 128)
!2484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2485, size: 64)
!2485 = !DISubroutineType(types: !2486)
!2486 = !{!20}
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2476, file: !187, line: 43, baseType: !2488, size: 64, offset: 192)
!2488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2489, size: 64)
!2489 = !DISubroutineType(types: !2490)
!2490 = !{!2491, !2493}
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2494, size: 64)
!2494 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !187, line: 19, flags: DIFlagFwdDecl)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2476, file: !187, line: 44, baseType: !2496, size: 64, offset: 256)
!2496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2497, size: 64)
!2497 = !DISubroutineType(types: !2498)
!2498 = !{!2491}
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2476, file: !187, line: 45, baseType: !1226, size: 64, offset: 320)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2456, file: !2457, line: 67, baseType: !2501, size: 64, offset: 576)
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2502, size: 64)
!2502 = !DISubroutineType(types: !2503)
!2503 = !{!2491, !2166}
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2456, file: !2457, line: 69, baseType: !2505, size: 64, offset: 640)
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2506, size: 64)
!2506 = !DISubroutineType(types: !2507)
!2507 = !{null, !2166, !1016, !1017}
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2456, file: !2457, line: 71, baseType: !2178, size: 64, offset: 704)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2146, file: !165, line: 785, baseType: !1522, size: 64, offset: 5440)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2146, file: !165, line: 787, baseType: !2174, size: 64, offset: 5504)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2146, file: !165, line: 788, baseType: !2512, size: 64, offset: 5568)
!2512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2513, size: 64)
!2513 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !165, line: 46, flags: DIFlagFwdDecl)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !2146, file: !165, line: 789, baseType: !2515, size: 64, offset: 5632)
!2515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2516, size: 64)
!2516 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !165, line: 48, flags: DIFlagFwdDecl)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !2146, file: !165, line: 791, baseType: !2518, size: 64, offset: 5696)
!2518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2519, size: 64)
!2519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !165, line: 597, size: 128, elements: !2520)
!2520 = !{!2521, !2522, !2523, !2524, !2525}
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !2519, file: !165, line: 598, baseType: !192, size: 32)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !2519, file: !165, line: 599, baseType: !201, size: 32, offset: 32)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !2519, file: !165, line: 600, baseType: !206, size: 32, offset: 64)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !2519, file: !165, line: 601, baseType: !825, size: 8, offset: 96)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !2519, file: !165, line: 602, baseType: !825, size: 8, offset: 104)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2146, file: !165, line: 793, baseType: !211, size: 32, offset: 5760)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !2146, file: !165, line: 795, baseType: !825, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2146, file: !165, line: 796, baseType: !825, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2146, file: !165, line: 797, baseType: !825, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !2146, file: !165, line: 798, baseType: !825, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !2146, file: !165, line: 799, baseType: !825, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "swap_file", scope: !2064, file: !2065, line: 302, baseType: !640, size: 64, offset: 1344)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "old_block_size", scope: !2064, file: !2065, line: 303, baseType: !7, size: 32, offset: 1408)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !2064, file: !2065, line: 304, baseType: !991, size: 256, offset: 1472)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2064, file: !2065, line: 305, baseType: !59, size: 32, offset: 1728)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "cont_lock", scope: !2064, file: !2065, line: 318, baseType: !59, size: 32, offset: 1760)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "discard_work", scope: !2064, file: !2065, line: 322, baseType: !952, size: 256, offset: 1792)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "discard_clusters", scope: !2064, file: !2065, line: 323, baseType: !2084, size: 128, offset: 2048)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "avail_lists", scope: !2064, file: !2065, line: 324, baseType: !2540, offset: 2176)
!2540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !604, elements: !1057)
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1560, file: !244, line: 444, baseType: !2543, size: 64, offset: 1152)
!2543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2544, size: 64)
!2544 = !DISubroutineType(types: !2545)
!2545 = !{null, !640}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1560, file: !244, line: 445, baseType: !2547, size: 64, offset: 1216)
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2548, size: 64)
!2548 = !DISubroutineType(types: !2549)
!2549 = !{!22, !1998, !2036}
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1547, file: !244, line: 486, baseType: !39, size: 64, offset: 896)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1547, file: !244, line: 487, baseType: !845, size: 320, offset: 960)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1547, file: !244, line: 488, baseType: !2553, size: 32, offset: 1280)
!2553 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2554, line: 8, baseType: !305)
!2554 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1547, file: !244, line: 489, baseType: !59, size: 32, offset: 1312)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1547, file: !244, line: 490, baseType: !97, size: 128, offset: 1344)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1547, file: !244, line: 491, baseType: !20, size: 64, offset: 1472)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1537, file: !1506, line: 180, baseType: !2559, size: 64, offset: 320)
!2559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2560, size: 64)
!2560 = !DISubroutineType(types: !2561)
!2561 = !{!1347, !640, !1448, !1536, !913, !41, !35}
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1537, file: !1506, line: 182, baseType: !2559, size: 64, offset: 384)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1537, file: !1506, line: 184, baseType: !2564, size: 64, offset: 448)
!2564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2565, size: 64)
!2565 = !DISubroutineType(types: !2566)
!2566 = !{!22, !640, !1448, !1536, !1675}
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1525, file: !1506, line: 90, baseType: !2568, size: 64, offset: 192)
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1525, file: !1506, line: 91, baseType: !2570, size: 64, offset: 256)
!2570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1496, file: !1443, line: 120, baseType: !2572, size: 64, offset: 192)
!2572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2573, size: 64)
!2573 = !DISubroutineType(types: !2574)
!2574 = !{!2474, !1466}
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1496, file: !1443, line: 121, baseType: !2576, size: 64, offset: 256)
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!2577 = !DISubroutineType(types: !2578)
!2578 = !{!2491, !1466}
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1496, file: !1443, line: 122, baseType: !2580, size: 64, offset: 320)
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2581, size: 64)
!2581 = !DISubroutineType(types: !2582)
!2582 = !{null, !1466, !1016, !1017}
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1442, file: !1443, line: 70, baseType: !2584, size: 64, offset: 384)
!2584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2585, size: 64)
!2585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !2586, line: 190, size: 1152, elements: !2587)
!2586 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!2587 = !{!2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2718, !2719, !2720, !2721, !2722, !2725}
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2585, file: !2586, line: 191, baseType: !49, size: 32)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2585, file: !2586, line: 192, baseType: !49, size: 32, offset: 32)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2585, file: !2586, line: 202, baseType: !2584, size: 64, offset: 64)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2585, file: !2586, line: 203, baseType: !16, size: 64, offset: 128)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2585, file: !2586, line: 205, baseType: !355, size: 192, align: 64, offset: 192)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2585, file: !2586, line: 207, baseType: !2491, size: 64, offset: 384)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2585, file: !2586, line: 208, baseType: !7, size: 32, offset: 448)
!2595 = !DIDerivedType(tag: DW_TAG_member, scope: !2585, file: !2586, line: 209, baseType: !2596, size: 256, offset: 512)
!2596 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2585, file: !2586, line: 209, size: 256, elements: !2597)
!2597 = !{!2598, !2607, !2611}
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2596, file: !2586, line: 210, baseType: !2599, size: 256)
!2599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !2586, line: 153, size: 256, elements: !2600)
!2600 = !{!2601, !2602, !2603, !2606}
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !2599, file: !2586, line: 154, baseType: !39, size: 64)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2599, file: !2586, line: 156, baseType: !498, size: 64, offset: 64)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2599, file: !2586, line: 162, baseType: !2604, size: 64, offset: 128)
!2604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2605, size: 64)
!2605 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !2586, line: 162, flags: DIFlagFwdDecl)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !2599, file: !2586, line: 167, baseType: !39, size: 64, offset: 192)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2596, file: !2586, line: 211, baseType: !2608, size: 64)
!2608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !2586, line: 170, size: 64, elements: !2609)
!2609 = !{!2610}
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2608, file: !2586, line: 171, baseType: !2584, size: 64)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2596, file: !2586, line: 212, baseType: !2612, size: 256)
!2612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !2586, line: 174, size: 256, elements: !2613)
!2613 = !{!2614, !2713, !2716, !2717}
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2612, file: !2586, line: 175, baseType: !2615, size: 64)
!2615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2616, size: 64)
!2616 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2617)
!2617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !2586, line: 271, size: 768, elements: !2618)
!2618 = !{!2619, !2677, !2681, !2682, !2683, !2684, !2685, !2689, !2690, !2691, !2692, !2709}
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2617, file: !2586, line: 276, baseType: !2620, size: 64)
!2620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2621, size: 64)
!2621 = !DISubroutineType(types: !2622)
!2622 = !{!22, !2623}
!2623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2624, size: 64)
!2624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !2586, line: 251, size: 1216, elements: !2625)
!2625 = !{!2626, !2627, !2628, !2667, !2668, !2669, !2670, !2671, !2672, !2673, !2674, !2675, !2676}
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2624, file: !2586, line: 253, baseType: !2584, size: 64)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2624, file: !2586, line: 254, baseType: !640, size: 64, offset: 64)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2624, file: !2586, line: 255, baseType: !2629, size: 64, offset: 128)
!2629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2630, size: 64)
!2630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !2631, line: 17, size: 960, elements: !2632)
!2631 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!2632 = !{!2633, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2662, !2663, !2666}
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2630, file: !2631, line: 18, baseType: !913, size: 64)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2630, file: !2631, line: 19, baseType: !35, size: 64, offset: 64)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !2630, file: !2631, line: 20, baseType: !35, size: 64, offset: 128)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2630, file: !2631, line: 21, baseType: !35, size: 64, offset: 192)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !2630, file: !2631, line: 22, baseType: !35, size: 64, offset: 256)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2630, file: !2631, line: 23, baseType: !41, size: 64, offset: 320)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !2630, file: !2631, line: 24, baseType: !41, size: 64, offset: 384)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2630, file: !2631, line: 25, baseType: !668, size: 256, offset: 448)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !2630, file: !2631, line: 26, baseType: !2642, size: 64, offset: 704)
!2642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2643, size: 64)
!2643 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2644)
!2644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !2631, line: 32, size: 256, elements: !2645)
!2645 = !{!2646, !2650, !2654, !2658}
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2644, file: !2631, line: 33, baseType: !2647, size: 64)
!2647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2648, size: 64)
!2648 = !DISubroutineType(types: !2649)
!2649 = !{!20, !2629, !40}
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2644, file: !2631, line: 34, baseType: !2651, size: 64, offset: 64)
!2651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2652, size: 64)
!2652 = !DISubroutineType(types: !2653)
!2653 = !{null, !2629, !20}
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2644, file: !2631, line: 35, baseType: !2655, size: 64, offset: 128)
!2655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2656, size: 64)
!2656 = !DISubroutineType(types: !2657)
!2657 = !{!20, !2629, !20, !40}
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2644, file: !2631, line: 36, baseType: !2659, size: 64, offset: 192)
!2659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2660, size: 64)
!2660 = !DISubroutineType(types: !2661)
!2661 = !{!22, !2629, !20}
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !2630, file: !2631, line: 27, baseType: !22, size: 32, offset: 768)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2630, file: !2631, line: 28, baseType: !2664, size: 64, offset: 832)
!2664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2665, size: 64)
!2665 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !641)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2630, file: !2631, line: 29, baseType: !20, size: 64, offset: 896)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2624, file: !2586, line: 256, baseType: !20, size: 64, offset: 192)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2624, file: !2586, line: 259, baseType: !668, size: 256, offset: 256)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2624, file: !2586, line: 260, baseType: !668, size: 256, offset: 512)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2624, file: !2586, line: 261, baseType: !22, size: 32, offset: 768)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2624, file: !2586, line: 262, baseType: !97, size: 128, offset: 832)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2624, file: !2586, line: 263, baseType: !913, size: 64, offset: 960)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2624, file: !2586, line: 265, baseType: !35, size: 64, offset: 1024)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2624, file: !2586, line: 266, baseType: !825, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2624, file: !2586, line: 267, baseType: !825, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2624, file: !2586, line: 268, baseType: !1720, size: 64, offset: 1152)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2617, file: !2586, line: 277, baseType: !2678, size: 64, offset: 64)
!2678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2679, size: 64)
!2679 = !DISubroutineType(types: !2680)
!2680 = !{null, !2623}
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2617, file: !2586, line: 290, baseType: !2659, size: 64, offset: 128)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2617, file: !2586, line: 292, baseType: !2647, size: 64, offset: 192)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2617, file: !2586, line: 293, baseType: !2655, size: 64, offset: 256)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2617, file: !2586, line: 294, baseType: !2651, size: 64, offset: 320)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2617, file: !2586, line: 296, baseType: !2686, size: 64, offset: 384)
!2686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2687, size: 64)
!2687 = !DISubroutineType(types: !2688)
!2688 = !{!1347, !2623, !913, !35, !41}
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2617, file: !2586, line: 306, baseType: !35, size: 64, offset: 448)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2617, file: !2586, line: 313, baseType: !825, size: 8, offset: 512)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2617, file: !2586, line: 314, baseType: !2686, size: 64, offset: 576)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2617, file: !2586, line: 317, baseType: !2693, size: 64, offset: 640)
!2693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2694, size: 64)
!2694 = !DISubroutineType(types: !2695)
!2695 = !{!2696, !2623, !2698}
!2696 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2697, line: 59, baseType: !7)
!2697 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2699, size: 64)
!2699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !2700, line: 37, size: 128, elements: !2701)
!2700 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!2701 = !{!2702, !2708}
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !2699, file: !2700, line: 38, baseType: !2703, size: 64)
!2703 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !2700, line: 31, baseType: !2704)
!2704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2705, size: 64)
!2705 = !DISubroutineType(types: !2706)
!2706 = !{null, !640, !2707, !2698}
!2707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !2699, file: !2700, line: 39, baseType: !2696, size: 32, offset: 64)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2617, file: !2586, line: 320, baseType: !2710, size: 64, offset: 704)
!2710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2711, size: 64)
!2711 = !DISubroutineType(types: !2712)
!2712 = !{!22, !2623, !1675}
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2612, file: !2586, line: 176, baseType: !2714, size: 64, offset: 64)
!2714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2715, size: 64)
!2715 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !2586, line: 35, flags: DIFlagFwdDecl)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2612, file: !2586, line: 177, baseType: !41, size: 64, offset: 128)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2612, file: !2586, line: 178, baseType: !2584, size: 64, offset: 192)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2585, file: !2586, line: 215, baseType: !20, size: 64, offset: 768)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2585, file: !2586, line: 221, baseType: !363, size: 64, offset: 832)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2585, file: !2586, line: 223, baseType: !26, size: 16, offset: 896)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2585, file: !2586, line: 224, baseType: !24, size: 16, offset: 912)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2585, file: !2586, line: 225, baseType: !2723, size: 64, offset: 960)
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2724, size: 64)
!2724 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !2586, line: 36, flags: DIFlagFwdDecl)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2585, file: !2586, line: 227, baseType: !648, size: 128, align: 64, offset: 1024)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1442, file: !1443, line: 71, baseType: !2727, size: 32, offset: 448)
!2727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2728, line: 19, size: 32, elements: !2729)
!2728 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2729 = !{!2730}
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2727, file: !2728, line: 20, baseType: !311, size: 32)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1442, file: !1443, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1442, file: !1443, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1442, file: !1443, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1442, file: !1443, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1442, file: !1443, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1439, file: !116, line: 47, baseType: !1429, size: 64, offset: 512)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1439, file: !116, line: 48, baseType: !1448, size: 64, offset: 576)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1439, file: !116, line: 49, baseType: !2739, size: 64, offset: 640)
!2739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2740, size: 64)
!2740 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !116, line: 49, flags: DIFlagFwdDecl)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1439, file: !116, line: 50, baseType: !990, size: 64, offset: 704)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1430, file: !116, line: 418, baseType: !2743, size: 64, offset: 1408)
!2743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2744, size: 64)
!2744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !116, line: 53, size: 448, elements: !2745)
!2745 = !{!2746, !2747, !2752, !2756, !2760, !2764}
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2744, file: !116, line: 54, baseType: !1513, size: 128)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2744, file: !116, line: 55, baseType: !2748, size: 64, offset: 128)
!2748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2749, size: 64)
!2749 = !DISubroutineType(types: !2750)
!2750 = !{!1347, !2743, !2751, !913}
!2751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2744, file: !116, line: 57, baseType: !2753, size: 64, offset: 192)
!2753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2754, size: 64)
!2754 = !DISubroutineType(types: !2755)
!2755 = !{!1347, !2743, !2751, !16, !35}
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2744, file: !116, line: 59, baseType: !2757, size: 64, offset: 256)
!2757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2758, size: 64)
!2758 = !DISubroutineType(types: !2759)
!2759 = !{null, !1429, !16}
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !2744, file: !116, line: 60, baseType: !2761, size: 64, offset: 320)
!2761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2762, size: 64)
!2762 = !DISubroutineType(types: !2763)
!2763 = !{!22, !1429}
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2744, file: !116, line: 61, baseType: !2765, size: 64, offset: 384)
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2766 = !DISubroutineType(types: !2767)
!2767 = !{null, !1429}
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1430, file: !116, line: 419, baseType: !16, size: 64, offset: 1472)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1430, file: !116, line: 420, baseType: !16, size: 64, offset: 1536)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1430, file: !116, line: 421, baseType: !1448, size: 64, offset: 1600)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1430, file: !116, line: 424, baseType: !2772, size: 64, offset: 1664)
!2772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2773, size: 64)
!2773 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2774)
!2774 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !116, line: 424, flags: DIFlagFwdDecl)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1430, file: !116, line: 425, baseType: !2776, size: 64, offset: 1728)
!2776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2777, size: 64)
!2777 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !837)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1430, file: !116, line: 426, baseType: !7, size: 32, offset: 1792)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1430, file: !116, line: 435, baseType: !668, size: 256, offset: 1856)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1430, file: !116, line: 437, baseType: !2781, size: 64, offset: 2112)
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2782, size: 64)
!2782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2783, line: 69, size: 320, elements: !2784)
!2783 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2784 = !{!2785, !2786, !2787, !2804, !2806, !2809, !2810}
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2782, file: !2783, line: 70, baseType: !16, size: 64)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2782, file: !2783, line: 71, baseType: !1429, size: 64, offset: 64)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2782, file: !2783, line: 72, baseType: !2788, size: 64, offset: 128)
!2788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2789, size: 64)
!2789 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2790)
!2790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2783, line: 47, size: 256, elements: !2791)
!2791 = !{!2792, !2793, !2799, !2803}
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2790, file: !2783, line: 49, baseType: !7, size: 32)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2790, file: !2783, line: 51, baseType: !2794, size: 64, offset: 64)
!2794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2795, size: 64)
!2795 = !DISubroutineType(types: !2796)
!2796 = !{!22, !16, !2797}
!2797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2798, size: 64)
!2798 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2782)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2790, file: !2783, line: 53, baseType: !2800, size: 64, offset: 128)
!2800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2801, size: 64)
!2801 = !DISubroutineType(types: !2802)
!2802 = !{!22, !913, !2797}
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2790, file: !2783, line: 55, baseType: !1226, size: 64, offset: 192)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2782, file: !2783, line: 73, baseType: !2805, size: 16, offset: 192)
!2805 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2782, file: !2783, line: 74, baseType: !2807, size: 8, offset: 208)
!2807 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !84, line: 16, baseType: !2808)
!2808 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !86, line: 20, baseType: !2072)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2782, file: !2783, line: 75, baseType: !83, size: 8, offset: 216)
!2810 = !DIDerivedType(tag: DW_TAG_member, scope: !2782, file: !2783, line: 76, baseType: !2811, size: 64, offset: 256)
!2811 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2782, file: !2783, line: 76, size: 64, elements: !2812)
!2812 = !{!2813, !2814, !2821}
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2811, file: !2783, line: 77, baseType: !20, size: 64)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2811, file: !2783, line: 78, baseType: !2815, size: 64)
!2815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2816, size: 64)
!2816 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2817)
!2817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2783, line: 86, size: 128, elements: !2818)
!2818 = !{!2819, !2820}
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2817, file: !2783, line: 87, baseType: !7, size: 32)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2817, file: !2783, line: 88, baseType: !913, size: 64, offset: 64)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2811, file: !2783, line: 79, baseType: !2822, size: 64)
!2822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2823, size: 64)
!2823 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2824)
!2824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2783, line: 92, size: 256, elements: !2825)
!2825 = !{!2826, !2827, !2828, !2829, !2830}
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2824, file: !2783, line: 94, baseType: !7, size: 32)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2824, file: !2783, line: 95, baseType: !7, size: 32, offset: 32)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2824, file: !2783, line: 96, baseType: !2095, size: 64, offset: 64)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2824, file: !2783, line: 97, baseType: !2788, size: 64, offset: 128)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2824, file: !2783, line: 98, baseType: !20, size: 64, offset: 192)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1430, file: !116, line: 438, baseType: !7, size: 32, offset: 2176)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1430, file: !116, line: 441, baseType: !7, size: 32, offset: 2208)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1430, file: !116, line: 442, baseType: !2772, size: 64, offset: 2240)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1430, file: !116, line: 443, baseType: !2776, size: 64, offset: 2304)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1430, file: !116, line: 444, baseType: !825, size: 8, offset: 2368)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1430, file: !116, line: 451, baseType: !825, size: 8, offset: 2376)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1430, file: !116, line: 454, baseType: !7, size: 32, offset: 2400)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1430, file: !116, line: 455, baseType: !2839, size: 64, offset: 2432)
!2839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2840, size: 64)
!2840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2841, line: 23, size: 96, elements: !2842)
!2841 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2842 = !{!2843, !2844, !2845}
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2840, file: !2841, line: 24, baseType: !22, size: 32)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2840, file: !2841, line: 24, baseType: !22, size: 32, offset: 32)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2840, file: !2841, line: 24, baseType: !22, size: 32, offset: 64)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1430, file: !116, line: 458, baseType: !2847, size: 64, offset: 2496)
!2847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2848, size: 64)
!2848 = !DISubroutineType(types: !2849)
!2849 = !{!22}
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1430, file: !116, line: 460, baseType: !2851, size: 4032, align: 512, offset: 2560)
!2851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2852, size: 4032, elements: !2868)
!2852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !116, line: 362, size: 576, elements: !2853)
!2853 = !{!2854, !2855, !2856}
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2852, file: !116, line: 363, baseType: !20, size: 64)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2852, file: !116, line: 364, baseType: !7, size: 32, offset: 64)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2852, file: !116, line: 367, baseType: !2857, size: 448, offset: 128)
!2857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !116, line: 319, size: 448, elements: !2858)
!2858 = !{!2859, !2860}
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2857, file: !116, line: 320, baseType: !1429, size: 64)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2857, file: !116, line: 321, baseType: !2861, size: 384, offset: 64)
!2861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2862, line: 40, size: 384, elements: !2863)
!2862 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2863 = !{!2864}
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2861, file: !2862, line: 41, baseType: !2865, size: 384, align: 64)
!2865 = !DICompositeType(tag: DW_TAG_array_type, baseType: !355, size: 384, align: 64, elements: !2866)
!2866 = !{!2867}
!2867 = !DISubrange(count: 2)
!2868 = !{!2869}
!2869 = !DISubrange(count: 7)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1430, file: !116, line: 463, baseType: !2871, size: 192, offset: 6592)
!2871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2872, line: 8, size: 192, elements: !2873)
!2872 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2873 = !{!2874, !2875, !2877}
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2871, file: !2872, line: 10, baseType: !7, size: 32)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2871, file: !2872, line: 11, baseType: !2876, size: 64, offset: 64)
!2876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2871, file: !2872, line: 12, baseType: !2878, size: 64, offset: 128)
!2878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2879, size: 64)
!2879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2880, line: 59, size: 48, elements: !2881)
!2880 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2881 = !{!2882, !2885, !2886, !2887, !2888, !2889}
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2879, file: !2880, line: 60, baseType: !2883, size: 16)
!2883 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !84, line: 18, baseType: !2884)
!2884 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !86, line: 23, baseType: !873)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2879, file: !2880, line: 61, baseType: !2883, size: 16, offset: 16)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2879, file: !2880, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2879, file: !2880, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2879, file: !2880, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2879, file: !2880, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1430, file: !116, line: 465, baseType: !39, size: 64, offset: 6784)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1430, file: !116, line: 469, baseType: !7, size: 32, offset: 6848)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1430, file: !116, line: 470, baseType: !97, size: 128, offset: 6912)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1430, file: !116, line: 471, baseType: !2894, size: 64, offset: 7040)
!2894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2895, size: 64)
!2895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2896, line: 33, size: 96, elements: !2897)
!2896 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2897 = !{!2898, !2899, !2900, !2901}
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2895, file: !2896, line: 37, baseType: !22, size: 32)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2895, file: !2896, line: 43, baseType: !22, size: 32, offset: 32)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2895, file: !2896, line: 45, baseType: !26, size: 16, offset: 64)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2895, file: !2896, line: 47, baseType: !26, size: 16, offset: 80)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1430, file: !116, line: 476, baseType: !2903, size: 64, offset: 7104)
!2903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2904, size: 64)
!2904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !116, line: 378, size: 256, elements: !2905)
!2905 = !{!2906, !2922, !2923, !2924}
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2904, file: !116, line: 379, baseType: !2907, size: 64)
!2907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2908, size: 64)
!2908 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2909, line: 204, baseType: !2910)
!2909 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2909, line: 197, size: 192, elements: !2911)
!2911 = !{!2912, !2914, !2915, !2916, !2918, !2920}
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2910, file: !2909, line: 198, baseType: !2913, size: 32)
!2913 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2909, line: 21, baseType: !306)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2910, file: !2909, line: 199, baseType: !87, size: 8, offset: 32)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2910, file: !2909, line: 200, baseType: !87, size: 8, offset: 40)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2910, file: !2909, line: 201, baseType: !2917, size: 16, offset: 48)
!2917 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2909, line: 17, baseType: !94)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2910, file: !2909, line: 202, baseType: !2919, size: 64, offset: 64)
!2919 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2909, line: 16, baseType: !364)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2910, file: !2909, line: 203, baseType: !2921, size: 64, offset: 128)
!2921 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2909, line: 22, baseType: !364)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2904, file: !116, line: 380, baseType: !7, size: 32, offset: 64)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2904, file: !116, line: 381, baseType: !913, size: 64, offset: 128)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2904, file: !116, line: 382, baseType: !913, size: 64, offset: 192)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1430, file: !116, line: 477, baseType: !2904, size: 256, offset: 7168)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1430, file: !116, line: 480, baseType: !2927, size: 64, offset: 7424)
!2927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2928, size: 64)
!2928 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !116, line: 480, flags: DIFlagFwdDecl)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1430, file: !116, line: 483, baseType: !2930, size: 64, offset: 7488)
!2930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2931, size: 64)
!2931 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !116, line: 483, flags: DIFlagFwdDecl)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1430, file: !116, line: 488, baseType: !913, size: 64, offset: 7552)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1430, file: !116, line: 492, baseType: !20, size: 64, offset: 7616)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1430, file: !116, line: 493, baseType: !7, size: 32, offset: 7680)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1430, file: !116, line: 495, baseType: !20, size: 64, offset: 7744)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1430, file: !116, line: 496, baseType: !7, size: 32, offset: 7808)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1430, file: !116, line: 499, baseType: !7, size: 32, offset: 7840)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1430, file: !116, line: 500, baseType: !2939, size: 64, offset: 7872)
!2939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2940, size: 64)
!2940 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2941, line: 45, baseType: !2942)
!2941 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2942 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1430, file: !116, line: 503, baseType: !7, size: 32, offset: 7936)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1430, file: !116, line: 504, baseType: !2945, size: 64, offset: 8000)
!2945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2946, size: 64)
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2947, size: 64)
!2947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2948, line: 96, size: 192, elements: !2949)
!2948 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2949 = !{!2950, !2951, !2993, !2996}
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2947, file: !2948, line: 97, baseType: !7, size: 32)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2947, file: !2948, line: 98, baseType: !2952, size: 64, offset: 64)
!2952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2953, size: 64)
!2953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2948, line: 24, size: 3072, elements: !2954)
!2954 = !{!2955, !2957, !2958, !2959, !2960, !2973, !2974, !2975, !2976, !2977, !2978, !2979, !2990, !2991, !2992}
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2953, file: !2948, line: 26, baseType: !2956, size: 128)
!2956 = !DICompositeType(tag: DW_TAG_array_type, baseType: !661, size: 128, elements: !2866)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2953, file: !2948, line: 27, baseType: !2956, size: 128, offset: 128)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2953, file: !2948, line: 28, baseType: !22, size: 32, offset: 256)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2953, file: !2948, line: 31, baseType: !59, size: 32, align: 512, offset: 512)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2953, file: !2948, line: 32, baseType: !2961, size: 960, offset: 576)
!2961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2962, line: 206, size: 960, elements: !2963)
!2962 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2963 = !{!2964, !2965, !2968, !2970, !2971, !2972}
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2961, file: !2962, line: 207, baseType: !651, size: 64)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2961, file: !2962, line: 208, baseType: !2966, size: 256, offset: 64)
!2966 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2967, size: 256, elements: !725)
!2967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2961, file: !2962, line: 209, baseType: !2969, size: 256, offset: 320)
!2969 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 256, elements: !725)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2961, file: !2962, line: 213, baseType: !1050, size: 64, offset: 576)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2961, file: !2962, line: 215, baseType: !1052, size: 256, offset: 640)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2961, file: !2962, line: 216, baseType: !83, size: 8, offset: 896)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2953, file: !2948, line: 33, baseType: !39, size: 64, offset: 1536)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2953, file: !2948, line: 34, baseType: !39, size: 64, offset: 1600)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2953, file: !2948, line: 35, baseType: !825, size: 8, offset: 1664)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2953, file: !2948, line: 36, baseType: !2320, size: 320, offset: 1728)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2953, file: !2948, line: 37, baseType: !952, size: 256, offset: 2048)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2953, file: !2948, line: 38, baseType: !648, size: 128, align: 64, offset: 2304)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2953, file: !2948, line: 39, baseType: !2980, size: 64, offset: 2432)
!2980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2981, size: 64)
!2981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2948, line: 49, size: 768, elements: !2982)
!2982 = !{!2983, !2984, !2985, !2986, !2987, !2988, !2989}
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2981, file: !2948, line: 50, baseType: !59, size: 32)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2981, file: !2948, line: 51, baseType: !2969, size: 256, offset: 64)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2981, file: !2948, line: 53, baseType: !2969, size: 256, offset: 320)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2981, file: !2948, line: 54, baseType: !39, size: 64, offset: 576)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2981, file: !2948, line: 55, baseType: !2980, size: 64, offset: 640)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2981, file: !2948, line: 56, baseType: !22, size: 32, offset: 704)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2981, file: !2948, line: 57, baseType: !22, size: 32, offset: 736)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2953, file: !2948, line: 40, baseType: !39, size: 64, offset: 2496)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2953, file: !2948, line: 42, baseType: !22, size: 32, offset: 2560)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2953, file: !2948, line: 43, baseType: !2946, size: 64, offset: 2624)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2947, file: !2948, line: 99, baseType: !2994, offset: 128)
!2994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2995, line: 211, elements: !633)
!2995 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2947, file: !2948, line: 100, baseType: !2997, size: 64, offset: 128)
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2998, size: 64)
!2998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2948, line: 63, size: 3008, elements: !2999)
!2999 = !{!3000, !3001, !3003, !3004, !3005, !3006, !3007, !3008, !3009, !3010, !3011, !3012, !3013, !3014, !3015, !3016, !3017, !3018, !3019, !3020, !3021, !3022, !3031}
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2998, file: !2948, line: 64, baseType: !2980, size: 64)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2998, file: !2948, line: 65, baseType: !3002, size: 192, offset: 64)
!3002 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2980, size: 192, elements: !704)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2998, file: !2948, line: 67, baseType: !22, size: 32, offset: 256)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2998, file: !2948, line: 68, baseType: !668, size: 256, offset: 320)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2998, file: !2948, line: 69, baseType: !59, size: 32, offset: 576)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2998, file: !2948, line: 70, baseType: !668, size: 256, offset: 640)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2998, file: !2948, line: 71, baseType: !39, size: 64, offset: 896)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2998, file: !2948, line: 72, baseType: !39, size: 64, offset: 960)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2998, file: !2948, line: 73, baseType: !39, size: 64, offset: 1024)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2998, file: !2948, line: 74, baseType: !39, size: 64, offset: 1088)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2998, file: !2948, line: 75, baseType: !39, size: 64, offset: 1152)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2998, file: !2948, line: 76, baseType: !39, size: 64, offset: 1216)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2998, file: !2948, line: 77, baseType: !39, size: 64, offset: 1280)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2998, file: !2948, line: 78, baseType: !39, size: 64, offset: 1344)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2998, file: !2948, line: 79, baseType: !825, size: 8, offset: 1408)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2998, file: !2948, line: 80, baseType: !39, size: 64, offset: 1472)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2998, file: !2948, line: 81, baseType: !668, size: 256, offset: 1536)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2998, file: !2948, line: 82, baseType: !991, size: 256, offset: 1792)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2998, file: !2948, line: 84, baseType: !49, size: 32, offset: 2048)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2998, file: !2948, line: 87, baseType: !39, size: 64, offset: 2112)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2998, file: !2948, line: 88, baseType: !39, size: 64, offset: 2176)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2998, file: !2948, line: 89, baseType: !3023, size: 704, offset: 2240)
!3023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !953, line: 111, size: 704, elements: !3024)
!3024 = !{!3025, !3026, !3027, !3030}
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3023, file: !953, line: 112, baseType: !952, size: 256)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3023, file: !953, line: 113, baseType: !2320, size: 320, offset: 256)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !3023, file: !953, line: 116, baseType: !3028, size: 64, offset: 576)
!3028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3029, size: 64)
!3029 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !953, line: 18, flags: DIFlagFwdDecl)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3023, file: !953, line: 117, baseType: !22, size: 32, offset: 640)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2998, file: !2948, line: 90, baseType: !2946, size: 64, offset: 2944)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1430, file: !116, line: 515, baseType: !3033, size: 64, offset: 8064)
!3033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3034, size: 64)
!3034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !3035, line: 117, size: 128, elements: !3036)
!3035 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!3036 = !{!3037, !3038, !3039}
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !3034, file: !3035, line: 118, baseType: !837, size: 32)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !3034, file: !3035, line: 119, baseType: !837, size: 32, offset: 32)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3034, file: !3035, line: 120, baseType: !1050, size: 64, offset: 64)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1430, file: !116, line: 516, baseType: !7, size: 32, offset: 8128)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1430, file: !116, line: 519, baseType: !7, size: 32, offset: 8160)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1430, file: !116, line: 520, baseType: !3043, size: 64, offset: 8192)
!3043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1430, file: !116, line: 523, baseType: !3045, size: 64, offset: 8256)
!3045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3046, size: 64)
!3046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3047, size: 64)
!3047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !218, line: 372, size: 1024, elements: !3048)
!3048 = !{!3049, !3050, !3090, !3150, !3231, !3232, !3235, !3240, !3241, !3242, !3243, !3245, !3248}
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3047, file: !218, line: 373, baseType: !97, size: 128)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3047, file: !218, line: 374, baseType: !3051, size: 64, offset: 128)
!3051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3052, size: 64)
!3052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_class", file: !218, line: 291, size: 576, elements: !3053)
!3053 = !{!3054, !3055, !3056, !3057, !3061, !3084, !3088, !3089}
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !3052, file: !218, line: 292, baseType: !16, size: 64)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3052, file: !218, line: 293, baseType: !20, size: 64, offset: 64)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "perf_probe", scope: !3052, file: !218, line: 295, baseType: !20, size: 64, offset: 128)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !3052, file: !218, line: 297, baseType: !3058, size: 64, offset: 192)
!3058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3059, size: 64)
!3059 = !DISubroutineType(types: !3060)
!3060 = !{!22, !3046, !217, !20}
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "fields_array", scope: !3052, file: !218, line: 299, baseType: !3062, size: 64, offset: 256)
!3062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3063, size: 64)
!3063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_fields", file: !218, line: 275, size: 320, elements: !3064)
!3064 = !{!3065, !3066}
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3063, file: !218, line: 276, baseType: !16, size: 64)
!3066 = !DIDerivedType(tag: DW_TAG_member, scope: !3063, file: !218, line: 277, baseType: !3067, size: 256, offset: 64)
!3067 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3063, file: !218, line: 277, size: 256, elements: !3068)
!3068 = !{!3069, !3080}
!3069 = !DIDerivedType(tag: DW_TAG_member, scope: !3067, file: !218, line: 278, baseType: !3070, size: 256)
!3070 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3067, file: !218, line: 278, size: 256, elements: !3071)
!3071 = !{!3072, !3073, !3074, !3075, !3077, !3078, !3079}
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3070, file: !218, line: 279, baseType: !16, size: 64)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3070, file: !218, line: 280, baseType: !2942, size: 32, offset: 64)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !3070, file: !218, line: 281, baseType: !2942, size: 32, offset: 96)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "is_signed", scope: !3070, file: !218, line: 282, baseType: !3076, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!3076 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "needs_test", scope: !3070, file: !218, line: 283, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "filter_type", scope: !3070, file: !218, line: 284, baseType: !2942, size: 32, offset: 160)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3070, file: !218, line: 285, baseType: !2942, size: 32, offset: 192)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "define_fields", scope: !3067, file: !218, line: 287, baseType: !3081, size: 64)
!3081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3082, size: 64)
!3082 = !DISubroutineType(types: !3083)
!3083 = !{!22, !3046}
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "get_fields", scope: !3052, file: !218, line: 300, baseType: !3085, size: 64, offset: 320)
!3085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3086, size: 64)
!3086 = !DISubroutineType(types: !3087)
!3087 = !{!100, !3046}
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "fields", scope: !3052, file: !218, line: 301, baseType: !97, size: 128, offset: 384)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "raw_init", scope: !3052, file: !218, line: 302, baseType: !3081, size: 64, offset: 512)
!3090 = !DIDerivedType(tag: DW_TAG_member, scope: !3047, file: !218, line: 375, baseType: !3091, size: 64, offset: 192)
!3091 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3047, file: !218, line: 375, size: 64, elements: !3092)
!3092 = !{!3093, !3094}
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3091, file: !218, line: 376, baseType: !16, size: 64)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "tp", scope: !3091, file: !218, line: 378, baseType: !3095, size: 64)
!3095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3096, size: 64)
!3096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint", file: !2941, line: 32, size: 640, elements: !3097)
!3097 = !{!3098, !3099, !3111, !3135, !3136, !3137, !3138, !3139, !3143}
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3096, file: !2941, line: 33, baseType: !16, size: 64)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3096, file: !2941, line: 34, baseType: !3100, size: 128, offset: 64)
!3100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !3035, line: 85, size: 128, elements: !3101)
!3101 = !{!3102, !3103}
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !3100, file: !3035, line: 86, baseType: !49, size: 32)
!3103 = !DIDerivedType(tag: DW_TAG_member, scope: !3100, file: !3035, line: 101, baseType: !3104, size: 64, offset: 64)
!3104 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3100, file: !3035, line: 101, size: 64, elements: !3105)
!3105 = !{!3106, !3107, !3108}
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3104, file: !3035, line: 102, baseType: !39, size: 64)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !3104, file: !3035, line: 103, baseType: !3033, size: 64)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3104, file: !3035, line: 104, baseType: !3109, size: 64)
!3109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3110, size: 64)
!3110 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !3035, line: 104, flags: DIFlagFwdDecl)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_key", scope: !3096, file: !2941, line: 35, baseType: !3112, size: 64, offset: 192)
!3112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3113, size: 64)
!3113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_key", file: !3114, line: 61, size: 128, elements: !3115)
!3114 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!3115 = !{!3116, !3117}
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3113, file: !3114, line: 62, baseType: !20, size: 64)
!3117 = !DIDerivedType(tag: DW_TAG_member, scope: !3113, file: !3114, line: 63, baseType: !3118, size: 64, offset: 64)
!3118 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3113, file: !3114, line: 63, size: 64, elements: !3119)
!3119 = !{!3120, !3121, !3134}
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3118, file: !3114, line: 65, baseType: !39, size: 64)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "mods", scope: !3118, file: !3114, line: 66, baseType: !3122, size: 64)
!3122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3123, size: 64)
!3123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_mod", file: !3124, line: 169, size: 192, elements: !3125)
!3124 = !DIFile(filename: "./include/linux/static_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4f20b8b91766caa416ca409c84dcc807")
!3125 = !{!3126, !3127, !3128}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3123, file: !3124, line: 170, baseType: !3122, size: 64)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3123, file: !3124, line: 171, baseType: !1429, size: 64, offset: 64)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "sites", scope: !3123, file: !3124, line: 172, baseType: !3129, size: 64, offset: 128)
!3129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3130, size: 64)
!3130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !3114, line: 32, size: 64, elements: !3131)
!3131 = !{!3132, !3133}
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3130, file: !3114, line: 33, baseType: !837, size: 32)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3130, file: !3114, line: 34, baseType: !837, size: 32, offset: 32)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "sites", scope: !3118, file: !3114, line: 67, baseType: !3129, size: 64)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_tramp", scope: !3096, file: !2941, line: 36, baseType: !20, size: 64, offset: 256)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "iterator", scope: !3096, file: !2941, line: 37, baseType: !20, size: 64, offset: 320)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "probestub", scope: !3096, file: !2941, line: 38, baseType: !20, size: 64, offset: 384)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "regfunc", scope: !3096, file: !2941, line: 39, baseType: !2847, size: 64, offset: 448)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "unregfunc", scope: !3096, file: !2941, line: 40, baseType: !3140, size: 64, offset: 512)
!3140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3141, size: 64)
!3141 = !DISubroutineType(types: !3142)
!3142 = !{null}
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !3096, file: !2941, line: 41, baseType: !3144, size: 64, offset: 576)
!3144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3145, size: 64)
!3145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint_func", file: !2941, line: 26, size: 192, elements: !3146)
!3146 = !{!3147, !3148, !3149}
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3145, file: !2941, line: 27, baseType: !20, size: 64)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3145, file: !2941, line: 28, baseType: !20, size: 64, offset: 64)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3145, file: !2941, line: 29, baseType: !22, size: 32, offset: 128)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3047, file: !218, line: 380, baseType: !3151, size: 256, offset: 256)
!3151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event", file: !218, line: 148, size: 256, elements: !3152)
!3152 = !{!3153, !3154, !3155}
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3151, file: !218, line: 149, baseType: !720, size: 128)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3151, file: !218, line: 150, baseType: !22, size: 32, offset: 128)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !3151, file: !218, line: 151, baseType: !3156, size: 64, offset: 192)
!3156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3157, size: 64)
!3157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_functions", file: !218, line: 141, size: 256, elements: !3158)
!3158 = !{!3159, !3228, !3229, !3230}
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !3157, file: !218, line: 142, baseType: !3160, size: 64)
!3160 = !DIDerivedType(tag: DW_TAG_typedef, name: "trace_print_func", file: !218, line: 138, baseType: !3161)
!3161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3162, size: 64)
!3162 = !DISubroutineType(types: !3163)
!3163 = !{!228, !3164, !22, !3227}
!3164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3165, size: 64)
!3165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_iterator", file: !218, line: 93, size: 67776, elements: !3166)
!3166 = !{!3167, !3170, !3173, !3176, !3177, !3178, !3179, !3184, !3185, !3186, !3187, !3188, !3189, !3190, !3207, !3210, !3211, !3212, !3220, !3221, !3222, !3223, !3224, !3225, !3226}
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "tr", scope: !3165, file: !218, line: 94, baseType: !3168, size: 64)
!3168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3169, size: 64)
!3169 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_array", file: !218, line: 13, flags: DIFlagFwdDecl)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !3165, file: !218, line: 95, baseType: !3171, size: 64, offset: 64)
!3171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3172, size: 64)
!3172 = !DICompositeType(tag: DW_TAG_structure_type, name: "tracer", file: !218, line: 15, flags: DIFlagFwdDecl)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "array_buffer", scope: !3165, file: !218, line: 96, baseType: !3174, size: 64, offset: 128)
!3174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3175, size: 64)
!3175 = !DICompositeType(tag: DW_TAG_structure_type, name: "array_buffer", file: !218, line: 14, flags: DIFlagFwdDecl)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3165, file: !218, line: 97, baseType: !20, size: 64, offset: 192)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_file", scope: !3165, file: !218, line: 98, baseType: !22, size: 32, offset: 256)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3165, file: !218, line: 99, baseType: !668, size: 256, offset: 320)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_iter", scope: !3165, file: !218, line: 100, baseType: !3180, size: 64, offset: 576)
!3180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3181, size: 64)
!3181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3182, size: 64)
!3182 = !DICompositeType(tag: DW_TAG_structure_type, name: "ring_buffer_iter", file: !3183, line: 10, flags: DIFlagFwdDecl)
!3183 = !DIFile(filename: "./include/linux/ring_buffer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6b33fcbb5a7a42a82ce834d9b0e18658")
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "iter_flags", scope: !3165, file: !218, line: 101, baseType: !39, size: 64, offset: 640)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !3165, file: !218, line: 102, baseType: !20, size: 64, offset: 704)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "temp_size", scope: !3165, file: !218, line: 103, baseType: !7, size: 32, offset: 768)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !3165, file: !218, line: 104, baseType: !913, size: 64, offset: 832)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "fmt_size", scope: !3165, file: !218, line: 105, baseType: !7, size: 32, offset: 896)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "wait_index", scope: !3165, file: !218, line: 106, baseType: !1050, size: 64, offset: 960)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_seq", scope: !3165, file: !218, line: 109, baseType: !3191, size: 33088, offset: 1024)
!3191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_seq", file: !3192, line: 14, size: 33088, elements: !3193)
!3192 = !DIFile(filename: "./include/linux/trace_seq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cf71e515adc12762081b96266f67a26")
!3193 = !{!3194, !3198, !3205, !3206}
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !3191, file: !3192, line: 15, baseType: !3195, size: 32768)
!3195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 32768, elements: !3196)
!3196 = !{!3197}
!3197 = !DISubrange(count: 4096)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !3191, file: !3192, line: 16, baseType: !3199, size: 192, offset: 32768)
!3199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_buf", file: !3200, line: 18, size: 192, elements: !3201)
!3200 = !DIFile(filename: "./include/linux/seq_buf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ca9012ec0d31d1c4540dcb3f58de70c8")
!3201 = !{!3202, !3203, !3204}
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !3199, file: !3200, line: 19, baseType: !913, size: 64)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3199, file: !3200, line: 20, baseType: !35, size: 64, offset: 64)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3199, file: !3200, line: 21, baseType: !35, size: 64, offset: 128)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "readpos", scope: !3191, file: !3192, line: 17, baseType: !35, size: 64, offset: 32960)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !3191, file: !3192, line: 18, baseType: !22, size: 32, offset: 33024)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "started", scope: !3165, file: !218, line: 111, baseType: !3208, size: 64, offset: 34112)
!3208 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !559, line: 913, baseType: !3209)
!3209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !560, size: 64, elements: !564)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot", scope: !3165, file: !218, line: 114, baseType: !825, size: 8, offset: 34176)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !3165, file: !218, line: 117, baseType: !3191, size: 33088, offset: 34240)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "ent", scope: !3165, file: !218, line: 118, baseType: !3213, size: 64, offset: 67328)
!3213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3214, size: 64)
!3214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_entry", file: !218, line: 79, size: 64, elements: !3215)
!3215 = !{!3216, !3217, !3218, !3219}
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3214, file: !218, line: 80, baseType: !26, size: 16)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3214, file: !218, line: 81, baseType: !87, size: 8, offset: 16)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "preempt_count", scope: !3214, file: !218, line: 82, baseType: !87, size: 8, offset: 24)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3214, file: !218, line: 83, baseType: !22, size: 32, offset: 32)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "lost_events", scope: !3165, file: !218, line: 119, baseType: !39, size: 64, offset: 67392)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "leftover", scope: !3165, file: !218, line: 120, baseType: !22, size: 32, offset: 67456)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "ent_size", scope: !3165, file: !218, line: 121, baseType: !22, size: 32, offset: 67488)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3165, file: !218, line: 122, baseType: !22, size: 32, offset: 67520)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !3165, file: !218, line: 123, baseType: !363, size: 64, offset: 67584)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3165, file: !218, line: 125, baseType: !41, size: 64, offset: 67648)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !3165, file: !218, line: 126, baseType: !1050, size: 64, offset: 67712)
!3227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3151, size: 64)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !3157, file: !218, line: 143, baseType: !3160, size: 64, offset: 64)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "hex", scope: !3157, file: !218, line: 144, baseType: !3160, size: 64, offset: 128)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "binary", scope: !3157, file: !218, line: 145, baseType: !3160, size: 64, offset: 192)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "print_fmt", scope: !3047, file: !218, line: 381, baseType: !913, size: 64, offset: 512)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3047, file: !218, line: 382, baseType: !3233, size: 64, offset: 576)
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3234, size: 64)
!3234 = !DICompositeType(tag: DW_TAG_structure_type, name: "event_filter", file: !235, line: 821, flags: DIFlagFwdDecl)
!3235 = !DIDerivedType(tag: DW_TAG_member, scope: !3047, file: !218, line: 387, baseType: !3236, size: 64, offset: 640)
!3236 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3047, file: !218, line: 387, size: 64, elements: !3237)
!3237 = !{!3238, !3239}
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !3236, file: !218, line: 388, baseType: !20, size: 64)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !3236, file: !218, line: 389, baseType: !49, size: 32)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3047, file: !218, line: 391, baseType: !20, size: 64, offset: 704)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3047, file: !218, line: 394, baseType: !22, size: 32, offset: 768)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "perf_refcount", scope: !3047, file: !218, line: 397, baseType: !22, size: 32, offset: 800)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "perf_events", scope: !3047, file: !218, line: 398, baseType: !3244, size: 64, offset: 832)
!3244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "prog_array", scope: !3047, file: !218, line: 399, baseType: !3246, size: 64, offset: 896)
!3246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3247, size: 64)
!3247 = !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_prog_array", file: !218, line: 399, flags: DIFlagFwdDecl)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "perf_perm", scope: !3047, file: !218, line: 401, baseType: !3249, size: 64, offset: 960)
!3249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3250, size: 64)
!3250 = !DISubroutineType(types: !3251)
!3251 = !{!22, !3046, !3252}
!3252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3253, size: 64)
!3253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !235, line: 671, size: 8512, elements: !3254)
!3254 = !{!3255, !3256, !3257, !3258, !3259, !3260, !3261, !3262, !3263, !3264, !3265, !3266, !3267, !3268, !3438, !3439, !3440, !3441, !3447, !3448, !3449, !3450, !3451, !3535, !3536, !3537, !3538, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3658, !3659, !3660, !3661, !3662, !3663, !3678, !3679, !3680, !3681, !3682, !3688, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3701, !3705, !3876, !3877, !3878, !3879, !4149, !4150, !4151}
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "event_entry", scope: !3253, file: !235, line: 678, baseType: !97, size: 128)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "sibling_list", scope: !3253, file: !235, line: 684, baseType: !97, size: 128, offset: 128)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "active_list", scope: !3253, file: !235, line: 685, baseType: !97, size: 128, offset: 256)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !3253, file: !235, line: 689, baseType: !355, size: 192, align: 64, offset: 384)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "group_index", scope: !3253, file: !235, line: 690, baseType: !363, size: 64, offset: 576)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_entry", scope: !3253, file: !235, line: 696, baseType: !97, size: 128, offset: 640)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "hlist_entry", scope: !3253, file: !235, line: 698, baseType: !720, size: 128, offset: 768)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "active_entry", scope: !3253, file: !235, line: 699, baseType: !97, size: 128, offset: 896)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "nr_siblings", scope: !3253, file: !235, line: 700, baseType: !22, size: 32, offset: 1024)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "event_caps", scope: !3253, file: !235, line: 703, baseType: !22, size: 32, offset: 1056)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "group_caps", scope: !3253, file: !235, line: 705, baseType: !22, size: 32, offset: 1088)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "group_generation", scope: !3253, file: !235, line: 707, baseType: !7, size: 32, offset: 1120)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !3253, file: !235, line: 708, baseType: !3252, size: 64, offset: 1152)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !3253, file: !235, line: 714, baseType: !3269, size: 64, offset: 1216)
!3269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3270, size: 64)
!3270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pmu", file: !235, line: 302, size: 2432, elements: !3271)
!3271 = !{!3272, !3273, !3274, !3275, !3276, !3277, !3278, !3279, !3280, !3281, !3282, !3348, !3349, !3350, !3351, !3352, !3356, !3357, !3361, !3365, !3366, !3370, !3374, !3375, !3376, !3380, !3384, !3388, !3389, !3390, !3394, !3395, !3399, !3403, !3404, !3424, !3428, !3429, !3430, !3434}
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3270, file: !235, line: 303, baseType: !97, size: 128)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !3270, file: !235, line: 305, baseType: !1429, size: 64, offset: 128)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3270, file: !235, line: 306, baseType: !2150, size: 64, offset: 192)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3270, file: !235, line: 307, baseType: !2150, size: 64, offset: 256)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "attr_groups", scope: !3270, file: !235, line: 308, baseType: !1522, size: 64, offset: 320)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "attr_update", scope: !3270, file: !235, line: 309, baseType: !1522, size: 64, offset: 384)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3270, file: !235, line: 310, baseType: !16, size: 64, offset: 448)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3270, file: !235, line: 311, baseType: !22, size: 32, offset: 512)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !3270, file: !235, line: 316, baseType: !22, size: 32, offset: 544)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable_count", scope: !3270, file: !235, line: 318, baseType: !2876, size: 64, offset: 576)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_pmu_context", scope: !3270, file: !235, line: 319, baseType: !3283, size: 64, offset: 640)
!3283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3284, size: 64)
!3284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cpu_pmu_context", file: !235, line: 977, size: 1856, elements: !3285)
!3285 = !{!3286, !3338, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3347}
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "epc", scope: !3284, file: !235, line: 978, baseType: !3287, size: 896)
!3287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_pmu_context", file: !235, line: 873, size: 896, elements: !3288)
!3288 = !{!3289, !3290, !3328, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336, !3337}
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !3287, file: !235, line: 874, baseType: !3269, size: 64)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !3287, file: !235, line: 875, baseType: !3291, size: 64, offset: 64)
!3291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3292, size: 64)
!3292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !235, line: 912, size: 1792, elements: !3293)
!3293 = !{!3294, !3295, !3296, !3297, !3302, !3303, !3304, !3305, !3306, !3307, !3308, !3309, !3310, !3311, !3312, !3313, !3314, !3315, !3316, !3317, !3318, !3319, !3320, !3321, !3322}
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3292, file: !235, line: 917, baseType: !455, size: 32)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3292, file: !235, line: 923, baseType: !668, size: 256, offset: 64)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_list", scope: !3292, file: !235, line: 925, baseType: !97, size: 128, offset: 320)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_groups", scope: !3292, file: !235, line: 926, baseType: !3298, size: 128, offset: 448)
!3298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_groups", file: !235, line: 901, size: 128, elements: !3299)
!3299 = !{!3300, !3301}
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "tree", scope: !3298, file: !235, line: 902, baseType: !498, size: 64)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3298, file: !235, line: 903, baseType: !363, size: 64, offset: 64)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_groups", scope: !3292, file: !235, line: 927, baseType: !3298, size: 128, offset: 576)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "event_list", scope: !3292, file: !235, line: 928, baseType: !97, size: 128, offset: 704)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3292, file: !235, line: 930, baseType: !22, size: 32, offset: 832)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "nr_user", scope: !3292, file: !235, line: 931, baseType: !22, size: 32, offset: 864)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "is_active", scope: !3292, file: !235, line: 932, baseType: !22, size: 32, offset: 896)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "nr_task_data", scope: !3292, file: !235, line: 934, baseType: !22, size: 32, offset: 928)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "nr_stat", scope: !3292, file: !235, line: 935, baseType: !22, size: 32, offset: 960)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "nr_freq", scope: !3292, file: !235, line: 936, baseType: !22, size: 32, offset: 992)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_disable", scope: !3292, file: !235, line: 937, baseType: !22, size: 32, offset: 1024)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3292, file: !235, line: 939, baseType: !311, size: 32, offset: 1056)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3292, file: !235, line: 940, baseType: !294, size: 64, offset: 1088)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3292, file: !235, line: 945, baseType: !363, size: 64, offset: 1152)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !3292, file: !235, line: 946, baseType: !363, size: 64, offset: 1216)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !3292, file: !235, line: 947, baseType: !363, size: 64, offset: 1280)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "parent_ctx", scope: !3292, file: !235, line: 953, baseType: !3291, size: 64, offset: 1344)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "parent_gen", scope: !3292, file: !235, line: 954, baseType: !363, size: 64, offset: 1408)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "generation", scope: !3292, file: !235, line: 955, baseType: !363, size: 64, offset: 1472)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "pin_count", scope: !3292, file: !235, line: 956, baseType: !22, size: 32, offset: 1536)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !3292, file: !235, line: 958, baseType: !22, size: 32, offset: 1568)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3292, file: !235, line: 960, baseType: !648, size: 128, align: 64, offset: 1600)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pending", scope: !3292, file: !235, line: 968, baseType: !3323, size: 64, offset: 1728)
!3323 = !DIDerivedType(tag: DW_TAG_typedef, name: "local_t", file: !3324, line: 12, baseType: !3325)
!3324 = !DIFile(filename: "./arch/x86/include/asm/local.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1295a17343a8a36946da0822a5548474")
!3325 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3324, line: 10, size: 64, elements: !3326)
!3326 = !{!3327}
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !3325, file: !3324, line: 11, baseType: !661, size: 64)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_entry", scope: !3287, file: !235, line: 877, baseType: !97, size: 128, offset: 128)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_active", scope: !3287, file: !235, line: 879, baseType: !97, size: 128, offset: 256)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_active", scope: !3287, file: !235, line: 880, baseType: !97, size: 128, offset: 384)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "embedded", scope: !3287, file: !235, line: 883, baseType: !7, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3287, file: !235, line: 885, baseType: !7, size: 32, offset: 544)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !3287, file: !235, line: 886, baseType: !7, size: 32, offset: 576)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3287, file: !235, line: 888, baseType: !49, size: 32, offset: 608)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3287, file: !235, line: 889, baseType: !648, size: 128, align: 64, offset: 640)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_data", scope: !3287, file: !235, line: 891, baseType: !20, size: 64, offset: 768)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_necessary", scope: !3287, file: !235, line: 898, baseType: !22, size: 32, offset: 832)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "task_epc", scope: !3284, file: !235, line: 979, baseType: !3339, size: 64, offset: 896)
!3339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3287, size: 64)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_entry", scope: !3284, file: !235, line: 981, baseType: !97, size: 128, offset: 960)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_usage", scope: !3284, file: !235, line: 982, baseType: !22, size: 32, offset: 1088)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "active_oncpu", scope: !3284, file: !235, line: 984, baseType: !22, size: 32, offset: 1120)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !3284, file: !235, line: 985, baseType: !22, size: 32, offset: 1152)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_lock", scope: !3284, file: !235, line: 987, baseType: !455, size: 32, offset: 1184)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !3284, file: !235, line: 988, baseType: !430, size: 512, offset: 1216)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval", scope: !3284, file: !235, line: 989, baseType: !438, size: 64, offset: 1728)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_active", scope: !3284, file: !235, line: 990, baseType: !7, size: 32, offset: 1792)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive_cnt", scope: !3270, file: !235, line: 320, baseType: !49, size: 32, offset: 704)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_nr", scope: !3270, file: !235, line: 321, baseType: !22, size: 32, offset: 736)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval_ms", scope: !3270, file: !235, line: 322, baseType: !22, size: 32, offset: 768)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "nr_addr_filters", scope: !3270, file: !235, line: 325, baseType: !7, size: 32, offset: 800)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_enable", scope: !3270, file: !235, line: 331, baseType: !3353, size: 64, offset: 832)
!3353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3354, size: 64)
!3354 = !DISubroutineType(types: !3355)
!3355 = !{null, !3269}
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable", scope: !3270, file: !235, line: 332, baseType: !3353, size: 64, offset: 896)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "event_init", scope: !3270, file: !235, line: 350, baseType: !3358, size: 64, offset: 960)
!3358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3359, size: 64)
!3359 = !DISubroutineType(types: !3360)
!3360 = !{!22, !3252}
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "event_mapped", scope: !3270, file: !235, line: 356, baseType: !3362, size: 64, offset: 1024)
!3362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3363, size: 64)
!3363 = !DISubroutineType(types: !3364)
!3364 = !{null, !3252, !612}
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "event_unmapped", scope: !3270, file: !235, line: 357, baseType: !3362, size: 64, offset: 1088)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !3270, file: !235, line: 385, baseType: !3367, size: 64, offset: 1152)
!3367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3368, size: 64)
!3368 = !DISubroutineType(types: !3369)
!3369 = !{!22, !3252, !22}
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "del", scope: !3270, file: !235, line: 386, baseType: !3371, size: 64, offset: 1216)
!3371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3372, size: 64)
!3372 = !DISubroutineType(types: !3373)
!3373 = !{null, !3252, !22}
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3270, file: !235, line: 406, baseType: !3371, size: 64, offset: 1280)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !3270, file: !235, line: 407, baseType: !3371, size: 64, offset: 1344)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3270, file: !235, line: 415, baseType: !3377, size: 64, offset: 1408)
!3377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3378, size: 64)
!3378 = !DISubroutineType(types: !3379)
!3379 = !{null, !3252}
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "start_txn", scope: !3270, file: !235, line: 427, baseType: !3381, size: 64, offset: 1472)
!3381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3382, size: 64)
!3382 = !DISubroutineType(types: !3383)
!3383 = !{null, !3269, !7}
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "commit_txn", scope: !3270, file: !235, line: 436, baseType: !3385, size: 64, offset: 1536)
!3385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3386, size: 64)
!3386 = !DISubroutineType(types: !3387)
!3387 = !{!22, !3269}
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_txn", scope: !3270, file: !235, line: 443, baseType: !3353, size: 64, offset: 1600)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "event_idx", scope: !3270, file: !235, line: 450, baseType: !3358, size: 64, offset: 1664)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task", scope: !3270, file: !235, line: 455, baseType: !3391, size: 64, offset: 1728)
!3391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3392, size: 64)
!3392 = !DISubroutineType(types: !3393)
!3393 = !{null, !3339, !825}
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_cache", scope: !3270, file: !235, line: 461, baseType: !758, size: 64, offset: 1792)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "swap_task_ctx", scope: !3270, file: !235, line: 469, baseType: !3396, size: 64, offset: 1856)
!3396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3397, size: 64)
!3397 = !DISubroutineType(types: !3398)
!3398 = !{null, !3339, !3339}
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "setup_aux", scope: !3270, file: !235, line: 476, baseType: !3400, size: 64, offset: 1920)
!3400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3401, size: 64)
!3401 = !DISubroutineType(types: !3402)
!3402 = !{!20, !3252, !1972, !22, !825}
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "free_aux", scope: !3270, file: !235, line: 483, baseType: !1226, size: 64, offset: 1984)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot_aux", scope: !3270, file: !235, line: 494, baseType: !3405, size: 64, offset: 2048)
!3405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3406, size: 64)
!3406 = !DISubroutineType(types: !3407)
!3407 = !{!1050, !3252, !3408, !39}
!3408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3409, size: 64)
!3409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_output_handle", file: !235, line: 1014, size: 448, elements: !3410)
!3410 = !{!3411, !3412, !3415, !3416, !3417, !3418, !3423}
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3409, file: !235, line: 1015, baseType: !3252, size: 64)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3409, file: !235, line: 1016, baseType: !3413, size: 64, offset: 64)
!3413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3414, size: 64)
!3414 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_buffer", file: !235, line: 641, flags: DIFlagFwdDecl)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3409, file: !235, line: 1017, baseType: !39, size: 64, offset: 128)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3409, file: !235, line: 1018, baseType: !39, size: 64, offset: 192)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "aux_flags", scope: !3409, file: !235, line: 1019, baseType: !363, size: 64, offset: 256)
!3418 = !DIDerivedType(tag: DW_TAG_member, scope: !3409, file: !235, line: 1020, baseType: !3419, size: 64, offset: 320)
!3419 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3409, file: !235, line: 1020, size: 64, elements: !3420)
!3420 = !{!3421, !3422}
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3419, file: !235, line: 1021, baseType: !20, size: 64)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3419, file: !235, line: 1022, baseType: !39, size: 64)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3409, file: !235, line: 1024, baseType: !22, size: 32, offset: 384)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_validate", scope: !3270, file: !235, line: 506, baseType: !3425, size: 64, offset: 2112)
!3425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3426, size: 64)
!3426 = !DISubroutineType(types: !3427)
!3427 = !{!22, !100}
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_sync", scope: !3270, file: !235, line: 520, baseType: !3377, size: 64, offset: 2176)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output_match", scope: !3270, file: !235, line: 530, baseType: !3358, size: 64, offset: 2240)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3270, file: !235, line: 537, baseType: !3431, size: 64, offset: 2304)
!3431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3432, size: 64)
!3432 = !DISubroutineType(types: !3433)
!3433 = !{!825, !3269, !22}
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "check_period", scope: !3270, file: !235, line: 542, baseType: !3435, size: 64, offset: 2368)
!3435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3436, size: 64)
!3436 = !DISubroutineType(types: !3437)
!3437 = !{!22, !3252, !363}
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_private", scope: !3253, file: !235, line: 715, baseType: !20, size: 64, offset: 1280)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3253, file: !235, line: 717, baseType: !234, size: 32, offset: 1344)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "attach_state", scope: !3253, file: !235, line: 718, baseType: !7, size: 32, offset: 1376)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3253, file: !235, line: 719, baseType: !3442, size: 64, offset: 1408)
!3442 = !DIDerivedType(tag: DW_TAG_typedef, name: "local64_t", file: !3443, line: 26, baseType: !3444)
!3443 = !DIFile(filename: "./include/asm-generic/local64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df4d146c32c49eaacbf0050bc72e4892")
!3444 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3443, line: 24, size: 64, elements: !3445)
!3445 = !{!3446}
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !3444, file: !3443, line: 25, baseType: !3323, size: 64)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3253, file: !235, line: 720, baseType: !663, size: 64, offset: 1472)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_enabled", scope: !3253, file: !235, line: 728, baseType: !363, size: 64, offset: 1536)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_running", scope: !3253, file: !235, line: 729, baseType: !363, size: 64, offset: 1600)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "tstamp", scope: !3253, file: !235, line: 730, baseType: !363, size: 64, offset: 1664)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3253, file: !235, line: 732, baseType: !3452, size: 1088, offset: 1728)
!3452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_attr", file: !3453, line: 385, size: 1088, elements: !3454)
!3453 = !DIFile(filename: "./include/uapi/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bcad89ece8f79f502358c5429db5ebf0")
!3454 = !{!3455, !3456, !3457, !3458, !3463, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3508, !3509, !3516, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534}
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3452, file: !3453, line: 390, baseType: !306, size: 32)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3452, file: !3453, line: 395, baseType: !306, size: 32, offset: 32)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3452, file: !3453, line: 400, baseType: !364, size: 64, offset: 64)
!3458 = !DIDerivedType(tag: DW_TAG_member, scope: !3452, file: !3453, line: 402, baseType: !3459, size: 64, offset: 128)
!3459 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3452, file: !3453, line: 402, size: 64, elements: !3460)
!3460 = !{!3461, !3462}
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !3459, file: !3453, line: 403, baseType: !364, size: 64)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "sample_freq", scope: !3459, file: !3453, line: 404, baseType: !364, size: 64)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "sample_type", scope: !3452, file: !3453, line: 407, baseType: !364, size: 64, offset: 192)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "read_format", scope: !3452, file: !3453, line: 408, baseType: !364, size: 64, offset: 256)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "disabled", scope: !3452, file: !3453, line: 410, baseType: !364, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "inherit", scope: !3452, file: !3453, line: 411, baseType: !364, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "pinned", scope: !3452, file: !3453, line: 412, baseType: !364, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !3452, file: !3453, line: 413, baseType: !364, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_user", scope: !3452, file: !3453, line: 414, baseType: !364, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_kernel", scope: !3452, file: !3453, line: 415, baseType: !364, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_hv", scope: !3452, file: !3453, line: 416, baseType: !364, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_idle", scope: !3452, file: !3453, line: 417, baseType: !364, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3452, file: !3453, line: 418, baseType: !364, size: 1, offset: 328, flags: DIFlagBitField, extraData: i64 320)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !3452, file: !3453, line: 419, baseType: !364, size: 1, offset: 329, flags: DIFlagBitField, extraData: i64 320)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !3452, file: !3453, line: 420, baseType: !364, size: 1, offset: 330, flags: DIFlagBitField, extraData: i64 320)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_stat", scope: !3452, file: !3453, line: 421, baseType: !364, size: 1, offset: 331, flags: DIFlagBitField, extraData: i64 320)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "enable_on_exec", scope: !3452, file: !3453, line: 422, baseType: !364, size: 1, offset: 332, flags: DIFlagBitField, extraData: i64 320)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3452, file: !3453, line: 423, baseType: !364, size: 1, offset: 333, flags: DIFlagBitField, extraData: i64 320)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "watermark", scope: !3452, file: !3453, line: 424, baseType: !364, size: 1, offset: 334, flags: DIFlagBitField, extraData: i64 320)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "precise_ip", scope: !3452, file: !3453, line: 435, baseType: !364, size: 2, offset: 335, flags: DIFlagBitField, extraData: i64 320)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_data", scope: !3452, file: !3453, line: 436, baseType: !364, size: 1, offset: 337, flags: DIFlagBitField, extraData: i64 320)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "sample_id_all", scope: !3452, file: !3453, line: 437, baseType: !364, size: 1, offset: 338, flags: DIFlagBitField, extraData: i64 320)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_host", scope: !3452, file: !3453, line: 439, baseType: !364, size: 1, offset: 339, flags: DIFlagBitField, extraData: i64 320)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_guest", scope: !3452, file: !3453, line: 440, baseType: !364, size: 1, offset: 340, flags: DIFlagBitField, extraData: i64 320)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_kernel", scope: !3452, file: !3453, line: 442, baseType: !364, size: 1, offset: 341, flags: DIFlagBitField, extraData: i64 320)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_user", scope: !3452, file: !3453, line: 443, baseType: !364, size: 1, offset: 342, flags: DIFlagBitField, extraData: i64 320)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "mmap2", scope: !3452, file: !3453, line: 444, baseType: !364, size: 1, offset: 343, flags: DIFlagBitField, extraData: i64 320)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "comm_exec", scope: !3452, file: !3453, line: 445, baseType: !364, size: 1, offset: 344, flags: DIFlagBitField, extraData: i64 320)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "use_clockid", scope: !3452, file: !3453, line: 446, baseType: !364, size: 1, offset: 345, flags: DIFlagBitField, extraData: i64 320)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "context_switch", scope: !3452, file: !3453, line: 447, baseType: !364, size: 1, offset: 346, flags: DIFlagBitField, extraData: i64 320)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "write_backward", scope: !3452, file: !3453, line: 448, baseType: !364, size: 1, offset: 347, flags: DIFlagBitField, extraData: i64 320)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "namespaces", scope: !3452, file: !3453, line: 449, baseType: !364, size: 1, offset: 348, flags: DIFlagBitField, extraData: i64 320)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "ksymbol", scope: !3452, file: !3453, line: 450, baseType: !364, size: 1, offset: 349, flags: DIFlagBitField, extraData: i64 320)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "bpf_event", scope: !3452, file: !3453, line: 451, baseType: !364, size: 1, offset: 350, flags: DIFlagBitField, extraData: i64 320)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output", scope: !3452, file: !3453, line: 452, baseType: !364, size: 1, offset: 351, flags: DIFlagBitField, extraData: i64 320)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3452, file: !3453, line: 453, baseType: !364, size: 1, offset: 352, flags: DIFlagBitField, extraData: i64 320)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "text_poke", scope: !3452, file: !3453, line: 454, baseType: !364, size: 1, offset: 353, flags: DIFlagBitField, extraData: i64 320)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "build_id", scope: !3452, file: !3453, line: 455, baseType: !364, size: 1, offset: 354, flags: DIFlagBitField, extraData: i64 320)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_thread", scope: !3452, file: !3453, line: 456, baseType: !364, size: 1, offset: 355, flags: DIFlagBitField, extraData: i64 320)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "remove_on_exec", scope: !3452, file: !3453, line: 457, baseType: !364, size: 1, offset: 356, flags: DIFlagBitField, extraData: i64 320)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "sigtrap", scope: !3452, file: !3453, line: 458, baseType: !364, size: 1, offset: 357, flags: DIFlagBitField, extraData: i64 320)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_1", scope: !3452, file: !3453, line: 459, baseType: !364, size: 26, offset: 358, flags: DIFlagBitField, extraData: i64 320)
!3503 = !DIDerivedType(tag: DW_TAG_member, scope: !3452, file: !3453, line: 461, baseType: !3504, size: 32, offset: 384)
!3504 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3452, file: !3453, line: 461, size: 32, elements: !3505)
!3505 = !{!3506, !3507}
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_events", scope: !3504, file: !3453, line: 462, baseType: !306, size: 32)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_watermark", scope: !3504, file: !3453, line: 463, baseType: !306, size: 32)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "bp_type", scope: !3452, file: !3453, line: 466, baseType: !306, size: 32, offset: 416)
!3509 = !DIDerivedType(tag: DW_TAG_member, scope: !3452, file: !3453, line: 467, baseType: !3510, size: 64, offset: 448)
!3510 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3452, file: !3453, line: 467, size: 64, elements: !3511)
!3511 = !{!3512, !3513, !3514, !3515}
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "bp_addr", scope: !3510, file: !3453, line: 468, baseType: !364, size: 64)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_func", scope: !3510, file: !3453, line: 469, baseType: !364, size: 64)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe_path", scope: !3510, file: !3453, line: 470, baseType: !364, size: 64)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "config1", scope: !3510, file: !3453, line: 471, baseType: !364, size: 64)
!3516 = !DIDerivedType(tag: DW_TAG_member, scope: !3452, file: !3453, line: 473, baseType: !3517, size: 64, offset: 512)
!3517 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3452, file: !3453, line: 473, size: 64, elements: !3518)
!3518 = !{!3519, !3520, !3521, !3522}
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "bp_len", scope: !3517, file: !3453, line: 474, baseType: !364, size: 64)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_addr", scope: !3517, file: !3453, line: 475, baseType: !364, size: 64)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "probe_offset", scope: !3517, file: !3453, line: 476, baseType: !364, size: 64)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "config2", scope: !3517, file: !3453, line: 477, baseType: !364, size: 64)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "branch_sample_type", scope: !3452, file: !3453, line: 479, baseType: !364, size: 64, offset: 576)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_user", scope: !3452, file: !3453, line: 485, baseType: !364, size: 64, offset: 640)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "sample_stack_user", scope: !3452, file: !3453, line: 490, baseType: !306, size: 32, offset: 704)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3452, file: !3453, line: 492, baseType: !838, size: 32, offset: 736)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_intr", scope: !3452, file: !3453, line: 501, baseType: !364, size: 64, offset: 768)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "aux_watermark", scope: !3452, file: !3453, line: 506, baseType: !306, size: 32, offset: 832)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "sample_max_stack", scope: !3452, file: !3453, line: 507, baseType: !94, size: 16, offset: 864)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_2", scope: !3452, file: !3453, line: 508, baseType: !94, size: 16, offset: 880)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "aux_sample_size", scope: !3452, file: !3453, line: 509, baseType: !306, size: 32, offset: 896)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_3", scope: !3452, file: !3453, line: 510, baseType: !306, size: 32, offset: 928)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "sig_data", scope: !3452, file: !3453, line: 518, baseType: !364, size: 64, offset: 960)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "config3", scope: !3452, file: !3453, line: 520, baseType: !364, size: 64, offset: 1024)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "header_size", scope: !3253, file: !235, line: 733, baseType: !93, size: 16, offset: 2816)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "id_header_size", scope: !3253, file: !235, line: 734, baseType: !93, size: 16, offset: 2832)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "read_size", scope: !3253, file: !235, line: 735, baseType: !93, size: 16, offset: 2848)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "hw", scope: !3253, file: !235, line: 736, baseType: !3539, size: 1536, offset: 2880)
!3539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event", file: !235, line: 155, size: 1536, elements: !3540)
!3540 = !{!3541, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3625, !3626, !3627, !3628}
!3541 = !DIDerivedType(tag: DW_TAG_member, scope: !3539, file: !235, line: 157, baseType: !3542, size: 768)
!3542 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3539, file: !235, line: 157, size: 768, elements: !3543)
!3543 = !{!3544, !3563, !3567, !3571, !3576, !3598}
!3544 = !DIDerivedType(tag: DW_TAG_member, scope: !3542, file: !235, line: 158, baseType: !3545, size: 768)
!3545 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3542, file: !235, line: 158, size: 768, elements: !3546)
!3546 = !{!3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3562}
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3545, file: !235, line: 159, baseType: !363, size: 64)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "last_tag", scope: !3545, file: !235, line: 160, baseType: !363, size: 64, offset: 64)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "config_base", scope: !3545, file: !235, line: 161, baseType: !39, size: 64, offset: 128)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "event_base", scope: !3545, file: !235, line: 162, baseType: !39, size: 64, offset: 192)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "event_base_rdpmc", scope: !3545, file: !235, line: 163, baseType: !22, size: 32, offset: 256)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !3545, file: !235, line: 164, baseType: !22, size: 32, offset: 288)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3545, file: !235, line: 165, baseType: !22, size: 32, offset: 320)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3545, file: !235, line: 166, baseType: !22, size: 32, offset: 352)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "extra_reg", scope: !3545, file: !235, line: 168, baseType: !3556, size: 192, offset: 384)
!3556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event_extra", file: !235, line: 134, size: 192, elements: !3557)
!3557 = !{!3558, !3559, !3560, !3561}
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3556, file: !235, line: 135, baseType: !363, size: 64)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !3556, file: !235, line: 136, baseType: !7, size: 32, offset: 64)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3556, file: !235, line: 137, baseType: !22, size: 32, offset: 96)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !3556, file: !235, line: 138, baseType: !22, size: 32, offset: 128)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "branch_reg", scope: !3545, file: !235, line: 169, baseType: !3556, size: 192, offset: 576)
!3563 = !DIDerivedType(tag: DW_TAG_member, scope: !3542, file: !235, line: 171, baseType: !3564, size: 512)
!3564 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3542, file: !235, line: 171, size: 512, elements: !3565)
!3565 = !{!3566}
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !3564, file: !235, line: 172, baseType: !430, size: 512)
!3567 = !DIDerivedType(tag: DW_TAG_member, scope: !3542, file: !235, line: 174, baseType: !3568, size: 128)
!3568 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3542, file: !235, line: 174, size: 128, elements: !3569)
!3569 = !{!3570}
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "tp_list", scope: !3568, file: !235, line: 176, baseType: !97, size: 128)
!3571 = !DIDerivedType(tag: DW_TAG_member, scope: !3542, file: !235, line: 178, baseType: !3572, size: 128)
!3572 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3542, file: !235, line: 178, size: 128, elements: !3573)
!3573 = !{!3574, !3575}
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "pwr_acc", scope: !3572, file: !235, line: 179, baseType: !363, size: 64)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "ptsc", scope: !3572, file: !235, line: 180, baseType: !363, size: 64, offset: 64)
!3576 = !DIDerivedType(tag: DW_TAG_member, scope: !3542, file: !235, line: 183, baseType: !3577, size: 320)
!3577 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3542, file: !235, line: 183, size: 320, elements: !3578)
!3578 = !{!3579, !3587}
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3577, file: !235, line: 189, baseType: !3580, size: 192)
!3580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_hw_breakpoint", file: !3581, line: 14, size: 192, elements: !3582)
!3581 = !DIFile(filename: "./arch/x86/include/asm/hw_breakpoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "107c509acefbbe18efeb522731cf3028")
!3582 = !{!3583, !3584, !3585, !3586}
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !3580, file: !3581, line: 15, baseType: !39, size: 64)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !3580, file: !3581, line: 16, baseType: !39, size: 64, offset: 64)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3580, file: !3581, line: 17, baseType: !83, size: 8, offset: 128)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3580, file: !3581, line: 18, baseType: !83, size: 8, offset: 136)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "bp_list", scope: !3577, file: !235, line: 190, baseType: !3588, size: 128, offset: 192)
!3588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhlist_head", file: !3589, line: 21, size: 128, elements: !3590)
!3589 = !DIFile(filename: "./include/linux/rhashtable-types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99b3652a01a9d39bb1c8b53f50a53014")
!3590 = !{!3591, !3596}
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "rhead", scope: !3588, file: !3589, line: 22, baseType: !3592, size: 64)
!3592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhash_head", file: !3589, line: 17, size: 64, elements: !3593)
!3593 = !{!3594}
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3592, file: !3589, line: 18, baseType: !3595, size: 64)
!3595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3592, size: 64)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3588, file: !3589, line: 23, baseType: !3597, size: 64, offset: 64)
!3597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3588, size: 64)
!3598 = !DIDerivedType(tag: DW_TAG_member, scope: !3542, file: !235, line: 193, baseType: !3599, size: 192)
!3599 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3542, file: !235, line: 193, size: 192, elements: !3600)
!3600 = !{!3601, !3602, !3603, !3604, !3605}
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_bank", scope: !3599, file: !235, line: 194, baseType: !83, size: 8)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_cntr", scope: !3599, file: !235, line: 195, baseType: !83, size: 8, offset: 8)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3599, file: !235, line: 196, baseType: !93, size: 16, offset: 16)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "conf", scope: !3599, file: !235, line: 197, baseType: !363, size: 64, offset: 64)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "conf1", scope: !3599, file: !235, line: 198, baseType: !363, size: 64, offset: 128)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !3539, file: !235, line: 205, baseType: !294, size: 64, offset: 768)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !3539, file: !235, line: 211, baseType: !20, size: 64, offset: 832)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !3539, file: !235, line: 214, baseType: !39, size: 64, offset: 896)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3539, file: !235, line: 223, baseType: !22, size: 32, offset: 960)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "prev_count", scope: !3539, file: !235, line: 229, baseType: !3442, size: 64, offset: 1024)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !3539, file: !235, line: 234, baseType: !363, size: 64, offset: 1088)
!3612 = !DIDerivedType(tag: DW_TAG_member, scope: !3539, file: !235, line: 236, baseType: !3613, size: 128, offset: 1152)
!3613 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3539, file: !235, line: 236, size: 128, elements: !3614)
!3614 = !{!3615, !3620}
!3615 = !DIDerivedType(tag: DW_TAG_member, scope: !3613, file: !235, line: 237, baseType: !3616, size: 128)
!3616 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3613, file: !235, line: 237, size: 128, elements: !3617)
!3617 = !{!3618, !3619}
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "last_period", scope: !3616, file: !235, line: 241, baseType: !363, size: 64)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "period_left", scope: !3616, file: !235, line: 249, baseType: !3442, size: 64, offset: 64)
!3620 = !DIDerivedType(tag: DW_TAG_member, scope: !3613, file: !235, line: 251, baseType: !3621, size: 128)
!3621 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3613, file: !235, line: 251, size: 128, elements: !3622)
!3622 = !{!3623, !3624}
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "saved_metric", scope: !3621, file: !235, line: 252, baseType: !363, size: 64)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "saved_slots", scope: !3621, file: !235, line: 253, baseType: !363, size: 64, offset: 64)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts_seq", scope: !3539, file: !235, line: 261, baseType: !363, size: 64, offset: 1280)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !3539, file: !235, line: 262, baseType: !363, size: 64, offset: 1344)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "freq_time_stamp", scope: !3539, file: !235, line: 268, baseType: !363, size: 64, offset: 1408)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "freq_count_stamp", scope: !3539, file: !235, line: 269, baseType: !363, size: 64, offset: 1472)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !3253, file: !235, line: 738, baseType: !3291, size: 64, offset: 4416)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx", scope: !3253, file: !235, line: 744, baseType: !3339, size: 64, offset: 4480)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3253, file: !235, line: 745, baseType: !661, size: 64, offset: 4544)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_enabled", scope: !3253, file: !235, line: 751, baseType: !663, size: 64, offset: 4608)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_running", scope: !3253, file: !235, line: 752, baseType: !663, size: 64, offset: 4672)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "child_mutex", scope: !3253, file: !235, line: 757, baseType: !668, size: 256, offset: 4736)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "child_list", scope: !3253, file: !235, line: 758, baseType: !97, size: 128, offset: 4992)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3253, file: !235, line: 759, baseType: !3252, size: 64, offset: 5120)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "oncpu", scope: !3253, file: !235, line: 761, baseType: !22, size: 32, offset: 5184)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3253, file: !235, line: 762, baseType: !22, size: 32, offset: 5216)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "owner_entry", scope: !3253, file: !235, line: 764, baseType: !97, size: 128, offset: 5248)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3253, file: !235, line: 765, baseType: !294, size: 64, offset: 5376)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_mutex", scope: !3253, file: !235, line: 768, baseType: !668, size: 256, offset: 5440)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_count", scope: !3253, file: !235, line: 769, baseType: !49, size: 32, offset: 5696)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3253, file: !235, line: 771, baseType: !3413, size: 64, offset: 5760)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "rb_entry", scope: !3253, file: !235, line: 772, baseType: !97, size: 128, offset: 5824)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_batches", scope: !3253, file: !235, line: 773, baseType: !39, size: 64, offset: 5952)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_pending", scope: !3253, file: !235, line: 774, baseType: !22, size: 32, offset: 6016)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !3253, file: !235, line: 777, baseType: !54, size: 192, offset: 6080)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3253, file: !235, line: 778, baseType: !3649, size: 64, offset: 6272)
!3649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3650, size: 64)
!3650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !244, line: 1083, size: 384, elements: !3651)
!3651 = !{!3652, !3653, !3654, !3655, !3656, !3657}
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3650, file: !244, line: 1084, baseType: !685, size: 64)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3650, file: !244, line: 1085, baseType: !22, size: 32, offset: 64)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3650, file: !244, line: 1086, baseType: !22, size: 32, offset: 96)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3650, file: !244, line: 1087, baseType: !3649, size: 64, offset: 128)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3650, file: !244, line: 1088, baseType: !640, size: 64, offset: 192)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3650, file: !244, line: 1089, baseType: !648, size: 128, align: 64, offset: 256)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "pending_wakeup", scope: !3253, file: !235, line: 781, baseType: !7, size: 32, offset: 6336)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "pending_kill", scope: !3253, file: !235, line: 782, baseType: !7, size: 32, offset: 6368)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "pending_disable", scope: !3253, file: !235, line: 783, baseType: !7, size: 32, offset: 6400)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "pending_sigtrap", scope: !3253, file: !235, line: 784, baseType: !7, size: 32, offset: 6432)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "pending_addr", scope: !3253, file: !235, line: 785, baseType: !39, size: 64, offset: 6464)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "pending_irq", scope: !3253, file: !235, line: 786, baseType: !3664, size: 256, offset: 6528)
!3664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_work", file: !3665, line: 17, size: 256, elements: !3666)
!3665 = !DIFile(filename: "./include/linux/irq_work.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "897aa98b7525a8c43c93f11203b0d4f0")
!3666 = !{!3667, !3668, !3673}
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3664, file: !3665, line: 18, baseType: !320, size: 128)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3664, file: !3665, line: 19, baseType: !3669, size: 64, offset: 128)
!3669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3670, size: 64)
!3670 = !DISubroutineType(types: !3671)
!3671 = !{null, !3672}
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3664, size: 64)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "irqwait", scope: !3664, file: !3665, line: 20, baseType: !3674, size: 64, offset: 192)
!3674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3675, line: 16, size: 64, elements: !3676)
!3675 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3676 = !{!3677}
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3674, file: !3675, line: 17, baseType: !294, size: 64)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "pending_task", scope: !3253, file: !235, line: 787, baseType: !648, size: 128, align: 64, offset: 6784)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work", scope: !3253, file: !235, line: 788, baseType: !7, size: 32, offset: 6912)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work_wait", scope: !3253, file: !235, line: 789, baseType: !3674, size: 64, offset: 6976)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "event_limit", scope: !3253, file: !235, line: 791, baseType: !49, size: 32, offset: 7040)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !3253, file: !235, line: 794, baseType: !3683, size: 192, offset: 7104)
!3683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filters_head", file: !235, line: 579, size: 192, elements: !3684)
!3684 = !{!3685, !3686, !3687}
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3683, file: !235, line: 580, baseType: !97, size: 128)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3683, file: !235, line: 581, baseType: !455, size: 32, offset: 128)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "nr_file_filters", scope: !3683, file: !235, line: 582, baseType: !7, size: 32, offset: 160)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filter_ranges", scope: !3253, file: !235, line: 796, baseType: !3689, size: 64, offset: 7296)
!3689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3690, size: 64)
!3690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filter_range", file: !235, line: 585, size: 128, elements: !3691)
!3691 = !{!3692, !3693}
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3690, file: !235, line: 586, baseType: !39, size: 64)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3690, file: !235, line: 587, baseType: !39, size: 64, offset: 64)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !3253, file: !235, line: 797, baseType: !39, size: 64, offset: 7360)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "aux_event", scope: !3253, file: !235, line: 800, baseType: !3252, size: 64, offset: 7424)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !3253, file: !235, line: 802, baseType: !3377, size: 64, offset: 7488)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3253, file: !235, line: 803, baseType: !648, size: 128, align: 64, offset: 7552)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3253, file: !235, line: 805, baseType: !736, size: 64, offset: 7680)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3253, file: !235, line: 806, baseType: !363, size: 64, offset: 7744)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "lost_samples", scope: !3253, file: !235, line: 808, baseType: !663, size: 64, offset: 7808)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !3253, file: !235, line: 810, baseType: !3702, size: 64, offset: 7872)
!3702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3703, size: 64)
!3703 = !DISubroutineType(types: !3704)
!3704 = !{!363}
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler", scope: !3253, file: !235, line: 811, baseType: !3706, size: 64, offset: 7936)
!3706 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_overflow_handler_t", file: !235, line: 605, baseType: !3707)
!3707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3708, size: 64)
!3708 = !DISubroutineType(types: !3709)
!3709 = !{null, !3252, !3710, !3815}
!3710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3711, size: 64)
!3711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_sample_data", file: !235, line: 1148, size: 2048, align: 512, elements: !3712)
!3712 = !{!3713, !3714, !3715, !3716, !3717, !3722, !3723, !3724, !3729, !3730, !3737, !3758, !3780, !3790, !3808, !3809, !3867, !3868, !3869, !3870, !3871, !3872, !3873, !3874, !3875}
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "sample_flags", scope: !3711, file: !235, line: 1153, baseType: !363, size: 64)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !3711, file: !235, line: 1154, baseType: !363, size: 64, offset: 64)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "dyn_size", scope: !3711, file: !235, line: 1155, baseType: !363, size: 64, offset: 128)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3711, file: !235, line: 1161, baseType: !363, size: 64, offset: 192)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "tid_entry", scope: !3711, file: !235, line: 1165, baseType: !3718, size: 64, offset: 256)
!3718 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3711, file: !235, line: 1162, size: 64, elements: !3719)
!3719 = !{!3720, !3721}
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3718, file: !235, line: 1163, baseType: !305, size: 32)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !3718, file: !235, line: 1164, baseType: !305, size: 32, offset: 32)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3711, file: !235, line: 1166, baseType: !363, size: 64, offset: 320)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3711, file: !235, line: 1167, baseType: !363, size: 64, offset: 384)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_entry", scope: !3711, file: !235, line: 1171, baseType: !3725, size: 64, offset: 448)
!3725 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3711, file: !235, line: 1168, size: 64, elements: !3726)
!3726 = !{!3727, !3728}
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3725, file: !235, line: 1169, baseType: !305, size: 32)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3725, file: !235, line: 1170, baseType: !305, size: 32, offset: 32)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3711, file: !235, line: 1177, baseType: !363, size: 64, offset: 512)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "callchain", scope: !3711, file: !235, line: 1178, baseType: !3731, size: 64, offset: 576)
!3731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3732, size: 64)
!3732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_callchain_entry", file: !235, line: 67, size: 64, elements: !3733)
!3733 = !{!3734, !3735}
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !3732, file: !235, line: 68, baseType: !364, size: 64)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3732, file: !235, line: 69, baseType: !3736, offset: 64)
!3736 = !DICompositeType(tag: DW_TAG_array_type, baseType: !364, elements: !1057)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !3711, file: !235, line: 1179, baseType: !3738, size: 64, offset: 640)
!3738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3739, size: 64)
!3739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_record", file: !235, line: 93, size: 256, elements: !3740)
!3740 = !{!3741, !3757}
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "frag", scope: !3739, file: !235, line: 94, baseType: !3742, size: 224)
!3742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_frag", file: !235, line: 83, size: 224, elements: !3743)
!3743 = !{!3744, !3750, !3755, !3756}
!3744 = !DIDerivedType(tag: DW_TAG_member, scope: !3742, file: !235, line: 84, baseType: !3745, size: 64)
!3745 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3742, file: !235, line: 84, size: 64, elements: !3746)
!3746 = !{!3747, !3749}
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3745, file: !235, line: 85, baseType: !3748, size: 64)
!3748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3742, size: 64)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !3745, file: !235, line: 86, baseType: !39, size: 64)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !3742, file: !235, line: 88, baseType: !3751, size: 64, offset: 64)
!3751 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_copy_f", file: !235, line: 80, baseType: !3752)
!3752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3753, size: 64)
!3753 = !DISubroutineType(types: !3754)
!3754 = !{!39, !20, !2491, !39, !39}
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3742, file: !235, line: 89, baseType: !20, size: 64, offset: 128)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3742, file: !235, line: 90, baseType: !305, size: 32, offset: 192)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3739, file: !235, line: 95, baseType: !305, size: 32, offset: 224)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "br_stack", scope: !3711, file: !235, line: 1180, baseType: !3759, size: 64, offset: 704)
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3760, size: 64)
!3760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_stack", file: !235, line: 123, size: 128, elements: !3761)
!3761 = !{!3762, !3763, !3764}
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !3760, file: !235, line: 124, baseType: !364, size: 64)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "hw_idx", scope: !3760, file: !235, line: 125, baseType: !364, size: 64, offset: 64)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !3760, file: !235, line: 126, baseType: !3765, offset: 128)
!3765 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3766, elements: !1057)
!3766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_entry", file: !3453, line: 1415, size: 192, elements: !3767)
!3767 = !{!3768, !3769, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779}
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !3766, file: !3453, line: 1416, baseType: !364, size: 64)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "to", scope: !3766, file: !3453, line: 1417, baseType: !364, size: 64, offset: 64)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "mispred", scope: !3766, file: !3453, line: 1418, baseType: !364, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "predicted", scope: !3766, file: !3453, line: 1419, baseType: !364, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "in_tx", scope: !3766, file: !3453, line: 1420, baseType: !364, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "abort", scope: !3766, file: !3453, line: 1421, baseType: !364, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "cycles", scope: !3766, file: !3453, line: 1422, baseType: !364, size: 16, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3766, file: !3453, line: 1423, baseType: !364, size: 4, offset: 148, flags: DIFlagBitField, extraData: i64 128)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "spec", scope: !3766, file: !3453, line: 1424, baseType: !364, size: 2, offset: 152, flags: DIFlagBitField, extraData: i64 128)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "new_type", scope: !3766, file: !3453, line: 1425, baseType: !364, size: 4, offset: 154, flags: DIFlagBitField, extraData: i64 128)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3766, file: !3453, line: 1426, baseType: !364, size: 3, offset: 158, flags: DIFlagBitField, extraData: i64 128)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3766, file: !3453, line: 1427, baseType: !364, size: 31, offset: 161, flags: DIFlagBitField, extraData: i64 128)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !3711, file: !235, line: 1181, baseType: !3781, size: 64, offset: 768)
!3781 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_sample_weight", file: !3453, line: 1430, size: 64, elements: !3782)
!3782 = !{!3783, !3784}
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !3781, file: !3453, line: 1431, baseType: !364, size: 64)
!3784 = !DIDerivedType(tag: DW_TAG_member, scope: !3781, file: !3453, line: 1433, baseType: !3785, size: 64)
!3785 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3781, file: !3453, line: 1433, size: 64, elements: !3786)
!3786 = !{!3787, !3788, !3789}
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "var1_dw", scope: !3785, file: !3453, line: 1434, baseType: !306, size: 32)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "var2_w", scope: !3785, file: !3453, line: 1435, baseType: !94, size: 16, offset: 32)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "var3_w", scope: !3785, file: !3453, line: 1436, baseType: !94, size: 16, offset: 48)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "data_src", scope: !3711, file: !235, line: 1182, baseType: !3791, size: 64, offset: 832)
!3791 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_mem_data_src", file: !3453, line: 1267, size: 64, elements: !3792)
!3792 = !{!3793, !3794}
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3791, file: !3453, line: 1268, baseType: !364, size: 64)
!3794 = !DIDerivedType(tag: DW_TAG_member, scope: !3791, file: !3453, line: 1269, baseType: !3795, size: 64)
!3795 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3791, file: !3453, line: 1269, size: 64, elements: !3796)
!3796 = !{!3797, !3798, !3799, !3800, !3801, !3802, !3803, !3804, !3805, !3806, !3807}
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "mem_op", scope: !3795, file: !3453, line: 1270, baseType: !364, size: 5, flags: DIFlagBitField, extraData: i64 0)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl", scope: !3795, file: !3453, line: 1271, baseType: !364, size: 14, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoop", scope: !3795, file: !3453, line: 1272, baseType: !364, size: 5, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lock", scope: !3795, file: !3453, line: 1273, baseType: !364, size: 2, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "mem_dtlb", scope: !3795, file: !3453, line: 1274, baseType: !364, size: 7, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl_num", scope: !3795, file: !3453, line: 1275, baseType: !364, size: 4, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "mem_remote", scope: !3795, file: !3453, line: 1276, baseType: !364, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoopx", scope: !3795, file: !3453, line: 1277, baseType: !364, size: 2, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "mem_blk", scope: !3795, file: !3453, line: 1278, baseType: !364, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "mem_hops", scope: !3795, file: !3453, line: 1279, baseType: !364, size: 3, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "mem_rsvd", scope: !3795, file: !3453, line: 1280, baseType: !364, size: 18, offset: 46, flags: DIFlagBitField, extraData: i64 0)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "txn", scope: !3711, file: !235, line: 1183, baseType: !363, size: 64, offset: 896)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "regs_user", scope: !3711, file: !235, line: 1185, baseType: !3810, size: 128, offset: 960)
!3810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_regs", file: !3811, line: 7, size: 128, elements: !3812)
!3811 = !DIFile(filename: "./include/linux/perf_regs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ddec4c01469dcac1787a884df1c79d64")
!3812 = !{!3813, !3814}
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "abi", scope: !3810, file: !3811, line: 8, baseType: !364, size: 64)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3810, file: !3811, line: 9, baseType: !3815, size: 64, offset: 64)
!3815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3816, size: 64)
!3816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3817, line: 103, size: 1344, elements: !3818)
!3817 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3818 = !{!3819, !3820, !3821, !3822, !3823, !3824, !3825, !3826, !3827, !3828, !3829, !3830, !3831, !3832, !3833, !3834, !3835, !3836, !3847, !3848, !3849}
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3816, file: !3817, line: 109, baseType: !39, size: 64)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3816, file: !3817, line: 110, baseType: !39, size: 64, offset: 64)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3816, file: !3817, line: 111, baseType: !39, size: 64, offset: 128)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3816, file: !3817, line: 112, baseType: !39, size: 64, offset: 192)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3816, file: !3817, line: 113, baseType: !39, size: 64, offset: 256)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3816, file: !3817, line: 114, baseType: !39, size: 64, offset: 320)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3816, file: !3817, line: 117, baseType: !39, size: 64, offset: 384)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3816, file: !3817, line: 118, baseType: !39, size: 64, offset: 448)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3816, file: !3817, line: 119, baseType: !39, size: 64, offset: 512)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3816, file: !3817, line: 120, baseType: !39, size: 64, offset: 576)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3816, file: !3817, line: 121, baseType: !39, size: 64, offset: 640)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3816, file: !3817, line: 122, baseType: !39, size: 64, offset: 704)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3816, file: !3817, line: 123, baseType: !39, size: 64, offset: 768)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3816, file: !3817, line: 124, baseType: !39, size: 64, offset: 832)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3816, file: !3817, line: 125, baseType: !39, size: 64, offset: 896)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3816, file: !3817, line: 139, baseType: !39, size: 64, offset: 960)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3816, file: !3817, line: 142, baseType: !39, size: 64, offset: 1024)
!3836 = !DIDerivedType(tag: DW_TAG_member, scope: !3816, file: !3817, line: 144, baseType: !3837, size: 64, offset: 1088)
!3837 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3816, file: !3817, line: 144, size: 64, elements: !3838)
!3838 = !{!3839, !3840, !3841}
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3837, file: !3817, line: 146, baseType: !93, size: 16)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3837, file: !3817, line: 148, baseType: !363, size: 64)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3837, file: !3817, line: 150, baseType: !3842, size: 64)
!3842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3817, line: 59, size: 64, elements: !3843)
!3843 = !{!3844, !3845, !3846}
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3842, file: !3817, line: 61, baseType: !363, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3842, file: !3817, line: 63, baseType: !363, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3842, file: !3817, line: 65, baseType: !363, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3816, file: !3817, line: 153, baseType: !39, size: 64, offset: 1152)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3816, file: !3817, line: 154, baseType: !39, size: 64, offset: 1216)
!3849 = !DIDerivedType(tag: DW_TAG_member, scope: !3816, file: !3817, line: 156, baseType: !3850, size: 64, offset: 1280)
!3850 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3816, file: !3817, line: 156, size: 64, elements: !3851)
!3851 = !{!3852, !3853, !3854}
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3850, file: !3817, line: 158, baseType: !93, size: 16)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3850, file: !3817, line: 160, baseType: !363, size: 64)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3850, file: !3817, line: 162, baseType: !3855, size: 64)
!3855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3817, line: 69, size: 64, elements: !3856)
!3856 = !{!3857, !3858, !3859, !3860, !3861, !3862, !3863, !3864, !3865, !3866}
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3855, file: !3817, line: 71, baseType: !363, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3855, file: !3817, line: 73, baseType: !363, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3855, file: !3817, line: 75, baseType: !363, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3855, file: !3817, line: 77, baseType: !363, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3855, file: !3817, line: 80, baseType: !363, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3855, file: !3817, line: 83, baseType: !363, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3855, file: !3817, line: 86, baseType: !363, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3855, file: !3817, line: 88, baseType: !363, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3855, file: !3817, line: 93, baseType: !363, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3855, file: !3817, line: 100, baseType: !363, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "regs_intr", scope: !3711, file: !235, line: 1186, baseType: !3810, size: 128, offset: 1088)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "stack_user_size", scope: !3711, file: !235, line: 1187, baseType: !363, size: 64, offset: 1216)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !3711, file: !235, line: 1189, baseType: !363, size: 64, offset: 1280)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3711, file: !235, line: 1190, baseType: !363, size: 64, offset: 1344)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3711, file: !235, line: 1191, baseType: !363, size: 64, offset: 1408)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3711, file: !235, line: 1192, baseType: !363, size: 64, offset: 1472)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "data_page_size", scope: !3711, file: !235, line: 1193, baseType: !363, size: 64, offset: 1536)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "code_page_size", scope: !3711, file: !235, line: 1194, baseType: !363, size: 64, offset: 1600)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "aux_size", scope: !3711, file: !235, line: 1195, baseType: !363, size: 64, offset: 1664)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler_context", scope: !3253, file: !235, line: 812, baseType: !20, size: 64, offset: 8000)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "tp_event", scope: !3253, file: !235, line: 820, baseType: !3046, size: 64, offset: 8064)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3253, file: !235, line: 821, baseType: !3233, size: 64, offset: 8128)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !3253, file: !235, line: 828, baseType: !3880, size: 64, offset: 8192)
!3880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3881, size: 64)
!3881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup", file: !235, line: 1046, size: 1664, elements: !3882)
!3882 = !{!3883, !4141}
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "css", scope: !3881, file: !235, line: 1047, baseType: !3884, size: 1600)
!3884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys_state", file: !3885, line: 152, size: 1600, elements: !3886)
!3885 = !DIFile(filename: "./include/linux/cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdd4e53e0d7da49aa5e005884486de6")
!3886 = !{!3887, !3997, !4125, !4126, !4127, !4128, !4129, !4130, !4131, !4132, !4133, !4134, !4140}
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3884, file: !3885, line: 154, baseType: !3888, size: 64)
!3888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3889, size: 64)
!3889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup", file: !3885, line: 389, size: 7872, elements: !3890)
!3890 = !{!3891, !3892, !3893, !3894, !3895, !3896, !3897, !3898, !3899, !3900, !3901, !3902, !3903, !3904, !3910, !3911, !3915, !3916, !3917, !3918, !3919, !3924, !3940, !3941, !3943, !3944, !3945, !3967, !3968, !3969, !3970, !3976, !3977, !3978, !3979, !3980, !3984, !3987, !3988, !3995}
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !3889, file: !3885, line: 391, baseType: !3884, size: 1600)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3889, file: !3885, line: 393, baseType: !39, size: 64, offset: 1600)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3889, file: !3885, line: 401, baseType: !22, size: 32, offset: 1664)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !3889, file: !3885, line: 404, baseType: !22, size: 32, offset: 1696)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "nr_descendants", scope: !3889, file: !3885, line: 417, baseType: !22, size: 32, offset: 1728)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dying_descendants", scope: !3889, file: !3885, line: 418, baseType: !22, size: 32, offset: 1760)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "max_descendants", scope: !3889, file: !3885, line: 419, baseType: !22, size: 32, offset: 1792)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_csets", scope: !3889, file: !3885, line: 432, baseType: !22, size: 32, offset: 1824)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_domain_children", scope: !3889, file: !3885, line: 433, baseType: !22, size: 32, offset: 1856)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_threaded_children", scope: !3889, file: !3885, line: 434, baseType: !22, size: 32, offset: 1888)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threaded_children", scope: !3889, file: !3885, line: 436, baseType: !22, size: 32, offset: 1920)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "kill_seq", scope: !3889, file: !3885, line: 439, baseType: !7, size: 32, offset: 1952)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3889, file: !3885, line: 441, baseType: !2584, size: 64, offset: 1984)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "procs_file", scope: !3889, file: !3885, line: 442, baseType: !3905, size: 448, offset: 2048)
!3905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_file", file: !3885, line: 138, size: 448, elements: !3906)
!3906 = !{!3907, !3908, !3909}
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3905, file: !3885, line: 140, baseType: !2584, size: 64)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "notified_at", scope: !3905, file: !3885, line: 141, baseType: !39, size: 64, offset: 64)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "notify_timer", scope: !3905, file: !3885, line: 142, baseType: !2320, size: 320, offset: 128)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !3889, file: !3885, line: 443, baseType: !3905, size: 448, offset: 2496)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "psi_files", scope: !3889, file: !3885, line: 446, baseType: !3912, offset: 2944)
!3912 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3905, elements: !3913)
!3913 = !{!3914}
!3914 = !DISubrange(count: 0)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_control", scope: !3889, file: !3885, line: 455, baseType: !93, size: 16, offset: 2944)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_ss_mask", scope: !3889, file: !3885, line: 456, baseType: !93, size: 16, offset: 2960)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_control", scope: !3889, file: !3885, line: 457, baseType: !93, size: 16, offset: 2976)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_ss_mask", scope: !3889, file: !3885, line: 458, baseType: !93, size: 16, offset: 2992)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !3889, file: !3885, line: 461, baseType: !3920, size: 896, offset: 3008)
!3920 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3921, size: 896, elements: !3922)
!3921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3884, size: 64)
!3922 = !{!3923}
!3923 = !DISubrange(count: 14)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3889, file: !3885, line: 463, baseType: !3925, size: 64, offset: 3904)
!3925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3926, size: 64)
!3926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_root", file: !3885, line: 537, size: 41664, elements: !3927)
!3927 = !{!3928, !3929, !3930, !3931, !3932, !3933, !3934, !3935, !3936, !3937, !3938}
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "kf_root", scope: !3926, file: !3885, line: 538, baseType: !2604, size: 64)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_mask", scope: !3926, file: !3885, line: 541, baseType: !7, size: 32, offset: 64)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy_id", scope: !3926, file: !3885, line: 544, baseType: !22, size: 32, offset: 96)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "root_list", scope: !3926, file: !3885, line: 547, baseType: !97, size: 128, offset: 128)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3926, file: !3885, line: 548, baseType: !648, size: 128, align: 64, offset: 256)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !3926, file: !3885, line: 555, baseType: !3889, size: 7872, offset: 384)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_ancestor_storage", scope: !3926, file: !3885, line: 558, baseType: !3888, size: 64, offset: 8256)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgrps", scope: !3926, file: !3885, line: 561, baseType: !49, size: 32, offset: 8320)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3926, file: !3885, line: 564, baseType: !7, size: 32, offset: 8352)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_path", scope: !3926, file: !3885, line: 567, baseType: !3195, size: 32768, offset: 8384)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3926, file: !3885, line: 570, baseType: !3939, size: 512, offset: 41152)
!3939 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 512, elements: !1485)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "cset_links", scope: !3889, file: !3885, line: 469, baseType: !97, size: 128, offset: 3968)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "e_csets", scope: !3889, file: !3885, line: 478, baseType: !3942, size: 1792, offset: 4096)
!3942 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 1792, elements: !3922)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cgrp", scope: !3889, file: !3885, line: 487, baseType: !3888, size: 64, offset: 5888)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "old_dom_cgrp", scope: !3889, file: !3885, line: 488, baseType: !3888, size: 64, offset: 5952)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_cpu", scope: !3889, file: !3885, line: 491, baseType: !3946, size: 64, offset: 6016)
!3946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3947, size: 64)
!3947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_rstat_cpu", file: !3885, line: 327, size: 896, elements: !3948)
!3948 = !{!3949, !3952, !3962, !3963, !3964, !3965, !3966}
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "bsync", scope: !3947, file: !3885, line: 332, baseType: !3950)
!3950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !3951, line: 64, elements: !633)
!3951 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !3947, file: !3885, line: 333, baseType: !3953, size: 192)
!3953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_base_stat", file: !3885, line: 299, size: 192, elements: !3954)
!3954 = !{!3955}
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "cputime", scope: !3953, file: !3885, line: 300, baseType: !3956, size: 192)
!3956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime", file: !3957, line: 17, size: 192, elements: !3958)
!3957 = !DIFile(filename: "./include/linux/sched/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b17de761385ab6ff6e0b9d14b072923b")
!3958 = !{!3959, !3960, !3961}
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3956, file: !3957, line: 18, baseType: !363, size: 64)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3956, file: !3957, line: 19, baseType: !363, size: 64, offset: 64)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3956, file: !3957, line: 20, baseType: !365, size: 64, offset: 128)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !3947, file: !3885, line: 339, baseType: !3953, size: 192, offset: 192)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_bstat", scope: !3947, file: !3885, line: 347, baseType: !3953, size: 192, offset: 384)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "last_subtree_bstat", scope: !3947, file: !3885, line: 353, baseType: !3953, size: 192, offset: 576)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "updated_children", scope: !3947, file: !3885, line: 366, baseType: !3888, size: 64, offset: 768)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "updated_next", scope: !3947, file: !3885, line: 367, baseType: !3888, size: 64, offset: 832)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_list", scope: !3889, file: !3885, line: 492, baseType: !97, size: 128, offset: 6080)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !3889, file: !3885, line: 495, baseType: !3953, size: 192, offset: 6208)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !3889, file: !3885, line: 496, baseType: !3953, size: 192, offset: 6400)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3889, file: !3885, line: 497, baseType: !3971, size: 192, offset: 6592)
!3971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !296, line: 324, size: 192, elements: !3972)
!3972 = !{!3973, !3974, !3975}
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3971, file: !296, line: 326, baseType: !363, size: 64)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3971, file: !296, line: 327, baseType: !363, size: 64, offset: 64)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3971, file: !296, line: 328, baseType: !455, size: 32, offset: 128)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "pidlists", scope: !3889, file: !3885, line: 503, baseType: !97, size: 128, offset: 6784)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "pidlist_mutex", scope: !3889, file: !3885, line: 504, baseType: !668, size: 256, offset: 6912)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "offline_waitq", scope: !3889, file: !3885, line: 507, baseType: !54, size: 192, offset: 7168)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_work", scope: !3889, file: !3885, line: 510, baseType: !952, size: 256, offset: 7360)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !3889, file: !3885, line: 513, baseType: !3981, size: 64, offset: 7616)
!3981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3982, size: 64)
!3982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psi_group", file: !3983, line: 214, elements: !633)
!3983 = !DIFile(filename: "./include/linux/psi_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3153bfbcc4370f75208e4d12aca55f1")
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !3889, file: !3885, line: 516, baseType: !3985, offset: 7680)
!3985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_bpf", file: !3986, line: 76, elements: !633)
!3986 = !DIFile(filename: "./include/linux/bpf-cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cdb48335f2a87696923f57fec8235c0")
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_count", scope: !3889, file: !3885, line: 519, baseType: !49, size: 32, offset: 7680)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "freezer", scope: !3889, file: !3885, line: 522, baseType: !3989, size: 128, offset: 7712)
!3989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_freezer_state", file: !3885, line: 370, size: 128, elements: !3990)
!3990 = !{!3991, !3992, !3993, !3994}
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3989, file: !3885, line: 372, baseType: !825, size: 8)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "e_freeze", scope: !3989, file: !3885, line: 375, baseType: !22, size: 32, offset: 32)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_descendants", scope: !3989, file: !3885, line: 380, baseType: !22, size: 32, offset: 64)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_tasks", scope: !3989, file: !3885, line: 386, baseType: !22, size: 32, offset: 96)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "ancestors", scope: !3889, file: !3885, line: 529, baseType: !3996, offset: 7872)
!3996 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3888, elements: !1057)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3884, file: !3885, line: 157, baseType: !3998, size: 64, offset: 64)
!3998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3999, size: 64)
!3999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys", file: !3885, line: 669, size: 1984, elements: !4000)
!4000 = !{!4001, !4005, !4009, !4013, !4014, !4015, !4016, !4020, !4024, !4025, !4031, !4035, !4036, !4037, !4066, !4070, !4074, !4075, !4076, !4077, !4078, !4079, !4080, !4081, !4082, !4083, !4084, !4085, !4086, !4123, !4124}
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "css_alloc", scope: !3999, file: !3885, line: 670, baseType: !4002, size: 64)
!4002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4003, size: 64)
!4003 = !DISubroutineType(types: !4004)
!4004 = !{!3921, !3921}
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "css_online", scope: !3999, file: !3885, line: 671, baseType: !4006, size: 64, offset: 64)
!4006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4007, size: 64)
!4007 = !DISubroutineType(types: !4008)
!4008 = !{!22, !3921}
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "css_offline", scope: !3999, file: !3885, line: 672, baseType: !4010, size: 64, offset: 128)
!4010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4011, size: 64)
!4011 = !DISubroutineType(types: !4012)
!4012 = !{null, !3921}
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "css_released", scope: !3999, file: !3885, line: 673, baseType: !4010, size: 64, offset: 192)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "css_free", scope: !3999, file: !3885, line: 674, baseType: !4010, size: 64, offset: 256)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "css_reset", scope: !3999, file: !3885, line: 675, baseType: !4010, size: 64, offset: 320)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "css_rstat_flush", scope: !3999, file: !3885, line: 676, baseType: !4017, size: 64, offset: 384)
!4017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4018, size: 64)
!4018 = !DISubroutineType(types: !4019)
!4019 = !{null, !3921, !22}
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "css_extra_stat_show", scope: !3999, file: !3885, line: 677, baseType: !4021, size: 64, offset: 448)
!4021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4022, size: 64)
!4022 = !DISubroutineType(types: !4023)
!4023 = !{!22, !2629, !3921}
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "css_local_stat_show", scope: !3999, file: !3885, line: 679, baseType: !4021, size: 64, offset: 512)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "can_attach", scope: !3999, file: !3885, line: 682, baseType: !4026, size: 64, offset: 576)
!4026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4027, size: 64)
!4027 = !DISubroutineType(types: !4028)
!4028 = !{!22, !4029}
!4029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4030, size: 64)
!4030 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_taskset", file: !3885, line: 30, flags: DIFlagFwdDecl)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_attach", scope: !3999, file: !3885, line: 683, baseType: !4032, size: 64, offset: 640)
!4032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4033, size: 64)
!4033 = !DISubroutineType(types: !4034)
!4034 = !{null, !4029}
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !3999, file: !3885, line: 684, baseType: !4032, size: 64, offset: 704)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "post_attach", scope: !3999, file: !3885, line: 685, baseType: !3140, size: 64, offset: 768)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "can_fork", scope: !3999, file: !3885, line: 686, baseType: !4038, size: 64, offset: 832)
!4038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4039, size: 64)
!4039 = !DISubroutineType(types: !4040)
!4040 = !{!22, !294, !4041}
!4041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4042, size: 64)
!4042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !3885, line: 209, size: 4736, elements: !4043)
!4043 = !{!4044, !4045, !4046, !4047, !4048, !4049, !4050, !4051, !4052, !4053, !4054, !4055, !4056, !4057, !4058, !4059, !4060, !4061, !4062, !4063, !4064, !4065}
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !4042, file: !3885, line: 215, baseType: !3920, size: 896)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4042, file: !3885, line: 218, baseType: !311, size: 32, offset: 896)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cset", scope: !4042, file: !3885, line: 226, baseType: !4041, size: 64, offset: 960)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cgrp", scope: !4042, file: !3885, line: 229, baseType: !3888, size: 64, offset: 1024)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !4042, file: !3885, line: 232, baseType: !22, size: 32, offset: 1088)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !4042, file: !3885, line: 241, baseType: !97, size: 128, offset: 1152)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "mg_tasks", scope: !4042, file: !3885, line: 242, baseType: !97, size: 128, offset: 1280)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "dying_tasks", scope: !4042, file: !3885, line: 243, baseType: !97, size: 128, offset: 1408)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "task_iters", scope: !4042, file: !3885, line: 246, baseType: !97, size: 128, offset: 1536)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "e_cset_node", scope: !4042, file: !3885, line: 255, baseType: !3942, size: 1792, offset: 1664)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets", scope: !4042, file: !3885, line: 258, baseType: !97, size: 128, offset: 3456)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets_node", scope: !4042, file: !3885, line: 259, baseType: !97, size: 128, offset: 3584)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !4042, file: !3885, line: 265, baseType: !720, size: 128, offset: 3712)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_links", scope: !4042, file: !3885, line: 271, baseType: !97, size: 128, offset: 3840)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_preload_node", scope: !4042, file: !3885, line: 277, baseType: !97, size: 128, offset: 3968)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_preload_node", scope: !4042, file: !3885, line: 278, baseType: !97, size: 128, offset: 4096)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "mg_node", scope: !4042, file: !3885, line: 279, baseType: !97, size: 128, offset: 4224)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_cgrp", scope: !4042, file: !3885, line: 288, baseType: !3888, size: 64, offset: 4352)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cgrp", scope: !4042, file: !3885, line: 289, baseType: !3888, size: 64, offset: 4416)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cset", scope: !4042, file: !3885, line: 290, baseType: !4041, size: 64, offset: 4480)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !4042, file: !3885, line: 293, baseType: !825, size: 8, offset: 4544)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !4042, file: !3885, line: 296, baseType: !648, size: 128, align: 64, offset: 4608)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_fork", scope: !3999, file: !3885, line: 688, baseType: !4067, size: 64, offset: 896)
!4067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4068, size: 64)
!4068 = !DISubroutineType(types: !4069)
!4069 = !{null, !294, !4041}
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "fork", scope: !3999, file: !3885, line: 689, baseType: !4071, size: 64, offset: 960)
!4071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4072, size: 64)
!4072 = !DISubroutineType(types: !4073)
!4073 = !{null, !294}
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !3999, file: !3885, line: 690, baseType: !4071, size: 64, offset: 1024)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3999, file: !3885, line: 691, baseType: !4071, size: 64, offset: 1088)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !3999, file: !3885, line: 692, baseType: !4010, size: 64, offset: 1152)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3999, file: !3885, line: 694, baseType: !825, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_on_dfl", scope: !3999, file: !3885, line: 707, baseType: !825, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !3999, file: !3885, line: 719, baseType: !825, size: 1, offset: 1218, flags: DIFlagBitField, extraData: i64 1216)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3999, file: !3885, line: 722, baseType: !22, size: 32, offset: 1248)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3999, file: !3885, line: 723, baseType: !16, size: 64, offset: 1280)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_name", scope: !3999, file: !3885, line: 726, baseType: !16, size: 64, offset: 1344)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3999, file: !3885, line: 729, baseType: !3925, size: 64, offset: 1408)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "css_idr", scope: !3999, file: !3885, line: 732, baseType: !741, size: 192, offset: 1472)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "cfts", scope: !3999, file: !3885, line: 738, baseType: !97, size: 128, offset: 1664)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cftypes", scope: !3999, file: !3885, line: 744, baseType: !4087, size: 64, offset: 1792)
!4087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4088, size: 64)
!4088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cftype", file: !3885, line: 580, size: 1728, elements: !4089)
!4089 = !{!4090, !4091, !4092, !4093, !4094, !4095, !4096, !4097, !4099, !4100, !4101, !4105, !4109, !4110, !4111, !4112, !4113, !4117, !4121, !4122}
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4088, file: !3885, line: 586, baseType: !3939, size: 512)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4088, file: !3885, line: 587, baseType: !39, size: 64, offset: 512)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !4088, file: !3885, line: 593, baseType: !35, size: 64, offset: 576)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4088, file: !3885, line: 596, baseType: !7, size: 32, offset: 640)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "file_offset", scope: !4088, file: !3885, line: 604, baseType: !7, size: 32, offset: 672)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4088, file: !3885, line: 610, baseType: !3998, size: 64, offset: 704)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4088, file: !3885, line: 611, baseType: !97, size: 128, offset: 768)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "kf_ops", scope: !4088, file: !3885, line: 612, baseType: !4098, size: 64, offset: 896)
!4098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2617, size: 64)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4088, file: !3885, line: 614, baseType: !2620, size: 64, offset: 960)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4088, file: !3885, line: 615, baseType: !2678, size: 64, offset: 1024)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "read_u64", scope: !4088, file: !3885, line: 621, baseType: !4102, size: 64, offset: 1088)
!4102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4103, size: 64)
!4103 = !DISubroutineType(types: !4104)
!4104 = !{!363, !3921, !4087}
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "read_s64", scope: !4088, file: !3885, line: 625, baseType: !4106, size: 64, offset: 1152)
!4106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4107, size: 64)
!4107 = !DISubroutineType(types: !4108)
!4108 = !{!374, !3921, !4087}
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4088, file: !3885, line: 628, baseType: !2659, size: 64, offset: 1216)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4088, file: !3885, line: 631, baseType: !2647, size: 64, offset: 1280)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4088, file: !3885, line: 632, baseType: !2655, size: 64, offset: 1344)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4088, file: !3885, line: 633, baseType: !2651, size: 64, offset: 1408)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "write_u64", scope: !4088, file: !3885, line: 640, baseType: !4114, size: 64, offset: 1472)
!4114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4115, size: 64)
!4115 = !DISubroutineType(types: !4116)
!4116 = !{!22, !3921, !4087, !363}
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "write_s64", scope: !4088, file: !3885, line: 645, baseType: !4118, size: 64, offset: 1536)
!4118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4119, size: 64)
!4119 = !DISubroutineType(types: !4120)
!4120 = !{!22, !3921, !4087, !374}
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4088, file: !3885, line: 654, baseType: !2686, size: 64, offset: 1600)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4088, file: !3885, line: 657, baseType: !2693, size: 64, offset: 1664)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cftypes", scope: !3999, file: !3885, line: 745, baseType: !4087, size: 64, offset: 1856)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "depends_on", scope: !3999, file: !3885, line: 754, baseType: !7, size: 32, offset: 1920)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !3884, file: !3885, line: 160, baseType: !1629, size: 128, offset: 128)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3884, file: !3885, line: 163, baseType: !97, size: 128, offset: 256)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3884, file: !3885, line: 164, baseType: !97, size: 128, offset: 384)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_node", scope: !3884, file: !3885, line: 167, baseType: !97, size: 128, offset: 512)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3884, file: !3885, line: 173, baseType: !22, size: 32, offset: 640)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3884, file: !3885, line: 175, baseType: !7, size: 32, offset: 672)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "serial_nr", scope: !3884, file: !3885, line: 183, baseType: !363, size: 64, offset: 704)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "online_cnt", scope: !3884, file: !3885, line: 189, baseType: !49, size: 32, offset: 768)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !3884, file: !3885, line: 192, baseType: !952, size: 256, offset: 832)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_rwork", scope: !3884, file: !3885, line: 193, baseType: !4135, size: 448, offset: 1088)
!4135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !953, line: 120, size: 448, elements: !4136)
!4136 = !{!4137, !4138, !4139}
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4135, file: !953, line: 121, baseType: !952, size: 256)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4135, file: !953, line: 122, baseType: !648, size: 128, align: 64, offset: 256)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4135, file: !953, line: 125, baseType: !3028, size: 64, offset: 384)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3884, file: !3885, line: 199, baseType: !3921, size: 64, offset: 1536)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3881, file: !235, line: 1048, baseType: !4142, size: 64, offset: 1600)
!4142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4143, size: 64)
!4143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup_info", file: !235, line: 1039, size: 256, elements: !4144)
!4144 = !{!4145, !4146, !4147, !4148}
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4143, file: !235, line: 1040, baseType: !363, size: 64)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !4143, file: !235, line: 1041, baseType: !363, size: 64, offset: 64)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !4143, file: !235, line: 1042, baseType: !363, size: 64, offset: 128)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4143, file: !235, line: 1043, baseType: !22, size: 32, offset: 192)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !3253, file: !235, line: 832, baseType: !20, size: 64, offset: 8256)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "sb_list", scope: !3253, file: !235, line: 834, baseType: !97, size: 128, offset: 8320)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "orig_type", scope: !3253, file: !235, line: 842, baseType: !306, size: 32, offset: 8448)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1430, file: !116, line: 524, baseType: !7, size: 32, offset: 8320)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1430, file: !116, line: 525, baseType: !4154, size: 64, offset: 8384)
!4154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4155, size: 64)
!4155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4156, size: 64)
!4156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !4157, line: 28, size: 192, elements: !4158)
!4157 = !DIFile(filename: "./include/linux/tracepoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aeb3837c9edbef1074628f52e8cfdb75")
!4158 = !{!4159, !4160, !4161}
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !4156, file: !4157, line: 29, baseType: !16, size: 64)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "eval_string", scope: !4156, file: !4157, line: 30, baseType: !16, size: 64, offset: 64)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "eval_value", scope: !4156, file: !4157, line: 31, baseType: !39, size: 64, offset: 128)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1430, file: !116, line: 526, baseType: !7, size: 32, offset: 8448)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1430, file: !116, line: 533, baseType: !20, size: 64, offset: 8512)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1430, file: !116, line: 534, baseType: !7, size: 32, offset: 8576)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1430, file: !116, line: 535, baseType: !290, size: 64, offset: 8640)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1430, file: !116, line: 536, baseType: !7, size: 32, offset: 8704)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1430, file: !116, line: 539, baseType: !22, size: 32, offset: 8736)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1430, file: !116, line: 540, baseType: !3129, size: 64, offset: 8768)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1430, file: !116, line: 563, baseType: !97, size: 128, offset: 8832)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1430, file: !116, line: 565, baseType: !97, size: 128, offset: 8960)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1430, file: !116, line: 568, baseType: !3140, size: 64, offset: 9088)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1430, file: !116, line: 570, baseType: !49, size: 32, offset: 9152)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1406, file: !244, line: 2382, baseType: !1405, size: 64, offset: 448)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1406, file: !244, line: 2383, baseType: !716, size: 64, offset: 512)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1406, file: !244, line: 2385, baseType: !4176, offset: 576)
!4176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2995, line: 206, elements: !633)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1406, file: !244, line: 2386, baseType: !4176, offset: 576)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1406, file: !244, line: 2387, baseType: !4176, offset: 576)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1406, file: !244, line: 2388, baseType: !4180, offset: 576)
!4180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4176, elements: !704)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1406, file: !244, line: 2390, baseType: !4176, offset: 576)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1406, file: !244, line: 2391, baseType: !4176, offset: 576)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1406, file: !244, line: 2392, baseType: !4176, offset: 576)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1406, file: !244, line: 2393, baseType: !4176, offset: 576)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1397, file: !244, line: 1197, baseType: !4186, size: 64, offset: 384)
!4186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4187, size: 64)
!4187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4188)
!4188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !244, line: 2057, size: 1664, elements: !4189)
!4189 = !{!4190, !4194, !4198, !4199, !4203, !4207, !4211, !4212, !4213, !4217, !4221, !4225, !4226, !4227, !4233, !4237, !4238, !4242, !4243, !4244, !4245, !4249, !4253, !4300, !4315, !4316}
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !4188, file: !244, line: 2058, baseType: !4191, size: 64)
!4191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4192, size: 64)
!4192 = !DISubroutineType(types: !4193)
!4193 = !{!1195, !1396}
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !4188, file: !244, line: 2059, baseType: !4195, size: 64, offset: 64)
!4195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4196, size: 64)
!4196 = !DISubroutineType(types: !4197)
!4197 = !{null, !1195}
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4188, file: !244, line: 2060, baseType: !4195, size: 64, offset: 128)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !4188, file: !244, line: 2062, baseType: !4200, size: 64, offset: 192)
!4200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4201, size: 64)
!4201 = !DISubroutineType(types: !4202)
!4202 = !{null, !1195, !22}
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !4188, file: !244, line: 2063, baseType: !4204, size: 64, offset: 256)
!4204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4205, size: 64)
!4205 = !DISubroutineType(types: !4206)
!4206 = !{!22, !1195, !1852}
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !4188, file: !244, line: 2064, baseType: !4208, size: 64, offset: 320)
!4208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4209, size: 64)
!4209 = !DISubroutineType(types: !4210)
!4210 = !{!22, !1195}
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !4188, file: !244, line: 2065, baseType: !4195, size: 64, offset: 384)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !4188, file: !244, line: 2066, baseType: !1425, size: 64, offset: 448)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !4188, file: !244, line: 2067, baseType: !4214, size: 64, offset: 512)
!4214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4215, size: 64)
!4215 = !DISubroutineType(types: !4216)
!4216 = !{!22, !1396, !22}
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !4188, file: !244, line: 2068, baseType: !4218, size: 64, offset: 576)
!4218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4219, size: 64)
!4219 = !DISubroutineType(types: !4220)
!4220 = !{!22, !1396, !243}
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !4188, file: !244, line: 2069, baseType: !4222, size: 64, offset: 640)
!4222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4223, size: 64)
!4223 = !DISubroutineType(types: !4224)
!4224 = !{!22, !1396}
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !4188, file: !244, line: 2070, baseType: !4218, size: 64, offset: 704)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !4188, file: !244, line: 2071, baseType: !4222, size: 64, offset: 768)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !4188, file: !244, line: 2072, baseType: !4228, size: 64, offset: 832)
!4228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4229, size: 64)
!4229 = !DISubroutineType(types: !4230)
!4230 = !{!22, !1160, !4231}
!4231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4232, size: 64)
!4232 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !244, line: 62, flags: DIFlagFwdDecl)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !4188, file: !244, line: 2073, baseType: !4234, size: 64, offset: 896)
!4234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4235, size: 64)
!4235 = !DISubroutineType(types: !4236)
!4236 = !{!22, !1396, !2876, !913}
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !4188, file: !244, line: 2074, baseType: !1425, size: 64, offset: 960)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !4188, file: !244, line: 2076, baseType: !4239, size: 64, offset: 1024)
!4239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4240, size: 64)
!4240 = !DISubroutineType(types: !4241)
!4241 = !{!22, !2629, !1160}
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !4188, file: !244, line: 2077, baseType: !4239, size: 64, offset: 1088)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !4188, file: !244, line: 2078, baseType: !4239, size: 64, offset: 1152)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !4188, file: !244, line: 2079, baseType: !4239, size: 64, offset: 1216)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !4188, file: !244, line: 2081, baseType: !4246, size: 64, offset: 1280)
!4246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4247, size: 64)
!4247 = !DISubroutineType(types: !4248)
!4248 = !{!1347, !1396, !22, !913, !35, !41}
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !4188, file: !244, line: 2082, baseType: !4250, size: 64, offset: 1344)
!4250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4251, size: 64)
!4251 = !DISubroutineType(types: !4252)
!4252 = !{!1347, !1396, !22, !16, !35, !41}
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !4188, file: !244, line: 2083, baseType: !4254, size: 64, offset: 1408)
!4254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4255, size: 64)
!4255 = !DISubroutineType(types: !4256)
!4256 = !{!4257, !1195}
!4257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4258, size: 64)
!4258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4259, size: 64)
!4259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !249, line: 296, size: 1664, elements: !4260)
!4260 = !{!4261, !4262, !4263, !4264, !4265, !4266, !4267, !4268, !4269, !4285, !4286, !4287}
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !4259, file: !249, line: 297, baseType: !720, size: 128)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !4259, file: !249, line: 298, baseType: !97, size: 128, offset: 128)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !4259, file: !249, line: 299, baseType: !97, size: 128, offset: 256)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !4259, file: !249, line: 300, baseType: !97, size: 128, offset: 384)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !4259, file: !249, line: 301, baseType: !668, size: 256, offset: 512)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !4259, file: !249, line: 302, baseType: !59, size: 32, offset: 768)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !4259, file: !249, line: 303, baseType: !49, size: 32, offset: 800)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !4259, file: !249, line: 304, baseType: !1396, size: 64, offset: 832)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !4259, file: !249, line: 305, baseType: !4270, size: 64, offset: 896)
!4270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !249, line: 68, size: 64, elements: !4271)
!4271 = !{!4272, !4284}
!4272 = !DIDerivedType(tag: DW_TAG_member, scope: !4270, file: !249, line: 69, baseType: !4273, size: 32)
!4273 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4270, file: !249, line: 69, size: 32, elements: !4274)
!4274 = !{!4275, !4276, !4277}
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4273, file: !249, line: 70, baseType: !798, size: 32)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4273, file: !249, line: 71, baseType: !806, size: 32)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !4273, file: !249, line: 72, baseType: !4278, size: 32)
!4278 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !4279, line: 24, baseType: !4280)
!4279 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!4280 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4279, line: 22, size: 32, elements: !4281)
!4281 = !{!4282}
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4280, file: !4279, line: 23, baseType: !4283, size: 32)
!4283 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !4279, line: 20, baseType: !804)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4270, file: !249, line: 74, baseType: !248, size: 32, offset: 32)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !4259, file: !249, line: 306, baseType: !41, size: 64, offset: 960)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !4259, file: !249, line: 307, baseType: !39, size: 64, offset: 1024)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !4259, file: !249, line: 308, baseType: !4288, size: 576, offset: 1088)
!4288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !249, line: 205, size: 576, elements: !4289)
!4289 = !{!4290, !4292, !4293, !4294, !4295, !4296, !4297, !4298, !4299}
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !4288, file: !249, line: 206, baseType: !4291, size: 64)
!4291 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !249, line: 66, baseType: !43)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !4288, file: !249, line: 207, baseType: !4291, size: 64, offset: 64)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !4288, file: !249, line: 208, baseType: !4291, size: 64, offset: 128)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !4288, file: !249, line: 209, baseType: !4291, size: 64, offset: 192)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !4288, file: !249, line: 210, baseType: !4291, size: 64, offset: 256)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !4288, file: !249, line: 211, baseType: !4291, size: 64, offset: 320)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !4288, file: !249, line: 212, baseType: !4291, size: 64, offset: 384)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !4288, file: !249, line: 213, baseType: !861, size: 64, offset: 448)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !4288, file: !249, line: 214, baseType: !861, size: 64, offset: 512)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !4188, file: !244, line: 2085, baseType: !4301, size: 64, offset: 1472)
!4301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4302, size: 64)
!4302 = !DISubroutineType(types: !4303)
!4303 = !{!1050, !1396, !4304}
!4304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4305, size: 64)
!4305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !4306, line: 15, size: 256, elements: !4307)
!4306 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!4307 = !{!4308, !4309, !4310, !4311, !4312}
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !4305, file: !4306, line: 16, baseType: !750, size: 32)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !4305, file: !4306, line: 19, baseType: !22, size: 32, offset: 32)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !4305, file: !4306, line: 26, baseType: !39, size: 64, offset: 64)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !4305, file: !4306, line: 33, baseType: !39, size: 64, offset: 128)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !4305, file: !4306, line: 36, baseType: !4313, size: 64, offset: 192)
!4313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4314, size: 64)
!4314 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !131, line: 33, flags: DIFlagFwdDecl)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !4188, file: !244, line: 2087, baseType: !4301, size: 64, offset: 1536)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4188, file: !244, line: 2089, baseType: !1425, size: 64, offset: 1600)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1397, file: !244, line: 1198, baseType: !4318, size: 64, offset: 448)
!4318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4319, size: 64)
!4319 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4320)
!4320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !249, line: 324, size: 704, elements: !4321)
!4321 = !{!4322, !4326, !4330, !4334, !4335, !4336, !4337, !4338, !4343, !4348, !4352}
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !4320, file: !249, line: 325, baseType: !4323, size: 64)
!4323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4324, size: 64)
!4324 = !DISubroutineType(types: !4325)
!4325 = !{!22, !4258}
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !4320, file: !249, line: 326, baseType: !4327, size: 64, offset: 64)
!4327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4328, size: 64)
!4328 = !DISubroutineType(types: !4329)
!4329 = !{!4258, !1396, !22}
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !4320, file: !249, line: 327, baseType: !4331, size: 64, offset: 128)
!4331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4332, size: 64)
!4332 = !DISubroutineType(types: !4333)
!4333 = !{null, !4258}
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !4320, file: !249, line: 328, baseType: !4323, size: 64, offset: 192)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !4320, file: !249, line: 329, baseType: !4323, size: 64, offset: 256)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !4320, file: !249, line: 330, baseType: !4323, size: 64, offset: 320)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !4320, file: !249, line: 331, baseType: !4214, size: 64, offset: 384)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !4320, file: !249, line: 334, baseType: !4339, size: 64, offset: 448)
!4339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4340, size: 64)
!4340 = !DISubroutineType(types: !4341)
!4341 = !{!4342, !1195}
!4342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4291, size: 64)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !4320, file: !249, line: 335, baseType: !4344, size: 64, offset: 512)
!4344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4345, size: 64)
!4345 = !DISubroutineType(types: !4346)
!4346 = !{!22, !1195, !4347}
!4347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4278, size: 64)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !4320, file: !249, line: 337, baseType: !4349, size: 64, offset: 576)
!4349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4350, size: 64)
!4350 = !DISubroutineType(types: !4351)
!4351 = !{!22, !1195, !4342}
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4320, file: !249, line: 339, baseType: !4353, size: 64, offset: 640)
!4353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4354, size: 64)
!4354 = !DISubroutineType(types: !4355)
!4355 = !{!22, !1396, !4356}
!4356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4270, size: 64)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1397, file: !244, line: 1199, baseType: !4358, size: 64, offset: 512)
!4358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4359, size: 64)
!4359 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4360)
!4360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !249, line: 430, size: 704, elements: !4361)
!4361 = !{!4362, !4366, !4367, !4371, !4372, !4373, !4388, !4411, !4415, !4416, !4439}
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !4360, file: !249, line: 431, baseType: !4363, size: 64)
!4363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4364, size: 64)
!4364 = !DISubroutineType(types: !4365)
!4365 = !{!22, !1396, !22, !22, !1316}
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !4360, file: !249, line: 432, baseType: !4214, size: 64, offset: 64)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !4360, file: !249, line: 433, baseType: !4368, size: 64, offset: 128)
!4368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4369, size: 64)
!4369 = !DISubroutineType(types: !4370)
!4370 = !{!22, !1396, !7}
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !4360, file: !249, line: 434, baseType: !4368, size: 64, offset: 192)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !4360, file: !249, line: 435, baseType: !4214, size: 64, offset: 256)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !4360, file: !249, line: 436, baseType: !4374, size: 64, offset: 320)
!4374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4375, size: 64)
!4375 = !DISubroutineType(types: !4376)
!4376 = !{!22, !1396, !22, !4377}
!4377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4378, size: 64)
!4378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !249, line: 417, size: 256, elements: !4379)
!4379 = !{!4380, !4381, !4382, !4383, !4384, !4385, !4386, !4387}
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !4378, file: !249, line: 418, baseType: !22, size: 32)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !4378, file: !249, line: 419, baseType: !7, size: 32, offset: 32)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !4378, file: !249, line: 420, baseType: !7, size: 32, offset: 64)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !4378, file: !249, line: 422, baseType: !7, size: 32, offset: 96)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !4378, file: !249, line: 423, baseType: !7, size: 32, offset: 128)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !4378, file: !249, line: 424, baseType: !7, size: 32, offset: 160)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !4378, file: !249, line: 425, baseType: !7, size: 32, offset: 192)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !4378, file: !249, line: 426, baseType: !7, size: 32, offset: 224)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !4360, file: !249, line: 437, baseType: !4389, size: 64, offset: 384)
!4389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4390, size: 64)
!4390 = !DISubroutineType(types: !4391)
!4391 = !{!22, !1396, !4270, !4392}
!4392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4393, size: 64)
!4393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !249, line: 345, size: 960, elements: !4394)
!4394 = !{!4395, !4396, !4397, !4398, !4399, !4400, !4401, !4402, !4403, !4404, !4405, !4406, !4407, !4408, !4409, !4410}
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !4393, file: !249, line: 346, baseType: !22, size: 32)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !4393, file: !249, line: 347, baseType: !363, size: 64, offset: 64)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !4393, file: !249, line: 348, baseType: !363, size: 64, offset: 128)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !4393, file: !249, line: 349, baseType: !363, size: 64, offset: 192)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !4393, file: !249, line: 350, baseType: !363, size: 64, offset: 256)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !4393, file: !249, line: 351, baseType: !363, size: 64, offset: 320)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !4393, file: !249, line: 352, baseType: !363, size: 64, offset: 384)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !4393, file: !249, line: 353, baseType: !374, size: 64, offset: 448)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !4393, file: !249, line: 355, baseType: !374, size: 64, offset: 512)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !4393, file: !249, line: 356, baseType: !22, size: 32, offset: 576)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !4393, file: !249, line: 357, baseType: !22, size: 32, offset: 608)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !4393, file: !249, line: 358, baseType: !363, size: 64, offset: 640)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !4393, file: !249, line: 359, baseType: !363, size: 64, offset: 704)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !4393, file: !249, line: 360, baseType: !363, size: 64, offset: 768)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !4393, file: !249, line: 361, baseType: !374, size: 64, offset: 832)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !4393, file: !249, line: 362, baseType: !22, size: 32, offset: 896)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !4360, file: !249, line: 438, baseType: !4412, size: 64, offset: 448)
!4412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4413, size: 64)
!4413 = !DISubroutineType(types: !4414)
!4414 = !{!22, !1396, !4356, !4392}
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !4360, file: !249, line: 440, baseType: !4389, size: 64, offset: 512)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !4360, file: !249, line: 441, baseType: !4417, size: 64, offset: 576)
!4417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4418, size: 64)
!4418 = !DISubroutineType(types: !4419)
!4419 = !{!22, !1396, !4420}
!4420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4421, size: 64)
!4421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !249, line: 411, size: 1408, elements: !4422)
!4422 = !{!4423, !4424}
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !4421, file: !249, line: 412, baseType: !7, size: 32)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !4421, file: !249, line: 413, baseType: !4425, size: 1344, offset: 64)
!4425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4426, size: 1344, elements: !704)
!4426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !249, line: 397, size: 448, elements: !4427)
!4427 = !{!4428, !4429, !4430, !4431, !4432, !4433, !4434, !4435, !4436, !4438}
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4426, file: !249, line: 398, baseType: !7, size: 32)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !4426, file: !249, line: 399, baseType: !7, size: 32, offset: 32)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !4426, file: !249, line: 401, baseType: !7, size: 32, offset: 64)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !4426, file: !249, line: 402, baseType: !7, size: 32, offset: 96)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !4426, file: !249, line: 403, baseType: !7, size: 32, offset: 128)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !4426, file: !249, line: 404, baseType: !7, size: 32, offset: 160)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !4426, file: !249, line: 405, baseType: !7, size: 32, offset: 192)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4426, file: !249, line: 406, baseType: !365, size: 64, offset: 256)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4426, file: !249, line: 407, baseType: !4437, size: 64, offset: 320)
!4437 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !25, line: 132, baseType: !363)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !4426, file: !249, line: 408, baseType: !4437, size: 64, offset: 384)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !4360, file: !249, line: 442, baseType: !4368, size: 64, offset: 640)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1397, file: !244, line: 1200, baseType: !4441, size: 64, offset: 576)
!4441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4442, size: 64)
!4442 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4443)
!4443 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !244, line: 54, flags: DIFlagFwdDecl)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1397, file: !244, line: 1201, baseType: !39, size: 64, offset: 640)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1397, file: !244, line: 1202, baseType: !39, size: 64, offset: 704)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1397, file: !244, line: 1203, baseType: !39, size: 64, offset: 768)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1397, file: !244, line: 1204, baseType: !1160, size: 64, offset: 832)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1397, file: !244, line: 1205, baseType: !845, size: 320, offset: 896)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1397, file: !244, line: 1206, baseType: !22, size: 32, offset: 1216)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1397, file: !244, line: 1207, baseType: !49, size: 32, offset: 1248)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1397, file: !244, line: 1209, baseType: !20, size: 64, offset: 1280)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1397, file: !244, line: 1211, baseType: !4453, size: 64, offset: 1344)
!4453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4454, size: 64)
!4454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4455, size: 64)
!4455 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4456)
!4456 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !244, line: 1211, flags: DIFlagFwdDecl)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1397, file: !244, line: 1223, baseType: !4458, size: 64, offset: 1408)
!4458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !1172, line: 34, size: 64, elements: !4459)
!4459 = !{!4460}
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4458, file: !1172, line: 35, baseType: !1175, size: 64)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1397, file: !244, line: 1224, baseType: !97, size: 128, offset: 1472)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1397, file: !244, line: 1225, baseType: !2104, size: 64, offset: 1600)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1397, file: !244, line: 1226, baseType: !4464, size: 64, offset: 1664)
!4464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4465, size: 64)
!4465 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !244, line: 1226, flags: DIFlagFwdDecl)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1397, file: !244, line: 1227, baseType: !4467, size: 64, offset: 1728)
!4467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4468, size: 64)
!4468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !255, line: 163, size: 6848, elements: !4469)
!4469 = !{!4470, !4471, !4472, !4473, !4474, !4475, !4476, !4477, !4478, !4479, !4480, !4481, !4482, !4517, !4518, !4519, !4520, !4521, !4522, !4523}
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4468, file: !255, line: 164, baseType: !363, size: 64)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !4468, file: !255, line: 165, baseType: !355, size: 192, align: 64, offset: 64)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_list", scope: !4468, file: !255, line: 166, baseType: !97, size: 128, offset: 256)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !4468, file: !255, line: 167, baseType: !39, size: 64, offset: 384)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "io_pages", scope: !4468, file: !255, line: 168, baseType: !39, size: 64, offset: 448)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !4468, file: !255, line: 170, baseType: !2727, size: 32, offset: 512)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !4468, file: !255, line: 171, baseType: !7, size: 32, offset: 544)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "min_ratio", scope: !4468, file: !255, line: 172, baseType: !7, size: 32, offset: 576)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "max_ratio", scope: !4468, file: !255, line: 173, baseType: !7, size: 32, offset: 608)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "max_prop_frac", scope: !4468, file: !255, line: 173, baseType: !7, size: 32, offset: 640)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "tot_write_bandwidth", scope: !4468, file: !255, line: 179, baseType: !661, size: 64, offset: 704)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "last_bdp_sleep", scope: !4468, file: !255, line: 184, baseType: !39, size: 64, offset: 768)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "wb", scope: !4468, file: !255, line: 186, baseType: !4483, size: 4672, offset: 832)
!4483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdi_writeback", file: !255, line: 105, size: 4672, elements: !4484)
!4484 = !{!4485, !4486, !4487, !4488, !4489, !4490, !4491, !4492, !4493, !4494, !4496, !4497, !4498, !4499, !4500, !4501, !4502, !4503, !4510, !4511, !4512, !4513, !4514, !4515, !4516}
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !4483, file: !255, line: 106, baseType: !4467, size: 64)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4483, file: !255, line: 108, baseType: !39, size: 64, offset: 64)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "last_old_flush", scope: !4483, file: !255, line: 109, baseType: !39, size: 64, offset: 128)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty", scope: !4483, file: !255, line: 111, baseType: !97, size: 128, offset: 192)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "b_io", scope: !4483, file: !255, line: 112, baseType: !97, size: 128, offset: 320)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "b_more_io", scope: !4483, file: !255, line: 113, baseType: !97, size: 128, offset: 448)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty_time", scope: !4483, file: !255, line: 114, baseType: !97, size: 128, offset: 576)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !4483, file: !255, line: 115, baseType: !59, size: 32, offset: 704)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_inodes", scope: !4483, file: !255, line: 117, baseType: !49, size: 32, offset: 736)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !4483, file: !255, line: 118, baseType: !4495, size: 1280, offset: 768)
!4495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1102, size: 1280, elements: !725)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "bw_time_stamp", scope: !4483, file: !255, line: 120, baseType: !39, size: 64, offset: 2048)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_stamp", scope: !4483, file: !255, line: 121, baseType: !39, size: 64, offset: 2112)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "written_stamp", scope: !4483, file: !255, line: 122, baseType: !39, size: 64, offset: 2176)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "write_bandwidth", scope: !4483, file: !255, line: 123, baseType: !39, size: 64, offset: 2240)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "avg_write_bandwidth", scope: !4483, file: !255, line: 124, baseType: !39, size: 64, offset: 2304)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_ratelimit", scope: !4483, file: !255, line: 132, baseType: !39, size: 64, offset: 2368)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "balanced_dirty_ratelimit", scope: !4483, file: !255, line: 133, baseType: !39, size: 64, offset: 2432)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "completions", scope: !4483, file: !255, line: 135, baseType: !4504, size: 384, offset: 2496)
!4504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fprop_local_percpu", file: !4505, line: 76, size: 384, elements: !4506)
!4505 = !DIFile(filename: "./include/linux/flex_proportions.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a71374c9cbe54a4b0f3b6bbea75a8cfc")
!4506 = !{!4507, !4508, !4509}
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !4504, file: !4505, line: 78, baseType: !1102, size: 320)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !4504, file: !4505, line: 80, baseType: !7, size: 32, offset: 320)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4504, file: !4505, line: 81, baseType: !455, size: 32, offset: 352)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_exceeded", scope: !4483, file: !255, line: 136, baseType: !22, size: 32, offset: 2880)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "start_all_reason", scope: !4483, file: !255, line: 137, baseType: !254, size: 32, offset: 2912)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "work_lock", scope: !4483, file: !255, line: 139, baseType: !59, size: 32, offset: 2944)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "work_list", scope: !4483, file: !255, line: 140, baseType: !97, size: 128, offset: 3008)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "dwork", scope: !4483, file: !255, line: 141, baseType: !3023, size: 704, offset: 3136)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "bw_dwork", scope: !4483, file: !255, line: 142, baseType: !3023, size: 704, offset: 3840)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_node", scope: !4483, file: !255, line: 144, baseType: !97, size: 128, offset: 4544)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "wb_list", scope: !4468, file: !255, line: 187, baseType: !97, size: 128, offset: 5504)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "wb_waitq", scope: !4468, file: !255, line: 193, baseType: !54, size: 192, offset: 5632)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4468, file: !255, line: 195, baseType: !2150, size: 64, offset: 5824)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4468, file: !255, line: 196, baseType: !3939, size: 512, offset: 5888)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4468, file: !255, line: 197, baseType: !2150, size: 64, offset: 6400)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "laptop_mode_wb_timer", scope: !4468, file: !255, line: 199, baseType: !2320, size: 320, offset: 6464)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "debug_dir", scope: !4468, file: !255, line: 202, baseType: !1160, size: 64, offset: 6784)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1397, file: !244, line: 1228, baseType: !4525, size: 64, offset: 1792)
!4525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4526, size: 64)
!4526 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !244, line: 1228, flags: DIFlagFwdDecl)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1397, file: !244, line: 1229, baseType: !720, size: 128, offset: 1856)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1397, file: !244, line: 1230, baseType: !7, size: 32, offset: 1984)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1397, file: !244, line: 1231, baseType: !4530, size: 2496, offset: 2048)
!4530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !249, line: 521, size: 2496, elements: !4531)
!4531 = !{!4532, !4533, !4534, !4536, !4568}
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4530, file: !249, line: 522, baseType: !7, size: 32)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !4530, file: !249, line: 523, baseType: !845, size: 320, offset: 64)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !4530, file: !249, line: 524, baseType: !4535, size: 192, offset: 384)
!4535 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1195, size: 192, elements: !704)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4530, file: !249, line: 525, baseType: !4537, size: 1728, offset: 576)
!4537 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4538, size: 1728, elements: !704)
!4538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !249, line: 222, size: 576, elements: !4539)
!4539 = !{!4540, !4560, !4561, !4562, !4563, !4564, !4565, !4566, !4567}
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !4538, file: !249, line: 223, baseType: !4541, size: 64)
!4541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4542, size: 64)
!4542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !249, line: 445, size: 256, elements: !4543)
!4543 = !{!4544, !4545, !4558, !4559}
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !4542, file: !249, line: 446, baseType: !22, size: 32)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !4542, file: !249, line: 447, baseType: !4546, size: 64, offset: 64)
!4546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4547, size: 64)
!4547 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4548)
!4548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !249, line: 312, size: 512, elements: !4549)
!4549 = !{!4550, !4551, !4552, !4553, !4554, !4555, !4556, !4557}
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !4548, file: !249, line: 313, baseType: !4214, size: 64)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !4548, file: !249, line: 314, baseType: !4214, size: 64, offset: 64)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !4548, file: !249, line: 315, baseType: !4214, size: 64, offset: 128)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !4548, file: !249, line: 316, baseType: !4214, size: 64, offset: 192)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !4548, file: !249, line: 317, baseType: !4323, size: 64, offset: 256)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !4548, file: !249, line: 318, baseType: !4323, size: 64, offset: 320)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !4548, file: !249, line: 319, baseType: !4323, size: 64, offset: 384)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4548, file: !249, line: 320, baseType: !4353, size: 64, offset: 448)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !4542, file: !249, line: 448, baseType: !1429, size: 64, offset: 128)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !4542, file: !249, line: 449, baseType: !4541, size: 64, offset: 192)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !4538, file: !249, line: 224, baseType: !22, size: 32, offset: 64)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !4538, file: !249, line: 226, baseType: !97, size: 128, offset: 128)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !4538, file: !249, line: 227, baseType: !39, size: 64, offset: 256)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !4538, file: !249, line: 228, baseType: !7, size: 32, offset: 320)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !4538, file: !249, line: 229, baseType: !7, size: 32, offset: 352)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !4538, file: !249, line: 230, baseType: !4291, size: 64, offset: 384)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !4538, file: !249, line: 231, baseType: !4291, size: 64, offset: 448)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !4538, file: !249, line: 232, baseType: !20, size: 64, offset: 512)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4530, file: !249, line: 526, baseType: !4569, size: 192, offset: 2304)
!4569 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4546, size: 192, elements: !704)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1397, file: !244, line: 1233, baseType: !4571, size: 2368, offset: 4544)
!4571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !244, line: 1184, size: 2368, elements: !4572)
!4572 = !{!4573, !4574, !4575}
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !4571, file: !244, line: 1185, baseType: !26, size: 16)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !4571, file: !244, line: 1186, baseType: !26, size: 16, offset: 16)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !4571, file: !244, line: 1187, baseType: !4576, size: 2304, offset: 64)
!4576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4577, size: 2304, elements: !704)
!4577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !4578, line: 12, size: 768, elements: !4579)
!4578 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!4579 = !{!4580, !4588, !4589, !4590, !4591}
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !4577, file: !4578, line: 13, baseType: !4581, size: 384)
!4581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !4582, line: 17, size: 384, elements: !4583)
!4582 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!4583 = !{!4584, !4585, !4586, !4587}
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !4581, file: !4582, line: 18, baseType: !22, size: 32)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !4581, file: !4582, line: 19, baseType: !22, size: 32, offset: 32)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !4581, file: !4582, line: 20, baseType: !54, size: 192, offset: 64)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !4581, file: !4582, line: 22, baseType: !648, size: 128, align: 64, offset: 256)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !4577, file: !4578, line: 14, baseType: !2095, size: 64, offset: 384)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !4577, file: !4578, line: 15, baseType: !3674, size: 64, offset: 448)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !4577, file: !4578, line: 16, baseType: !54, size: 192, offset: 512)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !4577, file: !4578, line: 17, baseType: !49, size: 32, offset: 704)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1397, file: !244, line: 1240, baseType: !20, size: 64, offset: 6912)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1397, file: !244, line: 1243, baseType: !305, size: 32, offset: 6976)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1397, file: !244, line: 1245, baseType: !861, size: 64, offset: 7040)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1397, file: !244, line: 1246, baseType: !861, size: 64, offset: 7104)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1397, file: !244, line: 1248, baseType: !306, size: 32, offset: 7168)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1397, file: !244, line: 1249, baseType: !4598, size: 64, offset: 7232)
!4598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4599, size: 64)
!4599 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !244, line: 634, flags: DIFlagFwdDecl)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1397, file: !244, line: 1252, baseType: !4601, size: 256, offset: 7296)
!4601 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 256, elements: !4602)
!4602 = !{!4603}
!4603 = !DISubrange(count: 32)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1397, file: !244, line: 1253, baseType: !4605, size: 128, offset: 7552)
!4605 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4606, line: 21, baseType: !4607)
!4606 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4607 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4606, line: 19, size: 128, elements: !4608)
!4608 = !{!4609}
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4607, file: !4606, line: 20, baseType: !4610, size: 128)
!4610 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 128, elements: !4611)
!4611 = !{!4612}
!4612 = !DISubrange(count: 16)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1397, file: !244, line: 1255, baseType: !7, size: 32, offset: 7680)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1397, file: !244, line: 1261, baseType: !668, size: 256, offset: 7744)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1397, file: !244, line: 1267, baseType: !16, size: 64, offset: 8000)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1397, file: !244, line: 1269, baseType: !4617, size: 64, offset: 8064)
!4617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4618, size: 64)
!4618 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4619)
!4619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !1162, line: 128, size: 1024, align: 512, elements: !4620)
!4620 = !{!4621, !4625, !4626, !4633, !4639, !4643, !4647, !4651, !4652, !4656, !4660, !4665, !4669}
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !4619, file: !1162, line: 129, baseType: !4622, size: 64)
!4622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4623, size: 64)
!4623 = !DISubroutineType(types: !4624)
!4624 = !{!22, !1160, !7}
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !4619, file: !1162, line: 130, baseType: !4622, size: 64, offset: 64)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !4619, file: !1162, line: 131, baseType: !4627, size: 64, offset: 128)
!4627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4628, size: 64)
!4628 = !DISubroutineType(types: !4629)
!4629 = !{!22, !4630, !4632}
!4630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4631, size: 64)
!4631 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1161)
!4632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !4619, file: !1162, line: 132, baseType: !4634, size: 64, offset: 192)
!4634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4635, size: 64)
!4635 = !DISubroutineType(types: !4636)
!4636 = !{!22, !4630, !7, !16, !4637}
!4637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4638, size: 64)
!4638 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1180)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !4619, file: !1162, line: 134, baseType: !4640, size: 64, offset: 256)
!4640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4641, size: 64)
!4641 = !DISubroutineType(types: !4642)
!4642 = !{!22, !4630}
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !4619, file: !1162, line: 135, baseType: !4644, size: 64, offset: 320)
!4644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4645, size: 64)
!4645 = !DISubroutineType(types: !4646)
!4646 = !{!22, !1160}
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !4619, file: !1162, line: 136, baseType: !4648, size: 64, offset: 384)
!4648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4649, size: 64)
!4649 = !DISubroutineType(types: !4650)
!4650 = !{null, !1160}
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !4619, file: !1162, line: 137, baseType: !4648, size: 64, offset: 448)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !4619, file: !1162, line: 138, baseType: !4653, size: 64, offset: 512)
!4653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4654, size: 64)
!4654 = !DISubroutineType(types: !4655)
!4655 = !{null, !1160, !1195}
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !4619, file: !1162, line: 139, baseType: !4657, size: 64, offset: 576)
!4657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4658, size: 64)
!4658 = !DISubroutineType(types: !4659)
!4659 = !{!913, !1160, !913, !22}
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !4619, file: !1162, line: 140, baseType: !4661, size: 64, offset: 640)
!4661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4662, size: 64)
!4662 = !DISubroutineType(types: !4663)
!4663 = !{!1155, !4664}
!4664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !4619, file: !1162, line: 141, baseType: !4666, size: 64, offset: 704)
!4666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4667, size: 64)
!4667 = !DISubroutineType(types: !4668)
!4668 = !{!22, !1316, !825}
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !4619, file: !1162, line: 142, baseType: !4670, size: 64, offset: 768)
!4670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4671, size: 64)
!4671 = !DISubroutineType(types: !4672)
!4672 = !{!1160, !1160, !4673}
!4673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4674, size: 64)
!4674 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1196)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1397, file: !244, line: 1271, baseType: !4676, size: 448, offset: 8128)
!4676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !4306, line: 63, size: 448, elements: !4677)
!4677 = !{!4678, !4683, !4684, !4685, !4686, !4687, !4688}
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4676, file: !4306, line: 64, baseType: !4679, size: 64)
!4679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4680, size: 64)
!4680 = !DISubroutineType(types: !4681)
!4681 = !{!39, !4682, !4304}
!4682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4676, size: 64)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4676, file: !4306, line: 66, baseType: !4679, size: 64, offset: 64)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4676, file: !4306, line: 69, baseType: !1050, size: 64, offset: 128)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4676, file: !4306, line: 70, baseType: !22, size: 32, offset: 192)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4676, file: !4306, line: 71, baseType: !7, size: 32, offset: 224)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4676, file: !4306, line: 74, baseType: !97, size: 128, offset: 256)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4676, file: !4306, line: 85, baseType: !4689, size: 64, offset: 384)
!4689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1397, file: !244, line: 1274, baseType: !661, size: 64, offset: 8576)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1397, file: !244, line: 1280, baseType: !661, size: 64, offset: 8640)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1397, file: !244, line: 1283, baseType: !22, size: 32, offset: 8704)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1397, file: !244, line: 1286, baseType: !2553, size: 32, offset: 8736)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1397, file: !244, line: 1289, baseType: !3028, size: 64, offset: 8768)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1397, file: !244, line: 1290, baseType: !716, size: 64, offset: 8832)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1397, file: !244, line: 1297, baseType: !767, size: 64, offset: 8896)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1397, file: !244, line: 1304, baseType: !4698, size: 64, offset: 8960)
!4698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4699, line: 49, size: 64, elements: !4700)
!4699 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4700 = !{!4701}
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4698, file: !4699, line: 50, baseType: !4702, size: 64)
!4702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4703, size: 64)
!4703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4699, line: 41, size: 512, align: 512, elements: !4704)
!4704 = !{!4705, !4706, !4711}
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4703, file: !4699, line: 43, baseType: !59, size: 32)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4703, file: !4699, line: 45, baseType: !4707, size: 192, offset: 64)
!4707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4699, line: 29, size: 192, elements: !4708)
!4708 = !{!4709, !4710}
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4707, file: !4699, line: 30, baseType: !97, size: 128)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4707, file: !4699, line: 32, baseType: !1050, size: 64, offset: 128)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4703, file: !4699, line: 46, baseType: !1050, size: 64, offset: 256)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1397, file: !244, line: 1305, baseType: !4698, size: 64, offset: 9024)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1397, file: !244, line: 1306, baseType: !648, size: 128, align: 64, offset: 9088)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1397, file: !244, line: 1307, baseType: !952, size: 256, offset: 9216)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1397, file: !244, line: 1309, baseType: !668, size: 256, offset: 9472)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1397, file: !244, line: 1314, baseType: !22, size: 32, offset: 9728)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1397, file: !244, line: 1317, baseType: !59, size: 32, align: 512, offset: 10240)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1397, file: !244, line: 1318, baseType: !97, size: 128, offset: 10304)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1397, file: !244, line: 1320, baseType: !59, size: 32, offset: 10432)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1397, file: !244, line: 1321, baseType: !97, size: 128, offset: 10496)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !1196, file: !244, line: 656, baseType: !1546, size: 64, offset: 512)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !1196, file: !244, line: 659, baseType: !20, size: 64, offset: 576)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !1196, file: !244, line: 663, baseType: !39, size: 64, offset: 640)
!4724 = !DIDerivedType(tag: DW_TAG_member, scope: !1196, file: !244, line: 671, baseType: !4725, size: 32, offset: 704)
!4725 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1196, file: !244, line: 671, size: 32, elements: !4726)
!4726 = !{!4727, !4728}
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4725, file: !244, line: 672, baseType: !3076, size: 32)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4725, file: !244, line: 673, baseType: !7, size: 32)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !1196, file: !244, line: 675, baseType: !1269, size: 32, offset: 736)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1196, file: !244, line: 676, baseType: !41, size: 64, offset: 768)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !1196, file: !244, line: 677, baseType: !1305, size: 128, offset: 832)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !1196, file: !244, line: 678, baseType: !1305, size: 128, offset: 960)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !1196, file: !244, line: 679, baseType: !1305, size: 128, offset: 1088)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !1196, file: !244, line: 680, baseType: !59, size: 32, offset: 1216)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !1196, file: !244, line: 681, baseType: !26, size: 16, offset: 1248)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !1196, file: !244, line: 682, baseType: !83, size: 8, offset: 1264)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !1196, file: !244, line: 683, baseType: !83, size: 8, offset: 1272)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !1196, file: !244, line: 684, baseType: !4437, size: 64, offset: 1280)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !1196, file: !244, line: 691, baseType: !39, size: 64, offset: 1344)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !1196, file: !244, line: 692, baseType: !845, size: 320, offset: 1408)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !1196, file: !244, line: 694, baseType: !39, size: 64, offset: 1728)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !1196, file: !244, line: 695, baseType: !39, size: 64, offset: 1792)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !1196, file: !244, line: 697, baseType: !720, size: 128, offset: 1856)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !1196, file: !244, line: 698, baseType: !97, size: 128, offset: 1984)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !1196, file: !244, line: 707, baseType: !97, size: 128, offset: 2112)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !1196, file: !244, line: 708, baseType: !97, size: 128, offset: 2240)
!4747 = !DIDerivedType(tag: DW_TAG_member, scope: !1196, file: !244, line: 709, baseType: !4748, size: 128, offset: 2368)
!4748 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1196, file: !244, line: 709, size: 128, elements: !4749)
!4749 = !{!4750, !4751}
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4748, file: !244, line: 710, baseType: !716, size: 64)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4748, file: !244, line: 711, baseType: !648, size: 128, align: 64)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !1196, file: !244, line: 713, baseType: !663, size: 64, offset: 2496)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !1196, file: !244, line: 714, baseType: !663, size: 64, offset: 2560)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !1196, file: !244, line: 715, baseType: !49, size: 32, offset: 2624)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !1196, file: !244, line: 716, baseType: !49, size: 32, offset: 2656)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !1196, file: !244, line: 717, baseType: !49, size: 32, offset: 2688)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !1196, file: !244, line: 719, baseType: !49, size: 32, offset: 2720)
!4758 = !DIDerivedType(tag: DW_TAG_member, scope: !1196, file: !244, line: 721, baseType: !4759, size: 64, offset: 2752)
!4759 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1196, file: !244, line: 721, size: 64, elements: !4760)
!4760 = !{!4761, !4887}
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4759, file: !244, line: 722, baseType: !4762, size: 64)
!4762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4763, size: 64)
!4763 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4764)
!4764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !244, line: 1914, size: 2112, elements: !4765)
!4765 = !{!4766, !4767, !4771, !4775, !4779, !4780, !4781, !4787, !4800, !4804, !4808, !4809, !4813, !4814, !4818, !4823, !4824, !4828, !4832, !4838, !4839, !4843, !4844, !4850, !4854, !4855, !4860, !4864, !4868, !4872, !4876, !4877, !4883}
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4764, file: !244, line: 1915, baseType: !1429, size: 64)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !4764, file: !244, line: 1916, baseType: !4768, size: 64, offset: 64)
!4768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4769, size: 64)
!4769 = !DISubroutineType(types: !4770)
!4770 = !{!41, !640, !41, !22}
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4764, file: !244, line: 1917, baseType: !4772, size: 64, offset: 128)
!4772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4773, size: 64)
!4773 = !DISubroutineType(types: !4774)
!4774 = !{!1347, !640, !913, !35, !40}
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4764, file: !244, line: 1918, baseType: !4776, size: 64, offset: 192)
!4776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4777, size: 64)
!4777 = !DISubroutineType(types: !4778)
!4778 = !{!1347, !640, !16, !35, !40}
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !4764, file: !244, line: 1919, baseType: !1995, size: 64, offset: 256)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !4764, file: !244, line: 1920, baseType: !1995, size: 64, offset: 320)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !4764, file: !244, line: 1921, baseType: !4782, size: 64, offset: 384)
!4782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4783, size: 64)
!4783 = !DISubroutineType(types: !4784)
!4784 = !{!22, !1998, !4785, !7}
!4785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4786, size: 64)
!4786 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !244, line: 53, flags: DIFlagFwdDecl)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !4764, file: !244, line: 1923, baseType: !4788, size: 64, offset: 448)
!4788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4789, size: 64)
!4789 = !DISubroutineType(types: !4790)
!4790 = !{!22, !640, !4791}
!4791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4792, size: 64)
!4792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !244, line: 1858, size: 128, elements: !4793)
!4793 = !{!4794, !4799}
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !4792, file: !244, line: 1859, baseType: !4795, size: 64)
!4795 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !244, line: 1855, baseType: !4796)
!4796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4797, size: 64)
!4797 = !DISubroutineType(types: !4798)
!4798 = !{!825, !4791, !16, !22, !41, !363, !7}
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !4792, file: !244, line: 1860, baseType: !41, size: 64, offset: 64)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4764, file: !244, line: 1924, baseType: !4801, size: 64, offset: 512)
!4801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4802, size: 64)
!4802 = !DISubroutineType(types: !4803)
!4803 = !{!2696, !640, !2698}
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !4764, file: !244, line: 1925, baseType: !4805, size: 64, offset: 576)
!4805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4806, size: 64)
!4806 = !DISubroutineType(types: !4807)
!4807 = !{!1050, !640, !7, !39}
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !4764, file: !244, line: 1926, baseType: !4805, size: 64, offset: 640)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4764, file: !244, line: 1927, baseType: !4810, size: 64, offset: 704)
!4810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4811, size: 64)
!4811 = !DISubroutineType(types: !4812)
!4812 = !{!22, !640, !1675}
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !4764, file: !244, line: 1928, baseType: !39, size: 64, offset: 768)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4764, file: !244, line: 1929, baseType: !4815, size: 64, offset: 832)
!4815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4816, size: 64)
!4816 = !DISubroutineType(types: !4817)
!4817 = !{!22, !1195, !640}
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !4764, file: !244, line: 1930, baseType: !4819, size: 64, offset: 896)
!4819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4820, size: 64)
!4820 = !DISubroutineType(types: !4821)
!4821 = !{!22, !640, !4822}
!4822 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !244, line: 1061, baseType: !20)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4764, file: !244, line: 1931, baseType: !4815, size: 64, offset: 960)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !4764, file: !244, line: 1932, baseType: !4825, size: 64, offset: 1024)
!4825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4826, size: 64)
!4826 = !DISubroutineType(types: !4827)
!4827 = !{!22, !640, !41, !41, !22}
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !4764, file: !244, line: 1933, baseType: !4829, size: 64, offset: 1088)
!4829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4830, size: 64)
!4830 = !DISubroutineType(types: !4831)
!4831 = !{!22, !22, !640, !22}
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4764, file: !244, line: 1934, baseType: !4833, size: 64, offset: 1152)
!4833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4834, size: 64)
!4834 = !DISubroutineType(types: !4835)
!4835 = !{!22, !640, !22, !4836}
!4836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4837, size: 64)
!4837 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !244, line: 1063, flags: DIFlagFwdDecl)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !4764, file: !244, line: 1935, baseType: !637, size: 64, offset: 1216)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !4764, file: !244, line: 1936, baseType: !4840, size: 64, offset: 1280)
!4840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4841, size: 64)
!4841 = !DISubroutineType(types: !4842)
!4842 = !{!22, !22}
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !4764, file: !244, line: 1937, baseType: !4833, size: 64, offset: 1344)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !4764, file: !244, line: 1938, baseType: !4845, size: 64, offset: 1408)
!4845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4846, size: 64)
!4846 = !DISubroutineType(types: !4847)
!4847 = !{!1347, !4848, !640, !40, !35, !7}
!4848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4849, size: 64)
!4849 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !296, line: 59, flags: DIFlagFwdDecl)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !4764, file: !244, line: 1939, baseType: !4851, size: 64, offset: 1472)
!4851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4852, size: 64)
!4852 = !DISubroutineType(types: !4853)
!4853 = !{!1347, !640, !40, !4848, !35, !7}
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !4764, file: !244, line: 1940, baseType: !2543, size: 64, offset: 1536)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !4764, file: !244, line: 1941, baseType: !4856, size: 64, offset: 1600)
!4856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4857, size: 64)
!4857 = !DISubroutineType(types: !4858)
!4858 = !{!22, !640, !22, !4859, !1972}
!4859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4836, size: 64)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !4764, file: !244, line: 1942, baseType: !4861, size: 64, offset: 1664)
!4861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4862, size: 64)
!4862 = !DISubroutineType(types: !4863)
!4863 = !{!1050, !640, !22, !41, !41}
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !4764, file: !244, line: 1944, baseType: !4865, size: 64, offset: 1728)
!4865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4866, size: 64)
!4866 = !DISubroutineType(types: !4867)
!4867 = !{null, !2629, !640}
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !4764, file: !244, line: 1948, baseType: !4869, size: 64, offset: 1792)
!4869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4870, size: 64)
!4870 = !DISubroutineType(types: !4871)
!4871 = !{!1347, !640, !41, !640, !41, !35, !7}
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !4764, file: !244, line: 1950, baseType: !4873, size: 64, offset: 1856)
!4873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4874, size: 64)
!4874 = !DISubroutineType(types: !4875)
!4875 = !{!41, !640, !41, !640, !41, !41, !7}
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !4764, file: !244, line: 1953, baseType: !4825, size: 64, offset: 1920)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !4764, file: !244, line: 1954, baseType: !4878, size: 64, offset: 1984)
!4878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4879, size: 64)
!4879 = !DISubroutineType(types: !4880)
!4880 = !{!22, !4881, !7}
!4881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4882, size: 64)
!4882 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !244, line: 1911, flags: DIFlagFwdDecl)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !4764, file: !244, line: 1955, baseType: !4884, size: 64, offset: 2048)
!4884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4885, size: 64)
!4885 = !DISubroutineType(types: !4886)
!4886 = !{!22, !4881, !4785, !7}
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4759, file: !244, line: 723, baseType: !4195, size: 64)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !1196, file: !244, line: 725, baseType: !4889, size: 64, offset: 2816)
!4889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4890, size: 64)
!4890 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !244, line: 725, flags: DIFlagFwdDecl)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !1196, file: !244, line: 726, baseType: !1547, size: 1536, align: 64, offset: 2880)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !1196, file: !244, line: 727, baseType: !97, size: 128, offset: 4416)
!4893 = !DIDerivedType(tag: DW_TAG_member, scope: !1196, file: !244, line: 728, baseType: !4894, size: 64, offset: 4544)
!4894 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1196, file: !244, line: 728, size: 64, elements: !4895)
!4895 = !{!4896, !4897, !4900, !4901}
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4894, file: !244, line: 729, baseType: !4848, size: 64)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4894, file: !244, line: 730, baseType: !4898, size: 64)
!4898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4899, size: 64)
!4899 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !244, line: 730, flags: DIFlagFwdDecl)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4894, file: !244, line: 731, baseType: !913, size: 64)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4894, file: !244, line: 732, baseType: !7, size: 32)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !1196, file: !244, line: 735, baseType: !306, size: 32, offset: 4608)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !1196, file: !244, line: 738, baseType: !306, size: 32, offset: 4640)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !1196, file: !244, line: 739, baseType: !4598, size: 64, offset: 4672)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !1196, file: !244, line: 750, baseType: !20, size: 64, offset: 4736)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !1161, file: !1162, line: 91, baseType: !4907, size: 256, offset: 448)
!4907 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 256, elements: !4602)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !1161, file: !1162, line: 94, baseType: !4909, size: 64, offset: 704)
!4909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !4910, line: 25, size: 64, elements: !4911)
!4910 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!4911 = !{!4912}
!4912 = !DIDerivedType(tag: DW_TAG_member, scope: !4909, file: !4910, line: 26, baseType: !4913, size: 64)
!4913 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4909, file: !4910, line: 26, size: 64, elements: !4914)
!4914 = !{!4915, !4916}
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !4913, file: !4910, line: 28, baseType: !364, size: 64, align: 64)
!4916 = !DIDerivedType(tag: DW_TAG_member, scope: !4913, file: !4910, line: 30, baseType: !4917, size: 64)
!4917 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4913, file: !4910, line: 30, size: 64, elements: !4918)
!4918 = !{!4919, !4920}
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4917, file: !4910, line: 31, baseType: !59, size: 32)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4917, file: !4910, line: 32, baseType: !22, size: 32, offset: 32)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !1161, file: !1162, line: 95, baseType: !4617, size: 64, offset: 768)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !1161, file: !1162, line: 96, baseType: !1396, size: 64, offset: 832)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !1161, file: !1162, line: 97, baseType: !39, size: 64, offset: 896)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !1161, file: !1162, line: 98, baseType: !20, size: 64, offset: 960)
!4925 = !DIDerivedType(tag: DW_TAG_member, scope: !1161, file: !1162, line: 100, baseType: !4926, size: 128, offset: 1024)
!4926 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1161, file: !1162, line: 100, size: 128, elements: !4927)
!4927 = !{!4928, !4929}
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4926, file: !1162, line: 101, baseType: !97, size: 128)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4926, file: !1162, line: 102, baseType: !2707, size: 64)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !1161, file: !1162, line: 104, baseType: !97, size: 128, offset: 1152)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !1161, file: !1162, line: 105, baseType: !97, size: 128, offset: 1280)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !1161, file: !1162, line: 113, baseType: !4933, size: 128, offset: 1408)
!4933 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1161, file: !1162, line: 109, size: 128, elements: !4934)
!4934 = !{!4935, !4936, !4937}
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4933, file: !1162, line: 110, baseType: !720, size: 128)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4933, file: !1162, line: 111, baseType: !1171, size: 128)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4933, file: !1162, line: 112, baseType: !648, size: 128, align: 64)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !1156, file: !1157, line: 72, baseType: !1396, size: 64, offset: 64)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !1156, file: !1157, line: 73, baseType: !22, size: 32, offset: 128)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !1156, file: !1157, line: 74, baseType: !1234, size: 64, offset: 192)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1151, file: !1152, line: 10, baseType: !1160, size: 64, offset: 64)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !641, file: !244, line: 1015, baseType: !1195, size: 64, offset: 1344)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !641, file: !244, line: 1016, baseType: !4762, size: 64, offset: 1408)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !641, file: !244, line: 1018, baseType: !363, size: 64, offset: 1472)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !641, file: !244, line: 1020, baseType: !20, size: 64, offset: 1536)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !641, file: !244, line: 1023, baseType: !20, size: 64, offset: 1600)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !641, file: !244, line: 1027, baseType: !3244, size: 64, offset: 1664)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !641, file: !244, line: 1029, baseType: !1546, size: 64, offset: 1728)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !641, file: !244, line: 1030, baseType: !2553, size: 32, offset: 1792)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !641, file: !244, line: 1031, baseType: !2553, size: 32, offset: 1824)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !616, file: !131, line: 756, baseType: !39, size: 64, offset: 704)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !616, file: !131, line: 757, baseType: !39, size: 64, offset: 768)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !616, file: !131, line: 760, baseType: !39, size: 64, offset: 832)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !616, file: !131, line: 761, baseType: !39, size: 64, offset: 896)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !616, file: !131, line: 763, baseType: !39, size: 64, offset: 960)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !616, file: !131, line: 764, baseType: !4957, size: 64, offset: 1024)
!4957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4958, size: 64)
!4958 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1690, line: 299, baseType: !4959)
!4959 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1690, line: 299, size: 64, elements: !4960)
!4960 = !{!4961}
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !4959, file: !1690, line: 299, baseType: !4962, size: 64)
!4962 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1695, line: 18, baseType: !39)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !616, file: !131, line: 773, baseType: !49, size: 32, offset: 1088)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !616, file: !131, line: 785, baseType: !49, size: 32, offset: 1120)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !616, file: !131, line: 795, baseType: !4966, size: 64, offset: 1152)
!4966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4967, size: 64)
!4967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !131, line: 726, size: 128, elements: !4968)
!4968 = !{!4969, !4970}
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4967, file: !131, line: 727, baseType: !363, size: 64)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !4967, file: !131, line: 728, baseType: !22, size: 32, offset: 64)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !616, file: !131, line: 801, baseType: !39, size: 64, offset: 1216)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !616, file: !131, line: 804, baseType: !661, size: 64, offset: 1280)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !616, file: !131, line: 806, baseType: !22, size: 32, offset: 1344)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !616, file: !131, line: 808, baseType: !59, size: 32, offset: 1376)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !616, file: !131, line: 823, baseType: !845, size: 320, offset: 1408)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !616, file: !131, line: 825, baseType: !97, size: 128, offset: 1728)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !616, file: !131, line: 845, baseType: !22, size: 32, offset: 1856)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !616, file: !131, line: 849, baseType: !39, size: 64, offset: 1920)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !616, file: !131, line: 850, baseType: !39, size: 64, offset: 1984)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !616, file: !131, line: 852, baseType: !39, size: 64, offset: 2048)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !616, file: !131, line: 853, baseType: !39, size: 64, offset: 2112)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !616, file: !131, line: 854, baseType: !663, size: 64, offset: 2176)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !616, file: !131, line: 855, baseType: !39, size: 64, offset: 2240)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !616, file: !131, line: 856, baseType: !39, size: 64, offset: 2304)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !616, file: !131, line: 857, baseType: !39, size: 64, offset: 2368)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !616, file: !131, line: 858, baseType: !39, size: 64, offset: 2432)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !616, file: !131, line: 865, baseType: !486, size: 32, offset: 2496)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !616, file: !131, line: 867, baseType: !59, size: 32, offset: 2528)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !616, file: !131, line: 869, baseType: !39, size: 64, offset: 2560)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !616, file: !131, line: 869, baseType: !39, size: 64, offset: 2624)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !616, file: !131, line: 869, baseType: !39, size: 64, offset: 2688)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !616, file: !131, line: 869, baseType: !39, size: 64, offset: 2752)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !616, file: !131, line: 870, baseType: !39, size: 64, offset: 2816)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !616, file: !131, line: 870, baseType: !39, size: 64, offset: 2880)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !616, file: !131, line: 870, baseType: !39, size: 64, offset: 2944)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !616, file: !131, line: 871, baseType: !39, size: 64, offset: 3008)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !616, file: !131, line: 871, baseType: !39, size: 64, offset: 3072)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !616, file: !131, line: 871, baseType: !39, size: 64, offset: 3136)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !616, file: !131, line: 871, baseType: !39, size: 64, offset: 3200)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !616, file: !131, line: 873, baseType: !5001, size: 3328, offset: 3264)
!5001 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 3328, elements: !5002)
!5002 = !{!5003}
!5003 = !DISubrange(count: 52)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !616, file: !131, line: 875, baseType: !4495, size: 1280, offset: 6592)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !616, file: !131, line: 877, baseType: !5006, size: 64, offset: 7872)
!5006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5007, size: 64)
!5007 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !131, line: 877, flags: DIFlagFwdDecl)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !616, file: !131, line: 880, baseType: !5009, size: 1088, offset: 7936)
!5009 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !5010, line: 72, baseType: !5011)
!5010 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!5011 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5010, line: 23, size: 1088, elements: !5012)
!5012 = !{!5013, !5014, !5015, !5016, !5017, !5020, !5021, !5022, !5023, !5048, !5049, !5050}
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !5011, file: !5010, line: 28, baseType: !363, size: 64)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !5011, file: !5010, line: 38, baseType: !663, size: 64, offset: 64)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !5011, file: !5010, line: 40, baseType: !39, size: 64, offset: 128)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !5011, file: !5010, line: 43, baseType: !845, size: 320, offset: 192)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !5011, file: !5010, line: 44, baseType: !5018, size: 64, offset: 512)
!5018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5019, size: 64)
!5019 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !5010, line: 44, flags: DIFlagFwdDecl)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5011, file: !5010, line: 48, baseType: !39, size: 64, offset: 576)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5011, file: !5010, line: 59, baseType: !668, size: 256, offset: 640)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !5011, file: !5010, line: 60, baseType: !20, size: 64, offset: 896)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !5011, file: !5010, line: 61, baseType: !5024, size: 64, offset: 960)
!5024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5025, size: 64)
!5025 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5026)
!5026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !5027, line: 13, size: 1216, elements: !5028)
!5027 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!5028 = !{!5029, !5030, !5031, !5032, !5033, !5034, !5035, !5036, !5037, !5038, !5039, !5040, !5041, !5042, !5043, !5044, !5045, !5046, !5047}
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5026, file: !5027, line: 14, baseType: !20, size: 64)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5026, file: !5027, line: 15, baseType: !39, size: 64, offset: 64)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !5026, file: !5027, line: 17, baseType: !39, size: 64, offset: 128)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !5026, file: !5027, line: 17, baseType: !39, size: 64, offset: 192)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !5026, file: !5027, line: 18, baseType: !39, size: 64, offset: 256)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !5026, file: !5027, line: 18, baseType: !39, size: 64, offset: 320)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !5026, file: !5027, line: 19, baseType: !2491, size: 64, offset: 384)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !5026, file: !5027, line: 21, baseType: !1050, size: 64, offset: 448)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !5026, file: !5027, line: 23, baseType: !1050, size: 64, offset: 512)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !5026, file: !5027, line: 24, baseType: !1050, size: 64, offset: 576)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !5026, file: !5027, line: 25, baseType: !1050, size: 64, offset: 640)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !5026, file: !5027, line: 26, baseType: !1050, size: 64, offset: 704)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !5026, file: !5027, line: 27, baseType: !1050, size: 64, offset: 768)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !5026, file: !5027, line: 28, baseType: !1050, size: 64, offset: 832)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !5026, file: !5027, line: 29, baseType: !1050, size: 64, offset: 896)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !5026, file: !5027, line: 30, baseType: !1050, size: 64, offset: 960)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !5026, file: !5027, line: 31, baseType: !1050, size: 64, offset: 1024)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !5026, file: !5027, line: 32, baseType: !1050, size: 64, offset: 1088)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !5026, file: !5027, line: 33, baseType: !1050, size: 64, offset: 1152)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !5011, file: !5010, line: 63, baseType: !49, size: 32, offset: 1024)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !5011, file: !5010, line: 69, baseType: !93, size: 16, offset: 1056)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !5011, file: !5010, line: 70, baseType: !2883, size: 16, offset: 1072)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !616, file: !131, line: 882, baseType: !39, size: 64, offset: 9024)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !616, file: !131, line: 885, baseType: !59, size: 32, offset: 9088)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !616, file: !131, line: 886, baseType: !5054, size: 64, offset: 9152)
!5054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5055, size: 64)
!5055 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !131, line: 732, flags: DIFlagFwdDecl)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !616, file: !131, line: 901, baseType: !767, size: 64, offset: 9216)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !616, file: !131, line: 904, baseType: !640, size: 64, offset: 9280)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !616, file: !131, line: 906, baseType: !5059, size: 64, offset: 9344)
!5059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5060, size: 64)
!5060 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !131, line: 906, flags: DIFlagFwdDecl)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !616, file: !131, line: 930, baseType: !49, size: 32, offset: 9408)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !616, file: !131, line: 933, baseType: !49, size: 32, offset: 9440)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !616, file: !131, line: 935, baseType: !5064, size: 64, offset: 9472)
!5064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !273, line: 103, size: 64, elements: !5065)
!5065 = !{!5066}
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !5064, file: !273, line: 104, baseType: !5067, size: 64)
!5067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5068, size: 64)
!5068 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !273, line: 101, flags: DIFlagFwdDecl)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !616, file: !131, line: 940, baseType: !661, size: 64, offset: 9536)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !616, file: !131, line: 942, baseType: !952, size: 256, offset: 9600)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !613, file: !131, line: 986, baseType: !5072, offset: 10240)
!5072 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, elements: !1057)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !295, file: !296, line: 882, baseType: !612, size: 64, offset: 9792)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !295, file: !296, line: 884, baseType: !22, size: 32, offset: 9856)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !295, file: !296, line: 885, baseType: !22, size: 32, offset: 9888)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !295, file: !296, line: 886, baseType: !22, size: 32, offset: 9920)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !295, file: !296, line: 888, baseType: !22, size: 32, offset: 9952)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !295, file: !296, line: 890, baseType: !39, size: 64, offset: 9984)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !295, file: !296, line: 893, baseType: !7, size: 32, offset: 10048)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !295, file: !296, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !295, file: !296, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !295, file: !296, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !295, file: !296, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !295, file: !296, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !295, file: !296, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !295, file: !296, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !295, file: !296, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !295, file: !296, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !295, file: !296, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !295, file: !296, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !295, file: !296, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !295, file: !296, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !295, file: !296, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !295, file: !296, line: 969, baseType: !39, size: 64, offset: 10176)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !295, file: !296, line: 971, baseType: !5096, size: 448, offset: 10240)
!5096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !267, line: 25, size: 448, elements: !5097)
!5097 = !{!5098, !5099, !5104}
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !5096, file: !267, line: 26, baseType: !39, size: 64)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !5096, file: !267, line: 27, baseType: !5100, size: 64, offset: 64)
!5100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5101, size: 64)
!5101 = !DISubroutineType(types: !5102)
!5102 = !{!1050, !5103}
!5103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5096, size: 64)
!5104 = !DIDerivedType(tag: DW_TAG_member, scope: !5096, file: !267, line: 28, baseType: !5105, size: 320, offset: 128)
!5105 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5096, file: !267, line: 28, size: 320, elements: !5106)
!5106 = !{!5107, !5117, !5142}
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !5105, file: !267, line: 37, baseType: !5108, size: 320)
!5108 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5105, file: !267, line: 30, size: 320, elements: !5109)
!5109 = !{!5110, !5112, !5113, !5114, !5115, !5116}
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !5108, file: !267, line: 31, baseType: !5111, size: 64)
!5111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !5108, file: !267, line: 32, baseType: !305, size: 32, offset: 64)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5108, file: !267, line: 33, baseType: !305, size: 32, offset: 96)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !5108, file: !267, line: 34, baseType: !305, size: 32, offset: 128)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !5108, file: !267, line: 35, baseType: !363, size: 64, offset: 192)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !5108, file: !267, line: 36, baseType: !5111, size: 64, offset: 256)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !5105, file: !267, line: 47, baseType: !5118, size: 192)
!5118 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5105, file: !267, line: 39, size: 192, elements: !5119)
!5119 = !{!5120, !5121, !5122, !5141}
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !5118, file: !267, line: 40, baseType: !478, size: 32)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5118, file: !267, line: 41, baseType: !266, size: 32, offset: 32)
!5122 = !DIDerivedType(tag: DW_TAG_member, scope: !5118, file: !267, line: 42, baseType: !5123, size: 64, offset: 64)
!5123 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5118, file: !267, line: 42, size: 64, elements: !5124)
!5124 = !{!5125, !5133}
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !5123, file: !267, line: 43, baseType: !5126, size: 64)
!5126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5127, size: 64)
!5127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !5128, line: 7, size: 128, elements: !5129)
!5128 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!5129 = !{!5130, !5132}
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5127, file: !5128, line: 8, baseType: !5131, size: 64)
!5131 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !37, line: 93, baseType: !43)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !5127, file: !5128, line: 9, baseType: !43, size: 64, offset: 64)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !5123, file: !267, line: 44, baseType: !5134, size: 64)
!5134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5135, size: 64)
!5135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !5136, line: 7, size: 64, elements: !5137)
!5136 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!5137 = !{!5138, !5140}
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5135, file: !5136, line: 8, baseType: !5139, size: 32)
!5139 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !5136, line: 5, baseType: !837)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !5135, file: !5136, line: 9, baseType: !837, size: 32, offset: 32)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !5118, file: !267, line: 46, baseType: !363, size: 64, offset: 128)
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !5105, file: !267, line: 55, baseType: !5143, size: 256)
!5143 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5105, file: !267, line: 49, size: 256, elements: !5144)
!5144 = !{!5145, !5153, !5154, !5155, !5156}
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !5143, file: !267, line: 50, baseType: !5146, size: 64)
!5146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5147, size: 64)
!5147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !5148, line: 36, size: 64, elements: !5149)
!5148 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!5149 = !{!5150, !5151, !5152}
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !5147, file: !5148, line: 37, baseType: !22, size: 32)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !5147, file: !5148, line: 38, baseType: !873, size: 16, offset: 32)
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !5147, file: !5148, line: 39, baseType: !873, size: 16, offset: 48)
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !5143, file: !267, line: 51, baseType: !22, size: 32, offset: 64)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !5143, file: !267, line: 52, baseType: !22, size: 32, offset: 96)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5143, file: !267, line: 53, baseType: !39, size: 64, offset: 128)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !5143, file: !267, line: 54, baseType: !39, size: 64, offset: 192)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !295, file: !296, line: 973, baseType: !5158, size: 32, offset: 10688)
!5158 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !25, line: 27, baseType: !5159)
!5159 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !37, line: 28, baseType: !22)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !295, file: !296, line: 974, baseType: !5158, size: 32, offset: 10720)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !295, file: !296, line: 978, baseType: !39, size: 64, offset: 10752)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !295, file: !296, line: 987, baseType: !294, size: 64, offset: 10816)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !295, file: !296, line: 990, baseType: !294, size: 64, offset: 10880)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !295, file: !296, line: 995, baseType: !97, size: 128, offset: 10944)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !295, file: !296, line: 996, baseType: !97, size: 128, offset: 11072)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !295, file: !296, line: 997, baseType: !294, size: 64, offset: 11200)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !295, file: !296, line: 1005, baseType: !97, size: 128, offset: 11264)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !295, file: !296, line: 1006, baseType: !97, size: 128, offset: 11392)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !295, file: !296, line: 1009, baseType: !708, size: 64, offset: 11520)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !295, file: !296, line: 1010, baseType: !5171, size: 512, offset: 11584)
!5171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !720, size: 512, elements: !725)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !295, file: !296, line: 1011, baseType: !97, size: 128, offset: 12096)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !295, file: !296, line: 1012, baseType: !97, size: 128, offset: 12224)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !295, file: !296, line: 1014, baseType: !990, size: 64, offset: 12352)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !295, file: !296, line: 1017, baseType: !2876, size: 64, offset: 12416)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !295, file: !296, line: 1020, baseType: !2876, size: 64, offset: 12480)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !295, file: !296, line: 1023, baseType: !20, size: 64, offset: 12544)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !295, file: !296, line: 1025, baseType: !363, size: 64, offset: 12608)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !295, file: !296, line: 1026, baseType: !363, size: 64, offset: 12672)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !295, file: !296, line: 1031, baseType: !363, size: 64, offset: 12736)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !295, file: !296, line: 1032, baseType: !3971, size: 192, offset: 12800)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !295, file: !296, line: 1041, baseType: !39, size: 64, offset: 12992)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !295, file: !296, line: 1042, baseType: !39, size: 64, offset: 13056)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !295, file: !296, line: 1045, baseType: !363, size: 64, offset: 13120)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !295, file: !296, line: 1048, baseType: !363, size: 64, offset: 13184)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !295, file: !296, line: 1051, baseType: !39, size: 64, offset: 13248)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !295, file: !296, line: 1052, baseType: !39, size: 64, offset: 13312)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !295, file: !296, line: 1055, baseType: !5189, size: 640, offset: 13376)
!5189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !5190, line: 132, size: 640, elements: !5191)
!5190 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!5191 = !{!5192, !5198, !5199}
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !5189, file: !5190, line: 133, baseType: !5193, size: 576)
!5193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5194, size: 576, elements: !704)
!5194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !5190, line: 117, size: 192, elements: !5195)
!5195 = !{!5196, !5197}
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !5194, file: !5190, line: 118, baseType: !363, size: 64)
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !5194, file: !5190, line: 119, baseType: !492, size: 128, offset: 64)
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !5189, file: !5190, line: 134, baseType: !7, size: 32, offset: 576)
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !5189, file: !5190, line: 135, baseType: !7, size: 32, offset: 608)
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !295, file: !296, line: 1058, baseType: !5201, size: 448, offset: 14016)
!5201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !5190, line: 144, size: 448, elements: !5202)
!5202 = !{!5203, !5204, !5205}
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5201, file: !5190, line: 145, baseType: !648, size: 128, align: 64)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5201, file: !5190, line: 146, baseType: !668, size: 256, offset: 128)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !5201, file: !5190, line: 147, baseType: !7, size: 32, offset: 384)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !295, file: !296, line: 1064, baseType: !1064, size: 64, offset: 14464)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !295, file: !296, line: 1067, baseType: !1064, size: 64, offset: 14528)
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !295, file: !296, line: 1070, baseType: !1064, size: 64, offset: 14592)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !295, file: !296, line: 1074, baseType: !829, size: 64, offset: 14656)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !295, file: !296, line: 1084, baseType: !5211, size: 128, offset: 14720)
!5211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 128, elements: !4611)
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !295, file: !296, line: 1086, baseType: !5213, size: 64, offset: 14848)
!5213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5214, size: 64)
!5214 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !296, line: 55, flags: DIFlagFwdDecl)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !295, file: !296, line: 1089, baseType: !5216, size: 64, offset: 14912)
!5216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !5217, line: 12, size: 64, elements: !5218)
!5217 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!5218 = !{!5219}
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !5216, file: !5217, line: 13, baseType: !5220, size: 64)
!5220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5221, size: 64)
!5221 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !5217, line: 8, flags: DIFlagFwdDecl)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !295, file: !296, line: 1090, baseType: !5223, size: 128, offset: 14976)
!5223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !5224, line: 13, size: 128, elements: !5225)
!5224 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!5225 = !{!5226}
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !5223, file: !5224, line: 14, baseType: !97, size: 128)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !295, file: !296, line: 1097, baseType: !5228, size: 64, offset: 15104)
!5228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5229, size: 64)
!5229 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !296, line: 50, flags: DIFlagFwdDecl)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !295, file: !296, line: 1100, baseType: !5231, size: 64, offset: 15168)
!5231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5232, size: 64)
!5232 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !296, line: 1100, flags: DIFlagFwdDecl)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !295, file: !296, line: 1103, baseType: !5234, size: 64, offset: 15232)
!5234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5235, size: 64)
!5235 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !296, line: 53, flags: DIFlagFwdDecl)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !295, file: !296, line: 1107, baseType: !5237, size: 64, offset: 15296)
!5237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5238, size: 64)
!5238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !5239, line: 31, size: 576, elements: !5240)
!5239 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!5240 = !{!5241, !5242, !5245, !5248, !5251, !5252, !5255, !5258, !5259}
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5238, file: !5239, line: 32, baseType: !311, size: 32)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !5238, file: !5239, line: 33, baseType: !5243, size: 64, offset: 64)
!5243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5244, size: 64)
!5244 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !5239, line: 9, flags: DIFlagFwdDecl)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !5238, file: !5239, line: 34, baseType: !5246, size: 64, offset: 128)
!5246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5247, size: 64)
!5247 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !5239, line: 10, flags: DIFlagFwdDecl)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !5238, file: !5239, line: 35, baseType: !5249, size: 64, offset: 192)
!5249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5250, size: 64)
!5250 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !5239, line: 8, flags: DIFlagFwdDecl)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !5238, file: !5239, line: 36, baseType: !736, size: 64, offset: 256)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !5238, file: !5239, line: 37, baseType: !5253, size: 64, offset: 320)
!5253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5254, size: 64)
!5254 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !831, line: 34, flags: DIFlagFwdDecl)
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !5238, file: !5239, line: 38, baseType: !5256, size: 64, offset: 384)
!5256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5257, size: 64)
!5257 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !5239, line: 38, flags: DIFlagFwdDecl)
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !5238, file: !5239, line: 39, baseType: !5256, size: 64, offset: 448)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !5238, file: !5239, line: 40, baseType: !5260, size: 64, offset: 512)
!5260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5261, size: 64)
!5261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !5262, line: 771, size: 384, elements: !5263)
!5262 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97aaa852548eda64085953d0d92854db")
!5263 = !{!5264, !5265, !5266, !5267}
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !5261, file: !5262, line: 772, baseType: !813, size: 192)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !5261, file: !5262, line: 773, baseType: !767, size: 64, offset: 192)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !5261, file: !5262, line: 774, baseType: !1035, size: 64, offset: 256)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !5261, file: !5262, line: 775, baseType: !4041, size: 64, offset: 320)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !295, file: !296, line: 1110, baseType: !5269, size: 64, offset: 15360)
!5269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5270, size: 64)
!5270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !5271, line: 93, size: 8768, elements: !5272)
!5271 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!5272 = !{!5273, !5274, !5275, !5276, !5277, !5278, !5279, !5280, !5291, !5292, !5293, !5294, !5295, !5296, !5297, !5309, !5310, !5311, !5312, !5313, !5314, !5315, !5321, !5330, !5331, !5333, !5334, !5335, !5338, !5344, !5345, !5346, !5347, !5348, !5349, !5350, !5351, !5352, !5353, !5354, !5355, !5356, !5357, !5358, !5359, !5360, !5361, !5362, !5363, !5364, !5365, !5376, !5377, !5384, !5394, !5456, !5457, !5460, !5461, !5462, !5463, !5464, !5465}
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !5270, file: !5271, line: 94, baseType: !311, size: 32)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !5270, file: !5271, line: 95, baseType: !49, size: 32, offset: 32)
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !5270, file: !5271, line: 96, baseType: !22, size: 32, offset: 64)
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !5270, file: !5271, line: 97, baseType: !22, size: 32, offset: 96)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !5270, file: !5271, line: 98, baseType: !97, size: 128, offset: 128)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !5270, file: !5271, line: 100, baseType: !54, size: 192, offset: 256)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !5270, file: !5271, line: 103, baseType: !294, size: 64, offset: 448)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !5270, file: !5271, line: 106, baseType: !5281, size: 192, offset: 512)
!5281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !5282, line: 32, size: 192, elements: !5283)
!5282 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!5283 = !{!5284, !5285}
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5281, file: !5282, line: 33, baseType: !97, size: 128)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !5281, file: !5282, line: 34, baseType: !5286, size: 64, offset: 128)
!5286 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !5287, line: 25, baseType: !5288)
!5287 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!5288 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5287, line: 23, size: 64, elements: !5289)
!5289 = !{!5290}
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !5288, file: !5287, line: 24, baseType: !563, size: 64)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !5270, file: !5271, line: 109, baseType: !716, size: 64, offset: 704)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !5270, file: !5271, line: 112, baseType: !22, size: 32, offset: 768)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !5270, file: !5271, line: 114, baseType: !22, size: 32, offset: 800)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !5270, file: !5271, line: 115, baseType: !294, size: 64, offset: 832)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !5270, file: !5271, line: 118, baseType: !22, size: 32, offset: 896)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5270, file: !5271, line: 119, baseType: !7, size: 32, offset: 928)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !5270, file: !5271, line: 121, baseType: !5298, size: 64, offset: 960)
!5298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5299, size: 64)
!5299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !5271, line: 80, size: 448, elements: !5300)
!5300 = !{!5301, !5302, !5308}
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !5299, file: !5271, line: 81, baseType: !49, size: 32)
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !5299, file: !5271, line: 82, baseType: !5303, size: 128, offset: 64)
!5303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !5271, line: 75, size: 128, elements: !5304)
!5304 = !{!5305, !5306}
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !5303, file: !5271, line: 76, baseType: !294, size: 64)
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5303, file: !5271, line: 77, baseType: !5307, size: 64, offset: 64)
!5307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5303, size: 64)
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !5299, file: !5271, line: 83, baseType: !991, size: 256, offset: 192)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !5270, file: !5271, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !5270, file: !5271, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !5270, file: !5271, line: 138, baseType: !7, size: 32, offset: 1056)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !5270, file: !5271, line: 139, baseType: !97, size: 128, offset: 1088)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !5270, file: !5271, line: 142, baseType: !430, size: 512, offset: 1216)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !5270, file: !5271, line: 143, baseType: !438, size: 64, offset: 1728)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !5270, file: !5271, line: 150, baseType: !5316, size: 256, offset: 1792)
!5316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5317, size: 256, elements: !2866)
!5317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !5271, line: 38, size: 128, elements: !5318)
!5318 = !{!5319, !5320}
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !5317, file: !5271, line: 39, baseType: !363, size: 64)
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !5317, file: !5271, line: 40, baseType: !363, size: 64, offset: 64)
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !5270, file: !5271, line: 156, baseType: !5322, size: 192, offset: 2048)
!5322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !5271, line: 66, size: 192, elements: !5323)
!5323 = !{!5324}
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !5322, file: !5271, line: 67, baseType: !5325, size: 192)
!5325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !5271, line: 47, size: 192, elements: !5326)
!5326 = !{!5327, !5328, !5329}
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !5325, file: !5271, line: 48, baseType: !663, size: 64)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !5325, file: !5271, line: 49, baseType: !663, size: 64, offset: 64)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !5325, file: !5271, line: 50, baseType: !663, size: 64, offset: 128)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !5270, file: !5271, line: 160, baseType: !5189, size: 640, offset: 2240)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !5270, file: !5271, line: 163, baseType: !5332, size: 256, offset: 2880)
!5332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !708, size: 256, elements: !725)
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !5270, file: !5271, line: 169, baseType: !708, size: 64, offset: 3136)
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !5270, file: !5271, line: 172, baseType: !22, size: 32, offset: 3200)
!5335 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !5270, file: !5271, line: 174, baseType: !5336, size: 64, offset: 3264)
!5336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5337, size: 64)
!5337 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !5271, line: 174, flags: DIFlagFwdDecl)
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !5270, file: !5271, line: 185, baseType: !5339, size: 64, offset: 3328)
!5339 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !482, line: 860, baseType: !5340)
!5340 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !482, line: 853, size: 64, elements: !5341)
!5341 = !{!5342, !5343}
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !5340, file: !482, line: 858, baseType: !1166, size: 32)
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5340, file: !482, line: 859, baseType: !59, size: 32, offset: 32)
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !5270, file: !5271, line: 186, baseType: !363, size: 64, offset: 3392)
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !5270, file: !5271, line: 186, baseType: !363, size: 64, offset: 3456)
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !5270, file: !5271, line: 186, baseType: !363, size: 64, offset: 3520)
!5347 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !5270, file: !5271, line: 186, baseType: !363, size: 64, offset: 3584)
!5348 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !5270, file: !5271, line: 187, baseType: !363, size: 64, offset: 3648)
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !5270, file: !5271, line: 188, baseType: !363, size: 64, offset: 3712)
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !5270, file: !5271, line: 189, baseType: !3971, size: 192, offset: 3776)
!5351 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !5270, file: !5271, line: 190, baseType: !39, size: 64, offset: 3968)
!5352 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !5270, file: !5271, line: 190, baseType: !39, size: 64, offset: 4032)
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !5270, file: !5271, line: 190, baseType: !39, size: 64, offset: 4096)
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !5270, file: !5271, line: 190, baseType: !39, size: 64, offset: 4160)
!5355 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !5270, file: !5271, line: 191, baseType: !39, size: 64, offset: 4224)
!5356 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !5270, file: !5271, line: 191, baseType: !39, size: 64, offset: 4288)
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !5270, file: !5271, line: 191, baseType: !39, size: 64, offset: 4352)
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !5270, file: !5271, line: 191, baseType: !39, size: 64, offset: 4416)
!5359 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !5270, file: !5271, line: 192, baseType: !39, size: 64, offset: 4480)
!5360 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !5270, file: !5271, line: 192, baseType: !39, size: 64, offset: 4544)
!5361 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !5270, file: !5271, line: 192, baseType: !39, size: 64, offset: 4608)
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !5270, file: !5271, line: 192, baseType: !39, size: 64, offset: 4672)
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !5270, file: !5271, line: 193, baseType: !39, size: 64, offset: 4736)
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !5270, file: !5271, line: 193, baseType: !39, size: 64, offset: 4800)
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !5270, file: !5271, line: 194, baseType: !5366, size: 448, offset: 4864)
!5366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !5367, line: 12, size: 448, elements: !5368)
!5367 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!5368 = !{!5369, !5370, !5371, !5372, !5373, !5374, !5375}
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !5366, file: !5367, line: 15, baseType: !363, size: 64)
!5370 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !5366, file: !5367, line: 17, baseType: !363, size: 64, offset: 64)
!5371 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !5366, file: !5367, line: 19, baseType: !363, size: 64, offset: 128)
!5372 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !5366, file: !5367, line: 21, baseType: !363, size: 64, offset: 192)
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !5366, file: !5367, line: 29, baseType: !363, size: 64, offset: 256)
!5374 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !5366, file: !5367, line: 35, baseType: !363, size: 64, offset: 320)
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !5366, file: !5367, line: 44, baseType: !363, size: 64, offset: 384)
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !5270, file: !5271, line: 202, baseType: !365, size: 64, offset: 5312)
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !5270, file: !5271, line: 213, baseType: !5378, size: 2048, offset: 5376)
!5378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5379, size: 2048, elements: !4611)
!5379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !5380, line: 43, size: 128, elements: !5381)
!5380 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!5381 = !{!5382, !5383}
!5382 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !5379, file: !5380, line: 44, baseType: !38, size: 64)
!5383 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !5379, file: !5380, line: 45, baseType: !38, size: 64, offset: 64)
!5384 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !5270, file: !5271, line: 216, baseType: !5385, size: 448, offset: 7424)
!5385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !5271, line: 30, size: 448, elements: !5386)
!5386 = !{!5387, !5388, !5389, !5390, !5391, !5392, !5393}
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !5385, file: !5271, line: 31, baseType: !22, size: 32)
!5388 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !5385, file: !5271, line: 32, baseType: !1050, size: 64, offset: 64)
!5389 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !5385, file: !5271, line: 33, baseType: !39, size: 64, offset: 128)
!5390 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !5385, file: !5271, line: 34, baseType: !363, size: 64, offset: 192)
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !5385, file: !5271, line: 34, baseType: !363, size: 64, offset: 256)
!5392 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !5385, file: !5271, line: 35, baseType: !39, size: 64, offset: 320)
!5393 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !5385, file: !5271, line: 35, baseType: !39, size: 64, offset: 384)
!5394 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !5270, file: !5271, line: 219, baseType: !5395, size: 64, offset: 7872)
!5395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5396, size: 64)
!5396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !5397, line: 41, size: 3456, elements: !5398)
!5397 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!5398 = !{!5399, !5400, !5401, !5402, !5403, !5404, !5405, !5406, !5407, !5408, !5409, !5410, !5411, !5412, !5413, !5415, !5416, !5417, !5418, !5419, !5420, !5421, !5422, !5423, !5424, !5425, !5426, !5427, !5428, !5429, !5430, !5431, !5432, !5433, !5434, !5435, !5436, !5437, !5438, !5439, !5440, !5441, !5442, !5443, !5444, !5445, !5446, !5447, !5448, !5449, !5450, !5451, !5452, !5453, !5454, !5455}
!5399 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !5396, file: !5397, line: 47, baseType: !94, size: 16)
!5400 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !5396, file: !5397, line: 48, baseType: !306, size: 32, offset: 32)
!5401 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !5396, file: !5397, line: 54, baseType: !85, size: 8, offset: 64)
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !5396, file: !5397, line: 55, baseType: !85, size: 8, offset: 72)
!5403 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !5396, file: !5397, line: 73, baseType: !364, size: 64, align: 64, offset: 128)
!5404 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !5396, file: !5397, line: 74, baseType: !364, size: 64, offset: 192)
!5405 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !5396, file: !5397, line: 81, baseType: !364, size: 64, offset: 256)
!5406 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !5396, file: !5397, line: 82, baseType: !364, size: 64, offset: 320)
!5407 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !5396, file: !5397, line: 85, baseType: !364, size: 64, offset: 384)
!5408 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !5396, file: !5397, line: 86, baseType: !364, size: 64, offset: 448)
!5409 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !5396, file: !5397, line: 94, baseType: !364, size: 64, offset: 512)
!5410 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !5396, file: !5397, line: 102, baseType: !364, size: 64, offset: 576)
!5411 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !5396, file: !5397, line: 107, baseType: !4601, size: 256, offset: 640)
!5412 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !5396, file: !5397, line: 108, baseType: !85, size: 8, align: 64, offset: 896)
!5413 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !5396, file: !5397, line: 110, baseType: !5414, size: 24, offset: 904)
!5414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 24, elements: !704)
!5415 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !5396, file: !5397, line: 111, baseType: !306, size: 32, align: 64, offset: 960)
!5416 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !5396, file: !5397, line: 113, baseType: !306, size: 32, offset: 992)
!5417 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !5396, file: !5397, line: 114, baseType: !306, size: 32, offset: 1024)
!5418 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !5396, file: !5397, line: 115, baseType: !306, size: 32, offset: 1056)
!5419 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !5396, file: !5397, line: 117, baseType: !306, size: 32, offset: 1088)
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !5396, file: !5397, line: 118, baseType: !364, size: 64, align: 64, offset: 1152)
!5421 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !5396, file: !5397, line: 120, baseType: !364, size: 64, offset: 1216)
!5422 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !5396, file: !5397, line: 121, baseType: !364, size: 64, offset: 1280)
!5423 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !5396, file: !5397, line: 122, baseType: !364, size: 64, offset: 1344)
!5424 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !5396, file: !5397, line: 123, baseType: !364, size: 64, offset: 1408)
!5425 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !5396, file: !5397, line: 133, baseType: !364, size: 64, offset: 1472)
!5426 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !5396, file: !5397, line: 137, baseType: !364, size: 64, offset: 1536)
!5427 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !5396, file: !5397, line: 142, baseType: !364, size: 64, offset: 1600)
!5428 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !5396, file: !5397, line: 143, baseType: !364, size: 64, offset: 1664)
!5429 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !5396, file: !5397, line: 146, baseType: !364, size: 64, offset: 1728)
!5430 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !5396, file: !5397, line: 147, baseType: !364, size: 64, offset: 1792)
!5431 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !5396, file: !5397, line: 148, baseType: !364, size: 64, offset: 1856)
!5432 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !5396, file: !5397, line: 149, baseType: !364, size: 64, offset: 1920)
!5433 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !5396, file: !5397, line: 154, baseType: !364, size: 64, offset: 1984)
!5434 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !5396, file: !5397, line: 155, baseType: !364, size: 64, offset: 2048)
!5435 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !5396, file: !5397, line: 156, baseType: !364, size: 64, offset: 2112)
!5436 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !5396, file: !5397, line: 158, baseType: !364, size: 64, offset: 2176)
!5437 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !5396, file: !5397, line: 159, baseType: !364, size: 64, offset: 2240)
!5438 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !5396, file: !5397, line: 162, baseType: !364, size: 64, offset: 2304)
!5439 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !5396, file: !5397, line: 163, baseType: !364, size: 64, offset: 2368)
!5440 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !5396, file: !5397, line: 164, baseType: !364, size: 64, offset: 2432)
!5441 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !5396, file: !5397, line: 167, baseType: !364, size: 64, offset: 2496)
!5442 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !5396, file: !5397, line: 168, baseType: !364, size: 64, offset: 2560)
!5443 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !5396, file: !5397, line: 171, baseType: !364, size: 64, offset: 2624)
!5444 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !5396, file: !5397, line: 172, baseType: !364, size: 64, offset: 2688)
!5445 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !5396, file: !5397, line: 175, baseType: !364, size: 64, offset: 2752)
!5446 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !5396, file: !5397, line: 178, baseType: !364, size: 64, offset: 2816)
!5447 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !5396, file: !5397, line: 179, baseType: !364, size: 64, offset: 2880)
!5448 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !5396, file: !5397, line: 182, baseType: !306, size: 32, offset: 2944)
!5449 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !5396, file: !5397, line: 186, baseType: !364, size: 64, align: 64, offset: 3008)
!5450 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !5396, file: !5397, line: 194, baseType: !364, size: 64, offset: 3072)
!5451 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !5396, file: !5397, line: 195, baseType: !364, size: 64, offset: 3136)
!5452 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !5396, file: !5397, line: 199, baseType: !364, size: 64, offset: 3200)
!5453 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !5396, file: !5397, line: 200, baseType: !364, size: 64, offset: 3264)
!5454 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !5396, file: !5397, line: 203, baseType: !364, size: 64, offset: 3328)
!5455 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !5396, file: !5397, line: 204, baseType: !364, size: 64, offset: 3392)
!5456 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !5270, file: !5271, line: 222, baseType: !7, size: 32, offset: 7936)
!5457 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !5270, file: !5271, line: 223, baseType: !5458, size: 64, offset: 8000)
!5458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5459, size: 64)
!5459 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !5271, line: 223, flags: DIFlagFwdDecl)
!5460 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !5270, file: !5271, line: 230, baseType: !825, size: 8, offset: 8064)
!5461 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !5270, file: !5271, line: 231, baseType: !873, size: 16, offset: 8080)
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !5270, file: !5271, line: 232, baseType: !873, size: 16, offset: 8096)
!5463 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !5270, file: !5271, line: 234, baseType: !612, size: 64, offset: 8128)
!5464 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !5270, file: !5271, line: 237, baseType: !668, size: 256, offset: 8192)
!5465 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !5270, file: !5271, line: 243, baseType: !845, size: 320, offset: 8448)
!5466 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !295, file: !296, line: 1111, baseType: !5467, size: 64, offset: 15424)
!5467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5468, size: 64)
!5468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !5271, line: 20, size: 16640, elements: !5469)
!5469 = !{!5470, !5471, !5472, !5473}
!5470 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !5468, file: !5271, line: 21, baseType: !59, size: 32)
!5471 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5468, file: !5271, line: 22, baseType: !311, size: 32, offset: 32)
!5472 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !5468, file: !5271, line: 23, baseType: !54, size: 192, offset: 64)
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !5468, file: !5271, line: 24, baseType: !5474, size: 16384, offset: 256)
!5474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5475, size: 16384, elements: !1485)
!5475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !5282, line: 51, size: 256, elements: !5476)
!5476 = !{!5477}
!5477 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !5475, file: !5282, line: 52, baseType: !5478, size: 256)
!5478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !5282, line: 37, size: 256, elements: !5479)
!5479 = !{!5480, !5487, !5488, !5492}
!5480 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !5478, file: !5282, line: 39, baseType: !5481, size: 64)
!5481 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !5482, line: 83, baseType: !5483)
!5482 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!5483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5484, size: 64)
!5484 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !5482, line: 82, baseType: !5485)
!5485 = !DISubroutineType(types: !5486)
!5486 = !{null, !22}
!5487 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !5478, file: !5282, line: 40, baseType: !39, size: 64, offset: 64)
!5488 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !5478, file: !5282, line: 46, baseType: !5489, size: 64, offset: 128)
!5489 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !5482, line: 86, baseType: !5490)
!5490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5491, size: 64)
!5491 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !5482, line: 85, baseType: !3141)
!5492 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !5478, file: !5282, line: 48, baseType: !5286, size: 64, offset: 192)
!5493 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !295, file: !296, line: 1112, baseType: !5286, size: 64, offset: 15488)
!5494 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !295, file: !296, line: 1113, baseType: !5286, size: 64, offset: 15552)
!5495 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !295, file: !296, line: 1115, baseType: !5286, size: 64, offset: 15616)
!5496 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !295, file: !296, line: 1116, baseType: !5281, size: 192, offset: 15680)
!5497 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !295, file: !296, line: 1117, baseType: !39, size: 64, offset: 15872)
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !295, file: !296, line: 1118, baseType: !35, size: 64, offset: 15936)
!5499 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !295, file: !296, line: 1119, baseType: !7, size: 32, offset: 16000)
!5500 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !295, file: !296, line: 1121, baseType: !651, size: 64, offset: 16064)
!5501 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !295, file: !296, line: 1125, baseType: !5502, size: 64, offset: 16128)
!5502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5503, size: 64)
!5503 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !296, line: 43, flags: DIFlagFwdDecl)
!5504 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !295, file: !296, line: 1127, baseType: !798, size: 32, offset: 16192)
!5505 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !295, file: !296, line: 1128, baseType: !7, size: 32, offset: 16224)
!5506 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !295, file: !296, line: 1130, baseType: !5507, size: 128, offset: 16256)
!5507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !5508, line: 37, size: 128, elements: !5509)
!5508 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!5509 = !{!5510, !5511, !5512}
!5510 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5507, file: !5508, line: 38, baseType: !22, size: 32)
!5511 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !5507, file: !5508, line: 39, baseType: !49, size: 32, offset: 32)
!5512 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !5507, file: !5508, line: 40, baseType: !5513, size: 64, offset: 64)
!5513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5514, size: 64)
!5514 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !5508, line: 24, flags: DIFlagFwdDecl)
!5515 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !295, file: !296, line: 1131, baseType: !5516, size: 256, offset: 16384)
!5516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !5517, line: 12, size: 256, elements: !5518)
!5517 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!5518 = !{!5519, !5520, !5521, !5522}
!5519 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !5516, file: !5517, line: 13, baseType: !913, size: 64)
!5520 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5516, file: !5517, line: 14, baseType: !39, size: 64, offset: 64)
!5521 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5516, file: !5517, line: 15, baseType: !39, size: 64, offset: 128)
!5522 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !5516, file: !5517, line: 16, baseType: !825, size: 8, offset: 192)
!5523 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !295, file: !296, line: 1134, baseType: !363, size: 64, offset: 16640)
!5524 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !295, file: !296, line: 1135, baseType: !363, size: 64, offset: 16704)
!5525 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !295, file: !296, line: 1138, baseType: !59, size: 32, offset: 16768)
!5526 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !295, file: !296, line: 1141, baseType: !455, size: 32, offset: 16800)
!5527 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !295, file: !296, line: 1143, baseType: !5528, size: 64, offset: 16832)
!5528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !296, line: 735, size: 64, elements: !5529)
!5529 = !{!5530}
!5530 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5528, file: !296, line: 736, baseType: !5531, size: 64)
!5531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5528, size: 64)
!5532 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !295, file: !296, line: 1147, baseType: !495, size: 128, offset: 16896)
!5533 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !295, file: !296, line: 1149, baseType: !294, size: 64, offset: 17024)
!5534 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !295, file: !296, line: 1151, baseType: !5535, size: 64, offset: 17088)
!5535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5536, size: 64)
!5536 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !296, line: 1151, flags: DIFlagFwdDecl)
!5537 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !295, file: !296, line: 1188, baseType: !20, size: 64, offset: 17152)
!5538 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !295, file: !296, line: 1191, baseType: !5539, size: 64, offset: 17216)
!5539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5540, size: 64)
!5540 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !296, line: 44, flags: DIFlagFwdDecl)
!5541 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !295, file: !296, line: 1194, baseType: !5542, size: 64, offset: 17280)
!5542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5543, size: 64)
!5543 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !296, line: 45, flags: DIFlagFwdDecl)
!5544 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !295, file: !296, line: 1197, baseType: !5545, size: 64, offset: 17344)
!5545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5546, size: 64)
!5546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !2065, line: 155, size: 64, elements: !5547)
!5547 = !{!5548}
!5548 = !DIDerivedType(tag: DW_TAG_member, name: "reclaimed", scope: !5546, file: !2065, line: 157, baseType: !39, size: 64)
!5549 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !295, file: !296, line: 1199, baseType: !5550, size: 64, offset: 17408)
!5550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5551, size: 64)
!5551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2116, line: 99, size: 128, elements: !5552)
!5552 = !{!5553, !5554, !5555}
!5553 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5551, file: !2116, line: 100, baseType: !661, size: 64)
!5554 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !5551, file: !2116, line: 101, baseType: !49, size: 32, offset: 64)
!5555 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !5551, file: !2116, line: 103, baseType: !26, size: 16, offset: 96)
!5556 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !295, file: !296, line: 1202, baseType: !5557, size: 64, offset: 17472)
!5557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5558, size: 64)
!5558 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !296, line: 48, flags: DIFlagFwdDecl)
!5559 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !295, file: !296, line: 1205, baseType: !39, size: 64, offset: 17536)
!5560 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !295, file: !296, line: 1206, baseType: !5561, size: 64, offset: 17600)
!5561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5562, size: 64)
!5562 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !5282, line: 14, baseType: !5563)
!5563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !5282, line: 12, size: 384, elements: !5564)
!5564 = !{!5565}
!5565 = !DIDerivedType(tag: DW_TAG_member, scope: !5563, file: !5282, line: 13, baseType: !5566, size: 384)
!5566 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5563, file: !5282, line: 13, size: 384, elements: !5567)
!5567 = !{!5568, !5569, !5570, !5571}
!5568 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !5566, file: !5282, line: 13, baseType: !22, size: 32)
!5569 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !5566, file: !5282, line: 13, baseType: !22, size: 32, offset: 32)
!5570 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !5566, file: !5282, line: 13, baseType: !22, size: 32, offset: 64)
!5571 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !5566, file: !5282, line: 13, baseType: !5572, size: 256, offset: 128)
!5572 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !5573, line: 37, size: 256, elements: !5574)
!5573 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!5574 = !{!5575, !5580, !5593, !5599, !5608, !5635, !5640}
!5575 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !5572, file: !5573, line: 42, baseType: !5576, size: 64)
!5576 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5572, file: !5573, line: 39, size: 64, elements: !5577)
!5577 = !{!5578, !5579}
!5578 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5576, file: !5573, line: 40, baseType: !5159, size: 32)
!5579 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5576, file: !5573, line: 41, baseType: !804, size: 32, offset: 32)
!5580 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !5572, file: !5573, line: 50, baseType: !5581, size: 192)
!5581 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5572, file: !5573, line: 45, size: 192, elements: !5582)
!5582 = !{!5583, !5585, !5586, !5592}
!5583 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !5581, file: !5573, line: 46, baseType: !5584, size: 32)
!5584 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !37, line: 95, baseType: !22)
!5585 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !5581, file: !5573, line: 47, baseType: !22, size: 32, offset: 32)
!5586 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !5581, file: !5573, line: 48, baseType: !5587, size: 64, offset: 64)
!5587 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !5573, line: 11, baseType: !5588)
!5588 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !5573, line: 8, size: 64, elements: !5589)
!5589 = !{!5590, !5591}
!5590 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !5588, file: !5573, line: 9, baseType: !22, size: 32)
!5591 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !5588, file: !5573, line: 10, baseType: !20, size: 64)
!5592 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !5581, file: !5573, line: 49, baseType: !22, size: 32, offset: 128)
!5593 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !5572, file: !5573, line: 57, baseType: !5594, size: 128)
!5594 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5572, file: !5573, line: 53, size: 128, elements: !5595)
!5595 = !{!5596, !5597, !5598}
!5596 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5594, file: !5573, line: 54, baseType: !5159, size: 32)
!5597 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5594, file: !5573, line: 55, baseType: !804, size: 32, offset: 32)
!5598 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !5594, file: !5573, line: 56, baseType: !5587, size: 64, offset: 64)
!5599 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !5572, file: !5573, line: 66, baseType: !5600, size: 256)
!5600 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5572, file: !5573, line: 60, size: 256, elements: !5601)
!5601 = !{!5602, !5603, !5604, !5605, !5607}
!5602 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5600, file: !5573, line: 61, baseType: !5159, size: 32)
!5603 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5600, file: !5573, line: 62, baseType: !804, size: 32, offset: 32)
!5604 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !5600, file: !5573, line: 63, baseType: !22, size: 32, offset: 64)
!5605 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !5600, file: !5573, line: 64, baseType: !5606, size: 64, offset: 128)
!5606 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !37, line: 94, baseType: !1349)
!5607 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !5600, file: !5573, line: 65, baseType: !5606, size: 64, offset: 192)
!5608 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !5572, file: !5573, line: 105, baseType: !5609, size: 256)
!5609 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5572, file: !5573, line: 69, size: 256, elements: !5610)
!5610 = !{!5611, !5612}
!5611 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !5609, file: !5573, line: 70, baseType: !20, size: 64)
!5612 = !DIDerivedType(tag: DW_TAG_member, scope: !5609, file: !5573, line: 79, baseType: !5613, size: 192, offset: 64)
!5613 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5609, file: !5573, line: 79, size: 192, elements: !5614)
!5614 = !{!5615, !5616, !5617, !5624, !5629}
!5615 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !5613, file: !5573, line: 81, baseType: !22, size: 32)
!5616 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !5613, file: !5573, line: 86, baseType: !873, size: 16)
!5617 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !5613, file: !5573, line: 92, baseType: !5618, size: 192)
!5618 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5613, file: !5573, line: 88, size: 192, elements: !5619)
!5619 = !{!5620, !5622, !5623}
!5620 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !5618, file: !5573, line: 89, baseType: !5621, size: 64)
!5621 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 64, elements: !474)
!5622 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !5618, file: !5573, line: 90, baseType: !20, size: 64, offset: 64)
!5623 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !5618, file: !5573, line: 91, baseType: !20, size: 64, offset: 128)
!5624 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !5613, file: !5573, line: 97, baseType: !5625, size: 96)
!5625 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5613, file: !5573, line: 94, size: 96, elements: !5626)
!5626 = !{!5627, !5628}
!5627 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !5625, file: !5573, line: 95, baseType: !5621, size: 64)
!5628 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !5625, file: !5573, line: 96, baseType: !306, size: 32, offset: 64)
!5629 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !5613, file: !5573, line: 103, baseType: !5630, size: 128)
!5630 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5613, file: !5573, line: 99, size: 128, elements: !5631)
!5631 = !{!5632, !5633, !5634}
!5632 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !5630, file: !5573, line: 100, baseType: !39, size: 64)
!5633 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !5630, file: !5573, line: 101, baseType: !306, size: 32, offset: 64)
!5634 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5630, file: !5573, line: 102, baseType: !306, size: 32, offset: 96)
!5635 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !5572, file: !5573, line: 111, baseType: !5636, size: 128)
!5636 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5572, file: !5573, line: 108, size: 128, elements: !5637)
!5637 = !{!5638, !5639}
!5638 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !5636, file: !5573, line: 109, baseType: !1050, size: 64)
!5639 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !5636, file: !5573, line: 110, baseType: !22, size: 32, offset: 64)
!5640 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !5572, file: !5573, line: 118, baseType: !5641, size: 128)
!5641 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5572, file: !5573, line: 114, size: 128, elements: !5642)
!5642 = !{!5643, !5644, !5645}
!5643 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !5641, file: !5573, line: 115, baseType: !20, size: 64)
!5644 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !5641, file: !5573, line: 116, baseType: !22, size: 32, offset: 64)
!5645 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !5641, file: !5573, line: 117, baseType: !7, size: 32, offset: 96)
!5646 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !295, file: !296, line: 1208, baseType: !5366, size: 448, offset: 17664)
!5647 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !295, file: !296, line: 1215, baseType: !363, size: 64, offset: 18112)
!5648 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !295, file: !296, line: 1217, baseType: !363, size: 64, offset: 18176)
!5649 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !295, file: !296, line: 1219, baseType: !363, size: 64, offset: 18240)
!5650 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !295, file: !296, line: 1223, baseType: !5651, size: 64, offset: 18304)
!5651 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !5652, line: 99, baseType: !5653)
!5652 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!5653 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5652, line: 99, size: 64, elements: !5654)
!5654 = !{!5655}
!5655 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !5653, file: !5652, line: 99, baseType: !563, size: 64)
!5656 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !295, file: !296, line: 1225, baseType: !1166, size: 32, offset: 18368)
!5657 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !295, file: !296, line: 1226, baseType: !22, size: 32, offset: 18400)
!5658 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !295, file: !296, line: 1227, baseType: !22, size: 32, offset: 18432)
!5659 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !295, file: !296, line: 1231, baseType: !4041, size: 64, offset: 18496)
!5660 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !295, file: !296, line: 1233, baseType: !97, size: 128, offset: 18560)
!5661 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !295, file: !296, line: 1240, baseType: !5662, size: 64, offset: 18688)
!5662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5663, size: 64)
!5663 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !296, line: 62, flags: DIFlagFwdDecl)
!5664 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !295, file: !296, line: 1242, baseType: !5665, size: 64, offset: 18752)
!5665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5666, size: 64)
!5666 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !296, line: 1242, flags: DIFlagFwdDecl)
!5667 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !295, file: !296, line: 1244, baseType: !97, size: 128, offset: 18816)
!5668 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !295, file: !296, line: 1245, baseType: !5669, size: 64, offset: 18944)
!5669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5670, size: 64)
!5670 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !296, line: 51, flags: DIFlagFwdDecl)
!5671 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !295, file: !296, line: 1246, baseType: !668, size: 256, offset: 19008)
!5672 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !295, file: !296, line: 1247, baseType: !7, size: 32, offset: 19264)
!5673 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !295, file: !296, line: 1250, baseType: !3291, size: 64, offset: 19328)
!5674 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !295, file: !296, line: 1251, baseType: !668, size: 256, offset: 19392)
!5675 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !295, file: !296, line: 1252, baseType: !97, size: 128, offset: 19648)
!5676 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !295, file: !296, line: 1259, baseType: !1768, size: 64, offset: 19776)
!5677 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !295, file: !296, line: 1260, baseType: !873, size: 16, offset: 19840)
!5678 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !295, file: !296, line: 1261, baseType: !873, size: 16, offset: 19856)
!5679 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !295, file: !296, line: 1314, baseType: !5680, size: 64, offset: 19904)
!5680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5681, size: 64)
!5681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !5682, line: 62, size: 256, align: 256, elements: !5683)
!5682 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!5683 = !{!5684, !5685, !5686, !5687, !5688, !5689, !5690}
!5684 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !5681, file: !5682, line: 75, baseType: !306, size: 32)
!5685 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !5681, file: !5682, line: 90, baseType: !306, size: 32, offset: 32)
!5686 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !5681, file: !5682, line: 112, baseType: !364, size: 64, offset: 64)
!5687 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5681, file: !5682, line: 132, baseType: !306, size: 32, offset: 128)
!5688 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !5681, file: !5682, line: 140, baseType: !306, size: 32, offset: 160)
!5689 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !5681, file: !5682, line: 149, baseType: !306, size: 32, offset: 192)
!5690 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !5681, file: !5682, line: 154, baseType: !5691, offset: 224)
!5691 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, elements: !1057)
!5692 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !295, file: !296, line: 1315, baseType: !305, size: 32, offset: 19968)
!5693 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !295, file: !296, line: 1316, baseType: !305, size: 32, offset: 20000)
!5694 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !295, file: !296, line: 1321, baseType: !39, size: 64, offset: 20032)
!5695 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !295, file: !296, line: 1325, baseType: !22, size: 32, offset: 20096)
!5696 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !295, file: !296, line: 1326, baseType: !22, size: 32, offset: 20128)
!5697 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !295, file: !296, line: 1327, baseType: !22, size: 32, offset: 20160)
!5698 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !295, file: !296, line: 1328, baseType: !22, size: 32, offset: 20192)
!5699 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !295, file: !296, line: 1329, baseType: !648, size: 128, align: 64, offset: 20224)
!5700 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !295, file: !296, line: 1332, baseType: !5701, size: 128, offset: 20352)
!5701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !5702, line: 51, size: 128, elements: !5703)
!5702 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!5703 = !{!5704, !5709, !5710}
!5704 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !5701, file: !5702, line: 60, baseType: !5705, size: 64)
!5705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !5706, line: 7, size: 64, elements: !5707)
!5706 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!5707 = !{!5708}
!5708 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !5705, file: !5706, line: 12, baseType: !560, size: 64)
!5709 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !5701, file: !5702, line: 63, baseType: !825, size: 8, offset: 64)
!5710 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !5701, file: !5702, line: 70, baseType: !825, size: 8, offset: 72)
!5711 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !295, file: !296, line: 1335, baseType: !4848, size: 64, offset: 20480)
!5712 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !295, file: !296, line: 1337, baseType: !5713, size: 128, offset: 20544)
!5713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !5702, line: 39, size: 128, elements: !5714)
!5714 = !{!5715, !5716, !5717}
!5715 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !5713, file: !5702, line: 40, baseType: !1566, size: 64)
!5716 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5713, file: !5702, line: 42, baseType: !306, size: 32, offset: 64)
!5717 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5713, file: !5702, line: 43, baseType: !306, size: 32, offset: 96)
!5718 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !295, file: !296, line: 1340, baseType: !5719, size: 64, offset: 20672)
!5719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5720, size: 64)
!5720 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !296, line: 69, flags: DIFlagFwdDecl)
!5721 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !295, file: !296, line: 1351, baseType: !22, size: 32, offset: 20736)
!5722 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !295, file: !296, line: 1352, baseType: !22, size: 32, offset: 20768)
!5723 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !295, file: !296, line: 1354, baseType: !39, size: 64, offset: 20800)
!5724 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !295, file: !296, line: 1364, baseType: !363, size: 64, offset: 20864)
!5725 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !295, file: !296, line: 1365, baseType: !363, size: 64, offset: 20928)
!5726 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !295, file: !296, line: 1412, baseType: !39, size: 64, offset: 20992)
!5727 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !295, file: !296, line: 1453, baseType: !2111, size: 64, offset: 21056)
!5728 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !295, file: !296, line: 1457, baseType: !5729, size: 64, offset: 21120)
!5729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5730, size: 64)
!5730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !273, line: 61, size: 576, elements: !5731)
!5731 = !{!5732, !5733, !5752, !5755, !5756, !5789, !5799}
!5732 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5730, file: !273, line: 62, baseType: !272, size: 32)
!5733 = !DIDerivedType(tag: DW_TAG_member, scope: !5730, file: !273, line: 64, baseType: !5734, size: 192, offset: 64)
!5734 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5730, file: !273, line: 64, size: 192, elements: !5735)
!5735 = !{!5736, !5747}
!5736 = !DIDerivedType(tag: DW_TAG_member, scope: !5734, file: !273, line: 65, baseType: !5737, size: 192)
!5737 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5734, file: !273, line: 65, size: 192, elements: !5738)
!5738 = !{!5739, !5746}
!5739 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !5737, file: !273, line: 66, baseType: !5740, size: 128)
!5740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !5741, line: 50, size: 128, elements: !5742)
!5741 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!5742 = !{!5743, !5744, !5745}
!5743 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !5740, file: !5741, line: 52, baseType: !39, size: 64)
!5744 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !5740, file: !5741, line: 54, baseType: !7, size: 32, offset: 64)
!5745 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !5740, file: !5741, line: 55, baseType: !7, size: 32, offset: 96)
!5746 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !5737, file: !273, line: 67, baseType: !39, size: 64, offset: 128)
!5747 = !DIDerivedType(tag: DW_TAG_member, scope: !5734, file: !273, line: 70, baseType: !5748, size: 192)
!5748 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5734, file: !273, line: 70, size: 192, elements: !5749)
!5749 = !{!5750, !5751}
!5750 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !5748, file: !273, line: 71, baseType: !648, size: 128, align: 64)
!5751 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !5748, file: !273, line: 72, baseType: !39, size: 64, offset: 128)
!5752 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !5730, file: !273, line: 76, baseType: !5753, size: 64, offset: 256)
!5753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5754, size: 64)
!5754 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !273, line: 76, flags: DIFlagFwdDecl)
!5755 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !5730, file: !273, line: 77, baseType: !39, size: 64, offset: 320)
!5756 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !5730, file: !273, line: 79, baseType: !5757, size: 64, offset: 384)
!5757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5758, size: 64)
!5758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !5741, line: 25, size: 256, elements: !5759)
!5759 = !{!5760, !5766, !5770}
!5760 = !DIDerivedType(tag: DW_TAG_member, scope: !5758, file: !5741, line: 26, baseType: !5761, size: 128)
!5761 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5758, file: !5741, line: 26, size: 128, elements: !5762)
!5762 = !{!5763, !5765}
!5763 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !5761, file: !5741, line: 27, baseType: !5764, size: 128)
!5764 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 128, elements: !4611)
!5765 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !5761, file: !5741, line: 28, baseType: !5764, size: 128)
!5766 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5758, file: !5741, line: 31, baseType: !5767, size: 64, offset: 128)
!5767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5768, size: 64)
!5768 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5769)
!5769 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !5741, line: 23, flags: DIFlagFwdDecl)
!5770 = !DIDerivedType(tag: DW_TAG_member, scope: !5758, file: !5741, line: 33, baseType: !5771, size: 64, offset: 192)
!5771 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5758, file: !5741, line: 33, size: 64, elements: !5772)
!5772 = !{!5773, !5779, !5784}
!5773 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !5771, file: !5741, line: 38, baseType: !5774, size: 64)
!5774 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5771, file: !5741, line: 34, size: 64, elements: !5775)
!5775 = !{!5776, !5777, !5778}
!5776 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !5774, file: !5741, line: 35, baseType: !837, size: 32)
!5777 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5774, file: !5741, line: 36, baseType: !83, size: 8, offset: 32)
!5778 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !5774, file: !5741, line: 37, baseType: !83, size: 8, offset: 40)
!5779 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !5771, file: !5741, line: 42, baseType: !5780, size: 16)
!5780 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5771, file: !5741, line: 39, size: 16, elements: !5781)
!5781 = !{!5782, !5783}
!5782 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !5780, file: !5741, line: 40, baseType: !83, size: 8)
!5783 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5780, file: !5741, line: 41, baseType: !83, size: 8, offset: 8)
!5784 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !5771, file: !5741, line: 46, baseType: !5785, size: 16)
!5785 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5771, file: !5741, line: 43, size: 16, elements: !5786)
!5786 = !{!5787, !5788}
!5787 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !5785, file: !5741, line: 44, baseType: !83, size: 8)
!5788 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5785, file: !5741, line: 45, baseType: !83, size: 8, offset: 8)
!5789 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !5730, file: !273, line: 81, baseType: !5790, size: 64, offset: 448)
!5790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5791, size: 64)
!5791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !273, line: 85, size: 384, elements: !5792)
!5792 = !{!5793, !5794, !5795, !5796, !5797, !5798}
!5793 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !5791, file: !273, line: 86, baseType: !5753, size: 64)
!5794 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5791, file: !273, line: 87, baseType: !39, size: 64, offset: 64)
!5795 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !5791, file: !273, line: 88, baseType: !39, size: 64, offset: 128)
!5796 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !5791, file: !273, line: 89, baseType: !39, size: 64, offset: 192)
!5797 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !5791, file: !273, line: 90, baseType: !825, size: 8, offset: 256)
!5798 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5791, file: !273, line: 92, baseType: !5790, size: 64, offset: 320)
!5799 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !5730, file: !273, line: 82, baseType: !7, size: 32, offset: 512)
!5800 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !295, file: !296, line: 1463, baseType: !5801, offset: 21184)
!5801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !296, line: 739, elements: !633)
!5802 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !295, file: !296, line: 1470, baseType: !648, size: 128, align: 64, offset: 21184)
!5803 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !295, file: !296, line: 1471, baseType: !311, size: 32, offset: 21312)
!5804 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !295, file: !296, line: 1472, baseType: !22, size: 32, offset: 21344)
!5805 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !295, file: !296, line: 1474, baseType: !294, size: 64, offset: 21376)
!5806 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !295, file: !296, line: 1475, baseType: !2320, size: 320, offset: 21440)
!5807 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !295, file: !296, line: 1478, baseType: !5808, size: 64, offset: 21760)
!5808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5809, size: 64)
!5809 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !296, line: 1478, flags: DIFlagFwdDecl)
!5810 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !295, file: !296, line: 1482, baseType: !311, size: 32, offset: 21824)
!5811 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !295, file: !296, line: 1489, baseType: !20, size: 64, offset: 21888)
!5812 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !295, file: !296, line: 1504, baseType: !20, size: 64, offset: 21952)
!5813 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !295, file: !296, line: 1505, baseType: !364, size: 64, offset: 22016)
!5814 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !295, file: !296, line: 1506, baseType: !363, size: 64, offset: 22080)
!5815 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !295, file: !296, line: 1507, baseType: !364, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!5816 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !295, file: !296, line: 1508, baseType: !364, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!5817 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !295, file: !296, line: 1509, baseType: !364, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!5818 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !295, file: !296, line: 1510, baseType: !648, size: 128, align: 64, offset: 22208)
!5819 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !295, file: !296, line: 1511, baseType: !22, size: 32, offset: 22336)
!5820 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !295, file: !296, line: 1515, baseType: !5821, size: 64, offset: 22400)
!5821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !325, line: 56, size: 64, elements: !5822)
!5822 = !{!5823}
!5823 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !5821, file: !325, line: 57, baseType: !328, size: 64)
!5824 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !295, file: !296, line: 1518, baseType: !5821, size: 64, offset: 22464)
!5825 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !295, file: !296, line: 1528, baseType: !648, size: 128, align: 64, offset: 22528)
!5826 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !295, file: !296, line: 1552, baseType: !5827, size: 35328, offset: 23040)
!5827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !5828, line: 430, size: 35328, elements: !5829)
!5828 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!5829 = !{!5830, !5848, !5849, !5850, !5851, !5852, !5853, !5854, !5855, !5857, !5858, !5859, !5860, !5861, !5862, !5865, !5866, !5867, !5868}
!5830 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !5827, file: !5828, line: 432, baseType: !5831, size: 192)
!5831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5832, size: 192, elements: !704)
!5832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !5833, line: 16, size: 64, elements: !5834)
!5833 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!5834 = !{!5835, !5836, !5837, !5838, !5839, !5840, !5841, !5842, !5843, !5844, !5845, !5846, !5847}
!5835 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !5832, file: !5833, line: 17, baseType: !93, size: 16)
!5836 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !5832, file: !5833, line: 18, baseType: !93, size: 16, offset: 16)
!5837 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !5832, file: !5833, line: 19, baseType: !93, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!5838 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5832, file: !5833, line: 19, baseType: !93, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!5839 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !5832, file: !5833, line: 19, baseType: !93, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!5840 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !5832, file: !5833, line: 19, baseType: !93, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!5841 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !5832, file: !5833, line: 19, baseType: !93, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!5842 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !5832, file: !5833, line: 20, baseType: !93, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!5843 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !5832, file: !5833, line: 20, baseType: !93, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!5844 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !5832, file: !5833, line: 20, baseType: !93, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!5845 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !5832, file: !5833, line: 20, baseType: !93, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!5846 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !5832, file: !5833, line: 20, baseType: !93, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!5847 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !5832, file: !5833, line: 20, baseType: !93, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!5848 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !5827, file: !5828, line: 436, baseType: !39, size: 64, offset: 192)
!5849 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !5827, file: !5828, line: 440, baseType: !26, size: 16, offset: 256)
!5850 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !5827, file: !5828, line: 441, baseType: !26, size: 16, offset: 272)
!5851 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !5827, file: !5828, line: 442, baseType: !26, size: 16, offset: 288)
!5852 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !5827, file: !5828, line: 443, baseType: !26, size: 16, offset: 304)
!5853 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !5827, file: !5828, line: 447, baseType: !39, size: 64, offset: 320)
!5854 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !5827, file: !5828, line: 448, baseType: !39, size: 64, offset: 384)
!5855 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !5827, file: !5828, line: 459, baseType: !5856, size: 256, offset: 448)
!5856 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3252, size: 256, elements: !725)
!5857 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !5827, file: !5828, line: 461, baseType: !39, size: 64, offset: 704)
!5858 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !5827, file: !5828, line: 463, baseType: !39, size: 64, offset: 768)
!5859 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !5827, file: !5828, line: 465, baseType: !39, size: 64, offset: 832)
!5860 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !5827, file: !5828, line: 466, baseType: !39, size: 64, offset: 896)
!5861 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !5827, file: !5828, line: 467, baseType: !39, size: 64, offset: 960)
!5862 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !5827, file: !5828, line: 473, baseType: !5863, size: 64, offset: 1024)
!5863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5864, size: 64)
!5864 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !5828, line: 10, flags: DIFlagFwdDecl)
!5865 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !5827, file: !5828, line: 480, baseType: !39, size: 64, offset: 1088)
!5866 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !5827, file: !5828, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!5867 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !5827, file: !5828, line: 491, baseType: !305, size: 32, offset: 1184)
!5868 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !5827, file: !5828, line: 501, baseType: !5869, size: 33792, offset: 1536)
!5869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !5870, line: 448, size: 33792, elements: !5871)
!5870 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!5871 = !{!5872, !5873, !5874, !5982, !5983, !5989, !5990}
!5872 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !5869, file: !5870, line: 461, baseType: !7, size: 32)
!5873 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !5869, file: !5870, line: 468, baseType: !39, size: 64, offset: 64)
!5874 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !5869, file: !5870, line: 476, baseType: !5875, size: 64, offset: 128)
!5875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5876, size: 64)
!5876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !5870, line: 356, size: 33280, align: 512, elements: !5877)
!5877 = !{!5878, !5879, !5880, !5881, !5882, !5883, !5884, !5885, !5886, !5887}
!5878 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5876, file: !5870, line: 358, baseType: !7, size: 32)
!5879 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !5876, file: !5870, line: 361, baseType: !7, size: 32, offset: 32)
!5880 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5876, file: !5870, line: 364, baseType: !363, size: 64, offset: 64)
!5881 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !5876, file: !5870, line: 367, baseType: !363, size: 64, offset: 128)
!5882 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !5876, file: !5870, line: 370, baseType: !363, size: 64, offset: 192)
!5883 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !5876, file: !5870, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!5884 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !5876, file: !5870, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!5885 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !5876, file: !5870, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!5886 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !5876, file: !5870, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!5887 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5876, file: !5870, line: 397, baseType: !5888, size: 32768, offset: 512)
!5888 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !5870, line: 348, size: 32768, elements: !5889)
!5889 = !{!5890, !5905, !5942, !5967, !5980}
!5890 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !5888, file: !5870, line: 349, baseType: !5891, size: 896)
!5891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !5870, line: 12, size: 896, elements: !5892)
!5892 = !{!5893, !5894, !5895, !5896, !5897, !5898, !5899, !5900, !5904}
!5893 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5891, file: !5870, line: 13, baseType: !305, size: 32)
!5894 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5891, file: !5870, line: 14, baseType: !305, size: 32, offset: 32)
!5895 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5891, file: !5870, line: 15, baseType: !305, size: 32, offset: 64)
!5896 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5891, file: !5870, line: 16, baseType: !305, size: 32, offset: 96)
!5897 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5891, file: !5870, line: 17, baseType: !305, size: 32, offset: 128)
!5898 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5891, file: !5870, line: 18, baseType: !305, size: 32, offset: 160)
!5899 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5891, file: !5870, line: 19, baseType: !305, size: 32, offset: 192)
!5900 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5891, file: !5870, line: 22, baseType: !5901, size: 640, offset: 224)
!5901 = !DICompositeType(tag: DW_TAG_array_type, baseType: !305, size: 640, elements: !5902)
!5902 = !{!5903}
!5903 = !DISubrange(count: 20)
!5904 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5891, file: !5870, line: 25, baseType: !305, size: 32, offset: 864)
!5905 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !5888, file: !5870, line: 350, baseType: !5906, size: 4096, align: 128)
!5906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !5870, line: 34, size: 4096, align: 128, elements: !5907)
!5907 = !{!5908, !5909, !5910, !5911, !5912, !5927, !5928, !5929, !5931, !5933, !5937}
!5908 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5906, file: !5870, line: 35, baseType: !93, size: 16)
!5909 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5906, file: !5870, line: 36, baseType: !93, size: 16, offset: 16)
!5910 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5906, file: !5870, line: 37, baseType: !93, size: 16, offset: 32)
!5911 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !5906, file: !5870, line: 38, baseType: !93, size: 16, offset: 48)
!5912 = !DIDerivedType(tag: DW_TAG_member, scope: !5906, file: !5870, line: 39, baseType: !5913, size: 128, offset: 64)
!5913 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5906, file: !5870, line: 39, size: 128, elements: !5914)
!5914 = !{!5915, !5920}
!5915 = !DIDerivedType(tag: DW_TAG_member, scope: !5913, file: !5870, line: 40, baseType: !5916, size: 128)
!5916 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5913, file: !5870, line: 40, size: 128, elements: !5917)
!5917 = !{!5918, !5919}
!5918 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !5916, file: !5870, line: 41, baseType: !363, size: 64)
!5919 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !5916, file: !5870, line: 42, baseType: !363, size: 64, offset: 64)
!5920 = !DIDerivedType(tag: DW_TAG_member, scope: !5913, file: !5870, line: 44, baseType: !5921, size: 128)
!5921 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5913, file: !5870, line: 44, size: 128, elements: !5922)
!5922 = !{!5923, !5924, !5925, !5926}
!5923 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5921, file: !5870, line: 45, baseType: !305, size: 32)
!5924 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5921, file: !5870, line: 46, baseType: !305, size: 32, offset: 32)
!5925 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5921, file: !5870, line: 47, baseType: !305, size: 32, offset: 64)
!5926 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5921, file: !5870, line: 48, baseType: !305, size: 32, offset: 96)
!5927 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !5906, file: !5870, line: 51, baseType: !305, size: 32, offset: 192)
!5928 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !5906, file: !5870, line: 52, baseType: !305, size: 32, offset: 224)
!5929 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5906, file: !5870, line: 55, baseType: !5930, size: 1024, offset: 256)
!5930 = !DICompositeType(tag: DW_TAG_array_type, baseType: !305, size: 1024, elements: !4602)
!5931 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !5906, file: !5870, line: 58, baseType: !5932, size: 2048, offset: 1280)
!5932 = !DICompositeType(tag: DW_TAG_array_type, baseType: !305, size: 2048, elements: !1485)
!5933 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !5906, file: !5870, line: 60, baseType: !5934, size: 384, offset: 3328)
!5934 = !DICompositeType(tag: DW_TAG_array_type, baseType: !305, size: 384, elements: !5935)
!5935 = !{!5936}
!5936 = !DISubrange(count: 12)
!5937 = !DIDerivedType(tag: DW_TAG_member, scope: !5906, file: !5870, line: 62, baseType: !5938, size: 384, offset: 3712)
!5938 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5906, file: !5870, line: 62, size: 384, elements: !5939)
!5939 = !{!5940, !5941}
!5940 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !5938, file: !5870, line: 63, baseType: !5934, size: 384)
!5941 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !5938, file: !5870, line: 64, baseType: !5934, size: 384)
!5942 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !5888, file: !5870, line: 351, baseType: !5943, size: 1088)
!5943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !5870, line: 79, size: 1088, elements: !5944)
!5944 = !{!5945, !5946, !5947, !5948, !5949, !5950, !5951, !5952, !5953, !5954, !5955, !5956, !5957, !5958, !5959, !5966}
!5945 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5943, file: !5870, line: 80, baseType: !305, size: 32)
!5946 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5943, file: !5870, line: 81, baseType: !305, size: 32, offset: 32)
!5947 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5943, file: !5870, line: 82, baseType: !305, size: 32, offset: 64)
!5948 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5943, file: !5870, line: 83, baseType: !305, size: 32, offset: 96)
!5949 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5943, file: !5870, line: 84, baseType: !305, size: 32, offset: 128)
!5950 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5943, file: !5870, line: 85, baseType: !305, size: 32, offset: 160)
!5951 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5943, file: !5870, line: 86, baseType: !305, size: 32, offset: 192)
!5952 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5943, file: !5870, line: 88, baseType: !5901, size: 640, offset: 224)
!5953 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !5943, file: !5870, line: 89, baseType: !83, size: 8, offset: 864)
!5954 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !5943, file: !5870, line: 90, baseType: !83, size: 8, offset: 872)
!5955 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !5943, file: !5870, line: 91, baseType: !83, size: 8, offset: 880)
!5956 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !5943, file: !5870, line: 92, baseType: !83, size: 8, offset: 888)
!5957 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !5943, file: !5870, line: 93, baseType: !83, size: 8, offset: 896)
!5958 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !5943, file: !5870, line: 94, baseType: !83, size: 8, offset: 904)
!5959 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5943, file: !5870, line: 95, baseType: !5960, size: 64, offset: 960)
!5960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5961, size: 64)
!5961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !5962, line: 11, size: 128, elements: !5963)
!5962 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!5963 = !{!5964, !5965}
!5964 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !5961, file: !5962, line: 12, baseType: !1050, size: 64)
!5965 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5961, file: !5962, line: 13, baseType: !3815, size: 64, offset: 64)
!5966 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !5943, file: !5870, line: 96, baseType: !305, size: 32, offset: 1024)
!5967 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !5888, file: !5870, line: 352, baseType: !5968, size: 4608, align: 512)
!5968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !5870, line: 333, size: 4608, align: 512, elements: !5969)
!5969 = !{!5970, !5971, !5978}
!5970 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !5968, file: !5870, line: 334, baseType: !5906, size: 4096, align: 128)
!5971 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !5968, file: !5870, line: 335, baseType: !5972, size: 512, offset: 4096)
!5972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !5870, line: 312, size: 512, elements: !5973)
!5973 = !{!5974, !5975, !5976}
!5974 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5972, file: !5870, line: 313, baseType: !363, size: 64)
!5975 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !5972, file: !5870, line: 314, baseType: !363, size: 64, offset: 64)
!5976 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5972, file: !5870, line: 315, baseType: !5977, size: 384, offset: 128)
!5977 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, size: 384, elements: !891)
!5978 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !5968, file: !5870, line: 336, baseType: !5979, offset: 4608)
!5979 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, elements: !1057)
!5980 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !5888, file: !5870, line: 353, baseType: !5981, size: 32768)
!5981 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 32768, elements: !3196)
!5982 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !5869, file: !5870, line: 484, baseType: !5875, size: 64, offset: 192)
!5983 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !5869, file: !5870, line: 491, baseType: !5984, size: 128, offset: 256)
!5984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !5870, line: 404, size: 128, elements: !5985)
!5985 = !{!5986, !5987, !5988}
!5986 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !5984, file: !5870, line: 424, baseType: !363, size: 64)
!5987 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !5984, file: !5870, line: 432, baseType: !7, size: 32, offset: 64)
!5988 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !5984, file: !5870, line: 440, baseType: !7, size: 32, offset: 96)
!5989 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !5869, file: !5870, line: 498, baseType: !5984, size: 128, offset: 384)
!5990 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !5869, file: !5870, line: 508, baseType: !5876, size: 33280, align: 512, offset: 512)
!5991 = !{!0, !5992, !5994, !5996, !6001, !6003, !6005, !6007, !6009, !6011}
!5992 = !DIGlobalVariableExpression(var: !5993, expr: !DIExpression())
!5993 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_freezer_active349", scope: !2, file: !3, line: 17, type: !20, isLocal: true, isDefinition: true)
!5994 = !DIGlobalVariableExpression(var: !5995, expr: !DIExpression())
!5995 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_freezing_slow_path350", scope: !2, file: !3, line: 54, type: !20, isLocal: true, isDefinition: true)
!5996 = !DIGlobalVariableExpression(var: !5997, expr: !DIExpression())
!5997 = distinct !DIGlobalVariable(scope: null, file: !3, line: 69, type: !5998, isLocal: true, isDefinition: true)
!5998 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 136, elements: !5999)
!5999 = !{!6000}
!6000 = !DISubrange(count: 17)
!6001 = !DIGlobalVariableExpression(var: !6002, expr: !DIExpression())
!6002 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___refrigerator354", scope: !2, file: !3, line: 92, type: !20, isLocal: true, isDefinition: true)
!6003 = !DIGlobalVariableExpression(var: !6004, expr: !DIExpression())
!6004 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_set_freezable358", scope: !2, file: !3, line: 235, type: !20, isLocal: true, isDefinition: true)
!6005 = !DIGlobalVariableExpression(var: !6006, expr: !DIExpression())
!6006 = distinct !DIGlobalVariable(name: "pm_freezing", scope: !2, file: !3, line: 23, type: !825, isLocal: false, isDefinition: true)
!6007 = !DIGlobalVariableExpression(var: !6008, expr: !DIExpression())
!6008 = distinct !DIGlobalVariable(name: "pm_nosig_freezing", scope: !2, file: !3, line: 24, type: !825, isLocal: false, isDefinition: true)
!6009 = !DIGlobalVariableExpression(var: !6010, expr: !DIExpression())
!6010 = distinct !DIGlobalVariable(name: "freezer_lock", scope: !2, file: !3, line: 27, type: !59, isLocal: true, isDefinition: true)
!6011 = !DIGlobalVariableExpression(var: !6012, expr: !DIExpression())
!6012 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__might_resched2", scope: !6013, file: !6014, line: 112, type: !20, isLocal: true, isDefinition: true)
!6013 = distinct !DISubprogram(name: "might_resched", scope: !6014, file: !6014, line: 110, type: !3141, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6014 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!6015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_false", file: !3035, line: 363, size: 128, elements: !6016)
!6016 = !{!6017}
!6017 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !6015, file: !3035, line: 364, baseType: !3100, size: 128)
!6018 = !{i32 7, !"Dwarf Version", i32 5}
!6019 = !{i32 2, !"Debug Info Version", i32 3}
!6020 = !{i32 1, !"wchar_size", i32 2}
!6021 = !{i32 8, !"cf-protection-branch", i32 1}
!6022 = !{i32 4, !"function_return_thunk_extern", i32 1}
!6023 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!6024 = !{i32 1, !"Code Model", i32 2}
!6025 = !{i32 1, !"override-stack-alignment", i32 8}
!6026 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6027 = distinct !DISubprogram(name: "freezing_slow_path", scope: !3, file: !3, line: 38, type: !6028, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6030)
!6028 = !DISubroutineType(types: !6029)
!6029 = !{!825, !294}
!6030 = !{!6031}
!6031 = !DILocalVariable(name: "p", arg: 1, scope: !6027, file: !3, line: 38, type: !294)
!6032 = !DILocation(line: 38, column: 45, scope: !6027)
!6033 = !DILocation(line: 40, column: 6, scope: !6034)
!6034 = distinct !DILexicalBlock(scope: !6027, file: !3, line: 40, column: 6)
!6035 = !DILocation(line: 40, column: 9, scope: !6034)
!6036 = !DILocation(line: 40, column: 15, scope: !6034)
!6037 = !DILocation(line: 40, column: 6, scope: !6027)
!6038 = !DILocation(line: 41, column: 3, scope: !6034)
!6039 = !DILocation(line: 43, column: 27, scope: !6040)
!6040 = distinct !DILexicalBlock(scope: !6027, file: !3, line: 43, column: 6)
!6041 = !DILocation(line: 43, column: 6, scope: !6040)
!6042 = !DILocation(line: 43, column: 6, scope: !6027)
!6043 = !DILocation(line: 44, column: 3, scope: !6040)
!6044 = !DILocation(line: 46, column: 6, scope: !6045)
!6045 = distinct !DILexicalBlock(scope: !6027, file: !3, line: 46, column: 6)
!6046 = !{i8 0, i8 2}
!6047 = !DILocation(line: 46, column: 24, scope: !6045)
!6048 = !DILocation(line: 46, column: 43, scope: !6045)
!6049 = !DILocation(line: 46, column: 27, scope: !6045)
!6050 = !DILocation(line: 46, column: 6, scope: !6027)
!6051 = !DILocation(line: 47, column: 3, scope: !6045)
!6052 = !DILocation(line: 49, column: 6, scope: !6053)
!6053 = distinct !DILexicalBlock(scope: !6027, file: !3, line: 49, column: 6)
!6054 = !DILocation(line: 49, column: 18, scope: !6053)
!6055 = !DILocation(line: 49, column: 23, scope: !6053)
!6056 = !DILocation(line: 49, column: 26, scope: !6053)
!6057 = !DILocation(line: 49, column: 32, scope: !6053)
!6058 = !DILocation(line: 49, column: 6, scope: !6027)
!6059 = !DILocation(line: 50, column: 3, scope: !6053)
!6060 = !DILocation(line: 52, column: 2, scope: !6027)
!6061 = !DILocation(line: 53, column: 1, scope: !6027)
!6062 = distinct !DISubprogram(name: "test_tsk_thread_flag", scope: !296, file: !296, line: 2066, type: !6063, scopeLine: 2067, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6065)
!6063 = !DISubroutineType(types: !6064)
!6064 = !{!22, !294, !22}
!6065 = !{!6066, !6067}
!6066 = !DILocalVariable(name: "tsk", arg: 1, scope: !6062, file: !296, line: 2066, type: !294)
!6067 = !DILocalVariable(name: "flag", arg: 2, scope: !6062, file: !296, line: 2066, type: !22)
!6068 = !DILocation(line: 2066, column: 60, scope: !6062)
!6069 = !DILocation(line: 2066, column: 69, scope: !6062)
!6070 = !DILocation(line: 2068, column: 29, scope: !6062)
!6071 = !DILocation(line: 2068, column: 52, scope: !6062)
!6072 = !DILocation(line: 2068, column: 9, scope: !6062)
!6073 = !DILocation(line: 2068, column: 2, scope: !6062)
!6074 = !DISubprogram(name: "cgroup_freezing", scope: !6075, file: !6075, line: 65, type: !6028, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6075 = !DIFile(filename: "./include/linux/freezer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "980eccc8e3c8a58000df4fcfa102b7a2")
!6076 = distinct !DISubprogram(name: "frozen", scope: !3, file: !3, line: 56, type: !6028, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6077)
!6077 = !{!6078}
!6078 = !DILocalVariable(name: "p", arg: 1, scope: !6076, file: !3, line: 56, type: !294)
!6079 = !DILocation(line: 56, column: 33, scope: !6076)
!6080 = !DILocation(line: 58, column: 9, scope: !6081)
!6081 = distinct !DILexicalBlock(scope: !6076, file: !3, line: 58, column: 9)
!6082 = !DILocation(line: 58, column: 9, scope: !6083)
!6083 = distinct !DILexicalBlock(scope: !6081, file: !3, line: 58, column: 9)
!6084 = !DILocation(line: 58, column: 31, scope: !6076)
!6085 = !DILocation(line: 58, column: 9, scope: !6076)
!6086 = !DILocation(line: 58, column: 2, scope: !6076)
!6087 = distinct !DISubprogram(name: "__refrigerator", scope: !3, file: !3, line: 62, type: !6088, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6090)
!6088 = !DISubroutineType(types: !6089)
!6089 = !{!825, !825}
!6090 = !{!6091, !6092, !6093, !6094, !6096, !6099, !6103, !6108}
!6091 = !DILocalVariable(name: "check_kthr_stop", arg: 1, scope: !6087, file: !3, line: 62, type: !825)
!6092 = !DILocalVariable(name: "state", scope: !6087, file: !3, line: 64, type: !7)
!6093 = !DILocalVariable(name: "was_frozen", scope: !6087, file: !3, line: 65, type: !825)
!6094 = !DILocalVariable(name: "__ret_warn_on", scope: !6095, file: !3, line: 69, type: !22)
!6095 = distinct !DILexicalBlock(scope: !6087, file: !3, line: 69, column: 2)
!6096 = !DILocalVariable(name: "__flags", scope: !6097, file: !3, line: 69, type: !22)
!6097 = distinct !DILexicalBlock(scope: !6098, file: !3, line: 69, column: 2)
!6098 = distinct !DILexicalBlock(scope: !6095, file: !3, line: 69, column: 2)
!6099 = !DILocalVariable(name: "freeze", scope: !6100, file: !3, line: 72, type: !825)
!6100 = distinct !DILexicalBlock(scope: !6101, file: !3, line: 71, column: 11)
!6101 = distinct !DILexicalBlock(scope: !6102, file: !3, line: 71, column: 2)
!6102 = distinct !DILexicalBlock(scope: !6087, file: !3, line: 71, column: 2)
!6103 = !DILocalVariable(name: "__ai_ptr", scope: !6104, file: !3, line: 74, type: !2095)
!6104 = distinct !DILexicalBlock(scope: !6105, file: !3, line: 74, column: 3)
!6105 = distinct !DILexicalBlock(scope: !6106, file: !3, line: 74, column: 3)
!6106 = distinct !DILexicalBlock(scope: !6107, file: !3, line: 74, column: 3)
!6107 = distinct !DILexicalBlock(scope: !6100, file: !3, line: 74, column: 3)
!6108 = !DILocalVariable(name: "__ret", scope: !6109, file: !3, line: 74, type: !7)
!6109 = distinct !DILexicalBlock(scope: !6104, file: !3, line: 74, column: 3)
!6110 = !DILocation(line: 62, column: 26, scope: !6087)
!6111 = !DILocation(line: 64, column: 2, scope: !6087)
!6112 = !DILocation(line: 64, column: 15, scope: !6087)
!6113 = !DILocation(line: 64, column: 23, scope: !6114)
!6114 = distinct !DILexicalBlock(scope: !6087, file: !3, line: 64, column: 23)
!6115 = !DILocation(line: 64, column: 23, scope: !6116)
!6116 = distinct !DILexicalBlock(scope: !6114, file: !3, line: 64, column: 23)
!6117 = !DILocation(line: 65, column: 2, scope: !6087)
!6118 = !DILocation(line: 65, column: 7, scope: !6087)
!6119 = !DILocation(line: 67, column: 2, scope: !6120)
!6120 = distinct !DILexicalBlock(scope: !6121, file: !3, line: 67, column: 2)
!6121 = distinct !DILexicalBlock(scope: !6087, file: !3, line: 67, column: 2)
!6122 = !DILocation(line: 67, column: 2, scope: !6121)
!6123 = !DILocation(line: 69, column: 2, scope: !6095)
!6124 = !DILocation(line: 0, scope: !6095)
!6125 = !DILocation(line: 69, column: 2, scope: !6098)
!6126 = !DILocation(line: 69, column: 2, scope: !6097)
!6127 = !DILocation(line: 69, column: 2, scope: !6128)
!6128 = distinct !DILexicalBlock(scope: !6097, file: !3, line: 69, column: 2)
!6129 = !DILocation(line: 69, column: 2, scope: !6130)
!6130 = distinct !DILexicalBlock(scope: !6097, file: !3, line: 69, column: 2)
!6131 = !{i64 2155899531, i64 2155899560, i64 2155899606, i64 2155899664, i64 2155899718, i64 2155899772, i64 2155899827, i64 2155899858, i64 2155900166, i64 2155900172, i64 2155900219, i64 2155900242, i64 2155900268}
!6132 = !DILocation(line: 69, column: 2, scope: !6133)
!6133 = distinct !DILexicalBlock(scope: !6097, file: !3, line: 69, column: 2)
!6134 = !DILocation(line: 69, column: 2, scope: !6087)
!6135 = !DILocation(line: 71, column: 2, scope: !6087)
!6136 = !DILocation(line: 72, column: 3, scope: !6100)
!6137 = !DILocation(line: 72, column: 8, scope: !6100)
!6138 = !DILocation(line: 74, column: 3, scope: !6100)
!6139 = !DILocation(line: 74, column: 3, scope: !6107)
!6140 = !DILocation(line: 74, column: 3, scope: !6141)
!6141 = distinct !DILexicalBlock(scope: !6107, file: !3, line: 74, column: 3)
!6142 = !DILocation(line: 74, column: 3, scope: !6106)
!6143 = !DILocation(line: 74, column: 3, scope: !6144)
!6144 = distinct !DILexicalBlock(scope: !6106, file: !3, line: 74, column: 3)
!6145 = !DILocation(line: 74, column: 3, scope: !6104)
!6146 = !DILocation(line: 74, column: 3, scope: !6147)
!6147 = distinct !DILexicalBlock(scope: !6104, file: !3, line: 74, column: 3)
!6148 = !DILocation(line: 74, column: 3, scope: !6109)
!6149 = !{i64 2155902113}
!6150 = !DILocation(line: 74, column: 3, scope: !6105)
!6151 = !DILocation(line: 76, column: 3, scope: !6100)
!6152 = !DILocation(line: 77, column: 21, scope: !6100)
!6153 = !DILocation(line: 77, column: 12, scope: !6100)
!6154 = !DILocation(line: 77, column: 30, scope: !6100)
!6155 = !DILocation(line: 77, column: 35, scope: !6100)
!6156 = !DILocation(line: 77, column: 51, scope: !6100)
!6157 = !DILocation(line: 77, column: 54, scope: !6100)
!6158 = !DILocation(line: 0, scope: !6100)
!6159 = !DILocation(line: 77, column: 33, scope: !6100)
!6160 = !DILocation(line: 77, column: 10, scope: !6100)
!6161 = !DILocation(line: 78, column: 3, scope: !6100)
!6162 = !DILocation(line: 80, column: 8, scope: !6163)
!6163 = distinct !DILexicalBlock(scope: !6100, file: !3, line: 80, column: 7)
!6164 = !DILocation(line: 80, column: 7, scope: !6100)
!6165 = !DILocation(line: 81, column: 4, scope: !6163)
!6166 = !DILocation(line: 83, column: 14, scope: !6100)
!6167 = !DILocation(line: 84, column: 3, scope: !6100)
!6168 = !DILocation(line: 85, column: 2, scope: !6101)
!6169 = !DILocation(line: 71, column: 2, scope: !6101)
!6170 = distinct !{!6170, !6171, !6172, !6173}
!6171 = !DILocation(line: 71, column: 2, scope: !6102)
!6172 = !DILocation(line: 85, column: 2, scope: !6102)
!6173 = !{!"llvm.loop.unroll.disable"}
!6174 = !DILocation(line: 86, column: 2, scope: !6087)
!6175 = !DILocation(line: 86, column: 2, scope: !6176)
!6176 = distinct !DILexicalBlock(scope: !6087, file: !3, line: 86, column: 2)
!6177 = !DILocation(line: 86, column: 2, scope: !6178)
!6178 = distinct !DILexicalBlock(scope: !6176, file: !3, line: 86, column: 2)
!6179 = !DILocation(line: 86, column: 2, scope: !6180)
!6180 = distinct !DILexicalBlock(scope: !6176, file: !3, line: 86, column: 2)
!6181 = !DILocation(line: 86, column: 2, scope: !6182)
!6182 = distinct !DILexicalBlock(scope: !6180, file: !3, line: 86, column: 2)
!6183 = !DILocation(line: 86, column: 2, scope: !6184)
!6184 = distinct !DILexicalBlock(scope: !6180, file: !3, line: 86, column: 2)
!6185 = !DILocation(line: 88, column: 2, scope: !6186)
!6186 = distinct !DILexicalBlock(scope: !6187, file: !3, line: 88, column: 2)
!6187 = distinct !DILexicalBlock(scope: !6087, file: !3, line: 88, column: 2)
!6188 = !DILocation(line: 88, column: 2, scope: !6187)
!6189 = !DILocation(line: 90, column: 9, scope: !6087)
!6190 = !DILocation(line: 91, column: 1, scope: !6087)
!6191 = !DILocation(line: 90, column: 2, scope: !6087)
!6192 = distinct !DISubprogram(name: "get_current", scope: !6193, file: !6193, line: 39, type: !6194, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6196)
!6193 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!6194 = !DISubroutineType(types: !6195)
!6195 = !{!294}
!6196 = !{!6197, !6199, !6201}
!6197 = !DILocalVariable(name: "pscr_ret__", scope: !6198, file: !6193, line: 41, type: !294)
!6198 = distinct !DILexicalBlock(scope: !6192, file: !6193, line: 41, column: 9)
!6199 = !DILocalVariable(name: "__vpp_verify", scope: !6200, file: !6193, line: 41, type: !2491)
!6200 = distinct !DILexicalBlock(scope: !6198, file: !6193, line: 41, column: 9)
!6201 = !DILocalVariable(name: "pfo_val__", scope: !6202, file: !6193, line: 41, type: !363)
!6202 = distinct !DILexicalBlock(scope: !6198, file: !6193, line: 41, column: 9)
!6203 = !DILocation(line: 41, column: 9, scope: !6198)
!6204 = !DILocation(line: 41, column: 9, scope: !6200)
!6205 = !DILocation(line: 41, column: 9, scope: !6202)
!6206 = !{i64 2149040593}
!6207 = !DILocation(line: 41, column: 9, scope: !6192)
!6208 = !DILocation(line: 41, column: 2, scope: !6192)
!6209 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !6210, file: !6210, line: 94, type: !6211, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6216)
!6210 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6211 = !DISubroutineType(types: !6212)
!6212 = !{null, !6213, !35}
!6213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6214, size: 64)
!6214 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6215)
!6215 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6216 = !{!6217, !6218}
!6217 = !DILocalVariable(name: "v", arg: 1, scope: !6209, file: !6210, line: 94, type: !6213)
!6218 = !DILocalVariable(name: "size", arg: 2, scope: !6209, file: !6210, line: 94, type: !35)
!6219 = !DILocation(line: 94, column: 79, scope: !6209)
!6220 = !DILocation(line: 94, column: 89, scope: !6209)
!6221 = !DILocation(line: 96, column: 20, scope: !6209)
!6222 = !DILocation(line: 96, column: 23, scope: !6209)
!6223 = !DILocation(line: 96, column: 2, scope: !6209)
!6224 = !DILocation(line: 97, column: 2, scope: !6209)
!6225 = !DILocation(line: 98, column: 1, scope: !6209)
!6226 = distinct !DISubprogram(name: "spin_lock_irq", scope: !6227, file: !6227, line: 374, type: !6228, scopeLine: 375, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6230)
!6227 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!6228 = !DISubroutineType(types: !6229)
!6229 = !{null, !1819}
!6230 = !{!6231}
!6231 = !DILocalVariable(name: "lock", arg: 1, scope: !6226, file: !6227, line: 374, type: !1819)
!6232 = !DILocation(line: 374, column: 55, scope: !6226)
!6233 = !DILocation(line: 376, column: 2, scope: !6226)
!6234 = !DILocation(line: 377, column: 1, scope: !6226)
!6235 = distinct !DISubprogram(name: "freezing", scope: !6075, file: !6075, line: 34, type: !6028, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6236)
!6236 = !{!6237, !6238}
!6237 = !DILocalVariable(name: "p", arg: 1, scope: !6235, file: !6075, line: 34, type: !294)
!6238 = !DILocalVariable(name: "branch", scope: !6239, file: !6075, line: 36, type: !825)
!6239 = distinct !DILexicalBlock(scope: !6240, file: !6075, line: 36, column: 6)
!6240 = distinct !DILexicalBlock(scope: !6235, file: !6075, line: 36, column: 6)
!6241 = !DILocation(line: 34, column: 49, scope: !6235)
!6242 = !DILocation(line: 36, column: 6, scope: !6239)
!6243 = !DILocation(line: 36, column: 6, scope: !6244)
!6244 = distinct !DILexicalBlock(scope: !6245, file: !6075, line: 36, column: 6)
!6245 = distinct !DILexicalBlock(scope: !6239, file: !6075, line: 36, column: 6)
!6246 = !DILocation(line: 36, column: 6, scope: !6245)
!6247 = !DILocation(line: 36, column: 6, scope: !6240)
!6248 = !DILocation(line: 36, column: 6, scope: !6235)
!6249 = !DILocation(line: 37, column: 29, scope: !6240)
!6250 = !DILocation(line: 37, column: 10, scope: !6240)
!6251 = !DILocation(line: 37, column: 3, scope: !6240)
!6252 = !DILocation(line: 39, column: 2, scope: !6235)
!6253 = !DILocation(line: 40, column: 1, scope: !6235)
!6254 = !DISubprogram(name: "kthread_should_stop", scope: !6255, file: !6255, line: 90, type: !2481, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6255 = !DIFile(filename: "./include/linux/kthread.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6109a4682a3e6e690ff3777556e2c944")
!6256 = distinct !DISubprogram(name: "spin_unlock_irq", scope: !6227, file: !6227, line: 399, type: !6228, scopeLine: 400, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6257)
!6257 = !{!6258}
!6258 = !DILocalVariable(name: "lock", arg: 1, scope: !6256, file: !6227, line: 399, type: !1819)
!6259 = !DILocation(line: 399, column: 57, scope: !6256)
!6260 = !DILocation(line: 401, column: 2, scope: !6256)
!6261 = !DILocation(line: 402, column: 1, scope: !6256)
!6262 = !DISubprogram(name: "schedule", scope: !296, file: !296, line: 303, type: !3141, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6263 = distinct !DISubprogram(name: "freeze_task", scope: !3, file: !3, line: 153, type: !6028, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6264)
!6264 = !{!6265, !6266, !6267, !6271}
!6265 = !DILocalVariable(name: "p", arg: 1, scope: !6263, file: !3, line: 153, type: !294)
!6266 = !DILocalVariable(name: "flags", scope: !6263, file: !3, line: 155, type: !39)
!6267 = !DILocalVariable(name: "__dummy", scope: !6268, file: !3, line: 157, type: !39)
!6268 = distinct !DILexicalBlock(scope: !6269, file: !3, line: 157, column: 2)
!6269 = distinct !DILexicalBlock(scope: !6270, file: !3, line: 157, column: 2)
!6270 = distinct !DILexicalBlock(scope: !6263, file: !3, line: 157, column: 2)
!6271 = !DILocalVariable(name: "__dummy2", scope: !6268, file: !3, line: 157, type: !39)
!6272 = !DILocation(line: 153, column: 38, scope: !6263)
!6273 = !DILocation(line: 155, column: 2, scope: !6263)
!6274 = !DILocation(line: 155, column: 16, scope: !6263)
!6275 = !DILocation(line: 157, column: 2, scope: !6263)
!6276 = !DILocation(line: 157, column: 2, scope: !6270)
!6277 = !DILocation(line: 157, column: 2, scope: !6268)
!6278 = !DILocation(line: 157, column: 2, scope: !6269)
!6279 = !DILocation(line: 158, column: 16, scope: !6280)
!6280 = distinct !DILexicalBlock(scope: !6263, file: !3, line: 158, column: 6)
!6281 = !DILocation(line: 158, column: 7, scope: !6280)
!6282 = !DILocation(line: 158, column: 19, scope: !6280)
!6283 = !DILocation(line: 158, column: 29, scope: !6280)
!6284 = !DILocation(line: 158, column: 22, scope: !6280)
!6285 = !DILocation(line: 158, column: 32, scope: !6280)
!6286 = !DILocation(line: 158, column: 49, scope: !6280)
!6287 = !DILocation(line: 158, column: 35, scope: !6280)
!6288 = !DILocation(line: 158, column: 6, scope: !6263)
!6289 = !DILocation(line: 159, column: 41, scope: !6290)
!6290 = distinct !DILexicalBlock(scope: !6280, file: !3, line: 158, column: 53)
!6291 = !DILocation(line: 159, column: 3, scope: !6290)
!6292 = !DILocation(line: 160, column: 3, scope: !6290)
!6293 = !DILocation(line: 163, column: 8, scope: !6294)
!6294 = distinct !DILexicalBlock(scope: !6263, file: !3, line: 163, column: 6)
!6295 = !DILocation(line: 163, column: 11, scope: !6294)
!6296 = !DILocation(line: 163, column: 17, scope: !6294)
!6297 = !DILocation(line: 163, column: 6, scope: !6263)
!6298 = !DILocation(line: 164, column: 23, scope: !6294)
!6299 = !DILocation(line: 164, column: 3, scope: !6294)
!6300 = !DILocation(line: 166, column: 17, scope: !6294)
!6301 = !DILocation(line: 166, column: 3, scope: !6294)
!6302 = !DILocation(line: 168, column: 40, scope: !6263)
!6303 = !DILocation(line: 168, column: 2, scope: !6263)
!6304 = !DILocation(line: 169, column: 2, scope: !6263)
!6305 = !DILocation(line: 170, column: 1, scope: !6263)
!6306 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !6307, file: !6307, line: 32, type: !6308, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6307 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!6308 = !DISubroutineType(types: !6309)
!6309 = !{!39, !6310}
!6310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!6311 = distinct !DISubprogram(name: "spinlock_check", scope: !6227, file: !6227, line: 324, type: !6312, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6314)
!6312 = !DISubroutineType(types: !6313)
!6313 = !{!6310, !1819}
!6314 = !{!6315}
!6315 = !DILocalVariable(name: "lock", arg: 1, scope: !6311, file: !6227, line: 324, type: !1819)
!6316 = !DILocation(line: 324, column: 67, scope: !6311)
!6317 = !DILocation(line: 326, column: 10, scope: !6311)
!6318 = !DILocation(line: 326, column: 16, scope: !6311)
!6319 = !DILocation(line: 326, column: 2, scope: !6311)
!6320 = distinct !DISubprogram(name: "__freeze_task", scope: !3, file: !3, line: 136, type: !6028, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6321)
!6321 = !{!6322}
!6322 = !DILocalVariable(name: "p", arg: 1, scope: !6320, file: !3, line: 136, type: !294)
!6323 = !DILocation(line: 136, column: 47, scope: !6320)
!6324 = !DILocation(line: 139, column: 24, scope: !6320)
!6325 = !DILocation(line: 139, column: 9, scope: !6320)
!6326 = !DILocation(line: 139, column: 2, scope: !6320)
!6327 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !6227, file: !6227, line: 404, type: !6328, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6330)
!6328 = !DISubroutineType(types: !6329)
!6329 = !{null, !1819, !39}
!6330 = !{!6331, !6332, !6333, !6336}
!6331 = !DILocalVariable(name: "lock", arg: 1, scope: !6327, file: !6227, line: 404, type: !1819)
!6332 = !DILocalVariable(name: "flags", arg: 2, scope: !6327, file: !6227, line: 404, type: !39)
!6333 = !DILocalVariable(name: "__dummy", scope: !6334, file: !6227, line: 406, type: !39)
!6334 = distinct !DILexicalBlock(scope: !6335, file: !6227, line: 406, column: 2)
!6335 = distinct !DILexicalBlock(scope: !6327, file: !6227, line: 406, column: 2)
!6336 = !DILocalVariable(name: "__dummy2", scope: !6334, file: !6227, line: 406, type: !39)
!6337 = !DILocation(line: 404, column: 64, scope: !6327)
!6338 = !DILocation(line: 404, column: 84, scope: !6327)
!6339 = !DILocation(line: 406, column: 2, scope: !6327)
!6340 = !DILocation(line: 406, column: 2, scope: !6334)
!6341 = !DILocation(line: 406, column: 2, scope: !6335)
!6342 = !DILocation(line: 407, column: 1, scope: !6327)
!6343 = distinct !DISubprogram(name: "fake_signal_wake_up", scope: !3, file: !3, line: 94, type: !4072, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6344)
!6344 = !{!6345, !6346}
!6345 = !DILocalVariable(name: "p", arg: 1, scope: !6343, file: !3, line: 94, type: !294)
!6346 = !DILocalVariable(name: "flags", scope: !6343, file: !3, line: 96, type: !39)
!6347 = !DILocation(line: 94, column: 53, scope: !6343)
!6348 = !DILocation(line: 96, column: 2, scope: !6343)
!6349 = !DILocation(line: 96, column: 16, scope: !6343)
!6350 = !DILocation(line: 98, column: 24, scope: !6351)
!6351 = distinct !DILexicalBlock(scope: !6343, file: !3, line: 98, column: 6)
!6352 = !DILocation(line: 98, column: 6, scope: !6351)
!6353 = !DILocation(line: 98, column: 6, scope: !6343)
!6354 = !DILocation(line: 99, column: 18, scope: !6355)
!6355 = distinct !DILexicalBlock(scope: !6351, file: !3, line: 98, column: 36)
!6356 = !DILocation(line: 99, column: 3, scope: !6355)
!6357 = !DILocation(line: 100, column: 23, scope: !6355)
!6358 = !DILocation(line: 100, column: 3, scope: !6355)
!6359 = !DILocation(line: 101, column: 2, scope: !6355)
!6360 = !DILocation(line: 102, column: 1, scope: !6343)
!6361 = !DISubprogram(name: "wake_up_state", scope: !296, file: !296, line: 1997, type: !6362, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6362 = !DISubroutineType(types: !6363)
!6363 = !{!22, !294, !7}
!6364 = distinct !DISubprogram(name: "__thaw_task", scope: !3, file: !3, line: 194, type: !4072, scopeLine: 195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6365)
!6365 = !{!6366, !6367, !6368, !6369, !6373, !6374, !6377, !6380, !6383}
!6366 = !DILocalVariable(name: "p", arg: 1, scope: !6364, file: !3, line: 194, type: !294)
!6367 = !DILocalVariable(name: "flags", scope: !6364, file: !3, line: 196, type: !39)
!6368 = !DILocalVariable(name: "flags2", scope: !6364, file: !3, line: 196, type: !39)
!6369 = !DILocalVariable(name: "__dummy", scope: !6370, file: !3, line: 198, type: !39)
!6370 = distinct !DILexicalBlock(scope: !6371, file: !3, line: 198, column: 2)
!6371 = distinct !DILexicalBlock(scope: !6372, file: !3, line: 198, column: 2)
!6372 = distinct !DILexicalBlock(scope: !6364, file: !3, line: 198, column: 2)
!6373 = !DILocalVariable(name: "__dummy2", scope: !6370, file: !3, line: 198, type: !39)
!6374 = !DILocalVariable(name: "__ret_warn_on", scope: !6375, file: !3, line: 199, type: !22)
!6375 = distinct !DILexicalBlock(scope: !6376, file: !3, line: 199, column: 6)
!6376 = distinct !DILexicalBlock(scope: !6364, file: !3, line: 199, column: 6)
!6377 = !DILocalVariable(name: "__flags", scope: !6378, file: !3, line: 199, type: !22)
!6378 = distinct !DILexicalBlock(scope: !6379, file: !3, line: 199, column: 6)
!6379 = distinct !DILexicalBlock(scope: !6375, file: !3, line: 199, column: 6)
!6380 = !DILocalVariable(name: "ret", scope: !6381, file: !3, line: 204, type: !825)
!6381 = distinct !DILexicalBlock(scope: !6382, file: !3, line: 202, column: 37)
!6382 = distinct !DILexicalBlock(scope: !6364, file: !3, line: 202, column: 6)
!6383 = !DILabel(scope: !6364, name: "unlock", file: !3, line: 211)
!6384 = !DILocation(line: 194, column: 38, scope: !6364)
!6385 = !DILocation(line: 196, column: 2, scope: !6364)
!6386 = !DILocation(line: 196, column: 16, scope: !6364)
!6387 = !DILocation(line: 196, column: 23, scope: !6364)
!6388 = !DILocation(line: 198, column: 2, scope: !6364)
!6389 = !DILocation(line: 198, column: 2, scope: !6372)
!6390 = !DILocation(line: 198, column: 2, scope: !6370)
!6391 = !DILocation(line: 198, column: 2, scope: !6371)
!6392 = !DILocation(line: 199, column: 6, scope: !6375)
!6393 = !DILocation(line: 199, column: 6, scope: !6379)
!6394 = !DILocation(line: 199, column: 6, scope: !6378)
!6395 = !DILocation(line: 199, column: 6, scope: !6396)
!6396 = distinct !DILexicalBlock(scope: !6378, file: !3, line: 199, column: 6)
!6397 = !DILocation(line: 199, column: 6, scope: !6398)
!6398 = distinct !DILexicalBlock(scope: !6378, file: !3, line: 199, column: 6)
!6399 = !{i64 2155916808, i64 2155916837, i64 2155916883, i64 2155916941, i64 2155916995, i64 2155917049, i64 2155917104, i64 2155917135, i64 2155917443, i64 2155917449, i64 2155917496, i64 2155917519, i64 2155917545}
!6400 = !DILocation(line: 199, column: 6, scope: !6401)
!6401 = distinct !DILexicalBlock(scope: !6378, file: !3, line: 199, column: 6)
!6402 = !DILocation(line: 199, column: 6, scope: !6376)
!6403 = !DILocation(line: 199, column: 6, scope: !6364)
!6404 = !DILocation(line: 200, column: 3, scope: !6376)
!6405 = !DILocation(line: 202, column: 24, scope: !6382)
!6406 = !DILocation(line: 202, column: 6, scope: !6382)
!6407 = !DILocation(line: 202, column: 6, scope: !6364)
!6408 = !DILocation(line: 204, column: 3, scope: !6381)
!6409 = !DILocation(line: 204, column: 8, scope: !6381)
!6410 = !DILocation(line: 204, column: 29, scope: !6381)
!6411 = !DILocation(line: 204, column: 14, scope: !6381)
!6412 = !DILocation(line: 205, column: 23, scope: !6381)
!6413 = !DILocation(line: 205, column: 3, scope: !6381)
!6414 = !DILocation(line: 206, column: 7, scope: !6415)
!6415 = distinct !DILexicalBlock(scope: !6381, file: !3, line: 206, column: 7)
!6416 = !DILocation(line: 206, column: 7, scope: !6381)
!6417 = !DILocation(line: 207, column: 4, scope: !6415)
!6418 = !DILocation(line: 208, column: 2, scope: !6382)
!6419 = !DILocation(line: 208, column: 2, scope: !6381)
!6420 = !DILocation(line: 210, column: 16, scope: !6364)
!6421 = !DILocation(line: 210, column: 2, scope: !6364)
!6422 = !DILocation(line: 211, column: 1, scope: !6364)
!6423 = !DILocation(line: 212, column: 40, scope: !6364)
!6424 = !DILocation(line: 212, column: 2, scope: !6364)
!6425 = !DILocation(line: 213, column: 1, scope: !6364)
!6426 = distinct !DISubprogram(name: "lock_task_sighand", scope: !5271, file: !5271, line: 737, type: !6427, scopeLine: 739, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6429)
!6427 = !DISubroutineType(types: !6428)
!6428 = !{!5467, !294, !290}
!6429 = !{!6430, !6431, !6432}
!6430 = !DILocalVariable(name: "task", arg: 1, scope: !6426, file: !5271, line: 737, type: !294)
!6431 = !DILocalVariable(name: "flags", arg: 2, scope: !6426, file: !5271, line: 738, type: !290)
!6432 = !DILocalVariable(name: "ret", scope: !6426, file: !5271, line: 740, type: !5467)
!6433 = !DILocation(line: 737, column: 76, scope: !6426)
!6434 = !DILocation(line: 738, column: 29, scope: !6426)
!6435 = !DILocation(line: 740, column: 2, scope: !6426)
!6436 = !DILocation(line: 740, column: 25, scope: !6426)
!6437 = !DILocation(line: 742, column: 28, scope: !6426)
!6438 = !DILocation(line: 742, column: 34, scope: !6426)
!6439 = !DILocation(line: 742, column: 8, scope: !6426)
!6440 = !DILocation(line: 742, column: 6, scope: !6426)
!6441 = !DILocation(line: 743, column: 8, scope: !6426)
!6442 = !DILocation(line: 744, column: 9, scope: !6426)
!6443 = !DILocation(line: 745, column: 1, scope: !6426)
!6444 = !DILocation(line: 744, column: 2, scope: !6426)
!6445 = !DISubprogram(name: "task_call_func", scope: !55, file: !55, line: 1223, type: !6446, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6446 = !DISubroutineType(types: !6447)
!6447 = !{!22, !294, !6448, !20}
!6448 = !DIDerivedType(tag: DW_TAG_typedef, name: "task_call_f", file: !55, line: 1222, baseType: !6449)
!6449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6450, size: 64)
!6450 = !DISubroutineType(types: !6451)
!6451 = !{!22, !294, !20}
!6452 = distinct !DISubprogram(name: "__set_task_special", scope: !3, file: !3, line: 178, type: !6450, scopeLine: 179, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6453)
!6453 = !{!6454, !6455, !6456}
!6454 = !DILocalVariable(name: "p", arg: 1, scope: !6452, file: !3, line: 178, type: !294)
!6455 = !DILocalVariable(name: "arg", arg: 2, scope: !6452, file: !3, line: 178, type: !20)
!6456 = !DILocalVariable(name: "state", scope: !6452, file: !3, line: 180, type: !7)
!6457 = !DILocation(line: 178, column: 51, scope: !6452)
!6458 = !DILocation(line: 178, column: 60, scope: !6452)
!6459 = !DILocation(line: 180, column: 2, scope: !6452)
!6460 = !DILocation(line: 180, column: 15, scope: !6452)
!6461 = !DILocation(line: 182, column: 6, scope: !6462)
!6462 = distinct !DILexicalBlock(scope: !6452, file: !3, line: 182, column: 6)
!6463 = !DILocation(line: 182, column: 9, scope: !6462)
!6464 = !DILocation(line: 182, column: 16, scope: !6462)
!6465 = !DILocation(line: 182, column: 6, scope: !6452)
!6466 = !DILocation(line: 183, column: 9, scope: !6462)
!6467 = !DILocation(line: 183, column: 3, scope: !6462)
!6468 = !DILocation(line: 185, column: 11, scope: !6469)
!6469 = distinct !DILexicalBlock(scope: !6462, file: !3, line: 185, column: 11)
!6470 = !DILocation(line: 185, column: 14, scope: !6469)
!6471 = !DILocation(line: 185, column: 21, scope: !6469)
!6472 = !DILocation(line: 185, column: 11, scope: !6462)
!6473 = !DILocation(line: 186, column: 9, scope: !6469)
!6474 = !DILocation(line: 186, column: 3, scope: !6469)
!6475 = !DILocation(line: 188, column: 6, scope: !6476)
!6476 = distinct !DILexicalBlock(scope: !6452, file: !3, line: 188, column: 6)
!6477 = !DILocation(line: 188, column: 6, scope: !6452)
!6478 = !DILocation(line: 189, column: 3, scope: !6476)
!6479 = !DILocation(line: 189, column: 3, scope: !6480)
!6480 = distinct !DILexicalBlock(scope: !6476, file: !3, line: 189, column: 3)
!6481 = !DILocation(line: 189, column: 3, scope: !6482)
!6482 = distinct !DILexicalBlock(scope: !6480, file: !3, line: 189, column: 3)
!6483 = !DILocation(line: 189, column: 3, scope: !6484)
!6484 = distinct !DILexicalBlock(scope: !6480, file: !3, line: 189, column: 3)
!6485 = !DILocation(line: 191, column: 9, scope: !6452)
!6486 = !DILocation(line: 192, column: 1, scope: !6452)
!6487 = !DILocation(line: 191, column: 2, scope: !6452)
!6488 = distinct !DISubprogram(name: "unlock_task_sighand", scope: !5271, file: !5271, line: 747, type: !6489, scopeLine: 749, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6491)
!6489 = !DISubroutineType(types: !6490)
!6490 = !{null, !294, !290}
!6491 = !{!6492, !6493}
!6492 = !DILocalVariable(name: "task", arg: 1, scope: !6488, file: !5271, line: 747, type: !294)
!6493 = !DILocalVariable(name: "flags", arg: 2, scope: !6488, file: !5271, line: 748, type: !290)
!6494 = !DILocation(line: 747, column: 60, scope: !6488)
!6495 = !DILocation(line: 748, column: 22, scope: !6488)
!6496 = !DILocation(line: 750, column: 26, scope: !6488)
!6497 = !DILocation(line: 750, column: 32, scope: !6488)
!6498 = !DILocation(line: 750, column: 41, scope: !6488)
!6499 = !DILocation(line: 750, column: 51, scope: !6488)
!6500 = !DILocation(line: 750, column: 50, scope: !6488)
!6501 = !DILocation(line: 750, column: 2, scope: !6488)
!6502 = !DILocation(line: 751, column: 1, scope: !6488)
!6503 = distinct !DISubprogram(name: "set_freezable", scope: !3, file: !3, line: 220, type: !2481, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6504 = !DILocation(line: 222, column: 2, scope: !6503)
!6505 = !DILocation(line: 222, column: 2, scope: !6506)
!6506 = distinct !DILexicalBlock(scope: !6503, file: !3, line: 222, column: 2)
!6507 = !DILocation(line: 229, column: 2, scope: !6503)
!6508 = !DILocation(line: 230, column: 2, scope: !6503)
!6509 = !DILocation(line: 230, column: 11, scope: !6503)
!6510 = !DILocation(line: 230, column: 17, scope: !6503)
!6511 = !DILocation(line: 231, column: 2, scope: !6503)
!6512 = !DILocation(line: 233, column: 9, scope: !6503)
!6513 = !DILocation(line: 233, column: 2, scope: !6503)
!6514 = !DILocation(line: 112, column: 2, scope: !6515)
!6515 = distinct !DILexicalBlock(scope: !6013, file: !6014, line: 112, column: 2)
!6516 = !DILocation(line: 112, column: 2, scope: !6013)
!6517 = !DILocation(line: 113, column: 1, scope: !6013)
!6518 = distinct !DISubprogram(name: "try_to_freeze", scope: !6075, file: !6075, line: 51, type: !2481, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6519 = !DILocation(line: 53, column: 2, scope: !6518)
!6520 = !DILocation(line: 53, column: 2, scope: !6521)
!6521 = distinct !DILexicalBlock(scope: !6518, file: !6075, line: 53, column: 2)
!6522 = !DILocation(line: 54, column: 6, scope: !6523)
!6523 = distinct !DILexicalBlock(scope: !6518, file: !6075, line: 54, column: 6)
!6524 = !DILocation(line: 54, column: 6, scope: !6518)
!6525 = !DILocation(line: 55, column: 3, scope: !6523)
!6526 = !DILocation(line: 56, column: 8, scope: !6527)
!6527 = distinct !DILexicalBlock(scope: !6518, file: !6075, line: 56, column: 6)
!6528 = !DILocation(line: 56, column: 17, scope: !6527)
!6529 = !DILocation(line: 56, column: 23, scope: !6527)
!6530 = !DILocation(line: 56, column: 6, scope: !6518)
!6531 = !DILocation(line: 57, column: 3, scope: !6527)
!6532 = !DILocation(line: 58, column: 9, scope: !6518)
!6533 = !DILocation(line: 58, column: 2, scope: !6518)
!6534 = !DILocation(line: 59, column: 1, scope: !6518)
!6535 = distinct !DISubprogram(name: "test_ti_thread_flag", scope: !6536, file: !6536, line: 116, type: !6537, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6540)
!6536 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!6537 = !DISubroutineType(types: !6538)
!6538 = !{!22, !6539, !22}
!6539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!6540 = !{!6541, !6542}
!6541 = !DILocalVariable(name: "ti", arg: 1, scope: !6535, file: !6536, line: 116, type: !6539)
!6542 = !DILocalVariable(name: "flag", arg: 2, scope: !6535, file: !6536, line: 116, type: !22)
!6543 = !DILocation(line: 116, column: 59, scope: !6535)
!6544 = !DILocation(line: 116, column: 67, scope: !6535)
!6545 = !DILocation(line: 118, column: 9, scope: !6535)
!6546 = !DILocation(line: 118, column: 2, scope: !6535)
!6547 = distinct !DISubprogram(name: "const_test_bit", scope: !6548, file: !6548, line: 166, type: !6549, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6554)
!6548 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!6549 = !DISubroutineType(types: !6550)
!6550 = !{!825, !39, !6551}
!6551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6552, size: 64)
!6552 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6553)
!6553 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !39)
!6554 = !{!6555, !6556, !6557, !6558, !6559}
!6555 = !DILocalVariable(name: "nr", arg: 1, scope: !6547, file: !6548, line: 166, type: !39)
!6556 = !DILocalVariable(name: "addr", arg: 2, scope: !6547, file: !6548, line: 166, type: !6551)
!6557 = !DILocalVariable(name: "p", scope: !6547, file: !6548, line: 168, type: !291)
!6558 = !DILocalVariable(name: "mask", scope: !6547, file: !6548, line: 169, type: !39)
!6559 = !DILocalVariable(name: "val", scope: !6547, file: !6548, line: 170, type: !39)
!6560 = !DILocation(line: 166, column: 30, scope: !6547)
!6561 = !DILocation(line: 166, column: 64, scope: !6547)
!6562 = !DILocation(line: 168, column: 2, scope: !6547)
!6563 = !DILocation(line: 168, column: 23, scope: !6547)
!6564 = !DILocation(line: 168, column: 50, scope: !6547)
!6565 = !DILocation(line: 168, column: 57, scope: !6547)
!6566 = !DILocation(line: 168, column: 55, scope: !6547)
!6567 = !DILocation(line: 169, column: 2, scope: !6547)
!6568 = !DILocation(line: 169, column: 16, scope: !6547)
!6569 = !DILocation(line: 169, column: 23, scope: !6547)
!6570 = !DILocation(line: 170, column: 2, scope: !6547)
!6571 = !DILocation(line: 170, column: 16, scope: !6547)
!6572 = !DILocation(line: 170, column: 23, scope: !6547)
!6573 = !DILocation(line: 170, column: 22, scope: !6547)
!6574 = !DILocation(line: 172, column: 12, scope: !6547)
!6575 = !DILocation(line: 172, column: 18, scope: !6547)
!6576 = !DILocation(line: 172, column: 16, scope: !6547)
!6577 = !DILocation(line: 172, column: 10, scope: !6547)
!6578 = !DILocation(line: 172, column: 9, scope: !6547)
!6579 = !DILocation(line: 173, column: 1, scope: !6547)
!6580 = !DILocation(line: 172, column: 2, scope: !6547)
!6581 = distinct !DISubprogram(name: "_test_bit", scope: !6582, file: !6582, line: 139, type: !6549, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6583)
!6582 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!6583 = !{!6584, !6585}
!6584 = !DILocalVariable(name: "nr", arg: 1, scope: !6581, file: !6582, line: 139, type: !39)
!6585 = !DILocalVariable(name: "addr", arg: 2, scope: !6581, file: !6582, line: 139, type: !6551)
!6586 = !DILocation(line: 139, column: 25, scope: !6581)
!6587 = !DILocation(line: 139, column: 59, scope: !6581)
!6588 = !DILocation(line: 141, column: 25, scope: !6581)
!6589 = !DILocation(line: 141, column: 32, scope: !6581)
!6590 = !DILocation(line: 141, column: 30, scope: !6581)
!6591 = !DILocation(line: 141, column: 2, scope: !6581)
!6592 = !DILocation(line: 142, column: 23, scope: !6581)
!6593 = !DILocation(line: 142, column: 27, scope: !6581)
!6594 = !DILocation(line: 142, column: 9, scope: !6581)
!6595 = !DILocation(line: 142, column: 2, scope: !6581)
!6596 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !6210, file: !6210, line: 66, type: !6211, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6597)
!6597 = !{!6598, !6599}
!6598 = !DILocalVariable(name: "v", arg: 1, scope: !6596, file: !6210, line: 66, type: !6213)
!6599 = !DILocalVariable(name: "size", arg: 2, scope: !6596, file: !6210, line: 66, type: !35)
!6600 = !DILocation(line: 66, column: 73, scope: !6596)
!6601 = !DILocation(line: 66, column: 83, scope: !6596)
!6602 = !DILocation(line: 68, column: 19, scope: !6596)
!6603 = !DILocation(line: 68, column: 22, scope: !6596)
!6604 = !DILocation(line: 68, column: 2, scope: !6596)
!6605 = !DILocation(line: 69, column: 2, scope: !6596)
!6606 = !DILocation(line: 70, column: 1, scope: !6596)
!6607 = distinct !DISubprogram(name: "arch_test_bit", scope: !6608, file: !6608, line: 237, type: !6549, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6609)
!6608 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!6609 = !{!6610, !6611}
!6610 = !DILocalVariable(name: "nr", arg: 1, scope: !6607, file: !6608, line: 237, type: !39)
!6611 = !DILocalVariable(name: "addr", arg: 2, scope: !6607, file: !6608, line: 237, type: !6551)
!6612 = !DILocation(line: 237, column: 29, scope: !6607)
!6613 = !DILocation(line: 237, column: 63, scope: !6607)
!6614 = !DILocation(line: 239, column: 30, scope: !6607)
!6615 = !DILocation(line: 239, column: 9, scope: !6607)
!6616 = !DILocation(line: 239, column: 54, scope: !6607)
!6617 = !DILocation(line: 239, column: 58, scope: !6607)
!6618 = !DILocation(line: 239, column: 36, scope: !6607)
!6619 = !DILocation(line: 240, column: 26, scope: !6607)
!6620 = !DILocation(line: 240, column: 30, scope: !6607)
!6621 = !DILocation(line: 240, column: 8, scope: !6607)
!6622 = !DILocation(line: 239, column: 2, scope: !6607)
!6623 = distinct !DISubprogram(name: "kasan_check_read", scope: !6624, file: !6624, line: 40, type: !6625, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6627)
!6624 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!6625 = !DISubroutineType(types: !6626)
!6626 = !{!825, !6213, !7}
!6627 = !{!6628, !6629}
!6628 = !DILocalVariable(name: "p", arg: 1, scope: !6623, file: !6624, line: 40, type: !6213)
!6629 = !DILocalVariable(name: "size", arg: 2, scope: !6623, file: !6624, line: 40, type: !7)
!6630 = !DILocation(line: 40, column: 58, scope: !6623)
!6631 = !DILocation(line: 40, column: 74, scope: !6623)
!6632 = !DILocation(line: 42, column: 2, scope: !6623)
!6633 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6634, file: !6634, line: 229, type: !6635, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6637)
!6634 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6635 = !DISubroutineType(types: !6636)
!6636 = !{null, !6213, !35, !22}
!6637 = !{!6638, !6639, !6640}
!6638 = !DILocalVariable(name: "ptr", arg: 1, scope: !6633, file: !6634, line: 229, type: !6213)
!6639 = !DILocalVariable(name: "size", arg: 2, scope: !6633, file: !6634, line: 229, type: !35)
!6640 = !DILocalVariable(name: "type", arg: 3, scope: !6633, file: !6634, line: 230, type: !22)
!6641 = !DILocation(line: 229, column: 60, scope: !6633)
!6642 = !DILocation(line: 229, column: 72, scope: !6633)
!6643 = !DILocation(line: 230, column: 15, scope: !6633)
!6644 = !DILocation(line: 230, column: 23, scope: !6633)
!6645 = distinct !DISubprogram(name: "constant_test_bit", scope: !6608, file: !6608, line: 204, type: !6646, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6648)
!6646 = !DISubroutineType(types: !6647)
!6647 = !{!825, !1050, !6551}
!6648 = !{!6649, !6650}
!6649 = !DILocalVariable(name: "nr", arg: 1, scope: !6645, file: !6608, line: 204, type: !1050)
!6650 = !DILocalVariable(name: "addr", arg: 2, scope: !6645, file: !6608, line: 204, type: !6551)
!6651 = !DILocation(line: 204, column: 52, scope: !6645)
!6652 = !DILocation(line: 204, column: 86, scope: !6645)
!6653 = !DILocation(line: 206, column: 19, scope: !6645)
!6654 = !DILocation(line: 206, column: 22, scope: !6645)
!6655 = !DILocation(line: 206, column: 15, scope: !6645)
!6656 = !DILocation(line: 207, column: 4, scope: !6645)
!6657 = !DILocation(line: 207, column: 9, scope: !6645)
!6658 = !DILocation(line: 207, column: 12, scope: !6645)
!6659 = !DILocation(line: 206, column: 44, scope: !6645)
!6660 = !DILocation(line: 207, column: 37, scope: !6645)
!6661 = !DILocation(line: 206, column: 2, scope: !6645)
!6662 = distinct !DISubprogram(name: "variable_test_bit", scope: !6608, file: !6608, line: 224, type: !6646, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6663)
!6663 = !{!6664, !6665, !6666}
!6664 = !DILocalVariable(name: "nr", arg: 1, scope: !6662, file: !6608, line: 224, type: !1050)
!6665 = !DILocalVariable(name: "addr", arg: 2, scope: !6662, file: !6608, line: 224, type: !6551)
!6666 = !DILocalVariable(name: "oldbit", scope: !6662, file: !6608, line: 226, type: !825)
!6667 = !DILocation(line: 224, column: 52, scope: !6662)
!6668 = !DILocation(line: 224, column: 86, scope: !6662)
!6669 = !DILocation(line: 226, column: 2, scope: !6662)
!6670 = !DILocation(line: 226, column: 7, scope: !6662)
!6671 = !DILocation(line: 231, column: 33, scope: !6662)
!6672 = !DILocation(line: 231, column: 46, scope: !6662)
!6673 = !DILocation(line: 228, column: 2, scope: !6662)
!6674 = !{i64 2147829098, i64 2147829172}
!6675 = !DILocation(line: 233, column: 9, scope: !6662)
!6676 = !DILocation(line: 234, column: 1, scope: !6662)
!6677 = !DILocation(line: 233, column: 2, scope: !6662)
!6678 = distinct !DISubprogram(name: "kasan_check_write", scope: !6624, file: !6624, line: 44, type: !6625, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6679)
!6679 = !{!6680, !6681}
!6680 = !DILocalVariable(name: "p", arg: 1, scope: !6678, file: !6624, line: 44, type: !6213)
!6681 = !DILocalVariable(name: "size", arg: 2, scope: !6678, file: !6624, line: 44, type: !7)
!6682 = !DILocation(line: 44, column: 59, scope: !6678)
!6683 = !DILocation(line: 44, column: 75, scope: !6678)
!6684 = !DILocation(line: 46, column: 2, scope: !6678)
!6685 = !DISubprogram(name: "_raw_spin_lock_irq", scope: !6307, file: !6307, line: 29, type: !6686, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6686 = !DISubroutineType(types: !6687)
!6687 = !{null, !6310}
!6688 = distinct !DISubprogram(name: "arch_static_branch", scope: !6689, file: !6689, line: 25, type: !6690, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6693)
!6689 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!6690 = !DISubroutineType(types: !6691)
!6691 = !{!825, !6692, !825}
!6692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3100, size: 64)
!6693 = !{!6694, !6695, !6696}
!6694 = !DILocalVariable(name: "key", arg: 1, scope: !6688, file: !6689, line: 25, type: !6692)
!6695 = !DILocalVariable(name: "branch", arg: 2, scope: !6688, file: !6689, line: 25, type: !825)
!6696 = !DILabel(scope: !6688, name: "l_yes", file: !6689, line: 33)
!6697 = !DILocation(line: 25, column: 67, scope: !6688)
!6698 = !DILocation(line: 25, column: 77, scope: !6688)
!6699 = !DILocation(line: 30, column: 13, scope: !6688)
!6700 = !DILocation(line: 30, column: 28, scope: !6688)
!6701 = !DILocation(line: 30, column: 26, scope: !6688)
!6702 = !DILocation(line: 27, column: 2, scope: !6688)
!6703 = !{i64 754169, i64 754213, i64 2148238896, i64 2148238917, i64 2148238943, i64 2148238976, i64 2148239010, i64 2148239034}
!6704 = !DILocation(line: 32, column: 2, scope: !6688)
!6705 = !DILocation(line: 33, column: 1, scope: !6688)
!6706 = !DILocation(line: 34, column: 2, scope: !6688)
!6707 = !DILocation(line: 35, column: 1, scope: !6688)
!6708 = !DISubprogram(name: "_raw_spin_unlock_irq", scope: !6307, file: !6307, line: 41, type: !6686, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6709 = distinct !DISubprogram(name: "__set_task_frozen", scope: !3, file: !3, line: 104, type: !6450, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6710)
!6710 = !{!6711, !6712, !6713, !6714, !6717}
!6711 = !DILocalVariable(name: "p", arg: 1, scope: !6709, file: !3, line: 104, type: !294)
!6712 = !DILocalVariable(name: "arg", arg: 2, scope: !6709, file: !3, line: 104, type: !20)
!6713 = !DILocalVariable(name: "state", scope: !6709, file: !3, line: 106, type: !7)
!6714 = !DILocalVariable(name: "__ret_warn_on", scope: !6715, file: !3, line: 122, type: !22)
!6715 = distinct !DILexicalBlock(scope: !6716, file: !3, line: 122, column: 3)
!6716 = distinct !DILexicalBlock(scope: !6709, file: !3, line: 121, column: 6)
!6717 = !DILocalVariable(name: "__flags", scope: !6718, file: !3, line: 122, type: !22)
!6718 = distinct !DILexicalBlock(scope: !6719, file: !3, line: 122, column: 3)
!6719 = distinct !DILexicalBlock(scope: !6715, file: !3, line: 122, column: 3)
!6720 = !DILocation(line: 104, column: 50, scope: !6709)
!6721 = !DILocation(line: 104, column: 59, scope: !6709)
!6722 = !DILocation(line: 106, column: 2, scope: !6709)
!6723 = !DILocation(line: 106, column: 15, scope: !6709)
!6724 = !DILocation(line: 106, column: 23, scope: !6725)
!6725 = distinct !DILexicalBlock(scope: !6709, file: !3, line: 106, column: 23)
!6726 = !DILocation(line: 106, column: 23, scope: !6727)
!6727 = distinct !DILexicalBlock(scope: !6725, file: !3, line: 106, column: 23)
!6728 = !DILocation(line: 108, column: 6, scope: !6729)
!6729 = distinct !DILexicalBlock(scope: !6709, file: !3, line: 108, column: 6)
!6730 = !DILocation(line: 108, column: 9, scope: !6729)
!6731 = !DILocation(line: 108, column: 6, scope: !6709)
!6732 = !DILocation(line: 109, column: 3, scope: !6729)
!6733 = !DILocation(line: 111, column: 6, scope: !6734)
!6734 = distinct !DILexicalBlock(scope: !6709, file: !3, line: 111, column: 6)
!6735 = !DILocation(line: 111, column: 11, scope: !6734)
!6736 = !DILocation(line: 111, column: 8, scope: !6734)
!6737 = !DILocation(line: 111, column: 19, scope: !6734)
!6738 = !DILocation(line: 111, column: 32, scope: !6734)
!6739 = !DILocation(line: 111, column: 22, scope: !6734)
!6740 = !DILocation(line: 111, column: 6, scope: !6709)
!6741 = !DILocation(line: 112, column: 3, scope: !6734)
!6742 = !DILocation(line: 114, column: 8, scope: !6743)
!6743 = distinct !DILexicalBlock(scope: !6709, file: !3, line: 114, column: 6)
!6744 = !DILocation(line: 114, column: 14, scope: !6743)
!6745 = !DILocation(line: 114, column: 6, scope: !6709)
!6746 = !DILocation(line: 115, column: 3, scope: !6743)
!6747 = !DILocation(line: 121, column: 6, scope: !6716)
!6748 = !DILocation(line: 121, column: 12, scope: !6716)
!6749 = !DILocation(line: 121, column: 6, scope: !6709)
!6750 = !DILocation(line: 122, column: 3, scope: !6715)
!6751 = !DILocation(line: 122, column: 3, scope: !6719)
!6752 = !DILocation(line: 122, column: 3, scope: !6718)
!6753 = !DILocation(line: 122, column: 3, scope: !6754)
!6754 = distinct !DILexicalBlock(scope: !6718, file: !3, line: 122, column: 3)
!6755 = !DILocation(line: 122, column: 3, scope: !6756)
!6756 = distinct !DILexicalBlock(scope: !6718, file: !3, line: 122, column: 3)
!6757 = !{i64 2155910219, i64 2155910248, i64 2155910294, i64 2155910352, i64 2155910406, i64 2155910460, i64 2155910515, i64 2155910546, i64 2155910854, i64 2155910860, i64 2155910907, i64 2155910930, i64 2155910956}
!6758 = !DILocation(line: 122, column: 3, scope: !6759)
!6759 = distinct !DILexicalBlock(scope: !6718, file: !3, line: 122, column: 3)
!6760 = !DILocation(line: 122, column: 3, scope: !6716)
!6761 = !DILocation(line: 132, column: 2, scope: !6709)
!6762 = !DILocation(line: 132, column: 2, scope: !6763)
!6763 = distinct !DILexicalBlock(scope: !6709, file: !3, line: 132, column: 2)
!6764 = !DILocation(line: 132, column: 2, scope: !6765)
!6765 = distinct !DILexicalBlock(scope: !6763, file: !3, line: 132, column: 2)
!6766 = !DILocation(line: 132, column: 2, scope: !6767)
!6767 = distinct !DILexicalBlock(scope: !6763, file: !3, line: 132, column: 2)
!6768 = !DILocation(line: 133, column: 2, scope: !6709)
!6769 = !DILocation(line: 134, column: 1, scope: !6709)
!6770 = !DISubprogram(name: "task_curr", scope: !296, file: !296, line: 1928, type: !6771, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6771 = !DISubroutineType(types: !6772)
!6772 = !{!22, !6773}
!6773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6774, size: 64)
!6774 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !295)
!6775 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !6307, file: !6307, line: 43, type: !6776, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6776 = !DISubroutineType(types: !6777)
!6777 = !{null, !6310, !39}
!6778 = distinct !DISubprogram(name: "signal_wake_up", scope: !5271, file: !5271, line: 450, type: !6779, scopeLine: 451, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6781)
!6779 = !DISubroutineType(types: !6780)
!6780 = !{null, !294, !825}
!6781 = !{!6782, !6783, !6784}
!6782 = !DILocalVariable(name: "t", arg: 1, scope: !6778, file: !5271, line: 450, type: !294)
!6783 = !DILocalVariable(name: "fatal", arg: 2, scope: !6778, file: !5271, line: 450, type: !825)
!6784 = !DILocalVariable(name: "state", scope: !6778, file: !5271, line: 452, type: !7)
!6785 = !DILocation(line: 450, column: 55, scope: !6778)
!6786 = !DILocation(line: 450, column: 63, scope: !6778)
!6787 = !DILocation(line: 452, column: 2, scope: !6778)
!6788 = !DILocation(line: 452, column: 15, scope: !6778)
!6789 = !DILocation(line: 453, column: 6, scope: !6790)
!6790 = distinct !DILexicalBlock(scope: !6778, file: !5271, line: 453, column: 6)
!6791 = !DILocation(line: 453, column: 12, scope: !6790)
!6792 = !DILocation(line: 453, column: 17, scope: !6790)
!6793 = !DILocation(line: 453, column: 20, scope: !6790)
!6794 = !DILocation(line: 453, column: 27, scope: !6790)
!6795 = !DILocation(line: 453, column: 6, scope: !6778)
!6796 = !DILocation(line: 454, column: 3, scope: !6797)
!6797 = distinct !DILexicalBlock(scope: !6790, file: !5271, line: 453, column: 52)
!6798 = !DILocation(line: 454, column: 6, scope: !6797)
!6799 = !DILocation(line: 454, column: 13, scope: !6797)
!6800 = !DILocation(line: 455, column: 9, scope: !6797)
!6801 = !DILocation(line: 456, column: 2, scope: !6797)
!6802 = !DILocation(line: 457, column: 23, scope: !6778)
!6803 = !DILocation(line: 457, column: 26, scope: !6778)
!6804 = !DILocation(line: 457, column: 2, scope: !6778)
!6805 = !DILocation(line: 458, column: 1, scope: !6778)
!6806 = !DISubprogram(name: "signal_wake_up_state", scope: !5271, file: !5271, line: 448, type: !6807, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6807 = !DISubroutineType(types: !6808)
!6808 = !{null, !294, !7}
!6809 = !DISubprogram(name: "__lock_task_sighand", scope: !5271, file: !5271, line: 734, type: !6427, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6810 = distinct !DISubprogram(name: "debug_check_no_locks_held", scope: !6811, file: !6811, line: 70, type: !3141, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6811 = !DIFile(filename: "./include/linux/debug_locks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f2ca58272fdb5544dbc38c2c64cca117")
!6812 = !DILocation(line: 72, column: 1, scope: !6810)
