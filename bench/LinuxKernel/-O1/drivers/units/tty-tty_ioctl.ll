; ModuleID = 'drivers/tty/tty_ioctl.c'
source_filename = "drivers/tty/tty_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_tty_chars_in_buffer: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad tty_chars_in_buffer ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_tty_write_room: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad tty_write_room ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_tty_driver_flush_buffer: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad tty_driver_flush_buffer ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_tty_unthrottle: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad tty_unthrottle ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_tty_wait_until_sent: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad tty_wait_until_sent ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_tty_termios_copy_hw: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad tty_termios_copy_hw ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_tty_termios_hw_change: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad tty_termios_hw_change ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_tty_get_char_size: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad tty_get_char_size ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_tty_get_frame_size: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad tty_get_frame_size ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_tty_set_termios: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad tty_set_termios ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_tty_mode_ioctl: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad tty_mode_ioctl ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_tty_perform_flush: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad tty_perform_flush ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_n_tty_ioctl_helper: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad n_tty_ioctl_helper ; .previous"

%struct.user_namespace = type opaque
%struct.static_call_key = type { ptr, %union.anon.18 }
%union.anon.18 = type { i64 }
%struct.pcpu_hot = type { %union.anon.19 }
%union.anon.19 = type { %struct.anon.20, [16 x i8] }
%struct.anon.20 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.tty_struct = type { %struct.kref, i32, ptr, ptr, ptr, ptr, ptr, %struct.ld_semaphore, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i64, i32, i32, %struct.winsize, %struct.anon.16, %struct.anon.17, i8, i8, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, i32, ptr, %struct.list_head, %struct.work_struct }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.ld_semaphore = type { %struct.atomic64_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.16 = type { %struct.spinlock, i8, i8, [0 x i64] }
%struct.anon.17 = type { ptr, ptr, %struct.spinlock, i8, i8, [0 x i64] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.tty_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.tty_driver = type { %struct.kref, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, %struct.ktermios, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.tty_ldisc = type { ptr, ptr }
%struct.tty_ldisc_ops = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.termio = type { i16, i16, i16, i16, i8, [8 x i8] }
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

@__UNIQUE_ID___addressable_tty_chars_in_buffer287 = internal global ptr @tty_chars_in_buffer, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_tty_write_room288 = internal global ptr @tty_write_room, section ".discard.addressable", align 8, !dbg !5071
@__UNIQUE_ID___addressable_tty_driver_flush_buffer289 = internal global ptr @tty_driver_flush_buffer, section ".discard.addressable", align 8, !dbg !5073
@__UNIQUE_ID___addressable_tty_unthrottle290 = internal global ptr @tty_unthrottle, section ".discard.addressable", align 8, !dbg !5075
@__UNIQUE_ID___addressable_tty_wait_until_sent291 = internal global ptr @tty_wait_until_sent, section ".discard.addressable", align 8, !dbg !5077
@__UNIQUE_ID___addressable_tty_termios_copy_hw292 = internal global ptr @tty_termios_copy_hw, section ".discard.addressable", align 8, !dbg !5079
@__UNIQUE_ID___addressable_tty_termios_hw_change293 = internal global ptr @tty_termios_hw_change, section ".discard.addressable", align 8, !dbg !5081
@__UNIQUE_ID___addressable_tty_get_char_size294 = internal global ptr @tty_get_char_size, section ".discard.addressable", align 8, !dbg !5083
@__UNIQUE_ID___addressable_tty_get_frame_size295 = internal global ptr @tty_get_frame_size, section ".discard.addressable", align 8, !dbg !5085
@.str = private unnamed_addr constant [24 x i8] c"drivers/tty/tty_ioctl.c\00", align 1, !dbg !5087
@__UNIQUE_ID___addressable_tty_set_termios296 = internal global ptr @tty_set_termios, section ".discard.addressable", align 8, !dbg !5092
@init_user_ns = external dso_local global %struct.user_namespace, align 1
@__UNIQUE_ID___addressable_tty_mode_ioctl297 = internal global ptr @tty_mode_ioctl, section ".discard.addressable", align 8, !dbg !5094
@__UNIQUE_ID___addressable_tty_perform_flush298 = internal global ptr @tty_perform_flush, section ".discard.addressable", align 8, !dbg !5096
@__UNIQUE_ID___addressable_n_tty_ioctl_helper299 = internal global ptr @n_tty_ioctl_helper, section ".discard.addressable", align 8, !dbg !5098
@might_resched.__UNIQUE_ID___addressable___SCK__might_resched37 = internal global ptr @__SCK__might_resched, section ".discard.addressable", align 8, !dbg !5100
@__SCK__might_resched = external dso_local global %struct.static_call_key, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1, !dbg !5104
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@llvm.compiler.used = appending global [14 x ptr] [ptr @__UNIQUE_ID___addressable_tty_chars_in_buffer287, ptr @__UNIQUE_ID___addressable_tty_write_room288, ptr @__UNIQUE_ID___addressable_tty_driver_flush_buffer289, ptr @__UNIQUE_ID___addressable_tty_unthrottle290, ptr @__UNIQUE_ID___addressable_tty_wait_until_sent291, ptr @__UNIQUE_ID___addressable_tty_termios_copy_hw292, ptr @__UNIQUE_ID___addressable_tty_termios_hw_change293, ptr @__UNIQUE_ID___addressable_tty_get_char_size294, ptr @__UNIQUE_ID___addressable_tty_get_frame_size295, ptr @__UNIQUE_ID___addressable_tty_set_termios296, ptr @__UNIQUE_ID___addressable_tty_mode_ioctl297, ptr @__UNIQUE_ID___addressable_tty_perform_flush298, ptr @__UNIQUE_ID___addressable_n_tty_ioctl_helper299, ptr @might_resched.__UNIQUE_ID___addressable___SCK__might_resched37], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @tty_chars_in_buffer(ptr noundef %tty) #0 align 16 !dbg !5120 {
entry:
  %retval = alloca i32, align 4
  %tty.addr = alloca ptr, align 8
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !5122, metadata !DIExpression()), !dbg !5123
  %0 = load ptr, ptr %tty.addr, align 8, !dbg !5124
  %ops = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 5, !dbg !5126
  %1 = load ptr, ptr %ops, align 8, !dbg !5126
  %chars_in_buffer = getelementptr inbounds %struct.tty_operations, ptr %1, i32 0, i32 11, !dbg !5127
  %2 = load ptr, ptr %chars_in_buffer, align 8, !dbg !5127
  %tobool = icmp ne ptr %2, null, !dbg !5124
  br i1 %tobool, label %if.then, label %if.end, !dbg !5128

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %tty.addr, align 8, !dbg !5129
  %ops1 = getelementptr inbounds %struct.tty_struct, ptr %3, i32 0, i32 5, !dbg !5130
  %4 = load ptr, ptr %ops1, align 8, !dbg !5130
  %chars_in_buffer2 = getelementptr inbounds %struct.tty_operations, ptr %4, i32 0, i32 11, !dbg !5131
  %5 = load ptr, ptr %chars_in_buffer2, align 8, !dbg !5131
  %6 = load ptr, ptr %tty.addr, align 8, !dbg !5132
  %call = call i32 %5(ptr noundef %6) #15, !dbg !5129
  store i32 %call, ptr %retval, align 4, !dbg !5133
  br label %return, !dbg !5133

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5134
  br label %return, !dbg !5134

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, ptr %retval, align 4, !dbg !5135
  ret i32 %7, !dbg !5135
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @tty_write_room(ptr noundef %tty) #0 align 16 !dbg !5136 {
entry:
  %retval = alloca i32, align 4
  %tty.addr = alloca ptr, align 8
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !5138, metadata !DIExpression()), !dbg !5139
  %0 = load ptr, ptr %tty.addr, align 8, !dbg !5140
  %ops = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 5, !dbg !5142
  %1 = load ptr, ptr %ops, align 8, !dbg !5142
  %write_room = getelementptr inbounds %struct.tty_operations, ptr %1, i32 0, i32 10, !dbg !5143
  %2 = load ptr, ptr %write_room, align 8, !dbg !5143
  %tobool = icmp ne ptr %2, null, !dbg !5140
  br i1 %tobool, label %if.then, label %if.end, !dbg !5144

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %tty.addr, align 8, !dbg !5145
  %ops1 = getelementptr inbounds %struct.tty_struct, ptr %3, i32 0, i32 5, !dbg !5146
  %4 = load ptr, ptr %ops1, align 8, !dbg !5146
  %write_room2 = getelementptr inbounds %struct.tty_operations, ptr %4, i32 0, i32 10, !dbg !5147
  %5 = load ptr, ptr %write_room2, align 8, !dbg !5147
  %6 = load ptr, ptr %tty.addr, align 8, !dbg !5148
  %call = call i32 %5(ptr noundef %6) #15, !dbg !5145
  store i32 %call, ptr %retval, align 4, !dbg !5149
  br label %return, !dbg !5149

if.end:                                           ; preds = %entry
  store i32 2048, ptr %retval, align 4, !dbg !5150
  br label %return, !dbg !5150

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, ptr %retval, align 4, !dbg !5151
  ret i32 %7, !dbg !5151
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @tty_driver_flush_buffer(ptr noundef %tty) #0 align 16 !dbg !5152 {
entry:
  %tty.addr = alloca ptr, align 8
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !5154, metadata !DIExpression()), !dbg !5155
  %0 = load ptr, ptr %tty.addr, align 8, !dbg !5156
  %ops = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 5, !dbg !5158
  %1 = load ptr, ptr %ops, align 8, !dbg !5158
  %flush_buffer = getelementptr inbounds %struct.tty_operations, ptr %1, i32 0, i32 21, !dbg !5159
  %2 = load ptr, ptr %flush_buffer, align 8, !dbg !5159
  %tobool = icmp ne ptr %2, null, !dbg !5156
  br i1 %tobool, label %if.then, label %if.end, !dbg !5160

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %tty.addr, align 8, !dbg !5161
  %ops1 = getelementptr inbounds %struct.tty_struct, ptr %3, i32 0, i32 5, !dbg !5162
  %4 = load ptr, ptr %ops1, align 8, !dbg !5162
  %flush_buffer2 = getelementptr inbounds %struct.tty_operations, ptr %4, i32 0, i32 21, !dbg !5163
  %5 = load ptr, ptr %flush_buffer2, align 8, !dbg !5163
  %6 = load ptr, ptr %tty.addr, align 8, !dbg !5164
  call void %5(ptr noundef %6) #15, !dbg !5161
  br label %if.end, !dbg !5161

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5165
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @tty_unthrottle(ptr noundef %tty) #0 align 16 !dbg !5166 {
entry:
  %tty.addr = alloca ptr, align 8
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !5168, metadata !DIExpression()), !dbg !5169
  %0 = load ptr, ptr %tty.addr, align 8, !dbg !5170
  %termios_rwsem = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 11, !dbg !5171
  call void @down_write(ptr noundef %termios_rwsem) #15, !dbg !5172
  %1 = load ptr, ptr %tty.addr, align 8, !dbg !5173
  %flags = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 16, !dbg !5175
  %call = call zeroext i1 @test_and_clear_bit(i64 noundef 0, ptr noundef %flags) #15, !dbg !5176
  br i1 %call, label %land.lhs.true, label %if.end, !dbg !5177

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %tty.addr, align 8, !dbg !5178
  %ops = getelementptr inbounds %struct.tty_struct, ptr %2, i32 0, i32 5, !dbg !5179
  %3 = load ptr, ptr %ops, align 8, !dbg !5179
  %unthrottle = getelementptr inbounds %struct.tty_operations, ptr %3, i32 0, i32 16, !dbg !5180
  %4 = load ptr, ptr %unthrottle, align 8, !dbg !5180
  %tobool = icmp ne ptr %4, null, !dbg !5178
  br i1 %tobool, label %if.then, label %if.end, !dbg !5181

if.then:                                          ; preds = %land.lhs.true
  %5 = load ptr, ptr %tty.addr, align 8, !dbg !5182
  %ops1 = getelementptr inbounds %struct.tty_struct, ptr %5, i32 0, i32 5, !dbg !5183
  %6 = load ptr, ptr %ops1, align 8, !dbg !5183
  %unthrottle2 = getelementptr inbounds %struct.tty_operations, ptr %6, i32 0, i32 16, !dbg !5184
  %7 = load ptr, ptr %unthrottle2, align 8, !dbg !5184
  %8 = load ptr, ptr %tty.addr, align 8, !dbg !5185
  call void %7(ptr noundef %8) #15, !dbg !5182
  br label %if.end, !dbg !5182

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %9 = load ptr, ptr %tty.addr, align 8, !dbg !5186
  %flow_change = getelementptr inbounds %struct.tty_struct, ptr %9, i32 0, i32 24, !dbg !5187
  store i32 0, ptr %flow_change, align 4, !dbg !5188
  %10 = load ptr, ptr %tty.addr, align 8, !dbg !5189
  %termios_rwsem3 = getelementptr inbounds %struct.tty_struct, ptr %10, i32 0, i32 11, !dbg !5190
  call void @up_write(ptr noundef %termios_rwsem3) #15, !dbg !5191
  ret void, !dbg !5192
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5193 dso_local void @down_write(ptr noundef) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @test_and_clear_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !5197 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5204, metadata !DIExpression()), !dbg !5206
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5205, metadata !DIExpression()), !dbg !5207
  br label %do.body, !dbg !5208

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5209

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5211
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5212
  %div = sdiv i64 %1, 64, !dbg !5212
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5213
  call void @instrument_atomic_read_write(ptr noundef %add.ptr, i64 noundef 8) #15, !dbg !5214
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5215
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5216
  %call = call zeroext i1 @arch_test_and_clear_bit(i64 noundef %2, ptr noundef %3) #15, !dbg !5217
  ret i1 %call, !dbg !5218
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5219 dso_local void @up_write(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @tty_throttle_safe(ptr noundef %tty) #0 align 16 !dbg !5220 {
entry:
  %tty.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !5222, metadata !DIExpression()), !dbg !5224
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !5225
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5223, metadata !DIExpression()), !dbg !5226
  store i32 0, ptr %ret, align 4, !dbg !5226
  %0 = load ptr, ptr %tty.addr, align 8, !dbg !5227
  %throttle_mutex = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 10, !dbg !5228
  call void @mutex_lock(ptr noundef %throttle_mutex) #15, !dbg !5229
  %1 = load ptr, ptr %tty.addr, align 8, !dbg !5230
  %call = call zeroext i1 @tty_throttled(ptr noundef %1) #15, !dbg !5232
  br i1 %call, label %if.end6, label %if.then, !dbg !5233

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %tty.addr, align 8, !dbg !5234
  %flow_change = getelementptr inbounds %struct.tty_struct, ptr %2, i32 0, i32 24, !dbg !5237
  %3 = load i32, ptr %flow_change, align 4, !dbg !5237
  %cmp = icmp ne i32 %3, 1, !dbg !5238
  br i1 %cmp, label %if.then1, label %if.else, !dbg !5239

if.then1:                                         ; preds = %if.then
  store i32 1, ptr %ret, align 4, !dbg !5240
  br label %if.end5, !dbg !5241

if.else:                                          ; preds = %if.then
  %4 = load ptr, ptr %tty.addr, align 8, !dbg !5242
  %flags = getelementptr inbounds %struct.tty_struct, ptr %4, i32 0, i32 16, !dbg !5244
  call void @set_bit(i64 noundef 0, ptr noundef %flags) #15, !dbg !5245
  %5 = load ptr, ptr %tty.addr, align 8, !dbg !5246
  %ops = getelementptr inbounds %struct.tty_struct, ptr %5, i32 0, i32 5, !dbg !5248
  %6 = load ptr, ptr %ops, align 8, !dbg !5248
  %throttle = getelementptr inbounds %struct.tty_operations, ptr %6, i32 0, i32 15, !dbg !5249
  %7 = load ptr, ptr %throttle, align 8, !dbg !5249
  %tobool = icmp ne ptr %7, null, !dbg !5246
  br i1 %tobool, label %if.then2, label %if.end, !dbg !5250

if.then2:                                         ; preds = %if.else
  %8 = load ptr, ptr %tty.addr, align 8, !dbg !5251
  %ops3 = getelementptr inbounds %struct.tty_struct, ptr %8, i32 0, i32 5, !dbg !5252
  %9 = load ptr, ptr %ops3, align 8, !dbg !5252
  %throttle4 = getelementptr inbounds %struct.tty_operations, ptr %9, i32 0, i32 15, !dbg !5253
  %10 = load ptr, ptr %throttle4, align 8, !dbg !5253
  %11 = load ptr, ptr %tty.addr, align 8, !dbg !5254
  call void %10(ptr noundef %11) #15, !dbg !5251
  br label %if.end, !dbg !5251

if.end:                                           ; preds = %if.then2, %if.else
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then1
  br label %if.end6, !dbg !5255

if.end6:                                          ; preds = %if.end5, %entry
  %12 = load ptr, ptr %tty.addr, align 8, !dbg !5256
  %throttle_mutex7 = getelementptr inbounds %struct.tty_struct, ptr %12, i32 0, i32 10, !dbg !5257
  call void @mutex_unlock(ptr noundef %throttle_mutex7) #15, !dbg !5258
  %13 = load i32, ptr %ret, align 4, !dbg !5259
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !5260
  ret i32 %13, !dbg !5261
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5262 dso_local void @mutex_lock(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @tty_throttled(ptr noundef %tty) #5 align 16 !dbg !5266 {
entry:
  %tty.addr = alloca ptr, align 8
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !5270, metadata !DIExpression()), !dbg !5271
  %0 = load ptr, ptr %tty.addr, align 8, !dbg !5272
  %flags = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 16, !dbg !5272
  %1 = ptrtoint ptr %flags to i64, !dbg !5272
  %cmp = icmp ne i64 %1, 0, !dbg !5272
  %conv = zext i1 %cmp to i32, !dbg !5272
  %2 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !5272
  br i1 %2, label %land.lhs.true, label %cond.false, !dbg !5272

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %tty.addr, align 8, !dbg !5272
  %flags1 = getelementptr inbounds %struct.tty_struct, ptr %3, i32 0, i32 16, !dbg !5272
  %4 = ptrtoint ptr %flags1 to i64, !dbg !5272
  %cmp2 = icmp ne i64 %4, 0, !dbg !5272
  br i1 %cmp2, label %land.lhs.true4, label %cond.false, !dbg !5272

land.lhs.true4:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %tty.addr, align 8, !dbg !5272
  %flags5 = getelementptr inbounds %struct.tty_struct, ptr %5, i32 0, i32 16, !dbg !5272
  %6 = load i64, ptr %flags5, align 8, !dbg !5272
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !5272
  br i1 %7, label %cond.true, label %cond.false, !dbg !5272

cond.true:                                        ; preds = %land.lhs.true4
  %8 = load ptr, ptr %tty.addr, align 8, !dbg !5272
  %flags6 = getelementptr inbounds %struct.tty_struct, ptr %8, i32 0, i32 16, !dbg !5272
  %call = call zeroext i1 @const_test_bit(i64 noundef 0, ptr noundef %flags6) #15, !dbg !5272
  %conv7 = zext i1 %call to i32, !dbg !5272
  br label %cond.end, !dbg !5272

cond.false:                                       ; preds = %land.lhs.true4, %land.lhs.true, %entry
  %9 = load ptr, ptr %tty.addr, align 8, !dbg !5272
  %flags8 = getelementptr inbounds %struct.tty_struct, ptr %9, i32 0, i32 16, !dbg !5272
  %call9 = call zeroext i1 @_test_bit(i64 noundef 0, ptr noundef %flags8) #15, !dbg !5272
  %conv10 = zext i1 %call9 to i32, !dbg !5272
  br label %cond.end, !dbg !5272

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv7, %cond.true ], [ %conv10, %cond.false ], !dbg !5272
  %tobool = icmp ne i32 %cond, 0, !dbg !5272
  ret i1 %tobool, !dbg !5273
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !5274 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5278, metadata !DIExpression()), !dbg !5280
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5279, metadata !DIExpression()), !dbg !5281
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5282
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5283
  %div = sdiv i64 %1, 64, !dbg !5283
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5284
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #15, !dbg !5285
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5286
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5287
  call void @arch_set_bit(i64 noundef %2, ptr noundef %3) #15, !dbg !5288
  ret void, !dbg !5289
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5290 dso_local void @mutex_unlock(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @tty_unthrottle_safe(ptr noundef %tty) #0 align 16 !dbg !5291 {
entry:
  %tty.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !5293, metadata !DIExpression()), !dbg !5295
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !5296
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5294, metadata !DIExpression()), !dbg !5297
  store i32 0, ptr %ret, align 4, !dbg !5297
  %0 = load ptr, ptr %tty.addr, align 8, !dbg !5298
  %throttle_mutex = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 10, !dbg !5299
  call void @mutex_lock(ptr noundef %throttle_mutex) #15, !dbg !5300
  %1 = load ptr, ptr %tty.addr, align 8, !dbg !5301
  %call = call zeroext i1 @tty_throttled(ptr noundef %1) #15, !dbg !5303
  br i1 %call, label %if.then, label %if.end6, !dbg !5304

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %tty.addr, align 8, !dbg !5305
  %flow_change = getelementptr inbounds %struct.tty_struct, ptr %2, i32 0, i32 24, !dbg !5308
  %3 = load i32, ptr %flow_change, align 4, !dbg !5308
  %cmp = icmp ne i32 %3, 2, !dbg !5309
  br i1 %cmp, label %if.then1, label %if.else, !dbg !5310

if.then1:                                         ; preds = %if.then
  store i32 1, ptr %ret, align 4, !dbg !5311
  br label %if.end5, !dbg !5312

if.else:                                          ; preds = %if.then
  %4 = load ptr, ptr %tty.addr, align 8, !dbg !5313
  %flags = getelementptr inbounds %struct.tty_struct, ptr %4, i32 0, i32 16, !dbg !5315
  call void @clear_bit(i64 noundef 0, ptr noundef %flags) #15, !dbg !5316
  %5 = load ptr, ptr %tty.addr, align 8, !dbg !5317
  %ops = getelementptr inbounds %struct.tty_struct, ptr %5, i32 0, i32 5, !dbg !5319
  %6 = load ptr, ptr %ops, align 8, !dbg !5319
  %unthrottle = getelementptr inbounds %struct.tty_operations, ptr %6, i32 0, i32 16, !dbg !5320
  %7 = load ptr, ptr %unthrottle, align 8, !dbg !5320
  %tobool = icmp ne ptr %7, null, !dbg !5317
  br i1 %tobool, label %if.then2, label %if.end, !dbg !5321

if.then2:                                         ; preds = %if.else
  %8 = load ptr, ptr %tty.addr, align 8, !dbg !5322
  %ops3 = getelementptr inbounds %struct.tty_struct, ptr %8, i32 0, i32 5, !dbg !5323
  %9 = load ptr, ptr %ops3, align 8, !dbg !5323
  %unthrottle4 = getelementptr inbounds %struct.tty_operations, ptr %9, i32 0, i32 16, !dbg !5324
  %10 = load ptr, ptr %unthrottle4, align 8, !dbg !5324
  %11 = load ptr, ptr %tty.addr, align 8, !dbg !5325
  call void %10(ptr noundef %11) #15, !dbg !5322
  br label %if.end, !dbg !5322

if.end:                                           ; preds = %if.then2, %if.else
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then1
  br label %if.end6, !dbg !5326

if.end6:                                          ; preds = %if.end5, %entry
  %12 = load ptr, ptr %tty.addr, align 8, !dbg !5327
  %throttle_mutex7 = getelementptr inbounds %struct.tty_struct, ptr %12, i32 0, i32 10, !dbg !5328
  call void @mutex_unlock(ptr noundef %throttle_mutex7) #15, !dbg !5329
  %13 = load i32, ptr %ret, align 4, !dbg !5330
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !5331
  ret i32 %13, !dbg !5332
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clear_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !5333 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5335, metadata !DIExpression()), !dbg !5337
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5336, metadata !DIExpression()), !dbg !5338
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5339
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5340
  %div = sdiv i64 %1, 64, !dbg !5340
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5341
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #15, !dbg !5342
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5343
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5344
  call void @arch_clear_bit(i64 noundef %2, ptr noundef %3) #15, !dbg !5345
  ret void, !dbg !5346
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @tty_wait_until_sent(ptr noundef %tty, i64 noundef %timeout) #0 align 16 !dbg !5347 {
entry:
  %tty.addr = alloca ptr, align 8
  %timeout.addr = alloca i64, align 8
  %__ret = alloca i64, align 8
  %__cond = alloca i8, align 1
  %tmp = alloca i32, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %__ret11 = alloca i64, align 8
  %__int = alloca i64, align 8
  %__cond13 = alloca i8, align 1
  %tmp23 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp38 = alloca i64, align 8
  %tmp40 = alloca i64, align 8
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !5351, metadata !DIExpression()), !dbg !5380
  store i64 %timeout, ptr %timeout.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %timeout.addr, metadata !5352, metadata !DIExpression()), !dbg !5381
  %0 = load i64, ptr %timeout.addr, align 8, !dbg !5382
  %tobool = icmp ne i64 %0, 0, !dbg !5382
  br i1 %tobool, label %if.end, label %if.then, !dbg !5384

if.then:                                          ; preds = %entry
  store i64 9223372036854775807, ptr %timeout.addr, align 8, !dbg !5385
  br label %if.end, !dbg !5386

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret) #16, !dbg !5387
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !5353, metadata !DIExpression()), !dbg !5387
  %1 = load i64, ptr %timeout.addr, align 8, !dbg !5387
  store i64 %1, ptr %__ret, align 8, !dbg !5387
  br label %do.body, !dbg !5387

do.body:                                          ; preds = %if.end
  call void @might_resched() #15, !dbg !5388
  br label %do.cond, !dbg !5388

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5388

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 1, ptr %__cond) #16, !dbg !5390
  call void @llvm.dbg.declare(metadata ptr %__cond, metadata !5355, metadata !DIExpression()), !dbg !5390
  %2 = load ptr, ptr %tty.addr, align 8, !dbg !5390
  %call = call i32 @tty_chars_in_buffer(ptr noundef %2) #15, !dbg !5390
  %tobool1 = icmp ne i32 %call, 0, !dbg !5390
  %lnot = xor i1 %tobool1, true, !dbg !5390
  %frombool = zext i1 %lnot to i8, !dbg !5390
  store i8 %frombool, ptr %__cond, align 1, !dbg !5390
  %3 = load i8, ptr %__cond, align 1, !dbg !5391, !range !5393, !noundef !590
  %tobool2 = trunc i8 %3 to i1, !dbg !5391
  br i1 %tobool2, label %land.lhs.true, label %if.end5, !dbg !5391

land.lhs.true:                                    ; preds = %do.end
  %4 = load i64, ptr %__ret, align 8, !dbg !5391
  %tobool3 = icmp ne i64 %4, 0, !dbg !5391
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !5390

if.then4:                                         ; preds = %land.lhs.true
  store i64 1, ptr %__ret, align 8, !dbg !5391
  br label %if.end5, !dbg !5391

if.end5:                                          ; preds = %if.then4, %land.lhs.true, %do.end
  %5 = load i8, ptr %__cond, align 1, !dbg !5390, !range !5393, !noundef !590
  %tobool6 = trunc i8 %5 to i1, !dbg !5390
  br i1 %tobool6, label %lor.end, label %lor.rhs, !dbg !5390

lor.rhs:                                          ; preds = %if.end5
  %6 = load i64, ptr %__ret, align 8, !dbg !5390
  %tobool7 = icmp ne i64 %6, 0, !dbg !5390
  %lnot8 = xor i1 %tobool7, true, !dbg !5390
  br label %lor.end, !dbg !5390

lor.end:                                          ; preds = %lor.rhs, %if.end5
  %7 = phi i1 [ true, %if.end5 ], [ %lnot8, %lor.rhs ]
  %lor.ext = zext i1 %7 to i32, !dbg !5390
  store i32 %lor.ext, ptr %tmp, align 4, !dbg !5391
  call void @llvm.lifetime.end.p0(i64 1, ptr %__cond) #16, !dbg !5394
  %8 = load i32, ptr %tmp, align 4, !dbg !5390
  %tobool9 = icmp ne i32 %8, 0, !dbg !5394
  br i1 %tobool9, label %if.end39, label %if.then10, !dbg !5387

if.then10:                                        ; preds = %lor.end
  call void @llvm.lifetime.start.p0(i64 40, ptr %__wq_entry) #16, !dbg !5395
  call void @llvm.dbg.declare(metadata ptr %__wq_entry, metadata !5358, metadata !DIExpression()), !dbg !5395
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret11) #16, !dbg !5395
  call void @llvm.dbg.declare(metadata ptr %__ret11, metadata !5371, metadata !DIExpression()), !dbg !5395
  %9 = load i64, ptr %timeout.addr, align 8, !dbg !5395
  store i64 %9, ptr %__ret11, align 8, !dbg !5395
  call void @init_wait_entry(ptr noundef %__wq_entry, i32 noundef 0) #15, !dbg !5395
  br label %for.cond, !dbg !5395

for.cond:                                         ; preds = %cleanup.cont, %if.then10
  call void @llvm.lifetime.start.p0(i64 8, ptr %__int) #16, !dbg !5396
  call void @llvm.dbg.declare(metadata ptr %__int, metadata !5372, metadata !DIExpression()), !dbg !5396
  %10 = load ptr, ptr %tty.addr, align 8, !dbg !5396
  %write_wait = getelementptr inbounds %struct.tty_struct, ptr %10, i32 0, i32 27, !dbg !5396
  %call12 = call i64 @prepare_to_wait_event(ptr noundef %write_wait, ptr noundef %__wq_entry, i32 noundef 1) #15, !dbg !5396
  store i64 %call12, ptr %__int, align 8, !dbg !5396
  call void @llvm.lifetime.start.p0(i64 1, ptr %__cond13) #16, !dbg !5397
  call void @llvm.dbg.declare(metadata ptr %__cond13, metadata !5376, metadata !DIExpression()), !dbg !5397
  %11 = load ptr, ptr %tty.addr, align 8, !dbg !5397
  %call14 = call i32 @tty_chars_in_buffer(ptr noundef %11) #15, !dbg !5397
  %tobool15 = icmp ne i32 %call14, 0, !dbg !5397
  %lnot16 = xor i1 %tobool15, true, !dbg !5397
  %frombool17 = zext i1 %lnot16 to i8, !dbg !5397
  store i8 %frombool17, ptr %__cond13, align 1, !dbg !5397
  %12 = load i8, ptr %__cond13, align 1, !dbg !5398, !range !5393, !noundef !590
  %tobool18 = trunc i8 %12 to i1, !dbg !5398
  br i1 %tobool18, label %land.lhs.true19, label %if.end22, !dbg !5398

land.lhs.true19:                                  ; preds = %for.cond
  %13 = load i64, ptr %__ret11, align 8, !dbg !5398
  %tobool20 = icmp ne i64 %13, 0, !dbg !5398
  br i1 %tobool20, label %if.end22, label %if.then21, !dbg !5397

if.then21:                                        ; preds = %land.lhs.true19
  store i64 1, ptr %__ret11, align 8, !dbg !5398
  br label %if.end22, !dbg !5398

if.end22:                                         ; preds = %if.then21, %land.lhs.true19, %for.cond
  %14 = load i8, ptr %__cond13, align 1, !dbg !5397, !range !5393, !noundef !590
  %tobool24 = trunc i8 %14 to i1, !dbg !5397
  br i1 %tobool24, label %lor.end28, label %lor.rhs25, !dbg !5397

lor.rhs25:                                        ; preds = %if.end22
  %15 = load i64, ptr %__ret11, align 8, !dbg !5397
  %tobool26 = icmp ne i64 %15, 0, !dbg !5397
  %lnot27 = xor i1 %tobool26, true, !dbg !5397
  br label %lor.end28, !dbg !5397

lor.end28:                                        ; preds = %lor.rhs25, %if.end22
  %16 = phi i1 [ true, %if.end22 ], [ %lnot27, %lor.rhs25 ]
  %lor.ext29 = zext i1 %16 to i32, !dbg !5397
  store i32 %lor.ext29, ptr %tmp23, align 4, !dbg !5398
  call void @llvm.lifetime.end.p0(i64 1, ptr %__cond13) #16, !dbg !5400
  %17 = load i32, ptr %tmp23, align 4, !dbg !5397
  %tobool30 = icmp ne i32 %17, 0, !dbg !5400
  br i1 %tobool30, label %if.then31, label %if.end32, !dbg !5396

if.then31:                                        ; preds = %lor.end28
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5400

if.end32:                                         ; preds = %lor.end28
  %18 = load i64, ptr %__int, align 8, !dbg !5401
  %tobool33 = icmp ne i64 %18, 0, !dbg !5401
  br i1 %tobool33, label %if.then34, label %if.end35, !dbg !5396

if.then34:                                        ; preds = %if.end32
  %19 = load i64, ptr %__int, align 8, !dbg !5403
  store i64 %19, ptr %__ret11, align 8, !dbg !5403
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5403

if.end35:                                         ; preds = %if.end32
  %20 = load i64, ptr %__ret11, align 8, !dbg !5396
  %call36 = call i64 @schedule_timeout(i64 noundef %20) #15, !dbg !5396
  store i64 %call36, ptr %__ret11, align 8, !dbg !5396
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5405
  br label %cleanup, !dbg !5405

cleanup:                                          ; preds = %if.then34, %if.end35, %if.then31
  call void @llvm.lifetime.end.p0(i64 8, ptr %__int) #16, !dbg !5405
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.end
    i32 6, label %__out
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond, !dbg !5405, !llvm.loop !5406

for.end:                                          ; preds = %cleanup
  %21 = load ptr, ptr %tty.addr, align 8, !dbg !5395
  %write_wait37 = getelementptr inbounds %struct.tty_struct, ptr %21, i32 0, i32 27, !dbg !5395
  call void @finish_wait(ptr noundef %write_wait37, ptr noundef %__wq_entry) #15, !dbg !5395
  br label %__out, !dbg !5395

__out:                                            ; preds = %for.end, %cleanup
  call void @llvm.dbg.label(metadata !5379), !dbg !5395
  %22 = load i64, ptr %__ret11, align 8, !dbg !5395
  store i64 %22, ptr %tmp38, align 8, !dbg !5395
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret11) #16, !dbg !5394
  call void @llvm.lifetime.end.p0(i64 40, ptr %__wq_entry) #16, !dbg !5394
  %23 = load i64, ptr %tmp38, align 8, !dbg !5395
  store i64 %23, ptr %__ret, align 8, !dbg !5394
  br label %if.end39, !dbg !5394

if.end39:                                         ; preds = %__out, %lor.end
  %24 = load i64, ptr %__ret, align 8, !dbg !5387
  store i64 %24, ptr %tmp40, align 8, !dbg !5394
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret) #16, !dbg !5409
  %25 = load i64, ptr %tmp40, align 8, !dbg !5387
  store i64 %25, ptr %timeout.addr, align 8, !dbg !5410
  %26 = load i64, ptr %timeout.addr, align 8, !dbg !5411
  %cmp = icmp sle i64 %26, 0, !dbg !5413
  br i1 %cmp, label %if.then41, label %if.end42, !dbg !5414

if.then41:                                        ; preds = %if.end39
  br label %if.end50, !dbg !5415

if.end42:                                         ; preds = %if.end39
  %27 = load i64, ptr %timeout.addr, align 8, !dbg !5416
  %cmp43 = icmp eq i64 %27, 9223372036854775807, !dbg !5418
  br i1 %cmp43, label %if.then44, label %if.end45, !dbg !5419

if.then44:                                        ; preds = %if.end42
  store i64 0, ptr %timeout.addr, align 8, !dbg !5420
  br label %if.end45, !dbg !5421

if.end45:                                         ; preds = %if.then44, %if.end42
  %28 = load ptr, ptr %tty.addr, align 8, !dbg !5422
  %ops = getelementptr inbounds %struct.tty_struct, ptr %28, i32 0, i32 5, !dbg !5424
  %29 = load ptr, ptr %ops, align 8, !dbg !5424
  %wait_until_sent = getelementptr inbounds %struct.tty_operations, ptr %29, i32 0, i32 24, !dbg !5425
  %30 = load ptr, ptr %wait_until_sent, align 8, !dbg !5425
  %tobool46 = icmp ne ptr %30, null, !dbg !5422
  br i1 %tobool46, label %if.then47, label %if.end50, !dbg !5426

if.then47:                                        ; preds = %if.end45
  %31 = load ptr, ptr %tty.addr, align 8, !dbg !5427
  %ops48 = getelementptr inbounds %struct.tty_struct, ptr %31, i32 0, i32 5, !dbg !5428
  %32 = load ptr, ptr %ops48, align 8, !dbg !5428
  %wait_until_sent49 = getelementptr inbounds %struct.tty_operations, ptr %32, i32 0, i32 24, !dbg !5429
  %33 = load ptr, ptr %wait_until_sent49, align 8, !dbg !5429
  %34 = load ptr, ptr %tty.addr, align 8, !dbg !5430
  %35 = load i64, ptr %timeout.addr, align 8, !dbg !5431
  %conv = trunc i64 %35 to i32, !dbg !5431
  call void %33(ptr noundef %34, i32 noundef %conv) #15, !dbg !5427
  br label %if.end50, !dbg !5427

if.end50:                                         ; preds = %if.then41, %if.then47, %if.end45
  ret void, !dbg !5432

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @might_resched() #3 align 16 !dbg !5102 {
entry:
  %tmp = alloca ptr, align 8
  store ptr @__SCT__might_resched, ptr %tmp, align 8, !dbg !5433
  %0 = load ptr, ptr %tmp, align 8, !dbg !5433
  %call = call i32 %0() #15, !dbg !5435
  ret void, !dbg !5436
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5437 dso_local void @init_wait_entry(ptr noundef, i32 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5440 dso_local i64 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5444 dso_local i64 @schedule_timeout(i64 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5447 dso_local void @finish_wait(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @tty_termios_copy_hw(ptr noundef %new, ptr noundef %old) #0 align 16 !dbg !5450 {
entry:
  %new.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5454, metadata !DIExpression()), !dbg !5456
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !5455, metadata !DIExpression()), !dbg !5457
  %0 = load ptr, ptr %new.addr, align 8, !dbg !5458
  %c_cflag = getelementptr inbounds %struct.ktermios, ptr %0, i32 0, i32 2, !dbg !5459
  %1 = load i32, ptr %c_cflag, align 4, !dbg !5460
  %and = and i32 %1, 3200, !dbg !5460
  store i32 %and, ptr %c_cflag, align 4, !dbg !5460
  %2 = load ptr, ptr %old.addr, align 8, !dbg !5461
  %c_cflag1 = getelementptr inbounds %struct.ktermios, ptr %2, i32 0, i32 2, !dbg !5462
  %3 = load i32, ptr %c_cflag1, align 4, !dbg !5462
  %and2 = and i32 %3, -3201, !dbg !5463
  %4 = load ptr, ptr %new.addr, align 8, !dbg !5464
  %c_cflag3 = getelementptr inbounds %struct.ktermios, ptr %4, i32 0, i32 2, !dbg !5465
  %5 = load i32, ptr %c_cflag3, align 4, !dbg !5466
  %or = or i32 %5, %and2, !dbg !5466
  store i32 %or, ptr %c_cflag3, align 4, !dbg !5466
  %6 = load ptr, ptr %old.addr, align 8, !dbg !5467
  %c_ispeed = getelementptr inbounds %struct.ktermios, ptr %6, i32 0, i32 6, !dbg !5468
  %7 = load i32, ptr %c_ispeed, align 4, !dbg !5468
  %8 = load ptr, ptr %new.addr, align 8, !dbg !5469
  %c_ispeed4 = getelementptr inbounds %struct.ktermios, ptr %8, i32 0, i32 6, !dbg !5470
  store i32 %7, ptr %c_ispeed4, align 4, !dbg !5471
  %9 = load ptr, ptr %old.addr, align 8, !dbg !5472
  %c_ospeed = getelementptr inbounds %struct.ktermios, ptr %9, i32 0, i32 7, !dbg !5473
  %10 = load i32, ptr %c_ospeed, align 4, !dbg !5473
  %11 = load ptr, ptr %new.addr, align 8, !dbg !5474
  %c_ospeed5 = getelementptr inbounds %struct.ktermios, ptr %11, i32 0, i32 7, !dbg !5475
  store i32 %10, ptr %c_ospeed5, align 4, !dbg !5476
  ret void, !dbg !5477
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @tty_termios_hw_change(ptr noundef %a, ptr noundef %b) #0 align 16 !dbg !5478 {
entry:
  %retval = alloca i1, align 1
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !5482, metadata !DIExpression()), !dbg !5484
  store ptr %b, ptr %b.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !5483, metadata !DIExpression()), !dbg !5485
  %0 = load ptr, ptr %a.addr, align 8, !dbg !5486
  %c_ispeed = getelementptr inbounds %struct.ktermios, ptr %0, i32 0, i32 6, !dbg !5488
  %1 = load i32, ptr %c_ispeed, align 4, !dbg !5488
  %2 = load ptr, ptr %b.addr, align 8, !dbg !5489
  %c_ispeed1 = getelementptr inbounds %struct.ktermios, ptr %2, i32 0, i32 6, !dbg !5490
  %3 = load i32, ptr %c_ispeed1, align 4, !dbg !5490
  %cmp = icmp ne i32 %1, %3, !dbg !5491
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5492

lor.lhs.false:                                    ; preds = %entry
  %4 = load ptr, ptr %a.addr, align 8, !dbg !5493
  %c_ospeed = getelementptr inbounds %struct.ktermios, ptr %4, i32 0, i32 7, !dbg !5494
  %5 = load i32, ptr %c_ospeed, align 4, !dbg !5494
  %6 = load ptr, ptr %b.addr, align 8, !dbg !5495
  %c_ospeed2 = getelementptr inbounds %struct.ktermios, ptr %6, i32 0, i32 7, !dbg !5496
  %7 = load i32, ptr %c_ospeed2, align 4, !dbg !5496
  %cmp3 = icmp ne i32 %5, %7, !dbg !5497
  br i1 %cmp3, label %if.then, label %if.end, !dbg !5498

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i1 true, ptr %retval, align 1, !dbg !5499
  br label %return, !dbg !5499

if.end:                                           ; preds = %lor.lhs.false
  %8 = load ptr, ptr %a.addr, align 8, !dbg !5500
  %c_cflag = getelementptr inbounds %struct.ktermios, ptr %8, i32 0, i32 2, !dbg !5502
  %9 = load i32, ptr %c_cflag, align 4, !dbg !5502
  %10 = load ptr, ptr %b.addr, align 8, !dbg !5503
  %c_cflag4 = getelementptr inbounds %struct.ktermios, ptr %10, i32 0, i32 2, !dbg !5504
  %11 = load i32, ptr %c_cflag4, align 4, !dbg !5504
  %xor = xor i32 %9, %11, !dbg !5505
  %and = and i32 %xor, -3201, !dbg !5506
  %tobool = icmp ne i32 %and, 0, !dbg !5506
  br i1 %tobool, label %if.then5, label %if.end6, !dbg !5507

if.then5:                                         ; preds = %if.end
  store i1 true, ptr %retval, align 1, !dbg !5508
  br label %return, !dbg !5508

if.end6:                                          ; preds = %if.end
  store i1 false, ptr %retval, align 1, !dbg !5509
  br label %return, !dbg !5509

return:                                           ; preds = %if.end6, %if.then5, %if.then
  %12 = load i1, ptr %retval, align 1, !dbg !5510
  ret i1 %12, !dbg !5510
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i8 @tty_get_char_size(i32 noundef %cflag) #0 align 16 !dbg !5511 {
entry:
  %retval = alloca i8, align 1
  %cflag.addr = alloca i32, align 4
  store i32 %cflag, ptr %cflag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cflag.addr, metadata !5515, metadata !DIExpression()), !dbg !5516
  %0 = load i32, ptr %cflag.addr, align 4, !dbg !5517
  %and = and i32 %0, 48, !dbg !5518
  switch i32 %and, label %sw.default [
    i32 0, label %sw.bb
    i32 16, label %sw.bb1
    i32 32, label %sw.bb2
    i32 48, label %sw.bb3
  ], !dbg !5519

sw.bb:                                            ; preds = %entry
  store i8 5, ptr %retval, align 1, !dbg !5520
  br label %return, !dbg !5520

sw.bb1:                                           ; preds = %entry
  store i8 6, ptr %retval, align 1, !dbg !5522
  br label %return, !dbg !5522

sw.bb2:                                           ; preds = %entry
  store i8 7, ptr %retval, align 1, !dbg !5523
  br label %return, !dbg !5523

sw.bb3:                                           ; preds = %entry
  br label %sw.default, !dbg !5524

sw.default:                                       ; preds = %entry, %sw.bb3
  store i8 8, ptr %retval, align 1, !dbg !5525
  br label %return, !dbg !5525

return:                                           ; preds = %sw.default, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load i8, ptr %retval, align 1, !dbg !5526
  ret i8 %1, !dbg !5526
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i8 @tty_get_frame_size(i32 noundef %cflag) #0 align 16 !dbg !5527 {
entry:
  %cflag.addr = alloca i32, align 4
  %bits = alloca i8, align 1
  store i32 %cflag, ptr %cflag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cflag.addr, metadata !5529, metadata !DIExpression()), !dbg !5531
  call void @llvm.lifetime.start.p0(i64 1, ptr %bits) #16, !dbg !5532
  call void @llvm.dbg.declare(metadata ptr %bits, metadata !5530, metadata !DIExpression()), !dbg !5533
  %0 = load i32, ptr %cflag.addr, align 4, !dbg !5534
  %call = call zeroext i8 @tty_get_char_size(i32 noundef %0) #15, !dbg !5535
  %conv = zext i8 %call to i32, !dbg !5535
  %add = add i32 2, %conv, !dbg !5536
  %conv1 = trunc i32 %add to i8, !dbg !5537
  store i8 %conv1, ptr %bits, align 1, !dbg !5533
  %1 = load i32, ptr %cflag.addr, align 4, !dbg !5538
  %and = and i32 %1, 64, !dbg !5540
  %tobool = icmp ne i32 %and, 0, !dbg !5540
  br i1 %tobool, label %if.then, label %if.end, !dbg !5541

if.then:                                          ; preds = %entry
  %2 = load i8, ptr %bits, align 1, !dbg !5542
  %inc = add i8 %2, 1, !dbg !5542
  store i8 %inc, ptr %bits, align 1, !dbg !5542
  br label %if.end, !dbg !5543

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, ptr %cflag.addr, align 4, !dbg !5544
  %and2 = and i32 %3, 256, !dbg !5546
  %tobool3 = icmp ne i32 %and2, 0, !dbg !5546
  br i1 %tobool3, label %if.then4, label %if.end6, !dbg !5547

if.then4:                                         ; preds = %if.end
  %4 = load i8, ptr %bits, align 1, !dbg !5548
  %inc5 = add i8 %4, 1, !dbg !5548
  store i8 %inc5, ptr %bits, align 1, !dbg !5548
  br label %if.end6, !dbg !5549

if.end6:                                          ; preds = %if.then4, %if.end
  %5 = load i32, ptr %cflag.addr, align 4, !dbg !5550
  %and7 = and i32 %5, 536870912, !dbg !5552
  %tobool8 = icmp ne i32 %and7, 0, !dbg !5552
  br i1 %tobool8, label %if.then9, label %if.end11, !dbg !5553

if.then9:                                         ; preds = %if.end6
  %6 = load i8, ptr %bits, align 1, !dbg !5554
  %inc10 = add i8 %6, 1, !dbg !5554
  store i8 %inc10, ptr %bits, align 1, !dbg !5554
  br label %if.end11, !dbg !5555

if.end11:                                         ; preds = %if.then9, %if.end6
  %7 = load i8, ptr %bits, align 1, !dbg !5556
  call void @llvm.lifetime.end.p0(i64 1, ptr %bits) #16, !dbg !5557
  ret i8 %7, !dbg !5558
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @tty_set_termios(ptr noundef %tty, ptr noundef %new_termios) #0 align 16 !dbg !5559 {
entry:
  %tty.addr = alloca ptr, align 8
  %new_termios.addr = alloca ptr, align 8
  %old_termios = alloca %struct.ktermios, align 4
  %ld = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !5563, metadata !DIExpression()), !dbg !5572
  store ptr %new_termios, ptr %new_termios.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new_termios.addr, metadata !5564, metadata !DIExpression()), !dbg !5573
  call void @llvm.lifetime.start.p0(i64 44, ptr %old_termios) #16, !dbg !5574
  call void @llvm.dbg.declare(metadata ptr %old_termios, metadata !5565, metadata !DIExpression()), !dbg !5575
  call void @llvm.lifetime.start.p0(i64 8, ptr %ld) #16, !dbg !5576
  call void @llvm.dbg.declare(metadata ptr %ld, metadata !5566, metadata !DIExpression()), !dbg !5577
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !5578
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5567, metadata !DIExpression()), !dbg !5578
  %0 = load ptr, ptr %tty.addr, align 8, !dbg !5578
  %driver = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 3, !dbg !5578
  %1 = load ptr, ptr %driver, align 8, !dbg !5578
  %type = getelementptr inbounds %struct.tty_driver, ptr %1, i32 0, i32 9, !dbg !5578
  %2 = load i16, ptr %type, align 8, !dbg !5578
  %conv = sext i16 %2 to i32, !dbg !5578
  %cmp = icmp eq i32 %conv, 4, !dbg !5578
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !5578

land.rhs:                                         ; preds = %entry
  %3 = load ptr, ptr %tty.addr, align 8, !dbg !5578
  %driver2 = getelementptr inbounds %struct.tty_struct, ptr %3, i32 0, i32 3, !dbg !5578
  %4 = load ptr, ptr %driver2, align 8, !dbg !5578
  %subtype = getelementptr inbounds %struct.tty_driver, ptr %4, i32 0, i32 10, !dbg !5578
  %5 = load i16, ptr %subtype, align 2, !dbg !5578
  %conv3 = sext i16 %5 to i32, !dbg !5578
  %cmp4 = icmp eq i32 %conv3, 1, !dbg !5578
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %6 = phi i1 [ false, %entry ], [ %cmp4, %land.rhs ], !dbg !5579
  %lnot = xor i1 %6, true, !dbg !5578
  %lnot6 = xor i1 %lnot, true, !dbg !5578
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !5578
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5578
  %7 = load i32, ptr %__ret_warn_on, align 4, !dbg !5580
  %tobool = icmp ne i32 %7, 0, !dbg !5580
  %lnot7 = xor i1 %tobool, true, !dbg !5580
  %lnot9 = xor i1 %lnot7, true, !dbg !5580
  %lnot.ext10 = zext i1 %lnot9 to i32, !dbg !5580
  %conv11 = sext i32 %lnot.ext10 to i64, !dbg !5580
  %expval = call i64 @llvm.expect.i64(i64 %conv11, i64 0), !dbg !5580
  %tobool12 = icmp ne i64 %expval, 0, !dbg !5580
  br i1 %tobool12, label %if.then, label %if.end, !dbg !5578

if.then:                                          ; preds = %land.end
  br label %do.body, !dbg !5580

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #16, !dbg !5581
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5569, metadata !DIExpression()), !dbg !5581
  store i32 2305, ptr %__flags, align 4, !dbg !5581
  br label %do.body13, !dbg !5581

do.body13:                                        ; preds = %do.body
  br label %do.cond, !dbg !5582

do.cond:                                          ; preds = %do.body13
  br label %do.end, !dbg !5582

do.end:                                           ; preds = %do.cond
  br label %do.body14, !dbg !5581

do.body14:                                        ; preds = %do.end
  %8 = load i32, ptr %__flags, align 4, !dbg !5584
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 338, i32 %8, i64 12) #16, !dbg !5584, !srcloc !5586
  br label %do.cond15, !dbg !5584

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !5584

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !5581

do.body17:                                        ; preds = %do.end16
  br label %do.cond18, !dbg !5587

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !5587

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #16, !dbg !5580
  br label %do.cond20, !dbg !5581

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !5581

do.end21:                                         ; preds = %do.cond20
  br label %if.end, !dbg !5581

if.end:                                           ; preds = %do.end21, %land.end
  %9 = load i32, ptr %__ret_warn_on, align 4, !dbg !5578
  %tobool22 = icmp ne i32 %9, 0, !dbg !5578
  %lnot23 = xor i1 %tobool22, true, !dbg !5578
  %lnot25 = xor i1 %lnot23, true, !dbg !5578
  %lnot.ext26 = zext i1 %lnot25 to i32, !dbg !5578
  %conv27 = sext i32 %lnot.ext26 to i64, !dbg !5578
  %expval28 = call i64 @llvm.expect.i64(i64 %conv27, i64 0), !dbg !5578
  store i64 %expval28, ptr %tmp, align 8, !dbg !5580
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !5589
  %10 = load i64, ptr %tmp, align 8, !dbg !5578
  %11 = load ptr, ptr %tty.addr, align 8, !dbg !5590
  %termios_rwsem = getelementptr inbounds %struct.tty_struct, ptr %11, i32 0, i32 11, !dbg !5591
  call void @down_write(ptr noundef %termios_rwsem) #15, !dbg !5592
  %12 = load ptr, ptr %tty.addr, align 8, !dbg !5593
  %termios = getelementptr inbounds %struct.tty_struct, ptr %12, i32 0, i32 13, !dbg !5594
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %old_termios, ptr align 8 %termios, i64 44, i1 false), !dbg !5594
  %13 = load ptr, ptr %tty.addr, align 8, !dbg !5595
  %termios29 = getelementptr inbounds %struct.tty_struct, ptr %13, i32 0, i32 13, !dbg !5596
  %14 = load ptr, ptr %new_termios.addr, align 8, !dbg !5597
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %termios29, ptr align 4 %14, i64 44, i1 false), !dbg !5598
  %15 = load ptr, ptr %tty.addr, align 8, !dbg !5599
  call void @unset_locked_termios(ptr noundef %15, ptr noundef %old_termios) #15, !dbg !5600
  %16 = load ptr, ptr %tty.addr, align 8, !dbg !5601
  %termios30 = getelementptr inbounds %struct.tty_struct, ptr %16, i32 0, i32 13, !dbg !5602
  %c_cflag = getelementptr inbounds %struct.ktermios, ptr %termios30, i32 0, i32 2, !dbg !5603
  %17 = load i32, ptr %c_cflag, align 8, !dbg !5603
  %c_cflag31 = getelementptr inbounds %struct.ktermios, ptr %old_termios, i32 0, i32 2, !dbg !5604
  %18 = load i32, ptr %c_cflag31, align 4, !dbg !5604
  %xor = xor i32 %17, %18, !dbg !5605
  %and = and i32 %xor, 536870912, !dbg !5606
  %19 = load ptr, ptr %tty.addr, align 8, !dbg !5607
  %termios32 = getelementptr inbounds %struct.tty_struct, ptr %19, i32 0, i32 13, !dbg !5608
  %c_cflag33 = getelementptr inbounds %struct.ktermios, ptr %termios32, i32 0, i32 2, !dbg !5609
  %20 = load i32, ptr %c_cflag33, align 8, !dbg !5610
  %xor34 = xor i32 %20, %and, !dbg !5610
  store i32 %xor34, ptr %c_cflag33, align 8, !dbg !5610
  %21 = load ptr, ptr %tty.addr, align 8, !dbg !5611
  %ops = getelementptr inbounds %struct.tty_struct, ptr %21, i32 0, i32 5, !dbg !5613
  %22 = load ptr, ptr %ops, align 8, !dbg !5613
  %set_termios = getelementptr inbounds %struct.tty_operations, ptr %22, i32 0, i32 14, !dbg !5614
  %23 = load ptr, ptr %set_termios, align 8, !dbg !5614
  %tobool35 = icmp ne ptr %23, null, !dbg !5611
  br i1 %tobool35, label %if.then36, label %if.else, !dbg !5615

if.then36:                                        ; preds = %if.end
  %24 = load ptr, ptr %tty.addr, align 8, !dbg !5616
  %ops37 = getelementptr inbounds %struct.tty_struct, ptr %24, i32 0, i32 5, !dbg !5617
  %25 = load ptr, ptr %ops37, align 8, !dbg !5617
  %set_termios38 = getelementptr inbounds %struct.tty_operations, ptr %25, i32 0, i32 14, !dbg !5618
  %26 = load ptr, ptr %set_termios38, align 8, !dbg !5618
  %27 = load ptr, ptr %tty.addr, align 8, !dbg !5619
  call void %26(ptr noundef %27, ptr noundef %old_termios) #15, !dbg !5616
  br label %if.end40, !dbg !5616

if.else:                                          ; preds = %if.end
  %28 = load ptr, ptr %tty.addr, align 8, !dbg !5620
  %termios39 = getelementptr inbounds %struct.tty_struct, ptr %28, i32 0, i32 13, !dbg !5621
  call void @tty_termios_copy_hw(ptr noundef %termios39, ptr noundef %old_termios) #15, !dbg !5622
  br label %if.end40

if.end40:                                         ; preds = %if.else, %if.then36
  %29 = load ptr, ptr %tty.addr, align 8, !dbg !5623
  %call = call ptr @tty_ldisc_ref(ptr noundef %29) #15, !dbg !5624
  store ptr %call, ptr %ld, align 8, !dbg !5625
  %30 = load ptr, ptr %ld, align 8, !dbg !5626
  %cmp41 = icmp ne ptr %30, null, !dbg !5628
  br i1 %cmp41, label %if.then43, label %if.end51, !dbg !5629

if.then43:                                        ; preds = %if.end40
  %31 = load ptr, ptr %ld, align 8, !dbg !5630
  %ops44 = getelementptr inbounds %struct.tty_ldisc, ptr %31, i32 0, i32 0, !dbg !5633
  %32 = load ptr, ptr %ops44, align 8, !dbg !5633
  %set_termios45 = getelementptr inbounds %struct.tty_ldisc_ops, ptr %32, i32 0, i32 9, !dbg !5634
  %33 = load ptr, ptr %set_termios45, align 8, !dbg !5634
  %tobool46 = icmp ne ptr %33, null, !dbg !5630
  br i1 %tobool46, label %if.then47, label %if.end50, !dbg !5635

if.then47:                                        ; preds = %if.then43
  %34 = load ptr, ptr %ld, align 8, !dbg !5636
  %ops48 = getelementptr inbounds %struct.tty_ldisc, ptr %34, i32 0, i32 0, !dbg !5637
  %35 = load ptr, ptr %ops48, align 8, !dbg !5637
  %set_termios49 = getelementptr inbounds %struct.tty_ldisc_ops, ptr %35, i32 0, i32 9, !dbg !5638
  %36 = load ptr, ptr %set_termios49, align 8, !dbg !5638
  %37 = load ptr, ptr %tty.addr, align 8, !dbg !5639
  call void %36(ptr noundef %37, ptr noundef %old_termios) #15, !dbg !5636
  br label %if.end50, !dbg !5636

if.end50:                                         ; preds = %if.then47, %if.then43
  %38 = load ptr, ptr %ld, align 8, !dbg !5640
  call void @tty_ldisc_deref(ptr noundef %38) #15, !dbg !5641
  br label %if.end51, !dbg !5642

if.end51:                                         ; preds = %if.end50, %if.end40
  %39 = load ptr, ptr %tty.addr, align 8, !dbg !5643
  %termios_rwsem52 = getelementptr inbounds %struct.tty_struct, ptr %39, i32 0, i32 11, !dbg !5644
  call void @up_write(ptr noundef %termios_rwsem52) #15, !dbg !5645
  call void @llvm.lifetime.end.p0(i64 8, ptr %ld) #16, !dbg !5646
  call void @llvm.lifetime.end.p0(i64 44, ptr %old_termios) #16, !dbg !5646
  ret i32 0, !dbg !5647
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @unset_locked_termios(ptr noundef %tty, ptr noundef %old) #0 align 16 !dbg !5648 {
entry:
  %tty.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %termios = alloca ptr, align 8
  %locked = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !5650, metadata !DIExpression()), !dbg !5655
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !5651, metadata !DIExpression()), !dbg !5656
  call void @llvm.lifetime.start.p0(i64 8, ptr %termios) #16, !dbg !5657
  call void @llvm.dbg.declare(metadata ptr %termios, metadata !5652, metadata !DIExpression()), !dbg !5658
  %0 = load ptr, ptr %tty.addr, align 8, !dbg !5659
  %termios1 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 13, !dbg !5660
  store ptr %termios1, ptr %termios, align 8, !dbg !5658
  call void @llvm.lifetime.start.p0(i64 8, ptr %locked) #16, !dbg !5661
  call void @llvm.dbg.declare(metadata ptr %locked, metadata !5653, metadata !DIExpression()), !dbg !5662
  %1 = load ptr, ptr %tty.addr, align 8, !dbg !5663
  %termios_locked = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 14, !dbg !5664
  store ptr %termios_locked, ptr %locked, align 8, !dbg !5662
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !5665
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5654, metadata !DIExpression()), !dbg !5666
  %2 = load ptr, ptr %termios, align 8, !dbg !5667
  %c_iflag = getelementptr inbounds %struct.ktermios, ptr %2, i32 0, i32 0, !dbg !5667
  %3 = load i32, ptr %c_iflag, align 4, !dbg !5667
  %4 = load ptr, ptr %locked, align 8, !dbg !5667
  %c_iflag2 = getelementptr inbounds %struct.ktermios, ptr %4, i32 0, i32 0, !dbg !5667
  %5 = load i32, ptr %c_iflag2, align 4, !dbg !5667
  %not = xor i32 %5, -1, !dbg !5667
  %and = and i32 %3, %not, !dbg !5667
  %6 = load ptr, ptr %old.addr, align 8, !dbg !5667
  %c_iflag3 = getelementptr inbounds %struct.ktermios, ptr %6, i32 0, i32 0, !dbg !5667
  %7 = load i32, ptr %c_iflag3, align 4, !dbg !5667
  %8 = load ptr, ptr %locked, align 8, !dbg !5667
  %c_iflag4 = getelementptr inbounds %struct.ktermios, ptr %8, i32 0, i32 0, !dbg !5667
  %9 = load i32, ptr %c_iflag4, align 4, !dbg !5667
  %and5 = and i32 %7, %9, !dbg !5667
  %or = or i32 %and, %and5, !dbg !5667
  %10 = load ptr, ptr %termios, align 8, !dbg !5667
  %c_iflag6 = getelementptr inbounds %struct.ktermios, ptr %10, i32 0, i32 0, !dbg !5667
  store i32 %or, ptr %c_iflag6, align 4, !dbg !5667
  %11 = load ptr, ptr %termios, align 8, !dbg !5668
  %c_oflag = getelementptr inbounds %struct.ktermios, ptr %11, i32 0, i32 1, !dbg !5668
  %12 = load i32, ptr %c_oflag, align 4, !dbg !5668
  %13 = load ptr, ptr %locked, align 8, !dbg !5668
  %c_oflag7 = getelementptr inbounds %struct.ktermios, ptr %13, i32 0, i32 1, !dbg !5668
  %14 = load i32, ptr %c_oflag7, align 4, !dbg !5668
  %not8 = xor i32 %14, -1, !dbg !5668
  %and9 = and i32 %12, %not8, !dbg !5668
  %15 = load ptr, ptr %old.addr, align 8, !dbg !5668
  %c_oflag10 = getelementptr inbounds %struct.ktermios, ptr %15, i32 0, i32 1, !dbg !5668
  %16 = load i32, ptr %c_oflag10, align 4, !dbg !5668
  %17 = load ptr, ptr %locked, align 8, !dbg !5668
  %c_oflag11 = getelementptr inbounds %struct.ktermios, ptr %17, i32 0, i32 1, !dbg !5668
  %18 = load i32, ptr %c_oflag11, align 4, !dbg !5668
  %and12 = and i32 %16, %18, !dbg !5668
  %or13 = or i32 %and9, %and12, !dbg !5668
  %19 = load ptr, ptr %termios, align 8, !dbg !5668
  %c_oflag14 = getelementptr inbounds %struct.ktermios, ptr %19, i32 0, i32 1, !dbg !5668
  store i32 %or13, ptr %c_oflag14, align 4, !dbg !5668
  %20 = load ptr, ptr %termios, align 8, !dbg !5669
  %c_cflag = getelementptr inbounds %struct.ktermios, ptr %20, i32 0, i32 2, !dbg !5669
  %21 = load i32, ptr %c_cflag, align 4, !dbg !5669
  %22 = load ptr, ptr %locked, align 8, !dbg !5669
  %c_cflag15 = getelementptr inbounds %struct.ktermios, ptr %22, i32 0, i32 2, !dbg !5669
  %23 = load i32, ptr %c_cflag15, align 4, !dbg !5669
  %not16 = xor i32 %23, -1, !dbg !5669
  %and17 = and i32 %21, %not16, !dbg !5669
  %24 = load ptr, ptr %old.addr, align 8, !dbg !5669
  %c_cflag18 = getelementptr inbounds %struct.ktermios, ptr %24, i32 0, i32 2, !dbg !5669
  %25 = load i32, ptr %c_cflag18, align 4, !dbg !5669
  %26 = load ptr, ptr %locked, align 8, !dbg !5669
  %c_cflag19 = getelementptr inbounds %struct.ktermios, ptr %26, i32 0, i32 2, !dbg !5669
  %27 = load i32, ptr %c_cflag19, align 4, !dbg !5669
  %and20 = and i32 %25, %27, !dbg !5669
  %or21 = or i32 %and17, %and20, !dbg !5669
  %28 = load ptr, ptr %termios, align 8, !dbg !5669
  %c_cflag22 = getelementptr inbounds %struct.ktermios, ptr %28, i32 0, i32 2, !dbg !5669
  store i32 %or21, ptr %c_cflag22, align 4, !dbg !5669
  %29 = load ptr, ptr %termios, align 8, !dbg !5670
  %c_lflag = getelementptr inbounds %struct.ktermios, ptr %29, i32 0, i32 3, !dbg !5670
  %30 = load i32, ptr %c_lflag, align 4, !dbg !5670
  %31 = load ptr, ptr %locked, align 8, !dbg !5670
  %c_lflag23 = getelementptr inbounds %struct.ktermios, ptr %31, i32 0, i32 3, !dbg !5670
  %32 = load i32, ptr %c_lflag23, align 4, !dbg !5670
  %not24 = xor i32 %32, -1, !dbg !5670
  %and25 = and i32 %30, %not24, !dbg !5670
  %33 = load ptr, ptr %old.addr, align 8, !dbg !5670
  %c_lflag26 = getelementptr inbounds %struct.ktermios, ptr %33, i32 0, i32 3, !dbg !5670
  %34 = load i32, ptr %c_lflag26, align 4, !dbg !5670
  %35 = load ptr, ptr %locked, align 8, !dbg !5670
  %c_lflag27 = getelementptr inbounds %struct.ktermios, ptr %35, i32 0, i32 3, !dbg !5670
  %36 = load i32, ptr %c_lflag27, align 4, !dbg !5670
  %and28 = and i32 %34, %36, !dbg !5670
  %or29 = or i32 %and25, %and28, !dbg !5670
  %37 = load ptr, ptr %termios, align 8, !dbg !5670
  %c_lflag30 = getelementptr inbounds %struct.ktermios, ptr %37, i32 0, i32 3, !dbg !5670
  store i32 %or29, ptr %c_lflag30, align 4, !dbg !5670
  %38 = load ptr, ptr %locked, align 8, !dbg !5671
  %c_line = getelementptr inbounds %struct.ktermios, ptr %38, i32 0, i32 4, !dbg !5672
  %39 = load i8, ptr %c_line, align 4, !dbg !5672
  %conv = zext i8 %39 to i32, !dbg !5671
  %tobool = icmp ne i32 %conv, 0, !dbg !5671
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !5671

cond.true:                                        ; preds = %entry
  %40 = load ptr, ptr %old.addr, align 8, !dbg !5673
  %c_line31 = getelementptr inbounds %struct.ktermios, ptr %40, i32 0, i32 4, !dbg !5674
  %41 = load i8, ptr %c_line31, align 4, !dbg !5674
  %conv32 = zext i8 %41 to i32, !dbg !5673
  br label %cond.end, !dbg !5671

cond.false:                                       ; preds = %entry
  %42 = load ptr, ptr %termios, align 8, !dbg !5675
  %c_line33 = getelementptr inbounds %struct.ktermios, ptr %42, i32 0, i32 4, !dbg !5676
  %43 = load i8, ptr %c_line33, align 4, !dbg !5676
  %conv34 = zext i8 %43 to i32, !dbg !5675
  br label %cond.end, !dbg !5671

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv32, %cond.true ], [ %conv34, %cond.false ], !dbg !5671
  %conv35 = trunc i32 %cond to i8, !dbg !5671
  %44 = load ptr, ptr %termios, align 8, !dbg !5677
  %c_line36 = getelementptr inbounds %struct.ktermios, ptr %44, i32 0, i32 4, !dbg !5678
  store i8 %conv35, ptr %c_line36, align 4, !dbg !5679
  store i32 0, ptr %i, align 4, !dbg !5680
  br label %for.cond, !dbg !5682

for.cond:                                         ; preds = %for.inc, %cond.end
  %45 = load i32, ptr %i, align 4, !dbg !5683
  %cmp = icmp slt i32 %45, 19, !dbg !5685
  br i1 %cmp, label %for.body, label %for.end, !dbg !5686

for.body:                                         ; preds = %for.cond
  %46 = load ptr, ptr %locked, align 8, !dbg !5687
  %c_cc = getelementptr inbounds %struct.ktermios, ptr %46, i32 0, i32 5, !dbg !5688
  %47 = load i32, ptr %i, align 4, !dbg !5689
  %idxprom = sext i32 %47 to i64, !dbg !5687
  %arrayidx = getelementptr [19 x i8], ptr %c_cc, i64 0, i64 %idxprom, !dbg !5687
  %48 = load i8, ptr %arrayidx, align 1, !dbg !5687
  %conv38 = zext i8 %48 to i32, !dbg !5687
  %tobool39 = icmp ne i32 %conv38, 0, !dbg !5687
  br i1 %tobool39, label %cond.true40, label %cond.false45, !dbg !5687

cond.true40:                                      ; preds = %for.body
  %49 = load ptr, ptr %old.addr, align 8, !dbg !5690
  %c_cc41 = getelementptr inbounds %struct.ktermios, ptr %49, i32 0, i32 5, !dbg !5691
  %50 = load i32, ptr %i, align 4, !dbg !5692
  %idxprom42 = sext i32 %50 to i64, !dbg !5690
  %arrayidx43 = getelementptr [19 x i8], ptr %c_cc41, i64 0, i64 %idxprom42, !dbg !5690
  %51 = load i8, ptr %arrayidx43, align 1, !dbg !5690
  %conv44 = zext i8 %51 to i32, !dbg !5690
  br label %cond.end50, !dbg !5687

cond.false45:                                     ; preds = %for.body
  %52 = load ptr, ptr %termios, align 8, !dbg !5693
  %c_cc46 = getelementptr inbounds %struct.ktermios, ptr %52, i32 0, i32 5, !dbg !5694
  %53 = load i32, ptr %i, align 4, !dbg !5695
  %idxprom47 = sext i32 %53 to i64, !dbg !5693
  %arrayidx48 = getelementptr [19 x i8], ptr %c_cc46, i64 0, i64 %idxprom47, !dbg !5693
  %54 = load i8, ptr %arrayidx48, align 1, !dbg !5693
  %conv49 = zext i8 %54 to i32, !dbg !5693
  br label %cond.end50, !dbg !5687

cond.end50:                                       ; preds = %cond.false45, %cond.true40
  %cond51 = phi i32 [ %conv44, %cond.true40 ], [ %conv49, %cond.false45 ], !dbg !5687
  %conv52 = trunc i32 %cond51 to i8, !dbg !5687
  %55 = load ptr, ptr %termios, align 8, !dbg !5696
  %c_cc53 = getelementptr inbounds %struct.ktermios, ptr %55, i32 0, i32 5, !dbg !5697
  %56 = load i32, ptr %i, align 4, !dbg !5698
  %idxprom54 = sext i32 %56 to i64, !dbg !5696
  %arrayidx55 = getelementptr [19 x i8], ptr %c_cc53, i64 0, i64 %idxprom54, !dbg !5696
  store i8 %conv52, ptr %arrayidx55, align 1, !dbg !5699
  br label %for.inc, !dbg !5696

for.inc:                                          ; preds = %cond.end50
  %57 = load i32, ptr %i, align 4, !dbg !5700
  %inc = add i32 %57, 1, !dbg !5700
  store i32 %inc, ptr %i, align 4, !dbg !5700
  br label %for.cond, !dbg !5701, !llvm.loop !5702

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !5705
  call void @llvm.lifetime.end.p0(i64 8, ptr %locked) #16, !dbg !5705
  call void @llvm.lifetime.end.p0(i64 8, ptr %termios) #16, !dbg !5705
  ret void, !dbg !5705
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5706 dso_local ptr @tty_ldisc_ref(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5709 dso_local void @tty_ldisc_deref(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i32 @user_termio_to_kernel_termios(ptr noundef %termios, ptr noundef %termio) #0 align 16 !dbg !5712 {
entry:
  %retval = alloca i32, align 4
  %termios.addr = alloca ptr, align 8
  %termio.addr = alloca ptr, align 8
  %v = alloca %struct.termio, align 2
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %termios, ptr %termios.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %termios.addr, metadata !5716, metadata !DIExpression()), !dbg !5719
  store ptr %termio, ptr %termio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %termio.addr, metadata !5717, metadata !DIExpression()), !dbg !5720
  call void @llvm.lifetime.start.p0(i64 18, ptr %v) #16, !dbg !5721
  call void @llvm.dbg.declare(metadata ptr %v, metadata !5718, metadata !DIExpression()), !dbg !5722
  %0 = load ptr, ptr %termio.addr, align 8, !dbg !5723
  %call = call i64 @copy_from_user(ptr noundef %v, ptr noundef %0, i64 noundef 18) #15, !dbg !5725
  %tobool = icmp ne i64 %call, 0, !dbg !5725
  br i1 %tobool, label %if.then, label %if.end, !dbg !5726

if.then:                                          ; preds = %entry
  store i32 -14, ptr %retval, align 4, !dbg !5727
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5727

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %termios.addr, align 8, !dbg !5728
  %c_iflag = getelementptr inbounds %struct.ktermios, ptr %1, i32 0, i32 0, !dbg !5729
  %2 = load i32, ptr %c_iflag, align 4, !dbg !5729
  %and = and i32 -65536, %2, !dbg !5730
  %c_iflag1 = getelementptr inbounds %struct.termio, ptr %v, i32 0, i32 0, !dbg !5731
  %3 = load i16, ptr %c_iflag1, align 2, !dbg !5731
  %conv = zext i16 %3 to i32, !dbg !5732
  %or = or i32 %and, %conv, !dbg !5733
  %4 = load ptr, ptr %termios.addr, align 8, !dbg !5734
  %c_iflag2 = getelementptr inbounds %struct.ktermios, ptr %4, i32 0, i32 0, !dbg !5735
  store i32 %or, ptr %c_iflag2, align 4, !dbg !5736
  %5 = load ptr, ptr %termios.addr, align 8, !dbg !5737
  %c_oflag = getelementptr inbounds %struct.ktermios, ptr %5, i32 0, i32 1, !dbg !5738
  %6 = load i32, ptr %c_oflag, align 4, !dbg !5738
  %and3 = and i32 -65536, %6, !dbg !5739
  %c_oflag4 = getelementptr inbounds %struct.termio, ptr %v, i32 0, i32 1, !dbg !5740
  %7 = load i16, ptr %c_oflag4, align 2, !dbg !5740
  %conv5 = zext i16 %7 to i32, !dbg !5741
  %or6 = or i32 %and3, %conv5, !dbg !5742
  %8 = load ptr, ptr %termios.addr, align 8, !dbg !5743
  %c_oflag7 = getelementptr inbounds %struct.ktermios, ptr %8, i32 0, i32 1, !dbg !5744
  store i32 %or6, ptr %c_oflag7, align 4, !dbg !5745
  %9 = load ptr, ptr %termios.addr, align 8, !dbg !5746
  %c_cflag = getelementptr inbounds %struct.ktermios, ptr %9, i32 0, i32 2, !dbg !5747
  %10 = load i32, ptr %c_cflag, align 4, !dbg !5747
  %and8 = and i32 -65536, %10, !dbg !5748
  %c_cflag9 = getelementptr inbounds %struct.termio, ptr %v, i32 0, i32 2, !dbg !5749
  %11 = load i16, ptr %c_cflag9, align 2, !dbg !5749
  %conv10 = zext i16 %11 to i32, !dbg !5750
  %or11 = or i32 %and8, %conv10, !dbg !5751
  %12 = load ptr, ptr %termios.addr, align 8, !dbg !5752
  %c_cflag12 = getelementptr inbounds %struct.ktermios, ptr %12, i32 0, i32 2, !dbg !5753
  store i32 %or11, ptr %c_cflag12, align 4, !dbg !5754
  %13 = load ptr, ptr %termios.addr, align 8, !dbg !5755
  %c_lflag = getelementptr inbounds %struct.ktermios, ptr %13, i32 0, i32 3, !dbg !5756
  %14 = load i32, ptr %c_lflag, align 4, !dbg !5756
  %and13 = and i32 -65536, %14, !dbg !5757
  %c_lflag14 = getelementptr inbounds %struct.termio, ptr %v, i32 0, i32 3, !dbg !5758
  %15 = load i16, ptr %c_lflag14, align 2, !dbg !5758
  %conv15 = zext i16 %15 to i32, !dbg !5759
  %or16 = or i32 %and13, %conv15, !dbg !5760
  %16 = load ptr, ptr %termios.addr, align 8, !dbg !5761
  %c_lflag17 = getelementptr inbounds %struct.ktermios, ptr %16, i32 0, i32 3, !dbg !5762
  store i32 %or16, ptr %c_lflag17, align 4, !dbg !5763
  %17 = load ptr, ptr %termios.addr, align 8, !dbg !5764
  %c_lflag18 = getelementptr inbounds %struct.ktermios, ptr %17, i32 0, i32 3, !dbg !5765
  %18 = load i32, ptr %c_lflag18, align 4, !dbg !5765
  %and19 = and i32 -65536, %18, !dbg !5766
  %c_line = getelementptr inbounds %struct.termio, ptr %v, i32 0, i32 4, !dbg !5767
  %19 = load i8, ptr %c_line, align 2, !dbg !5767
  %conv20 = zext i8 %19 to i32, !dbg !5768
  %or21 = or i32 %and19, %conv20, !dbg !5769
  %conv22 = trunc i32 %or21 to i8, !dbg !5770
  %20 = load ptr, ptr %termios.addr, align 8, !dbg !5771
  %c_line23 = getelementptr inbounds %struct.ktermios, ptr %20, i32 0, i32 4, !dbg !5772
  store i8 %conv22, ptr %c_line23, align 4, !dbg !5773
  %21 = load ptr, ptr %termios.addr, align 8, !dbg !5774
  %c_cc = getelementptr inbounds %struct.ktermios, ptr %21, i32 0, i32 5, !dbg !5775
  %arraydecay = getelementptr inbounds [19 x i8], ptr %c_cc, i64 0, i64 0, !dbg !5776
  %c_cc24 = getelementptr inbounds %struct.termio, ptr %v, i32 0, i32 5, !dbg !5777
  %arraydecay25 = getelementptr inbounds [8 x i8], ptr %c_cc24, i64 0, i64 0, !dbg !5776
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arraydecay, ptr align 1 %arraydecay25, i64 8, i1 false), !dbg !5776
  store i32 0, ptr %retval, align 4, !dbg !5778
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5778

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 18, ptr %v) #16, !dbg !5779
  %22 = load i32, ptr %retval, align 4, !dbg !5779
  ret i32 %22, !dbg !5779
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_from_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #3 align 16 !dbg !5780 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !5785, metadata !DIExpression()), !dbg !5788
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !5786, metadata !DIExpression()), !dbg !5789
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5787, metadata !DIExpression()), !dbg !5790
  %0 = load ptr, ptr %to.addr, align 8, !dbg !5791
  %1 = load i64, ptr %n.addr, align 8, !dbg !5793
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext false) #15, !dbg !5794
  br i1 %call, label %if.then, label %if.end, !dbg !5795

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %to.addr, align 8, !dbg !5796
  %3 = load ptr, ptr %from.addr, align 8, !dbg !5797
  %4 = load i64, ptr %n.addr, align 8, !dbg !5798
  %call1 = call i64 @_copy_from_user(ptr noundef %2, ptr noundef %3, i64 noundef %4) #15, !dbg !5799
  store i64 %call1, ptr %n.addr, align 8, !dbg !5800
  br label %if.end, !dbg !5801

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !5802
  ret i64 %5, !dbg !5803
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i32 @kernel_termios_to_user_termio(ptr noundef %termio, ptr noundef %termios) #0 align 16 !dbg !5804 {
entry:
  %termio.addr = alloca ptr, align 8
  %termios.addr = alloca ptr, align 8
  %v = alloca %struct.termio, align 2
  store ptr %termio, ptr %termio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %termio.addr, metadata !5808, metadata !DIExpression()), !dbg !5811
  store ptr %termios, ptr %termios.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %termios.addr, metadata !5809, metadata !DIExpression()), !dbg !5812
  call void @llvm.lifetime.start.p0(i64 18, ptr %v) #16, !dbg !5813
  call void @llvm.dbg.declare(metadata ptr %v, metadata !5810, metadata !DIExpression()), !dbg !5814
  call void @llvm.memset.p0.i64(ptr align 2 %v, i8 0, i64 18, i1 false), !dbg !5815
  %0 = load ptr, ptr %termios.addr, align 8, !dbg !5816
  %c_iflag = getelementptr inbounds %struct.ktermios, ptr %0, i32 0, i32 0, !dbg !5817
  %1 = load i32, ptr %c_iflag, align 4, !dbg !5817
  %conv = trunc i32 %1 to i16, !dbg !5816
  %c_iflag1 = getelementptr inbounds %struct.termio, ptr %v, i32 0, i32 0, !dbg !5818
  store i16 %conv, ptr %c_iflag1, align 2, !dbg !5819
  %2 = load ptr, ptr %termios.addr, align 8, !dbg !5820
  %c_oflag = getelementptr inbounds %struct.ktermios, ptr %2, i32 0, i32 1, !dbg !5821
  %3 = load i32, ptr %c_oflag, align 4, !dbg !5821
  %conv2 = trunc i32 %3 to i16, !dbg !5820
  %c_oflag3 = getelementptr inbounds %struct.termio, ptr %v, i32 0, i32 1, !dbg !5822
  store i16 %conv2, ptr %c_oflag3, align 2, !dbg !5823
  %4 = load ptr, ptr %termios.addr, align 8, !dbg !5824
  %c_cflag = getelementptr inbounds %struct.ktermios, ptr %4, i32 0, i32 2, !dbg !5825
  %5 = load i32, ptr %c_cflag, align 4, !dbg !5825
  %conv4 = trunc i32 %5 to i16, !dbg !5824
  %c_cflag5 = getelementptr inbounds %struct.termio, ptr %v, i32 0, i32 2, !dbg !5826
  store i16 %conv4, ptr %c_cflag5, align 2, !dbg !5827
  %6 = load ptr, ptr %termios.addr, align 8, !dbg !5828
  %c_lflag = getelementptr inbounds %struct.ktermios, ptr %6, i32 0, i32 3, !dbg !5829
  %7 = load i32, ptr %c_lflag, align 4, !dbg !5829
  %conv6 = trunc i32 %7 to i16, !dbg !5828
  %c_lflag7 = getelementptr inbounds %struct.termio, ptr %v, i32 0, i32 3, !dbg !5830
  store i16 %conv6, ptr %c_lflag7, align 2, !dbg !5831
  %8 = load ptr, ptr %termios.addr, align 8, !dbg !5832
  %c_line = getelementptr inbounds %struct.ktermios, ptr %8, i32 0, i32 4, !dbg !5833
  %9 = load i8, ptr %c_line, align 4, !dbg !5833
  %c_line8 = getelementptr inbounds %struct.termio, ptr %v, i32 0, i32 4, !dbg !5834
  store i8 %9, ptr %c_line8, align 2, !dbg !5835
  %c_cc = getelementptr inbounds %struct.termio, ptr %v, i32 0, i32 5, !dbg !5836
  %arraydecay = getelementptr inbounds [8 x i8], ptr %c_cc, i64 0, i64 0, !dbg !5837
  %10 = load ptr, ptr %termios.addr, align 8, !dbg !5838
  %c_cc9 = getelementptr inbounds %struct.ktermios, ptr %10, i32 0, i32 5, !dbg !5839
  %arraydecay10 = getelementptr inbounds [19 x i8], ptr %c_cc9, i64 0, i64 0, !dbg !5837
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arraydecay, ptr align 1 %arraydecay10, i64 8, i1 false), !dbg !5837
  %11 = load ptr, ptr %termio.addr, align 8, !dbg !5840
  %call = call i64 @copy_to_user(ptr noundef %11, ptr noundef %v, i64 noundef 18) #15, !dbg !5841
  %conv11 = trunc i64 %call to i32, !dbg !5841
  call void @llvm.lifetime.end.p0(i64 18, ptr %v) #16, !dbg !5842
  ret i32 %conv11, !dbg !5843
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_to_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #3 align 16 !dbg !5844 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !5846, metadata !DIExpression()), !dbg !5849
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !5847, metadata !DIExpression()), !dbg !5850
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5848, metadata !DIExpression()), !dbg !5851
  %0 = load ptr, ptr %from.addr, align 8, !dbg !5852
  %1 = load i64, ptr %n.addr, align 8, !dbg !5854
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext true) #15, !dbg !5855
  br i1 %call, label %if.then, label %if.end, !dbg !5856

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %to.addr, align 8, !dbg !5857
  %3 = load ptr, ptr %from.addr, align 8, !dbg !5858
  %4 = load i64, ptr %n.addr, align 8, !dbg !5859
  %call1 = call i64 @_copy_to_user(ptr noundef %2, ptr noundef %3, i64 noundef %4) #15, !dbg !5860
  store i64 %call1, ptr %n.addr, align 8, !dbg !5861
  br label %if.end, !dbg !5862

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !5863
  ret i64 %5, !dbg !5864
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i32 @user_termios_to_kernel_termios(ptr noundef %k, ptr noundef %u) #0 align 16 !dbg !5865 {
entry:
  %k.addr = alloca ptr, align 8
  %u.addr = alloca ptr, align 8
  store ptr %k, ptr %k.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %k.addr, metadata !5869, metadata !DIExpression()), !dbg !5871
  store ptr %u, ptr %u.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %u.addr, metadata !5870, metadata !DIExpression()), !dbg !5872
  %0 = load ptr, ptr %k.addr, align 8, !dbg !5873
  %1 = load ptr, ptr %u.addr, align 8, !dbg !5874
  %call = call i64 @copy_from_user(ptr noundef %0, ptr noundef %1, i64 noundef 44) #15, !dbg !5875
  %conv = trunc i64 %call to i32, !dbg !5875
  ret i32 %conv, !dbg !5876
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i32 @kernel_termios_to_user_termios(ptr noundef %u, ptr noundef %k) #0 align 16 !dbg !5877 {
entry:
  %u.addr = alloca ptr, align 8
  %k.addr = alloca ptr, align 8
  store ptr %u, ptr %u.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %u.addr, metadata !5881, metadata !DIExpression()), !dbg !5883
  store ptr %k, ptr %k.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %k.addr, metadata !5882, metadata !DIExpression()), !dbg !5884
  %0 = load ptr, ptr %u.addr, align 8, !dbg !5885
  %1 = load ptr, ptr %k.addr, align 8, !dbg !5886
  %call = call i64 @copy_to_user(ptr noundef %0, ptr noundef %1, i64 noundef 44) #15, !dbg !5887
  %conv = trunc i64 %call to i32, !dbg !5887
  ret i32 %conv, !dbg !5888
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i32 @user_termios_to_kernel_termios_1(ptr noundef %k, ptr noundef %u) #0 align 16 !dbg !5889 {
entry:
  %k.addr = alloca ptr, align 8
  %u.addr = alloca ptr, align 8
  store ptr %k, ptr %k.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %k.addr, metadata !5893, metadata !DIExpression()), !dbg !5895
  store ptr %u, ptr %u.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %u.addr, metadata !5894, metadata !DIExpression()), !dbg !5896
  %0 = load ptr, ptr %k.addr, align 8, !dbg !5897
  %1 = load ptr, ptr %u.addr, align 8, !dbg !5898
  %call = call i64 @copy_from_user(ptr noundef %0, ptr noundef %1, i64 noundef 36) #15, !dbg !5899
  %conv = trunc i64 %call to i32, !dbg !5899
  ret i32 %conv, !dbg !5900
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i32 @kernel_termios_to_user_termios_1(ptr noundef %u, ptr noundef %k) #0 align 16 !dbg !5901 {
entry:
  %u.addr = alloca ptr, align 8
  %k.addr = alloca ptr, align 8
  store ptr %u, ptr %u.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %u.addr, metadata !5905, metadata !DIExpression()), !dbg !5907
  store ptr %k, ptr %k.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %k.addr, metadata !5906, metadata !DIExpression()), !dbg !5908
  %0 = load ptr, ptr %u.addr, align 8, !dbg !5909
  %1 = load ptr, ptr %k.addr, align 8, !dbg !5910
  %call = call i64 @copy_to_user(ptr noundef %0, ptr noundef %1, i64 noundef 36) #15, !dbg !5911
  %conv = trunc i64 %call to i32, !dbg !5911
  ret i32 %conv, !dbg !5912
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @tty_mode_ioctl(ptr noundef %tty, i32 noundef %cmd, i64 noundef %arg) #0 align 16 !dbg !5913 {
entry:
  %retval = alloca i32, align 4
  %tty.addr = alloca ptr, align 8
  %cmd.addr = alloca i32, align 4
  %arg.addr = alloca i64, align 8
  %real_tty = alloca ptr, align 8
  %p = alloca ptr, align 8
  %ret = alloca i32, align 4
  %kterm = alloca %struct.ktermios, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_pu = alloca i32, align 4
  %__ptr_pu = alloca ptr, align 8
  %__val_pu = alloca i32, align 4
  %__x = alloca i32, align 4
  %__ptr = alloca ptr, align 8
  %tmp51 = alloca i64, align 8
  %tmp55 = alloca i64, align 8
  %__ret_gu = alloca i32, align 4
  %__val_gu = alloca i32, align 4
  %__tmp = alloca i64, align 8
  %tmp60 = alloca i32, align 4
  %tmp63 = alloca i64, align 8
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !5915, metadata !DIExpression()), !dbg !5937
  store i32 %cmd, ptr %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !5916, metadata !DIExpression()), !dbg !5938
  store i64 %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !5917, metadata !DIExpression()), !dbg !5939
  call void @llvm.lifetime.start.p0(i64 8, ptr %real_tty) #16, !dbg !5940
  call void @llvm.dbg.declare(metadata ptr %real_tty, metadata !5918, metadata !DIExpression()), !dbg !5941
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #16, !dbg !5942
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5919, metadata !DIExpression()), !dbg !5943
  %0 = load i64, ptr %arg.addr, align 8, !dbg !5944
  %1 = inttoptr i64 %0 to ptr, !dbg !5945
  store ptr %1, ptr %p, align 8, !dbg !5943
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !5946
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5920, metadata !DIExpression()), !dbg !5947
  store i32 0, ptr %ret, align 4, !dbg !5947
  call void @llvm.lifetime.start.p0(i64 44, ptr %kterm) #16, !dbg !5948
  call void @llvm.dbg.declare(metadata ptr %kterm, metadata !5921, metadata !DIExpression()), !dbg !5949
  %2 = load ptr, ptr %tty.addr, align 8, !dbg !5950
  %driver = getelementptr inbounds %struct.tty_struct, ptr %2, i32 0, i32 3, !dbg !5952
  %3 = load ptr, ptr %driver, align 8, !dbg !5952
  %type = getelementptr inbounds %struct.tty_driver, ptr %3, i32 0, i32 9, !dbg !5953
  %4 = load i16, ptr %type, align 8, !dbg !5953
  %conv = sext i16 %4 to i32, !dbg !5950
  %cmp = icmp eq i32 %conv, 4, !dbg !5954
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !5955

land.lhs.true:                                    ; preds = %entry
  %5 = load ptr, ptr %tty.addr, align 8, !dbg !5956
  %driver2 = getelementptr inbounds %struct.tty_struct, ptr %5, i32 0, i32 3, !dbg !5957
  %6 = load ptr, ptr %driver2, align 8, !dbg !5957
  %subtype = getelementptr inbounds %struct.tty_driver, ptr %6, i32 0, i32 10, !dbg !5958
  %7 = load i16, ptr %subtype, align 2, !dbg !5958
  %conv3 = sext i16 %7 to i32, !dbg !5956
  %cmp4 = icmp eq i32 %conv3, 1, !dbg !5959
  br i1 %cmp4, label %if.then, label %if.else, !dbg !5960

if.then:                                          ; preds = %land.lhs.true
  %8 = load ptr, ptr %tty.addr, align 8, !dbg !5961
  %link = getelementptr inbounds %struct.tty_struct, ptr %8, i32 0, i32 25, !dbg !5962
  %9 = load ptr, ptr %link, align 8, !dbg !5962
  store ptr %9, ptr %real_tty, align 8, !dbg !5963
  br label %if.end, !dbg !5964

if.else:                                          ; preds = %land.lhs.true, %entry
  %10 = load ptr, ptr %tty.addr, align 8, !dbg !5965
  store ptr %10, ptr %real_tty, align 8, !dbg !5966
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load i32, ptr %cmd.addr, align 4, !dbg !5967
  switch i32 %11, label %sw.default [
    i32 21508, label %sw.bb
    i32 21507, label %sw.bb6
    i32 21506, label %sw.bb8
    i32 21505, label %sw.bb10
    i32 -2144578518, label %sw.bb14
    i32 1076646957, label %sw.bb19
    i32 1076646956, label %sw.bb21
    i32 1076646955, label %sw.bb23
    i32 21509, label %sw.bb25
    i32 21512, label %sw.bb27
    i32 21511, label %sw.bb29
    i32 21510, label %sw.bb31
    i32 21590, label %sw.bb33
    i32 21591, label %sw.bb38
    i32 21554, label %sw.bb47
    i32 21555, label %sw.bb47
    i32 21557, label %sw.bb47
    i32 21556, label %sw.bb47
    i32 21529, label %sw.bb48
    i32 21530, label %sw.bb54
  ], !dbg !5968

sw.bb:                                            ; preds = %if.end
  %12 = load ptr, ptr %real_tty, align 8, !dbg !5969
  %13 = load ptr, ptr %p, align 8, !dbg !5970
  %call = call i32 @set_termios(ptr noundef %12, ptr noundef %13, i32 noundef 11) #15, !dbg !5971
  store i32 %call, ptr %retval, align 4, !dbg !5972
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5972

sw.bb6:                                           ; preds = %if.end
  %14 = load ptr, ptr %real_tty, align 8, !dbg !5973
  %15 = load ptr, ptr %p, align 8, !dbg !5974
  %call7 = call i32 @set_termios(ptr noundef %14, ptr noundef %15, i32 noundef 10) #15, !dbg !5975
  store i32 %call7, ptr %retval, align 4, !dbg !5976
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5976

sw.bb8:                                           ; preds = %if.end
  %16 = load ptr, ptr %real_tty, align 8, !dbg !5977
  %17 = load ptr, ptr %p, align 8, !dbg !5978
  %call9 = call i32 @set_termios(ptr noundef %16, ptr noundef %17, i32 noundef 8) #15, !dbg !5979
  store i32 %call9, ptr %retval, align 4, !dbg !5980
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5980

sw.bb10:                                          ; preds = %if.end
  %18 = load ptr, ptr %real_tty, align 8, !dbg !5981
  call void @copy_termios(ptr noundef %18, ptr noundef %kterm) #15, !dbg !5982
  %19 = load i64, ptr %arg.addr, align 8, !dbg !5983
  %20 = inttoptr i64 %19 to ptr, !dbg !5985
  %call11 = call i32 @kernel_termios_to_user_termios_1(ptr noundef %20, ptr noundef %kterm) #15, !dbg !5986
  %tobool = icmp ne i32 %call11, 0, !dbg !5986
  br i1 %tobool, label %if.then12, label %if.end13, !dbg !5987

if.then12:                                        ; preds = %sw.bb10
  store i32 -14, ptr %ret, align 4, !dbg !5988
  br label %if.end13, !dbg !5989

if.end13:                                         ; preds = %if.then12, %sw.bb10
  %21 = load i32, ptr %ret, align 4, !dbg !5990
  store i32 %21, ptr %retval, align 4, !dbg !5991
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5991

sw.bb14:                                          ; preds = %if.end
  %22 = load ptr, ptr %real_tty, align 8, !dbg !5992
  call void @copy_termios(ptr noundef %22, ptr noundef %kterm) #15, !dbg !5993
  %23 = load i64, ptr %arg.addr, align 8, !dbg !5994
  %24 = inttoptr i64 %23 to ptr, !dbg !5996
  %call15 = call i32 @kernel_termios_to_user_termios(ptr noundef %24, ptr noundef %kterm) #15, !dbg !5997
  %tobool16 = icmp ne i32 %call15, 0, !dbg !5997
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !5998

if.then17:                                        ; preds = %sw.bb14
  store i32 -14, ptr %ret, align 4, !dbg !5999
  br label %if.end18, !dbg !6000

if.end18:                                         ; preds = %if.then17, %sw.bb14
  %25 = load i32, ptr %ret, align 4, !dbg !6001
  store i32 %25, ptr %retval, align 4, !dbg !6002
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6002

sw.bb19:                                          ; preds = %if.end
  %26 = load ptr, ptr %real_tty, align 8, !dbg !6003
  %27 = load ptr, ptr %p, align 8, !dbg !6004
  %call20 = call i32 @set_termios(ptr noundef %26, ptr noundef %27, i32 noundef 3) #15, !dbg !6005
  store i32 %call20, ptr %retval, align 4, !dbg !6006
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6006

sw.bb21:                                          ; preds = %if.end
  %28 = load ptr, ptr %real_tty, align 8, !dbg !6007
  %29 = load ptr, ptr %p, align 8, !dbg !6008
  %call22 = call i32 @set_termios(ptr noundef %28, ptr noundef %29, i32 noundef 2) #15, !dbg !6009
  store i32 %call22, ptr %retval, align 4, !dbg !6010
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6010

sw.bb23:                                          ; preds = %if.end
  %30 = load ptr, ptr %real_tty, align 8, !dbg !6011
  %31 = load ptr, ptr %p, align 8, !dbg !6012
  %call24 = call i32 @set_termios(ptr noundef %30, ptr noundef %31, i32 noundef 0) #15, !dbg !6013
  store i32 %call24, ptr %retval, align 4, !dbg !6014
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6014

sw.bb25:                                          ; preds = %if.end
  %32 = load ptr, ptr %real_tty, align 8, !dbg !6015
  %33 = load ptr, ptr %p, align 8, !dbg !6016
  %call26 = call i32 @get_termio(ptr noundef %32, ptr noundef %33) #15, !dbg !6017
  store i32 %call26, ptr %retval, align 4, !dbg !6018
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6018

sw.bb27:                                          ; preds = %if.end
  %34 = load ptr, ptr %real_tty, align 8, !dbg !6019
  %35 = load ptr, ptr %p, align 8, !dbg !6020
  %call28 = call i32 @set_termios(ptr noundef %34, ptr noundef %35, i32 noundef 7) #15, !dbg !6021
  store i32 %call28, ptr %retval, align 4, !dbg !6022
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6022

sw.bb29:                                          ; preds = %if.end
  %36 = load ptr, ptr %real_tty, align 8, !dbg !6023
  %37 = load ptr, ptr %p, align 8, !dbg !6024
  %call30 = call i32 @set_termios(ptr noundef %36, ptr noundef %37, i32 noundef 6) #15, !dbg !6025
  store i32 %call30, ptr %retval, align 4, !dbg !6026
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6026

sw.bb31:                                          ; preds = %if.end
  %38 = load ptr, ptr %real_tty, align 8, !dbg !6027
  %39 = load ptr, ptr %p, align 8, !dbg !6028
  %call32 = call i32 @set_termios(ptr noundef %38, ptr noundef %39, i32 noundef 4) #15, !dbg !6029
  store i32 %call32, ptr %retval, align 4, !dbg !6030
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6030

sw.bb33:                                          ; preds = %if.end
  %40 = load ptr, ptr %real_tty, align 8, !dbg !6031
  call void @copy_termios_locked(ptr noundef %40, ptr noundef %kterm) #15, !dbg !6032
  %41 = load i64, ptr %arg.addr, align 8, !dbg !6033
  %42 = inttoptr i64 %41 to ptr, !dbg !6035
  %call34 = call i32 @kernel_termios_to_user_termios_1(ptr noundef %42, ptr noundef %kterm) #15, !dbg !6036
  %tobool35 = icmp ne i32 %call34, 0, !dbg !6036
  br i1 %tobool35, label %if.then36, label %if.end37, !dbg !6037

if.then36:                                        ; preds = %sw.bb33
  store i32 -14, ptr %ret, align 4, !dbg !6038
  br label %if.end37, !dbg !6039

if.end37:                                         ; preds = %if.then36, %sw.bb33
  %43 = load i32, ptr %ret, align 4, !dbg !6040
  store i32 %43, ptr %retval, align 4, !dbg !6041
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6041

sw.bb38:                                          ; preds = %if.end
  %call39 = call zeroext i1 @checkpoint_restore_ns_capable(ptr noundef @init_user_ns) #15, !dbg !6042
  br i1 %call39, label %if.end41, label %if.then40, !dbg !6044

if.then40:                                        ; preds = %sw.bb38
  store i32 -1, ptr %retval, align 4, !dbg !6045
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6045

if.end41:                                         ; preds = %sw.bb38
  %44 = load ptr, ptr %real_tty, align 8, !dbg !6046
  call void @copy_termios_locked(ptr noundef %44, ptr noundef %kterm) #15, !dbg !6047
  %45 = load i64, ptr %arg.addr, align 8, !dbg !6048
  %46 = inttoptr i64 %45 to ptr, !dbg !6050
  %call42 = call i32 @user_termios_to_kernel_termios_1(ptr noundef %kterm, ptr noundef %46) #15, !dbg !6051
  %tobool43 = icmp ne i32 %call42, 0, !dbg !6051
  br i1 %tobool43, label %if.then44, label %if.end45, !dbg !6052

if.then44:                                        ; preds = %if.end41
  store i32 -14, ptr %retval, align 4, !dbg !6053
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6053

if.end45:                                         ; preds = %if.end41
  %47 = load ptr, ptr %real_tty, align 8, !dbg !6054
  %termios_rwsem = getelementptr inbounds %struct.tty_struct, ptr %47, i32 0, i32 11, !dbg !6055
  call void @down_write(ptr noundef %termios_rwsem) #15, !dbg !6056
  %48 = load ptr, ptr %real_tty, align 8, !dbg !6057
  %termios_locked = getelementptr inbounds %struct.tty_struct, ptr %48, i32 0, i32 14, !dbg !6058
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %termios_locked, ptr align 4 %kterm, i64 44, i1 false), !dbg !6059
  %49 = load ptr, ptr %real_tty, align 8, !dbg !6060
  %termios_rwsem46 = getelementptr inbounds %struct.tty_struct, ptr %49, i32 0, i32 11, !dbg !6061
  call void @up_write(ptr noundef %termios_rwsem46) #15, !dbg !6062
  %50 = load i32, ptr %ret, align 4, !dbg !6063
  store i32 %50, ptr %retval, align 4, !dbg !6064
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6064

sw.bb47:                                          ; preds = %if.end, %if.end, %if.end, %if.end
  store i32 -25, ptr %retval, align 4, !dbg !6065
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6065

sw.bb48:                                          ; preds = %if.end
  %51 = load ptr, ptr %real_tty, align 8, !dbg !6066
  call void @copy_termios(ptr noundef %51, ptr noundef %kterm) #15, !dbg !6067
  call void @might_fault() #15, !dbg !6068
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_pu) #16, !dbg !6069
  call void @llvm.dbg.declare(metadata ptr %__ret_pu, metadata !5922, metadata !DIExpression()), !dbg !6069
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr_pu) #16, !dbg !6069
  call void @llvm.dbg.declare(metadata ptr %__ptr_pu, metadata !5926, metadata !DIExpression()), !dbg !6069
  call void @llvm.lifetime.start.p0(i64 4, ptr %__val_pu) #16, !dbg !6069
  call void @llvm.dbg.declare(metadata ptr %__val_pu, metadata !5927, metadata !DIExpression()), !dbg !6069
  call void @llvm.lifetime.start.p0(i64 4, ptr %__x) #16, !dbg !6069
  call void @llvm.dbg.declare(metadata ptr %__x, metadata !5928, metadata !DIExpression()), !dbg !6069
  %c_cflag = getelementptr inbounds %struct.ktermios, ptr %kterm, i32 0, i32 2, !dbg !6069
  %52 = load i32, ptr %c_cflag, align 4, !dbg !6069
  %and = and i32 %52, 2048, !dbg !6069
  %tobool49 = icmp ne i32 %and, 0, !dbg !6069
  %53 = zext i1 %tobool49 to i64, !dbg !6069
  %cond = select i1 %tobool49, i32 1, i32 0, !dbg !6069
  store i32 %cond, ptr %__x, align 4, !dbg !6069
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #16, !dbg !6069
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !5929, metadata !DIExpression()), !dbg !6069
  %54 = load i64, ptr %arg.addr, align 8, !dbg !6069
  %55 = inttoptr i64 %54 to ptr, !dbg !6069
  store ptr %55, ptr %__ptr, align 8, !dbg !6069
  %56 = load ptr, ptr %__ptr, align 8, !dbg !6069
  store ptr %56, ptr %__ptr_pu, align 8, !dbg !6069
  %57 = load i32, ptr %__x, align 4, !dbg !6069
  store i32 %57, ptr %__val_pu, align 4, !dbg !6069
  %58 = call i64 @llvm.read_register.i64(metadata !5110), !dbg !6069
  %59 = load ptr, ptr %__ptr_pu, align 8, !dbg !6069
  %60 = load i32, ptr %__val_pu, align 4, !dbg !6069
  %61 = call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %59, i32 %60, i64 4, i64 %58) #16, !dbg !6069, !srcloc !6070
  %asmresult = extractvalue { ptr, i64 } %61, 0, !dbg !6069
  %asmresult50 = extractvalue { ptr, i64 } %61, 1, !dbg !6069
  %62 = ptrtoint ptr %asmresult to i64, !dbg !6069
  %63 = trunc i64 %62 to i32, !dbg !6069
  store i32 %63, ptr %__ret_pu, align 4, !dbg !6069
  call void @llvm.write_register.i64(metadata !5110, i64 %asmresult50), !dbg !6069
  %64 = load ptr, ptr %__ptr, align 8, !dbg !6071
  call void @kmsan_copy_to_user(ptr noundef %64, ptr noundef %__x, i64 noundef 4, i64 noundef 0) #15, !dbg !6071
  %65 = load i32, ptr %__ret_pu, align 4, !dbg !6069
  %conv52 = sext i32 %65 to i64, !dbg !6069
  %expval = call i64 @llvm.expect.i64(i64 %conv52, i64 0), !dbg !6069
  store i64 %expval, ptr %tmp51, align 8, !dbg !6069
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #16, !dbg !6068
  call void @llvm.lifetime.end.p0(i64 4, ptr %__x) #16, !dbg !6068
  call void @llvm.lifetime.end.p0(i64 4, ptr %__val_pu) #16, !dbg !6068
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr_pu) #16, !dbg !6068
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_pu) #16, !dbg !6068
  %66 = load i64, ptr %tmp51, align 8, !dbg !6069
  store i64 %66, ptr %tmp, align 8, !dbg !6068
  %67 = load i64, ptr %tmp, align 8, !dbg !6068
  %conv53 = trunc i64 %67 to i32, !dbg !6073
  store i32 %conv53, ptr %ret, align 4, !dbg !6074
  %68 = load i32, ptr %ret, align 4, !dbg !6075
  store i32 %68, ptr %retval, align 4, !dbg !6076
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6076

sw.bb54:                                          ; preds = %if.end
  call void @might_fault() #15, !dbg !6077
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_gu) #16, !dbg !6078
  call void @llvm.dbg.declare(metadata ptr %__ret_gu, metadata !5930, metadata !DIExpression()), !dbg !6078
  call void @llvm.lifetime.start.p0(i64 4, ptr %__val_gu) #16, !dbg !6078
  call void @llvm.dbg.declare(metadata ptr %__val_gu, metadata !5934, metadata !DIExpression()), !dbg !6078
  %69 = call i64 @llvm.read_register.i64(metadata !5110), !dbg !6078
  %70 = load i64, ptr %arg.addr, align 8, !dbg !6078
  %71 = inttoptr i64 %70 to ptr, !dbg !6078
  %72 = call { ptr, i32, i64 } asm sideeffect "call __get_user_${4:c}", "={ax},={rdx},={rsp},0,i,{rsp},~{dirflag},~{fpsr},~{flags}"(ptr %71, i64 4, i64 %69) #16, !dbg !6078, !srcloc !6079
  %asmresult56 = extractvalue { ptr, i32, i64 } %72, 0, !dbg !6078
  %asmresult57 = extractvalue { ptr, i32, i64 } %72, 1, !dbg !6078
  %asmresult58 = extractvalue { ptr, i32, i64 } %72, 2, !dbg !6078
  %73 = ptrtoint ptr %asmresult56 to i64, !dbg !6078
  %74 = trunc i64 %73 to i32, !dbg !6078
  store i32 %74, ptr %__ret_gu, align 4, !dbg !6078
  store i32 %asmresult57, ptr %__val_gu, align 4, !dbg !6078
  call void @llvm.write_register.i64(metadata !5110, i64 %asmresult58), !dbg !6078
  call void @llvm.lifetime.start.p0(i64 8, ptr %__tmp) #16, !dbg !6080
  call void @llvm.dbg.declare(metadata ptr %__tmp, metadata !5935, metadata !DIExpression()), !dbg !6080
  %75 = load i32, ptr %__val_gu, align 4, !dbg !6080
  %conv59 = zext i32 %75 to i64, !dbg !6080
  store i64 %conv59, ptr %__tmp, align 8, !dbg !6080
  call void @kmsan_unpoison_memory(ptr noundef %__tmp, i64 noundef 8) #15, !dbg !6080
  %76 = load i64, ptr %__tmp, align 8, !dbg !6080
  %conv61 = trunc i64 %76 to i32, !dbg !6080
  store i32 %conv61, ptr %__val_gu, align 4, !dbg !6080
  store i32 %conv61, ptr %tmp60, align 4, !dbg !6080
  call void @llvm.lifetime.end.p0(i64 8, ptr %__tmp) #16, !dbg !6078
  %77 = load i32, ptr %tmp60, align 4, !dbg !6080
  %78 = load i32, ptr %__val_gu, align 4, !dbg !6078
  %conv62 = zext i32 %78 to i64, !dbg !6078
  store i64 %conv62, ptr %arg.addr, align 8, !dbg !6078
  %79 = load i32, ptr %__ret_gu, align 4, !dbg !6078
  %conv64 = sext i32 %79 to i64, !dbg !6078
  %expval65 = call i64 @llvm.expect.i64(i64 %conv64, i64 0), !dbg !6078
  store i64 %expval65, ptr %tmp63, align 8, !dbg !6078
  call void @llvm.lifetime.end.p0(i64 4, ptr %__val_gu) #16, !dbg !6077
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_gu) #16, !dbg !6077
  %80 = load i64, ptr %tmp63, align 8, !dbg !6078
  store i64 %80, ptr %tmp55, align 8, !dbg !6077
  %81 = load i64, ptr %tmp55, align 8, !dbg !6077
  %tobool66 = icmp ne i64 %81, 0, !dbg !6081
  br i1 %tobool66, label %if.then67, label %if.end68, !dbg !6082

if.then67:                                        ; preds = %sw.bb54
  store i32 -14, ptr %retval, align 4, !dbg !6083
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6083

if.end68:                                         ; preds = %sw.bb54
  %82 = load ptr, ptr %real_tty, align 8, !dbg !6084
  %83 = load i64, ptr %arg.addr, align 8, !dbg !6085
  %tobool69 = icmp ne i64 %83, 0, !dbg !6085
  %call70 = call i32 @tty_change_softcar(ptr noundef %82, i1 noundef zeroext %tobool69) #15, !dbg !6086
  store i32 %call70, ptr %retval, align 4, !dbg !6087
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6087

sw.default:                                       ; preds = %if.end
  store i32 -515, ptr %retval, align 4, !dbg !6088
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6088

cleanup:                                          ; preds = %sw.default, %if.end68, %if.then67, %sw.bb48, %sw.bb47, %if.end45, %if.then44, %if.then40, %if.end37, %sw.bb31, %sw.bb29, %sw.bb27, %sw.bb25, %sw.bb23, %sw.bb21, %sw.bb19, %if.end18, %if.end13, %sw.bb8, %sw.bb6, %sw.bb
  call void @llvm.lifetime.end.p0(i64 44, ptr %kterm) #16, !dbg !6089
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !6089
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #16, !dbg !6089
  call void @llvm.lifetime.end.p0(i64 8, ptr %real_tty) #16, !dbg !6089
  %84 = load i32, ptr %retval, align 4, !dbg !6089
  ret i32 %84, !dbg !6089
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @set_termios(ptr noundef %tty, ptr noundef %arg, i32 noundef %opt) #0 align 16 !dbg !6090 {
entry:
  %retval = alloca i32, align 4
  %tty.addr = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  %opt.addr = alloca i32, align 4
  %tmp_termios = alloca %struct.ktermios, align 4
  %ld = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ret = alloca i32, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %__ret33 = alloca i64, align 8
  %__int = alloca i64, align 8
  %tmp = alloca i64, align 8
  %tmp45 = alloca i32, align 4
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !6094, metadata !DIExpression()), !dbg !6114
  store ptr %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !6095, metadata !DIExpression()), !dbg !6115
  store i32 %opt, ptr %opt.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %opt.addr, metadata !6096, metadata !DIExpression()), !dbg !6116
  call void @llvm.lifetime.start.p0(i64 44, ptr %tmp_termios) #16, !dbg !6117
  call void @llvm.dbg.declare(metadata ptr %tmp_termios, metadata !6097, metadata !DIExpression()), !dbg !6118
  call void @llvm.lifetime.start.p0(i64 8, ptr %ld) #16, !dbg !6119
  call void @llvm.dbg.declare(metadata ptr %ld, metadata !6098, metadata !DIExpression()), !dbg !6120
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #16, !dbg !6121
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !6099, metadata !DIExpression()), !dbg !6122
  %0 = load ptr, ptr %tty.addr, align 8, !dbg !6123
  %call = call i32 @tty_check_change(ptr noundef %0) #15, !dbg !6124
  store i32 %call, ptr %retval1, align 4, !dbg !6122
  %1 = load i32, ptr %retval1, align 4, !dbg !6125
  %tobool = icmp ne i32 %1, 0, !dbg !6125
  br i1 %tobool, label %if.then, label %if.end, !dbg !6127

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %retval1, align 4, !dbg !6128
  store i32 %2, ptr %retval, align 4, !dbg !6129
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup90, !dbg !6129

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %tty.addr, align 8, !dbg !6130
  %termios_rwsem = getelementptr inbounds %struct.tty_struct, ptr %3, i32 0, i32 11, !dbg !6131
  call void @down_read(ptr noundef %termios_rwsem) #15, !dbg !6132
  %4 = load ptr, ptr %tty.addr, align 8, !dbg !6133
  %termios = getelementptr inbounds %struct.tty_struct, ptr %4, i32 0, i32 13, !dbg !6134
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %tmp_termios, ptr align 8 %termios, i64 44, i1 false), !dbg !6134
  %5 = load ptr, ptr %tty.addr, align 8, !dbg !6135
  %termios_rwsem2 = getelementptr inbounds %struct.tty_struct, ptr %5, i32 0, i32 11, !dbg !6136
  call void @up_read(ptr noundef %termios_rwsem2) #15, !dbg !6137
  %6 = load i32, ptr %opt.addr, align 4, !dbg !6138
  %conv = sext i32 %6 to i64, !dbg !6138
  %and = and i64 %conv, 4, !dbg !6140
  %tobool3 = icmp ne i64 %and, 0, !dbg !6140
  br i1 %tobool3, label %if.then4, label %if.else, !dbg !6141

if.then4:                                         ; preds = %if.end
  %7 = load ptr, ptr %arg.addr, align 8, !dbg !6142
  %call5 = call i32 @user_termio_to_kernel_termios(ptr noundef %tmp_termios, ptr noundef %7) #15, !dbg !6145
  %tobool6 = icmp ne i32 %call5, 0, !dbg !6145
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !6146

if.then7:                                         ; preds = %if.then4
  store i32 -14, ptr %retval, align 4, !dbg !6147
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup90, !dbg !6147

if.end8:                                          ; preds = %if.then4
  br label %if.end23, !dbg !6148

if.else:                                          ; preds = %if.end
  %8 = load i32, ptr %opt.addr, align 4, !dbg !6149
  %conv9 = sext i32 %8 to i64, !dbg !6149
  %and10 = and i64 %conv9, 8, !dbg !6151
  %tobool11 = icmp ne i64 %and10, 0, !dbg !6151
  br i1 %tobool11, label %if.then12, label %if.else17, !dbg !6152

if.then12:                                        ; preds = %if.else
  %9 = load ptr, ptr %arg.addr, align 8, !dbg !6153
  %call13 = call i32 @user_termios_to_kernel_termios_1(ptr noundef %tmp_termios, ptr noundef %9) #15, !dbg !6156
  %tobool14 = icmp ne i32 %call13, 0, !dbg !6156
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !6157

if.then15:                                        ; preds = %if.then12
  store i32 -14, ptr %retval, align 4, !dbg !6158
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup90, !dbg !6158

if.end16:                                         ; preds = %if.then12
  br label %if.end22, !dbg !6159

if.else17:                                        ; preds = %if.else
  %10 = load ptr, ptr %arg.addr, align 8, !dbg !6160
  %call18 = call i32 @user_termios_to_kernel_termios(ptr noundef %tmp_termios, ptr noundef %10) #15, !dbg !6163
  %tobool19 = icmp ne i32 %call18, 0, !dbg !6163
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !6164

if.then20:                                        ; preds = %if.else17
  store i32 -14, ptr %retval, align 4, !dbg !6165
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup90, !dbg !6165

if.end21:                                         ; preds = %if.else17
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.end16
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.end8
  %call24 = call i32 @tty_termios_input_baud_rate(ptr noundef %tmp_termios) #15, !dbg !6166
  %c_ispeed = getelementptr inbounds %struct.ktermios, ptr %tmp_termios, i32 0, i32 6, !dbg !6167
  store i32 %call24, ptr %c_ispeed, align 4, !dbg !6168
  %call25 = call i32 @tty_termios_baud_rate(ptr noundef %tmp_termios) #15, !dbg !6169
  %c_ospeed = getelementptr inbounds %struct.ktermios, ptr %tmp_termios, i32 0, i32 7, !dbg !6170
  store i32 %call25, ptr %c_ospeed, align 4, !dbg !6171
  %11 = load i32, ptr %opt.addr, align 4, !dbg !6172
  %conv26 = sext i32 %11 to i64, !dbg !6172
  %and27 = and i64 %conv26, 3, !dbg !6173
  %tobool28 = icmp ne i64 %and27, 0, !dbg !6173
  br i1 %tobool28, label %if.then29, label %if.else87, !dbg !6174

if.then29:                                        ; preds = %if.end23
  br label %retry_write_wait, !dbg !6175

retry_write_wait:                                 ; preds = %if.then56, %if.then52, %if.then29
  call void @llvm.dbg.label(metadata !6100), !dbg !6176
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #16, !dbg !6177
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !6103, metadata !DIExpression()), !dbg !6177
  store i32 0, ptr %__ret, align 4, !dbg !6177
  br label %do.body, !dbg !6177

do.body:                                          ; preds = %retry_write_wait
  call void @might_resched() #15, !dbg !6178
  br label %do.cond, !dbg !6178

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6178

do.end:                                           ; preds = %do.cond
  %12 = load ptr, ptr %tty.addr, align 8, !dbg !6180
  %call30 = call i32 @tty_chars_in_buffer(ptr noundef %12) #15, !dbg !6180
  %tobool31 = icmp ne i32 %call30, 0, !dbg !6180
  br i1 %tobool31, label %if.then32, label %if.end44, !dbg !6177

if.then32:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 40, ptr %__wq_entry) #16, !dbg !6181
  call void @llvm.dbg.declare(metadata ptr %__wq_entry, metadata !6105, metadata !DIExpression()), !dbg !6181
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret33) #16, !dbg !6181
  call void @llvm.dbg.declare(metadata ptr %__ret33, metadata !6108, metadata !DIExpression()), !dbg !6181
  store i64 0, ptr %__ret33, align 8, !dbg !6181
  call void @init_wait_entry(ptr noundef %__wq_entry, i32 noundef 0) #15, !dbg !6181
  br label %for.cond, !dbg !6181

for.cond:                                         ; preds = %cleanup.cont, %if.then32
  call void @llvm.lifetime.start.p0(i64 8, ptr %__int) #16, !dbg !6182
  call void @llvm.dbg.declare(metadata ptr %__int, metadata !6109, metadata !DIExpression()), !dbg !6182
  %13 = load ptr, ptr %tty.addr, align 8, !dbg !6182
  %write_wait = getelementptr inbounds %struct.tty_struct, ptr %13, i32 0, i32 27, !dbg !6182
  %call34 = call i64 @prepare_to_wait_event(ptr noundef %write_wait, ptr noundef %__wq_entry, i32 noundef 1) #15, !dbg !6182
  store i64 %call34, ptr %__int, align 8, !dbg !6182
  %14 = load ptr, ptr %tty.addr, align 8, !dbg !6183
  %call35 = call i32 @tty_chars_in_buffer(ptr noundef %14) #15, !dbg !6183
  %tobool36 = icmp ne i32 %call35, 0, !dbg !6183
  br i1 %tobool36, label %if.end38, label %if.then37, !dbg !6182

if.then37:                                        ; preds = %for.cond
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6183

if.end38:                                         ; preds = %for.cond
  %15 = load i64, ptr %__int, align 8, !dbg !6185
  %tobool39 = icmp ne i64 %15, 0, !dbg !6185
  br i1 %tobool39, label %if.then40, label %if.end41, !dbg !6182

if.then40:                                        ; preds = %if.end38
  %16 = load i64, ptr %__int, align 8, !dbg !6187
  store i64 %16, ptr %__ret33, align 8, !dbg !6187
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6187

if.end41:                                         ; preds = %if.end38
  call void @schedule() #15, !dbg !6182
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6189
  br label %cleanup, !dbg !6189

cleanup:                                          ; preds = %if.then40, %if.end41, %if.then37
  call void @llvm.lifetime.end.p0(i64 8, ptr %__int) #16, !dbg !6189
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 5, label %for.end
    i32 7, label %__out
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond, !dbg !6189, !llvm.loop !6190

for.end:                                          ; preds = %cleanup
  %17 = load ptr, ptr %tty.addr, align 8, !dbg !6181
  %write_wait42 = getelementptr inbounds %struct.tty_struct, ptr %17, i32 0, i32 27, !dbg !6181
  call void @finish_wait(ptr noundef %write_wait42, ptr noundef %__wq_entry) #15, !dbg !6181
  br label %__out, !dbg !6181

__out:                                            ; preds = %for.end, %cleanup
  call void @llvm.dbg.label(metadata !6113), !dbg !6181
  %18 = load i64, ptr %__ret33, align 8, !dbg !6181
  store i64 %18, ptr %tmp, align 8, !dbg !6181
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret33) #16, !dbg !6180
  call void @llvm.lifetime.end.p0(i64 40, ptr %__wq_entry) #16, !dbg !6180
  %19 = load i64, ptr %tmp, align 8, !dbg !6181
  %conv43 = trunc i64 %19 to i32, !dbg !6180
  store i32 %conv43, ptr %__ret, align 4, !dbg !6180
  br label %if.end44, !dbg !6180

if.end44:                                         ; preds = %__out, %do.end
  %20 = load i32, ptr %__ret, align 4, !dbg !6177
  store i32 %20, ptr %tmp45, align 4, !dbg !6180
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #16, !dbg !6192
  %21 = load i32, ptr %tmp45, align 4, !dbg !6177
  store i32 %21, ptr %retval1, align 4, !dbg !6193
  %22 = load i32, ptr %retval1, align 4, !dbg !6194
  %cmp = icmp slt i32 %22, 0, !dbg !6196
  br i1 %cmp, label %if.then47, label %if.end48, !dbg !6197

if.then47:                                        ; preds = %if.end44
  %23 = load i32, ptr %retval1, align 4, !dbg !6198
  store i32 %23, ptr %retval, align 4, !dbg !6199
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup90, !dbg !6199

if.end48:                                         ; preds = %if.end44
  %24 = load ptr, ptr %tty.addr, align 8, !dbg !6200
  %call49 = call i32 @tty_write_lock(ptr noundef %24, i1 noundef zeroext false) #15, !dbg !6202
  %cmp50 = icmp slt i32 %call49, 0, !dbg !6203
  br i1 %cmp50, label %if.then52, label %if.end53, !dbg !6204

if.then52:                                        ; preds = %if.end48
  br label %retry_write_wait, !dbg !6205

if.end53:                                         ; preds = %if.end48
  %25 = load ptr, ptr %tty.addr, align 8, !dbg !6206
  %call54 = call i32 @tty_chars_in_buffer(ptr noundef %25) #15, !dbg !6208
  %tobool55 = icmp ne i32 %call54, 0, !dbg !6208
  br i1 %tobool55, label %if.then56, label %if.end57, !dbg !6209

if.then56:                                        ; preds = %if.end53
  %26 = load ptr, ptr %tty.addr, align 8, !dbg !6210
  call void @tty_write_unlock(ptr noundef %26) #15, !dbg !6212
  br label %retry_write_wait, !dbg !6213

if.end57:                                         ; preds = %if.end53
  %27 = load ptr, ptr %tty.addr, align 8, !dbg !6214
  %call58 = call ptr @tty_ldisc_ref(ptr noundef %27) #15, !dbg !6215
  store ptr %call58, ptr %ld, align 8, !dbg !6216
  %28 = load ptr, ptr %ld, align 8, !dbg !6217
  %cmp59 = icmp ne ptr %28, null, !dbg !6219
  br i1 %cmp59, label %if.then61, label %if.end70, !dbg !6220

if.then61:                                        ; preds = %if.end57
  %29 = load i32, ptr %opt.addr, align 4, !dbg !6221
  %conv62 = sext i32 %29 to i64, !dbg !6221
  %and63 = and i64 %conv62, 1, !dbg !6224
  %tobool64 = icmp ne i64 %and63, 0, !dbg !6224
  br i1 %tobool64, label %land.lhs.true, label %if.end69, !dbg !6225

land.lhs.true:                                    ; preds = %if.then61
  %30 = load ptr, ptr %ld, align 8, !dbg !6226
  %ops = getelementptr inbounds %struct.tty_ldisc, ptr %30, i32 0, i32 0, !dbg !6227
  %31 = load ptr, ptr %ops, align 8, !dbg !6227
  %flush_buffer = getelementptr inbounds %struct.tty_ldisc_ops, ptr %31, i32 0, i32 4, !dbg !6228
  %32 = load ptr, ptr %flush_buffer, align 8, !dbg !6228
  %tobool65 = icmp ne ptr %32, null, !dbg !6226
  br i1 %tobool65, label %if.then66, label %if.end69, !dbg !6229

if.then66:                                        ; preds = %land.lhs.true
  %33 = load ptr, ptr %ld, align 8, !dbg !6230
  %ops67 = getelementptr inbounds %struct.tty_ldisc, ptr %33, i32 0, i32 0, !dbg !6231
  %34 = load ptr, ptr %ops67, align 8, !dbg !6231
  %flush_buffer68 = getelementptr inbounds %struct.tty_ldisc_ops, ptr %34, i32 0, i32 4, !dbg !6232
  %35 = load ptr, ptr %flush_buffer68, align 8, !dbg !6232
  %36 = load ptr, ptr %tty.addr, align 8, !dbg !6233
  call void %35(ptr noundef %36) #15, !dbg !6230
  br label %if.end69, !dbg !6230

if.end69:                                         ; preds = %if.then66, %land.lhs.true, %if.then61
  %37 = load ptr, ptr %ld, align 8, !dbg !6234
  call void @tty_ldisc_deref(ptr noundef %37) #15, !dbg !6235
  br label %if.end70, !dbg !6236

if.end70:                                         ; preds = %if.end69, %if.end57
  %38 = load i32, ptr %opt.addr, align 4, !dbg !6237
  %conv71 = sext i32 %38 to i64, !dbg !6237
  %and72 = and i64 %conv71, 2, !dbg !6239
  %tobool73 = icmp ne i64 %and72, 0, !dbg !6239
  br i1 %tobool73, label %land.lhs.true74, label %if.end85, !dbg !6240

land.lhs.true74:                                  ; preds = %if.end70
  %39 = load ptr, ptr %tty.addr, align 8, !dbg !6241
  %ops75 = getelementptr inbounds %struct.tty_struct, ptr %39, i32 0, i32 5, !dbg !6242
  %40 = load ptr, ptr %ops75, align 8, !dbg !6242
  %wait_until_sent = getelementptr inbounds %struct.tty_operations, ptr %40, i32 0, i32 24, !dbg !6243
  %41 = load ptr, ptr %wait_until_sent, align 8, !dbg !6243
  %tobool76 = icmp ne ptr %41, null, !dbg !6241
  br i1 %tobool76, label %if.then77, label %if.end85, !dbg !6244

if.then77:                                        ; preds = %land.lhs.true74
  %42 = load ptr, ptr %tty.addr, align 8, !dbg !6245
  %ops78 = getelementptr inbounds %struct.tty_struct, ptr %42, i32 0, i32 5, !dbg !6247
  %43 = load ptr, ptr %ops78, align 8, !dbg !6247
  %wait_until_sent79 = getelementptr inbounds %struct.tty_operations, ptr %43, i32 0, i32 24, !dbg !6248
  %44 = load ptr, ptr %wait_until_sent79, align 8, !dbg !6248
  %45 = load ptr, ptr %tty.addr, align 8, !dbg !6249
  call void %44(ptr noundef %45, i32 noundef 0) #15, !dbg !6245
  %call80 = call ptr @get_current() #15, !dbg !6250
  %call81 = call i32 @signal_pending(ptr noundef %call80) #15, !dbg !6252
  %tobool82 = icmp ne i32 %call81, 0, !dbg !6252
  br i1 %tobool82, label %if.then83, label %if.end84, !dbg !6253

if.then83:                                        ; preds = %if.then77
  %46 = load ptr, ptr %tty.addr, align 8, !dbg !6254
  call void @tty_write_unlock(ptr noundef %46) #15, !dbg !6256
  store i32 -512, ptr %retval, align 4, !dbg !6257
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup90, !dbg !6257

if.end84:                                         ; preds = %if.then77
  br label %if.end85, !dbg !6258

if.end85:                                         ; preds = %if.end84, %land.lhs.true74, %if.end70
  %47 = load ptr, ptr %tty.addr, align 8, !dbg !6259
  %call86 = call i32 @tty_set_termios(ptr noundef %47, ptr noundef %tmp_termios) #15, !dbg !6260
  %48 = load ptr, ptr %tty.addr, align 8, !dbg !6261
  call void @tty_write_unlock(ptr noundef %48) #15, !dbg !6262
  br label %if.end89, !dbg !6263

if.else87:                                        ; preds = %if.end23
  %49 = load ptr, ptr %tty.addr, align 8, !dbg !6264
  %call88 = call i32 @tty_set_termios(ptr noundef %49, ptr noundef %tmp_termios) #15, !dbg !6266
  br label %if.end89

if.end89:                                         ; preds = %if.else87, %if.end85
  store i32 0, ptr %retval, align 4, !dbg !6267
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup90, !dbg !6267

cleanup90:                                        ; preds = %if.end89, %if.then83, %if.then47, %if.then20, %if.then15, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #16, !dbg !6268
  call void @llvm.lifetime.end.p0(i64 8, ptr %ld) #16, !dbg !6268
  call void @llvm.lifetime.end.p0(i64 44, ptr %tmp_termios) #16, !dbg !6268
  %50 = load i32, ptr %retval, align 4, !dbg !6268
  ret i32 %50, !dbg !6268

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @copy_termios(ptr noundef %tty, ptr noundef %kterm) #0 align 16 !dbg !6269 {
entry:
  %tty.addr = alloca ptr, align 8
  %kterm.addr = alloca ptr, align 8
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !6273, metadata !DIExpression()), !dbg !6275
  store ptr %kterm, ptr %kterm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kterm.addr, metadata !6274, metadata !DIExpression()), !dbg !6276
  %0 = load ptr, ptr %tty.addr, align 8, !dbg !6277
  %termios_rwsem = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 11, !dbg !6278
  call void @down_read(ptr noundef %termios_rwsem) #15, !dbg !6279
  %1 = load ptr, ptr %kterm.addr, align 8, !dbg !6280
  %2 = load ptr, ptr %tty.addr, align 8, !dbg !6281
  %termios = getelementptr inbounds %struct.tty_struct, ptr %2, i32 0, i32 13, !dbg !6282
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1, ptr align 8 %termios, i64 44, i1 false), !dbg !6282
  %3 = load ptr, ptr %tty.addr, align 8, !dbg !6283
  %termios_rwsem1 = getelementptr inbounds %struct.tty_struct, ptr %3, i32 0, i32 11, !dbg !6284
  call void @up_read(ptr noundef %termios_rwsem1) #15, !dbg !6285
  ret void, !dbg !6286
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @get_termio(ptr noundef %tty, ptr noundef %termio) #0 align 16 !dbg !6287 {
entry:
  %retval = alloca i32, align 4
  %tty.addr = alloca ptr, align 8
  %termio.addr = alloca ptr, align 8
  %kterm = alloca %struct.ktermios, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !6291, metadata !DIExpression()), !dbg !6294
  store ptr %termio, ptr %termio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %termio.addr, metadata !6292, metadata !DIExpression()), !dbg !6295
  call void @llvm.lifetime.start.p0(i64 44, ptr %kterm) #16, !dbg !6296
  call void @llvm.dbg.declare(metadata ptr %kterm, metadata !6293, metadata !DIExpression()), !dbg !6297
  %0 = load ptr, ptr %tty.addr, align 8, !dbg !6298
  call void @copy_termios(ptr noundef %0, ptr noundef %kterm) #15, !dbg !6299
  %1 = load ptr, ptr %termio.addr, align 8, !dbg !6300
  %call = call i32 @kernel_termios_to_user_termio(ptr noundef %1, ptr noundef %kterm) #15, !dbg !6302
  %tobool = icmp ne i32 %call, 0, !dbg !6302
  br i1 %tobool, label %if.then, label %if.end, !dbg !6303

if.then:                                          ; preds = %entry
  store i32 -14, ptr %retval, align 4, !dbg !6304
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6304

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6305
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6305

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 44, ptr %kterm) #16, !dbg !6306
  %2 = load i32, ptr %retval, align 4, !dbg !6306
  ret i32 %2, !dbg !6306
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @copy_termios_locked(ptr noundef %tty, ptr noundef %kterm) #0 align 16 !dbg !6307 {
entry:
  %tty.addr = alloca ptr, align 8
  %kterm.addr = alloca ptr, align 8
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !6309, metadata !DIExpression()), !dbg !6311
  store ptr %kterm, ptr %kterm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kterm.addr, metadata !6310, metadata !DIExpression()), !dbg !6312
  %0 = load ptr, ptr %tty.addr, align 8, !dbg !6313
  %termios_rwsem = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 11, !dbg !6314
  call void @down_read(ptr noundef %termios_rwsem) #15, !dbg !6315
  %1 = load ptr, ptr %kterm.addr, align 8, !dbg !6316
  %2 = load ptr, ptr %tty.addr, align 8, !dbg !6317
  %termios_locked = getelementptr inbounds %struct.tty_struct, ptr %2, i32 0, i32 14, !dbg !6318
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1, ptr align 4 %termios_locked, i64 44, i1 false), !dbg !6318
  %3 = load ptr, ptr %tty.addr, align 8, !dbg !6319
  %termios_rwsem1 = getelementptr inbounds %struct.tty_struct, ptr %3, i32 0, i32 11, !dbg !6320
  call void @up_read(ptr noundef %termios_rwsem1) #15, !dbg !6321
  ret void, !dbg !6322
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @checkpoint_restore_ns_capable(ptr noundef %ns) #5 align 16 !dbg !6323 {
entry:
  %ns.addr = alloca ptr, align 8
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !6327, metadata !DIExpression()), !dbg !6328
  %0 = load ptr, ptr %ns.addr, align 8, !dbg !6329
  %call = call zeroext i1 @ns_capable(ptr noundef %0, i32 noundef 40) #15, !dbg !6330
  br i1 %call, label %lor.end, label %lor.rhs, !dbg !6331

lor.rhs:                                          ; preds = %entry
  %1 = load ptr, ptr %ns.addr, align 8, !dbg !6332
  %call1 = call zeroext i1 @ns_capable(ptr noundef %1, i32 noundef 21) #15, !dbg !6333
  br label %lor.end, !dbg !6331

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %call1, %lor.rhs ]
  ret i1 %2, !dbg !6334
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @might_fault() #5 align 16 !dbg !6335 {
entry:
  ret void, !dbg !6336
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #9

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #10

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kmsan_copy_to_user(ptr noundef %to, ptr noundef %from, i64 noundef %to_copy, i64 noundef %left) #5 align 16 !dbg !6337 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %to_copy.addr = alloca i64, align 8
  %left.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !6342, metadata !DIExpression()), !dbg !6346
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !6343, metadata !DIExpression()), !dbg !6347
  store i64 %to_copy, ptr %to_copy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to_copy.addr, metadata !6344, metadata !DIExpression()), !dbg !6348
  store i64 %left, ptr %left.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %left.addr, metadata !6345, metadata !DIExpression()), !dbg !6349
  ret void, !dbg !6350
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kmsan_unpoison_memory(ptr noundef %address, i64 noundef %size) #5 align 16 !dbg !6351 {
entry:
  %address.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !6355, metadata !DIExpression()), !dbg !6357
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6356, metadata !DIExpression()), !dbg !6358
  ret void, !dbg !6359
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @tty_change_softcar(ptr noundef %tty, i1 noundef zeroext %enable) #0 align 16 !dbg !6360 {
entry:
  %tty.addr = alloca ptr, align 8
  %enable.addr = alloca i8, align 1
  %ret = alloca i32, align 4
  %old = alloca %struct.ktermios, align 4
  %bit = alloca i32, align 4
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !6364, metadata !DIExpression()), !dbg !6369
  %frombool = zext i1 %enable to i8
  store i8 %frombool, ptr %enable.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %enable.addr, metadata !6365, metadata !DIExpression()), !dbg !6370
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !6371
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6366, metadata !DIExpression()), !dbg !6372
  store i32 0, ptr %ret, align 4, !dbg !6372
  call void @llvm.lifetime.start.p0(i64 44, ptr %old) #16, !dbg !6373
  call void @llvm.dbg.declare(metadata ptr %old, metadata !6367, metadata !DIExpression()), !dbg !6374
  call void @llvm.lifetime.start.p0(i64 4, ptr %bit) #16, !dbg !6375
  call void @llvm.dbg.declare(metadata ptr %bit, metadata !6368, metadata !DIExpression()), !dbg !6376
  %0 = load i8, ptr %enable.addr, align 1, !dbg !6377, !range !5393, !noundef !590
  %tobool = trunc i8 %0 to i1, !dbg !6377
  %1 = zext i1 %tobool to i64, !dbg !6377
  %cond = select i1 %tobool, i32 2048, i32 0, !dbg !6377
  store i32 %cond, ptr %bit, align 4, !dbg !6376
  %2 = load ptr, ptr %tty.addr, align 8, !dbg !6378
  %termios_rwsem = getelementptr inbounds %struct.tty_struct, ptr %2, i32 0, i32 11, !dbg !6379
  call void @down_write(ptr noundef %termios_rwsem) #15, !dbg !6380
  %3 = load ptr, ptr %tty.addr, align 8, !dbg !6381
  %termios = getelementptr inbounds %struct.tty_struct, ptr %3, i32 0, i32 13, !dbg !6382
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %old, ptr align 8 %termios, i64 44, i1 false), !dbg !6382
  %4 = load ptr, ptr %tty.addr, align 8, !dbg !6383
  %termios1 = getelementptr inbounds %struct.tty_struct, ptr %4, i32 0, i32 13, !dbg !6384
  %c_cflag = getelementptr inbounds %struct.ktermios, ptr %termios1, i32 0, i32 2, !dbg !6385
  %5 = load i32, ptr %c_cflag, align 8, !dbg !6386
  %and = and i32 %5, -2049, !dbg !6386
  store i32 %and, ptr %c_cflag, align 8, !dbg !6386
  %6 = load i32, ptr %bit, align 4, !dbg !6387
  %7 = load ptr, ptr %tty.addr, align 8, !dbg !6388
  %termios2 = getelementptr inbounds %struct.tty_struct, ptr %7, i32 0, i32 13, !dbg !6389
  %c_cflag3 = getelementptr inbounds %struct.ktermios, ptr %termios2, i32 0, i32 2, !dbg !6390
  %8 = load i32, ptr %c_cflag3, align 8, !dbg !6391
  %or = or i32 %8, %6, !dbg !6391
  store i32 %or, ptr %c_cflag3, align 8, !dbg !6391
  %9 = load ptr, ptr %tty.addr, align 8, !dbg !6392
  %ops = getelementptr inbounds %struct.tty_struct, ptr %9, i32 0, i32 5, !dbg !6394
  %10 = load ptr, ptr %ops, align 8, !dbg !6394
  %set_termios = getelementptr inbounds %struct.tty_operations, ptr %10, i32 0, i32 14, !dbg !6395
  %11 = load ptr, ptr %set_termios, align 8, !dbg !6395
  %tobool4 = icmp ne ptr %11, null, !dbg !6392
  br i1 %tobool4, label %if.then, label %if.end, !dbg !6396

if.then:                                          ; preds = %entry
  %12 = load ptr, ptr %tty.addr, align 8, !dbg !6397
  %ops5 = getelementptr inbounds %struct.tty_struct, ptr %12, i32 0, i32 5, !dbg !6398
  %13 = load ptr, ptr %ops5, align 8, !dbg !6398
  %set_termios6 = getelementptr inbounds %struct.tty_operations, ptr %13, i32 0, i32 14, !dbg !6399
  %14 = load ptr, ptr %set_termios6, align 8, !dbg !6399
  %15 = load ptr, ptr %tty.addr, align 8, !dbg !6400
  call void %14(ptr noundef %15, ptr noundef %old) #15, !dbg !6397
  br label %if.end, !dbg !6397

if.end:                                           ; preds = %if.then, %entry
  %16 = load ptr, ptr %tty.addr, align 8, !dbg !6401
  %termios7 = getelementptr inbounds %struct.tty_struct, ptr %16, i32 0, i32 13, !dbg !6401
  %c_cflag8 = getelementptr inbounds %struct.ktermios, ptr %termios7, i32 0, i32 2, !dbg !6401
  %17 = load i32, ptr %c_cflag8, align 8, !dbg !6401
  %and9 = and i32 %17, 2048, !dbg !6401
  %18 = load i32, ptr %bit, align 4, !dbg !6403
  %cmp = icmp ne i32 %and9, %18, !dbg !6404
  br i1 %cmp, label %if.then10, label %if.end11, !dbg !6405

if.then10:                                        ; preds = %if.end
  store i32 -22, ptr %ret, align 4, !dbg !6406
  br label %if.end11, !dbg !6407

if.end11:                                         ; preds = %if.then10, %if.end
  %19 = load ptr, ptr %tty.addr, align 8, !dbg !6408
  %termios_rwsem12 = getelementptr inbounds %struct.tty_struct, ptr %19, i32 0, i32 11, !dbg !6409
  call void @up_write(ptr noundef %termios_rwsem12) #15, !dbg !6410
  %20 = load i32, ptr %ret, align 4, !dbg !6411
  call void @llvm.lifetime.end.p0(i64 4, ptr %bit) #16, !dbg !6412
  call void @llvm.lifetime.end.p0(i64 44, ptr %old) #16, !dbg !6412
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !6412
  ret i32 %20, !dbg !6413
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @tty_perform_flush(ptr noundef %tty, i64 noundef %arg) #0 align 16 !dbg !6414 {
entry:
  %retval = alloca i32, align 4
  %tty.addr = alloca ptr, align 8
  %arg.addr = alloca i64, align 8
  %ld = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !6418, metadata !DIExpression()), !dbg !6422
  store i64 %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !6419, metadata !DIExpression()), !dbg !6423
  call void @llvm.lifetime.start.p0(i64 8, ptr %ld) #16, !dbg !6424
  call void @llvm.dbg.declare(metadata ptr %ld, metadata !6420, metadata !DIExpression()), !dbg !6425
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #16, !dbg !6426
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !6421, metadata !DIExpression()), !dbg !6427
  %0 = load ptr, ptr %tty.addr, align 8, !dbg !6428
  %call = call i32 @tty_check_change(ptr noundef %0) #15, !dbg !6429
  store i32 %call, ptr %retval1, align 4, !dbg !6427
  %1 = load i32, ptr %retval1, align 4, !dbg !6430
  %tobool = icmp ne i32 %1, 0, !dbg !6430
  br i1 %tobool, label %if.then, label %if.end, !dbg !6432

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %retval1, align 4, !dbg !6433
  store i32 %2, ptr %retval, align 4, !dbg !6434
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6434

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %tty.addr, align 8, !dbg !6435
  %call2 = call ptr @tty_ldisc_ref_wait(ptr noundef %3) #15, !dbg !6436
  store ptr %call2, ptr %ld, align 8, !dbg !6437
  %4 = load ptr, ptr %tty.addr, align 8, !dbg !6438
  %5 = load i64, ptr %arg.addr, align 8, !dbg !6439
  %call3 = call i32 @__tty_perform_flush(ptr noundef %4, i64 noundef %5) #15, !dbg !6440
  store i32 %call3, ptr %retval1, align 4, !dbg !6441
  %6 = load ptr, ptr %ld, align 8, !dbg !6442
  %tobool4 = icmp ne ptr %6, null, !dbg !6442
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !6444

if.then5:                                         ; preds = %if.end
  %7 = load ptr, ptr %ld, align 8, !dbg !6445
  call void @tty_ldisc_deref(ptr noundef %7) #15, !dbg !6446
  br label %if.end6, !dbg !6446

if.end6:                                          ; preds = %if.then5, %if.end
  %8 = load i32, ptr %retval1, align 4, !dbg !6447
  store i32 %8, ptr %retval, align 4, !dbg !6448
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6448

cleanup:                                          ; preds = %if.end6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #16, !dbg !6449
  call void @llvm.lifetime.end.p0(i64 8, ptr %ld) #16, !dbg !6449
  %9 = load i32, ptr %retval, align 4, !dbg !6449
  ret i32 %9, !dbg !6449
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6450 dso_local i32 @tty_check_change(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6452 dso_local ptr @tty_ldisc_ref_wait(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__tty_perform_flush(ptr noundef %tty, i64 noundef %arg) #0 align 16 !dbg !6453 {
entry:
  %retval = alloca i32, align 4
  %tty.addr = alloca ptr, align 8
  %arg.addr = alloca i64, align 8
  %ld = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !6455, metadata !DIExpression()), !dbg !6458
  store i64 %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !6456, metadata !DIExpression()), !dbg !6459
  call void @llvm.lifetime.start.p0(i64 8, ptr %ld) #16, !dbg !6460
  call void @llvm.dbg.declare(metadata ptr %ld, metadata !6457, metadata !DIExpression()), !dbg !6461
  %0 = load ptr, ptr %tty.addr, align 8, !dbg !6462
  %ldisc = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 6, !dbg !6463
  %1 = load ptr, ptr %ldisc, align 8, !dbg !6463
  store ptr %1, ptr %ld, align 8, !dbg !6461
  %2 = load i64, ptr %arg.addr, align 8, !dbg !6464
  switch i64 %2, label %sw.default [
    i64 0, label %sw.bb
    i64 2, label %sw.bb4
    i64 1, label %sw.bb14
  ], !dbg !6465

sw.bb:                                            ; preds = %entry
  %3 = load ptr, ptr %ld, align 8, !dbg !6466
  %tobool = icmp ne ptr %3, null, !dbg !6466
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !6469

land.lhs.true:                                    ; preds = %sw.bb
  %4 = load ptr, ptr %ld, align 8, !dbg !6470
  %ops = getelementptr inbounds %struct.tty_ldisc, ptr %4, i32 0, i32 0, !dbg !6471
  %5 = load ptr, ptr %ops, align 8, !dbg !6471
  %flush_buffer = getelementptr inbounds %struct.tty_ldisc_ops, ptr %5, i32 0, i32 4, !dbg !6472
  %6 = load ptr, ptr %flush_buffer, align 8, !dbg !6472
  %tobool1 = icmp ne ptr %6, null, !dbg !6470
  br i1 %tobool1, label %if.then, label %if.end, !dbg !6473

if.then:                                          ; preds = %land.lhs.true
  %7 = load ptr, ptr %ld, align 8, !dbg !6474
  %ops2 = getelementptr inbounds %struct.tty_ldisc, ptr %7, i32 0, i32 0, !dbg !6476
  %8 = load ptr, ptr %ops2, align 8, !dbg !6476
  %flush_buffer3 = getelementptr inbounds %struct.tty_ldisc_ops, ptr %8, i32 0, i32 4, !dbg !6477
  %9 = load ptr, ptr %flush_buffer3, align 8, !dbg !6477
  %10 = load ptr, ptr %tty.addr, align 8, !dbg !6478
  call void %9(ptr noundef %10) #15, !dbg !6474
  %11 = load ptr, ptr %tty.addr, align 8, !dbg !6479
  call void @tty_unthrottle(ptr noundef %11) #15, !dbg !6480
  br label %if.end, !dbg !6481

if.end:                                           ; preds = %if.then, %land.lhs.true, %sw.bb
  br label %sw.epilog, !dbg !6482

sw.bb4:                                           ; preds = %entry
  %12 = load ptr, ptr %ld, align 8, !dbg !6483
  %tobool5 = icmp ne ptr %12, null, !dbg !6483
  br i1 %tobool5, label %land.lhs.true6, label %if.end13, !dbg !6485

land.lhs.true6:                                   ; preds = %sw.bb4
  %13 = load ptr, ptr %ld, align 8, !dbg !6486
  %ops7 = getelementptr inbounds %struct.tty_ldisc, ptr %13, i32 0, i32 0, !dbg !6487
  %14 = load ptr, ptr %ops7, align 8, !dbg !6487
  %flush_buffer8 = getelementptr inbounds %struct.tty_ldisc_ops, ptr %14, i32 0, i32 4, !dbg !6488
  %15 = load ptr, ptr %flush_buffer8, align 8, !dbg !6488
  %tobool9 = icmp ne ptr %15, null, !dbg !6486
  br i1 %tobool9, label %if.then10, label %if.end13, !dbg !6489

if.then10:                                        ; preds = %land.lhs.true6
  %16 = load ptr, ptr %ld, align 8, !dbg !6490
  %ops11 = getelementptr inbounds %struct.tty_ldisc, ptr %16, i32 0, i32 0, !dbg !6492
  %17 = load ptr, ptr %ops11, align 8, !dbg !6492
  %flush_buffer12 = getelementptr inbounds %struct.tty_ldisc_ops, ptr %17, i32 0, i32 4, !dbg !6493
  %18 = load ptr, ptr %flush_buffer12, align 8, !dbg !6493
  %19 = load ptr, ptr %tty.addr, align 8, !dbg !6494
  call void %18(ptr noundef %19) #15, !dbg !6490
  %20 = load ptr, ptr %tty.addr, align 8, !dbg !6495
  call void @tty_unthrottle(ptr noundef %20) #15, !dbg !6496
  br label %if.end13, !dbg !6497

if.end13:                                         ; preds = %if.then10, %land.lhs.true6, %sw.bb4
  br label %sw.bb14, !dbg !6488

sw.bb14:                                          ; preds = %entry, %if.end13
  %21 = load ptr, ptr %tty.addr, align 8, !dbg !6498
  call void @tty_driver_flush_buffer(ptr noundef %21) #15, !dbg !6499
  br label %sw.epilog, !dbg !6500

sw.default:                                       ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !6501
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6501

sw.epilog:                                        ; preds = %sw.bb14, %if.end
  store i32 0, ptr %retval, align 4, !dbg !6502
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6502

cleanup:                                          ; preds = %sw.epilog, %sw.default
  call void @llvm.lifetime.end.p0(i64 8, ptr %ld) #16, !dbg !6503
  %22 = load i32, ptr %retval, align 4, !dbg !6503
  ret i32 %22, !dbg !6503
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @n_tty_ioctl_helper(ptr noundef %tty, i32 noundef %cmd, i64 noundef %arg) #0 align 16 !dbg !6504 {
entry:
  %retval = alloca i32, align 4
  %tty.addr = alloca ptr, align 8
  %cmd.addr = alloca i32, align 4
  %arg.addr = alloca i64, align 8
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !6506, metadata !DIExpression()), !dbg !6510
  store i32 %cmd, ptr %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !6507, metadata !DIExpression()), !dbg !6511
  store i64 %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !6508, metadata !DIExpression()), !dbg !6512
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #16, !dbg !6513
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !6509, metadata !DIExpression()), !dbg !6514
  %0 = load i32, ptr %cmd.addr, align 4, !dbg !6515
  switch i32 %0, label %sw.default50 [
    i32 21514, label %sw.bb
    i32 21515, label %sw.bb44
  ], !dbg !6516

sw.bb:                                            ; preds = %entry
  %1 = load ptr, ptr %tty.addr, align 8, !dbg !6517
  %call = call i32 @tty_check_change(ptr noundef %1) #15, !dbg !6519
  store i32 %call, ptr %retval1, align 4, !dbg !6520
  %2 = load i32, ptr %retval1, align 4, !dbg !6521
  %tobool = icmp ne i32 %2, 0, !dbg !6521
  br i1 %tobool, label %if.then, label %if.end, !dbg !6523

if.then:                                          ; preds = %sw.bb
  %3 = load i32, ptr %retval1, align 4, !dbg !6524
  store i32 %3, ptr %retval, align 4, !dbg !6525
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6525

if.end:                                           ; preds = %sw.bb
  %4 = load i64, ptr %arg.addr, align 8, !dbg !6526
  switch i64 %4, label %sw.default [
    i64 0, label %sw.bb2
    i64 1, label %sw.bb11
    i64 2, label %sw.bb23
    i64 3, label %sw.bb31
  ], !dbg !6527

sw.bb2:                                           ; preds = %if.end
  %5 = load ptr, ptr %tty.addr, align 8, !dbg !6528
  %flow = getelementptr inbounds %struct.tty_struct, ptr %5, i32 0, i32 20, !dbg !6530
  %lock = getelementptr inbounds %struct.anon.16, ptr %flow, i32 0, i32 0, !dbg !6531
  call void @spin_lock_irq(ptr noundef %lock) #15, !dbg !6532
  %6 = load ptr, ptr %tty.addr, align 8, !dbg !6533
  %flow3 = getelementptr inbounds %struct.tty_struct, ptr %6, i32 0, i32 20, !dbg !6535
  %tco_stopped = getelementptr inbounds %struct.anon.16, ptr %flow3, i32 0, i32 2, !dbg !6536
  %7 = load i8, ptr %tco_stopped, align 1, !dbg !6536, !range !5393, !noundef !590
  %tobool4 = trunc i8 %7 to i1, !dbg !6536
  br i1 %tobool4, label %if.end8, label %if.then5, !dbg !6537

if.then5:                                         ; preds = %sw.bb2
  %8 = load ptr, ptr %tty.addr, align 8, !dbg !6538
  %flow6 = getelementptr inbounds %struct.tty_struct, ptr %8, i32 0, i32 20, !dbg !6540
  %tco_stopped7 = getelementptr inbounds %struct.anon.16, ptr %flow6, i32 0, i32 2, !dbg !6541
  store i8 1, ptr %tco_stopped7, align 1, !dbg !6542
  %9 = load ptr, ptr %tty.addr, align 8, !dbg !6543
  call void @__stop_tty(ptr noundef %9) #15, !dbg !6544
  br label %if.end8, !dbg !6545

if.end8:                                          ; preds = %if.then5, %sw.bb2
  %10 = load ptr, ptr %tty.addr, align 8, !dbg !6546
  %flow9 = getelementptr inbounds %struct.tty_struct, ptr %10, i32 0, i32 20, !dbg !6547
  %lock10 = getelementptr inbounds %struct.anon.16, ptr %flow9, i32 0, i32 0, !dbg !6548
  call void @spin_unlock_irq(ptr noundef %lock10) #15, !dbg !6549
  br label %sw.epilog, !dbg !6550

sw.bb11:                                          ; preds = %if.end
  %11 = load ptr, ptr %tty.addr, align 8, !dbg !6551
  %flow12 = getelementptr inbounds %struct.tty_struct, ptr %11, i32 0, i32 20, !dbg !6552
  %lock13 = getelementptr inbounds %struct.anon.16, ptr %flow12, i32 0, i32 0, !dbg !6553
  call void @spin_lock_irq(ptr noundef %lock13) #15, !dbg !6554
  %12 = load ptr, ptr %tty.addr, align 8, !dbg !6555
  %flow14 = getelementptr inbounds %struct.tty_struct, ptr %12, i32 0, i32 20, !dbg !6557
  %tco_stopped15 = getelementptr inbounds %struct.anon.16, ptr %flow14, i32 0, i32 2, !dbg !6558
  %13 = load i8, ptr %tco_stopped15, align 1, !dbg !6558, !range !5393, !noundef !590
  %tobool16 = trunc i8 %13 to i1, !dbg !6558
  br i1 %tobool16, label %if.then17, label %if.end20, !dbg !6559

if.then17:                                        ; preds = %sw.bb11
  %14 = load ptr, ptr %tty.addr, align 8, !dbg !6560
  %flow18 = getelementptr inbounds %struct.tty_struct, ptr %14, i32 0, i32 20, !dbg !6562
  %tco_stopped19 = getelementptr inbounds %struct.anon.16, ptr %flow18, i32 0, i32 2, !dbg !6563
  store i8 0, ptr %tco_stopped19, align 1, !dbg !6564
  %15 = load ptr, ptr %tty.addr, align 8, !dbg !6565
  call void @__start_tty(ptr noundef %15) #15, !dbg !6566
  br label %if.end20, !dbg !6567

if.end20:                                         ; preds = %if.then17, %sw.bb11
  %16 = load ptr, ptr %tty.addr, align 8, !dbg !6568
  %flow21 = getelementptr inbounds %struct.tty_struct, ptr %16, i32 0, i32 20, !dbg !6569
  %lock22 = getelementptr inbounds %struct.anon.16, ptr %flow21, i32 0, i32 0, !dbg !6570
  call void @spin_unlock_irq(ptr noundef %lock22) #15, !dbg !6571
  br label %sw.epilog, !dbg !6572

sw.bb23:                                          ; preds = %if.end
  %17 = load ptr, ptr %tty.addr, align 8, !dbg !6573
  %termios = getelementptr inbounds %struct.tty_struct, ptr %17, i32 0, i32 13, !dbg !6573
  %c_cc = getelementptr inbounds %struct.ktermios, ptr %termios, i32 0, i32 5, !dbg !6573
  %arrayidx = getelementptr [19 x i8], ptr %c_cc, i64 0, i64 9, !dbg !6573
  %18 = load i8, ptr %arrayidx, align 1, !dbg !6573
  %conv = zext i8 %18 to i32, !dbg !6573
  %cmp = icmp ne i32 %conv, 0, !dbg !6575
  br i1 %cmp, label %if.then25, label %if.end30, !dbg !6576

if.then25:                                        ; preds = %sw.bb23
  %19 = load ptr, ptr %tty.addr, align 8, !dbg !6577
  %20 = load ptr, ptr %tty.addr, align 8, !dbg !6578
  %termios26 = getelementptr inbounds %struct.tty_struct, ptr %20, i32 0, i32 13, !dbg !6578
  %c_cc27 = getelementptr inbounds %struct.ktermios, ptr %termios26, i32 0, i32 5, !dbg !6578
  %arrayidx28 = getelementptr [19 x i8], ptr %c_cc27, i64 0, i64 9, !dbg !6578
  %21 = load i8, ptr %arrayidx28, align 1, !dbg !6578
  %call29 = call i32 @tty_send_xchar(ptr noundef %19, i8 noundef zeroext %21) #15, !dbg !6579
  store i32 %call29, ptr %retval1, align 4, !dbg !6580
  br label %if.end30, !dbg !6581

if.end30:                                         ; preds = %if.then25, %sw.bb23
  br label %sw.epilog, !dbg !6582

sw.bb31:                                          ; preds = %if.end
  %22 = load ptr, ptr %tty.addr, align 8, !dbg !6583
  %termios32 = getelementptr inbounds %struct.tty_struct, ptr %22, i32 0, i32 13, !dbg !6583
  %c_cc33 = getelementptr inbounds %struct.ktermios, ptr %termios32, i32 0, i32 5, !dbg !6583
  %arrayidx34 = getelementptr [19 x i8], ptr %c_cc33, i64 0, i64 8, !dbg !6583
  %23 = load i8, ptr %arrayidx34, align 1, !dbg !6583
  %conv35 = zext i8 %23 to i32, !dbg !6583
  %cmp36 = icmp ne i32 %conv35, 0, !dbg !6585
  br i1 %cmp36, label %if.then38, label %if.end43, !dbg !6586

if.then38:                                        ; preds = %sw.bb31
  %24 = load ptr, ptr %tty.addr, align 8, !dbg !6587
  %25 = load ptr, ptr %tty.addr, align 8, !dbg !6588
  %termios39 = getelementptr inbounds %struct.tty_struct, ptr %25, i32 0, i32 13, !dbg !6588
  %c_cc40 = getelementptr inbounds %struct.ktermios, ptr %termios39, i32 0, i32 5, !dbg !6588
  %arrayidx41 = getelementptr [19 x i8], ptr %c_cc40, i64 0, i64 8, !dbg !6588
  %26 = load i8, ptr %arrayidx41, align 1, !dbg !6588
  %call42 = call i32 @tty_send_xchar(ptr noundef %24, i8 noundef zeroext %26) #15, !dbg !6589
  store i32 %call42, ptr %retval1, align 4, !dbg !6590
  br label %if.end43, !dbg !6591

if.end43:                                         ; preds = %if.then38, %sw.bb31
  br label %sw.epilog, !dbg !6592

sw.default:                                       ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !6593
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6593

sw.epilog:                                        ; preds = %if.end43, %if.end30, %if.end20, %if.end8
  %27 = load i32, ptr %retval1, align 4, !dbg !6594
  store i32 %27, ptr %retval, align 4, !dbg !6595
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6595

sw.bb44:                                          ; preds = %entry
  %28 = load ptr, ptr %tty.addr, align 8, !dbg !6596
  %call45 = call i32 @tty_check_change(ptr noundef %28) #15, !dbg !6597
  store i32 %call45, ptr %retval1, align 4, !dbg !6598
  %29 = load i32, ptr %retval1, align 4, !dbg !6599
  %tobool46 = icmp ne i32 %29, 0, !dbg !6599
  br i1 %tobool46, label %if.then47, label %if.end48, !dbg !6601

if.then47:                                        ; preds = %sw.bb44
  %30 = load i32, ptr %retval1, align 4, !dbg !6602
  store i32 %30, ptr %retval, align 4, !dbg !6603
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6603

if.end48:                                         ; preds = %sw.bb44
  %31 = load ptr, ptr %tty.addr, align 8, !dbg !6604
  %32 = load i64, ptr %arg.addr, align 8, !dbg !6605
  %call49 = call i32 @__tty_perform_flush(ptr noundef %31, i64 noundef %32) #15, !dbg !6606
  store i32 %call49, ptr %retval, align 4, !dbg !6607
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6607

sw.default50:                                     ; preds = %entry
  %33 = load ptr, ptr %tty.addr, align 8, !dbg !6608
  %34 = load i32, ptr %cmd.addr, align 4, !dbg !6609
  %35 = load i64, ptr %arg.addr, align 8, !dbg !6610
  %call51 = call i32 @tty_mode_ioctl(ptr noundef %33, i32 noundef %34, i64 noundef %35) #15, !dbg !6611
  store i32 %call51, ptr %retval, align 4, !dbg !6612
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6612

cleanup:                                          ; preds = %sw.default50, %if.end48, %if.then47, %sw.epilog, %sw.default, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #16, !dbg !6613
  %36 = load i32, ptr %retval, align 4, !dbg !6613
  ret i32 %36, !dbg !6613
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock_irq(ptr noundef %lock) #3 align 16 !dbg !6614 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6619, metadata !DIExpression()), !dbg !6620
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6621
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !6621
  call void @_raw_spin_lock_irq(ptr noundef %1) #15, !dbg !6621
  ret void, !dbg !6622
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6623 dso_local void @__stop_tty(ptr noundef) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irq(ptr noundef %lock) #3 align 16 !dbg !6624 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6626, metadata !DIExpression()), !dbg !6627
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6628
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !6628
  call void @_raw_spin_unlock_irq(ptr noundef %1) #15, !dbg !6628
  ret void, !dbg !6629
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6630 dso_local void @__start_tty(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6631 dso_local i32 @tty_send_xchar(ptr noundef, i8 noundef zeroext) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !6634 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6642, metadata !DIExpression()), !dbg !6644
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6643, metadata !DIExpression()), !dbg !6645
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6646
  %1 = load i64, ptr %size.addr, align 8, !dbg !6647
  %conv = trunc i64 %1 to i32, !dbg !6647
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #15, !dbg !6648
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6649
  %3 = load i64, ptr %size.addr, align 8, !dbg !6649
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #15, !dbg !6649
  ret void, !dbg !6650
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_and_clear_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !6651 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6654, metadata !DIExpression()), !dbg !6658
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6655, metadata !DIExpression()), !dbg !6659
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #16, !dbg !6660
  call void @llvm.dbg.declare(metadata ptr %c, metadata !6656, metadata !DIExpression()), !dbg !6660
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6660
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6660
  %2 = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btrq  $2, $0\0A\09/* output condition code c*/\0A", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1, ptr elementtype(i64) %0) #16, !dbg !6660, !srcloc !6661
  %3 = icmp ult i8 %2, 2, !dbg !6660
  call void @llvm.assume(i1 %3), !dbg !6660
  store i8 %2, ptr %c, align 1, !dbg !6660
  %4 = load i8, ptr %c, align 1, !dbg !6660, !range !5393, !noundef !590
  %tobool = trunc i8 %4 to i1, !dbg !6660
  %frombool = zext i1 %tobool to i8, !dbg !6660
  store i8 %frombool, ptr %tmp, align 1, !dbg !6660
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #16, !dbg !6662
  %5 = load i8, ptr %tmp, align 1, !dbg !6660, !range !5393, !noundef !590
  %tobool1 = trunc i8 %5 to i1, !dbg !6660
  ret i1 %tobool1, !dbg !6663
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !6664 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6669, metadata !DIExpression()), !dbg !6671
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6670, metadata !DIExpression()), !dbg !6672
  ret i1 true, !dbg !6673
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #5 align 16 !dbg !6674 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6679, metadata !DIExpression()), !dbg !6682
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6680, metadata !DIExpression()), !dbg !6683
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6681, metadata !DIExpression()), !dbg !6684
  ret void, !dbg !6685
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #12

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !6686 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6693, metadata !DIExpression()), !dbg !6698
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6694, metadata !DIExpression()), !dbg !6699
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #16, !dbg !6700
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6695, metadata !DIExpression()), !dbg !6701
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6702
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6703
  %div = udiv i64 %1, 64, !dbg !6703
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6704
  store ptr %add.ptr, ptr %p, align 8, !dbg !6701
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #16, !dbg !6705
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !6696, metadata !DIExpression()), !dbg !6706
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6707
  %rem = urem i64 %2, 64, !dbg !6707
  %shl = shl i64 1, %rem, !dbg !6707
  store i64 %shl, ptr %mask, align 8, !dbg !6706
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #16, !dbg !6708
  call void @llvm.dbg.declare(metadata ptr %val, metadata !6697, metadata !DIExpression()), !dbg !6709
  %3 = load ptr, ptr %p, align 8, !dbg !6710
  %4 = load i64, ptr %3, align 8, !dbg !6711
  store i64 %4, ptr %val, align 8, !dbg !6709
  %5 = load i64, ptr %val, align 8, !dbg !6712
  %6 = load i64, ptr %mask, align 8, !dbg !6713
  %and = and i64 %5, %6, !dbg !6714
  %tobool = icmp ne i64 %and, 0, !dbg !6715
  %lnot = xor i1 %tobool, true, !dbg !6715
  %lnot1 = xor i1 %lnot, true, !dbg !6716
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #16, !dbg !6717
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #16, !dbg !6717
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #16, !dbg !6717
  ret i1 %lnot1, !dbg !6718
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !6719 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6722, metadata !DIExpression()), !dbg !6724
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6723, metadata !DIExpression()), !dbg !6725
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6726
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6727
  %div = udiv i64 %1, 64, !dbg !6727
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6728
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #15, !dbg !6729
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6730
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6731
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #15, !dbg !6732
  ret i1 %call, !dbg !6733
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !6734 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6736, metadata !DIExpression()), !dbg !6738
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6737, metadata !DIExpression()), !dbg !6739
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6740
  %1 = load i64, ptr %size.addr, align 8, !dbg !6741
  %conv = trunc i64 %1 to i32, !dbg !6741
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #15, !dbg !6742
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6743
  %3 = load i64, ptr %size.addr, align 8, !dbg !6743
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #15, !dbg !6743
  ret void, !dbg !6744
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !6745 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6747, metadata !DIExpression()), !dbg !6749
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6748, metadata !DIExpression()), !dbg !6750
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6751
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6752
  br i1 %1, label %cond.true, label %cond.false, !dbg !6752

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6753
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6754
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #15, !dbg !6755
  %conv = zext i1 %call to i32, !dbg !6755
  br label %cond.end, !dbg !6752

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !6756
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !6757
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #15, !dbg !6758
  %conv2 = zext i1 %call1 to i32, !dbg !6758
  br label %cond.end, !dbg !6752

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !6752
  %tobool = icmp ne i32 %cond, 0, !dbg !6752
  ret i1 %tobool, !dbg !6759
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !6760 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6762, metadata !DIExpression()), !dbg !6764
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6763, metadata !DIExpression()), !dbg !6765
  ret i1 true, !dbg !6766
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !6767 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6771, metadata !DIExpression()), !dbg !6773
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6772, metadata !DIExpression()), !dbg !6774
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6775
  %and = and i64 %0, 63, !dbg !6776
  %shl = shl i64 1, %and, !dbg !6777
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !6778
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6779
  %shr = ashr i64 %2, 6, !dbg !6780
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !6778
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !6778
  %and1 = and i64 %shl, %3, !dbg !6781
  %cmp = icmp ne i64 %and1, 0, !dbg !6782
  ret i1 %cmp, !dbg !6783
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !6784 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6786, metadata !DIExpression()), !dbg !6789
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6787, metadata !DIExpression()), !dbg !6790
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #16, !dbg !6791
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !6788, metadata !DIExpression()), !dbg !6792
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6793
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6794
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #16, !dbg !6795, !srcloc !6796
  %3 = icmp ult i8 %2, 2, !dbg !6795
  call void @llvm.assume(i1 %3), !dbg !6795
  store i8 %2, ptr %oldbit, align 1, !dbg !6795
  %4 = load i8, ptr %oldbit, align 1, !dbg !6797, !range !5393, !noundef !590
  %tobool = trunc i8 %4 to i1, !dbg !6797
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #16, !dbg !6798
  ret i1 %tobool, !dbg !6799
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !6800 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6802, metadata !DIExpression()), !dbg !6804
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6803, metadata !DIExpression()), !dbg !6805
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6806
  %1 = load i64, ptr %size.addr, align 8, !dbg !6807
  %conv = trunc i64 %1 to i32, !dbg !6807
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #15, !dbg !6808
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6809
  %3 = load i64, ptr %size.addr, align 8, !dbg !6809
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #15, !dbg !6809
  ret void, !dbg !6810
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_set_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !6811 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6813, metadata !DIExpression()), !dbg !6815
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6814, metadata !DIExpression()), !dbg !6816
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6817
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6819
  br i1 %1, label %if.then, label %if.else, !dbg !6820

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !6821
  %3 = load i64, ptr %nr.addr, align 8, !dbg !6821
  %shr = ashr i64 %3, 3, !dbg !6821
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !6821
  %4 = load i64, ptr %nr.addr, align 8, !dbg !6823
  %and = and i64 %4, 7, !dbg !6823
  %sh_prom = trunc i64 %and to i32, !dbg !6823
  %shl = shl i32 1, %sh_prom, !dbg !6823
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %shl, ptr elementtype(i8) %add.ptr) #16, !dbg !6824, !srcloc !6825
  br label %if.end, !dbg !6826

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !6827
  %6 = load i64, ptr %nr.addr, align 8, !dbg !6829
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #16, !dbg !6830, !srcloc !6831
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !6832
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_clear_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !6833 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6835, metadata !DIExpression()), !dbg !6837
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6836, metadata !DIExpression()), !dbg !6838
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6839
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6841
  br i1 %1, label %if.then, label %if.else, !dbg !6842

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !6843
  %3 = load i64, ptr %nr.addr, align 8, !dbg !6843
  %shr = ashr i64 %3, 3, !dbg !6843
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !6843
  %4 = load i64, ptr %nr.addr, align 8, !dbg !6845
  %and = and i64 %4, 7, !dbg !6845
  %sh_prom = trunc i64 %and to i32, !dbg !6845
  %shl = shl i32 1, %sh_prom, !dbg !6845
  %not = xor i32 %shl, -1, !dbg !6846
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %not, ptr elementtype(i8) %add.ptr) #16, !dbg !6847, !srcloc !6848
  br label %if.end, !dbg !6849

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !6850
  %6 = load i64, ptr %nr.addr, align 8, !dbg !6852
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #16, !dbg !6853, !srcloc !6854
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !6855
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__might_resched() #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @check_copy_size(ptr noundef %addr, i64 noundef %bytes, i1 noundef zeroext %is_source) #3 align 16 !dbg !6856 {
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
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6860, metadata !DIExpression()), !dbg !6870
  store i64 %bytes, ptr %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !6861, metadata !DIExpression()), !dbg !6871
  %frombool = zext i1 %is_source to i8
  store i8 %frombool, ptr %is_source.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %is_source.addr, metadata !6862, metadata !DIExpression()), !dbg !6872
  call void @llvm.lifetime.start.p0(i64 4, ptr %sz) #16, !dbg !6873
  call void @llvm.dbg.declare(metadata ptr %sz, metadata !6863, metadata !DIExpression()), !dbg !6874
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6875
  %1 = call i64 @llvm.objectsize.i64.p0(ptr %0, i1 false, i1 true, i1 false), !dbg !6876
  %conv = trunc i64 %1 to i32, !dbg !6876
  store i32 %conv, ptr %sz, align 4, !dbg !6874
  %2 = load i32, ptr %sz, align 4, !dbg !6877
  %cmp = icmp sge i32 %2, 0, !dbg !6877
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !6877

land.rhs:                                         ; preds = %entry
  %3 = load i32, ptr %sz, align 4, !dbg !6877
  %conv2 = sext i32 %3 to i64, !dbg !6877
  %4 = load i64, ptr %bytes.addr, align 8, !dbg !6877
  %cmp3 = icmp ult i64 %conv2, %4, !dbg !6877
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ], !dbg !6879
  %lnot = xor i1 %5, true, !dbg !6877
  %lnot5 = xor i1 %lnot, true, !dbg !6877
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !6877
  %conv6 = sext i32 %lnot.ext to i64, !dbg !6877
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 0), !dbg !6877
  %tobool = icmp ne i64 %expval, 0, !dbg !6877
  br i1 %tobool, label %if.then, label %if.end12, !dbg !6880

if.then:                                          ; preds = %land.end
  %6 = load i64, ptr %bytes.addr, align 8, !dbg !6881
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !6884
  br i1 %7, label %if.else, label %if.then7, !dbg !6885

if.then7:                                         ; preds = %if.then
  %8 = load i32, ptr %sz, align 4, !dbg !6886
  %9 = load i64, ptr %bytes.addr, align 8, !dbg !6887
  call void @copy_overflow(i32 noundef %8, i64 noundef %9) #15, !dbg !6888
  br label %if.end11, !dbg !6888

if.else:                                          ; preds = %if.then
  %10 = load i8, ptr %is_source.addr, align 1, !dbg !6889, !range !5393, !noundef !590
  %tobool8 = trunc i8 %10 to i1, !dbg !6889
  br i1 %tobool8, label %if.then9, label %if.else10, !dbg !6891

if.then9:                                         ; preds = %if.else
  call void @__bad_copy_from() #15, !dbg !6892, !srcloc !6893
  br label %if.end, !dbg !6892

if.else10:                                        ; preds = %if.else
  call void @__bad_copy_to() #15, !dbg !6894, !srcloc !6895
  br label %if.end

if.end:                                           ; preds = %if.else10, %if.then9
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then7
  store i1 false, ptr %retval, align 1, !dbg !6896
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6896

if.end12:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !6897
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6864, metadata !DIExpression()), !dbg !6897
  %11 = load i64, ptr %bytes.addr, align 8, !dbg !6897
  %cmp13 = icmp ugt i64 %11, 2147483647, !dbg !6897
  %lnot15 = xor i1 %cmp13, true, !dbg !6897
  %lnot17 = xor i1 %lnot15, true, !dbg !6897
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !6897
  store i32 %lnot.ext18, ptr %__ret_warn_on, align 4, !dbg !6897
  %12 = load i32, ptr %__ret_warn_on, align 4, !dbg !6898
  %tobool19 = icmp ne i32 %12, 0, !dbg !6898
  %lnot20 = xor i1 %tobool19, true, !dbg !6898
  %lnot22 = xor i1 %lnot20, true, !dbg !6898
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !6898
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !6898
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !6898
  %tobool26 = icmp ne i64 %expval25, 0, !dbg !6898
  br i1 %tobool26, label %if.then27, label %if.end37, !dbg !6897

if.then27:                                        ; preds = %if.end12
  br label %do.body, !dbg !6898

do.body:                                          ; preds = %if.then27
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #16, !dbg !6899
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6867, metadata !DIExpression()), !dbg !6899
  store i32 2307, ptr %__flags, align 4, !dbg !6899
  br label %do.body28, !dbg !6899

do.body28:                                        ; preds = %do.body
  br label %do.cond, !dbg !6900

do.cond:                                          ; preds = %do.body28
  br label %do.end, !dbg !6900

do.end:                                           ; preds = %do.cond
  br label %do.body29, !dbg !6899

do.body29:                                        ; preds = %do.end
  %13 = load i32, ptr %__flags, align 4, !dbg !6902
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 249, i32 %13, i64 12) #16, !dbg !6902, !srcloc !6904
  br label %do.cond30, !dbg !6902

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !6902

do.end31:                                         ; preds = %do.cond30
  br label %do.body32, !dbg !6899

do.body32:                                        ; preds = %do.end31
  br label %do.cond33, !dbg !6905

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !6905

do.end34:                                         ; preds = %do.cond33
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #16, !dbg !6898
  br label %do.cond35, !dbg !6899

do.cond35:                                        ; preds = %do.end34
  br label %do.end36, !dbg !6899

do.end36:                                         ; preds = %do.cond35
  br label %if.end37, !dbg !6899

if.end37:                                         ; preds = %do.end36, %if.end12
  %14 = load i32, ptr %__ret_warn_on, align 4, !dbg !6897
  %tobool38 = icmp ne i32 %14, 0, !dbg !6897
  %lnot39 = xor i1 %tobool38, true, !dbg !6897
  %lnot41 = xor i1 %lnot39, true, !dbg !6897
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !6897
  %conv43 = sext i32 %lnot.ext42 to i64, !dbg !6897
  %expval44 = call i64 @llvm.expect.i64(i64 %conv43, i64 0), !dbg !6897
  store i64 %expval44, ptr %tmp, align 8, !dbg !6898
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !6907
  %15 = load i64, ptr %tmp, align 8, !dbg !6897
  %tobool45 = icmp ne i64 %15, 0, !dbg !6907
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !6908

if.then46:                                        ; preds = %if.end37
  store i1 false, ptr %retval, align 1, !dbg !6909
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6909

if.end47:                                         ; preds = %if.end37
  %16 = load ptr, ptr %addr.addr, align 8, !dbg !6910
  %17 = load i64, ptr %bytes.addr, align 8, !dbg !6911
  %18 = load i8, ptr %is_source.addr, align 1, !dbg !6912, !range !5393, !noundef !590
  %tobool48 = trunc i8 %18 to i1, !dbg !6912
  call void @check_object_size(ptr noundef %16, i64 noundef %17, i1 noundef zeroext %tobool48) #15, !dbg !6913
  store i1 true, ptr %retval, align 1, !dbg !6914
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6914

cleanup:                                          ; preds = %if.end47, %if.then46, %if.end11
  call void @llvm.lifetime.end.p0(i64 4, ptr %sz) #16, !dbg !6915
  %19 = load i1, ptr %retval, align 1, !dbg !6915
  ret i1 %19, !dbg !6915
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6916 dso_local i64 @_copy_from_user(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @copy_overflow(i32 noundef %size, i64 noundef %count) #5 align 16 !dbg !6917 {
entry:
  %size.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6921, metadata !DIExpression()), !dbg !6923
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !6922, metadata !DIExpression()), !dbg !6924
  %0 = load i32, ptr %size.addr, align 4, !dbg !6925
  %1 = load i64, ptr %count.addr, align 8, !dbg !6927
  call void @__copy_overflow(i32 noundef %0, i64 noundef %1) #15, !dbg !6928
  ret void, !dbg !6929
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6930 dso_local void @__bad_copy_from() #13

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6931 dso_local void @__bad_copy_to() #14

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @check_object_size(ptr noundef %ptr, i64 noundef %n, i1 noundef zeroext %to_user) #5 align 16 !dbg !6932 {
entry:
  %ptr.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6936, metadata !DIExpression()), !dbg !6939
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6937, metadata !DIExpression()), !dbg !6940
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, ptr %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %to_user.addr, metadata !6938, metadata !DIExpression()), !dbg !6941
  ret void, !dbg !6942
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6943 dso_local void @__copy_overflow(i32 noundef, i64 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6944 dso_local i64 @_copy_to_user(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6945 dso_local void @down_read(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6946 dso_local void @up_read(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6947 dso_local i32 @tty_termios_input_baud_rate(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6950 dso_local i32 @tty_termios_baud_rate(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6951 dso_local void @schedule() #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6952 dso_local i32 @tty_write_lock(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6953 dso_local void @tty_write_unlock(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @signal_pending(ptr noundef %p) #5 align 16 !dbg !6954 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6958, metadata !DIExpression()), !dbg !6959
  %0 = load ptr, ptr %p.addr, align 8, !dbg !6960
  %call = call i32 @test_tsk_thread_flag(ptr noundef %0, i32 noundef 17) #15, !dbg !6960
  %tobool = icmp ne i32 %call, 0, !dbg !6960
  %lnot = xor i1 %tobool, true, !dbg !6960
  %lnot1 = xor i1 %lnot, true, !dbg !6960
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6960
  %conv = sext i32 %lnot.ext to i64, !dbg !6960
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6960
  %tobool2 = icmp ne i64 %expval, 0, !dbg !6960
  br i1 %tobool2, label %if.then, label %if.end, !dbg !6962

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !6963
  br label %return, !dbg !6963

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %p.addr, align 8, !dbg !6964
  %call3 = call i32 @task_sigpending(ptr noundef %1) #15, !dbg !6965
  store i32 %call3, ptr %retval, align 4, !dbg !6966
  br label %return, !dbg !6966

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6967
  ret i32 %2, !dbg !6967
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #3 align 16 !dbg !6968 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #16, !dbg !6979
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !6973, metadata !DIExpression()), !dbg !6979
  br label %do.body, !dbg !6979

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #16, !dbg !6980
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6975, metadata !DIExpression()), !dbg !6980
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6980
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6980
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #16, !dbg !6979
  br label %do.cond, !dbg !6980

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6980

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #16, !dbg !6981
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !6977, metadata !DIExpression()), !dbg !6981
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #17, !dbg !6981, !srcloc !6982
  store i64 %1, ptr %pfo_val__, align 8, !dbg !6981
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !6981
  %3 = inttoptr i64 %2 to ptr, !dbg !6981
  store ptr %3, ptr %tmp, align 8, !dbg !6981
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #16, !dbg !6979
  %4 = load ptr, ptr %tmp, align 8, !dbg !6981
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !6979
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !6979
  store ptr %5, ptr %tmp1, align 8, !dbg !6979
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #16, !dbg !6983
  %6 = load ptr, ptr %tmp1, align 8, !dbg !6979
  ret ptr %6, !dbg !6984
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @test_tsk_thread_flag(ptr noundef %tsk, i32 noundef %flag) #5 align 16 !dbg !6985 {
entry:
  %tsk.addr = alloca ptr, align 8
  %flag.addr = alloca i32, align 4
  store ptr %tsk, ptr %tsk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tsk.addr, metadata !6989, metadata !DIExpression()), !dbg !6991
  store i32 %flag, ptr %flag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flag.addr, metadata !6990, metadata !DIExpression()), !dbg !6992
  %0 = load ptr, ptr %tsk.addr, align 8, !dbg !6993
  %thread_info = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 0, !dbg !6993
  %1 = load i32, ptr %flag.addr, align 4, !dbg !6994
  %call = call i32 @test_ti_thread_flag(ptr noundef %thread_info, i32 noundef %1) #15, !dbg !6995
  ret i32 %call, !dbg !6996
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @task_sigpending(ptr noundef %p) #5 align 16 !dbg !6997 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6999, metadata !DIExpression()), !dbg !7000
  %0 = load ptr, ptr %p.addr, align 8, !dbg !7001
  %call = call i32 @test_tsk_thread_flag(ptr noundef %0, i32 noundef 2) #15, !dbg !7001
  %tobool = icmp ne i32 %call, 0, !dbg !7001
  %lnot = xor i1 %tobool, true, !dbg !7001
  %lnot1 = xor i1 %lnot, true, !dbg !7001
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !7001
  %conv = sext i32 %lnot.ext to i64, !dbg !7001
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !7001
  %conv2 = trunc i64 %expval to i32, !dbg !7001
  ret i32 %conv2, !dbg !7002
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @test_ti_thread_flag(ptr noundef %ti, i32 noundef %flag) #5 align 16 !dbg !7003 {
entry:
  %ti.addr = alloca ptr, align 8
  %flag.addr = alloca i32, align 4
  store ptr %ti, ptr %ti.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ti.addr, metadata !7008, metadata !DIExpression()), !dbg !7010
  store i32 %flag, ptr %flag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flag.addr, metadata !7009, metadata !DIExpression()), !dbg !7011
  %0 = load i32, ptr %flag.addr, align 4, !dbg !7012
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !7012
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !7012

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %ti.addr, align 8, !dbg !7012
  %flags = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 0, !dbg !7012
  %3 = ptrtoint ptr %flags to i64, !dbg !7012
  %cmp = icmp ne i64 %3, 0, !dbg !7012
  %conv = zext i1 %cmp to i32, !dbg !7012
  %4 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !7012
  br i1 %4, label %land.lhs.true1, label %cond.false, !dbg !7012

land.lhs.true1:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %ti.addr, align 8, !dbg !7012
  %flags2 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 0, !dbg !7012
  %6 = ptrtoint ptr %flags2 to i64, !dbg !7012
  %cmp3 = icmp ne i64 %6, 0, !dbg !7012
  br i1 %cmp3, label %land.lhs.true5, label %cond.false, !dbg !7012

land.lhs.true5:                                   ; preds = %land.lhs.true1
  %7 = load ptr, ptr %ti.addr, align 8, !dbg !7012
  %flags6 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 0, !dbg !7012
  %8 = load i64, ptr %flags6, align 8, !dbg !7012
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !7012
  br i1 %9, label %cond.true, label %cond.false, !dbg !7012

cond.true:                                        ; preds = %land.lhs.true5
  %10 = load i32, ptr %flag.addr, align 4, !dbg !7012
  %conv7 = sext i32 %10 to i64, !dbg !7012
  %11 = load ptr, ptr %ti.addr, align 8, !dbg !7012
  %flags8 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 0, !dbg !7012
  %call = call zeroext i1 @const_test_bit(i64 noundef %conv7, ptr noundef %flags8) #15, !dbg !7012
  %conv9 = zext i1 %call to i32, !dbg !7012
  br label %cond.end, !dbg !7012

cond.false:                                       ; preds = %land.lhs.true5, %land.lhs.true1, %land.lhs.true, %entry
  %12 = load i32, ptr %flag.addr, align 4, !dbg !7012
  %conv10 = sext i32 %12 to i64, !dbg !7012
  %13 = load ptr, ptr %ti.addr, align 8, !dbg !7012
  %flags11 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 0, !dbg !7012
  %call12 = call zeroext i1 @_test_bit(i64 noundef %conv10, ptr noundef %flags11) #15, !dbg !7012
  %conv13 = zext i1 %call12 to i32, !dbg !7012
  br label %cond.end, !dbg !7012

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv9, %cond.true ], [ %conv13, %cond.false ], !dbg !7012
  ret i32 %cond, !dbg !7013
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7014 dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7017 dso_local void @_raw_spin_lock_irq(ptr noundef) #2 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7022 dso_local void @_raw_spin_unlock_irq(ptr noundef) #2 section ".spinlock.text"

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #10 = { nocallback nounwind }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { noredzone null_pointer_is_valid "dontcall-error"="copy source size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone null_pointer_is_valid "dontcall-error"="copy destination size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { noredzone }
attributes #16 = { nounwind }
attributes #17 = { nounwind memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!5110}
!llvm.module.flags = !{!5111, !5112, !5113, !5114, !5115, !5116, !5117, !5118}
!llvm.ident = !{!5119}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_tty_chars_in_buffer287", scope: !2, file: !3, line: 57, type: !147, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/tty/.tty_ioctl.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/tty/tty_ioctl\22 -D KBUILD_BASENAME=\22tty_ioctl\22 -D KBUILD_MODNAME=\22tty_ioctl\22 -D __KBUILD_MODNAME=kmod_tty_ioctl -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/tty/tty_ioctl.ll drivers/tty/tty_ioctl.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !146, globals: !5070, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/tty/tty_ioctl.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d3822e77a7002061122f90e5f010f93f")
!4 = !{!5, !13, !18, !26, !42, !50, !56, !61, !67, !74, !81, !87, !93, !100, !108, !116, !125, !130, !135, !141}
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
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !27, line: 1325, baseType: !7, size: 32, elements: !28)
!27 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!28 = !{!29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41}
!29 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!30 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!31 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!32 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!33 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!34 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!35 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!36 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!37 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!38 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!39 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!40 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!41 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !43, line: 68, baseType: !7, size: 32, elements: !44)
!43 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!44 = !{!45, !46, !47, !48, !49}
!45 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!46 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!47 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!48 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!49 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !51, line: 54, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!52 = !{!53, !54, !55}
!53 = !DIEnumerator(name: "USRQUOTA", value: 0)
!54 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!55 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !57, line: 65, baseType: !7, size: 32, elements: !58)
!57 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!58 = !{!59, !60}
!59 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!60 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!61 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !62, line: 16, baseType: !7, size: 32, elements: !63)
!62 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!63 = !{!64, !65, !66}
!64 = !DIEnumerator(name: "TT_NONE", value: 0)
!65 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!66 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !68, line: 51, baseType: !7, size: 32, elements: !69)
!68 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!69 = !{!70, !71, !72, !73}
!70 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!71 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!72 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!73 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
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
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !142, line: 10, baseType: !7, size: 32, elements: !143)
!142 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!143 = !{!144, !145}
!144 = !DIEnumerator(name: "false", value: 0)
!145 = !DIEnumerator(name: "true", value: 1)
!146 = !{!147, !148, !149, !166, !178, !179, !180, !7, !185, !188, !190, !191, !194, !109, !196, !210, !211, !187}
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!148 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "termios", file: !151, line: 10, size: 288, elements: !152)
!151 = !DIFile(filename: "./include/uapi/asm-generic/termbits.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "384ee64abd990f699250de204a5d4f4a")
!152 = !{!153, !155, !156, !157, !158, !162}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "c_iflag", scope: !150, file: !151, line: 11, baseType: !154, size: 32)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcflag_t", file: !151, line: 7, baseType: !7)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "c_oflag", scope: !150, file: !151, line: 12, baseType: !154, size: 32, offset: 32)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "c_cflag", scope: !150, file: !151, line: 13, baseType: !154, size: 32, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "c_lflag", scope: !150, file: !151, line: 14, baseType: !154, size: 32, offset: 96)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "c_line", scope: !150, file: !151, line: 15, baseType: !159, size: 8, offset: 128)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "cc_t", file: !160, line: 5, baseType: !161)
!160 = !DIFile(filename: "./include/uapi/asm-generic/termbits-common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d95a38d69bf7d3997b27d0ffed186b8d")
!161 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "c_cc", scope: !150, file: !151, line: 16, baseType: !163, size: 152, offset: 136)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 152, elements: !164)
!164 = !{!165}
!165 = !DISubrange(count: 19)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "termios2", file: !151, line: 19, size: 352, elements: !168)
!168 = !{!169, !170, !171, !172, !173, !174, !175, !177}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "c_iflag", scope: !167, file: !151, line: 20, baseType: !154, size: 32)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "c_oflag", scope: !167, file: !151, line: 21, baseType: !154, size: 32, offset: 32)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "c_cflag", scope: !167, file: !151, line: 22, baseType: !154, size: 32, offset: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "c_lflag", scope: !167, file: !151, line: 23, baseType: !154, size: 32, offset: 96)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "c_line", scope: !167, file: !151, line: 24, baseType: !159, size: 8, offset: 128)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "c_cc", scope: !167, file: !151, line: 25, baseType: !163, size: 152, offset: 136)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "c_ispeed", scope: !167, file: !151, line: 26, baseType: !176, size: 32, offset: 288)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "speed_t", file: !160, line: 6, baseType: !7)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "c_ospeed", scope: !167, file: !151, line: 27, baseType: !176, size: 32, offset: 320)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !181, line: 23, baseType: !182)
!181 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !183, line: 31, baseType: !184)
!183 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!184 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !186, line: 42, baseType: !187)
!186 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!187 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !187)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !193)
!193 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !148)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "termio", file: !198, line: 23, size: 144, elements: !199)
!198 = !DIFile(filename: "./include/uapi/asm-generic/termios.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "83182bb4b2d72f890f10e6cd5fb4db00")
!199 = !{!200, !202, !203, !204, !205, !206}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "c_iflag", scope: !197, file: !198, line: 24, baseType: !201, size: 16)
!201 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "c_oflag", scope: !197, file: !198, line: 25, baseType: !201, size: 16, offset: 16)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "c_cflag", scope: !197, file: !198, line: 26, baseType: !201, size: 16, offset: 32)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "c_lflag", scope: !197, file: !198, line: 27, baseType: !201, size: 16, offset: 48)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "c_line", scope: !197, file: !198, line: 28, baseType: !161, size: 8, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "c_cc", scope: !197, file: !198, line: 29, baseType: !207, size: 64, offset: 72)
!207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 64, elements: !208)
!208 = !{!209}
!209 = !DISubrange(count: 8)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !213, line: 746, size: 58368, elements: !214)
!213 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!214 = !{!215, !225, !226, !227, !237, !238, !239, !240, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !328, !339, !463, !467, !470, !501, !502, !503, !504, !515, !517, !518, !519, !520, !521, !522, !533, !534, !537, !538, !539, !540, !541, !542, !543, !544, !551, !552, !559, !560, !3319, !3320, !3321, !3322, !3323, !3324, !3325, !3326, !3327, !3328, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336, !3337, !3338, !3339, !3340, !3341, !3398, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3428, !3429, !3430, !3431, !3432, !3433, !3434, !3446, !3452, !3453, !3454, !3455, !3456, !3458, !3461, !3468, !3473, !3476, !3479, !3482, !3485, !4465, !4492, !4493, !4494, !4495, !4496, !4497, !4498, !4499, !4500, !4503, !4504, !4505, !4514, !4522, !4523, !4524, !4525, !4526, !4531, !4532, !4533, !4536, !4537, !4540, !4543, !4546, !4554, !4557, !4558, !4644, !4645, !4646, !4647, !4648, !4654, !4655, !4656, !4657, !4660, !4661, !4664, !4678, !4679, !4682, !4683, !4684, !4687, !4688, !4689, !4690, !4691, !4692, !4705, !4706, !4707, !4708, !4709, !4710, !4711, !4712, !4713, !4724, !4725, !4731, !4734, !4735, !4736, !4737, !4738, !4739, !4740, !4743, !4815, !4817, !4818, !4819, !4820, !4821, !4822, !4837, !4838, !4839, !4840, !4841, !4842, !4843, !4844, !4845, !4846, !4847, !4848, !4849, !4850}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !212, file: !213, line: 752, baseType: !216, size: 192)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !217, line: 56, size: 192, elements: !218)
!217 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!218 = !{!219, !220, !221, !224}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !216, file: !217, line: 57, baseType: !187, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !216, file: !217, line: 58, baseType: !187, size: 64, offset: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !216, file: !217, line: 59, baseType: !222, size: 32, offset: 128)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !181, line: 21, baseType: !223)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !183, line: 27, baseType: !7)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !216, file: !217, line: 61, baseType: !222, size: 32, offset: 160)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !212, file: !213, line: 754, baseType: !7, size: 32, offset: 192)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !212, file: !213, line: 767, baseType: !147, size: 64, offset: 256)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !212, file: !213, line: 768, baseType: !228, size: 32, offset: 320)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !229, line: 113, baseType: !230)
!229 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !229, line: 111, size: 32, elements: !231)
!231 = !{!232}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !230, file: !229, line: 112, baseType: !233, size: 32)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !186, line: 174, baseType: !234)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !186, line: 172, size: 32, elements: !235)
!235 = !{!236}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !234, file: !186, line: 173, baseType: !109, size: 32)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !212, file: !213, line: 770, baseType: !7, size: 32, offset: 352)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !212, file: !213, line: 771, baseType: !7, size: 32, offset: 384)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !212, file: !213, line: 774, baseType: !109, size: 32, offset: 416)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !212, file: !213, line: 775, baseType: !241, size: 128, offset: 448)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !242, line: 58, size: 128, elements: !243)
!242 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!243 = !{!244, !250, !255, !258}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !241, file: !242, line: 59, baseType: !245, size: 64)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !246, line: 60, size: 64, elements: !247)
!246 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!247 = !{!248}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !245, file: !246, line: 61, baseType: !249, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, scope: !241, file: !242, line: 60, baseType: !251, size: 32, offset: 64)
!251 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !241, file: !242, line: 60, size: 32, elements: !252)
!252 = !{!253, !254}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !251, file: !242, line: 61, baseType: !7, size: 32)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !251, file: !242, line: 62, baseType: !233, size: 32)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !241, file: !242, line: 65, baseType: !256, size: 16, offset: 96)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !181, line: 19, baseType: !257)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !183, line: 24, baseType: !201)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !241, file: !242, line: 65, baseType: !256, size: 16, offset: 112)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !212, file: !213, line: 776, baseType: !7, size: 32, offset: 576)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !212, file: !213, line: 777, baseType: !187, size: 64, offset: 640)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !212, file: !213, line: 778, baseType: !211, size: 64, offset: 704)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !212, file: !213, line: 787, baseType: !109, size: 32, offset: 768)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !212, file: !213, line: 788, baseType: !109, size: 32, offset: 800)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !212, file: !213, line: 790, baseType: !109, size: 32, offset: 832)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !212, file: !213, line: 792, baseType: !109, size: 32, offset: 864)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !212, file: !213, line: 793, baseType: !109, size: 32, offset: 896)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !212, file: !213, line: 794, baseType: !109, size: 32, offset: 928)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !212, file: !213, line: 795, baseType: !7, size: 32, offset: 960)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !212, file: !213, line: 797, baseType: !270, size: 2048, offset: 1024)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !213, line: 551, size: 2048, elements: !271)
!271 = !{!272, !277, !285, !286, !287, !293, !294, !295, !296, !297, !298, !302, !303, !304, !305, !307, !310, !311, !312}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !270, file: !213, line: 553, baseType: !273, size: 128)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !213, line: 411, size: 128, elements: !274)
!274 = !{!275, !276}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !273, file: !213, line: 412, baseType: !187, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !273, file: !213, line: 413, baseType: !222, size: 32, offset: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !270, file: !213, line: 554, baseType: !278, size: 192, align: 64, offset: 128)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !279, line: 5, size: 192, align: 64, elements: !280)
!279 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!280 = !{!281, !282, !284}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !278, file: !279, line: 6, baseType: !187, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !278, file: !279, line: 7, baseType: !283, size: 64, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !278, file: !279, line: 8, baseType: !283, size: 64, offset: 128)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !270, file: !213, line: 555, baseType: !180, size: 64, offset: 320)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !270, file: !213, line: 556, baseType: !180, size: 64, offset: 384)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !270, file: !213, line: 558, baseType: !288, size: 128, offset: 448)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !186, line: 190, size: 128, elements: !289)
!289 = !{!290, !292}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !288, file: !186, line: 191, baseType: !291, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !288, file: !186, line: 191, baseType: !291, size: 64, offset: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !270, file: !213, line: 559, baseType: !7, size: 32, offset: 576)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !270, file: !213, line: 561, baseType: !180, size: 64, offset: 640)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !270, file: !213, line: 562, baseType: !180, size: 64, offset: 704)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !270, file: !213, line: 563, baseType: !180, size: 64, offset: 768)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !270, file: !213, line: 564, baseType: !180, size: 64, offset: 832)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !270, file: !213, line: 565, baseType: !299, size: 64, offset: 896)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !181, line: 22, baseType: !300)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !183, line: 30, baseType: !301)
!301 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !270, file: !213, line: 566, baseType: !180, size: 64, offset: 960)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !270, file: !213, line: 568, baseType: !180, size: 64, offset: 1024)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !270, file: !213, line: 571, baseType: !109, size: 32, offset: 1088)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !270, file: !213, line: 572, baseType: !306, size: 64, offset: 1152)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !270, file: !213, line: 574, baseType: !308, size: 64, offset: 1216)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !213, line: 49, flags: DIFlagFwdDecl)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !270, file: !213, line: 576, baseType: !308, size: 64, offset: 1280)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !270, file: !213, line: 578, baseType: !187, size: 64, offset: 1344)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !270, file: !213, line: 588, baseType: !313, size: 512, align: 512, offset: 1536)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !213, line: 497, size: 512, align: 512, elements: !314)
!314 = !{!315, !316, !317, !318, !319, !320, !321, !322, !323}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !313, file: !213, line: 498, baseType: !180, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !313, file: !213, line: 499, baseType: !180, size: 64, offset: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !313, file: !213, line: 500, baseType: !180, size: 64, offset: 128)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !313, file: !213, line: 501, baseType: !222, size: 32, offset: 192)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !313, file: !213, line: 502, baseType: !222, size: 32, offset: 224)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !313, file: !213, line: 503, baseType: !187, size: 64, offset: 256)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !313, file: !213, line: 504, baseType: !187, size: 64, offset: 320)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !313, file: !213, line: 505, baseType: !187, size: 64, offset: 384)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !313, file: !213, line: 506, baseType: !324, size: 64, align: 64, offset: 448)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !213, line: 445, size: 64, align: 64, elements: !325)
!325 = !{!326, !327}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !324, file: !213, line: 446, baseType: !7, size: 32)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !324, file: !213, line: 447, baseType: !7, size: 32, offset: 32)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !212, file: !213, line: 798, baseType: !329, size: 384, offset: 3072)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !213, line: 592, size: 384, elements: !330)
!330 = !{!331, !332, !333, !334, !335, !336, !337}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !329, file: !213, line: 593, baseType: !288, size: 128)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !329, file: !213, line: 594, baseType: !187, size: 64, offset: 128)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !329, file: !213, line: 595, baseType: !187, size: 64, offset: 192)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !329, file: !213, line: 596, baseType: !7, size: 32, offset: 256)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !329, file: !213, line: 597, baseType: !201, size: 16, offset: 288)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !329, file: !213, line: 598, baseType: !201, size: 16, offset: 304)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !329, file: !213, line: 600, baseType: !338, size: 64, offset: 320)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !212, file: !213, line: 799, baseType: !340, size: 1792, offset: 3456)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !213, line: 610, size: 1792, elements: !341)
!341 = !{!342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !460, !461}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !340, file: !213, line: 611, baseType: !278, size: 192, align: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !340, file: !213, line: 618, baseType: !180, size: 64, offset: 192)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !340, file: !213, line: 619, baseType: !180, size: 64, offset: 256)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !340, file: !213, line: 620, baseType: !180, size: 64, offset: 320)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !340, file: !213, line: 621, baseType: !180, size: 64, offset: 384)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !340, file: !213, line: 622, baseType: !180, size: 64, offset: 448)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !340, file: !213, line: 629, baseType: !299, size: 64, offset: 512)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !340, file: !213, line: 630, baseType: !180, size: 64, offset: 576)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !340, file: !213, line: 631, baseType: !7, size: 32, offset: 640)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !340, file: !213, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !340, file: !213, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !340, file: !213, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !340, file: !213, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !340, file: !213, line: 662, baseType: !356, size: 512, offset: 704)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !57, line: 118, size: 512, elements: !357)
!357 = !{!358, !366, !367, !372, !456, !457, !458, !459}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !356, file: !57, line: 119, baseType: !359, size: 256)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !360, line: 9, size: 256, elements: !361)
!360 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!361 = !{!362, !363}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !359, file: !360, line: 10, baseType: !278, size: 192, align: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !359, file: !360, line: 11, baseType: !364, size: 64, offset: 192)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !365, line: 29, baseType: !299)
!365 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!366 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !356, file: !57, line: 120, baseType: !364, size: 64, offset: 256)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !356, file: !57, line: 121, baseType: !368, size: 64, offset: 320)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DISubroutineType(types: !370)
!370 = !{!56, !371}
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !356, file: !57, line: 122, baseType: !373, size: 64, offset: 384)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !57, line: 159, size: 512, align: 512, elements: !375)
!375 = !{!376, !424, !425, !429, !439, !440, !451, !455}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !374, file: !57, line: 160, baseType: !377, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !57, line: 215, size: 4608, align: 512, elements: !379)
!379 = !{!380, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !378, file: !57, line: 216, baseType: !381, size: 32)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !382, line: 23, baseType: !383)
!382 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !382, line: 14, size: 32, elements: !384)
!384 = !{!385}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !383, file: !382, line: 15, baseType: !386, size: 32)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !387, line: 44, baseType: !388)
!387 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !387, line: 14, size: 32, elements: !389)
!389 = !{!390}
!390 = !DIDerivedType(tag: DW_TAG_member, scope: !388, file: !387, line: 15, baseType: !391, size: 32)
!391 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !388, file: !387, line: 15, size: 32, elements: !392)
!392 = !{!393, !394, !401}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !391, file: !387, line: 16, baseType: !233, size: 32)
!394 = !DIDerivedType(tag: DW_TAG_member, scope: !391, file: !387, line: 24, baseType: !395, size: 16)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !391, file: !387, line: 24, size: 16, elements: !396)
!396 = !{!397, !400}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !395, file: !387, line: 25, baseType: !398, size: 8)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !181, line: 17, baseType: !399)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !183, line: 21, baseType: !161)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !395, file: !387, line: 26, baseType: !398, size: 8, offset: 8)
!401 = !DIDerivedType(tag: DW_TAG_member, scope: !391, file: !387, line: 28, baseType: !402, size: 32)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !391, file: !387, line: 28, size: 32, elements: !403)
!403 = !{!404, !405}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !402, file: !387, line: 29, baseType: !256, size: 16)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !402, file: !387, line: 30, baseType: !256, size: 16, offset: 16)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !378, file: !57, line: 217, baseType: !7, size: 32, offset: 32)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !378, file: !57, line: 218, baseType: !7, size: 32, offset: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !378, file: !57, line: 219, baseType: !7, size: 32, offset: 96)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !378, file: !57, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !378, file: !57, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !378, file: !57, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !378, file: !57, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !378, file: !57, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !378, file: !57, line: 226, baseType: !7, size: 32, offset: 160)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !378, file: !57, line: 227, baseType: !201, size: 16, offset: 192)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !378, file: !57, line: 228, baseType: !201, size: 16, offset: 208)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !378, file: !57, line: 229, baseType: !7, size: 32, offset: 224)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !378, file: !57, line: 235, baseType: !364, size: 64, offset: 256)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !378, file: !57, line: 236, baseType: !371, size: 64, offset: 320)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !378, file: !57, line: 237, baseType: !364, size: 64, offset: 384)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !378, file: !57, line: 238, baseType: !371, size: 64, offset: 448)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !378, file: !57, line: 239, baseType: !423, size: 4096, align: 512, offset: 512)
!423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !374, size: 4096, align: 512, elements: !208)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !374, file: !57, line: 161, baseType: !7, size: 32, offset: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !374, file: !57, line: 162, baseType: !426, size: 32, offset: 96)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !186, line: 32, baseType: !427)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !428, line: 96, baseType: !109)
!428 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!429 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !374, file: !57, line: 163, baseType: !430, size: 32, offset: 128)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !431, line: 274, baseType: !432)
!431 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !431, line: 274, size: 32, elements: !433)
!433 = !{!434}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !432, file: !431, line: 274, baseType: !435, size: 32)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !431, line: 69, baseType: !436)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !431, line: 64, size: 32, elements: !437)
!437 = !{!438}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !436, file: !431, line: 65, baseType: !7, size: 32)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !374, file: !57, line: 164, baseType: !371, size: 64, offset: 192)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !374, file: !57, line: 165, baseType: !441, size: 128, offset: 256)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !360, line: 14, size: 128, elements: !442)
!442 = !{!443}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !441, file: !360, line: 15, baseType: !444, size: 128)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !279, line: 26, size: 128, elements: !445)
!445 = !{!446, !450}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !444, file: !279, line: 27, baseType: !447, size: 64)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !279, line: 12, size: 64, elements: !448)
!448 = !{!449}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !447, file: !279, line: 13, baseType: !283, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !444, file: !279, line: 28, baseType: !283, size: 64, offset: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !374, file: !57, line: 166, baseType: !452, size: 64, offset: 384)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DISubroutineType(types: !454)
!454 = !{!364}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !374, file: !57, line: 167, baseType: !364, size: 64, offset: 448)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !356, file: !57, line: 123, baseType: !398, size: 8, offset: 448)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !356, file: !57, line: 124, baseType: !398, size: 8, offset: 456)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !356, file: !57, line: 125, baseType: !398, size: 8, offset: 464)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !356, file: !57, line: 126, baseType: !398, size: 8, offset: 472)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !340, file: !213, line: 671, baseType: !356, size: 512, offset: 1216)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !340, file: !213, line: 679, baseType: !462, size: 64, offset: 1728)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !212, file: !213, line: 800, baseType: !464, size: 64, offset: 5248)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !466)
!466 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !213, line: 800, flags: DIFlagFwdDecl)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !212, file: !213, line: 809, baseType: !468, size: 64, offset: 5312)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !213, line: 70, flags: DIFlagFwdDecl)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !212, file: !213, line: 825, baseType: !471, size: 2048, align: 512, offset: 5632)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !213, line: 509, size: 2048, align: 512, elements: !472)
!472 = !{!473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !471, file: !213, line: 511, baseType: !180, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !471, file: !213, line: 512, baseType: !180, size: 64, offset: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !471, file: !213, line: 513, baseType: !180, size: 64, offset: 128)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !471, file: !213, line: 514, baseType: !180, size: 64, offset: 192)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !471, file: !213, line: 515, baseType: !180, size: 64, offset: 256)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !471, file: !213, line: 516, baseType: !180, size: 64, offset: 320)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !471, file: !213, line: 518, baseType: !180, size: 64, offset: 384)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !471, file: !213, line: 519, baseType: !180, size: 64, offset: 448)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !471, file: !213, line: 520, baseType: !299, size: 64, offset: 512)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !471, file: !213, line: 522, baseType: !180, size: 64, offset: 576)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !471, file: !213, line: 523, baseType: !180, size: 64, offset: 640)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !471, file: !213, line: 524, baseType: !299, size: 64, offset: 704)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !471, file: !213, line: 526, baseType: !299, size: 64, offset: 768)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !471, file: !213, line: 527, baseType: !180, size: 64, offset: 832)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !471, file: !213, line: 529, baseType: !180, size: 64, offset: 896)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !471, file: !213, line: 530, baseType: !180, size: 64, offset: 960)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !471, file: !213, line: 531, baseType: !180, size: 64, offset: 1024)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !471, file: !213, line: 532, baseType: !180, size: 64, offset: 1088)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !471, file: !213, line: 533, baseType: !180, size: 64, offset: 1152)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !471, file: !213, line: 535, baseType: !180, size: 64, offset: 1216)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !471, file: !213, line: 536, baseType: !180, size: 64, offset: 1280)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !471, file: !213, line: 537, baseType: !180, size: 64, offset: 1344)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !471, file: !213, line: 538, baseType: !180, size: 64, offset: 1408)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !471, file: !213, line: 539, baseType: !180, size: 64, offset: 1472)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !471, file: !213, line: 540, baseType: !180, size: 64, offset: 1536)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !471, file: !213, line: 541, baseType: !180, size: 64, offset: 1600)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !471, file: !213, line: 542, baseType: !180, size: 64, offset: 1664)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !471, file: !213, line: 543, baseType: !180, size: 64, offset: 1728)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !212, file: !213, line: 833, baseType: !7, size: 32, offset: 7680)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !212, file: !213, line: 836, baseType: !7, size: 32, offset: 7712)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !212, file: !213, line: 837, baseType: !109, size: 32, offset: 7744)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !212, file: !213, line: 838, baseType: !505, size: 64, offset: 7808)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !507)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !508, line: 19, baseType: !509)
!508 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !508, line: 19, size: 64, elements: !510)
!510 = !{!511}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !509, file: !508, line: 19, baseType: !512, size: 64)
!512 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 64, elements: !513)
!513 = !{!514}
!514 = !DISubrange(count: 1)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !212, file: !213, line: 839, baseType: !516, size: 64, offset: 7872)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !212, file: !213, line: 840, baseType: !507, size: 64, offset: 7936)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !212, file: !213, line: 841, baseType: !147, size: 64, offset: 8000)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !212, file: !213, line: 843, baseType: !201, size: 16, offset: 8064)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !212, file: !213, line: 845, baseType: !201, size: 16, offset: 8080)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !212, file: !213, line: 848, baseType: !109, size: 32, offset: 8096)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !212, file: !213, line: 849, baseType: !523, size: 32, offset: 8128)
!523 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !213, line: 718, size: 32, elements: !524)
!524 = !{!525, !532}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !523, file: !213, line: 724, baseType: !526, size: 32)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !523, file: !213, line: 719, size: 32, elements: !527)
!527 = !{!528, !529, !530, !531}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !526, file: !213, line: 720, baseType: !398, size: 8)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !526, file: !213, line: 721, baseType: !398, size: 8, offset: 8)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !526, file: !213, line: 722, baseType: !398, size: 8, offset: 16)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !526, file: !213, line: 723, baseType: !398, size: 8, offset: 24)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !523, file: !213, line: 725, baseType: !222, size: 32)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !212, file: !213, line: 850, baseType: !288, size: 128, offset: 8192)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !212, file: !213, line: 851, baseType: !535, size: 64, offset: 8320)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !213, line: 60, flags: DIFlagFwdDecl)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !212, file: !213, line: 855, baseType: !187, size: 64, offset: 8384)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !212, file: !213, line: 856, baseType: !398, size: 8, offset: 8448)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !212, file: !213, line: 857, baseType: !398, size: 8, offset: 8456)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !212, file: !213, line: 858, baseType: !109, size: 32, offset: 8480)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !212, file: !213, line: 859, baseType: !288, size: 128, offset: 8512)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !212, file: !213, line: 860, baseType: !109, size: 32, offset: 8640)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !212, file: !213, line: 861, baseType: !288, size: 128, offset: 8704)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !212, file: !213, line: 873, baseType: !545, size: 256, offset: 8832)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !213, line: 376, size: 256, elements: !546)
!546 = !{!547, !548, !549, !550}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !545, file: !213, line: 381, baseType: !187, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !545, file: !213, line: 384, baseType: !184, size: 64, offset: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !545, file: !213, line: 389, baseType: !184, size: 64, offset: 128)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !545, file: !213, line: 392, baseType: !184, size: 64, offset: 192)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !212, file: !213, line: 875, baseType: !288, size: 128, offset: 9088)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !212, file: !213, line: 877, baseType: !553, size: 320, offset: 9216)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !554, line: 86, size: 320, elements: !555)
!554 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!555 = !{!556, !557, !558}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !553, file: !554, line: 87, baseType: !109, size: 32)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !553, file: !554, line: 88, baseType: !288, size: 128, offset: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !553, file: !554, line: 89, baseType: !288, size: 128, offset: 192)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !212, file: !213, line: 878, baseType: !278, size: 192, align: 64, offset: 9536)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !212, file: !213, line: 881, baseType: !561, size: 64, offset: 9728)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !27, line: 733, size: 10240, elements: !563)
!563 = !{!564, !3317}
!564 = !DIDerivedType(tag: DW_TAG_member, scope: !562, file: !27, line: 734, baseType: !565, size: 10240)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !562, file: !27, line: 734, size: 10240, elements: !566)
!566 = !{!567, !571, !593, !3196, !3197, !3198, !3199, !3200, !3201, !3208, !3209, !3210, !3216, !3217, !3218, !3219, !3220, !3221, !3222, !3223, !3224, !3225, !3226, !3227, !3228, !3229, !3230, !3231, !3232, !3233, !3234, !3235, !3236, !3237, !3238, !3239, !3240, !3241, !3242, !3243, !3244, !3245, !3249, !3251, !3254, !3297, !3298, !3299, !3302, !3303, !3304, !3307, !3308, !3309, !3315, !3316}
!567 = !DIDerivedType(tag: DW_TAG_member, scope: !565, file: !27, line: 739, baseType: !568, size: 512, align: 512)
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !565, file: !27, line: 739, size: 512, align: 512, elements: !569)
!569 = !{!570}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !568, file: !27, line: 747, baseType: !233, size: 32)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !565, file: !27, line: 750, baseType: !572, size: 128, offset: 512)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !573, line: 218, size: 128, elements: !574)
!573 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!574 = !{!575, !591, !592}
!575 = !DIDerivedType(tag: DW_TAG_member, scope: !572, file: !573, line: 219, baseType: !576, size: 32)
!576 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !572, file: !573, line: 219, size: 32, elements: !577)
!577 = !{!578, !587}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !576, file: !573, line: 220, baseType: !579, size: 32)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !580, line: 29, baseType: !581)
!580 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !580, line: 17, size: 32, elements: !582)
!582 = !{!583}
!583 = !DIDerivedType(tag: DW_TAG_member, scope: !581, file: !580, line: 18, baseType: !584, size: 32)
!584 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !581, file: !580, line: 18, size: 32, elements: !585)
!585 = !{!586}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !584, file: !580, line: 19, baseType: !383, size: 32)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !576, file: !573, line: 221, baseType: !588)
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !573, line: 197, baseType: !589)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !573, line: 197, elements: !590)
!590 = !{}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !572, file: !573, line: 223, baseType: !7, size: 32, offset: 32)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !572, file: !573, line: 224, baseType: !147, size: 64, offset: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !565, file: !27, line: 752, baseType: !594, size: 64, offset: 640)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DISubroutineType(types: !596)
!596 = !{!187, !597, !187, !187, !187, !187}
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !599)
!599 = !{!600, !614, !615, !617, !624, !636, !639, !640, !716, !930, !939, !3186, !3187, !3188, !3189, !3190, !3191, !3193, !3194, !3195}
!600 = !DIDerivedType(tag: DW_TAG_member, scope: !598, file: !14, line: 995, baseType: !601, size: 128)
!601 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !598, file: !14, line: 995, size: 128, elements: !602)
!602 = !{!603, !604, !613}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !601, file: !14, line: 996, baseType: !245, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !601, file: !14, line: 997, baseType: !605, size: 128, align: 64)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !186, line: 232, size: 128, align: 64, elements: !606)
!606 = !{!607, !609}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !605, file: !186, line: 233, baseType: !608, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !605, file: !186, line: 234, baseType: !610, size: 64, offset: 64)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DISubroutineType(types: !612)
!612 = !{null, !608}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !601, file: !14, line: 998, baseType: !7, size: 32)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !598, file: !14, line: 1005, baseType: !579, size: 32, offset: 128)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !598, file: !14, line: 1006, baseType: !616, size: 32, offset: 160)
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !186, line: 156, baseType: !7)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !598, file: !14, line: 1007, baseType: !618, size: 64, offset: 192)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !619, line: 13, baseType: !620)
!619 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !186, line: 181, baseType: !621)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !186, line: 179, size: 64, elements: !622)
!622 = !{!623}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !621, file: !186, line: 180, baseType: !299, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !598, file: !14, line: 1008, baseType: !625, size: 256, offset: 256)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !626, line: 66, size: 256, elements: !627)
!626 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!627 = !{!628, !629, !630, !635}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !625, file: !626, line: 67, baseType: !618, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !625, file: !626, line: 68, baseType: !381, size: 32, offset: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !625, file: !626, line: 70, baseType: !631, size: 32, offset: 96)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !632, line: 15, size: 32, elements: !633)
!632 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!633 = !{!634}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !631, file: !632, line: 20, baseType: !233, size: 32)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !625, file: !626, line: 72, baseType: !288, size: 128, offset: 128)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !598, file: !14, line: 1009, baseType: !637, size: 64, offset: 512)
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !186, line: 52, baseType: !638)
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !428, line: 88, baseType: !301)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !598, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !598, file: !14, line: 1011, baseType: !641, size: 256, offset: 640)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !642)
!642 = !{!643, !666, !705, !706, !714, !715}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !641, file: !14, line: 949, baseType: !644, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !645, line: 34, baseType: !646)
!645 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !645, line: 25, size: 64, elements: !647)
!647 = !{!648}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !646, file: !645, line: 26, baseType: !649, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !650, line: 27, baseType: !651)
!650 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !650, line: 13, size: 64, elements: !652)
!652 = !{!653, !665}
!653 = !DIDerivedType(tag: DW_TAG_member, scope: !651, file: !650, line: 14, baseType: !654, size: 32)
!654 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !651, file: !650, line: 14, size: 32, elements: !655)
!655 = !{!656, !657}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !654, file: !650, line: 15, baseType: !233, size: 32)
!657 = !DIDerivedType(tag: DW_TAG_member, scope: !654, file: !650, line: 16, baseType: !658, size: 32)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !654, file: !650, line: 16, size: 32, elements: !659)
!659 = !{!660, !661}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !658, file: !650, line: 18, baseType: !398, size: 8)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !658, file: !650, line: 19, baseType: !662, size: 24, offset: 8)
!662 = !DICompositeType(tag: DW_TAG_array_type, baseType: !398, size: 24, elements: !663)
!663 = !{!664}
!664 = !DISubrange(count: 3)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !651, file: !650, line: 26, baseType: !386, size: 32, offset: 32)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !641, file: !14, line: 950, baseType: !667, size: 64, offset: 64)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !19, line: 59, size: 768, elements: !669)
!669 = !{!670, !671, !672, !673, !686, !687, !694, !695}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !668, file: !19, line: 61, baseType: !228, size: 32)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !668, file: !19, line: 62, baseType: !7, size: 32, offset: 32)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !668, file: !19, line: 63, baseType: !579, size: 32, offset: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !668, file: !19, line: 65, baseType: !674, size: 256, offset: 128)
!674 = !DICompositeType(tag: DW_TAG_array_type, baseType: !675, size: 256, elements: !684)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !186, line: 194, size: 64, elements: !676)
!676 = !{!677}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !675, file: !186, line: 195, baseType: !678, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !186, line: 198, size: 128, elements: !680)
!680 = !{!681, !682}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !679, file: !186, line: 199, baseType: !678, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !679, file: !186, line: 199, baseType: !683, size: 64, offset: 64)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!684 = !{!685}
!685 = !DISubrange(count: 4)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !668, file: !19, line: 66, baseType: !675, size: 64, offset: 384)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !668, file: !19, line: 68, baseType: !688, size: 192, offset: 448)
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !689, line: 41, baseType: !690)
!689 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !689, line: 37, size: 192, elements: !691)
!691 = !{!692, !693}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !690, file: !689, line: 38, baseType: !579, size: 32)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !690, file: !689, line: 39, baseType: !288, size: 128, offset: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !668, file: !19, line: 69, baseType: !605, size: 128, align: 64, offset: 640)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !668, file: !19, line: 70, baseType: !696, offset: 768)
!696 = !DICompositeType(tag: DW_TAG_array_type, baseType: !697, elements: !703)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !19, line: 54, size: 128, elements: !698)
!698 = !{!699, !700}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !697, file: !19, line: 55, baseType: !109, size: 32)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !697, file: !19, line: 56, baseType: !701, size: 64, offset: 64)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !19, line: 56, flags: DIFlagFwdDecl)
!703 = !{!704}
!704 = !DISubrange(count: -1)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !641, file: !14, line: 951, baseType: !18, size: 32, offset: 128)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !641, file: !14, line: 952, baseType: !707, size: 32, offset: 160)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !708, line: 23, baseType: !709)
!708 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !708, line: 21, size: 32, elements: !710)
!710 = !{!711}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !709, file: !708, line: 22, baseType: !712, size: 32)
!712 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !186, line: 37, baseType: !713)
!713 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !428, line: 49, baseType: !7)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !641, file: !14, line: 952, baseType: !707, size: 32, offset: 192)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !641, file: !14, line: 953, baseType: !109, size: 32, offset: 224)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !598, file: !14, line: 1012, baseType: !717, size: 64, offset: 896)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !719)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !720, line: 110, size: 1472, elements: !721)
!720 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!721 = !{!722, !723, !724, !731, !732, !733, !734, !735, !736, !737, !738, !744, !745, !746, !747, !748, !749, !875, !876, !877, !878, !879, !910, !913, !917, !925}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !719, file: !720, line: 111, baseType: !618, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !719, file: !720, line: 112, baseType: !707, size: 32, offset: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !719, file: !720, line: 113, baseType: !725, size: 32, offset: 96)
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !708, line: 28, baseType: !726)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !708, line: 26, size: 32, elements: !727)
!727 = !{!728}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !726, file: !708, line: 27, baseType: !729, size: 32)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !186, line: 38, baseType: !730)
!730 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !428, line: 50, baseType: !7)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !719, file: !720, line: 114, baseType: !707, size: 32, offset: 128)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !719, file: !720, line: 115, baseType: !725, size: 32, offset: 160)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !719, file: !720, line: 116, baseType: !707, size: 32, offset: 192)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !719, file: !720, line: 117, baseType: !725, size: 32, offset: 224)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !719, file: !720, line: 118, baseType: !707, size: 32, offset: 256)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !719, file: !720, line: 119, baseType: !725, size: 32, offset: 288)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !719, file: !720, line: 120, baseType: !7, size: 32, offset: 320)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !719, file: !720, line: 121, baseType: !739, size: 64, offset: 384)
!739 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !740, line: 24, baseType: !741)
!740 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !740, line: 24, size: 64, elements: !742)
!742 = !{!743}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !741, file: !740, line: 24, baseType: !180, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !719, file: !720, line: 122, baseType: !739, size: 64, offset: 448)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !719, file: !720, line: 123, baseType: !739, size: 64, offset: 512)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !719, file: !720, line: 124, baseType: !739, size: 64, offset: 576)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !719, file: !720, line: 125, baseType: !739, size: 64, offset: 640)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !719, file: !720, line: 127, baseType: !161, size: 8, offset: 704)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !719, file: !720, line: 129, baseType: !750, size: 64, offset: 768)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !752, line: 195, size: 1728, elements: !753)
!752 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!753 = !{!754, !755, !760, !765, !774, !777, !778, !785, !786, !787, !788, !791, !792, !793, !795, !796, !839, !860}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !751, file: !752, line: 196, baseType: !228, size: 32)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !751, file: !752, line: 197, baseType: !756, size: 32, offset: 32)
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !752, line: 28, baseType: !757)
!757 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !186, line: 104, baseType: !758)
!758 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !181, line: 20, baseType: !759)
!759 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !183, line: 26, baseType: !109)
!760 = !DIDerivedType(tag: DW_TAG_member, scope: !751, file: !752, line: 198, baseType: !761, size: 192, offset: 64)
!761 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !751, file: !752, line: 198, size: 192, elements: !762)
!762 = !{!763, !764}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !761, file: !752, line: 199, baseType: !288, size: 128)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !761, file: !752, line: 200, baseType: !278, size: 192, align: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !751, file: !752, line: 205, baseType: !766, size: 320, offset: 256)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !767, line: 48, size: 320, elements: !768)
!767 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!768 = !{!769, !770, !771, !772, !773}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !766, file: !767, line: 49, baseType: !618, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !766, file: !767, line: 55, baseType: !618, size: 64, offset: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !766, file: !767, line: 57, baseType: !631, size: 32, offset: 128)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !766, file: !767, line: 59, baseType: !381, size: 32, offset: 160)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !766, file: !767, line: 60, baseType: !288, size: 128, offset: 192)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !751, file: !752, line: 206, baseType: !775, size: 64, offset: 576)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !752, line: 206, flags: DIFlagFwdDecl)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !751, file: !752, line: 207, baseType: !147, size: 64, offset: 640)
!778 = !DIDerivedType(tag: DW_TAG_member, scope: !751, file: !752, line: 208, baseType: !779, size: 64, offset: 704)
!779 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !751, file: !752, line: 208, size: 64, elements: !780)
!780 = !{!781, !784}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !779, file: !752, line: 209, baseType: !782, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !783, line: 8, baseType: !300)
!783 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!784 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !779, file: !752, line: 210, baseType: !782, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !751, file: !752, line: 212, baseType: !782, size: 64, offset: 768)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !751, file: !752, line: 213, baseType: !707, size: 32, offset: 832)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !751, file: !752, line: 214, baseType: !725, size: 32, offset: 864)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !751, file: !752, line: 215, baseType: !789, size: 32, offset: 896)
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !752, line: 31, baseType: !790)
!790 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !186, line: 110, baseType: !222)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !751, file: !752, line: 216, baseType: !201, size: 16, offset: 928)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !751, file: !752, line: 217, baseType: !201, size: 16, offset: 944)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !751, file: !752, line: 221, baseType: !794, size: 16, offset: 960)
!794 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !751, file: !752, line: 228, baseType: !187, size: 64, offset: 1024)
!796 = !DIDerivedType(tag: DW_TAG_member, scope: !751, file: !752, line: 245, baseType: !797, size: 320, offset: 1088)
!797 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !751, file: !752, line: 245, size: 320, elements: !798)
!798 = !{!799, !830}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !797, file: !752, line: 246, baseType: !800, size: 320)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !752, line: 114, size: 320, elements: !801)
!801 = !{!802, !803, !815, !818, !827}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !800, file: !752, line: 116, baseType: !187, size: 64)
!803 = !DIDerivedType(tag: DW_TAG_member, scope: !800, file: !752, line: 117, baseType: !804, size: 64, offset: 64)
!804 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !800, file: !752, line: 117, size: 64, elements: !805)
!805 = !{!806, !814}
!806 = !DIDerivedType(tag: DW_TAG_member, scope: !804, file: !752, line: 118, baseType: !807, size: 64)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !804, file: !752, line: 118, size: 64, elements: !808)
!808 = !{!809, !810}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !807, file: !752, line: 120, baseType: !256, size: 16)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !807, file: !752, line: 121, baseType: !811, size: 48, offset: 16)
!811 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 48, elements: !812)
!812 = !{!813}
!813 = !DISubrange(count: 6)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !804, file: !752, line: 127, baseType: !187, size: 64)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !800, file: !752, line: 129, baseType: !816, size: 64, offset: 128)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !752, line: 102, flags: DIFlagFwdDecl)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !800, file: !752, line: 130, baseType: !819, size: 64, offset: 192)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !752, line: 108, size: 192, elements: !821)
!821 = !{!822, !823, !824}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !820, file: !752, line: 109, baseType: !605, size: 128, align: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !820, file: !752, line: 110, baseType: !228, size: 32, offset: 128)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !820, file: !752, line: 111, baseType: !825, size: 8, offset: 160)
!825 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !186, line: 35, baseType: !826)
!826 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !800, file: !752, line: 131, baseType: !828, size: 64, offset: 256)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !193)
!830 = !DIDerivedType(tag: DW_TAG_member, scope: !797, file: !752, line: 247, baseType: !831, size: 320)
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !797, file: !752, line: 247, size: 320, elements: !832)
!832 = !{!833, !834, !835, !836, !837}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !831, file: !752, line: 248, baseType: !187, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !831, file: !752, line: 249, baseType: !187, size: 64, offset: 64)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !831, file: !752, line: 250, baseType: !816, size: 64, offset: 128)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !831, file: !752, line: 251, baseType: !819, size: 64, offset: 192)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !831, file: !752, line: 252, baseType: !838, size: 64, offset: 256)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, scope: !751, file: !752, line: 260, baseType: !840, size: 256, offset: 1408)
!840 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !751, file: !752, line: 260, size: 256, elements: !841)
!841 = !{!842, !848}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !840, file: !752, line: 261, baseType: !843, size: 256)
!843 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !752, line: 134, size: 256, elements: !844)
!844 = !{!845, !846}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !843, file: !752, line: 135, baseType: !147, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !843, file: !752, line: 136, baseType: !847, size: 256)
!847 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 256, elements: !684)
!848 = !DIDerivedType(tag: DW_TAG_member, scope: !840, file: !752, line: 262, baseType: !849, size: 256)
!849 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !840, file: !752, line: 262, size: 256, elements: !850)
!850 = !{!851, !852}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !849, file: !752, line: 264, baseType: !288, size: 128)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !849, file: !752, line: 265, baseType: !853, size: 128, offset: 128)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !854, line: 22, size: 128, elements: !855)
!854 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!855 = !{!856, !859}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !853, file: !854, line: 23, baseType: !857, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !854, line: 23, flags: DIFlagFwdDecl)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !853, file: !854, line: 24, baseType: !187, size: 64, offset: 64)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !751, file: !752, line: 280, baseType: !861, size: 64, offset: 1664)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !752, line: 176, size: 192, elements: !863)
!863 = !{!864, !873, !874}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !862, file: !752, line: 177, baseType: !865, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !752, line: 171, baseType: !866)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DISubroutineType(types: !868)
!868 = !{!109, !750, !869, !871, !750}
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !817)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !843)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !862, file: !752, line: 178, baseType: !750, size: 64, offset: 64)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !862, file: !752, line: 179, baseType: !816, size: 64, offset: 128)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !719, file: !720, line: 130, baseType: !750, size: 64, offset: 832)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !719, file: !720, line: 131, baseType: !750, size: 64, offset: 896)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !719, file: !720, line: 132, baseType: !750, size: 64, offset: 960)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !719, file: !720, line: 135, baseType: !147, size: 64, offset: 1024)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !719, file: !720, line: 137, baseType: !880, size: 64, offset: 1088)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !882, line: 14, size: 1088, elements: !883)
!882 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!883 = !{!884, !885, !894, !895, !896, !897, !898, !899}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !881, file: !882, line: 15, baseType: !228, size: 32)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !881, file: !882, line: 17, baseType: !886, size: 320, offset: 64)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !887, line: 22, size: 320, elements: !888)
!887 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!888 = !{!889, !890, !891, !892}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !886, file: !887, line: 23, baseType: !381, size: 32)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !886, file: !887, line: 24, baseType: !299, size: 64, offset: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !886, file: !887, line: 26, baseType: !288, size: 128, offset: 128)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !886, file: !887, line: 28, baseType: !893, size: 64, offset: 256)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !881, file: !882, line: 19, baseType: !187, size: 64, offset: 384)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !881, file: !882, line: 20, baseType: !618, size: 64, offset: 448)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !881, file: !882, line: 23, baseType: !679, size: 128, offset: 512)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !881, file: !882, line: 24, baseType: !707, size: 32, offset: 640)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !881, file: !882, line: 29, baseType: !618, size: 64, offset: 704)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !881, file: !882, line: 36, baseType: !900, size: 320, offset: 768)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !901, line: 15, size: 320, elements: !902)
!901 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!902 = !{!903, !904, !905, !906, !907, !908, !909}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !900, file: !901, line: 16, baseType: !381, size: 32)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !900, file: !901, line: 18, baseType: !109, size: 32, offset: 32)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !900, file: !901, line: 19, baseType: !109, size: 32, offset: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !900, file: !901, line: 20, baseType: !109, size: 32, offset: 96)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !900, file: !901, line: 21, baseType: !109, size: 32, offset: 128)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !900, file: !901, line: 22, baseType: !187, size: 64, offset: 192)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !900, file: !901, line: 23, baseType: !187, size: 64, offset: 256)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !719, file: !720, line: 138, baseType: !911, size: 64, offset: 1152)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !708, line: 18, flags: DIFlagFwdDecl)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !719, file: !720, line: 139, baseType: !914, size: 64, offset: 1216)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !916, line: 16, flags: DIFlagFwdDecl)
!916 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!917 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !719, file: !720, line: 140, baseType: !918, size: 64, offset: 1280)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !720, line: 25, size: 64, elements: !920)
!920 = !{!921, !922, !923}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !919, file: !720, line: 26, baseType: !233, size: 32)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !919, file: !720, line: 27, baseType: !109, size: 32, offset: 32)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !919, file: !720, line: 28, baseType: !924, offset: 64)
!924 = !DICompositeType(tag: DW_TAG_array_type, baseType: !725, elements: !703)
!925 = !DIDerivedType(tag: DW_TAG_member, scope: !719, file: !720, line: 142, baseType: !926, size: 128, offset: 1344)
!926 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !719, file: !720, line: 142, size: 128, elements: !927)
!927 = !{!928, !929}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !926, file: !720, line: 143, baseType: !109, size: 32)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !926, file: !720, line: 144, baseType: !605, size: 128, align: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !598, file: !14, line: 1013, baseType: !931, size: 256, offset: 960)
!931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !932)
!932 = !{!933, !934, !935, !936, !937, !938}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !931, file: !14, line: 971, baseType: !187, size: 64)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !931, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !931, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !931, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !931, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !931, file: !14, line: 976, baseType: !637, size: 64, offset: 192)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !598, file: !14, line: 1014, baseType: !940, size: 128, offset: 1216)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !941, line: 8, size: 128, elements: !942)
!941 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!942 = !{!943, !3185}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !940, file: !941, line: 9, baseType: !944, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !946, line: 70, size: 256, elements: !947)
!946 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!947 = !{!948, !3182, !3183, !3184}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !945, file: !946, line: 71, baseType: !949, size: 64)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !951, line: 82, size: 1536, elements: !952)
!951 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!952 = !{!953, !954, !959, !967, !968, !983, !3149, !3151, !3164, !3165, !3166, !3167, !3168, !3174, !3175, !3176}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !950, file: !951, line: 84, baseType: !7, size: 32)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !950, file: !951, line: 85, baseType: !955, size: 32, offset: 32)
!955 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !431, line: 275, baseType: !956)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !431, line: 275, size: 32, elements: !957)
!957 = !{!958}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !956, file: !431, line: 275, baseType: !435, size: 32)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !950, file: !951, line: 86, baseType: !960, size: 128, offset: 64)
!960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !961, line: 38, size: 128, elements: !962)
!961 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!962 = !{!963, !965}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !960, file: !961, line: 39, baseType: !964, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !960, file: !961, line: 39, baseType: !966, size: 64, offset: 64)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !950, file: !951, line: 87, baseType: !949, size: 64, offset: 192)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !950, file: !951, line: 88, baseType: !969, size: 128, offset: 256)
!969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !951, line: 49, size: 128, elements: !970)
!970 = !{!971, !980}
!971 = !DIDerivedType(tag: DW_TAG_member, scope: !969, file: !951, line: 50, baseType: !972, size: 64)
!972 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !969, file: !951, line: 50, size: 64, elements: !973)
!973 = !{!974, !979}
!974 = !DIDerivedType(tag: DW_TAG_member, scope: !972, file: !951, line: 51, baseType: !975, size: 64)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !972, file: !951, line: 51, size: 64, elements: !976)
!976 = !{!977, !978}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !975, file: !951, line: 52, baseType: !222, size: 32)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !975, file: !951, line: 52, baseType: !222, size: 32, offset: 32)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !972, file: !951, line: 54, baseType: !180, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !969, file: !951, line: 56, baseType: !981, size: 64, offset: 64)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !161)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !950, file: !951, line: 89, baseType: !984, size: 64, offset: 384)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !986)
!986 = !{!987, !989, !990, !991, !992, !993, !994, !997, !998, !1195, !2955, !2956, !2957, !2958, !2964, !2965, !2966, !2967, !2968, !2969, !2970, !2971, !2972, !2973, !2974, !2975, !2976, !2977, !2978, !2979, !2980, !2981, !2982, !2987, !2988, !2989, !2990, !2991, !2992, !2993, !3123, !3126, !3127, !3128, !3145, !3146, !3147, !3148}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !985, file: !14, line: 642, baseType: !988, size: 16)
!988 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !186, line: 24, baseType: !201)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !985, file: !14, line: 643, baseType: !201, size: 16, offset: 16)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !985, file: !14, line: 644, baseType: !707, size: 32, offset: 32)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !985, file: !14, line: 645, baseType: !288, size: 128, offset: 64)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !985, file: !14, line: 646, baseType: !725, size: 32, offset: 192)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !985, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !985, file: !14, line: 650, baseType: !995, size: 64, offset: 256)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !985, file: !14, line: 651, baseType: !995, size: 64, offset: 320)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !985, file: !14, line: 654, baseType: !999, size: 64, offset: 384)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1001)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !1002)
!1002 = !{!1003, !1007, !1020, !1026, !1030, !1034, !1038, !1042, !1046, !1050, !1054, !1055, !1061, !1065, !1102, !1133, !1143, !1149, !1153, !1157, !1161, !1165, !1169, !1175, !1179}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1001, file: !14, line: 1967, baseType: !1004, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{!949, !984, !949, !7}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !1001, file: !14, line: 1968, baseType: !1008, size: 64, offset: 64)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{!828, !949, !984, !1011}
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !1013, line: 10, size: 128, elements: !1014)
!1013 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!1014 = !{!1015, !1019}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1012, file: !1013, line: 11, baseType: !1016, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = !DISubroutineType(types: !1018)
!1018 = !{null, !147}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1012, file: !1013, line: 12, baseType: !147, size: 64, offset: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !1001, file: !14, line: 1969, baseType: !1021, size: 64, offset: 128)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = !DISubroutineType(types: !1023)
!1023 = !{!109, !1024, !984, !109}
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !740, line: 42, flags: DIFlagFwdDecl)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !1001, file: !14, line: 1970, baseType: !1027, size: 64, offset: 192)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = !DISubroutineType(types: !1029)
!1029 = !{!995, !984, !109, !825}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !1001, file: !14, line: 1972, baseType: !1031, size: 64, offset: 256)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DISubroutineType(types: !1033)
!1033 = !{!109, !949, !838, !109}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !1001, file: !14, line: 1974, baseType: !1035, size: 64, offset: 320)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DISubroutineType(types: !1037)
!1037 = !{!109, !1024, !984, !949, !988, !825}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1001, file: !14, line: 1976, baseType: !1039, size: 64, offset: 384)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = !DISubroutineType(types: !1041)
!1041 = !{!109, !949, !984, !949}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !1001, file: !14, line: 1977, baseType: !1043, size: 64, offset: 448)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{!109, !984, !949}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1001, file: !14, line: 1978, baseType: !1047, size: 64, offset: 512)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{!109, !1024, !984, !949, !828}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1001, file: !14, line: 1980, baseType: !1051, size: 64, offset: 576)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{!109, !1024, !984, !949, !988}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1001, file: !14, line: 1982, baseType: !1043, size: 64, offset: 640)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !1001, file: !14, line: 1983, baseType: !1056, size: 64, offset: 704)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = !DISubroutineType(types: !1058)
!1058 = !{!109, !1024, !984, !949, !988, !1059}
!1059 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !186, line: 21, baseType: !1060)
!1060 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !186, line: 18, baseType: !222)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1001, file: !14, line: 1985, baseType: !1062, size: 64, offset: 768)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{!109, !1024, !984, !949, !984, !949, !7}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !1001, file: !14, line: 1987, baseType: !1066, size: 64, offset: 832)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{!109, !1024, !949, !1069}
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !1071)
!1071 = !{!1072, !1073, !1074, !1084, !1093, !1094, !1099, !1100, !1101}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1070, file: !14, line: 227, baseType: !7, size: 32)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1070, file: !14, line: 228, baseType: !988, size: 16, offset: 32)
!1074 = !DIDerivedType(tag: DW_TAG_member, scope: !1070, file: !14, line: 241, baseType: !1075, size: 32, offset: 64)
!1075 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1070, file: !14, line: 241, size: 32, elements: !1076)
!1076 = !{!1077, !1078}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1075, file: !14, line: 242, baseType: !707, size: 32)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !1075, file: !14, line: 243, baseType: !1079, size: 32)
!1079 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !1080, line: 16, baseType: !1081)
!1080 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1080, line: 14, size: 32, elements: !1082)
!1082 = !{!1083}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1081, file: !1080, line: 15, baseType: !712, size: 32)
!1084 = !DIDerivedType(tag: DW_TAG_member, scope: !1070, file: !14, line: 245, baseType: !1085, size: 32, offset: 96)
!1085 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1070, file: !14, line: 245, size: 32, elements: !1086)
!1086 = !{!1087, !1088}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1085, file: !14, line: 246, baseType: !725, size: 32)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !1085, file: !14, line: 247, baseType: !1089, size: 32)
!1089 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !1080, line: 20, baseType: !1090)
!1090 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1080, line: 18, size: 32, elements: !1091)
!1091 = !{!1092}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1090, file: !1080, line: 19, baseType: !729, size: 32)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1070, file: !14, line: 249, baseType: !637, size: 64, offset: 128)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1070, file: !14, line: 250, baseType: !1095, size: 128, offset: 192)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !783, line: 13, size: 128, elements: !1096)
!1096 = !{!1097, !1098}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1095, file: !783, line: 14, baseType: !782, size: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1095, file: !783, line: 15, baseType: !148, size: 64, offset: 64)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1070, file: !14, line: 251, baseType: !1095, size: 128, offset: 320)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1070, file: !14, line: 252, baseType: !1095, size: 128, offset: 448)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1070, file: !14, line: 259, baseType: !597, size: 64, offset: 576)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !1001, file: !14, line: 1988, baseType: !1103, size: 64, offset: 896)
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1104 = !DISubroutineType(types: !1105)
!1105 = !{!109, !1024, !1106, !1108, !222, !7}
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !940)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1110, line: 22, size: 1280, elements: !1111)
!1110 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1111 = !{!1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1109, file: !1110, line: 23, baseType: !222, size: 32)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1109, file: !1110, line: 24, baseType: !988, size: 16, offset: 32)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1109, file: !1110, line: 25, baseType: !7, size: 32, offset: 64)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1109, file: !1110, line: 26, baseType: !790, size: 32, offset: 96)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1109, file: !1110, line: 27, baseType: !180, size: 64, offset: 128)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1109, file: !1110, line: 28, baseType: !180, size: 64, offset: 192)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1109, file: !1110, line: 41, baseType: !180, size: 64, offset: 256)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1109, file: !1110, line: 42, baseType: !1059, size: 32, offset: 320)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1109, file: !1110, line: 43, baseType: !1059, size: 32, offset: 352)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1109, file: !1110, line: 44, baseType: !707, size: 32, offset: 384)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1109, file: !1110, line: 45, baseType: !725, size: 32, offset: 416)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1109, file: !1110, line: 46, baseType: !637, size: 64, offset: 448)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1109, file: !1110, line: 47, baseType: !1095, size: 128, offset: 512)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1109, file: !1110, line: 48, baseType: !1095, size: 128, offset: 640)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1109, file: !1110, line: 49, baseType: !1095, size: 128, offset: 768)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1109, file: !1110, line: 50, baseType: !1095, size: 128, offset: 896)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1109, file: !1110, line: 51, baseType: !180, size: 64, offset: 1024)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1109, file: !1110, line: 52, baseType: !180, size: 64, offset: 1088)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1109, file: !1110, line: 53, baseType: !222, size: 32, offset: 1152)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1109, file: !1110, line: 54, baseType: !222, size: 32, offset: 1184)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1109, file: !1110, line: 55, baseType: !180, size: 64, offset: 1216)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !1001, file: !14, line: 1990, baseType: !1134, size: 64, offset: 960)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!1137, !949, !838, !1140}
!1137 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !186, line: 66, baseType: !1138)
!1138 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !428, line: 73, baseType: !1139)
!1139 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !428, line: 15, baseType: !148)
!1140 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !186, line: 61, baseType: !1141)
!1141 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !428, line: 72, baseType: !1142)
!1142 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !428, line: 16, baseType: !187)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !1001, file: !14, line: 1991, baseType: !1144, size: 64, offset: 1024)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = !DISubroutineType(types: !1146)
!1146 = !{!109, !984, !1147, !180, !180}
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !1001, file: !14, line: 1993, baseType: !1150, size: 64, offset: 1088)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = !DISubroutineType(types: !1152)
!1152 = !{!109, !984, !109}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !1001, file: !14, line: 1994, baseType: !1154, size: 64, offset: 1152)
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1155 = !DISubroutineType(types: !1156)
!1156 = !{!109, !984, !949, !597, !7, !988}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !1001, file: !14, line: 1997, baseType: !1158, size: 64, offset: 1216)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = !DISubroutineType(types: !1160)
!1160 = !{!109, !1024, !984, !597, !988}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !1001, file: !14, line: 1999, baseType: !1162, size: 64, offset: 1280)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = !DISubroutineType(types: !1164)
!1164 = !{!995, !1024, !949, !109}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !1001, file: !14, line: 2001, baseType: !1166, size: 64, offset: 1344)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = !DISubroutineType(types: !1168)
!1168 = !{!109, !1024, !949, !995, !109}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !1001, file: !14, line: 2003, baseType: !1170, size: 64, offset: 1408)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = !DISubroutineType(types: !1172)
!1172 = !{!109, !1024, !949, !1173}
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !1001, file: !14, line: 2005, baseType: !1176, size: 64, offset: 1472)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{!109, !949, !1173}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !1001, file: !14, line: 2006, baseType: !1180, size: 64, offset: 1536)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = !DISubroutineType(types: !1182)
!1182 = !{!1183, !984}
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !1185)
!1185 = !{!1186, !1194}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1184, file: !14, line: 3193, baseType: !1187, size: 128)
!1187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1188, line: 296, size: 128, elements: !1189)
!1188 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1189 = !{!1190, !1191, !1193}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1187, file: !1188, line: 297, baseType: !579, size: 32)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1187, file: !1188, line: 299, baseType: !1192, size: 32, offset: 32)
!1192 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !186, line: 154, baseType: !7)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1187, file: !1188, line: 300, baseType: !147, size: 64, offset: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1184, file: !14, line: 3194, baseType: !222, size: 32, offset: 128)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !985, file: !14, line: 655, baseType: !1196, size: 64, offset: 448)
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !1198)
!1198 = !{!1199, !1200, !1201, !1202, !1203, !1204, !2468, !2600, !2640, !2723, !2727, !2728, !2729, !2730, !2731, !2732, !2733, !2734, !2735, !2740, !2744, !2745, !2748, !2751, !2754, !2757, !2758, !2759, !2800, !2826, !2827, !2828, !2829, !2830, !2831, !2834, !2838, !2847, !2848, !2849, !2850, !2909, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931, !2946, !2947, !2948, !2949, !2950, !2951, !2952, !2953, !2954}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1197, file: !14, line: 1191, baseType: !288, size: 128)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1197, file: !14, line: 1192, baseType: !1059, size: 32, offset: 128)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1197, file: !14, line: 1193, baseType: !161, size: 8, offset: 160)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1197, file: !14, line: 1194, baseType: !187, size: 64, offset: 192)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1197, file: !14, line: 1195, baseType: !637, size: 64, offset: 256)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1197, file: !14, line: 1196, baseType: !1205, size: 64, offset: 320)
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !1207)
!1207 = !{!1208, !1209, !1210, !1216, !1220, !1224, !1228, !2456, !2457, !2458, !2460, !2461, !2462, !2464, !2465, !2466, !2467}
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1206, file: !14, line: 2367, baseType: !828, size: 64)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1206, file: !14, line: 2368, baseType: !109, size: 32, offset: 64)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1206, file: !14, line: 2376, baseType: !1211, size: 64, offset: 128)
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = !DISubroutineType(types: !1213)
!1213 = !{!109, !1214}
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1215 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !946, line: 21, flags: DIFlagFwdDecl)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1206, file: !14, line: 2377, baseType: !1217, size: 64, offset: 192)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1219)
!1219 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1206, file: !14, line: 2378, baseType: !1221, size: 64, offset: 256)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = !DISubroutineType(types: !1223)
!1223 = !{!949, !1205, !109, !828, !147}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1206, file: !14, line: 2380, baseType: !1225, size: 64, offset: 320)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = !DISubroutineType(types: !1227)
!1227 = !{null, !1196}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1206, file: !14, line: 2381, baseType: !1229, size: 64, offset: 384)
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64)
!1230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !1231)
!1231 = !{!1232, !1233, !1234, !1238, !2102, !2128, !2129, !2130, !2131, !2135, !2138, !2139, !2140, !2192, !2193, !2194, !2195, !2196, !2197, !2198, !2199, !2207, !2211, !2231, !2250, !2251, !2252, !2253, !2262, !2285, !2286, !2289, !2292, !2293, !2294, !2295, !2296, !2297, !2298, !2303, !2304, !2415, !2423, !2424, !2425, !2427, !2431, !2432, !2436, !2437, !2438, !2439, !2440, !2441, !2442, !2449, !2450, !2451, !2455}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1230, file: !6, line: 403, baseType: !5, size: 32)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1230, file: !6, line: 406, baseType: !288, size: 128, offset: 64)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1230, file: !6, line: 409, baseType: !1235, size: 448, offset: 192)
!1235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 448, elements: !1236)
!1236 = !{!1237}
!1237 = !DISubrange(count: 56)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1230, file: !6, line: 417, baseType: !1239, size: 768, offset: 640)
!1239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !1240)
!1240 = !{!1241, !2095, !2096, !2097, !2100}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1239, file: !6, line: 46, baseType: !1242, size: 512)
!1242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1243, line: 64, size: 512, elements: !1244)
!1243 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1244 = !{!1245, !1246, !1247, !1249, !1293, !1950, !2085, !2090, !2091, !2092, !2093, !2094}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1242, file: !1243, line: 65, baseType: !828, size: 64)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1242, file: !1243, line: 66, baseType: !288, size: 128, offset: 64)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1242, file: !1243, line: 67, baseType: !1248, size: 64, offset: 192)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1242, file: !1243, line: 68, baseType: !1250, size: 64, offset: 256)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1243, line: 168, size: 768, elements: !1252)
!1252 = !{!1253, !1254, !1255, !1256}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1251, file: !1243, line: 169, baseType: !288, size: 128)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1251, file: !1243, line: 170, baseType: !579, size: 32, offset: 128)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1251, file: !1243, line: 171, baseType: !1242, size: 512, offset: 192)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1251, file: !1243, line: 172, baseType: !1257, size: 64, offset: 704)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1259)
!1259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1243, line: 133, size: 192, elements: !1260)
!1260 = !{!1261, !1268, !1273}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1259, file: !1243, line: 134, baseType: !1262, size: 64)
!1262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1263)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1264 = !DISubroutineType(types: !1265)
!1265 = !{!109, !1266}
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1242)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1259, file: !1243, line: 135, baseType: !1269, size: 64, offset: 64)
!1269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1270)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = !DISubroutineType(types: !1272)
!1272 = !{!828, !1266}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1259, file: !1243, line: 136, baseType: !1274, size: 64, offset: 128)
!1274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1275)
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1276 = !DISubroutineType(types: !1277)
!1277 = !{!109, !1266, !1278}
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1243, line: 125, size: 20736, elements: !1280)
!1280 = !{!1281, !1283, !1287, !1288, !1292}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1279, file: !1243, line: 126, baseType: !1282, size: 192)
!1282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !838, size: 192, elements: !663)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1279, file: !1243, line: 127, baseType: !1284, size: 4096, offset: 192)
!1284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !838, size: 4096, elements: !1285)
!1285 = !{!1286}
!1286 = !DISubrange(count: 64)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1279, file: !1243, line: 128, baseType: !109, size: 32, offset: 4288)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1279, file: !1243, line: 129, baseType: !1289, size: 16384, offset: 4320)
!1289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 16384, elements: !1290)
!1290 = !{!1291}
!1291 = !DISubrange(count: 2048)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1279, file: !1243, line: 130, baseType: !109, size: 32, offset: 20704)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1242, file: !1243, line: 69, baseType: !1294, size: 64, offset: 320)
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1295 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1296)
!1296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1243, line: 116, size: 384, elements: !1297)
!1297 = !{!1298, !1302, !1321, !1910, !1940, !1944}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1296, file: !1243, line: 117, baseType: !1299, size: 64)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = !DISubroutineType(types: !1301)
!1301 = !{null, !1248}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1296, file: !1243, line: 118, baseType: !1303, size: 64, offset: 64)
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1304 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1305)
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1306, line: 254, size: 128, elements: !1307)
!1306 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1307 = !{!1308, !1317}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1305, file: !1306, line: 255, baseType: !1309, size: 64)
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1310 = !DISubroutineType(types: !1311)
!1311 = !{!1137, !1248, !1312, !838}
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1306, line: 30, size: 128, elements: !1314)
!1314 = !{!1315, !1316}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1313, file: !1306, line: 31, baseType: !828, size: 64)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1313, file: !1306, line: 32, baseType: !988, size: 16, offset: 64)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1305, file: !1306, line: 256, baseType: !1318, size: 64, offset: 64)
!1318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1319, size: 64)
!1319 = !DISubroutineType(types: !1320)
!1320 = !{!1137, !1248, !1312, !828, !1140}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1296, file: !1243, line: 119, baseType: !1322, size: 64, offset: 128)
!1322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1323, size: 64)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1325)
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1306, line: 84, size: 320, elements: !1326)
!1326 = !{!1327, !1328, !1332, !1906, !1908}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1325, file: !1306, line: 85, baseType: !828, size: 64)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1325, file: !1306, line: 86, baseType: !1329, size: 64, offset: 64)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = !DISubroutineType(types: !1331)
!1331 = !{!988, !1248, !1312, !109}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1325, file: !1306, line: 88, baseType: !1333, size: 64, offset: 128)
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1334 = !DISubroutineType(types: !1335)
!1335 = !{!988, !1248, !1336, !109}
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1306, line: 175, size: 512, elements: !1338)
!1338 = !{!1339, !1340, !1341, !1342, !1897, !1901, !1902}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1337, file: !1306, line: 176, baseType: !1313, size: 128)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1337, file: !1306, line: 177, baseType: !1140, size: 64, offset: 128)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1337, file: !1306, line: 178, baseType: !147, size: 64, offset: 192)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1337, file: !1306, line: 179, baseType: !1343, size: 64, offset: 256)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = !DISubroutineType(types: !1345)
!1345 = !{!1346}
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !1348)
!1348 = !{!1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1889, !1890, !1891, !1894, !1895, !1896}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1347, file: !14, line: 473, baseType: !984, size: 64)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1347, file: !14, line: 474, baseType: !1187, size: 128, offset: 64)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1347, file: !14, line: 475, baseType: !766, size: 320, offset: 192)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1347, file: !14, line: 476, baseType: !1192, size: 32, offset: 512)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1347, file: !14, line: 477, baseType: !233, size: 32, offset: 544)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1347, file: !14, line: 482, baseType: !444, size: 128, offset: 576)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1347, file: !14, line: 483, baseType: !187, size: 64, offset: 704)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1347, file: !14, line: 484, baseType: !187, size: 64, offset: 768)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1347, file: !14, line: 485, baseType: !1358, size: 64, offset: 832)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1360)
!1360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !1361)
!1361 = !{!1362, !1664, !1734, !1738, !1742, !1748, !1754, !1758, !1763, !1767, !1771, !1775, !1853, !1857, !1861, !1865, !1870, !1874, !1881, !1885}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1360, file: !14, line: 405, baseType: !1363, size: 64)
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1364 = !DISubroutineType(types: !1365)
!1365 = !{!109, !1366, !1662}
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !27, line: 74, size: 512, align: 128, elements: !1368)
!1368 = !{!1369, !1370, !1656, !1661}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1367, file: !27, line: 75, baseType: !187, size: 64)
!1370 = !DIDerivedType(tag: DW_TAG_member, scope: !1367, file: !27, line: 83, baseType: !1371, size: 320, offset: 64)
!1371 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1367, file: !27, line: 83, size: 320, elements: !1372)
!1372 = !{!1373, !1394, !1408, !1412, !1655}
!1373 = !DIDerivedType(tag: DW_TAG_member, scope: !1371, file: !27, line: 84, baseType: !1374, size: 320)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1371, file: !27, line: 84, size: 320, elements: !1375)
!1375 = !{!1376, !1387, !1388, !1393}
!1376 = !DIDerivedType(tag: DW_TAG_member, scope: !1374, file: !27, line: 90, baseType: !1377, size: 128)
!1377 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1374, file: !27, line: 90, size: 128, elements: !1378)
!1378 = !{!1379, !1380, !1385, !1386}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1377, file: !27, line: 91, baseType: !288, size: 128)
!1380 = !DIDerivedType(tag: DW_TAG_member, scope: !1377, file: !27, line: 94, baseType: !1381, size: 128)
!1381 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1377, file: !27, line: 94, size: 128, elements: !1382)
!1382 = !{!1383, !1384}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1381, file: !27, line: 96, baseType: !147, size: 64)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1381, file: !27, line: 98, baseType: !7, size: 32, offset: 64)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1377, file: !27, line: 102, baseType: !288, size: 128)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1377, file: !27, line: 103, baseType: !288, size: 128)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1374, file: !27, line: 106, baseType: !1346, size: 64, offset: 128)
!1388 = !DIDerivedType(tag: DW_TAG_member, scope: !1374, file: !27, line: 107, baseType: !1389, size: 64, offset: 192)
!1389 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1374, file: !27, line: 107, size: 64, elements: !1390)
!1390 = !{!1391, !1392}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1389, file: !27, line: 108, baseType: !187, size: 64)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1389, file: !27, line: 109, baseType: !187, size: 64)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1374, file: !27, line: 117, baseType: !187, size: 64, offset: 256)
!1394 = !DIDerivedType(tag: DW_TAG_member, scope: !1371, file: !27, line: 119, baseType: !1395, size: 320)
!1395 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1371, file: !27, line: 119, size: 320, elements: !1396)
!1396 = !{!1397, !1398, !1401, !1402, !1403}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1395, file: !27, line: 124, baseType: !187, size: 64)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1395, file: !27, line: 125, baseType: !1399, size: 64, offset: 64)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !27, line: 125, flags: DIFlagFwdDecl)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1395, file: !27, line: 126, baseType: !187, size: 64, offset: 128)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1395, file: !27, line: 127, baseType: !187, size: 64, offset: 192)
!1403 = !DIDerivedType(tag: DW_TAG_member, scope: !1395, file: !27, line: 128, baseType: !1404, size: 64, offset: 256)
!1404 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1395, file: !27, line: 128, size: 64, elements: !1405)
!1405 = !{!1406, !1407}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1404, file: !27, line: 133, baseType: !187, size: 64)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1404, file: !27, line: 138, baseType: !618, size: 64)
!1408 = !DIDerivedType(tag: DW_TAG_member, scope: !1371, file: !27, line: 141, baseType: !1409, size: 64)
!1409 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1371, file: !27, line: 141, size: 64, elements: !1410)
!1410 = !{!1411}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1409, file: !27, line: 142, baseType: !187, size: 64)
!1412 = !DIDerivedType(tag: DW_TAG_member, scope: !1371, file: !27, line: 144, baseType: !1413, size: 128)
!1413 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1371, file: !27, line: 144, size: 128, elements: !1414)
!1414 = !{!1415, !1654}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1413, file: !27, line: 146, baseType: !1416, size: 64)
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!1417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !43, line: 126, size: 1216, elements: !1418)
!1418 = !{!1419, !1428, !1449, !1460, !1461, !1462, !1463, !1636, !1637, !1638}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1417, file: !43, line: 127, baseType: !1420, size: 384)
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !43, line: 21, size: 384, elements: !1421)
!1421 = !{!1422, !1423, !1424, !1425, !1426, !1427}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1420, file: !43, line: 22, baseType: !187, size: 64)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1420, file: !43, line: 23, baseType: !189, size: 64, offset: 64)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1420, file: !43, line: 24, baseType: !189, size: 64, offset: 128)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1420, file: !43, line: 25, baseType: !187, size: 64, offset: 192)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1420, file: !43, line: 26, baseType: !187, size: 64, offset: 256)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1420, file: !43, line: 27, baseType: !187, size: 64, offset: 320)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1417, file: !43, line: 128, baseType: !1429, size: 128, offset: 384)
!1429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1430, line: 105, size: 128, elements: !1431)
!1430 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1431 = !{!1432, !1433}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1429, file: !1430, line: 110, baseType: !187, size: 64)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1429, file: !1430, line: 118, baseType: !1434, size: 64, offset: 64)
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1430, line: 95, size: 448, elements: !1436)
!1436 = !{!1437, !1438, !1444, !1445, !1446, !1447, !1448}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1435, file: !1430, line: 96, baseType: !618, size: 64)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1435, file: !1430, line: 97, baseType: !1439, size: 64, offset: 64)
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!1440 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1430, line: 60, baseType: !1441)
!1441 = !DISubroutineType(types: !1442)
!1442 = !{null, !1443}
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1435, file: !1430, line: 98, baseType: !1439, size: 64, offset: 128)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1435, file: !1430, line: 99, baseType: !825, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1435, file: !1430, line: 100, baseType: !825, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1435, file: !1430, line: 101, baseType: !605, size: 128, align: 64, offset: 256)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1435, file: !1430, line: 102, baseType: !1443, size: 64, offset: 384)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1417, file: !43, line: 129, baseType: !1450, size: 256, offset: 512)
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1451, line: 26, size: 256, elements: !1452)
!1451 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1452 = !{!1453, !1454}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1450, file: !1451, line: 27, baseType: !7, size: 32)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1450, file: !1451, line: 28, baseType: !1455, size: 192, offset: 64)
!1455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1456, line: 43, size: 192, elements: !1457)
!1456 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1457 = !{!1458, !1459}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1455, file: !1456, line: 44, baseType: !381, size: 32)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1455, file: !1456, line: 45, baseType: !288, size: 128, offset: 64)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1417, file: !43, line: 130, baseType: !42, size: 32, offset: 768)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1417, file: !43, line: 131, baseType: !7, size: 32, offset: 800)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1417, file: !43, line: 132, baseType: !187, size: 64, offset: 832)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1417, file: !43, line: 133, baseType: !1464, size: 64, offset: 896)
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1465 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1466)
!1466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !43, line: 77, size: 192, elements: !1467)
!1467 = !{!1468, !1472, !1632}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1466, file: !43, line: 83, baseType: !1469, size: 64)
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1470 = !DISubroutineType(types: !1471)
!1471 = !{null, !1366}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1466, file: !43, line: 89, baseType: !1473, size: 64, offset: 64)
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1474 = !DISubroutineType(types: !1475)
!1475 = !{!1476, !1477}
!1476 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !27, line: 1184, baseType: !7)
!1477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1478, size: 64)
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1479, line: 512, size: 896, elements: !1480)
!1479 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1480 = !{!1481, !1599, !1600, !1607, !1614, !1624, !1625, !1626, !1628, !1630}
!1481 = !DIDerivedType(tag: DW_TAG_member, scope: !1478, file: !1479, line: 513, baseType: !1482, size: 320)
!1482 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1478, file: !1479, line: 513, size: 320, elements: !1483)
!1483 = !{!1484, !1595, !1596, !1597, !1598}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1482, file: !1479, line: 514, baseType: !1485, size: 64)
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!1486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !27, line: 625, size: 1344, elements: !1487)
!1487 = !{!1488, !1497, !1498, !1506, !1513, !1514, !1519, !1520, !1525, !1526, !1529, !1588, !1589, !1590, !1591, !1592, !1593}
!1488 = !DIDerivedType(tag: DW_TAG_member, scope: !1486, file: !27, line: 628, baseType: !1489, size: 128)
!1489 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1486, file: !27, line: 628, size: 128, elements: !1490)
!1490 = !{!1491, !1496}
!1491 = !DIDerivedType(tag: DW_TAG_member, scope: !1489, file: !27, line: 629, baseType: !1492, size: 128)
!1492 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1489, file: !27, line: 629, size: 128, elements: !1493)
!1493 = !{!1494, !1495}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1492, file: !27, line: 631, baseType: !187, size: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1492, file: !27, line: 632, baseType: !187, size: 64, offset: 64)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1489, file: !27, line: 635, baseType: !605, size: 128, align: 64)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1486, file: !27, line: 639, baseType: !561, size: 64, offset: 128)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1486, file: !27, line: 640, baseType: !1499, size: 64, offset: 192)
!1499 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1500, line: 297, baseType: !1501)
!1500 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1500, line: 297, size: 64, elements: !1502)
!1502 = !{!1503}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1501, file: !1500, line: 297, baseType: !1504, size: 64)
!1504 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1505, line: 19, baseType: !187)
!1505 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1506 = !DIDerivedType(tag: DW_TAG_member, scope: !1486, file: !27, line: 646, baseType: !1507, size: 64, offset: 256)
!1507 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1486, file: !27, line: 646, size: 64, elements: !1508)
!1508 = !{!1509, !1512}
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1507, file: !27, line: 647, baseType: !1510, size: 64)
!1510 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1511)
!1511 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !27, line: 542, baseType: !187)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1507, file: !27, line: 648, baseType: !1511, size: 64)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1486, file: !27, line: 666, baseType: !109, size: 32, offset: 320)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1486, file: !27, line: 667, baseType: !1515, size: 64, offset: 384)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !27, line: 579, size: 320, elements: !1517)
!1517 = !{!1518}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1516, file: !27, line: 580, baseType: !766, size: 320)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1486, file: !27, line: 670, baseType: !825, size: 8, offset: 448)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1486, file: !27, line: 681, baseType: !1521, size: 256, offset: 512)
!1521 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1486, file: !27, line: 678, size: 256, elements: !1522)
!1522 = !{!1523, !1524}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1521, file: !27, line: 679, baseType: !278, size: 192, align: 64)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1521, file: !27, line: 680, baseType: !187, size: 64, offset: 192)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1486, file: !27, line: 689, baseType: !288, size: 128, offset: 768)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1486, file: !27, line: 691, baseType: !1527, size: 64, offset: 896)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !27, line: 691, flags: DIFlagFwdDecl)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1486, file: !27, line: 694, baseType: !1530, size: 64, offset: 960)
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1532)
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1479, line: 563, size: 1024, elements: !1533)
!1533 = !{!1534, !1538, !1539, !1543, !1547, !1551, !1552, !1556, !1560, !1564, !1565, !1566, !1570, !1574, !1580, !1584}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1532, file: !1479, line: 564, baseType: !1535, size: 64)
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1536 = !DISubroutineType(types: !1537)
!1537 = !{null, !1485}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1532, file: !1479, line: 569, baseType: !1535, size: 64, offset: 64)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1532, file: !1479, line: 571, baseType: !1540, size: 64, offset: 128)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = !DISubroutineType(types: !1542)
!1542 = !{!109, !1485, !187}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1532, file: !1479, line: 572, baseType: !1544, size: 64, offset: 192)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = !DISubroutineType(types: !1546)
!1546 = !{!109, !1485}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1532, file: !1479, line: 578, baseType: !1548, size: 64, offset: 256)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = !DISubroutineType(types: !1550)
!1550 = !{!109, !1485, !187, !187, !187}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1532, file: !1479, line: 580, baseType: !1473, size: 64, offset: 320)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1532, file: !1479, line: 581, baseType: !1553, size: 64, offset: 384)
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64)
!1554 = !DISubroutineType(types: !1555)
!1555 = !{!1476, !1477, !7}
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1532, file: !1479, line: 582, baseType: !1557, size: 64, offset: 448)
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1558 = !DISubroutineType(types: !1559)
!1559 = !{!1476, !1477, !187, !187}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1532, file: !1479, line: 584, baseType: !1561, size: 64, offset: 512)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = !DISubroutineType(types: !1563)
!1563 = !{!187, !1485}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1532, file: !1479, line: 588, baseType: !1473, size: 64, offset: 576)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1532, file: !1479, line: 591, baseType: !1473, size: 64, offset: 640)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1532, file: !1479, line: 597, baseType: !1567, size: 64, offset: 704)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = !DISubroutineType(types: !1569)
!1569 = !{!109, !1485, !187, !147, !109, !109}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1532, file: !1479, line: 603, baseType: !1571, size: 64, offset: 768)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = !DISubroutineType(types: !1573)
!1573 = !{!828, !1485}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1532, file: !1479, line: 613, baseType: !1575, size: 64, offset: 832)
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1576, size: 64)
!1576 = !DISubroutineType(types: !1577)
!1577 = !{!109, !1485, !1578}
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1579 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !213, line: 54, flags: DIFlagFwdDecl)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1532, file: !1479, line: 625, baseType: !1581, size: 64, offset: 896)
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = !DISubroutineType(types: !1583)
!1583 = !{!1578, !1485, !187}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1532, file: !1479, line: 633, baseType: !1585, size: 64, offset: 960)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DISubroutineType(types: !1587)
!1587 = !{!1366, !1485, !187}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1486, file: !27, line: 697, baseType: !187, size: 64, offset: 1024)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1486, file: !27, line: 699, baseType: !597, size: 64, offset: 1088)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1486, file: !27, line: 700, baseType: !147, size: 64, offset: 1152)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1486, file: !27, line: 711, baseType: !618, size: 64, offset: 1216)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1486, file: !27, line: 717, baseType: !1578, size: 64, offset: 1280)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1486, file: !27, line: 722, baseType: !1594, offset: 1344)
!1594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !27, line: 570, elements: !590)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1482, file: !1479, line: 515, baseType: !1192, size: 32, offset: 64)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1482, file: !1479, line: 516, baseType: !187, size: 64, offset: 128)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1482, file: !1479, line: 517, baseType: !187, size: 64, offset: 192)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1482, file: !1479, line: 518, baseType: !187, size: 64, offset: 256)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1478, file: !1479, line: 520, baseType: !26, size: 32, offset: 320)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1478, file: !1479, line: 522, baseType: !1601, size: 64, offset: 384)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1505, line: 22, baseType: !1603)
!1603 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1505, line: 22, size: 64, elements: !1604)
!1604 = !{!1605}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1603, file: !1505, line: 22, baseType: !1606, size: 64)
!1606 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1505, line: 15, baseType: !187)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1478, file: !1479, line: 524, baseType: !1608, size: 64, offset: 448)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1500, line: 372, baseType: !1610)
!1610 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1500, line: 372, size: 64, elements: !1611)
!1611 = !{!1612}
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1610, file: !1500, line: 372, baseType: !1613, size: 64)
!1613 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1505, line: 16, baseType: !187)
!1614 = !DIDerivedType(tag: DW_TAG_member, scope: !1478, file: !1479, line: 527, baseType: !1615, size: 64, offset: 512)
!1615 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1478, file: !1479, line: 527, size: 64, elements: !1616)
!1616 = !{!1617, !1623}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1615, file: !1479, line: 528, baseType: !1618, size: 64)
!1618 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1505, line: 21, baseType: !1619)
!1619 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1505, line: 21, size: 64, elements: !1620)
!1620 = !{!1621}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1619, file: !1505, line: 21, baseType: !1622, size: 64)
!1622 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1505, line: 14, baseType: !187)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1615, file: !1479, line: 529, baseType: !1602, size: 64)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1478, file: !1479, line: 534, baseType: !1366, size: 64, offset: 576)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1478, file: !1479, line: 535, baseType: !1366, size: 64, offset: 640)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1478, file: !1479, line: 541, baseType: !1627, size: 64, offset: 704)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1478, file: !1479, line: 545, baseType: !1629, size: 64, offset: 768)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1478, file: !1479, line: 549, baseType: !1631, size: 64, offset: 832)
!1631 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1500, line: 520, baseType: !1366)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1466, file: !43, line: 100, baseType: !1633, size: 64, offset: 128)
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1634 = !DISubroutineType(types: !1635)
!1635 = !{!109, !1416, !187, !187, !109}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1417, file: !43, line: 134, baseType: !147, size: 64, offset: 960)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1417, file: !43, line: 135, baseType: !109, size: 32, offset: 1024)
!1638 = !DIDerivedType(tag: DW_TAG_member, scope: !1417, file: !43, line: 136, baseType: !1639, size: 128, offset: 1088)
!1639 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1417, file: !43, line: 136, size: 128, elements: !1640)
!1640 = !{!1641, !1647}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1639, file: !43, line: 137, baseType: !1642, size: 128)
!1642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1643, line: 6, size: 128, elements: !1644)
!1643 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1644 = !{!1645, !1646}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1642, file: !1643, line: 7, baseType: !180, size: 64)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1642, file: !1643, line: 8, baseType: !180, size: 64, offset: 64)
!1647 = !DIDerivedType(tag: DW_TAG_member, scope: !1639, file: !43, line: 138, baseType: !1648)
!1648 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1639, file: !43, line: 138, elements: !1649)
!1649 = !{!1650, !1652}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1648, file: !43, line: 138, baseType: !1651)
!1651 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1648, file: !43, line: 138, elements: !590)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1648, file: !43, line: 138, baseType: !1653)
!1653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1642, elements: !703)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1413, file: !27, line: 147, baseType: !147, size: 64, offset: 64)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1371, file: !27, line: 161, baseType: !605, size: 128, align: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, scope: !1367, file: !27, line: 164, baseType: !1657, size: 32, offset: 384)
!1657 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1367, file: !27, line: 164, size: 32, elements: !1658)
!1658 = !{!1659, !1660}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1657, file: !27, line: 169, baseType: !233, size: 32)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1657, file: !27, line: 177, baseType: !7, size: 32)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1367, file: !27, line: 181, baseType: !233, size: 32, offset: 416)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1663 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1360, file: !14, line: 406, baseType: !1665, size: 64, offset: 64)
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = !DISubroutineType(types: !1667)
!1667 = !{!109, !597, !1668}
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !27, line: 293, size: 1536, elements: !1670)
!1670 = !{!1671, !1701, !1715}
!1671 = !DIDerivedType(tag: DW_TAG_member, scope: !1669, file: !27, line: 295, baseType: !1672, size: 512)
!1672 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1669, file: !27, line: 295, size: 512, elements: !1673)
!1673 = !{!1674, !1700}
!1674 = !DIDerivedType(tag: DW_TAG_member, scope: !1672, file: !27, line: 296, baseType: !1675, size: 448)
!1675 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1672, file: !27, line: 296, size: 448, elements: !1676)
!1676 = !{!1677, !1678, !1687, !1688, !1689, !1698, !1699}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1675, file: !27, line: 298, baseType: !187, size: 64)
!1678 = !DIDerivedType(tag: DW_TAG_member, scope: !1675, file: !27, line: 299, baseType: !1679, size: 128, offset: 64)
!1679 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1675, file: !27, line: 299, size: 128, elements: !1680)
!1680 = !{!1681, !1682}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1679, file: !27, line: 300, baseType: !288, size: 128)
!1682 = !DIDerivedType(tag: DW_TAG_member, scope: !1679, file: !27, line: 302, baseType: !1683, size: 128)
!1683 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1679, file: !27, line: 302, size: 128, elements: !1684)
!1684 = !{!1685, !1686}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1683, file: !27, line: 303, baseType: !147, size: 64)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1683, file: !27, line: 305, baseType: !7, size: 32, offset: 64)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1675, file: !27, line: 310, baseType: !1346, size: 64, offset: 192)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1675, file: !27, line: 311, baseType: !187, size: 64, offset: 256)
!1689 = !DIDerivedType(tag: DW_TAG_member, scope: !1675, file: !27, line: 312, baseType: !1690, size: 64, offset: 320)
!1690 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1675, file: !27, line: 312, size: 64, elements: !1691)
!1691 = !{!1692, !1693}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1690, file: !27, line: 313, baseType: !147, size: 64)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1690, file: !27, line: 314, baseType: !1694, size: 64)
!1694 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !27, line: 257, baseType: !1695)
!1695 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !27, line: 255, size: 64, elements: !1696)
!1696 = !{!1697}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1695, file: !27, line: 256, baseType: !187, size: 64)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1675, file: !27, line: 316, baseType: !233, size: 32, offset: 384)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1675, file: !27, line: 317, baseType: !233, size: 32, offset: 416)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1672, file: !27, line: 323, baseType: !1367, size: 512, align: 128)
!1701 = !DIDerivedType(tag: DW_TAG_member, scope: !1669, file: !27, line: 325, baseType: !1702, size: 512, offset: 512)
!1702 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1669, file: !27, line: 325, size: 512, elements: !1703)
!1703 = !{!1704, !1714}
!1704 = !DIDerivedType(tag: DW_TAG_member, scope: !1702, file: !27, line: 326, baseType: !1705, size: 320)
!1705 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1702, file: !27, line: 326, size: 320, elements: !1706)
!1706 = !{!1707, !1708, !1709, !1710, !1711, !1712, !1713}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1705, file: !27, line: 327, baseType: !187, size: 64)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1705, file: !27, line: 328, baseType: !187, size: 64, offset: 64)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1705, file: !27, line: 329, baseType: !187, size: 64, offset: 128)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1705, file: !27, line: 331, baseType: !233, size: 32, offset: 192)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1705, file: !27, line: 332, baseType: !233, size: 32, offset: 224)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1705, file: !27, line: 333, baseType: !233, size: 32, offset: 256)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1705, file: !27, line: 335, baseType: !7, size: 32, offset: 288)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1702, file: !27, line: 339, baseType: !1367, size: 512, align: 128)
!1715 = !DIDerivedType(tag: DW_TAG_member, scope: !1669, file: !27, line: 341, baseType: !1716, size: 512, offset: 1024)
!1716 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1669, file: !27, line: 341, size: 512, elements: !1717)
!1717 = !{!1718, !1727, !1733}
!1718 = !DIDerivedType(tag: DW_TAG_member, scope: !1716, file: !27, line: 342, baseType: !1719, size: 384)
!1719 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1716, file: !27, line: 342, size: 384, elements: !1720)
!1720 = !{!1721, !1722, !1723, !1724, !1725, !1726}
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1719, file: !27, line: 343, baseType: !187, size: 64)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1719, file: !27, line: 344, baseType: !187, size: 64, offset: 64)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1719, file: !27, line: 346, baseType: !147, size: 64, offset: 128)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1719, file: !27, line: 347, baseType: !147, size: 64, offset: 192)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1719, file: !27, line: 348, baseType: !147, size: 64, offset: 256)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1719, file: !27, line: 349, baseType: !147, size: 64, offset: 320)
!1727 = !DIDerivedType(tag: DW_TAG_member, scope: !1716, file: !27, line: 352, baseType: !1728, size: 256)
!1728 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1716, file: !27, line: 352, size: 256, elements: !1729)
!1729 = !{!1730, !1731, !1732}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1728, file: !27, line: 353, baseType: !187, size: 64)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1728, file: !27, line: 354, baseType: !187, size: 64, offset: 64)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1728, file: !27, line: 356, baseType: !288, size: 128, offset: 128)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1716, file: !27, line: 359, baseType: !1367, size: 512, align: 128)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1360, file: !14, line: 409, baseType: !1735, size: 64, offset: 128)
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!1736 = !DISubroutineType(types: !1737)
!1737 = !{!109, !1346, !1662}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1360, file: !14, line: 412, baseType: !1739, size: 64, offset: 192)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1740 = !DISubroutineType(types: !1741)
!1741 = !{!825, !1346, !1668}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1360, file: !14, line: 414, baseType: !1743, size: 64, offset: 256)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = !DISubroutineType(types: !1745)
!1745 = !{null, !1746}
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !14, line: 310, flags: DIFlagFwdDecl)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1360, file: !14, line: 416, baseType: !1749, size: 64, offset: 320)
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = !DISubroutineType(types: !1751)
!1751 = !{!109, !597, !1346, !637, !7, !1752, !1753}
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1360, file: !14, line: 419, baseType: !1755, size: 64, offset: 384)
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1756, size: 64)
!1756 = !DISubroutineType(types: !1757)
!1757 = !{!109, !597, !1346, !637, !7, !7, !1366, !147}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1360, file: !14, line: 424, baseType: !1759, size: 64, offset: 448)
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1760, size: 64)
!1760 = !DISubroutineType(types: !1761)
!1761 = !{!1762, !1346, !1762}
!1762 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !186, line: 131, baseType: !180)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1360, file: !14, line: 425, baseType: !1764, size: 64, offset: 512)
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1765, size: 64)
!1765 = !DISubroutineType(types: !1766)
!1766 = !{null, !1668, !1140, !1140}
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1360, file: !14, line: 426, baseType: !1768, size: 64, offset: 576)
!1768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1769, size: 64)
!1769 = !DISubroutineType(types: !1770)
!1770 = !{!825, !1668, !1192}
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1360, file: !14, line: 427, baseType: !1772, size: 64, offset: 640)
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1773, size: 64)
!1773 = !DISubroutineType(types: !1774)
!1774 = !{null, !1668}
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1360, file: !14, line: 428, baseType: !1776, size: 64, offset: 704)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1777 = !DISubroutineType(types: !1778)
!1778 = !{!1137, !1779, !1801}
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !1781)
!1781 = !{!1782, !1783, !1784, !1788, !1789, !1790, !1791}
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1780, file: !14, line: 374, baseType: !597, size: 64)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1780, file: !14, line: 375, baseType: !637, size: 64, offset: 64)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1780, file: !14, line: 376, baseType: !1785, size: 64, offset: 128)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = !DISubroutineType(types: !1787)
!1787 = !{null, !1779, !148}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1780, file: !14, line: 377, baseType: !147, size: 64, offset: 192)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1780, file: !14, line: 378, baseType: !109, size: 32, offset: 256)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1780, file: !14, line: 379, baseType: !256, size: 16, offset: 288)
!1791 = !DIDerivedType(tag: DW_TAG_member, scope: !1780, file: !14, line: 380, baseType: !1792, size: 64, offset: 320)
!1792 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1780, file: !14, line: 380, size: 64, elements: !1793)
!1793 = !{!1794, !1797}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1792, file: !14, line: 386, baseType: !1795, size: 64)
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1796, size: 64)
!1796 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !14, line: 386, flags: DIFlagFwdDecl)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1792, file: !14, line: 395, baseType: !1798, size: 64)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1799 = !DISubroutineType(types: !1800)
!1800 = !{!1137, !147}
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !1803, line: 41, size: 320, elements: !1804)
!1803 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!1804 = !{!1805, !1806, !1807, !1808, !1809, !1810, !1815, !1848}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !1802, file: !1803, line: 42, baseType: !398, size: 8)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !1802, file: !1803, line: 43, baseType: !825, size: 8, offset: 8)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !1802, file: !1803, line: 44, baseType: !825, size: 8, offset: 16)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !1802, file: !1803, line: 45, baseType: !825, size: 8, offset: 24)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !1802, file: !1803, line: 46, baseType: !825, size: 8, offset: 32)
!1810 = !DIDerivedType(tag: DW_TAG_member, scope: !1802, file: !1803, line: 47, baseType: !1811, size: 64, offset: 64)
!1811 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1802, file: !1803, line: 47, size: 64, elements: !1812)
!1812 = !{!1813, !1814}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !1811, file: !1803, line: 48, baseType: !1140, size: 64)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !1811, file: !1803, line: 49, baseType: !109, size: 32)
!1815 = !DIDerivedType(tag: DW_TAG_member, scope: !1802, file: !1803, line: 61, baseType: !1816, size: 128, offset: 128)
!1816 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1802, file: !1803, line: 61, size: 128, elements: !1817)
!1817 = !{!1818, !1824}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !1816, file: !1803, line: 67, baseType: !1819, size: 128)
!1819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !1820, line: 17, size: 128, elements: !1821)
!1820 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!1821 = !{!1822, !1823}
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1819, file: !1820, line: 19, baseType: !147, size: 64)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1819, file: !1820, line: 20, baseType: !1141, size: 64, offset: 64)
!1824 = !DIDerivedType(tag: DW_TAG_member, scope: !1816, file: !1803, line: 68, baseType: !1825, size: 128)
!1825 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1816, file: !1803, line: 68, size: 128, elements: !1826)
!1826 = !{!1827, !1847}
!1827 = !DIDerivedType(tag: DW_TAG_member, scope: !1825, file: !1803, line: 69, baseType: !1828, size: 64)
!1828 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1825, file: !1803, line: 69, size: 64, elements: !1829)
!1829 = !{!1830, !1833, !1840, !1844, !1846}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !1828, file: !1803, line: 71, baseType: !1831, size: 64)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1819)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !1828, file: !1803, line: 72, baseType: !1834, size: 64)
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1835 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1836)
!1836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !1803, line: 17, size: 128, elements: !1837)
!1837 = !{!1838, !1839}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1836, file: !1803, line: 18, baseType: !147, size: 64)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1836, file: !1803, line: 19, baseType: !1140, size: 64, offset: 64)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !1828, file: !1803, line: 73, baseType: !1841, size: 64)
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1842 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1843)
!1843 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !1803, line: 73, flags: DIFlagFwdDecl)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !1828, file: !1803, line: 74, baseType: !1845, size: 64)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !1828, file: !1803, line: 75, baseType: !147, size: 64)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1825, file: !1803, line: 77, baseType: !1140, size: 64, offset: 64)
!1848 = !DIDerivedType(tag: DW_TAG_member, scope: !1802, file: !1803, line: 80, baseType: !1849, size: 64, offset: 256)
!1849 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1802, file: !1803, line: 80, size: 64, elements: !1850)
!1850 = !{!1851, !1852}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !1849, file: !1803, line: 81, baseType: !187, size: 64)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !1849, file: !1803, line: 82, baseType: !637, size: 64)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1360, file: !14, line: 433, baseType: !1854, size: 64, offset: 768)
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = !DISubroutineType(types: !1856)
!1856 = !{!109, !1346, !1668, !1668, !74}
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1360, file: !14, line: 435, baseType: !1858, size: 64, offset: 832)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = !DISubroutineType(types: !1860)
!1860 = !{!109, !1668}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1360, file: !14, line: 436, baseType: !1862, size: 64, offset: 896)
!1862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1863, size: 64)
!1863 = !DISubroutineType(types: !1864)
!1864 = !{!825, !1668, !1140, !1140}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1360, file: !14, line: 438, baseType: !1866, size: 64, offset: 960)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = !DISubroutineType(types: !1868)
!1868 = !{null, !1668, !1869, !1869}
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1360, file: !14, line: 439, baseType: !1871, size: 64, offset: 1024)
!1871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1872, size: 64)
!1872 = !DISubroutineType(types: !1873)
!1873 = !{!109, !1346, !1366}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1360, file: !14, line: 442, baseType: !1875, size: 64, offset: 1088)
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1876 = !DISubroutineType(types: !1877)
!1877 = !{!109, !1878, !597, !1880}
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1879, size: 64)
!1879 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1360, file: !14, line: 444, baseType: !1882, size: 64, offset: 1152)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = !DISubroutineType(types: !1884)
!1884 = !{null, !597}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1360, file: !14, line: 445, baseType: !1886, size: 64, offset: 1216)
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1887, size: 64)
!1887 = !DISubroutineType(types: !1888)
!1888 = !{!109, !1779, !1801}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1347, file: !14, line: 486, baseType: !187, size: 64, offset: 896)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1347, file: !14, line: 487, baseType: !766, size: 320, offset: 960)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1347, file: !14, line: 488, baseType: !1892, size: 32, offset: 1280)
!1892 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1893, line: 8, baseType: !222)
!1893 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1347, file: !14, line: 489, baseType: !579, size: 32, offset: 1312)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1347, file: !14, line: 490, baseType: !288, size: 128, offset: 1344)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1347, file: !14, line: 491, baseType: !147, size: 64, offset: 1472)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1337, file: !1306, line: 180, baseType: !1898, size: 64, offset: 320)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = !DISubroutineType(types: !1900)
!1900 = !{!1137, !597, !1248, !1336, !838, !637, !1140}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1337, file: !1306, line: 182, baseType: !1898, size: 64, offset: 384)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1337, file: !1306, line: 184, baseType: !1903, size: 64, offset: 448)
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1904 = !DISubroutineType(types: !1905)
!1905 = !{!109, !597, !1248, !1336, !1485}
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1325, file: !1306, line: 90, baseType: !1907, size: 64, offset: 192)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1325, file: !1306, line: 91, baseType: !1909, size: 64, offset: 256)
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1336, size: 64)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1296, file: !1243, line: 120, baseType: !1911, size: 64, offset: 192)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = !DISubroutineType(types: !1913)
!1913 = !{!1914, !1266}
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64)
!1915 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1916)
!1916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !82, line: 39, size: 384, elements: !1917)
!1917 = !{!1918, !1919, !1923, !1927, !1935, !1939}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1916, file: !82, line: 40, baseType: !81, size: 32)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1916, file: !82, line: 41, baseType: !1920, size: 64, offset: 64)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = !DISubroutineType(types: !1922)
!1922 = !{!825}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1916, file: !82, line: 42, baseType: !1924, size: 64, offset: 128)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = !DISubroutineType(types: !1926)
!1926 = !{!147}
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1916, file: !82, line: 43, baseType: !1928, size: 64, offset: 192)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = !DISubroutineType(types: !1930)
!1930 = !{!1931, !1933}
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !82, line: 19, flags: DIFlagFwdDecl)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1916, file: !82, line: 44, baseType: !1936, size: 64, offset: 256)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = !DISubroutineType(types: !1938)
!1938 = !{!1931}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1916, file: !82, line: 45, baseType: !1016, size: 64, offset: 320)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1296, file: !1243, line: 121, baseType: !1941, size: 64, offset: 256)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = !DISubroutineType(types: !1943)
!1943 = !{!1931, !1266}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1296, file: !1243, line: 122, baseType: !1945, size: 64, offset: 320)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = !DISubroutineType(types: !1947)
!1947 = !{null, !1266, !1948, !1949}
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1242, file: !1243, line: 70, baseType: !1951, size: 64, offset: 384)
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1953, line: 190, size: 1152, elements: !1954)
!1953 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1954 = !{!1955, !1956, !1957, !1958, !1959, !1960, !1961, !1962, !2077, !2078, !2079, !2080, !2081, !2084}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1952, file: !1953, line: 191, baseType: !233, size: 32)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1952, file: !1953, line: 192, baseType: !233, size: 32, offset: 32)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1952, file: !1953, line: 202, baseType: !1951, size: 64, offset: 64)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1952, file: !1953, line: 203, baseType: !828, size: 64, offset: 128)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1952, file: !1953, line: 205, baseType: !278, size: 192, align: 64, offset: 192)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1952, file: !1953, line: 207, baseType: !1931, size: 64, offset: 384)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1952, file: !1953, line: 208, baseType: !7, size: 32, offset: 448)
!1962 = !DIDerivedType(tag: DW_TAG_member, scope: !1952, file: !1953, line: 209, baseType: !1963, size: 256, offset: 512)
!1963 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1952, file: !1953, line: 209, size: 256, elements: !1964)
!1964 = !{!1965, !1974, !1978}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1963, file: !1953, line: 210, baseType: !1966, size: 256)
!1966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1953, line: 153, size: 256, elements: !1967)
!1967 = !{!1968, !1969, !1970, !1973}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1966, file: !1953, line: 154, baseType: !187, size: 64)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1966, file: !1953, line: 156, baseType: !447, size: 64, offset: 64)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1966, file: !1953, line: 162, baseType: !1971, size: 64, offset: 128)
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1972 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1953, line: 162, flags: DIFlagFwdDecl)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1966, file: !1953, line: 167, baseType: !187, size: 64, offset: 192)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1963, file: !1953, line: 211, baseType: !1975, size: 64)
!1975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1953, line: 170, size: 64, elements: !1976)
!1976 = !{!1977}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1975, file: !1953, line: 171, baseType: !1951, size: 64)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1963, file: !1953, line: 212, baseType: !1979, size: 256)
!1979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1953, line: 174, size: 256, elements: !1980)
!1980 = !{!1981, !2072, !2075, !2076}
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1979, file: !1953, line: 175, baseType: !1982, size: 64)
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1984)
!1984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1953, line: 271, size: 768, elements: !1985)
!1985 = !{!1986, !2045, !2049, !2050, !2051, !2052, !2053, !2057, !2058, !2059, !2060, !2068}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1984, file: !1953, line: 276, baseType: !1987, size: 64)
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = !DISubroutineType(types: !1989)
!1989 = !{!109, !1990}
!1990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1991, size: 64)
!1991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1953, line: 251, size: 1216, elements: !1992)
!1992 = !{!1993, !1994, !1995, !2035, !2036, !2037, !2038, !2039, !2040, !2041, !2042, !2043, !2044}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1991, file: !1953, line: 253, baseType: !1951, size: 64)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1991, file: !1953, line: 254, baseType: !597, size: 64, offset: 64)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1991, file: !1953, line: 255, baseType: !1996, size: 64, offset: 128)
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1998, line: 17, size: 960, elements: !1999)
!1998 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!1999 = !{!2000, !2001, !2002, !2003, !2004, !2005, !2006, !2007, !2008, !2030, !2031, !2034}
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1997, file: !1998, line: 18, baseType: !838, size: 64)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1997, file: !1998, line: 19, baseType: !1140, size: 64, offset: 64)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1997, file: !1998, line: 20, baseType: !1140, size: 64, offset: 128)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1997, file: !1998, line: 21, baseType: !1140, size: 64, offset: 192)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1997, file: !1998, line: 22, baseType: !1140, size: 64, offset: 256)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1997, file: !1998, line: 23, baseType: !637, size: 64, offset: 320)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1997, file: !1998, line: 24, baseType: !637, size: 64, offset: 384)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1997, file: !1998, line: 25, baseType: !625, size: 256, offset: 448)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1997, file: !1998, line: 26, baseType: !2009, size: 64, offset: 704)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2011)
!2011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !1998, line: 32, size: 256, elements: !2012)
!2012 = !{!2013, !2018, !2022, !2026}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2011, file: !1998, line: 33, baseType: !2014, size: 64)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = !DISubroutineType(types: !2016)
!2016 = !{!147, !1996, !2017}
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2011, file: !1998, line: 34, baseType: !2019, size: 64, offset: 64)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = !DISubroutineType(types: !2021)
!2021 = !{null, !1996, !147}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2011, file: !1998, line: 35, baseType: !2023, size: 64, offset: 128)
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!2024 = !DISubroutineType(types: !2025)
!2025 = !{!147, !1996, !147, !2017}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2011, file: !1998, line: 36, baseType: !2027, size: 64, offset: 192)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = !DISubroutineType(types: !2029)
!2029 = !{!109, !1996, !147}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1997, file: !1998, line: 27, baseType: !109, size: 32, offset: 768)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1997, file: !1998, line: 28, baseType: !2032, size: 64, offset: 832)
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !598)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1997, file: !1998, line: 29, baseType: !147, size: 64, offset: 896)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1991, file: !1953, line: 256, baseType: !147, size: 64, offset: 192)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1991, file: !1953, line: 259, baseType: !625, size: 256, offset: 256)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1991, file: !1953, line: 260, baseType: !625, size: 256, offset: 512)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1991, file: !1953, line: 261, baseType: !109, size: 32, offset: 768)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1991, file: !1953, line: 262, baseType: !288, size: 128, offset: 832)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1991, file: !1953, line: 263, baseType: !838, size: 64, offset: 960)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1991, file: !1953, line: 265, baseType: !1140, size: 64, offset: 1024)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1991, file: !1953, line: 266, baseType: !825, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1991, file: !1953, line: 267, baseType: !825, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1991, file: !1953, line: 268, baseType: !1530, size: 64, offset: 1152)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1984, file: !1953, line: 277, baseType: !2046, size: 64, offset: 64)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2047 = !DISubroutineType(types: !2048)
!2048 = !{null, !1990}
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1984, file: !1953, line: 290, baseType: !2027, size: 64, offset: 128)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1984, file: !1953, line: 292, baseType: !2014, size: 64, offset: 192)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1984, file: !1953, line: 293, baseType: !2023, size: 64, offset: 256)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1984, file: !1953, line: 294, baseType: !2019, size: 64, offset: 320)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1984, file: !1953, line: 296, baseType: !2054, size: 64, offset: 384)
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2055, size: 64)
!2055 = !DISubroutineType(types: !2056)
!2056 = !{!1137, !1990, !838, !1140, !637}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1984, file: !1953, line: 306, baseType: !1140, size: 64, offset: 448)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1984, file: !1953, line: 313, baseType: !825, size: 8, offset: 512)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1984, file: !1953, line: 314, baseType: !2054, size: 64, offset: 576)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1984, file: !1953, line: 317, baseType: !2061, size: 64, offset: 640)
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2062 = !DISubroutineType(types: !2063)
!2063 = !{!2064, !1990, !2066}
!2064 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2065, line: 59, baseType: !7)
!2065 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2067 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !14, line: 61, flags: DIFlagFwdDecl)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1984, file: !1953, line: 320, baseType: !2069, size: 64, offset: 704)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = !DISubroutineType(types: !2071)
!2071 = !{!109, !1990, !1485}
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1979, file: !1953, line: 176, baseType: !2073, size: 64, offset: 64)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2074 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1953, line: 35, flags: DIFlagFwdDecl)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1979, file: !1953, line: 177, baseType: !637, size: 64, offset: 128)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1979, file: !1953, line: 178, baseType: !1951, size: 64, offset: 192)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1952, file: !1953, line: 215, baseType: !147, size: 64, offset: 768)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1952, file: !1953, line: 221, baseType: !180, size: 64, offset: 832)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1952, file: !1953, line: 223, baseType: !201, size: 16, offset: 896)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1952, file: !1953, line: 224, baseType: !988, size: 16, offset: 912)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1952, file: !1953, line: 225, baseType: !2082, size: 64, offset: 960)
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!2083 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1953, line: 36, flags: DIFlagFwdDecl)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1952, file: !1953, line: 227, baseType: !605, size: 128, align: 64, offset: 1024)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1242, file: !1243, line: 71, baseType: !2086, size: 32, offset: 448)
!2086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2087, line: 19, size: 32, elements: !2088)
!2087 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2088 = !{!2089}
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2086, file: !2087, line: 20, baseType: !228, size: 32)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1242, file: !1243, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1242, file: !1243, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1242, file: !1243, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1242, file: !1243, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1242, file: !1243, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1239, file: !6, line: 47, baseType: !1229, size: 64, offset: 512)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1239, file: !6, line: 48, baseType: !1248, size: 64, offset: 576)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1239, file: !6, line: 49, baseType: !2098, size: 64, offset: 640)
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1239, file: !6, line: 50, baseType: !2101, size: 64, offset: 704)
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1230, file: !6, line: 418, baseType: !2103, size: 64, offset: 1408)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !2105)
!2105 = !{!2106, !2107, !2112, !2116, !2120, !2124}
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2104, file: !6, line: 54, baseType: !1313, size: 128)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2104, file: !6, line: 55, baseType: !2108, size: 64, offset: 128)
!2108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2109, size: 64)
!2109 = !DISubroutineType(types: !2110)
!2110 = !{!1137, !2103, !2111, !838}
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2104, file: !6, line: 57, baseType: !2113, size: 64, offset: 192)
!2113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2114, size: 64)
!2114 = !DISubroutineType(types: !2115)
!2115 = !{!1137, !2103, !2111, !828, !1140}
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2104, file: !6, line: 59, baseType: !2117, size: 64, offset: 256)
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2118, size: 64)
!2118 = !DISubroutineType(types: !2119)
!2119 = !{null, !1229, !828}
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !2104, file: !6, line: 60, baseType: !2121, size: 64, offset: 320)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2122 = !DISubroutineType(types: !2123)
!2123 = !{!109, !1229}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2104, file: !6, line: 61, baseType: !2125, size: 64, offset: 384)
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = !DISubroutineType(types: !2127)
!2127 = !{null, !1229}
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1230, file: !6, line: 419, baseType: !828, size: 64, offset: 1472)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1230, file: !6, line: 420, baseType: !828, size: 64, offset: 1536)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1230, file: !6, line: 421, baseType: !1248, size: 64, offset: 1600)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1230, file: !6, line: 424, baseType: !2132, size: 64, offset: 1664)
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2134)
!2134 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1230, file: !6, line: 425, baseType: !2136, size: 64, offset: 1728)
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2137, size: 64)
!2137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !758)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1230, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1230, file: !6, line: 435, baseType: !625, size: 256, offset: 1856)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1230, file: !6, line: 437, baseType: !2141, size: 64, offset: 2112)
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2143, line: 69, size: 320, elements: !2144)
!2143 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2144 = !{!2145, !2146, !2147, !2164, !2166, !2170, !2171}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2142, file: !2143, line: 70, baseType: !828, size: 64)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2142, file: !2143, line: 71, baseType: !1229, size: 64, offset: 64)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2142, file: !2143, line: 72, baseType: !2148, size: 64, offset: 128)
!2148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2149, size: 64)
!2149 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2150)
!2150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2143, line: 47, size: 256, elements: !2151)
!2151 = !{!2152, !2153, !2159, !2163}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2150, file: !2143, line: 49, baseType: !7, size: 32)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2150, file: !2143, line: 51, baseType: !2154, size: 64, offset: 64)
!2154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2155, size: 64)
!2155 = !DISubroutineType(types: !2156)
!2156 = !{!109, !828, !2157}
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2158 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2142)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2150, file: !2143, line: 53, baseType: !2160, size: 64, offset: 128)
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2161, size: 64)
!2161 = !DISubroutineType(types: !2162)
!2162 = !{!109, !838, !2157}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2150, file: !2143, line: 55, baseType: !1016, size: 64, offset: 192)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2142, file: !2143, line: 73, baseType: !2165, size: 16, offset: 192)
!2165 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !256)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2142, file: !2143, line: 74, baseType: !2167, size: 8, offset: 208)
!2167 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !181, line: 16, baseType: !2168)
!2168 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !183, line: 20, baseType: !2169)
!2169 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2142, file: !2143, line: 75, baseType: !398, size: 8, offset: 216)
!2171 = !DIDerivedType(tag: DW_TAG_member, scope: !2142, file: !2143, line: 76, baseType: !2172, size: 64, offset: 256)
!2172 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2142, file: !2143, line: 76, size: 64, elements: !2173)
!2173 = !{!2174, !2175, !2182}
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2172, file: !2143, line: 77, baseType: !147, size: 64)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2172, file: !2143, line: 78, baseType: !2176, size: 64)
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2177, size: 64)
!2177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2178)
!2178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2143, line: 86, size: 128, elements: !2179)
!2179 = !{!2180, !2181}
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2178, file: !2143, line: 87, baseType: !7, size: 32)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2178, file: !2143, line: 88, baseType: !838, size: 64, offset: 64)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2172, file: !2143, line: 79, baseType: !2183, size: 64)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2185)
!2185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2143, line: 92, size: 256, elements: !2186)
!2186 = !{!2187, !2188, !2189, !2190, !2191}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2185, file: !2143, line: 94, baseType: !7, size: 32)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2185, file: !2143, line: 95, baseType: !7, size: 32, offset: 32)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2185, file: !2143, line: 96, baseType: !179, size: 64, offset: 64)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2185, file: !2143, line: 97, baseType: !2148, size: 64, offset: 128)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2185, file: !2143, line: 98, baseType: !147, size: 64, offset: 192)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1230, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1230, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1230, file: !6, line: 442, baseType: !2132, size: 64, offset: 2240)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1230, file: !6, line: 443, baseType: !2136, size: 64, offset: 2304)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1230, file: !6, line: 444, baseType: !825, size: 8, offset: 2368)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1230, file: !6, line: 451, baseType: !825, size: 8, offset: 2376)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1230, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1230, file: !6, line: 455, baseType: !2200, size: 64, offset: 2432)
!2200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2201, size: 64)
!2201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2202, line: 23, size: 96, elements: !2203)
!2202 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2203 = !{!2204, !2205, !2206}
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2201, file: !2202, line: 24, baseType: !109, size: 32)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2201, file: !2202, line: 24, baseType: !109, size: 32, offset: 32)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2201, file: !2202, line: 24, baseType: !109, size: 32, offset: 64)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1230, file: !6, line: 458, baseType: !2208, size: 64, offset: 2496)
!2208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2209, size: 64)
!2209 = !DISubroutineType(types: !2210)
!2210 = !{!109}
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1230, file: !6, line: 460, baseType: !2212, size: 4032, align: 512, offset: 2560)
!2212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2213, size: 4032, elements: !2229)
!2213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !2214)
!2214 = !{!2215, !2216, !2217}
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2213, file: !6, line: 363, baseType: !147, size: 64)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2213, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2213, file: !6, line: 367, baseType: !2218, size: 448, offset: 128)
!2218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !2219)
!2219 = !{!2220, !2221}
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2218, file: !6, line: 320, baseType: !1229, size: 64)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2218, file: !6, line: 321, baseType: !2222, size: 384, offset: 64)
!2222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2223, line: 40, size: 384, elements: !2224)
!2223 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2224 = !{!2225}
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2222, file: !2223, line: 41, baseType: !2226, size: 384, align: 64)
!2226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !278, size: 384, align: 64, elements: !2227)
!2227 = !{!2228}
!2228 = !DISubrange(count: 2)
!2229 = !{!2230}
!2230 = !DISubrange(count: 7)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1230, file: !6, line: 463, baseType: !2232, size: 192, offset: 6592)
!2232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2233, line: 8, size: 192, elements: !2234)
!2233 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2234 = !{!2235, !2236, !2237}
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2232, file: !2233, line: 10, baseType: !7, size: 32)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2232, file: !2233, line: 11, baseType: !178, size: 64, offset: 64)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2232, file: !2233, line: 12, baseType: !2238, size: 64, offset: 128)
!2238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2239, size: 64)
!2239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2240, line: 59, size: 48, elements: !2241)
!2240 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2241 = !{!2242, !2245, !2246, !2247, !2248, !2249}
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2239, file: !2240, line: 60, baseType: !2243, size: 16)
!2243 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !181, line: 18, baseType: !2244)
!2244 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !183, line: 23, baseType: !794)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2239, file: !2240, line: 61, baseType: !2243, size: 16, offset: 16)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2239, file: !2240, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2239, file: !2240, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2239, file: !2240, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2239, file: !2240, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1230, file: !6, line: 465, baseType: !187, size: 64, offset: 6784)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1230, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1230, file: !6, line: 470, baseType: !288, size: 128, offset: 6912)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1230, file: !6, line: 471, baseType: !2254, size: 64, offset: 7040)
!2254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2255, size: 64)
!2255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2256, line: 33, size: 96, elements: !2257)
!2256 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2257 = !{!2258, !2259, !2260, !2261}
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2255, file: !2256, line: 37, baseType: !109, size: 32)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2255, file: !2256, line: 43, baseType: !109, size: 32, offset: 32)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2255, file: !2256, line: 45, baseType: !201, size: 16, offset: 64)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2255, file: !2256, line: 47, baseType: !201, size: 16, offset: 80)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1230, file: !6, line: 476, baseType: !2263, size: 64, offset: 7104)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !2265)
!2265 = !{!2266, !2282, !2283, !2284}
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2264, file: !6, line: 379, baseType: !2267, size: 64)
!2267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2268, size: 64)
!2268 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2269, line: 204, baseType: !2270)
!2269 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2269, line: 197, size: 192, elements: !2271)
!2271 = !{!2272, !2274, !2275, !2276, !2278, !2280}
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2270, file: !2269, line: 198, baseType: !2273, size: 32)
!2273 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2269, line: 21, baseType: !223)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2270, file: !2269, line: 199, baseType: !161, size: 8, offset: 32)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2270, file: !2269, line: 200, baseType: !161, size: 8, offset: 40)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2270, file: !2269, line: 201, baseType: !2277, size: 16, offset: 48)
!2277 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2269, line: 17, baseType: !257)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2270, file: !2269, line: 202, baseType: !2279, size: 64, offset: 64)
!2279 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2269, line: 16, baseType: !182)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2270, file: !2269, line: 203, baseType: !2281, size: 64, offset: 128)
!2281 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2269, line: 22, baseType: !182)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2264, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2264, file: !6, line: 381, baseType: !838, size: 64, offset: 128)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2264, file: !6, line: 382, baseType: !838, size: 64, offset: 192)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1230, file: !6, line: 477, baseType: !2264, size: 256, offset: 7168)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1230, file: !6, line: 480, baseType: !2287, size: 64, offset: 7424)
!2287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2288, size: 64)
!2288 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1230, file: !6, line: 483, baseType: !2290, size: 64, offset: 7488)
!2290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2291, size: 64)
!2291 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1230, file: !6, line: 488, baseType: !838, size: 64, offset: 7552)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1230, file: !6, line: 492, baseType: !147, size: 64, offset: 7616)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1230, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1230, file: !6, line: 495, baseType: !147, size: 64, offset: 7744)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1230, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1230, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1230, file: !6, line: 500, baseType: !2299, size: 64, offset: 7872)
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2300 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2301, line: 45, baseType: !2302)
!2301 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2302 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1230, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1230, file: !6, line: 504, baseType: !2305, size: 64, offset: 8000)
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2307, size: 64)
!2307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2308, line: 96, size: 192, elements: !2309)
!2308 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2309 = !{!2310, !2311, !2376, !2379}
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2307, file: !2308, line: 97, baseType: !7, size: 32)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2307, file: !2308, line: 98, baseType: !2312, size: 64, offset: 64)
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2313, size: 64)
!2313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2308, line: 24, size: 3072, elements: !2314)
!2314 = !{!2315, !2317, !2318, !2319, !2320, !2334, !2335, !2336, !2337, !2349, !2361, !2362, !2373, !2374, !2375}
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2313, file: !2308, line: 26, baseType: !2316, size: 128)
!2316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !618, size: 128, elements: !2227)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2313, file: !2308, line: 27, baseType: !2316, size: 128, offset: 128)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2313, file: !2308, line: 28, baseType: !109, size: 32, offset: 256)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2313, file: !2308, line: 31, baseType: !579, size: 32, align: 512, offset: 512)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2313, file: !2308, line: 32, baseType: !2321, size: 960, offset: 576)
!2321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2322, line: 206, size: 960, elements: !2323)
!2322 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2323 = !{!2324, !2325, !2328, !2330, !2331, !2333}
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2321, file: !2322, line: 207, baseType: !608, size: 64)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2321, file: !2322, line: 208, baseType: !2326, size: 256, offset: 64)
!2326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2327, size: 256, elements: !684)
!2327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2321, file: !2322, line: 209, baseType: !2329, size: 256, offset: 320)
!2329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 256, elements: !684)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2321, file: !2322, line: 213, baseType: !148, size: 64, offset: 576)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2321, file: !2322, line: 215, baseType: !2332, size: 256, offset: 640)
!2332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 256, elements: !684)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2321, file: !2322, line: 216, baseType: !398, size: 8, offset: 896)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2313, file: !2308, line: 33, baseType: !187, size: 64, offset: 1536)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2313, file: !2308, line: 34, baseType: !187, size: 64, offset: 1600)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2313, file: !2308, line: 35, baseType: !825, size: 8, offset: 1664)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2313, file: !2308, line: 36, baseType: !2338, size: 320, offset: 1728)
!2338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2339, line: 11, size: 320, elements: !2340)
!2339 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2340 = !{!2341, !2342, !2343, !2348}
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2338, file: !2339, line: 16, baseType: !679, size: 128)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2338, file: !2339, line: 17, baseType: !187, size: 64, offset: 128)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2338, file: !2339, line: 18, baseType: !2344, size: 64, offset: 192)
!2344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2345, size: 64)
!2345 = !DISubroutineType(types: !2346)
!2346 = !{null, !2347}
!2347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2338, size: 64)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2338, file: !2339, line: 19, baseType: !222, size: 32, offset: 256)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2313, file: !2308, line: 37, baseType: !2350, size: 256, offset: 2048)
!2350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2351, line: 98, size: 256, elements: !2352)
!2351 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!2352 = !{!2353, !2354, !2355}
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2350, file: !2351, line: 99, baseType: !618, size: 64)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2350, file: !2351, line: 100, baseType: !288, size: 128, offset: 64)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2350, file: !2351, line: 101, baseType: !2356, size: 64, offset: 192)
!2356 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2351, line: 21, baseType: !2357)
!2357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2358, size: 64)
!2358 = !DISubroutineType(types: !2359)
!2359 = !{null, !2360}
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2350, size: 64)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2313, file: !2308, line: 38, baseType: !605, size: 128, align: 64, offset: 2304)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2313, file: !2308, line: 39, baseType: !2363, size: 64, offset: 2432)
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2364, size: 64)
!2364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2308, line: 49, size: 768, elements: !2365)
!2365 = !{!2366, !2367, !2368, !2369, !2370, !2371, !2372}
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2364, file: !2308, line: 50, baseType: !579, size: 32)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2364, file: !2308, line: 51, baseType: !2329, size: 256, offset: 64)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2364, file: !2308, line: 53, baseType: !2329, size: 256, offset: 320)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2364, file: !2308, line: 54, baseType: !187, size: 64, offset: 576)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2364, file: !2308, line: 55, baseType: !2363, size: 64, offset: 640)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2364, file: !2308, line: 56, baseType: !109, size: 32, offset: 704)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2364, file: !2308, line: 57, baseType: !109, size: 32, offset: 736)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2313, file: !2308, line: 40, baseType: !187, size: 64, offset: 2496)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2313, file: !2308, line: 42, baseType: !109, size: 32, offset: 2560)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2313, file: !2308, line: 43, baseType: !2306, size: 64, offset: 2624)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2307, file: !2308, line: 99, baseType: !2377, offset: 128)
!2377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2378, line: 211, elements: !590)
!2378 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2307, file: !2308, line: 100, baseType: !2380, size: 64, offset: 128)
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2381, size: 64)
!2381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2308, line: 63, size: 3008, elements: !2382)
!2382 = !{!2383, !2384, !2386, !2387, !2388, !2389, !2390, !2391, !2392, !2393, !2394, !2395, !2396, !2397, !2398, !2399, !2400, !2401, !2402, !2403, !2404, !2405, !2414}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2381, file: !2308, line: 64, baseType: !2363, size: 64)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2381, file: !2308, line: 65, baseType: !2385, size: 192, offset: 64)
!2385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2363, size: 192, elements: !663)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2381, file: !2308, line: 67, baseType: !109, size: 32, offset: 256)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2381, file: !2308, line: 68, baseType: !625, size: 256, offset: 320)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2381, file: !2308, line: 69, baseType: !579, size: 32, offset: 576)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2381, file: !2308, line: 70, baseType: !625, size: 256, offset: 640)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2381, file: !2308, line: 71, baseType: !187, size: 64, offset: 896)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2381, file: !2308, line: 72, baseType: !187, size: 64, offset: 960)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2381, file: !2308, line: 73, baseType: !187, size: 64, offset: 1024)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2381, file: !2308, line: 74, baseType: !187, size: 64, offset: 1088)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2381, file: !2308, line: 75, baseType: !187, size: 64, offset: 1152)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2381, file: !2308, line: 76, baseType: !187, size: 64, offset: 1216)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2381, file: !2308, line: 77, baseType: !187, size: 64, offset: 1280)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2381, file: !2308, line: 78, baseType: !187, size: 64, offset: 1344)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2381, file: !2308, line: 79, baseType: !825, size: 8, offset: 1408)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2381, file: !2308, line: 80, baseType: !187, size: 64, offset: 1472)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2381, file: !2308, line: 81, baseType: !625, size: 256, offset: 1536)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2381, file: !2308, line: 82, baseType: !1450, size: 256, offset: 1792)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2381, file: !2308, line: 84, baseType: !233, size: 32, offset: 2048)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2381, file: !2308, line: 87, baseType: !187, size: 64, offset: 2112)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2381, file: !2308, line: 88, baseType: !187, size: 64, offset: 2176)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2381, file: !2308, line: 89, baseType: !2406, size: 704, offset: 2240)
!2406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !2351, line: 111, size: 704, elements: !2407)
!2407 = !{!2408, !2409, !2410, !2413}
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2406, file: !2351, line: 112, baseType: !2350, size: 256)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2406, file: !2351, line: 113, baseType: !2338, size: 320, offset: 256)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2406, file: !2351, line: 116, baseType: !2411, size: 64, offset: 576)
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2412, size: 64)
!2412 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2351, line: 18, flags: DIFlagFwdDecl)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2406, file: !2351, line: 117, baseType: !109, size: 32, offset: 640)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2381, file: !2308, line: 90, baseType: !2306, size: 64, offset: 2944)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1230, file: !6, line: 515, baseType: !2416, size: 64, offset: 8064)
!2416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2417, size: 64)
!2417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2418, line: 117, size: 128, elements: !2419)
!2418 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2419 = !{!2420, !2421, !2422}
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2417, file: !2418, line: 118, baseType: !758, size: 32)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2417, file: !2418, line: 119, baseType: !758, size: 32, offset: 32)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2417, file: !2418, line: 120, baseType: !148, size: 64, offset: 64)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1230, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1230, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1230, file: !6, line: 520, baseType: !2426, size: 64, offset: 8192)
!2426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1230, file: !6, line: 523, baseType: !2428, size: 64, offset: 8256)
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2430, size: 64)
!2430 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1230, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1230, file: !6, line: 525, baseType: !2433, size: 64, offset: 8384)
!2433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2434, size: 64)
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2435, size: 64)
!2435 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1230, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1230, file: !6, line: 533, baseType: !147, size: 64, offset: 8512)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1230, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1230, file: !6, line: 535, baseType: !190, size: 64, offset: 8640)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1230, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1230, file: !6, line: 539, baseType: !109, size: 32, offset: 8736)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1230, file: !6, line: 540, baseType: !2443, size: 64, offset: 8768)
!2443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2444, size: 64)
!2444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2445, line: 32, size: 64, elements: !2446)
!2445 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2446 = !{!2447, !2448}
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2444, file: !2445, line: 33, baseType: !758, size: 32)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2444, file: !2445, line: 34, baseType: !758, size: 32, offset: 32)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1230, file: !6, line: 563, baseType: !288, size: 128, offset: 8832)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1230, file: !6, line: 565, baseType: !288, size: 128, offset: 8960)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1230, file: !6, line: 568, baseType: !2452, size: 64, offset: 9088)
!2452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2453, size: 64)
!2453 = !DISubroutineType(types: !2454)
!2454 = !{null}
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1230, file: !6, line: 570, baseType: !233, size: 32, offset: 9152)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1206, file: !14, line: 2382, baseType: !1205, size: 64, offset: 448)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1206, file: !14, line: 2383, baseType: !675, size: 64, offset: 512)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1206, file: !14, line: 2385, baseType: !2459, offset: 576)
!2459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2378, line: 206, elements: !590)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1206, file: !14, line: 2386, baseType: !2459, offset: 576)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1206, file: !14, line: 2387, baseType: !2459, offset: 576)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1206, file: !14, line: 2388, baseType: !2463, offset: 576)
!2463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2459, elements: !663)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1206, file: !14, line: 2390, baseType: !2459, offset: 576)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1206, file: !14, line: 2391, baseType: !2459, offset: 576)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1206, file: !14, line: 2392, baseType: !2459, offset: 576)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1206, file: !14, line: 2393, baseType: !2459, offset: 576)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1197, file: !14, line: 1197, baseType: !2469, size: 64, offset: 384)
!2469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2470, size: 64)
!2470 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2471)
!2471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !2472)
!2472 = !{!2473, !2477, !2481, !2482, !2486, !2490, !2494, !2495, !2496, !2500, !2504, !2508, !2509, !2510, !2516, !2520, !2521, !2525, !2526, !2527, !2528, !2532, !2536, !2583, !2598, !2599}
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2471, file: !14, line: 2058, baseType: !2474, size: 64)
!2474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2475, size: 64)
!2475 = !DISubroutineType(types: !2476)
!2476 = !{!984, !1196}
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2471, file: !14, line: 2059, baseType: !2478, size: 64, offset: 64)
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2479, size: 64)
!2479 = !DISubroutineType(types: !2480)
!2480 = !{null, !984}
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2471, file: !14, line: 2060, baseType: !2478, size: 64, offset: 128)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2471, file: !14, line: 2062, baseType: !2483, size: 64, offset: 192)
!2483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2484, size: 64)
!2484 = !DISubroutineType(types: !2485)
!2485 = !{null, !984, !109}
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2471, file: !14, line: 2063, baseType: !2487, size: 64, offset: 256)
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2488, size: 64)
!2488 = !DISubroutineType(types: !2489)
!2489 = !{!109, !984, !1662}
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2471, file: !14, line: 2064, baseType: !2491, size: 64, offset: 320)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = !DISubroutineType(types: !2493)
!2493 = !{!109, !984}
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2471, file: !14, line: 2065, baseType: !2478, size: 64, offset: 384)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2471, file: !14, line: 2066, baseType: !1225, size: 64, offset: 448)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2471, file: !14, line: 2067, baseType: !2497, size: 64, offset: 512)
!2497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2498, size: 64)
!2498 = !DISubroutineType(types: !2499)
!2499 = !{!109, !1196, !109}
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2471, file: !14, line: 2068, baseType: !2501, size: 64, offset: 576)
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2502, size: 64)
!2502 = !DISubroutineType(types: !2503)
!2503 = !{!109, !1196, !13}
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2471, file: !14, line: 2069, baseType: !2505, size: 64, offset: 640)
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2506, size: 64)
!2506 = !DISubroutineType(types: !2507)
!2507 = !{!109, !1196}
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2471, file: !14, line: 2070, baseType: !2501, size: 64, offset: 704)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2471, file: !14, line: 2071, baseType: !2505, size: 64, offset: 768)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2471, file: !14, line: 2072, baseType: !2511, size: 64, offset: 832)
!2511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2512, size: 64)
!2512 = !DISubroutineType(types: !2513)
!2513 = !{!109, !949, !2514}
!2514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2515, size: 64)
!2515 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2471, file: !14, line: 2073, baseType: !2517, size: 64, offset: 896)
!2517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2518, size: 64)
!2518 = !DISubroutineType(types: !2519)
!2519 = !{!109, !1196, !178, !838}
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2471, file: !14, line: 2074, baseType: !1225, size: 64, offset: 960)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2471, file: !14, line: 2076, baseType: !2522, size: 64, offset: 1024)
!2522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2523, size: 64)
!2523 = !DISubroutineType(types: !2524)
!2524 = !{!109, !1996, !949}
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2471, file: !14, line: 2077, baseType: !2522, size: 64, offset: 1088)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2471, file: !14, line: 2078, baseType: !2522, size: 64, offset: 1152)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2471, file: !14, line: 2079, baseType: !2522, size: 64, offset: 1216)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2471, file: !14, line: 2081, baseType: !2529, size: 64, offset: 1280)
!2529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2530, size: 64)
!2530 = !DISubroutineType(types: !2531)
!2531 = !{!1137, !1196, !109, !838, !1140, !637}
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2471, file: !14, line: 2082, baseType: !2533, size: 64, offset: 1344)
!2533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2534, size: 64)
!2534 = !DISubroutineType(types: !2535)
!2535 = !{!1137, !1196, !109, !828, !1140, !637}
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2471, file: !14, line: 2083, baseType: !2537, size: 64, offset: 1408)
!2537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2538, size: 64)
!2538 = !DISubroutineType(types: !2539)
!2539 = !{!2540, !984}
!2540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2541, size: 64)
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64)
!2542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !51, line: 296, size: 1664, elements: !2543)
!2543 = !{!2544, !2545, !2546, !2547, !2548, !2549, !2550, !2551, !2552, !2568, !2569, !2570}
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2542, file: !51, line: 297, baseType: !679, size: 128)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2542, file: !51, line: 298, baseType: !288, size: 128, offset: 128)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2542, file: !51, line: 299, baseType: !288, size: 128, offset: 256)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2542, file: !51, line: 300, baseType: !288, size: 128, offset: 384)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2542, file: !51, line: 301, baseType: !625, size: 256, offset: 512)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2542, file: !51, line: 302, baseType: !579, size: 32, offset: 768)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2542, file: !51, line: 303, baseType: !233, size: 32, offset: 800)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2542, file: !51, line: 304, baseType: !1196, size: 64, offset: 832)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2542, file: !51, line: 305, baseType: !2553, size: 64, offset: 896)
!2553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !51, line: 68, size: 64, elements: !2554)
!2554 = !{!2555, !2567}
!2555 = !DIDerivedType(tag: DW_TAG_member, scope: !2553, file: !51, line: 69, baseType: !2556, size: 32)
!2556 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2553, file: !51, line: 69, size: 32, elements: !2557)
!2557 = !{!2558, !2559, !2560}
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2556, file: !51, line: 70, baseType: !707, size: 32)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2556, file: !51, line: 71, baseType: !725, size: 32)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2556, file: !51, line: 72, baseType: !2561, size: 32)
!2561 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2562, line: 24, baseType: !2563)
!2562 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2563 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2562, line: 22, size: 32, elements: !2564)
!2564 = !{!2565}
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2563, file: !2562, line: 23, baseType: !2566, size: 32)
!2566 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2562, line: 20, baseType: !713)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2553, file: !51, line: 74, baseType: !50, size: 32, offset: 32)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2542, file: !51, line: 306, baseType: !637, size: 64, offset: 960)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2542, file: !51, line: 307, baseType: !187, size: 64, offset: 1024)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2542, file: !51, line: 308, baseType: !2571, size: 576, offset: 1088)
!2571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !51, line: 205, size: 576, elements: !2572)
!2572 = !{!2573, !2575, !2576, !2577, !2578, !2579, !2580, !2581, !2582}
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2571, file: !51, line: 206, baseType: !2574, size: 64)
!2574 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !51, line: 66, baseType: !301)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2571, file: !51, line: 207, baseType: !2574, size: 64, offset: 64)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2571, file: !51, line: 208, baseType: !2574, size: 64, offset: 128)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2571, file: !51, line: 209, baseType: !2574, size: 64, offset: 192)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2571, file: !51, line: 210, baseType: !2574, size: 64, offset: 256)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2571, file: !51, line: 211, baseType: !2574, size: 64, offset: 320)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2571, file: !51, line: 212, baseType: !2574, size: 64, offset: 384)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2571, file: !51, line: 213, baseType: !782, size: 64, offset: 448)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2571, file: !51, line: 214, baseType: !782, size: 64, offset: 512)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2471, file: !14, line: 2085, baseType: !2584, size: 64, offset: 1472)
!2584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2585, size: 64)
!2585 = !DISubroutineType(types: !2586)
!2586 = !{!148, !1196, !2587}
!2587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2588, size: 64)
!2588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2589, line: 15, size: 256, elements: !2590)
!2589 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2590 = !{!2591, !2592, !2593, !2594, !2595}
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2588, file: !2589, line: 16, baseType: !1192, size: 32)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2588, file: !2589, line: 19, baseType: !109, size: 32, offset: 32)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2588, file: !2589, line: 26, baseType: !187, size: 64, offset: 64)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2588, file: !2589, line: 33, baseType: !187, size: 64, offset: 128)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2588, file: !2589, line: 36, baseType: !2596, size: 64, offset: 192)
!2596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2597, size: 64)
!2597 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !27, line: 33, flags: DIFlagFwdDecl)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2471, file: !14, line: 2087, baseType: !2584, size: 64, offset: 1536)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2471, file: !14, line: 2089, baseType: !1225, size: 64, offset: 1600)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1197, file: !14, line: 1198, baseType: !2601, size: 64, offset: 448)
!2601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2602, size: 64)
!2602 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2603)
!2603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !51, line: 324, size: 704, elements: !2604)
!2604 = !{!2605, !2609, !2613, !2617, !2618, !2619, !2620, !2621, !2626, !2631, !2635}
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2603, file: !51, line: 325, baseType: !2606, size: 64)
!2606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2607, size: 64)
!2607 = !DISubroutineType(types: !2608)
!2608 = !{!109, !2541}
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2603, file: !51, line: 326, baseType: !2610, size: 64, offset: 64)
!2610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2611, size: 64)
!2611 = !DISubroutineType(types: !2612)
!2612 = !{!2541, !1196, !109}
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2603, file: !51, line: 327, baseType: !2614, size: 64, offset: 128)
!2614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2615, size: 64)
!2615 = !DISubroutineType(types: !2616)
!2616 = !{null, !2541}
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2603, file: !51, line: 328, baseType: !2606, size: 64, offset: 192)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2603, file: !51, line: 329, baseType: !2606, size: 64, offset: 256)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2603, file: !51, line: 330, baseType: !2606, size: 64, offset: 320)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2603, file: !51, line: 331, baseType: !2497, size: 64, offset: 384)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2603, file: !51, line: 334, baseType: !2622, size: 64, offset: 448)
!2622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2623, size: 64)
!2623 = !DISubroutineType(types: !2624)
!2624 = !{!2625, !984}
!2625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2574, size: 64)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2603, file: !51, line: 335, baseType: !2627, size: 64, offset: 512)
!2627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2628, size: 64)
!2628 = !DISubroutineType(types: !2629)
!2629 = !{!109, !984, !2630}
!2630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2561, size: 64)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2603, file: !51, line: 337, baseType: !2632, size: 64, offset: 576)
!2632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2633, size: 64)
!2633 = !DISubroutineType(types: !2634)
!2634 = !{!109, !984, !2625}
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2603, file: !51, line: 339, baseType: !2636, size: 64, offset: 640)
!2636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2637, size: 64)
!2637 = !DISubroutineType(types: !2638)
!2638 = !{!109, !1196, !2639}
!2639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2553, size: 64)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1197, file: !14, line: 1199, baseType: !2641, size: 64, offset: 512)
!2641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2642, size: 64)
!2642 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2643)
!2643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !51, line: 430, size: 704, elements: !2644)
!2644 = !{!2645, !2649, !2650, !2654, !2655, !2656, !2671, !2694, !2698, !2699, !2722}
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2643, file: !51, line: 431, baseType: !2646, size: 64)
!2646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2647, size: 64)
!2647 = !DISubroutineType(types: !2648)
!2648 = !{!109, !1196, !109, !109, !1106}
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2643, file: !51, line: 432, baseType: !2497, size: 64, offset: 64)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2643, file: !51, line: 433, baseType: !2651, size: 64, offset: 128)
!2651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2652, size: 64)
!2652 = !DISubroutineType(types: !2653)
!2653 = !{!109, !1196, !7}
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2643, file: !51, line: 434, baseType: !2651, size: 64, offset: 192)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2643, file: !51, line: 435, baseType: !2497, size: 64, offset: 256)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2643, file: !51, line: 436, baseType: !2657, size: 64, offset: 320)
!2657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2658, size: 64)
!2658 = !DISubroutineType(types: !2659)
!2659 = !{!109, !1196, !109, !2660}
!2660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2661, size: 64)
!2661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !51, line: 417, size: 256, elements: !2662)
!2662 = !{!2663, !2664, !2665, !2666, !2667, !2668, !2669, !2670}
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2661, file: !51, line: 418, baseType: !109, size: 32)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2661, file: !51, line: 419, baseType: !7, size: 32, offset: 32)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2661, file: !51, line: 420, baseType: !7, size: 32, offset: 64)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2661, file: !51, line: 422, baseType: !7, size: 32, offset: 96)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2661, file: !51, line: 423, baseType: !7, size: 32, offset: 128)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2661, file: !51, line: 424, baseType: !7, size: 32, offset: 160)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2661, file: !51, line: 425, baseType: !7, size: 32, offset: 192)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2661, file: !51, line: 426, baseType: !7, size: 32, offset: 224)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2643, file: !51, line: 437, baseType: !2672, size: 64, offset: 384)
!2672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2673, size: 64)
!2673 = !DISubroutineType(types: !2674)
!2674 = !{!109, !1196, !2553, !2675}
!2675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2676, size: 64)
!2676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !51, line: 345, size: 960, elements: !2677)
!2677 = !{!2678, !2679, !2680, !2681, !2682, !2683, !2684, !2685, !2686, !2687, !2688, !2689, !2690, !2691, !2692, !2693}
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2676, file: !51, line: 346, baseType: !109, size: 32)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2676, file: !51, line: 347, baseType: !180, size: 64, offset: 64)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2676, file: !51, line: 348, baseType: !180, size: 64, offset: 128)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2676, file: !51, line: 349, baseType: !180, size: 64, offset: 192)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2676, file: !51, line: 350, baseType: !180, size: 64, offset: 256)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2676, file: !51, line: 351, baseType: !180, size: 64, offset: 320)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2676, file: !51, line: 352, baseType: !180, size: 64, offset: 384)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2676, file: !51, line: 353, baseType: !299, size: 64, offset: 448)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2676, file: !51, line: 355, baseType: !299, size: 64, offset: 512)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2676, file: !51, line: 356, baseType: !109, size: 32, offset: 576)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2676, file: !51, line: 357, baseType: !109, size: 32, offset: 608)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2676, file: !51, line: 358, baseType: !180, size: 64, offset: 640)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2676, file: !51, line: 359, baseType: !180, size: 64, offset: 704)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2676, file: !51, line: 360, baseType: !180, size: 64, offset: 768)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2676, file: !51, line: 361, baseType: !299, size: 64, offset: 832)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2676, file: !51, line: 362, baseType: !109, size: 32, offset: 896)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2643, file: !51, line: 438, baseType: !2695, size: 64, offset: 448)
!2695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2696, size: 64)
!2696 = !DISubroutineType(types: !2697)
!2697 = !{!109, !1196, !2639, !2675}
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2643, file: !51, line: 440, baseType: !2672, size: 64, offset: 512)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2643, file: !51, line: 441, baseType: !2700, size: 64, offset: 576)
!2700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2701, size: 64)
!2701 = !DISubroutineType(types: !2702)
!2702 = !{!109, !1196, !2703}
!2703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2704, size: 64)
!2704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !51, line: 411, size: 1408, elements: !2705)
!2705 = !{!2706, !2707}
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2704, file: !51, line: 412, baseType: !7, size: 32)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2704, file: !51, line: 413, baseType: !2708, size: 1344, offset: 64)
!2708 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2709, size: 1344, elements: !663)
!2709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !51, line: 397, size: 448, elements: !2710)
!2710 = !{!2711, !2712, !2713, !2714, !2715, !2716, !2717, !2718, !2719, !2721}
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2709, file: !51, line: 398, baseType: !7, size: 32)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2709, file: !51, line: 399, baseType: !7, size: 32, offset: 32)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2709, file: !51, line: 401, baseType: !7, size: 32, offset: 64)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2709, file: !51, line: 402, baseType: !7, size: 32, offset: 96)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2709, file: !51, line: 403, baseType: !7, size: 32, offset: 128)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2709, file: !51, line: 404, baseType: !7, size: 32, offset: 160)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2709, file: !51, line: 405, baseType: !7, size: 32, offset: 192)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2709, file: !51, line: 406, baseType: !184, size: 64, offset: 256)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2709, file: !51, line: 407, baseType: !2720, size: 64, offset: 320)
!2720 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !186, line: 132, baseType: !180)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2709, file: !51, line: 408, baseType: !2720, size: 64, offset: 384)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2643, file: !51, line: 442, baseType: !2651, size: 64, offset: 640)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1197, file: !14, line: 1200, baseType: !2724, size: 64, offset: 576)
!2724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2725, size: 64)
!2725 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2726)
!2726 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1197, file: !14, line: 1201, baseType: !187, size: 64, offset: 640)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1197, file: !14, line: 1202, baseType: !187, size: 64, offset: 704)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1197, file: !14, line: 1203, baseType: !187, size: 64, offset: 768)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1197, file: !14, line: 1204, baseType: !949, size: 64, offset: 832)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1197, file: !14, line: 1205, baseType: !766, size: 320, offset: 896)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1197, file: !14, line: 1206, baseType: !109, size: 32, offset: 1216)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1197, file: !14, line: 1207, baseType: !233, size: 32, offset: 1248)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1197, file: !14, line: 1209, baseType: !147, size: 64, offset: 1280)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1197, file: !14, line: 1211, baseType: !2736, size: 64, offset: 1344)
!2736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2737, size: 64)
!2737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2738, size: 64)
!2738 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2739)
!2739 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1197, file: !14, line: 1223, baseType: !2741, size: 64, offset: 1408)
!2741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !961, line: 34, size: 64, elements: !2742)
!2742 = !{!2743}
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2741, file: !961, line: 35, baseType: !964, size: 64)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1197, file: !14, line: 1224, baseType: !288, size: 128, offset: 1472)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1197, file: !14, line: 1225, baseType: !2746, size: 64, offset: 1600)
!2746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2747, size: 64)
!2747 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1197, file: !14, line: 1226, baseType: !2749, size: 64, offset: 1664)
!2749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2750, size: 64)
!2750 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1197, file: !14, line: 1227, baseType: !2752, size: 64, offset: 1728)
!2752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2753, size: 64)
!2753 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1197, file: !14, line: 1228, baseType: !2755, size: 64, offset: 1792)
!2755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2756, size: 64)
!2756 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1197, file: !14, line: 1229, baseType: !679, size: 128, offset: 1856)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1197, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1197, file: !14, line: 1231, baseType: !2760, size: 2496, offset: 2048)
!2760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !51, line: 521, size: 2496, elements: !2761)
!2761 = !{!2762, !2763, !2764, !2766, !2798}
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2760, file: !51, line: 522, baseType: !7, size: 32)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2760, file: !51, line: 523, baseType: !766, size: 320, offset: 64)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2760, file: !51, line: 524, baseType: !2765, size: 192, offset: 384)
!2765 = !DICompositeType(tag: DW_TAG_array_type, baseType: !984, size: 192, elements: !663)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2760, file: !51, line: 525, baseType: !2767, size: 1728, offset: 576)
!2767 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2768, size: 1728, elements: !663)
!2768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !51, line: 222, size: 576, elements: !2769)
!2769 = !{!2770, !2790, !2791, !2792, !2793, !2794, !2795, !2796, !2797}
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2768, file: !51, line: 223, baseType: !2771, size: 64)
!2771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2772, size: 64)
!2772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !51, line: 445, size: 256, elements: !2773)
!2773 = !{!2774, !2775, !2788, !2789}
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2772, file: !51, line: 446, baseType: !109, size: 32)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2772, file: !51, line: 447, baseType: !2776, size: 64, offset: 64)
!2776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2777, size: 64)
!2777 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2778)
!2778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !51, line: 312, size: 512, elements: !2779)
!2779 = !{!2780, !2781, !2782, !2783, !2784, !2785, !2786, !2787}
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2778, file: !51, line: 313, baseType: !2497, size: 64)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2778, file: !51, line: 314, baseType: !2497, size: 64, offset: 64)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2778, file: !51, line: 315, baseType: !2497, size: 64, offset: 128)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2778, file: !51, line: 316, baseType: !2497, size: 64, offset: 192)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2778, file: !51, line: 317, baseType: !2606, size: 64, offset: 256)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2778, file: !51, line: 318, baseType: !2606, size: 64, offset: 320)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2778, file: !51, line: 319, baseType: !2606, size: 64, offset: 384)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2778, file: !51, line: 320, baseType: !2636, size: 64, offset: 448)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2772, file: !51, line: 448, baseType: !1229, size: 64, offset: 128)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2772, file: !51, line: 449, baseType: !2771, size: 64, offset: 192)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2768, file: !51, line: 224, baseType: !109, size: 32, offset: 64)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2768, file: !51, line: 226, baseType: !288, size: 128, offset: 128)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2768, file: !51, line: 227, baseType: !187, size: 64, offset: 256)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2768, file: !51, line: 228, baseType: !7, size: 32, offset: 320)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2768, file: !51, line: 229, baseType: !7, size: 32, offset: 352)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2768, file: !51, line: 230, baseType: !2574, size: 64, offset: 384)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2768, file: !51, line: 231, baseType: !2574, size: 64, offset: 448)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2768, file: !51, line: 232, baseType: !147, size: 64, offset: 512)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2760, file: !51, line: 526, baseType: !2799, size: 192, offset: 2304)
!2799 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2776, size: 192, elements: !663)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1197, file: !14, line: 1233, baseType: !2801, size: 2368, offset: 4544)
!2801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !2802)
!2802 = !{!2803, !2804, !2805}
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2801, file: !14, line: 1185, baseType: !201, size: 16)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2801, file: !14, line: 1186, baseType: !201, size: 16, offset: 16)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2801, file: !14, line: 1187, baseType: !2806, size: 2304, offset: 64)
!2806 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2807, size: 2304, elements: !663)
!2807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2808, line: 12, size: 768, elements: !2809)
!2808 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2809 = !{!2810, !2818, !2819, !2824, !2825}
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2807, file: !2808, line: 13, baseType: !2811, size: 384)
!2811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2812, line: 17, size: 384, elements: !2813)
!2812 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2813 = !{!2814, !2815, !2816, !2817}
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2811, file: !2812, line: 18, baseType: !109, size: 32)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2811, file: !2812, line: 19, baseType: !109, size: 32, offset: 32)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2811, file: !2812, line: 20, baseType: !688, size: 192, offset: 64)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2811, file: !2812, line: 22, baseType: !605, size: 128, align: 64, offset: 256)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2807, file: !2808, line: 14, baseType: !179, size: 64, offset: 384)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2807, file: !2808, line: 15, baseType: !2820, size: 64, offset: 448)
!2820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2821, line: 16, size: 64, elements: !2822)
!2821 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2822 = !{!2823}
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2820, file: !2821, line: 17, baseType: !211, size: 64)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2807, file: !2808, line: 16, baseType: !688, size: 192, offset: 512)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2807, file: !2808, line: 17, baseType: !233, size: 32, offset: 704)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1197, file: !14, line: 1240, baseType: !147, size: 64, offset: 6912)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1197, file: !14, line: 1243, baseType: !222, size: 32, offset: 6976)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1197, file: !14, line: 1245, baseType: !782, size: 64, offset: 7040)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1197, file: !14, line: 1246, baseType: !782, size: 64, offset: 7104)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1197, file: !14, line: 1248, baseType: !223, size: 32, offset: 7168)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1197, file: !14, line: 1249, baseType: !2832, size: 64, offset: 7232)
!2832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2833, size: 64)
!2833 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1197, file: !14, line: 1252, baseType: !2835, size: 256, offset: 7296)
!2835 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 256, elements: !2836)
!2836 = !{!2837}
!2837 = !DISubrange(count: 32)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1197, file: !14, line: 1253, baseType: !2839, size: 128, offset: 7552)
!2839 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2840, line: 21, baseType: !2841)
!2840 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!2841 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2840, line: 19, size: 128, elements: !2842)
!2842 = !{!2843}
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2841, file: !2840, line: 20, baseType: !2844, size: 128)
!2844 = !DICompositeType(tag: DW_TAG_array_type, baseType: !399, size: 128, elements: !2845)
!2845 = !{!2846}
!2846 = !DISubrange(count: 16)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1197, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1197, file: !14, line: 1261, baseType: !625, size: 256, offset: 7744)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1197, file: !14, line: 1267, baseType: !828, size: 64, offset: 8000)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1197, file: !14, line: 1269, baseType: !2851, size: 64, offset: 8064)
!2851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2852, size: 64)
!2852 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2853)
!2853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !951, line: 128, size: 1024, align: 512, elements: !2854)
!2854 = !{!2855, !2859, !2860, !2867, !2873, !2877, !2881, !2885, !2886, !2890, !2894, !2899, !2903}
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2853, file: !951, line: 129, baseType: !2856, size: 64)
!2856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2857, size: 64)
!2857 = !DISubroutineType(types: !2858)
!2858 = !{!109, !949, !7}
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2853, file: !951, line: 130, baseType: !2856, size: 64, offset: 64)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2853, file: !951, line: 131, baseType: !2861, size: 64, offset: 128)
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2862, size: 64)
!2862 = !DISubroutineType(types: !2863)
!2863 = !{!109, !2864, !2866}
!2864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2865, size: 64)
!2865 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !950)
!2866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2853, file: !951, line: 132, baseType: !2868, size: 64, offset: 192)
!2868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2869, size: 64)
!2869 = !DISubroutineType(types: !2870)
!2870 = !{!109, !2864, !7, !828, !2871}
!2871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2872, size: 64)
!2872 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !969)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2853, file: !951, line: 134, baseType: !2874, size: 64, offset: 256)
!2874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2875, size: 64)
!2875 = !DISubroutineType(types: !2876)
!2876 = !{!109, !2864}
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2853, file: !951, line: 135, baseType: !2878, size: 64, offset: 320)
!2878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2879, size: 64)
!2879 = !DISubroutineType(types: !2880)
!2880 = !{!109, !949}
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2853, file: !951, line: 136, baseType: !2882, size: 64, offset: 384)
!2882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2883, size: 64)
!2883 = !DISubroutineType(types: !2884)
!2884 = !{null, !949}
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2853, file: !951, line: 137, baseType: !2882, size: 64, offset: 448)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2853, file: !951, line: 138, baseType: !2887, size: 64, offset: 512)
!2887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2888, size: 64)
!2888 = !DISubroutineType(types: !2889)
!2889 = !{null, !949, !984}
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2853, file: !951, line: 139, baseType: !2891, size: 64, offset: 576)
!2891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2892, size: 64)
!2892 = !DISubroutineType(types: !2893)
!2893 = !{!838, !949, !838, !109}
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2853, file: !951, line: 140, baseType: !2895, size: 64, offset: 640)
!2895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2896, size: 64)
!2896 = !DISubroutineType(types: !2897)
!2897 = !{!944, !2898}
!2898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2853, file: !951, line: 141, baseType: !2900, size: 64, offset: 704)
!2900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2901, size: 64)
!2901 = !DISubroutineType(types: !2902)
!2902 = !{!109, !1106, !825}
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2853, file: !951, line: 142, baseType: !2904, size: 64, offset: 768)
!2904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2905, size: 64)
!2905 = !DISubroutineType(types: !2906)
!2906 = !{!949, !949, !2907}
!2907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2908, size: 64)
!2908 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !985)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1197, file: !14, line: 1271, baseType: !2910, size: 448, offset: 8128)
!2910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2589, line: 63, size: 448, elements: !2911)
!2911 = !{!2912, !2917, !2918, !2919, !2920, !2921, !2922}
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2910, file: !2589, line: 64, baseType: !2913, size: 64)
!2913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2914, size: 64)
!2914 = !DISubroutineType(types: !2915)
!2915 = !{!187, !2916, !2587}
!2916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2910, size: 64)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2910, file: !2589, line: 66, baseType: !2913, size: 64, offset: 64)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2910, file: !2589, line: 69, baseType: !148, size: 64, offset: 128)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2910, file: !2589, line: 70, baseType: !109, size: 32, offset: 192)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2910, file: !2589, line: 71, baseType: !7, size: 32, offset: 224)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2910, file: !2589, line: 74, baseType: !288, size: 128, offset: 256)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2910, file: !2589, line: 85, baseType: !2923, size: 64, offset: 384)
!2923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1197, file: !14, line: 1274, baseType: !618, size: 64, offset: 8576)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1197, file: !14, line: 1280, baseType: !618, size: 64, offset: 8640)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1197, file: !14, line: 1283, baseType: !109, size: 32, offset: 8704)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1197, file: !14, line: 1286, baseType: !1892, size: 32, offset: 8736)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1197, file: !14, line: 1289, baseType: !2411, size: 64, offset: 8768)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1197, file: !14, line: 1290, baseType: !675, size: 64, offset: 8832)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1197, file: !14, line: 1297, baseType: !911, size: 64, offset: 8896)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1197, file: !14, line: 1304, baseType: !2932, size: 64, offset: 8960)
!2932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2933, line: 49, size: 64, elements: !2934)
!2933 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!2934 = !{!2935}
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2932, file: !2933, line: 50, baseType: !2936, size: 64)
!2936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2937, size: 64)
!2937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2933, line: 41, size: 512, align: 512, elements: !2938)
!2938 = !{!2939, !2940, !2945}
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2937, file: !2933, line: 43, baseType: !579, size: 32)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2937, file: !2933, line: 45, baseType: !2941, size: 192, offset: 64)
!2941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2933, line: 29, size: 192, elements: !2942)
!2942 = !{!2943, !2944}
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2941, file: !2933, line: 30, baseType: !288, size: 128)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2941, file: !2933, line: 32, baseType: !148, size: 64, offset: 128)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2937, file: !2933, line: 46, baseType: !148, size: 64, offset: 256)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1197, file: !14, line: 1305, baseType: !2932, size: 64, offset: 9024)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1197, file: !14, line: 1306, baseType: !605, size: 128, align: 64, offset: 9088)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1197, file: !14, line: 1307, baseType: !2350, size: 256, offset: 9216)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1197, file: !14, line: 1309, baseType: !625, size: 256, offset: 9472)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1197, file: !14, line: 1314, baseType: !109, size: 32, offset: 9728)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1197, file: !14, line: 1317, baseType: !579, size: 32, align: 512, offset: 10240)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1197, file: !14, line: 1318, baseType: !288, size: 128, offset: 10304)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1197, file: !14, line: 1320, baseType: !579, size: 32, offset: 10432)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1197, file: !14, line: 1321, baseType: !288, size: 128, offset: 10496)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !985, file: !14, line: 656, baseType: !1346, size: 64, offset: 512)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !985, file: !14, line: 659, baseType: !147, size: 64, offset: 576)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !985, file: !14, line: 663, baseType: !187, size: 64, offset: 640)
!2958 = !DIDerivedType(tag: DW_TAG_member, scope: !985, file: !14, line: 671, baseType: !2959, size: 32, offset: 704)
!2959 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !985, file: !14, line: 671, size: 32, elements: !2960)
!2960 = !{!2961, !2963}
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2959, file: !14, line: 672, baseType: !2962, size: 32)
!2962 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2959, file: !14, line: 673, baseType: !7, size: 32)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !985, file: !14, line: 675, baseType: !1059, size: 32, offset: 736)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !985, file: !14, line: 676, baseType: !637, size: 64, offset: 768)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !985, file: !14, line: 677, baseType: !1095, size: 128, offset: 832)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !985, file: !14, line: 678, baseType: !1095, size: 128, offset: 960)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !985, file: !14, line: 679, baseType: !1095, size: 128, offset: 1088)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !985, file: !14, line: 680, baseType: !579, size: 32, offset: 1216)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !985, file: !14, line: 681, baseType: !201, size: 16, offset: 1248)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !985, file: !14, line: 682, baseType: !398, size: 8, offset: 1264)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !985, file: !14, line: 683, baseType: !398, size: 8, offset: 1272)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !985, file: !14, line: 684, baseType: !2720, size: 64, offset: 1280)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !985, file: !14, line: 691, baseType: !187, size: 64, offset: 1344)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !985, file: !14, line: 692, baseType: !766, size: 320, offset: 1408)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !985, file: !14, line: 694, baseType: !187, size: 64, offset: 1728)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !985, file: !14, line: 695, baseType: !187, size: 64, offset: 1792)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !985, file: !14, line: 697, baseType: !679, size: 128, offset: 1856)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !985, file: !14, line: 698, baseType: !288, size: 128, offset: 1984)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !985, file: !14, line: 707, baseType: !288, size: 128, offset: 2112)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !985, file: !14, line: 708, baseType: !288, size: 128, offset: 2240)
!2982 = !DIDerivedType(tag: DW_TAG_member, scope: !985, file: !14, line: 709, baseType: !2983, size: 128, offset: 2368)
!2983 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !985, file: !14, line: 709, size: 128, elements: !2984)
!2984 = !{!2985, !2986}
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2983, file: !14, line: 710, baseType: !675, size: 64)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2983, file: !14, line: 711, baseType: !605, size: 128, align: 64)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !985, file: !14, line: 713, baseType: !620, size: 64, offset: 2496)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !985, file: !14, line: 714, baseType: !620, size: 64, offset: 2560)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !985, file: !14, line: 715, baseType: !233, size: 32, offset: 2624)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !985, file: !14, line: 716, baseType: !233, size: 32, offset: 2656)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !985, file: !14, line: 717, baseType: !233, size: 32, offset: 2688)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !985, file: !14, line: 719, baseType: !233, size: 32, offset: 2720)
!2993 = !DIDerivedType(tag: DW_TAG_member, scope: !985, file: !14, line: 721, baseType: !2994, size: 64, offset: 2752)
!2994 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !985, file: !14, line: 721, size: 64, elements: !2995)
!2995 = !{!2996, !3122}
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2994, file: !14, line: 722, baseType: !2997, size: 64)
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2998, size: 64)
!2998 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2999)
!2999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !3000)
!3000 = !{!3001, !3002, !3006, !3010, !3014, !3015, !3016, !3022, !3035, !3039, !3043, !3044, !3048, !3049, !3053, !3058, !3059, !3063, !3067, !3073, !3074, !3078, !3079, !3085, !3089, !3090, !3095, !3099, !3103, !3107, !3111, !3112, !3118}
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2999, file: !14, line: 1915, baseType: !1229, size: 64)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2999, file: !14, line: 1916, baseType: !3003, size: 64, offset: 64)
!3003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3004, size: 64)
!3004 = !DISubroutineType(types: !3005)
!3005 = !{!637, !597, !637, !109}
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2999, file: !14, line: 1917, baseType: !3007, size: 64, offset: 128)
!3007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3008, size: 64)
!3008 = !DISubroutineType(types: !3009)
!3009 = !{!1137, !597, !838, !1140, !2017}
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2999, file: !14, line: 1918, baseType: !3011, size: 64, offset: 192)
!3011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3012, size: 64)
!3012 = !DISubroutineType(types: !3013)
!3013 = !{!1137, !597, !828, !1140, !2017}
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2999, file: !14, line: 1919, baseType: !1776, size: 64, offset: 256)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2999, file: !14, line: 1920, baseType: !1776, size: 64, offset: 320)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2999, file: !14, line: 1921, baseType: !3017, size: 64, offset: 384)
!3017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3018, size: 64)
!3018 = !DISubroutineType(types: !3019)
!3019 = !{!109, !1779, !3020, !7}
!3020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3021, size: 64)
!3021 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !14, line: 53, flags: DIFlagFwdDecl)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2999, file: !14, line: 1923, baseType: !3023, size: 64, offset: 448)
!3023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3024, size: 64)
!3024 = !DISubroutineType(types: !3025)
!3025 = !{!109, !597, !3026}
!3026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3027, size: 64)
!3027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !3028)
!3028 = !{!3029, !3034}
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3027, file: !14, line: 1859, baseType: !3030, size: 64)
!3030 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !3031)
!3031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3032, size: 64)
!3032 = !DISubroutineType(types: !3033)
!3033 = !{!825, !3026, !828, !109, !637, !180, !7}
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3027, file: !14, line: 1860, baseType: !637, size: 64, offset: 64)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2999, file: !14, line: 1924, baseType: !3036, size: 64, offset: 512)
!3036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3037, size: 64)
!3037 = !DISubroutineType(types: !3038)
!3038 = !{!2064, !597, !2066}
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2999, file: !14, line: 1925, baseType: !3040, size: 64, offset: 576)
!3040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3041, size: 64)
!3041 = !DISubroutineType(types: !3042)
!3042 = !{!148, !597, !7, !187}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2999, file: !14, line: 1926, baseType: !3040, size: 64, offset: 640)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2999, file: !14, line: 1927, baseType: !3045, size: 64, offset: 704)
!3045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3046, size: 64)
!3046 = !DISubroutineType(types: !3047)
!3047 = !{!109, !597, !1485}
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2999, file: !14, line: 1928, baseType: !187, size: 64, offset: 768)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2999, file: !14, line: 1929, baseType: !3050, size: 64, offset: 832)
!3050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3051, size: 64)
!3051 = !DISubroutineType(types: !3052)
!3052 = !{!109, !984, !597}
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2999, file: !14, line: 1930, baseType: !3054, size: 64, offset: 896)
!3054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3055, size: 64)
!3055 = !DISubroutineType(types: !3056)
!3056 = !{!109, !597, !3057}
!3057 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !147)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2999, file: !14, line: 1931, baseType: !3050, size: 64, offset: 960)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2999, file: !14, line: 1932, baseType: !3060, size: 64, offset: 1024)
!3060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3061, size: 64)
!3061 = !DISubroutineType(types: !3062)
!3062 = !{!109, !597, !637, !637, !109}
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2999, file: !14, line: 1933, baseType: !3064, size: 64, offset: 1088)
!3064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3065, size: 64)
!3065 = !DISubroutineType(types: !3066)
!3066 = !{!109, !109, !597, !109}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2999, file: !14, line: 1934, baseType: !3068, size: 64, offset: 1152)
!3068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3069, size: 64)
!3069 = !DISubroutineType(types: !3070)
!3070 = !{!109, !597, !109, !3071}
!3071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3072, size: 64)
!3072 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2999, file: !14, line: 1935, baseType: !594, size: 64, offset: 1216)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2999, file: !14, line: 1936, baseType: !3075, size: 64, offset: 1280)
!3075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3076, size: 64)
!3076 = !DISubroutineType(types: !3077)
!3077 = !{!109, !109}
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2999, file: !14, line: 1937, baseType: !3068, size: 64, offset: 1344)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2999, file: !14, line: 1938, baseType: !3080, size: 64, offset: 1408)
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3081, size: 64)
!3081 = !DISubroutineType(types: !3082)
!3082 = !{!1137, !3083, !597, !2017, !1140, !7}
!3083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3084, size: 64)
!3084 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !213, line: 59, flags: DIFlagFwdDecl)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2999, file: !14, line: 1939, baseType: !3086, size: 64, offset: 1472)
!3086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3087, size: 64)
!3087 = !DISubroutineType(types: !3088)
!3088 = !{!1137, !597, !2017, !3083, !1140, !7}
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !2999, file: !14, line: 1940, baseType: !1882, size: 64, offset: 1536)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2999, file: !14, line: 1941, baseType: !3091, size: 64, offset: 1600)
!3091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3092, size: 64)
!3092 = !DISubroutineType(types: !3093)
!3093 = !{!109, !597, !109, !3094, !1753}
!3094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3071, size: 64)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2999, file: !14, line: 1942, baseType: !3096, size: 64, offset: 1664)
!3096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3097, size: 64)
!3097 = !DISubroutineType(types: !3098)
!3098 = !{!148, !597, !109, !637, !637}
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2999, file: !14, line: 1944, baseType: !3100, size: 64, offset: 1728)
!3100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3101, size: 64)
!3101 = !DISubroutineType(types: !3102)
!3102 = !{null, !1996, !597}
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2999, file: !14, line: 1948, baseType: !3104, size: 64, offset: 1792)
!3104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3105, size: 64)
!3105 = !DISubroutineType(types: !3106)
!3106 = !{!1137, !597, !637, !597, !637, !1140, !7}
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2999, file: !14, line: 1950, baseType: !3108, size: 64, offset: 1856)
!3108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3109, size: 64)
!3109 = !DISubroutineType(types: !3110)
!3110 = !{!637, !597, !637, !597, !637, !637, !7}
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2999, file: !14, line: 1953, baseType: !3060, size: 64, offset: 1920)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !2999, file: !14, line: 1954, baseType: !3113, size: 64, offset: 1984)
!3113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3114, size: 64)
!3114 = !DISubroutineType(types: !3115)
!3115 = !{!109, !3116, !7}
!3116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3117, size: 64)
!3117 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !2999, file: !14, line: 1955, baseType: !3119, size: 64, offset: 2048)
!3119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3120, size: 64)
!3120 = !DISubroutineType(types: !3121)
!3121 = !{!109, !3116, !3020, !7}
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2994, file: !14, line: 723, baseType: !2478, size: 64)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !985, file: !14, line: 725, baseType: !3124, size: 64, offset: 2816)
!3124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3125, size: 64)
!3125 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !985, file: !14, line: 726, baseType: !1347, size: 1536, align: 64, offset: 2880)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !985, file: !14, line: 727, baseType: !288, size: 128, offset: 4416)
!3128 = !DIDerivedType(tag: DW_TAG_member, scope: !985, file: !14, line: 728, baseType: !3129, size: 64, offset: 4544)
!3129 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !985, file: !14, line: 728, size: 64, elements: !3130)
!3130 = !{!3131, !3132, !3143, !3144}
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3129, file: !14, line: 729, baseType: !3083, size: 64)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3129, file: !14, line: 730, baseType: !3133, size: 64)
!3133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3134, size: 64)
!3134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !3135, line: 14, size: 832, elements: !3136)
!3135 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dd3580fb19b1b4d9a4e84334e4ba7aa6")
!3136 = !{!3137, !3138, !3139, !3140, !3141, !3142}
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3134, file: !3135, line: 15, baseType: !1242, size: 512)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3134, file: !3135, line: 16, baseType: !1229, size: 64, offset: 512)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3134, file: !3135, line: 17, baseType: !2997, size: 64, offset: 576)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3134, file: !3135, line: 18, baseType: !288, size: 128, offset: 640)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3134, file: !3135, line: 19, baseType: !1059, size: 32, offset: 768)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3134, file: !3135, line: 20, baseType: !7, size: 32, offset: 800)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3129, file: !14, line: 731, baseType: !838, size: 64)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3129, file: !14, line: 732, baseType: !7, size: 32)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !985, file: !14, line: 735, baseType: !223, size: 32, offset: 4608)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !985, file: !14, line: 738, baseType: !223, size: 32, offset: 4640)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !985, file: !14, line: 739, baseType: !2832, size: 64, offset: 4672)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !985, file: !14, line: 750, baseType: !147, size: 64, offset: 4736)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !950, file: !951, line: 91, baseType: !3150, size: 256, offset: 448)
!3150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 256, elements: !2836)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !950, file: !951, line: 94, baseType: !3152, size: 64, offset: 704)
!3152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3153, line: 25, size: 64, elements: !3154)
!3153 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!3154 = !{!3155}
!3155 = !DIDerivedType(tag: DW_TAG_member, scope: !3152, file: !3153, line: 26, baseType: !3156, size: 64)
!3156 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3152, file: !3153, line: 26, size: 64, elements: !3157)
!3157 = !{!3158, !3159}
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !3156, file: !3153, line: 28, baseType: !182, size: 64, align: 64)
!3159 = !DIDerivedType(tag: DW_TAG_member, scope: !3156, file: !3153, line: 30, baseType: !3160, size: 64)
!3160 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3156, file: !3153, line: 30, size: 64, elements: !3161)
!3161 = !{!3162, !3163}
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3160, file: !3153, line: 31, baseType: !579, size: 32)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3160, file: !3153, line: 32, baseType: !109, size: 32, offset: 32)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !950, file: !951, line: 95, baseType: !2851, size: 64, offset: 768)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !950, file: !951, line: 96, baseType: !1196, size: 64, offset: 832)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !950, file: !951, line: 97, baseType: !187, size: 64, offset: 896)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !950, file: !951, line: 98, baseType: !147, size: 64, offset: 960)
!3168 = !DIDerivedType(tag: DW_TAG_member, scope: !950, file: !951, line: 100, baseType: !3169, size: 128, offset: 1024)
!3169 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !950, file: !951, line: 100, size: 128, elements: !3170)
!3170 = !{!3171, !3172}
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3169, file: !951, line: 101, baseType: !288, size: 128)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3169, file: !951, line: 102, baseType: !3173, size: 64)
!3173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !950, file: !951, line: 104, baseType: !288, size: 128, offset: 1152)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !950, file: !951, line: 105, baseType: !288, size: 128, offset: 1280)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !950, file: !951, line: 113, baseType: !3177, size: 128, offset: 1408)
!3177 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !950, file: !951, line: 109, size: 128, elements: !3178)
!3178 = !{!3179, !3180, !3181}
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3177, file: !951, line: 110, baseType: !679, size: 128)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3177, file: !951, line: 111, baseType: !960, size: 128)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3177, file: !951, line: 112, baseType: !605, size: 128, align: 64)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !945, file: !946, line: 72, baseType: !1196, size: 64, offset: 64)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !945, file: !946, line: 73, baseType: !109, size: 32, offset: 128)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !945, file: !946, line: 74, baseType: !1024, size: 64, offset: 192)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !940, file: !941, line: 10, baseType: !949, size: 64, offset: 64)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !598, file: !14, line: 1015, baseType: !984, size: 64, offset: 1344)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !598, file: !14, line: 1016, baseType: !2997, size: 64, offset: 1408)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !598, file: !14, line: 1018, baseType: !180, size: 64, offset: 1472)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !598, file: !14, line: 1020, baseType: !147, size: 64, offset: 1536)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !598, file: !14, line: 1023, baseType: !147, size: 64, offset: 1600)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !598, file: !14, line: 1027, baseType: !3192, size: 64, offset: 1664)
!3192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !598, file: !14, line: 1029, baseType: !1346, size: 64, offset: 1728)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !598, file: !14, line: 1030, baseType: !1892, size: 32, offset: 1792)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !598, file: !14, line: 1031, baseType: !1892, size: 32, offset: 1824)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !565, file: !27, line: 756, baseType: !187, size: 64, offset: 704)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !565, file: !27, line: 757, baseType: !187, size: 64, offset: 768)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !565, file: !27, line: 760, baseType: !187, size: 64, offset: 832)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !565, file: !27, line: 761, baseType: !187, size: 64, offset: 896)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !565, file: !27, line: 763, baseType: !187, size: 64, offset: 960)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !565, file: !27, line: 764, baseType: !3202, size: 64, offset: 1024)
!3202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3203, size: 64)
!3203 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1500, line: 299, baseType: !3204)
!3204 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1500, line: 299, size: 64, elements: !3205)
!3205 = !{!3206}
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !3204, file: !1500, line: 299, baseType: !3207, size: 64)
!3207 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1505, line: 18, baseType: !187)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !565, file: !27, line: 773, baseType: !233, size: 32, offset: 1088)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !565, file: !27, line: 785, baseType: !233, size: 32, offset: 1120)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !565, file: !27, line: 795, baseType: !3211, size: 64, offset: 1152)
!3211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3212, size: 64)
!3212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !27, line: 726, size: 128, elements: !3213)
!3213 = !{!3214, !3215}
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3212, file: !27, line: 727, baseType: !180, size: 64)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !3212, file: !27, line: 728, baseType: !109, size: 32, offset: 64)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !565, file: !27, line: 801, baseType: !187, size: 64, offset: 1216)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !565, file: !27, line: 804, baseType: !618, size: 64, offset: 1280)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !565, file: !27, line: 806, baseType: !109, size: 32, offset: 1344)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !565, file: !27, line: 808, baseType: !579, size: 32, offset: 1376)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !565, file: !27, line: 823, baseType: !766, size: 320, offset: 1408)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !565, file: !27, line: 825, baseType: !288, size: 128, offset: 1728)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !565, file: !27, line: 845, baseType: !109, size: 32, offset: 1856)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !565, file: !27, line: 849, baseType: !187, size: 64, offset: 1920)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !565, file: !27, line: 850, baseType: !187, size: 64, offset: 1984)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !565, file: !27, line: 852, baseType: !187, size: 64, offset: 2048)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !565, file: !27, line: 853, baseType: !187, size: 64, offset: 2112)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !565, file: !27, line: 854, baseType: !620, size: 64, offset: 2176)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !565, file: !27, line: 855, baseType: !187, size: 64, offset: 2240)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !565, file: !27, line: 856, baseType: !187, size: 64, offset: 2304)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !565, file: !27, line: 857, baseType: !187, size: 64, offset: 2368)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !565, file: !27, line: 858, baseType: !187, size: 64, offset: 2432)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !565, file: !27, line: 865, baseType: !435, size: 32, offset: 2496)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !565, file: !27, line: 867, baseType: !579, size: 32, offset: 2528)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !565, file: !27, line: 869, baseType: !187, size: 64, offset: 2560)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !565, file: !27, line: 869, baseType: !187, size: 64, offset: 2624)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !565, file: !27, line: 869, baseType: !187, size: 64, offset: 2688)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !565, file: !27, line: 869, baseType: !187, size: 64, offset: 2752)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !565, file: !27, line: 870, baseType: !187, size: 64, offset: 2816)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !565, file: !27, line: 870, baseType: !187, size: 64, offset: 2880)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !565, file: !27, line: 870, baseType: !187, size: 64, offset: 2944)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !565, file: !27, line: 871, baseType: !187, size: 64, offset: 3008)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !565, file: !27, line: 871, baseType: !187, size: 64, offset: 3072)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !565, file: !27, line: 871, baseType: !187, size: 64, offset: 3136)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !565, file: !27, line: 871, baseType: !187, size: 64, offset: 3200)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !565, file: !27, line: 873, baseType: !3246, size: 3328, offset: 3264)
!3246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 3328, elements: !3247)
!3247 = !{!3248}
!3248 = !DISubrange(count: 52)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !565, file: !27, line: 875, baseType: !3250, size: 1280, offset: 6592)
!3250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !886, size: 1280, elements: !684)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !565, file: !27, line: 877, baseType: !3252, size: 64, offset: 7872)
!3252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3253, size: 64)
!3253 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !27, line: 877, flags: DIFlagFwdDecl)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !565, file: !27, line: 880, baseType: !3255, size: 1088, offset: 7936)
!3255 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !3256, line: 72, baseType: !3257)
!3256 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!3257 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3256, line: 23, size: 1088, elements: !3258)
!3258 = !{!3259, !3260, !3261, !3262, !3263, !3266, !3267, !3268, !3269, !3294, !3295, !3296}
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !3257, file: !3256, line: 28, baseType: !180, size: 64)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !3257, file: !3256, line: 38, baseType: !620, size: 64, offset: 64)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !3257, file: !3256, line: 40, baseType: !187, size: 64, offset: 128)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !3257, file: !3256, line: 43, baseType: !766, size: 320, offset: 192)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !3257, file: !3256, line: 44, baseType: !3264, size: 64, offset: 512)
!3264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3265, size: 64)
!3265 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !3256, line: 44, flags: DIFlagFwdDecl)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3257, file: !3256, line: 48, baseType: !187, size: 64, offset: 576)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3257, file: !3256, line: 59, baseType: !625, size: 256, offset: 640)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !3257, file: !3256, line: 60, baseType: !147, size: 64, offset: 896)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !3257, file: !3256, line: 61, baseType: !3270, size: 64, offset: 960)
!3270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3271, size: 64)
!3271 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3272)
!3272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !3273, line: 13, size: 1216, elements: !3274)
!3273 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!3274 = !{!3275, !3276, !3277, !3278, !3279, !3280, !3281, !3282, !3283, !3284, !3285, !3286, !3287, !3288, !3289, !3290, !3291, !3292, !3293}
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3272, file: !3273, line: 14, baseType: !147, size: 64)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3272, file: !3273, line: 15, baseType: !187, size: 64, offset: 64)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !3272, file: !3273, line: 17, baseType: !187, size: 64, offset: 128)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !3272, file: !3273, line: 17, baseType: !187, size: 64, offset: 192)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !3272, file: !3273, line: 18, baseType: !187, size: 64, offset: 256)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !3272, file: !3273, line: 18, baseType: !187, size: 64, offset: 320)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !3272, file: !3273, line: 19, baseType: !1931, size: 64, offset: 384)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !3272, file: !3273, line: 21, baseType: !148, size: 64, offset: 448)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !3272, file: !3273, line: 23, baseType: !148, size: 64, offset: 512)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !3272, file: !3273, line: 24, baseType: !148, size: 64, offset: 576)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !3272, file: !3273, line: 25, baseType: !148, size: 64, offset: 640)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !3272, file: !3273, line: 26, baseType: !148, size: 64, offset: 704)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !3272, file: !3273, line: 27, baseType: !148, size: 64, offset: 768)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !3272, file: !3273, line: 28, baseType: !148, size: 64, offset: 832)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !3272, file: !3273, line: 29, baseType: !148, size: 64, offset: 896)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !3272, file: !3273, line: 30, baseType: !148, size: 64, offset: 960)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !3272, file: !3273, line: 31, baseType: !148, size: 64, offset: 1024)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !3272, file: !3273, line: 32, baseType: !148, size: 64, offset: 1088)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !3272, file: !3273, line: 33, baseType: !148, size: 64, offset: 1152)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !3257, file: !3256, line: 63, baseType: !233, size: 32, offset: 1024)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !3257, file: !3256, line: 69, baseType: !256, size: 16, offset: 1056)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !3257, file: !3256, line: 70, baseType: !2243, size: 16, offset: 1072)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !565, file: !27, line: 882, baseType: !187, size: 64, offset: 9024)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !565, file: !27, line: 885, baseType: !579, size: 32, offset: 9088)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !565, file: !27, line: 886, baseType: !3300, size: 64, offset: 9152)
!3300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3301, size: 64)
!3301 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !27, line: 732, flags: DIFlagFwdDecl)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !565, file: !27, line: 901, baseType: !911, size: 64, offset: 9216)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !565, file: !27, line: 904, baseType: !597, size: 64, offset: 9280)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !565, file: !27, line: 906, baseType: !3305, size: 64, offset: 9344)
!3305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3306, size: 64)
!3306 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !27, line: 906, flags: DIFlagFwdDecl)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !565, file: !27, line: 930, baseType: !233, size: 32, offset: 9408)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !565, file: !27, line: 933, baseType: !233, size: 32, offset: 9440)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !565, file: !27, line: 935, baseType: !3310, size: 64, offset: 9472)
!3310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !68, line: 103, size: 64, elements: !3311)
!3311 = !{!3312}
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !3310, file: !68, line: 104, baseType: !3313, size: 64)
!3313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3314, size: 64)
!3314 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !68, line: 101, flags: DIFlagFwdDecl)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !565, file: !27, line: 940, baseType: !618, size: 64, offset: 9536)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !565, file: !27, line: 942, baseType: !2350, size: 256, offset: 9600)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !562, file: !27, line: 986, baseType: !3318, offset: 10240)
!3318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, elements: !703)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !212, file: !213, line: 882, baseType: !561, size: 64, offset: 9792)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !212, file: !213, line: 884, baseType: !109, size: 32, offset: 9856)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !212, file: !213, line: 885, baseType: !109, size: 32, offset: 9888)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !212, file: !213, line: 886, baseType: !109, size: 32, offset: 9920)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !212, file: !213, line: 888, baseType: !109, size: 32, offset: 9952)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !212, file: !213, line: 890, baseType: !187, size: 64, offset: 9984)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !212, file: !213, line: 893, baseType: !7, size: 32, offset: 10048)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !212, file: !213, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !212, file: !213, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !212, file: !213, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !212, file: !213, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !212, file: !213, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !212, file: !213, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !212, file: !213, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !212, file: !213, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !212, file: !213, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !212, file: !213, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !212, file: !213, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !212, file: !213, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !212, file: !213, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !212, file: !213, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !212, file: !213, line: 969, baseType: !187, size: 64, offset: 10176)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !212, file: !213, line: 971, baseType: !3342, size: 448, offset: 10240)
!3342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !62, line: 25, size: 448, elements: !3343)
!3343 = !{!3344, !3345, !3350}
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3342, file: !62, line: 26, baseType: !187, size: 64)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3342, file: !62, line: 27, baseType: !3346, size: 64, offset: 64)
!3346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3347, size: 64)
!3347 = !DISubroutineType(types: !3348)
!3348 = !{!148, !3349}
!3349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3342, size: 64)
!3350 = !DIDerivedType(tag: DW_TAG_member, scope: !3342, file: !62, line: 28, baseType: !3351, size: 320, offset: 128)
!3351 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3342, file: !62, line: 28, size: 320, elements: !3352)
!3352 = !{!3353, !3363, !3388}
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3351, file: !62, line: 37, baseType: !3354, size: 320)
!3354 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3351, file: !62, line: 30, size: 320, elements: !3355)
!3355 = !{!3356, !3358, !3359, !3360, !3361, !3362}
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3354, file: !62, line: 31, baseType: !3357, size: 64)
!3357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3354, file: !62, line: 32, baseType: !222, size: 32, offset: 64)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3354, file: !62, line: 33, baseType: !222, size: 32, offset: 96)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3354, file: !62, line: 34, baseType: !222, size: 32, offset: 128)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3354, file: !62, line: 35, baseType: !180, size: 64, offset: 192)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3354, file: !62, line: 36, baseType: !3357, size: 64, offset: 256)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3351, file: !62, line: 47, baseType: !3364, size: 192)
!3364 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3351, file: !62, line: 39, size: 192, elements: !3365)
!3365 = !{!3366, !3367, !3368, !3387}
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3364, file: !62, line: 40, baseType: !426, size: 32)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3364, file: !62, line: 41, baseType: !61, size: 32, offset: 32)
!3368 = !DIDerivedType(tag: DW_TAG_member, scope: !3364, file: !62, line: 42, baseType: !3369, size: 64, offset: 64)
!3369 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3364, file: !62, line: 42, size: 64, elements: !3370)
!3370 = !{!3371, !3379}
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3369, file: !62, line: 43, baseType: !3372, size: 64)
!3372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3373, size: 64)
!3373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3374, line: 7, size: 128, elements: !3375)
!3374 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3375 = !{!3376, !3378}
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3373, file: !3374, line: 8, baseType: !3377, size: 64)
!3377 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !428, line: 93, baseType: !301)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3373, file: !3374, line: 9, baseType: !301, size: 64, offset: 64)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3369, file: !62, line: 44, baseType: !3380, size: 64)
!3380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3381, size: 64)
!3381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3382, line: 7, size: 64, elements: !3383)
!3382 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3383 = !{!3384, !3386}
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3381, file: !3382, line: 8, baseType: !3385, size: 32)
!3385 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3382, line: 5, baseType: !758)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3381, file: !3382, line: 9, baseType: !758, size: 32, offset: 32)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3364, file: !62, line: 46, baseType: !180, size: 64, offset: 128)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3351, file: !62, line: 55, baseType: !3389, size: 256)
!3389 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3351, file: !62, line: 49, size: 256, elements: !3390)
!3390 = !{!3391, !3394, !3395, !3396, !3397}
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3389, file: !62, line: 50, baseType: !3392, size: 64)
!3392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3393, size: 64)
!3393 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !62, line: 14, flags: DIFlagFwdDecl)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3389, file: !62, line: 51, baseType: !109, size: 32, offset: 64)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3389, file: !62, line: 52, baseType: !109, size: 32, offset: 96)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3389, file: !62, line: 53, baseType: !187, size: 64, offset: 128)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3389, file: !62, line: 54, baseType: !187, size: 64, offset: 192)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !212, file: !213, line: 973, baseType: !3399, size: 32, offset: 10688)
!3399 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !186, line: 27, baseType: !3400)
!3400 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !428, line: 28, baseType: !109)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !212, file: !213, line: 974, baseType: !3399, size: 32, offset: 10720)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !212, file: !213, line: 978, baseType: !187, size: 64, offset: 10752)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !212, file: !213, line: 987, baseType: !211, size: 64, offset: 10816)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !212, file: !213, line: 990, baseType: !211, size: 64, offset: 10880)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !212, file: !213, line: 995, baseType: !288, size: 128, offset: 10944)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !212, file: !213, line: 996, baseType: !288, size: 128, offset: 11072)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !212, file: !213, line: 997, baseType: !211, size: 64, offset: 11200)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !212, file: !213, line: 1005, baseType: !288, size: 128, offset: 11264)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !212, file: !213, line: 1006, baseType: !288, size: 128, offset: 11392)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !212, file: !213, line: 1009, baseType: !667, size: 64, offset: 11520)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !212, file: !213, line: 1010, baseType: !3412, size: 512, offset: 11584)
!3412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !679, size: 512, elements: !684)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !212, file: !213, line: 1011, baseType: !288, size: 128, offset: 12096)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !212, file: !213, line: 1012, baseType: !288, size: 128, offset: 12224)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !212, file: !213, line: 1014, baseType: !2101, size: 64, offset: 12352)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !212, file: !213, line: 1017, baseType: !178, size: 64, offset: 12416)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !212, file: !213, line: 1020, baseType: !178, size: 64, offset: 12480)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !212, file: !213, line: 1023, baseType: !147, size: 64, offset: 12544)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !212, file: !213, line: 1025, baseType: !180, size: 64, offset: 12608)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !212, file: !213, line: 1026, baseType: !180, size: 64, offset: 12672)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !212, file: !213, line: 1031, baseType: !180, size: 64, offset: 12736)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !212, file: !213, line: 1032, baseType: !3423, size: 192, offset: 12800)
!3423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !213, line: 324, size: 192, elements: !3424)
!3424 = !{!3425, !3426, !3427}
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3423, file: !213, line: 326, baseType: !180, size: 64)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3423, file: !213, line: 327, baseType: !180, size: 64, offset: 64)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3423, file: !213, line: 328, baseType: !381, size: 32, offset: 128)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !212, file: !213, line: 1041, baseType: !187, size: 64, offset: 12992)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !212, file: !213, line: 1042, baseType: !187, size: 64, offset: 13056)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !212, file: !213, line: 1045, baseType: !180, size: 64, offset: 13120)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !212, file: !213, line: 1048, baseType: !180, size: 64, offset: 13184)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !212, file: !213, line: 1051, baseType: !187, size: 64, offset: 13248)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !212, file: !213, line: 1052, baseType: !187, size: 64, offset: 13312)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !212, file: !213, line: 1055, baseType: !3435, size: 640, offset: 13376)
!3435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3436, line: 132, size: 640, elements: !3437)
!3436 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3437 = !{!3438, !3444, !3445}
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3435, file: !3436, line: 133, baseType: !3439, size: 576)
!3439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3440, size: 576, elements: !663)
!3440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3436, line: 117, size: 192, elements: !3441)
!3441 = !{!3442, !3443}
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3440, file: !3436, line: 118, baseType: !180, size: 64)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3440, file: !3436, line: 119, baseType: !441, size: 128, offset: 64)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3435, file: !3436, line: 134, baseType: !7, size: 32, offset: 576)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3435, file: !3436, line: 135, baseType: !7, size: 32, offset: 608)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !212, file: !213, line: 1058, baseType: !3447, size: 448, offset: 14016)
!3447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3436, line: 144, size: 448, elements: !3448)
!3448 = !{!3449, !3450, !3451}
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3447, file: !3436, line: 145, baseType: !605, size: 128, align: 64)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3447, file: !3436, line: 146, baseType: !625, size: 256, offset: 128)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3447, file: !3436, line: 147, baseType: !7, size: 32, offset: 384)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !212, file: !213, line: 1064, baseType: !717, size: 64, offset: 14464)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !212, file: !213, line: 1067, baseType: !717, size: 64, offset: 14528)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !212, file: !213, line: 1070, baseType: !717, size: 64, offset: 14592)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !212, file: !213, line: 1074, baseType: !750, size: 64, offset: 14656)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !212, file: !213, line: 1084, baseType: !3457, size: 128, offset: 14720)
!3457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 128, elements: !2845)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !212, file: !213, line: 1086, baseType: !3459, size: 64, offset: 14848)
!3459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3460, size: 64)
!3460 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !213, line: 55, flags: DIFlagFwdDecl)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !212, file: !213, line: 1089, baseType: !3462, size: 64, offset: 14912)
!3462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3463, line: 12, size: 64, elements: !3464)
!3463 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3464 = !{!3465}
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3462, file: !3463, line: 13, baseType: !3466, size: 64)
!3466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3467, size: 64)
!3467 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3463, line: 8, flags: DIFlagFwdDecl)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !212, file: !213, line: 1090, baseType: !3469, size: 128, offset: 14976)
!3469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3470, line: 13, size: 128, elements: !3471)
!3470 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3471 = !{!3472}
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3469, file: !3470, line: 14, baseType: !288, size: 128)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !212, file: !213, line: 1097, baseType: !3474, size: 64, offset: 15104)
!3474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3475, size: 64)
!3475 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !213, line: 50, flags: DIFlagFwdDecl)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !212, file: !213, line: 1100, baseType: !3477, size: 64, offset: 15168)
!3477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3478, size: 64)
!3478 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !213, line: 1100, flags: DIFlagFwdDecl)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !212, file: !213, line: 1103, baseType: !3480, size: 64, offset: 15232)
!3480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3481, size: 64)
!3481 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !213, line: 53, flags: DIFlagFwdDecl)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !212, file: !213, line: 1107, baseType: !3483, size: 64, offset: 15296)
!3483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3484, size: 64)
!3484 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !213, line: 56, flags: DIFlagFwdDecl)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !212, file: !213, line: 1110, baseType: !3486, size: 64, offset: 15360)
!3486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3487, size: 64)
!3487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3488, line: 93, size: 8768, elements: !3489)
!3488 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3489 = !{!3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3537, !3546, !3547, !3549, !3550, !3551, !4396, !4402, !4403, !4404, !4405, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4417, !4418, !4419, !4420, !4421, !4422, !4423, !4434, !4435, !4442, !4452, !4455, !4456, !4459, !4460, !4461, !4462, !4463, !4464}
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3487, file: !3488, line: 94, baseType: !228, size: 32)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3487, file: !3488, line: 95, baseType: !233, size: 32, offset: 32)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3487, file: !3488, line: 96, baseType: !109, size: 32, offset: 64)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3487, file: !3488, line: 97, baseType: !109, size: 32, offset: 96)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3487, file: !3488, line: 98, baseType: !288, size: 128, offset: 128)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3487, file: !3488, line: 100, baseType: !688, size: 192, offset: 256)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3487, file: !3488, line: 103, baseType: !211, size: 64, offset: 448)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3487, file: !3488, line: 106, baseType: !3498, size: 192, offset: 512)
!3498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !916, line: 32, size: 192, elements: !3499)
!3499 = !{!3500, !3501}
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3498, file: !916, line: 33, baseType: !288, size: 128)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3498, file: !916, line: 34, baseType: !3502, size: 64, offset: 128)
!3502 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3503, line: 25, baseType: !3504)
!3503 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3504 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3503, line: 23, size: 64, elements: !3505)
!3505 = !{!3506}
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3504, file: !3503, line: 24, baseType: !512, size: 64)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3487, file: !3488, line: 109, baseType: !675, size: 64, offset: 704)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3487, file: !3488, line: 112, baseType: !109, size: 32, offset: 768)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3487, file: !3488, line: 114, baseType: !109, size: 32, offset: 800)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3487, file: !3488, line: 115, baseType: !211, size: 64, offset: 832)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3487, file: !3488, line: 118, baseType: !109, size: 32, offset: 896)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3487, file: !3488, line: 119, baseType: !7, size: 32, offset: 928)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3487, file: !3488, line: 121, baseType: !3514, size: 64, offset: 960)
!3514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3515, size: 64)
!3515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3488, line: 80, size: 448, elements: !3516)
!3516 = !{!3517, !3518, !3524}
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3515, file: !3488, line: 81, baseType: !233, size: 32)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3515, file: !3488, line: 82, baseType: !3519, size: 128, offset: 64)
!3519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3488, line: 75, size: 128, elements: !3520)
!3520 = !{!3521, !3522}
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3519, file: !3488, line: 76, baseType: !211, size: 64)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3519, file: !3488, line: 77, baseType: !3523, size: 64, offset: 64)
!3523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3519, size: 64)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3515, file: !3488, line: 83, baseType: !1450, size: 256, offset: 192)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3487, file: !3488, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3487, file: !3488, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3487, file: !3488, line: 138, baseType: !7, size: 32, offset: 1056)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3487, file: !3488, line: 139, baseType: !288, size: 128, offset: 1088)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3487, file: !3488, line: 142, baseType: !356, size: 512, offset: 1216)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3487, file: !3488, line: 143, baseType: !364, size: 64, offset: 1728)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3487, file: !3488, line: 150, baseType: !3532, size: 256, offset: 1792)
!3532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3533, size: 256, elements: !2227)
!3533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3488, line: 38, size: 128, elements: !3534)
!3534 = !{!3535, !3536}
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3533, file: !3488, line: 39, baseType: !180, size: 64)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3533, file: !3488, line: 40, baseType: !180, size: 64, offset: 64)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3487, file: !3488, line: 156, baseType: !3538, size: 192, offset: 2048)
!3538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3488, line: 66, size: 192, elements: !3539)
!3539 = !{!3540}
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3538, file: !3488, line: 67, baseType: !3541, size: 192)
!3541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3488, line: 47, size: 192, elements: !3542)
!3542 = !{!3543, !3544, !3545}
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3541, file: !3488, line: 48, baseType: !620, size: 64)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3541, file: !3488, line: 49, baseType: !620, size: 64, offset: 64)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3541, file: !3488, line: 50, baseType: !620, size: 64, offset: 128)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3487, file: !3488, line: 160, baseType: !3435, size: 640, offset: 2240)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3487, file: !3488, line: 163, baseType: !3548, size: 256, offset: 2880)
!3548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !667, size: 256, elements: !684)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3487, file: !3488, line: 169, baseType: !667, size: 64, offset: 3136)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3487, file: !3488, line: 172, baseType: !109, size: 32, offset: 3200)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3487, file: !3488, line: 174, baseType: !3552, size: 64, offset: 3264)
!3552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3553, size: 64)
!3553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3554, line: 193, size: 5248, elements: !3555)
!3554 = !DIFile(filename: "./include/linux/tty.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e268081fbcd8852324c3200836ed4371")
!3555 = !{!3556, !3557, !3558, !4009, !4285, !4286, !4287, !4334, !4342, !4343, !4344, !4345, !4346, !4347, !4348, !4349, !4351, !4352, !4353, !4354, !4355, !4363, !4372, !4373, !4374, !4375, !4376, !4386, !4387, !4388, !4389, !4390, !4391, !4392, !4393, !4394, !4395}
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !3553, file: !3554, line: 194, baseType: !2086, size: 32)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3553, file: !3554, line: 195, baseType: !109, size: 32, offset: 32)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3553, file: !3554, line: 196, baseType: !3559, size: 64, offset: 64)
!3559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3560, size: 64)
!3560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !94, line: 705, size: 5824, elements: !3561)
!3561 = !{!3562, !3563, !3564, !3567, !3568, !3621, !3691, !3692, !3693, !3694, !3695, !3702, !3794, !3807, !3817, !3821, !3823, !3824, !3825, !3829, !3836, !3837, !3840, !3843, !3847, !3951, !3952, !3953, !3954, !3955, !3956, !3986, !3987, !3988, !3991, !3994, !4003, !4004, !4005, !4006, !4007, !4008}
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3560, file: !94, line: 706, baseType: !1242, size: 512)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3560, file: !94, line: 707, baseType: !3559, size: 64, offset: 512)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3560, file: !94, line: 709, baseType: !3565, size: 64, offset: 576)
!3565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3566, size: 64)
!3566 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !94, line: 37, flags: DIFlagFwdDecl)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !3560, file: !94, line: 711, baseType: !828, size: 64, offset: 640)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3560, file: !94, line: 712, baseType: !3569, size: 64, offset: 704)
!3569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3570, size: 64)
!3570 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3571)
!3571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !94, line: 89, size: 384, elements: !3572)
!3572 = !{!3573, !3574, !3575, !3581, !3586, !3590}
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3571, file: !94, line: 90, baseType: !828, size: 64)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3571, file: !94, line: 91, baseType: !1322, size: 64, offset: 64)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3571, file: !94, line: 92, baseType: !3576, size: 64, offset: 128)
!3576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3577, size: 64)
!3577 = !DISubroutineType(types: !3578)
!3578 = !{!109, !3579, !1278}
!3579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3580, size: 64)
!3580 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3560)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3571, file: !94, line: 93, baseType: !3582, size: 64, offset: 192)
!3582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3583, size: 64)
!3583 = !DISubroutineType(types: !3584)
!3584 = !{!838, !3579, !3585, !1948, !1949}
!3585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3571, file: !94, line: 95, baseType: !3587, size: 64, offset: 256)
!3587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3588, size: 64)
!3588 = !DISubroutineType(types: !3589)
!3589 = !{null, !3559}
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3571, file: !94, line: 97, baseType: !3591, size: 64, offset: 320)
!3591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3592, size: 64)
!3592 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3593)
!3593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !101, line: 286, size: 1472, elements: !3594)
!3594 = !{!3595, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620}
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3593, file: !101, line: 287, baseType: !3596, size: 64)
!3596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3597, size: 64)
!3597 = !DISubroutineType(types: !3598)
!3598 = !{!109, !3559}
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3593, file: !101, line: 288, baseType: !3587, size: 64, offset: 64)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3593, file: !101, line: 289, baseType: !3596, size: 64, offset: 128)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3593, file: !101, line: 290, baseType: !3596, size: 64, offset: 192)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3593, file: !101, line: 291, baseType: !3596, size: 64, offset: 256)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3593, file: !101, line: 292, baseType: !3596, size: 64, offset: 320)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3593, file: !101, line: 293, baseType: !3596, size: 64, offset: 384)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3593, file: !101, line: 294, baseType: !3596, size: 64, offset: 448)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3593, file: !101, line: 295, baseType: !3596, size: 64, offset: 512)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3593, file: !101, line: 296, baseType: !3596, size: 64, offset: 576)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3593, file: !101, line: 297, baseType: !3596, size: 64, offset: 640)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3593, file: !101, line: 298, baseType: !3596, size: 64, offset: 704)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3593, file: !101, line: 299, baseType: !3596, size: 64, offset: 768)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3593, file: !101, line: 300, baseType: !3596, size: 64, offset: 832)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3593, file: !101, line: 301, baseType: !3596, size: 64, offset: 896)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3593, file: !101, line: 302, baseType: !3596, size: 64, offset: 960)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3593, file: !101, line: 303, baseType: !3596, size: 64, offset: 1024)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3593, file: !101, line: 304, baseType: !3596, size: 64, offset: 1088)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3593, file: !101, line: 305, baseType: !3596, size: 64, offset: 1152)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3593, file: !101, line: 306, baseType: !3596, size: 64, offset: 1216)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3593, file: !101, line: 307, baseType: !3596, size: 64, offset: 1280)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3593, file: !101, line: 308, baseType: !3596, size: 64, offset: 1344)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3593, file: !101, line: 309, baseType: !3596, size: 64, offset: 1408)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3560, file: !94, line: 714, baseType: !3622, size: 64, offset: 768)
!3622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3623, size: 64)
!3623 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3624)
!3624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3625, line: 80, size: 1344, elements: !3626)
!3625 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!3626 = !{!3627, !3628, !3629, !3630, !3631, !3632, !3673, !3674, !3675, !3676, !3677, !3678, !3679, !3680, !3681, !3682, !3683, !3684, !3685, !3686, !3690}
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3624, file: !3625, line: 81, baseType: !828, size: 64)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3624, file: !3625, line: 82, baseType: !828, size: 64, offset: 64)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3624, file: !3625, line: 83, baseType: !1322, size: 64, offset: 128)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3624, file: !3625, line: 84, baseType: !1322, size: 64, offset: 192)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3624, file: !3625, line: 85, baseType: !1322, size: 64, offset: 256)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3624, file: !3625, line: 87, baseType: !3633, size: 64, offset: 320)
!3633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3634, size: 64)
!3634 = !DISubroutineType(types: !3635)
!3635 = !{!109, !3559, !3636}
!3636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3637, size: 64)
!3637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !88, line: 96, size: 1152, elements: !3638)
!3638 = !{!3639, !3640, !3641, !3642, !3643, !3644, !3645, !3649, !3653, !3654, !3655, !3656, !3657, !3665, !3666, !3667, !3668, !3669, !3670}
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3637, file: !88, line: 97, baseType: !828, size: 64)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3637, file: !88, line: 98, baseType: !3622, size: 64, offset: 64)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3637, file: !88, line: 100, baseType: !1229, size: 64, offset: 128)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3637, file: !88, line: 101, baseType: !828, size: 64, offset: 192)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3637, file: !88, line: 103, baseType: !825, size: 8, offset: 256)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3637, file: !88, line: 104, baseType: !87, size: 32, offset: 288)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3637, file: !88, line: 106, baseType: !3646, size: 64, offset: 320)
!3646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3647, size: 64)
!3647 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3648)
!3648 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !88, line: 106, flags: DIFlagFwdDecl)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3637, file: !88, line: 107, baseType: !3650, size: 64, offset: 384)
!3650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3651, size: 64)
!3651 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3652)
!3652 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !88, line: 107, flags: DIFlagFwdDecl)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3637, file: !88, line: 109, baseType: !3596, size: 64, offset: 448)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3637, file: !88, line: 110, baseType: !3587, size: 64, offset: 512)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3637, file: !88, line: 111, baseType: !3596, size: 64, offset: 576)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3637, file: !88, line: 112, baseType: !3587, size: 64, offset: 640)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3637, file: !88, line: 113, baseType: !3658, size: 64, offset: 704)
!3658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3659, size: 64)
!3659 = !DISubroutineType(types: !3660)
!3660 = !{!109, !3559, !3661}
!3661 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !101, line: 60, baseType: !3662)
!3662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !101, line: 58, size: 32, elements: !3663)
!3663 = !{!3664}
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3662, file: !101, line: 59, baseType: !109, size: 32)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3637, file: !88, line: 114, baseType: !3596, size: 64, offset: 768)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3637, file: !88, line: 115, baseType: !1322, size: 64, offset: 832)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3637, file: !88, line: 116, baseType: !1322, size: 64, offset: 896)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3637, file: !88, line: 118, baseType: !3591, size: 64, offset: 960)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3637, file: !88, line: 119, baseType: !3587, size: 64, offset: 1024)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3637, file: !88, line: 121, baseType: !3671, size: 64, offset: 1088)
!3671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3672, size: 64)
!3672 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !88, line: 121, flags: DIFlagFwdDecl)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3624, file: !3625, line: 88, baseType: !3576, size: 64, offset: 384)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3624, file: !3625, line: 89, baseType: !3596, size: 64, offset: 448)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3624, file: !3625, line: 90, baseType: !3587, size: 64, offset: 512)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3624, file: !3625, line: 91, baseType: !3587, size: 64, offset: 576)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3624, file: !3625, line: 92, baseType: !3587, size: 64, offset: 640)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3624, file: !3625, line: 94, baseType: !3596, size: 64, offset: 704)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3624, file: !3625, line: 95, baseType: !3596, size: 64, offset: 768)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3624, file: !3625, line: 97, baseType: !3658, size: 64, offset: 832)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3624, file: !3625, line: 98, baseType: !3596, size: 64, offset: 896)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3624, file: !3625, line: 100, baseType: !3596, size: 64, offset: 960)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3624, file: !3625, line: 102, baseType: !3596, size: 64, offset: 1024)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !3624, file: !3625, line: 103, baseType: !3587, size: 64, offset: 1088)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3624, file: !3625, line: 105, baseType: !3591, size: 64, offset: 1152)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3624, file: !3625, line: 107, baseType: !3687, size: 64, offset: 1216)
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3688 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3689)
!3689 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3625, line: 107, flags: DIFlagFwdDecl)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3624, file: !3625, line: 109, baseType: !825, size: 8, offset: 1280)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3560, file: !94, line: 715, baseType: !3636, size: 64, offset: 832)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !3560, file: !94, line: 717, baseType: !147, size: 64, offset: 896)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3560, file: !94, line: 719, baseType: !147, size: 64, offset: 960)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3560, file: !94, line: 721, baseType: !625, size: 256, offset: 1024)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3560, file: !94, line: 725, baseType: !3696, size: 448, offset: 1280)
!3696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !94, line: 517, size: 448, elements: !3697)
!3697 = !{!3698, !3699, !3700, !3701}
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3696, file: !94, line: 518, baseType: !288, size: 128)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3696, file: !94, line: 519, baseType: !288, size: 128, offset: 128)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !3696, file: !94, line: 520, baseType: !288, size: 128, offset: 256)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3696, file: !94, line: 521, baseType: !93, size: 32, offset: 384)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3560, file: !94, line: 726, baseType: !3703, size: 2496, offset: 1728)
!3703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !101, line: 663, size: 2496, elements: !3704)
!3704 = !{!3705, !3706, !3707, !3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3716, !3717, !3718, !3719, !3720, !3747, !3748, !3749, !3750, !3751, !3752, !3753, !3754, !3755, !3756, !3757, !3758, !3759, !3760, !3761, !3762, !3763, !3764, !3765, !3766, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3787, !3791}
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3703, file: !101, line: 664, baseType: !3661, size: 32)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3703, file: !101, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3703, file: !101, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3703, file: !101, line: 667, baseType: !825, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3703, file: !101, line: 668, baseType: !825, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3703, file: !101, line: 669, baseType: !825, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3703, file: !101, line: 670, baseType: !825, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3703, file: !101, line: 671, baseType: !825, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3703, file: !101, line: 672, baseType: !825, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3703, file: !101, line: 673, baseType: !825, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3703, file: !101, line: 674, baseType: !825, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3703, file: !101, line: 675, baseType: !222, size: 32, offset: 64)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3703, file: !101, line: 676, baseType: !579, size: 32, offset: 96)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3703, file: !101, line: 678, baseType: !288, size: 128, offset: 128)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3703, file: !101, line: 679, baseType: !1450, size: 256, offset: 256)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3703, file: !101, line: 680, baseType: !3721, size: 64, offset: 512)
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3723, line: 43, size: 1536, elements: !3724)
!3723 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!3724 = !{!3725, !3726, !3727, !3728, !3729, !3732, !3733, !3734, !3735, !3736, !3737, !3738, !3739, !3740, !3741, !3742, !3743, !3744, !3745, !3746}
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3722, file: !3723, line: 44, baseType: !828, size: 64)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3722, file: !3723, line: 45, baseType: !109, size: 32, offset: 64)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3722, file: !3723, line: 46, baseType: !288, size: 128, offset: 128)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3722, file: !3723, line: 47, baseType: !579, size: 32, offset: 256)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3722, file: !3723, line: 48, baseType: !3730, size: 64, offset: 320)
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3731, size: 64)
!3731 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !101, line: 629, flags: DIFlagFwdDecl)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3722, file: !3723, line: 49, baseType: !2338, size: 320, offset: 384)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3722, file: !3723, line: 50, baseType: !187, size: 64, offset: 704)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3722, file: !3723, line: 51, baseType: !364, size: 64, offset: 768)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3722, file: !3723, line: 52, baseType: !364, size: 64, offset: 832)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3722, file: !3723, line: 53, baseType: !364, size: 64, offset: 896)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3722, file: !3723, line: 54, baseType: !364, size: 64, offset: 960)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3722, file: !3723, line: 55, baseType: !364, size: 64, offset: 1024)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3722, file: !3723, line: 56, baseType: !187, size: 64, offset: 1088)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3722, file: !3723, line: 57, baseType: !187, size: 64, offset: 1152)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3722, file: !3723, line: 58, baseType: !187, size: 64, offset: 1216)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3722, file: !3723, line: 59, baseType: !187, size: 64, offset: 1280)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3722, file: !3723, line: 60, baseType: !187, size: 64, offset: 1344)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3722, file: !3723, line: 61, baseType: !3559, size: 64, offset: 1408)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3722, file: !3723, line: 62, baseType: !825, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3722, file: !3723, line: 63, baseType: !825, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3703, file: !101, line: 681, baseType: !825, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3703, file: !101, line: 682, baseType: !825, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3703, file: !101, line: 683, baseType: !825, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3703, file: !101, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3703, file: !101, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3703, file: !101, line: 690, baseType: !356, size: 512, offset: 640)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3703, file: !101, line: 691, baseType: !180, size: 64, offset: 1152)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3703, file: !101, line: 692, baseType: !2350, size: 256, offset: 1216)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3703, file: !101, line: 693, baseType: !688, size: 192, offset: 1472)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3703, file: !101, line: 694, baseType: !3730, size: 64, offset: 1664)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3703, file: !101, line: 695, baseType: !233, size: 32, offset: 1728)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3703, file: !101, line: 696, baseType: !233, size: 32, offset: 1760)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3703, file: !101, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3703, file: !101, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3703, file: !101, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3703, file: !101, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !3703, file: !101, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3703, file: !101, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3703, file: !101, line: 703, baseType: !825, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3703, file: !101, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3703, file: !101, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3703, file: !101, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3703, file: !101, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3703, file: !101, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3703, file: !101, line: 709, baseType: !7, size: 32, offset: 1824)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3703, file: !101, line: 710, baseType: !100, size: 32, offset: 1856)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3703, file: !101, line: 711, baseType: !108, size: 32, offset: 1888)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !3703, file: !101, line: 712, baseType: !108, size: 32, offset: 1920)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3703, file: !101, line: 713, baseType: !109, size: 32, offset: 1952)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3703, file: !101, line: 714, baseType: !109, size: 32, offset: 1984)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3703, file: !101, line: 715, baseType: !180, size: 64, offset: 2048)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3703, file: !101, line: 716, baseType: !180, size: 64, offset: 2112)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3703, file: !101, line: 717, baseType: !180, size: 64, offset: 2176)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3703, file: !101, line: 718, baseType: !180, size: 64, offset: 2240)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3703, file: !101, line: 720, baseType: !3782, size: 64, offset: 2304)
!3782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3783, size: 64)
!3783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !101, line: 632, size: 64, elements: !3784)
!3784 = !{!3785, !3786}
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3783, file: !101, line: 633, baseType: !579, size: 32)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3783, file: !101, line: 634, baseType: !7, size: 32, offset: 32)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3703, file: !101, line: 721, baseType: !3788, size: 64, offset: 2368)
!3788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3789, size: 64)
!3789 = !DISubroutineType(types: !3790)
!3790 = !{null, !3559, !758}
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3703, file: !101, line: 722, baseType: !3792, size: 64, offset: 2432)
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3793, size: 64)
!3793 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !101, line: 722, flags: DIFlagFwdDecl)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !3560, file: !94, line: 727, baseType: !3795, size: 64, offset: 4224)
!3795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3796, size: 64)
!3796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !101, line: 742, size: 1792, elements: !3797)
!3797 = !{!3798, !3799, !3800, !3804, !3805, !3806}
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3796, file: !101, line: 743, baseType: !3593, size: 1472)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3796, file: !101, line: 744, baseType: !3596, size: 64, offset: 1472)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3796, file: !101, line: 745, baseType: !3801, size: 64, offset: 1536)
!3801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3802, size: 64)
!3802 = !DISubroutineType(types: !3803)
!3803 = !{null, !3559, !825}
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3796, file: !101, line: 746, baseType: !3596, size: 64, offset: 1600)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3796, file: !101, line: 747, baseType: !3587, size: 64, offset: 1664)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3796, file: !101, line: 748, baseType: !3587, size: 64, offset: 1728)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !3560, file: !94, line: 736, baseType: !3808, size: 128, offset: 4288)
!3808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !94, line: 529, size: 128, elements: !3809)
!3809 = !{!3810, !3814}
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3808, file: !94, line: 531, baseType: !3811, size: 64)
!3811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3812, size: 64)
!3812 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !3813, line: 13, flags: DIFlagFwdDecl)
!3813 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3808, file: !94, line: 532, baseType: !3815, size: 64, offset: 64)
!3815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3816, size: 64)
!3816 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !94, line: 49, flags: DIFlagFwdDecl)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !3560, file: !94, line: 738, baseType: !3818, size: 64, offset: 4416)
!3818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3819, size: 64)
!3819 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3820)
!3820 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !94, line: 738, flags: DIFlagFwdDecl)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3560, file: !94, line: 740, baseType: !3822, size: 64, offset: 4480)
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !3560, file: !94, line: 741, baseType: !180, size: 64, offset: 4544)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !3560, file: !94, line: 746, baseType: !180, size: 64, offset: 4608)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !3560, file: !94, line: 747, baseType: !3826, size: 64, offset: 4672)
!3826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3827, size: 64)
!3827 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3828)
!3828 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !94, line: 747, flags: DIFlagFwdDecl)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3560, file: !94, line: 749, baseType: !3830, size: 64, offset: 4736)
!3830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3831, size: 64)
!3831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !94, line: 428, size: 128, elements: !3832)
!3832 = !{!3833, !3834, !3835}
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3831, file: !94, line: 433, baseType: !7, size: 32)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !3831, file: !94, line: 434, baseType: !7, size: 32, offset: 32)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3831, file: !94, line: 435, baseType: !187, size: 64, offset: 64)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !3560, file: !94, line: 751, baseType: !288, size: 128, offset: 4800)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !3560, file: !94, line: 762, baseType: !3838, size: 64, offset: 4928)
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3839, size: 64)
!3839 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !94, line: 762, flags: DIFlagFwdDecl)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !3560, file: !94, line: 770, baseType: !3841, offset: 4992)
!3841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3842, line: 5, elements: !590)
!3842 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !3560, file: !94, line: 772, baseType: !3844, size: 64, offset: 4992)
!3844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3845, size: 64)
!3845 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3846, line: 18, flags: DIFlagFwdDecl)
!3846 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3560, file: !94, line: 773, baseType: !3848, size: 64, offset: 5056)
!3848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3849, size: 64)
!3849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3850, line: 41, size: 512, elements: !3851)
!3850 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!3851 = !{!3852, !3853, !3947, !3948, !3949, !3950}
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3849, file: !3850, line: 42, baseType: !3848, size: 64)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3849, file: !3850, line: 43, baseType: !3854, size: 64, offset: 64)
!3854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3855, size: 64)
!3855 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3856)
!3856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3850, line: 125, size: 1408, elements: !3857)
!3857 = !{!3858, !3862, !3866, !3872, !3876, !3877, !3882, !3886, !3890, !3894, !3898, !3899, !3903, !3907, !3911, !3922, !3923, !3924, !3925, !3935, !3939, !3943}
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3856, file: !3850, line: 126, baseType: !3859, size: 64)
!3859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3860, size: 64)
!3860 = !DISubroutineType(types: !3861)
!3861 = !{!3848, !3848}
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3856, file: !3850, line: 127, baseType: !3863, size: 64, offset: 64)
!3863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3864, size: 64)
!3864 = !DISubroutineType(types: !3865)
!3865 = !{null, !3848}
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3856, file: !3850, line: 128, baseType: !3867, size: 64, offset: 128)
!3867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3868, size: 64)
!3868 = !DISubroutineType(types: !3869)
!3869 = !{!825, !3870}
!3870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3871, size: 64)
!3871 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3849)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3856, file: !3850, line: 129, baseType: !3873, size: 64, offset: 192)
!3873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3874, size: 64)
!3874 = !DISubroutineType(types: !3875)
!3875 = !{!1931, !3870, !3579}
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !3856, file: !3850, line: 131, baseType: !3867, size: 64, offset: 256)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !3856, file: !3850, line: 133, baseType: !3878, size: 64, offset: 320)
!3878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3879, size: 64)
!3879 = !DISubroutineType(types: !3880)
!3880 = !{!3881, !3870}
!3881 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !3850, line: 132, flags: DIFlagFwdDecl)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3856, file: !3850, line: 134, baseType: !3883, size: 64, offset: 384)
!3883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3884, size: 64)
!3884 = !DISubroutineType(types: !3885)
!3885 = !{!825, !3870, !828}
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3856, file: !3850, line: 136, baseType: !3887, size: 64, offset: 448)
!3887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3888, size: 64)
!3888 = !DISubroutineType(types: !3889)
!3889 = !{!109, !3870, !828, !7, !147, !1140}
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3856, file: !3850, line: 141, baseType: !3891, size: 64, offset: 512)
!3891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3892, size: 64)
!3892 = !DISubroutineType(types: !3893)
!3893 = !{!109, !3870, !828, !2426, !1140}
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3856, file: !3850, line: 144, baseType: !3895, size: 64, offset: 576)
!3895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3896, size: 64)
!3896 = !DISubroutineType(types: !3897)
!3897 = !{!828, !3870}
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3856, file: !3850, line: 145, baseType: !3895, size: 64, offset: 640)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3856, file: !3850, line: 146, baseType: !3900, size: 64, offset: 704)
!3900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3901, size: 64)
!3901 = !DISubroutineType(types: !3902)
!3902 = !{!3848, !3870}
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3856, file: !3850, line: 148, baseType: !3904, size: 64, offset: 768)
!3904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3905, size: 64)
!3905 = !DISubroutineType(types: !3906)
!3906 = !{!3848, !3870, !3848}
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3856, file: !3850, line: 151, baseType: !3908, size: 64, offset: 832)
!3908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3909, size: 64)
!3909 = !DISubroutineType(types: !3910)
!3910 = !{!3848, !3870, !828}
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3856, file: !3850, line: 153, baseType: !3912, size: 64, offset: 896)
!3912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3913, size: 64)
!3913 = !DISubroutineType(types: !3914)
!3914 = !{!109, !3870, !828, !828, !7, !7, !3915}
!3915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3916, size: 64)
!3916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3850, line: 94, size: 640, elements: !3917)
!3917 = !{!3918, !3919, !3920}
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3916, file: !3850, line: 95, baseType: !3848, size: 64)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3916, file: !3850, line: 96, baseType: !7, size: 32, offset: 64)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3916, file: !3850, line: 97, baseType: !3921, size: 512, offset: 128)
!3921 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 512, elements: !208)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3856, file: !3850, line: 158, baseType: !3904, size: 64, offset: 960)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3856, file: !3850, line: 161, baseType: !3900, size: 64, offset: 1024)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3856, file: !3850, line: 163, baseType: !3859, size: 64, offset: 1088)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3856, file: !3850, line: 164, baseType: !3926, size: 64, offset: 1152)
!3926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3927, size: 64)
!3927 = !DISubroutineType(types: !3928)
!3928 = !{!109, !3870, !3929}
!3929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3930, size: 64)
!3930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3850, line: 73, size: 128, elements: !3931)
!3931 = !{!3932, !3933, !3934}
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3930, file: !3850, line: 74, baseType: !7, size: 32)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3930, file: !3850, line: 75, baseType: !7, size: 32, offset: 32)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3930, file: !3850, line: 76, baseType: !3870, size: 64, offset: 64)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !3856, file: !3850, line: 166, baseType: !3936, size: 64, offset: 1216)
!3936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3937, size: 64)
!3937 = !DISubroutineType(types: !3938)
!3938 = !{!147, !3848, !109}
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !3856, file: !3850, line: 167, baseType: !3940, size: 64, offset: 1280)
!3940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3941, size: 64)
!3941 = !DISubroutineType(types: !3942)
!3942 = !{!109, !3870, !7}
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3856, file: !3850, line: 168, baseType: !3944, size: 64, offset: 1344)
!3944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3945, size: 64)
!3945 = !DISubroutineType(types: !3946)
!3946 = !{!109, !3848}
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3849, file: !3850, line: 44, baseType: !3559, size: 64, offset: 128)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3849, file: !3850, line: 45, baseType: !288, size: 128, offset: 192)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3849, file: !3850, line: 46, baseType: !288, size: 128, offset: 320)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3849, file: !3850, line: 47, baseType: !398, size: 8, offset: 448)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !3560, file: !94, line: 776, baseType: !109, size: 32, offset: 5120)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !3560, file: !94, line: 778, baseType: !1059, size: 32, offset: 5152)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3560, file: !94, line: 779, baseType: !222, size: 32, offset: 5184)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !3560, file: !94, line: 781, baseType: !579, size: 32, offset: 5216)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !3560, file: !94, line: 782, baseType: !288, size: 128, offset: 5248)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3560, file: !94, line: 784, baseType: !3957, size: 64, offset: 5376)
!3957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3958, size: 64)
!3958 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3959)
!3959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3960, line: 52, size: 768, elements: !3961)
!3960 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!3961 = !{!3962, !3963, !3964, !3965, !3966, !3970, !3974, !3975, !3976, !3977, !3981, !3985}
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3959, file: !3960, line: 53, baseType: !828, size: 64)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3959, file: !3960, line: 55, baseType: !1322, size: 64, offset: 64)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3959, file: !3960, line: 56, baseType: !1322, size: 64, offset: 128)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3959, file: !3960, line: 58, baseType: !3576, size: 64, offset: 192)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3959, file: !3960, line: 59, baseType: !3967, size: 64, offset: 256)
!3967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3968, size: 64)
!3968 = !DISubroutineType(types: !3969)
!3969 = !{!838, !3579, !3585}
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3959, file: !3960, line: 61, baseType: !3971, size: 64, offset: 320)
!3971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3972, size: 64)
!3972 = !DISubroutineType(types: !3973)
!3973 = !{null, !3957}
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3959, file: !3960, line: 62, baseType: !3587, size: 64, offset: 384)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3959, file: !3960, line: 64, baseType: !3596, size: 64, offset: 448)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3959, file: !3960, line: 66, baseType: !1914, size: 64, offset: 512)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3959, file: !3960, line: 67, baseType: !3978, size: 64, offset: 576)
!3978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3979, size: 64)
!3979 = !DISubroutineType(types: !3980)
!3980 = !{!1931, !3579}
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3959, file: !3960, line: 69, baseType: !3982, size: 64, offset: 640)
!3982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3983, size: 64)
!3983 = !DISubroutineType(types: !3984)
!3984 = !{null, !3579, !1948, !1949}
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3959, file: !3960, line: 71, baseType: !3591, size: 64, offset: 704)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3560, file: !94, line: 785, baseType: !1322, size: 64, offset: 5440)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3560, file: !94, line: 787, baseType: !3587, size: 64, offset: 5504)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !3560, file: !94, line: 788, baseType: !3989, size: 64, offset: 5568)
!3989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3990, size: 64)
!3990 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !94, line: 46, flags: DIFlagFwdDecl)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !3560, file: !94, line: 789, baseType: !3992, size: 64, offset: 5632)
!3992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3993, size: 64)
!3993 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !94, line: 48, flags: DIFlagFwdDecl)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !3560, file: !94, line: 791, baseType: !3995, size: 64, offset: 5696)
!3995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3996, size: 64)
!3996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !94, line: 597, size: 128, elements: !3997)
!3997 = !{!3998, !3999, !4000, !4001, !4002}
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !3996, file: !94, line: 598, baseType: !116, size: 32)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !3996, file: !94, line: 599, baseType: !125, size: 32, offset: 32)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !3996, file: !94, line: 600, baseType: !130, size: 32, offset: 64)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !3996, file: !94, line: 601, baseType: !825, size: 8, offset: 96)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !3996, file: !94, line: 602, baseType: !825, size: 8, offset: 104)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !3560, file: !94, line: 793, baseType: !135, size: 32, offset: 5760)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !3560, file: !94, line: 795, baseType: !825, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3560, file: !94, line: 796, baseType: !825, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !3560, file: !94, line: 797, baseType: !825, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !3560, file: !94, line: 798, baseType: !825, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !3560, file: !94, line: 799, baseType: !825, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3553, file: !3554, line: 197, baseType: !4010, size: 64, offset: 128)
!4010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4011, size: 64)
!4011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_driver", file: !4012, line: 441, size: 1472, elements: !4013)
!4012 = !DIFile(filename: "./include/linux/tty_driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "52287f86f2b54a92396893dc3bae7f83")
!4013 = !{!4014, !4015, !4017, !4018, !4019, !4020, !4021, !4022, !4023, !4024, !4025, !4026, !4037, !4038, !4041, !4042, !4044, !4165, !4168, !4169, !4284}
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !4011, file: !4012, line: 442, baseType: !2086, size: 32)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "cdevs", scope: !4011, file: !4012, line: 443, baseType: !4016, size: 64, offset: 64)
!4016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3133, size: 64)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4011, file: !4012, line: 444, baseType: !1229, size: 64, offset: 128)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "driver_name", scope: !4011, file: !4012, line: 445, baseType: !828, size: 64, offset: 192)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4011, file: !4012, line: 446, baseType: !828, size: 64, offset: 256)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "name_base", scope: !4011, file: !4012, line: 447, baseType: !109, size: 32, offset: 320)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !4011, file: !4012, line: 448, baseType: !109, size: 32, offset: 352)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "minor_start", scope: !4011, file: !4012, line: 449, baseType: !109, size: 32, offset: 384)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !4011, file: !4012, line: 450, baseType: !7, size: 32, offset: 416)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4011, file: !4012, line: 451, baseType: !794, size: 16, offset: 448)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "subtype", scope: !4011, file: !4012, line: 452, baseType: !794, size: 16, offset: 464)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "init_termios", scope: !4011, file: !4012, line: 453, baseType: !4027, size: 352, offset: 480)
!4027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ktermios", file: !151, line: 30, size: 352, elements: !4028)
!4028 = !{!4029, !4030, !4031, !4032, !4033, !4034, !4035, !4036}
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "c_iflag", scope: !4027, file: !151, line: 31, baseType: !154, size: 32)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "c_oflag", scope: !4027, file: !151, line: 32, baseType: !154, size: 32, offset: 32)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "c_cflag", scope: !4027, file: !151, line: 33, baseType: !154, size: 32, offset: 64)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "c_lflag", scope: !4027, file: !151, line: 34, baseType: !154, size: 32, offset: 96)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "c_line", scope: !4027, file: !151, line: 35, baseType: !159, size: 8, offset: 128)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "c_cc", scope: !4027, file: !151, line: 36, baseType: !163, size: 152, offset: 136)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "c_ispeed", scope: !4027, file: !151, line: 37, baseType: !176, size: 32, offset: 288)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "c_ospeed", scope: !4027, file: !151, line: 38, baseType: !176, size: 32, offset: 320)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4011, file: !4012, line: 454, baseType: !187, size: 64, offset: 832)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "proc_entry", scope: !4011, file: !4012, line: 455, baseType: !4039, size: 64, offset: 896)
!4039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4040, size: 64)
!4040 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !4012, line: 455, flags: DIFlagFwdDecl)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "other", scope: !4011, file: !4012, line: 456, baseType: !4010, size: 64, offset: 960)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "ttys", scope: !4011, file: !4012, line: 461, baseType: !4043, size: 64, offset: 1024)
!4043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3552, size: 64)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "ports", scope: !4011, file: !4012, line: 462, baseType: !4045, size: 64, offset: 1088)
!4045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4046, size: 64)
!4046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4047, size: 64)
!4047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port", file: !4048, line: 101, size: 3008, elements: !4049)
!4048 = !DIFile(filename: "./include/linux/tty_port.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b629b087027425c3d8279d0757a10f1f")
!4049 = !{!4050, !4082, !4083, !4084, !4106, !4122, !4123, !4124, !4125, !4126, !4127, !4128, !4129, !4130, !4131, !4132, !4134, !4160, !4161, !4162, !4163, !4164}
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !4047, file: !4048, line: 102, baseType: !4051, size: 1088)
!4051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_bufhead", file: !4052, line: 35, size: 1088, elements: !4053)
!4052 = !DIFile(filename: "./include/linux/tty_buffer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b5b8ed57ecb4f2e1ef71c039c2414911")
!4053 = !{!4054, !4071, !4072, !4073, !4074, !4075, !4079, !4080, !4081}
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4051, file: !4052, line: 36, baseType: !4055, size: 64)
!4055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4056, size: 64)
!4056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_buffer", file: !4052, line: 10, size: 256, elements: !4057)
!4057 = !{!4058, !4063, !4064, !4065, !4066, !4067, !4068, !4069}
!4058 = !DIDerivedType(tag: DW_TAG_member, scope: !4056, file: !4052, line: 11, baseType: !4059, size: 64)
!4059 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4056, file: !4052, line: 11, size: 64, elements: !4060)
!4060 = !{!4061, !4062}
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4059, file: !4052, line: 12, baseType: !4055, size: 64)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4059, file: !4052, line: 13, baseType: !245, size: 64)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !4056, file: !4052, line: 15, baseType: !7, size: 32, offset: 64)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4056, file: !4052, line: 16, baseType: !7, size: 32, offset: 96)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !4056, file: !4052, line: 17, baseType: !7, size: 32, offset: 128)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4056, file: !4052, line: 18, baseType: !7, size: 32, offset: 160)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4056, file: !4052, line: 19, baseType: !7, size: 32, offset: 192)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4056, file: !4052, line: 20, baseType: !825, size: 8, offset: 224)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4056, file: !4052, line: 22, baseType: !4070, align: 64, offset: 256)
!4070 = !DICompositeType(tag: DW_TAG_array_type, baseType: !398, elements: !703)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4051, file: !4052, line: 37, baseType: !2350, size: 256, offset: 64)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4051, file: !4052, line: 38, baseType: !625, size: 256, offset: 320)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !4051, file: !4052, line: 39, baseType: !233, size: 32, offset: 576)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "sentinel", scope: !4051, file: !4052, line: 40, baseType: !4056, size: 256, offset: 640)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4051, file: !4052, line: 41, baseType: !4076, size: 64, offset: 896)
!4076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !246, line: 56, size: 64, elements: !4077)
!4077 = !{!4078}
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4076, file: !246, line: 57, baseType: !249, size: 64)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "mem_used", scope: !4051, file: !4052, line: 42, baseType: !233, size: 32, offset: 960)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "mem_limit", scope: !4051, file: !4052, line: 43, baseType: !109, size: 32, offset: 992)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !4051, file: !4052, line: 44, baseType: !4055, size: 64, offset: 1024)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !4047, file: !4048, line: 103, baseType: !3552, size: 64, offset: 1088)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "itty", scope: !4047, file: !4048, line: 104, baseType: !3552, size: 64, offset: 1152)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4047, file: !4048, line: 105, baseType: !4085, size: 64, offset: 1216)
!4085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4086, size: 64)
!4086 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4087)
!4087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port_operations", file: !4048, line: 33, size: 320, elements: !4088)
!4088 = !{!4089, !4093, !4097, !4101, !4105}
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "carrier_raised", scope: !4087, file: !4048, line: 34, baseType: !4090, size: 64)
!4090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4091, size: 64)
!4091 = !DISubroutineType(types: !4092)
!4092 = !{!825, !4046}
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "dtr_rts", scope: !4087, file: !4048, line: 35, baseType: !4094, size: 64, offset: 64)
!4094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4095, size: 64)
!4095 = !DISubroutineType(types: !4096)
!4096 = !{null, !4046, !825}
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4087, file: !4048, line: 36, baseType: !4098, size: 64, offset: 128)
!4098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4099, size: 64)
!4099 = !DISubroutineType(types: !4100)
!4100 = !{null, !4046}
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4087, file: !4048, line: 37, baseType: !4102, size: 64, offset: 192)
!4102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4103, size: 64)
!4103 = !DISubroutineType(types: !4104)
!4104 = !{!109, !4046, !3552}
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "destruct", scope: !4087, file: !4048, line: 38, baseType: !4098, size: 64, offset: 256)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "client_ops", scope: !4047, file: !4048, line: 106, baseType: !4107, size: 64, offset: 1280)
!4107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4108, size: 64)
!4108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4109)
!4109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port_client_operations", file: !4048, line: 41, size: 192, elements: !4110)
!4110 = !{!4111, !4117, !4121}
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf", scope: !4109, file: !4048, line: 42, baseType: !4112, size: 64)
!4112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4113, size: 64)
!4113 = !DISubroutineType(types: !4114)
!4114 = !{!1140, !4046, !4115, !4115, !1140}
!4115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4116, size: 64)
!4116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !398)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead_buf", scope: !4109, file: !4048, line: 44, baseType: !4118, size: 64, offset: 64)
!4118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4119, size: 64)
!4119 = !DISubroutineType(types: !4120)
!4120 = !{null, !4046, !4115, !4115, !1140}
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "write_wakeup", scope: !4109, file: !4048, line: 46, baseType: !4098, size: 64, offset: 128)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4047, file: !4048, line: 107, baseType: !579, size: 32, offset: 1344)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "blocked_open", scope: !4047, file: !4048, line: 108, baseType: !109, size: 32, offset: 1376)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4047, file: !4048, line: 109, baseType: !109, size: 32, offset: 1408)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "open_wait", scope: !4047, file: !4048, line: 110, baseType: !688, size: 192, offset: 1472)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "delta_msr_wait", scope: !4047, file: !4048, line: 111, baseType: !688, size: 192, offset: 1664)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4047, file: !4048, line: 112, baseType: !187, size: 64, offset: 1856)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "iflags", scope: !4047, file: !4048, line: 113, baseType: !187, size: 64, offset: 1920)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "console", scope: !4047, file: !4048, line: 114, baseType: !161, size: 1, offset: 1984, flags: DIFlagBitField, extraData: i64 1984)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4047, file: !4048, line: 115, baseType: !625, size: 256, offset: 2048)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "buf_mutex", scope: !4047, file: !4048, line: 116, baseType: !625, size: 256, offset: 2304)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "xmit_buf", scope: !4047, file: !4048, line: 117, baseType: !4133, size: 64, offset: 2560)
!4133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "xmit_fifo", scope: !4047, file: !4048, line: 118, baseType: !4135, size: 192, offset: 2624)
!4135 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4047, file: !4048, line: 118, size: 192, elements: !4136)
!4136 = !{!4137, !4158}
!4137 = !DIDerivedType(tag: DW_TAG_member, scope: !4135, file: !4048, line: 118, baseType: !4138, size: 192)
!4138 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4135, file: !4048, line: 118, size: 192, elements: !4139)
!4139 = !{!4140, !4149, !4150, !4151, !4156, !4157}
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "kfifo", scope: !4138, file: !4048, line: 118, baseType: !4141, size: 192)
!4141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kfifo", file: !4142, line: 44, size: 192, elements: !4143)
!4142 = !DIFile(filename: "./include/linux/kfifo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "686bd9b9dd318af094019d7cea015274")
!4143 = !{!4144, !4145, !4146, !4147, !4148}
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !4141, file: !4142, line: 45, baseType: !7, size: 32)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !4141, file: !4142, line: 46, baseType: !7, size: 32, offset: 32)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !4141, file: !4142, line: 47, baseType: !7, size: 32, offset: 64)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "esize", scope: !4141, file: !4142, line: 48, baseType: !7, size: 32, offset: 96)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4141, file: !4142, line: 49, baseType: !147, size: 64, offset: 128)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4138, file: !4048, line: 118, baseType: !4133, size: 64)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "const_type", scope: !4138, file: !4048, line: 118, baseType: !981, size: 64)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "rectype", scope: !4138, file: !4048, line: 118, baseType: !4152, size: 64)
!4152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4153, size: 64)
!4153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, elements: !4154)
!4154 = !{!4155}
!4155 = !DISubrange(count: 0)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !4138, file: !4048, line: 118, baseType: !4133, size: 64)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_const", scope: !4138, file: !4048, line: 118, baseType: !981, size: 64)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !4135, file: !4048, line: 118, baseType: !4159, offset: 192)
!4159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, elements: !4154)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "close_delay", scope: !4047, file: !4048, line: 119, baseType: !7, size: 32, offset: 2816)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "closing_wait", scope: !4047, file: !4048, line: 120, baseType: !7, size: 32, offset: 2848)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "drain_delay", scope: !4047, file: !4048, line: 121, baseType: !109, size: 32, offset: 2880)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !4047, file: !4048, line: 122, baseType: !2086, size: 32, offset: 2912)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !4047, file: !4048, line: 123, baseType: !147, size: 64, offset: 2944)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "termios", scope: !4011, file: !4012, line: 463, baseType: !4166, size: 64, offset: 1152)
!4166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4167, size: 64)
!4167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4027, size: 64)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "driver_state", scope: !4011, file: !4012, line: 464, baseType: !147, size: 64, offset: 1216)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4011, file: !4012, line: 470, baseType: !4170, size: 64, offset: 1280)
!4170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4171, size: 64)
!4171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4172)
!4172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_operations", file: !4012, line: 357, size: 2176, elements: !4173)
!4173 = !{!4174, !4178, !4182, !4186, !4190, !4194, !4198, !4199, !4203, !4207, !4208, !4212, !4213, !4217, !4221, !4227, !4228, !4229, !4230, !4231, !4232, !4236, !4237, !4238, !4239, !4243, !4247, !4251, !4255, !4266, !4272, !4278, !4279, !4283}
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !4172, file: !4012, line: 358, baseType: !4175, size: 64)
!4175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4176, size: 64)
!4176 = !DISubroutineType(types: !4177)
!4177 = !{!3552, !4010, !597, !109}
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "install", scope: !4172, file: !4012, line: 360, baseType: !4179, size: 64, offset: 64)
!4179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4180, size: 64)
!4180 = !DISubroutineType(types: !4181)
!4181 = !{!109, !4010, !3552}
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4172, file: !4012, line: 361, baseType: !4183, size: 64, offset: 128)
!4183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4184, size: 64)
!4184 = !DISubroutineType(types: !4185)
!4185 = !{null, !4010, !3552}
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4172, file: !4012, line: 362, baseType: !4187, size: 64, offset: 192)
!4187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4188, size: 64)
!4188 = !DISubroutineType(types: !4189)
!4189 = !{!109, !3552, !597}
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !4172, file: !4012, line: 363, baseType: !4191, size: 64, offset: 256)
!4191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4192, size: 64)
!4192 = !DISubroutineType(types: !4193)
!4193 = !{null, !3552, !597}
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4172, file: !4012, line: 364, baseType: !4195, size: 64, offset: 320)
!4195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4196, size: 64)
!4196 = !DISubroutineType(types: !4197)
!4197 = !{null, !3552}
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !4172, file: !4012, line: 365, baseType: !4195, size: 64, offset: 384)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4172, file: !4012, line: 366, baseType: !4200, size: 64, offset: 448)
!4200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4201, size: 64)
!4201 = !DISubroutineType(types: !4202)
!4202 = !{!1137, !3552, !4115, !1140}
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "put_char", scope: !4172, file: !4012, line: 367, baseType: !4204, size: 64, offset: 512)
!4204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4205, size: 64)
!4205 = !DISubroutineType(types: !4206)
!4206 = !{!109, !3552, !398}
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "flush_chars", scope: !4172, file: !4012, line: 368, baseType: !4195, size: 64, offset: 576)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "write_room", scope: !4172, file: !4012, line: 369, baseType: !4209, size: 64, offset: 640)
!4209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4210, size: 64)
!4210 = !DISubroutineType(types: !4211)
!4211 = !{!7, !3552}
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "chars_in_buffer", scope: !4172, file: !4012, line: 370, baseType: !4209, size: 64, offset: 704)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !4172, file: !4012, line: 371, baseType: !4214, size: 64, offset: 768)
!4214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4215, size: 64)
!4215 = !DISubroutineType(types: !4216)
!4216 = !{!109, !3552, !7, !187}
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !4172, file: !4012, line: 373, baseType: !4218, size: 64, offset: 832)
!4218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4219, size: 64)
!4219 = !DISubroutineType(types: !4220)
!4220 = !{!148, !3552, !7, !187}
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "set_termios", scope: !4172, file: !4012, line: 375, baseType: !4222, size: 64, offset: 896)
!4222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4223, size: 64)
!4223 = !DISubroutineType(types: !4224)
!4224 = !{null, !3552, !4225}
!4225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4226, size: 64)
!4226 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4027)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "throttle", scope: !4172, file: !4012, line: 376, baseType: !4195, size: 64, offset: 960)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "unthrottle", scope: !4172, file: !4012, line: 377, baseType: !4195, size: 64, offset: 1024)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !4172, file: !4012, line: 378, baseType: !4195, size: 64, offset: 1088)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4172, file: !4012, line: 379, baseType: !4195, size: 64, offset: 1152)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "hangup", scope: !4172, file: !4012, line: 380, baseType: !4195, size: 64, offset: 1216)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "break_ctl", scope: !4172, file: !4012, line: 381, baseType: !4233, size: 64, offset: 1280)
!4233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4234, size: 64)
!4234 = !DISubroutineType(types: !4235)
!4235 = !{!109, !3552, !109}
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "flush_buffer", scope: !4172, file: !4012, line: 382, baseType: !4195, size: 64, offset: 1344)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "ldisc_ok", scope: !4172, file: !4012, line: 383, baseType: !4233, size: 64, offset: 1408)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "set_ldisc", scope: !4172, file: !4012, line: 384, baseType: !4195, size: 64, offset: 1472)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "wait_until_sent", scope: !4172, file: !4012, line: 385, baseType: !4240, size: 64, offset: 1536)
!4240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4241, size: 64)
!4241 = !DISubroutineType(types: !4242)
!4242 = !{null, !3552, !109}
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "send_xchar", scope: !4172, file: !4012, line: 386, baseType: !4244, size: 64, offset: 1600)
!4244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4245, size: 64)
!4245 = !DISubroutineType(types: !4246)
!4246 = !{null, !3552, !193}
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "tiocmget", scope: !4172, file: !4012, line: 387, baseType: !4248, size: 64, offset: 1664)
!4248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4249, size: 64)
!4249 = !DISubroutineType(types: !4250)
!4250 = !{!109, !3552}
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "tiocmset", scope: !4172, file: !4012, line: 388, baseType: !4252, size: 64, offset: 1728)
!4252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4253, size: 64)
!4253 = !DISubroutineType(types: !4254)
!4254 = !{!109, !3552, !7, !7}
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "resize", scope: !4172, file: !4012, line: 390, baseType: !4256, size: 64, offset: 1792)
!4256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4257, size: 64)
!4257 = !DISubroutineType(types: !4258)
!4258 = !{!109, !3552, !4259}
!4259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4260, size: 64)
!4260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "winsize", file: !198, line: 15, size: 64, elements: !4261)
!4261 = !{!4262, !4263, !4264, !4265}
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "ws_row", scope: !4260, file: !198, line: 16, baseType: !201, size: 16)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "ws_col", scope: !4260, file: !198, line: 17, baseType: !201, size: 16, offset: 16)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "ws_xpixel", scope: !4260, file: !198, line: 18, baseType: !201, size: 16, offset: 32)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "ws_ypixel", scope: !4260, file: !198, line: 19, baseType: !201, size: 16, offset: 48)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "get_icount", scope: !4172, file: !4012, line: 391, baseType: !4267, size: 64, offset: 1856)
!4267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4268, size: 64)
!4268 = !DISubroutineType(types: !4269)
!4269 = !{!109, !3552, !4270}
!4270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4271, size: 64)
!4271 = !DICompositeType(tag: DW_TAG_structure_type, name: "serial_icounter_struct", file: !4012, line: 16, flags: DIFlagFwdDecl)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "get_serial", scope: !4172, file: !4012, line: 393, baseType: !4273, size: 64, offset: 1920)
!4273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4274, size: 64)
!4274 = !DISubroutineType(types: !4275)
!4275 = !{!109, !3552, !4276}
!4276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4277, size: 64)
!4277 = !DICompositeType(tag: DW_TAG_structure_type, name: "serial_struct", file: !4012, line: 17, flags: DIFlagFwdDecl)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "set_serial", scope: !4172, file: !4012, line: 394, baseType: !4273, size: 64, offset: 1984)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !4172, file: !4012, line: 395, baseType: !4280, size: 64, offset: 2048)
!4280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4281, size: 64)
!4281 = !DISubroutineType(types: !4282)
!4282 = !{null, !3552, !1996}
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "proc_show", scope: !4172, file: !4012, line: 401, baseType: !2027, size: 64, offset: 2112)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "tty_drivers", scope: !4011, file: !4012, line: 471, baseType: !288, size: 128, offset: 1344)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3553, file: !3554, line: 198, baseType: !4046, size: 64, offset: 192)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3553, file: !3554, line: 199, baseType: !4170, size: 64, offset: 256)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "ldisc", scope: !3553, file: !3554, line: 201, baseType: !4288, size: 64, offset: 320)
!4288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4289, size: 64)
!4289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_ldisc", file: !4290, line: 269, size: 128, elements: !4291)
!4290 = !DIFile(filename: "./include/linux/tty_ldisc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1510e65bb17193581d5a2fc2c531d25e")
!4291 = !{!4292, !4333}
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4289, file: !4290, line: 270, baseType: !4293, size: 64)
!4293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4294, size: 64)
!4294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_ldisc_ops", file: !4290, line: 231, size: 1152, elements: !4295)
!4295 = !{!4296, !4297, !4298, !4299, !4300, !4301, !4306, !4310, !4311, !4312, !4313, !4317, !4318, !4322, !4323, !4327, !4331, !4332}
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4294, file: !4290, line: 232, baseType: !838, size: 64)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !4294, file: !4290, line: 233, baseType: !109, size: 32, offset: 64)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4294, file: !4290, line: 238, baseType: !4248, size: 64, offset: 128)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !4294, file: !4290, line: 239, baseType: !4195, size: 64, offset: 192)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "flush_buffer", scope: !4294, file: !4290, line: 240, baseType: !4195, size: 64, offset: 256)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4294, file: !4290, line: 241, baseType: !4302, size: 64, offset: 320)
!4302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4303, size: 64)
!4303 = !DISubroutineType(types: !4304)
!4304 = !{!1137, !3552, !597, !4305, !1140, !1753, !187}
!4305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4294, file: !4290, line: 243, baseType: !4307, size: 64, offset: 384)
!4307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4308, size: 64)
!4308 = !DISubroutineType(types: !4309)
!4309 = !{!1137, !3552, !597, !4115, !1140}
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !4294, file: !4290, line: 245, baseType: !4214, size: 64, offset: 448)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !4294, file: !4290, line: 247, baseType: !4214, size: 64, offset: 512)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "set_termios", scope: !4294, file: !4290, line: 249, baseType: !4222, size: 64, offset: 576)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4294, file: !4290, line: 250, baseType: !4314, size: 64, offset: 640)
!4314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4315, size: 64)
!4315 = !DISubroutineType(types: !4316)
!4316 = !{!2064, !3552, !597, !2066}
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "hangup", scope: !4294, file: !4290, line: 252, baseType: !4195, size: 64, offset: 704)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf", scope: !4294, file: !4290, line: 257, baseType: !4319, size: 64, offset: 768)
!4319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4320, size: 64)
!4320 = !DISubroutineType(types: !4321)
!4321 = !{null, !3552, !4115, !4115, !1140}
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "write_wakeup", scope: !4294, file: !4290, line: 259, baseType: !4195, size: 64, offset: 832)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "dcd_change", scope: !4294, file: !4290, line: 260, baseType: !4324, size: 64, offset: 896)
!4324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4325, size: 64)
!4325 = !DISubroutineType(types: !4326)
!4326 = !{null, !3552, !825}
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf2", scope: !4294, file: !4290, line: 261, baseType: !4328, size: 64, offset: 960)
!4328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4329, size: 64)
!4329 = !DISubroutineType(types: !4330)
!4330 = !{!1140, !3552, !4115, !4115, !1140}
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead_buf", scope: !4294, file: !4290, line: 263, baseType: !4319, size: 64, offset: 1024)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4294, file: !4290, line: 266, baseType: !1229, size: 64, offset: 1088)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !4289, file: !4290, line: 271, baseType: !3552, size: 64, offset: 64)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "ldisc_sem", scope: !3553, file: !3554, line: 202, baseType: !4335, size: 384, offset: 384)
!4335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ld_semaphore", file: !4290, line: 17, size: 384, elements: !4336)
!4336 = !{!4337, !4338, !4339, !4340, !4341}
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4335, file: !4290, line: 18, baseType: !618, size: 64)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !4335, file: !4290, line: 19, baseType: !381, size: 32, offset: 64)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "wait_readers", scope: !4335, file: !4290, line: 20, baseType: !7, size: 32, offset: 96)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "read_wait", scope: !4335, file: !4290, line: 21, baseType: !288, size: 128, offset: 128)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "write_wait", scope: !4335, file: !4290, line: 22, baseType: !288, size: 128, offset: 256)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_lock", scope: !3553, file: !3554, line: 204, baseType: !625, size: 256, offset: 768)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mutex", scope: !3553, file: !3554, line: 205, baseType: !625, size: 256, offset: 1024)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_mutex", scope: !3553, file: !3554, line: 206, baseType: !625, size: 256, offset: 1280)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "termios_rwsem", scope: !3553, file: !3554, line: 207, baseType: !766, size: 320, offset: 1536)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "winsize_mutex", scope: !3553, file: !3554, line: 208, baseType: !625, size: 256, offset: 1856)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "termios", scope: !3553, file: !3554, line: 209, baseType: !4027, size: 352, offset: 2112)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "termios_locked", scope: !3553, file: !3554, line: 209, baseType: !4027, size: 352, offset: 2464)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3553, file: !3554, line: 210, baseType: !4350, size: 512, offset: 2816)
!4350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 512, elements: !1285)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3553, file: !3554, line: 211, baseType: !187, size: 64, offset: 3328)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3553, file: !3554, line: 212, baseType: !109, size: 32, offset: 3392)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "receive_room", scope: !3553, file: !3554, line: 213, baseType: !7, size: 32, offset: 3424)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "winsize", scope: !3553, file: !3554, line: 214, baseType: !4260, size: 64, offset: 3456)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "flow", scope: !3553, file: !3554, line: 221, baseType: !4356, size: 64, align: 64, offset: 3520)
!4356 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3553, file: !3554, line: 216, size: 64, align: 64, elements: !4357)
!4357 = !{!4358, !4359, !4360, !4361}
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4356, file: !3554, line: 217, baseType: !579, size: 32)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "stopped", scope: !4356, file: !3554, line: 218, baseType: !825, size: 8, offset: 32)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "tco_stopped", scope: !4356, file: !3554, line: 219, baseType: !825, size: 8, offset: 40)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !4356, file: !3554, line: 220, baseType: !4362, offset: 64)
!4362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, elements: !4154)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl", scope: !3553, file: !3554, line: 230, baseType: !4364, size: 192, align: 64, offset: 3584)
!4364 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3553, file: !3554, line: 223, size: 192, align: 64, elements: !4365)
!4365 = !{!4366, !4367, !4368, !4369, !4370, !4371}
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "pgrp", scope: !4364, file: !3554, line: 224, baseType: !667, size: 64)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "session", scope: !4364, file: !3554, line: 225, baseType: !667, size: 64, offset: 64)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4364, file: !3554, line: 226, baseType: !579, size: 32, offset: 128)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "pktstatus", scope: !4364, file: !3554, line: 227, baseType: !161, size: 8, offset: 160)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "packet", scope: !4364, file: !3554, line: 228, baseType: !825, size: 8, offset: 168)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !4364, file: !3554, line: 229, baseType: !4362, offset: 192)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "hw_stopped", scope: !3553, file: !3554, line: 232, baseType: !825, size: 8, offset: 3776)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "closing", scope: !3553, file: !3554, line: 233, baseType: !825, size: 8, offset: 3784)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "flow_change", scope: !3553, file: !3554, line: 234, baseType: !109, size: 32, offset: 3808)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3553, file: !3554, line: 236, baseType: !3552, size: 64, offset: 3840)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3553, file: !3554, line: 237, baseType: !4377, size: 64, offset: 3904)
!4377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4378, size: 64)
!4378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !14, line: 1083, size: 384, elements: !4379)
!4379 = !{!4380, !4381, !4382, !4383, !4384, !4385}
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !4378, file: !14, line: 1084, baseType: !644, size: 64)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !4378, file: !14, line: 1085, baseType: !109, size: 32, offset: 64)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !4378, file: !14, line: 1086, baseType: !109, size: 32, offset: 96)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !4378, file: !14, line: 1087, baseType: !4377, size: 64, offset: 128)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !4378, file: !14, line: 1088, baseType: !597, size: 64, offset: 192)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !4378, file: !14, line: 1089, baseType: !605, size: 128, align: 64, offset: 256)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "write_wait", scope: !3553, file: !3554, line: 238, baseType: !688, size: 192, offset: 3968)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "read_wait", scope: !3553, file: !3554, line: 239, baseType: !688, size: 192, offset: 4160)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "hangup_work", scope: !3553, file: !3554, line: 240, baseType: !2350, size: 256, offset: 4352)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "disc_data", scope: !3553, file: !3554, line: 241, baseType: !147, size: 64, offset: 4608)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3553, file: !3554, line: 242, baseType: !147, size: 64, offset: 4672)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "files_lock", scope: !3553, file: !3554, line: 243, baseType: !579, size: 32, offset: 4736)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "write_cnt", scope: !3553, file: !3554, line: 244, baseType: !109, size: 32, offset: 4768)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !3553, file: !3554, line: 245, baseType: !4133, size: 64, offset: 4800)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "tty_files", scope: !3553, file: !3554, line: 247, baseType: !288, size: 128, offset: 4864)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "SAK_work", scope: !3553, file: !3554, line: 250, baseType: !2350, size: 256, offset: 4992)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3487, file: !3488, line: 185, baseType: !4397, size: 64, offset: 3328)
!4397 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !431, line: 860, baseType: !4398)
!4398 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !431, line: 853, size: 64, elements: !4399)
!4399 = !{!4400, !4401}
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !4398, file: !431, line: 858, baseType: !955, size: 32)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4398, file: !431, line: 859, baseType: !579, size: 32, offset: 32)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3487, file: !3488, line: 186, baseType: !180, size: 64, offset: 3392)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3487, file: !3488, line: 186, baseType: !180, size: 64, offset: 3456)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3487, file: !3488, line: 186, baseType: !180, size: 64, offset: 3520)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3487, file: !3488, line: 186, baseType: !180, size: 64, offset: 3584)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3487, file: !3488, line: 187, baseType: !180, size: 64, offset: 3648)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3487, file: !3488, line: 188, baseType: !180, size: 64, offset: 3712)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3487, file: !3488, line: 189, baseType: !3423, size: 192, offset: 3776)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3487, file: !3488, line: 190, baseType: !187, size: 64, offset: 3968)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3487, file: !3488, line: 190, baseType: !187, size: 64, offset: 4032)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3487, file: !3488, line: 190, baseType: !187, size: 64, offset: 4096)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3487, file: !3488, line: 190, baseType: !187, size: 64, offset: 4160)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3487, file: !3488, line: 191, baseType: !187, size: 64, offset: 4224)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3487, file: !3488, line: 191, baseType: !187, size: 64, offset: 4288)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3487, file: !3488, line: 191, baseType: !187, size: 64, offset: 4352)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3487, file: !3488, line: 191, baseType: !187, size: 64, offset: 4416)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3487, file: !3488, line: 192, baseType: !187, size: 64, offset: 4480)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3487, file: !3488, line: 192, baseType: !187, size: 64, offset: 4544)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3487, file: !3488, line: 192, baseType: !187, size: 64, offset: 4608)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3487, file: !3488, line: 192, baseType: !187, size: 64, offset: 4672)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3487, file: !3488, line: 193, baseType: !187, size: 64, offset: 4736)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3487, file: !3488, line: 193, baseType: !187, size: 64, offset: 4800)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3487, file: !3488, line: 194, baseType: !4424, size: 448, offset: 4864)
!4424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !4425, line: 12, size: 448, elements: !4426)
!4425 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!4426 = !{!4427, !4428, !4429, !4430, !4431, !4432, !4433}
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !4424, file: !4425, line: 15, baseType: !180, size: 64)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !4424, file: !4425, line: 17, baseType: !180, size: 64, offset: 64)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !4424, file: !4425, line: 19, baseType: !180, size: 64, offset: 128)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !4424, file: !4425, line: 21, baseType: !180, size: 64, offset: 192)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !4424, file: !4425, line: 29, baseType: !180, size: 64, offset: 256)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !4424, file: !4425, line: 35, baseType: !180, size: 64, offset: 320)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !4424, file: !4425, line: 44, baseType: !180, size: 64, offset: 384)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3487, file: !3488, line: 202, baseType: !184, size: 64, offset: 5312)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3487, file: !3488, line: 213, baseType: !4436, size: 2048, offset: 5376)
!4436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4437, size: 2048, elements: !2845)
!4437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !4438, line: 43, size: 128, elements: !4439)
!4438 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!4439 = !{!4440, !4441}
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !4437, file: !4438, line: 44, baseType: !1142, size: 64)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !4437, file: !4438, line: 45, baseType: !1142, size: 64, offset: 64)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3487, file: !3488, line: 216, baseType: !4443, size: 448, offset: 7424)
!4443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3488, line: 30, size: 448, elements: !4444)
!4444 = !{!4445, !4446, !4447, !4448, !4449, !4450, !4451}
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !4443, file: !3488, line: 31, baseType: !109, size: 32)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !4443, file: !3488, line: 32, baseType: !148, size: 64, offset: 64)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !4443, file: !3488, line: 33, baseType: !187, size: 64, offset: 128)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !4443, file: !3488, line: 34, baseType: !180, size: 64, offset: 192)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !4443, file: !3488, line: 34, baseType: !180, size: 64, offset: 256)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !4443, file: !3488, line: 35, baseType: !187, size: 64, offset: 320)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !4443, file: !3488, line: 35, baseType: !187, size: 64, offset: 384)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3487, file: !3488, line: 219, baseType: !4453, size: 64, offset: 7872)
!4453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4454, size: 64)
!4454 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3488, line: 219, flags: DIFlagFwdDecl)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3487, file: !3488, line: 222, baseType: !7, size: 32, offset: 7936)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3487, file: !3488, line: 223, baseType: !4457, size: 64, offset: 8000)
!4457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4458, size: 64)
!4458 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3488, line: 223, flags: DIFlagFwdDecl)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3487, file: !3488, line: 230, baseType: !825, size: 8, offset: 8064)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3487, file: !3488, line: 231, baseType: !794, size: 16, offset: 8080)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3487, file: !3488, line: 232, baseType: !794, size: 16, offset: 8096)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3487, file: !3488, line: 234, baseType: !561, size: 64, offset: 8128)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3487, file: !3488, line: 237, baseType: !625, size: 256, offset: 8192)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3487, file: !3488, line: 243, baseType: !766, size: 320, offset: 8448)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !212, file: !213, line: 1111, baseType: !4466, size: 64, offset: 15424)
!4466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4467, size: 64)
!4467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3488, line: 20, size: 16640, elements: !4468)
!4468 = !{!4469, !4470, !4471, !4472}
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !4467, file: !3488, line: 21, baseType: !579, size: 32)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4467, file: !3488, line: 22, baseType: !228, size: 32, offset: 32)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !4467, file: !3488, line: 23, baseType: !688, size: 192, offset: 64)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !4467, file: !3488, line: 24, baseType: !4473, size: 16384, offset: 256)
!4473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4474, size: 16384, elements: !1285)
!4474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !916, line: 51, size: 256, elements: !4475)
!4475 = !{!4476}
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !4474, file: !916, line: 52, baseType: !4477, size: 256)
!4477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !916, line: 37, size: 256, elements: !4478)
!4478 = !{!4479, !4486, !4487, !4491}
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !4477, file: !916, line: 39, baseType: !4480, size: 64)
!4480 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !4481, line: 83, baseType: !4482)
!4481 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!4482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4483, size: 64)
!4483 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !4481, line: 82, baseType: !4484)
!4484 = !DISubroutineType(types: !4485)
!4485 = !{null, !109}
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !4477, file: !916, line: 40, baseType: !187, size: 64, offset: 64)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !4477, file: !916, line: 46, baseType: !4488, size: 64, offset: 128)
!4488 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !4481, line: 86, baseType: !4489)
!4489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4490, size: 64)
!4490 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !4481, line: 85, baseType: !2453)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !4477, file: !916, line: 48, baseType: !3502, size: 64, offset: 192)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !212, file: !213, line: 1112, baseType: !3502, size: 64, offset: 15488)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !212, file: !213, line: 1113, baseType: !3502, size: 64, offset: 15552)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !212, file: !213, line: 1115, baseType: !3502, size: 64, offset: 15616)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !212, file: !213, line: 1116, baseType: !3498, size: 192, offset: 15680)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !212, file: !213, line: 1117, baseType: !187, size: 64, offset: 15872)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !212, file: !213, line: 1118, baseType: !1140, size: 64, offset: 15936)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !212, file: !213, line: 1119, baseType: !7, size: 32, offset: 16000)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !212, file: !213, line: 1121, baseType: !608, size: 64, offset: 16064)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !212, file: !213, line: 1125, baseType: !4501, size: 64, offset: 16128)
!4501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4502, size: 64)
!4502 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !213, line: 43, flags: DIFlagFwdDecl)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !212, file: !213, line: 1127, baseType: !707, size: 32, offset: 16192)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !212, file: !213, line: 1128, baseType: !7, size: 32, offset: 16224)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !212, file: !213, line: 1130, baseType: !4506, size: 128, offset: 16256)
!4506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !4507, line: 37, size: 128, elements: !4508)
!4507 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!4508 = !{!4509, !4510, !4511}
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4506, file: !4507, line: 38, baseType: !109, size: 32)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !4506, file: !4507, line: 39, baseType: !233, size: 32, offset: 32)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4506, file: !4507, line: 40, baseType: !4512, size: 64, offset: 64)
!4512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4513, size: 64)
!4513 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !4507, line: 24, flags: DIFlagFwdDecl)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !212, file: !213, line: 1131, baseType: !4515, size: 256, offset: 16384)
!4515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !4516, line: 12, size: 256, elements: !4517)
!4516 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!4517 = !{!4518, !4519, !4520, !4521}
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !4515, file: !4516, line: 13, baseType: !838, size: 64)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4515, file: !4516, line: 14, baseType: !187, size: 64, offset: 64)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4515, file: !4516, line: 15, baseType: !187, size: 64, offset: 128)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !4515, file: !4516, line: 16, baseType: !825, size: 8, offset: 192)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !212, file: !213, line: 1134, baseType: !180, size: 64, offset: 16640)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !212, file: !213, line: 1135, baseType: !180, size: 64, offset: 16704)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !212, file: !213, line: 1138, baseType: !579, size: 32, offset: 16768)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !212, file: !213, line: 1141, baseType: !381, size: 32, offset: 16800)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !212, file: !213, line: 1143, baseType: !4527, size: 64, offset: 16832)
!4527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !213, line: 735, size: 64, elements: !4528)
!4528 = !{!4529}
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4527, file: !213, line: 736, baseType: !4530, size: 64)
!4530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4527, size: 64)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !212, file: !213, line: 1147, baseType: !444, size: 128, offset: 16896)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !212, file: !213, line: 1149, baseType: !211, size: 64, offset: 17024)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !212, file: !213, line: 1151, baseType: !4534, size: 64, offset: 17088)
!4534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4535, size: 64)
!4535 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !213, line: 1151, flags: DIFlagFwdDecl)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !212, file: !213, line: 1188, baseType: !147, size: 64, offset: 17152)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !212, file: !213, line: 1191, baseType: !4538, size: 64, offset: 17216)
!4538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4539, size: 64)
!4539 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !213, line: 44, flags: DIFlagFwdDecl)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !212, file: !213, line: 1194, baseType: !4541, size: 64, offset: 17280)
!4541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4542, size: 64)
!4542 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !213, line: 45, flags: DIFlagFwdDecl)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !212, file: !213, line: 1197, baseType: !4544, size: 64, offset: 17344)
!4544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4545, size: 64)
!4545 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !213, line: 61, flags: DIFlagFwdDecl)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !212, file: !213, line: 1199, baseType: !4547, size: 64, offset: 17408)
!4547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4548, size: 64)
!4548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !4549, line: 99, size: 128, elements: !4550)
!4549 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!4550 = !{!4551, !4552, !4553}
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4548, file: !4549, line: 100, baseType: !618, size: 64)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !4548, file: !4549, line: 101, baseType: !233, size: 32, offset: 64)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !4548, file: !4549, line: 103, baseType: !201, size: 16, offset: 96)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !212, file: !213, line: 1202, baseType: !4555, size: 64, offset: 17472)
!4555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4556, size: 64)
!4556 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !213, line: 48, flags: DIFlagFwdDecl)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !212, file: !213, line: 1205, baseType: !187, size: 64, offset: 17536)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !212, file: !213, line: 1206, baseType: !4559, size: 64, offset: 17600)
!4559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4560, size: 64)
!4560 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !916, line: 14, baseType: !4561)
!4561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !916, line: 12, size: 384, elements: !4562)
!4562 = !{!4563}
!4563 = !DIDerivedType(tag: DW_TAG_member, scope: !4561, file: !916, line: 13, baseType: !4564, size: 384)
!4564 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4561, file: !916, line: 13, size: 384, elements: !4565)
!4565 = !{!4566, !4567, !4568, !4569}
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !4564, file: !916, line: 13, baseType: !109, size: 32)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !4564, file: !916, line: 13, baseType: !109, size: 32, offset: 32)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !4564, file: !916, line: 13, baseType: !109, size: 32, offset: 64)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !4564, file: !916, line: 13, baseType: !4570, size: 256, offset: 128)
!4570 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !4571, line: 37, size: 256, elements: !4572)
!4571 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!4572 = !{!4573, !4578, !4591, !4597, !4606, !4633, !4638}
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !4570, file: !4571, line: 42, baseType: !4574, size: 64)
!4574 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4570, file: !4571, line: 39, size: 64, elements: !4575)
!4575 = !{!4576, !4577}
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4574, file: !4571, line: 40, baseType: !3400, size: 32)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4574, file: !4571, line: 41, baseType: !713, size: 32, offset: 32)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !4570, file: !4571, line: 50, baseType: !4579, size: 192)
!4579 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4570, file: !4571, line: 45, size: 192, elements: !4580)
!4580 = !{!4581, !4583, !4584, !4590}
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !4579, file: !4571, line: 46, baseType: !4582, size: 32)
!4582 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !428, line: 95, baseType: !109)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !4579, file: !4571, line: 47, baseType: !109, size: 32, offset: 32)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4579, file: !4571, line: 48, baseType: !4585, size: 64, offset: 64)
!4585 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !4571, line: 11, baseType: !4586)
!4586 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !4571, line: 8, size: 64, elements: !4587)
!4587 = !{!4588, !4589}
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !4586, file: !4571, line: 9, baseType: !109, size: 32)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !4586, file: !4571, line: 10, baseType: !147, size: 64)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !4579, file: !4571, line: 49, baseType: !109, size: 32, offset: 128)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !4570, file: !4571, line: 57, baseType: !4592, size: 128)
!4592 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4570, file: !4571, line: 53, size: 128, elements: !4593)
!4593 = !{!4594, !4595, !4596}
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4592, file: !4571, line: 54, baseType: !3400, size: 32)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4592, file: !4571, line: 55, baseType: !713, size: 32, offset: 32)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4592, file: !4571, line: 56, baseType: !4585, size: 64, offset: 64)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !4570, file: !4571, line: 66, baseType: !4598, size: 256)
!4598 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4570, file: !4571, line: 60, size: 256, elements: !4599)
!4599 = !{!4600, !4601, !4602, !4603, !4605}
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4598, file: !4571, line: 61, baseType: !3400, size: 32)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4598, file: !4571, line: 62, baseType: !713, size: 32, offset: 32)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !4598, file: !4571, line: 63, baseType: !109, size: 32, offset: 64)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !4598, file: !4571, line: 64, baseType: !4604, size: 64, offset: 128)
!4604 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !428, line: 94, baseType: !1139)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !4598, file: !4571, line: 65, baseType: !4604, size: 64, offset: 192)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !4570, file: !4571, line: 105, baseType: !4607, size: 256)
!4607 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4570, file: !4571, line: 69, size: 256, elements: !4608)
!4608 = !{!4609, !4610}
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !4607, file: !4571, line: 70, baseType: !147, size: 64)
!4610 = !DIDerivedType(tag: DW_TAG_member, scope: !4607, file: !4571, line: 79, baseType: !4611, size: 192, offset: 64)
!4611 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4607, file: !4571, line: 79, size: 192, elements: !4612)
!4612 = !{!4613, !4614, !4615, !4622, !4627}
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !4611, file: !4571, line: 81, baseType: !109, size: 32)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !4611, file: !4571, line: 86, baseType: !794, size: 16)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !4611, file: !4571, line: 92, baseType: !4616, size: 192)
!4616 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4611, file: !4571, line: 88, size: 192, elements: !4617)
!4617 = !{!4618, !4620, !4621}
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !4616, file: !4571, line: 89, baseType: !4619, size: 64)
!4619 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 64, elements: !208)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !4616, file: !4571, line: 90, baseType: !147, size: 64, offset: 64)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !4616, file: !4571, line: 91, baseType: !147, size: 64, offset: 128)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !4611, file: !4571, line: 97, baseType: !4623, size: 96)
!4623 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4611, file: !4571, line: 94, size: 96, elements: !4624)
!4624 = !{!4625, !4626}
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !4623, file: !4571, line: 95, baseType: !4619, size: 64)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !4623, file: !4571, line: 96, baseType: !223, size: 32, offset: 64)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !4611, file: !4571, line: 103, baseType: !4628, size: 128)
!4628 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4611, file: !4571, line: 99, size: 128, elements: !4629)
!4629 = !{!4630, !4631, !4632}
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !4628, file: !4571, line: 100, baseType: !187, size: 64)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !4628, file: !4571, line: 101, baseType: !223, size: 32, offset: 64)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4628, file: !4571, line: 102, baseType: !223, size: 32, offset: 96)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !4570, file: !4571, line: 111, baseType: !4634, size: 128)
!4634 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4570, file: !4571, line: 108, size: 128, elements: !4635)
!4635 = !{!4636, !4637}
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !4634, file: !4571, line: 109, baseType: !148, size: 64)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !4634, file: !4571, line: 110, baseType: !109, size: 32, offset: 64)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !4570, file: !4571, line: 118, baseType: !4639, size: 128)
!4639 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4570, file: !4571, line: 114, size: 128, elements: !4640)
!4640 = !{!4641, !4642, !4643}
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !4639, file: !4571, line: 115, baseType: !147, size: 64)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !4639, file: !4571, line: 116, baseType: !109, size: 32, offset: 64)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !4639, file: !4571, line: 117, baseType: !7, size: 32, offset: 96)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !212, file: !213, line: 1208, baseType: !4424, size: 448, offset: 17664)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !212, file: !213, line: 1215, baseType: !180, size: 64, offset: 18112)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !212, file: !213, line: 1217, baseType: !180, size: 64, offset: 18176)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !212, file: !213, line: 1219, baseType: !180, size: 64, offset: 18240)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !212, file: !213, line: 1223, baseType: !4649, size: 64, offset: 18304)
!4649 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !4650, line: 99, baseType: !4651)
!4650 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!4651 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4650, line: 99, size: 64, elements: !4652)
!4652 = !{!4653}
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !4651, file: !4650, line: 99, baseType: !512, size: 64)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !212, file: !213, line: 1225, baseType: !955, size: 32, offset: 18368)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !212, file: !213, line: 1226, baseType: !109, size: 32, offset: 18400)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !212, file: !213, line: 1227, baseType: !109, size: 32, offset: 18432)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !212, file: !213, line: 1231, baseType: !4658, size: 64, offset: 18496)
!4658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4659, size: 64)
!4659 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !213, line: 1231, flags: DIFlagFwdDecl)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !212, file: !213, line: 1233, baseType: !288, size: 128, offset: 18560)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !212, file: !213, line: 1240, baseType: !4662, size: 64, offset: 18688)
!4662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4663, size: 64)
!4663 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !213, line: 62, flags: DIFlagFwdDecl)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !212, file: !213, line: 1242, baseType: !4665, size: 64, offset: 18752)
!4665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4666, size: 64)
!4666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !4667, line: 392, size: 96, elements: !4668)
!4667 = !DIFile(filename: "./include/linux/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4fb3431a0ca9e11a8015b961c002b640")
!4668 = !{!4669, !4675, !4677}
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4666, file: !4667, line: 393, baseType: !4670, size: 32)
!4670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list", file: !4667, line: 388, size: 32, elements: !4671)
!4671 = !{!4672}
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4670, file: !4667, line: 389, baseType: !4673, size: 32)
!4673 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_uptr_t", file: !4674, line: 46, baseType: !222)
!4674 = !DIFile(filename: "./include/asm-generic/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "789dd20e6944b4211a8be38fb9d0b245")
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "futex_offset", scope: !4666, file: !4667, line: 394, baseType: !4676, size: 32, offset: 32)
!4676 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_long_t", file: !4674, line: 42, baseType: !758)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "list_op_pending", scope: !4666, file: !4667, line: 395, baseType: !4673, size: 32, offset: 64)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !212, file: !213, line: 1244, baseType: !288, size: 128, offset: 18816)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !212, file: !213, line: 1245, baseType: !4680, size: 64, offset: 18944)
!4680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4681, size: 64)
!4681 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !213, line: 51, flags: DIFlagFwdDecl)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !212, file: !213, line: 1246, baseType: !625, size: 256, offset: 19008)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !212, file: !213, line: 1247, baseType: !7, size: 32, offset: 19264)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !212, file: !213, line: 1250, baseType: !4685, size: 64, offset: 19328)
!4685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4686, size: 64)
!4686 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !213, line: 57, flags: DIFlagFwdDecl)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !212, file: !213, line: 1251, baseType: !625, size: 256, offset: 19392)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !212, file: !213, line: 1252, baseType: !288, size: 128, offset: 19648)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !212, file: !213, line: 1259, baseType: !1578, size: 64, offset: 19776)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !212, file: !213, line: 1260, baseType: !794, size: 16, offset: 19840)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !212, file: !213, line: 1261, baseType: !794, size: 16, offset: 19856)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !212, file: !213, line: 1314, baseType: !4693, size: 64, offset: 19904)
!4693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4694, size: 64)
!4694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !4695, line: 62, size: 256, align: 256, elements: !4696)
!4695 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!4696 = !{!4697, !4698, !4699, !4700, !4701, !4702, !4703}
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !4694, file: !4695, line: 75, baseType: !223, size: 32)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !4694, file: !4695, line: 90, baseType: !223, size: 32, offset: 32)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !4694, file: !4695, line: 112, baseType: !182, size: 64, offset: 64)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4694, file: !4695, line: 132, baseType: !223, size: 32, offset: 128)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !4694, file: !4695, line: 140, baseType: !223, size: 32, offset: 160)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !4694, file: !4695, line: 149, baseType: !223, size: 32, offset: 192)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4694, file: !4695, line: 154, baseType: !4704, offset: 224)
!4704 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, elements: !703)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !212, file: !213, line: 1315, baseType: !222, size: 32, offset: 19968)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !212, file: !213, line: 1316, baseType: !222, size: 32, offset: 20000)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !212, file: !213, line: 1321, baseType: !187, size: 64, offset: 20032)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !212, file: !213, line: 1325, baseType: !109, size: 32, offset: 20096)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !212, file: !213, line: 1326, baseType: !109, size: 32, offset: 20128)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !212, file: !213, line: 1327, baseType: !109, size: 32, offset: 20160)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !212, file: !213, line: 1328, baseType: !109, size: 32, offset: 20192)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !212, file: !213, line: 1329, baseType: !605, size: 128, align: 64, offset: 20224)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !212, file: !213, line: 1332, baseType: !4714, size: 128, offset: 20352)
!4714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !4715, line: 51, size: 128, elements: !4716)
!4715 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!4716 = !{!4717, !4722, !4723}
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !4714, file: !4715, line: 60, baseType: !4718, size: 64)
!4718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !4719, line: 7, size: 64, elements: !4720)
!4719 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!4720 = !{!4721}
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !4718, file: !4719, line: 12, baseType: !509, size: 64)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !4714, file: !4715, line: 63, baseType: !825, size: 8, offset: 64)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !4714, file: !4715, line: 70, baseType: !825, size: 8, offset: 72)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !212, file: !213, line: 1335, baseType: !3083, size: 64, offset: 20480)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !212, file: !213, line: 1337, baseType: !4726, size: 128, offset: 20544)
!4726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !4715, line: 39, size: 128, elements: !4727)
!4727 = !{!4728, !4729, !4730}
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4726, file: !4715, line: 40, baseType: !1366, size: 64)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4726, file: !4715, line: 42, baseType: !223, size: 32, offset: 64)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4726, file: !4715, line: 43, baseType: !223, size: 32, offset: 96)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !212, file: !213, line: 1340, baseType: !4732, size: 64, offset: 20672)
!4732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4733, size: 64)
!4733 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !213, line: 69, flags: DIFlagFwdDecl)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !212, file: !213, line: 1351, baseType: !109, size: 32, offset: 20736)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !212, file: !213, line: 1352, baseType: !109, size: 32, offset: 20768)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !212, file: !213, line: 1354, baseType: !187, size: 64, offset: 20800)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !212, file: !213, line: 1364, baseType: !180, size: 64, offset: 20864)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !212, file: !213, line: 1365, baseType: !180, size: 64, offset: 20928)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !212, file: !213, line: 1412, baseType: !187, size: 64, offset: 20992)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !212, file: !213, line: 1453, baseType: !4741, size: 64, offset: 21056)
!4741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4742, size: 64)
!4742 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !213, line: 1453, flags: DIFlagFwdDecl)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !212, file: !213, line: 1457, baseType: !4744, size: 64, offset: 21120)
!4744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4745, size: 64)
!4745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !68, line: 61, size: 576, elements: !4746)
!4746 = !{!4747, !4748, !4767, !4770, !4771, !4804, !4814}
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4745, file: !68, line: 62, baseType: !67, size: 32)
!4748 = !DIDerivedType(tag: DW_TAG_member, scope: !4745, file: !68, line: 64, baseType: !4749, size: 192, offset: 64)
!4749 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4745, file: !68, line: 64, size: 192, elements: !4750)
!4750 = !{!4751, !4762}
!4751 = !DIDerivedType(tag: DW_TAG_member, scope: !4749, file: !68, line: 65, baseType: !4752, size: 192)
!4752 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4749, file: !68, line: 65, size: 192, elements: !4753)
!4753 = !{!4754, !4761}
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !4752, file: !68, line: 66, baseType: !4755, size: 128)
!4755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !4756, line: 50, size: 128, elements: !4757)
!4756 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!4757 = !{!4758, !4759, !4760}
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !4755, file: !4756, line: 52, baseType: !187, size: 64)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !4755, file: !4756, line: 54, baseType: !7, size: 32, offset: 64)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !4755, file: !4756, line: 55, baseType: !7, size: 32, offset: 96)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !4752, file: !68, line: 67, baseType: !187, size: 64, offset: 128)
!4762 = !DIDerivedType(tag: DW_TAG_member, scope: !4749, file: !68, line: 70, baseType: !4763, size: 192)
!4763 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4749, file: !68, line: 70, size: 192, elements: !4764)
!4764 = !{!4765, !4766}
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !4763, file: !68, line: 71, baseType: !605, size: 128, align: 64)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !4763, file: !68, line: 72, baseType: !187, size: 64, offset: 128)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !4745, file: !68, line: 76, baseType: !4768, size: 64, offset: 256)
!4768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4769, size: 64)
!4769 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !68, line: 76, flags: DIFlagFwdDecl)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !4745, file: !68, line: 77, baseType: !187, size: 64, offset: 320)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !4745, file: !68, line: 79, baseType: !4772, size: 64, offset: 384)
!4772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4773, size: 64)
!4773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !4756, line: 25, size: 256, elements: !4774)
!4774 = !{!4775, !4781, !4785}
!4775 = !DIDerivedType(tag: DW_TAG_member, scope: !4773, file: !4756, line: 26, baseType: !4776, size: 128)
!4776 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4773, file: !4756, line: 26, size: 128, elements: !4777)
!4777 = !{!4778, !4780}
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4776, file: !4756, line: 27, baseType: !4779, size: 128)
!4779 = !DICompositeType(tag: DW_TAG_array_type, baseType: !398, size: 128, elements: !2845)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !4776, file: !4756, line: 28, baseType: !4779, size: 128)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4773, file: !4756, line: 31, baseType: !4782, size: 64, offset: 128)
!4782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4783, size: 64)
!4783 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4784)
!4784 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !4756, line: 23, flags: DIFlagFwdDecl)
!4785 = !DIDerivedType(tag: DW_TAG_member, scope: !4773, file: !4756, line: 33, baseType: !4786, size: 64, offset: 192)
!4786 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4773, file: !4756, line: 33, size: 64, elements: !4787)
!4787 = !{!4788, !4794, !4799}
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !4786, file: !4756, line: 38, baseType: !4789, size: 64)
!4789 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4786, file: !4756, line: 34, size: 64, elements: !4790)
!4790 = !{!4791, !4792, !4793}
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !4789, file: !4756, line: 35, baseType: !758, size: 32)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4789, file: !4756, line: 36, baseType: !398, size: 8, offset: 32)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !4789, file: !4756, line: 37, baseType: !398, size: 8, offset: 40)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !4786, file: !4756, line: 42, baseType: !4795, size: 16)
!4795 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4786, file: !4756, line: 39, size: 16, elements: !4796)
!4796 = !{!4797, !4798}
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !4795, file: !4756, line: 40, baseType: !398, size: 8)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4795, file: !4756, line: 41, baseType: !398, size: 8, offset: 8)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !4786, file: !4756, line: 46, baseType: !4800, size: 16)
!4800 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4786, file: !4756, line: 43, size: 16, elements: !4801)
!4801 = !{!4802, !4803}
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !4800, file: !4756, line: 44, baseType: !398, size: 8)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4800, file: !4756, line: 45, baseType: !398, size: 8, offset: 8)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !4745, file: !68, line: 81, baseType: !4805, size: 64, offset: 448)
!4805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4806, size: 64)
!4806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !68, line: 85, size: 384, elements: !4807)
!4807 = !{!4808, !4809, !4810, !4811, !4812, !4813}
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !4806, file: !68, line: 86, baseType: !4768, size: 64)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4806, file: !68, line: 87, baseType: !187, size: 64, offset: 64)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !4806, file: !68, line: 88, baseType: !187, size: 64, offset: 128)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !4806, file: !68, line: 89, baseType: !187, size: 64, offset: 192)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !4806, file: !68, line: 90, baseType: !825, size: 8, offset: 256)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4806, file: !68, line: 92, baseType: !4805, size: 64, offset: 320)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4745, file: !68, line: 82, baseType: !7, size: 32, offset: 512)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !212, file: !213, line: 1463, baseType: !4816, offset: 21184)
!4816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !213, line: 739, elements: !590)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !212, file: !213, line: 1470, baseType: !605, size: 128, align: 64, offset: 21184)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !212, file: !213, line: 1471, baseType: !228, size: 32, offset: 21312)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !212, file: !213, line: 1472, baseType: !109, size: 32, offset: 21344)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !212, file: !213, line: 1474, baseType: !211, size: 64, offset: 21376)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !212, file: !213, line: 1475, baseType: !2338, size: 320, offset: 21440)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !212, file: !213, line: 1478, baseType: !4823, size: 64, offset: 21760)
!4823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4824, size: 64)
!4824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !4825, line: 49, size: 512, elements: !4826)
!4825 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!4826 = !{!4827, !4828, !4829, !4830, !4831, !4832, !4833, !4834, !4836}
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4824, file: !4825, line: 50, baseType: !4823, size: 64)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4824, file: !4825, line: 51, baseType: !147, size: 64, offset: 64)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4824, file: !4825, line: 52, baseType: !187, size: 64, offset: 128)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4824, file: !4825, line: 53, baseType: !187, size: 64, offset: 192)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !4824, file: !4825, line: 54, baseType: !1752, size: 64, offset: 256)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !4824, file: !4825, line: 56, baseType: !7, size: 32, offset: 320)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !4824, file: !4825, line: 58, baseType: !7, size: 32, offset: 352)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !4824, file: !4825, line: 59, baseType: !4835, size: 64, offset: 384)
!4835 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !186, line: 159, baseType: !180)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !4824, file: !4825, line: 60, baseType: !1931, size: 64, offset: 448)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !212, file: !213, line: 1482, baseType: !228, size: 32, offset: 21824)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !212, file: !213, line: 1489, baseType: !147, size: 64, offset: 21888)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !212, file: !213, line: 1504, baseType: !147, size: 64, offset: 21952)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !212, file: !213, line: 1505, baseType: !182, size: 64, offset: 22016)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !212, file: !213, line: 1506, baseType: !180, size: 64, offset: 22080)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !212, file: !213, line: 1507, baseType: !182, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !212, file: !213, line: 1508, baseType: !182, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !212, file: !213, line: 1509, baseType: !182, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !212, file: !213, line: 1510, baseType: !605, size: 128, align: 64, offset: 22208)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !212, file: !213, line: 1511, baseType: !109, size: 32, offset: 22336)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !212, file: !213, line: 1515, baseType: !4076, size: 64, offset: 22400)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !212, file: !213, line: 1518, baseType: !4076, size: 64, offset: 22464)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !212, file: !213, line: 1528, baseType: !605, size: 128, align: 64, offset: 22528)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !212, file: !213, line: 1552, baseType: !4851, size: 35328, offset: 23040)
!4851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !4852, line: 430, size: 35328, elements: !4853)
!4852 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!4853 = !{!4854, !4872, !4873, !4874, !4875, !4876, !4877, !4878, !4879, !4883, !4884, !4885, !4886, !4887, !4888, !4891, !4892, !4893, !4894}
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !4851, file: !4852, line: 432, baseType: !4855, size: 192)
!4855 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4856, size: 192, elements: !663)
!4856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !4857, line: 16, size: 64, elements: !4858)
!4857 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!4858 = !{!4859, !4860, !4861, !4862, !4863, !4864, !4865, !4866, !4867, !4868, !4869, !4870, !4871}
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !4856, file: !4857, line: 17, baseType: !256, size: 16)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !4856, file: !4857, line: 18, baseType: !256, size: 16, offset: 16)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !4856, file: !4857, line: 19, baseType: !256, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4856, file: !4857, line: 19, baseType: !256, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !4856, file: !4857, line: 19, baseType: !256, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !4856, file: !4857, line: 19, baseType: !256, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4856, file: !4857, line: 19, baseType: !256, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !4856, file: !4857, line: 20, baseType: !256, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !4856, file: !4857, line: 20, baseType: !256, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !4856, file: !4857, line: 20, baseType: !256, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !4856, file: !4857, line: 20, baseType: !256, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !4856, file: !4857, line: 20, baseType: !256, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !4856, file: !4857, line: 20, baseType: !256, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4851, file: !4852, line: 436, baseType: !187, size: 64, offset: 192)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !4851, file: !4852, line: 440, baseType: !201, size: 16, offset: 256)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !4851, file: !4852, line: 441, baseType: !201, size: 16, offset: 272)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !4851, file: !4852, line: 442, baseType: !201, size: 16, offset: 288)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !4851, file: !4852, line: 443, baseType: !201, size: 16, offset: 304)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !4851, file: !4852, line: 447, baseType: !187, size: 64, offset: 320)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !4851, file: !4852, line: 448, baseType: !187, size: 64, offset: 384)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !4851, file: !4852, line: 459, baseType: !4880, size: 256, offset: 448)
!4880 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4881, size: 256, elements: !684)
!4881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4882, size: 64)
!4882 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !4852, line: 428, flags: DIFlagFwdDecl)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !4851, file: !4852, line: 461, baseType: !187, size: 64, offset: 704)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !4851, file: !4852, line: 463, baseType: !187, size: 64, offset: 768)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !4851, file: !4852, line: 465, baseType: !187, size: 64, offset: 832)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !4851, file: !4852, line: 466, baseType: !187, size: 64, offset: 896)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !4851, file: !4852, line: 467, baseType: !187, size: 64, offset: 960)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !4851, file: !4852, line: 473, baseType: !4889, size: 64, offset: 1024)
!4889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4890, size: 64)
!4890 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !4852, line: 10, flags: DIFlagFwdDecl)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !4851, file: !4852, line: 480, baseType: !187, size: 64, offset: 1088)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !4851, file: !4852, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !4851, file: !4852, line: 491, baseType: !222, size: 32, offset: 1184)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !4851, file: !4852, line: 501, baseType: !4895, size: 33792, offset: 1536)
!4895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !4896, line: 448, size: 33792, elements: !4897)
!4896 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!4897 = !{!4898, !4899, !4900, !5061, !5062, !5068, !5069}
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4895, file: !4896, line: 461, baseType: !7, size: 32)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !4895, file: !4896, line: 468, baseType: !187, size: 64, offset: 64)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !4895, file: !4896, line: 476, baseType: !4901, size: 64, offset: 128)
!4901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4902, size: 64)
!4902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !4896, line: 356, size: 33280, align: 512, elements: !4903)
!4903 = !{!4904, !4905, !4906, !4907, !4908, !4909, !4910, !4911, !4912, !4913}
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4902, file: !4896, line: 358, baseType: !7, size: 32)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !4902, file: !4896, line: 361, baseType: !7, size: 32, offset: 32)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4902, file: !4896, line: 364, baseType: !180, size: 64, offset: 64)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !4902, file: !4896, line: 367, baseType: !180, size: 64, offset: 128)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !4902, file: !4896, line: 370, baseType: !180, size: 64, offset: 192)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !4902, file: !4896, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !4902, file: !4896, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !4902, file: !4896, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !4902, file: !4896, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4902, file: !4896, line: 397, baseType: !4914, size: 32768, offset: 512)
!4914 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !4896, line: 348, size: 32768, elements: !4915)
!4915 = !{!4916, !4931, !4968, !5045, !5057}
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !4914, file: !4896, line: 349, baseType: !4917, size: 896)
!4917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !4896, line: 12, size: 896, elements: !4918)
!4918 = !{!4919, !4920, !4921, !4922, !4923, !4924, !4925, !4926, !4930}
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4917, file: !4896, line: 13, baseType: !222, size: 32)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4917, file: !4896, line: 14, baseType: !222, size: 32, offset: 32)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4917, file: !4896, line: 15, baseType: !222, size: 32, offset: 64)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4917, file: !4896, line: 16, baseType: !222, size: 32, offset: 96)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4917, file: !4896, line: 17, baseType: !222, size: 32, offset: 128)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4917, file: !4896, line: 18, baseType: !222, size: 32, offset: 160)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4917, file: !4896, line: 19, baseType: !222, size: 32, offset: 192)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4917, file: !4896, line: 22, baseType: !4927, size: 640, offset: 224)
!4927 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 640, elements: !4928)
!4928 = !{!4929}
!4929 = !DISubrange(count: 20)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4917, file: !4896, line: 25, baseType: !222, size: 32, offset: 864)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !4914, file: !4896, line: 350, baseType: !4932, size: 4096, align: 128)
!4932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !4896, line: 34, size: 4096, align: 128, elements: !4933)
!4933 = !{!4934, !4935, !4936, !4937, !4938, !4953, !4954, !4955, !4957, !4959, !4963}
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4932, file: !4896, line: 35, baseType: !256, size: 16)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4932, file: !4896, line: 36, baseType: !256, size: 16, offset: 16)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4932, file: !4896, line: 37, baseType: !256, size: 16, offset: 32)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !4932, file: !4896, line: 38, baseType: !256, size: 16, offset: 48)
!4938 = !DIDerivedType(tag: DW_TAG_member, scope: !4932, file: !4896, line: 39, baseType: !4939, size: 128, offset: 64)
!4939 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4932, file: !4896, line: 39, size: 128, elements: !4940)
!4940 = !{!4941, !4946}
!4941 = !DIDerivedType(tag: DW_TAG_member, scope: !4939, file: !4896, line: 40, baseType: !4942, size: 128)
!4942 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4939, file: !4896, line: 40, size: 128, elements: !4943)
!4943 = !{!4944, !4945}
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !4942, file: !4896, line: 41, baseType: !180, size: 64)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !4942, file: !4896, line: 42, baseType: !180, size: 64, offset: 64)
!4946 = !DIDerivedType(tag: DW_TAG_member, scope: !4939, file: !4896, line: 44, baseType: !4947, size: 128)
!4947 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4939, file: !4896, line: 44, size: 128, elements: !4948)
!4948 = !{!4949, !4950, !4951, !4952}
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4947, file: !4896, line: 45, baseType: !222, size: 32)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4947, file: !4896, line: 46, baseType: !222, size: 32, offset: 32)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4947, file: !4896, line: 47, baseType: !222, size: 32, offset: 64)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4947, file: !4896, line: 48, baseType: !222, size: 32, offset: 96)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !4932, file: !4896, line: 51, baseType: !222, size: 32, offset: 192)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !4932, file: !4896, line: 52, baseType: !222, size: 32, offset: 224)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4932, file: !4896, line: 55, baseType: !4956, size: 1024, offset: 256)
!4956 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 1024, elements: !2836)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !4932, file: !4896, line: 58, baseType: !4958, size: 2048, offset: 1280)
!4958 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 2048, elements: !1285)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4932, file: !4896, line: 60, baseType: !4960, size: 384, offset: 3328)
!4960 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 384, elements: !4961)
!4961 = !{!4962}
!4962 = !DISubrange(count: 12)
!4963 = !DIDerivedType(tag: DW_TAG_member, scope: !4932, file: !4896, line: 62, baseType: !4964, size: 384, offset: 3712)
!4964 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4932, file: !4896, line: 62, size: 384, elements: !4965)
!4965 = !{!4966, !4967}
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4964, file: !4896, line: 63, baseType: !4960, size: 384)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4964, file: !4896, line: 64, baseType: !4960, size: 384)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !4914, file: !4896, line: 351, baseType: !4969, size: 1088)
!4969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !4896, line: 79, size: 1088, elements: !4970)
!4970 = !{!4971, !4972, !4973, !4974, !4975, !4976, !4977, !4978, !4979, !4980, !4981, !4982, !4983, !4984, !4985, !5044}
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4969, file: !4896, line: 80, baseType: !222, size: 32)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4969, file: !4896, line: 81, baseType: !222, size: 32, offset: 32)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4969, file: !4896, line: 82, baseType: !222, size: 32, offset: 64)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4969, file: !4896, line: 83, baseType: !222, size: 32, offset: 96)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4969, file: !4896, line: 84, baseType: !222, size: 32, offset: 128)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4969, file: !4896, line: 85, baseType: !222, size: 32, offset: 160)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4969, file: !4896, line: 86, baseType: !222, size: 32, offset: 192)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4969, file: !4896, line: 88, baseType: !4927, size: 640, offset: 224)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4969, file: !4896, line: 89, baseType: !398, size: 8, offset: 864)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4969, file: !4896, line: 90, baseType: !398, size: 8, offset: 872)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4969, file: !4896, line: 91, baseType: !398, size: 8, offset: 880)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4969, file: !4896, line: 92, baseType: !398, size: 8, offset: 888)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4969, file: !4896, line: 93, baseType: !398, size: 8, offset: 896)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4969, file: !4896, line: 94, baseType: !398, size: 8, offset: 904)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4969, file: !4896, line: 95, baseType: !4986, size: 64, offset: 960)
!4986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4987, size: 64)
!4987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4988, line: 11, size: 128, elements: !4989)
!4988 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4989 = !{!4990, !4991}
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4987, file: !4988, line: 12, baseType: !148, size: 64)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4987, file: !4988, line: 13, baseType: !4992, size: 64, offset: 64)
!4992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4993, size: 64)
!4993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !4994, line: 103, size: 1344, elements: !4995)
!4994 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!4995 = !{!4996, !4997, !4998, !4999, !5000, !5001, !5002, !5003, !5004, !5005, !5006, !5007, !5008, !5009, !5010, !5011, !5012, !5013, !5024, !5025, !5026}
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !4993, file: !4994, line: 109, baseType: !187, size: 64)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !4993, file: !4994, line: 110, baseType: !187, size: 64, offset: 64)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !4993, file: !4994, line: 111, baseType: !187, size: 64, offset: 128)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !4993, file: !4994, line: 112, baseType: !187, size: 64, offset: 192)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4993, file: !4994, line: 113, baseType: !187, size: 64, offset: 256)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !4993, file: !4994, line: 114, baseType: !187, size: 64, offset: 320)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !4993, file: !4994, line: 117, baseType: !187, size: 64, offset: 384)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !4993, file: !4994, line: 118, baseType: !187, size: 64, offset: 448)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !4993, file: !4994, line: 119, baseType: !187, size: 64, offset: 512)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !4993, file: !4994, line: 120, baseType: !187, size: 64, offset: 576)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !4993, file: !4994, line: 121, baseType: !187, size: 64, offset: 640)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !4993, file: !4994, line: 122, baseType: !187, size: 64, offset: 704)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4993, file: !4994, line: 123, baseType: !187, size: 64, offset: 768)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !4993, file: !4994, line: 124, baseType: !187, size: 64, offset: 832)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !4993, file: !4994, line: 125, baseType: !187, size: 64, offset: 896)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !4993, file: !4994, line: 139, baseType: !187, size: 64, offset: 960)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4993, file: !4994, line: 142, baseType: !187, size: 64, offset: 1024)
!5013 = !DIDerivedType(tag: DW_TAG_member, scope: !4993, file: !4994, line: 144, baseType: !5014, size: 64, offset: 1088)
!5014 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4993, file: !4994, line: 144, size: 64, elements: !5015)
!5015 = !{!5016, !5017, !5018}
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !5014, file: !4994, line: 146, baseType: !256, size: 16)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !5014, file: !4994, line: 148, baseType: !180, size: 64)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !5014, file: !4994, line: 150, baseType: !5019, size: 64)
!5019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !4994, line: 59, size: 64, elements: !5020)
!5020 = !{!5021, !5022, !5023}
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !5019, file: !4994, line: 61, baseType: !180, size: 16, flags: DIFlagBitField, extraData: i64 0)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !5019, file: !4994, line: 63, baseType: !180, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !5019, file: !4994, line: 65, baseType: !180, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4993, file: !4994, line: 153, baseType: !187, size: 64, offset: 1152)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4993, file: !4994, line: 154, baseType: !187, size: 64, offset: 1216)
!5026 = !DIDerivedType(tag: DW_TAG_member, scope: !4993, file: !4994, line: 156, baseType: !5027, size: 64, offset: 1280)
!5027 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4993, file: !4994, line: 156, size: 64, elements: !5028)
!5028 = !{!5029, !5030, !5031}
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !5027, file: !4994, line: 158, baseType: !256, size: 16)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !5027, file: !4994, line: 160, baseType: !180, size: 64)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !5027, file: !4994, line: 162, baseType: !5032, size: 64)
!5032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !4994, line: 69, size: 64, elements: !5033)
!5033 = !{!5034, !5035, !5036, !5037, !5038, !5039, !5040, !5041, !5042, !5043}
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !5032, file: !4994, line: 71, baseType: !180, size: 16, flags: DIFlagBitField, extraData: i64 0)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !5032, file: !4994, line: 73, baseType: !180, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !5032, file: !4994, line: 75, baseType: !180, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !5032, file: !4994, line: 77, baseType: !180, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !5032, file: !4994, line: 80, baseType: !180, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5032, file: !4994, line: 83, baseType: !180, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !5032, file: !4994, line: 86, baseType: !180, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !5032, file: !4994, line: 88, baseType: !180, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !5032, file: !4994, line: 93, baseType: !180, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !5032, file: !4994, line: 100, baseType: !180, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4969, file: !4896, line: 96, baseType: !222, size: 32, offset: 1024)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !4914, file: !4896, line: 352, baseType: !5046, size: 4608, align: 512)
!5046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !4896, line: 333, size: 4608, align: 512, elements: !5047)
!5047 = !{!5048, !5049, !5056}
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !5046, file: !4896, line: 334, baseType: !4932, size: 4096, align: 128)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !5046, file: !4896, line: 335, baseType: !5050, size: 512, offset: 4096)
!5050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !4896, line: 312, size: 512, elements: !5051)
!5051 = !{!5052, !5053, !5054}
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5050, file: !4896, line: 313, baseType: !180, size: 64)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !5050, file: !4896, line: 314, baseType: !180, size: 64, offset: 64)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5050, file: !4896, line: 315, baseType: !5055, size: 384, offset: 128)
!5055 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 384, elements: !812)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !5046, file: !4896, line: 336, baseType: !4070, offset: 4608)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !4914, file: !4896, line: 353, baseType: !5058, size: 32768)
!5058 = !DICompositeType(tag: DW_TAG_array_type, baseType: !398, size: 32768, elements: !5059)
!5059 = !{!5060}
!5060 = !DISubrange(count: 4096)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !4895, file: !4896, line: 484, baseType: !4901, size: 64, offset: 192)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4895, file: !4896, line: 491, baseType: !5063, size: 128, offset: 256)
!5063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !4896, line: 404, size: 128, elements: !5064)
!5064 = !{!5065, !5066, !5067}
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !5063, file: !4896, line: 424, baseType: !180, size: 64)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !5063, file: !4896, line: 432, baseType: !7, size: 32, offset: 64)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !5063, file: !4896, line: 440, baseType: !7, size: 32, offset: 96)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !4895, file: !4896, line: 498, baseType: !5063, size: 128, offset: 384)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !4895, file: !4896, line: 508, baseType: !4902, size: 33280, align: 512, offset: 512)
!5070 = !{!0, !5071, !5073, !5075, !5077, !5079, !5081, !5083, !5085, !5087, !5092, !5094, !5096, !5098, !5100, !5104}
!5071 = !DIGlobalVariableExpression(var: !5072, expr: !DIExpression())
!5072 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_tty_write_room288", scope: !2, file: !3, line: 76, type: !147, isLocal: true, isDefinition: true)
!5073 = !DIGlobalVariableExpression(var: !5074, expr: !DIExpression())
!5074 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_tty_driver_flush_buffer289", scope: !2, file: !3, line: 91, type: !147, isLocal: true, isDefinition: true)
!5075 = !DIGlobalVariableExpression(var: !5076, expr: !DIExpression())
!5076 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_tty_unthrottle290", scope: !2, file: !3, line: 115, type: !147, isLocal: true, isDefinition: true)
!5077 = !DIGlobalVariableExpression(var: !5078, expr: !DIExpression())
!5078 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_tty_wait_until_sent291", scope: !2, file: !3, line: 207, type: !147, isLocal: true, isDefinition: true)
!5079 = !DIGlobalVariableExpression(var: !5080, expr: !DIExpression())
!5080 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_tty_termios_copy_hw292", scope: !2, file: !3, line: 253, type: !147, isLocal: true, isDefinition: true)
!5081 = !DIGlobalVariableExpression(var: !5082, expr: !DIExpression())
!5082 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_tty_termios_hw_change293", scope: !2, file: !3, line: 272, type: !147, isLocal: true, isDefinition: true)
!5083 = !DIGlobalVariableExpression(var: !5084, expr: !DIExpression())
!5084 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_tty_get_char_size294", scope: !2, file: !3, line: 295, type: !147, isLocal: true, isDefinition: true)
!5085 = !DIGlobalVariableExpression(var: !5086, expr: !DIExpression())
!5086 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_tty_get_frame_size295", scope: !2, file: !3, line: 319, type: !147, isLocal: true, isDefinition: true)
!5087 = !DIGlobalVariableExpression(var: !5088, expr: !DIExpression())
!5088 = distinct !DIGlobalVariable(scope: null, file: !3, line: 337, type: !5089, isLocal: true, isDefinition: true)
!5089 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 192, elements: !5090)
!5090 = !{!5091}
!5091 = !DISubrange(count: 24)
!5092 = !DIGlobalVariableExpression(var: !5093, expr: !DIExpression())
!5093 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_tty_set_termios296", scope: !2, file: !3, line: 367, type: !147, isLocal: true, isDefinition: true)
!5094 = !DIGlobalVariableExpression(var: !5095, expr: !DIExpression())
!5095 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_tty_mode_ioctl297", scope: !2, file: !3, line: 901, type: !147, isLocal: true, isDefinition: true)
!5096 = !DIGlobalVariableExpression(var: !5097, expr: !DIExpression())
!5097 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_tty_perform_flush298", scope: !2, file: !3, line: 944, type: !147, isLocal: true, isDefinition: true)
!5098 = !DIGlobalVariableExpression(var: !5099, expr: !DIExpression())
!5099 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_n_tty_ioctl_helper299", scope: !2, file: !3, line: 995, type: !147, isLocal: true, isDefinition: true)
!5100 = !DIGlobalVariableExpression(var: !5101, expr: !DIExpression())
!5101 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__might_resched37", scope: !5102, file: !5103, line: 112, type: !147, isLocal: true, isDefinition: true)
!5102 = distinct !DISubprogram(name: "might_resched", scope: !5103, file: !5103, line: 110, type: !2453, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5103 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!5104 = !DIGlobalVariableExpression(var: !5105, expr: !DIExpression())
!5105 = distinct !DIGlobalVariable(scope: null, file: !5106, line: 249, type: !5107, isLocal: true, isDefinition: true)
!5106 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!5107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 224, elements: !5108)
!5108 = !{!5109}
!5109 = !DISubrange(count: 28)
!5110 = !{!"rsp"}
!5111 = !{i32 7, !"Dwarf Version", i32 5}
!5112 = !{i32 2, !"Debug Info Version", i32 3}
!5113 = !{i32 1, !"wchar_size", i32 2}
!5114 = !{i32 8, !"cf-protection-branch", i32 1}
!5115 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5116 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5117 = !{i32 1, !"Code Model", i32 2}
!5118 = !{i32 1, !"override-stack-alignment", i32 8}
!5119 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5120 = distinct !DISubprogram(name: "tty_chars_in_buffer", scope: !3, file: !3, line: 51, type: !4210, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5121)
!5121 = !{!5122}
!5122 = !DILocalVariable(name: "tty", arg: 1, scope: !5120, file: !3, line: 51, type: !3552)
!5123 = !DILocation(line: 51, column: 53, scope: !5120)
!5124 = !DILocation(line: 53, column: 6, scope: !5125)
!5125 = distinct !DILexicalBlock(scope: !5120, file: !3, line: 53, column: 6)
!5126 = !DILocation(line: 53, column: 11, scope: !5125)
!5127 = !DILocation(line: 53, column: 16, scope: !5125)
!5128 = !DILocation(line: 53, column: 6, scope: !5120)
!5129 = !DILocation(line: 54, column: 10, scope: !5125)
!5130 = !DILocation(line: 54, column: 15, scope: !5125)
!5131 = !DILocation(line: 54, column: 20, scope: !5125)
!5132 = !DILocation(line: 54, column: 36, scope: !5125)
!5133 = !DILocation(line: 54, column: 3, scope: !5125)
!5134 = !DILocation(line: 55, column: 2, scope: !5120)
!5135 = !DILocation(line: 56, column: 1, scope: !5120)
!5136 = distinct !DISubprogram(name: "tty_write_room", scope: !3, file: !3, line: 70, type: !4210, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5137)
!5137 = !{!5138}
!5138 = !DILocalVariable(name: "tty", arg: 1, scope: !5136, file: !3, line: 70, type: !3552)
!5139 = !DILocation(line: 70, column: 48, scope: !5136)
!5140 = !DILocation(line: 72, column: 6, scope: !5141)
!5141 = distinct !DILexicalBlock(scope: !5136, file: !3, line: 72, column: 6)
!5142 = !DILocation(line: 72, column: 11, scope: !5141)
!5143 = !DILocation(line: 72, column: 16, scope: !5141)
!5144 = !DILocation(line: 72, column: 6, scope: !5136)
!5145 = !DILocation(line: 73, column: 10, scope: !5141)
!5146 = !DILocation(line: 73, column: 15, scope: !5141)
!5147 = !DILocation(line: 73, column: 20, scope: !5141)
!5148 = !DILocation(line: 73, column: 31, scope: !5141)
!5149 = !DILocation(line: 73, column: 3, scope: !5141)
!5150 = !DILocation(line: 74, column: 2, scope: !5136)
!5151 = !DILocation(line: 75, column: 1, scope: !5136)
!5152 = distinct !DISubprogram(name: "tty_driver_flush_buffer", scope: !3, file: !3, line: 86, type: !4196, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5153)
!5153 = !{!5154}
!5154 = !DILocalVariable(name: "tty", arg: 1, scope: !5152, file: !3, line: 86, type: !3552)
!5155 = !DILocation(line: 86, column: 49, scope: !5152)
!5156 = !DILocation(line: 88, column: 6, scope: !5157)
!5157 = distinct !DILexicalBlock(scope: !5152, file: !3, line: 88, column: 6)
!5158 = !DILocation(line: 88, column: 11, scope: !5157)
!5159 = !DILocation(line: 88, column: 16, scope: !5157)
!5160 = !DILocation(line: 88, column: 6, scope: !5152)
!5161 = !DILocation(line: 89, column: 3, scope: !5157)
!5162 = !DILocation(line: 89, column: 8, scope: !5157)
!5163 = !DILocation(line: 89, column: 13, scope: !5157)
!5164 = !DILocation(line: 89, column: 26, scope: !5157)
!5165 = !DILocation(line: 90, column: 1, scope: !5152)
!5166 = distinct !DISubprogram(name: "tty_unthrottle", scope: !3, file: !3, line: 106, type: !4196, scopeLine: 107, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5167)
!5167 = !{!5168}
!5168 = !DILocalVariable(name: "tty", arg: 1, scope: !5166, file: !3, line: 106, type: !3552)
!5169 = !DILocation(line: 106, column: 40, scope: !5166)
!5170 = !DILocation(line: 108, column: 14, scope: !5166)
!5171 = !DILocation(line: 108, column: 19, scope: !5166)
!5172 = !DILocation(line: 108, column: 2, scope: !5166)
!5173 = !DILocation(line: 109, column: 41, scope: !5174)
!5174 = distinct !DILexicalBlock(scope: !5166, file: !3, line: 109, column: 6)
!5175 = !DILocation(line: 109, column: 46, scope: !5174)
!5176 = !DILocation(line: 109, column: 6, scope: !5174)
!5177 = !DILocation(line: 109, column: 53, scope: !5174)
!5178 = !DILocation(line: 110, column: 6, scope: !5174)
!5179 = !DILocation(line: 110, column: 11, scope: !5174)
!5180 = !DILocation(line: 110, column: 16, scope: !5174)
!5181 = !DILocation(line: 109, column: 6, scope: !5166)
!5182 = !DILocation(line: 111, column: 3, scope: !5174)
!5183 = !DILocation(line: 111, column: 8, scope: !5174)
!5184 = !DILocation(line: 111, column: 13, scope: !5174)
!5185 = !DILocation(line: 111, column: 24, scope: !5174)
!5186 = !DILocation(line: 112, column: 2, scope: !5166)
!5187 = !DILocation(line: 112, column: 7, scope: !5166)
!5188 = !DILocation(line: 112, column: 19, scope: !5166)
!5189 = !DILocation(line: 113, column: 12, scope: !5166)
!5190 = !DILocation(line: 113, column: 17, scope: !5166)
!5191 = !DILocation(line: 113, column: 2, scope: !5166)
!5192 = !DILocation(line: 114, column: 1, scope: !5166)
!5193 = !DISubprogram(name: "down_write", scope: !767, file: !767, line: 187, type: !5194, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5194 = !DISubroutineType(types: !5195)
!5195 = !{null, !5196}
!5196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!5197 = distinct !DISubprogram(name: "test_and_clear_bit", scope: !5198, file: !5198, line: 82, type: !5199, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5203)
!5198 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!5199 = !DISubroutineType(types: !5200)
!5200 = !{!825, !148, !5201}
!5201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5202, size: 64)
!5202 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !187)
!5203 = !{!5204, !5205}
!5204 = !DILocalVariable(name: "nr", arg: 1, scope: !5197, file: !5198, line: 82, type: !148)
!5205 = !DILocalVariable(name: "addr", arg: 2, scope: !5197, file: !5198, line: 82, type: !5201)
!5206 = !DILocation(line: 82, column: 53, scope: !5197)
!5207 = !DILocation(line: 82, column: 81, scope: !5197)
!5208 = !DILocation(line: 84, column: 2, scope: !5197)
!5209 = !DILocation(line: 84, column: 2, scope: !5210)
!5210 = distinct !DILexicalBlock(scope: !5197, file: !5198, line: 84, column: 2)
!5211 = !DILocation(line: 85, column: 31, scope: !5197)
!5212 = !DILocation(line: 85, column: 38, scope: !5197)
!5213 = !DILocation(line: 85, column: 36, scope: !5197)
!5214 = !DILocation(line: 85, column: 2, scope: !5197)
!5215 = !DILocation(line: 86, column: 33, scope: !5197)
!5216 = !DILocation(line: 86, column: 37, scope: !5197)
!5217 = !DILocation(line: 86, column: 9, scope: !5197)
!5218 = !DILocation(line: 86, column: 2, scope: !5197)
!5219 = !DISubprogram(name: "up_write", scope: !767, file: !767, line: 203, type: !5194, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5220 = distinct !DISubprogram(name: "tty_throttle_safe", scope: !3, file: !3, line: 130, type: !4249, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5221)
!5221 = !{!5222, !5223}
!5222 = !DILocalVariable(name: "tty", arg: 1, scope: !5220, file: !3, line: 130, type: !3552)
!5223 = !DILocalVariable(name: "ret", scope: !5220, file: !3, line: 132, type: !109)
!5224 = !DILocation(line: 130, column: 42, scope: !5220)
!5225 = !DILocation(line: 132, column: 2, scope: !5220)
!5226 = !DILocation(line: 132, column: 6, scope: !5220)
!5227 = !DILocation(line: 134, column: 14, scope: !5220)
!5228 = !DILocation(line: 134, column: 19, scope: !5220)
!5229 = !DILocation(line: 134, column: 2, scope: !5220)
!5230 = !DILocation(line: 135, column: 21, scope: !5231)
!5231 = distinct !DILexicalBlock(scope: !5220, file: !3, line: 135, column: 6)
!5232 = !DILocation(line: 135, column: 7, scope: !5231)
!5233 = !DILocation(line: 135, column: 6, scope: !5220)
!5234 = !DILocation(line: 136, column: 7, scope: !5235)
!5235 = distinct !DILexicalBlock(scope: !5236, file: !3, line: 136, column: 7)
!5236 = distinct !DILexicalBlock(scope: !5231, file: !3, line: 135, column: 27)
!5237 = !DILocation(line: 136, column: 12, scope: !5235)
!5238 = !DILocation(line: 136, column: 24, scope: !5235)
!5239 = !DILocation(line: 136, column: 7, scope: !5236)
!5240 = !DILocation(line: 137, column: 8, scope: !5235)
!5241 = !DILocation(line: 137, column: 4, scope: !5235)
!5242 = !DILocation(line: 139, column: 28, scope: !5243)
!5243 = distinct !DILexicalBlock(scope: !5235, file: !3, line: 138, column: 8)
!5244 = !DILocation(line: 139, column: 33, scope: !5243)
!5245 = !DILocation(line: 139, column: 4, scope: !5243)
!5246 = !DILocation(line: 140, column: 8, scope: !5247)
!5247 = distinct !DILexicalBlock(scope: !5243, file: !3, line: 140, column: 8)
!5248 = !DILocation(line: 140, column: 13, scope: !5247)
!5249 = !DILocation(line: 140, column: 18, scope: !5247)
!5250 = !DILocation(line: 140, column: 8, scope: !5243)
!5251 = !DILocation(line: 141, column: 5, scope: !5247)
!5252 = !DILocation(line: 141, column: 10, scope: !5247)
!5253 = !DILocation(line: 141, column: 15, scope: !5247)
!5254 = !DILocation(line: 141, column: 24, scope: !5247)
!5255 = !DILocation(line: 143, column: 2, scope: !5236)
!5256 = !DILocation(line: 144, column: 16, scope: !5220)
!5257 = !DILocation(line: 144, column: 21, scope: !5220)
!5258 = !DILocation(line: 144, column: 2, scope: !5220)
!5259 = !DILocation(line: 146, column: 9, scope: !5220)
!5260 = !DILocation(line: 147, column: 1, scope: !5220)
!5261 = !DILocation(line: 146, column: 2, scope: !5220)
!5262 = !DISubprogram(name: "mutex_lock", scope: !626, file: !626, line: 227, type: !5263, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5263 = !DISubroutineType(types: !5264)
!5264 = !{null, !5265}
!5265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!5266 = distinct !DISubprogram(name: "tty_throttled", scope: !3554, file: !3554, line: 338, type: !5267, scopeLine: 339, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5269)
!5267 = !DISubroutineType(types: !5268)
!5268 = !{!825, !3552}
!5269 = !{!5270}
!5270 = !DILocalVariable(name: "tty", arg: 1, scope: !5266, file: !3554, line: 338, type: !3552)
!5271 = !DILocation(line: 338, column: 53, scope: !5266)
!5272 = !DILocation(line: 340, column: 9, scope: !5266)
!5273 = !DILocation(line: 340, column: 2, scope: !5266)
!5274 = distinct !DISubprogram(name: "set_bit", scope: !5198, file: !5198, line: 26, type: !5275, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5277)
!5275 = !DISubroutineType(types: !5276)
!5276 = !{null, !148, !5201}
!5277 = !{!5278, !5279}
!5278 = !DILocalVariable(name: "nr", arg: 1, scope: !5274, file: !5198, line: 26, type: !148)
!5279 = !DILocalVariable(name: "addr", arg: 2, scope: !5274, file: !5198, line: 26, type: !5201)
!5280 = !DILocation(line: 26, column: 42, scope: !5274)
!5281 = !DILocation(line: 26, column: 70, scope: !5274)
!5282 = !DILocation(line: 28, column: 26, scope: !5274)
!5283 = !DILocation(line: 28, column: 33, scope: !5274)
!5284 = !DILocation(line: 28, column: 31, scope: !5274)
!5285 = !DILocation(line: 28, column: 2, scope: !5274)
!5286 = !DILocation(line: 29, column: 15, scope: !5274)
!5287 = !DILocation(line: 29, column: 19, scope: !5274)
!5288 = !DILocation(line: 29, column: 2, scope: !5274)
!5289 = !DILocation(line: 30, column: 1, scope: !5274)
!5290 = !DISubprogram(name: "mutex_unlock", scope: !626, file: !626, line: 246, type: !5263, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5291 = distinct !DISubprogram(name: "tty_unthrottle_safe", scope: !3, file: !3, line: 161, type: !4249, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5292)
!5292 = !{!5293, !5294}
!5293 = !DILocalVariable(name: "tty", arg: 1, scope: !5291, file: !3, line: 161, type: !3552)
!5294 = !DILocalVariable(name: "ret", scope: !5291, file: !3, line: 163, type: !109)
!5295 = !DILocation(line: 161, column: 44, scope: !5291)
!5296 = !DILocation(line: 163, column: 2, scope: !5291)
!5297 = !DILocation(line: 163, column: 6, scope: !5291)
!5298 = !DILocation(line: 165, column: 14, scope: !5291)
!5299 = !DILocation(line: 165, column: 19, scope: !5291)
!5300 = !DILocation(line: 165, column: 2, scope: !5291)
!5301 = !DILocation(line: 166, column: 20, scope: !5302)
!5302 = distinct !DILexicalBlock(scope: !5291, file: !3, line: 166, column: 6)
!5303 = !DILocation(line: 166, column: 6, scope: !5302)
!5304 = !DILocation(line: 166, column: 6, scope: !5291)
!5305 = !DILocation(line: 167, column: 7, scope: !5306)
!5306 = distinct !DILexicalBlock(scope: !5307, file: !3, line: 167, column: 7)
!5307 = distinct !DILexicalBlock(scope: !5302, file: !3, line: 166, column: 26)
!5308 = !DILocation(line: 167, column: 12, scope: !5306)
!5309 = !DILocation(line: 167, column: 24, scope: !5306)
!5310 = !DILocation(line: 167, column: 7, scope: !5307)
!5311 = !DILocation(line: 168, column: 8, scope: !5306)
!5312 = !DILocation(line: 168, column: 4, scope: !5306)
!5313 = !DILocation(line: 170, column: 30, scope: !5314)
!5314 = distinct !DILexicalBlock(scope: !5306, file: !3, line: 169, column: 8)
!5315 = !DILocation(line: 170, column: 35, scope: !5314)
!5316 = !DILocation(line: 170, column: 4, scope: !5314)
!5317 = !DILocation(line: 171, column: 8, scope: !5318)
!5318 = distinct !DILexicalBlock(scope: !5314, file: !3, line: 171, column: 8)
!5319 = !DILocation(line: 171, column: 13, scope: !5318)
!5320 = !DILocation(line: 171, column: 18, scope: !5318)
!5321 = !DILocation(line: 171, column: 8, scope: !5314)
!5322 = !DILocation(line: 172, column: 5, scope: !5318)
!5323 = !DILocation(line: 172, column: 10, scope: !5318)
!5324 = !DILocation(line: 172, column: 15, scope: !5318)
!5325 = !DILocation(line: 172, column: 26, scope: !5318)
!5326 = !DILocation(line: 174, column: 2, scope: !5307)
!5327 = !DILocation(line: 175, column: 16, scope: !5291)
!5328 = !DILocation(line: 175, column: 21, scope: !5291)
!5329 = !DILocation(line: 175, column: 2, scope: !5291)
!5330 = !DILocation(line: 177, column: 9, scope: !5291)
!5331 = !DILocation(line: 178, column: 1, scope: !5291)
!5332 = !DILocation(line: 177, column: 2, scope: !5291)
!5333 = distinct !DISubprogram(name: "clear_bit", scope: !5198, file: !5198, line: 39, type: !5275, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5334)
!5334 = !{!5335, !5336}
!5335 = !DILocalVariable(name: "nr", arg: 1, scope: !5333, file: !5198, line: 39, type: !148)
!5336 = !DILocalVariable(name: "addr", arg: 2, scope: !5333, file: !5198, line: 39, type: !5201)
!5337 = !DILocation(line: 39, column: 44, scope: !5333)
!5338 = !DILocation(line: 39, column: 72, scope: !5333)
!5339 = !DILocation(line: 41, column: 26, scope: !5333)
!5340 = !DILocation(line: 41, column: 33, scope: !5333)
!5341 = !DILocation(line: 41, column: 31, scope: !5333)
!5342 = !DILocation(line: 41, column: 2, scope: !5333)
!5343 = !DILocation(line: 42, column: 17, scope: !5333)
!5344 = !DILocation(line: 42, column: 21, scope: !5333)
!5345 = !DILocation(line: 42, column: 2, scope: !5333)
!5346 = !DILocation(line: 43, column: 1, scope: !5333)
!5347 = distinct !DISubprogram(name: "tty_wait_until_sent", scope: !3, file: !3, line: 191, type: !5348, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5350)
!5348 = !DISubroutineType(types: !5349)
!5349 = !{null, !3552, !148}
!5350 = !{!5351, !5352, !5353, !5355, !5358, !5371, !5372, !5376, !5379}
!5351 = !DILocalVariable(name: "tty", arg: 1, scope: !5347, file: !3, line: 191, type: !3552)
!5352 = !DILocalVariable(name: "timeout", arg: 2, scope: !5347, file: !3, line: 191, type: !148)
!5353 = !DILocalVariable(name: "__ret", scope: !5354, file: !3, line: 196, type: !148)
!5354 = distinct !DILexicalBlock(scope: !5347, file: !3, line: 196, column: 12)
!5355 = !DILocalVariable(name: "__cond", scope: !5356, file: !3, line: 196, type: !825)
!5356 = distinct !DILexicalBlock(scope: !5357, file: !3, line: 196, column: 12)
!5357 = distinct !DILexicalBlock(scope: !5354, file: !3, line: 196, column: 12)
!5358 = !DILocalVariable(name: "__wq_entry", scope: !5359, file: !3, line: 196, type: !5360)
!5359 = distinct !DILexicalBlock(scope: !5357, file: !3, line: 196, column: 12)
!5360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !689, line: 30, size: 320, elements: !5361)
!5361 = !{!5362, !5363, !5364, !5370}
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5360, file: !689, line: 31, baseType: !7, size: 32)
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !5360, file: !689, line: 32, baseType: !147, size: 64, offset: 64)
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5360, file: !689, line: 33, baseType: !5365, size: 64, offset: 128)
!5365 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !689, line: 16, baseType: !5366)
!5366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5367, size: 64)
!5367 = !DISubroutineType(types: !5368)
!5368 = !{!109, !5369, !7, !109, !147}
!5369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5360, size: 64)
!5370 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !5360, file: !689, line: 34, baseType: !288, size: 128, offset: 192)
!5371 = !DILocalVariable(name: "__ret", scope: !5359, file: !3, line: 196, type: !148)
!5372 = !DILocalVariable(name: "__int", scope: !5373, file: !3, line: 196, type: !148)
!5373 = distinct !DILexicalBlock(scope: !5374, file: !3, line: 196, column: 12)
!5374 = distinct !DILexicalBlock(scope: !5375, file: !3, line: 196, column: 12)
!5375 = distinct !DILexicalBlock(scope: !5359, file: !3, line: 196, column: 12)
!5376 = !DILocalVariable(name: "__cond", scope: !5377, file: !3, line: 196, type: !825)
!5377 = distinct !DILexicalBlock(scope: !5378, file: !3, line: 196, column: 12)
!5378 = distinct !DILexicalBlock(scope: !5373, file: !3, line: 196, column: 12)
!5379 = !DILabel(scope: !5359, name: "__out", file: !3, line: 196)
!5380 = !DILocation(line: 191, column: 45, scope: !5347)
!5381 = !DILocation(line: 191, column: 55, scope: !5347)
!5382 = !DILocation(line: 193, column: 7, scope: !5383)
!5383 = distinct !DILexicalBlock(scope: !5347, file: !3, line: 193, column: 6)
!5384 = !DILocation(line: 193, column: 6, scope: !5347)
!5385 = !DILocation(line: 194, column: 11, scope: !5383)
!5386 = !DILocation(line: 194, column: 3, scope: !5383)
!5387 = !DILocation(line: 196, column: 12, scope: !5354)
!5388 = !DILocation(line: 196, column: 12, scope: !5389)
!5389 = distinct !DILexicalBlock(scope: !5354, file: !3, line: 196, column: 12)
!5390 = !DILocation(line: 196, column: 12, scope: !5356)
!5391 = !DILocation(line: 196, column: 12, scope: !5392)
!5392 = distinct !DILexicalBlock(scope: !5356, file: !3, line: 196, column: 12)
!5393 = !{i8 0, i8 2}
!5394 = !DILocation(line: 196, column: 12, scope: !5357)
!5395 = !DILocation(line: 196, column: 12, scope: !5359)
!5396 = !DILocation(line: 196, column: 12, scope: !5373)
!5397 = !DILocation(line: 196, column: 12, scope: !5377)
!5398 = !DILocation(line: 196, column: 12, scope: !5399)
!5399 = distinct !DILexicalBlock(scope: !5377, file: !3, line: 196, column: 12)
!5400 = !DILocation(line: 196, column: 12, scope: !5378)
!5401 = !DILocation(line: 196, column: 12, scope: !5402)
!5402 = distinct !DILexicalBlock(scope: !5373, file: !3, line: 196, column: 12)
!5403 = !DILocation(line: 196, column: 12, scope: !5404)
!5404 = distinct !DILexicalBlock(scope: !5402, file: !3, line: 196, column: 12)
!5405 = !DILocation(line: 196, column: 12, scope: !5374)
!5406 = distinct !{!5406, !5407, !5407, !5408}
!5407 = !DILocation(line: 196, column: 12, scope: !5375)
!5408 = !{!"llvm.loop.unroll.disable"}
!5409 = !DILocation(line: 196, column: 12, scope: !5347)
!5410 = !DILocation(line: 196, column: 10, scope: !5347)
!5411 = !DILocation(line: 198, column: 6, scope: !5412)
!5412 = distinct !DILexicalBlock(scope: !5347, file: !3, line: 198, column: 6)
!5413 = !DILocation(line: 198, column: 14, scope: !5412)
!5414 = !DILocation(line: 198, column: 6, scope: !5347)
!5415 = !DILocation(line: 199, column: 3, scope: !5412)
!5416 = !DILocation(line: 201, column: 6, scope: !5417)
!5417 = distinct !DILexicalBlock(scope: !5347, file: !3, line: 201, column: 6)
!5418 = !DILocation(line: 201, column: 14, scope: !5417)
!5419 = !DILocation(line: 201, column: 6, scope: !5347)
!5420 = !DILocation(line: 202, column: 11, scope: !5417)
!5421 = !DILocation(line: 202, column: 3, scope: !5417)
!5422 = !DILocation(line: 204, column: 6, scope: !5423)
!5423 = distinct !DILexicalBlock(scope: !5347, file: !3, line: 204, column: 6)
!5424 = !DILocation(line: 204, column: 11, scope: !5423)
!5425 = !DILocation(line: 204, column: 16, scope: !5423)
!5426 = !DILocation(line: 204, column: 6, scope: !5347)
!5427 = !DILocation(line: 205, column: 3, scope: !5423)
!5428 = !DILocation(line: 205, column: 8, scope: !5423)
!5429 = !DILocation(line: 205, column: 13, scope: !5423)
!5430 = !DILocation(line: 205, column: 29, scope: !5423)
!5431 = !DILocation(line: 205, column: 34, scope: !5423)
!5432 = !DILocation(line: 206, column: 1, scope: !5347)
!5433 = !DILocation(line: 112, column: 2, scope: !5434)
!5434 = distinct !DILexicalBlock(scope: !5102, file: !5103, line: 112, column: 2)
!5435 = !DILocation(line: 112, column: 2, scope: !5102)
!5436 = !DILocation(line: 113, column: 1, scope: !5102)
!5437 = !DISubprogram(name: "init_wait_entry", scope: !689, file: !689, line: 290, type: !5438, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5438 = !DISubroutineType(types: !5439)
!5439 = !{null, !5369, !109}
!5440 = !DISubprogram(name: "prepare_to_wait_event", scope: !689, file: !689, line: 1199, type: !5441, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5441 = !DISubroutineType(types: !5442)
!5442 = !{!148, !5443, !5369, !109}
!5443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!5444 = !DISubprogram(name: "schedule_timeout", scope: !213, file: !213, line: 298, type: !5445, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5445 = !DISubroutineType(types: !5446)
!5446 = !{!148, !148}
!5447 = !DISubprogram(name: "finish_wait", scope: !689, file: !689, line: 1200, type: !5448, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5448 = !DISubroutineType(types: !5449)
!5449 = !{null, !5443, !5369}
!5450 = distinct !DISubprogram(name: "tty_termios_copy_hw", scope: !3, file: !3, line: 244, type: !5451, scopeLine: 245, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5453)
!5451 = !DISubroutineType(types: !5452)
!5452 = !{null, !4167, !4225}
!5453 = !{!5454, !5455}
!5454 = !DILocalVariable(name: "new", arg: 1, scope: !5450, file: !3, line: 244, type: !4167)
!5455 = !DILocalVariable(name: "old", arg: 2, scope: !5450, file: !3, line: 244, type: !4225)
!5456 = !DILocation(line: 244, column: 43, scope: !5450)
!5457 = !DILocation(line: 244, column: 71, scope: !5450)
!5458 = !DILocation(line: 248, column: 2, scope: !5450)
!5459 = !DILocation(line: 248, column: 7, scope: !5450)
!5460 = !DILocation(line: 248, column: 15, scope: !5450)
!5461 = !DILocation(line: 249, column: 18, scope: !5450)
!5462 = !DILocation(line: 249, column: 23, scope: !5450)
!5463 = !DILocation(line: 249, column: 31, scope: !5450)
!5464 = !DILocation(line: 249, column: 2, scope: !5450)
!5465 = !DILocation(line: 249, column: 7, scope: !5450)
!5466 = !DILocation(line: 249, column: 15, scope: !5450)
!5467 = !DILocation(line: 250, column: 18, scope: !5450)
!5468 = !DILocation(line: 250, column: 23, scope: !5450)
!5469 = !DILocation(line: 250, column: 2, scope: !5450)
!5470 = !DILocation(line: 250, column: 7, scope: !5450)
!5471 = !DILocation(line: 250, column: 16, scope: !5450)
!5472 = !DILocation(line: 251, column: 18, scope: !5450)
!5473 = !DILocation(line: 251, column: 23, scope: !5450)
!5474 = !DILocation(line: 251, column: 2, scope: !5450)
!5475 = !DILocation(line: 251, column: 7, scope: !5450)
!5476 = !DILocation(line: 251, column: 16, scope: !5450)
!5477 = !DILocation(line: 252, column: 1, scope: !5450)
!5478 = distinct !DISubprogram(name: "tty_termios_hw_change", scope: !3, file: !3, line: 264, type: !5479, scopeLine: 265, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5481)
!5479 = !DISubroutineType(types: !5480)
!5480 = !{!825, !4225, !4225}
!5481 = !{!5482, !5483}
!5482 = !DILocalVariable(name: "a", arg: 1, scope: !5478, file: !3, line: 264, type: !4225)
!5483 = !DILocalVariable(name: "b", arg: 2, scope: !5478, file: !3, line: 264, type: !4225)
!5484 = !DILocation(line: 264, column: 51, scope: !5478)
!5485 = !DILocation(line: 264, column: 77, scope: !5478)
!5486 = !DILocation(line: 266, column: 6, scope: !5487)
!5487 = distinct !DILexicalBlock(scope: !5478, file: !3, line: 266, column: 6)
!5488 = !DILocation(line: 266, column: 9, scope: !5487)
!5489 = !DILocation(line: 266, column: 21, scope: !5487)
!5490 = !DILocation(line: 266, column: 24, scope: !5487)
!5491 = !DILocation(line: 266, column: 18, scope: !5487)
!5492 = !DILocation(line: 266, column: 33, scope: !5487)
!5493 = !DILocation(line: 266, column: 36, scope: !5487)
!5494 = !DILocation(line: 266, column: 39, scope: !5487)
!5495 = !DILocation(line: 266, column: 51, scope: !5487)
!5496 = !DILocation(line: 266, column: 54, scope: !5487)
!5497 = !DILocation(line: 266, column: 48, scope: !5487)
!5498 = !DILocation(line: 266, column: 6, scope: !5478)
!5499 = !DILocation(line: 267, column: 3, scope: !5487)
!5500 = !DILocation(line: 268, column: 7, scope: !5501)
!5501 = distinct !DILexicalBlock(scope: !5478, file: !3, line: 268, column: 6)
!5502 = !DILocation(line: 268, column: 10, scope: !5501)
!5503 = !DILocation(line: 268, column: 20, scope: !5501)
!5504 = !DILocation(line: 268, column: 23, scope: !5501)
!5505 = !DILocation(line: 268, column: 18, scope: !5501)
!5506 = !DILocation(line: 268, column: 32, scope: !5501)
!5507 = !DILocation(line: 268, column: 6, scope: !5478)
!5508 = !DILocation(line: 269, column: 3, scope: !5501)
!5509 = !DILocation(line: 270, column: 2, scope: !5478)
!5510 = !DILocation(line: 271, column: 1, scope: !5478)
!5511 = distinct !DISubprogram(name: "tty_get_char_size", scope: !3, file: !3, line: 281, type: !5512, scopeLine: 282, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5514)
!5512 = !DISubroutineType(types: !5513)
!5513 = !{!161, !7}
!5514 = !{!5515}
!5515 = !DILocalVariable(name: "cflag", arg: 1, scope: !5511, file: !3, line: 281, type: !7)
!5516 = !DILocation(line: 281, column: 46, scope: !5511)
!5517 = !DILocation(line: 283, column: 10, scope: !5511)
!5518 = !DILocation(line: 283, column: 16, scope: !5511)
!5519 = !DILocation(line: 283, column: 2, scope: !5511)
!5520 = !DILocation(line: 285, column: 3, scope: !5521)
!5521 = distinct !DILexicalBlock(scope: !5511, file: !3, line: 283, column: 25)
!5522 = !DILocation(line: 287, column: 3, scope: !5521)
!5523 = !DILocation(line: 289, column: 3, scope: !5521)
!5524 = !DILocation(line: 290, column: 2, scope: !5521)
!5525 = !DILocation(line: 292, column: 3, scope: !5521)
!5526 = !DILocation(line: 294, column: 1, scope: !5511)
!5527 = distinct !DISubprogram(name: "tty_get_frame_size", scope: !3, file: !3, line: 306, type: !5512, scopeLine: 307, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5528)
!5528 = !{!5529, !5530}
!5529 = !DILocalVariable(name: "cflag", arg: 1, scope: !5527, file: !3, line: 306, type: !7)
!5530 = !DILocalVariable(name: "bits", scope: !5527, file: !3, line: 308, type: !161)
!5531 = !DILocation(line: 306, column: 47, scope: !5527)
!5532 = !DILocation(line: 308, column: 2, scope: !5527)
!5533 = !DILocation(line: 308, column: 16, scope: !5527)
!5534 = !DILocation(line: 308, column: 45, scope: !5527)
!5535 = !DILocation(line: 308, column: 27, scope: !5527)
!5536 = !DILocation(line: 308, column: 25, scope: !5527)
!5537 = !DILocation(line: 308, column: 23, scope: !5527)
!5538 = !DILocation(line: 310, column: 6, scope: !5539)
!5539 = distinct !DILexicalBlock(scope: !5527, file: !3, line: 310, column: 6)
!5540 = !DILocation(line: 310, column: 12, scope: !5539)
!5541 = !DILocation(line: 310, column: 6, scope: !5527)
!5542 = !DILocation(line: 311, column: 7, scope: !5539)
!5543 = !DILocation(line: 311, column: 3, scope: !5539)
!5544 = !DILocation(line: 312, column: 6, scope: !5545)
!5545 = distinct !DILexicalBlock(scope: !5527, file: !3, line: 312, column: 6)
!5546 = !DILocation(line: 312, column: 12, scope: !5545)
!5547 = !DILocation(line: 312, column: 6, scope: !5527)
!5548 = !DILocation(line: 313, column: 7, scope: !5545)
!5549 = !DILocation(line: 313, column: 3, scope: !5545)
!5550 = !DILocation(line: 314, column: 6, scope: !5551)
!5551 = distinct !DILexicalBlock(scope: !5527, file: !3, line: 314, column: 6)
!5552 = !DILocation(line: 314, column: 12, scope: !5551)
!5553 = !DILocation(line: 314, column: 6, scope: !5527)
!5554 = !DILocation(line: 315, column: 7, scope: !5551)
!5555 = !DILocation(line: 315, column: 3, scope: !5551)
!5556 = !DILocation(line: 317, column: 9, scope: !5527)
!5557 = !DILocation(line: 318, column: 1, scope: !5527)
!5558 = !DILocation(line: 317, column: 2, scope: !5527)
!5559 = distinct !DISubprogram(name: "tty_set_termios", scope: !3, file: !3, line: 332, type: !5560, scopeLine: 333, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5562)
!5560 = !DISubroutineType(types: !5561)
!5561 = !{!109, !3552, !4167}
!5562 = !{!5563, !5564, !5565, !5566, !5567, !5569}
!5563 = !DILocalVariable(name: "tty", arg: 1, scope: !5559, file: !3, line: 332, type: !3552)
!5564 = !DILocalVariable(name: "new_termios", arg: 2, scope: !5559, file: !3, line: 332, type: !4167)
!5565 = !DILocalVariable(name: "old_termios", scope: !5559, file: !3, line: 334, type: !4027)
!5566 = !DILocalVariable(name: "ld", scope: !5559, file: !3, line: 335, type: !4288)
!5567 = !DILocalVariable(name: "__ret_warn_on", scope: !5568, file: !3, line: 337, type: !109)
!5568 = distinct !DILexicalBlock(scope: !5559, file: !3, line: 337, column: 2)
!5569 = !DILocalVariable(name: "__flags", scope: !5570, file: !3, line: 337, type: !109)
!5570 = distinct !DILexicalBlock(scope: !5571, file: !3, line: 337, column: 2)
!5571 = distinct !DILexicalBlock(scope: !5568, file: !3, line: 337, column: 2)
!5572 = !DILocation(line: 332, column: 40, scope: !5559)
!5573 = !DILocation(line: 332, column: 62, scope: !5559)
!5574 = !DILocation(line: 334, column: 2, scope: !5559)
!5575 = !DILocation(line: 334, column: 18, scope: !5559)
!5576 = !DILocation(line: 335, column: 2, scope: !5559)
!5577 = !DILocation(line: 335, column: 20, scope: !5559)
!5578 = !DILocation(line: 337, column: 2, scope: !5568)
!5579 = !DILocation(line: 0, scope: !5568)
!5580 = !DILocation(line: 337, column: 2, scope: !5571)
!5581 = !DILocation(line: 337, column: 2, scope: !5570)
!5582 = !DILocation(line: 337, column: 2, scope: !5583)
!5583 = distinct !DILexicalBlock(scope: !5570, file: !3, line: 337, column: 2)
!5584 = !DILocation(line: 337, column: 2, scope: !5585)
!5585 = distinct !DILexicalBlock(scope: !5570, file: !3, line: 337, column: 2)
!5586 = !{i64 2154824797, i64 2154824826, i64 2154824872, i64 2154824930, i64 2154824984, i64 2154825038, i64 2154825093, i64 2154825124, i64 2154825432, i64 2154825438, i64 2154825485, i64 2154825508, i64 2154825534}
!5587 = !DILocation(line: 337, column: 2, scope: !5588)
!5588 = distinct !DILexicalBlock(scope: !5570, file: !3, line: 337, column: 2)
!5589 = !DILocation(line: 337, column: 2, scope: !5559)
!5590 = !DILocation(line: 346, column: 14, scope: !5559)
!5591 = !DILocation(line: 346, column: 19, scope: !5559)
!5592 = !DILocation(line: 346, column: 2, scope: !5559)
!5593 = !DILocation(line: 347, column: 16, scope: !5559)
!5594 = !DILocation(line: 347, column: 21, scope: !5559)
!5595 = !DILocation(line: 348, column: 2, scope: !5559)
!5596 = !DILocation(line: 348, column: 7, scope: !5559)
!5597 = !DILocation(line: 348, column: 18, scope: !5559)
!5598 = !DILocation(line: 348, column: 17, scope: !5559)
!5599 = !DILocation(line: 349, column: 23, scope: !5559)
!5600 = !DILocation(line: 349, column: 2, scope: !5559)
!5601 = !DILocation(line: 351, column: 27, scope: !5559)
!5602 = !DILocation(line: 351, column: 32, scope: !5559)
!5603 = !DILocation(line: 351, column: 40, scope: !5559)
!5604 = !DILocation(line: 351, column: 62, scope: !5559)
!5605 = !DILocation(line: 351, column: 48, scope: !5559)
!5606 = !DILocation(line: 351, column: 71, scope: !5559)
!5607 = !DILocation(line: 351, column: 2, scope: !5559)
!5608 = !DILocation(line: 351, column: 7, scope: !5559)
!5609 = !DILocation(line: 351, column: 15, scope: !5559)
!5610 = !DILocation(line: 351, column: 23, scope: !5559)
!5611 = !DILocation(line: 353, column: 6, scope: !5612)
!5612 = distinct !DILexicalBlock(scope: !5559, file: !3, line: 353, column: 6)
!5613 = !DILocation(line: 353, column: 11, scope: !5612)
!5614 = !DILocation(line: 353, column: 16, scope: !5612)
!5615 = !DILocation(line: 353, column: 6, scope: !5559)
!5616 = !DILocation(line: 354, column: 3, scope: !5612)
!5617 = !DILocation(line: 354, column: 8, scope: !5612)
!5618 = !DILocation(line: 354, column: 13, scope: !5612)
!5619 = !DILocation(line: 354, column: 25, scope: !5612)
!5620 = !DILocation(line: 356, column: 24, scope: !5612)
!5621 = !DILocation(line: 356, column: 29, scope: !5612)
!5622 = !DILocation(line: 356, column: 3, scope: !5612)
!5623 = !DILocation(line: 358, column: 21, scope: !5559)
!5624 = !DILocation(line: 358, column: 7, scope: !5559)
!5625 = !DILocation(line: 358, column: 5, scope: !5559)
!5626 = !DILocation(line: 359, column: 6, scope: !5627)
!5627 = distinct !DILexicalBlock(scope: !5559, file: !3, line: 359, column: 6)
!5628 = !DILocation(line: 359, column: 9, scope: !5627)
!5629 = !DILocation(line: 359, column: 6, scope: !5559)
!5630 = !DILocation(line: 360, column: 7, scope: !5631)
!5631 = distinct !DILexicalBlock(scope: !5632, file: !3, line: 360, column: 7)
!5632 = distinct !DILexicalBlock(scope: !5627, file: !3, line: 359, column: 18)
!5633 = !DILocation(line: 360, column: 11, scope: !5631)
!5634 = !DILocation(line: 360, column: 16, scope: !5631)
!5635 = !DILocation(line: 360, column: 7, scope: !5632)
!5636 = !DILocation(line: 361, column: 4, scope: !5631)
!5637 = !DILocation(line: 361, column: 8, scope: !5631)
!5638 = !DILocation(line: 361, column: 13, scope: !5631)
!5639 = !DILocation(line: 361, column: 25, scope: !5631)
!5640 = !DILocation(line: 362, column: 19, scope: !5632)
!5641 = !DILocation(line: 362, column: 3, scope: !5632)
!5642 = !DILocation(line: 363, column: 2, scope: !5632)
!5643 = !DILocation(line: 364, column: 12, scope: !5559)
!5644 = !DILocation(line: 364, column: 17, scope: !5559)
!5645 = !DILocation(line: 364, column: 2, scope: !5559)
!5646 = !DILocation(line: 366, column: 1, scope: !5559)
!5647 = !DILocation(line: 365, column: 2, scope: !5559)
!5648 = distinct !DISubprogram(name: "unset_locked_termios", scope: !3, file: !3, line: 214, type: !4223, scopeLine: 215, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5649)
!5649 = !{!5650, !5651, !5652, !5653, !5654}
!5650 = !DILocalVariable(name: "tty", arg: 1, scope: !5648, file: !3, line: 214, type: !3552)
!5651 = !DILocalVariable(name: "old", arg: 2, scope: !5648, file: !3, line: 214, type: !4225)
!5652 = !DILocalVariable(name: "termios", scope: !5648, file: !3, line: 216, type: !4167)
!5653 = !DILocalVariable(name: "locked", scope: !5648, file: !3, line: 217, type: !4167)
!5654 = !DILocalVariable(name: "i", scope: !5648, file: !3, line: 218, type: !109)
!5655 = !DILocation(line: 214, column: 53, scope: !5648)
!5656 = !DILocation(line: 214, column: 81, scope: !5648)
!5657 = !DILocation(line: 216, column: 2, scope: !5648)
!5658 = !DILocation(line: 216, column: 19, scope: !5648)
!5659 = !DILocation(line: 216, column: 30, scope: !5648)
!5660 = !DILocation(line: 216, column: 35, scope: !5648)
!5661 = !DILocation(line: 217, column: 2, scope: !5648)
!5662 = !DILocation(line: 217, column: 19, scope: !5648)
!5663 = !DILocation(line: 217, column: 30, scope: !5648)
!5664 = !DILocation(line: 217, column: 35, scope: !5648)
!5665 = !DILocation(line: 218, column: 2, scope: !5648)
!5666 = !DILocation(line: 218, column: 6, scope: !5648)
!5667 = !DILocation(line: 222, column: 2, scope: !5648)
!5668 = !DILocation(line: 223, column: 2, scope: !5648)
!5669 = !DILocation(line: 224, column: 2, scope: !5648)
!5670 = !DILocation(line: 225, column: 2, scope: !5648)
!5671 = !DILocation(line: 226, column: 20, scope: !5648)
!5672 = !DILocation(line: 226, column: 28, scope: !5648)
!5673 = !DILocation(line: 226, column: 37, scope: !5648)
!5674 = !DILocation(line: 226, column: 42, scope: !5648)
!5675 = !DILocation(line: 226, column: 51, scope: !5648)
!5676 = !DILocation(line: 226, column: 60, scope: !5648)
!5677 = !DILocation(line: 226, column: 2, scope: !5648)
!5678 = !DILocation(line: 226, column: 11, scope: !5648)
!5679 = !DILocation(line: 226, column: 18, scope: !5648)
!5680 = !DILocation(line: 227, column: 9, scope: !5681)
!5681 = distinct !DILexicalBlock(scope: !5648, file: !3, line: 227, column: 2)
!5682 = !DILocation(line: 227, column: 7, scope: !5681)
!5683 = !DILocation(line: 227, column: 14, scope: !5684)
!5684 = distinct !DILexicalBlock(scope: !5681, file: !3, line: 227, column: 2)
!5685 = !DILocation(line: 227, column: 16, scope: !5684)
!5686 = !DILocation(line: 227, column: 2, scope: !5681)
!5687 = !DILocation(line: 228, column: 22, scope: !5684)
!5688 = !DILocation(line: 228, column: 30, scope: !5684)
!5689 = !DILocation(line: 228, column: 35, scope: !5684)
!5690 = !DILocation(line: 229, column: 4, scope: !5684)
!5691 = !DILocation(line: 229, column: 9, scope: !5684)
!5692 = !DILocation(line: 229, column: 14, scope: !5684)
!5693 = !DILocation(line: 229, column: 19, scope: !5684)
!5694 = !DILocation(line: 229, column: 28, scope: !5684)
!5695 = !DILocation(line: 229, column: 33, scope: !5684)
!5696 = !DILocation(line: 228, column: 3, scope: !5684)
!5697 = !DILocation(line: 228, column: 12, scope: !5684)
!5698 = !DILocation(line: 228, column: 17, scope: !5684)
!5699 = !DILocation(line: 228, column: 20, scope: !5684)
!5700 = !DILocation(line: 227, column: 25, scope: !5684)
!5701 = !DILocation(line: 227, column: 2, scope: !5684)
!5702 = distinct !{!5702, !5686, !5703, !5704, !5408}
!5703 = !DILocation(line: 229, column: 34, scope: !5681)
!5704 = !{!"llvm.loop.mustprogress"}
!5705 = !DILocation(line: 231, column: 1, scope: !5648)
!5706 = !DISubprogram(name: "tty_ldisc_ref", scope: !4290, file: !4290, line: 279, type: !5707, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5707 = !DISubroutineType(types: !5708)
!5708 = !{!4288, !3552}
!5709 = !DISubprogram(name: "tty_ldisc_deref", scope: !4290, file: !4290, line: 280, type: !5710, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5710 = !DISubroutineType(types: !5711)
!5711 = !{null, !4288}
!5712 = distinct !DISubprogram(name: "user_termio_to_kernel_termios", scope: !3, file: !3, line: 373, type: !5713, scopeLine: 375, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5715)
!5713 = !DISubroutineType(types: !5714)
!5714 = !{!109, !4167, !196}
!5715 = !{!5716, !5717, !5718}
!5716 = !DILocalVariable(name: "termios", arg: 1, scope: !5712, file: !3, line: 373, type: !4167)
!5717 = !DILocalVariable(name: "termio", arg: 2, scope: !5712, file: !3, line: 374, type: !196)
!5718 = !DILocalVariable(name: "v", scope: !5712, file: !3, line: 376, type: !197)
!5719 = !DILocation(line: 373, column: 59, scope: !5712)
!5720 = !DILocation(line: 374, column: 29, scope: !5712)
!5721 = !DILocation(line: 376, column: 2, scope: !5712)
!5722 = !DILocation(line: 376, column: 16, scope: !5712)
!5723 = !DILocation(line: 378, column: 25, scope: !5724)
!5724 = distinct !DILexicalBlock(scope: !5712, file: !3, line: 378, column: 6)
!5725 = !DILocation(line: 378, column: 6, scope: !5724)
!5726 = !DILocation(line: 378, column: 6, scope: !5712)
!5727 = !DILocation(line: 379, column: 3, scope: !5724)
!5728 = !DILocation(line: 381, column: 35, scope: !5712)
!5729 = !DILocation(line: 381, column: 44, scope: !5712)
!5730 = !DILocation(line: 381, column: 33, scope: !5712)
!5731 = !DILocation(line: 381, column: 57, scope: !5712)
!5732 = !DILocation(line: 381, column: 55, scope: !5712)
!5733 = !DILocation(line: 381, column: 53, scope: !5712)
!5734 = !DILocation(line: 381, column: 2, scope: !5712)
!5735 = !DILocation(line: 381, column: 11, scope: !5712)
!5736 = !DILocation(line: 381, column: 19, scope: !5712)
!5737 = !DILocation(line: 382, column: 35, scope: !5712)
!5738 = !DILocation(line: 382, column: 44, scope: !5712)
!5739 = !DILocation(line: 382, column: 33, scope: !5712)
!5740 = !DILocation(line: 382, column: 57, scope: !5712)
!5741 = !DILocation(line: 382, column: 55, scope: !5712)
!5742 = !DILocation(line: 382, column: 53, scope: !5712)
!5743 = !DILocation(line: 382, column: 2, scope: !5712)
!5744 = !DILocation(line: 382, column: 11, scope: !5712)
!5745 = !DILocation(line: 382, column: 19, scope: !5712)
!5746 = !DILocation(line: 383, column: 35, scope: !5712)
!5747 = !DILocation(line: 383, column: 44, scope: !5712)
!5748 = !DILocation(line: 383, column: 33, scope: !5712)
!5749 = !DILocation(line: 383, column: 57, scope: !5712)
!5750 = !DILocation(line: 383, column: 55, scope: !5712)
!5751 = !DILocation(line: 383, column: 53, scope: !5712)
!5752 = !DILocation(line: 383, column: 2, scope: !5712)
!5753 = !DILocation(line: 383, column: 11, scope: !5712)
!5754 = !DILocation(line: 383, column: 19, scope: !5712)
!5755 = !DILocation(line: 384, column: 35, scope: !5712)
!5756 = !DILocation(line: 384, column: 44, scope: !5712)
!5757 = !DILocation(line: 384, column: 33, scope: !5712)
!5758 = !DILocation(line: 384, column: 57, scope: !5712)
!5759 = !DILocation(line: 384, column: 55, scope: !5712)
!5760 = !DILocation(line: 384, column: 53, scope: !5712)
!5761 = !DILocation(line: 384, column: 2, scope: !5712)
!5762 = !DILocation(line: 384, column: 11, scope: !5712)
!5763 = !DILocation(line: 384, column: 19, scope: !5712)
!5764 = !DILocation(line: 385, column: 34, scope: !5712)
!5765 = !DILocation(line: 385, column: 43, scope: !5712)
!5766 = !DILocation(line: 385, column: 32, scope: !5712)
!5767 = !DILocation(line: 385, column: 56, scope: !5712)
!5768 = !DILocation(line: 385, column: 54, scope: !5712)
!5769 = !DILocation(line: 385, column: 52, scope: !5712)
!5770 = !DILocation(line: 385, column: 20, scope: !5712)
!5771 = !DILocation(line: 385, column: 2, scope: !5712)
!5772 = !DILocation(line: 385, column: 11, scope: !5712)
!5773 = !DILocation(line: 385, column: 18, scope: !5712)
!5774 = !DILocation(line: 386, column: 9, scope: !5712)
!5775 = !DILocation(line: 386, column: 18, scope: !5712)
!5776 = !DILocation(line: 386, column: 2, scope: !5712)
!5777 = !DILocation(line: 386, column: 26, scope: !5712)
!5778 = !DILocation(line: 387, column: 2, scope: !5712)
!5779 = !DILocation(line: 388, column: 1, scope: !5712)
!5780 = distinct !DISubprogram(name: "copy_from_user", scope: !5781, file: !5781, line: 180, type: !5782, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5784)
!5781 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c6a99e19cfced98603230c2c71e2e3e")
!5782 = !DISubroutineType(types: !5783)
!5783 = !{!187, !147, !1931, !187}
!5784 = !{!5785, !5786, !5787}
!5785 = !DILocalVariable(name: "to", arg: 1, scope: !5780, file: !5781, line: 180, type: !147)
!5786 = !DILocalVariable(name: "from", arg: 2, scope: !5780, file: !5781, line: 180, type: !1931)
!5787 = !DILocalVariable(name: "n", arg: 3, scope: !5780, file: !5781, line: 180, type: !187)
!5788 = !DILocation(line: 180, column: 22, scope: !5780)
!5789 = !DILocation(line: 180, column: 45, scope: !5780)
!5790 = !DILocation(line: 180, column: 65, scope: !5780)
!5791 = !DILocation(line: 182, column: 22, scope: !5792)
!5792 = distinct !DILexicalBlock(scope: !5780, file: !5781, line: 182, column: 6)
!5793 = !DILocation(line: 182, column: 26, scope: !5792)
!5794 = !DILocation(line: 182, column: 6, scope: !5792)
!5795 = !DILocation(line: 182, column: 6, scope: !5780)
!5796 = !DILocation(line: 183, column: 23, scope: !5792)
!5797 = !DILocation(line: 183, column: 27, scope: !5792)
!5798 = !DILocation(line: 183, column: 33, scope: !5792)
!5799 = !DILocation(line: 183, column: 7, scope: !5792)
!5800 = !DILocation(line: 183, column: 5, scope: !5792)
!5801 = !DILocation(line: 183, column: 3, scope: !5792)
!5802 = !DILocation(line: 184, column: 9, scope: !5780)
!5803 = !DILocation(line: 184, column: 2, scope: !5780)
!5804 = distinct !DISubprogram(name: "kernel_termios_to_user_termio", scope: !3, file: !3, line: 393, type: !5805, scopeLine: 395, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5807)
!5805 = !DISubroutineType(types: !5806)
!5806 = !{!109, !196, !4167}
!5807 = !{!5808, !5809, !5810}
!5808 = !DILocalVariable(name: "termio", arg: 1, scope: !5804, file: !3, line: 393, type: !196)
!5809 = !DILocalVariable(name: "termios", arg: 2, scope: !5804, file: !3, line: 394, type: !4167)
!5810 = !DILocalVariable(name: "v", scope: !5804, file: !3, line: 396, type: !197)
!5811 = !DILocation(line: 393, column: 64, scope: !5804)
!5812 = !DILocation(line: 394, column: 24, scope: !5804)
!5813 = !DILocation(line: 396, column: 2, scope: !5804)
!5814 = !DILocation(line: 396, column: 16, scope: !5804)
!5815 = !DILocation(line: 397, column: 2, scope: !5804)
!5816 = !DILocation(line: 398, column: 14, scope: !5804)
!5817 = !DILocation(line: 398, column: 23, scope: !5804)
!5818 = !DILocation(line: 398, column: 4, scope: !5804)
!5819 = !DILocation(line: 398, column: 12, scope: !5804)
!5820 = !DILocation(line: 399, column: 14, scope: !5804)
!5821 = !DILocation(line: 399, column: 23, scope: !5804)
!5822 = !DILocation(line: 399, column: 4, scope: !5804)
!5823 = !DILocation(line: 399, column: 12, scope: !5804)
!5824 = !DILocation(line: 400, column: 14, scope: !5804)
!5825 = !DILocation(line: 400, column: 23, scope: !5804)
!5826 = !DILocation(line: 400, column: 4, scope: !5804)
!5827 = !DILocation(line: 400, column: 12, scope: !5804)
!5828 = !DILocation(line: 401, column: 14, scope: !5804)
!5829 = !DILocation(line: 401, column: 23, scope: !5804)
!5830 = !DILocation(line: 401, column: 4, scope: !5804)
!5831 = !DILocation(line: 401, column: 12, scope: !5804)
!5832 = !DILocation(line: 402, column: 13, scope: !5804)
!5833 = !DILocation(line: 402, column: 22, scope: !5804)
!5834 = !DILocation(line: 402, column: 4, scope: !5804)
!5835 = !DILocation(line: 402, column: 11, scope: !5804)
!5836 = !DILocation(line: 403, column: 11, scope: !5804)
!5837 = !DILocation(line: 403, column: 2, scope: !5804)
!5838 = !DILocation(line: 403, column: 17, scope: !5804)
!5839 = !DILocation(line: 403, column: 26, scope: !5804)
!5840 = !DILocation(line: 404, column: 22, scope: !5804)
!5841 = !DILocation(line: 404, column: 9, scope: !5804)
!5842 = !DILocation(line: 405, column: 1, scope: !5804)
!5843 = !DILocation(line: 404, column: 2, scope: !5804)
!5844 = distinct !DISubprogram(name: "copy_to_user", scope: !5781, file: !5781, line: 188, type: !5782, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5845)
!5845 = !{!5846, !5847, !5848}
!5846 = !DILocalVariable(name: "to", arg: 1, scope: !5844, file: !5781, line: 188, type: !147)
!5847 = !DILocalVariable(name: "from", arg: 2, scope: !5844, file: !5781, line: 188, type: !1931)
!5848 = !DILocalVariable(name: "n", arg: 3, scope: !5844, file: !5781, line: 188, type: !187)
!5849 = !DILocation(line: 188, column: 27, scope: !5844)
!5850 = !DILocation(line: 188, column: 43, scope: !5844)
!5851 = !DILocation(line: 188, column: 63, scope: !5844)
!5852 = !DILocation(line: 190, column: 22, scope: !5853)
!5853 = distinct !DILexicalBlock(scope: !5844, file: !5781, line: 190, column: 6)
!5854 = !DILocation(line: 190, column: 28, scope: !5853)
!5855 = !DILocation(line: 190, column: 6, scope: !5853)
!5856 = !DILocation(line: 190, column: 6, scope: !5844)
!5857 = !DILocation(line: 191, column: 21, scope: !5853)
!5858 = !DILocation(line: 191, column: 25, scope: !5853)
!5859 = !DILocation(line: 191, column: 31, scope: !5853)
!5860 = !DILocation(line: 191, column: 7, scope: !5853)
!5861 = !DILocation(line: 191, column: 5, scope: !5853)
!5862 = !DILocation(line: 191, column: 3, scope: !5853)
!5863 = !DILocation(line: 192, column: 9, scope: !5844)
!5864 = !DILocation(line: 192, column: 2, scope: !5844)
!5865 = distinct !DISubprogram(name: "user_termios_to_kernel_termios", scope: !3, file: !3, line: 408, type: !5866, scopeLine: 410, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5868)
!5866 = !DISubroutineType(types: !5867)
!5867 = !{!109, !4167, !166}
!5868 = !{!5869, !5870}
!5869 = !DILocalVariable(name: "k", arg: 1, scope: !5865, file: !3, line: 408, type: !4167)
!5870 = !DILocalVariable(name: "u", arg: 2, scope: !5865, file: !3, line: 409, type: !166)
!5871 = !DILocation(line: 408, column: 60, scope: !5865)
!5872 = !DILocation(line: 409, column: 32, scope: !5865)
!5873 = !DILocation(line: 411, column: 24, scope: !5865)
!5874 = !DILocation(line: 411, column: 27, scope: !5865)
!5875 = !DILocation(line: 411, column: 9, scope: !5865)
!5876 = !DILocation(line: 411, column: 2, scope: !5865)
!5877 = distinct !DISubprogram(name: "kernel_termios_to_user_termios", scope: !3, file: !3, line: 413, type: !5878, scopeLine: 415, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5880)
!5878 = !DISubroutineType(types: !5879)
!5879 = !{!109, !166, !4167}
!5880 = !{!5881, !5882}
!5881 = !DILocalVariable(name: "u", arg: 1, scope: !5877, file: !3, line: 413, type: !166)
!5882 = !DILocalVariable(name: "k", arg: 2, scope: !5877, file: !3, line: 414, type: !4167)
!5883 = !DILocation(line: 413, column: 67, scope: !5877)
!5884 = !DILocation(line: 414, column: 25, scope: !5877)
!5885 = !DILocation(line: 416, column: 22, scope: !5877)
!5886 = !DILocation(line: 416, column: 25, scope: !5877)
!5887 = !DILocation(line: 416, column: 9, scope: !5877)
!5888 = !DILocation(line: 416, column: 2, scope: !5877)
!5889 = distinct !DISubprogram(name: "user_termios_to_kernel_termios_1", scope: !3, file: !3, line: 418, type: !5890, scopeLine: 420, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5892)
!5890 = !DISubroutineType(types: !5891)
!5891 = !{!109, !4167, !149}
!5892 = !{!5893, !5894}
!5893 = !DILocalVariable(name: "k", arg: 1, scope: !5889, file: !3, line: 418, type: !4167)
!5894 = !DILocalVariable(name: "u", arg: 2, scope: !5889, file: !3, line: 419, type: !149)
!5895 = !DILocation(line: 418, column: 62, scope: !5889)
!5896 = !DILocation(line: 419, column: 33, scope: !5889)
!5897 = !DILocation(line: 421, column: 24, scope: !5889)
!5898 = !DILocation(line: 421, column: 27, scope: !5889)
!5899 = !DILocation(line: 421, column: 9, scope: !5889)
!5900 = !DILocation(line: 421, column: 2, scope: !5889)
!5901 = distinct !DISubprogram(name: "kernel_termios_to_user_termios_1", scope: !3, file: !3, line: 423, type: !5902, scopeLine: 425, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5904)
!5902 = !DISubroutineType(types: !5903)
!5903 = !{!109, !149, !4167}
!5904 = !{!5905, !5906}
!5905 = !DILocalVariable(name: "u", arg: 1, scope: !5901, file: !3, line: 423, type: !149)
!5906 = !DILocalVariable(name: "k", arg: 2, scope: !5901, file: !3, line: 424, type: !4167)
!5907 = !DILocation(line: 423, column: 68, scope: !5901)
!5908 = !DILocation(line: 424, column: 27, scope: !5901)
!5909 = !DILocation(line: 426, column: 22, scope: !5901)
!5910 = !DILocation(line: 426, column: 25, scope: !5901)
!5911 = !DILocation(line: 426, column: 9, scope: !5901)
!5912 = !DILocation(line: 426, column: 2, scope: !5901)
!5913 = distinct !DISubprogram(name: "tty_mode_ioctl", scope: !3, file: !3, line: 775, type: !4215, scopeLine: 776, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5914)
!5914 = !{!5915, !5916, !5917, !5918, !5919, !5920, !5921, !5922, !5926, !5927, !5928, !5929, !5930, !5934, !5935}
!5915 = !DILocalVariable(name: "tty", arg: 1, scope: !5913, file: !3, line: 775, type: !3552)
!5916 = !DILocalVariable(name: "cmd", arg: 2, scope: !5913, file: !3, line: 775, type: !7)
!5917 = !DILocalVariable(name: "arg", arg: 3, scope: !5913, file: !3, line: 775, type: !187)
!5918 = !DILocalVariable(name: "real_tty", scope: !5913, file: !3, line: 777, type: !3552)
!5919 = !DILocalVariable(name: "p", scope: !5913, file: !3, line: 778, type: !147)
!5920 = !DILocalVariable(name: "ret", scope: !5913, file: !3, line: 779, type: !109)
!5921 = !DILocalVariable(name: "kterm", scope: !5913, file: !3, line: 780, type: !4027)
!5922 = !DILocalVariable(name: "__ret_pu", scope: !5923, file: !3, line: 890, type: !109)
!5923 = distinct !DILexicalBlock(scope: !5924, file: !3, line: 890, column: 9)
!5924 = distinct !DILexicalBlock(scope: !5925, file: !3, line: 890, column: 9)
!5925 = distinct !DILexicalBlock(scope: !5913, file: !3, line: 788, column: 15)
!5926 = !DILocalVariable(name: "__ptr_pu", scope: !5923, file: !3, line: 890, type: !147)
!5927 = !DILocalVariable(name: "__val_pu", scope: !5923, file: !3, line: 890, type: !109)
!5928 = !DILocalVariable(name: "__x", scope: !5923, file: !3, line: 890, type: !109)
!5929 = !DILocalVariable(name: "__ptr", scope: !5923, file: !3, line: 890, type: !178)
!5930 = !DILocalVariable(name: "__ret_gu", scope: !5931, file: !3, line: 894, type: !109)
!5931 = distinct !DILexicalBlock(scope: !5932, file: !3, line: 894, column: 7)
!5932 = distinct !DILexicalBlock(scope: !5933, file: !3, line: 894, column: 7)
!5933 = distinct !DILexicalBlock(scope: !5925, file: !3, line: 894, column: 7)
!5934 = !DILocalVariable(name: "__val_gu", scope: !5931, file: !3, line: 894, type: !7)
!5935 = !DILocalVariable(name: "__tmp", scope: !5936, file: !3, line: 894, type: !180)
!5936 = distinct !DILexicalBlock(scope: !5931, file: !3, line: 894, column: 7)
!5937 = !DILocation(line: 775, column: 39, scope: !5913)
!5938 = !DILocation(line: 775, column: 57, scope: !5913)
!5939 = !DILocation(line: 775, column: 76, scope: !5913)
!5940 = !DILocation(line: 777, column: 2, scope: !5913)
!5941 = !DILocation(line: 777, column: 21, scope: !5913)
!5942 = !DILocation(line: 778, column: 2, scope: !5913)
!5943 = !DILocation(line: 778, column: 15, scope: !5913)
!5944 = !DILocation(line: 778, column: 34, scope: !5913)
!5945 = !DILocation(line: 778, column: 19, scope: !5913)
!5946 = !DILocation(line: 779, column: 2, scope: !5913)
!5947 = !DILocation(line: 779, column: 6, scope: !5913)
!5948 = !DILocation(line: 780, column: 2, scope: !5913)
!5949 = !DILocation(line: 780, column: 18, scope: !5913)
!5950 = !DILocation(line: 782, column: 6, scope: !5951)
!5951 = distinct !DILexicalBlock(scope: !5913, file: !3, line: 782, column: 6)
!5952 = !DILocation(line: 782, column: 11, scope: !5951)
!5953 = !DILocation(line: 782, column: 19, scope: !5951)
!5954 = !DILocation(line: 782, column: 24, scope: !5951)
!5955 = !DILocation(line: 782, column: 47, scope: !5951)
!5956 = !DILocation(line: 783, column: 6, scope: !5951)
!5957 = !DILocation(line: 783, column: 11, scope: !5951)
!5958 = !DILocation(line: 783, column: 19, scope: !5951)
!5959 = !DILocation(line: 783, column: 27, scope: !5951)
!5960 = !DILocation(line: 782, column: 6, scope: !5913)
!5961 = !DILocation(line: 784, column: 14, scope: !5951)
!5962 = !DILocation(line: 784, column: 19, scope: !5951)
!5963 = !DILocation(line: 784, column: 12, scope: !5951)
!5964 = !DILocation(line: 784, column: 3, scope: !5951)
!5965 = !DILocation(line: 786, column: 14, scope: !5951)
!5966 = !DILocation(line: 786, column: 12, scope: !5951)
!5967 = !DILocation(line: 788, column: 10, scope: !5913)
!5968 = !DILocation(line: 788, column: 2, scope: !5913)
!5969 = !DILocation(line: 809, column: 22, scope: !5925)
!5970 = !DILocation(line: 809, column: 32, scope: !5925)
!5971 = !DILocation(line: 809, column: 10, scope: !5925)
!5972 = !DILocation(line: 809, column: 3, scope: !5925)
!5973 = !DILocation(line: 811, column: 22, scope: !5925)
!5974 = !DILocation(line: 811, column: 32, scope: !5925)
!5975 = !DILocation(line: 811, column: 10, scope: !5925)
!5976 = !DILocation(line: 811, column: 3, scope: !5925)
!5977 = !DILocation(line: 813, column: 22, scope: !5925)
!5978 = !DILocation(line: 813, column: 32, scope: !5925)
!5979 = !DILocation(line: 813, column: 10, scope: !5925)
!5980 = !DILocation(line: 813, column: 3, scope: !5925)
!5981 = !DILocation(line: 822, column: 16, scope: !5925)
!5982 = !DILocation(line: 822, column: 3, scope: !5925)
!5983 = !DILocation(line: 823, column: 65, scope: !5984)
!5984 = distinct !DILexicalBlock(scope: !5925, file: !3, line: 823, column: 7)
!5985 = !DILocation(line: 823, column: 40, scope: !5984)
!5986 = !DILocation(line: 823, column: 7, scope: !5984)
!5987 = !DILocation(line: 823, column: 7, scope: !5925)
!5988 = !DILocation(line: 824, column: 8, scope: !5984)
!5989 = !DILocation(line: 824, column: 4, scope: !5984)
!5990 = !DILocation(line: 825, column: 10, scope: !5925)
!5991 = !DILocation(line: 825, column: 3, scope: !5925)
!5992 = !DILocation(line: 827, column: 16, scope: !5925)
!5993 = !DILocation(line: 827, column: 3, scope: !5925)
!5994 = !DILocation(line: 828, column: 64, scope: !5995)
!5995 = distinct !DILexicalBlock(scope: !5925, file: !3, line: 828, column: 7)
!5996 = !DILocation(line: 828, column: 38, scope: !5995)
!5997 = !DILocation(line: 828, column: 7, scope: !5995)
!5998 = !DILocation(line: 828, column: 7, scope: !5925)
!5999 = !DILocation(line: 829, column: 8, scope: !5995)
!6000 = !DILocation(line: 829, column: 4, scope: !5995)
!6001 = !DILocation(line: 830, column: 10, scope: !5925)
!6002 = !DILocation(line: 830, column: 3, scope: !5925)
!6003 = !DILocation(line: 832, column: 22, scope: !5925)
!6004 = !DILocation(line: 832, column: 32, scope: !5925)
!6005 = !DILocation(line: 832, column: 10, scope: !5925)
!6006 = !DILocation(line: 832, column: 3, scope: !5925)
!6007 = !DILocation(line: 834, column: 22, scope: !5925)
!6008 = !DILocation(line: 834, column: 32, scope: !5925)
!6009 = !DILocation(line: 834, column: 10, scope: !5925)
!6010 = !DILocation(line: 834, column: 3, scope: !5925)
!6011 = !DILocation(line: 836, column: 22, scope: !5925)
!6012 = !DILocation(line: 836, column: 32, scope: !5925)
!6013 = !DILocation(line: 836, column: 10, scope: !5925)
!6014 = !DILocation(line: 836, column: 3, scope: !5925)
!6015 = !DILocation(line: 839, column: 21, scope: !5925)
!6016 = !DILocation(line: 839, column: 31, scope: !5925)
!6017 = !DILocation(line: 839, column: 10, scope: !5925)
!6018 = !DILocation(line: 839, column: 3, scope: !5925)
!6019 = !DILocation(line: 841, column: 22, scope: !5925)
!6020 = !DILocation(line: 841, column: 32, scope: !5925)
!6021 = !DILocation(line: 841, column: 10, scope: !5925)
!6022 = !DILocation(line: 841, column: 3, scope: !5925)
!6023 = !DILocation(line: 843, column: 22, scope: !5925)
!6024 = !DILocation(line: 843, column: 32, scope: !5925)
!6025 = !DILocation(line: 843, column: 10, scope: !5925)
!6026 = !DILocation(line: 843, column: 3, scope: !5925)
!6027 = !DILocation(line: 845, column: 22, scope: !5925)
!6028 = !DILocation(line: 845, column: 32, scope: !5925)
!6029 = !DILocation(line: 845, column: 10, scope: !5925)
!6030 = !DILocation(line: 845, column: 3, scope: !5925)
!6031 = !DILocation(line: 865, column: 23, scope: !5925)
!6032 = !DILocation(line: 865, column: 3, scope: !5925)
!6033 = !DILocation(line: 866, column: 65, scope: !6034)
!6034 = distinct !DILexicalBlock(scope: !5925, file: !3, line: 866, column: 7)
!6035 = !DILocation(line: 866, column: 40, scope: !6034)
!6036 = !DILocation(line: 866, column: 7, scope: !6034)
!6037 = !DILocation(line: 866, column: 7, scope: !5925)
!6038 = !DILocation(line: 867, column: 8, scope: !6034)
!6039 = !DILocation(line: 867, column: 4, scope: !6034)
!6040 = !DILocation(line: 868, column: 10, scope: !5925)
!6041 = !DILocation(line: 868, column: 3, scope: !5925)
!6042 = !DILocation(line: 870, column: 8, scope: !6043)
!6043 = distinct !DILexicalBlock(scope: !5925, file: !3, line: 870, column: 7)
!6044 = !DILocation(line: 870, column: 7, scope: !5925)
!6045 = !DILocation(line: 871, column: 4, scope: !6043)
!6046 = !DILocation(line: 872, column: 23, scope: !5925)
!6047 = !DILocation(line: 872, column: 3, scope: !5925)
!6048 = !DILocation(line: 874, column: 39, scope: !6049)
!6049 = distinct !DILexicalBlock(scope: !5925, file: !3, line: 873, column: 7)
!6050 = !DILocation(line: 874, column: 13, scope: !6049)
!6051 = !DILocation(line: 873, column: 7, scope: !6049)
!6052 = !DILocation(line: 873, column: 7, scope: !5925)
!6053 = !DILocation(line: 875, column: 4, scope: !6049)
!6054 = !DILocation(line: 876, column: 15, scope: !5925)
!6055 = !DILocation(line: 876, column: 25, scope: !5925)
!6056 = !DILocation(line: 876, column: 3, scope: !5925)
!6057 = !DILocation(line: 877, column: 3, scope: !5925)
!6058 = !DILocation(line: 877, column: 13, scope: !5925)
!6059 = !DILocation(line: 877, column: 30, scope: !5925)
!6060 = !DILocation(line: 878, column: 13, scope: !5925)
!6061 = !DILocation(line: 878, column: 23, scope: !5925)
!6062 = !DILocation(line: 878, column: 3, scope: !5925)
!6063 = !DILocation(line: 879, column: 10, scope: !5925)
!6064 = !DILocation(line: 879, column: 3, scope: !5925)
!6065 = !DILocation(line: 886, column: 3, scope: !5925)
!6066 = !DILocation(line: 889, column: 16, scope: !5925)
!6067 = !DILocation(line: 889, column: 3, scope: !5925)
!6068 = !DILocation(line: 890, column: 9, scope: !5924)
!6069 = !DILocation(line: 890, column: 9, scope: !5923)
!6070 = !{i64 2154835037}
!6071 = !DILocation(line: 890, column: 9, scope: !6072)
!6072 = distinct !DILexicalBlock(scope: !5923, file: !3, line: 890, column: 9)
!6073 = !DILocation(line: 890, column: 9, scope: !5925)
!6074 = !DILocation(line: 890, column: 7, scope: !5925)
!6075 = !DILocation(line: 892, column: 10, scope: !5925)
!6076 = !DILocation(line: 892, column: 3, scope: !5925)
!6077 = !DILocation(line: 894, column: 7, scope: !5932)
!6078 = !DILocation(line: 894, column: 7, scope: !5931)
!6079 = !{i64 2154836038}
!6080 = !DILocation(line: 894, column: 7, scope: !5936)
!6081 = !DILocation(line: 894, column: 7, scope: !5933)
!6082 = !DILocation(line: 894, column: 7, scope: !5925)
!6083 = !DILocation(line: 895, column: 4, scope: !5933)
!6084 = !DILocation(line: 896, column: 29, scope: !5925)
!6085 = !DILocation(line: 896, column: 39, scope: !5925)
!6086 = !DILocation(line: 896, column: 10, scope: !5925)
!6087 = !DILocation(line: 896, column: 3, scope: !5925)
!6088 = !DILocation(line: 898, column: 3, scope: !5925)
!6089 = !DILocation(line: 900, column: 1, scope: !5913)
!6090 = distinct !DISubprogram(name: "set_termios", scope: !3, file: !3, line: 456, type: !6091, scopeLine: 457, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6093)
!6091 = !DISubroutineType(types: !6092)
!6092 = !{!109, !3552, !147, !109}
!6093 = !{!6094, !6095, !6096, !6097, !6098, !6099, !6100, !6103, !6105, !6108, !6109, !6113}
!6094 = !DILocalVariable(name: "tty", arg: 1, scope: !6090, file: !3, line: 456, type: !3552)
!6095 = !DILocalVariable(name: "arg", arg: 2, scope: !6090, file: !3, line: 456, type: !147)
!6096 = !DILocalVariable(name: "opt", arg: 3, scope: !6090, file: !3, line: 456, type: !109)
!6097 = !DILocalVariable(name: "tmp_termios", scope: !6090, file: !3, line: 458, type: !4027)
!6098 = !DILocalVariable(name: "ld", scope: !6090, file: !3, line: 459, type: !4288)
!6099 = !DILocalVariable(name: "retval", scope: !6090, file: !3, line: 460, type: !109)
!6100 = !DILabel(scope: !6101, name: "retry_write_wait", file: !3, line: 495)
!6101 = distinct !DILexicalBlock(scope: !6102, file: !3, line: 494, column: 42)
!6102 = distinct !DILexicalBlock(scope: !6090, file: !3, line: 494, column: 6)
!6103 = !DILocalVariable(name: "__ret", scope: !6104, file: !3, line: 496, type: !109)
!6104 = distinct !DILexicalBlock(scope: !6101, file: !3, line: 496, column: 12)
!6105 = !DILocalVariable(name: "__wq_entry", scope: !6106, file: !3, line: 496, type: !5360)
!6106 = distinct !DILexicalBlock(scope: !6107, file: !3, line: 496, column: 12)
!6107 = distinct !DILexicalBlock(scope: !6104, file: !3, line: 496, column: 12)
!6108 = !DILocalVariable(name: "__ret", scope: !6106, file: !3, line: 496, type: !148)
!6109 = !DILocalVariable(name: "__int", scope: !6110, file: !3, line: 496, type: !148)
!6110 = distinct !DILexicalBlock(scope: !6111, file: !3, line: 496, column: 12)
!6111 = distinct !DILexicalBlock(scope: !6112, file: !3, line: 496, column: 12)
!6112 = distinct !DILexicalBlock(scope: !6106, file: !3, line: 496, column: 12)
!6113 = !DILabel(scope: !6106, name: "__out", file: !3, line: 496)
!6114 = !DILocation(line: 456, column: 43, scope: !6090)
!6115 = !DILocation(line: 456, column: 61, scope: !6090)
!6116 = !DILocation(line: 456, column: 70, scope: !6090)
!6117 = !DILocation(line: 458, column: 2, scope: !6090)
!6118 = !DILocation(line: 458, column: 18, scope: !6090)
!6119 = !DILocation(line: 459, column: 2, scope: !6090)
!6120 = !DILocation(line: 459, column: 20, scope: !6090)
!6121 = !DILocation(line: 460, column: 2, scope: !6090)
!6122 = !DILocation(line: 460, column: 6, scope: !6090)
!6123 = !DILocation(line: 460, column: 32, scope: !6090)
!6124 = !DILocation(line: 460, column: 15, scope: !6090)
!6125 = !DILocation(line: 462, column: 6, scope: !6126)
!6126 = distinct !DILexicalBlock(scope: !6090, file: !3, line: 462, column: 6)
!6127 = !DILocation(line: 462, column: 6, scope: !6090)
!6128 = !DILocation(line: 463, column: 10, scope: !6126)
!6129 = !DILocation(line: 463, column: 3, scope: !6126)
!6130 = !DILocation(line: 465, column: 13, scope: !6090)
!6131 = !DILocation(line: 465, column: 18, scope: !6090)
!6132 = !DILocation(line: 465, column: 2, scope: !6090)
!6133 = !DILocation(line: 466, column: 16, scope: !6090)
!6134 = !DILocation(line: 466, column: 21, scope: !6090)
!6135 = !DILocation(line: 467, column: 11, scope: !6090)
!6136 = !DILocation(line: 467, column: 16, scope: !6090)
!6137 = !DILocation(line: 467, column: 2, scope: !6090)
!6138 = !DILocation(line: 469, column: 6, scope: !6139)
!6139 = distinct !DILexicalBlock(scope: !6090, file: !3, line: 469, column: 6)
!6140 = !DILocation(line: 469, column: 10, scope: !6139)
!6141 = !DILocation(line: 469, column: 6, scope: !6090)
!6142 = !DILocation(line: 471, column: 31, scope: !6143)
!6143 = distinct !DILexicalBlock(scope: !6144, file: !3, line: 470, column: 7)
!6144 = distinct !DILexicalBlock(scope: !6139, file: !3, line: 469, column: 28)
!6145 = !DILocation(line: 470, column: 7, scope: !6143)
!6146 = !DILocation(line: 470, column: 7, scope: !6144)
!6147 = !DILocation(line: 472, column: 4, scope: !6143)
!6148 = !DILocation(line: 474, column: 2, scope: !6144)
!6149 = !DILocation(line: 474, column: 13, scope: !6150)
!6150 = distinct !DILexicalBlock(scope: !6139, file: !3, line: 474, column: 13)
!6151 = !DILocation(line: 474, column: 17, scope: !6150)
!6152 = !DILocation(line: 474, column: 13, scope: !6139)
!6153 = !DILocation(line: 476, column: 32, scope: !6154)
!6154 = distinct !DILexicalBlock(scope: !6155, file: !3, line: 475, column: 7)
!6155 = distinct !DILexicalBlock(scope: !6150, file: !3, line: 474, column: 32)
!6156 = !DILocation(line: 475, column: 7, scope: !6154)
!6157 = !DILocation(line: 475, column: 7, scope: !6155)
!6158 = !DILocation(line: 477, column: 4, scope: !6154)
!6159 = !DILocation(line: 478, column: 2, scope: !6155)
!6160 = !DILocation(line: 480, column: 33, scope: !6161)
!6161 = distinct !DILexicalBlock(scope: !6162, file: !3, line: 479, column: 7)
!6162 = distinct !DILexicalBlock(scope: !6150, file: !3, line: 478, column: 9)
!6163 = !DILocation(line: 479, column: 7, scope: !6161)
!6164 = !DILocation(line: 479, column: 7, scope: !6162)
!6165 = !DILocation(line: 481, column: 4, scope: !6161)
!6166 = !DILocation(line: 491, column: 25, scope: !6090)
!6167 = !DILocation(line: 491, column: 14, scope: !6090)
!6168 = !DILocation(line: 491, column: 23, scope: !6090)
!6169 = !DILocation(line: 492, column: 25, scope: !6090)
!6170 = !DILocation(line: 492, column: 14, scope: !6090)
!6171 = !DILocation(line: 492, column: 23, scope: !6090)
!6172 = !DILocation(line: 494, column: 6, scope: !6102)
!6173 = !DILocation(line: 494, column: 10, scope: !6102)
!6174 = !DILocation(line: 494, column: 6, scope: !6090)
!6175 = !DILocation(line: 494, column: 42, scope: !6102)
!6176 = !DILocation(line: 495, column: 1, scope: !6101)
!6177 = !DILocation(line: 496, column: 12, scope: !6104)
!6178 = !DILocation(line: 496, column: 12, scope: !6179)
!6179 = distinct !DILexicalBlock(scope: !6104, file: !3, line: 496, column: 12)
!6180 = !DILocation(line: 496, column: 12, scope: !6107)
!6181 = !DILocation(line: 496, column: 12, scope: !6106)
!6182 = !DILocation(line: 496, column: 12, scope: !6110)
!6183 = !DILocation(line: 496, column: 12, scope: !6184)
!6184 = distinct !DILexicalBlock(scope: !6110, file: !3, line: 496, column: 12)
!6185 = !DILocation(line: 496, column: 12, scope: !6186)
!6186 = distinct !DILexicalBlock(scope: !6110, file: !3, line: 496, column: 12)
!6187 = !DILocation(line: 496, column: 12, scope: !6188)
!6188 = distinct !DILexicalBlock(scope: !6186, file: !3, line: 496, column: 12)
!6189 = !DILocation(line: 496, column: 12, scope: !6111)
!6190 = distinct !{!6190, !6191, !6191, !5408}
!6191 = !DILocation(line: 496, column: 12, scope: !6112)
!6192 = !DILocation(line: 496, column: 12, scope: !6101)
!6193 = !DILocation(line: 496, column: 10, scope: !6101)
!6194 = !DILocation(line: 497, column: 7, scope: !6195)
!6195 = distinct !DILexicalBlock(scope: !6101, file: !3, line: 497, column: 7)
!6196 = !DILocation(line: 497, column: 14, scope: !6195)
!6197 = !DILocation(line: 497, column: 7, scope: !6101)
!6198 = !DILocation(line: 498, column: 11, scope: !6195)
!6199 = !DILocation(line: 498, column: 4, scope: !6195)
!6200 = !DILocation(line: 500, column: 22, scope: !6201)
!6201 = distinct !DILexicalBlock(scope: !6101, file: !3, line: 500, column: 7)
!6202 = !DILocation(line: 500, column: 7, scope: !6201)
!6203 = !DILocation(line: 500, column: 34, scope: !6201)
!6204 = !DILocation(line: 500, column: 7, scope: !6101)
!6205 = !DILocation(line: 501, column: 4, scope: !6201)
!6206 = !DILocation(line: 504, column: 27, scope: !6207)
!6207 = distinct !DILexicalBlock(scope: !6101, file: !3, line: 504, column: 7)
!6208 = !DILocation(line: 504, column: 7, scope: !6207)
!6209 = !DILocation(line: 504, column: 7, scope: !6101)
!6210 = !DILocation(line: 505, column: 21, scope: !6211)
!6211 = distinct !DILexicalBlock(scope: !6207, file: !3, line: 504, column: 33)
!6212 = !DILocation(line: 505, column: 4, scope: !6211)
!6213 = !DILocation(line: 506, column: 4, scope: !6211)
!6214 = !DILocation(line: 509, column: 22, scope: !6101)
!6215 = !DILocation(line: 509, column: 8, scope: !6101)
!6216 = !DILocation(line: 509, column: 6, scope: !6101)
!6217 = !DILocation(line: 510, column: 7, scope: !6218)
!6218 = distinct !DILexicalBlock(scope: !6101, file: !3, line: 510, column: 7)
!6219 = !DILocation(line: 510, column: 10, scope: !6218)
!6220 = !DILocation(line: 510, column: 7, scope: !6101)
!6221 = !DILocation(line: 511, column: 9, scope: !6222)
!6222 = distinct !DILexicalBlock(scope: !6223, file: !3, line: 511, column: 8)
!6223 = distinct !DILexicalBlock(scope: !6218, file: !3, line: 510, column: 19)
!6224 = !DILocation(line: 511, column: 13, scope: !6222)
!6225 = !DILocation(line: 511, column: 30, scope: !6222)
!6226 = !DILocation(line: 511, column: 33, scope: !6222)
!6227 = !DILocation(line: 511, column: 37, scope: !6222)
!6228 = !DILocation(line: 511, column: 42, scope: !6222)
!6229 = !DILocation(line: 511, column: 8, scope: !6223)
!6230 = !DILocation(line: 512, column: 5, scope: !6222)
!6231 = !DILocation(line: 512, column: 9, scope: !6222)
!6232 = !DILocation(line: 512, column: 14, scope: !6222)
!6233 = !DILocation(line: 512, column: 27, scope: !6222)
!6234 = !DILocation(line: 513, column: 20, scope: !6223)
!6235 = !DILocation(line: 513, column: 4, scope: !6223)
!6236 = !DILocation(line: 514, column: 3, scope: !6223)
!6237 = !DILocation(line: 516, column: 8, scope: !6238)
!6238 = distinct !DILexicalBlock(scope: !6101, file: !3, line: 516, column: 7)
!6239 = !DILocation(line: 516, column: 12, scope: !6238)
!6240 = !DILocation(line: 516, column: 28, scope: !6238)
!6241 = !DILocation(line: 516, column: 31, scope: !6238)
!6242 = !DILocation(line: 516, column: 36, scope: !6238)
!6243 = !DILocation(line: 516, column: 41, scope: !6238)
!6244 = !DILocation(line: 516, column: 7, scope: !6101)
!6245 = !DILocation(line: 517, column: 4, scope: !6246)
!6246 = distinct !DILexicalBlock(scope: !6238, file: !3, line: 516, column: 58)
!6247 = !DILocation(line: 517, column: 9, scope: !6246)
!6248 = !DILocation(line: 517, column: 14, scope: !6246)
!6249 = !DILocation(line: 517, column: 30, scope: !6246)
!6250 = !DILocation(line: 518, column: 23, scope: !6251)
!6251 = distinct !DILexicalBlock(scope: !6246, file: !3, line: 518, column: 8)
!6252 = !DILocation(line: 518, column: 8, scope: !6251)
!6253 = !DILocation(line: 518, column: 8, scope: !6246)
!6254 = !DILocation(line: 519, column: 22, scope: !6255)
!6255 = distinct !DILexicalBlock(scope: !6251, file: !3, line: 518, column: 33)
!6256 = !DILocation(line: 519, column: 5, scope: !6255)
!6257 = !DILocation(line: 520, column: 5, scope: !6255)
!6258 = !DILocation(line: 522, column: 3, scope: !6246)
!6259 = !DILocation(line: 524, column: 19, scope: !6101)
!6260 = !DILocation(line: 524, column: 3, scope: !6101)
!6261 = !DILocation(line: 526, column: 20, scope: !6101)
!6262 = !DILocation(line: 526, column: 3, scope: !6101)
!6263 = !DILocation(line: 527, column: 2, scope: !6101)
!6264 = !DILocation(line: 528, column: 19, scope: !6265)
!6265 = distinct !DILexicalBlock(scope: !6102, file: !3, line: 527, column: 9)
!6266 = !DILocation(line: 528, column: 3, scope: !6265)
!6267 = !DILocation(line: 535, column: 2, scope: !6090)
!6268 = !DILocation(line: 536, column: 1, scope: !6090)
!6269 = distinct !DISubprogram(name: "copy_termios", scope: !3, file: !3, line: 538, type: !6270, scopeLine: 539, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6272)
!6270 = !DISubroutineType(types: !6271)
!6271 = !{null, !3552, !4167}
!6272 = !{!6273, !6274}
!6273 = !DILocalVariable(name: "tty", arg: 1, scope: !6269, file: !3, line: 538, type: !3552)
!6274 = !DILocalVariable(name: "kterm", arg: 2, scope: !6269, file: !3, line: 538, type: !4167)
!6275 = !DILocation(line: 538, column: 45, scope: !6269)
!6276 = !DILocation(line: 538, column: 67, scope: !6269)
!6277 = !DILocation(line: 540, column: 13, scope: !6269)
!6278 = !DILocation(line: 540, column: 18, scope: !6269)
!6279 = !DILocation(line: 540, column: 2, scope: !6269)
!6280 = !DILocation(line: 541, column: 3, scope: !6269)
!6281 = !DILocation(line: 541, column: 11, scope: !6269)
!6282 = !DILocation(line: 541, column: 16, scope: !6269)
!6283 = !DILocation(line: 542, column: 11, scope: !6269)
!6284 = !DILocation(line: 542, column: 16, scope: !6269)
!6285 = !DILocation(line: 542, column: 2, scope: !6269)
!6286 = !DILocation(line: 543, column: 1, scope: !6269)
!6287 = distinct !DISubprogram(name: "get_termio", scope: !3, file: !3, line: 552, type: !6288, scopeLine: 553, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6290)
!6288 = !DISubroutineType(types: !6289)
!6289 = !{!109, !3552, !196}
!6290 = !{!6291, !6292, !6293}
!6291 = !DILocalVariable(name: "tty", arg: 1, scope: !6287, file: !3, line: 552, type: !3552)
!6292 = !DILocalVariable(name: "termio", arg: 2, scope: !6287, file: !3, line: 552, type: !196)
!6293 = !DILocalVariable(name: "kterm", scope: !6287, file: !3, line: 554, type: !4027)
!6294 = !DILocation(line: 552, column: 42, scope: !6287)
!6295 = !DILocation(line: 552, column: 69, scope: !6287)
!6296 = !DILocation(line: 554, column: 2, scope: !6287)
!6297 = !DILocation(line: 554, column: 18, scope: !6287)
!6298 = !DILocation(line: 555, column: 15, scope: !6287)
!6299 = !DILocation(line: 555, column: 2, scope: !6287)
!6300 = !DILocation(line: 556, column: 36, scope: !6301)
!6301 = distinct !DILexicalBlock(scope: !6287, file: !3, line: 556, column: 6)
!6302 = !DILocation(line: 556, column: 6, scope: !6301)
!6303 = !DILocation(line: 556, column: 6, scope: !6287)
!6304 = !DILocation(line: 557, column: 3, scope: !6301)
!6305 = !DILocation(line: 558, column: 2, scope: !6287)
!6306 = !DILocation(line: 559, column: 1, scope: !6287)
!6307 = distinct !DISubprogram(name: "copy_termios_locked", scope: !3, file: !3, line: 545, type: !6270, scopeLine: 546, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6308)
!6308 = !{!6309, !6310}
!6309 = !DILocalVariable(name: "tty", arg: 1, scope: !6307, file: !3, line: 545, type: !3552)
!6310 = !DILocalVariable(name: "kterm", arg: 2, scope: !6307, file: !3, line: 545, type: !4167)
!6311 = !DILocation(line: 545, column: 52, scope: !6307)
!6312 = !DILocation(line: 545, column: 74, scope: !6307)
!6313 = !DILocation(line: 547, column: 13, scope: !6307)
!6314 = !DILocation(line: 547, column: 18, scope: !6307)
!6315 = !DILocation(line: 547, column: 2, scope: !6307)
!6316 = !DILocation(line: 548, column: 3, scope: !6307)
!6317 = !DILocation(line: 548, column: 11, scope: !6307)
!6318 = !DILocation(line: 548, column: 16, scope: !6307)
!6319 = !DILocation(line: 549, column: 11, scope: !6307)
!6320 = !DILocation(line: 549, column: 16, scope: !6307)
!6321 = !DILocation(line: 549, column: 2, scope: !6307)
!6322 = !DILocation(line: 550, column: 1, scope: !6307)
!6323 = distinct !DISubprogram(name: "checkpoint_restore_ns_capable", scope: !740, file: !740, line: 205, type: !6324, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6326)
!6324 = !DISubroutineType(types: !6325)
!6325 = !{!825, !911}
!6326 = !{!6327}
!6327 = !DILocalVariable(name: "ns", arg: 1, scope: !6323, file: !740, line: 205, type: !911)
!6328 = !DILocation(line: 205, column: 73, scope: !6323)
!6329 = !DILocation(line: 207, column: 20, scope: !6323)
!6330 = !DILocation(line: 207, column: 9, scope: !6323)
!6331 = !DILocation(line: 207, column: 48, scope: !6323)
!6332 = !DILocation(line: 208, column: 14, scope: !6323)
!6333 = !DILocation(line: 208, column: 3, scope: !6323)
!6334 = !DILocation(line: 207, column: 2, scope: !6323)
!6335 = distinct !DISubprogram(name: "might_fault", scope: !5103, file: !5103, line: 202, type: !2453, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6336 = !DILocation(line: 202, column: 40, scope: !6335)
!6337 = distinct !DISubprogram(name: "kmsan_copy_to_user", scope: !6338, file: !6338, line: 76, type: !6339, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6341)
!6338 = !DIFile(filename: "./include/linux/kmsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cfeb6fcb47441b7815b086def457771")
!6339 = !DISubroutineType(types: !6340)
!6340 = !{null, !147, !1931, !1140, !1140}
!6341 = !{!6342, !6343, !6344, !6345}
!6342 = !DILocalVariable(name: "to", arg: 1, scope: !6337, file: !6338, line: 76, type: !147)
!6343 = !DILocalVariable(name: "from", arg: 2, scope: !6337, file: !6338, line: 76, type: !1931)
!6344 = !DILocalVariable(name: "to_copy", arg: 3, scope: !6337, file: !6338, line: 77, type: !1140)
!6345 = !DILocalVariable(name: "left", arg: 4, scope: !6337, file: !6338, line: 77, type: !1140)
!6346 = !DILocation(line: 76, column: 52, scope: !6337)
!6347 = !DILocation(line: 76, column: 68, scope: !6337)
!6348 = !DILocation(line: 77, column: 18, scope: !6337)
!6349 = !DILocation(line: 77, column: 34, scope: !6337)
!6350 = !DILocation(line: 79, column: 1, scope: !6337)
!6351 = distinct !DISubprogram(name: "kmsan_unpoison_memory", scope: !6338, file: !6338, line: 70, type: !6352, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6354)
!6352 = !DISubroutineType(types: !6353)
!6353 = !{null, !1931, !1140}
!6354 = !{!6355, !6356}
!6355 = !DILocalVariable(name: "address", arg: 1, scope: !6351, file: !6338, line: 70, type: !1931)
!6356 = !DILocalVariable(name: "size", arg: 2, scope: !6351, file: !6338, line: 70, type: !1140)
!6357 = !DILocation(line: 70, column: 54, scope: !6351)
!6358 = !DILocation(line: 70, column: 70, scope: !6351)
!6359 = !DILocation(line: 72, column: 1, scope: !6351)
!6360 = distinct !DISubprogram(name: "tty_change_softcar", scope: !3, file: !3, line: 746, type: !6361, scopeLine: 747, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6363)
!6361 = !DISubroutineType(types: !6362)
!6362 = !{!109, !3552, !825}
!6363 = !{!6364, !6365, !6366, !6367, !6368}
!6364 = !DILocalVariable(name: "tty", arg: 1, scope: !6360, file: !3, line: 746, type: !3552)
!6365 = !DILocalVariable(name: "enable", arg: 2, scope: !6360, file: !3, line: 746, type: !825)
!6366 = !DILocalVariable(name: "ret", scope: !6360, file: !3, line: 748, type: !109)
!6367 = !DILocalVariable(name: "old", scope: !6360, file: !3, line: 749, type: !4027)
!6368 = !DILocalVariable(name: "bit", scope: !6360, file: !3, line: 750, type: !154)
!6369 = !DILocation(line: 746, column: 50, scope: !6360)
!6370 = !DILocation(line: 746, column: 60, scope: !6360)
!6371 = !DILocation(line: 748, column: 2, scope: !6360)
!6372 = !DILocation(line: 748, column: 6, scope: !6360)
!6373 = !DILocation(line: 749, column: 2, scope: !6360)
!6374 = !DILocation(line: 749, column: 18, scope: !6360)
!6375 = !DILocation(line: 750, column: 2, scope: !6360)
!6376 = !DILocation(line: 750, column: 11, scope: !6360)
!6377 = !DILocation(line: 750, column: 17, scope: !6360)
!6378 = !DILocation(line: 752, column: 14, scope: !6360)
!6379 = !DILocation(line: 752, column: 19, scope: !6360)
!6380 = !DILocation(line: 752, column: 2, scope: !6360)
!6381 = !DILocation(line: 753, column: 8, scope: !6360)
!6382 = !DILocation(line: 753, column: 13, scope: !6360)
!6383 = !DILocation(line: 754, column: 2, scope: !6360)
!6384 = !DILocation(line: 754, column: 7, scope: !6360)
!6385 = !DILocation(line: 754, column: 15, scope: !6360)
!6386 = !DILocation(line: 754, column: 23, scope: !6360)
!6387 = !DILocation(line: 755, column: 26, scope: !6360)
!6388 = !DILocation(line: 755, column: 2, scope: !6360)
!6389 = !DILocation(line: 755, column: 7, scope: !6360)
!6390 = !DILocation(line: 755, column: 15, scope: !6360)
!6391 = !DILocation(line: 755, column: 23, scope: !6360)
!6392 = !DILocation(line: 756, column: 6, scope: !6393)
!6393 = distinct !DILexicalBlock(scope: !6360, file: !3, line: 756, column: 6)
!6394 = !DILocation(line: 756, column: 11, scope: !6393)
!6395 = !DILocation(line: 756, column: 16, scope: !6393)
!6396 = !DILocation(line: 756, column: 6, scope: !6360)
!6397 = !DILocation(line: 757, column: 3, scope: !6393)
!6398 = !DILocation(line: 757, column: 8, scope: !6393)
!6399 = !DILocation(line: 757, column: 13, scope: !6393)
!6400 = !DILocation(line: 757, column: 25, scope: !6393)
!6401 = !DILocation(line: 758, column: 6, scope: !6402)
!6402 = distinct !DILexicalBlock(scope: !6360, file: !3, line: 758, column: 6)
!6403 = !DILocation(line: 758, column: 23, scope: !6402)
!6404 = !DILocation(line: 758, column: 20, scope: !6402)
!6405 = !DILocation(line: 758, column: 6, scope: !6360)
!6406 = !DILocation(line: 759, column: 7, scope: !6402)
!6407 = !DILocation(line: 759, column: 3, scope: !6402)
!6408 = !DILocation(line: 760, column: 12, scope: !6360)
!6409 = !DILocation(line: 760, column: 17, scope: !6360)
!6410 = !DILocation(line: 760, column: 2, scope: !6360)
!6411 = !DILocation(line: 761, column: 9, scope: !6360)
!6412 = !DILocation(line: 762, column: 1, scope: !6360)
!6413 = !DILocation(line: 761, column: 2, scope: !6360)
!6414 = distinct !DISubprogram(name: "tty_perform_flush", scope: !3, file: !3, line: 931, type: !6415, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6417)
!6415 = !DISubroutineType(types: !6416)
!6416 = !{!109, !3552, !187}
!6417 = !{!6418, !6419, !6420, !6421}
!6418 = !DILocalVariable(name: "tty", arg: 1, scope: !6414, file: !3, line: 931, type: !3552)
!6419 = !DILocalVariable(name: "arg", arg: 2, scope: !6414, file: !3, line: 931, type: !187)
!6420 = !DILocalVariable(name: "ld", scope: !6414, file: !3, line: 933, type: !4288)
!6421 = !DILocalVariable(name: "retval", scope: !6414, file: !3, line: 934, type: !109)
!6422 = !DILocation(line: 931, column: 42, scope: !6414)
!6423 = !DILocation(line: 931, column: 61, scope: !6414)
!6424 = !DILocation(line: 933, column: 2, scope: !6414)
!6425 = !DILocation(line: 933, column: 20, scope: !6414)
!6426 = !DILocation(line: 934, column: 2, scope: !6414)
!6427 = !DILocation(line: 934, column: 6, scope: !6414)
!6428 = !DILocation(line: 934, column: 32, scope: !6414)
!6429 = !DILocation(line: 934, column: 15, scope: !6414)
!6430 = !DILocation(line: 935, column: 6, scope: !6431)
!6431 = distinct !DILexicalBlock(scope: !6414, file: !3, line: 935, column: 6)
!6432 = !DILocation(line: 935, column: 6, scope: !6414)
!6433 = !DILocation(line: 936, column: 10, scope: !6431)
!6434 = !DILocation(line: 936, column: 3, scope: !6431)
!6435 = !DILocation(line: 938, column: 26, scope: !6414)
!6436 = !DILocation(line: 938, column: 7, scope: !6414)
!6437 = !DILocation(line: 938, column: 5, scope: !6414)
!6438 = !DILocation(line: 939, column: 31, scope: !6414)
!6439 = !DILocation(line: 939, column: 36, scope: !6414)
!6440 = !DILocation(line: 939, column: 11, scope: !6414)
!6441 = !DILocation(line: 939, column: 9, scope: !6414)
!6442 = !DILocation(line: 940, column: 6, scope: !6443)
!6443 = distinct !DILexicalBlock(scope: !6414, file: !3, line: 940, column: 6)
!6444 = !DILocation(line: 940, column: 6, scope: !6414)
!6445 = !DILocation(line: 941, column: 19, scope: !6443)
!6446 = !DILocation(line: 941, column: 3, scope: !6443)
!6447 = !DILocation(line: 942, column: 9, scope: !6414)
!6448 = !DILocation(line: 942, column: 2, scope: !6414)
!6449 = !DILocation(line: 943, column: 1, scope: !6414)
!6450 = !DISubprogram(name: "tty_check_change", scope: !6451, file: !6451, line: 62, type: !4249, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6451 = !DIFile(filename: "drivers/tty/tty.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d8857947502225b017f036ab4ca6cb4")
!6452 = !DISubprogram(name: "tty_ldisc_ref_wait", scope: !4290, file: !4290, line: 281, type: !5707, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6453 = distinct !DISubprogram(name: "__tty_perform_flush", scope: !3, file: !3, line: 905, type: !6415, scopeLine: 906, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6454)
!6454 = !{!6455, !6456, !6457}
!6455 = !DILocalVariable(name: "tty", arg: 1, scope: !6453, file: !3, line: 905, type: !3552)
!6456 = !DILocalVariable(name: "arg", arg: 2, scope: !6453, file: !3, line: 905, type: !187)
!6457 = !DILocalVariable(name: "ld", scope: !6453, file: !3, line: 907, type: !4288)
!6458 = !DILocation(line: 905, column: 51, scope: !6453)
!6459 = !DILocation(line: 905, column: 70, scope: !6453)
!6460 = !DILocation(line: 907, column: 2, scope: !6453)
!6461 = !DILocation(line: 907, column: 20, scope: !6453)
!6462 = !DILocation(line: 907, column: 25, scope: !6453)
!6463 = !DILocation(line: 907, column: 30, scope: !6453)
!6464 = !DILocation(line: 909, column: 10, scope: !6453)
!6465 = !DILocation(line: 909, column: 2, scope: !6453)
!6466 = !DILocation(line: 911, column: 7, scope: !6467)
!6467 = distinct !DILexicalBlock(scope: !6468, file: !3, line: 911, column: 7)
!6468 = distinct !DILexicalBlock(scope: !6453, file: !3, line: 909, column: 15)
!6469 = !DILocation(line: 911, column: 10, scope: !6467)
!6470 = !DILocation(line: 911, column: 13, scope: !6467)
!6471 = !DILocation(line: 911, column: 17, scope: !6467)
!6472 = !DILocation(line: 911, column: 22, scope: !6467)
!6473 = !DILocation(line: 911, column: 7, scope: !6468)
!6474 = !DILocation(line: 912, column: 4, scope: !6475)
!6475 = distinct !DILexicalBlock(scope: !6467, file: !3, line: 911, column: 36)
!6476 = !DILocation(line: 912, column: 8, scope: !6475)
!6477 = !DILocation(line: 912, column: 13, scope: !6475)
!6478 = !DILocation(line: 912, column: 26, scope: !6475)
!6479 = !DILocation(line: 913, column: 19, scope: !6475)
!6480 = !DILocation(line: 913, column: 4, scope: !6475)
!6481 = !DILocation(line: 914, column: 3, scope: !6475)
!6482 = !DILocation(line: 915, column: 3, scope: !6468)
!6483 = !DILocation(line: 917, column: 7, scope: !6484)
!6484 = distinct !DILexicalBlock(scope: !6468, file: !3, line: 917, column: 7)
!6485 = !DILocation(line: 917, column: 10, scope: !6484)
!6486 = !DILocation(line: 917, column: 13, scope: !6484)
!6487 = !DILocation(line: 917, column: 17, scope: !6484)
!6488 = !DILocation(line: 917, column: 22, scope: !6484)
!6489 = !DILocation(line: 917, column: 7, scope: !6468)
!6490 = !DILocation(line: 918, column: 4, scope: !6491)
!6491 = distinct !DILexicalBlock(scope: !6484, file: !3, line: 917, column: 36)
!6492 = !DILocation(line: 918, column: 8, scope: !6491)
!6493 = !DILocation(line: 918, column: 13, scope: !6491)
!6494 = !DILocation(line: 918, column: 26, scope: !6491)
!6495 = !DILocation(line: 919, column: 19, scope: !6491)
!6496 = !DILocation(line: 919, column: 4, scope: !6491)
!6497 = !DILocation(line: 920, column: 3, scope: !6491)
!6498 = !DILocation(line: 923, column: 27, scope: !6468)
!6499 = !DILocation(line: 923, column: 3, scope: !6468)
!6500 = !DILocation(line: 924, column: 3, scope: !6468)
!6501 = !DILocation(line: 926, column: 3, scope: !6468)
!6502 = !DILocation(line: 928, column: 2, scope: !6453)
!6503 = !DILocation(line: 929, column: 1, scope: !6453)
!6504 = distinct !DISubprogram(name: "n_tty_ioctl_helper", scope: !3, file: !3, line: 946, type: !4215, scopeLine: 948, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6505)
!6505 = !{!6506, !6507, !6508, !6509}
!6506 = !DILocalVariable(name: "tty", arg: 1, scope: !6504, file: !3, line: 946, type: !3552)
!6507 = !DILocalVariable(name: "cmd", arg: 2, scope: !6504, file: !3, line: 946, type: !7)
!6508 = !DILocalVariable(name: "arg", arg: 3, scope: !6504, file: !3, line: 947, type: !187)
!6509 = !DILocalVariable(name: "retval", scope: !6504, file: !3, line: 949, type: !109)
!6510 = !DILocation(line: 946, column: 43, scope: !6504)
!6511 = !DILocation(line: 946, column: 61, scope: !6504)
!6512 = !DILocation(line: 947, column: 17, scope: !6504)
!6513 = !DILocation(line: 949, column: 2, scope: !6504)
!6514 = !DILocation(line: 949, column: 6, scope: !6504)
!6515 = !DILocation(line: 951, column: 10, scope: !6504)
!6516 = !DILocation(line: 951, column: 2, scope: !6504)
!6517 = !DILocation(line: 953, column: 29, scope: !6518)
!6518 = distinct !DILexicalBlock(scope: !6504, file: !3, line: 951, column: 15)
!6519 = !DILocation(line: 953, column: 12, scope: !6518)
!6520 = !DILocation(line: 953, column: 10, scope: !6518)
!6521 = !DILocation(line: 954, column: 7, scope: !6522)
!6522 = distinct !DILexicalBlock(scope: !6518, file: !3, line: 954, column: 7)
!6523 = !DILocation(line: 954, column: 7, scope: !6518)
!6524 = !DILocation(line: 955, column: 11, scope: !6522)
!6525 = !DILocation(line: 955, column: 4, scope: !6522)
!6526 = !DILocation(line: 956, column: 11, scope: !6518)
!6527 = !DILocation(line: 956, column: 3, scope: !6518)
!6528 = !DILocation(line: 958, column: 19, scope: !6529)
!6529 = distinct !DILexicalBlock(scope: !6518, file: !3, line: 956, column: 16)
!6530 = !DILocation(line: 958, column: 24, scope: !6529)
!6531 = !DILocation(line: 958, column: 29, scope: !6529)
!6532 = !DILocation(line: 958, column: 4, scope: !6529)
!6533 = !DILocation(line: 959, column: 9, scope: !6534)
!6534 = distinct !DILexicalBlock(scope: !6529, file: !3, line: 959, column: 8)
!6535 = !DILocation(line: 959, column: 14, scope: !6534)
!6536 = !DILocation(line: 959, column: 19, scope: !6534)
!6537 = !DILocation(line: 959, column: 8, scope: !6529)
!6538 = !DILocation(line: 960, column: 5, scope: !6539)
!6539 = distinct !DILexicalBlock(scope: !6534, file: !3, line: 959, column: 32)
!6540 = !DILocation(line: 960, column: 10, scope: !6539)
!6541 = !DILocation(line: 960, column: 15, scope: !6539)
!6542 = !DILocation(line: 960, column: 27, scope: !6539)
!6543 = !DILocation(line: 961, column: 16, scope: !6539)
!6544 = !DILocation(line: 961, column: 5, scope: !6539)
!6545 = !DILocation(line: 962, column: 4, scope: !6539)
!6546 = !DILocation(line: 963, column: 21, scope: !6529)
!6547 = !DILocation(line: 963, column: 26, scope: !6529)
!6548 = !DILocation(line: 963, column: 31, scope: !6529)
!6549 = !DILocation(line: 963, column: 4, scope: !6529)
!6550 = !DILocation(line: 964, column: 4, scope: !6529)
!6551 = !DILocation(line: 966, column: 19, scope: !6529)
!6552 = !DILocation(line: 966, column: 24, scope: !6529)
!6553 = !DILocation(line: 966, column: 29, scope: !6529)
!6554 = !DILocation(line: 966, column: 4, scope: !6529)
!6555 = !DILocation(line: 967, column: 8, scope: !6556)
!6556 = distinct !DILexicalBlock(scope: !6529, file: !3, line: 967, column: 8)
!6557 = !DILocation(line: 967, column: 13, scope: !6556)
!6558 = !DILocation(line: 967, column: 18, scope: !6556)
!6559 = !DILocation(line: 967, column: 8, scope: !6529)
!6560 = !DILocation(line: 968, column: 5, scope: !6561)
!6561 = distinct !DILexicalBlock(scope: !6556, file: !3, line: 967, column: 31)
!6562 = !DILocation(line: 968, column: 10, scope: !6561)
!6563 = !DILocation(line: 968, column: 15, scope: !6561)
!6564 = !DILocation(line: 968, column: 27, scope: !6561)
!6565 = !DILocation(line: 969, column: 17, scope: !6561)
!6566 = !DILocation(line: 969, column: 5, scope: !6561)
!6567 = !DILocation(line: 970, column: 4, scope: !6561)
!6568 = !DILocation(line: 971, column: 21, scope: !6529)
!6569 = !DILocation(line: 971, column: 26, scope: !6529)
!6570 = !DILocation(line: 971, column: 31, scope: !6529)
!6571 = !DILocation(line: 971, column: 4, scope: !6529)
!6572 = !DILocation(line: 972, column: 4, scope: !6529)
!6573 = !DILocation(line: 974, column: 8, scope: !6574)
!6574 = distinct !DILexicalBlock(scope: !6529, file: !3, line: 974, column: 8)
!6575 = !DILocation(line: 974, column: 23, scope: !6574)
!6576 = !DILocation(line: 974, column: 8, scope: !6529)
!6577 = !DILocation(line: 975, column: 29, scope: !6574)
!6578 = !DILocation(line: 975, column: 34, scope: !6574)
!6579 = !DILocation(line: 975, column: 14, scope: !6574)
!6580 = !DILocation(line: 975, column: 12, scope: !6574)
!6581 = !DILocation(line: 975, column: 5, scope: !6574)
!6582 = !DILocation(line: 976, column: 4, scope: !6529)
!6583 = !DILocation(line: 978, column: 8, scope: !6584)
!6584 = distinct !DILexicalBlock(scope: !6529, file: !3, line: 978, column: 8)
!6585 = !DILocation(line: 978, column: 24, scope: !6584)
!6586 = !DILocation(line: 978, column: 8, scope: !6529)
!6587 = !DILocation(line: 979, column: 29, scope: !6584)
!6588 = !DILocation(line: 979, column: 34, scope: !6584)
!6589 = !DILocation(line: 979, column: 14, scope: !6584)
!6590 = !DILocation(line: 979, column: 12, scope: !6584)
!6591 = !DILocation(line: 979, column: 5, scope: !6584)
!6592 = !DILocation(line: 980, column: 4, scope: !6529)
!6593 = !DILocation(line: 982, column: 4, scope: !6529)
!6594 = !DILocation(line: 984, column: 10, scope: !6518)
!6595 = !DILocation(line: 984, column: 3, scope: !6518)
!6596 = !DILocation(line: 986, column: 29, scope: !6518)
!6597 = !DILocation(line: 986, column: 12, scope: !6518)
!6598 = !DILocation(line: 986, column: 10, scope: !6518)
!6599 = !DILocation(line: 987, column: 7, scope: !6600)
!6600 = distinct !DILexicalBlock(scope: !6518, file: !3, line: 987, column: 7)
!6601 = !DILocation(line: 987, column: 7, scope: !6518)
!6602 = !DILocation(line: 988, column: 11, scope: !6600)
!6603 = !DILocation(line: 988, column: 4, scope: !6600)
!6604 = !DILocation(line: 989, column: 30, scope: !6518)
!6605 = !DILocation(line: 989, column: 35, scope: !6518)
!6606 = !DILocation(line: 989, column: 10, scope: !6518)
!6607 = !DILocation(line: 989, column: 3, scope: !6518)
!6608 = !DILocation(line: 992, column: 25, scope: !6518)
!6609 = !DILocation(line: 992, column: 30, scope: !6518)
!6610 = !DILocation(line: 992, column: 35, scope: !6518)
!6611 = !DILocation(line: 992, column: 10, scope: !6518)
!6612 = !DILocation(line: 992, column: 3, scope: !6518)
!6613 = !DILocation(line: 994, column: 1, scope: !6504)
!6614 = distinct !DISubprogram(name: "spin_lock_irq", scope: !6615, file: !6615, line: 374, type: !6616, scopeLine: 375, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6618)
!6615 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!6616 = !DISubroutineType(types: !6617)
!6617 = !{null, !1629}
!6618 = !{!6619}
!6619 = !DILocalVariable(name: "lock", arg: 1, scope: !6614, file: !6615, line: 374, type: !1629)
!6620 = !DILocation(line: 374, column: 55, scope: !6614)
!6621 = !DILocation(line: 376, column: 2, scope: !6614)
!6622 = !DILocation(line: 377, column: 1, scope: !6614)
!6623 = !DISubprogram(name: "__stop_tty", scope: !6451, file: !6451, line: 63, type: !4196, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6624 = distinct !DISubprogram(name: "spin_unlock_irq", scope: !6615, file: !6615, line: 399, type: !6616, scopeLine: 400, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6625)
!6625 = !{!6626}
!6626 = !DILocalVariable(name: "lock", arg: 1, scope: !6624, file: !6615, line: 399, type: !1629)
!6627 = !DILocation(line: 399, column: 57, scope: !6624)
!6628 = !DILocation(line: 401, column: 2, scope: !6624)
!6629 = !DILocation(line: 402, column: 1, scope: !6624)
!6630 = !DISubprogram(name: "__start_tty", scope: !6451, file: !6451, line: 64, type: !4196, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6631 = !DISubprogram(name: "tty_send_xchar", scope: !3554, file: !3554, line: 413, type: !6632, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6632 = !DISubroutineType(types: !6633)
!6633 = !{!109, !3552, !193}
!6634 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !6635, file: !6635, line: 94, type: !6636, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6641)
!6635 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6636 = !DISubroutineType(types: !6637)
!6637 = !{null, !6638, !1140}
!6638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6639, size: 64)
!6639 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6640)
!6640 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6641 = !{!6642, !6643}
!6642 = !DILocalVariable(name: "v", arg: 1, scope: !6634, file: !6635, line: 94, type: !6638)
!6643 = !DILocalVariable(name: "size", arg: 2, scope: !6634, file: !6635, line: 94, type: !1140)
!6644 = !DILocation(line: 94, column: 79, scope: !6634)
!6645 = !DILocation(line: 94, column: 89, scope: !6634)
!6646 = !DILocation(line: 96, column: 20, scope: !6634)
!6647 = !DILocation(line: 96, column: 23, scope: !6634)
!6648 = !DILocation(line: 96, column: 2, scope: !6634)
!6649 = !DILocation(line: 97, column: 2, scope: !6634)
!6650 = !DILocation(line: 98, column: 1, scope: !6634)
!6651 = distinct !DISubprogram(name: "arch_test_and_clear_bit", scope: !6652, file: !6652, line: 160, type: !5199, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6653)
!6652 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!6653 = !{!6654, !6655, !6656}
!6654 = !DILocalVariable(name: "nr", arg: 1, scope: !6651, file: !6652, line: 160, type: !148)
!6655 = !DILocalVariable(name: "addr", arg: 2, scope: !6651, file: !6652, line: 160, type: !5201)
!6656 = !DILocalVariable(name: "c", scope: !6657, file: !6652, line: 162, type: !825)
!6657 = distinct !DILexicalBlock(scope: !6651, file: !6652, line: 162, column: 9)
!6658 = !DILocation(line: 160, column: 30, scope: !6651)
!6659 = !DILocation(line: 160, column: 58, scope: !6651)
!6660 = !DILocation(line: 162, column: 9, scope: !6657)
!6661 = !{i64 2148806860, i64 2148806899, i64 2148806920, i64 2148806957, i64 2148806980, i64 2148806989, i64 2148807092}
!6662 = !DILocation(line: 162, column: 9, scope: !6651)
!6663 = !DILocation(line: 162, column: 2, scope: !6651)
!6664 = distinct !DISubprogram(name: "kasan_check_write", scope: !6665, file: !6665, line: 44, type: !6666, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6668)
!6665 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!6666 = !DISubroutineType(types: !6667)
!6667 = !{!825, !6638, !7}
!6668 = !{!6669, !6670}
!6669 = !DILocalVariable(name: "p", arg: 1, scope: !6664, file: !6665, line: 44, type: !6638)
!6670 = !DILocalVariable(name: "size", arg: 2, scope: !6664, file: !6665, line: 44, type: !7)
!6671 = !DILocation(line: 44, column: 59, scope: !6664)
!6672 = !DILocation(line: 44, column: 75, scope: !6664)
!6673 = !DILocation(line: 46, column: 2, scope: !6664)
!6674 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6675, file: !6675, line: 229, type: !6676, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6678)
!6675 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6676 = !DISubroutineType(types: !6677)
!6677 = !{null, !6638, !1140, !109}
!6678 = !{!6679, !6680, !6681}
!6679 = !DILocalVariable(name: "ptr", arg: 1, scope: !6674, file: !6675, line: 229, type: !6638)
!6680 = !DILocalVariable(name: "size", arg: 2, scope: !6674, file: !6675, line: 229, type: !1140)
!6681 = !DILocalVariable(name: "type", arg: 3, scope: !6674, file: !6675, line: 230, type: !109)
!6682 = !DILocation(line: 229, column: 60, scope: !6674)
!6683 = !DILocation(line: 229, column: 72, scope: !6674)
!6684 = !DILocation(line: 230, column: 15, scope: !6674)
!6685 = !DILocation(line: 230, column: 23, scope: !6674)
!6686 = distinct !DISubprogram(name: "const_test_bit", scope: !6687, file: !6687, line: 166, type: !6688, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6692)
!6687 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!6688 = !DISubroutineType(types: !6689)
!6689 = !{!825, !187, !6690}
!6690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6691, size: 64)
!6691 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5202)
!6692 = !{!6693, !6694, !6695, !6696, !6697}
!6693 = !DILocalVariable(name: "nr", arg: 1, scope: !6686, file: !6687, line: 166, type: !187)
!6694 = !DILocalVariable(name: "addr", arg: 2, scope: !6686, file: !6687, line: 166, type: !6690)
!6695 = !DILocalVariable(name: "p", scope: !6686, file: !6687, line: 168, type: !188)
!6696 = !DILocalVariable(name: "mask", scope: !6686, file: !6687, line: 169, type: !187)
!6697 = !DILocalVariable(name: "val", scope: !6686, file: !6687, line: 170, type: !187)
!6698 = !DILocation(line: 166, column: 30, scope: !6686)
!6699 = !DILocation(line: 166, column: 64, scope: !6686)
!6700 = !DILocation(line: 168, column: 2, scope: !6686)
!6701 = !DILocation(line: 168, column: 23, scope: !6686)
!6702 = !DILocation(line: 168, column: 50, scope: !6686)
!6703 = !DILocation(line: 168, column: 57, scope: !6686)
!6704 = !DILocation(line: 168, column: 55, scope: !6686)
!6705 = !DILocation(line: 169, column: 2, scope: !6686)
!6706 = !DILocation(line: 169, column: 16, scope: !6686)
!6707 = !DILocation(line: 169, column: 23, scope: !6686)
!6708 = !DILocation(line: 170, column: 2, scope: !6686)
!6709 = !DILocation(line: 170, column: 16, scope: !6686)
!6710 = !DILocation(line: 170, column: 23, scope: !6686)
!6711 = !DILocation(line: 170, column: 22, scope: !6686)
!6712 = !DILocation(line: 172, column: 12, scope: !6686)
!6713 = !DILocation(line: 172, column: 18, scope: !6686)
!6714 = !DILocation(line: 172, column: 16, scope: !6686)
!6715 = !DILocation(line: 172, column: 10, scope: !6686)
!6716 = !DILocation(line: 172, column: 9, scope: !6686)
!6717 = !DILocation(line: 173, column: 1, scope: !6686)
!6718 = !DILocation(line: 172, column: 2, scope: !6686)
!6719 = distinct !DISubprogram(name: "_test_bit", scope: !6720, file: !6720, line: 139, type: !6688, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6721)
!6720 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!6721 = !{!6722, !6723}
!6722 = !DILocalVariable(name: "nr", arg: 1, scope: !6719, file: !6720, line: 139, type: !187)
!6723 = !DILocalVariable(name: "addr", arg: 2, scope: !6719, file: !6720, line: 139, type: !6690)
!6724 = !DILocation(line: 139, column: 25, scope: !6719)
!6725 = !DILocation(line: 139, column: 59, scope: !6719)
!6726 = !DILocation(line: 141, column: 25, scope: !6719)
!6727 = !DILocation(line: 141, column: 32, scope: !6719)
!6728 = !DILocation(line: 141, column: 30, scope: !6719)
!6729 = !DILocation(line: 141, column: 2, scope: !6719)
!6730 = !DILocation(line: 142, column: 23, scope: !6719)
!6731 = !DILocation(line: 142, column: 27, scope: !6719)
!6732 = !DILocation(line: 142, column: 9, scope: !6719)
!6733 = !DILocation(line: 142, column: 2, scope: !6719)
!6734 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !6635, file: !6635, line: 66, type: !6636, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6735)
!6735 = !{!6736, !6737}
!6736 = !DILocalVariable(name: "v", arg: 1, scope: !6734, file: !6635, line: 66, type: !6638)
!6737 = !DILocalVariable(name: "size", arg: 2, scope: !6734, file: !6635, line: 66, type: !1140)
!6738 = !DILocation(line: 66, column: 73, scope: !6734)
!6739 = !DILocation(line: 66, column: 83, scope: !6734)
!6740 = !DILocation(line: 68, column: 19, scope: !6734)
!6741 = !DILocation(line: 68, column: 22, scope: !6734)
!6742 = !DILocation(line: 68, column: 2, scope: !6734)
!6743 = !DILocation(line: 69, column: 2, scope: !6734)
!6744 = !DILocation(line: 70, column: 1, scope: !6734)
!6745 = distinct !DISubprogram(name: "arch_test_bit", scope: !6652, file: !6652, line: 237, type: !6688, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6746)
!6746 = !{!6747, !6748}
!6747 = !DILocalVariable(name: "nr", arg: 1, scope: !6745, file: !6652, line: 237, type: !187)
!6748 = !DILocalVariable(name: "addr", arg: 2, scope: !6745, file: !6652, line: 237, type: !6690)
!6749 = !DILocation(line: 237, column: 29, scope: !6745)
!6750 = !DILocation(line: 237, column: 63, scope: !6745)
!6751 = !DILocation(line: 239, column: 30, scope: !6745)
!6752 = !DILocation(line: 239, column: 9, scope: !6745)
!6753 = !DILocation(line: 239, column: 54, scope: !6745)
!6754 = !DILocation(line: 239, column: 58, scope: !6745)
!6755 = !DILocation(line: 239, column: 36, scope: !6745)
!6756 = !DILocation(line: 240, column: 26, scope: !6745)
!6757 = !DILocation(line: 240, column: 30, scope: !6745)
!6758 = !DILocation(line: 240, column: 8, scope: !6745)
!6759 = !DILocation(line: 239, column: 2, scope: !6745)
!6760 = distinct !DISubprogram(name: "kasan_check_read", scope: !6665, file: !6665, line: 40, type: !6666, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6761)
!6761 = !{!6762, !6763}
!6762 = !DILocalVariable(name: "p", arg: 1, scope: !6760, file: !6665, line: 40, type: !6638)
!6763 = !DILocalVariable(name: "size", arg: 2, scope: !6760, file: !6665, line: 40, type: !7)
!6764 = !DILocation(line: 40, column: 58, scope: !6760)
!6765 = !DILocation(line: 40, column: 74, scope: !6760)
!6766 = !DILocation(line: 42, column: 2, scope: !6760)
!6767 = distinct !DISubprogram(name: "constant_test_bit", scope: !6652, file: !6652, line: 204, type: !6768, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6770)
!6768 = !DISubroutineType(types: !6769)
!6769 = !{!825, !148, !6690}
!6770 = !{!6771, !6772}
!6771 = !DILocalVariable(name: "nr", arg: 1, scope: !6767, file: !6652, line: 204, type: !148)
!6772 = !DILocalVariable(name: "addr", arg: 2, scope: !6767, file: !6652, line: 204, type: !6690)
!6773 = !DILocation(line: 204, column: 52, scope: !6767)
!6774 = !DILocation(line: 204, column: 86, scope: !6767)
!6775 = !DILocation(line: 206, column: 19, scope: !6767)
!6776 = !DILocation(line: 206, column: 22, scope: !6767)
!6777 = !DILocation(line: 206, column: 15, scope: !6767)
!6778 = !DILocation(line: 207, column: 4, scope: !6767)
!6779 = !DILocation(line: 207, column: 9, scope: !6767)
!6780 = !DILocation(line: 207, column: 12, scope: !6767)
!6781 = !DILocation(line: 206, column: 44, scope: !6767)
!6782 = !DILocation(line: 207, column: 37, scope: !6767)
!6783 = !DILocation(line: 206, column: 2, scope: !6767)
!6784 = distinct !DISubprogram(name: "variable_test_bit", scope: !6652, file: !6652, line: 224, type: !6768, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6785)
!6785 = !{!6786, !6787, !6788}
!6786 = !DILocalVariable(name: "nr", arg: 1, scope: !6784, file: !6652, line: 224, type: !148)
!6787 = !DILocalVariable(name: "addr", arg: 2, scope: !6784, file: !6652, line: 224, type: !6690)
!6788 = !DILocalVariable(name: "oldbit", scope: !6784, file: !6652, line: 226, type: !825)
!6789 = !DILocation(line: 224, column: 52, scope: !6784)
!6790 = !DILocation(line: 224, column: 86, scope: !6784)
!6791 = !DILocation(line: 226, column: 2, scope: !6784)
!6792 = !DILocation(line: 226, column: 7, scope: !6784)
!6793 = !DILocation(line: 231, column: 33, scope: !6784)
!6794 = !DILocation(line: 231, column: 46, scope: !6784)
!6795 = !DILocation(line: 228, column: 2, scope: !6784)
!6796 = !{i64 2148811119, i64 2148811193}
!6797 = !DILocation(line: 233, column: 9, scope: !6784)
!6798 = !DILocation(line: 234, column: 1, scope: !6784)
!6799 = !DILocation(line: 233, column: 2, scope: !6784)
!6800 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !6635, file: !6635, line: 80, type: !6636, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6801)
!6801 = !{!6802, !6803}
!6802 = !DILocalVariable(name: "v", arg: 1, scope: !6800, file: !6635, line: 80, type: !6638)
!6803 = !DILocalVariable(name: "size", arg: 2, scope: !6800, file: !6635, line: 80, type: !1140)
!6804 = !DILocation(line: 80, column: 74, scope: !6800)
!6805 = !DILocation(line: 80, column: 84, scope: !6800)
!6806 = !DILocation(line: 82, column: 20, scope: !6800)
!6807 = !DILocation(line: 82, column: 23, scope: !6800)
!6808 = !DILocation(line: 82, column: 2, scope: !6800)
!6809 = !DILocation(line: 83, column: 2, scope: !6800)
!6810 = !DILocation(line: 84, column: 1, scope: !6800)
!6811 = distinct !DISubprogram(name: "arch_set_bit", scope: !6652, file: !6652, line: 52, type: !5275, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6812)
!6812 = !{!6813, !6814}
!6813 = !DILocalVariable(name: "nr", arg: 1, scope: !6811, file: !6652, line: 52, type: !148)
!6814 = !DILocalVariable(name: "addr", arg: 2, scope: !6811, file: !6652, line: 52, type: !5201)
!6815 = !DILocation(line: 52, column: 19, scope: !6811)
!6816 = !DILocation(line: 52, column: 47, scope: !6811)
!6817 = !DILocation(line: 54, column: 27, scope: !6818)
!6818 = distinct !DILexicalBlock(scope: !6811, file: !6652, line: 54, column: 6)
!6819 = !DILocation(line: 54, column: 6, scope: !6818)
!6820 = !DILocation(line: 54, column: 6, scope: !6811)
!6821 = !DILocation(line: 56, column: 6, scope: !6822)
!6822 = distinct !DILexicalBlock(scope: !6818, file: !6652, line: 54, column: 32)
!6823 = !DILocation(line: 57, column: 12, scope: !6822)
!6824 = !DILocation(line: 55, column: 3, scope: !6822)
!6825 = !{i64 2148797507, i64 2148797546, i64 2148797567, i64 2148797604, i64 2148797627, i64 2148797497}
!6826 = !DILocation(line: 59, column: 2, scope: !6822)
!6827 = !DILocation(line: 61, column: 8, scope: !6828)
!6828 = distinct !DILexicalBlock(scope: !6818, file: !6652, line: 59, column: 9)
!6829 = !DILocation(line: 61, column: 32, scope: !6828)
!6830 = !DILocation(line: 60, column: 3, scope: !6828)
!6831 = !{i64 2148797792, i64 2148797831, i64 2148797852, i64 2148797889, i64 2148797912, i64 2148797782}
!6832 = !DILocation(line: 63, column: 1, scope: !6811)
!6833 = distinct !DISubprogram(name: "arch_clear_bit", scope: !6652, file: !6652, line: 72, type: !5275, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6834)
!6834 = !{!6835, !6836}
!6835 = !DILocalVariable(name: "nr", arg: 1, scope: !6833, file: !6652, line: 72, type: !148)
!6836 = !DILocalVariable(name: "addr", arg: 2, scope: !6833, file: !6652, line: 72, type: !5201)
!6837 = !DILocation(line: 72, column: 21, scope: !6833)
!6838 = !DILocation(line: 72, column: 49, scope: !6833)
!6839 = !DILocation(line: 74, column: 27, scope: !6840)
!6840 = distinct !DILexicalBlock(scope: !6833, file: !6652, line: 74, column: 6)
!6841 = !DILocation(line: 74, column: 6, scope: !6840)
!6842 = !DILocation(line: 74, column: 6, scope: !6833)
!6843 = !DILocation(line: 76, column: 6, scope: !6844)
!6844 = distinct !DILexicalBlock(scope: !6840, file: !6652, line: 74, column: 32)
!6845 = !DILocation(line: 77, column: 13, scope: !6844)
!6846 = !DILocation(line: 77, column: 12, scope: !6844)
!6847 = !DILocation(line: 75, column: 3, scope: !6844)
!6848 = !{i64 2148798795, i64 2148798834, i64 2148798855, i64 2148798892, i64 2148798915, i64 2148798785}
!6849 = !DILocation(line: 78, column: 2, scope: !6844)
!6850 = !DILocation(line: 80, column: 8, scope: !6851)
!6851 = distinct !DILexicalBlock(scope: !6840, file: !6652, line: 78, column: 9)
!6852 = !DILocation(line: 80, column: 32, scope: !6851)
!6853 = !DILocation(line: 79, column: 3, scope: !6851)
!6854 = !{i64 2148799080, i64 2148799119, i64 2148799140, i64 2148799177, i64 2148799200, i64 2148799070}
!6855 = !DILocation(line: 82, column: 1, scope: !6833)
!6856 = distinct !DISubprogram(name: "check_copy_size", scope: !5106, file: !5106, line: 237, type: !6857, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6859)
!6857 = !DISubroutineType(types: !6858)
!6858 = !{!825, !1931, !1140, !825}
!6859 = !{!6860, !6861, !6862, !6863, !6864, !6867}
!6860 = !DILocalVariable(name: "addr", arg: 1, scope: !6856, file: !5106, line: 237, type: !1931)
!6861 = !DILocalVariable(name: "bytes", arg: 2, scope: !6856, file: !5106, line: 237, type: !1140)
!6862 = !DILocalVariable(name: "is_source", arg: 3, scope: !6856, file: !5106, line: 237, type: !825)
!6863 = !DILocalVariable(name: "sz", scope: !6856, file: !5106, line: 239, type: !109)
!6864 = !DILocalVariable(name: "__ret_warn_on", scope: !6865, file: !5106, line: 249, type: !109)
!6865 = distinct !DILexicalBlock(scope: !6866, file: !5106, line: 249, column: 6)
!6866 = distinct !DILexicalBlock(scope: !6856, file: !5106, line: 249, column: 6)
!6867 = !DILocalVariable(name: "__flags", scope: !6868, file: !5106, line: 249, type: !109)
!6868 = distinct !DILexicalBlock(scope: !6869, file: !5106, line: 249, column: 6)
!6869 = distinct !DILexicalBlock(scope: !6865, file: !5106, line: 249, column: 6)
!6870 = !DILocation(line: 237, column: 29, scope: !6856)
!6871 = !DILocation(line: 237, column: 42, scope: !6856)
!6872 = !DILocation(line: 237, column: 54, scope: !6856)
!6873 = !DILocation(line: 239, column: 2, scope: !6856)
!6874 = !DILocation(line: 239, column: 6, scope: !6856)
!6875 = !DILocation(line: 239, column: 33, scope: !6856)
!6876 = !DILocation(line: 239, column: 11, scope: !6856)
!6877 = !DILocation(line: 240, column: 6, scope: !6878)
!6878 = distinct !DILexicalBlock(scope: !6856, file: !5106, line: 240, column: 6)
!6879 = !DILocation(line: 0, scope: !6878)
!6880 = !DILocation(line: 240, column: 6, scope: !6856)
!6881 = !DILocation(line: 241, column: 29, scope: !6882)
!6882 = distinct !DILexicalBlock(scope: !6883, file: !5106, line: 241, column: 7)
!6883 = distinct !DILexicalBlock(scope: !6878, file: !5106, line: 240, column: 39)
!6884 = !DILocation(line: 241, column: 8, scope: !6882)
!6885 = !DILocation(line: 241, column: 7, scope: !6883)
!6886 = !DILocation(line: 242, column: 18, scope: !6882)
!6887 = !DILocation(line: 242, column: 22, scope: !6882)
!6888 = !DILocation(line: 242, column: 4, scope: !6882)
!6889 = !DILocation(line: 243, column: 12, scope: !6890)
!6890 = distinct !DILexicalBlock(scope: !6882, file: !5106, line: 243, column: 12)
!6891 = !DILocation(line: 243, column: 12, scope: !6882)
!6892 = !DILocation(line: 244, column: 4, scope: !6890)
!6893 = !{i32 1595185}
!6894 = !DILocation(line: 246, column: 4, scope: !6890)
!6895 = !{i32 1595214}
!6896 = !DILocation(line: 247, column: 3, scope: !6883)
!6897 = !DILocation(line: 249, column: 6, scope: !6865)
!6898 = !DILocation(line: 249, column: 6, scope: !6869)
!6899 = !DILocation(line: 249, column: 6, scope: !6868)
!6900 = !DILocation(line: 249, column: 6, scope: !6901)
!6901 = distinct !DILexicalBlock(scope: !6868, file: !5106, line: 249, column: 6)
!6902 = !DILocation(line: 249, column: 6, scope: !6903)
!6903 = distinct !DILexicalBlock(scope: !6868, file: !5106, line: 249, column: 6)
!6904 = !{i64 2149553085, i64 2149553114, i64 2149553160, i64 2149553218, i64 2149553272, i64 2149553326, i64 2149553381, i64 2149553412, i64 2149553720, i64 2149553726, i64 2149553773, i64 2149553796, i64 2149553822}
!6905 = !DILocation(line: 249, column: 6, scope: !6906)
!6906 = distinct !DILexicalBlock(scope: !6868, file: !5106, line: 249, column: 6)
!6907 = !DILocation(line: 249, column: 6, scope: !6866)
!6908 = !DILocation(line: 249, column: 6, scope: !6856)
!6909 = !DILocation(line: 250, column: 3, scope: !6866)
!6910 = !DILocation(line: 251, column: 20, scope: !6856)
!6911 = !DILocation(line: 251, column: 26, scope: !6856)
!6912 = !DILocation(line: 251, column: 33, scope: !6856)
!6913 = !DILocation(line: 251, column: 2, scope: !6856)
!6914 = !DILocation(line: 252, column: 2, scope: !6856)
!6915 = !DILocation(line: 253, column: 1, scope: !6856)
!6916 = !DISubprogram(name: "_copy_from_user", scope: !5781, file: !5781, line: 158, type: !5782, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6917 = distinct !DISubprogram(name: "copy_overflow", scope: !5106, file: !5106, line: 230, type: !6918, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6920)
!6918 = !DISubroutineType(types: !6919)
!6919 = !{null, !109, !187}
!6920 = !{!6921, !6922}
!6921 = !DILocalVariable(name: "size", arg: 1, scope: !6917, file: !5106, line: 230, type: !109)
!6922 = !DILocalVariable(name: "count", arg: 2, scope: !6917, file: !5106, line: 230, type: !187)
!6923 = !DILocation(line: 230, column: 38, scope: !6917)
!6924 = !DILocation(line: 230, column: 58, scope: !6917)
!6925 = !DILocation(line: 233, column: 19, scope: !6926)
!6926 = distinct !DILexicalBlock(scope: !6917, file: !5106, line: 232, column: 6)
!6927 = !DILocation(line: 233, column: 25, scope: !6926)
!6928 = !DILocation(line: 233, column: 3, scope: !6926)
!6929 = !DILocation(line: 234, column: 1, scope: !6917)
!6930 = !DISubprogram(name: "__bad_copy_from", scope: !5106, file: !5106, line: 224, type: !2453, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6931 = !DISubprogram(name: "__bad_copy_to", scope: !5106, file: !5106, line: 226, type: !2453, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6932 = distinct !DISubprogram(name: "check_object_size", scope: !5106, file: !5106, line: 218, type: !6933, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6935)
!6933 = !DISubroutineType(types: !6934)
!6934 = !{null, !1931, !187, !825}
!6935 = !{!6936, !6937, !6938}
!6936 = !DILocalVariable(name: "ptr", arg: 1, scope: !6932, file: !5106, line: 218, type: !1931)
!6937 = !DILocalVariable(name: "n", arg: 2, scope: !6932, file: !5106, line: 218, type: !187)
!6938 = !DILocalVariable(name: "to_user", arg: 3, scope: !6932, file: !5106, line: 219, type: !825)
!6939 = !DILocation(line: 218, column: 50, scope: !6932)
!6940 = !DILocation(line: 218, column: 69, scope: !6932)
!6941 = !DILocation(line: 219, column: 15, scope: !6932)
!6942 = !DILocation(line: 220, column: 3, scope: !6932)
!6943 = !DISubprogram(name: "__copy_overflow", scope: !5106, file: !5106, line: 228, type: !6918, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6944 = !DISubprogram(name: "_copy_to_user", scope: !5781, file: !5781, line: 176, type: !5782, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6945 = !DISubprogram(name: "down_read", scope: !767, file: !767, line: 175, type: !5194, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6946 = !DISubprogram(name: "up_read", scope: !767, file: !767, line: 198, type: !5194, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6947 = !DISubprogram(name: "tty_termios_input_baud_rate", scope: !6451, file: !6451, line: 78, type: !6948, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6948 = !DISubroutineType(types: !6949)
!6949 = !{!176, !4225}
!6950 = !DISubprogram(name: "tty_termios_baud_rate", scope: !3554, file: !3554, line: 431, type: !6948, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6951 = !DISubprogram(name: "schedule", scope: !213, file: !213, line: 303, type: !2453, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6952 = !DISubprogram(name: "tty_write_lock", scope: !6451, file: !6451, line: 66, type: !6361, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6953 = !DISubprogram(name: "tty_write_unlock", scope: !6451, file: !6451, line: 65, type: !4196, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6954 = distinct !DISubprogram(name: "signal_pending", scope: !3488, file: !3488, line: 392, type: !6955, scopeLine: 393, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6957)
!6955 = !DISubroutineType(types: !6956)
!6956 = !{!109, !211}
!6957 = !{!6958}
!6958 = !DILocalVariable(name: "p", arg: 1, scope: !6954, file: !3488, line: 392, type: !211)
!6959 = !DILocation(line: 392, column: 54, scope: !6954)
!6960 = !DILocation(line: 399, column: 6, scope: !6961)
!6961 = distinct !DILexicalBlock(scope: !6954, file: !3488, line: 399, column: 6)
!6962 = !DILocation(line: 399, column: 6, scope: !6954)
!6963 = !DILocation(line: 400, column: 3, scope: !6961)
!6964 = !DILocation(line: 401, column: 25, scope: !6954)
!6965 = !DILocation(line: 401, column: 9, scope: !6954)
!6966 = !DILocation(line: 401, column: 2, scope: !6954)
!6967 = !DILocation(line: 402, column: 1, scope: !6954)
!6968 = distinct !DISubprogram(name: "get_current", scope: !6969, file: !6969, line: 39, type: !6970, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6972)
!6969 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!6970 = !DISubroutineType(types: !6971)
!6971 = !{!211}
!6972 = !{!6973, !6975, !6977}
!6973 = !DILocalVariable(name: "pscr_ret__", scope: !6974, file: !6969, line: 41, type: !211)
!6974 = distinct !DILexicalBlock(scope: !6968, file: !6969, line: 41, column: 9)
!6975 = !DILocalVariable(name: "__vpp_verify", scope: !6976, file: !6969, line: 41, type: !1931)
!6976 = distinct !DILexicalBlock(scope: !6974, file: !6969, line: 41, column: 9)
!6977 = !DILocalVariable(name: "pfo_val__", scope: !6978, file: !6969, line: 41, type: !180)
!6978 = distinct !DILexicalBlock(scope: !6974, file: !6969, line: 41, column: 9)
!6979 = !DILocation(line: 41, column: 9, scope: !6974)
!6980 = !DILocation(line: 41, column: 9, scope: !6976)
!6981 = !DILocation(line: 41, column: 9, scope: !6978)
!6982 = !{i64 2149012390}
!6983 = !DILocation(line: 41, column: 9, scope: !6968)
!6984 = !DILocation(line: 41, column: 2, scope: !6968)
!6985 = distinct !DISubprogram(name: "test_tsk_thread_flag", scope: !213, file: !213, line: 2066, type: !6986, scopeLine: 2067, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6988)
!6986 = !DISubroutineType(types: !6987)
!6987 = !{!109, !211, !109}
!6988 = !{!6989, !6990}
!6989 = !DILocalVariable(name: "tsk", arg: 1, scope: !6985, file: !213, line: 2066, type: !211)
!6990 = !DILocalVariable(name: "flag", arg: 2, scope: !6985, file: !213, line: 2066, type: !109)
!6991 = !DILocation(line: 2066, column: 60, scope: !6985)
!6992 = !DILocation(line: 2066, column: 69, scope: !6985)
!6993 = !DILocation(line: 2068, column: 29, scope: !6985)
!6994 = !DILocation(line: 2068, column: 52, scope: !6985)
!6995 = !DILocation(line: 2068, column: 9, scope: !6985)
!6996 = !DILocation(line: 2068, column: 2, scope: !6985)
!6997 = distinct !DISubprogram(name: "task_sigpending", scope: !3488, file: !3488, line: 387, type: !6955, scopeLine: 388, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6998)
!6998 = !{!6999}
!6999 = !DILocalVariable(name: "p", arg: 1, scope: !6997, file: !3488, line: 387, type: !211)
!7000 = !DILocation(line: 387, column: 55, scope: !6997)
!7001 = !DILocation(line: 389, column: 9, scope: !6997)
!7002 = !DILocation(line: 389, column: 2, scope: !6997)
!7003 = distinct !DISubprogram(name: "test_ti_thread_flag", scope: !5106, file: !5106, line: 116, type: !7004, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7007)
!7004 = !DISubroutineType(types: !7005)
!7005 = !{!109, !7006, !109}
!7006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!7007 = !{!7008, !7009}
!7008 = !DILocalVariable(name: "ti", arg: 1, scope: !7003, file: !5106, line: 116, type: !7006)
!7009 = !DILocalVariable(name: "flag", arg: 2, scope: !7003, file: !5106, line: 116, type: !109)
!7010 = !DILocation(line: 116, column: 59, scope: !7003)
!7011 = !DILocation(line: 116, column: 67, scope: !7003)
!7012 = !DILocation(line: 118, column: 9, scope: !7003)
!7013 = !DILocation(line: 118, column: 2, scope: !7003)
!7014 = !DISubprogram(name: "ns_capable", scope: !740, file: !740, line: 149, type: !7015, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7015 = !DISubroutineType(types: !7016)
!7016 = !{!825, !911, !109}
!7017 = !DISubprogram(name: "_raw_spin_lock_irq", scope: !7018, file: !7018, line: 29, type: !7019, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7018 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!7019 = !DISubroutineType(types: !7020)
!7020 = !{null, !7021}
!7021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!7022 = !DISubprogram(name: "_raw_spin_unlock_irq", scope: !7018, file: !7018, line: 41, type: !7019, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
