; ModuleID = 'lib/nlattr.c'
source_filename = "lib/nlattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___nla_validate: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __nla_validate ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_nla_policy_len: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad nla_policy_len ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___nla_parse: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __nla_parse ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_nla_find: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad nla_find ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_nla_strscpy: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad nla_strscpy ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_nla_strdup: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad nla_strdup ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_nla_memcpy: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad nla_memcpy ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_nla_memcmp: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad nla_memcmp ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_nla_strcmp: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad nla_strcmp ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___nla_reserve: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __nla_reserve ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___nla_reserve_64bit: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __nla_reserve_64bit ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___nla_reserve_nohdr: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __nla_reserve_nohdr ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_nla_reserve: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad nla_reserve ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_nla_reserve_64bit: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad nla_reserve_64bit ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_nla_reserve_nohdr: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad nla_reserve_nohdr ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___nla_put: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __nla_put ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___nla_put_64bit: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __nla_put_64bit ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___nla_put_nohdr: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __nla_put_nohdr ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_nla_put: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad nla_put ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_nla_put_64bit: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad nla_put_64bit ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_nla_put_nohdr: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad nla_put_nohdr ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_nla_append: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad nla_append ; .previous"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.pcpu_hot = type { %union.anon.38 }
%union.anon.38 = type { %struct.anon.39, [16 x i8] }
%struct.anon.39 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.nla_policy = type { i8, i8, i16, %union.anon }
%union.anon = type { ptr }
%struct.anon = type { i16, i16 }
%struct.netlink_range_validation = type { i64, i64 }
%struct.netlink_range_validation_signed = type { i64, i64 }
%struct.netlink_ext_ack = type { ptr, ptr, ptr, ptr, i16, [20 x i8], i8, [80 x i8] }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i64, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, ptr, [32 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, %union.rcu_special, %struct.list_head, ptr, i64, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i16, i64, %struct.restart_block, i32, i32, i64, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, ptr, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, %struct.task_io_accounting, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.mutex, i32, ptr, %struct.mutex, %struct.list_head, ptr, i16, i16, ptr, i32, i32, i64, i32, i32, i32, i32, %struct.callback_head, %struct.tlbflush_unmap_batch, ptr, %struct.page_frag, ptr, i32, i32, i64, i64, i64, i64, ptr, ptr, %struct.kmap_ctrl, %struct.callback_head, %struct.refcount_struct, i32, ptr, %struct.timer_list, ptr, %struct.refcount_struct, ptr, ptr, i64, i64, i64, %struct.callback_head, i32, %struct.llist_head, %struct.llist_head, %struct.callback_head, [48 x i8], %struct.thread_struct }
%struct.thread_info = type { i64, i64, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.26, i16, i16 }
%struct.llist_node = type { ptr }
%union.anon.26 = type { i32 }
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
%struct.restart_block = type { i64, ptr, %union.anon.28 }
%union.anon.28 = type { %struct.anon.29 }
%struct.anon.29 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.33 }
%union.anon.33 = type { %struct.raw_spinlock }
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.34, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.37 }
%union.anon.34 = type { %struct.anon.35 }
%struct.anon.35 = type { i64, i64 }
%union.anon.37 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.nlattr = type { i16, i16 }
%struct.sk_buff = type { %union.anon.0, ptr, %union.anon.3, [48 x i8], %union.anon.4, i64, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.6, i32, i32, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, %union.anon.2 }
%union.anon.2 = type { ptr }
%union.anon.3 = type { i64 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { i64, ptr }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { [0 x i8], i8, [0 x i8], [3 x i8], i16, i16, %union.anon.8, i32, i32, i32, %union.anon.10, %union.anon.12, i32, %union.anon.13, %union.anon.14, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.8 = type { i32 }
%union.anon.10 = type { i32 }
%union.anon.12 = type { i32 }
%union.anon.13 = type { i32 }
%union.anon.14 = type { i16 }
%struct.nla_bitfield32 = type { i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"lib/nlattr.c\00", align 1, !dbg !0
@__UNIQUE_ID___addressable___nla_validate344 = internal global ptr @__nla_validate, section ".discard.addressable", align 8, !dbg !7
@nla_attr_len = internal constant [20 x i8] c"\00\01\02\04\08\00\00\00\00\00\00\00\01\02\04\08\00\00\02\04", align 16, !dbg !4544
@nla_attr_minlen = internal constant [20 x i8] c"\00\01\02\04\08\00\00\08\04\00\00\00\01\02\04\08\00\00\02\04", align 16, !dbg !4548
@__UNIQUE_ID___addressable_nla_policy_len345 = internal global ptr @nla_policy_len, section ".discard.addressable", align 8, !dbg !4204
@__UNIQUE_ID___addressable___nla_parse346 = internal global ptr @__nla_parse, section ".discard.addressable", align 8, !dbg !4206
@__UNIQUE_ID___addressable_nla_find347 = internal global ptr @nla_find, section ".discard.addressable", align 8, !dbg !4208
@__UNIQUE_ID___addressable_nla_strscpy348 = internal global ptr @nla_strscpy, section ".discard.addressable", align 8, !dbg !4210
@__UNIQUE_ID___addressable_nla_strdup349 = internal global ptr @nla_strdup, section ".discard.addressable", align 8, !dbg !4212
@__UNIQUE_ID___addressable_nla_memcpy352 = internal global ptr @nla_memcpy, section ".discard.addressable", align 8, !dbg !4214
@__UNIQUE_ID___addressable_nla_memcmp353 = internal global ptr @nla_memcmp, section ".discard.addressable", align 8, !dbg !4216
@__UNIQUE_ID___addressable_nla_strcmp354 = internal global ptr @nla_strcmp, section ".discard.addressable", align 8, !dbg !4218
@__UNIQUE_ID___addressable___nla_reserve355 = internal global ptr @__nla_reserve, section ".discard.addressable", align 8, !dbg !4220
@__UNIQUE_ID___addressable___nla_reserve_64bit356 = internal global ptr @__nla_reserve_64bit, section ".discard.addressable", align 8, !dbg !4222
@__UNIQUE_ID___addressable___nla_reserve_nohdr357 = internal global ptr @__nla_reserve_nohdr, section ".discard.addressable", align 8, !dbg !4224
@__UNIQUE_ID___addressable_nla_reserve358 = internal global ptr @nla_reserve, section ".discard.addressable", align 8, !dbg !4226
@__UNIQUE_ID___addressable_nla_reserve_64bit359 = internal global ptr @nla_reserve_64bit, section ".discard.addressable", align 8, !dbg !4228
@__UNIQUE_ID___addressable_nla_reserve_nohdr360 = internal global ptr @nla_reserve_nohdr, section ".discard.addressable", align 8, !dbg !4230
@__UNIQUE_ID___addressable___nla_put361 = internal global ptr @__nla_put, section ".discard.addressable", align 8, !dbg !4232
@__UNIQUE_ID___addressable___nla_put_64bit362 = internal global ptr @__nla_put_64bit, section ".discard.addressable", align 8, !dbg !4234
@__UNIQUE_ID___addressable___nla_put_nohdr363 = internal global ptr @__nla_put_nohdr, section ".discard.addressable", align 8, !dbg !4236
@__UNIQUE_ID___addressable_nla_put364 = internal global ptr @nla_put, section ".discard.addressable", align 8, !dbg !4238
@__UNIQUE_ID___addressable_nla_put_64bit365 = internal global ptr @nla_put_64bit, section ".discard.addressable", align 8, !dbg !4240
@__UNIQUE_ID___addressable_nla_put_nohdr366 = internal global ptr @nla_put_nohdr, section ".discard.addressable", align 8, !dbg !4242
@__UNIQUE_ID___addressable_nla_append367 = internal global ptr @nla_append, section ".discard.addressable", align 8, !dbg !4244
@__nla_validate_parse.__msg = internal constant [40 x i8] c"allowed policy recursion depth exceeded\00", align 16, !dbg !4246
@__nla_validate_parse.__msg.1 = internal constant [23 x i8] c"Unknown attribute type\00", align 16, !dbg !4346
@__nla_validate_parse._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 5000, i32 10, i32 0, i32 0, i64 0, i64 0 }, align 8, !dbg !4351
@__func__.__nla_validate_parse = private unnamed_addr constant [21 x i8] c"__nla_validate_parse\00", align 1, !dbg !4353
@.str.2 = private unnamed_addr constant [72 x i8] c"\014netlink: %d bytes leftover after parsing attributes in process `%s'.\0A\00", align 1, !dbg !4358
@__nla_validate_parse.__msg.3 = internal constant [40 x i8] c"bytes leftover after parsing attributes\00", align 16, !dbg !4363
@validate_nla._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 5000, i32 10, i32 0, i32 0, i64 0, i64 0 }, align 8, !dbg !4365
@__func__.validate_nla = private unnamed_addr constant [13 x i8] c"validate_nla\00", align 1, !dbg !4421
@.str.4 = private unnamed_addr constant [59 x i8] c"\014netlink: '%s': attribute type %d has an invalid length.\0A\00", align 1, !dbg !4424
@validate_nla.__msg = internal constant [25 x i8] c"invalid attribute length\00", align 16, !dbg !4429
@validate_nla.__msg.5 = internal constant [24 x i8] c"NLA_F_NESTED is missing\00", align 16, !dbg !4434
@validate_nla.__msg.6 = internal constant [26 x i8] c"NLA_F_NESTED not expected\00", align 16, !dbg !4439
@validate_nla.__msg.7 = internal constant [22 x i8] c"Unsupported attribute\00", align 16, !dbg !4444
@validate_nla.__msg.8 = internal constant [35 x i8] c"Attribute failed policy validation\00", align 16, !dbg !4449
@nla_validate_array.__msg = internal constant [24 x i8] c"Array element too short\00", align 16, !dbg !4454
@nla_validate_range_unsigned._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 5000, i32 10, i32 0, i32 0, i64 0, i64 0 }, align 8, !dbg !4477
@__func__.nla_validate_range_unsigned = private unnamed_addr constant [28 x i8] c"nla_validate_range_unsigned\00", align 1, !dbg !4503
@nla_validate_range_unsigned.__msg = internal constant [25 x i8] c"invalid attribute length\00", align 16, !dbg !4508
@nla_validate_range_unsigned.__msg.9 = internal constant [35 x i8] c"binary attribute size out of range\00", align 16, !dbg !4510
@nla_validate_range_unsigned.__msg.10 = internal constant [21 x i8] c"integer out of range\00", align 16, !dbg !4512
@nla_validate_int_range_signed.__msg = internal constant [21 x i8] c"integer out of range\00", align 16, !dbg !4514
@nla_validate_mask.__msg = internal constant [17 x i8] c"reserved bit set\00", align 16, !dbg !4529
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.11 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !4550
@llvm.compiler.used = appending global [22 x ptr] [ptr @__UNIQUE_ID___addressable___nla_validate344, ptr @__UNIQUE_ID___addressable_nla_policy_len345, ptr @__UNIQUE_ID___addressable___nla_parse346, ptr @__UNIQUE_ID___addressable_nla_find347, ptr @__UNIQUE_ID___addressable_nla_strscpy348, ptr @__UNIQUE_ID___addressable_nla_strdup349, ptr @__UNIQUE_ID___addressable_nla_memcpy352, ptr @__UNIQUE_ID___addressable_nla_memcmp353, ptr @__UNIQUE_ID___addressable_nla_strcmp354, ptr @__UNIQUE_ID___addressable___nla_reserve355, ptr @__UNIQUE_ID___addressable___nla_reserve_64bit356, ptr @__UNIQUE_ID___addressable___nla_reserve_nohdr357, ptr @__UNIQUE_ID___addressable_nla_reserve358, ptr @__UNIQUE_ID___addressable_nla_reserve_64bit359, ptr @__UNIQUE_ID___addressable_nla_reserve_nohdr360, ptr @__UNIQUE_ID___addressable___nla_put361, ptr @__UNIQUE_ID___addressable___nla_put_64bit362, ptr @__UNIQUE_ID___addressable___nla_put_nohdr363, ptr @__UNIQUE_ID___addressable_nla_put364, ptr @__UNIQUE_ID___addressable_nla_put_64bit365, ptr @__UNIQUE_ID___addressable_nla_put_nohdr366, ptr @__UNIQUE_ID___addressable_nla_append367], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @nla_get_range_unsigned(ptr noundef %pt, ptr noundef %range) #0 align 16 !dbg !4562 {
entry:
  %pt.addr = alloca ptr, align 8
  %range.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_warn_on40 = alloca i32, align 4
  %__flags51 = alloca i32, align 4
  %tmp64 = alloca i64, align 8
  store ptr %pt, ptr %pt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pt.addr, metadata !4566, metadata !DIExpression()), !dbg !4579
  store ptr %range, ptr %range.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %range.addr, metadata !4567, metadata !DIExpression()), !dbg !4580
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !4581
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4568, metadata !DIExpression()), !dbg !4581
  %0 = load ptr, ptr %pt.addr, align 8, !dbg !4581
  %validation_type = getelementptr inbounds %struct.nla_policy, ptr %0, i32 0, i32 1, !dbg !4581
  %1 = load i8, ptr %validation_type, align 1, !dbg !4581
  %conv = zext i8 %1 to i32, !dbg !4581
  %cmp = icmp ne i32 %conv, 6, !dbg !4581
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !4581

land.rhs:                                         ; preds = %entry
  %2 = load ptr, ptr %pt.addr, align 8, !dbg !4581
  %3 = getelementptr inbounds %struct.nla_policy, ptr %2, i32 0, i32 3, !dbg !4581
  %min = getelementptr inbounds %struct.anon, ptr %3, i32 0, i32 0, !dbg !4581
  %4 = load i16, ptr %min, align 8, !dbg !4581
  %conv2 = sext i16 %4 to i32, !dbg !4581
  %cmp3 = icmp slt i32 %conv2, 0, !dbg !4581
  br i1 %cmp3, label %lor.end, label %lor.rhs, !dbg !4581

lor.rhs:                                          ; preds = %land.rhs
  %5 = load ptr, ptr %pt.addr, align 8, !dbg !4581
  %6 = getelementptr inbounds %struct.nla_policy, ptr %5, i32 0, i32 3, !dbg !4581
  %max = getelementptr inbounds %struct.anon, ptr %6, i32 0, i32 1, !dbg !4581
  %7 = load i16, ptr %max, align 2, !dbg !4581
  %conv5 = sext i16 %7 to i32, !dbg !4581
  %cmp6 = icmp slt i32 %conv5, 0, !dbg !4581
  br label %lor.end, !dbg !4581

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %8 = phi i1 [ true, %land.rhs ], [ %cmp6, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %entry
  %9 = phi i1 [ false, %entry ], [ %8, %lor.end ], !dbg !4582
  %lnot = xor i1 %9, true, !dbg !4581
  %lnot8 = xor i1 %lnot, true, !dbg !4581
  %lnot.ext = zext i1 %lnot8 to i32, !dbg !4581
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !4581
  %10 = load i32, ptr %__ret_warn_on, align 4, !dbg !4583
  %tobool = icmp ne i32 %10, 0, !dbg !4583
  %lnot9 = xor i1 %tobool, true, !dbg !4583
  %lnot11 = xor i1 %lnot9, true, !dbg !4583
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !4583
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !4583
  %expval = call i64 @llvm.expect.i64(i64 %conv13, i64 0), !dbg !4583
  %tobool14 = icmp ne i64 %expval, 0, !dbg !4583
  br i1 %tobool14, label %if.then, label %if.end, !dbg !4581

if.then:                                          ; preds = %land.end
  br label %do.body, !dbg !4583

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #15, !dbg !4584
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4570, metadata !DIExpression()), !dbg !4584
  store i32 2307, ptr %__flags, align 4, !dbg !4584
  br label %do.body15, !dbg !4584

do.body15:                                        ; preds = %do.body
  br label %do.cond, !dbg !4585

do.cond:                                          ; preds = %do.body15
  br label %do.end, !dbg !4585

do.end:                                           ; preds = %do.cond
  br label %do.body16, !dbg !4584

do.body16:                                        ; preds = %do.end
  %11 = load i32, ptr %__flags, align 4, !dbg !4587
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 123, i32 %11, i64 12) #15, !dbg !4587, !srcloc !4589
  br label %do.cond17, !dbg !4587

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !4587

do.end18:                                         ; preds = %do.cond17
  br label %do.body19, !dbg !4584

do.body19:                                        ; preds = %do.end18
  br label %do.cond20, !dbg !4590

do.cond20:                                        ; preds = %do.body19
  br label %do.end21, !dbg !4590

do.end21:                                         ; preds = %do.cond20
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #15, !dbg !4583
  br label %do.cond22, !dbg !4584

do.cond22:                                        ; preds = %do.end21
  br label %do.end23, !dbg !4584

do.end23:                                         ; preds = %do.cond22
  br label %if.end, !dbg !4584

if.end:                                           ; preds = %do.end23, %land.end
  %12 = load i32, ptr %__ret_warn_on, align 4, !dbg !4581
  %tobool24 = icmp ne i32 %12, 0, !dbg !4581
  %lnot25 = xor i1 %tobool24, true, !dbg !4581
  %lnot27 = xor i1 %lnot25, true, !dbg !4581
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !4581
  %conv29 = sext i32 %lnot.ext28 to i64, !dbg !4581
  %expval30 = call i64 @llvm.expect.i64(i64 %conv29, i64 0), !dbg !4581
  store i64 %expval30, ptr %tmp, align 8, !dbg !4583
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !4592
  %13 = load i64, ptr %tmp, align 8, !dbg !4581
  %14 = load ptr, ptr %range.addr, align 8, !dbg !4593
  %min31 = getelementptr inbounds %struct.netlink_range_validation, ptr %14, i32 0, i32 0, !dbg !4594
  store i64 0, ptr %min31, align 8, !dbg !4595
  %15 = load ptr, ptr %pt.addr, align 8, !dbg !4596
  %type = getelementptr inbounds %struct.nla_policy, ptr %15, i32 0, i32 0, !dbg !4597
  %16 = load i8, ptr %type, align 8, !dbg !4597
  %conv32 = zext i8 %16 to i32, !dbg !4596
  switch i32 %conv32, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb34
    i32 18, label %sw.bb34
    i32 11, label %sw.bb34
    i32 3, label %sw.bb36
    i32 19, label %sw.bb36
    i32 4, label %sw.bb38
    i32 7, label %sw.bb38
  ], !dbg !4598

sw.bb:                                            ; preds = %if.end
  %17 = load ptr, ptr %range.addr, align 8, !dbg !4599
  %max33 = getelementptr inbounds %struct.netlink_range_validation, ptr %17, i32 0, i32 1, !dbg !4600
  store i64 255, ptr %max33, align 8, !dbg !4601
  br label %sw.epilog, !dbg !4602

sw.bb34:                                          ; preds = %if.end, %if.end, %if.end
  %18 = load ptr, ptr %range.addr, align 8, !dbg !4603
  %max35 = getelementptr inbounds %struct.netlink_range_validation, ptr %18, i32 0, i32 1, !dbg !4604
  store i64 65535, ptr %max35, align 8, !dbg !4605
  br label %sw.epilog, !dbg !4606

sw.bb36:                                          ; preds = %if.end, %if.end
  %19 = load ptr, ptr %range.addr, align 8, !dbg !4607
  %max37 = getelementptr inbounds %struct.netlink_range_validation, ptr %19, i32 0, i32 1, !dbg !4608
  store i64 4294967295, ptr %max37, align 8, !dbg !4609
  br label %sw.epilog, !dbg !4610

sw.bb38:                                          ; preds = %if.end, %if.end
  %20 = load ptr, ptr %range.addr, align 8, !dbg !4611
  %max39 = getelementptr inbounds %struct.netlink_range_validation, ptr %20, i32 0, i32 1, !dbg !4612
  store i64 -1, ptr %max39, align 8, !dbg !4613
  br label %sw.epilog, !dbg !4614

sw.default:                                       ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on40) #15, !dbg !4615
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on40, metadata !4573, metadata !DIExpression()), !dbg !4615
  store i32 1, ptr %__ret_warn_on40, align 4, !dbg !4615
  %21 = load i32, ptr %__ret_warn_on40, align 4, !dbg !4616
  %tobool41 = icmp ne i32 %21, 0, !dbg !4616
  %lnot42 = xor i1 %tobool41, true, !dbg !4616
  %lnot44 = xor i1 %lnot42, true, !dbg !4616
  %lnot.ext45 = zext i1 %lnot44 to i32, !dbg !4616
  %conv46 = sext i32 %lnot.ext45 to i64, !dbg !4616
  %expval47 = call i64 @llvm.expect.i64(i64 %conv46, i64 0), !dbg !4616
  %tobool48 = icmp ne i64 %expval47, 0, !dbg !4616
  br i1 %tobool48, label %if.then49, label %if.end63, !dbg !4615

if.then49:                                        ; preds = %sw.default
  br label %do.body50, !dbg !4616

do.body50:                                        ; preds = %if.then49
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags51) #15, !dbg !4617
  call void @llvm.dbg.declare(metadata ptr %__flags51, metadata !4576, metadata !DIExpression()), !dbg !4617
  store i32 2307, ptr %__flags51, align 4, !dbg !4617
  br label %do.body52, !dbg !4617

do.body52:                                        ; preds = %do.body50
  br label %do.cond53, !dbg !4618

do.cond53:                                        ; preds = %do.body52
  br label %do.end54, !dbg !4618

do.end54:                                         ; preds = %do.cond53
  br label %do.body55, !dbg !4617

do.body55:                                        ; preds = %do.end54
  %22 = load i32, ptr %__flags51, align 4, !dbg !4620
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 145, i32 %22, i64 12) #15, !dbg !4620, !srcloc !4622
  br label %do.cond56, !dbg !4620

do.cond56:                                        ; preds = %do.body55
  br label %do.end57, !dbg !4620

do.end57:                                         ; preds = %do.cond56
  br label %do.body58, !dbg !4617

do.body58:                                        ; preds = %do.end57
  br label %do.cond59, !dbg !4623

do.cond59:                                        ; preds = %do.body58
  br label %do.end60, !dbg !4623

do.end60:                                         ; preds = %do.cond59
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags51) #15, !dbg !4616
  br label %do.cond61, !dbg !4617

do.cond61:                                        ; preds = %do.end60
  br label %do.end62, !dbg !4617

do.end62:                                         ; preds = %do.cond61
  br label %if.end63, !dbg !4617

if.end63:                                         ; preds = %do.end62, %sw.default
  %23 = load i32, ptr %__ret_warn_on40, align 4, !dbg !4615
  %tobool65 = icmp ne i32 %23, 0, !dbg !4615
  %lnot66 = xor i1 %tobool65, true, !dbg !4615
  %lnot68 = xor i1 %lnot66, true, !dbg !4615
  %lnot.ext69 = zext i1 %lnot68 to i32, !dbg !4615
  %conv70 = sext i32 %lnot.ext69 to i64, !dbg !4615
  %expval71 = call i64 @llvm.expect.i64(i64 %conv70, i64 0), !dbg !4615
  store i64 %expval71, ptr %tmp64, align 8, !dbg !4616
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on40) #15, !dbg !4625
  %24 = load i64, ptr %tmp64, align 8, !dbg !4615
  br label %sw.epilog91, !dbg !4626

sw.epilog:                                        ; preds = %sw.bb38, %sw.bb36, %sw.bb34, %sw.bb
  %25 = load ptr, ptr %pt.addr, align 8, !dbg !4627
  %validation_type72 = getelementptr inbounds %struct.nla_policy, ptr %25, i32 0, i32 1, !dbg !4628
  %26 = load i8, ptr %validation_type72, align 1, !dbg !4628
  %conv73 = zext i8 %26 to i32, !dbg !4627
  switch i32 %conv73, label %sw.default90 [
    i32 1, label %sw.bb74
    i32 2, label %sw.bb74
    i32 6, label %sw.bb81
    i32 3, label %sw.bb82
    i32 4, label %sw.bb86
  ], !dbg !4629

sw.bb74:                                          ; preds = %sw.epilog, %sw.epilog
  %27 = load ptr, ptr %pt.addr, align 8, !dbg !4630
  %28 = getelementptr inbounds %struct.nla_policy, ptr %27, i32 0, i32 3, !dbg !4632
  %min75 = getelementptr inbounds %struct.anon, ptr %28, i32 0, i32 0, !dbg !4632
  %29 = load i16, ptr %min75, align 8, !dbg !4632
  %conv76 = sext i16 %29 to i64, !dbg !4630
  %30 = load ptr, ptr %range.addr, align 8, !dbg !4633
  %min77 = getelementptr inbounds %struct.netlink_range_validation, ptr %30, i32 0, i32 0, !dbg !4634
  store i64 %conv76, ptr %min77, align 8, !dbg !4635
  %31 = load ptr, ptr %pt.addr, align 8, !dbg !4636
  %32 = getelementptr inbounds %struct.nla_policy, ptr %31, i32 0, i32 3, !dbg !4637
  %max78 = getelementptr inbounds %struct.anon, ptr %32, i32 0, i32 1, !dbg !4637
  %33 = load i16, ptr %max78, align 2, !dbg !4637
  %conv79 = sext i16 %33 to i64, !dbg !4636
  %34 = load ptr, ptr %range.addr, align 8, !dbg !4638
  %max80 = getelementptr inbounds %struct.netlink_range_validation, ptr %34, i32 0, i32 1, !dbg !4639
  store i64 %conv79, ptr %max80, align 8, !dbg !4640
  br label %sw.epilog91, !dbg !4641

sw.bb81:                                          ; preds = %sw.epilog
  %35 = load ptr, ptr %range.addr, align 8, !dbg !4642
  %36 = load ptr, ptr %pt.addr, align 8, !dbg !4643
  %37 = getelementptr inbounds %struct.nla_policy, ptr %36, i32 0, i32 3, !dbg !4644
  %38 = load ptr, ptr %37, align 8, !dbg !4644
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %35, ptr align 8 %38, i64 16, i1 false), !dbg !4645
  br label %sw.epilog91, !dbg !4646

sw.bb82:                                          ; preds = %sw.epilog
  %39 = load ptr, ptr %pt.addr, align 8, !dbg !4647
  %40 = getelementptr inbounds %struct.nla_policy, ptr %39, i32 0, i32 3, !dbg !4648
  %min83 = getelementptr inbounds %struct.anon, ptr %40, i32 0, i32 0, !dbg !4648
  %41 = load i16, ptr %min83, align 8, !dbg !4648
  %conv84 = sext i16 %41 to i64, !dbg !4647
  %42 = load ptr, ptr %range.addr, align 8, !dbg !4649
  %min85 = getelementptr inbounds %struct.netlink_range_validation, ptr %42, i32 0, i32 0, !dbg !4650
  store i64 %conv84, ptr %min85, align 8, !dbg !4651
  br label %sw.epilog91, !dbg !4652

sw.bb86:                                          ; preds = %sw.epilog
  %43 = load ptr, ptr %pt.addr, align 8, !dbg !4653
  %44 = getelementptr inbounds %struct.nla_policy, ptr %43, i32 0, i32 3, !dbg !4654
  %max87 = getelementptr inbounds %struct.anon, ptr %44, i32 0, i32 1, !dbg !4654
  %45 = load i16, ptr %max87, align 2, !dbg !4654
  %conv88 = sext i16 %45 to i64, !dbg !4653
  %46 = load ptr, ptr %range.addr, align 8, !dbg !4655
  %max89 = getelementptr inbounds %struct.netlink_range_validation, ptr %46, i32 0, i32 1, !dbg !4656
  store i64 %conv88, ptr %max89, align 8, !dbg !4657
  br label %sw.epilog91, !dbg !4658

sw.default90:                                     ; preds = %sw.epilog
  br label %sw.epilog91, !dbg !4659

sw.epilog91:                                      ; preds = %if.end63, %sw.default90, %sw.bb86, %sw.bb82, %sw.bb81, %sw.bb74
  ret void, !dbg !4660
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @nla_get_range_signed(ptr noundef %pt, ptr noundef %range) #0 align 16 !dbg !4661 {
entry:
  %pt.addr = alloca ptr, align 8
  %range.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %pt, ptr %pt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pt.addr, metadata !4665, metadata !DIExpression()), !dbg !4673
  store ptr %range, ptr %range.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %range.addr, metadata !4666, metadata !DIExpression()), !dbg !4674
  %0 = load ptr, ptr %pt.addr, align 8, !dbg !4675
  %type = getelementptr inbounds %struct.nla_policy, ptr %0, i32 0, i32 0, !dbg !4676
  %1 = load i8, ptr %type, align 8, !dbg !4676
  %conv = zext i8 %1 to i32, !dbg !4675
  switch i32 %conv, label %sw.default [
    i32 12, label %sw.bb
    i32 13, label %sw.bb1
    i32 14, label %sw.bb4
    i32 15, label %sw.bb7
  ], !dbg !4677

sw.bb:                                            ; preds = %entry
  %2 = load ptr, ptr %range.addr, align 8, !dbg !4678
  %min = getelementptr inbounds %struct.netlink_range_validation_signed, ptr %2, i32 0, i32 0, !dbg !4679
  store i64 -128, ptr %min, align 8, !dbg !4680
  %3 = load ptr, ptr %range.addr, align 8, !dbg !4681
  %max = getelementptr inbounds %struct.netlink_range_validation_signed, ptr %3, i32 0, i32 1, !dbg !4682
  store i64 127, ptr %max, align 8, !dbg !4683
  br label %sw.epilog, !dbg !4684

sw.bb1:                                           ; preds = %entry
  %4 = load ptr, ptr %range.addr, align 8, !dbg !4685
  %min2 = getelementptr inbounds %struct.netlink_range_validation_signed, ptr %4, i32 0, i32 0, !dbg !4686
  store i64 -32768, ptr %min2, align 8, !dbg !4687
  %5 = load ptr, ptr %range.addr, align 8, !dbg !4688
  %max3 = getelementptr inbounds %struct.netlink_range_validation_signed, ptr %5, i32 0, i32 1, !dbg !4689
  store i64 32767, ptr %max3, align 8, !dbg !4690
  br label %sw.epilog, !dbg !4691

sw.bb4:                                           ; preds = %entry
  %6 = load ptr, ptr %range.addr, align 8, !dbg !4692
  %min5 = getelementptr inbounds %struct.netlink_range_validation_signed, ptr %6, i32 0, i32 0, !dbg !4693
  store i64 -2147483648, ptr %min5, align 8, !dbg !4694
  %7 = load ptr, ptr %range.addr, align 8, !dbg !4695
  %max6 = getelementptr inbounds %struct.netlink_range_validation_signed, ptr %7, i32 0, i32 1, !dbg !4696
  store i64 2147483647, ptr %max6, align 8, !dbg !4697
  br label %sw.epilog, !dbg !4698

sw.bb7:                                           ; preds = %entry
  %8 = load ptr, ptr %range.addr, align 8, !dbg !4699
  %min8 = getelementptr inbounds %struct.netlink_range_validation_signed, ptr %8, i32 0, i32 0, !dbg !4700
  store i64 -9223372036854775808, ptr %min8, align 8, !dbg !4701
  %9 = load ptr, ptr %range.addr, align 8, !dbg !4702
  %max9 = getelementptr inbounds %struct.netlink_range_validation_signed, ptr %9, i32 0, i32 1, !dbg !4703
  store i64 9223372036854775807, ptr %max9, align 8, !dbg !4704
  br label %sw.epilog, !dbg !4705

sw.default:                                       ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !4706
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4667, metadata !DIExpression()), !dbg !4706
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !4706
  %10 = load i32, ptr %__ret_warn_on, align 4, !dbg !4707
  %tobool = icmp ne i32 %10, 0, !dbg !4707
  %lnot = xor i1 %tobool, true, !dbg !4707
  %lnot10 = xor i1 %lnot, true, !dbg !4707
  %lnot.ext = zext i1 %lnot10 to i32, !dbg !4707
  %conv11 = sext i32 %lnot.ext to i64, !dbg !4707
  %expval = call i64 @llvm.expect.i64(i64 %conv11, i64 0), !dbg !4707
  %tobool12 = icmp ne i64 %expval, 0, !dbg !4707
  br i1 %tobool12, label %if.then, label %if.end, !dbg !4706

if.then:                                          ; preds = %sw.default
  br label %do.body, !dbg !4707

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #15, !dbg !4708
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4670, metadata !DIExpression()), !dbg !4708
  store i32 2307, ptr %__flags, align 4, !dbg !4708
  br label %do.body13, !dbg !4708

do.body13:                                        ; preds = %do.body
  br label %do.cond, !dbg !4709

do.cond:                                          ; preds = %do.body13
  br label %do.end, !dbg !4709

do.end:                                           ; preds = %do.cond
  br label %do.body14, !dbg !4708

do.body14:                                        ; preds = %do.end
  %11 = load i32, ptr %__flags, align 4, !dbg !4711
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 259, i32 %11, i64 12) #15, !dbg !4711, !srcloc !4713
  br label %do.cond15, !dbg !4711

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !4711

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !4708

do.body17:                                        ; preds = %do.end16
  br label %do.cond18, !dbg !4714

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !4714

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #15, !dbg !4707
  br label %do.cond20, !dbg !4708

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !4708

do.end21:                                         ; preds = %do.cond20
  br label %if.end, !dbg !4708

if.end:                                           ; preds = %do.end21, %sw.default
  %12 = load i32, ptr %__ret_warn_on, align 4, !dbg !4706
  %tobool22 = icmp ne i32 %12, 0, !dbg !4706
  %lnot23 = xor i1 %tobool22, true, !dbg !4706
  %lnot25 = xor i1 %lnot23, true, !dbg !4706
  %lnot.ext26 = zext i1 %lnot25 to i32, !dbg !4706
  %conv27 = sext i32 %lnot.ext26 to i64, !dbg !4706
  %expval28 = call i64 @llvm.expect.i64(i64 %conv27, i64 0), !dbg !4706
  store i64 %expval28, ptr %tmp, align 8, !dbg !4707
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !4716
  %13 = load i64, ptr %tmp, align 8, !dbg !4706
  br label %sw.epilog47, !dbg !4717

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb4, %sw.bb1, %sw.bb
  %14 = load ptr, ptr %pt.addr, align 8, !dbg !4718
  %validation_type = getelementptr inbounds %struct.nla_policy, ptr %14, i32 0, i32 1, !dbg !4719
  %15 = load i8, ptr %validation_type, align 1, !dbg !4719
  %conv29 = zext i8 %15 to i32, !dbg !4718
  switch i32 %conv29, label %sw.default46 [
    i32 1, label %sw.bb30
    i32 6, label %sw.bb37
    i32 3, label %sw.bb38
    i32 4, label %sw.bb42
  ], !dbg !4720

sw.bb30:                                          ; preds = %sw.epilog
  %16 = load ptr, ptr %pt.addr, align 8, !dbg !4721
  %17 = getelementptr inbounds %struct.nla_policy, ptr %16, i32 0, i32 3, !dbg !4723
  %min31 = getelementptr inbounds %struct.anon, ptr %17, i32 0, i32 0, !dbg !4723
  %18 = load i16, ptr %min31, align 8, !dbg !4723
  %conv32 = sext i16 %18 to i64, !dbg !4721
  %19 = load ptr, ptr %range.addr, align 8, !dbg !4724
  %min33 = getelementptr inbounds %struct.netlink_range_validation_signed, ptr %19, i32 0, i32 0, !dbg !4725
  store i64 %conv32, ptr %min33, align 8, !dbg !4726
  %20 = load ptr, ptr %pt.addr, align 8, !dbg !4727
  %21 = getelementptr inbounds %struct.nla_policy, ptr %20, i32 0, i32 3, !dbg !4728
  %max34 = getelementptr inbounds %struct.anon, ptr %21, i32 0, i32 1, !dbg !4728
  %22 = load i16, ptr %max34, align 2, !dbg !4728
  %conv35 = sext i16 %22 to i64, !dbg !4727
  %23 = load ptr, ptr %range.addr, align 8, !dbg !4729
  %max36 = getelementptr inbounds %struct.netlink_range_validation_signed, ptr %23, i32 0, i32 1, !dbg !4730
  store i64 %conv35, ptr %max36, align 8, !dbg !4731
  br label %sw.epilog47, !dbg !4732

sw.bb37:                                          ; preds = %sw.epilog
  %24 = load ptr, ptr %range.addr, align 8, !dbg !4733
  %25 = load ptr, ptr %pt.addr, align 8, !dbg !4734
  %26 = getelementptr inbounds %struct.nla_policy, ptr %25, i32 0, i32 3, !dbg !4735
  %27 = load ptr, ptr %26, align 8, !dbg !4735
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %24, ptr align 8 %27, i64 16, i1 false), !dbg !4736
  br label %sw.epilog47, !dbg !4737

sw.bb38:                                          ; preds = %sw.epilog
  %28 = load ptr, ptr %pt.addr, align 8, !dbg !4738
  %29 = getelementptr inbounds %struct.nla_policy, ptr %28, i32 0, i32 3, !dbg !4739
  %min39 = getelementptr inbounds %struct.anon, ptr %29, i32 0, i32 0, !dbg !4739
  %30 = load i16, ptr %min39, align 8, !dbg !4739
  %conv40 = sext i16 %30 to i64, !dbg !4738
  %31 = load ptr, ptr %range.addr, align 8, !dbg !4740
  %min41 = getelementptr inbounds %struct.netlink_range_validation_signed, ptr %31, i32 0, i32 0, !dbg !4741
  store i64 %conv40, ptr %min41, align 8, !dbg !4742
  br label %sw.epilog47, !dbg !4743

sw.bb42:                                          ; preds = %sw.epilog
  %32 = load ptr, ptr %pt.addr, align 8, !dbg !4744
  %33 = getelementptr inbounds %struct.nla_policy, ptr %32, i32 0, i32 3, !dbg !4745
  %max43 = getelementptr inbounds %struct.anon, ptr %33, i32 0, i32 1, !dbg !4745
  %34 = load i16, ptr %max43, align 2, !dbg !4745
  %conv44 = sext i16 %34 to i64, !dbg !4744
  %35 = load ptr, ptr %range.addr, align 8, !dbg !4746
  %max45 = getelementptr inbounds %struct.netlink_range_validation_signed, ptr %35, i32 0, i32 1, !dbg !4747
  store i64 %conv44, ptr %max45, align 8, !dbg !4748
  br label %sw.epilog47, !dbg !4749

sw.default46:                                     ; preds = %sw.epilog
  br label %sw.epilog47, !dbg !4750

sw.epilog47:                                      ; preds = %if.end, %sw.default46, %sw.bb42, %sw.bb38, %sw.bb37, %sw.bb30
  ret void, !dbg !4751
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__nla_validate(ptr noundef %head, i32 noundef %len, i32 noundef %maxtype, ptr noundef %policy, i32 noundef %validate, ptr noundef %extack) #0 align 16 !dbg !4752 {
entry:
  %head.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %maxtype.addr = alloca i32, align 4
  %policy.addr = alloca ptr, align 8
  %validate.addr = alloca i32, align 4
  %extack.addr = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !4756, metadata !DIExpression()), !dbg !4762
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !4757, metadata !DIExpression()), !dbg !4763
  store i32 %maxtype, ptr %maxtype.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %maxtype.addr, metadata !4758, metadata !DIExpression()), !dbg !4764
  store ptr %policy, ptr %policy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !4759, metadata !DIExpression()), !dbg !4765
  store i32 %validate, ptr %validate.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %validate.addr, metadata !4760, metadata !DIExpression()), !dbg !4766
  store ptr %extack, ptr %extack.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %extack.addr, metadata !4761, metadata !DIExpression()), !dbg !4767
  %0 = load ptr, ptr %head.addr, align 8, !dbg !4768
  %1 = load i32, ptr %len.addr, align 4, !dbg !4769
  %2 = load i32, ptr %maxtype.addr, align 4, !dbg !4770
  %3 = load ptr, ptr %policy.addr, align 8, !dbg !4771
  %4 = load i32, ptr %validate.addr, align 4, !dbg !4772
  %5 = load ptr, ptr %extack.addr, align 8, !dbg !4773
  %call = call i32 @__nla_validate_parse(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef null, i32 noundef 0) #16, !dbg !4774
  ret i32 %call, !dbg !4775
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__nla_validate_parse(ptr noundef %head, i32 noundef %len, i32 noundef %maxtype, ptr noundef %policy, i32 noundef %validate, ptr noundef %extack, ptr noundef %tb, i32 noundef %depth) #0 align 16 !dbg !4248 {
entry:
  %retval = alloca i32, align 4
  %head.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %maxtype.addr = alloca i32, align 4
  %policy.addr = alloca ptr, align 8
  %validate.addr = alloca i32, align 4
  %extack.addr = alloca ptr, align 8
  %tb.addr = alloca ptr, align 8
  %depth.addr = alloca i32, align 4
  %nla = alloca ptr, align 8
  %rem = alloca i32, align 4
  %__extack = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %type = alloca i16, align 2
  %__extack19 = alloca ptr, align 8
  %_i = alloca i16, align 2
  %_s = alloca i32, align 4
  %_mask = alloca i64, align 8
  %tmp = alloca i16, align 2
  %err = alloca i32, align 4
  %tmp69 = alloca i32, align 4
  %__extack74 = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !4308, metadata !DIExpression()), !dbg !4776
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !4309, metadata !DIExpression()), !dbg !4777
  store i32 %maxtype, ptr %maxtype.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %maxtype.addr, metadata !4310, metadata !DIExpression()), !dbg !4778
  store ptr %policy, ptr %policy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !4311, metadata !DIExpression()), !dbg !4779
  store i32 %validate, ptr %validate.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %validate.addr, metadata !4312, metadata !DIExpression()), !dbg !4780
  store ptr %extack, ptr %extack.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %extack.addr, metadata !4313, metadata !DIExpression()), !dbg !4781
  store ptr %tb, ptr %tb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tb.addr, metadata !4314, metadata !DIExpression()), !dbg !4782
  store i32 %depth, ptr %depth.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %depth.addr, metadata !4315, metadata !DIExpression()), !dbg !4783
  call void @llvm.lifetime.start.p0(i64 8, ptr %nla) #15, !dbg !4784
  call void @llvm.dbg.declare(metadata ptr %nla, metadata !4316, metadata !DIExpression()), !dbg !4785
  call void @llvm.lifetime.start.p0(i64 4, ptr %rem) #15, !dbg !4786
  call void @llvm.dbg.declare(metadata ptr %rem, metadata !4317, metadata !DIExpression()), !dbg !4787
  %0 = load i32, ptr %depth.addr, align 4, !dbg !4788
  %cmp = icmp uge i32 %0, 10, !dbg !4789
  br i1 %cmp, label %if.then, label %if.end2, !dbg !4790

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !4791

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %__extack) #15, !dbg !4792
  call void @llvm.dbg.declare(metadata ptr %__extack, metadata !4318, metadata !DIExpression()), !dbg !4792
  %1 = load ptr, ptr %extack.addr, align 8, !dbg !4792
  store ptr %1, ptr %__extack, align 8, !dbg !4792
  call void @do_trace_netlink_extack(ptr noundef @__nla_validate_parse.__msg) #16, !dbg !4792
  %2 = load ptr, ptr %__extack, align 8, !dbg !4793
  %tobool = icmp ne ptr %2, null, !dbg !4793
  br i1 %tobool, label %if.then1, label %if.end, !dbg !4792

if.then1:                                         ; preds = %do.body
  %3 = load ptr, ptr %__extack, align 8, !dbg !4793
  %_msg = getelementptr inbounds %struct.netlink_ext_ack, ptr %3, i32 0, i32 0, !dbg !4793
  store ptr @__nla_validate_parse.__msg, ptr %_msg, align 8, !dbg !4793
  br label %if.end, !dbg !4793

if.end:                                           ; preds = %if.then1, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %__extack) #15, !dbg !4791
  br label %do.cond, !dbg !4792

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !4792

do.end:                                           ; preds = %do.cond
  store i32 -22, ptr %retval, align 4, !dbg !4795
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup86, !dbg !4795

if.end2:                                          ; preds = %entry
  %4 = load ptr, ptr %tb.addr, align 8, !dbg !4796
  %tobool3 = icmp ne ptr %4, null, !dbg !4796
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !4798

if.then4:                                         ; preds = %if.end2
  %5 = load ptr, ptr %tb.addr, align 8, !dbg !4799
  %6 = load i32, ptr %maxtype.addr, align 4, !dbg !4800
  %add = add i32 %6, 1, !dbg !4801
  %conv = sext i32 %add to i64, !dbg !4802
  %mul = mul i64 8, %conv, !dbg !4803
  call void @llvm.memset.p0.i64(ptr align 8 %5, i8 0, i64 %mul, i1 false), !dbg !4804
  br label %if.end5, !dbg !4804

if.end5:                                          ; preds = %if.then4, %if.end2
  %7 = load ptr, ptr %head.addr, align 8, !dbg !4805
  store ptr %7, ptr %nla, align 8, !dbg !4805
  %8 = load i32, ptr %len.addr, align 4, !dbg !4805
  store i32 %8, ptr %rem, align 4, !dbg !4805
  br label %for.cond, !dbg !4805

for.cond:                                         ; preds = %for.inc, %if.end5
  %9 = load ptr, ptr %nla, align 8, !dbg !4806
  %10 = load i32, ptr %rem, align 4, !dbg !4806
  %call = call i32 @nla_ok(ptr noundef %9, i32 noundef %10) #16, !dbg !4806
  %tobool6 = icmp ne i32 %call, 0, !dbg !4805
  br i1 %tobool6, label %for.body, label %for.end, !dbg !4805

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 2, ptr %type) #15, !dbg !4807
  call void @llvm.dbg.declare(metadata ptr %type, metadata !4322, metadata !DIExpression()), !dbg !4808
  %11 = load ptr, ptr %nla, align 8, !dbg !4809
  %call7 = call i32 @nla_type(ptr noundef %11) #16, !dbg !4810
  %conv8 = trunc i32 %call7 to i16, !dbg !4810
  store i16 %conv8, ptr %type, align 2, !dbg !4808
  %12 = load i16, ptr %type, align 2, !dbg !4811
  %conv9 = zext i16 %12 to i32, !dbg !4811
  %cmp10 = icmp eq i32 %conv9, 0, !dbg !4812
  br i1 %cmp10, label %if.then15, label %lor.lhs.false, !dbg !4813

lor.lhs.false:                                    ; preds = %for.body
  %13 = load i16, ptr %type, align 2, !dbg !4814
  %conv12 = zext i16 %13 to i32, !dbg !4814
  %14 = load i32, ptr %maxtype.addr, align 4, !dbg !4815
  %cmp13 = icmp sgt i32 %conv12, %14, !dbg !4816
  br i1 %cmp13, label %if.then15, label %if.end28, !dbg !4817

if.then15:                                        ; preds = %lor.lhs.false, %for.body
  %15 = load i32, ptr %validate.addr, align 4, !dbg !4818
  %and = and i32 %15, 2, !dbg !4819
  %tobool16 = icmp ne i32 %and, 0, !dbg !4819
  br i1 %tobool16, label %if.then17, label %if.end27, !dbg !4820

if.then17:                                        ; preds = %if.then15
  br label %do.body18, !dbg !4821

do.body18:                                        ; preds = %if.then17
  call void @llvm.lifetime.start.p0(i64 8, ptr %__extack19) #15, !dbg !4822
  call void @llvm.dbg.declare(metadata ptr %__extack19, metadata !4326, metadata !DIExpression()), !dbg !4822
  %16 = load ptr, ptr %extack.addr, align 8, !dbg !4822
  store ptr %16, ptr %__extack19, align 8, !dbg !4822
  call void @do_trace_netlink_extack(ptr noundef @__nla_validate_parse.__msg.1) #16, !dbg !4822
  %17 = load ptr, ptr %__extack19, align 8, !dbg !4823
  %tobool20 = icmp ne ptr %17, null, !dbg !4823
  br i1 %tobool20, label %if.then21, label %if.end24, !dbg !4822

if.then21:                                        ; preds = %do.body18
  %18 = load ptr, ptr %__extack19, align 8, !dbg !4825
  %_msg22 = getelementptr inbounds %struct.netlink_ext_ack, ptr %18, i32 0, i32 0, !dbg !4825
  store ptr @__nla_validate_parse.__msg.1, ptr %_msg22, align 8, !dbg !4825
  %19 = load ptr, ptr %nla, align 8, !dbg !4825
  %20 = load ptr, ptr %__extack19, align 8, !dbg !4825
  %bad_attr = getelementptr inbounds %struct.netlink_ext_ack, ptr %20, i32 0, i32 1, !dbg !4825
  store ptr %19, ptr %bad_attr, align 8, !dbg !4825
  %21 = load ptr, ptr %__extack19, align 8, !dbg !4825
  %policy23 = getelementptr inbounds %struct.netlink_ext_ack, ptr %21, i32 0, i32 2, !dbg !4825
  store ptr null, ptr %policy23, align 8, !dbg !4825
  br label %if.end24, !dbg !4825

if.end24:                                         ; preds = %if.then21, %do.body18
  call void @llvm.lifetime.end.p0(i64 8, ptr %__extack19) #15, !dbg !4821
  br label %do.cond25, !dbg !4822

do.cond25:                                        ; preds = %if.end24
  br label %do.end26, !dbg !4822

do.end26:                                         ; preds = %do.cond25
  store i32 -22, ptr %retval, align 4, !dbg !4827
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup53, !dbg !4827

if.end27:                                         ; preds = %if.then15
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup53, !dbg !4828

if.end28:                                         ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 2, ptr %_i) #15, !dbg !4829
  call void @llvm.dbg.declare(metadata ptr %_i, metadata !4332, metadata !DIExpression()), !dbg !4829
  %22 = load i16, ptr %type, align 2, !dbg !4829
  store i16 %22, ptr %_i, align 2, !dbg !4829
  call void @llvm.lifetime.start.p0(i64 4, ptr %_s) #15, !dbg !4829
  call void @llvm.dbg.declare(metadata ptr %_s, metadata !4334, metadata !DIExpression()), !dbg !4829
  %23 = load i32, ptr %maxtype.addr, align 4, !dbg !4829
  %add29 = add i32 %23, 1, !dbg !4829
  store i32 %add29, ptr %_s, align 4, !dbg !4829
  call void @llvm.lifetime.start.p0(i64 8, ptr %_mask) #15, !dbg !4829
  call void @llvm.dbg.declare(metadata ptr %_mask, metadata !4335, metadata !DIExpression()), !dbg !4829
  %24 = load i16, ptr %_i, align 2, !dbg !4829
  %conv30 = zext i16 %24 to i64, !dbg !4829
  %25 = load i32, ptr %_s, align 4, !dbg !4829
  %conv31 = sext i32 %25 to i64, !dbg !4829
  %call32 = call i64 @array_index_mask_nospec(i64 noundef %conv30, i64 noundef %conv31) #16, !dbg !4829
  store i64 %call32, ptr %_mask, align 8, !dbg !4829
  br label %do.body33, !dbg !4829

do.body33:                                        ; preds = %if.end28
  br label %do.cond34, !dbg !4830

do.cond34:                                        ; preds = %do.body33
  br label %do.end35, !dbg !4830

do.end35:                                         ; preds = %do.cond34
  br label %do.body36, !dbg !4829

do.body36:                                        ; preds = %do.end35
  br label %do.cond37, !dbg !4832

do.cond37:                                        ; preds = %do.body36
  br label %do.end38, !dbg !4832

do.end38:                                         ; preds = %do.cond37
  %26 = load i16, ptr %_i, align 2, !dbg !4829
  %conv39 = zext i16 %26 to i64, !dbg !4829
  %27 = load i64, ptr %_mask, align 8, !dbg !4829
  %and40 = and i64 %conv39, %27, !dbg !4829
  %conv41 = trunc i64 %and40 to i16, !dbg !4829
  store i16 %conv41, ptr %tmp, align 2, !dbg !4832
  call void @llvm.lifetime.end.p0(i64 8, ptr %_mask) #15, !dbg !4834
  call void @llvm.lifetime.end.p0(i64 4, ptr %_s) #15, !dbg !4834
  call void @llvm.lifetime.end.p0(i64 2, ptr %_i) #15, !dbg !4834
  %28 = load i16, ptr %tmp, align 2, !dbg !4829
  store i16 %28, ptr %type, align 2, !dbg !4835
  %29 = load ptr, ptr %policy.addr, align 8, !dbg !4836
  %tobool42 = icmp ne ptr %29, null, !dbg !4836
  br i1 %tobool42, label %if.then43, label %if.end49, !dbg !4837

if.then43:                                        ; preds = %do.end38
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #15, !dbg !4838
  call void @llvm.dbg.declare(metadata ptr %err, metadata !4336, metadata !DIExpression()), !dbg !4839
  %30 = load ptr, ptr %nla, align 8, !dbg !4840
  %31 = load i32, ptr %maxtype.addr, align 4, !dbg !4841
  %32 = load ptr, ptr %policy.addr, align 8, !dbg !4842
  %33 = load i32, ptr %validate.addr, align 4, !dbg !4843
  %34 = load ptr, ptr %extack.addr, align 8, !dbg !4844
  %35 = load i32, ptr %depth.addr, align 4, !dbg !4845
  %call44 = call i32 @validate_nla(ptr noundef %30, i32 noundef %31, ptr noundef %32, i32 noundef %33, ptr noundef %34, i32 noundef %35) #16, !dbg !4846
  store i32 %call44, ptr %err, align 4, !dbg !4839
  %36 = load i32, ptr %err, align 4, !dbg !4847
  %cmp45 = icmp slt i32 %36, 0, !dbg !4849
  br i1 %cmp45, label %if.then47, label %if.end48, !dbg !4850

if.then47:                                        ; preds = %if.then43
  %37 = load i32, ptr %err, align 4, !dbg !4851
  store i32 %37, ptr %retval, align 4, !dbg !4852
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4852

if.end48:                                         ; preds = %if.then43
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4853
  br label %cleanup, !dbg !4853

cleanup:                                          ; preds = %if.end48, %if.then47
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #15, !dbg !4853
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup53 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end49, !dbg !4854

if.end49:                                         ; preds = %cleanup.cont, %do.end38
  %38 = load ptr, ptr %tb.addr, align 8, !dbg !4855
  %tobool50 = icmp ne ptr %38, null, !dbg !4855
  br i1 %tobool50, label %if.then51, label %if.end52, !dbg !4857

if.then51:                                        ; preds = %if.end49
  %39 = load ptr, ptr %nla, align 8, !dbg !4858
  %40 = load ptr, ptr %tb.addr, align 8, !dbg !4859
  %41 = load i16, ptr %type, align 2, !dbg !4860
  %idxprom = zext i16 %41 to i64, !dbg !4859
  %arrayidx = getelementptr ptr, ptr %40, i64 %idxprom, !dbg !4859
  store ptr %39, ptr %arrayidx, align 8, !dbg !4861
  br label %if.end52, !dbg !4859

if.end52:                                         ; preds = %if.then51, %if.end49
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4862
  br label %cleanup53, !dbg !4862

cleanup53:                                        ; preds = %if.end52, %cleanup, %if.end27, %do.end26
  call void @llvm.lifetime.end.p0(i64 2, ptr %type) #15, !dbg !4862
  %cleanup.dest54 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest54, label %cleanup86 [
    i32 0, label %cleanup.cont55
    i32 6, label %for.inc
  ]

cleanup.cont55:                                   ; preds = %cleanup53
  br label %for.inc, !dbg !4863

for.inc:                                          ; preds = %cleanup.cont55, %cleanup53
  %42 = load ptr, ptr %nla, align 8, !dbg !4806
  %call56 = call ptr @nla_next(ptr noundef %42, ptr noundef %rem) #16, !dbg !4806
  store ptr %call56, ptr %nla, align 8, !dbg !4806
  br label %for.cond, !dbg !4806, !llvm.loop !4864

for.end:                                          ; preds = %for.cond
  %43 = load i32, ptr %rem, align 4, !dbg !4868
  %cmp57 = icmp sgt i32 %43, 0, !dbg !4868
  %lnot = xor i1 %cmp57, true, !dbg !4868
  %lnot59 = xor i1 %lnot, true, !dbg !4868
  %lnot.ext = zext i1 %lnot59 to i32, !dbg !4868
  %conv60 = sext i32 %lnot.ext to i64, !dbg !4868
  %expval = call i64 @llvm.expect.i64(i64 %conv60, i64 0), !dbg !4868
  %tobool61 = icmp ne i64 %expval, 0, !dbg !4868
  br i1 %tobool61, label %if.then62, label %if.end85, !dbg !4869

if.then62:                                        ; preds = %for.end
  %call63 = call i32 @___ratelimit(ptr noundef @__nla_validate_parse._rs, ptr noundef @__func__.__nla_validate_parse) #16, !dbg !4870
  %tobool64 = icmp ne i32 %call63, 0, !dbg !4870
  br i1 %tobool64, label %if.then65, label %if.end72, !dbg !4873

if.then65:                                        ; preds = %if.then62
  br label %do.body66, !dbg !4874

do.body66:                                        ; preds = %if.then65
  br label %do.cond67, !dbg !4876

do.cond67:                                        ; preds = %do.body66
  br label %do.end68, !dbg !4876

do.end68:                                         ; preds = %do.cond67
  %44 = load i32, ptr %rem, align 4, !dbg !4874
  %call70 = call ptr @get_current() #16, !dbg !4874
  %comm = getelementptr inbounds %struct.task_struct, ptr %call70, i32 0, i32 96, !dbg !4874
  %arraydecay = getelementptr inbounds [16 x i8], ptr %comm, i64 0, i64 0, !dbg !4874
  %call71 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2, i32 noundef %44, ptr noundef %arraydecay) #17, !dbg !4874
  store i32 %call71, ptr %tmp69, align 4, !dbg !4876
  %45 = load i32, ptr %tmp69, align 4, !dbg !4874
  br label %if.end72, !dbg !4870

if.end72:                                         ; preds = %do.end68, %if.then62
  br label %do.body73, !dbg !4878

do.body73:                                        ; preds = %if.end72
  call void @llvm.lifetime.start.p0(i64 8, ptr %__extack74) #15, !dbg !4879
  call void @llvm.dbg.declare(metadata ptr %__extack74, metadata !4339, metadata !DIExpression()), !dbg !4879
  %46 = load ptr, ptr %extack.addr, align 8, !dbg !4879
  store ptr %46, ptr %__extack74, align 8, !dbg !4879
  call void @do_trace_netlink_extack(ptr noundef @__nla_validate_parse.__msg.3) #16, !dbg !4879
  %47 = load ptr, ptr %__extack74, align 8, !dbg !4880
  %tobool75 = icmp ne ptr %47, null, !dbg !4880
  br i1 %tobool75, label %if.then76, label %if.end78, !dbg !4879

if.then76:                                        ; preds = %do.body73
  %48 = load ptr, ptr %__extack74, align 8, !dbg !4880
  %_msg77 = getelementptr inbounds %struct.netlink_ext_ack, ptr %48, i32 0, i32 0, !dbg !4880
  store ptr @__nla_validate_parse.__msg.3, ptr %_msg77, align 8, !dbg !4880
  br label %if.end78, !dbg !4880

if.end78:                                         ; preds = %if.then76, %do.body73
  call void @llvm.lifetime.end.p0(i64 8, ptr %__extack74) #15, !dbg !4878
  br label %do.cond79, !dbg !4879

do.cond79:                                        ; preds = %if.end78
  br label %do.end80, !dbg !4879

do.end80:                                         ; preds = %do.cond79
  %49 = load i32, ptr %validate.addr, align 4, !dbg !4882
  %and81 = and i32 %49, 1, !dbg !4884
  %tobool82 = icmp ne i32 %and81, 0, !dbg !4884
  br i1 %tobool82, label %if.then83, label %if.end84, !dbg !4885

if.then83:                                        ; preds = %do.end80
  store i32 -22, ptr %retval, align 4, !dbg !4886
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup86, !dbg !4886

if.end84:                                         ; preds = %do.end80
  br label %if.end85, !dbg !4887

if.end85:                                         ; preds = %if.end84, %for.end
  store i32 0, ptr %retval, align 4, !dbg !4888
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup86, !dbg !4888

cleanup86:                                        ; preds = %if.end85, %if.then83, %cleanup53, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %rem) #15, !dbg !4889
  call void @llvm.lifetime.end.p0(i64 8, ptr %nla) #15, !dbg !4889
  %50 = load i32, ptr %retval, align 4, !dbg !4889
  ret i32 %50, !dbg !4889
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @nla_policy_len(ptr noundef %p, i32 noundef %n) #0 align 16 !dbg !4890 {
entry:
  %p.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4894, metadata !DIExpression()), !dbg !4898
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !4895, metadata !DIExpression()), !dbg !4899
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !4900
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4896, metadata !DIExpression()), !dbg !4901
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #15, !dbg !4900
  call void @llvm.dbg.declare(metadata ptr %len, metadata !4897, metadata !DIExpression()), !dbg !4902
  store i32 0, ptr %len, align 4, !dbg !4902
  store i32 0, ptr %i, align 4, !dbg !4903
  br label %for.cond, !dbg !4905

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !4906
  %1 = load i32, ptr %n.addr, align 4, !dbg !4908
  %cmp = icmp slt i32 %0, %1, !dbg !4909
  br i1 %cmp, label %for.body, label %for.end, !dbg !4910

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %p.addr, align 8, !dbg !4911
  %len1 = getelementptr inbounds %struct.nla_policy, ptr %2, i32 0, i32 2, !dbg !4914
  %3 = load i16, ptr %len1, align 2, !dbg !4914
  %tobool = icmp ne i16 %3, 0, !dbg !4911
  br i1 %tobool, label %if.then, label %if.else, !dbg !4915

if.then:                                          ; preds = %for.body
  %4 = load ptr, ptr %p.addr, align 8, !dbg !4916
  %len2 = getelementptr inbounds %struct.nla_policy, ptr %4, i32 0, i32 2, !dbg !4917
  %5 = load i16, ptr %len2, align 2, !dbg !4917
  %conv = zext i16 %5 to i32, !dbg !4916
  %call = call i32 @nla_total_size(i32 noundef %conv) #16, !dbg !4918
  %6 = load i32, ptr %len, align 4, !dbg !4919
  %add = add i32 %6, %call, !dbg !4919
  store i32 %add, ptr %len, align 4, !dbg !4919
  br label %if.end24, !dbg !4920

if.else:                                          ; preds = %for.body
  %7 = load ptr, ptr %p.addr, align 8, !dbg !4921
  %type = getelementptr inbounds %struct.nla_policy, ptr %7, i32 0, i32 0, !dbg !4923
  %8 = load i8, ptr %type, align 8, !dbg !4923
  %idxprom = zext i8 %8 to i64, !dbg !4924
  %arrayidx = getelementptr [20 x i8], ptr @nla_attr_len, i64 0, i64 %idxprom, !dbg !4924
  %9 = load i8, ptr %arrayidx, align 1, !dbg !4924
  %tobool3 = icmp ne i8 %9, 0, !dbg !4924
  br i1 %tobool3, label %if.then4, label %if.else11, !dbg !4925

if.then4:                                         ; preds = %if.else
  %10 = load ptr, ptr %p.addr, align 8, !dbg !4926
  %type5 = getelementptr inbounds %struct.nla_policy, ptr %10, i32 0, i32 0, !dbg !4927
  %11 = load i8, ptr %type5, align 8, !dbg !4927
  %idxprom6 = zext i8 %11 to i64, !dbg !4928
  %arrayidx7 = getelementptr [20 x i8], ptr @nla_attr_len, i64 0, i64 %idxprom6, !dbg !4928
  %12 = load i8, ptr %arrayidx7, align 1, !dbg !4928
  %conv8 = zext i8 %12 to i32, !dbg !4928
  %call9 = call i32 @nla_total_size(i32 noundef %conv8) #16, !dbg !4929
  %13 = load i32, ptr %len, align 4, !dbg !4930
  %add10 = add i32 %13, %call9, !dbg !4930
  store i32 %add10, ptr %len, align 4, !dbg !4930
  br label %if.end23, !dbg !4931

if.else11:                                        ; preds = %if.else
  %14 = load ptr, ptr %p.addr, align 8, !dbg !4932
  %type12 = getelementptr inbounds %struct.nla_policy, ptr %14, i32 0, i32 0, !dbg !4934
  %15 = load i8, ptr %type12, align 8, !dbg !4934
  %idxprom13 = zext i8 %15 to i64, !dbg !4935
  %arrayidx14 = getelementptr [20 x i8], ptr @nla_attr_minlen, i64 0, i64 %idxprom13, !dbg !4935
  %16 = load i8, ptr %arrayidx14, align 1, !dbg !4935
  %tobool15 = icmp ne i8 %16, 0, !dbg !4935
  br i1 %tobool15, label %if.then16, label %if.end, !dbg !4936

if.then16:                                        ; preds = %if.else11
  %17 = load ptr, ptr %p.addr, align 8, !dbg !4937
  %type17 = getelementptr inbounds %struct.nla_policy, ptr %17, i32 0, i32 0, !dbg !4938
  %18 = load i8, ptr %type17, align 8, !dbg !4938
  %idxprom18 = zext i8 %18 to i64, !dbg !4939
  %arrayidx19 = getelementptr [20 x i8], ptr @nla_attr_minlen, i64 0, i64 %idxprom18, !dbg !4939
  %19 = load i8, ptr %arrayidx19, align 1, !dbg !4939
  %conv20 = zext i8 %19 to i32, !dbg !4939
  %call21 = call i32 @nla_total_size(i32 noundef %conv20) #16, !dbg !4940
  %20 = load i32, ptr %len, align 4, !dbg !4941
  %add22 = add i32 %20, %call21, !dbg !4941
  store i32 %add22, ptr %len, align 4, !dbg !4941
  br label %if.end, !dbg !4942

if.end:                                           ; preds = %if.then16, %if.else11
  br label %if.end23

if.end23:                                         ; preds = %if.end, %if.then4
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.then
  br label %for.inc, !dbg !4943

for.inc:                                          ; preds = %if.end24
  %21 = load i32, ptr %i, align 4, !dbg !4944
  %inc = add i32 %21, 1, !dbg !4944
  store i32 %inc, ptr %i, align 4, !dbg !4944
  %22 = load ptr, ptr %p.addr, align 8, !dbg !4945
  %incdec.ptr = getelementptr %struct.nla_policy, ptr %22, i32 1, !dbg !4945
  store ptr %incdec.ptr, ptr %p.addr, align 8, !dbg !4945
  br label %for.cond, !dbg !4946, !llvm.loop !4947

for.end:                                          ; preds = %for.cond
  %23 = load i32, ptr %len, align 4, !dbg !4949
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #15, !dbg !4950
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !4950
  ret i32 %23, !dbg !4951
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @nla_total_size(i32 noundef %payload) #5 align 16 !dbg !4952 {
entry:
  %payload.addr = alloca i32, align 4
  store i32 %payload, ptr %payload.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %payload.addr, metadata !4954, metadata !DIExpression()), !dbg !4955
  %0 = load i32, ptr %payload.addr, align 4, !dbg !4956
  %call = call i32 @nla_attr_size(i32 noundef %0) #16, !dbg !4956
  %add = add i32 %call, 4, !dbg !4956
  %sub = sub i32 %add, 1, !dbg !4956
  %and = and i32 %sub, -4, !dbg !4956
  ret i32 %and, !dbg !4957
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__nla_parse(ptr noundef %tb, i32 noundef %maxtype, ptr noundef %head, i32 noundef %len, ptr noundef %policy, i32 noundef %validate, ptr noundef %extack) #0 align 16 !dbg !4958 {
entry:
  %tb.addr = alloca ptr, align 8
  %maxtype.addr = alloca i32, align 4
  %head.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %policy.addr = alloca ptr, align 8
  %validate.addr = alloca i32, align 4
  %extack.addr = alloca ptr, align 8
  store ptr %tb, ptr %tb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tb.addr, metadata !4962, metadata !DIExpression()), !dbg !4969
  store i32 %maxtype, ptr %maxtype.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %maxtype.addr, metadata !4963, metadata !DIExpression()), !dbg !4970
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !4964, metadata !DIExpression()), !dbg !4971
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !4965, metadata !DIExpression()), !dbg !4972
  store ptr %policy, ptr %policy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !4966, metadata !DIExpression()), !dbg !4973
  store i32 %validate, ptr %validate.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %validate.addr, metadata !4967, metadata !DIExpression()), !dbg !4974
  store ptr %extack, ptr %extack.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %extack.addr, metadata !4968, metadata !DIExpression()), !dbg !4975
  %0 = load ptr, ptr %head.addr, align 8, !dbg !4976
  %1 = load i32, ptr %len.addr, align 4, !dbg !4977
  %2 = load i32, ptr %maxtype.addr, align 4, !dbg !4978
  %3 = load ptr, ptr %policy.addr, align 8, !dbg !4979
  %4 = load i32, ptr %validate.addr, align 4, !dbg !4980
  %5 = load ptr, ptr %extack.addr, align 8, !dbg !4981
  %6 = load ptr, ptr %tb.addr, align 8, !dbg !4982
  %call = call i32 @__nla_validate_parse(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef 0) #16, !dbg !4983
  ret i32 %call, !dbg !4984
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @nla_find(ptr noundef %head, i32 noundef %len, i32 noundef %attrtype) #0 align 16 !dbg !4985 {
entry:
  %retval = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %attrtype.addr = alloca i32, align 4
  %nla = alloca ptr, align 8
  %rem = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !4989, metadata !DIExpression()), !dbg !4994
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !4990, metadata !DIExpression()), !dbg !4995
  store i32 %attrtype, ptr %attrtype.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %attrtype.addr, metadata !4991, metadata !DIExpression()), !dbg !4996
  call void @llvm.lifetime.start.p0(i64 8, ptr %nla) #15, !dbg !4997
  call void @llvm.dbg.declare(metadata ptr %nla, metadata !4992, metadata !DIExpression()), !dbg !4998
  call void @llvm.lifetime.start.p0(i64 4, ptr %rem) #15, !dbg !4999
  call void @llvm.dbg.declare(metadata ptr %rem, metadata !4993, metadata !DIExpression()), !dbg !5000
  %0 = load ptr, ptr %head.addr, align 8, !dbg !5001
  store ptr %0, ptr %nla, align 8, !dbg !5001
  %1 = load i32, ptr %len.addr, align 4, !dbg !5001
  store i32 %1, ptr %rem, align 4, !dbg !5001
  br label %for.cond, !dbg !5001

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load ptr, ptr %nla, align 8, !dbg !5003
  %3 = load i32, ptr %rem, align 4, !dbg !5003
  %call = call i32 @nla_ok(ptr noundef %2, i32 noundef %3) #16, !dbg !5003
  %tobool = icmp ne i32 %call, 0, !dbg !5001
  br i1 %tobool, label %for.body, label %for.end, !dbg !5001

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %nla, align 8, !dbg !5005
  %call1 = call i32 @nla_type(ptr noundef %4) #16, !dbg !5007
  %5 = load i32, ptr %attrtype.addr, align 4, !dbg !5008
  %cmp = icmp eq i32 %call1, %5, !dbg !5009
  br i1 %cmp, label %if.then, label %if.end, !dbg !5010

if.then:                                          ; preds = %for.body
  %6 = load ptr, ptr %nla, align 8, !dbg !5011
  store ptr %6, ptr %retval, align 8, !dbg !5012
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5012

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !5008

for.inc:                                          ; preds = %if.end
  %7 = load ptr, ptr %nla, align 8, !dbg !5003
  %call2 = call ptr @nla_next(ptr noundef %7, ptr noundef %rem) #16, !dbg !5003
  store ptr %call2, ptr %nla, align 8, !dbg !5003
  br label %for.cond, !dbg !5003, !llvm.loop !5013

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8, !dbg !5015
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5015

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rem) #15, !dbg !5016
  call void @llvm.lifetime.end.p0(i64 8, ptr %nla) #15, !dbg !5016
  %8 = load ptr, ptr %retval, align 8, !dbg !5016
  ret ptr %8, !dbg !5016
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @nla_ok(ptr noundef %nla, i32 noundef %remaining) #5 align 16 !dbg !5017 {
entry:
  %nla.addr = alloca ptr, align 8
  %remaining.addr = alloca i32, align 4
  store ptr %nla, ptr %nla.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nla.addr, metadata !5021, metadata !DIExpression()), !dbg !5023
  store i32 %remaining, ptr %remaining.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %remaining.addr, metadata !5022, metadata !DIExpression()), !dbg !5024
  %0 = load i32, ptr %remaining.addr, align 4, !dbg !5025
  %cmp = icmp sge i32 %0, 4, !dbg !5026
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !5027

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %nla.addr, align 8, !dbg !5028
  %nla_len = getelementptr inbounds %struct.nlattr, ptr %1, i32 0, i32 0, !dbg !5029
  %2 = load i16, ptr %nla_len, align 2, !dbg !5029
  %conv = zext i16 %2 to i64, !dbg !5028
  %cmp1 = icmp uge i64 %conv, 4, !dbg !5030
  br i1 %cmp1, label %land.rhs, label %land.end, !dbg !5031

land.rhs:                                         ; preds = %land.lhs.true
  %3 = load ptr, ptr %nla.addr, align 8, !dbg !5032
  %nla_len3 = getelementptr inbounds %struct.nlattr, ptr %3, i32 0, i32 0, !dbg !5033
  %4 = load i16, ptr %nla_len3, align 2, !dbg !5033
  %conv4 = zext i16 %4 to i32, !dbg !5032
  %5 = load i32, ptr %remaining.addr, align 4, !dbg !5034
  %cmp5 = icmp sle i32 %conv4, %5, !dbg !5035
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %6 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %cmp5, %land.rhs ], !dbg !5036
  %land.ext = zext i1 %6 to i32, !dbg !5031
  ret i32 %land.ext, !dbg !5037
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @nla_type(ptr noundef %nla) #5 align 16 !dbg !5038 {
entry:
  %nla.addr = alloca ptr, align 8
  store ptr %nla, ptr %nla.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nla.addr, metadata !5042, metadata !DIExpression()), !dbg !5043
  %0 = load ptr, ptr %nla.addr, align 8, !dbg !5044
  %nla_type = getelementptr inbounds %struct.nlattr, ptr %0, i32 0, i32 1, !dbg !5045
  %1 = load i16, ptr %nla_type, align 2, !dbg !5045
  %conv = zext i16 %1 to i32, !dbg !5044
  %and = and i32 %conv, -49153, !dbg !5046
  ret i32 %and, !dbg !5047
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @nla_next(ptr noundef %nla, ptr noundef %remaining) #5 align 16 !dbg !5048 {
entry:
  %nla.addr = alloca ptr, align 8
  %remaining.addr = alloca ptr, align 8
  %totlen = alloca i32, align 4
  store ptr %nla, ptr %nla.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nla.addr, metadata !5052, metadata !DIExpression()), !dbg !5055
  store ptr %remaining, ptr %remaining.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %remaining.addr, metadata !5053, metadata !DIExpression()), !dbg !5056
  call void @llvm.lifetime.start.p0(i64 4, ptr %totlen) #15, !dbg !5057
  call void @llvm.dbg.declare(metadata ptr %totlen, metadata !5054, metadata !DIExpression()), !dbg !5058
  %0 = load ptr, ptr %nla.addr, align 8, !dbg !5059
  %nla_len = getelementptr inbounds %struct.nlattr, ptr %0, i32 0, i32 0, !dbg !5059
  %1 = load i16, ptr %nla_len, align 2, !dbg !5059
  %conv = zext i16 %1 to i32, !dbg !5059
  %add = add i32 %conv, 4, !dbg !5059
  %sub = sub i32 %add, 1, !dbg !5059
  %and = and i32 %sub, -4, !dbg !5059
  store i32 %and, ptr %totlen, align 4, !dbg !5058
  %2 = load i32, ptr %totlen, align 4, !dbg !5060
  %3 = load ptr, ptr %remaining.addr, align 8, !dbg !5061
  %4 = load i32, ptr %3, align 4, !dbg !5062
  %sub1 = sub i32 %4, %2, !dbg !5062
  store i32 %sub1, ptr %3, align 4, !dbg !5062
  %5 = load ptr, ptr %nla.addr, align 8, !dbg !5063
  %6 = load i32, ptr %totlen, align 4, !dbg !5064
  %idx.ext = zext i32 %6 to i64, !dbg !5065
  %add.ptr = getelementptr i8, ptr %5, i64 %idx.ext, !dbg !5065
  call void @llvm.lifetime.end.p0(i64 4, ptr %totlen) #15, !dbg !5066
  ret ptr %add.ptr, !dbg !5067
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @nla_strscpy(ptr noundef %dst, ptr noundef %nla, i64 noundef %dstsize) #0 align 16 !dbg !5068 {
entry:
  %retval = alloca i64, align 8
  %dst.addr = alloca ptr, align 8
  %nla.addr = alloca ptr, align 8
  %dstsize.addr = alloca i64, align 8
  %srclen = alloca i64, align 8
  %src = alloca ptr, align 8
  %ret = alloca i64, align 8
  %len = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !5072, metadata !DIExpression()), !dbg !5085
  store ptr %nla, ptr %nla.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nla.addr, metadata !5073, metadata !DIExpression()), !dbg !5086
  store i64 %dstsize, ptr %dstsize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstsize.addr, metadata !5074, metadata !DIExpression()), !dbg !5087
  call void @llvm.lifetime.start.p0(i64 8, ptr %srclen) #15, !dbg !5088
  call void @llvm.dbg.declare(metadata ptr %srclen, metadata !5075, metadata !DIExpression()), !dbg !5089
  %0 = load ptr, ptr %nla.addr, align 8, !dbg !5090
  %call = call i32 @nla_len(ptr noundef %0) #16, !dbg !5091
  %conv = sext i32 %call to i64, !dbg !5091
  store i64 %conv, ptr %srclen, align 8, !dbg !5089
  call void @llvm.lifetime.start.p0(i64 8, ptr %src) #15, !dbg !5092
  call void @llvm.dbg.declare(metadata ptr %src, metadata !5076, metadata !DIExpression()), !dbg !5093
  %1 = load ptr, ptr %nla.addr, align 8, !dbg !5094
  %call1 = call ptr @nla_data(ptr noundef %1) #16, !dbg !5095
  store ptr %call1, ptr %src, align 8, !dbg !5093
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #15, !dbg !5096
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5077, metadata !DIExpression()), !dbg !5097
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #15, !dbg !5098
  call void @llvm.dbg.declare(metadata ptr %len, metadata !5078, metadata !DIExpression()), !dbg !5099
  %2 = load i64, ptr %dstsize.addr, align 8, !dbg !5100
  %cmp = icmp eq i64 %2, 0, !dbg !5101
  br i1 %cmp, label %if.then29, label %lor.lhs.false, !dbg !5102

lor.lhs.false:                                    ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !5103
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5079, metadata !DIExpression()), !dbg !5103
  %3 = load i64, ptr %dstsize.addr, align 8, !dbg !5103
  %cmp3 = icmp ugt i64 %3, 65535, !dbg !5103
  %lnot = xor i1 %cmp3, true, !dbg !5103
  %lnot5 = xor i1 %lnot, true, !dbg !5103
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !5103
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5103
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !5104
  %tobool = icmp ne i32 %4, 0, !dbg !5104
  %lnot6 = xor i1 %tobool, true, !dbg !5104
  %lnot8 = xor i1 %lnot6, true, !dbg !5104
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !5104
  %conv10 = sext i32 %lnot.ext9 to i64, !dbg !5104
  %expval = call i64 @llvm.expect.i64(i64 %conv10, i64 0), !dbg !5104
  %tobool11 = icmp ne i64 %expval, 0, !dbg !5104
  br i1 %tobool11, label %if.then, label %if.end, !dbg !5103

if.then:                                          ; preds = %lor.lhs.false
  br label %do.body, !dbg !5104

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #15, !dbg !5105
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5082, metadata !DIExpression()), !dbg !5105
  store i32 2307, ptr %__flags, align 4, !dbg !5105
  br label %do.body12, !dbg !5105

do.body12:                                        ; preds = %do.body
  br label %do.cond, !dbg !5106

do.cond:                                          ; preds = %do.body12
  br label %do.end, !dbg !5106

do.end:                                           ; preds = %do.cond
  br label %do.body13, !dbg !5105

do.body13:                                        ; preds = %do.end
  %5 = load i32, ptr %__flags, align 4, !dbg !5108
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 757, i32 %5, i64 12) #15, !dbg !5108, !srcloc !5110
  br label %do.cond14, !dbg !5108

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !5108

do.end15:                                         ; preds = %do.cond14
  br label %do.body16, !dbg !5105

do.body16:                                        ; preds = %do.end15
  br label %do.cond17, !dbg !5111

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !5111

do.end18:                                         ; preds = %do.cond17
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #15, !dbg !5104
  br label %do.cond19, !dbg !5105

do.cond19:                                        ; preds = %do.end18
  br label %do.end20, !dbg !5105

do.end20:                                         ; preds = %do.cond19
  br label %if.end, !dbg !5105

if.end:                                           ; preds = %do.end20, %lor.lhs.false
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !5103
  %tobool21 = icmp ne i32 %6, 0, !dbg !5103
  %lnot22 = xor i1 %tobool21, true, !dbg !5103
  %lnot24 = xor i1 %lnot22, true, !dbg !5103
  %lnot.ext25 = zext i1 %lnot24 to i32, !dbg !5103
  %conv26 = sext i32 %lnot.ext25 to i64, !dbg !5103
  %expval27 = call i64 @llvm.expect.i64(i64 %conv26, i64 0), !dbg !5103
  store i64 %expval27, ptr %tmp, align 8, !dbg !5104
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !5113
  %7 = load i64, ptr %tmp, align 8, !dbg !5103
  %tobool28 = icmp ne i64 %7, 0, !dbg !5113
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !5114

if.then29:                                        ; preds = %if.end, %entry
  store i64 -7, ptr %retval, align 8, !dbg !5115
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5115

if.end30:                                         ; preds = %if.end
  %8 = load i64, ptr %srclen, align 8, !dbg !5116
  %cmp31 = icmp ugt i64 %8, 0, !dbg !5118
  br i1 %cmp31, label %land.lhs.true, label %if.end37, !dbg !5119

land.lhs.true:                                    ; preds = %if.end30
  %9 = load ptr, ptr %src, align 8, !dbg !5120
  %10 = load i64, ptr %srclen, align 8, !dbg !5121
  %sub = sub i64 %10, 1, !dbg !5122
  %arrayidx = getelementptr i8, ptr %9, i64 %sub, !dbg !5120
  %11 = load i8, ptr %arrayidx, align 1, !dbg !5120
  %conv33 = zext i8 %11 to i32, !dbg !5120
  %cmp34 = icmp eq i32 %conv33, 0, !dbg !5123
  br i1 %cmp34, label %if.then36, label %if.end37, !dbg !5124

if.then36:                                        ; preds = %land.lhs.true
  %12 = load i64, ptr %srclen, align 8, !dbg !5125
  %dec = add i64 %12, -1, !dbg !5125
  store i64 %dec, ptr %srclen, align 8, !dbg !5125
  br label %if.end37, !dbg !5126

if.end37:                                         ; preds = %if.then36, %land.lhs.true, %if.end30
  %13 = load i64, ptr %srclen, align 8, !dbg !5127
  %14 = load i64, ptr %dstsize.addr, align 8, !dbg !5129
  %cmp38 = icmp uge i64 %13, %14, !dbg !5130
  br i1 %cmp38, label %if.then40, label %if.else, !dbg !5131

if.then40:                                        ; preds = %if.end37
  %15 = load i64, ptr %dstsize.addr, align 8, !dbg !5132
  %sub41 = sub i64 %15, 1, !dbg !5134
  store i64 %sub41, ptr %len, align 8, !dbg !5135
  store i64 -7, ptr %ret, align 8, !dbg !5136
  br label %if.end42, !dbg !5137

if.else:                                          ; preds = %if.end37
  %16 = load i64, ptr %srclen, align 8, !dbg !5138
  store i64 %16, ptr %len, align 8, !dbg !5140
  %17 = load i64, ptr %len, align 8, !dbg !5141
  store i64 %17, ptr %ret, align 8, !dbg !5142
  br label %if.end42

if.end42:                                         ; preds = %if.else, %if.then40
  %18 = load ptr, ptr %dst.addr, align 8, !dbg !5143
  %19 = load ptr, ptr %src, align 8, !dbg !5144
  %20 = load i64, ptr %len, align 8, !dbg !5145
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %18, ptr align 1 %19, i64 %20, i1 false), !dbg !5146
  %21 = load ptr, ptr %dst.addr, align 8, !dbg !5147
  %22 = load i64, ptr %len, align 8, !dbg !5148
  %add.ptr = getelementptr i8, ptr %21, i64 %22, !dbg !5149
  %23 = load i64, ptr %dstsize.addr, align 8, !dbg !5150
  %24 = load i64, ptr %len, align 8, !dbg !5151
  %sub43 = sub i64 %23, %24, !dbg !5152
  call void @llvm.memset.p0.i64(ptr align 1 %add.ptr, i8 0, i64 %sub43, i1 false), !dbg !5153
  %25 = load i64, ptr %ret, align 8, !dbg !5154
  store i64 %25, ptr %retval, align 8, !dbg !5155
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5155

cleanup:                                          ; preds = %if.end42, %if.then29
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #15, !dbg !5156
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #15, !dbg !5156
  call void @llvm.lifetime.end.p0(i64 8, ptr %src) #15, !dbg !5156
  call void @llvm.lifetime.end.p0(i64 8, ptr %srclen) #15, !dbg !5156
  %26 = load i64, ptr %retval, align 8, !dbg !5156
  ret i64 %26, !dbg !5156
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @nla_len(ptr noundef %nla) #5 align 16 !dbg !5157 {
entry:
  %nla.addr = alloca ptr, align 8
  store ptr %nla, ptr %nla.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nla.addr, metadata !5159, metadata !DIExpression()), !dbg !5160
  %0 = load ptr, ptr %nla.addr, align 8, !dbg !5161
  %nla_len = getelementptr inbounds %struct.nlattr, ptr %0, i32 0, i32 0, !dbg !5162
  %1 = load i16, ptr %nla_len, align 2, !dbg !5162
  %conv = zext i16 %1 to i32, !dbg !5161
  %sub = sub i32 %conv, 4, !dbg !5163
  ret i32 %sub, !dbg !5164
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @nla_data(ptr noundef %nla) #5 align 16 !dbg !5165 {
entry:
  %nla.addr = alloca ptr, align 8
  store ptr %nla, ptr %nla.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nla.addr, metadata !5169, metadata !DIExpression()), !dbg !5170
  %0 = load ptr, ptr %nla.addr, align 8, !dbg !5171
  %add.ptr = getelementptr i8, ptr %0, i64 4, !dbg !5172
  ret ptr %add.ptr, !dbg !5173
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @nla_strdup(ptr noundef %nla, i32 noundef %flags) #0 align 16 !dbg !5174 {
entry:
  %nla.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %srclen = alloca i64, align 8
  %src = alloca ptr, align 8
  %dst = alloca ptr, align 8
  store ptr %nla, ptr %nla.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nla.addr, metadata !5178, metadata !DIExpression()), !dbg !5183
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5179, metadata !DIExpression()), !dbg !5184
  call void @llvm.lifetime.start.p0(i64 8, ptr %srclen) #15, !dbg !5185
  call void @llvm.dbg.declare(metadata ptr %srclen, metadata !5180, metadata !DIExpression()), !dbg !5186
  %0 = load ptr, ptr %nla.addr, align 8, !dbg !5187
  %call = call i32 @nla_len(ptr noundef %0) #16, !dbg !5188
  %conv = sext i32 %call to i64, !dbg !5188
  store i64 %conv, ptr %srclen, align 8, !dbg !5186
  call void @llvm.lifetime.start.p0(i64 8, ptr %src) #15, !dbg !5189
  call void @llvm.dbg.declare(metadata ptr %src, metadata !5181, metadata !DIExpression()), !dbg !5190
  %1 = load ptr, ptr %nla.addr, align 8, !dbg !5191
  %call1 = call ptr @nla_data(ptr noundef %1) #16, !dbg !5192
  store ptr %call1, ptr %src, align 8, !dbg !5190
  call void @llvm.lifetime.start.p0(i64 8, ptr %dst) #15, !dbg !5189
  call void @llvm.dbg.declare(metadata ptr %dst, metadata !5182, metadata !DIExpression()), !dbg !5193
  %2 = load i64, ptr %srclen, align 8, !dbg !5194
  %cmp = icmp ugt i64 %2, 0, !dbg !5196
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !5197

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %src, align 8, !dbg !5198
  %4 = load i64, ptr %srclen, align 8, !dbg !5199
  %sub = sub i64 %4, 1, !dbg !5200
  %arrayidx = getelementptr i8, ptr %3, i64 %sub, !dbg !5198
  %5 = load i8, ptr %arrayidx, align 1, !dbg !5198
  %conv3 = zext i8 %5 to i32, !dbg !5198
  %cmp4 = icmp eq i32 %conv3, 0, !dbg !5201
  br i1 %cmp4, label %if.then, label %if.end, !dbg !5202

if.then:                                          ; preds = %land.lhs.true
  %6 = load i64, ptr %srclen, align 8, !dbg !5203
  %dec = add i64 %6, -1, !dbg !5203
  store i64 %dec, ptr %srclen, align 8, !dbg !5203
  br label %if.end, !dbg !5204

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %7 = load i64, ptr %srclen, align 8, !dbg !5205
  %add = add i64 %7, 1, !dbg !5206
  %8 = load i32, ptr %flags.addr, align 4, !dbg !5207
  %call6 = call noalias ptr @kmalloc(i64 noundef %add, i32 noundef %8) #18, !dbg !5208
  store ptr %call6, ptr %dst, align 8, !dbg !5209
  %9 = load ptr, ptr %dst, align 8, !dbg !5210
  %cmp7 = icmp ne ptr %9, null, !dbg !5212
  br i1 %cmp7, label %if.then9, label %if.end11, !dbg !5213

if.then9:                                         ; preds = %if.end
  %10 = load ptr, ptr %dst, align 8, !dbg !5214
  %11 = load ptr, ptr %src, align 8, !dbg !5216
  %12 = load i64, ptr %srclen, align 8, !dbg !5217
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %10, ptr align 1 %11, i64 %12, i1 false), !dbg !5218
  %13 = load ptr, ptr %dst, align 8, !dbg !5219
  %14 = load i64, ptr %srclen, align 8, !dbg !5220
  %arrayidx10 = getelementptr i8, ptr %13, i64 %14, !dbg !5219
  store i8 0, ptr %arrayidx10, align 1, !dbg !5221
  br label %if.end11, !dbg !5222

if.end11:                                         ; preds = %if.then9, %if.end
  %15 = load ptr, ptr %dst, align 8, !dbg !5223
  call void @llvm.lifetime.end.p0(i64 8, ptr %dst) #15, !dbg !5224
  call void @llvm.lifetime.end.p0(i64 8, ptr %src) #15, !dbg !5224
  call void @llvm.lifetime.end.p0(i64 8, ptr %srclen) #15, !dbg !5224
  ret ptr %15, !dbg !5225
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !5226 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5230, metadata !DIExpression()), !dbg !5235
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5231, metadata !DIExpression()), !dbg !5236
  %0 = load i64, ptr %size.addr, align 8, !dbg !5237
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5238
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !5239

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5240
  %tobool = icmp ne i64 %2, 0, !dbg !5240
  br i1 %tobool, label %if.then, label %if.end7, !dbg !5241

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #15, !dbg !5242
  call void @llvm.dbg.declare(metadata ptr %index, metadata !5232, metadata !DIExpression()), !dbg !5243
  %3 = load i64, ptr %size.addr, align 8, !dbg !5244
  %cmp = icmp ugt i64 %3, 8192, !dbg !5246
  br i1 %cmp, label %if.then1, label %if.end, !dbg !5247

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !5248
  %5 = load i32, ptr %flags.addr, align 4, !dbg !5249
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #18, !dbg !5250
  store ptr %call, ptr %retval, align 8, !dbg !5251
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5251

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !5252
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #16, !dbg !5252
  store i32 %call2, ptr %index, align 4, !dbg !5253
  %7 = load i32, ptr %flags.addr, align 4, !dbg !5254
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !5255
  %9 = ptrtoint ptr %8 to i64, !dbg !5255
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #16, !dbg !5256
  %idxprom = zext i32 %call3 to i64, !dbg !5257
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !5257
  %10 = load i32, ptr %index, align 4, !dbg !5258
  %idxprom4 = zext i32 %10 to i64, !dbg !5257
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !5257
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !5257
  %12 = load i32, ptr %flags.addr, align 4, !dbg !5259
  %13 = load i64, ptr %size.addr, align 8, !dbg !5260
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #19, !dbg !5261
  store ptr %call6, ptr %retval, align 8, !dbg !5262
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5262

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #15, !dbg !5263
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !5264
  %15 = load i32, ptr %flags.addr, align 4, !dbg !5265
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #18, !dbg !5266
  store ptr %call8, ptr %retval, align 8, !dbg !5267
  br label %return, !dbg !5267

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !5268
  ret ptr %16, !dbg !5268
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @nla_memcpy(ptr noundef %dest, ptr noundef %src, i32 noundef %count) #0 align 16 !dbg !5269 {
entry:
  %dest.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %count.addr = alloca i32, align 4
  %minlen = alloca i32, align 4
  %__UNIQUE_ID___x350 = alloca i32, align 4
  %__UNIQUE_ID___y351 = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %dest, ptr %dest.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dest.addr, metadata !5273, metadata !DIExpression()), !dbg !5280
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !5274, metadata !DIExpression()), !dbg !5281
  store i32 %count, ptr %count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5275, metadata !DIExpression()), !dbg !5282
  call void @llvm.lifetime.start.p0(i64 4, ptr %minlen) #15, !dbg !5283
  call void @llvm.dbg.declare(metadata ptr %minlen, metadata !5276, metadata !DIExpression()), !dbg !5284
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x350) #15, !dbg !5285
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x350, metadata !5277, metadata !DIExpression()), !dbg !5285
  %0 = load i32, ptr %count.addr, align 4, !dbg !5285
  store i32 %0, ptr %__UNIQUE_ID___x350, align 4, !dbg !5285
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y351) #15, !dbg !5285
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y351, metadata !5279, metadata !DIExpression()), !dbg !5285
  %1 = load ptr, ptr %src.addr, align 8, !dbg !5285
  %call = call i32 @nla_len(ptr noundef %1) #16, !dbg !5285
  store i32 %call, ptr %__UNIQUE_ID___y351, align 4, !dbg !5285
  %2 = load i32, ptr %__UNIQUE_ID___x350, align 4, !dbg !5285
  %3 = load i32, ptr %__UNIQUE_ID___y351, align 4, !dbg !5285
  %cmp = icmp slt i32 %2, %3, !dbg !5285
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5285

cond.true:                                        ; preds = %entry
  %4 = load i32, ptr %__UNIQUE_ID___x350, align 4, !dbg !5285
  br label %cond.end, !dbg !5285

cond.false:                                       ; preds = %entry
  %5 = load i32, ptr %__UNIQUE_ID___y351, align 4, !dbg !5285
  br label %cond.end, !dbg !5285

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ %5, %cond.false ], !dbg !5285
  store i32 %cond, ptr %tmp, align 4, !dbg !5285
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y351) #15, !dbg !5286
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x350) #15, !dbg !5286
  %6 = load i32, ptr %tmp, align 4, !dbg !5285
  store i32 %6, ptr %minlen, align 4, !dbg !5284
  %7 = load ptr, ptr %dest.addr, align 8, !dbg !5287
  %8 = load ptr, ptr %src.addr, align 8, !dbg !5288
  %call1 = call ptr @nla_data(ptr noundef %8) #16, !dbg !5289
  %9 = load i32, ptr %minlen, align 4, !dbg !5290
  %conv = sext i32 %9 to i64, !dbg !5290
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %7, ptr align 1 %call1, i64 %conv, i1 false), !dbg !5291
  %10 = load i32, ptr %count.addr, align 4, !dbg !5292
  %11 = load i32, ptr %minlen, align 4, !dbg !5294
  %cmp2 = icmp sgt i32 %10, %11, !dbg !5295
  br i1 %cmp2, label %if.then, label %if.end, !dbg !5296

if.then:                                          ; preds = %cond.end
  %12 = load ptr, ptr %dest.addr, align 8, !dbg !5297
  %13 = load i32, ptr %minlen, align 4, !dbg !5298
  %idx.ext = sext i32 %13 to i64, !dbg !5299
  %add.ptr = getelementptr i8, ptr %12, i64 %idx.ext, !dbg !5299
  %14 = load i32, ptr %count.addr, align 4, !dbg !5300
  %15 = load i32, ptr %minlen, align 4, !dbg !5301
  %sub = sub i32 %14, %15, !dbg !5302
  %conv4 = sext i32 %sub to i64, !dbg !5300
  call void @llvm.memset.p0.i64(ptr align 1 %add.ptr, i8 0, i64 %conv4, i1 false), !dbg !5303
  br label %if.end, !dbg !5303

if.end:                                           ; preds = %if.then, %cond.end
  %16 = load i32, ptr %minlen, align 4, !dbg !5304
  call void @llvm.lifetime.end.p0(i64 4, ptr %minlen) #15, !dbg !5305
  ret i32 %16, !dbg !5306
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @nla_memcmp(ptr noundef %nla, ptr noundef %data, i64 noundef %size) #0 align 16 !dbg !5307 {
entry:
  %nla.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %d = alloca i32, align 4
  store ptr %nla, ptr %nla.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nla.addr, metadata !5311, metadata !DIExpression()), !dbg !5315
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5312, metadata !DIExpression()), !dbg !5316
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5313, metadata !DIExpression()), !dbg !5317
  call void @llvm.lifetime.start.p0(i64 4, ptr %d) #15, !dbg !5318
  call void @llvm.dbg.declare(metadata ptr %d, metadata !5314, metadata !DIExpression()), !dbg !5319
  %0 = load ptr, ptr %nla.addr, align 8, !dbg !5320
  %call = call i32 @nla_len(ptr noundef %0) #16, !dbg !5321
  %conv = sext i32 %call to i64, !dbg !5321
  %1 = load i64, ptr %size.addr, align 8, !dbg !5322
  %sub = sub i64 %conv, %1, !dbg !5323
  %conv1 = trunc i64 %sub to i32, !dbg !5321
  store i32 %conv1, ptr %d, align 4, !dbg !5319
  %2 = load i32, ptr %d, align 4, !dbg !5324
  %cmp = icmp eq i32 %2, 0, !dbg !5326
  br i1 %cmp, label %if.then, label %if.end, !dbg !5327

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %nla.addr, align 8, !dbg !5328
  %call3 = call ptr @nla_data(ptr noundef %3) #16, !dbg !5329
  %4 = load ptr, ptr %data.addr, align 8, !dbg !5330
  %5 = load i64, ptr %size.addr, align 8, !dbg !5331
  %call4 = call i32 @memcmp(ptr noundef %call3, ptr noundef %4, i64 noundef %5) #16, !dbg !5332
  store i32 %call4, ptr %d, align 4, !dbg !5333
  br label %if.end, !dbg !5334

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, ptr %d, align 4, !dbg !5335
  call void @llvm.lifetime.end.p0(i64 4, ptr %d) #15, !dbg !5336
  ret i32 %6, !dbg !5337
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5338 dso_local i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @nla_strcmp(ptr noundef %nla, ptr noundef %str) #0 align 16 !dbg !5342 {
entry:
  %nla.addr = alloca ptr, align 8
  %str.addr = alloca ptr, align 8
  %len = alloca i32, align 4
  %buf = alloca ptr, align 8
  %attrlen = alloca i32, align 4
  %d = alloca i32, align 4
  store ptr %nla, ptr %nla.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nla.addr, metadata !5346, metadata !DIExpression()), !dbg !5352
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !5347, metadata !DIExpression()), !dbg !5353
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #15, !dbg !5354
  call void @llvm.dbg.declare(metadata ptr %len, metadata !5348, metadata !DIExpression()), !dbg !5355
  %0 = load ptr, ptr %str.addr, align 8, !dbg !5356
  %call = call i64 @strlen(ptr noundef %0) #16, !dbg !5357
  %conv = trunc i64 %call to i32, !dbg !5357
  store i32 %conv, ptr %len, align 4, !dbg !5355
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #15, !dbg !5358
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !5349, metadata !DIExpression()), !dbg !5359
  %1 = load ptr, ptr %nla.addr, align 8, !dbg !5360
  %call1 = call ptr @nla_data(ptr noundef %1) #16, !dbg !5361
  store ptr %call1, ptr %buf, align 8, !dbg !5359
  call void @llvm.lifetime.start.p0(i64 4, ptr %attrlen) #15, !dbg !5362
  call void @llvm.dbg.declare(metadata ptr %attrlen, metadata !5350, metadata !DIExpression()), !dbg !5363
  %2 = load ptr, ptr %nla.addr, align 8, !dbg !5364
  %call2 = call i32 @nla_len(ptr noundef %2) #16, !dbg !5365
  store i32 %call2, ptr %attrlen, align 4, !dbg !5363
  call void @llvm.lifetime.start.p0(i64 4, ptr %d) #15, !dbg !5366
  call void @llvm.dbg.declare(metadata ptr %d, metadata !5351, metadata !DIExpression()), !dbg !5367
  br label %while.cond, !dbg !5368

while.cond:                                       ; preds = %while.body, %entry
  %3 = load i32, ptr %attrlen, align 4, !dbg !5369
  %cmp = icmp sgt i32 %3, 0, !dbg !5370
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !5371

land.rhs:                                         ; preds = %while.cond
  %4 = load ptr, ptr %buf, align 8, !dbg !5372
  %5 = load i32, ptr %attrlen, align 4, !dbg !5373
  %sub = sub i32 %5, 1, !dbg !5374
  %idxprom = sext i32 %sub to i64, !dbg !5372
  %arrayidx = getelementptr i8, ptr %4, i64 %idxprom, !dbg !5372
  %6 = load i8, ptr %arrayidx, align 1, !dbg !5372
  %conv4 = zext i8 %6 to i32, !dbg !5372
  %cmp5 = icmp eq i32 %conv4, 0, !dbg !5375
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %cmp5, %land.rhs ], !dbg !5376
  br i1 %7, label %while.body, label %while.end, !dbg !5368

while.body:                                       ; preds = %land.end
  %8 = load i32, ptr %attrlen, align 4, !dbg !5377
  %dec = add i32 %8, -1, !dbg !5377
  store i32 %dec, ptr %attrlen, align 4, !dbg !5377
  br label %while.cond, !dbg !5368, !llvm.loop !5378

while.end:                                        ; preds = %land.end
  %9 = load i32, ptr %attrlen, align 4, !dbg !5379
  %10 = load i32, ptr %len, align 4, !dbg !5380
  %sub7 = sub i32 %9, %10, !dbg !5381
  store i32 %sub7, ptr %d, align 4, !dbg !5382
  %11 = load i32, ptr %d, align 4, !dbg !5383
  %cmp8 = icmp eq i32 %11, 0, !dbg !5385
  br i1 %cmp8, label %if.then, label %if.end, !dbg !5386

if.then:                                          ; preds = %while.end
  %12 = load ptr, ptr %nla.addr, align 8, !dbg !5387
  %call10 = call ptr @nla_data(ptr noundef %12) #16, !dbg !5388
  %13 = load ptr, ptr %str.addr, align 8, !dbg !5389
  %14 = load i32, ptr %len, align 4, !dbg !5390
  %conv11 = sext i32 %14 to i64, !dbg !5390
  %call12 = call i32 @memcmp(ptr noundef %call10, ptr noundef %13, i64 noundef %conv11) #16, !dbg !5391
  store i32 %call12, ptr %d, align 4, !dbg !5392
  br label %if.end, !dbg !5393

if.end:                                           ; preds = %if.then, %while.end
  %15 = load i32, ptr %d, align 4, !dbg !5394
  call void @llvm.lifetime.end.p0(i64 4, ptr %d) #15, !dbg !5395
  call void @llvm.lifetime.end.p0(i64 4, ptr %attrlen) #15, !dbg !5395
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #15, !dbg !5395
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #15, !dbg !5395
  ret i32 %15, !dbg !5396
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5397 dso_local i64 @strlen(ptr noundef) #8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @__nla_reserve(ptr noundef %skb, i32 noundef %attrtype, i32 noundef %attrlen) #0 align 16 !dbg !5400 {
entry:
  %skb.addr = alloca ptr, align 8
  %attrtype.addr = alloca i32, align 4
  %attrlen.addr = alloca i32, align 4
  %nla = alloca ptr, align 8
  store ptr %skb, ptr %skb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %skb.addr, metadata !5637, metadata !DIExpression()), !dbg !5641
  store i32 %attrtype, ptr %attrtype.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %attrtype.addr, metadata !5638, metadata !DIExpression()), !dbg !5642
  store i32 %attrlen, ptr %attrlen.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %attrlen.addr, metadata !5639, metadata !DIExpression()), !dbg !5643
  call void @llvm.lifetime.start.p0(i64 8, ptr %nla) #15, !dbg !5644
  call void @llvm.dbg.declare(metadata ptr %nla, metadata !5640, metadata !DIExpression()), !dbg !5645
  %0 = load ptr, ptr %skb.addr, align 8, !dbg !5646
  %1 = load i32, ptr %attrlen.addr, align 4, !dbg !5647
  %call = call i32 @nla_total_size(i32 noundef %1) #16, !dbg !5648
  %call1 = call ptr @skb_put(ptr noundef %0, i32 noundef %call) #16, !dbg !5649
  store ptr %call1, ptr %nla, align 8, !dbg !5650
  %2 = load i32, ptr %attrtype.addr, align 4, !dbg !5651
  %conv = trunc i32 %2 to i16, !dbg !5651
  %3 = load ptr, ptr %nla, align 8, !dbg !5652
  %nla_type = getelementptr inbounds %struct.nlattr, ptr %3, i32 0, i32 1, !dbg !5653
  store i16 %conv, ptr %nla_type, align 2, !dbg !5654
  %4 = load i32, ptr %attrlen.addr, align 4, !dbg !5655
  %call2 = call i32 @nla_attr_size(i32 noundef %4) #16, !dbg !5656
  %conv3 = trunc i32 %call2 to i16, !dbg !5656
  %5 = load ptr, ptr %nla, align 8, !dbg !5657
  %nla_len = getelementptr inbounds %struct.nlattr, ptr %5, i32 0, i32 0, !dbg !5658
  store i16 %conv3, ptr %nla_len, align 2, !dbg !5659
  %6 = load ptr, ptr %nla, align 8, !dbg !5660
  %7 = load ptr, ptr %nla, align 8, !dbg !5661
  %nla_len4 = getelementptr inbounds %struct.nlattr, ptr %7, i32 0, i32 0, !dbg !5662
  %8 = load i16, ptr %nla_len4, align 2, !dbg !5662
  %conv5 = zext i16 %8 to i32, !dbg !5661
  %idx.ext = sext i32 %conv5 to i64, !dbg !5663
  %add.ptr = getelementptr i8, ptr %6, i64 %idx.ext, !dbg !5663
  %9 = load i32, ptr %attrlen.addr, align 4, !dbg !5664
  %call6 = call i32 @nla_padlen(i32 noundef %9) #16, !dbg !5665
  %conv7 = sext i32 %call6 to i64, !dbg !5665
  call void @llvm.memset.p0.i64(ptr align 1 %add.ptr, i8 0, i64 %conv7, i1 false), !dbg !5666
  %10 = load ptr, ptr %nla, align 8, !dbg !5667
  call void @llvm.lifetime.end.p0(i64 8, ptr %nla) #15, !dbg !5668
  ret ptr %10, !dbg !5669
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5670 dso_local ptr @skb_put(ptr noundef, i32 noundef) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @nla_attr_size(i32 noundef %payload) #5 align 16 !dbg !5673 {
entry:
  %payload.addr = alloca i32, align 4
  store i32 %payload, ptr %payload.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %payload.addr, metadata !5675, metadata !DIExpression()), !dbg !5676
  %0 = load i32, ptr %payload.addr, align 4, !dbg !5677
  %add = add i32 4, %0, !dbg !5678
  ret i32 %add, !dbg !5679
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @nla_padlen(i32 noundef %payload) #5 align 16 !dbg !5680 {
entry:
  %payload.addr = alloca i32, align 4
  store i32 %payload, ptr %payload.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %payload.addr, metadata !5682, metadata !DIExpression()), !dbg !5683
  %0 = load i32, ptr %payload.addr, align 4, !dbg !5684
  %call = call i32 @nla_total_size(i32 noundef %0) #16, !dbg !5685
  %1 = load i32, ptr %payload.addr, align 4, !dbg !5686
  %call1 = call i32 @nla_attr_size(i32 noundef %1) #16, !dbg !5687
  %sub = sub i32 %call, %call1, !dbg !5688
  ret i32 %sub, !dbg !5689
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @__nla_reserve_64bit(ptr noundef %skb, i32 noundef %attrtype, i32 noundef %attrlen, i32 noundef %padattr) #0 align 16 !dbg !5690 {
entry:
  %skb.addr = alloca ptr, align 8
  %attrtype.addr = alloca i32, align 4
  %attrlen.addr = alloca i32, align 4
  %padattr.addr = alloca i32, align 4
  store ptr %skb, ptr %skb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %skb.addr, metadata !5694, metadata !DIExpression()), !dbg !5698
  store i32 %attrtype, ptr %attrtype.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %attrtype.addr, metadata !5695, metadata !DIExpression()), !dbg !5699
  store i32 %attrlen, ptr %attrlen.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %attrlen.addr, metadata !5696, metadata !DIExpression()), !dbg !5700
  store i32 %padattr, ptr %padattr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %padattr.addr, metadata !5697, metadata !DIExpression()), !dbg !5701
  %0 = load ptr, ptr %skb.addr, align 8, !dbg !5702
  %1 = load i32, ptr %padattr.addr, align 4, !dbg !5703
  %call = call i32 @nla_align_64bit(ptr noundef %0, i32 noundef %1) #16, !dbg !5704
  %2 = load ptr, ptr %skb.addr, align 8, !dbg !5705
  %3 = load i32, ptr %attrtype.addr, align 4, !dbg !5706
  %4 = load i32, ptr %attrlen.addr, align 4, !dbg !5707
  %call1 = call ptr @__nla_reserve(ptr noundef %2, i32 noundef %3, i32 noundef %4) #16, !dbg !5708
  ret ptr %call1, !dbg !5709
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @nla_align_64bit(ptr noundef %skb, i32 noundef %padattr) #5 align 16 !dbg !5710 {
entry:
  %retval = alloca i32, align 4
  %skb.addr = alloca ptr, align 8
  %padattr.addr = alloca i32, align 4
  store ptr %skb, ptr %skb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %skb.addr, metadata !5714, metadata !DIExpression()), !dbg !5716
  store i32 %padattr, ptr %padattr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %padattr.addr, metadata !5715, metadata !DIExpression()), !dbg !5717
  %0 = load ptr, ptr %skb.addr, align 8, !dbg !5718
  %call = call zeroext i1 @nla_need_padding_for_64bit(ptr noundef %0) #16, !dbg !5720
  br i1 %call, label %land.lhs.true, label %if.end, !dbg !5721

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %skb.addr, align 8, !dbg !5722
  %2 = load i32, ptr %padattr.addr, align 4, !dbg !5723
  %call1 = call ptr @nla_reserve(ptr noundef %1, i32 noundef %2, i32 noundef 0) #16, !dbg !5724
  %tobool = icmp ne ptr %call1, null, !dbg !5724
  br i1 %tobool, label %if.end, label %if.then, !dbg !5725

if.then:                                          ; preds = %land.lhs.true
  store i32 -90, ptr %retval, align 4, !dbg !5726
  br label %return, !dbg !5726

if.end:                                           ; preds = %land.lhs.true, %entry
  store i32 0, ptr %retval, align 4, !dbg !5727
  br label %return, !dbg !5727

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4, !dbg !5728
  ret i32 %3, !dbg !5728
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @__nla_reserve_nohdr(ptr noundef %skb, i32 noundef %attrlen) #0 align 16 !dbg !5729 {
entry:
  %skb.addr = alloca ptr, align 8
  %attrlen.addr = alloca i32, align 4
  store ptr %skb, ptr %skb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %skb.addr, metadata !5733, metadata !DIExpression()), !dbg !5735
  store i32 %attrlen, ptr %attrlen.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %attrlen.addr, metadata !5734, metadata !DIExpression()), !dbg !5736
  %0 = load ptr, ptr %skb.addr, align 8, !dbg !5737
  %1 = load i32, ptr %attrlen.addr, align 4, !dbg !5738
  %add = add i32 %1, 4, !dbg !5738
  %sub = sub i32 %add, 1, !dbg !5738
  %and = and i32 %sub, -4, !dbg !5738
  %call = call ptr @skb_put_zero(ptr noundef %0, i32 noundef %and) #16, !dbg !5739
  ret ptr %call, !dbg !5740
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @skb_put_zero(ptr noundef %skb, i32 noundef %len) #5 align 16 !dbg !5741 {
entry:
  %skb.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %tmp = alloca ptr, align 8
  store ptr %skb, ptr %skb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %skb.addr, metadata !5743, metadata !DIExpression()), !dbg !5746
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !5744, metadata !DIExpression()), !dbg !5747
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #15, !dbg !5748
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !5745, metadata !DIExpression()), !dbg !5749
  %0 = load ptr, ptr %skb.addr, align 8, !dbg !5750
  %1 = load i32, ptr %len.addr, align 4, !dbg !5751
  %call = call ptr @skb_put(ptr noundef %0, i32 noundef %1) #16, !dbg !5752
  store ptr %call, ptr %tmp, align 8, !dbg !5749
  %2 = load ptr, ptr %tmp, align 8, !dbg !5753
  %3 = load i32, ptr %len.addr, align 4, !dbg !5754
  %conv = zext i32 %3 to i64, !dbg !5754
  call void @llvm.memset.p0.i64(ptr align 1 %2, i8 0, i64 %conv, i1 false), !dbg !5755
  %4 = load ptr, ptr %tmp, align 8, !dbg !5756
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #15, !dbg !5757
  ret ptr %4, !dbg !5758
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @nla_reserve(ptr noundef %skb, i32 noundef %attrtype, i32 noundef %attrlen) #0 align 16 !dbg !5759 {
entry:
  %retval = alloca ptr, align 8
  %skb.addr = alloca ptr, align 8
  %attrtype.addr = alloca i32, align 4
  %attrlen.addr = alloca i32, align 4
  store ptr %skb, ptr %skb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %skb.addr, metadata !5761, metadata !DIExpression()), !dbg !5764
  store i32 %attrtype, ptr %attrtype.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %attrtype.addr, metadata !5762, metadata !DIExpression()), !dbg !5765
  store i32 %attrlen, ptr %attrlen.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %attrlen.addr, metadata !5763, metadata !DIExpression()), !dbg !5766
  %0 = load ptr, ptr %skb.addr, align 8, !dbg !5767
  %call = call i32 @skb_tailroom(ptr noundef %0) #16, !dbg !5767
  %1 = load i32, ptr %attrlen.addr, align 4, !dbg !5767
  %call1 = call i32 @nla_total_size(i32 noundef %1) #16, !dbg !5767
  %cmp = icmp slt i32 %call, %call1, !dbg !5767
  %lnot = xor i1 %cmp, true, !dbg !5767
  %lnot2 = xor i1 %lnot, true, !dbg !5767
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5767
  %conv = sext i32 %lnot.ext to i64, !dbg !5767
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5767
  %tobool = icmp ne i64 %expval, 0, !dbg !5767
  br i1 %tobool, label %if.then, label %if.end, !dbg !5769

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !5770
  br label %return, !dbg !5770

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %skb.addr, align 8, !dbg !5771
  %3 = load i32, ptr %attrtype.addr, align 4, !dbg !5772
  %4 = load i32, ptr %attrlen.addr, align 4, !dbg !5773
  %call3 = call ptr @__nla_reserve(ptr noundef %2, i32 noundef %3, i32 noundef %4) #16, !dbg !5774
  store ptr %call3, ptr %retval, align 8, !dbg !5775
  br label %return, !dbg !5775

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8, !dbg !5776
  ret ptr %5, !dbg !5776
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @skb_tailroom(ptr noundef %skb) #5 align 16 !dbg !5777 {
entry:
  %skb.addr = alloca ptr, align 8
  store ptr %skb, ptr %skb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %skb.addr, metadata !5783, metadata !DIExpression()), !dbg !5784
  %0 = load ptr, ptr %skb.addr, align 8, !dbg !5785
  %call = call zeroext i1 @skb_is_nonlinear(ptr noundef %0) #16, !dbg !5786
  br i1 %call, label %cond.true, label %cond.false, !dbg !5786

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !5786

cond.false:                                       ; preds = %entry
  %1 = load ptr, ptr %skb.addr, align 8, !dbg !5787
  %end = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16, !dbg !5788
  %2 = load i32, ptr %end, align 4, !dbg !5788
  %3 = load ptr, ptr %skb.addr, align 8, !dbg !5789
  %tail = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 15, !dbg !5790
  %4 = load i32, ptr %tail, align 8, !dbg !5790
  %sub = sub i32 %2, %4, !dbg !5791
  br label %cond.end, !dbg !5786

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %sub, %cond.false ], !dbg !5786
  ret i32 %cond, !dbg !5792
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @nla_reserve_64bit(ptr noundef %skb, i32 noundef %attrtype, i32 noundef %attrlen, i32 noundef %padattr) #0 align 16 !dbg !5793 {
entry:
  %retval = alloca ptr, align 8
  %skb.addr = alloca ptr, align 8
  %attrtype.addr = alloca i32, align 4
  %attrlen.addr = alloca i32, align 4
  %padattr.addr = alloca i32, align 4
  %len = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %skb, ptr %skb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %skb.addr, metadata !5795, metadata !DIExpression()), !dbg !5800
  store i32 %attrtype, ptr %attrtype.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %attrtype.addr, metadata !5796, metadata !DIExpression()), !dbg !5801
  store i32 %attrlen, ptr %attrlen.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %attrlen.addr, metadata !5797, metadata !DIExpression()), !dbg !5802
  store i32 %padattr, ptr %padattr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %padattr.addr, metadata !5798, metadata !DIExpression()), !dbg !5803
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #15, !dbg !5804
  call void @llvm.dbg.declare(metadata ptr %len, metadata !5799, metadata !DIExpression()), !dbg !5805
  %0 = load ptr, ptr %skb.addr, align 8, !dbg !5806
  %call = call zeroext i1 @nla_need_padding_for_64bit(ptr noundef %0) #16, !dbg !5808
  br i1 %call, label %if.then, label %if.else, !dbg !5809

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %attrlen.addr, align 4, !dbg !5810
  %call1 = call i32 @nla_total_size_64bit(i32 noundef %1) #16, !dbg !5811
  %conv = sext i32 %call1 to i64, !dbg !5811
  store i64 %conv, ptr %len, align 8, !dbg !5812
  br label %if.end, !dbg !5813

if.else:                                          ; preds = %entry
  %2 = load i32, ptr %attrlen.addr, align 4, !dbg !5814
  %call2 = call i32 @nla_total_size(i32 noundef %2) #16, !dbg !5815
  %conv3 = sext i32 %call2 to i64, !dbg !5815
  store i64 %conv3, ptr %len, align 8, !dbg !5816
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load ptr, ptr %skb.addr, align 8, !dbg !5817
  %call4 = call i32 @skb_tailroom(ptr noundef %3) #16, !dbg !5817
  %conv5 = sext i32 %call4 to i64, !dbg !5817
  %4 = load i64, ptr %len, align 8, !dbg !5817
  %cmp = icmp ult i64 %conv5, %4, !dbg !5817
  %lnot = xor i1 %cmp, true, !dbg !5817
  %lnot7 = xor i1 %lnot, true, !dbg !5817
  %lnot.ext = zext i1 %lnot7 to i32, !dbg !5817
  %conv8 = sext i32 %lnot.ext to i64, !dbg !5817
  %expval = call i64 @llvm.expect.i64(i64 %conv8, i64 0), !dbg !5817
  %tobool = icmp ne i64 %expval, 0, !dbg !5817
  br i1 %tobool, label %if.then9, label %if.end10, !dbg !5819

if.then9:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8, !dbg !5820
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5820

if.end10:                                         ; preds = %if.end
  %5 = load ptr, ptr %skb.addr, align 8, !dbg !5821
  %6 = load i32, ptr %attrtype.addr, align 4, !dbg !5822
  %7 = load i32, ptr %attrlen.addr, align 4, !dbg !5823
  %8 = load i32, ptr %padattr.addr, align 4, !dbg !5824
  %call11 = call ptr @__nla_reserve_64bit(ptr noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #16, !dbg !5825
  store ptr %call11, ptr %retval, align 8, !dbg !5826
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5826

cleanup:                                          ; preds = %if.end10, %if.then9
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #15, !dbg !5827
  %9 = load ptr, ptr %retval, align 8, !dbg !5827
  ret ptr %9, !dbg !5827
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @nla_need_padding_for_64bit(ptr noundef %skb) #5 align 16 !dbg !5828 {
entry:
  %skb.addr = alloca ptr, align 8
  store ptr %skb, ptr %skb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %skb.addr, metadata !5832, metadata !DIExpression()), !dbg !5833
  ret i1 false, !dbg !5834
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @nla_total_size_64bit(i32 noundef %payload) #5 align 16 !dbg !5835 {
entry:
  %payload.addr = alloca i32, align 4
  store i32 %payload, ptr %payload.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %payload.addr, metadata !5837, metadata !DIExpression()), !dbg !5838
  %0 = load i32, ptr %payload.addr, align 4, !dbg !5839
  %call = call i32 @nla_attr_size(i32 noundef %0) #16, !dbg !5839
  %add = add i32 %call, 4, !dbg !5839
  %sub = sub i32 %add, 1, !dbg !5839
  %and = and i32 %sub, -4, !dbg !5839
  ret i32 %and, !dbg !5840
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @nla_reserve_nohdr(ptr noundef %skb, i32 noundef %attrlen) #0 align 16 !dbg !5841 {
entry:
  %retval = alloca ptr, align 8
  %skb.addr = alloca ptr, align 8
  %attrlen.addr = alloca i32, align 4
  store ptr %skb, ptr %skb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %skb.addr, metadata !5843, metadata !DIExpression()), !dbg !5845
  store i32 %attrlen, ptr %attrlen.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %attrlen.addr, metadata !5844, metadata !DIExpression()), !dbg !5846
  %0 = load ptr, ptr %skb.addr, align 8, !dbg !5847
  %call = call i32 @skb_tailroom(ptr noundef %0) #16, !dbg !5847
  %1 = load i32, ptr %attrlen.addr, align 4, !dbg !5847
  %add = add i32 %1, 4, !dbg !5847
  %sub = sub i32 %add, 1, !dbg !5847
  %and = and i32 %sub, -4, !dbg !5847
  %cmp = icmp slt i32 %call, %and, !dbg !5847
  %lnot = xor i1 %cmp, true, !dbg !5847
  %lnot1 = xor i1 %lnot, true, !dbg !5847
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5847
  %conv = sext i32 %lnot.ext to i64, !dbg !5847
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5847
  %tobool = icmp ne i64 %expval, 0, !dbg !5847
  br i1 %tobool, label %if.then, label %if.end, !dbg !5849

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !5850
  br label %return, !dbg !5850

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %skb.addr, align 8, !dbg !5851
  %3 = load i32, ptr %attrlen.addr, align 4, !dbg !5852
  %call2 = call ptr @__nla_reserve_nohdr(ptr noundef %2, i32 noundef %3) #16, !dbg !5853
  store ptr %call2, ptr %retval, align 8, !dbg !5854
  br label %return, !dbg !5854

return:                                           ; preds = %if.end, %if.then
  %4 = load ptr, ptr %retval, align 8, !dbg !5855
  ret ptr %4, !dbg !5855
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__nla_put(ptr noundef %skb, i32 noundef %attrtype, i32 noundef %attrlen, ptr noundef %data) #0 align 16 !dbg !5856 {
entry:
  %skb.addr = alloca ptr, align 8
  %attrtype.addr = alloca i32, align 4
  %attrlen.addr = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %nla = alloca ptr, align 8
  store ptr %skb, ptr %skb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %skb.addr, metadata !5860, metadata !DIExpression()), !dbg !5865
  store i32 %attrtype, ptr %attrtype.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %attrtype.addr, metadata !5861, metadata !DIExpression()), !dbg !5866
  store i32 %attrlen, ptr %attrlen.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %attrlen.addr, metadata !5862, metadata !DIExpression()), !dbg !5867
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5863, metadata !DIExpression()), !dbg !5868
  call void @llvm.lifetime.start.p0(i64 8, ptr %nla) #15, !dbg !5869
  call void @llvm.dbg.declare(metadata ptr %nla, metadata !5864, metadata !DIExpression()), !dbg !5870
  %0 = load ptr, ptr %skb.addr, align 8, !dbg !5871
  %1 = load i32, ptr %attrtype.addr, align 4, !dbg !5872
  %2 = load i32, ptr %attrlen.addr, align 4, !dbg !5873
  %call = call ptr @__nla_reserve(ptr noundef %0, i32 noundef %1, i32 noundef %2) #16, !dbg !5874
  store ptr %call, ptr %nla, align 8, !dbg !5875
  %3 = load ptr, ptr %nla, align 8, !dbg !5876
  %call1 = call ptr @nla_data(ptr noundef %3) #16, !dbg !5877
  %4 = load ptr, ptr %data.addr, align 8, !dbg !5878
  %5 = load i32, ptr %attrlen.addr, align 4, !dbg !5879
  %conv = sext i32 %5 to i64, !dbg !5879
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %call1, ptr align 1 %4, i64 %conv, i1 false), !dbg !5880
  call void @llvm.lifetime.end.p0(i64 8, ptr %nla) #15, !dbg !5881
  ret void, !dbg !5881
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__nla_put_64bit(ptr noundef %skb, i32 noundef %attrtype, i32 noundef %attrlen, ptr noundef %data, i32 noundef %padattr) #0 align 16 !dbg !5882 {
entry:
  %skb.addr = alloca ptr, align 8
  %attrtype.addr = alloca i32, align 4
  %attrlen.addr = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %padattr.addr = alloca i32, align 4
  %nla = alloca ptr, align 8
  store ptr %skb, ptr %skb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %skb.addr, metadata !5886, metadata !DIExpression()), !dbg !5892
  store i32 %attrtype, ptr %attrtype.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %attrtype.addr, metadata !5887, metadata !DIExpression()), !dbg !5893
  store i32 %attrlen, ptr %attrlen.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %attrlen.addr, metadata !5888, metadata !DIExpression()), !dbg !5894
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5889, metadata !DIExpression()), !dbg !5895
  store i32 %padattr, ptr %padattr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %padattr.addr, metadata !5890, metadata !DIExpression()), !dbg !5896
  call void @llvm.lifetime.start.p0(i64 8, ptr %nla) #15, !dbg !5897
  call void @llvm.dbg.declare(metadata ptr %nla, metadata !5891, metadata !DIExpression()), !dbg !5898
  %0 = load ptr, ptr %skb.addr, align 8, !dbg !5899
  %1 = load i32, ptr %attrtype.addr, align 4, !dbg !5900
  %2 = load i32, ptr %attrlen.addr, align 4, !dbg !5901
  %3 = load i32, ptr %padattr.addr, align 4, !dbg !5902
  %call = call ptr @__nla_reserve_64bit(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #16, !dbg !5903
  store ptr %call, ptr %nla, align 8, !dbg !5904
  %4 = load ptr, ptr %nla, align 8, !dbg !5905
  %call1 = call ptr @nla_data(ptr noundef %4) #16, !dbg !5906
  %5 = load ptr, ptr %data.addr, align 8, !dbg !5907
  %6 = load i32, ptr %attrlen.addr, align 4, !dbg !5908
  %conv = sext i32 %6 to i64, !dbg !5908
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %call1, ptr align 1 %5, i64 %conv, i1 false), !dbg !5909
  call void @llvm.lifetime.end.p0(i64 8, ptr %nla) #15, !dbg !5910
  ret void, !dbg !5910
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__nla_put_nohdr(ptr noundef %skb, i32 noundef %attrlen, ptr noundef %data) #0 align 16 !dbg !5911 {
entry:
  %skb.addr = alloca ptr, align 8
  %attrlen.addr = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %start = alloca ptr, align 8
  store ptr %skb, ptr %skb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %skb.addr, metadata !5915, metadata !DIExpression()), !dbg !5919
  store i32 %attrlen, ptr %attrlen.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %attrlen.addr, metadata !5916, metadata !DIExpression()), !dbg !5920
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5917, metadata !DIExpression()), !dbg !5921
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #15, !dbg !5922
  call void @llvm.dbg.declare(metadata ptr %start, metadata !5918, metadata !DIExpression()), !dbg !5923
  %0 = load ptr, ptr %skb.addr, align 8, !dbg !5924
  %1 = load i32, ptr %attrlen.addr, align 4, !dbg !5925
  %call = call ptr @__nla_reserve_nohdr(ptr noundef %0, i32 noundef %1) #16, !dbg !5926
  store ptr %call, ptr %start, align 8, !dbg !5927
  %2 = load ptr, ptr %start, align 8, !dbg !5928
  %3 = load ptr, ptr %data.addr, align 8, !dbg !5929
  %4 = load i32, ptr %attrlen.addr, align 4, !dbg !5930
  %conv = sext i32 %4 to i64, !dbg !5930
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr align 1 %3, i64 %conv, i1 false), !dbg !5931
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #15, !dbg !5932
  ret void, !dbg !5932
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @nla_put(ptr noundef %skb, i32 noundef %attrtype, i32 noundef %attrlen, ptr noundef %data) #0 align 16 !dbg !5933 {
entry:
  %retval = alloca i32, align 4
  %skb.addr = alloca ptr, align 8
  %attrtype.addr = alloca i32, align 4
  %attrlen.addr = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  store ptr %skb, ptr %skb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %skb.addr, metadata !5937, metadata !DIExpression()), !dbg !5941
  store i32 %attrtype, ptr %attrtype.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %attrtype.addr, metadata !5938, metadata !DIExpression()), !dbg !5942
  store i32 %attrlen, ptr %attrlen.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %attrlen.addr, metadata !5939, metadata !DIExpression()), !dbg !5943
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5940, metadata !DIExpression()), !dbg !5944
  %0 = load ptr, ptr %skb.addr, align 8, !dbg !5945
  %call = call i32 @skb_tailroom(ptr noundef %0) #16, !dbg !5945
  %1 = load i32, ptr %attrlen.addr, align 4, !dbg !5945
  %call1 = call i32 @nla_total_size(i32 noundef %1) #16, !dbg !5945
  %cmp = icmp slt i32 %call, %call1, !dbg !5945
  %lnot = xor i1 %cmp, true, !dbg !5945
  %lnot2 = xor i1 %lnot, true, !dbg !5945
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5945
  %conv = sext i32 %lnot.ext to i64, !dbg !5945
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5945
  %tobool = icmp ne i64 %expval, 0, !dbg !5945
  br i1 %tobool, label %if.then, label %if.end, !dbg !5947

if.then:                                          ; preds = %entry
  store i32 -90, ptr %retval, align 4, !dbg !5948
  br label %return, !dbg !5948

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %skb.addr, align 8, !dbg !5949
  %3 = load i32, ptr %attrtype.addr, align 4, !dbg !5950
  %4 = load i32, ptr %attrlen.addr, align 4, !dbg !5951
  %5 = load ptr, ptr %data.addr, align 8, !dbg !5952
  call void @__nla_put(ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) #16, !dbg !5953
  store i32 0, ptr %retval, align 4, !dbg !5954
  br label %return, !dbg !5954

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, ptr %retval, align 4, !dbg !5955
  ret i32 %6, !dbg !5955
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @nla_put_64bit(ptr noundef %skb, i32 noundef %attrtype, i32 noundef %attrlen, ptr noundef %data, i32 noundef %padattr) #0 align 16 !dbg !5956 {
entry:
  %retval = alloca i32, align 4
  %skb.addr = alloca ptr, align 8
  %attrtype.addr = alloca i32, align 4
  %attrlen.addr = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %padattr.addr = alloca i32, align 4
  %len = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %skb, ptr %skb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %skb.addr, metadata !5960, metadata !DIExpression()), !dbg !5966
  store i32 %attrtype, ptr %attrtype.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %attrtype.addr, metadata !5961, metadata !DIExpression()), !dbg !5967
  store i32 %attrlen, ptr %attrlen.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %attrlen.addr, metadata !5962, metadata !DIExpression()), !dbg !5968
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5963, metadata !DIExpression()), !dbg !5969
  store i32 %padattr, ptr %padattr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %padattr.addr, metadata !5964, metadata !DIExpression()), !dbg !5970
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #15, !dbg !5971
  call void @llvm.dbg.declare(metadata ptr %len, metadata !5965, metadata !DIExpression()), !dbg !5972
  %0 = load ptr, ptr %skb.addr, align 8, !dbg !5973
  %call = call zeroext i1 @nla_need_padding_for_64bit(ptr noundef %0) #16, !dbg !5975
  br i1 %call, label %if.then, label %if.else, !dbg !5976

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %attrlen.addr, align 4, !dbg !5977
  %call1 = call i32 @nla_total_size_64bit(i32 noundef %1) #16, !dbg !5978
  %conv = sext i32 %call1 to i64, !dbg !5978
  store i64 %conv, ptr %len, align 8, !dbg !5979
  br label %if.end, !dbg !5980

if.else:                                          ; preds = %entry
  %2 = load i32, ptr %attrlen.addr, align 4, !dbg !5981
  %call2 = call i32 @nla_total_size(i32 noundef %2) #16, !dbg !5982
  %conv3 = sext i32 %call2 to i64, !dbg !5982
  store i64 %conv3, ptr %len, align 8, !dbg !5983
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load ptr, ptr %skb.addr, align 8, !dbg !5984
  %call4 = call i32 @skb_tailroom(ptr noundef %3) #16, !dbg !5984
  %conv5 = sext i32 %call4 to i64, !dbg !5984
  %4 = load i64, ptr %len, align 8, !dbg !5984
  %cmp = icmp ult i64 %conv5, %4, !dbg !5984
  %lnot = xor i1 %cmp, true, !dbg !5984
  %lnot7 = xor i1 %lnot, true, !dbg !5984
  %lnot.ext = zext i1 %lnot7 to i32, !dbg !5984
  %conv8 = sext i32 %lnot.ext to i64, !dbg !5984
  %expval = call i64 @llvm.expect.i64(i64 %conv8, i64 0), !dbg !5984
  %tobool = icmp ne i64 %expval, 0, !dbg !5984
  br i1 %tobool, label %if.then9, label %if.end10, !dbg !5986

if.then9:                                         ; preds = %if.end
  store i32 -90, ptr %retval, align 4, !dbg !5987
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5987

if.end10:                                         ; preds = %if.end
  %5 = load ptr, ptr %skb.addr, align 8, !dbg !5988
  %6 = load i32, ptr %attrtype.addr, align 4, !dbg !5989
  %7 = load i32, ptr %attrlen.addr, align 4, !dbg !5990
  %8 = load ptr, ptr %data.addr, align 8, !dbg !5991
  %9 = load i32, ptr %padattr.addr, align 4, !dbg !5992
  call void @__nla_put_64bit(ptr noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8, i32 noundef %9) #16, !dbg !5993
  store i32 0, ptr %retval, align 4, !dbg !5994
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5994

cleanup:                                          ; preds = %if.end10, %if.then9
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #15, !dbg !5995
  %10 = load i32, ptr %retval, align 4, !dbg !5995
  ret i32 %10, !dbg !5995
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @nla_put_nohdr(ptr noundef %skb, i32 noundef %attrlen, ptr noundef %data) #0 align 16 !dbg !5996 {
entry:
  %retval = alloca i32, align 4
  %skb.addr = alloca ptr, align 8
  %attrlen.addr = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  store ptr %skb, ptr %skb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %skb.addr, metadata !6000, metadata !DIExpression()), !dbg !6003
  store i32 %attrlen, ptr %attrlen.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %attrlen.addr, metadata !6001, metadata !DIExpression()), !dbg !6004
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !6002, metadata !DIExpression()), !dbg !6005
  %0 = load ptr, ptr %skb.addr, align 8, !dbg !6006
  %call = call i32 @skb_tailroom(ptr noundef %0) #16, !dbg !6006
  %1 = load i32, ptr %attrlen.addr, align 4, !dbg !6006
  %add = add i32 %1, 4, !dbg !6006
  %sub = sub i32 %add, 1, !dbg !6006
  %and = and i32 %sub, -4, !dbg !6006
  %cmp = icmp slt i32 %call, %and, !dbg !6006
  %lnot = xor i1 %cmp, true, !dbg !6006
  %lnot1 = xor i1 %lnot, true, !dbg !6006
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6006
  %conv = sext i32 %lnot.ext to i64, !dbg !6006
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6006
  %tobool = icmp ne i64 %expval, 0, !dbg !6006
  br i1 %tobool, label %if.then, label %if.end, !dbg !6008

if.then:                                          ; preds = %entry
  store i32 -90, ptr %retval, align 4, !dbg !6009
  br label %return, !dbg !6009

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %skb.addr, align 8, !dbg !6010
  %3 = load i32, ptr %attrlen.addr, align 4, !dbg !6011
  %4 = load ptr, ptr %data.addr, align 8, !dbg !6012
  call void @__nla_put_nohdr(ptr noundef %2, i32 noundef %3, ptr noundef %4) #16, !dbg !6013
  store i32 0, ptr %retval, align 4, !dbg !6014
  br label %return, !dbg !6014

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, ptr %retval, align 4, !dbg !6015
  ret i32 %5, !dbg !6015
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @nla_append(ptr noundef %skb, i32 noundef %attrlen, ptr noundef %data) #0 align 16 !dbg !6016 {
entry:
  %retval = alloca i32, align 4
  %skb.addr = alloca ptr, align 8
  %attrlen.addr = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  store ptr %skb, ptr %skb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %skb.addr, metadata !6018, metadata !DIExpression()), !dbg !6021
  store i32 %attrlen, ptr %attrlen.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %attrlen.addr, metadata !6019, metadata !DIExpression()), !dbg !6022
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !6020, metadata !DIExpression()), !dbg !6023
  %0 = load ptr, ptr %skb.addr, align 8, !dbg !6024
  %call = call i32 @skb_tailroom(ptr noundef %0) #16, !dbg !6024
  %1 = load i32, ptr %attrlen.addr, align 4, !dbg !6024
  %add = add i32 %1, 4, !dbg !6024
  %sub = sub i32 %add, 1, !dbg !6024
  %and = and i32 %sub, -4, !dbg !6024
  %cmp = icmp slt i32 %call, %and, !dbg !6024
  %lnot = xor i1 %cmp, true, !dbg !6024
  %lnot1 = xor i1 %lnot, true, !dbg !6024
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6024
  %conv = sext i32 %lnot.ext to i64, !dbg !6024
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6024
  %tobool = icmp ne i64 %expval, 0, !dbg !6024
  br i1 %tobool, label %if.then, label %if.end, !dbg !6026

if.then:                                          ; preds = %entry
  store i32 -90, ptr %retval, align 4, !dbg !6027
  br label %return, !dbg !6027

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %skb.addr, align 8, !dbg !6028
  %3 = load ptr, ptr %data.addr, align 8, !dbg !6029
  %4 = load i32, ptr %attrlen.addr, align 4, !dbg !6030
  %call2 = call ptr @skb_put_data(ptr noundef %2, ptr noundef %3, i32 noundef %4) #16, !dbg !6031
  store i32 0, ptr %retval, align 4, !dbg !6032
  br label %return, !dbg !6032

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, ptr %retval, align 4, !dbg !6033
  ret i32 %5, !dbg !6033
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @skb_put_data(ptr noundef %skb, ptr noundef %data, i32 noundef %len) #5 align 16 !dbg !6034 {
entry:
  %skb.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %tmp = alloca ptr, align 8
  store ptr %skb, ptr %skb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %skb.addr, metadata !6038, metadata !DIExpression()), !dbg !6042
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !6039, metadata !DIExpression()), !dbg !6043
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !6040, metadata !DIExpression()), !dbg !6044
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #15, !dbg !6045
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !6041, metadata !DIExpression()), !dbg !6046
  %0 = load ptr, ptr %skb.addr, align 8, !dbg !6047
  %1 = load i32, ptr %len.addr, align 4, !dbg !6048
  %call = call ptr @skb_put(ptr noundef %0, i32 noundef %1) #16, !dbg !6049
  store ptr %call, ptr %tmp, align 8, !dbg !6046
  %2 = load ptr, ptr %tmp, align 8, !dbg !6050
  %3 = load ptr, ptr %data.addr, align 8, !dbg !6051
  %4 = load i32, ptr %len.addr, align 4, !dbg !6052
  %conv = zext i32 %4 to i64, !dbg !6052
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr align 1 %3, i64 %conv, i1 false), !dbg !6053
  %5 = load ptr, ptr %tmp, align 8, !dbg !6054
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #15, !dbg !6055
  ret ptr %5, !dbg !6056
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6057 dso_local void @do_trace_netlink_extack(ptr noundef) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @array_index_mask_nospec(i64 noundef %index, i64 noundef %size) #5 align 16 !dbg !6060 {
entry:
  %index.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %mask = alloca i64, align 8
  store i64 %index, ptr %index.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !6065, metadata !DIExpression()), !dbg !6068
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6066, metadata !DIExpression()), !dbg !6069
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #15, !dbg !6070
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !6067, metadata !DIExpression()), !dbg !6071
  %0 = load i64, ptr %size.addr, align 8, !dbg !6072
  %1 = load i64, ptr %index.addr, align 8, !dbg !6073
  %2 = call i64 asm sideeffect "cmp $1,$2; sbb $0,$0;", "=r,imr,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %0, i64 %1) #15, !dbg !6074, !srcloc !6075
  store i64 %2, ptr %mask, align 8, !dbg !6074
  %3 = load i64, ptr %mask, align 8, !dbg !6076
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #15, !dbg !6077
  ret i64 %3, !dbg !6078
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @validate_nla(ptr noundef %nla, i32 noundef %maxtype, ptr noundef %policy, i32 noundef %validate, ptr noundef %extack, i32 noundef %depth) #0 align 16 !dbg !4367 {
entry:
  %retval = alloca i32, align 4
  %nla.addr = alloca ptr, align 8
  %maxtype.addr = alloca i32, align 4
  %policy.addr = alloca ptr, align 8
  %validate.addr = alloca i32, align 4
  %extack.addr = alloca ptr, align 8
  %depth.addr = alloca i32, align 4
  %strict_start_type = alloca i16, align 2
  %pt = alloca ptr, align 8
  %minlen = alloca i32, align 4
  %attrlen = alloca i32, align 4
  %type = alloca i32, align 4
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %_i = alloca i32, align 4
  %_s = alloca i32, align 4
  %_mask = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tmp59 = alloca i32, align 4
  %__extack = alloca ptr, align 8
  %__extack93 = alloca ptr, align 8
  %__extack124 = alloca ptr, align 8
  %__UNIQUE_ID___x340 = alloca i32, align 4
  %__UNIQUE_ID___y341 = alloca i32, align 4
  %tmp172 = alloca i32, align 4
  %buf = alloca ptr, align 8
  %err252 = alloca i32, align 4
  %__extack271 = alloca ptr, align 8
  %__extack323 = alloca ptr, align 8
  store ptr %nla, ptr %nla.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nla.addr, metadata !4371, metadata !DIExpression()), !dbg !6079
  store i32 %maxtype, ptr %maxtype.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %maxtype.addr, metadata !4372, metadata !DIExpression()), !dbg !6080
  store ptr %policy, ptr %policy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !4373, metadata !DIExpression()), !dbg !6081
  store i32 %validate, ptr %validate.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %validate.addr, metadata !4374, metadata !DIExpression()), !dbg !6082
  store ptr %extack, ptr %extack.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %extack.addr, metadata !4375, metadata !DIExpression()), !dbg !6083
  store i32 %depth, ptr %depth.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %depth.addr, metadata !4376, metadata !DIExpression()), !dbg !6084
  call void @llvm.lifetime.start.p0(i64 2, ptr %strict_start_type) #15, !dbg !6085
  call void @llvm.dbg.declare(metadata ptr %strict_start_type, metadata !4377, metadata !DIExpression()), !dbg !6086
  %0 = load ptr, ptr %policy.addr, align 8, !dbg !6087
  %arrayidx = getelementptr %struct.nla_policy, ptr %0, i64 0, !dbg !6087
  %1 = getelementptr inbounds %struct.nla_policy, ptr %arrayidx, i32 0, i32 3, !dbg !6088
  %2 = load i16, ptr %1, align 8, !dbg !6088
  store i16 %2, ptr %strict_start_type, align 2, !dbg !6086
  call void @llvm.lifetime.start.p0(i64 8, ptr %pt) #15, !dbg !6089
  call void @llvm.dbg.declare(metadata ptr %pt, metadata !4378, metadata !DIExpression()), !dbg !6090
  call void @llvm.lifetime.start.p0(i64 4, ptr %minlen) #15, !dbg !6091
  call void @llvm.dbg.declare(metadata ptr %minlen, metadata !4379, metadata !DIExpression()), !dbg !6092
  store i32 0, ptr %minlen, align 4, !dbg !6092
  call void @llvm.lifetime.start.p0(i64 4, ptr %attrlen) #15, !dbg !6091
  call void @llvm.dbg.declare(metadata ptr %attrlen, metadata !4380, metadata !DIExpression()), !dbg !6093
  %3 = load ptr, ptr %nla.addr, align 8, !dbg !6094
  %call = call i32 @nla_len(ptr noundef %3) #16, !dbg !6095
  store i32 %call, ptr %attrlen, align 4, !dbg !6093
  call void @llvm.lifetime.start.p0(i64 4, ptr %type) #15, !dbg !6091
  call void @llvm.dbg.declare(metadata ptr %type, metadata !4381, metadata !DIExpression()), !dbg !6096
  %4 = load ptr, ptr %nla.addr, align 8, !dbg !6097
  %call1 = call i32 @nla_type(ptr noundef %4) #16, !dbg !6098
  store i32 %call1, ptr %type, align 4, !dbg !6096
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #15, !dbg !6099
  call void @llvm.dbg.declare(metadata ptr %err, metadata !4382, metadata !DIExpression()), !dbg !6100
  store i32 -34, ptr %err, align 4, !dbg !6100
  %5 = load i16, ptr %strict_start_type, align 2, !dbg !6101
  %conv = zext i16 %5 to i32, !dbg !6101
  %tobool = icmp ne i32 %conv, 0, !dbg !6101
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !6103

land.lhs.true:                                    ; preds = %entry
  %6 = load i32, ptr %type, align 4, !dbg !6104
  %7 = load i16, ptr %strict_start_type, align 2, !dbg !6105
  %conv2 = zext i16 %7 to i32, !dbg !6105
  %cmp = icmp sge i32 %6, %conv2, !dbg !6106
  br i1 %cmp, label %if.then, label %if.end, !dbg !6107

if.then:                                          ; preds = %land.lhs.true
  %8 = load i32, ptr %validate.addr, align 4, !dbg !6108
  %or = or i32 %8, 31, !dbg !6108
  store i32 %or, ptr %validate.addr, align 4, !dbg !6108
  br label %if.end, !dbg !6109

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %9 = load i32, ptr %type, align 4, !dbg !6110
  %cmp4 = icmp sle i32 %9, 0, !dbg !6112
  br i1 %cmp4, label %if.then8, label %lor.lhs.false, !dbg !6113

lor.lhs.false:                                    ; preds = %if.end
  %10 = load i32, ptr %type, align 4, !dbg !6114
  %11 = load i32, ptr %maxtype.addr, align 4, !dbg !6115
  %cmp6 = icmp sgt i32 %10, %11, !dbg !6116
  br i1 %cmp6, label %if.then8, label %if.end9, !dbg !6117

if.then8:                                         ; preds = %lor.lhs.false, %if.end
  store i32 0, ptr %retval, align 4, !dbg !6118
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup332, !dbg !6118

if.end9:                                          ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 4, ptr %_i) #15, !dbg !6119
  call void @llvm.dbg.declare(metadata ptr %_i, metadata !4383, metadata !DIExpression()), !dbg !6119
  %12 = load i32, ptr %type, align 4, !dbg !6119
  store i32 %12, ptr %_i, align 4, !dbg !6119
  call void @llvm.lifetime.start.p0(i64 4, ptr %_s) #15, !dbg !6119
  call void @llvm.dbg.declare(metadata ptr %_s, metadata !4385, metadata !DIExpression()), !dbg !6119
  %13 = load i32, ptr %maxtype.addr, align 4, !dbg !6119
  %add = add i32 %13, 1, !dbg !6119
  store i32 %add, ptr %_s, align 4, !dbg !6119
  call void @llvm.lifetime.start.p0(i64 8, ptr %_mask) #15, !dbg !6119
  call void @llvm.dbg.declare(metadata ptr %_mask, metadata !4386, metadata !DIExpression()), !dbg !6119
  %14 = load i32, ptr %_i, align 4, !dbg !6119
  %conv10 = sext i32 %14 to i64, !dbg !6119
  %15 = load i32, ptr %_s, align 4, !dbg !6119
  %conv11 = sext i32 %15 to i64, !dbg !6119
  %call12 = call i64 @array_index_mask_nospec(i64 noundef %conv10, i64 noundef %conv11) #16, !dbg !6119
  store i64 %call12, ptr %_mask, align 8, !dbg !6119
  br label %do.body, !dbg !6119

do.body:                                          ; preds = %if.end9
  br label %do.cond, !dbg !6120

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6120

do.end:                                           ; preds = %do.cond
  br label %do.body13, !dbg !6119

do.body13:                                        ; preds = %do.end
  br label %do.cond14, !dbg !6122

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !6122

do.end15:                                         ; preds = %do.cond14
  %16 = load i32, ptr %_i, align 4, !dbg !6119
  %conv16 = sext i32 %16 to i64, !dbg !6119
  %17 = load i64, ptr %_mask, align 8, !dbg !6119
  %and = and i64 %conv16, %17, !dbg !6119
  %conv17 = trunc i64 %and to i32, !dbg !6119
  store i32 %conv17, ptr %tmp, align 4, !dbg !6122
  call void @llvm.lifetime.end.p0(i64 8, ptr %_mask) #15, !dbg !6124
  call void @llvm.lifetime.end.p0(i64 4, ptr %_s) #15, !dbg !6124
  call void @llvm.lifetime.end.p0(i64 4, ptr %_i) #15, !dbg !6124
  %18 = load i32, ptr %tmp, align 4, !dbg !6119
  store i32 %18, ptr %type, align 4, !dbg !6125
  %19 = load ptr, ptr %policy.addr, align 8, !dbg !6126
  %20 = load i32, ptr %type, align 4, !dbg !6127
  %idxprom = sext i32 %20 to i64, !dbg !6126
  %arrayidx18 = getelementptr %struct.nla_policy, ptr %19, i64 %idxprom, !dbg !6126
  store ptr %arrayidx18, ptr %pt, align 8, !dbg !6128
  br label %do.body19, !dbg !6129

do.body19:                                        ; preds = %do.end15
  %21 = load ptr, ptr %pt, align 8, !dbg !6130
  %type20 = getelementptr inbounds %struct.nla_policy, ptr %21, i32 0, i32 0, !dbg !6130
  %22 = load i8, ptr %type20, align 8, !dbg !6130
  %conv21 = zext i8 %22 to i32, !dbg !6130
  %cmp22 = icmp sgt i32 %conv21, 19, !dbg !6130
  %lnot = xor i1 %cmp22, true, !dbg !6130
  %lnot24 = xor i1 %lnot, true, !dbg !6130
  %lnot.ext = zext i1 %lnot24 to i32, !dbg !6130
  %conv25 = sext i32 %lnot.ext to i64, !dbg !6130
  %expval = call i64 @llvm.expect.i64(i64 %conv25, i64 0), !dbg !6130
  %tobool26 = icmp ne i64 %expval, 0, !dbg !6130
  br i1 %tobool26, label %if.then27, label %if.end37, !dbg !6133

if.then27:                                        ; preds = %do.body19
  br label %do.body28, !dbg !6130

do.body28:                                        ; preds = %if.then27
  br label %do.body29, !dbg !6134

do.body29:                                        ; preds = %do.body28
  br label %do.cond30, !dbg !6136

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !6136

do.end31:                                         ; preds = %do.cond30
  br label %do.body32, !dbg !6134

do.body32:                                        ; preds = %do.end31
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 398, i32 0, i64 12) #15, !dbg !6138, !srcloc !6140
  br label %do.cond33, !dbg !6138

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !6138

do.end34:                                         ; preds = %do.cond33
  unreachable, !dbg !6134

do.cond35:                                        ; No predecessors!
  br label %do.end36, !dbg !6134

do.end36:                                         ; preds = %do.cond35
  br label %if.end37, !dbg !6134

if.end37:                                         ; preds = %do.end36, %do.body19
  br label %do.cond38, !dbg !6133

do.cond38:                                        ; preds = %if.end37
  br label %do.end39, !dbg !6133

do.end39:                                         ; preds = %do.cond38
  %23 = load ptr, ptr %pt, align 8, !dbg !6141
  %type40 = getelementptr inbounds %struct.nla_policy, ptr %23, i32 0, i32 0, !dbg !6142
  %24 = load i8, ptr %type40, align 8, !dbg !6142
  %idxprom41 = zext i8 %24 to i64, !dbg !6143
  %arrayidx42 = getelementptr [20 x i8], ptr @nla_attr_len, i64 0, i64 %idxprom41, !dbg !6143
  %25 = load i8, ptr %arrayidx42, align 1, !dbg !6143
  %conv43 = zext i8 %25 to i32, !dbg !6143
  %tobool44 = icmp ne i32 %conv43, 0, !dbg !6143
  br i1 %tobool44, label %land.lhs.true45, label %if.end74, !dbg !6144

land.lhs.true45:                                  ; preds = %do.end39
  %26 = load i32, ptr %attrlen, align 4, !dbg !6145
  %27 = load ptr, ptr %pt, align 8, !dbg !6146
  %type46 = getelementptr inbounds %struct.nla_policy, ptr %27, i32 0, i32 0, !dbg !6147
  %28 = load i8, ptr %type46, align 8, !dbg !6147
  %idxprom47 = zext i8 %28 to i64, !dbg !6148
  %arrayidx48 = getelementptr [20 x i8], ptr @nla_attr_len, i64 0, i64 %idxprom47, !dbg !6148
  %29 = load i8, ptr %arrayidx48, align 1, !dbg !6148
  %conv49 = zext i8 %29 to i32, !dbg !6148
  %cmp50 = icmp ne i32 %26, %conv49, !dbg !6149
  br i1 %cmp50, label %if.then52, label %if.end74, !dbg !6150

if.then52:                                        ; preds = %land.lhs.true45
  %call53 = call i32 @___ratelimit(ptr noundef @validate_nla._rs, ptr noundef @__func__.validate_nla) #16, !dbg !6151
  %tobool54 = icmp ne i32 %call53, 0, !dbg !6151
  br i1 %tobool54, label %if.then55, label %if.end62, !dbg !6154

if.then55:                                        ; preds = %if.then52
  br label %do.body56, !dbg !6155

do.body56:                                        ; preds = %if.then55
  br label %do.cond57, !dbg !6157

do.cond57:                                        ; preds = %do.body56
  br label %do.end58, !dbg !6157

do.end58:                                         ; preds = %do.cond57
  %call60 = call ptr @get_current() #16, !dbg !6155
  %comm = getelementptr inbounds %struct.task_struct, ptr %call60, i32 0, i32 96, !dbg !6155
  %arraydecay = getelementptr inbounds [16 x i8], ptr %comm, i64 0, i64 0, !dbg !6155
  %30 = load i32, ptr %type, align 4, !dbg !6155
  %call61 = call i32 (ptr, ...) @_printk(ptr noundef @.str.4, ptr noundef %arraydecay, i32 noundef %30) #17, !dbg !6155
  store i32 %call61, ptr %tmp59, align 4, !dbg !6157
  %31 = load i32, ptr %tmp59, align 4, !dbg !6155
  br label %if.end62, !dbg !6151

if.end62:                                         ; preds = %do.end58, %if.then52
  %32 = load i32, ptr %validate.addr, align 4, !dbg !6159
  %and63 = and i32 %32, 8, !dbg !6160
  %tobool64 = icmp ne i32 %and63, 0, !dbg !6160
  br i1 %tobool64, label %if.then65, label %if.end73, !dbg !6161

if.then65:                                        ; preds = %if.end62
  br label %do.body66, !dbg !6162

do.body66:                                        ; preds = %if.then65
  call void @llvm.lifetime.start.p0(i64 8, ptr %__extack) #15, !dbg !6163
  call void @llvm.dbg.declare(metadata ptr %__extack, metadata !4387, metadata !DIExpression()), !dbg !6163
  %33 = load ptr, ptr %extack.addr, align 8, !dbg !6163
  store ptr %33, ptr %__extack, align 8, !dbg !6163
  call void @do_trace_netlink_extack(ptr noundef @validate_nla.__msg) #16, !dbg !6163
  %34 = load ptr, ptr %__extack, align 8, !dbg !6164
  %tobool67 = icmp ne ptr %34, null, !dbg !6164
  br i1 %tobool67, label %if.then68, label %if.end70, !dbg !6163

if.then68:                                        ; preds = %do.body66
  %35 = load ptr, ptr %__extack, align 8, !dbg !6166
  %_msg = getelementptr inbounds %struct.netlink_ext_ack, ptr %35, i32 0, i32 0, !dbg !6166
  store ptr @validate_nla.__msg, ptr %_msg, align 8, !dbg !6166
  %36 = load ptr, ptr %nla.addr, align 8, !dbg !6166
  %37 = load ptr, ptr %__extack, align 8, !dbg !6166
  %bad_attr = getelementptr inbounds %struct.netlink_ext_ack, ptr %37, i32 0, i32 1, !dbg !6166
  store ptr %36, ptr %bad_attr, align 8, !dbg !6166
  %38 = load ptr, ptr %pt, align 8, !dbg !6166
  %39 = load ptr, ptr %__extack, align 8, !dbg !6166
  %policy69 = getelementptr inbounds %struct.netlink_ext_ack, ptr %39, i32 0, i32 2, !dbg !6166
  store ptr %38, ptr %policy69, align 8, !dbg !6166
  br label %if.end70, !dbg !6166

if.end70:                                         ; preds = %if.then68, %do.body66
  call void @llvm.lifetime.end.p0(i64 8, ptr %__extack) #15, !dbg !6162
  br label %do.cond71, !dbg !6163

do.cond71:                                        ; preds = %if.end70
  br label %do.end72, !dbg !6163

do.end72:                                         ; preds = %do.cond71
  store i32 -22, ptr %retval, align 4, !dbg !6168
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup332, !dbg !6168

if.end73:                                         ; preds = %if.end62
  br label %if.end74, !dbg !6169

if.end74:                                         ; preds = %if.end73, %land.lhs.true45, %do.end39
  %40 = load i32, ptr %validate.addr, align 4, !dbg !6170
  %and75 = and i32 %40, 16, !dbg !6171
  %tobool76 = icmp ne i32 %and75, 0, !dbg !6171
  br i1 %tobool76, label %if.then77, label %if.end134, !dbg !6172

if.then77:                                        ; preds = %if.end74
  %41 = load ptr, ptr %pt, align 8, !dbg !6173
  %type78 = getelementptr inbounds %struct.nla_policy, ptr %41, i32 0, i32 0, !dbg !6174
  %42 = load i8, ptr %type78, align 8, !dbg !6174
  %conv79 = zext i8 %42 to i32, !dbg !6173
  %cmp80 = icmp eq i32 %conv79, 8, !dbg !6175
  br i1 %cmp80, label %land.lhs.true87, label %lor.lhs.false82, !dbg !6176

lor.lhs.false82:                                  ; preds = %if.then77
  %43 = load ptr, ptr %pt, align 8, !dbg !6177
  %type83 = getelementptr inbounds %struct.nla_policy, ptr %43, i32 0, i32 0, !dbg !6178
  %44 = load i8, ptr %type83, align 8, !dbg !6178
  %conv84 = zext i8 %44 to i32, !dbg !6177
  %cmp85 = icmp eq i32 %conv84, 9, !dbg !6179
  br i1 %cmp85, label %land.lhs.true87, label %if.end102, !dbg !6180

land.lhs.true87:                                  ; preds = %lor.lhs.false82, %if.then77
  %45 = load ptr, ptr %nla.addr, align 8, !dbg !6181
  %nla_type = getelementptr inbounds %struct.nlattr, ptr %45, i32 0, i32 1, !dbg !6182
  %46 = load i16, ptr %nla_type, align 2, !dbg !6182
  %conv88 = zext i16 %46 to i32, !dbg !6181
  %and89 = and i32 %conv88, 32768, !dbg !6183
  %tobool90 = icmp ne i32 %and89, 0, !dbg !6183
  br i1 %tobool90, label %if.end102, label %if.then91, !dbg !6184

if.then91:                                        ; preds = %land.lhs.true87
  br label %do.body92, !dbg !6185

do.body92:                                        ; preds = %if.then91
  call void @llvm.lifetime.start.p0(i64 8, ptr %__extack93) #15, !dbg !6186
  call void @llvm.dbg.declare(metadata ptr %__extack93, metadata !4393, metadata !DIExpression()), !dbg !6186
  %47 = load ptr, ptr %extack.addr, align 8, !dbg !6186
  store ptr %47, ptr %__extack93, align 8, !dbg !6186
  call void @do_trace_netlink_extack(ptr noundef @validate_nla.__msg.5) #16, !dbg !6186
  %48 = load ptr, ptr %__extack93, align 8, !dbg !6187
  %tobool94 = icmp ne ptr %48, null, !dbg !6187
  br i1 %tobool94, label %if.then95, label %if.end99, !dbg !6186

if.then95:                                        ; preds = %do.body92
  %49 = load ptr, ptr %__extack93, align 8, !dbg !6189
  %_msg96 = getelementptr inbounds %struct.netlink_ext_ack, ptr %49, i32 0, i32 0, !dbg !6189
  store ptr @validate_nla.__msg.5, ptr %_msg96, align 8, !dbg !6189
  %50 = load ptr, ptr %nla.addr, align 8, !dbg !6189
  %51 = load ptr, ptr %__extack93, align 8, !dbg !6189
  %bad_attr97 = getelementptr inbounds %struct.netlink_ext_ack, ptr %51, i32 0, i32 1, !dbg !6189
  store ptr %50, ptr %bad_attr97, align 8, !dbg !6189
  %52 = load ptr, ptr %pt, align 8, !dbg !6189
  %53 = load ptr, ptr %__extack93, align 8, !dbg !6189
  %policy98 = getelementptr inbounds %struct.netlink_ext_ack, ptr %53, i32 0, i32 2, !dbg !6189
  store ptr %52, ptr %policy98, align 8, !dbg !6189
  br label %if.end99, !dbg !6189

if.end99:                                         ; preds = %if.then95, %do.body92
  call void @llvm.lifetime.end.p0(i64 8, ptr %__extack93) #15, !dbg !6185
  br label %do.cond100, !dbg !6186

do.cond100:                                       ; preds = %if.end99
  br label %do.end101, !dbg !6186

do.end101:                                        ; preds = %do.cond100
  store i32 -22, ptr %retval, align 4, !dbg !6191
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup332, !dbg !6191

if.end102:                                        ; preds = %land.lhs.true87, %lor.lhs.false82
  %54 = load ptr, ptr %pt, align 8, !dbg !6192
  %type103 = getelementptr inbounds %struct.nla_policy, ptr %54, i32 0, i32 0, !dbg !6193
  %55 = load i8, ptr %type103, align 8, !dbg !6193
  %conv104 = zext i8 %55 to i32, !dbg !6192
  %cmp105 = icmp ne i32 %conv104, 8, !dbg !6194
  br i1 %cmp105, label %land.lhs.true107, label %if.end133, !dbg !6195

land.lhs.true107:                                 ; preds = %if.end102
  %56 = load ptr, ptr %pt, align 8, !dbg !6196
  %type108 = getelementptr inbounds %struct.nla_policy, ptr %56, i32 0, i32 0, !dbg !6197
  %57 = load i8, ptr %type108, align 8, !dbg !6197
  %conv109 = zext i8 %57 to i32, !dbg !6196
  %cmp110 = icmp ne i32 %conv109, 9, !dbg !6198
  br i1 %cmp110, label %land.lhs.true112, label %if.end133, !dbg !6199

land.lhs.true112:                                 ; preds = %land.lhs.true107
  %58 = load ptr, ptr %pt, align 8, !dbg !6200
  %type113 = getelementptr inbounds %struct.nla_policy, ptr %58, i32 0, i32 0, !dbg !6201
  %59 = load i8, ptr %type113, align 8, !dbg !6201
  %conv114 = zext i8 %59 to i32, !dbg !6200
  %cmp115 = icmp ne i32 %conv114, 0, !dbg !6202
  br i1 %cmp115, label %land.lhs.true117, label %if.end133, !dbg !6203

land.lhs.true117:                                 ; preds = %land.lhs.true112
  %60 = load ptr, ptr %nla.addr, align 8, !dbg !6204
  %nla_type118 = getelementptr inbounds %struct.nlattr, ptr %60, i32 0, i32 1, !dbg !6205
  %61 = load i16, ptr %nla_type118, align 2, !dbg !6205
  %conv119 = zext i16 %61 to i32, !dbg !6204
  %and120 = and i32 %conv119, 32768, !dbg !6206
  %tobool121 = icmp ne i32 %and120, 0, !dbg !6206
  br i1 %tobool121, label %if.then122, label %if.end133, !dbg !6207

if.then122:                                       ; preds = %land.lhs.true117
  br label %do.body123, !dbg !6208

do.body123:                                       ; preds = %if.then122
  call void @llvm.lifetime.start.p0(i64 8, ptr %__extack124) #15, !dbg !6209
  call void @llvm.dbg.declare(metadata ptr %__extack124, metadata !4399, metadata !DIExpression()), !dbg !6209
  %62 = load ptr, ptr %extack.addr, align 8, !dbg !6209
  store ptr %62, ptr %__extack124, align 8, !dbg !6209
  call void @do_trace_netlink_extack(ptr noundef @validate_nla.__msg.6) #16, !dbg !6209
  %63 = load ptr, ptr %__extack124, align 8, !dbg !6210
  %tobool125 = icmp ne ptr %63, null, !dbg !6210
  br i1 %tobool125, label %if.then126, label %if.end130, !dbg !6209

if.then126:                                       ; preds = %do.body123
  %64 = load ptr, ptr %__extack124, align 8, !dbg !6212
  %_msg127 = getelementptr inbounds %struct.netlink_ext_ack, ptr %64, i32 0, i32 0, !dbg !6212
  store ptr @validate_nla.__msg.6, ptr %_msg127, align 8, !dbg !6212
  %65 = load ptr, ptr %nla.addr, align 8, !dbg !6212
  %66 = load ptr, ptr %__extack124, align 8, !dbg !6212
  %bad_attr128 = getelementptr inbounds %struct.netlink_ext_ack, ptr %66, i32 0, i32 1, !dbg !6212
  store ptr %65, ptr %bad_attr128, align 8, !dbg !6212
  %67 = load ptr, ptr %pt, align 8, !dbg !6212
  %68 = load ptr, ptr %__extack124, align 8, !dbg !6212
  %policy129 = getelementptr inbounds %struct.netlink_ext_ack, ptr %68, i32 0, i32 2, !dbg !6212
  store ptr %67, ptr %policy129, align 8, !dbg !6212
  br label %if.end130, !dbg !6212

if.end130:                                        ; preds = %if.then126, %do.body123
  call void @llvm.lifetime.end.p0(i64 8, ptr %__extack124) #15, !dbg !6208
  br label %do.cond131, !dbg !6209

do.cond131:                                       ; preds = %if.end130
  br label %do.end132, !dbg !6209

do.end132:                                        ; preds = %do.cond131
  store i32 -22, ptr %retval, align 4, !dbg !6214
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup332, !dbg !6214

if.end133:                                        ; preds = %land.lhs.true117, %land.lhs.true112, %land.lhs.true107, %if.end102
  br label %if.end134, !dbg !6215

if.end134:                                        ; preds = %if.end133, %if.end74
  %69 = load ptr, ptr %pt, align 8, !dbg !6216
  %type135 = getelementptr inbounds %struct.nla_policy, ptr %69, i32 0, i32 0, !dbg !6217
  %70 = load i8, ptr %type135, align 8, !dbg !6217
  %conv136 = zext i8 %70 to i32, !dbg !6216
  switch i32 %conv136, label %sw.default [
    i32 17, label %sw.bb
    i32 6, label %sw.bb151
    i32 16, label %sw.bb156
    i32 10, label %sw.bb166
    i32 5, label %sw.bb185
    i32 11, label %sw.bb208
    i32 8, label %sw.bb219
    i32 9, label %sw.bb241
    i32 0, label %sw.bb266
  ], !dbg !6218

sw.bb:                                            ; preds = %if.end134
  %71 = load ptr, ptr %extack.addr, align 8, !dbg !6219
  %tobool137 = icmp ne ptr %71, null, !dbg !6219
  br i1 %tobool137, label %land.lhs.true138, label %if.end150, !dbg !6221

land.lhs.true138:                                 ; preds = %sw.bb
  %72 = load ptr, ptr %pt, align 8, !dbg !6222
  %73 = getelementptr inbounds %struct.nla_policy, ptr %72, i32 0, i32 3, !dbg !6223
  %74 = load ptr, ptr %73, align 8, !dbg !6223
  %tobool139 = icmp ne ptr %74, null, !dbg !6222
  br i1 %tobool139, label %if.then140, label %if.end150, !dbg !6224

if.then140:                                       ; preds = %land.lhs.true138
  br label %do.body141, !dbg !6225

do.body141:                                       ; preds = %if.then140
  %75 = load ptr, ptr %extack.addr, align 8, !dbg !6227
  %tobool142 = icmp ne ptr %75, null, !dbg !6227
  br i1 %tobool142, label %if.then143, label %if.end146, !dbg !6230

if.then143:                                       ; preds = %do.body141
  %76 = load ptr, ptr %nla.addr, align 8, !dbg !6231
  %77 = load ptr, ptr %extack.addr, align 8, !dbg !6231
  %bad_attr144 = getelementptr inbounds %struct.netlink_ext_ack, ptr %77, i32 0, i32 1, !dbg !6231
  store ptr %76, ptr %bad_attr144, align 8, !dbg !6231
  %78 = load ptr, ptr %extack.addr, align 8, !dbg !6231
  %policy145 = getelementptr inbounds %struct.netlink_ext_ack, ptr %78, i32 0, i32 2, !dbg !6231
  store ptr null, ptr %policy145, align 8, !dbg !6231
  br label %if.end146, !dbg !6231

if.end146:                                        ; preds = %if.then143, %do.body141
  br label %do.cond147, !dbg !6230

do.cond147:                                       ; preds = %if.end146
  br label %do.end148, !dbg !6230

do.end148:                                        ; preds = %do.cond147
  %79 = load ptr, ptr %pt, align 8, !dbg !6233
  %80 = getelementptr inbounds %struct.nla_policy, ptr %79, i32 0, i32 3, !dbg !6234
  %81 = load ptr, ptr %80, align 8, !dbg !6234
  %82 = load ptr, ptr %extack.addr, align 8, !dbg !6235
  %_msg149 = getelementptr inbounds %struct.netlink_ext_ack, ptr %82, i32 0, i32 0, !dbg !6236
  store ptr %81, ptr %_msg149, align 8, !dbg !6237
  store i32 -22, ptr %retval, align 4, !dbg !6238
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup332, !dbg !6238

if.end150:                                        ; preds = %land.lhs.true138, %sw.bb
  store i32 -22, ptr %err, align 4, !dbg !6239
  br label %out_err, !dbg !6240

sw.bb151:                                         ; preds = %if.end134
  %83 = load i32, ptr %attrlen, align 4, !dbg !6241
  %cmp152 = icmp sgt i32 %83, 0, !dbg !6243
  br i1 %cmp152, label %if.then154, label %if.end155, !dbg !6244

if.then154:                                       ; preds = %sw.bb151
  br label %out_err, !dbg !6245

if.end155:                                        ; preds = %sw.bb151
  br label %sw.epilog, !dbg !6246

sw.bb156:                                         ; preds = %if.end134
  %84 = load i32, ptr %attrlen, align 4, !dbg !6247
  %conv157 = sext i32 %84 to i64, !dbg !6247
  %cmp158 = icmp ne i64 %conv157, 8, !dbg !6249
  br i1 %cmp158, label %if.then160, label %if.end161, !dbg !6250

if.then160:                                       ; preds = %sw.bb156
  br label %out_err, !dbg !6251

if.end161:                                        ; preds = %sw.bb156
  %85 = load ptr, ptr %nla.addr, align 8, !dbg !6252
  %86 = load ptr, ptr %pt, align 8, !dbg !6253
  %87 = getelementptr inbounds %struct.nla_policy, ptr %86, i32 0, i32 3, !dbg !6254
  %88 = load i32, ptr %87, align 8, !dbg !6254
  %call162 = call i32 @validate_nla_bitfield32(ptr noundef %85, i32 noundef %88) #16, !dbg !6255
  store i32 %call162, ptr %err, align 4, !dbg !6256
  %89 = load i32, ptr %err, align 4, !dbg !6257
  %tobool163 = icmp ne i32 %89, 0, !dbg !6257
  br i1 %tobool163, label %if.then164, label %if.end165, !dbg !6259

if.then164:                                       ; preds = %if.end161
  br label %out_err, !dbg !6260

if.end165:                                        ; preds = %if.end161
  br label %sw.epilog, !dbg !6261

sw.bb166:                                         ; preds = %if.end134
  %90 = load ptr, ptr %pt, align 8, !dbg !6262
  %len = getelementptr inbounds %struct.nla_policy, ptr %90, i32 0, i32 2, !dbg !6263
  %91 = load i16, ptr %len, align 2, !dbg !6263
  %tobool167 = icmp ne i16 %91, 0, !dbg !6262
  br i1 %tobool167, label %if.then168, label %if.else, !dbg !6264

if.then168:                                       ; preds = %sw.bb166
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x340) #15, !dbg !6265
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x340, metadata !4403, metadata !DIExpression()), !dbg !6265
  %92 = load i32, ptr %attrlen, align 4, !dbg !6265
  store i32 %92, ptr %__UNIQUE_ID___x340, align 4, !dbg !6265
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y341) #15, !dbg !6265
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y341, metadata !4407, metadata !DIExpression()), !dbg !6265
  %93 = load ptr, ptr %pt, align 8, !dbg !6265
  %len169 = getelementptr inbounds %struct.nla_policy, ptr %93, i32 0, i32 2, !dbg !6265
  %94 = load i16, ptr %len169, align 2, !dbg !6265
  %conv170 = zext i16 %94 to i32, !dbg !6265
  %add171 = add i32 %conv170, 1, !dbg !6265
  store i32 %add171, ptr %__UNIQUE_ID___y341, align 4, !dbg !6265
  %95 = load i32, ptr %__UNIQUE_ID___x340, align 4, !dbg !6265
  %96 = load i32, ptr %__UNIQUE_ID___y341, align 4, !dbg !6265
  %cmp173 = icmp slt i32 %95, %96, !dbg !6265
  br i1 %cmp173, label %cond.true, label %cond.false, !dbg !6265

cond.true:                                        ; preds = %if.then168
  %97 = load i32, ptr %__UNIQUE_ID___x340, align 4, !dbg !6265
  br label %cond.end, !dbg !6265

cond.false:                                       ; preds = %if.then168
  %98 = load i32, ptr %__UNIQUE_ID___y341, align 4, !dbg !6265
  br label %cond.end, !dbg !6265

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %97, %cond.true ], [ %98, %cond.false ], !dbg !6265
  store i32 %cond, ptr %tmp172, align 4, !dbg !6265
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y341) #15, !dbg !6266
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x340) #15, !dbg !6266
  %99 = load i32, ptr %tmp172, align 4, !dbg !6265
  store i32 %99, ptr %minlen, align 4, !dbg !6267
  br label %if.end175, !dbg !6268

if.else:                                          ; preds = %sw.bb166
  %100 = load i32, ptr %attrlen, align 4, !dbg !6269
  store i32 %100, ptr %minlen, align 4, !dbg !6270
  br label %if.end175

if.end175:                                        ; preds = %if.else, %cond.end
  %101 = load i32, ptr %minlen, align 4, !dbg !6271
  %tobool176 = icmp ne i32 %101, 0, !dbg !6271
  br i1 %tobool176, label %lor.lhs.false177, label %if.then183, !dbg !6273

lor.lhs.false177:                                 ; preds = %if.end175
  %102 = load ptr, ptr %nla.addr, align 8, !dbg !6274
  %call178 = call ptr @nla_data(ptr noundef %102) #16, !dbg !6275
  %103 = load i32, ptr %minlen, align 4, !dbg !6276
  %conv179 = sext i32 %103 to i64, !dbg !6276
  %call180 = call ptr @memchr(ptr noundef %call178, i32 noundef 0, i64 noundef %conv179) #16, !dbg !6277
  %cmp181 = icmp eq ptr %call180, null, !dbg !6278
  br i1 %cmp181, label %if.then183, label %if.end184, !dbg !6279

if.then183:                                       ; preds = %lor.lhs.false177, %if.end175
  store i32 -22, ptr %err, align 4, !dbg !6280
  br label %out_err, !dbg !6282

if.end184:                                        ; preds = %lor.lhs.false177
  br label %sw.bb185, !dbg !6283

sw.bb185:                                         ; preds = %if.end134, %if.end184
  %104 = load i32, ptr %attrlen, align 4, !dbg !6284
  %cmp186 = icmp slt i32 %104, 1, !dbg !6286
  br i1 %cmp186, label %if.then188, label %if.end189, !dbg !6287

if.then188:                                       ; preds = %sw.bb185
  br label %out_err, !dbg !6288

if.end189:                                        ; preds = %sw.bb185
  %105 = load ptr, ptr %pt, align 8, !dbg !6289
  %len190 = getelementptr inbounds %struct.nla_policy, ptr %105, i32 0, i32 2, !dbg !6290
  %106 = load i16, ptr %len190, align 2, !dbg !6290
  %tobool191 = icmp ne i16 %106, 0, !dbg !6289
  br i1 %tobool191, label %if.then192, label %if.end207, !dbg !6291

if.then192:                                       ; preds = %if.end189
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #15, !dbg !6292
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !4408, metadata !DIExpression()), !dbg !6293
  %107 = load ptr, ptr %nla.addr, align 8, !dbg !6294
  %call193 = call ptr @nla_data(ptr noundef %107) #16, !dbg !6295
  store ptr %call193, ptr %buf, align 8, !dbg !6293
  %108 = load ptr, ptr %buf, align 8, !dbg !6296
  %109 = load i32, ptr %attrlen, align 4, !dbg !6298
  %sub = sub i32 %109, 1, !dbg !6299
  %idxprom194 = sext i32 %sub to i64, !dbg !6296
  %arrayidx195 = getelementptr i8, ptr %108, i64 %idxprom194, !dbg !6296
  %110 = load i8, ptr %arrayidx195, align 1, !dbg !6296
  %conv196 = zext i8 %110 to i32, !dbg !6296
  %cmp197 = icmp eq i32 %conv196, 0, !dbg !6300
  br i1 %cmp197, label %if.then199, label %if.end200, !dbg !6301

if.then199:                                       ; preds = %if.then192
  %111 = load i32, ptr %attrlen, align 4, !dbg !6302
  %dec = add i32 %111, -1, !dbg !6302
  store i32 %dec, ptr %attrlen, align 4, !dbg !6302
  br label %if.end200, !dbg !6303

if.end200:                                        ; preds = %if.then199, %if.then192
  %112 = load i32, ptr %attrlen, align 4, !dbg !6304
  %113 = load ptr, ptr %pt, align 8, !dbg !6306
  %len201 = getelementptr inbounds %struct.nla_policy, ptr %113, i32 0, i32 2, !dbg !6307
  %114 = load i16, ptr %len201, align 2, !dbg !6307
  %conv202 = zext i16 %114 to i32, !dbg !6306
  %cmp203 = icmp sgt i32 %112, %conv202, !dbg !6308
  br i1 %cmp203, label %if.then205, label %if.end206, !dbg !6309

if.then205:                                       ; preds = %if.end200
  store i32 25, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6310

if.end206:                                        ; preds = %if.end200
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6311
  br label %cleanup, !dbg !6311

cleanup:                                          ; preds = %if.then205, %if.end206
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #15, !dbg !6311
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup332 [
    i32 0, label %cleanup.cont
    i32 25, label %out_err
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end207, !dbg !6312

if.end207:                                        ; preds = %cleanup.cont, %if.end189
  br label %sw.epilog, !dbg !6313

sw.bb208:                                         ; preds = %if.end134
  %115 = load ptr, ptr %pt, align 8, !dbg !6314
  %len209 = getelementptr inbounds %struct.nla_policy, ptr %115, i32 0, i32 2, !dbg !6316
  %116 = load i16, ptr %len209, align 2, !dbg !6316
  %conv210 = zext i16 %116 to i32, !dbg !6314
  %tobool211 = icmp ne i32 %conv210, 0, !dbg !6314
  br i1 %tobool211, label %land.lhs.true212, label %if.end218, !dbg !6317

land.lhs.true212:                                 ; preds = %sw.bb208
  %117 = load i32, ptr %attrlen, align 4, !dbg !6318
  %118 = load ptr, ptr %pt, align 8, !dbg !6319
  %len213 = getelementptr inbounds %struct.nla_policy, ptr %118, i32 0, i32 2, !dbg !6320
  %119 = load i16, ptr %len213, align 2, !dbg !6320
  %conv214 = zext i16 %119 to i32, !dbg !6319
  %cmp215 = icmp sgt i32 %117, %conv214, !dbg !6321
  br i1 %cmp215, label %if.then217, label %if.end218, !dbg !6322

if.then217:                                       ; preds = %land.lhs.true212
  br label %out_err, !dbg !6323

if.end218:                                        ; preds = %land.lhs.true212, %sw.bb208
  br label %sw.epilog, !dbg !6324

sw.bb219:                                         ; preds = %if.end134
  %120 = load i32, ptr %attrlen, align 4, !dbg !6325
  %cmp220 = icmp eq i32 %120, 0, !dbg !6327
  br i1 %cmp220, label %if.then222, label %if.end223, !dbg !6328

if.then222:                                       ; preds = %sw.bb219
  br label %sw.epilog, !dbg !6329

if.end223:                                        ; preds = %sw.bb219
  %121 = load i32, ptr %attrlen, align 4, !dbg !6330
  %cmp224 = icmp slt i32 %121, 4, !dbg !6332
  br i1 %cmp224, label %if.then226, label %if.end227, !dbg !6333

if.then226:                                       ; preds = %if.end223
  br label %out_err, !dbg !6334

if.end227:                                        ; preds = %if.end223
  %122 = load ptr, ptr %pt, align 8, !dbg !6335
  %123 = getelementptr inbounds %struct.nla_policy, ptr %122, i32 0, i32 3, !dbg !6337
  %124 = load ptr, ptr %123, align 8, !dbg !6337
  %tobool228 = icmp ne ptr %124, null, !dbg !6335
  br i1 %tobool228, label %if.then229, label %if.end240, !dbg !6338

if.then229:                                       ; preds = %if.end227
  %125 = load ptr, ptr %nla.addr, align 8, !dbg !6339
  %call230 = call ptr @nla_data(ptr noundef %125) #16, !dbg !6341
  %126 = load ptr, ptr %nla.addr, align 8, !dbg !6342
  %call231 = call i32 @nla_len(ptr noundef %126) #16, !dbg !6343
  %127 = load ptr, ptr %pt, align 8, !dbg !6344
  %len232 = getelementptr inbounds %struct.nla_policy, ptr %127, i32 0, i32 2, !dbg !6345
  %128 = load i16, ptr %len232, align 2, !dbg !6345
  %conv233 = zext i16 %128 to i32, !dbg !6344
  %129 = load ptr, ptr %pt, align 8, !dbg !6346
  %130 = getelementptr inbounds %struct.nla_policy, ptr %129, i32 0, i32 3, !dbg !6347
  %131 = load ptr, ptr %130, align 8, !dbg !6347
  %132 = load i32, ptr %validate.addr, align 4, !dbg !6348
  %133 = load ptr, ptr %extack.addr, align 8, !dbg !6349
  %134 = load i32, ptr %depth.addr, align 4, !dbg !6350
  %add234 = add i32 %134, 1, !dbg !6351
  %call235 = call i32 @__nla_validate_parse(ptr noundef %call230, i32 noundef %call231, i32 noundef %conv233, ptr noundef %131, i32 noundef %132, ptr noundef %133, ptr noundef null, i32 noundef %add234) #16, !dbg !6352
  store i32 %call235, ptr %err, align 4, !dbg !6353
  %135 = load i32, ptr %err, align 4, !dbg !6354
  %cmp236 = icmp slt i32 %135, 0, !dbg !6356
  br i1 %cmp236, label %if.then238, label %if.end239, !dbg !6357

if.then238:                                       ; preds = %if.then229
  %136 = load i32, ptr %err, align 4, !dbg !6358
  store i32 %136, ptr %retval, align 4, !dbg !6360
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup332, !dbg !6360

if.end239:                                        ; preds = %if.then229
  br label %if.end240, !dbg !6361

if.end240:                                        ; preds = %if.end239, %if.end227
  br label %sw.epilog, !dbg !6362

sw.bb241:                                         ; preds = %if.end134
  %137 = load i32, ptr %attrlen, align 4, !dbg !6363
  %cmp242 = icmp eq i32 %137, 0, !dbg !6365
  br i1 %cmp242, label %if.then244, label %if.end245, !dbg !6366

if.then244:                                       ; preds = %sw.bb241
  br label %sw.epilog, !dbg !6367

if.end245:                                        ; preds = %sw.bb241
  %138 = load i32, ptr %attrlen, align 4, !dbg !6368
  %cmp246 = icmp slt i32 %138, 4, !dbg !6370
  br i1 %cmp246, label %if.then248, label %if.end249, !dbg !6371

if.then248:                                       ; preds = %if.end245
  br label %out_err, !dbg !6372

if.end249:                                        ; preds = %if.end245
  %139 = load ptr, ptr %pt, align 8, !dbg !6373
  %140 = getelementptr inbounds %struct.nla_policy, ptr %139, i32 0, i32 3, !dbg !6374
  %141 = load ptr, ptr %140, align 8, !dbg !6374
  %tobool250 = icmp ne ptr %141, null, !dbg !6373
  br i1 %tobool250, label %if.then251, label %if.end265, !dbg !6375

if.then251:                                       ; preds = %if.end249
  call void @llvm.lifetime.start.p0(i64 4, ptr %err252) #15, !dbg !6376
  call void @llvm.dbg.declare(metadata ptr %err252, metadata !4411, metadata !DIExpression()), !dbg !6377
  %142 = load ptr, ptr %nla.addr, align 8, !dbg !6378
  %call253 = call ptr @nla_data(ptr noundef %142) #16, !dbg !6379
  %143 = load ptr, ptr %nla.addr, align 8, !dbg !6380
  %call254 = call i32 @nla_len(ptr noundef %143) #16, !dbg !6381
  %144 = load ptr, ptr %pt, align 8, !dbg !6382
  %len255 = getelementptr inbounds %struct.nla_policy, ptr %144, i32 0, i32 2, !dbg !6383
  %145 = load i16, ptr %len255, align 2, !dbg !6383
  %conv256 = zext i16 %145 to i32, !dbg !6382
  %146 = load ptr, ptr %pt, align 8, !dbg !6384
  %147 = getelementptr inbounds %struct.nla_policy, ptr %146, i32 0, i32 3, !dbg !6385
  %148 = load ptr, ptr %147, align 8, !dbg !6385
  %149 = load ptr, ptr %extack.addr, align 8, !dbg !6386
  %150 = load i32, ptr %validate.addr, align 4, !dbg !6387
  %151 = load i32, ptr %depth.addr, align 4, !dbg !6388
  %call257 = call i32 @nla_validate_array(ptr noundef %call253, i32 noundef %call254, i32 noundef %conv256, ptr noundef %148, ptr noundef %149, i32 noundef %150, i32 noundef %151) #16, !dbg !6389
  store i32 %call257, ptr %err252, align 4, !dbg !6390
  %152 = load i32, ptr %err252, align 4, !dbg !6391
  %cmp258 = icmp slt i32 %152, 0, !dbg !6393
  br i1 %cmp258, label %if.then260, label %if.end261, !dbg !6394

if.then260:                                       ; preds = %if.then251
  %153 = load i32, ptr %err252, align 4, !dbg !6395
  store i32 %153, ptr %retval, align 4, !dbg !6397
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup262, !dbg !6397

if.end261:                                        ; preds = %if.then251
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6398
  br label %cleanup262, !dbg !6398

cleanup262:                                       ; preds = %if.end261, %if.then260
  call void @llvm.lifetime.end.p0(i64 4, ptr %err252) #15, !dbg !6398
  %cleanup.dest263 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest263, label %cleanup332 [
    i32 0, label %cleanup.cont264
  ]

cleanup.cont264:                                  ; preds = %cleanup262
  br label %if.end265, !dbg !6399

if.end265:                                        ; preds = %cleanup.cont264, %if.end249
  br label %sw.epilog, !dbg !6400

sw.bb266:                                         ; preds = %if.end134
  %154 = load i32, ptr %validate.addr, align 4, !dbg !6401
  %and267 = and i32 %154, 4, !dbg !6402
  %tobool268 = icmp ne i32 %and267, 0, !dbg !6402
  br i1 %tobool268, label %if.then269, label %if.end280, !dbg !6403

if.then269:                                       ; preds = %sw.bb266
  br label %do.body270, !dbg !6404

do.body270:                                       ; preds = %if.then269
  call void @llvm.lifetime.start.p0(i64 8, ptr %__extack271) #15, !dbg !6405
  call void @llvm.dbg.declare(metadata ptr %__extack271, metadata !4414, metadata !DIExpression()), !dbg !6405
  %155 = load ptr, ptr %extack.addr, align 8, !dbg !6405
  store ptr %155, ptr %__extack271, align 8, !dbg !6405
  call void @do_trace_netlink_extack(ptr noundef @validate_nla.__msg.7) #16, !dbg !6405
  %156 = load ptr, ptr %__extack271, align 8, !dbg !6406
  %tobool272 = icmp ne ptr %156, null, !dbg !6406
  br i1 %tobool272, label %if.then273, label %if.end277, !dbg !6405

if.then273:                                       ; preds = %do.body270
  %157 = load ptr, ptr %__extack271, align 8, !dbg !6408
  %_msg274 = getelementptr inbounds %struct.netlink_ext_ack, ptr %157, i32 0, i32 0, !dbg !6408
  store ptr @validate_nla.__msg.7, ptr %_msg274, align 8, !dbg !6408
  %158 = load ptr, ptr %nla.addr, align 8, !dbg !6408
  %159 = load ptr, ptr %__extack271, align 8, !dbg !6408
  %bad_attr275 = getelementptr inbounds %struct.netlink_ext_ack, ptr %159, i32 0, i32 1, !dbg !6408
  store ptr %158, ptr %bad_attr275, align 8, !dbg !6408
  %160 = load ptr, ptr %__extack271, align 8, !dbg !6408
  %policy276 = getelementptr inbounds %struct.netlink_ext_ack, ptr %160, i32 0, i32 2, !dbg !6408
  store ptr null, ptr %policy276, align 8, !dbg !6408
  br label %if.end277, !dbg !6408

if.end277:                                        ; preds = %if.then273, %do.body270
  call void @llvm.lifetime.end.p0(i64 8, ptr %__extack271) #15, !dbg !6404
  br label %do.cond278, !dbg !6405

do.cond278:                                       ; preds = %if.end277
  br label %do.end279, !dbg !6405

do.end279:                                        ; preds = %do.cond278
  store i32 -22, ptr %retval, align 4, !dbg !6410
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup332, !dbg !6410

if.end280:                                        ; preds = %sw.bb266
  %161 = load i32, ptr %attrlen, align 4, !dbg !6411
  %162 = load ptr, ptr %pt, align 8, !dbg !6413
  %len281 = getelementptr inbounds %struct.nla_policy, ptr %162, i32 0, i32 2, !dbg !6414
  %163 = load i16, ptr %len281, align 2, !dbg !6414
  %conv282 = zext i16 %163 to i32, !dbg !6413
  %cmp283 = icmp slt i32 %161, %conv282, !dbg !6415
  br i1 %cmp283, label %if.then285, label %if.end286, !dbg !6416

if.then285:                                       ; preds = %if.end280
  br label %out_err, !dbg !6417

if.end286:                                        ; preds = %if.end280
  br label %sw.epilog, !dbg !6418

sw.default:                                       ; preds = %if.end134
  %164 = load ptr, ptr %pt, align 8, !dbg !6419
  %len287 = getelementptr inbounds %struct.nla_policy, ptr %164, i32 0, i32 2, !dbg !6421
  %165 = load i16, ptr %len287, align 2, !dbg !6421
  %tobool288 = icmp ne i16 %165, 0, !dbg !6419
  br i1 %tobool288, label %if.then289, label %if.else292, !dbg !6422

if.then289:                                       ; preds = %sw.default
  %166 = load ptr, ptr %pt, align 8, !dbg !6423
  %len290 = getelementptr inbounds %struct.nla_policy, ptr %166, i32 0, i32 2, !dbg !6424
  %167 = load i16, ptr %len290, align 2, !dbg !6424
  %conv291 = zext i16 %167 to i32, !dbg !6423
  store i32 %conv291, ptr %minlen, align 4, !dbg !6425
  br label %if.end297, !dbg !6426

if.else292:                                       ; preds = %sw.default
  %168 = load ptr, ptr %pt, align 8, !dbg !6427
  %type293 = getelementptr inbounds %struct.nla_policy, ptr %168, i32 0, i32 0, !dbg !6428
  %169 = load i8, ptr %type293, align 8, !dbg !6428
  %idxprom294 = zext i8 %169 to i64, !dbg !6429
  %arrayidx295 = getelementptr [20 x i8], ptr @nla_attr_minlen, i64 0, i64 %idxprom294, !dbg !6429
  %170 = load i8, ptr %arrayidx295, align 1, !dbg !6429
  %conv296 = zext i8 %170 to i32, !dbg !6429
  store i32 %conv296, ptr %minlen, align 4, !dbg !6430
  br label %if.end297

if.end297:                                        ; preds = %if.else292, %if.then289
  %171 = load i32, ptr %attrlen, align 4, !dbg !6431
  %172 = load i32, ptr %minlen, align 4, !dbg !6433
  %cmp298 = icmp slt i32 %171, %172, !dbg !6434
  br i1 %cmp298, label %if.then300, label %if.end301, !dbg !6435

if.then300:                                       ; preds = %if.end297
  br label %out_err, !dbg !6436

if.end301:                                        ; preds = %if.end297
  br label %sw.epilog, !dbg !6437

sw.epilog:                                        ; preds = %if.end301, %if.end286, %if.end265, %if.then244, %if.end240, %if.then222, %if.end218, %if.end207, %if.end165, %if.end155
  %173 = load ptr, ptr %pt, align 8, !dbg !6438
  %validation_type = getelementptr inbounds %struct.nla_policy, ptr %173, i32 0, i32 1, !dbg !6439
  %174 = load i8, ptr %validation_type, align 1, !dbg !6439
  %conv302 = zext i8 %174 to i32, !dbg !6438
  switch i32 %conv302, label %sw.epilog321 [
    i32 0, label %sw.epilog321
    i32 6, label %sw.bb303
    i32 1, label %sw.bb303
    i32 2, label %sw.bb303
    i32 3, label %sw.bb303
    i32 4, label %sw.bb303
    i32 5, label %sw.bb308
    i32 7, label %sw.bb313
  ], !dbg !6440

sw.bb303:                                         ; preds = %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog
  %175 = load ptr, ptr %pt, align 8, !dbg !6441
  %176 = load ptr, ptr %nla.addr, align 8, !dbg !6443
  %177 = load ptr, ptr %extack.addr, align 8, !dbg !6444
  %178 = load i32, ptr %validate.addr, align 4, !dbg !6445
  %call304 = call i32 @nla_validate_int_range(ptr noundef %175, ptr noundef %176, ptr noundef %177, i32 noundef %178) #16, !dbg !6446
  store i32 %call304, ptr %err, align 4, !dbg !6447
  %179 = load i32, ptr %err, align 4, !dbg !6448
  %tobool305 = icmp ne i32 %179, 0, !dbg !6448
  br i1 %tobool305, label %if.then306, label %if.end307, !dbg !6450

if.then306:                                       ; preds = %sw.bb303
  %180 = load i32, ptr %err, align 4, !dbg !6451
  store i32 %180, ptr %retval, align 4, !dbg !6452
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup332, !dbg !6452

if.end307:                                        ; preds = %sw.bb303
  br label %sw.epilog321, !dbg !6453

sw.bb308:                                         ; preds = %sw.epilog
  %181 = load ptr, ptr %pt, align 8, !dbg !6454
  %182 = load ptr, ptr %nla.addr, align 8, !dbg !6455
  %183 = load ptr, ptr %extack.addr, align 8, !dbg !6456
  %call309 = call i32 @nla_validate_mask(ptr noundef %181, ptr noundef %182, ptr noundef %183) #16, !dbg !6457
  store i32 %call309, ptr %err, align 4, !dbg !6458
  %184 = load i32, ptr %err, align 4, !dbg !6459
  %tobool310 = icmp ne i32 %184, 0, !dbg !6459
  br i1 %tobool310, label %if.then311, label %if.end312, !dbg !6461

if.then311:                                       ; preds = %sw.bb308
  %185 = load i32, ptr %err, align 4, !dbg !6462
  store i32 %185, ptr %retval, align 4, !dbg !6463
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup332, !dbg !6463

if.end312:                                        ; preds = %sw.bb308
  br label %sw.epilog321, !dbg !6464

sw.bb313:                                         ; preds = %sw.epilog
  %186 = load ptr, ptr %pt, align 8, !dbg !6465
  %187 = getelementptr inbounds %struct.nla_policy, ptr %186, i32 0, i32 3, !dbg !6467
  %188 = load ptr, ptr %187, align 8, !dbg !6467
  %tobool314 = icmp ne ptr %188, null, !dbg !6465
  br i1 %tobool314, label %if.then315, label %if.end320, !dbg !6468

if.then315:                                       ; preds = %sw.bb313
  %189 = load ptr, ptr %pt, align 8, !dbg !6469
  %190 = getelementptr inbounds %struct.nla_policy, ptr %189, i32 0, i32 3, !dbg !6471
  %191 = load ptr, ptr %190, align 8, !dbg !6471
  %192 = load ptr, ptr %nla.addr, align 8, !dbg !6472
  %193 = load ptr, ptr %extack.addr, align 8, !dbg !6473
  %call316 = call i32 %191(ptr noundef %192, ptr noundef %193) #16, !dbg !6469
  store i32 %call316, ptr %err, align 4, !dbg !6474
  %194 = load i32, ptr %err, align 4, !dbg !6475
  %tobool317 = icmp ne i32 %194, 0, !dbg !6475
  br i1 %tobool317, label %if.then318, label %if.end319, !dbg !6477

if.then318:                                       ; preds = %if.then315
  %195 = load i32, ptr %err, align 4, !dbg !6478
  store i32 %195, ptr %retval, align 4, !dbg !6479
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup332, !dbg !6479

if.end319:                                        ; preds = %if.then315
  br label %if.end320, !dbg !6480

if.end320:                                        ; preds = %if.end319, %sw.bb313
  br label %sw.epilog321, !dbg !6481

sw.epilog321:                                     ; preds = %sw.epilog, %if.end320, %if.end312, %if.end307, %sw.epilog
  store i32 0, ptr %retval, align 4, !dbg !6482
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup332, !dbg !6482

out_err:                                          ; preds = %cleanup, %if.then300, %if.then285, %if.then248, %if.then226, %if.then217, %if.then188, %if.then183, %if.then164, %if.then160, %if.then154, %if.end150
  call void @llvm.dbg.label(metadata !4418), !dbg !6483
  br label %do.body322, !dbg !6484

do.body322:                                       ; preds = %out_err
  call void @llvm.lifetime.start.p0(i64 8, ptr %__extack323) #15, !dbg !6485
  call void @llvm.dbg.declare(metadata ptr %__extack323, metadata !4419, metadata !DIExpression()), !dbg !6485
  %196 = load ptr, ptr %extack.addr, align 8, !dbg !6485
  store ptr %196, ptr %__extack323, align 8, !dbg !6485
  call void @do_trace_netlink_extack(ptr noundef @validate_nla.__msg.8) #16, !dbg !6485
  %197 = load ptr, ptr %__extack323, align 8, !dbg !6486
  %tobool324 = icmp ne ptr %197, null, !dbg !6486
  br i1 %tobool324, label %if.then325, label %if.end329, !dbg !6485

if.then325:                                       ; preds = %do.body322
  %198 = load ptr, ptr %__extack323, align 8, !dbg !6488
  %_msg326 = getelementptr inbounds %struct.netlink_ext_ack, ptr %198, i32 0, i32 0, !dbg !6488
  store ptr @validate_nla.__msg.8, ptr %_msg326, align 8, !dbg !6488
  %199 = load ptr, ptr %nla.addr, align 8, !dbg !6488
  %200 = load ptr, ptr %__extack323, align 8, !dbg !6488
  %bad_attr327 = getelementptr inbounds %struct.netlink_ext_ack, ptr %200, i32 0, i32 1, !dbg !6488
  store ptr %199, ptr %bad_attr327, align 8, !dbg !6488
  %201 = load ptr, ptr %pt, align 8, !dbg !6488
  %202 = load ptr, ptr %__extack323, align 8, !dbg !6488
  %policy328 = getelementptr inbounds %struct.netlink_ext_ack, ptr %202, i32 0, i32 2, !dbg !6488
  store ptr %201, ptr %policy328, align 8, !dbg !6488
  br label %if.end329, !dbg !6488

if.end329:                                        ; preds = %if.then325, %do.body322
  call void @llvm.lifetime.end.p0(i64 8, ptr %__extack323) #15, !dbg !6484
  br label %do.cond330, !dbg !6485

do.cond330:                                       ; preds = %if.end329
  br label %do.end331, !dbg !6485

do.end331:                                        ; preds = %do.cond330
  %203 = load i32, ptr %err, align 4, !dbg !6490
  store i32 %203, ptr %retval, align 4, !dbg !6491
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup332, !dbg !6491

cleanup332:                                       ; preds = %do.end331, %sw.epilog321, %if.then318, %if.then311, %if.then306, %do.end279, %cleanup262, %if.then238, %cleanup, %do.end148, %do.end132, %do.end101, %do.end72, %if.then8
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #15, !dbg !6492
  call void @llvm.lifetime.end.p0(i64 4, ptr %type) #15, !dbg !6492
  call void @llvm.lifetime.end.p0(i64 4, ptr %attrlen) #15, !dbg !6492
  call void @llvm.lifetime.end.p0(i64 4, ptr %minlen) #15, !dbg !6492
  call void @llvm.lifetime.end.p0(i64 8, ptr %pt) #15, !dbg !6492
  call void @llvm.lifetime.end.p0(i64 2, ptr %strict_start_type) #15, !dbg !6492
  %204 = load i32, ptr %retval, align 4, !dbg !6492
  ret i32 %204, !dbg !6492
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6493 dso_local i32 @___ratelimit(ptr noundef, ptr noundef) #8

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6497 dso_local i32 @_printk(ptr noundef, ...) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #10 align 16 !dbg !6501 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #15, !dbg !6512
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !6506, metadata !DIExpression()), !dbg !6512
  br label %do.body, !dbg !6512

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #15, !dbg !6513
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6508, metadata !DIExpression()), !dbg !6513
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6513
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6513
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #15, !dbg !6512
  br label %do.cond, !dbg !6513

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6513

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #15, !dbg !6514
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !6510, metadata !DIExpression()), !dbg !6514
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #20, !dbg !6514, !srcloc !6515
  store i64 %1, ptr %pfo_val__, align 8, !dbg !6514
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !6514
  %3 = inttoptr i64 %2 to ptr, !dbg !6514
  store ptr %3, ptr %tmp, align 8, !dbg !6514
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #15, !dbg !6512
  %4 = load ptr, ptr %tmp, align 8, !dbg !6514
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !6512
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !6512
  store ptr %5, ptr %tmp1, align 8, !dbg !6512
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #15, !dbg !6516
  %6 = load ptr, ptr %tmp1, align 8, !dbg !6512
  ret ptr %6, !dbg !6517
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @validate_nla_bitfield32(ptr noundef %nla, i32 noundef %valid_flags_mask) #0 align 16 !dbg !6518 {
entry:
  %retval = alloca i32, align 4
  %nla.addr = alloca ptr, align 8
  %valid_flags_mask.addr = alloca i32, align 4
  %bf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %nla, ptr %nla.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nla.addr, metadata !6522, metadata !DIExpression()), !dbg !6531
  store i32 %valid_flags_mask, ptr %valid_flags_mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %valid_flags_mask.addr, metadata !6523, metadata !DIExpression()), !dbg !6532
  call void @llvm.lifetime.start.p0(i64 8, ptr %bf) #15, !dbg !6533
  call void @llvm.dbg.declare(metadata ptr %bf, metadata !6524, metadata !DIExpression()), !dbg !6534
  %0 = load ptr, ptr %nla.addr, align 8, !dbg !6535
  %call = call ptr @nla_data(ptr noundef %0) #16, !dbg !6536
  store ptr %call, ptr %bf, align 8, !dbg !6534
  %1 = load i32, ptr %valid_flags_mask.addr, align 4, !dbg !6537
  %tobool = icmp ne i32 %1, 0, !dbg !6537
  br i1 %tobool, label %if.end, label %if.then, !dbg !6539

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !6540
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6540

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %bf, align 8, !dbg !6541
  %selector = getelementptr inbounds %struct.nla_bitfield32, ptr %2, i32 0, i32 1, !dbg !6543
  %3 = load i32, ptr %selector, align 4, !dbg !6543
  %4 = load i32, ptr %valid_flags_mask.addr, align 4, !dbg !6544
  %not = xor i32 %4, -1, !dbg !6545
  %and = and i32 %3, %not, !dbg !6546
  %tobool1 = icmp ne i32 %and, 0, !dbg !6546
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !6547

if.then2:                                         ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !6548
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6548

if.end3:                                          ; preds = %if.end
  %5 = load ptr, ptr %bf, align 8, !dbg !6549
  %value = getelementptr inbounds %struct.nla_bitfield32, ptr %5, i32 0, i32 0, !dbg !6551
  %6 = load i32, ptr %value, align 4, !dbg !6551
  %7 = load i32, ptr %valid_flags_mask.addr, align 4, !dbg !6552
  %not4 = xor i32 %7, -1, !dbg !6553
  %and5 = and i32 %6, %not4, !dbg !6554
  %tobool6 = icmp ne i32 %and5, 0, !dbg !6554
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !6555

if.then7:                                         ; preds = %if.end3
  store i32 -22, ptr %retval, align 4, !dbg !6556
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6556

if.end8:                                          ; preds = %if.end3
  %8 = load ptr, ptr %bf, align 8, !dbg !6557
  %value9 = getelementptr inbounds %struct.nla_bitfield32, ptr %8, i32 0, i32 0, !dbg !6559
  %9 = load i32, ptr %value9, align 4, !dbg !6559
  %10 = load ptr, ptr %bf, align 8, !dbg !6560
  %selector10 = getelementptr inbounds %struct.nla_bitfield32, ptr %10, i32 0, i32 1, !dbg !6561
  %11 = load i32, ptr %selector10, align 4, !dbg !6561
  %not11 = xor i32 %11, -1, !dbg !6562
  %and12 = and i32 %9, %not11, !dbg !6563
  %tobool13 = icmp ne i32 %and12, 0, !dbg !6563
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !6564

if.then14:                                        ; preds = %if.end8
  store i32 -22, ptr %retval, align 4, !dbg !6565
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6565

if.end15:                                         ; preds = %if.end8
  store i32 0, ptr %retval, align 4, !dbg !6566
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6566

cleanup:                                          ; preds = %if.end15, %if.then14, %if.then7, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bf) #15, !dbg !6567
  %12 = load i32, ptr %retval, align 4, !dbg !6567
  ret i32 %12, !dbg !6567
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6568 dso_local ptr @memchr(ptr noundef, i32 noundef, i64 noundef) #8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @nla_validate_array(ptr noundef %head, i32 noundef %len, i32 noundef %maxtype, ptr noundef %policy, ptr noundef %extack, i32 noundef %validate, i32 noundef %depth) #0 align 16 !dbg !4456 {
entry:
  %retval = alloca i32, align 4
  %head.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %maxtype.addr = alloca i32, align 4
  %policy.addr = alloca ptr, align 8
  %extack.addr = alloca ptr, align 8
  %validate.addr = alloca i32, align 4
  %depth.addr = alloca i32, align 4
  %entry1 = alloca ptr, align 8
  %rem = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__extack = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !4460, metadata !DIExpression()), !dbg !6571
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !4461, metadata !DIExpression()), !dbg !6572
  store i32 %maxtype, ptr %maxtype.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %maxtype.addr, metadata !4462, metadata !DIExpression()), !dbg !6573
  store ptr %policy, ptr %policy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !4463, metadata !DIExpression()), !dbg !6574
  store ptr %extack, ptr %extack.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %extack.addr, metadata !4464, metadata !DIExpression()), !dbg !6575
  store i32 %validate, ptr %validate.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %validate.addr, metadata !4465, metadata !DIExpression()), !dbg !6576
  store i32 %depth, ptr %depth.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %depth.addr, metadata !4466, metadata !DIExpression()), !dbg !6577
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #15, !dbg !6578
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !4467, metadata !DIExpression()), !dbg !6579
  call void @llvm.lifetime.start.p0(i64 4, ptr %rem) #15, !dbg !6580
  call void @llvm.dbg.declare(metadata ptr %rem, metadata !4468, metadata !DIExpression()), !dbg !6581
  %0 = load ptr, ptr %head.addr, align 8, !dbg !6582
  store ptr %0, ptr %entry1, align 8, !dbg !6582
  %1 = load i32, ptr %len.addr, align 4, !dbg !6582
  store i32 %1, ptr %rem, align 4, !dbg !6582
  br label %for.cond, !dbg !6582

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load ptr, ptr %entry1, align 8, !dbg !6583
  %3 = load i32, ptr %rem, align 4, !dbg !6583
  %call = call i32 @nla_ok(ptr noundef %2, i32 noundef %3) #16, !dbg !6583
  %tobool = icmp ne i32 %call, 0, !dbg !6582
  br i1 %tobool, label %for.body, label %for.end, !dbg !6582

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !6584
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4469, metadata !DIExpression()), !dbg !6585
  %4 = load ptr, ptr %entry1, align 8, !dbg !6586
  %call2 = call i32 @nla_len(ptr noundef %4) #16, !dbg !6588
  %cmp = icmp eq i32 %call2, 0, !dbg !6589
  br i1 %cmp, label %if.then, label %if.end, !dbg !6590

if.then:                                          ; preds = %for.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6591

if.end:                                           ; preds = %for.body
  %5 = load ptr, ptr %entry1, align 8, !dbg !6592
  %call3 = call i32 @nla_len(ptr noundef %5) #16, !dbg !6593
  %cmp4 = icmp slt i32 %call3, 4, !dbg !6594
  br i1 %cmp4, label %if.then5, label %if.end10, !dbg !6595

if.then5:                                         ; preds = %if.end
  br label %do.body, !dbg !6596

do.body:                                          ; preds = %if.then5
  call void @llvm.lifetime.start.p0(i64 8, ptr %__extack) #15, !dbg !6597
  call void @llvm.dbg.declare(metadata ptr %__extack, metadata !4473, metadata !DIExpression()), !dbg !6597
  %6 = load ptr, ptr %extack.addr, align 8, !dbg !6597
  store ptr %6, ptr %__extack, align 8, !dbg !6597
  call void @do_trace_netlink_extack(ptr noundef @nla_validate_array.__msg) #16, !dbg !6597
  %7 = load ptr, ptr %__extack, align 8, !dbg !6598
  %tobool6 = icmp ne ptr %7, null, !dbg !6598
  br i1 %tobool6, label %if.then7, label %if.end9, !dbg !6597

if.then7:                                         ; preds = %do.body
  %8 = load ptr, ptr %__extack, align 8, !dbg !6600
  %_msg = getelementptr inbounds %struct.netlink_ext_ack, ptr %8, i32 0, i32 0, !dbg !6600
  store ptr @nla_validate_array.__msg, ptr %_msg, align 8, !dbg !6600
  %9 = load ptr, ptr %entry1, align 8, !dbg !6600
  %10 = load ptr, ptr %__extack, align 8, !dbg !6600
  %bad_attr = getelementptr inbounds %struct.netlink_ext_ack, ptr %10, i32 0, i32 1, !dbg !6600
  store ptr %9, ptr %bad_attr, align 8, !dbg !6600
  %11 = load ptr, ptr %policy.addr, align 8, !dbg !6600
  %12 = load ptr, ptr %__extack, align 8, !dbg !6600
  %policy8 = getelementptr inbounds %struct.netlink_ext_ack, ptr %12, i32 0, i32 2, !dbg !6600
  store ptr %11, ptr %policy8, align 8, !dbg !6600
  br label %if.end9, !dbg !6600

if.end9:                                          ; preds = %if.then7, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %__extack) #15, !dbg !6596
  br label %do.cond, !dbg !6597

do.cond:                                          ; preds = %if.end9
  br label %do.end, !dbg !6597

do.end:                                           ; preds = %do.cond
  store i32 -34, ptr %retval, align 4, !dbg !6602
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6602

if.end10:                                         ; preds = %if.end
  %13 = load ptr, ptr %entry1, align 8, !dbg !6603
  %call11 = call ptr @nla_data(ptr noundef %13) #16, !dbg !6604
  %14 = load ptr, ptr %entry1, align 8, !dbg !6605
  %call12 = call i32 @nla_len(ptr noundef %14) #16, !dbg !6606
  %15 = load i32, ptr %maxtype.addr, align 4, !dbg !6607
  %16 = load ptr, ptr %policy.addr, align 8, !dbg !6608
  %17 = load i32, ptr %validate.addr, align 4, !dbg !6609
  %18 = load ptr, ptr %extack.addr, align 8, !dbg !6610
  %19 = load i32, ptr %depth.addr, align 4, !dbg !6611
  %add = add i32 %19, 1, !dbg !6612
  %call13 = call i32 @__nla_validate_parse(ptr noundef %call11, i32 noundef %call12, i32 noundef %15, ptr noundef %16, i32 noundef %17, ptr noundef %18, ptr noundef null, i32 noundef %add) #16, !dbg !6613
  store i32 %call13, ptr %ret, align 4, !dbg !6614
  %20 = load i32, ptr %ret, align 4, !dbg !6615
  %cmp14 = icmp slt i32 %20, 0, !dbg !6617
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !6618

if.then15:                                        ; preds = %if.end10
  %21 = load i32, ptr %ret, align 4, !dbg !6619
  store i32 %21, ptr %retval, align 4, !dbg !6620
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6620

if.end16:                                         ; preds = %if.end10
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6621
  br label %cleanup, !dbg !6621

cleanup:                                          ; preds = %if.end16, %if.then15, %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !6621
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup18 [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !6622

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %22 = load ptr, ptr %entry1, align 8, !dbg !6583
  %call17 = call ptr @nla_next(ptr noundef %22, ptr noundef %rem) #16, !dbg !6583
  store ptr %call17, ptr %entry1, align 8, !dbg !6583
  br label %for.cond, !dbg !6583, !llvm.loop !6623

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !6625
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup18, !dbg !6625

cleanup18:                                        ; preds = %for.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %rem) #15, !dbg !6626
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #15, !dbg !6626
  %23 = load i32, ptr %retval, align 4, !dbg !6626
  ret i32 %23, !dbg !6626
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @nla_validate_int_range(ptr noundef %pt, ptr noundef %nla, ptr noundef %extack, i32 noundef %validate) #0 align 16 !dbg !6627 {
entry:
  %retval = alloca i32, align 4
  %pt.addr = alloca ptr, align 8
  %nla.addr = alloca ptr, align 8
  %extack.addr = alloca ptr, align 8
  %validate.addr = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %pt, ptr %pt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pt.addr, metadata !6629, metadata !DIExpression()), !dbg !6639
  store ptr %nla, ptr %nla.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nla.addr, metadata !6630, metadata !DIExpression()), !dbg !6640
  store ptr %extack, ptr %extack.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %extack.addr, metadata !6631, metadata !DIExpression()), !dbg !6641
  store i32 %validate, ptr %validate.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %validate.addr, metadata !6632, metadata !DIExpression()), !dbg !6642
  %0 = load ptr, ptr %pt.addr, align 8, !dbg !6643
  %type = getelementptr inbounds %struct.nla_policy, ptr %0, i32 0, i32 0, !dbg !6644
  %1 = load i8, ptr %type, align 8, !dbg !6644
  %conv = zext i8 %1 to i32, !dbg !6643
  switch i32 %conv, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
    i32 7, label %sw.bb
    i32 11, label %sw.bb
    i32 18, label %sw.bb
    i32 19, label %sw.bb
    i32 12, label %sw.bb1
    i32 13, label %sw.bb1
    i32 14, label %sw.bb1
    i32 15, label %sw.bb1
  ], !dbg !6645

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %2 = load ptr, ptr %pt.addr, align 8, !dbg !6646
  %3 = load ptr, ptr %nla.addr, align 8, !dbg !6647
  %4 = load ptr, ptr %extack.addr, align 8, !dbg !6648
  %5 = load i32, ptr %validate.addr, align 4, !dbg !6649
  %call = call i32 @nla_validate_range_unsigned(ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #16, !dbg !6650
  store i32 %call, ptr %retval, align 4, !dbg !6651
  br label %return, !dbg !6651

sw.bb1:                                           ; preds = %entry, %entry, %entry, %entry
  %6 = load ptr, ptr %pt.addr, align 8, !dbg !6652
  %7 = load ptr, ptr %nla.addr, align 8, !dbg !6653
  %8 = load ptr, ptr %extack.addr, align 8, !dbg !6654
  %call2 = call i32 @nla_validate_int_range_signed(ptr noundef %6, ptr noundef %7, ptr noundef %8) #16, !dbg !6655
  store i32 %call2, ptr %retval, align 4, !dbg !6656
  br label %return, !dbg !6656

sw.default:                                       ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !6657
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6633, metadata !DIExpression()), !dbg !6657
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !6657
  %9 = load i32, ptr %__ret_warn_on, align 4, !dbg !6658
  %tobool = icmp ne i32 %9, 0, !dbg !6658
  %lnot = xor i1 %tobool, true, !dbg !6658
  %lnot3 = xor i1 %lnot, true, !dbg !6658
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !6658
  %conv4 = sext i32 %lnot.ext to i64, !dbg !6658
  %expval = call i64 @llvm.expect.i64(i64 %conv4, i64 0), !dbg !6658
  %tobool5 = icmp ne i64 %expval, 0, !dbg !6658
  br i1 %tobool5, label %if.then, label %if.end, !dbg !6657

if.then:                                          ; preds = %sw.default
  br label %do.body, !dbg !6658

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #15, !dbg !6659
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6636, metadata !DIExpression()), !dbg !6659
  store i32 2305, ptr %__flags, align 4, !dbg !6659
  br label %do.body6, !dbg !6659

do.body6:                                         ; preds = %do.body
  br label %do.cond, !dbg !6660

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !6660

do.end:                                           ; preds = %do.cond
  br label %do.body7, !dbg !6659

do.body7:                                         ; preds = %do.end
  %10 = load i32, ptr %__flags, align 4, !dbg !6662
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 338, i32 %10, i64 12) #15, !dbg !6662, !srcloc !6664
  br label %do.cond8, !dbg !6662

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !6662

do.end9:                                          ; preds = %do.cond8
  br label %do.body10, !dbg !6659

do.body10:                                        ; preds = %do.end9
  br label %do.cond11, !dbg !6665

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !6665

do.end12:                                         ; preds = %do.cond11
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #15, !dbg !6658
  br label %do.cond13, !dbg !6659

do.cond13:                                        ; preds = %do.end12
  br label %do.end14, !dbg !6659

do.end14:                                         ; preds = %do.cond13
  br label %if.end, !dbg !6659

if.end:                                           ; preds = %do.end14, %sw.default
  %11 = load i32, ptr %__ret_warn_on, align 4, !dbg !6657
  %tobool15 = icmp ne i32 %11, 0, !dbg !6657
  %lnot16 = xor i1 %tobool15, true, !dbg !6657
  %lnot18 = xor i1 %lnot16, true, !dbg !6657
  %lnot.ext19 = zext i1 %lnot18 to i32, !dbg !6657
  %conv20 = sext i32 %lnot.ext19 to i64, !dbg !6657
  %expval21 = call i64 @llvm.expect.i64(i64 %conv20, i64 0), !dbg !6657
  store i64 %expval21, ptr %tmp, align 8, !dbg !6658
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !6667
  %12 = load i64, ptr %tmp, align 8, !dbg !6657
  store i32 -22, ptr %retval, align 4, !dbg !6668
  br label %return, !dbg !6668

return:                                           ; preds = %if.end, %sw.bb1, %sw.bb
  %13 = load i32, ptr %retval, align 4, !dbg !6669
  ret i32 %13, !dbg !6669
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @nla_validate_mask(ptr noundef %pt, ptr noundef %nla, ptr noundef %extack) #0 align 16 !dbg !4531 {
entry:
  %retval = alloca i32, align 4
  %pt.addr = alloca ptr, align 8
  %nla.addr = alloca ptr, align 8
  %extack.addr = alloca ptr, align 8
  %value = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__extack = alloca ptr, align 8
  store ptr %pt, ptr %pt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pt.addr, metadata !4533, metadata !DIExpression()), !dbg !6670
  store ptr %nla, ptr %nla.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nla.addr, metadata !4534, metadata !DIExpression()), !dbg !6671
  store ptr %extack, ptr %extack.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %extack.addr, metadata !4535, metadata !DIExpression()), !dbg !6672
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #15, !dbg !6673
  call void @llvm.dbg.declare(metadata ptr %value, metadata !4536, metadata !DIExpression()), !dbg !6674
  %0 = load ptr, ptr %pt.addr, align 8, !dbg !6675
  %type = getelementptr inbounds %struct.nla_policy, ptr %0, i32 0, i32 0, !dbg !6676
  %1 = load i8, ptr %type, align 8, !dbg !6676
  %conv = zext i8 %1 to i32, !dbg !6675
  switch i32 %conv, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
    i32 3, label %sw.bb5
    i32 4, label %sw.bb8
    i32 18, label %sw.bb10
    i32 19, label %sw.bb13
  ], !dbg !6677

sw.bb:                                            ; preds = %entry
  %2 = load ptr, ptr %nla.addr, align 8, !dbg !6678
  %call = call zeroext i8 @nla_get_u8(ptr noundef %2) #16, !dbg !6680
  %conv1 = zext i8 %call to i64, !dbg !6680
  store i64 %conv1, ptr %value, align 8, !dbg !6681
  br label %sw.epilog, !dbg !6682

sw.bb2:                                           ; preds = %entry
  %3 = load ptr, ptr %nla.addr, align 8, !dbg !6683
  %call3 = call zeroext i16 @nla_get_u16(ptr noundef %3) #16, !dbg !6684
  %conv4 = zext i16 %call3 to i64, !dbg !6684
  store i64 %conv4, ptr %value, align 8, !dbg !6685
  br label %sw.epilog, !dbg !6686

sw.bb5:                                           ; preds = %entry
  %4 = load ptr, ptr %nla.addr, align 8, !dbg !6687
  %call6 = call i32 @nla_get_u32(ptr noundef %4) #16, !dbg !6688
  %conv7 = zext i32 %call6 to i64, !dbg !6688
  store i64 %conv7, ptr %value, align 8, !dbg !6689
  br label %sw.epilog, !dbg !6690

sw.bb8:                                           ; preds = %entry
  %5 = load ptr, ptr %nla.addr, align 8, !dbg !6691
  %call9 = call i64 @nla_get_u64(ptr noundef %5) #16, !dbg !6692
  store i64 %call9, ptr %value, align 8, !dbg !6693
  br label %sw.epilog, !dbg !6694

sw.bb10:                                          ; preds = %entry
  %6 = load ptr, ptr %nla.addr, align 8, !dbg !6695
  %call11 = call zeroext i16 @nla_get_be16(ptr noundef %6) #16, !dbg !6695
  %7 = call i16 @llvm.bswap.i16(i16 %call11), !dbg !6695
  %conv12 = zext i16 %7 to i64, !dbg !6695
  store i64 %conv12, ptr %value, align 8, !dbg !6696
  br label %sw.epilog, !dbg !6697

sw.bb13:                                          ; preds = %entry
  %8 = load ptr, ptr %nla.addr, align 8, !dbg !6698
  %call14 = call i32 @nla_get_be32(ptr noundef %8) #16, !dbg !6698
  %9 = call i32 @llvm.bswap.i32(i32 %call14), !dbg !6698
  %conv15 = zext i32 %9 to i64, !dbg !6698
  store i64 %conv15, ptr %value, align 8, !dbg !6699
  br label %sw.epilog, !dbg !6700

sw.default:                                       ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !6701
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6701

sw.epilog:                                        ; preds = %sw.bb13, %sw.bb10, %sw.bb8, %sw.bb5, %sw.bb2, %sw.bb
  %10 = load i64, ptr %value, align 8, !dbg !6702
  %11 = load ptr, ptr %pt.addr, align 8, !dbg !6703
  %12 = getelementptr inbounds %struct.nla_policy, ptr %11, i32 0, i32 3, !dbg !6704
  %13 = load i32, ptr %12, align 8, !dbg !6704
  %conv16 = zext i32 %13 to i64, !dbg !6705
  %not = xor i64 %conv16, -1, !dbg !6706
  %and = and i64 %10, %not, !dbg !6707
  %tobool = icmp ne i64 %and, 0, !dbg !6707
  br i1 %tobool, label %if.then, label %if.end19, !dbg !6708

if.then:                                          ; preds = %sw.epilog
  br label %do.body, !dbg !6709

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %__extack) #15, !dbg !6710
  call void @llvm.dbg.declare(metadata ptr %__extack, metadata !4537, metadata !DIExpression()), !dbg !6710
  %14 = load ptr, ptr %extack.addr, align 8, !dbg !6710
  store ptr %14, ptr %__extack, align 8, !dbg !6710
  call void @do_trace_netlink_extack(ptr noundef @nla_validate_mask.__msg) #16, !dbg !6710
  %15 = load ptr, ptr %__extack, align 8, !dbg !6711
  %tobool17 = icmp ne ptr %15, null, !dbg !6711
  br i1 %tobool17, label %if.then18, label %if.end, !dbg !6710

if.then18:                                        ; preds = %do.body
  %16 = load ptr, ptr %__extack, align 8, !dbg !6713
  %_msg = getelementptr inbounds %struct.netlink_ext_ack, ptr %16, i32 0, i32 0, !dbg !6713
  store ptr @nla_validate_mask.__msg, ptr %_msg, align 8, !dbg !6713
  %17 = load ptr, ptr %nla.addr, align 8, !dbg !6713
  %18 = load ptr, ptr %__extack, align 8, !dbg !6713
  %bad_attr = getelementptr inbounds %struct.netlink_ext_ack, ptr %18, i32 0, i32 1, !dbg !6713
  store ptr %17, ptr %bad_attr, align 8, !dbg !6713
  %19 = load ptr, ptr %__extack, align 8, !dbg !6713
  %policy = getelementptr inbounds %struct.netlink_ext_ack, ptr %19, i32 0, i32 2, !dbg !6713
  store ptr null, ptr %policy, align 8, !dbg !6713
  br label %if.end, !dbg !6713

if.end:                                           ; preds = %if.then18, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %__extack) #15, !dbg !6709
  br label %do.cond, !dbg !6710

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !6710

do.end:                                           ; preds = %do.cond
  store i32 -22, ptr %retval, align 4, !dbg !6715
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6715

if.end19:                                         ; preds = %sw.epilog
  store i32 0, ptr %retval, align 4, !dbg !6716
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6716

cleanup:                                          ; preds = %if.end19, %do.end, %sw.default
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #15, !dbg !6717
  %20 = load i32, ptr %retval, align 4, !dbg !6717
  ret i32 %20, !dbg !6717
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @nla_validate_range_unsigned(ptr noundef %pt, ptr noundef %nla, ptr noundef %extack, i32 noundef %validate) #0 align 16 !dbg !4479 {
entry:
  %retval = alloca i32, align 4
  %pt.addr = alloca ptr, align 8
  %nla.addr = alloca ptr, align 8
  %extack.addr = alloca ptr, align 8
  %validate.addr = alloca i32, align 4
  %range = alloca %struct.netlink_range_validation, align 8
  %value = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__extack = alloca ptr, align 8
  %binary = alloca i8, align 1
  %__extack59 = alloca ptr, align 8
  %__extack69 = alloca ptr, align 8
  store ptr %pt, ptr %pt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pt.addr, metadata !4483, metadata !DIExpression()), !dbg !6718
  store ptr %nla, ptr %nla.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nla.addr, metadata !4484, metadata !DIExpression()), !dbg !6719
  store ptr %extack, ptr %extack.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %extack.addr, metadata !4485, metadata !DIExpression()), !dbg !6720
  store i32 %validate, ptr %validate.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %validate.addr, metadata !4486, metadata !DIExpression()), !dbg !6721
  call void @llvm.lifetime.start.p0(i64 16, ptr %range) #15, !dbg !6722
  call void @llvm.dbg.declare(metadata ptr %range, metadata !4487, metadata !DIExpression()), !dbg !6723
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #15, !dbg !6724
  call void @llvm.dbg.declare(metadata ptr %value, metadata !4488, metadata !DIExpression()), !dbg !6725
  %0 = load ptr, ptr %pt.addr, align 8, !dbg !6726
  %type = getelementptr inbounds %struct.nla_policy, ptr %0, i32 0, i32 0, !dbg !6727
  %1 = load i8, ptr %type, align 8, !dbg !6727
  %conv = zext i8 %1 to i32, !dbg !6726
  switch i32 %conv, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
    i32 3, label %sw.bb5
    i32 4, label %sw.bb8
    i32 7, label %sw.bb10
    i32 11, label %sw.bb12
    i32 18, label %sw.bb15
    i32 19, label %sw.bb18
  ], !dbg !6728

sw.bb:                                            ; preds = %entry
  %2 = load ptr, ptr %nla.addr, align 8, !dbg !6729
  %call = call zeroext i8 @nla_get_u8(ptr noundef %2) #16, !dbg !6731
  %conv1 = zext i8 %call to i64, !dbg !6731
  store i64 %conv1, ptr %value, align 8, !dbg !6732
  br label %sw.epilog, !dbg !6733

sw.bb2:                                           ; preds = %entry
  %3 = load ptr, ptr %nla.addr, align 8, !dbg !6734
  %call3 = call zeroext i16 @nla_get_u16(ptr noundef %3) #16, !dbg !6735
  %conv4 = zext i16 %call3 to i64, !dbg !6735
  store i64 %conv4, ptr %value, align 8, !dbg !6736
  br label %sw.epilog, !dbg !6737

sw.bb5:                                           ; preds = %entry
  %4 = load ptr, ptr %nla.addr, align 8, !dbg !6738
  %call6 = call i32 @nla_get_u32(ptr noundef %4) #16, !dbg !6739
  %conv7 = zext i32 %call6 to i64, !dbg !6739
  store i64 %conv7, ptr %value, align 8, !dbg !6740
  br label %sw.epilog, !dbg !6741

sw.bb8:                                           ; preds = %entry
  %5 = load ptr, ptr %nla.addr, align 8, !dbg !6742
  %call9 = call i64 @nla_get_u64(ptr noundef %5) #16, !dbg !6743
  store i64 %call9, ptr %value, align 8, !dbg !6744
  br label %sw.epilog, !dbg !6745

sw.bb10:                                          ; preds = %entry
  %6 = load ptr, ptr %nla.addr, align 8, !dbg !6746
  %call11 = call i64 @nla_get_u64(ptr noundef %6) #16, !dbg !6747
  store i64 %call11, ptr %value, align 8, !dbg !6748
  br label %sw.epilog, !dbg !6749

sw.bb12:                                          ; preds = %entry
  %7 = load ptr, ptr %nla.addr, align 8, !dbg !6750
  %call13 = call i32 @nla_len(ptr noundef %7) #16, !dbg !6751
  %conv14 = sext i32 %call13 to i64, !dbg !6751
  store i64 %conv14, ptr %value, align 8, !dbg !6752
  br label %sw.epilog, !dbg !6753

sw.bb15:                                          ; preds = %entry
  %8 = load ptr, ptr %nla.addr, align 8, !dbg !6754
  %call16 = call zeroext i16 @nla_get_be16(ptr noundef %8) #16, !dbg !6754
  %9 = call i16 @llvm.bswap.i16(i16 %call16), !dbg !6754
  %conv17 = zext i16 %9 to i64, !dbg !6754
  store i64 %conv17, ptr %value, align 8, !dbg !6755
  br label %sw.epilog, !dbg !6756

sw.bb18:                                          ; preds = %entry
  %10 = load ptr, ptr %nla.addr, align 8, !dbg !6757
  %call19 = call i32 @nla_get_be32(ptr noundef %10) #16, !dbg !6757
  %11 = call i32 @llvm.bswap.i32(i32 %call19), !dbg !6757
  %conv20 = zext i32 %11 to i64, !dbg !6757
  store i64 %conv20, ptr %value, align 8, !dbg !6758
  br label %sw.epilog, !dbg !6759

sw.default:                                       ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !6760
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6760

sw.epilog:                                        ; preds = %sw.bb18, %sw.bb15, %sw.bb12, %sw.bb10, %sw.bb8, %sw.bb5, %sw.bb2, %sw.bb
  %12 = load ptr, ptr %pt.addr, align 8, !dbg !6761
  call void @nla_get_range_unsigned(ptr noundef %12, ptr noundef %range) #16, !dbg !6762
  %13 = load ptr, ptr %pt.addr, align 8, !dbg !6763
  %validation_type = getelementptr inbounds %struct.nla_policy, ptr %13, i32 0, i32 1, !dbg !6764
  %14 = load i8, ptr %validation_type, align 1, !dbg !6764
  %conv21 = zext i8 %14 to i32, !dbg !6763
  %cmp = icmp eq i32 %conv21, 2, !dbg !6765
  br i1 %cmp, label %land.lhs.true, label %if.end45, !dbg !6766

land.lhs.true:                                    ; preds = %sw.epilog
  %15 = load ptr, ptr %pt.addr, align 8, !dbg !6767
  %type23 = getelementptr inbounds %struct.nla_policy, ptr %15, i32 0, i32 0, !dbg !6768
  %16 = load i8, ptr %type23, align 8, !dbg !6768
  %conv24 = zext i8 %16 to i32, !dbg !6767
  %cmp25 = icmp eq i32 %conv24, 11, !dbg !6769
  br i1 %cmp25, label %land.lhs.true27, label %if.end45, !dbg !6770

land.lhs.true27:                                  ; preds = %land.lhs.true
  %17 = load i64, ptr %value, align 8, !dbg !6771
  %max = getelementptr inbounds %struct.netlink_range_validation, ptr %range, i32 0, i32 1, !dbg !6772
  %18 = load i64, ptr %max, align 8, !dbg !6772
  %cmp28 = icmp ugt i64 %17, %18, !dbg !6773
  br i1 %cmp28, label %if.then, label %if.end45, !dbg !6774

if.then:                                          ; preds = %land.lhs.true27
  %call30 = call i32 @___ratelimit(ptr noundef @nla_validate_range_unsigned._rs, ptr noundef @__func__.nla_validate_range_unsigned) #16, !dbg !6775
  %tobool = icmp ne i32 %call30, 0, !dbg !6775
  br i1 %tobool, label %if.then31, label %if.end, !dbg !6778

if.then31:                                        ; preds = %if.then
  br label %do.body, !dbg !6779

do.body:                                          ; preds = %if.then31
  br label %do.cond, !dbg !6781

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6781

do.end:                                           ; preds = %do.cond
  %call32 = call ptr @get_current() #16, !dbg !6779
  %comm = getelementptr inbounds %struct.task_struct, ptr %call32, i32 0, i32 96, !dbg !6779
  %arraydecay = getelementptr inbounds [16 x i8], ptr %comm, i64 0, i64 0, !dbg !6779
  %19 = load ptr, ptr %pt.addr, align 8, !dbg !6779
  %type33 = getelementptr inbounds %struct.nla_policy, ptr %19, i32 0, i32 0, !dbg !6779
  %20 = load i8, ptr %type33, align 8, !dbg !6779
  %conv34 = zext i8 %20 to i32, !dbg !6779
  %call35 = call i32 (ptr, ...) @_printk(ptr noundef @.str.4, ptr noundef %arraydecay, i32 noundef %conv34) #17, !dbg !6779
  store i32 %call35, ptr %tmp, align 4, !dbg !6781
  %21 = load i32, ptr %tmp, align 4, !dbg !6779
  br label %if.end, !dbg !6775

if.end:                                           ; preds = %do.end, %if.then
  %22 = load i32, ptr %validate.addr, align 4, !dbg !6783
  %and = and i32 %22, 8, !dbg !6784
  %tobool36 = icmp ne i32 %and, 0, !dbg !6784
  br i1 %tobool36, label %if.then37, label %if.end44, !dbg !6785

if.then37:                                        ; preds = %if.end
  br label %do.body38, !dbg !6786

do.body38:                                        ; preds = %if.then37
  call void @llvm.lifetime.start.p0(i64 8, ptr %__extack) #15, !dbg !6787
  call void @llvm.dbg.declare(metadata ptr %__extack, metadata !4489, metadata !DIExpression()), !dbg !6787
  %23 = load ptr, ptr %extack.addr, align 8, !dbg !6787
  store ptr %23, ptr %__extack, align 8, !dbg !6787
  call void @do_trace_netlink_extack(ptr noundef @nla_validate_range_unsigned.__msg) #16, !dbg !6787
  %24 = load ptr, ptr %__extack, align 8, !dbg !6788
  %tobool39 = icmp ne ptr %24, null, !dbg !6788
  br i1 %tobool39, label %if.then40, label %if.end41, !dbg !6787

if.then40:                                        ; preds = %do.body38
  %25 = load ptr, ptr %__extack, align 8, !dbg !6790
  %_msg = getelementptr inbounds %struct.netlink_ext_ack, ptr %25, i32 0, i32 0, !dbg !6790
  store ptr @nla_validate_range_unsigned.__msg, ptr %_msg, align 8, !dbg !6790
  %26 = load ptr, ptr %nla.addr, align 8, !dbg !6790
  %27 = load ptr, ptr %__extack, align 8, !dbg !6790
  %bad_attr = getelementptr inbounds %struct.netlink_ext_ack, ptr %27, i32 0, i32 1, !dbg !6790
  store ptr %26, ptr %bad_attr, align 8, !dbg !6790
  %28 = load ptr, ptr %pt.addr, align 8, !dbg !6790
  %29 = load ptr, ptr %__extack, align 8, !dbg !6790
  %policy = getelementptr inbounds %struct.netlink_ext_ack, ptr %29, i32 0, i32 2, !dbg !6790
  store ptr %28, ptr %policy, align 8, !dbg !6790
  br label %if.end41, !dbg !6790

if.end41:                                         ; preds = %if.then40, %do.body38
  call void @llvm.lifetime.end.p0(i64 8, ptr %__extack) #15, !dbg !6786
  br label %do.cond42, !dbg !6787

do.cond42:                                        ; preds = %if.end41
  br label %do.end43, !dbg !6787

do.end43:                                         ; preds = %do.cond42
  store i32 -22, ptr %retval, align 4, !dbg !6792
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6792

if.end44:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !6793
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6793

if.end45:                                         ; preds = %land.lhs.true27, %land.lhs.true, %sw.epilog
  %30 = load i64, ptr %value, align 8, !dbg !6794
  %min = getelementptr inbounds %struct.netlink_range_validation, ptr %range, i32 0, i32 0, !dbg !6795
  %31 = load i64, ptr %min, align 8, !dbg !6795
  %cmp46 = icmp ult i64 %30, %31, !dbg !6796
  br i1 %cmp46, label %if.then51, label %lor.lhs.false, !dbg !6797

lor.lhs.false:                                    ; preds = %if.end45
  %32 = load i64, ptr %value, align 8, !dbg !6798
  %max48 = getelementptr inbounds %struct.netlink_range_validation, ptr %range, i32 0, i32 1, !dbg !6799
  %33 = load i64, ptr %max48, align 8, !dbg !6799
  %cmp49 = icmp ugt i64 %32, %33, !dbg !6800
  br i1 %cmp49, label %if.then51, label %if.end79, !dbg !6801

if.then51:                                        ; preds = %lor.lhs.false, %if.end45
  call void @llvm.lifetime.start.p0(i64 1, ptr %binary) #15, !dbg !6802
  call void @llvm.dbg.declare(metadata ptr %binary, metadata !4495, metadata !DIExpression()), !dbg !6803
  %34 = load ptr, ptr %pt.addr, align 8, !dbg !6804
  %type52 = getelementptr inbounds %struct.nla_policy, ptr %34, i32 0, i32 0, !dbg !6805
  %35 = load i8, ptr %type52, align 8, !dbg !6805
  %conv53 = zext i8 %35 to i32, !dbg !6804
  %cmp54 = icmp eq i32 %conv53, 11, !dbg !6806
  %frombool = zext i1 %cmp54 to i8, !dbg !6803
  store i8 %frombool, ptr %binary, align 1, !dbg !6803
  %36 = load i8, ptr %binary, align 1, !dbg !6807, !range !6808, !noundef !570
  %tobool56 = trunc i8 %36 to i1, !dbg !6807
  br i1 %tobool56, label %if.then57, label %if.else, !dbg !6809

if.then57:                                        ; preds = %if.then51
  br label %do.body58, !dbg !6810

do.body58:                                        ; preds = %if.then57
  call void @llvm.lifetime.start.p0(i64 8, ptr %__extack59) #15, !dbg !6811
  call void @llvm.dbg.declare(metadata ptr %__extack59, metadata !4498, metadata !DIExpression()), !dbg !6811
  %37 = load ptr, ptr %extack.addr, align 8, !dbg !6811
  store ptr %37, ptr %__extack59, align 8, !dbg !6811
  call void @do_trace_netlink_extack(ptr noundef @nla_validate_range_unsigned.__msg.9) #16, !dbg !6811
  %38 = load ptr, ptr %__extack59, align 8, !dbg !6812
  %tobool60 = icmp ne ptr %38, null, !dbg !6812
  br i1 %tobool60, label %if.then61, label %if.end65, !dbg !6811

if.then61:                                        ; preds = %do.body58
  %39 = load ptr, ptr %__extack59, align 8, !dbg !6814
  %_msg62 = getelementptr inbounds %struct.netlink_ext_ack, ptr %39, i32 0, i32 0, !dbg !6814
  store ptr @nla_validate_range_unsigned.__msg.9, ptr %_msg62, align 8, !dbg !6814
  %40 = load ptr, ptr %nla.addr, align 8, !dbg !6814
  %41 = load ptr, ptr %__extack59, align 8, !dbg !6814
  %bad_attr63 = getelementptr inbounds %struct.netlink_ext_ack, ptr %41, i32 0, i32 1, !dbg !6814
  store ptr %40, ptr %bad_attr63, align 8, !dbg !6814
  %42 = load ptr, ptr %pt.addr, align 8, !dbg !6814
  %43 = load ptr, ptr %__extack59, align 8, !dbg !6814
  %policy64 = getelementptr inbounds %struct.netlink_ext_ack, ptr %43, i32 0, i32 2, !dbg !6814
  store ptr %42, ptr %policy64, align 8, !dbg !6814
  br label %if.end65, !dbg !6814

if.end65:                                         ; preds = %if.then61, %do.body58
  call void @llvm.lifetime.end.p0(i64 8, ptr %__extack59) #15, !dbg !6810
  br label %do.cond66, !dbg !6811

do.cond66:                                        ; preds = %if.end65
  br label %do.end67, !dbg !6811

do.end67:                                         ; preds = %do.cond66
  br label %if.end78, !dbg !6811

if.else:                                          ; preds = %if.then51
  br label %do.body68, !dbg !6816

do.body68:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 8, ptr %__extack69) #15, !dbg !6817
  call void @llvm.dbg.declare(metadata ptr %__extack69, metadata !4501, metadata !DIExpression()), !dbg !6817
  %44 = load ptr, ptr %extack.addr, align 8, !dbg !6817
  store ptr %44, ptr %__extack69, align 8, !dbg !6817
  call void @do_trace_netlink_extack(ptr noundef @nla_validate_range_unsigned.__msg.10) #16, !dbg !6817
  %45 = load ptr, ptr %__extack69, align 8, !dbg !6818
  %tobool70 = icmp ne ptr %45, null, !dbg !6818
  br i1 %tobool70, label %if.then71, label %if.end75, !dbg !6817

if.then71:                                        ; preds = %do.body68
  %46 = load ptr, ptr %__extack69, align 8, !dbg !6820
  %_msg72 = getelementptr inbounds %struct.netlink_ext_ack, ptr %46, i32 0, i32 0, !dbg !6820
  store ptr @nla_validate_range_unsigned.__msg.10, ptr %_msg72, align 8, !dbg !6820
  %47 = load ptr, ptr %nla.addr, align 8, !dbg !6820
  %48 = load ptr, ptr %__extack69, align 8, !dbg !6820
  %bad_attr73 = getelementptr inbounds %struct.netlink_ext_ack, ptr %48, i32 0, i32 1, !dbg !6820
  store ptr %47, ptr %bad_attr73, align 8, !dbg !6820
  %49 = load ptr, ptr %pt.addr, align 8, !dbg !6820
  %50 = load ptr, ptr %__extack69, align 8, !dbg !6820
  %policy74 = getelementptr inbounds %struct.netlink_ext_ack, ptr %50, i32 0, i32 2, !dbg !6820
  store ptr %49, ptr %policy74, align 8, !dbg !6820
  br label %if.end75, !dbg !6820

if.end75:                                         ; preds = %if.then71, %do.body68
  call void @llvm.lifetime.end.p0(i64 8, ptr %__extack69) #15, !dbg !6816
  br label %do.cond76, !dbg !6817

do.cond76:                                        ; preds = %if.end75
  br label %do.end77, !dbg !6817

do.end77:                                         ; preds = %do.cond76
  br label %if.end78

if.end78:                                         ; preds = %do.end77, %do.end67
  store i32 -34, ptr %retval, align 4, !dbg !6822
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr %binary) #15, !dbg !6823
  br label %cleanup

if.end79:                                         ; preds = %lor.lhs.false
  store i32 0, ptr %retval, align 4, !dbg !6824
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6824

cleanup:                                          ; preds = %if.end79, %if.end78, %if.end44, %do.end43, %sw.default
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #15, !dbg !6825
  call void @llvm.lifetime.end.p0(i64 16, ptr %range) #15, !dbg !6825
  %51 = load i32, ptr %retval, align 4, !dbg !6825
  ret i32 %51, !dbg !6825
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @nla_validate_int_range_signed(ptr noundef %pt, ptr noundef %nla, ptr noundef %extack) #0 align 16 !dbg !4516 {
entry:
  %retval = alloca i32, align 4
  %pt.addr = alloca ptr, align 8
  %nla.addr = alloca ptr, align 8
  %extack.addr = alloca ptr, align 8
  %range = alloca %struct.netlink_range_validation_signed, align 8
  %value = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__extack = alloca ptr, align 8
  store ptr %pt, ptr %pt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pt.addr, metadata !4520, metadata !DIExpression()), !dbg !6826
  store ptr %nla, ptr %nla.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nla.addr, metadata !4521, metadata !DIExpression()), !dbg !6827
  store ptr %extack, ptr %extack.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %extack.addr, metadata !4522, metadata !DIExpression()), !dbg !6828
  call void @llvm.lifetime.start.p0(i64 16, ptr %range) #15, !dbg !6829
  call void @llvm.dbg.declare(metadata ptr %range, metadata !4523, metadata !DIExpression()), !dbg !6830
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #15, !dbg !6831
  call void @llvm.dbg.declare(metadata ptr %value, metadata !4524, metadata !DIExpression()), !dbg !6832
  %0 = load ptr, ptr %pt.addr, align 8, !dbg !6833
  %type = getelementptr inbounds %struct.nla_policy, ptr %0, i32 0, i32 0, !dbg !6834
  %1 = load i8, ptr %type, align 8, !dbg !6834
  %conv = zext i8 %1 to i32, !dbg !6833
  switch i32 %conv, label %sw.default [
    i32 12, label %sw.bb
    i32 13, label %sw.bb2
    i32 14, label %sw.bb5
    i32 15, label %sw.bb8
  ], !dbg !6835

sw.bb:                                            ; preds = %entry
  %2 = load ptr, ptr %nla.addr, align 8, !dbg !6836
  %call = call signext i8 @nla_get_s8(ptr noundef %2) #16, !dbg !6838
  %conv1 = sext i8 %call to i64, !dbg !6838
  store i64 %conv1, ptr %value, align 8, !dbg !6839
  br label %sw.epilog, !dbg !6840

sw.bb2:                                           ; preds = %entry
  %3 = load ptr, ptr %nla.addr, align 8, !dbg !6841
  %call3 = call signext i16 @nla_get_s16(ptr noundef %3) #16, !dbg !6842
  %conv4 = sext i16 %call3 to i64, !dbg !6842
  store i64 %conv4, ptr %value, align 8, !dbg !6843
  br label %sw.epilog, !dbg !6844

sw.bb5:                                           ; preds = %entry
  %4 = load ptr, ptr %nla.addr, align 8, !dbg !6845
  %call6 = call i32 @nla_get_s32(ptr noundef %4) #16, !dbg !6846
  %conv7 = sext i32 %call6 to i64, !dbg !6846
  store i64 %conv7, ptr %value, align 8, !dbg !6847
  br label %sw.epilog, !dbg !6848

sw.bb8:                                           ; preds = %entry
  %5 = load ptr, ptr %nla.addr, align 8, !dbg !6849
  %call9 = call i64 @nla_get_s64(ptr noundef %5) #16, !dbg !6850
  store i64 %call9, ptr %value, align 8, !dbg !6851
  br label %sw.epilog, !dbg !6852

sw.default:                                       ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !6853
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6853

sw.epilog:                                        ; preds = %sw.bb8, %sw.bb5, %sw.bb2, %sw.bb
  %6 = load ptr, ptr %pt.addr, align 8, !dbg !6854
  call void @nla_get_range_signed(ptr noundef %6, ptr noundef %range) #16, !dbg !6855
  %7 = load i64, ptr %value, align 8, !dbg !6856
  %min = getelementptr inbounds %struct.netlink_range_validation_signed, ptr %range, i32 0, i32 0, !dbg !6857
  %8 = load i64, ptr %min, align 8, !dbg !6857
  %cmp = icmp slt i64 %7, %8, !dbg !6858
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !6859

lor.lhs.false:                                    ; preds = %sw.epilog
  %9 = load i64, ptr %value, align 8, !dbg !6860
  %max = getelementptr inbounds %struct.netlink_range_validation_signed, ptr %range, i32 0, i32 1, !dbg !6861
  %10 = load i64, ptr %max, align 8, !dbg !6861
  %cmp11 = icmp sgt i64 %9, %10, !dbg !6862
  br i1 %cmp11, label %if.then, label %if.end14, !dbg !6863

if.then:                                          ; preds = %lor.lhs.false, %sw.epilog
  br label %do.body, !dbg !6864

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %__extack) #15, !dbg !6865
  call void @llvm.dbg.declare(metadata ptr %__extack, metadata !4525, metadata !DIExpression()), !dbg !6865
  %11 = load ptr, ptr %extack.addr, align 8, !dbg !6865
  store ptr %11, ptr %__extack, align 8, !dbg !6865
  call void @do_trace_netlink_extack(ptr noundef @nla_validate_int_range_signed.__msg) #16, !dbg !6865
  %12 = load ptr, ptr %__extack, align 8, !dbg !6866
  %tobool = icmp ne ptr %12, null, !dbg !6866
  br i1 %tobool, label %if.then13, label %if.end, !dbg !6865

if.then13:                                        ; preds = %do.body
  %13 = load ptr, ptr %__extack, align 8, !dbg !6868
  %_msg = getelementptr inbounds %struct.netlink_ext_ack, ptr %13, i32 0, i32 0, !dbg !6868
  store ptr @nla_validate_int_range_signed.__msg, ptr %_msg, align 8, !dbg !6868
  %14 = load ptr, ptr %nla.addr, align 8, !dbg !6868
  %15 = load ptr, ptr %__extack, align 8, !dbg !6868
  %bad_attr = getelementptr inbounds %struct.netlink_ext_ack, ptr %15, i32 0, i32 1, !dbg !6868
  store ptr %14, ptr %bad_attr, align 8, !dbg !6868
  %16 = load ptr, ptr %pt.addr, align 8, !dbg !6868
  %17 = load ptr, ptr %__extack, align 8, !dbg !6868
  %policy = getelementptr inbounds %struct.netlink_ext_ack, ptr %17, i32 0, i32 2, !dbg !6868
  store ptr %16, ptr %policy, align 8, !dbg !6868
  br label %if.end, !dbg !6868

if.end:                                           ; preds = %if.then13, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %__extack) #15, !dbg !6864
  br label %do.cond, !dbg !6865

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !6865

do.end:                                           ; preds = %do.cond
  store i32 -34, ptr %retval, align 4, !dbg !6870
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6870

if.end14:                                         ; preds = %lor.lhs.false
  store i32 0, ptr %retval, align 4, !dbg !6871
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6871

cleanup:                                          ; preds = %if.end14, %do.end, %sw.default
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #15, !dbg !6872
  call void @llvm.lifetime.end.p0(i64 16, ptr %range) #15, !dbg !6872
  %18 = load i32, ptr %retval, align 4, !dbg !6872
  ret i32 %18, !dbg !6872
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i8 @nla_get_u8(ptr noundef %nla) #5 align 16 !dbg !6873 {
entry:
  %nla.addr = alloca ptr, align 8
  store ptr %nla, ptr %nla.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nla.addr, metadata !6877, metadata !DIExpression()), !dbg !6878
  %0 = load ptr, ptr %nla.addr, align 8, !dbg !6879
  %call = call ptr @nla_data(ptr noundef %0) #16, !dbg !6880
  %1 = load i8, ptr %call, align 1, !dbg !6881
  ret i8 %1, !dbg !6882
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i16 @nla_get_u16(ptr noundef %nla) #5 align 16 !dbg !6883 {
entry:
  %nla.addr = alloca ptr, align 8
  store ptr %nla, ptr %nla.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nla.addr, metadata !6887, metadata !DIExpression()), !dbg !6888
  %0 = load ptr, ptr %nla.addr, align 8, !dbg !6889
  %call = call ptr @nla_data(ptr noundef %0) #16, !dbg !6890
  %1 = load i16, ptr %call, align 2, !dbg !6891
  ret i16 %1, !dbg !6892
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @nla_get_u32(ptr noundef %nla) #5 align 16 !dbg !6893 {
entry:
  %nla.addr = alloca ptr, align 8
  store ptr %nla, ptr %nla.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nla.addr, metadata !6897, metadata !DIExpression()), !dbg !6898
  %0 = load ptr, ptr %nla.addr, align 8, !dbg !6899
  %call = call ptr @nla_data(ptr noundef %0) #16, !dbg !6900
  %1 = load i32, ptr %call, align 4, !dbg !6901
  ret i32 %1, !dbg !6902
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @nla_get_u64(ptr noundef %nla) #5 align 16 !dbg !6903 {
entry:
  %nla.addr = alloca ptr, align 8
  %tmp = alloca i64, align 8
  store ptr %nla, ptr %nla.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nla.addr, metadata !6907, metadata !DIExpression()), !dbg !6909
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #15, !dbg !6910
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !6908, metadata !DIExpression()), !dbg !6911
  %0 = load ptr, ptr %nla.addr, align 8, !dbg !6912
  %call = call i32 @nla_memcpy(ptr noundef %tmp, ptr noundef %0, i32 noundef 8) #16, !dbg !6913
  %1 = load i64, ptr %tmp, align 8, !dbg !6914
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #15, !dbg !6915
  ret i64 %1, !dbg !6916
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i16 @nla_get_be16(ptr noundef %nla) #5 align 16 !dbg !6917 {
entry:
  %nla.addr = alloca ptr, align 8
  store ptr %nla, ptr %nla.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nla.addr, metadata !6921, metadata !DIExpression()), !dbg !6922
  %0 = load ptr, ptr %nla.addr, align 8, !dbg !6923
  %call = call ptr @nla_data(ptr noundef %0) #16, !dbg !6924
  %1 = load i16, ptr %call, align 2, !dbg !6925
  ret i16 %1, !dbg !6926
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @nla_get_be32(ptr noundef %nla) #5 align 16 !dbg !6927 {
entry:
  %nla.addr = alloca ptr, align 8
  store ptr %nla, ptr %nla.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nla.addr, metadata !6931, metadata !DIExpression()), !dbg !6932
  %0 = load ptr, ptr %nla.addr, align 8, !dbg !6933
  %call = call ptr @nla_data(ptr noundef %0) #16, !dbg !6934
  %1 = load i32, ptr %call, align 4, !dbg !6935
  ret i32 %1, !dbg !6936
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal signext i8 @nla_get_s8(ptr noundef %nla) #5 align 16 !dbg !6937 {
entry:
  %nla.addr = alloca ptr, align 8
  store ptr %nla, ptr %nla.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nla.addr, metadata !6941, metadata !DIExpression()), !dbg !6942
  %0 = load ptr, ptr %nla.addr, align 8, !dbg !6943
  %call = call ptr @nla_data(ptr noundef %0) #16, !dbg !6944
  %1 = load i8, ptr %call, align 1, !dbg !6945
  ret i8 %1, !dbg !6946
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal signext i16 @nla_get_s16(ptr noundef %nla) #5 align 16 !dbg !6947 {
entry:
  %nla.addr = alloca ptr, align 8
  store ptr %nla, ptr %nla.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nla.addr, metadata !6951, metadata !DIExpression()), !dbg !6952
  %0 = load ptr, ptr %nla.addr, align 8, !dbg !6953
  %call = call ptr @nla_data(ptr noundef %0) #16, !dbg !6954
  %1 = load i16, ptr %call, align 2, !dbg !6955
  ret i16 %1, !dbg !6956
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @nla_get_s32(ptr noundef %nla) #5 align 16 !dbg !6957 {
entry:
  %nla.addr = alloca ptr, align 8
  store ptr %nla, ptr %nla.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nla.addr, metadata !6961, metadata !DIExpression()), !dbg !6962
  %0 = load ptr, ptr %nla.addr, align 8, !dbg !6963
  %call = call ptr @nla_data(ptr noundef %0) #16, !dbg !6964
  %1 = load i32, ptr %call, align 4, !dbg !6965
  ret i32 %1, !dbg !6966
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @nla_get_s64(ptr noundef %nla) #5 align 16 !dbg !6967 {
entry:
  %nla.addr = alloca ptr, align 8
  %tmp = alloca i64, align 8
  store ptr %nla, ptr %nla.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nla.addr, metadata !6971, metadata !DIExpression()), !dbg !6973
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #15, !dbg !6974
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !6972, metadata !DIExpression()), !dbg !6975
  %0 = load ptr, ptr %nla.addr, align 8, !dbg !6976
  %call = call i32 @nla_memcpy(ptr noundef %tmp, ptr noundef %0, i32 noundef 8) #16, !dbg !6977
  %1 = load i64, ptr %tmp, align 8, !dbg !6978
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #15, !dbg !6979
  ret i64 %1, !dbg !6980
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #11

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6981 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #10 align 16 !dbg !6982 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6986, metadata !DIExpression()), !dbg !6988
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !6987, metadata !DIExpression()), !dbg !6989
  %0 = load i64, ptr %size.addr, align 8, !dbg !6990
  %tobool = icmp ne i64 %0, 0, !dbg !6990
  br i1 %tobool, label %if.end, label %if.then, !dbg !6992

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6993
  br label %return, !dbg !6993

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !6994
  %cmp = icmp ule i64 %1, 8, !dbg !6996
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6997

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !6998
  br label %return, !dbg !6998

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !6999
  %cmp3 = icmp ugt i64 %2, 64, !dbg !7001
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !7002

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !7003
  %cmp4 = icmp ule i64 %3, 96, !dbg !7004
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !7005

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !7006
  br label %return, !dbg !7006

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !7007
  %cmp7 = icmp ugt i64 %4, 128, !dbg !7009
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !7010

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !7011
  %cmp9 = icmp ule i64 %5, 192, !dbg !7012
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !7013

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !7014
  br label %return, !dbg !7014

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !7015
  %cmp12 = icmp ule i64 %6, 8, !dbg !7017
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !7018

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !7019
  br label %return, !dbg !7019

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !7020
  %cmp15 = icmp ule i64 %7, 16, !dbg !7022
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !7023

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !7024
  br label %return, !dbg !7024

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !7025
  %cmp18 = icmp ule i64 %8, 32, !dbg !7027
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !7028

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !7029
  br label %return, !dbg !7029

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !7030
  %cmp21 = icmp ule i64 %9, 64, !dbg !7032
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !7033

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !7034
  br label %return, !dbg !7034

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !7035
  %cmp24 = icmp ule i64 %10, 128, !dbg !7037
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !7038

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !7039
  br label %return, !dbg !7039

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !7040
  %cmp27 = icmp ule i64 %11, 256, !dbg !7042
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !7043

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !7044
  br label %return, !dbg !7044

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !7045
  %cmp30 = icmp ule i64 %12, 512, !dbg !7047
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !7048

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !7049
  br label %return, !dbg !7049

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !7050
  %cmp33 = icmp ule i64 %13, 1024, !dbg !7052
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !7053

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !7054
  br label %return, !dbg !7054

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !7055
  %cmp36 = icmp ule i64 %14, 2048, !dbg !7057
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !7058

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !7059
  br label %return, !dbg !7059

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !7060
  %cmp39 = icmp ule i64 %15, 4096, !dbg !7062
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !7063

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !7064
  br label %return, !dbg !7064

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !7065
  %cmp42 = icmp ule i64 %16, 8192, !dbg !7067
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !7068

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !7069
  br label %return, !dbg !7069

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !7070
  %cmp45 = icmp ule i64 %17, 16384, !dbg !7072
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !7073

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !7074
  br label %return, !dbg !7074

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !7075
  %cmp48 = icmp ule i64 %18, 32768, !dbg !7077
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !7078

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !7079
  br label %return, !dbg !7079

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !7080
  %cmp51 = icmp ule i64 %19, 65536, !dbg !7082
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !7083

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !7084
  br label %return, !dbg !7084

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !7085
  %cmp54 = icmp ule i64 %20, 131072, !dbg !7087
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !7088

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !7089
  br label %return, !dbg !7089

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !7090
  %cmp57 = icmp ule i64 %21, 262144, !dbg !7092
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !7093

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !7094
  br label %return, !dbg !7094

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !7095
  %cmp60 = icmp ule i64 %22, 524288, !dbg !7097
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !7098

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !7099
  br label %return, !dbg !7099

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !7100
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !7102
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !7103

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !7104
  br label %return, !dbg !7104

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !7105
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !7107
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !7108

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !7109
  br label %return, !dbg !7109

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !7110, !range !6808, !noundef !570
  %tobool69 = trunc i8 %25 to i1, !dbg !7110
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !7112

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !7113

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_245() #21, !dbg !7114, !srcloc !7117
  unreachable, !dbg !7114

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !7118

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !7119

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !7120

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !7122

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !7120

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.11, i32 480, i32 0, i64 12) #15, !dbg !7124, !srcloc !7126
  br label %do.end75, !dbg !7124

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !7120

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !7127
  br label %return, !dbg !7127

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !7128
  ret i32 %26, !dbg !7128
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !7129 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #10 align 16 !dbg !7135 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7139, metadata !DIExpression()), !dbg !7141
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !7140, metadata !DIExpression()), !dbg !7142
  %0 = load i32, ptr %flags.addr, align 4, !dbg !7143
  %and = and i32 %0, 17, !dbg !7143
  %cmp = icmp eq i32 %and, 0, !dbg !7143
  %lnot = xor i1 %cmp, true, !dbg !7143
  %lnot1 = xor i1 %lnot, true, !dbg !7143
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !7143
  %conv = sext i32 %lnot.ext to i64, !dbg !7143
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !7143
  %tobool = icmp ne i64 %expval, 0, !dbg !7143
  br i1 %tobool, label %if.then, label %if.end, !dbg !7145

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !7146
  br label %return, !dbg !7146

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !7147
  %and2 = and i32 %1, 1, !dbg !7149
  %tobool3 = icmp ne i32 %and2, 0, !dbg !7149
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !7150

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !7151
  br label %return, !dbg !7151

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !7152
  br label %return, !dbg !7152

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !7154
  ret i32 %2, !dbg !7154
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #3

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !7155 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #12

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !7156 dso_local void @__compiletime_assert_245() #14

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @skb_is_nonlinear(ptr noundef %skb) #5 align 16 !dbg !7157 {
entry:
  %skb.addr = alloca ptr, align 8
  store ptr %skb, ptr %skb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %skb.addr, metadata !7161, metadata !DIExpression()), !dbg !7162
  %0 = load ptr, ptr %skb.addr, align 8, !dbg !7163
  %data_len = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 7, !dbg !7164
  %1 = load i32, ptr %data_len, align 4, !dbg !7164
  %tobool = icmp ne i32 %1, 0, !dbg !7163
  ret i1 %tobool, !dbg !7165
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { nounwind }
attributes #16 = { noredzone }
attributes #17 = { cold noredzone }
attributes #18 = { noredzone allocsize(0) }
attributes #19 = { noredzone allocsize(2) }
attributes #20 = { nounwind memory(none) }
attributes #21 = { noredzone noreturn }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!4553, !4554, !4555, !4556, !4557, !4558, !4559, !4560}
!llvm.ident = !{!4561}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 122, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "lib/nlattr.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "07e736c647ba898fbc4e594d8d4c1c8d")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 13)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___nla_validate344", scope: !9, file: !2, line: 658, type: !176, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/.nlattr.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/nlattr\22 -D KBUILD_BASENAME=\22nlattr\22 -D KBUILD_MODNAME=\22nlattr\22 -D __KBUILD_MODNAME=kmod_nlattr -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/nlattr.ll lib/nlattr.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !10, retainedTypes: !150, globals: !4203, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11, !23, !46, !54, !59, !67, !74, !82, !98, !105, !111, !116, !122, !128, !135, !140}
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "nla_policy_validation", file: !12, line: 199, baseType: !13, size: 32, elements: !14)
!12 = !DIFile(filename: "./include/net/netlink.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75ea2e9501d91e2f676980361db2fc9a")
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !{!15, !16, !17, !18, !19, !20, !21, !22}
!15 = !DIEnumerator(name: "NLA_VALIDATE_NONE", value: 0)
!16 = !DIEnumerator(name: "NLA_VALIDATE_RANGE", value: 1)
!17 = !DIEnumerator(name: "NLA_VALIDATE_RANGE_WARN_TOO_LONG", value: 2)
!18 = !DIEnumerator(name: "NLA_VALIDATE_MIN", value: 3)
!19 = !DIEnumerator(name: "NLA_VALIDATE_MAX", value: 4)
!20 = !DIEnumerator(name: "NLA_VALIDATE_MASK", value: 5)
!21 = !DIEnumerator(name: "NLA_VALIDATE_RANGE_PTR", value: 6)
!22 = !DIEnumerator(name: "NLA_VALIDATE_FUNCTION", value: 7)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !12, line: 165, baseType: !13, size: 32, elements: !24)
!24 = !{!25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45}
!25 = !DIEnumerator(name: "NLA_UNSPEC", value: 0)
!26 = !DIEnumerator(name: "NLA_U8", value: 1)
!27 = !DIEnumerator(name: "NLA_U16", value: 2)
!28 = !DIEnumerator(name: "NLA_U32", value: 3)
!29 = !DIEnumerator(name: "NLA_U64", value: 4)
!30 = !DIEnumerator(name: "NLA_STRING", value: 5)
!31 = !DIEnumerator(name: "NLA_FLAG", value: 6)
!32 = !DIEnumerator(name: "NLA_MSECS", value: 7)
!33 = !DIEnumerator(name: "NLA_NESTED", value: 8)
!34 = !DIEnumerator(name: "NLA_NESTED_ARRAY", value: 9)
!35 = !DIEnumerator(name: "NLA_NUL_STRING", value: 10)
!36 = !DIEnumerator(name: "NLA_BINARY", value: 11)
!37 = !DIEnumerator(name: "NLA_S8", value: 12)
!38 = !DIEnumerator(name: "NLA_S16", value: 13)
!39 = !DIEnumerator(name: "NLA_S32", value: 14)
!40 = !DIEnumerator(name: "NLA_S64", value: 15)
!41 = !DIEnumerator(name: "NLA_BITFIELD32", value: 16)
!42 = !DIEnumerator(name: "NLA_REJECT", value: 17)
!43 = !DIEnumerator(name: "NLA_BE16", value: 18)
!44 = !DIEnumerator(name: "NLA_BE32", value: 19)
!45 = !DIEnumerator(name: "__NLA_TYPE_MAX", value: 20)
!46 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "netlink_validation", file: !12, line: 490, baseType: !13, size: 32, elements: !47)
!47 = !{!48, !49, !50, !51, !52, !53}
!48 = !DIEnumerator(name: "NL_VALIDATE_LIBERAL", value: 0)
!49 = !DIEnumerator(name: "NL_VALIDATE_TRAILING", value: 1)
!50 = !DIEnumerator(name: "NL_VALIDATE_MAXTYPE", value: 2)
!51 = !DIEnumerator(name: "NL_VALIDATE_UNSPEC", value: 4)
!52 = !DIEnumerator(name: "NL_VALIDATE_STRICT_ATTRS", value: 8)
!53 = !DIEnumerator(name: "NL_VALIDATE_NESTED", value: 16)
!54 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !55, line: 65, baseType: !13, size: 32, elements: !56)
!55 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!56 = !{!57, !58}
!57 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!58 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !60, line: 9, baseType: !13, size: 32, elements: !61)
!60 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!61 = !{!62, !63, !64, !65, !66}
!62 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!63 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!64 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!65 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!66 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !68, line: 312, baseType: !13, size: 32, elements: !69)
!68 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!69 = !{!70, !71, !72, !73}
!70 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!71 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!72 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!73 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !75, line: 68, baseType: !13, size: 32, elements: !76)
!75 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!76 = !{!77, !78, !79, !80, !81}
!77 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!78 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!79 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!80 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!81 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!82 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !83, line: 1325, baseType: !13, size: 32, elements: !84)
!83 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!84 = !{!85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97}
!85 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!86 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!87 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!88 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!89 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!90 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!91 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!92 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!93 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!94 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!95 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!96 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!97 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!98 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !99, line: 15, baseType: !13, size: 32, elements: !100)
!99 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!100 = !{!101, !102, !103, !104}
!101 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!102 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!103 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!104 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!105 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !106, line: 26, baseType: !13, size: 32, elements: !107)
!106 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!107 = !{!108, !109, !110}
!108 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!109 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!110 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!111 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !112, line: 2052, baseType: !13, size: 32, elements: !113)
!112 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!113 = !{!114, !115}
!114 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!115 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!116 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !117, line: 54, baseType: !13, size: 32, elements: !118)
!117 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!118 = !{!119, !120, !121}
!119 = !DIEnumerator(name: "USRQUOTA", value: 0)
!120 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!121 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !123, line: 16, baseType: !13, size: 32, elements: !124)
!123 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!124 = !{!125, !126, !127}
!125 = !DIEnumerator(name: "TT_NONE", value: 0)
!126 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!127 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!128 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !129, line: 51, baseType: !13, size: 32, elements: !130)
!129 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!130 = !{!131, !132, !133, !134}
!131 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!132 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!133 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!134 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!135 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !136, line: 10, baseType: !13, size: 32, elements: !137)
!136 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!137 = !{!138, !139}
!138 = !DIEnumerator(name: "false", value: 0)
!139 = !DIEnumerator(name: "true", value: 1)
!140 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !141, line: 364, baseType: !13, size: 32, elements: !142)
!141 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!142 = !{!143, !144, !145, !146, !147, !148, !149}
!143 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!144 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!145 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!146 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!147 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!148 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!149 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!150 = !{!151, !156, !159, !161, !164, !167, !170, !173, !176, !177, !172, !183, !157, !184, !160, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !205, !815, !1169}
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !152, line: 17, baseType: !153)
!152 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !154, line: 21, baseType: !155)
!154 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!155 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !152, line: 19, baseType: !157)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !154, line: 24, baseType: !158)
!158 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !152, line: 21, baseType: !160)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !154, line: 27, baseType: !13)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !152, line: 23, baseType: !162)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !154, line: 31, baseType: !163)
!163 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !152, line: 16, baseType: !165)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !154, line: 20, baseType: !166)
!166 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !152, line: 18, baseType: !168)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !154, line: 23, baseType: !169)
!169 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !152, line: 20, baseType: !171)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !154, line: 26, baseType: !172)
!172 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !152, line: 22, baseType: !174)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !154, line: 30, baseType: !175)
!175 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nlattr", file: !179, line: 229, size: 32, elements: !180)
!179 = !DIFile(filename: "./include/uapi/linux/netlink.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "514e37a7f30dd6a10229f65d7bb14aa5")
!180 = !{!181, !182}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "nla_len", scope: !178, file: !179, line: 230, baseType: !157, size: 16)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "nla_type", scope: !178, file: !179, line: 231, baseType: !157, size: 16, offset: 16)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be16", file: !185, line: 37, baseType: !157)
!185 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be32", file: !185, line: 39, baseType: !160)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !198, line: 746, size: 58368, elements: !199)
!198 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!199 = !{!200, !209, !210, !211, !222, !223, !224, !225, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !308, !319, !443, !447, !450, !481, !482, !483, !484, !495, !497, !498, !499, !500, !501, !502, !513, !514, !517, !518, !519, !520, !521, !522, !523, !524, !531, !532, !539, !540, !3268, !3269, !3270, !3271, !3272, !3273, !3274, !3275, !3276, !3277, !3278, !3279, !3280, !3281, !3282, !3283, !3284, !3285, !3286, !3287, !3288, !3289, !3290, !3346, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3394, !3400, !3401, !3402, !3403, !3404, !3406, !3409, !3416, !3421, !3424, !3427, !3430, !3456, !3594, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3632, !3633, !3634, !3643, !3651, !3652, !3653, !3654, !3655, !3660, !3661, !3662, !3665, !3666, !3669, !3672, !3675, !3683, !3686, !3687, !3773, !3774, !3775, !3776, !3777, !3783, !3784, !3785, !3786, !3789, !3790, !3793, !3807, !3808, !3811, !3812, !3813, !3816, !3817, !3818, !3819, !3820, !3821, !3834, !3835, !3836, !3837, !3838, !3839, !3840, !3841, !3842, !3853, !3854, !3860, !3863, !3864, !3865, !3866, !3867, !3868, !3869, !3872, !3944, !3946, !3947, !3948, !3949, !3950, !3951, !3966, !3967, !3968, !3969, !3970, !3971, !3972, !3973, !3974, !3975, !3976, !3980, !3981, !3982}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !197, file: !198, line: 752, baseType: !201, size: 192)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !202, line: 56, size: 192, elements: !203)
!202 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!203 = !{!204, !206, !207, !208}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !201, file: !202, line: 57, baseType: !205, size: 64)
!205 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !201, file: !202, line: 58, baseType: !205, size: 64, offset: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !201, file: !202, line: 59, baseType: !159, size: 32, offset: 128)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !201, file: !202, line: 61, baseType: !159, size: 32, offset: 160)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !197, file: !198, line: 754, baseType: !13, size: 32, offset: 192)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !197, file: !198, line: 767, baseType: !176, size: 64, offset: 256)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !197, file: !198, line: 768, baseType: !212, size: 32, offset: 320)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !213, line: 113, baseType: !214)
!213 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !213, line: 111, size: 32, elements: !215)
!215 = !{!216}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !214, file: !213, line: 112, baseType: !217, size: 32)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !218, line: 174, baseType: !219)
!218 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !218, line: 172, size: 32, elements: !220)
!220 = !{!221}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !219, file: !218, line: 173, baseType: !172, size: 32)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !197, file: !198, line: 770, baseType: !13, size: 32, offset: 352)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !197, file: !198, line: 771, baseType: !13, size: 32, offset: 384)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !197, file: !198, line: 774, baseType: !172, size: 32, offset: 416)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !197, file: !198, line: 775, baseType: !226, size: 128, offset: 448)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !227, line: 58, size: 128, elements: !228)
!227 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!228 = !{!229, !235, !240, !241}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !226, file: !227, line: 59, baseType: !230, size: 64)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !231, line: 60, size: 64, elements: !232)
!231 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!232 = !{!233}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !230, file: !231, line: 61, baseType: !234, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, scope: !226, file: !227, line: 60, baseType: !236, size: 32, offset: 64)
!236 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !226, file: !227, line: 60, size: 32, elements: !237)
!237 = !{!238, !239}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !236, file: !227, line: 61, baseType: !13, size: 32)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !236, file: !227, line: 62, baseType: !217, size: 32)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !226, file: !227, line: 65, baseType: !156, size: 16, offset: 96)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !226, file: !227, line: 65, baseType: !156, size: 16, offset: 112)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !197, file: !198, line: 776, baseType: !13, size: 32, offset: 576)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !197, file: !198, line: 777, baseType: !205, size: 64, offset: 640)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !197, file: !198, line: 778, baseType: !196, size: 64, offset: 704)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !197, file: !198, line: 787, baseType: !172, size: 32, offset: 768)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !197, file: !198, line: 788, baseType: !172, size: 32, offset: 800)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !197, file: !198, line: 790, baseType: !172, size: 32, offset: 832)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !197, file: !198, line: 792, baseType: !172, size: 32, offset: 864)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !197, file: !198, line: 793, baseType: !172, size: 32, offset: 896)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !197, file: !198, line: 794, baseType: !172, size: 32, offset: 928)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !197, file: !198, line: 795, baseType: !13, size: 32, offset: 960)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !197, file: !198, line: 797, baseType: !253, size: 2048, offset: 1024)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !198, line: 551, size: 2048, elements: !254)
!254 = !{!255, !260, !268, !269, !270, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !287, !290, !291, !292}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !253, file: !198, line: 553, baseType: !256, size: 128)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !198, line: 411, size: 128, elements: !257)
!257 = !{!258, !259}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !256, file: !198, line: 412, baseType: !205, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !256, file: !198, line: 413, baseType: !159, size: 32, offset: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !253, file: !198, line: 554, baseType: !261, size: 192, align: 64, offset: 128)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !262, line: 5, size: 192, align: 64, elements: !263)
!262 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!263 = !{!264, !265, !267}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !261, file: !262, line: 6, baseType: !205, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !261, file: !262, line: 7, baseType: !266, size: 64, offset: 64)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !261, file: !262, line: 8, baseType: !266, size: 64, offset: 128)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !253, file: !198, line: 555, baseType: !161, size: 64, offset: 320)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !253, file: !198, line: 556, baseType: !161, size: 64, offset: 384)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !253, file: !198, line: 558, baseType: !271, size: 128, offset: 448)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !218, line: 190, size: 128, elements: !272)
!272 = !{!273, !275}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !271, file: !218, line: 191, baseType: !274, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !271, file: !218, line: 191, baseType: !274, size: 64, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !253, file: !198, line: 559, baseType: !13, size: 32, offset: 576)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !253, file: !198, line: 561, baseType: !161, size: 64, offset: 640)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !253, file: !198, line: 562, baseType: !161, size: 64, offset: 704)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !253, file: !198, line: 563, baseType: !161, size: 64, offset: 768)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !253, file: !198, line: 564, baseType: !161, size: 64, offset: 832)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !253, file: !198, line: 565, baseType: !173, size: 64, offset: 896)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !253, file: !198, line: 566, baseType: !161, size: 64, offset: 960)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !253, file: !198, line: 568, baseType: !161, size: 64, offset: 1024)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !253, file: !198, line: 571, baseType: !172, size: 32, offset: 1088)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !253, file: !198, line: 572, baseType: !286, size: 64, offset: 1152)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !253, file: !198, line: 574, baseType: !288, size: 64, offset: 1216)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !198, line: 49, flags: DIFlagFwdDecl)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !253, file: !198, line: 576, baseType: !288, size: 64, offset: 1280)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !253, file: !198, line: 578, baseType: !205, size: 64, offset: 1344)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !253, file: !198, line: 588, baseType: !293, size: 512, align: 512, offset: 1536)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !198, line: 497, size: 512, align: 512, elements: !294)
!294 = !{!295, !296, !297, !298, !299, !300, !301, !302, !303}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !293, file: !198, line: 498, baseType: !161, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !293, file: !198, line: 499, baseType: !161, size: 64, offset: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !293, file: !198, line: 500, baseType: !161, size: 64, offset: 128)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !293, file: !198, line: 501, baseType: !159, size: 32, offset: 192)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !293, file: !198, line: 502, baseType: !159, size: 32, offset: 224)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !293, file: !198, line: 503, baseType: !205, size: 64, offset: 256)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !293, file: !198, line: 504, baseType: !205, size: 64, offset: 320)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !293, file: !198, line: 505, baseType: !205, size: 64, offset: 384)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !293, file: !198, line: 506, baseType: !304, size: 64, align: 64, offset: 448)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !198, line: 445, size: 64, align: 64, elements: !305)
!305 = !{!306, !307}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !304, file: !198, line: 446, baseType: !13, size: 32)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !304, file: !198, line: 447, baseType: !13, size: 32, offset: 32)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !197, file: !198, line: 798, baseType: !309, size: 384, offset: 3072)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !198, line: 592, size: 384, elements: !310)
!310 = !{!311, !312, !313, !314, !315, !316, !317}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !309, file: !198, line: 593, baseType: !271, size: 128)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !309, file: !198, line: 594, baseType: !205, size: 64, offset: 128)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !309, file: !198, line: 595, baseType: !205, size: 64, offset: 192)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !309, file: !198, line: 596, baseType: !13, size: 32, offset: 256)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !309, file: !198, line: 597, baseType: !158, size: 16, offset: 288)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !309, file: !198, line: 598, baseType: !158, size: 16, offset: 304)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !309, file: !198, line: 600, baseType: !318, size: 64, offset: 320)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !197, file: !198, line: 799, baseType: !320, size: 1792, offset: 3456)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !198, line: 610, size: 1792, elements: !321)
!321 = !{!322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !440, !441}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !320, file: !198, line: 611, baseType: !261, size: 192, align: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !320, file: !198, line: 618, baseType: !161, size: 64, offset: 192)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !320, file: !198, line: 619, baseType: !161, size: 64, offset: 256)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !320, file: !198, line: 620, baseType: !161, size: 64, offset: 320)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !320, file: !198, line: 621, baseType: !161, size: 64, offset: 384)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !320, file: !198, line: 622, baseType: !161, size: 64, offset: 448)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !320, file: !198, line: 629, baseType: !173, size: 64, offset: 512)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !320, file: !198, line: 630, baseType: !161, size: 64, offset: 576)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !320, file: !198, line: 631, baseType: !13, size: 32, offset: 640)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !320, file: !198, line: 653, baseType: !13, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !320, file: !198, line: 654, baseType: !13, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !320, file: !198, line: 655, baseType: !13, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !320, file: !198, line: 656, baseType: !13, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !320, file: !198, line: 662, baseType: !336, size: 512, offset: 704)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !55, line: 118, size: 512, elements: !337)
!337 = !{!338, !346, !347, !352, !436, !437, !438, !439}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !336, file: !55, line: 119, baseType: !339, size: 256)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !340, line: 9, size: 256, elements: !341)
!340 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!341 = !{!342, !343}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !339, file: !340, line: 10, baseType: !261, size: 192, align: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !339, file: !340, line: 11, baseType: !344, size: 64, offset: 192)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !345, line: 29, baseType: !173)
!345 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!346 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !336, file: !55, line: 120, baseType: !344, size: 64, offset: 256)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !336, file: !55, line: 121, baseType: !348, size: 64, offset: 320)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = !DISubroutineType(types: !350)
!350 = !{!54, !351}
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !336, file: !55, line: 122, baseType: !353, size: 64, offset: 384)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !55, line: 159, size: 512, align: 512, elements: !355)
!355 = !{!356, !404, !405, !409, !419, !420, !431, !435}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !354, file: !55, line: 160, baseType: !357, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !55, line: 215, size: 4608, align: 512, elements: !359)
!359 = !{!360, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !358, file: !55, line: 216, baseType: !361, size: 32)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !362, line: 23, baseType: !363)
!362 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !362, line: 14, size: 32, elements: !364)
!364 = !{!365}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !363, file: !362, line: 15, baseType: !366, size: 32)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !367, line: 44, baseType: !368)
!367 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !367, line: 14, size: 32, elements: !369)
!369 = !{!370}
!370 = !DIDerivedType(tag: DW_TAG_member, scope: !368, file: !367, line: 15, baseType: !371, size: 32)
!371 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !368, file: !367, line: 15, size: 32, elements: !372)
!372 = !{!373, !374, !379}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !371, file: !367, line: 16, baseType: !217, size: 32)
!374 = !DIDerivedType(tag: DW_TAG_member, scope: !371, file: !367, line: 24, baseType: !375, size: 16)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !371, file: !367, line: 24, size: 16, elements: !376)
!376 = !{!377, !378}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !375, file: !367, line: 25, baseType: !151, size: 8)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !375, file: !367, line: 26, baseType: !151, size: 8, offset: 8)
!379 = !DIDerivedType(tag: DW_TAG_member, scope: !371, file: !367, line: 28, baseType: !380, size: 32)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !371, file: !367, line: 28, size: 32, elements: !381)
!381 = !{!382, !383}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !380, file: !367, line: 29, baseType: !156, size: 16)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !380, file: !367, line: 30, baseType: !156, size: 16, offset: 16)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !358, file: !55, line: 217, baseType: !13, size: 32, offset: 32)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !358, file: !55, line: 218, baseType: !13, size: 32, offset: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !358, file: !55, line: 219, baseType: !13, size: 32, offset: 96)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !358, file: !55, line: 220, baseType: !13, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !358, file: !55, line: 221, baseType: !13, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !358, file: !55, line: 222, baseType: !13, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !358, file: !55, line: 223, baseType: !13, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !358, file: !55, line: 224, baseType: !13, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !358, file: !55, line: 226, baseType: !13, size: 32, offset: 160)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !358, file: !55, line: 227, baseType: !158, size: 16, offset: 192)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !358, file: !55, line: 228, baseType: !158, size: 16, offset: 208)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !358, file: !55, line: 229, baseType: !13, size: 32, offset: 224)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !358, file: !55, line: 235, baseType: !344, size: 64, offset: 256)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !358, file: !55, line: 236, baseType: !351, size: 64, offset: 320)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !358, file: !55, line: 237, baseType: !344, size: 64, offset: 384)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !358, file: !55, line: 238, baseType: !351, size: 64, offset: 448)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !358, file: !55, line: 239, baseType: !401, size: 4096, align: 512, offset: 512)
!401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !354, size: 4096, align: 512, elements: !402)
!402 = !{!403}
!403 = !DISubrange(count: 8)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !354, file: !55, line: 161, baseType: !13, size: 32, offset: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !354, file: !55, line: 162, baseType: !406, size: 32, offset: 96)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !218, line: 32, baseType: !407)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !408, line: 96, baseType: !172)
!408 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!409 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !354, file: !55, line: 163, baseType: !410, size: 32, offset: 128)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !411, line: 274, baseType: !412)
!411 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !411, line: 274, size: 32, elements: !413)
!413 = !{!414}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !412, file: !411, line: 274, baseType: !415, size: 32)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !411, line: 69, baseType: !416)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !411, line: 64, size: 32, elements: !417)
!417 = !{!418}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !416, file: !411, line: 65, baseType: !13, size: 32)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !354, file: !55, line: 164, baseType: !351, size: 64, offset: 192)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !354, file: !55, line: 165, baseType: !421, size: 128, offset: 256)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !340, line: 14, size: 128, elements: !422)
!422 = !{!423}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !421, file: !340, line: 15, baseType: !424, size: 128)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !262, line: 26, size: 128, elements: !425)
!425 = !{!426, !430}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !424, file: !262, line: 27, baseType: !427, size: 64)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !262, line: 12, size: 64, elements: !428)
!428 = !{!429}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !427, file: !262, line: 13, baseType: !266, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !424, file: !262, line: 28, baseType: !266, size: 64, offset: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !354, file: !55, line: 166, baseType: !432, size: 64, offset: 384)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DISubroutineType(types: !434)
!434 = !{!344}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !354, file: !55, line: 167, baseType: !344, size: 64, offset: 448)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !336, file: !55, line: 123, baseType: !151, size: 8, offset: 448)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !336, file: !55, line: 124, baseType: !151, size: 8, offset: 456)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !336, file: !55, line: 125, baseType: !151, size: 8, offset: 464)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !336, file: !55, line: 126, baseType: !151, size: 8, offset: 472)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !320, file: !198, line: 671, baseType: !336, size: 512, offset: 1216)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !320, file: !198, line: 679, baseType: !442, size: 64, offset: 1728)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !197, file: !198, line: 800, baseType: !444, size: 64, offset: 5248)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !446)
!446 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !198, line: 800, flags: DIFlagFwdDecl)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !197, file: !198, line: 809, baseType: !448, size: 64, offset: 5312)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !198, line: 70, flags: DIFlagFwdDecl)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !197, file: !198, line: 825, baseType: !451, size: 2048, align: 512, offset: 5632)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !198, line: 509, size: 2048, align: 512, elements: !452)
!452 = !{!453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !451, file: !198, line: 511, baseType: !161, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !451, file: !198, line: 512, baseType: !161, size: 64, offset: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !451, file: !198, line: 513, baseType: !161, size: 64, offset: 128)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !451, file: !198, line: 514, baseType: !161, size: 64, offset: 192)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !451, file: !198, line: 515, baseType: !161, size: 64, offset: 256)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !451, file: !198, line: 516, baseType: !161, size: 64, offset: 320)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !451, file: !198, line: 518, baseType: !161, size: 64, offset: 384)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !451, file: !198, line: 519, baseType: !161, size: 64, offset: 448)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !451, file: !198, line: 520, baseType: !173, size: 64, offset: 512)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !451, file: !198, line: 522, baseType: !161, size: 64, offset: 576)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !451, file: !198, line: 523, baseType: !161, size: 64, offset: 640)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !451, file: !198, line: 524, baseType: !173, size: 64, offset: 704)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !451, file: !198, line: 526, baseType: !173, size: 64, offset: 768)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !451, file: !198, line: 527, baseType: !161, size: 64, offset: 832)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !451, file: !198, line: 529, baseType: !161, size: 64, offset: 896)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !451, file: !198, line: 530, baseType: !161, size: 64, offset: 960)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !451, file: !198, line: 531, baseType: !161, size: 64, offset: 1024)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !451, file: !198, line: 532, baseType: !161, size: 64, offset: 1088)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !451, file: !198, line: 533, baseType: !161, size: 64, offset: 1152)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !451, file: !198, line: 535, baseType: !161, size: 64, offset: 1216)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !451, file: !198, line: 536, baseType: !161, size: 64, offset: 1280)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !451, file: !198, line: 537, baseType: !161, size: 64, offset: 1344)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !451, file: !198, line: 538, baseType: !161, size: 64, offset: 1408)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !451, file: !198, line: 539, baseType: !161, size: 64, offset: 1472)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !451, file: !198, line: 540, baseType: !161, size: 64, offset: 1536)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !451, file: !198, line: 541, baseType: !161, size: 64, offset: 1600)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !451, file: !198, line: 542, baseType: !161, size: 64, offset: 1664)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !451, file: !198, line: 543, baseType: !161, size: 64, offset: 1728)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !197, file: !198, line: 833, baseType: !13, size: 32, offset: 7680)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !197, file: !198, line: 836, baseType: !13, size: 32, offset: 7712)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !197, file: !198, line: 837, baseType: !172, size: 32, offset: 7744)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !197, file: !198, line: 838, baseType: !485, size: 64, offset: 7808)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !487)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !488, line: 19, baseType: !489)
!488 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !488, line: 19, size: 64, elements: !490)
!490 = !{!491}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !489, file: !488, line: 19, baseType: !492, size: 64)
!492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 64, elements: !493)
!493 = !{!494}
!494 = !DISubrange(count: 1)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !197, file: !198, line: 839, baseType: !496, size: 64, offset: 7872)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !197, file: !198, line: 840, baseType: !487, size: 64, offset: 7936)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !197, file: !198, line: 841, baseType: !176, size: 64, offset: 8000)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !197, file: !198, line: 843, baseType: !158, size: 16, offset: 8064)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !197, file: !198, line: 845, baseType: !158, size: 16, offset: 8080)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !197, file: !198, line: 848, baseType: !172, size: 32, offset: 8096)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !197, file: !198, line: 849, baseType: !503, size: 32, offset: 8128)
!503 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !198, line: 718, size: 32, elements: !504)
!504 = !{!505, !512}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !503, file: !198, line: 724, baseType: !506, size: 32)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !503, file: !198, line: 719, size: 32, elements: !507)
!507 = !{!508, !509, !510, !511}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !506, file: !198, line: 720, baseType: !151, size: 8)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !506, file: !198, line: 721, baseType: !151, size: 8, offset: 8)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !506, file: !198, line: 722, baseType: !151, size: 8, offset: 16)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !506, file: !198, line: 723, baseType: !151, size: 8, offset: 24)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !503, file: !198, line: 725, baseType: !159, size: 32)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !197, file: !198, line: 850, baseType: !271, size: 128, offset: 8192)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !197, file: !198, line: 851, baseType: !515, size: 64, offset: 8320)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !198, line: 60, flags: DIFlagFwdDecl)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !197, file: !198, line: 855, baseType: !205, size: 64, offset: 8384)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !197, file: !198, line: 856, baseType: !151, size: 8, offset: 8448)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !197, file: !198, line: 857, baseType: !151, size: 8, offset: 8456)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !197, file: !198, line: 858, baseType: !172, size: 32, offset: 8480)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !197, file: !198, line: 859, baseType: !271, size: 128, offset: 8512)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !197, file: !198, line: 860, baseType: !172, size: 32, offset: 8640)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !197, file: !198, line: 861, baseType: !271, size: 128, offset: 8704)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !197, file: !198, line: 873, baseType: !525, size: 256, offset: 8832)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !198, line: 376, size: 256, elements: !526)
!526 = !{!527, !528, !529, !530}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !525, file: !198, line: 381, baseType: !205, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !525, file: !198, line: 384, baseType: !163, size: 64, offset: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !525, file: !198, line: 389, baseType: !163, size: 64, offset: 128)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !525, file: !198, line: 392, baseType: !163, size: 64, offset: 192)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !197, file: !198, line: 875, baseType: !271, size: 128, offset: 9088)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !197, file: !198, line: 877, baseType: !533, size: 320, offset: 9216)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !534, line: 86, size: 320, elements: !535)
!534 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!535 = !{!536, !537, !538}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !533, file: !534, line: 87, baseType: !172, size: 32)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !533, file: !534, line: 88, baseType: !271, size: 128, offset: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !533, file: !534, line: 89, baseType: !271, size: 128, offset: 192)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !197, file: !198, line: 878, baseType: !261, size: 192, align: 64, offset: 9536)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !197, file: !198, line: 881, baseType: !541, size: 64, offset: 9728)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !83, line: 733, size: 10240, elements: !543)
!543 = !{!544, !3266}
!544 = !DIDerivedType(tag: DW_TAG_member, scope: !542, file: !83, line: 734, baseType: !545, size: 10240)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !542, file: !83, line: 734, size: 10240, elements: !546)
!546 = !{!547, !551, !573, !3145, !3146, !3147, !3148, !3149, !3150, !3157, !3158, !3159, !3165, !3166, !3167, !3168, !3169, !3170, !3171, !3172, !3173, !3174, !3175, !3176, !3177, !3178, !3179, !3180, !3181, !3182, !3183, !3184, !3185, !3186, !3187, !3188, !3189, !3190, !3191, !3192, !3193, !3194, !3198, !3200, !3203, !3246, !3247, !3248, !3251, !3252, !3253, !3256, !3257, !3258, !3264, !3265}
!547 = !DIDerivedType(tag: DW_TAG_member, scope: !545, file: !83, line: 739, baseType: !548, size: 512, align: 512)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !545, file: !83, line: 739, size: 512, align: 512, elements: !549)
!549 = !{!550}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !548, file: !83, line: 747, baseType: !217, size: 32)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !545, file: !83, line: 750, baseType: !552, size: 128, offset: 512)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !553, line: 218, size: 128, elements: !554)
!553 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!554 = !{!555, !571, !572}
!555 = !DIDerivedType(tag: DW_TAG_member, scope: !552, file: !553, line: 219, baseType: !556, size: 32)
!556 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !552, file: !553, line: 219, size: 32, elements: !557)
!557 = !{!558, !567}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !556, file: !553, line: 220, baseType: !559, size: 32)
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !560, line: 29, baseType: !561)
!560 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !560, line: 17, size: 32, elements: !562)
!562 = !{!563}
!563 = !DIDerivedType(tag: DW_TAG_member, scope: !561, file: !560, line: 18, baseType: !564, size: 32)
!564 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !561, file: !560, line: 18, size: 32, elements: !565)
!565 = !{!566}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !564, file: !560, line: 19, baseType: !363, size: 32)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !556, file: !553, line: 221, baseType: !568)
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !553, line: 197, baseType: !569)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !553, line: 197, elements: !570)
!570 = !{}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !552, file: !553, line: 223, baseType: !13, size: 32, offset: 32)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !552, file: !553, line: 224, baseType: !176, size: 64, offset: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !545, file: !83, line: 752, baseType: !574, size: 64, offset: 640)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DISubroutineType(types: !576)
!576 = !{!205, !577, !205, !205, !205, !205}
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !112, line: 994, size: 1856, align: 64, elements: !579)
!579 = !{!580, !594, !595, !597, !604, !616, !619, !620, !696, !906, !915, !3135, !3136, !3137, !3138, !3139, !3140, !3142, !3143, !3144}
!580 = !DIDerivedType(tag: DW_TAG_member, scope: !578, file: !112, line: 995, baseType: !581, size: 128)
!581 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !578, file: !112, line: 995, size: 128, elements: !582)
!582 = !{!583, !584, !593}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !581, file: !112, line: 996, baseType: !230, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !581, file: !112, line: 997, baseType: !585, size: 128, align: 64)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !218, line: 232, size: 128, align: 64, elements: !586)
!586 = !{!587, !589}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !585, file: !218, line: 233, baseType: !588, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !585, file: !218, line: 234, baseType: !590, size: 64, offset: 64)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DISubroutineType(types: !592)
!592 = !{null, !588}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !581, file: !112, line: 998, baseType: !13, size: 32)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !578, file: !112, line: 1005, baseType: !559, size: 32, offset: 128)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !578, file: !112, line: 1006, baseType: !596, size: 32, offset: 160)
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !218, line: 156, baseType: !13)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !578, file: !112, line: 1007, baseType: !598, size: 64, offset: 192)
!598 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !599, line: 13, baseType: !600)
!599 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !218, line: 181, baseType: !601)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !218, line: 179, size: 64, elements: !602)
!602 = !{!603}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !601, file: !218, line: 180, baseType: !173, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !578, file: !112, line: 1008, baseType: !605, size: 256, offset: 256)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !606, line: 66, size: 256, elements: !607)
!606 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!607 = !{!608, !609, !610, !615}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !605, file: !606, line: 67, baseType: !598, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !605, file: !606, line: 68, baseType: !361, size: 32, offset: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !605, file: !606, line: 70, baseType: !611, size: 32, offset: 96)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !612, line: 15, size: 32, elements: !613)
!612 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!613 = !{!614}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !611, file: !612, line: 20, baseType: !217, size: 32)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !605, file: !606, line: 72, baseType: !271, size: 128, offset: 128)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !578, file: !112, line: 1009, baseType: !617, size: 64, offset: 512)
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !218, line: 52, baseType: !618)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !408, line: 88, baseType: !175)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !578, file: !112, line: 1010, baseType: !13, size: 32, offset: 576)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !578, file: !112, line: 1011, baseType: !621, size: 256, offset: 640)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !112, line: 948, size: 256, elements: !622)
!622 = !{!623, !646, !685, !686, !694, !695}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !621, file: !112, line: 949, baseType: !624, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !625, line: 34, baseType: !626)
!625 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !625, line: 25, size: 64, elements: !627)
!627 = !{!628}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !626, file: !625, line: 26, baseType: !629, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !630, line: 27, baseType: !631)
!630 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !630, line: 13, size: 64, elements: !632)
!632 = !{!633, !645}
!633 = !DIDerivedType(tag: DW_TAG_member, scope: !631, file: !630, line: 14, baseType: !634, size: 32)
!634 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !631, file: !630, line: 14, size: 32, elements: !635)
!635 = !{!636, !637}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !634, file: !630, line: 15, baseType: !217, size: 32)
!637 = !DIDerivedType(tag: DW_TAG_member, scope: !634, file: !630, line: 16, baseType: !638, size: 32)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !634, file: !630, line: 16, size: 32, elements: !639)
!639 = !{!640, !641}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !638, file: !630, line: 18, baseType: !151, size: 8)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !638, file: !630, line: 19, baseType: !642, size: 24, offset: 8)
!642 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 24, elements: !643)
!643 = !{!644}
!644 = !DISubrange(count: 3)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !631, file: !630, line: 26, baseType: !366, size: 32, offset: 32)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !621, file: !112, line: 950, baseType: !647, size: 64, offset: 64)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !60, line: 59, size: 768, elements: !649)
!649 = !{!650, !651, !652, !653, !666, !667, !674, !675}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !648, file: !60, line: 61, baseType: !212, size: 32)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !648, file: !60, line: 62, baseType: !13, size: 32, offset: 32)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !648, file: !60, line: 63, baseType: !559, size: 32, offset: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !648, file: !60, line: 65, baseType: !654, size: 256, offset: 128)
!654 = !DICompositeType(tag: DW_TAG_array_type, baseType: !655, size: 256, elements: !664)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !218, line: 194, size: 64, elements: !656)
!656 = !{!657}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !655, file: !218, line: 195, baseType: !658, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !218, line: 198, size: 128, elements: !660)
!660 = !{!661, !662}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !659, file: !218, line: 199, baseType: !658, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !659, file: !218, line: 199, baseType: !663, size: 64, offset: 64)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!664 = !{!665}
!665 = !DISubrange(count: 4)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !648, file: !60, line: 66, baseType: !655, size: 64, offset: 384)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !648, file: !60, line: 68, baseType: !668, size: 192, offset: 448)
!668 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !669, line: 41, baseType: !670)
!669 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !669, line: 37, size: 192, elements: !671)
!671 = !{!672, !673}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !670, file: !669, line: 38, baseType: !559, size: 32)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !670, file: !669, line: 39, baseType: !271, size: 128, offset: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !648, file: !60, line: 69, baseType: !585, size: 128, align: 64, offset: 640)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !648, file: !60, line: 70, baseType: !676, offset: 768)
!676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !677, elements: !683)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !60, line: 54, size: 128, elements: !678)
!678 = !{!679, !680}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !677, file: !60, line: 55, baseType: !172, size: 32)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !677, file: !60, line: 56, baseType: !681, size: 64, offset: 64)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !60, line: 56, flags: DIFlagFwdDecl)
!683 = !{!684}
!684 = !DISubrange(count: -1)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !621, file: !112, line: 951, baseType: !59, size: 32, offset: 128)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !621, file: !112, line: 952, baseType: !687, size: 32, offset: 160)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !688, line: 23, baseType: !689)
!688 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !688, line: 21, size: 32, elements: !690)
!690 = !{!691}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !689, file: !688, line: 22, baseType: !692, size: 32)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !218, line: 37, baseType: !693)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !408, line: 49, baseType: !13)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !621, file: !112, line: 952, baseType: !687, size: 32, offset: 192)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !621, file: !112, line: 953, baseType: !172, size: 32, offset: 224)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !578, file: !112, line: 1012, baseType: !697, size: 64, offset: 896)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !699)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !700, line: 110, size: 1472, elements: !701)
!700 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!701 = !{!702, !703, !704, !711, !712, !713, !714, !715, !716, !717, !718, !724, !725, !726, !727, !728, !729, !852, !853, !854, !855, !856, !886, !889, !893, !901}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !699, file: !700, line: 111, baseType: !598, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !699, file: !700, line: 112, baseType: !687, size: 32, offset: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !699, file: !700, line: 113, baseType: !705, size: 32, offset: 96)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !688, line: 28, baseType: !706)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !688, line: 26, size: 32, elements: !707)
!707 = !{!708}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !706, file: !688, line: 27, baseType: !709, size: 32)
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !218, line: 38, baseType: !710)
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !408, line: 50, baseType: !13)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !699, file: !700, line: 114, baseType: !687, size: 32, offset: 128)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !699, file: !700, line: 115, baseType: !705, size: 32, offset: 160)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !699, file: !700, line: 116, baseType: !687, size: 32, offset: 192)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !699, file: !700, line: 117, baseType: !705, size: 32, offset: 224)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !699, file: !700, line: 118, baseType: !687, size: 32, offset: 256)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !699, file: !700, line: 119, baseType: !705, size: 32, offset: 288)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !699, file: !700, line: 120, baseType: !13, size: 32, offset: 320)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !699, file: !700, line: 121, baseType: !719, size: 64, offset: 384)
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !720, line: 24, baseType: !721)
!720 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !720, line: 24, size: 64, elements: !722)
!722 = !{!723}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !721, file: !720, line: 24, baseType: !161, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !699, file: !700, line: 122, baseType: !719, size: 64, offset: 448)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !699, file: !700, line: 123, baseType: !719, size: 64, offset: 512)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !699, file: !700, line: 124, baseType: !719, size: 64, offset: 576)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !699, file: !700, line: 125, baseType: !719, size: 64, offset: 640)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !699, file: !700, line: 127, baseType: !155, size: 8, offset: 704)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !699, file: !700, line: 129, baseType: !730, size: 64, offset: 768)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !732, line: 195, size: 1728, elements: !733)
!732 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!733 = !{!734, !735, !738, !743, !752, !755, !756, !763, !764, !765, !766, !769, !770, !771, !772, !773, !816, !837}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !731, file: !732, line: 196, baseType: !212, size: 32)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !731, file: !732, line: 197, baseType: !736, size: 32, offset: 32)
!736 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !732, line: 28, baseType: !737)
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !218, line: 104, baseType: !170)
!738 = !DIDerivedType(tag: DW_TAG_member, scope: !731, file: !732, line: 198, baseType: !739, size: 192, offset: 64)
!739 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !731, file: !732, line: 198, size: 192, elements: !740)
!740 = !{!741, !742}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !739, file: !732, line: 199, baseType: !271, size: 128)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !739, file: !732, line: 200, baseType: !261, size: 192, align: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !731, file: !732, line: 205, baseType: !744, size: 320, offset: 256)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !745, line: 48, size: 320, elements: !746)
!745 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!746 = !{!747, !748, !749, !750, !751}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !744, file: !745, line: 49, baseType: !598, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !744, file: !745, line: 55, baseType: !598, size: 64, offset: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !744, file: !745, line: 57, baseType: !611, size: 32, offset: 128)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !744, file: !745, line: 59, baseType: !361, size: 32, offset: 160)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !744, file: !745, line: 60, baseType: !271, size: 128, offset: 192)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !731, file: !732, line: 206, baseType: !753, size: 64, offset: 576)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !732, line: 206, flags: DIFlagFwdDecl)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !731, file: !732, line: 207, baseType: !176, size: 64, offset: 640)
!756 = !DIDerivedType(tag: DW_TAG_member, scope: !731, file: !732, line: 208, baseType: !757, size: 64, offset: 704)
!757 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !731, file: !732, line: 208, size: 64, elements: !758)
!758 = !{!759, !762}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !757, file: !732, line: 209, baseType: !760, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !761, line: 8, baseType: !174)
!761 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!762 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !757, file: !732, line: 210, baseType: !760, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !731, file: !732, line: 212, baseType: !760, size: 64, offset: 768)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !731, file: !732, line: 213, baseType: !687, size: 32, offset: 832)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !731, file: !732, line: 214, baseType: !705, size: 32, offset: 864)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !731, file: !732, line: 215, baseType: !767, size: 32, offset: 896)
!767 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !732, line: 31, baseType: !768)
!768 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !218, line: 110, baseType: !159)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !731, file: !732, line: 216, baseType: !158, size: 16, offset: 928)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !731, file: !732, line: 217, baseType: !158, size: 16, offset: 944)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !731, file: !732, line: 221, baseType: !169, size: 16, offset: 960)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !731, file: !732, line: 228, baseType: !205, size: 64, offset: 1024)
!773 = !DIDerivedType(tag: DW_TAG_member, scope: !731, file: !732, line: 245, baseType: !774, size: 320, offset: 1088)
!774 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !731, file: !732, line: 245, size: 320, elements: !775)
!775 = !{!776, !807}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !774, file: !732, line: 246, baseType: !777, size: 320)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !732, line: 114, size: 320, elements: !778)
!778 = !{!779, !780, !792, !795, !804}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !777, file: !732, line: 116, baseType: !205, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, scope: !777, file: !732, line: 117, baseType: !781, size: 64, offset: 64)
!781 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !777, file: !732, line: 117, size: 64, elements: !782)
!782 = !{!783, !791}
!783 = !DIDerivedType(tag: DW_TAG_member, scope: !781, file: !732, line: 118, baseType: !784, size: 64)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !781, file: !732, line: 118, size: 64, elements: !785)
!785 = !{!786, !787}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !784, file: !732, line: 120, baseType: !156, size: 16)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !784, file: !732, line: 121, baseType: !788, size: 48, offset: 16)
!788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !789)
!789 = !{!790}
!790 = !DISubrange(count: 6)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !781, file: !732, line: 127, baseType: !205, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !777, file: !732, line: 129, baseType: !793, size: 64, offset: 128)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !732, line: 102, flags: DIFlagFwdDecl)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !777, file: !732, line: 130, baseType: !796, size: 64, offset: 192)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !732, line: 108, size: 192, elements: !798)
!798 = !{!799, !800, !801}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !797, file: !732, line: 109, baseType: !585, size: 128, align: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !797, file: !732, line: 110, baseType: !212, size: 32, offset: 128)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !797, file: !732, line: 111, baseType: !802, size: 8, offset: 160)
!802 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !218, line: 35, baseType: !803)
!803 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !777, file: !732, line: 131, baseType: !805, size: 64, offset: 256)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!807 = !DIDerivedType(tag: DW_TAG_member, scope: !774, file: !732, line: 247, baseType: !808, size: 320)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !774, file: !732, line: 247, size: 320, elements: !809)
!809 = !{!810, !811, !812, !813, !814}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !808, file: !732, line: 248, baseType: !205, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !808, file: !732, line: 249, baseType: !205, size: 64, offset: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !808, file: !732, line: 250, baseType: !793, size: 64, offset: 128)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !808, file: !732, line: 251, baseType: !796, size: 64, offset: 192)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !808, file: !732, line: 252, baseType: !815, size: 64, offset: 256)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_member, scope: !731, file: !732, line: 260, baseType: !817, size: 256, offset: 1408)
!817 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !731, file: !732, line: 260, size: 256, elements: !818)
!818 = !{!819, !825}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !817, file: !732, line: 261, baseType: !820, size: 256)
!820 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !732, line: 134, size: 256, elements: !821)
!821 = !{!822, !823}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !820, file: !732, line: 135, baseType: !176, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !820, file: !732, line: 136, baseType: !824, size: 256)
!824 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 256, elements: !664)
!825 = !DIDerivedType(tag: DW_TAG_member, scope: !817, file: !732, line: 262, baseType: !826, size: 256)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !817, file: !732, line: 262, size: 256, elements: !827)
!827 = !{!828, !829}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !826, file: !732, line: 264, baseType: !271, size: 128)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !826, file: !732, line: 265, baseType: !830, size: 128, offset: 128)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !831, line: 22, size: 128, elements: !832)
!831 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!832 = !{!833, !836}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !830, file: !831, line: 23, baseType: !834, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !831, line: 23, flags: DIFlagFwdDecl)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !830, file: !831, line: 24, baseType: !205, size: 64, offset: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !731, file: !732, line: 280, baseType: !838, size: 64, offset: 1664)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !732, line: 176, size: 192, elements: !840)
!840 = !{!841, !850, !851}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !839, file: !732, line: 177, baseType: !842, size: 64)
!842 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !732, line: 171, baseType: !843)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DISubroutineType(types: !845)
!845 = !{!172, !730, !846, !848, !730}
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !794)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !820)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !839, file: !732, line: 178, baseType: !730, size: 64, offset: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !839, file: !732, line: 179, baseType: !793, size: 64, offset: 128)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !699, file: !700, line: 130, baseType: !730, size: 64, offset: 832)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !699, file: !700, line: 131, baseType: !730, size: 64, offset: 896)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !699, file: !700, line: 132, baseType: !730, size: 64, offset: 960)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !699, file: !700, line: 135, baseType: !176, size: 64, offset: 1024)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !699, file: !700, line: 137, baseType: !857, size: 64, offset: 1088)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !859, line: 14, size: 1088, elements: !860)
!859 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!860 = !{!861, !862, !870, !871, !872, !873, !874, !875}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !858, file: !859, line: 15, baseType: !212, size: 32)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !858, file: !859, line: 17, baseType: !863, size: 320, offset: 64)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !864, line: 22, size: 320, elements: !865)
!864 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!865 = !{!866, !867, !868, !869}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !863, file: !864, line: 23, baseType: !361, size: 32)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !863, file: !864, line: 24, baseType: !173, size: 64, offset: 64)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !863, file: !864, line: 26, baseType: !271, size: 128, offset: 128)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !863, file: !864, line: 28, baseType: !194, size: 64, offset: 256)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !858, file: !859, line: 19, baseType: !205, size: 64, offset: 384)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !858, file: !859, line: 20, baseType: !598, size: 64, offset: 448)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !858, file: !859, line: 23, baseType: !659, size: 128, offset: 512)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !858, file: !859, line: 24, baseType: !687, size: 32, offset: 640)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !858, file: !859, line: 29, baseType: !598, size: 64, offset: 704)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !858, file: !859, line: 36, baseType: !876, size: 320, offset: 768)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !877, line: 15, size: 320, elements: !878)
!877 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!878 = !{!879, !880, !881, !882, !883, !884, !885}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !876, file: !877, line: 16, baseType: !361, size: 32)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !876, file: !877, line: 18, baseType: !172, size: 32, offset: 32)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !876, file: !877, line: 19, baseType: !172, size: 32, offset: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !876, file: !877, line: 20, baseType: !172, size: 32, offset: 96)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !876, file: !877, line: 21, baseType: !172, size: 32, offset: 128)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !876, file: !877, line: 22, baseType: !205, size: 64, offset: 192)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !876, file: !877, line: 23, baseType: !205, size: 64, offset: 256)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !699, file: !700, line: 138, baseType: !887, size: 64, offset: 1152)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !688, line: 18, flags: DIFlagFwdDecl)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !699, file: !700, line: 139, baseType: !890, size: 64, offset: 1216)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !892, line: 16, flags: DIFlagFwdDecl)
!892 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!893 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !699, file: !700, line: 140, baseType: !894, size: 64, offset: 1280)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !700, line: 25, size: 64, elements: !896)
!896 = !{!897, !898, !899}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !895, file: !700, line: 26, baseType: !217, size: 32)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !895, file: !700, line: 27, baseType: !172, size: 32, offset: 32)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !895, file: !700, line: 28, baseType: !900, offset: 64)
!900 = !DICompositeType(tag: DW_TAG_array_type, baseType: !705, elements: !683)
!901 = !DIDerivedType(tag: DW_TAG_member, scope: !699, file: !700, line: 142, baseType: !902, size: 128, offset: 1344)
!902 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !699, file: !700, line: 142, size: 128, elements: !903)
!903 = !{!904, !905}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !902, file: !700, line: 143, baseType: !172, size: 32)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !902, file: !700, line: 144, baseType: !585, size: 128, align: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !578, file: !112, line: 1013, baseType: !907, size: 256, offset: 960)
!907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !112, line: 970, size: 256, elements: !908)
!908 = !{!909, !910, !911, !912, !913, !914}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !907, file: !112, line: 971, baseType: !205, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !907, file: !112, line: 972, baseType: !13, size: 32, offset: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !907, file: !112, line: 973, baseType: !13, size: 32, offset: 96)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !907, file: !112, line: 974, baseType: !13, size: 32, offset: 128)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !907, file: !112, line: 975, baseType: !13, size: 32, offset: 160)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !907, file: !112, line: 976, baseType: !617, size: 64, offset: 192)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !578, file: !112, line: 1014, baseType: !916, size: 128, offset: 1216)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !917, line: 8, size: 128, elements: !918)
!917 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!918 = !{!919, !3134}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !916, file: !917, line: 9, baseType: !920, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !922, line: 70, size: 256, elements: !923)
!922 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!923 = !{!924, !3131, !3132, !3133}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !921, file: !922, line: 71, baseType: !925, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !927, line: 82, size: 1536, elements: !928)
!927 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!928 = !{!929, !930, !935, !943, !944, !959, !3098, !3100, !3113, !3114, !3115, !3116, !3117, !3123, !3124, !3125}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !926, file: !927, line: 84, baseType: !13, size: 32)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !926, file: !927, line: 85, baseType: !931, size: 32, offset: 32)
!931 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !411, line: 275, baseType: !932)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !411, line: 275, size: 32, elements: !933)
!933 = !{!934}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !932, file: !411, line: 275, baseType: !415, size: 32)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !926, file: !927, line: 86, baseType: !936, size: 128, offset: 64)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !937, line: 38, size: 128, elements: !938)
!937 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!938 = !{!939, !941}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !936, file: !937, line: 39, baseType: !940, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !936, file: !937, line: 39, baseType: !942, size: 64, offset: 64)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !926, file: !927, line: 87, baseType: !925, size: 64, offset: 192)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !926, file: !927, line: 88, baseType: !945, size: 128, offset: 256)
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !927, line: 49, size: 128, elements: !946)
!946 = !{!947, !956}
!947 = !DIDerivedType(tag: DW_TAG_member, scope: !945, file: !927, line: 50, baseType: !948, size: 64)
!948 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !945, file: !927, line: 50, size: 64, elements: !949)
!949 = !{!950, !955}
!950 = !DIDerivedType(tag: DW_TAG_member, scope: !948, file: !927, line: 51, baseType: !951, size: 64)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !948, file: !927, line: 51, size: 64, elements: !952)
!952 = !{!953, !954}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !951, file: !927, line: 52, baseType: !159, size: 32)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !951, file: !927, line: 52, baseType: !159, size: 32, offset: 32)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !948, file: !927, line: 54, baseType: !161, size: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !945, file: !927, line: 56, baseType: !957, size: 64, offset: 64)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !155)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !926, file: !927, line: 89, baseType: !960, size: 64, offset: 384)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !112, line: 641, size: 4800, elements: !962)
!962 = !{!963, !965, !966, !967, !968, !969, !970, !973, !974, !1172, !2912, !2913, !2914, !2915, !2921, !2922, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2935, !2936, !2937, !2938, !2939, !2944, !2945, !2946, !2947, !2948, !2949, !2950, !3080, !3083, !3084, !3085, !3094, !3095, !3096, !3097}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !961, file: !112, line: 642, baseType: !964, size: 16)
!964 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !218, line: 24, baseType: !158)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !961, file: !112, line: 643, baseType: !158, size: 16, offset: 16)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !961, file: !112, line: 644, baseType: !687, size: 32, offset: 32)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !961, file: !112, line: 645, baseType: !271, size: 128, offset: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !961, file: !112, line: 646, baseType: !705, size: 32, offset: 192)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !961, file: !112, line: 647, baseType: !13, size: 32, offset: 224)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !961, file: !112, line: 650, baseType: !971, size: 64, offset: 256)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !112, line: 607, flags: DIFlagFwdDecl)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !961, file: !112, line: 651, baseType: !971, size: 64, offset: 320)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !961, file: !112, line: 654, baseType: !975, size: 64, offset: 384)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !977)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !112, line: 1966, size: 2048, align: 512, elements: !978)
!978 = !{!979, !983, !996, !1002, !1006, !1010, !1014, !1018, !1022, !1026, !1030, !1031, !1037, !1041, !1079, !1110, !1120, !1126, !1130, !1134, !1138, !1142, !1146, !1152, !1156}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !977, file: !112, line: 1967, baseType: !980, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = !DISubroutineType(types: !982)
!982 = !{!925, !960, !925, !13}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !977, file: !112, line: 1968, baseType: !984, size: 64, offset: 64)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = !DISubroutineType(types: !986)
!986 = !{!805, !925, !960, !987}
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !989, line: 10, size: 128, elements: !990)
!989 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!990 = !{!991, !995}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !988, file: !989, line: 11, baseType: !992, size: 64)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = !DISubroutineType(types: !994)
!994 = !{null, !176}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !988, file: !989, line: 12, baseType: !176, size: 64, offset: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !977, file: !112, line: 1969, baseType: !997, size: 64, offset: 128)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!998 = !DISubroutineType(types: !999)
!999 = !{!172, !1000, !960, !172}
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !720, line: 42, flags: DIFlagFwdDecl)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !977, file: !112, line: 1970, baseType: !1003, size: 64, offset: 192)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{!971, !960, !172, !802}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !977, file: !112, line: 1972, baseType: !1007, size: 64, offset: 256)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = !DISubroutineType(types: !1009)
!1009 = !{!172, !925, !815, !172}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !977, file: !112, line: 1974, baseType: !1011, size: 64, offset: 320)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DISubroutineType(types: !1013)
!1013 = !{!172, !1000, !960, !925, !964, !802}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !977, file: !112, line: 1976, baseType: !1015, size: 64, offset: 384)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{!172, !925, !960, !925}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !977, file: !112, line: 1977, baseType: !1019, size: 64, offset: 448)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{!172, !960, !925}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !977, file: !112, line: 1978, baseType: !1023, size: 64, offset: 512)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DISubroutineType(types: !1025)
!1025 = !{!172, !1000, !960, !925, !805}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !977, file: !112, line: 1980, baseType: !1027, size: 64, offset: 576)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = !DISubroutineType(types: !1029)
!1029 = !{!172, !1000, !960, !925, !964}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !977, file: !112, line: 1982, baseType: !1019, size: 64, offset: 640)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !977, file: !112, line: 1983, baseType: !1032, size: 64, offset: 704)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = !DISubroutineType(types: !1034)
!1034 = !{!172, !1000, !960, !925, !964, !1035}
!1035 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !218, line: 21, baseType: !1036)
!1036 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !218, line: 18, baseType: !159)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !977, file: !112, line: 1985, baseType: !1038, size: 64, offset: 768)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = !DISubroutineType(types: !1040)
!1040 = !{!172, !1000, !960, !925, !960, !925, !13}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !977, file: !112, line: 1987, baseType: !1042, size: 64, offset: 832)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{!172, !1000, !925, !1045}
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !112, line: 226, size: 640, elements: !1047)
!1047 = !{!1048, !1049, !1050, !1060, !1069, !1070, !1076, !1077, !1078}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1046, file: !112, line: 227, baseType: !13, size: 32)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1046, file: !112, line: 228, baseType: !964, size: 16, offset: 32)
!1050 = !DIDerivedType(tag: DW_TAG_member, scope: !1046, file: !112, line: 241, baseType: !1051, size: 32, offset: 64)
!1051 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1046, file: !112, line: 241, size: 32, elements: !1052)
!1052 = !{!1053, !1054}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1051, file: !112, line: 242, baseType: !687, size: 32)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !1051, file: !112, line: 243, baseType: !1055, size: 32)
!1055 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !1056, line: 16, baseType: !1057)
!1056 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!1057 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1056, line: 14, size: 32, elements: !1058)
!1058 = !{!1059}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1057, file: !1056, line: 15, baseType: !692, size: 32)
!1060 = !DIDerivedType(tag: DW_TAG_member, scope: !1046, file: !112, line: 245, baseType: !1061, size: 32, offset: 96)
!1061 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1046, file: !112, line: 245, size: 32, elements: !1062)
!1062 = !{!1063, !1064}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1061, file: !112, line: 246, baseType: !705, size: 32)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !1061, file: !112, line: 247, baseType: !1065, size: 32)
!1065 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !1056, line: 20, baseType: !1066)
!1066 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1056, line: 18, size: 32, elements: !1067)
!1067 = !{!1068}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1066, file: !1056, line: 19, baseType: !709, size: 32)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1046, file: !112, line: 249, baseType: !617, size: 64, offset: 128)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1046, file: !112, line: 250, baseType: !1071, size: 128, offset: 192)
!1071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !761, line: 13, size: 128, elements: !1072)
!1072 = !{!1073, !1074}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1071, file: !761, line: 14, baseType: !760, size: 64)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1071, file: !761, line: 15, baseType: !1075, size: 64, offset: 64)
!1075 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1046, file: !112, line: 251, baseType: !1071, size: 128, offset: 320)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1046, file: !112, line: 252, baseType: !1071, size: 128, offset: 448)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1046, file: !112, line: 259, baseType: !577, size: 64, offset: 576)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !977, file: !112, line: 1988, baseType: !1080, size: 64, offset: 896)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = !DISubroutineType(types: !1082)
!1082 = !{!172, !1000, !1083, !1085, !159, !13}
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !916)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1087, line: 22, size: 1280, elements: !1088)
!1087 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1088 = !{!1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1086, file: !1087, line: 23, baseType: !159, size: 32)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1086, file: !1087, line: 24, baseType: !964, size: 16, offset: 32)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1086, file: !1087, line: 25, baseType: !13, size: 32, offset: 64)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1086, file: !1087, line: 26, baseType: !768, size: 32, offset: 96)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1086, file: !1087, line: 27, baseType: !161, size: 64, offset: 128)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1086, file: !1087, line: 28, baseType: !161, size: 64, offset: 192)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1086, file: !1087, line: 41, baseType: !161, size: 64, offset: 256)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1086, file: !1087, line: 42, baseType: !1035, size: 32, offset: 320)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1086, file: !1087, line: 43, baseType: !1035, size: 32, offset: 352)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1086, file: !1087, line: 44, baseType: !687, size: 32, offset: 384)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1086, file: !1087, line: 45, baseType: !705, size: 32, offset: 416)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1086, file: !1087, line: 46, baseType: !617, size: 64, offset: 448)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1086, file: !1087, line: 47, baseType: !1071, size: 128, offset: 512)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1086, file: !1087, line: 48, baseType: !1071, size: 128, offset: 640)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1086, file: !1087, line: 49, baseType: !1071, size: 128, offset: 768)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1086, file: !1087, line: 50, baseType: !1071, size: 128, offset: 896)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1086, file: !1087, line: 51, baseType: !161, size: 64, offset: 1024)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1086, file: !1087, line: 52, baseType: !161, size: 64, offset: 1088)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1086, file: !1087, line: 53, baseType: !159, size: 32, offset: 1152)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1086, file: !1087, line: 54, baseType: !159, size: 32, offset: 1184)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1086, file: !1087, line: 55, baseType: !161, size: 64, offset: 1216)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !977, file: !112, line: 1990, baseType: !1111, size: 64, offset: 960)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = !DISubroutineType(types: !1113)
!1113 = !{!1114, !925, !815, !1117}
!1114 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !218, line: 66, baseType: !1115)
!1115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !408, line: 73, baseType: !1116)
!1116 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !408, line: 15, baseType: !1075)
!1117 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !218, line: 61, baseType: !1118)
!1118 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !408, line: 72, baseType: !1119)
!1119 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !408, line: 16, baseType: !205)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !977, file: !112, line: 1991, baseType: !1121, size: 64, offset: 1024)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = !DISubroutineType(types: !1123)
!1123 = !{!172, !960, !1124, !161, !161}
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !112, line: 55, flags: DIFlagFwdDecl)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !977, file: !112, line: 1993, baseType: !1127, size: 64, offset: 1088)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = !DISubroutineType(types: !1129)
!1129 = !{!172, !960, !172}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !977, file: !112, line: 1994, baseType: !1131, size: 64, offset: 1152)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = !DISubroutineType(types: !1133)
!1133 = !{!172, !960, !925, !577, !13, !964}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !977, file: !112, line: 1997, baseType: !1135, size: 64, offset: 1216)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = !DISubroutineType(types: !1137)
!1137 = !{!172, !1000, !960, !577, !964}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !977, file: !112, line: 1999, baseType: !1139, size: 64, offset: 1280)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = !DISubroutineType(types: !1141)
!1141 = !{!971, !1000, !925, !172}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !977, file: !112, line: 2001, baseType: !1143, size: 64, offset: 1344)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = !DISubroutineType(types: !1145)
!1145 = !{!172, !1000, !925, !971, !172}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !977, file: !112, line: 2003, baseType: !1147, size: 64, offset: 1408)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = !DISubroutineType(types: !1149)
!1149 = !{!172, !1000, !925, !1150}
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !112, line: 76, flags: DIFlagFwdDecl)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !977, file: !112, line: 2005, baseType: !1153, size: 64, offset: 1472)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = !DISubroutineType(types: !1155)
!1155 = !{!172, !925, !1150}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !977, file: !112, line: 2006, baseType: !1157, size: 64, offset: 1536)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = !DISubroutineType(types: !1159)
!1159 = !{!1160, !960}
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !112, line: 3192, size: 192, elements: !1162)
!1162 = !{!1163, !1171}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1161, file: !112, line: 3193, baseType: !1164, size: 128)
!1164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1165, line: 296, size: 128, elements: !1166)
!1165 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1166 = !{!1167, !1168, !1170}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1164, file: !1165, line: 297, baseType: !559, size: 32)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1164, file: !1165, line: 299, baseType: !1169, size: 32, offset: 32)
!1169 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !218, line: 154, baseType: !13)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1164, file: !1165, line: 300, baseType: !176, size: 64, offset: 64)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1161, file: !112, line: 3194, baseType: !159, size: 32, offset: 128)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !961, file: !112, line: 655, baseType: !1173, size: 64, offset: 448)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !112, line: 1190, size: 10752, elements: !1175)
!1175 = !{!1176, !1177, !1178, !1179, !1180, !1181, !2425, !2557, !2597, !2680, !2684, !2685, !2686, !2687, !2688, !2689, !2690, !2691, !2692, !2697, !2701, !2702, !2705, !2708, !2711, !2714, !2715, !2716, !2757, !2783, !2784, !2785, !2786, !2787, !2788, !2791, !2795, !2804, !2805, !2806, !2807, !2866, !2881, !2882, !2883, !2884, !2885, !2886, !2887, !2888, !2903, !2904, !2905, !2906, !2907, !2908, !2909, !2910, !2911}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1174, file: !112, line: 1191, baseType: !271, size: 128)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1174, file: !112, line: 1192, baseType: !1035, size: 32, offset: 128)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1174, file: !112, line: 1193, baseType: !155, size: 8, offset: 160)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1174, file: !112, line: 1194, baseType: !205, size: 64, offset: 192)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1174, file: !112, line: 1195, baseType: !617, size: 64, offset: 256)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1174, file: !112, line: 1196, baseType: !1182, size: 64, offset: 320)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !112, line: 2366, size: 576, elements: !1184)
!1184 = !{!1185, !1186, !1187, !1193, !1197, !1201, !1205, !2413, !2414, !2415, !2417, !2418, !2419, !2421, !2422, !2423, !2424}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1183, file: !112, line: 2367, baseType: !805, size: 64)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1183, file: !112, line: 2368, baseType: !172, size: 32, offset: 64)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1183, file: !112, line: 2376, baseType: !1188, size: 64, offset: 128)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = !DISubroutineType(types: !1190)
!1190 = !{!172, !1191}
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !922, line: 21, flags: DIFlagFwdDecl)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1183, file: !112, line: 2377, baseType: !1194, size: 64, offset: 192)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1196)
!1196 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !112, line: 75, flags: DIFlagFwdDecl)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1183, file: !112, line: 2378, baseType: !1198, size: 64, offset: 256)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = !DISubroutineType(types: !1200)
!1200 = !{!925, !1182, !172, !805, !176}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1183, file: !112, line: 2380, baseType: !1202, size: 64, offset: 320)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1203 = !DISubroutineType(types: !1204)
!1204 = !{null, !1173}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1183, file: !112, line: 2381, baseType: !1206, size: 64, offset: 384)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !68, line: 402, size: 9216, align: 512, elements: !1208)
!1208 = !{!1209, !1210, !1211, !1215, !2061, !2087, !2088, !2089, !2090, !2094, !2097, !2098, !2099, !2149, !2150, !2151, !2152, !2153, !2154, !2155, !2156, !2164, !2168, !2188, !2206, !2207, !2208, !2209, !2218, !2241, !2242, !2245, !2248, !2249, !2250, !2251, !2252, !2253, !2254, !2259, !2260, !2371, !2379, !2380, !2381, !2383, !2387, !2388, !2392, !2393, !2394, !2395, !2397, !2398, !2399, !2406, !2407, !2408, !2412}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1207, file: !68, line: 403, baseType: !67, size: 32)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1207, file: !68, line: 406, baseType: !271, size: 128, offset: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1207, file: !68, line: 409, baseType: !1212, size: 448, offset: 192)
!1212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !1213)
!1213 = !{!1214}
!1214 = !DISubrange(count: 56)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1207, file: !68, line: 417, baseType: !1216, size: 768, offset: 640)
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !68, line: 45, size: 768, elements: !1217)
!1217 = !{!1218, !2054, !2055, !2056, !2059}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1216, file: !68, line: 46, baseType: !1219, size: 512)
!1219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1220, line: 64, size: 512, elements: !1221)
!1220 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1221 = !{!1222, !1223, !1224, !1226, !1270, !1934, !2044, !2049, !2050, !2051, !2052, !2053}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1219, file: !1220, line: 65, baseType: !805, size: 64)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1219, file: !1220, line: 66, baseType: !271, size: 128, offset: 64)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1219, file: !1220, line: 67, baseType: !1225, size: 64, offset: 192)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1219, file: !1220, line: 68, baseType: !1227, size: 64, offset: 256)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1220, line: 168, size: 768, elements: !1229)
!1229 = !{!1230, !1231, !1232, !1233}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1228, file: !1220, line: 169, baseType: !271, size: 128)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1228, file: !1220, line: 170, baseType: !559, size: 32, offset: 128)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1228, file: !1220, line: 171, baseType: !1219, size: 512, offset: 192)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1228, file: !1220, line: 172, baseType: !1234, size: 64, offset: 704)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1236)
!1236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1220, line: 133, size: 192, elements: !1237)
!1237 = !{!1238, !1245, !1250}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1236, file: !1220, line: 134, baseType: !1239, size: 64)
!1239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1240)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = !DISubroutineType(types: !1242)
!1242 = !{!172, !1243}
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1219)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1236, file: !1220, line: 135, baseType: !1246, size: 64, offset: 64)
!1246 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1247)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = !DISubroutineType(types: !1249)
!1249 = !{!805, !1243}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1236, file: !1220, line: 136, baseType: !1251, size: 64, offset: 128)
!1251 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1252)
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = !DISubroutineType(types: !1254)
!1254 = !{!172, !1243, !1255}
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1220, line: 125, size: 20736, elements: !1257)
!1257 = !{!1258, !1260, !1264, !1265, !1269}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1256, file: !1220, line: 126, baseType: !1259, size: 192)
!1259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !815, size: 192, elements: !643)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1256, file: !1220, line: 127, baseType: !1261, size: 4096, offset: 192)
!1261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !815, size: 4096, elements: !1262)
!1262 = !{!1263}
!1263 = !DISubrange(count: 64)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1256, file: !1220, line: 128, baseType: !172, size: 32, offset: 4288)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1256, file: !1220, line: 129, baseType: !1266, size: 16384, offset: 4320)
!1266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !1267)
!1267 = !{!1268}
!1268 = !DISubrange(count: 2048)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1256, file: !1220, line: 130, baseType: !172, size: 32, offset: 20704)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1219, file: !1220, line: 69, baseType: !1271, size: 64, offset: 320)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1273)
!1273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1220, line: 116, size: 384, elements: !1274)
!1274 = !{!1275, !1279, !1298, !1893, !1924, !1928}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1273, file: !1220, line: 117, baseType: !1276, size: 64)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = !DISubroutineType(types: !1278)
!1278 = !{null, !1225}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1273, file: !1220, line: 118, baseType: !1280, size: 64, offset: 64)
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1282)
!1282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1283, line: 254, size: 128, elements: !1284)
!1283 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1284 = !{!1285, !1294}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1282, file: !1283, line: 255, baseType: !1286, size: 64)
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!1287 = !DISubroutineType(types: !1288)
!1288 = !{!1114, !1225, !1289, !815}
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1283, line: 30, size: 128, elements: !1291)
!1291 = !{!1292, !1293}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1290, file: !1283, line: 31, baseType: !805, size: 64)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1290, file: !1283, line: 32, baseType: !964, size: 16, offset: 64)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1282, file: !1283, line: 256, baseType: !1295, size: 64, offset: 64)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = !DISubroutineType(types: !1297)
!1297 = !{!1114, !1225, !1289, !805, !1117}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1273, file: !1220, line: 119, baseType: !1299, size: 64, offset: 128)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1301 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1302)
!1302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1283, line: 84, size: 320, elements: !1303)
!1303 = !{!1304, !1305, !1309, !1889, !1891}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1302, file: !1283, line: 85, baseType: !805, size: 64)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1302, file: !1283, line: 86, baseType: !1306, size: 64, offset: 64)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = !DISubroutineType(types: !1308)
!1308 = !{!964, !1225, !1289, !172}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1302, file: !1283, line: 88, baseType: !1310, size: 64, offset: 128)
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!1311 = !DISubroutineType(types: !1312)
!1312 = !{!964, !1225, !1313, !172}
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1283, line: 175, size: 512, elements: !1315)
!1315 = !{!1316, !1317, !1318, !1319, !1880, !1884, !1885}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1314, file: !1283, line: 176, baseType: !1290, size: 128)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1314, file: !1283, line: 177, baseType: !1117, size: 64, offset: 128)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1314, file: !1283, line: 178, baseType: !176, size: 64, offset: 192)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1314, file: !1283, line: 179, baseType: !1320, size: 64, offset: 256)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1321 = !DISubroutineType(types: !1322)
!1322 = !{!1323}
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !112, line: 472, size: 1536, align: 64, elements: !1325)
!1325 = !{!1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1872, !1873, !1874, !1877, !1878, !1879}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1324, file: !112, line: 473, baseType: !960, size: 64)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1324, file: !112, line: 474, baseType: !1164, size: 128, offset: 64)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1324, file: !112, line: 475, baseType: !744, size: 320, offset: 192)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1324, file: !112, line: 476, baseType: !1169, size: 32, offset: 512)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1324, file: !112, line: 477, baseType: !217, size: 32, offset: 544)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1324, file: !112, line: 482, baseType: !424, size: 128, offset: 576)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1324, file: !112, line: 483, baseType: !205, size: 64, offset: 704)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1324, file: !112, line: 484, baseType: !205, size: 64, offset: 768)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1324, file: !112, line: 485, baseType: !1335, size: 64, offset: 832)
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1336, size: 64)
!1336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1337)
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !112, line: 404, size: 1280, elements: !1338)
!1338 = !{!1339, !1642, !1712, !1716, !1720, !1726, !1732, !1736, !1741, !1745, !1749, !1753, !1836, !1840, !1844, !1848, !1853, !1857, !1864, !1868}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1337, file: !112, line: 405, baseType: !1340, size: 64)
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1341 = !DISubroutineType(types: !1342)
!1342 = !{!172, !1343, !1640}
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !83, line: 74, size: 512, align: 128, elements: !1345)
!1345 = !{!1346, !1347, !1634, !1639}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1344, file: !83, line: 75, baseType: !205, size: 64)
!1347 = !DIDerivedType(tag: DW_TAG_member, scope: !1344, file: !83, line: 83, baseType: !1348, size: 320, offset: 64)
!1348 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1344, file: !83, line: 83, size: 320, elements: !1349)
!1349 = !{!1350, !1371, !1385, !1389, !1633}
!1350 = !DIDerivedType(tag: DW_TAG_member, scope: !1348, file: !83, line: 84, baseType: !1351, size: 320)
!1351 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1348, file: !83, line: 84, size: 320, elements: !1352)
!1352 = !{!1353, !1364, !1365, !1370}
!1353 = !DIDerivedType(tag: DW_TAG_member, scope: !1351, file: !83, line: 90, baseType: !1354, size: 128)
!1354 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1351, file: !83, line: 90, size: 128, elements: !1355)
!1355 = !{!1356, !1357, !1362, !1363}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1354, file: !83, line: 91, baseType: !271, size: 128)
!1357 = !DIDerivedType(tag: DW_TAG_member, scope: !1354, file: !83, line: 94, baseType: !1358, size: 128)
!1358 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1354, file: !83, line: 94, size: 128, elements: !1359)
!1359 = !{!1360, !1361}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1358, file: !83, line: 96, baseType: !176, size: 64)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1358, file: !83, line: 98, baseType: !13, size: 32, offset: 64)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1354, file: !83, line: 102, baseType: !271, size: 128)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1354, file: !83, line: 103, baseType: !271, size: 128)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1351, file: !83, line: 106, baseType: !1323, size: 64, offset: 128)
!1365 = !DIDerivedType(tag: DW_TAG_member, scope: !1351, file: !83, line: 107, baseType: !1366, size: 64, offset: 192)
!1366 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1351, file: !83, line: 107, size: 64, elements: !1367)
!1367 = !{!1368, !1369}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1366, file: !83, line: 108, baseType: !205, size: 64)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1366, file: !83, line: 109, baseType: !205, size: 64)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1351, file: !83, line: 117, baseType: !205, size: 64, offset: 256)
!1371 = !DIDerivedType(tag: DW_TAG_member, scope: !1348, file: !83, line: 119, baseType: !1372, size: 320)
!1372 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1348, file: !83, line: 119, size: 320, elements: !1373)
!1373 = !{!1374, !1375, !1378, !1379, !1380}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1372, file: !83, line: 124, baseType: !205, size: 64)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1372, file: !83, line: 125, baseType: !1376, size: 64, offset: 64)
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1377, size: 64)
!1377 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !83, line: 125, flags: DIFlagFwdDecl)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1372, file: !83, line: 126, baseType: !205, size: 64, offset: 128)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1372, file: !83, line: 127, baseType: !205, size: 64, offset: 192)
!1380 = !DIDerivedType(tag: DW_TAG_member, scope: !1372, file: !83, line: 128, baseType: !1381, size: 64, offset: 256)
!1381 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1372, file: !83, line: 128, size: 64, elements: !1382)
!1382 = !{!1383, !1384}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1381, file: !83, line: 133, baseType: !205, size: 64)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1381, file: !83, line: 138, baseType: !598, size: 64)
!1385 = !DIDerivedType(tag: DW_TAG_member, scope: !1348, file: !83, line: 141, baseType: !1386, size: 64)
!1386 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1348, file: !83, line: 141, size: 64, elements: !1387)
!1387 = !{!1388}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1386, file: !83, line: 142, baseType: !205, size: 64)
!1389 = !DIDerivedType(tag: DW_TAG_member, scope: !1348, file: !83, line: 144, baseType: !1390, size: 128)
!1390 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1348, file: !83, line: 144, size: 128, elements: !1391)
!1391 = !{!1392, !1632}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1390, file: !83, line: 146, baseType: !1393, size: 64)
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1394, size: 64)
!1394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !75, line: 126, size: 1216, elements: !1395)
!1395 = !{!1396, !1406, !1427, !1438, !1439, !1440, !1441, !1614, !1615, !1616}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1394, file: !75, line: 127, baseType: !1397, size: 384)
!1397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !75, line: 21, size: 384, elements: !1398)
!1398 = !{!1399, !1400, !1402, !1403, !1404, !1405}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1397, file: !75, line: 22, baseType: !205, size: 64)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1397, file: !75, line: 23, baseType: !1401, size: 64, offset: 64)
!1401 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !205)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1397, file: !75, line: 24, baseType: !1401, size: 64, offset: 128)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1397, file: !75, line: 25, baseType: !205, size: 64, offset: 192)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1397, file: !75, line: 26, baseType: !205, size: 64, offset: 256)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1397, file: !75, line: 27, baseType: !205, size: 64, offset: 320)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1394, file: !75, line: 128, baseType: !1407, size: 128, offset: 384)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1408, line: 105, size: 128, elements: !1409)
!1408 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1409 = !{!1410, !1411}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1407, file: !1408, line: 110, baseType: !205, size: 64)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1407, file: !1408, line: 118, baseType: !1412, size: 64, offset: 64)
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1408, line: 95, size: 448, elements: !1414)
!1414 = !{!1415, !1416, !1422, !1423, !1424, !1425, !1426}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1413, file: !1408, line: 96, baseType: !598, size: 64)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1413, file: !1408, line: 97, baseType: !1417, size: 64, offset: 64)
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64)
!1418 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1408, line: 60, baseType: !1419)
!1419 = !DISubroutineType(types: !1420)
!1420 = !{null, !1421}
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1413, file: !1408, line: 98, baseType: !1417, size: 64, offset: 128)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1413, file: !1408, line: 99, baseType: !802, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1413, file: !1408, line: 100, baseType: !802, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1413, file: !1408, line: 101, baseType: !585, size: 128, align: 64, offset: 256)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1413, file: !1408, line: 102, baseType: !1421, size: 64, offset: 384)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1394, file: !75, line: 129, baseType: !1428, size: 256, offset: 512)
!1428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1429, line: 26, size: 256, elements: !1430)
!1429 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1430 = !{!1431, !1432}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1428, file: !1429, line: 27, baseType: !13, size: 32)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1428, file: !1429, line: 28, baseType: !1433, size: 192, offset: 64)
!1433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1434, line: 43, size: 192, elements: !1435)
!1434 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1435 = !{!1436, !1437}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1433, file: !1434, line: 44, baseType: !361, size: 32)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1433, file: !1434, line: 45, baseType: !271, size: 128, offset: 64)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1394, file: !75, line: 130, baseType: !74, size: 32, offset: 768)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1394, file: !75, line: 131, baseType: !13, size: 32, offset: 800)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1394, file: !75, line: 132, baseType: !205, size: 64, offset: 832)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1394, file: !75, line: 133, baseType: !1442, size: 64, offset: 896)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1444)
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !75, line: 77, size: 192, elements: !1445)
!1445 = !{!1446, !1450, !1610}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1444, file: !75, line: 83, baseType: !1447, size: 64)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = !DISubroutineType(types: !1449)
!1449 = !{null, !1343}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1444, file: !75, line: 89, baseType: !1451, size: 64, offset: 64)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = !DISubroutineType(types: !1453)
!1453 = !{!1454, !1455}
!1454 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !83, line: 1184, baseType: !13)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1457, line: 512, size: 896, elements: !1458)
!1457 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1458 = !{!1459, !1577, !1578, !1585, !1592, !1602, !1603, !1604, !1606, !1608}
!1459 = !DIDerivedType(tag: DW_TAG_member, scope: !1456, file: !1457, line: 513, baseType: !1460, size: 320)
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1456, file: !1457, line: 513, size: 320, elements: !1461)
!1461 = !{!1462, !1573, !1574, !1575, !1576}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1460, file: !1457, line: 514, baseType: !1463, size: 64)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !83, line: 625, size: 1344, elements: !1465)
!1465 = !{!1466, !1475, !1476, !1484, !1491, !1492, !1497, !1498, !1503, !1504, !1507, !1566, !1567, !1568, !1569, !1570, !1571}
!1466 = !DIDerivedType(tag: DW_TAG_member, scope: !1464, file: !83, line: 628, baseType: !1467, size: 128)
!1467 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1464, file: !83, line: 628, size: 128, elements: !1468)
!1468 = !{!1469, !1474}
!1469 = !DIDerivedType(tag: DW_TAG_member, scope: !1467, file: !83, line: 629, baseType: !1470, size: 128)
!1470 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1467, file: !83, line: 629, size: 128, elements: !1471)
!1471 = !{!1472, !1473}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1470, file: !83, line: 631, baseType: !205, size: 64)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1470, file: !83, line: 632, baseType: !205, size: 64, offset: 64)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1467, file: !83, line: 635, baseType: !585, size: 128, align: 64)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1464, file: !83, line: 639, baseType: !541, size: 64, offset: 128)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1464, file: !83, line: 640, baseType: !1477, size: 64, offset: 192)
!1477 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1478, line: 297, baseType: !1479)
!1478 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1478, line: 297, size: 64, elements: !1480)
!1480 = !{!1481}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1479, file: !1478, line: 297, baseType: !1482, size: 64)
!1482 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1483, line: 19, baseType: !205)
!1483 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1484 = !DIDerivedType(tag: DW_TAG_member, scope: !1464, file: !83, line: 646, baseType: !1485, size: 64, offset: 256)
!1485 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1464, file: !83, line: 646, size: 64, elements: !1486)
!1486 = !{!1487, !1490}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1485, file: !83, line: 647, baseType: !1488, size: 64)
!1488 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1489)
!1489 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !83, line: 542, baseType: !205)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1485, file: !83, line: 648, baseType: !1489, size: 64)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1464, file: !83, line: 666, baseType: !172, size: 32, offset: 320)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1464, file: !83, line: 667, baseType: !1493, size: 64, offset: 384)
!1493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1494, size: 64)
!1494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !83, line: 579, size: 320, elements: !1495)
!1495 = !{!1496}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1494, file: !83, line: 580, baseType: !744, size: 320)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1464, file: !83, line: 670, baseType: !802, size: 8, offset: 448)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1464, file: !83, line: 681, baseType: !1499, size: 256, offset: 512)
!1499 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1464, file: !83, line: 678, size: 256, elements: !1500)
!1500 = !{!1501, !1502}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1499, file: !83, line: 679, baseType: !261, size: 192, align: 64)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1499, file: !83, line: 680, baseType: !205, size: 64, offset: 192)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1464, file: !83, line: 689, baseType: !271, size: 128, offset: 768)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1464, file: !83, line: 691, baseType: !1505, size: 64, offset: 896)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !83, line: 691, flags: DIFlagFwdDecl)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1464, file: !83, line: 694, baseType: !1508, size: 64, offset: 960)
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1510)
!1510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1457, line: 563, size: 1024, elements: !1511)
!1511 = !{!1512, !1516, !1517, !1521, !1525, !1529, !1530, !1534, !1538, !1542, !1543, !1544, !1548, !1552, !1558, !1562}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1510, file: !1457, line: 564, baseType: !1513, size: 64)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = !DISubroutineType(types: !1515)
!1515 = !{null, !1463}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1510, file: !1457, line: 569, baseType: !1513, size: 64, offset: 64)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1510, file: !1457, line: 571, baseType: !1518, size: 64, offset: 128)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = !DISubroutineType(types: !1520)
!1520 = !{!172, !1463, !205}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1510, file: !1457, line: 572, baseType: !1522, size: 64, offset: 192)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = !DISubroutineType(types: !1524)
!1524 = !{!172, !1463}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1510, file: !1457, line: 578, baseType: !1526, size: 64, offset: 256)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = !DISubroutineType(types: !1528)
!1528 = !{!172, !1463, !205, !205, !205}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1510, file: !1457, line: 580, baseType: !1451, size: 64, offset: 320)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1510, file: !1457, line: 581, baseType: !1531, size: 64, offset: 384)
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = !DISubroutineType(types: !1533)
!1533 = !{!1454, !1455, !13}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1510, file: !1457, line: 582, baseType: !1535, size: 64, offset: 448)
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1536 = !DISubroutineType(types: !1537)
!1537 = !{!1454, !1455, !205, !205}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1510, file: !1457, line: 584, baseType: !1539, size: 64, offset: 512)
!1539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1540, size: 64)
!1540 = !DISubroutineType(types: !1541)
!1541 = !{!205, !1463}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1510, file: !1457, line: 588, baseType: !1451, size: 64, offset: 576)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1510, file: !1457, line: 591, baseType: !1451, size: 64, offset: 640)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1510, file: !1457, line: 597, baseType: !1545, size: 64, offset: 704)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = !DISubroutineType(types: !1547)
!1547 = !{!172, !1463, !205, !176, !172, !172}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1510, file: !1457, line: 603, baseType: !1549, size: 64, offset: 768)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = !DISubroutineType(types: !1551)
!1551 = !{!805, !1463}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1510, file: !1457, line: 613, baseType: !1553, size: 64, offset: 832)
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64)
!1554 = !DISubroutineType(types: !1555)
!1555 = !{!172, !1463, !1556}
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1557 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !83, line: 717, flags: DIFlagFwdDecl)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1510, file: !1457, line: 625, baseType: !1559, size: 64, offset: 896)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = !DISubroutineType(types: !1561)
!1561 = !{!1556, !1463, !205}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1510, file: !1457, line: 633, baseType: !1563, size: 64, offset: 960)
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!1564 = !DISubroutineType(types: !1565)
!1565 = !{!1343, !1463, !205}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1464, file: !83, line: 697, baseType: !205, size: 64, offset: 1024)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1464, file: !83, line: 699, baseType: !577, size: 64, offset: 1088)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1464, file: !83, line: 700, baseType: !176, size: 64, offset: 1152)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1464, file: !83, line: 711, baseType: !598, size: 64, offset: 1216)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1464, file: !83, line: 717, baseType: !1556, size: 64, offset: 1280)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1464, file: !83, line: 722, baseType: !1572, offset: 1344)
!1572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !83, line: 570, elements: !570)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1460, file: !1457, line: 515, baseType: !1169, size: 32, offset: 64)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1460, file: !1457, line: 516, baseType: !205, size: 64, offset: 128)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1460, file: !1457, line: 517, baseType: !205, size: 64, offset: 192)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1460, file: !1457, line: 518, baseType: !205, size: 64, offset: 256)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1456, file: !1457, line: 520, baseType: !82, size: 32, offset: 320)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1456, file: !1457, line: 522, baseType: !1579, size: 64, offset: 384)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1483, line: 22, baseType: !1581)
!1581 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1483, line: 22, size: 64, elements: !1582)
!1582 = !{!1583}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1581, file: !1483, line: 22, baseType: !1584, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1483, line: 15, baseType: !205)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1456, file: !1457, line: 524, baseType: !1586, size: 64, offset: 448)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1478, line: 372, baseType: !1588)
!1588 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1478, line: 372, size: 64, elements: !1589)
!1589 = !{!1590}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1588, file: !1478, line: 372, baseType: !1591, size: 64)
!1591 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1483, line: 16, baseType: !205)
!1592 = !DIDerivedType(tag: DW_TAG_member, scope: !1456, file: !1457, line: 527, baseType: !1593, size: 64, offset: 512)
!1593 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1456, file: !1457, line: 527, size: 64, elements: !1594)
!1594 = !{!1595, !1601}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1593, file: !1457, line: 528, baseType: !1596, size: 64)
!1596 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1483, line: 21, baseType: !1597)
!1597 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1483, line: 21, size: 64, elements: !1598)
!1598 = !{!1599}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1597, file: !1483, line: 21, baseType: !1600, size: 64)
!1600 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1483, line: 14, baseType: !205)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1593, file: !1457, line: 529, baseType: !1580, size: 64)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1456, file: !1457, line: 534, baseType: !1343, size: 64, offset: 576)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1456, file: !1457, line: 535, baseType: !1343, size: 64, offset: 640)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1456, file: !1457, line: 541, baseType: !1605, size: 64, offset: 704)
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1456, file: !1457, line: 545, baseType: !1607, size: 64, offset: 768)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1456, file: !1457, line: 549, baseType: !1609, size: 64, offset: 832)
!1609 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1478, line: 520, baseType: !1343)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1444, file: !75, line: 100, baseType: !1611, size: 64, offset: 128)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DISubroutineType(types: !1613)
!1613 = !{!172, !1393, !205, !205, !172}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1394, file: !75, line: 134, baseType: !176, size: 64, offset: 960)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1394, file: !75, line: 135, baseType: !172, size: 32, offset: 1024)
!1616 = !DIDerivedType(tag: DW_TAG_member, scope: !1394, file: !75, line: 136, baseType: !1617, size: 128, offset: 1088)
!1617 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1394, file: !75, line: 136, size: 128, elements: !1618)
!1618 = !{!1619, !1625}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1617, file: !75, line: 137, baseType: !1620, size: 128)
!1620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1621, line: 6, size: 128, elements: !1622)
!1621 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1622 = !{!1623, !1624}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1620, file: !1621, line: 7, baseType: !161, size: 64)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1620, file: !1621, line: 8, baseType: !161, size: 64, offset: 64)
!1625 = !DIDerivedType(tag: DW_TAG_member, scope: !1617, file: !75, line: 138, baseType: !1626)
!1626 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1617, file: !75, line: 138, elements: !1627)
!1627 = !{!1628, !1630}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1626, file: !75, line: 138, baseType: !1629)
!1629 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1626, file: !75, line: 138, elements: !570)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1626, file: !75, line: 138, baseType: !1631)
!1631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1620, elements: !683)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1390, file: !83, line: 147, baseType: !176, size: 64, offset: 64)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1348, file: !83, line: 161, baseType: !585, size: 128, align: 64)
!1634 = !DIDerivedType(tag: DW_TAG_member, scope: !1344, file: !83, line: 164, baseType: !1635, size: 32, offset: 384)
!1635 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1344, file: !83, line: 164, size: 32, elements: !1636)
!1636 = !{!1637, !1638}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1635, file: !83, line: 169, baseType: !217, size: 32)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1635, file: !83, line: 177, baseType: !13, size: 32)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1344, file: !83, line: 181, baseType: !217, size: 32, offset: 416)
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !112, line: 309, flags: DIFlagFwdDecl)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1337, file: !112, line: 406, baseType: !1643, size: 64, offset: 64)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = !DISubroutineType(types: !1645)
!1645 = !{!172, !577, !1646}
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !83, line: 293, size: 1536, elements: !1648)
!1648 = !{!1649, !1679, !1693}
!1649 = !DIDerivedType(tag: DW_TAG_member, scope: !1647, file: !83, line: 295, baseType: !1650, size: 512)
!1650 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1647, file: !83, line: 295, size: 512, elements: !1651)
!1651 = !{!1652, !1678}
!1652 = !DIDerivedType(tag: DW_TAG_member, scope: !1650, file: !83, line: 296, baseType: !1653, size: 448)
!1653 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1650, file: !83, line: 296, size: 448, elements: !1654)
!1654 = !{!1655, !1656, !1665, !1666, !1667, !1676, !1677}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1653, file: !83, line: 298, baseType: !205, size: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, scope: !1653, file: !83, line: 299, baseType: !1657, size: 128, offset: 64)
!1657 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1653, file: !83, line: 299, size: 128, elements: !1658)
!1658 = !{!1659, !1660}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1657, file: !83, line: 300, baseType: !271, size: 128)
!1660 = !DIDerivedType(tag: DW_TAG_member, scope: !1657, file: !83, line: 302, baseType: !1661, size: 128)
!1661 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1657, file: !83, line: 302, size: 128, elements: !1662)
!1662 = !{!1663, !1664}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1661, file: !83, line: 303, baseType: !176, size: 64)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1661, file: !83, line: 305, baseType: !13, size: 32, offset: 64)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1653, file: !83, line: 310, baseType: !1323, size: 64, offset: 192)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1653, file: !83, line: 311, baseType: !205, size: 64, offset: 256)
!1667 = !DIDerivedType(tag: DW_TAG_member, scope: !1653, file: !83, line: 312, baseType: !1668, size: 64, offset: 320)
!1668 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1653, file: !83, line: 312, size: 64, elements: !1669)
!1669 = !{!1670, !1671}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1668, file: !83, line: 313, baseType: !176, size: 64)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1668, file: !83, line: 314, baseType: !1672, size: 64)
!1672 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !83, line: 257, baseType: !1673)
!1673 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !83, line: 255, size: 64, elements: !1674)
!1674 = !{!1675}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1673, file: !83, line: 256, baseType: !205, size: 64)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1653, file: !83, line: 316, baseType: !217, size: 32, offset: 384)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1653, file: !83, line: 317, baseType: !217, size: 32, offset: 416)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1650, file: !83, line: 323, baseType: !1344, size: 512, align: 128)
!1679 = !DIDerivedType(tag: DW_TAG_member, scope: !1647, file: !83, line: 325, baseType: !1680, size: 512, offset: 512)
!1680 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1647, file: !83, line: 325, size: 512, elements: !1681)
!1681 = !{!1682, !1692}
!1682 = !DIDerivedType(tag: DW_TAG_member, scope: !1680, file: !83, line: 326, baseType: !1683, size: 320)
!1683 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1680, file: !83, line: 326, size: 320, elements: !1684)
!1684 = !{!1685, !1686, !1687, !1688, !1689, !1690, !1691}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1683, file: !83, line: 327, baseType: !205, size: 64)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1683, file: !83, line: 328, baseType: !205, size: 64, offset: 64)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1683, file: !83, line: 329, baseType: !205, size: 64, offset: 128)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1683, file: !83, line: 331, baseType: !217, size: 32, offset: 192)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1683, file: !83, line: 332, baseType: !217, size: 32, offset: 224)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1683, file: !83, line: 333, baseType: !217, size: 32, offset: 256)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1683, file: !83, line: 335, baseType: !13, size: 32, offset: 288)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1680, file: !83, line: 339, baseType: !1344, size: 512, align: 128)
!1693 = !DIDerivedType(tag: DW_TAG_member, scope: !1647, file: !83, line: 341, baseType: !1694, size: 512, offset: 1024)
!1694 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1647, file: !83, line: 341, size: 512, elements: !1695)
!1695 = !{!1696, !1705, !1711}
!1696 = !DIDerivedType(tag: DW_TAG_member, scope: !1694, file: !83, line: 342, baseType: !1697, size: 384)
!1697 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1694, file: !83, line: 342, size: 384, elements: !1698)
!1698 = !{!1699, !1700, !1701, !1702, !1703, !1704}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1697, file: !83, line: 343, baseType: !205, size: 64)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1697, file: !83, line: 344, baseType: !205, size: 64, offset: 64)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1697, file: !83, line: 346, baseType: !176, size: 64, offset: 128)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1697, file: !83, line: 347, baseType: !176, size: 64, offset: 192)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1697, file: !83, line: 348, baseType: !176, size: 64, offset: 256)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1697, file: !83, line: 349, baseType: !176, size: 64, offset: 320)
!1705 = !DIDerivedType(tag: DW_TAG_member, scope: !1694, file: !83, line: 352, baseType: !1706, size: 256)
!1706 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1694, file: !83, line: 352, size: 256, elements: !1707)
!1707 = !{!1708, !1709, !1710}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1706, file: !83, line: 353, baseType: !205, size: 64)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1706, file: !83, line: 354, baseType: !205, size: 64, offset: 64)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1706, file: !83, line: 356, baseType: !271, size: 128, offset: 128)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1694, file: !83, line: 359, baseType: !1344, size: 512, align: 128)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1337, file: !112, line: 409, baseType: !1713, size: 64, offset: 128)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = !DISubroutineType(types: !1715)
!1715 = !{!172, !1323, !1640}
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1337, file: !112, line: 412, baseType: !1717, size: 64, offset: 192)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = !DISubroutineType(types: !1719)
!1719 = !{!802, !1323, !1646}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1337, file: !112, line: 414, baseType: !1721, size: 64, offset: 256)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = !DISubroutineType(types: !1723)
!1723 = !{null, !1724}
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64)
!1725 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !112, line: 310, flags: DIFlagFwdDecl)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1337, file: !112, line: 416, baseType: !1727, size: 64, offset: 320)
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = !DISubroutineType(types: !1729)
!1729 = !{!172, !577, !1323, !617, !13, !1730, !1731}
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1337, file: !112, line: 419, baseType: !1733, size: 64, offset: 384)
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1734 = !DISubroutineType(types: !1735)
!1735 = !{!172, !577, !1323, !617, !13, !13, !1343, !176}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1337, file: !112, line: 424, baseType: !1737, size: 64, offset: 448)
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!1738 = !DISubroutineType(types: !1739)
!1739 = !{!1740, !1323, !1740}
!1740 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !218, line: 131, baseType: !161)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1337, file: !112, line: 425, baseType: !1742, size: 64, offset: 512)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = !DISubroutineType(types: !1744)
!1744 = !{null, !1646, !1117, !1117}
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1337, file: !112, line: 426, baseType: !1746, size: 64, offset: 576)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = !DISubroutineType(types: !1748)
!1748 = !{!802, !1646, !1169}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1337, file: !112, line: 427, baseType: !1750, size: 64, offset: 640)
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1751 = !DISubroutineType(types: !1752)
!1752 = !{null, !1646}
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1337, file: !112, line: 428, baseType: !1754, size: 64, offset: 704)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = !DISubroutineType(types: !1756)
!1756 = !{!1114, !1757, !1779}
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !112, line: 373, size: 384, elements: !1759)
!1759 = !{!1760, !1761, !1762, !1766, !1767, !1768, !1769}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1758, file: !112, line: 374, baseType: !577, size: 64)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1758, file: !112, line: 375, baseType: !617, size: 64, offset: 64)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1758, file: !112, line: 376, baseType: !1763, size: 64, offset: 128)
!1763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64)
!1764 = !DISubroutineType(types: !1765)
!1765 = !{null, !1757, !1075}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1758, file: !112, line: 377, baseType: !176, size: 64, offset: 192)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1758, file: !112, line: 378, baseType: !172, size: 32, offset: 256)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1758, file: !112, line: 379, baseType: !156, size: 16, offset: 288)
!1769 = !DIDerivedType(tag: DW_TAG_member, scope: !1758, file: !112, line: 380, baseType: !1770, size: 64, offset: 320)
!1770 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1758, file: !112, line: 380, size: 64, elements: !1771)
!1771 = !{!1772, !1775}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1770, file: !112, line: 386, baseType: !1773, size: 64)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !112, line: 386, flags: DIFlagFwdDecl)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1770, file: !112, line: 395, baseType: !1776, size: 64)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1777 = !DISubroutineType(types: !1778)
!1778 = !{!1114, !176}
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !1781, line: 41, size: 320, elements: !1782)
!1781 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!1782 = !{!1783, !1784, !1785, !1786, !1787, !1788, !1793, !1831}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !1780, file: !1781, line: 42, baseType: !151, size: 8)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !1780, file: !1781, line: 43, baseType: !802, size: 8, offset: 8)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !1780, file: !1781, line: 44, baseType: !802, size: 8, offset: 16)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !1780, file: !1781, line: 45, baseType: !802, size: 8, offset: 24)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !1780, file: !1781, line: 46, baseType: !802, size: 8, offset: 32)
!1788 = !DIDerivedType(tag: DW_TAG_member, scope: !1780, file: !1781, line: 47, baseType: !1789, size: 64, offset: 64)
!1789 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1780, file: !1781, line: 47, size: 64, elements: !1790)
!1790 = !{!1791, !1792}
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !1789, file: !1781, line: 48, baseType: !1117, size: 64)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !1789, file: !1781, line: 49, baseType: !172, size: 32)
!1793 = !DIDerivedType(tag: DW_TAG_member, scope: !1780, file: !1781, line: 61, baseType: !1794, size: 128, offset: 128)
!1794 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1780, file: !1781, line: 61, size: 128, elements: !1795)
!1795 = !{!1796, !1802}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !1794, file: !1781, line: 67, baseType: !1797, size: 128)
!1797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !1798, line: 17, size: 128, elements: !1799)
!1798 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!1799 = !{!1800, !1801}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1797, file: !1798, line: 19, baseType: !176, size: 64)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1797, file: !1798, line: 20, baseType: !1118, size: 64, offset: 64)
!1802 = !DIDerivedType(tag: DW_TAG_member, scope: !1794, file: !1781, line: 68, baseType: !1803, size: 128)
!1803 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1794, file: !1781, line: 68, size: 128, elements: !1804)
!1804 = !{!1805, !1830}
!1805 = !DIDerivedType(tag: DW_TAG_member, scope: !1803, file: !1781, line: 69, baseType: !1806, size: 64)
!1806 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1803, file: !1781, line: 69, size: 64, elements: !1807)
!1807 = !{!1808, !1811, !1818, !1827, !1829}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !1806, file: !1781, line: 71, baseType: !1809, size: 64)
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1810, size: 64)
!1810 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1797)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !1806, file: !1781, line: 72, baseType: !1812, size: 64)
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64)
!1813 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1814)
!1814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !1781, line: 17, size: 128, elements: !1815)
!1815 = !{!1816, !1817}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1814, file: !1781, line: 18, baseType: !176, size: 64)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1814, file: !1781, line: 19, baseType: !1117, size: 64, offset: 64)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !1806, file: !1781, line: 73, baseType: !1819, size: 64)
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1820, size: 64)
!1820 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1821)
!1821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !1822, line: 31, size: 128, elements: !1823)
!1822 = !DIFile(filename: "./include/linux/bvec.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b9bd326f7e1a9ed4bc3baca0011068cc")
!1823 = !{!1824, !1825, !1826}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "bv_page", scope: !1821, file: !1822, line: 32, baseType: !1343, size: 64)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "bv_len", scope: !1821, file: !1822, line: 33, baseType: !13, size: 32, offset: 64)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "bv_offset", scope: !1821, file: !1822, line: 34, baseType: !13, size: 32, offset: 96)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !1806, file: !1781, line: 74, baseType: !1828, size: 64)
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !1806, file: !1781, line: 75, baseType: !176, size: 64)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1803, file: !1781, line: 77, baseType: !1117, size: 64, offset: 64)
!1831 = !DIDerivedType(tag: DW_TAG_member, scope: !1780, file: !1781, line: 80, baseType: !1832, size: 64, offset: 256)
!1832 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1780, file: !1781, line: 80, size: 64, elements: !1833)
!1833 = !{!1834, !1835}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !1832, file: !1781, line: 81, baseType: !205, size: 64)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !1832, file: !1781, line: 82, baseType: !617, size: 64)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1337, file: !112, line: 433, baseType: !1837, size: 64, offset: 768)
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!1838 = !DISubroutineType(types: !1839)
!1839 = !{!172, !1323, !1646, !1646, !98}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1337, file: !112, line: 435, baseType: !1841, size: 64, offset: 832)
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1842 = !DISubroutineType(types: !1843)
!1843 = !{!172, !1646}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1337, file: !112, line: 436, baseType: !1845, size: 64, offset: 896)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = !DISubroutineType(types: !1847)
!1847 = !{!802, !1646, !1117, !1117}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1337, file: !112, line: 438, baseType: !1849, size: 64, offset: 960)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = !DISubroutineType(types: !1851)
!1851 = !{null, !1646, !1852, !1852}
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1337, file: !112, line: 439, baseType: !1854, size: 64, offset: 1024)
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = !DISubroutineType(types: !1856)
!1856 = !{!172, !1323, !1343}
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1337, file: !112, line: 442, baseType: !1858, size: 64, offset: 1088)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = !DISubroutineType(types: !1860)
!1860 = !{!172, !1861, !577, !1863}
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !112, line: 66, flags: DIFlagFwdDecl)
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1337, file: !112, line: 444, baseType: !1865, size: 64, offset: 1152)
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1866 = !DISubroutineType(types: !1867)
!1867 = !{null, !577}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1337, file: !112, line: 445, baseType: !1869, size: 64, offset: 1216)
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1870 = !DISubroutineType(types: !1871)
!1871 = !{!172, !1757, !1779}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1324, file: !112, line: 486, baseType: !205, size: 64, offset: 896)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1324, file: !112, line: 487, baseType: !744, size: 320, offset: 960)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1324, file: !112, line: 488, baseType: !1875, size: 32, offset: 1280)
!1875 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1876, line: 8, baseType: !159)
!1876 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1324, file: !112, line: 489, baseType: !559, size: 32, offset: 1312)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1324, file: !112, line: 490, baseType: !271, size: 128, offset: 1344)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1324, file: !112, line: 491, baseType: !176, size: 64, offset: 1472)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1314, file: !1283, line: 180, baseType: !1881, size: 64, offset: 320)
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64)
!1882 = !DISubroutineType(types: !1883)
!1883 = !{!1114, !577, !1225, !1313, !815, !617, !1117}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1314, file: !1283, line: 182, baseType: !1881, size: 64, offset: 384)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1314, file: !1283, line: 184, baseType: !1886, size: 64, offset: 448)
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1887, size: 64)
!1887 = !DISubroutineType(types: !1888)
!1888 = !{!172, !577, !1225, !1313, !1463}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1302, file: !1283, line: 90, baseType: !1890, size: 64, offset: 192)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1302, file: !1283, line: 91, baseType: !1892, size: 64, offset: 256)
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1273, file: !1220, line: 120, baseType: !1894, size: 64, offset: 192)
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = !DISubroutineType(types: !1896)
!1896 = !{!1897, !1243}
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1899)
!1899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !106, line: 39, size: 384, elements: !1900)
!1900 = !{!1901, !1902, !1906, !1910, !1919, !1923}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1899, file: !106, line: 40, baseType: !105, size: 32)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1899, file: !106, line: 41, baseType: !1903, size: 64, offset: 64)
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1904 = !DISubroutineType(types: !1905)
!1905 = !{!802}
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1899, file: !106, line: 42, baseType: !1907, size: 64, offset: 128)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = !DISubroutineType(types: !1909)
!1909 = !{!176}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1899, file: !106, line: 43, baseType: !1911, size: 64, offset: 192)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = !DISubroutineType(types: !1913)
!1913 = !{!1914, !1916}
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64)
!1915 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !1918, line: 17, flags: DIFlagFwdDecl)
!1918 = !DIFile(filename: "./include/linux/socket.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f01d0394047c40639978f4f3c4ad0053")
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1899, file: !106, line: 44, baseType: !1920, size: 64, offset: 256)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = !DISubroutineType(types: !1922)
!1922 = !{!1914}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1899, file: !106, line: 45, baseType: !992, size: 64, offset: 320)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1273, file: !1220, line: 121, baseType: !1925, size: 64, offset: 256)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = !DISubroutineType(types: !1927)
!1927 = !{!1914, !1243}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1273, file: !1220, line: 122, baseType: !1929, size: 64, offset: 320)
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!1930 = !DISubroutineType(types: !1931)
!1931 = !{null, !1243, !1932, !1933}
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1219, file: !1220, line: 70, baseType: !1935, size: 64, offset: 384)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1937, line: 190, size: 1152, elements: !1938)
!1937 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1938 = !{!1939, !1940, !1941, !1942, !1943, !1944, !1945, !1946, !2036, !2037, !2038, !2039, !2040, !2043}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1936, file: !1937, line: 191, baseType: !217, size: 32)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1936, file: !1937, line: 192, baseType: !217, size: 32, offset: 32)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1936, file: !1937, line: 202, baseType: !1935, size: 64, offset: 64)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1936, file: !1937, line: 203, baseType: !805, size: 64, offset: 128)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1936, file: !1937, line: 205, baseType: !261, size: 192, align: 64, offset: 192)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1936, file: !1937, line: 207, baseType: !1914, size: 64, offset: 384)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1936, file: !1937, line: 208, baseType: !13, size: 32, offset: 448)
!1946 = !DIDerivedType(tag: DW_TAG_member, scope: !1936, file: !1937, line: 209, baseType: !1947, size: 256, offset: 512)
!1947 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1936, file: !1937, line: 209, size: 256, elements: !1948)
!1948 = !{!1949, !1958, !1962}
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1947, file: !1937, line: 210, baseType: !1950, size: 256)
!1950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1937, line: 153, size: 256, elements: !1951)
!1951 = !{!1952, !1953, !1954, !1957}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1950, file: !1937, line: 154, baseType: !205, size: 64)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1950, file: !1937, line: 156, baseType: !427, size: 64, offset: 64)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1950, file: !1937, line: 162, baseType: !1955, size: 64, offset: 128)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1937, line: 162, flags: DIFlagFwdDecl)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1950, file: !1937, line: 167, baseType: !205, size: 64, offset: 192)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1947, file: !1937, line: 211, baseType: !1959, size: 64)
!1959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1937, line: 170, size: 64, elements: !1960)
!1960 = !{!1961}
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1959, file: !1937, line: 171, baseType: !1935, size: 64)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1947, file: !1937, line: 212, baseType: !1963, size: 256)
!1963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1937, line: 174, size: 256, elements: !1964)
!1964 = !{!1965, !2031, !2034, !2035}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1963, file: !1937, line: 175, baseType: !1966, size: 64)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1968)
!1968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1937, line: 271, size: 768, elements: !1969)
!1969 = !{!1970, !1992, !1996, !2000, !2005, !2009, !2013, !2017, !2018, !2019, !2020, !2027}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1968, file: !1937, line: 276, baseType: !1971, size: 64)
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1972 = !DISubroutineType(types: !1973)
!1973 = !{!172, !1974}
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1975, size: 64)
!1975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1937, line: 251, size: 1216, elements: !1976)
!1976 = !{!1977, !1978, !1979, !1982, !1983, !1984, !1985, !1986, !1987, !1988, !1989, !1990, !1991}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1975, file: !1937, line: 253, baseType: !1935, size: 64)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1975, file: !1937, line: 254, baseType: !577, size: 64, offset: 64)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1975, file: !1937, line: 255, baseType: !1980, size: 64, offset: 128)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !198, line: 66, flags: DIFlagFwdDecl)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1975, file: !1937, line: 256, baseType: !176, size: 64, offset: 192)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1975, file: !1937, line: 259, baseType: !605, size: 256, offset: 256)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1975, file: !1937, line: 260, baseType: !605, size: 256, offset: 512)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1975, file: !1937, line: 261, baseType: !172, size: 32, offset: 768)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1975, file: !1937, line: 262, baseType: !271, size: 128, offset: 832)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1975, file: !1937, line: 263, baseType: !815, size: 64, offset: 960)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1975, file: !1937, line: 265, baseType: !1117, size: 64, offset: 1024)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1975, file: !1937, line: 266, baseType: !802, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1975, file: !1937, line: 267, baseType: !802, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1975, file: !1937, line: 268, baseType: !1508, size: 64, offset: 1152)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1968, file: !1937, line: 277, baseType: !1993, size: 64, offset: 64)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = !DISubroutineType(types: !1995)
!1995 = !{null, !1974}
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1968, file: !1937, line: 290, baseType: !1997, size: 64, offset: 128)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!1998 = !DISubroutineType(types: !1999)
!1999 = !{!172, !1980, !176}
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1968, file: !1937, line: 292, baseType: !2001, size: 64, offset: 192)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = !DISubroutineType(types: !2003)
!2003 = !{!176, !1980, !2004}
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1968, file: !1937, line: 293, baseType: !2006, size: 64, offset: 256)
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2007, size: 64)
!2007 = !DISubroutineType(types: !2008)
!2008 = !{!176, !1980, !176, !2004}
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1968, file: !1937, line: 294, baseType: !2010, size: 64, offset: 320)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = !DISubroutineType(types: !2012)
!2012 = !{null, !1980, !176}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1968, file: !1937, line: 296, baseType: !2014, size: 64, offset: 384)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = !DISubroutineType(types: !2016)
!2016 = !{!1114, !1974, !815, !1117, !617}
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1968, file: !1937, line: 306, baseType: !1117, size: 64, offset: 448)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1968, file: !1937, line: 313, baseType: !802, size: 8, offset: 512)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1968, file: !1937, line: 314, baseType: !2014, size: 64, offset: 576)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1968, file: !1937, line: 317, baseType: !2021, size: 64, offset: 640)
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = !DISubroutineType(types: !2023)
!2023 = !{!2024, !1974, !2025}
!2024 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !185, line: 59, baseType: !13)
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2026, size: 64)
!2026 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !112, line: 61, flags: DIFlagFwdDecl)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1968, file: !1937, line: 320, baseType: !2028, size: 64, offset: 704)
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = !DISubroutineType(types: !2030)
!2030 = !{!172, !1974, !1463}
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1963, file: !1937, line: 176, baseType: !2032, size: 64, offset: 64)
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1937, line: 35, flags: DIFlagFwdDecl)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1963, file: !1937, line: 177, baseType: !617, size: 64, offset: 128)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1963, file: !1937, line: 178, baseType: !1935, size: 64, offset: 192)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1936, file: !1937, line: 215, baseType: !176, size: 64, offset: 768)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1936, file: !1937, line: 221, baseType: !161, size: 64, offset: 832)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1936, file: !1937, line: 223, baseType: !158, size: 16, offset: 896)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1936, file: !1937, line: 224, baseType: !964, size: 16, offset: 912)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1936, file: !1937, line: 225, baseType: !2041, size: 64, offset: 960)
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2042 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1937, line: 36, flags: DIFlagFwdDecl)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1936, file: !1937, line: 227, baseType: !585, size: 128, align: 64, offset: 1024)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1219, file: !1220, line: 71, baseType: !2045, size: 32, offset: 448)
!2045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2046, line: 19, size: 32, elements: !2047)
!2046 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2047 = !{!2048}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2045, file: !2046, line: 20, baseType: !212, size: 32)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1219, file: !1220, line: 73, baseType: !13, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1219, file: !1220, line: 74, baseType: !13, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1219, file: !1220, line: 75, baseType: !13, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1219, file: !1220, line: 76, baseType: !13, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1219, file: !1220, line: 77, baseType: !13, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1216, file: !68, line: 47, baseType: !1206, size: 64, offset: 512)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1216, file: !68, line: 48, baseType: !1225, size: 64, offset: 576)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1216, file: !68, line: 49, baseType: !2057, size: 64, offset: 640)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !68, line: 49, flags: DIFlagFwdDecl)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1216, file: !68, line: 50, baseType: !2060, size: 64, offset: 704)
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1207, file: !68, line: 418, baseType: !2062, size: 64, offset: 1408)
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !68, line: 53, size: 448, elements: !2064)
!2064 = !{!2065, !2066, !2071, !2075, !2079, !2083}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2063, file: !68, line: 54, baseType: !1290, size: 128)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2063, file: !68, line: 55, baseType: !2067, size: 64, offset: 128)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = !DISubroutineType(types: !2069)
!2069 = !{!1114, !2062, !2070, !815}
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2063, file: !68, line: 57, baseType: !2072, size: 64, offset: 192)
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2073, size: 64)
!2073 = !DISubroutineType(types: !2074)
!2074 = !{!1114, !2062, !2070, !805, !1117}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2063, file: !68, line: 59, baseType: !2076, size: 64, offset: 256)
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2077, size: 64)
!2077 = !DISubroutineType(types: !2078)
!2078 = !{null, !1206, !805}
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !2063, file: !68, line: 60, baseType: !2080, size: 64, offset: 320)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = !DISubroutineType(types: !2082)
!2082 = !{!172, !1206}
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2063, file: !68, line: 61, baseType: !2084, size: 64, offset: 384)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = !DISubroutineType(types: !2086)
!2086 = !{null, !1206}
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1207, file: !68, line: 419, baseType: !805, size: 64, offset: 1472)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1207, file: !68, line: 420, baseType: !805, size: 64, offset: 1536)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1207, file: !68, line: 421, baseType: !1225, size: 64, offset: 1600)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1207, file: !68, line: 424, baseType: !2091, size: 64, offset: 1664)
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2092, size: 64)
!2092 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2093)
!2093 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !68, line: 424, flags: DIFlagFwdDecl)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1207, file: !68, line: 425, baseType: !2095, size: 64, offset: 1728)
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !170)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1207, file: !68, line: 426, baseType: !13, size: 32, offset: 1792)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1207, file: !68, line: 435, baseType: !605, size: 256, offset: 1856)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1207, file: !68, line: 437, baseType: !2100, size: 64, offset: 2112)
!2100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2101, size: 64)
!2101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2102, line: 69, size: 320, elements: !2103)
!2102 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2103 = !{!2104, !2105, !2106, !2123, !2125, !2126, !2127}
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2101, file: !2102, line: 70, baseType: !805, size: 64)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2101, file: !2102, line: 71, baseType: !1206, size: 64, offset: 64)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2101, file: !2102, line: 72, baseType: !2107, size: 64, offset: 128)
!2107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2108, size: 64)
!2108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2109)
!2109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2102, line: 47, size: 256, elements: !2110)
!2110 = !{!2111, !2112, !2118, !2122}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2109, file: !2102, line: 49, baseType: !13, size: 32)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2109, file: !2102, line: 51, baseType: !2113, size: 64, offset: 64)
!2113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2114, size: 64)
!2114 = !DISubroutineType(types: !2115)
!2115 = !{!172, !805, !2116}
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2101)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2109, file: !2102, line: 53, baseType: !2119, size: 64, offset: 128)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = !DISubroutineType(types: !2121)
!2121 = !{!172, !815, !2116}
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2109, file: !2102, line: 55, baseType: !992, size: 64, offset: 192)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2101, file: !2102, line: 73, baseType: !2124, size: 16, offset: 192)
!2124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !156)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2101, file: !2102, line: 74, baseType: !164, size: 8, offset: 208)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2101, file: !2102, line: 75, baseType: !151, size: 8, offset: 216)
!2127 = !DIDerivedType(tag: DW_TAG_member, scope: !2101, file: !2102, line: 76, baseType: !2128, size: 64, offset: 256)
!2128 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2101, file: !2102, line: 76, size: 64, elements: !2129)
!2129 = !{!2130, !2131, !2138}
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2128, file: !2102, line: 77, baseType: !176, size: 64)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2128, file: !2102, line: 78, baseType: !2132, size: 64)
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2134)
!2134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2102, line: 86, size: 128, elements: !2135)
!2135 = !{!2136, !2137}
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2134, file: !2102, line: 87, baseType: !13, size: 32)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2134, file: !2102, line: 88, baseType: !815, size: 64, offset: 64)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2128, file: !2102, line: 79, baseType: !2139, size: 64)
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2140, size: 64)
!2140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2141)
!2141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2102, line: 92, size: 256, elements: !2142)
!2142 = !{!2143, !2144, !2145, !2147, !2148}
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2141, file: !2102, line: 94, baseType: !13, size: 32)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2141, file: !2102, line: 95, baseType: !13, size: 32, offset: 32)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2141, file: !2102, line: 96, baseType: !2146, size: 64, offset: 64)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2141, file: !2102, line: 97, baseType: !2107, size: 64, offset: 128)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2141, file: !2102, line: 98, baseType: !176, size: 64, offset: 192)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1207, file: !68, line: 438, baseType: !13, size: 32, offset: 2176)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1207, file: !68, line: 441, baseType: !13, size: 32, offset: 2208)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1207, file: !68, line: 442, baseType: !2091, size: 64, offset: 2240)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1207, file: !68, line: 443, baseType: !2095, size: 64, offset: 2304)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1207, file: !68, line: 444, baseType: !802, size: 8, offset: 2368)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1207, file: !68, line: 451, baseType: !802, size: 8, offset: 2376)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1207, file: !68, line: 454, baseType: !13, size: 32, offset: 2400)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1207, file: !68, line: 455, baseType: !2157, size: 64, offset: 2432)
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2159, line: 23, size: 96, elements: !2160)
!2159 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2160 = !{!2161, !2162, !2163}
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2158, file: !2159, line: 24, baseType: !172, size: 32)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2158, file: !2159, line: 24, baseType: !172, size: 32, offset: 32)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2158, file: !2159, line: 24, baseType: !172, size: 32, offset: 64)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1207, file: !68, line: 458, baseType: !2165, size: 64, offset: 2496)
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2166, size: 64)
!2166 = !DISubroutineType(types: !2167)
!2167 = !{!172}
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1207, file: !68, line: 460, baseType: !2169, size: 4032, align: 512, offset: 2560)
!2169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2170, size: 4032, elements: !2186)
!2170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !68, line: 362, size: 576, elements: !2171)
!2171 = !{!2172, !2173, !2174}
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2170, file: !68, line: 363, baseType: !176, size: 64)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2170, file: !68, line: 364, baseType: !13, size: 32, offset: 64)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2170, file: !68, line: 367, baseType: !2175, size: 448, offset: 128)
!2175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !68, line: 319, size: 448, elements: !2176)
!2176 = !{!2177, !2178}
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2175, file: !68, line: 320, baseType: !1206, size: 64)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2175, file: !68, line: 321, baseType: !2179, size: 384, offset: 64)
!2179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2180, line: 40, size: 384, elements: !2181)
!2180 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2181 = !{!2182}
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2179, file: !2180, line: 41, baseType: !2183, size: 384, align: 64)
!2183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !261, size: 384, align: 64, elements: !2184)
!2184 = !{!2185}
!2185 = !DISubrange(count: 2)
!2186 = !{!2187}
!2187 = !DISubrange(count: 7)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1207, file: !68, line: 463, baseType: !2189, size: 192, offset: 6592)
!2189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2190, line: 8, size: 192, elements: !2191)
!2190 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2191 = !{!2192, !2193, !2195}
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2189, file: !2190, line: 10, baseType: !13, size: 32)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2189, file: !2190, line: 11, baseType: !2194, size: 64, offset: 64)
!2194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2189, file: !2190, line: 12, baseType: !2196, size: 64, offset: 128)
!2196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2197, size: 64)
!2197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2198, line: 59, size: 48, elements: !2199)
!2198 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2199 = !{!2200, !2201, !2202, !2203, !2204, !2205}
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2197, file: !2198, line: 60, baseType: !167, size: 16)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2197, file: !2198, line: 61, baseType: !167, size: 16, offset: 16)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2197, file: !2198, line: 63, baseType: !13, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2197, file: !2198, line: 64, baseType: !13, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2197, file: !2198, line: 65, baseType: !13, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2197, file: !2198, line: 66, baseType: !13, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1207, file: !68, line: 465, baseType: !205, size: 64, offset: 6784)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1207, file: !68, line: 469, baseType: !13, size: 32, offset: 6848)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1207, file: !68, line: 470, baseType: !271, size: 128, offset: 6912)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1207, file: !68, line: 471, baseType: !2210, size: 64, offset: 7040)
!2210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2211, size: 64)
!2211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2212, line: 33, size: 96, elements: !2213)
!2212 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2213 = !{!2214, !2215, !2216, !2217}
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2211, file: !2212, line: 37, baseType: !172, size: 32)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2211, file: !2212, line: 43, baseType: !172, size: 32, offset: 32)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2211, file: !2212, line: 45, baseType: !158, size: 16, offset: 64)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2211, file: !2212, line: 47, baseType: !158, size: 16, offset: 80)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1207, file: !68, line: 476, baseType: !2219, size: 64, offset: 7104)
!2219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2220, size: 64)
!2220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !68, line: 378, size: 256, elements: !2221)
!2221 = !{!2222, !2238, !2239, !2240}
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2220, file: !68, line: 379, baseType: !2223, size: 64)
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2224, size: 64)
!2224 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2225, line: 204, baseType: !2226)
!2225 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2225, line: 197, size: 192, elements: !2227)
!2227 = !{!2228, !2230, !2231, !2232, !2234, !2236}
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2226, file: !2225, line: 198, baseType: !2229, size: 32)
!2229 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2225, line: 21, baseType: !160)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2226, file: !2225, line: 199, baseType: !155, size: 8, offset: 32)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2226, file: !2225, line: 200, baseType: !155, size: 8, offset: 40)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2226, file: !2225, line: 201, baseType: !2233, size: 16, offset: 48)
!2233 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2225, line: 17, baseType: !157)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2226, file: !2225, line: 202, baseType: !2235, size: 64, offset: 64)
!2235 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2225, line: 16, baseType: !162)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2226, file: !2225, line: 203, baseType: !2237, size: 64, offset: 128)
!2237 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2225, line: 22, baseType: !162)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2220, file: !68, line: 380, baseType: !13, size: 32, offset: 64)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2220, file: !68, line: 381, baseType: !815, size: 64, offset: 128)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2220, file: !68, line: 382, baseType: !815, size: 64, offset: 192)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1207, file: !68, line: 477, baseType: !2220, size: 256, offset: 7168)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1207, file: !68, line: 480, baseType: !2243, size: 64, offset: 7424)
!2243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2244, size: 64)
!2244 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !68, line: 480, flags: DIFlagFwdDecl)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1207, file: !68, line: 483, baseType: !2246, size: 64, offset: 7488)
!2246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2247, size: 64)
!2247 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !68, line: 483, flags: DIFlagFwdDecl)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1207, file: !68, line: 488, baseType: !815, size: 64, offset: 7552)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1207, file: !68, line: 492, baseType: !176, size: 64, offset: 7616)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1207, file: !68, line: 493, baseType: !13, size: 32, offset: 7680)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1207, file: !68, line: 495, baseType: !176, size: 64, offset: 7744)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1207, file: !68, line: 496, baseType: !13, size: 32, offset: 7808)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1207, file: !68, line: 499, baseType: !13, size: 32, offset: 7840)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1207, file: !68, line: 500, baseType: !2255, size: 64, offset: 7872)
!2255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2256, size: 64)
!2256 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2257, line: 45, baseType: !2258)
!2257 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !172)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1207, file: !68, line: 503, baseType: !13, size: 32, offset: 7936)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1207, file: !68, line: 504, baseType: !2261, size: 64, offset: 8000)
!2261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2262, size: 64)
!2262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2263, size: 64)
!2263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2264, line: 96, size: 192, elements: !2265)
!2264 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2265 = !{!2266, !2267, !2332, !2335}
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2263, file: !2264, line: 97, baseType: !13, size: 32)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2263, file: !2264, line: 98, baseType: !2268, size: 64, offset: 64)
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2269, size: 64)
!2269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2264, line: 24, size: 3072, elements: !2270)
!2270 = !{!2271, !2273, !2274, !2275, !2276, !2290, !2291, !2292, !2293, !2305, !2317, !2318, !2329, !2330, !2331}
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2269, file: !2264, line: 26, baseType: !2272, size: 128)
!2272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !598, size: 128, elements: !2184)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2269, file: !2264, line: 27, baseType: !2272, size: 128, offset: 128)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2269, file: !2264, line: 28, baseType: !172, size: 32, offset: 256)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2269, file: !2264, line: 31, baseType: !559, size: 32, align: 512, offset: 512)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2269, file: !2264, line: 32, baseType: !2277, size: 960, offset: 576)
!2277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2278, line: 206, size: 960, elements: !2279)
!2278 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2279 = !{!2280, !2281, !2284, !2286, !2287, !2289}
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2277, file: !2278, line: 207, baseType: !588, size: 64)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2277, file: !2278, line: 208, baseType: !2282, size: 256, offset: 64)
!2282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2283, size: 256, elements: !664)
!2283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2277, file: !2278, line: 209, baseType: !2285, size: 256, offset: 320)
!2285 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 256, elements: !664)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2277, file: !2278, line: 213, baseType: !1075, size: 64, offset: 576)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2277, file: !2278, line: 215, baseType: !2288, size: 256, offset: 640)
!2288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1075, size: 256, elements: !664)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2277, file: !2278, line: 216, baseType: !151, size: 8, offset: 896)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2269, file: !2264, line: 33, baseType: !205, size: 64, offset: 1536)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2269, file: !2264, line: 34, baseType: !205, size: 64, offset: 1600)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2269, file: !2264, line: 35, baseType: !802, size: 8, offset: 1664)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2269, file: !2264, line: 36, baseType: !2294, size: 320, offset: 1728)
!2294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2295, line: 11, size: 320, elements: !2296)
!2295 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2296 = !{!2297, !2298, !2299, !2304}
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2294, file: !2295, line: 16, baseType: !659, size: 128)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2294, file: !2295, line: 17, baseType: !205, size: 64, offset: 128)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2294, file: !2295, line: 18, baseType: !2300, size: 64, offset: 192)
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2301 = !DISubroutineType(types: !2302)
!2302 = !{null, !2303}
!2303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2294, file: !2295, line: 19, baseType: !159, size: 32, offset: 256)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2269, file: !2264, line: 37, baseType: !2306, size: 256, offset: 2048)
!2306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2307, line: 98, size: 256, elements: !2308)
!2307 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!2308 = !{!2309, !2310, !2311}
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2306, file: !2307, line: 99, baseType: !598, size: 64)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2306, file: !2307, line: 100, baseType: !271, size: 128, offset: 64)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2306, file: !2307, line: 101, baseType: !2312, size: 64, offset: 192)
!2312 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2307, line: 21, baseType: !2313)
!2313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2314, size: 64)
!2314 = !DISubroutineType(types: !2315)
!2315 = !{null, !2316}
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2269, file: !2264, line: 38, baseType: !585, size: 128, align: 64, offset: 2304)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2269, file: !2264, line: 39, baseType: !2319, size: 64, offset: 2432)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2264, line: 49, size: 768, elements: !2321)
!2321 = !{!2322, !2323, !2324, !2325, !2326, !2327, !2328}
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2320, file: !2264, line: 50, baseType: !559, size: 32)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2320, file: !2264, line: 51, baseType: !2285, size: 256, offset: 64)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2320, file: !2264, line: 53, baseType: !2285, size: 256, offset: 320)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2320, file: !2264, line: 54, baseType: !205, size: 64, offset: 576)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2320, file: !2264, line: 55, baseType: !2319, size: 64, offset: 640)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2320, file: !2264, line: 56, baseType: !172, size: 32, offset: 704)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2320, file: !2264, line: 57, baseType: !172, size: 32, offset: 736)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2269, file: !2264, line: 40, baseType: !205, size: 64, offset: 2496)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2269, file: !2264, line: 42, baseType: !172, size: 32, offset: 2560)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2269, file: !2264, line: 43, baseType: !2262, size: 64, offset: 2624)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2263, file: !2264, line: 99, baseType: !2333, offset: 128)
!2333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2334, line: 211, elements: !570)
!2334 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2263, file: !2264, line: 100, baseType: !2336, size: 64, offset: 128)
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2264, line: 63, size: 3008, elements: !2338)
!2338 = !{!2339, !2340, !2342, !2343, !2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353, !2354, !2355, !2356, !2357, !2358, !2359, !2360, !2361, !2370}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2337, file: !2264, line: 64, baseType: !2319, size: 64)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2337, file: !2264, line: 65, baseType: !2341, size: 192, offset: 64)
!2341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2319, size: 192, elements: !643)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2337, file: !2264, line: 67, baseType: !172, size: 32, offset: 256)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2337, file: !2264, line: 68, baseType: !605, size: 256, offset: 320)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2337, file: !2264, line: 69, baseType: !559, size: 32, offset: 576)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2337, file: !2264, line: 70, baseType: !605, size: 256, offset: 640)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2337, file: !2264, line: 71, baseType: !205, size: 64, offset: 896)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2337, file: !2264, line: 72, baseType: !205, size: 64, offset: 960)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2337, file: !2264, line: 73, baseType: !205, size: 64, offset: 1024)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2337, file: !2264, line: 74, baseType: !205, size: 64, offset: 1088)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2337, file: !2264, line: 75, baseType: !205, size: 64, offset: 1152)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2337, file: !2264, line: 76, baseType: !205, size: 64, offset: 1216)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2337, file: !2264, line: 77, baseType: !205, size: 64, offset: 1280)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2337, file: !2264, line: 78, baseType: !205, size: 64, offset: 1344)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2337, file: !2264, line: 79, baseType: !802, size: 8, offset: 1408)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2337, file: !2264, line: 80, baseType: !205, size: 64, offset: 1472)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2337, file: !2264, line: 81, baseType: !605, size: 256, offset: 1536)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2337, file: !2264, line: 82, baseType: !1428, size: 256, offset: 1792)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2337, file: !2264, line: 84, baseType: !217, size: 32, offset: 2048)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2337, file: !2264, line: 87, baseType: !205, size: 64, offset: 2112)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2337, file: !2264, line: 88, baseType: !205, size: 64, offset: 2176)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2337, file: !2264, line: 89, baseType: !2362, size: 704, offset: 2240)
!2362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !2307, line: 111, size: 704, elements: !2363)
!2363 = !{!2364, !2365, !2366, !2369}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2362, file: !2307, line: 112, baseType: !2306, size: 256)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2362, file: !2307, line: 113, baseType: !2294, size: 320, offset: 256)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2362, file: !2307, line: 116, baseType: !2367, size: 64, offset: 576)
!2367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2368, size: 64)
!2368 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2307, line: 18, flags: DIFlagFwdDecl)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2362, file: !2307, line: 117, baseType: !172, size: 32, offset: 640)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2337, file: !2264, line: 90, baseType: !2262, size: 64, offset: 2944)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1207, file: !68, line: 515, baseType: !2372, size: 64, offset: 8064)
!2372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2373, size: 64)
!2373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2374, line: 117, size: 128, elements: !2375)
!2374 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2375 = !{!2376, !2377, !2378}
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2373, file: !2374, line: 118, baseType: !170, size: 32)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2373, file: !2374, line: 119, baseType: !170, size: 32, offset: 32)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2373, file: !2374, line: 120, baseType: !1075, size: 64, offset: 64)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1207, file: !68, line: 516, baseType: !13, size: 32, offset: 8128)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1207, file: !68, line: 519, baseType: !13, size: 32, offset: 8160)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1207, file: !68, line: 520, baseType: !2382, size: 64, offset: 8192)
!2382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1207, file: !68, line: 523, baseType: !2384, size: 64, offset: 8256)
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2385, size: 64)
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2386 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !68, line: 523, flags: DIFlagFwdDecl)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1207, file: !68, line: 524, baseType: !13, size: 32, offset: 8320)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1207, file: !68, line: 525, baseType: !2389, size: 64, offset: 8384)
!2389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2390, size: 64)
!2390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2391, size: 64)
!2391 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !68, line: 525, flags: DIFlagFwdDecl)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1207, file: !68, line: 526, baseType: !13, size: 32, offset: 8448)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1207, file: !68, line: 533, baseType: !176, size: 64, offset: 8512)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1207, file: !68, line: 534, baseType: !13, size: 32, offset: 8576)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1207, file: !68, line: 535, baseType: !2396, size: 64, offset: 8640)
!2396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1207, file: !68, line: 536, baseType: !13, size: 32, offset: 8704)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1207, file: !68, line: 539, baseType: !172, size: 32, offset: 8736)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1207, file: !68, line: 540, baseType: !2400, size: 64, offset: 8768)
!2400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2401, size: 64)
!2401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2402, line: 32, size: 64, elements: !2403)
!2402 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2403 = !{!2404, !2405}
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2401, file: !2402, line: 33, baseType: !170, size: 32)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2401, file: !2402, line: 34, baseType: !170, size: 32, offset: 32)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1207, file: !68, line: 563, baseType: !271, size: 128, offset: 8832)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1207, file: !68, line: 565, baseType: !271, size: 128, offset: 8960)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1207, file: !68, line: 568, baseType: !2409, size: 64, offset: 9088)
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 64)
!2410 = !DISubroutineType(types: !2411)
!2411 = !{null}
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1207, file: !68, line: 570, baseType: !217, size: 32, offset: 9152)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1183, file: !112, line: 2382, baseType: !1182, size: 64, offset: 448)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1183, file: !112, line: 2383, baseType: !655, size: 64, offset: 512)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1183, file: !112, line: 2385, baseType: !2416, offset: 576)
!2416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2334, line: 206, elements: !570)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1183, file: !112, line: 2386, baseType: !2416, offset: 576)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1183, file: !112, line: 2387, baseType: !2416, offset: 576)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1183, file: !112, line: 2388, baseType: !2420, offset: 576)
!2420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2416, elements: !643)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1183, file: !112, line: 2390, baseType: !2416, offset: 576)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1183, file: !112, line: 2391, baseType: !2416, offset: 576)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1183, file: !112, line: 2392, baseType: !2416, offset: 576)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1183, file: !112, line: 2393, baseType: !2416, offset: 576)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1174, file: !112, line: 1197, baseType: !2426, size: 64, offset: 384)
!2426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2427, size: 64)
!2427 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2428)
!2428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !112, line: 2057, size: 1664, elements: !2429)
!2429 = !{!2430, !2434, !2438, !2439, !2443, !2447, !2451, !2452, !2453, !2457, !2461, !2465, !2466, !2467, !2473, !2477, !2478, !2482, !2483, !2484, !2485, !2489, !2493, !2540, !2555, !2556}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2428, file: !112, line: 2058, baseType: !2431, size: 64)
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!2432 = !DISubroutineType(types: !2433)
!2433 = !{!960, !1173}
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2428, file: !112, line: 2059, baseType: !2435, size: 64, offset: 64)
!2435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2436, size: 64)
!2436 = !DISubroutineType(types: !2437)
!2437 = !{null, !960}
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2428, file: !112, line: 2060, baseType: !2435, size: 64, offset: 128)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2428, file: !112, line: 2062, baseType: !2440, size: 64, offset: 192)
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2441 = !DISubroutineType(types: !2442)
!2442 = !{null, !960, !172}
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2428, file: !112, line: 2063, baseType: !2444, size: 64, offset: 256)
!2444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2445, size: 64)
!2445 = !DISubroutineType(types: !2446)
!2446 = !{!172, !960, !1640}
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2428, file: !112, line: 2064, baseType: !2448, size: 64, offset: 320)
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2449, size: 64)
!2449 = !DISubroutineType(types: !2450)
!2450 = !{!172, !960}
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2428, file: !112, line: 2065, baseType: !2435, size: 64, offset: 384)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2428, file: !112, line: 2066, baseType: !1202, size: 64, offset: 448)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2428, file: !112, line: 2067, baseType: !2454, size: 64, offset: 512)
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = !DISubroutineType(types: !2456)
!2456 = !{!172, !1173, !172}
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2428, file: !112, line: 2068, baseType: !2458, size: 64, offset: 576)
!2458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2459, size: 64)
!2459 = !DISubroutineType(types: !2460)
!2460 = !{!172, !1173, !111}
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2428, file: !112, line: 2069, baseType: !2462, size: 64, offset: 640)
!2462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2463, size: 64)
!2463 = !DISubroutineType(types: !2464)
!2464 = !{!172, !1173}
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2428, file: !112, line: 2070, baseType: !2458, size: 64, offset: 704)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2428, file: !112, line: 2071, baseType: !2462, size: 64, offset: 768)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2428, file: !112, line: 2072, baseType: !2468, size: 64, offset: 832)
!2468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2469, size: 64)
!2469 = !DISubroutineType(types: !2470)
!2470 = !{!172, !925, !2471}
!2471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2472, size: 64)
!2472 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !112, line: 62, flags: DIFlagFwdDecl)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2428, file: !112, line: 2073, baseType: !2474, size: 64, offset: 896)
!2474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2475, size: 64)
!2475 = !DISubroutineType(types: !2476)
!2476 = !{!172, !1173, !2194, !815}
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2428, file: !112, line: 2074, baseType: !1202, size: 64, offset: 960)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2428, file: !112, line: 2076, baseType: !2479, size: 64, offset: 1024)
!2479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2480, size: 64)
!2480 = !DISubroutineType(types: !2481)
!2481 = !{!172, !1980, !925}
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2428, file: !112, line: 2077, baseType: !2479, size: 64, offset: 1088)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2428, file: !112, line: 2078, baseType: !2479, size: 64, offset: 1152)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2428, file: !112, line: 2079, baseType: !2479, size: 64, offset: 1216)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2428, file: !112, line: 2081, baseType: !2486, size: 64, offset: 1280)
!2486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2487, size: 64)
!2487 = !DISubroutineType(types: !2488)
!2488 = !{!1114, !1173, !172, !815, !1117, !617}
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2428, file: !112, line: 2082, baseType: !2490, size: 64, offset: 1344)
!2490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2491, size: 64)
!2491 = !DISubroutineType(types: !2492)
!2492 = !{!1114, !1173, !172, !805, !1117, !617}
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2428, file: !112, line: 2083, baseType: !2494, size: 64, offset: 1408)
!2494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2495, size: 64)
!2495 = !DISubroutineType(types: !2496)
!2496 = !{!2497, !960}
!2497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2498, size: 64)
!2498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2499, size: 64)
!2499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !117, line: 296, size: 1664, elements: !2500)
!2500 = !{!2501, !2502, !2503, !2504, !2505, !2506, !2507, !2508, !2509, !2525, !2526, !2527}
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2499, file: !117, line: 297, baseType: !659, size: 128)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2499, file: !117, line: 298, baseType: !271, size: 128, offset: 128)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2499, file: !117, line: 299, baseType: !271, size: 128, offset: 256)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2499, file: !117, line: 300, baseType: !271, size: 128, offset: 384)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2499, file: !117, line: 301, baseType: !605, size: 256, offset: 512)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2499, file: !117, line: 302, baseType: !559, size: 32, offset: 768)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2499, file: !117, line: 303, baseType: !217, size: 32, offset: 800)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2499, file: !117, line: 304, baseType: !1173, size: 64, offset: 832)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2499, file: !117, line: 305, baseType: !2510, size: 64, offset: 896)
!2510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !117, line: 68, size: 64, elements: !2511)
!2511 = !{!2512, !2524}
!2512 = !DIDerivedType(tag: DW_TAG_member, scope: !2510, file: !117, line: 69, baseType: !2513, size: 32)
!2513 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2510, file: !117, line: 69, size: 32, elements: !2514)
!2514 = !{!2515, !2516, !2517}
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2513, file: !117, line: 70, baseType: !687, size: 32)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2513, file: !117, line: 71, baseType: !705, size: 32)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2513, file: !117, line: 72, baseType: !2518, size: 32)
!2518 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2519, line: 24, baseType: !2520)
!2519 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2520 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2519, line: 22, size: 32, elements: !2521)
!2521 = !{!2522}
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2520, file: !2519, line: 23, baseType: !2523, size: 32)
!2523 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2519, line: 20, baseType: !693)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2510, file: !117, line: 74, baseType: !116, size: 32, offset: 32)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2499, file: !117, line: 306, baseType: !617, size: 64, offset: 960)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2499, file: !117, line: 307, baseType: !205, size: 64, offset: 1024)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2499, file: !117, line: 308, baseType: !2528, size: 576, offset: 1088)
!2528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !117, line: 205, size: 576, elements: !2529)
!2529 = !{!2530, !2532, !2533, !2534, !2535, !2536, !2537, !2538, !2539}
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2528, file: !117, line: 206, baseType: !2531, size: 64)
!2531 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !117, line: 66, baseType: !175)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2528, file: !117, line: 207, baseType: !2531, size: 64, offset: 64)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2528, file: !117, line: 208, baseType: !2531, size: 64, offset: 128)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2528, file: !117, line: 209, baseType: !2531, size: 64, offset: 192)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2528, file: !117, line: 210, baseType: !2531, size: 64, offset: 256)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2528, file: !117, line: 211, baseType: !2531, size: 64, offset: 320)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2528, file: !117, line: 212, baseType: !2531, size: 64, offset: 384)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2528, file: !117, line: 213, baseType: !760, size: 64, offset: 448)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2528, file: !117, line: 214, baseType: !760, size: 64, offset: 512)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2428, file: !112, line: 2085, baseType: !2541, size: 64, offset: 1472)
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64)
!2542 = !DISubroutineType(types: !2543)
!2543 = !{!1075, !1173, !2544}
!2544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2545, size: 64)
!2545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2546, line: 15, size: 256, elements: !2547)
!2546 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2547 = !{!2548, !2549, !2550, !2551, !2552}
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2545, file: !2546, line: 16, baseType: !1169, size: 32)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2545, file: !2546, line: 19, baseType: !172, size: 32, offset: 32)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2545, file: !2546, line: 26, baseType: !205, size: 64, offset: 64)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2545, file: !2546, line: 33, baseType: !205, size: 64, offset: 128)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2545, file: !2546, line: 36, baseType: !2553, size: 64, offset: 192)
!2553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2554, size: 64)
!2554 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !2546, line: 36, flags: DIFlagFwdDecl)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2428, file: !112, line: 2087, baseType: !2541, size: 64, offset: 1536)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2428, file: !112, line: 2089, baseType: !1202, size: 64, offset: 1600)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1174, file: !112, line: 1198, baseType: !2558, size: 64, offset: 448)
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2559, size: 64)
!2559 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2560)
!2560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !117, line: 324, size: 704, elements: !2561)
!2561 = !{!2562, !2566, !2570, !2574, !2575, !2576, !2577, !2578, !2583, !2588, !2592}
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2560, file: !117, line: 325, baseType: !2563, size: 64)
!2563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2564, size: 64)
!2564 = !DISubroutineType(types: !2565)
!2565 = !{!172, !2498}
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2560, file: !117, line: 326, baseType: !2567, size: 64, offset: 64)
!2567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2568, size: 64)
!2568 = !DISubroutineType(types: !2569)
!2569 = !{!2498, !1173, !172}
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2560, file: !117, line: 327, baseType: !2571, size: 64, offset: 128)
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2572, size: 64)
!2572 = !DISubroutineType(types: !2573)
!2573 = !{null, !2498}
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2560, file: !117, line: 328, baseType: !2563, size: 64, offset: 192)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2560, file: !117, line: 329, baseType: !2563, size: 64, offset: 256)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2560, file: !117, line: 330, baseType: !2563, size: 64, offset: 320)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2560, file: !117, line: 331, baseType: !2454, size: 64, offset: 384)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2560, file: !117, line: 334, baseType: !2579, size: 64, offset: 448)
!2579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2580, size: 64)
!2580 = !DISubroutineType(types: !2581)
!2581 = !{!2582, !960}
!2582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2531, size: 64)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2560, file: !117, line: 335, baseType: !2584, size: 64, offset: 512)
!2584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2585, size: 64)
!2585 = !DISubroutineType(types: !2586)
!2586 = !{!172, !960, !2587}
!2587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2518, size: 64)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2560, file: !117, line: 337, baseType: !2589, size: 64, offset: 576)
!2589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2590, size: 64)
!2590 = !DISubroutineType(types: !2591)
!2591 = !{!172, !960, !2582}
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2560, file: !117, line: 339, baseType: !2593, size: 64, offset: 640)
!2593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2594, size: 64)
!2594 = !DISubroutineType(types: !2595)
!2595 = !{!172, !1173, !2596}
!2596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2510, size: 64)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1174, file: !112, line: 1199, baseType: !2598, size: 64, offset: 512)
!2598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2599, size: 64)
!2599 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2600)
!2600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !117, line: 430, size: 704, elements: !2601)
!2601 = !{!2602, !2606, !2607, !2611, !2612, !2613, !2628, !2651, !2655, !2656, !2679}
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2600, file: !117, line: 431, baseType: !2603, size: 64)
!2603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2604, size: 64)
!2604 = !DISubroutineType(types: !2605)
!2605 = !{!172, !1173, !172, !172, !1083}
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2600, file: !117, line: 432, baseType: !2454, size: 64, offset: 64)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2600, file: !117, line: 433, baseType: !2608, size: 64, offset: 128)
!2608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2609, size: 64)
!2609 = !DISubroutineType(types: !2610)
!2610 = !{!172, !1173, !13}
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2600, file: !117, line: 434, baseType: !2608, size: 64, offset: 192)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2600, file: !117, line: 435, baseType: !2454, size: 64, offset: 256)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2600, file: !117, line: 436, baseType: !2614, size: 64, offset: 320)
!2614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2615, size: 64)
!2615 = !DISubroutineType(types: !2616)
!2616 = !{!172, !1173, !172, !2617}
!2617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2618, size: 64)
!2618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !117, line: 417, size: 256, elements: !2619)
!2619 = !{!2620, !2621, !2622, !2623, !2624, !2625, !2626, !2627}
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2618, file: !117, line: 418, baseType: !172, size: 32)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2618, file: !117, line: 419, baseType: !13, size: 32, offset: 32)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2618, file: !117, line: 420, baseType: !13, size: 32, offset: 64)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2618, file: !117, line: 422, baseType: !13, size: 32, offset: 96)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2618, file: !117, line: 423, baseType: !13, size: 32, offset: 128)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2618, file: !117, line: 424, baseType: !13, size: 32, offset: 160)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2618, file: !117, line: 425, baseType: !13, size: 32, offset: 192)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2618, file: !117, line: 426, baseType: !13, size: 32, offset: 224)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2600, file: !117, line: 437, baseType: !2629, size: 64, offset: 384)
!2629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2630, size: 64)
!2630 = !DISubroutineType(types: !2631)
!2631 = !{!172, !1173, !2510, !2632}
!2632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2633, size: 64)
!2633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !117, line: 345, size: 960, elements: !2634)
!2634 = !{!2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2646, !2647, !2648, !2649, !2650}
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2633, file: !117, line: 346, baseType: !172, size: 32)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2633, file: !117, line: 347, baseType: !161, size: 64, offset: 64)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2633, file: !117, line: 348, baseType: !161, size: 64, offset: 128)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2633, file: !117, line: 349, baseType: !161, size: 64, offset: 192)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2633, file: !117, line: 350, baseType: !161, size: 64, offset: 256)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2633, file: !117, line: 351, baseType: !161, size: 64, offset: 320)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2633, file: !117, line: 352, baseType: !161, size: 64, offset: 384)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2633, file: !117, line: 353, baseType: !173, size: 64, offset: 448)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2633, file: !117, line: 355, baseType: !173, size: 64, offset: 512)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2633, file: !117, line: 356, baseType: !172, size: 32, offset: 576)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2633, file: !117, line: 357, baseType: !172, size: 32, offset: 608)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2633, file: !117, line: 358, baseType: !161, size: 64, offset: 640)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2633, file: !117, line: 359, baseType: !161, size: 64, offset: 704)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2633, file: !117, line: 360, baseType: !161, size: 64, offset: 768)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2633, file: !117, line: 361, baseType: !173, size: 64, offset: 832)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2633, file: !117, line: 362, baseType: !172, size: 32, offset: 896)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2600, file: !117, line: 438, baseType: !2652, size: 64, offset: 448)
!2652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2653, size: 64)
!2653 = !DISubroutineType(types: !2654)
!2654 = !{!172, !1173, !2596, !2632}
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2600, file: !117, line: 440, baseType: !2629, size: 64, offset: 512)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2600, file: !117, line: 441, baseType: !2657, size: 64, offset: 576)
!2657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2658, size: 64)
!2658 = !DISubroutineType(types: !2659)
!2659 = !{!172, !1173, !2660}
!2660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2661, size: 64)
!2661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !117, line: 411, size: 1408, elements: !2662)
!2662 = !{!2663, !2664}
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2661, file: !117, line: 412, baseType: !13, size: 32)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2661, file: !117, line: 413, baseType: !2665, size: 1344, offset: 64)
!2665 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2666, size: 1344, elements: !643)
!2666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !117, line: 397, size: 448, elements: !2667)
!2667 = !{!2668, !2669, !2670, !2671, !2672, !2673, !2674, !2675, !2676, !2678}
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2666, file: !117, line: 398, baseType: !13, size: 32)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2666, file: !117, line: 399, baseType: !13, size: 32, offset: 32)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2666, file: !117, line: 401, baseType: !13, size: 32, offset: 64)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2666, file: !117, line: 402, baseType: !13, size: 32, offset: 96)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2666, file: !117, line: 403, baseType: !13, size: 32, offset: 128)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2666, file: !117, line: 404, baseType: !13, size: 32, offset: 160)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2666, file: !117, line: 405, baseType: !13, size: 32, offset: 192)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2666, file: !117, line: 406, baseType: !163, size: 64, offset: 256)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2666, file: !117, line: 407, baseType: !2677, size: 64, offset: 320)
!2677 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !218, line: 132, baseType: !161)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2666, file: !117, line: 408, baseType: !2677, size: 64, offset: 384)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2600, file: !117, line: 442, baseType: !2608, size: 64, offset: 640)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1174, file: !112, line: 1200, baseType: !2681, size: 64, offset: 576)
!2681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2682, size: 64)
!2682 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2683)
!2683 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !112, line: 54, flags: DIFlagFwdDecl)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1174, file: !112, line: 1201, baseType: !205, size: 64, offset: 640)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1174, file: !112, line: 1202, baseType: !205, size: 64, offset: 704)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1174, file: !112, line: 1203, baseType: !205, size: 64, offset: 768)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1174, file: !112, line: 1204, baseType: !925, size: 64, offset: 832)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1174, file: !112, line: 1205, baseType: !744, size: 320, offset: 896)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1174, file: !112, line: 1206, baseType: !172, size: 32, offset: 1216)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1174, file: !112, line: 1207, baseType: !217, size: 32, offset: 1248)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1174, file: !112, line: 1209, baseType: !176, size: 64, offset: 1280)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1174, file: !112, line: 1211, baseType: !2693, size: 64, offset: 1344)
!2693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2694, size: 64)
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2695, size: 64)
!2695 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2696)
!2696 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !112, line: 1211, flags: DIFlagFwdDecl)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1174, file: !112, line: 1223, baseType: !2698, size: 64, offset: 1408)
!2698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !937, line: 34, size: 64, elements: !2699)
!2699 = !{!2700}
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2698, file: !937, line: 35, baseType: !940, size: 64)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1174, file: !112, line: 1224, baseType: !271, size: 128, offset: 1472)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1174, file: !112, line: 1225, baseType: !2703, size: 64, offset: 1600)
!2703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2704, size: 64)
!2704 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !112, line: 1225, flags: DIFlagFwdDecl)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1174, file: !112, line: 1226, baseType: !2706, size: 64, offset: 1664)
!2706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2707, size: 64)
!2707 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !112, line: 1226, flags: DIFlagFwdDecl)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1174, file: !112, line: 1227, baseType: !2709, size: 64, offset: 1728)
!2709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2710, size: 64)
!2710 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !112, line: 50, flags: DIFlagFwdDecl)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1174, file: !112, line: 1228, baseType: !2712, size: 64, offset: 1792)
!2712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2713, size: 64)
!2713 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !112, line: 1228, flags: DIFlagFwdDecl)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1174, file: !112, line: 1229, baseType: !659, size: 128, offset: 1856)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1174, file: !112, line: 1230, baseType: !13, size: 32, offset: 1984)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1174, file: !112, line: 1231, baseType: !2717, size: 2496, offset: 2048)
!2717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !117, line: 521, size: 2496, elements: !2718)
!2718 = !{!2719, !2720, !2721, !2723, !2755}
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2717, file: !117, line: 522, baseType: !13, size: 32)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2717, file: !117, line: 523, baseType: !744, size: 320, offset: 64)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2717, file: !117, line: 524, baseType: !2722, size: 192, offset: 384)
!2722 = !DICompositeType(tag: DW_TAG_array_type, baseType: !960, size: 192, elements: !643)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2717, file: !117, line: 525, baseType: !2724, size: 1728, offset: 576)
!2724 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2725, size: 1728, elements: !643)
!2725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !117, line: 222, size: 576, elements: !2726)
!2726 = !{!2727, !2747, !2748, !2749, !2750, !2751, !2752, !2753, !2754}
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2725, file: !117, line: 223, baseType: !2728, size: 64)
!2728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2729, size: 64)
!2729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !117, line: 445, size: 256, elements: !2730)
!2730 = !{!2731, !2732, !2745, !2746}
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2729, file: !117, line: 446, baseType: !172, size: 32)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2729, file: !117, line: 447, baseType: !2733, size: 64, offset: 64)
!2733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2734, size: 64)
!2734 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2735)
!2735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !117, line: 312, size: 512, elements: !2736)
!2736 = !{!2737, !2738, !2739, !2740, !2741, !2742, !2743, !2744}
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2735, file: !117, line: 313, baseType: !2454, size: 64)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2735, file: !117, line: 314, baseType: !2454, size: 64, offset: 64)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2735, file: !117, line: 315, baseType: !2454, size: 64, offset: 128)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2735, file: !117, line: 316, baseType: !2454, size: 64, offset: 192)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2735, file: !117, line: 317, baseType: !2563, size: 64, offset: 256)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2735, file: !117, line: 318, baseType: !2563, size: 64, offset: 320)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2735, file: !117, line: 319, baseType: !2563, size: 64, offset: 384)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2735, file: !117, line: 320, baseType: !2593, size: 64, offset: 448)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2729, file: !117, line: 448, baseType: !1206, size: 64, offset: 128)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2729, file: !117, line: 449, baseType: !2728, size: 64, offset: 192)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2725, file: !117, line: 224, baseType: !172, size: 32, offset: 64)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2725, file: !117, line: 226, baseType: !271, size: 128, offset: 128)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2725, file: !117, line: 227, baseType: !205, size: 64, offset: 256)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2725, file: !117, line: 228, baseType: !13, size: 32, offset: 320)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2725, file: !117, line: 229, baseType: !13, size: 32, offset: 352)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2725, file: !117, line: 230, baseType: !2531, size: 64, offset: 384)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2725, file: !117, line: 231, baseType: !2531, size: 64, offset: 448)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2725, file: !117, line: 232, baseType: !176, size: 64, offset: 512)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2717, file: !117, line: 526, baseType: !2756, size: 192, offset: 2304)
!2756 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2733, size: 192, elements: !643)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1174, file: !112, line: 1233, baseType: !2758, size: 2368, offset: 4544)
!2758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !112, line: 1184, size: 2368, elements: !2759)
!2759 = !{!2760, !2761, !2762}
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2758, file: !112, line: 1185, baseType: !158, size: 16)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2758, file: !112, line: 1186, baseType: !158, size: 16, offset: 16)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2758, file: !112, line: 1187, baseType: !2763, size: 2304, offset: 64)
!2763 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2764, size: 2304, elements: !643)
!2764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2765, line: 12, size: 768, elements: !2766)
!2765 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2766 = !{!2767, !2775, !2776, !2781, !2782}
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2764, file: !2765, line: 13, baseType: !2768, size: 384)
!2768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2769, line: 17, size: 384, elements: !2770)
!2769 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2770 = !{!2771, !2772, !2773, !2774}
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2768, file: !2769, line: 18, baseType: !172, size: 32)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2768, file: !2769, line: 19, baseType: !172, size: 32, offset: 32)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2768, file: !2769, line: 20, baseType: !668, size: 192, offset: 64)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2768, file: !2769, line: 22, baseType: !585, size: 128, align: 64, offset: 256)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2764, file: !2765, line: 14, baseType: !2146, size: 64, offset: 384)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2764, file: !2765, line: 15, baseType: !2777, size: 64, offset: 448)
!2777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2778, line: 16, size: 64, elements: !2779)
!2778 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2779 = !{!2780}
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2777, file: !2778, line: 17, baseType: !196, size: 64)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2764, file: !2765, line: 16, baseType: !668, size: 192, offset: 512)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2764, file: !2765, line: 17, baseType: !217, size: 32, offset: 704)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1174, file: !112, line: 1240, baseType: !176, size: 64, offset: 6912)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1174, file: !112, line: 1243, baseType: !159, size: 32, offset: 6976)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1174, file: !112, line: 1245, baseType: !760, size: 64, offset: 7040)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1174, file: !112, line: 1246, baseType: !760, size: 64, offset: 7104)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1174, file: !112, line: 1248, baseType: !160, size: 32, offset: 7168)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1174, file: !112, line: 1249, baseType: !2789, size: 64, offset: 7232)
!2789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2790, size: 64)
!2790 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !112, line: 634, flags: DIFlagFwdDecl)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1174, file: !112, line: 1252, baseType: !2792, size: 256, offset: 7296)
!2792 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !2793)
!2793 = !{!2794}
!2794 = !DISubrange(count: 32)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1174, file: !112, line: 1253, baseType: !2796, size: 128, offset: 7552)
!2796 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2797, line: 21, baseType: !2798)
!2797 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!2798 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2797, line: 19, size: 128, elements: !2799)
!2799 = !{!2800}
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2798, file: !2797, line: 20, baseType: !2801, size: 128)
!2801 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 128, elements: !2802)
!2802 = !{!2803}
!2803 = !DISubrange(count: 16)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1174, file: !112, line: 1255, baseType: !13, size: 32, offset: 7680)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1174, file: !112, line: 1261, baseType: !605, size: 256, offset: 7744)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1174, file: !112, line: 1267, baseType: !805, size: 64, offset: 8000)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1174, file: !112, line: 1269, baseType: !2808, size: 64, offset: 8064)
!2808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2809, size: 64)
!2809 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2810)
!2810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !927, line: 128, size: 1024, align: 512, elements: !2811)
!2811 = !{!2812, !2816, !2817, !2824, !2830, !2834, !2838, !2842, !2843, !2847, !2851, !2856, !2860}
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2810, file: !927, line: 129, baseType: !2813, size: 64)
!2813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2814, size: 64)
!2814 = !DISubroutineType(types: !2815)
!2815 = !{!172, !925, !13}
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2810, file: !927, line: 130, baseType: !2813, size: 64, offset: 64)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2810, file: !927, line: 131, baseType: !2818, size: 64, offset: 128)
!2818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2819, size: 64)
!2819 = !DISubroutineType(types: !2820)
!2820 = !{!172, !2821, !2823}
!2821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64)
!2822 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !926)
!2823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2810, file: !927, line: 132, baseType: !2825, size: 64, offset: 192)
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2826, size: 64)
!2826 = !DISubroutineType(types: !2827)
!2827 = !{!172, !2821, !13, !805, !2828}
!2828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2829, size: 64)
!2829 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !945)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2810, file: !927, line: 134, baseType: !2831, size: 64, offset: 256)
!2831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2832, size: 64)
!2832 = !DISubroutineType(types: !2833)
!2833 = !{!172, !2821}
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2810, file: !927, line: 135, baseType: !2835, size: 64, offset: 320)
!2835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2836, size: 64)
!2836 = !DISubroutineType(types: !2837)
!2837 = !{!172, !925}
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2810, file: !927, line: 136, baseType: !2839, size: 64, offset: 384)
!2839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2840, size: 64)
!2840 = !DISubroutineType(types: !2841)
!2841 = !{null, !925}
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2810, file: !927, line: 137, baseType: !2839, size: 64, offset: 448)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2810, file: !927, line: 138, baseType: !2844, size: 64, offset: 512)
!2844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2845, size: 64)
!2845 = !DISubroutineType(types: !2846)
!2846 = !{null, !925, !960}
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2810, file: !927, line: 139, baseType: !2848, size: 64, offset: 576)
!2848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2849, size: 64)
!2849 = !DISubroutineType(types: !2850)
!2850 = !{!815, !925, !815, !172}
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2810, file: !927, line: 140, baseType: !2852, size: 64, offset: 640)
!2852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2853, size: 64)
!2853 = !DISubroutineType(types: !2854)
!2854 = !{!920, !2855}
!2855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2810, file: !927, line: 141, baseType: !2857, size: 64, offset: 704)
!2857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2858, size: 64)
!2858 = !DISubroutineType(types: !2859)
!2859 = !{!172, !1083, !802}
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2810, file: !927, line: 142, baseType: !2861, size: 64, offset: 768)
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2862, size: 64)
!2862 = !DISubroutineType(types: !2863)
!2863 = !{!925, !925, !2864}
!2864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2865, size: 64)
!2865 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !961)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1174, file: !112, line: 1271, baseType: !2867, size: 448, offset: 8128)
!2867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2546, line: 63, size: 448, elements: !2868)
!2868 = !{!2869, !2874, !2875, !2876, !2877, !2878, !2879}
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2867, file: !2546, line: 64, baseType: !2870, size: 64)
!2870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2871, size: 64)
!2871 = !DISubroutineType(types: !2872)
!2872 = !{!205, !2873, !2544}
!2873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2867, size: 64)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2867, file: !2546, line: 66, baseType: !2870, size: 64, offset: 64)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2867, file: !2546, line: 69, baseType: !1075, size: 64, offset: 128)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2867, file: !2546, line: 70, baseType: !172, size: 32, offset: 192)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2867, file: !2546, line: 71, baseType: !13, size: 32, offset: 224)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2867, file: !2546, line: 74, baseType: !271, size: 128, offset: 256)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2867, file: !2546, line: 85, baseType: !2880, size: 64, offset: 384)
!2880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1174, file: !112, line: 1274, baseType: !598, size: 64, offset: 8576)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1174, file: !112, line: 1280, baseType: !598, size: 64, offset: 8640)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1174, file: !112, line: 1283, baseType: !172, size: 32, offset: 8704)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1174, file: !112, line: 1286, baseType: !1875, size: 32, offset: 8736)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1174, file: !112, line: 1289, baseType: !2367, size: 64, offset: 8768)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1174, file: !112, line: 1290, baseType: !655, size: 64, offset: 8832)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1174, file: !112, line: 1297, baseType: !887, size: 64, offset: 8896)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1174, file: !112, line: 1304, baseType: !2889, size: 64, offset: 8960)
!2889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2890, line: 49, size: 64, elements: !2891)
!2890 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!2891 = !{!2892}
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2889, file: !2890, line: 50, baseType: !2893, size: 64)
!2893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2894, size: 64)
!2894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2890, line: 41, size: 512, align: 512, elements: !2895)
!2895 = !{!2896, !2897, !2902}
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2894, file: !2890, line: 43, baseType: !559, size: 32)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2894, file: !2890, line: 45, baseType: !2898, size: 192, offset: 64)
!2898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2890, line: 29, size: 192, elements: !2899)
!2899 = !{!2900, !2901}
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2898, file: !2890, line: 30, baseType: !271, size: 128)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2898, file: !2890, line: 32, baseType: !1075, size: 64, offset: 128)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2894, file: !2890, line: 46, baseType: !1075, size: 64, offset: 256)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1174, file: !112, line: 1305, baseType: !2889, size: 64, offset: 9024)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1174, file: !112, line: 1306, baseType: !585, size: 128, align: 64, offset: 9088)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1174, file: !112, line: 1307, baseType: !2306, size: 256, offset: 9216)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1174, file: !112, line: 1309, baseType: !605, size: 256, offset: 9472)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1174, file: !112, line: 1314, baseType: !172, size: 32, offset: 9728)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1174, file: !112, line: 1317, baseType: !559, size: 32, align: 512, offset: 10240)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1174, file: !112, line: 1318, baseType: !271, size: 128, offset: 10304)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1174, file: !112, line: 1320, baseType: !559, size: 32, offset: 10432)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1174, file: !112, line: 1321, baseType: !271, size: 128, offset: 10496)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !961, file: !112, line: 656, baseType: !1323, size: 64, offset: 512)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !961, file: !112, line: 659, baseType: !176, size: 64, offset: 576)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !961, file: !112, line: 663, baseType: !205, size: 64, offset: 640)
!2915 = !DIDerivedType(tag: DW_TAG_member, scope: !961, file: !112, line: 671, baseType: !2916, size: 32, offset: 704)
!2916 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !961, file: !112, line: 671, size: 32, elements: !2917)
!2917 = !{!2918, !2920}
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2916, file: !112, line: 672, baseType: !2919, size: 32)
!2919 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2916, file: !112, line: 673, baseType: !13, size: 32)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !961, file: !112, line: 675, baseType: !1035, size: 32, offset: 736)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !961, file: !112, line: 676, baseType: !617, size: 64, offset: 768)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !961, file: !112, line: 677, baseType: !1071, size: 128, offset: 832)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !961, file: !112, line: 678, baseType: !1071, size: 128, offset: 960)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !961, file: !112, line: 679, baseType: !1071, size: 128, offset: 1088)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !961, file: !112, line: 680, baseType: !559, size: 32, offset: 1216)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !961, file: !112, line: 681, baseType: !158, size: 16, offset: 1248)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !961, file: !112, line: 682, baseType: !151, size: 8, offset: 1264)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !961, file: !112, line: 683, baseType: !151, size: 8, offset: 1272)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !961, file: !112, line: 684, baseType: !2677, size: 64, offset: 1280)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !961, file: !112, line: 691, baseType: !205, size: 64, offset: 1344)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !961, file: !112, line: 692, baseType: !744, size: 320, offset: 1408)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !961, file: !112, line: 694, baseType: !205, size: 64, offset: 1728)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !961, file: !112, line: 695, baseType: !205, size: 64, offset: 1792)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !961, file: !112, line: 697, baseType: !659, size: 128, offset: 1856)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !961, file: !112, line: 698, baseType: !271, size: 128, offset: 1984)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !961, file: !112, line: 707, baseType: !271, size: 128, offset: 2112)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !961, file: !112, line: 708, baseType: !271, size: 128, offset: 2240)
!2939 = !DIDerivedType(tag: DW_TAG_member, scope: !961, file: !112, line: 709, baseType: !2940, size: 128, offset: 2368)
!2940 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !961, file: !112, line: 709, size: 128, elements: !2941)
!2941 = !{!2942, !2943}
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2940, file: !112, line: 710, baseType: !655, size: 64)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2940, file: !112, line: 711, baseType: !585, size: 128, align: 64)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !961, file: !112, line: 713, baseType: !600, size: 64, offset: 2496)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !961, file: !112, line: 714, baseType: !600, size: 64, offset: 2560)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !961, file: !112, line: 715, baseType: !217, size: 32, offset: 2624)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !961, file: !112, line: 716, baseType: !217, size: 32, offset: 2656)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !961, file: !112, line: 717, baseType: !217, size: 32, offset: 2688)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !961, file: !112, line: 719, baseType: !217, size: 32, offset: 2720)
!2950 = !DIDerivedType(tag: DW_TAG_member, scope: !961, file: !112, line: 721, baseType: !2951, size: 64, offset: 2752)
!2951 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !961, file: !112, line: 721, size: 64, elements: !2952)
!2952 = !{!2953, !3079}
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2951, file: !112, line: 722, baseType: !2954, size: 64)
!2954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2955, size: 64)
!2955 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2956)
!2956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !112, line: 1914, size: 2112, elements: !2957)
!2957 = !{!2958, !2959, !2963, !2967, !2971, !2972, !2973, !2979, !2992, !2996, !3000, !3001, !3005, !3006, !3010, !3015, !3016, !3020, !3024, !3030, !3031, !3035, !3036, !3042, !3046, !3047, !3052, !3056, !3060, !3064, !3068, !3069, !3075}
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2956, file: !112, line: 1915, baseType: !1206, size: 64)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2956, file: !112, line: 1916, baseType: !2960, size: 64, offset: 64)
!2960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2961, size: 64)
!2961 = !DISubroutineType(types: !2962)
!2962 = !{!617, !577, !617, !172}
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2956, file: !112, line: 1917, baseType: !2964, size: 64, offset: 128)
!2964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2965, size: 64)
!2965 = !DISubroutineType(types: !2966)
!2966 = !{!1114, !577, !815, !1117, !2004}
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2956, file: !112, line: 1918, baseType: !2968, size: 64, offset: 192)
!2968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2969, size: 64)
!2969 = !DISubroutineType(types: !2970)
!2970 = !{!1114, !577, !805, !1117, !2004}
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2956, file: !112, line: 1919, baseType: !1754, size: 64, offset: 256)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2956, file: !112, line: 1920, baseType: !1754, size: 64, offset: 320)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2956, file: !112, line: 1921, baseType: !2974, size: 64, offset: 384)
!2974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2975, size: 64)
!2975 = !DISubroutineType(types: !2976)
!2976 = !{!172, !1757, !2977, !13}
!2977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2978, size: 64)
!2978 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !112, line: 53, flags: DIFlagFwdDecl)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2956, file: !112, line: 1923, baseType: !2980, size: 64, offset: 448)
!2980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2981, size: 64)
!2981 = !DISubroutineType(types: !2982)
!2982 = !{!172, !577, !2983}
!2983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2984, size: 64)
!2984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !112, line: 1858, size: 128, elements: !2985)
!2985 = !{!2986, !2991}
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2984, file: !112, line: 1859, baseType: !2987, size: 64)
!2987 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !112, line: 1855, baseType: !2988)
!2988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2989, size: 64)
!2989 = !DISubroutineType(types: !2990)
!2990 = !{!802, !2983, !805, !172, !617, !161, !13}
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2984, file: !112, line: 1860, baseType: !617, size: 64, offset: 64)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2956, file: !112, line: 1924, baseType: !2993, size: 64, offset: 512)
!2993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2994, size: 64)
!2994 = !DISubroutineType(types: !2995)
!2995 = !{!2024, !577, !2025}
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2956, file: !112, line: 1925, baseType: !2997, size: 64, offset: 576)
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2998, size: 64)
!2998 = !DISubroutineType(types: !2999)
!2999 = !{!1075, !577, !13, !205}
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2956, file: !112, line: 1926, baseType: !2997, size: 64, offset: 640)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2956, file: !112, line: 1927, baseType: !3002, size: 64, offset: 704)
!3002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3003, size: 64)
!3003 = !DISubroutineType(types: !3004)
!3004 = !{!172, !577, !1463}
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2956, file: !112, line: 1928, baseType: !205, size: 64, offset: 768)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2956, file: !112, line: 1929, baseType: !3007, size: 64, offset: 832)
!3007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3008, size: 64)
!3008 = !DISubroutineType(types: !3009)
!3009 = !{!172, !960, !577}
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2956, file: !112, line: 1930, baseType: !3011, size: 64, offset: 896)
!3011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3012, size: 64)
!3012 = !DISubroutineType(types: !3013)
!3013 = !{!172, !577, !3014}
!3014 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !112, line: 1061, baseType: !176)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2956, file: !112, line: 1931, baseType: !3007, size: 64, offset: 960)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2956, file: !112, line: 1932, baseType: !3017, size: 64, offset: 1024)
!3017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3018, size: 64)
!3018 = !DISubroutineType(types: !3019)
!3019 = !{!172, !577, !617, !617, !172}
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2956, file: !112, line: 1933, baseType: !3021, size: 64, offset: 1088)
!3021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3022, size: 64)
!3022 = !DISubroutineType(types: !3023)
!3023 = !{!172, !172, !577, !172}
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2956, file: !112, line: 1934, baseType: !3025, size: 64, offset: 1152)
!3025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3026, size: 64)
!3026 = !DISubroutineType(types: !3027)
!3027 = !{!172, !577, !172, !3028}
!3028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3029, size: 64)
!3029 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !112, line: 1063, flags: DIFlagFwdDecl)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2956, file: !112, line: 1935, baseType: !574, size: 64, offset: 1216)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2956, file: !112, line: 1936, baseType: !3032, size: 64, offset: 1280)
!3032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3033, size: 64)
!3033 = !DISubroutineType(types: !3034)
!3034 = !{!172, !172}
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2956, file: !112, line: 1937, baseType: !3025, size: 64, offset: 1344)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2956, file: !112, line: 1938, baseType: !3037, size: 64, offset: 1408)
!3037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3038, size: 64)
!3038 = !DISubroutineType(types: !3039)
!3039 = !{!1114, !3040, !577, !2004, !1117, !13}
!3040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3041, size: 64)
!3041 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !198, line: 59, flags: DIFlagFwdDecl)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2956, file: !112, line: 1939, baseType: !3043, size: 64, offset: 1472)
!3043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3044, size: 64)
!3044 = !DISubroutineType(types: !3045)
!3045 = !{!1114, !577, !2004, !3040, !1117, !13}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !2956, file: !112, line: 1940, baseType: !1865, size: 64, offset: 1536)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2956, file: !112, line: 1941, baseType: !3048, size: 64, offset: 1600)
!3048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3049, size: 64)
!3049 = !DISubroutineType(types: !3050)
!3050 = !{!172, !577, !172, !3051, !1731}
!3051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3028, size: 64)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2956, file: !112, line: 1942, baseType: !3053, size: 64, offset: 1664)
!3053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3054, size: 64)
!3054 = !DISubroutineType(types: !3055)
!3055 = !{!1075, !577, !172, !617, !617}
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2956, file: !112, line: 1944, baseType: !3057, size: 64, offset: 1728)
!3057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3058, size: 64)
!3058 = !DISubroutineType(types: !3059)
!3059 = !{null, !1980, !577}
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2956, file: !112, line: 1948, baseType: !3061, size: 64, offset: 1792)
!3061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3062, size: 64)
!3062 = !DISubroutineType(types: !3063)
!3063 = !{!1114, !577, !617, !577, !617, !1117, !13}
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2956, file: !112, line: 1950, baseType: !3065, size: 64, offset: 1856)
!3065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3066, size: 64)
!3066 = !DISubroutineType(types: !3067)
!3067 = !{!617, !577, !617, !577, !617, !617, !13}
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2956, file: !112, line: 1953, baseType: !3017, size: 64, offset: 1920)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !2956, file: !112, line: 1954, baseType: !3070, size: 64, offset: 1984)
!3070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3071, size: 64)
!3071 = !DISubroutineType(types: !3072)
!3072 = !{!172, !3073, !13}
!3073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3074, size: 64)
!3074 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !112, line: 1911, flags: DIFlagFwdDecl)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !2956, file: !112, line: 1955, baseType: !3076, size: 64, offset: 2048)
!3076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3077, size: 64)
!3077 = !DISubroutineType(types: !3078)
!3078 = !{!172, !3073, !2977, !13}
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2951, file: !112, line: 723, baseType: !2435, size: 64)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !961, file: !112, line: 725, baseType: !3081, size: 64, offset: 2816)
!3081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3082, size: 64)
!3082 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !112, line: 725, flags: DIFlagFwdDecl)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !961, file: !112, line: 726, baseType: !1324, size: 1536, align: 64, offset: 2880)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !961, file: !112, line: 727, baseType: !271, size: 128, offset: 4416)
!3085 = !DIDerivedType(tag: DW_TAG_member, scope: !961, file: !112, line: 728, baseType: !3086, size: 64, offset: 4544)
!3086 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !961, file: !112, line: 728, size: 64, elements: !3087)
!3087 = !{!3088, !3089, !3092, !3093}
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3086, file: !112, line: 729, baseType: !3040, size: 64)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3086, file: !112, line: 730, baseType: !3090, size: 64)
!3090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3091, size: 64)
!3091 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !112, line: 730, flags: DIFlagFwdDecl)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3086, file: !112, line: 731, baseType: !815, size: 64)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3086, file: !112, line: 732, baseType: !13, size: 32)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !961, file: !112, line: 735, baseType: !160, size: 32, offset: 4608)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !961, file: !112, line: 738, baseType: !160, size: 32, offset: 4640)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !961, file: !112, line: 739, baseType: !2789, size: 64, offset: 4672)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !961, file: !112, line: 750, baseType: !176, size: 64, offset: 4736)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !926, file: !927, line: 91, baseType: !3099, size: 256, offset: 448)
!3099 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 256, elements: !2793)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !926, file: !927, line: 94, baseType: !3101, size: 64, offset: 704)
!3101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3102, line: 25, size: 64, elements: !3103)
!3102 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!3103 = !{!3104}
!3104 = !DIDerivedType(tag: DW_TAG_member, scope: !3101, file: !3102, line: 26, baseType: !3105, size: 64)
!3105 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3101, file: !3102, line: 26, size: 64, elements: !3106)
!3106 = !{!3107, !3108}
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !3105, file: !3102, line: 28, baseType: !162, size: 64, align: 64)
!3108 = !DIDerivedType(tag: DW_TAG_member, scope: !3105, file: !3102, line: 30, baseType: !3109, size: 64)
!3109 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3105, file: !3102, line: 30, size: 64, elements: !3110)
!3110 = !{!3111, !3112}
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3109, file: !3102, line: 31, baseType: !559, size: 32)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3109, file: !3102, line: 32, baseType: !172, size: 32, offset: 32)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !926, file: !927, line: 95, baseType: !2808, size: 64, offset: 768)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !926, file: !927, line: 96, baseType: !1173, size: 64, offset: 832)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !926, file: !927, line: 97, baseType: !205, size: 64, offset: 896)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !926, file: !927, line: 98, baseType: !176, size: 64, offset: 960)
!3117 = !DIDerivedType(tag: DW_TAG_member, scope: !926, file: !927, line: 100, baseType: !3118, size: 128, offset: 1024)
!3118 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !926, file: !927, line: 100, size: 128, elements: !3119)
!3119 = !{!3120, !3121}
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3118, file: !927, line: 101, baseType: !271, size: 128)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3118, file: !927, line: 102, baseType: !3122, size: 64)
!3122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !926, file: !927, line: 104, baseType: !271, size: 128, offset: 1152)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !926, file: !927, line: 105, baseType: !271, size: 128, offset: 1280)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !926, file: !927, line: 113, baseType: !3126, size: 128, offset: 1408)
!3126 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !926, file: !927, line: 109, size: 128, elements: !3127)
!3127 = !{!3128, !3129, !3130}
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3126, file: !927, line: 110, baseType: !659, size: 128)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3126, file: !927, line: 111, baseType: !936, size: 128)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3126, file: !927, line: 112, baseType: !585, size: 128, align: 64)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !921, file: !922, line: 72, baseType: !1173, size: 64, offset: 64)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !921, file: !922, line: 73, baseType: !172, size: 32, offset: 128)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !921, file: !922, line: 74, baseType: !1000, size: 64, offset: 192)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !916, file: !917, line: 10, baseType: !925, size: 64, offset: 64)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !578, file: !112, line: 1015, baseType: !960, size: 64, offset: 1344)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !578, file: !112, line: 1016, baseType: !2954, size: 64, offset: 1408)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !578, file: !112, line: 1018, baseType: !161, size: 64, offset: 1472)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !578, file: !112, line: 1020, baseType: !176, size: 64, offset: 1536)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !578, file: !112, line: 1023, baseType: !176, size: 64, offset: 1600)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !578, file: !112, line: 1027, baseType: !3141, size: 64, offset: 1664)
!3141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !578, file: !112, line: 1029, baseType: !1323, size: 64, offset: 1728)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !578, file: !112, line: 1030, baseType: !1875, size: 32, offset: 1792)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !578, file: !112, line: 1031, baseType: !1875, size: 32, offset: 1824)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !545, file: !83, line: 756, baseType: !205, size: 64, offset: 704)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !545, file: !83, line: 757, baseType: !205, size: 64, offset: 768)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !545, file: !83, line: 760, baseType: !205, size: 64, offset: 832)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !545, file: !83, line: 761, baseType: !205, size: 64, offset: 896)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !545, file: !83, line: 763, baseType: !205, size: 64, offset: 960)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !545, file: !83, line: 764, baseType: !3151, size: 64, offset: 1024)
!3151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3152, size: 64)
!3152 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1478, line: 299, baseType: !3153)
!3153 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1478, line: 299, size: 64, elements: !3154)
!3154 = !{!3155}
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !3153, file: !1478, line: 299, baseType: !3156, size: 64)
!3156 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1483, line: 18, baseType: !205)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !545, file: !83, line: 773, baseType: !217, size: 32, offset: 1088)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !545, file: !83, line: 785, baseType: !217, size: 32, offset: 1120)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !545, file: !83, line: 795, baseType: !3160, size: 64, offset: 1152)
!3160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3161, size: 64)
!3161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !83, line: 726, size: 128, elements: !3162)
!3162 = !{!3163, !3164}
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3161, file: !83, line: 727, baseType: !161, size: 64)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !3161, file: !83, line: 728, baseType: !172, size: 32, offset: 64)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !545, file: !83, line: 801, baseType: !205, size: 64, offset: 1216)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !545, file: !83, line: 804, baseType: !598, size: 64, offset: 1280)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !545, file: !83, line: 806, baseType: !172, size: 32, offset: 1344)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !545, file: !83, line: 808, baseType: !559, size: 32, offset: 1376)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !545, file: !83, line: 823, baseType: !744, size: 320, offset: 1408)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !545, file: !83, line: 825, baseType: !271, size: 128, offset: 1728)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !545, file: !83, line: 845, baseType: !172, size: 32, offset: 1856)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !545, file: !83, line: 849, baseType: !205, size: 64, offset: 1920)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !545, file: !83, line: 850, baseType: !205, size: 64, offset: 1984)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !545, file: !83, line: 852, baseType: !205, size: 64, offset: 2048)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !545, file: !83, line: 853, baseType: !205, size: 64, offset: 2112)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !545, file: !83, line: 854, baseType: !600, size: 64, offset: 2176)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !545, file: !83, line: 855, baseType: !205, size: 64, offset: 2240)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !545, file: !83, line: 856, baseType: !205, size: 64, offset: 2304)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !545, file: !83, line: 857, baseType: !205, size: 64, offset: 2368)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !545, file: !83, line: 858, baseType: !205, size: 64, offset: 2432)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !545, file: !83, line: 865, baseType: !415, size: 32, offset: 2496)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !545, file: !83, line: 867, baseType: !559, size: 32, offset: 2528)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !545, file: !83, line: 869, baseType: !205, size: 64, offset: 2560)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !545, file: !83, line: 869, baseType: !205, size: 64, offset: 2624)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !545, file: !83, line: 869, baseType: !205, size: 64, offset: 2688)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !545, file: !83, line: 869, baseType: !205, size: 64, offset: 2752)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !545, file: !83, line: 870, baseType: !205, size: 64, offset: 2816)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !545, file: !83, line: 870, baseType: !205, size: 64, offset: 2880)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !545, file: !83, line: 870, baseType: !205, size: 64, offset: 2944)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !545, file: !83, line: 871, baseType: !205, size: 64, offset: 3008)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !545, file: !83, line: 871, baseType: !205, size: 64, offset: 3072)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !545, file: !83, line: 871, baseType: !205, size: 64, offset: 3136)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !545, file: !83, line: 871, baseType: !205, size: 64, offset: 3200)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !545, file: !83, line: 873, baseType: !3195, size: 3328, offset: 3264)
!3195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 3328, elements: !3196)
!3196 = !{!3197}
!3197 = !DISubrange(count: 52)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !545, file: !83, line: 875, baseType: !3199, size: 1280, offset: 6592)
!3199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !863, size: 1280, elements: !664)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !545, file: !83, line: 877, baseType: !3201, size: 64, offset: 7872)
!3201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3202, size: 64)
!3202 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !83, line: 877, flags: DIFlagFwdDecl)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !545, file: !83, line: 880, baseType: !3204, size: 1088, offset: 7936)
!3204 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !3205, line: 72, baseType: !3206)
!3205 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!3206 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3205, line: 23, size: 1088, elements: !3207)
!3207 = !{!3208, !3209, !3210, !3211, !3212, !3215, !3216, !3217, !3218, !3243, !3244, !3245}
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !3206, file: !3205, line: 28, baseType: !161, size: 64)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !3206, file: !3205, line: 38, baseType: !600, size: 64, offset: 64)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !3206, file: !3205, line: 40, baseType: !205, size: 64, offset: 128)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !3206, file: !3205, line: 43, baseType: !744, size: 320, offset: 192)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !3206, file: !3205, line: 44, baseType: !3213, size: 64, offset: 512)
!3213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3214, size: 64)
!3214 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !3205, line: 44, flags: DIFlagFwdDecl)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3206, file: !3205, line: 48, baseType: !205, size: 64, offset: 576)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3206, file: !3205, line: 59, baseType: !605, size: 256, offset: 640)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !3206, file: !3205, line: 60, baseType: !176, size: 64, offset: 896)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !3206, file: !3205, line: 61, baseType: !3219, size: 64, offset: 960)
!3219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3220, size: 64)
!3220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3221)
!3221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !3222, line: 13, size: 1216, elements: !3223)
!3222 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!3223 = !{!3224, !3225, !3226, !3227, !3228, !3229, !3230, !3231, !3232, !3233, !3234, !3235, !3236, !3237, !3238, !3239, !3240, !3241, !3242}
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3221, file: !3222, line: 14, baseType: !176, size: 64)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3221, file: !3222, line: 15, baseType: !205, size: 64, offset: 64)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !3221, file: !3222, line: 17, baseType: !205, size: 64, offset: 128)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !3221, file: !3222, line: 17, baseType: !205, size: 64, offset: 192)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !3221, file: !3222, line: 18, baseType: !205, size: 64, offset: 256)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !3221, file: !3222, line: 18, baseType: !205, size: 64, offset: 320)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !3221, file: !3222, line: 19, baseType: !1914, size: 64, offset: 384)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !3221, file: !3222, line: 21, baseType: !1075, size: 64, offset: 448)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !3221, file: !3222, line: 23, baseType: !1075, size: 64, offset: 512)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !3221, file: !3222, line: 24, baseType: !1075, size: 64, offset: 576)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !3221, file: !3222, line: 25, baseType: !1075, size: 64, offset: 640)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !3221, file: !3222, line: 26, baseType: !1075, size: 64, offset: 704)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !3221, file: !3222, line: 27, baseType: !1075, size: 64, offset: 768)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !3221, file: !3222, line: 28, baseType: !1075, size: 64, offset: 832)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !3221, file: !3222, line: 29, baseType: !1075, size: 64, offset: 896)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !3221, file: !3222, line: 30, baseType: !1075, size: 64, offset: 960)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !3221, file: !3222, line: 31, baseType: !1075, size: 64, offset: 1024)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !3221, file: !3222, line: 32, baseType: !1075, size: 64, offset: 1088)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !3221, file: !3222, line: 33, baseType: !1075, size: 64, offset: 1152)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !3206, file: !3205, line: 63, baseType: !217, size: 32, offset: 1024)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !3206, file: !3205, line: 69, baseType: !156, size: 16, offset: 1056)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !3206, file: !3205, line: 70, baseType: !167, size: 16, offset: 1072)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !545, file: !83, line: 882, baseType: !205, size: 64, offset: 9024)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !545, file: !83, line: 885, baseType: !559, size: 32, offset: 9088)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !545, file: !83, line: 886, baseType: !3249, size: 64, offset: 9152)
!3249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3250, size: 64)
!3250 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !83, line: 732, flags: DIFlagFwdDecl)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !545, file: !83, line: 901, baseType: !887, size: 64, offset: 9216)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !545, file: !83, line: 904, baseType: !577, size: 64, offset: 9280)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !545, file: !83, line: 906, baseType: !3254, size: 64, offset: 9344)
!3254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3255, size: 64)
!3255 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !83, line: 906, flags: DIFlagFwdDecl)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !545, file: !83, line: 930, baseType: !217, size: 32, offset: 9408)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !545, file: !83, line: 933, baseType: !217, size: 32, offset: 9440)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !545, file: !83, line: 935, baseType: !3259, size: 64, offset: 9472)
!3259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !129, line: 103, size: 64, elements: !3260)
!3260 = !{!3261}
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !3259, file: !129, line: 104, baseType: !3262, size: 64)
!3262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3263, size: 64)
!3263 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !129, line: 101, flags: DIFlagFwdDecl)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !545, file: !83, line: 940, baseType: !598, size: 64, offset: 9536)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !545, file: !83, line: 942, baseType: !2306, size: 256, offset: 9600)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !542, file: !83, line: 986, baseType: !3267, offset: 10240)
!3267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, elements: !683)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !197, file: !198, line: 882, baseType: !541, size: 64, offset: 9792)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !197, file: !198, line: 884, baseType: !172, size: 32, offset: 9856)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !197, file: !198, line: 885, baseType: !172, size: 32, offset: 9888)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !197, file: !198, line: 886, baseType: !172, size: 32, offset: 9920)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !197, file: !198, line: 888, baseType: !172, size: 32, offset: 9952)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !197, file: !198, line: 890, baseType: !205, size: 64, offset: 9984)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !197, file: !198, line: 893, baseType: !13, size: 32, offset: 10048)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !197, file: !198, line: 896, baseType: !13, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !197, file: !198, line: 897, baseType: !13, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !197, file: !198, line: 898, baseType: !13, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !197, file: !198, line: 899, baseType: !13, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !197, file: !198, line: 919, baseType: !13, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !197, file: !198, line: 922, baseType: !13, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !197, file: !198, line: 923, baseType: !13, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !197, file: !198, line: 925, baseType: !13, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !197, file: !198, line: 939, baseType: !13, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !197, file: !198, line: 941, baseType: !13, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !197, file: !198, line: 944, baseType: !13, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !197, file: !198, line: 956, baseType: !13, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !197, file: !198, line: 962, baseType: !13, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !197, file: !198, line: 966, baseType: !13, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !197, file: !198, line: 969, baseType: !205, size: 64, offset: 10176)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !197, file: !198, line: 971, baseType: !3291, size: 448, offset: 10240)
!3291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !123, line: 25, size: 448, elements: !3292)
!3292 = !{!3293, !3294, !3299}
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3291, file: !123, line: 26, baseType: !205, size: 64)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3291, file: !123, line: 27, baseType: !3295, size: 64, offset: 64)
!3295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3296, size: 64)
!3296 = !DISubroutineType(types: !3297)
!3297 = !{!1075, !3298}
!3298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3291, size: 64)
!3299 = !DIDerivedType(tag: DW_TAG_member, scope: !3291, file: !123, line: 28, baseType: !3300, size: 320, offset: 128)
!3300 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3291, file: !123, line: 28, size: 320, elements: !3301)
!3301 = !{!3302, !3311, !3336}
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3300, file: !123, line: 37, baseType: !3303, size: 320)
!3303 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3300, file: !123, line: 30, size: 320, elements: !3304)
!3304 = !{!3305, !3306, !3307, !3308, !3309, !3310}
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3303, file: !123, line: 31, baseType: !189, size: 64)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3303, file: !123, line: 32, baseType: !159, size: 32, offset: 64)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3303, file: !123, line: 33, baseType: !159, size: 32, offset: 96)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3303, file: !123, line: 34, baseType: !159, size: 32, offset: 128)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3303, file: !123, line: 35, baseType: !161, size: 64, offset: 192)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3303, file: !123, line: 36, baseType: !189, size: 64, offset: 256)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3300, file: !123, line: 47, baseType: !3312, size: 192)
!3312 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3300, file: !123, line: 39, size: 192, elements: !3313)
!3313 = !{!3314, !3315, !3316, !3335}
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3312, file: !123, line: 40, baseType: !406, size: 32)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3312, file: !123, line: 41, baseType: !122, size: 32, offset: 32)
!3316 = !DIDerivedType(tag: DW_TAG_member, scope: !3312, file: !123, line: 42, baseType: !3317, size: 64, offset: 64)
!3317 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3312, file: !123, line: 42, size: 64, elements: !3318)
!3318 = !{!3319, !3327}
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3317, file: !123, line: 43, baseType: !3320, size: 64)
!3320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3321, size: 64)
!3321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3322, line: 7, size: 128, elements: !3323)
!3322 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3323 = !{!3324, !3326}
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3321, file: !3322, line: 8, baseType: !3325, size: 64)
!3325 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !408, line: 93, baseType: !175)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3321, file: !3322, line: 9, baseType: !175, size: 64, offset: 64)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3317, file: !123, line: 44, baseType: !3328, size: 64)
!3328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3329, size: 64)
!3329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3330, line: 7, size: 64, elements: !3331)
!3330 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3331 = !{!3332, !3334}
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3329, file: !3330, line: 8, baseType: !3333, size: 32)
!3333 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3330, line: 5, baseType: !170)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3329, file: !3330, line: 9, baseType: !170, size: 32, offset: 32)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3312, file: !123, line: 46, baseType: !161, size: 64, offset: 128)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3300, file: !123, line: 55, baseType: !3337, size: 256)
!3337 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3300, file: !123, line: 49, size: 256, elements: !3338)
!3338 = !{!3339, !3342, !3343, !3344, !3345}
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3337, file: !123, line: 50, baseType: !3340, size: 64)
!3340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3341, size: 64)
!3341 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !123, line: 14, flags: DIFlagFwdDecl)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3337, file: !123, line: 51, baseType: !172, size: 32, offset: 64)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3337, file: !123, line: 52, baseType: !172, size: 32, offset: 96)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3337, file: !123, line: 53, baseType: !205, size: 64, offset: 128)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3337, file: !123, line: 54, baseType: !205, size: 64, offset: 192)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !197, file: !198, line: 973, baseType: !3347, size: 32, offset: 10688)
!3347 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !218, line: 27, baseType: !3348)
!3348 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !408, line: 28, baseType: !172)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !197, file: !198, line: 974, baseType: !3347, size: 32, offset: 10720)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !197, file: !198, line: 978, baseType: !205, size: 64, offset: 10752)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !197, file: !198, line: 987, baseType: !196, size: 64, offset: 10816)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !197, file: !198, line: 990, baseType: !196, size: 64, offset: 10880)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !197, file: !198, line: 995, baseType: !271, size: 128, offset: 10944)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !197, file: !198, line: 996, baseType: !271, size: 128, offset: 11072)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !197, file: !198, line: 997, baseType: !196, size: 64, offset: 11200)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !197, file: !198, line: 1005, baseType: !271, size: 128, offset: 11264)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !197, file: !198, line: 1006, baseType: !271, size: 128, offset: 11392)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !197, file: !198, line: 1009, baseType: !647, size: 64, offset: 11520)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !197, file: !198, line: 1010, baseType: !3360, size: 512, offset: 11584)
!3360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !659, size: 512, elements: !664)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !197, file: !198, line: 1011, baseType: !271, size: 128, offset: 12096)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !197, file: !198, line: 1012, baseType: !271, size: 128, offset: 12224)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !197, file: !198, line: 1014, baseType: !2060, size: 64, offset: 12352)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !197, file: !198, line: 1017, baseType: !2194, size: 64, offset: 12416)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !197, file: !198, line: 1020, baseType: !2194, size: 64, offset: 12480)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !197, file: !198, line: 1023, baseType: !176, size: 64, offset: 12544)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !197, file: !198, line: 1025, baseType: !161, size: 64, offset: 12608)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !197, file: !198, line: 1026, baseType: !161, size: 64, offset: 12672)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !197, file: !198, line: 1031, baseType: !161, size: 64, offset: 12736)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !197, file: !198, line: 1032, baseType: !3371, size: 192, offset: 12800)
!3371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !198, line: 324, size: 192, elements: !3372)
!3372 = !{!3373, !3374, !3375}
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3371, file: !198, line: 326, baseType: !161, size: 64)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3371, file: !198, line: 327, baseType: !161, size: 64, offset: 64)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3371, file: !198, line: 328, baseType: !361, size: 32, offset: 128)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !197, file: !198, line: 1041, baseType: !205, size: 64, offset: 12992)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !197, file: !198, line: 1042, baseType: !205, size: 64, offset: 13056)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !197, file: !198, line: 1045, baseType: !161, size: 64, offset: 13120)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !197, file: !198, line: 1048, baseType: !161, size: 64, offset: 13184)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !197, file: !198, line: 1051, baseType: !205, size: 64, offset: 13248)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !197, file: !198, line: 1052, baseType: !205, size: 64, offset: 13312)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !197, file: !198, line: 1055, baseType: !3383, size: 640, offset: 13376)
!3383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3384, line: 132, size: 640, elements: !3385)
!3384 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3385 = !{!3386, !3392, !3393}
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3383, file: !3384, line: 133, baseType: !3387, size: 576)
!3387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3388, size: 576, elements: !643)
!3388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3384, line: 117, size: 192, elements: !3389)
!3389 = !{!3390, !3391}
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3388, file: !3384, line: 118, baseType: !161, size: 64)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3388, file: !3384, line: 119, baseType: !421, size: 128, offset: 64)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3383, file: !3384, line: 134, baseType: !13, size: 32, offset: 576)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3383, file: !3384, line: 135, baseType: !13, size: 32, offset: 608)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !197, file: !198, line: 1058, baseType: !3395, size: 448, offset: 14016)
!3395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3384, line: 144, size: 448, elements: !3396)
!3396 = !{!3397, !3398, !3399}
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3395, file: !3384, line: 145, baseType: !585, size: 128, align: 64)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3395, file: !3384, line: 146, baseType: !605, size: 256, offset: 128)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3395, file: !3384, line: 147, baseType: !13, size: 32, offset: 384)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !197, file: !198, line: 1064, baseType: !697, size: 64, offset: 14464)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !197, file: !198, line: 1067, baseType: !697, size: 64, offset: 14528)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !197, file: !198, line: 1070, baseType: !697, size: 64, offset: 14592)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !197, file: !198, line: 1074, baseType: !730, size: 64, offset: 14656)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !197, file: !198, line: 1084, baseType: !3405, size: 128, offset: 14720)
!3405 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !2802)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !197, file: !198, line: 1086, baseType: !3407, size: 64, offset: 14848)
!3407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3408, size: 64)
!3408 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !198, line: 55, flags: DIFlagFwdDecl)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !197, file: !198, line: 1089, baseType: !3410, size: 64, offset: 14912)
!3410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3411, line: 12, size: 64, elements: !3412)
!3411 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3412 = !{!3413}
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3410, file: !3411, line: 13, baseType: !3414, size: 64)
!3414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3415, size: 64)
!3415 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3411, line: 8, flags: DIFlagFwdDecl)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !197, file: !198, line: 1090, baseType: !3417, size: 128, offset: 14976)
!3417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3418, line: 13, size: 128, elements: !3419)
!3418 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3419 = !{!3420}
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3417, file: !3418, line: 14, baseType: !271, size: 128)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !197, file: !198, line: 1097, baseType: !3422, size: 64, offset: 15104)
!3422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3423, size: 64)
!3423 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !198, line: 50, flags: DIFlagFwdDecl)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !197, file: !198, line: 1100, baseType: !3425, size: 64, offset: 15168)
!3425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3426, size: 64)
!3426 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !198, line: 1100, flags: DIFlagFwdDecl)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !197, file: !198, line: 1103, baseType: !3428, size: 64, offset: 15232)
!3428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3429, size: 64)
!3429 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !198, line: 53, flags: DIFlagFwdDecl)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !197, file: !198, line: 1107, baseType: !3431, size: 64, offset: 15296)
!3431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3432, size: 64)
!3432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !3433, line: 31, size: 576, elements: !3434)
!3433 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!3434 = !{!3435, !3436, !3439, !3442, !3445, !3446, !3449, !3452, !3453}
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3432, file: !3433, line: 32, baseType: !212, size: 32)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !3432, file: !3433, line: 33, baseType: !3437, size: 64, offset: 64)
!3437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3438, size: 64)
!3438 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !3433, line: 9, flags: DIFlagFwdDecl)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !3432, file: !3433, line: 34, baseType: !3440, size: 64, offset: 128)
!3440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3441, size: 64)
!3441 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !3433, line: 10, flags: DIFlagFwdDecl)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !3432, file: !3433, line: 35, baseType: !3443, size: 64, offset: 192)
!3443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3444, size: 64)
!3444 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !3433, line: 8, flags: DIFlagFwdDecl)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !3432, file: !3433, line: 36, baseType: !681, size: 64, offset: 256)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !3432, file: !3433, line: 37, baseType: !3447, size: 64, offset: 320)
!3447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3448, size: 64)
!3448 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !732, line: 34, flags: DIFlagFwdDecl)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !3432, file: !3433, line: 38, baseType: !3450, size: 64, offset: 384)
!3450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3451, size: 64)
!3451 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !3433, line: 38, flags: DIFlagFwdDecl)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !3432, file: !3433, line: 39, baseType: !3450, size: 64, offset: 448)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !3432, file: !3433, line: 40, baseType: !3454, size: 64, offset: 512)
!3454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3455, size: 64)
!3455 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !3433, line: 12, flags: DIFlagFwdDecl)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !197, file: !198, line: 1110, baseType: !3457, size: 64, offset: 15360)
!3457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3458, size: 64)
!3458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3459, line: 93, size: 8768, elements: !3460)
!3459 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3460 = !{!3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3508, !3517, !3518, !3520, !3521, !3522, !3525, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3563, !3564, !3571, !3581, !3584, !3585, !3588, !3589, !3590, !3591, !3592, !3593}
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3458, file: !3459, line: 94, baseType: !212, size: 32)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3458, file: !3459, line: 95, baseType: !217, size: 32, offset: 32)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3458, file: !3459, line: 96, baseType: !172, size: 32, offset: 64)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3458, file: !3459, line: 97, baseType: !172, size: 32, offset: 96)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3458, file: !3459, line: 98, baseType: !271, size: 128, offset: 128)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3458, file: !3459, line: 100, baseType: !668, size: 192, offset: 256)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3458, file: !3459, line: 103, baseType: !196, size: 64, offset: 448)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3458, file: !3459, line: 106, baseType: !3469, size: 192, offset: 512)
!3469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !892, line: 32, size: 192, elements: !3470)
!3470 = !{!3471, !3472}
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3469, file: !892, line: 33, baseType: !271, size: 128)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3469, file: !892, line: 34, baseType: !3473, size: 64, offset: 128)
!3473 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3474, line: 25, baseType: !3475)
!3474 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3475 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3474, line: 23, size: 64, elements: !3476)
!3476 = !{!3477}
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3475, file: !3474, line: 24, baseType: !492, size: 64)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3458, file: !3459, line: 109, baseType: !655, size: 64, offset: 704)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3458, file: !3459, line: 112, baseType: !172, size: 32, offset: 768)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3458, file: !3459, line: 114, baseType: !172, size: 32, offset: 800)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3458, file: !3459, line: 115, baseType: !196, size: 64, offset: 832)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3458, file: !3459, line: 118, baseType: !172, size: 32, offset: 896)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3458, file: !3459, line: 119, baseType: !13, size: 32, offset: 928)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3458, file: !3459, line: 121, baseType: !3485, size: 64, offset: 960)
!3485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3486, size: 64)
!3486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3459, line: 80, size: 448, elements: !3487)
!3487 = !{!3488, !3489, !3495}
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3486, file: !3459, line: 81, baseType: !217, size: 32)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3486, file: !3459, line: 82, baseType: !3490, size: 128, offset: 64)
!3490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3459, line: 75, size: 128, elements: !3491)
!3491 = !{!3492, !3493}
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3490, file: !3459, line: 76, baseType: !196, size: 64)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3490, file: !3459, line: 77, baseType: !3494, size: 64, offset: 64)
!3494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3490, size: 64)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3486, file: !3459, line: 83, baseType: !1428, size: 256, offset: 192)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3458, file: !3459, line: 132, baseType: !13, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3458, file: !3459, line: 133, baseType: !13, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3458, file: !3459, line: 138, baseType: !13, size: 32, offset: 1056)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3458, file: !3459, line: 139, baseType: !271, size: 128, offset: 1088)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3458, file: !3459, line: 142, baseType: !336, size: 512, offset: 1216)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3458, file: !3459, line: 143, baseType: !344, size: 64, offset: 1728)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3458, file: !3459, line: 150, baseType: !3503, size: 256, offset: 1792)
!3503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3504, size: 256, elements: !2184)
!3504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3459, line: 38, size: 128, elements: !3505)
!3505 = !{!3506, !3507}
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3504, file: !3459, line: 39, baseType: !161, size: 64)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3504, file: !3459, line: 40, baseType: !161, size: 64, offset: 64)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3458, file: !3459, line: 156, baseType: !3509, size: 192, offset: 2048)
!3509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3459, line: 66, size: 192, elements: !3510)
!3510 = !{!3511}
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3509, file: !3459, line: 67, baseType: !3512, size: 192)
!3512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3459, line: 47, size: 192, elements: !3513)
!3513 = !{!3514, !3515, !3516}
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3512, file: !3459, line: 48, baseType: !600, size: 64)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3512, file: !3459, line: 49, baseType: !600, size: 64, offset: 64)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3512, file: !3459, line: 50, baseType: !600, size: 64, offset: 128)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3458, file: !3459, line: 160, baseType: !3383, size: 640, offset: 2240)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3458, file: !3459, line: 163, baseType: !3519, size: 256, offset: 2880)
!3519 = !DICompositeType(tag: DW_TAG_array_type, baseType: !647, size: 256, elements: !664)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3458, file: !3459, line: 169, baseType: !647, size: 64, offset: 3136)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3458, file: !3459, line: 172, baseType: !172, size: 32, offset: 3200)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3458, file: !3459, line: 174, baseType: !3523, size: 64, offset: 3264)
!3523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3524, size: 64)
!3524 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3459, line: 174, flags: DIFlagFwdDecl)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3458, file: !3459, line: 185, baseType: !3526, size: 64, offset: 3328)
!3526 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !411, line: 860, baseType: !3527)
!3527 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !411, line: 853, size: 64, elements: !3528)
!3528 = !{!3529, !3530}
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3527, file: !411, line: 858, baseType: !931, size: 32)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3527, file: !411, line: 859, baseType: !559, size: 32, offset: 32)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3458, file: !3459, line: 186, baseType: !161, size: 64, offset: 3392)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3458, file: !3459, line: 186, baseType: !161, size: 64, offset: 3456)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3458, file: !3459, line: 186, baseType: !161, size: 64, offset: 3520)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3458, file: !3459, line: 186, baseType: !161, size: 64, offset: 3584)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3458, file: !3459, line: 187, baseType: !161, size: 64, offset: 3648)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3458, file: !3459, line: 188, baseType: !161, size: 64, offset: 3712)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3458, file: !3459, line: 189, baseType: !3371, size: 192, offset: 3776)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3458, file: !3459, line: 190, baseType: !205, size: 64, offset: 3968)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3458, file: !3459, line: 190, baseType: !205, size: 64, offset: 4032)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3458, file: !3459, line: 190, baseType: !205, size: 64, offset: 4096)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3458, file: !3459, line: 190, baseType: !205, size: 64, offset: 4160)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3458, file: !3459, line: 191, baseType: !205, size: 64, offset: 4224)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3458, file: !3459, line: 191, baseType: !205, size: 64, offset: 4288)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3458, file: !3459, line: 191, baseType: !205, size: 64, offset: 4352)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3458, file: !3459, line: 191, baseType: !205, size: 64, offset: 4416)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3458, file: !3459, line: 192, baseType: !205, size: 64, offset: 4480)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3458, file: !3459, line: 192, baseType: !205, size: 64, offset: 4544)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3458, file: !3459, line: 192, baseType: !205, size: 64, offset: 4608)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3458, file: !3459, line: 192, baseType: !205, size: 64, offset: 4672)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3458, file: !3459, line: 193, baseType: !205, size: 64, offset: 4736)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3458, file: !3459, line: 193, baseType: !205, size: 64, offset: 4800)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3458, file: !3459, line: 194, baseType: !3553, size: 448, offset: 4864)
!3553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3554, line: 12, size: 448, elements: !3555)
!3554 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3555 = !{!3556, !3557, !3558, !3559, !3560, !3561, !3562}
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3553, file: !3554, line: 15, baseType: !161, size: 64)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3553, file: !3554, line: 17, baseType: !161, size: 64, offset: 64)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3553, file: !3554, line: 19, baseType: !161, size: 64, offset: 128)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3553, file: !3554, line: 21, baseType: !161, size: 64, offset: 192)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3553, file: !3554, line: 29, baseType: !161, size: 64, offset: 256)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3553, file: !3554, line: 35, baseType: !161, size: 64, offset: 320)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3553, file: !3554, line: 44, baseType: !161, size: 64, offset: 384)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3458, file: !3459, line: 202, baseType: !163, size: 64, offset: 5312)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3458, file: !3459, line: 213, baseType: !3565, size: 2048, offset: 5376)
!3565 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3566, size: 2048, elements: !2802)
!3566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3567, line: 43, size: 128, elements: !3568)
!3567 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3568 = !{!3569, !3570}
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3566, file: !3567, line: 44, baseType: !1119, size: 64)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3566, file: !3567, line: 45, baseType: !1119, size: 64, offset: 64)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3458, file: !3459, line: 216, baseType: !3572, size: 448, offset: 7424)
!3572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3459, line: 30, size: 448, elements: !3573)
!3573 = !{!3574, !3575, !3576, !3577, !3578, !3579, !3580}
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3572, file: !3459, line: 31, baseType: !172, size: 32)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3572, file: !3459, line: 32, baseType: !1075, size: 64, offset: 64)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3572, file: !3459, line: 33, baseType: !205, size: 64, offset: 128)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3572, file: !3459, line: 34, baseType: !161, size: 64, offset: 192)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3572, file: !3459, line: 34, baseType: !161, size: 64, offset: 256)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3572, file: !3459, line: 35, baseType: !205, size: 64, offset: 320)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3572, file: !3459, line: 35, baseType: !205, size: 64, offset: 384)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3458, file: !3459, line: 219, baseType: !3582, size: 64, offset: 7872)
!3582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3583, size: 64)
!3583 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3459, line: 219, flags: DIFlagFwdDecl)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3458, file: !3459, line: 222, baseType: !13, size: 32, offset: 7936)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3458, file: !3459, line: 223, baseType: !3586, size: 64, offset: 8000)
!3586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3587, size: 64)
!3587 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3459, line: 223, flags: DIFlagFwdDecl)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3458, file: !3459, line: 230, baseType: !802, size: 8, offset: 8064)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3458, file: !3459, line: 231, baseType: !169, size: 16, offset: 8080)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3458, file: !3459, line: 232, baseType: !169, size: 16, offset: 8096)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3458, file: !3459, line: 234, baseType: !541, size: 64, offset: 8128)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3458, file: !3459, line: 237, baseType: !605, size: 256, offset: 8192)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3458, file: !3459, line: 243, baseType: !744, size: 320, offset: 8448)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !197, file: !198, line: 1111, baseType: !3595, size: 64, offset: 15424)
!3595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3596, size: 64)
!3596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3459, line: 20, size: 16640, elements: !3597)
!3597 = !{!3598, !3599, !3600, !3601}
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3596, file: !3459, line: 21, baseType: !559, size: 32)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3596, file: !3459, line: 22, baseType: !212, size: 32, offset: 32)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3596, file: !3459, line: 23, baseType: !668, size: 192, offset: 64)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3596, file: !3459, line: 24, baseType: !3602, size: 16384, offset: 256)
!3602 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3603, size: 16384, elements: !1262)
!3603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !892, line: 51, size: 256, elements: !3604)
!3604 = !{!3605}
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3603, file: !892, line: 52, baseType: !3606, size: 256)
!3606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !892, line: 37, size: 256, elements: !3607)
!3607 = !{!3608, !3615, !3616, !3620}
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3606, file: !892, line: 39, baseType: !3609, size: 64)
!3609 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3610, line: 83, baseType: !3611)
!3610 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3612, size: 64)
!3612 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3610, line: 82, baseType: !3613)
!3613 = !DISubroutineType(types: !3614)
!3614 = !{null, !172}
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3606, file: !892, line: 40, baseType: !205, size: 64, offset: 64)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3606, file: !892, line: 46, baseType: !3617, size: 64, offset: 128)
!3617 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3610, line: 86, baseType: !3618)
!3618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3619, size: 64)
!3619 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3610, line: 85, baseType: !2410)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3606, file: !892, line: 48, baseType: !3473, size: 64, offset: 192)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !197, file: !198, line: 1112, baseType: !3473, size: 64, offset: 15488)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !197, file: !198, line: 1113, baseType: !3473, size: 64, offset: 15552)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !197, file: !198, line: 1115, baseType: !3473, size: 64, offset: 15616)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !197, file: !198, line: 1116, baseType: !3469, size: 192, offset: 15680)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !197, file: !198, line: 1117, baseType: !205, size: 64, offset: 15872)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !197, file: !198, line: 1118, baseType: !1117, size: 64, offset: 15936)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !197, file: !198, line: 1119, baseType: !13, size: 32, offset: 16000)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !197, file: !198, line: 1121, baseType: !588, size: 64, offset: 16064)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !197, file: !198, line: 1125, baseType: !3630, size: 64, offset: 16128)
!3630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3631, size: 64)
!3631 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !198, line: 43, flags: DIFlagFwdDecl)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !197, file: !198, line: 1127, baseType: !687, size: 32, offset: 16192)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !197, file: !198, line: 1128, baseType: !13, size: 32, offset: 16224)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !197, file: !198, line: 1130, baseType: !3635, size: 128, offset: 16256)
!3635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3636, line: 37, size: 128, elements: !3637)
!3636 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3637 = !{!3638, !3639, !3640}
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3635, file: !3636, line: 38, baseType: !172, size: 32)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3635, file: !3636, line: 39, baseType: !217, size: 32, offset: 32)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3635, file: !3636, line: 40, baseType: !3641, size: 64, offset: 64)
!3641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3642, size: 64)
!3642 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3636, line: 24, flags: DIFlagFwdDecl)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !197, file: !198, line: 1131, baseType: !3644, size: 256, offset: 16384)
!3644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3645, line: 12, size: 256, elements: !3646)
!3645 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3646 = !{!3647, !3648, !3649, !3650}
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3644, file: !3645, line: 13, baseType: !815, size: 64)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3644, file: !3645, line: 14, baseType: !205, size: 64, offset: 64)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3644, file: !3645, line: 15, baseType: !205, size: 64, offset: 128)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3644, file: !3645, line: 16, baseType: !802, size: 8, offset: 192)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !197, file: !198, line: 1134, baseType: !161, size: 64, offset: 16640)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !197, file: !198, line: 1135, baseType: !161, size: 64, offset: 16704)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !197, file: !198, line: 1138, baseType: !559, size: 32, offset: 16768)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !197, file: !198, line: 1141, baseType: !361, size: 32, offset: 16800)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !197, file: !198, line: 1143, baseType: !3656, size: 64, offset: 16832)
!3656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !198, line: 735, size: 64, elements: !3657)
!3657 = !{!3658}
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3656, file: !198, line: 736, baseType: !3659, size: 64)
!3659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3656, size: 64)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !197, file: !198, line: 1147, baseType: !424, size: 128, offset: 16896)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !197, file: !198, line: 1149, baseType: !196, size: 64, offset: 17024)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !197, file: !198, line: 1151, baseType: !3663, size: 64, offset: 17088)
!3663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3664, size: 64)
!3664 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !198, line: 1151, flags: DIFlagFwdDecl)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !197, file: !198, line: 1188, baseType: !176, size: 64, offset: 17152)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !197, file: !198, line: 1191, baseType: !3667, size: 64, offset: 17216)
!3667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3668, size: 64)
!3668 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !198, line: 44, flags: DIFlagFwdDecl)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !197, file: !198, line: 1194, baseType: !3670, size: 64, offset: 17280)
!3670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3671, size: 64)
!3671 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !198, line: 45, flags: DIFlagFwdDecl)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !197, file: !198, line: 1197, baseType: !3673, size: 64, offset: 17344)
!3673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3674, size: 64)
!3674 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !198, line: 61, flags: DIFlagFwdDecl)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !197, file: !198, line: 1199, baseType: !3676, size: 64, offset: 17408)
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3678, line: 99, size: 128, elements: !3679)
!3678 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3679 = !{!3680, !3681, !3682}
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3677, file: !3678, line: 100, baseType: !598, size: 64)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3677, file: !3678, line: 101, baseType: !217, size: 32, offset: 64)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3677, file: !3678, line: 103, baseType: !158, size: 16, offset: 96)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !197, file: !198, line: 1202, baseType: !3684, size: 64, offset: 17472)
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3685, size: 64)
!3685 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !198, line: 48, flags: DIFlagFwdDecl)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !197, file: !198, line: 1205, baseType: !205, size: 64, offset: 17536)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !197, file: !198, line: 1206, baseType: !3688, size: 64, offset: 17600)
!3688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3689, size: 64)
!3689 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !892, line: 14, baseType: !3690)
!3690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !892, line: 12, size: 384, elements: !3691)
!3691 = !{!3692}
!3692 = !DIDerivedType(tag: DW_TAG_member, scope: !3690, file: !892, line: 13, baseType: !3693, size: 384)
!3693 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3690, file: !892, line: 13, size: 384, elements: !3694)
!3694 = !{!3695, !3696, !3697, !3698}
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3693, file: !892, line: 13, baseType: !172, size: 32)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3693, file: !892, line: 13, baseType: !172, size: 32, offset: 32)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3693, file: !892, line: 13, baseType: !172, size: 32, offset: 64)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3693, file: !892, line: 13, baseType: !3699, size: 256, offset: 128)
!3699 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3700, line: 37, size: 256, elements: !3701)
!3700 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3701 = !{!3702, !3707, !3720, !3726, !3735, !3762, !3767}
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3699, file: !3700, line: 42, baseType: !3703, size: 64)
!3703 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3699, file: !3700, line: 39, size: 64, elements: !3704)
!3704 = !{!3705, !3706}
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3703, file: !3700, line: 40, baseType: !3348, size: 32)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3703, file: !3700, line: 41, baseType: !693, size: 32, offset: 32)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3699, file: !3700, line: 50, baseType: !3708, size: 192)
!3708 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3699, file: !3700, line: 45, size: 192, elements: !3709)
!3709 = !{!3710, !3712, !3713, !3719}
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3708, file: !3700, line: 46, baseType: !3711, size: 32)
!3711 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !408, line: 95, baseType: !172)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3708, file: !3700, line: 47, baseType: !172, size: 32, offset: 32)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3708, file: !3700, line: 48, baseType: !3714, size: 64, offset: 64)
!3714 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3700, line: 11, baseType: !3715)
!3715 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3700, line: 8, size: 64, elements: !3716)
!3716 = !{!3717, !3718}
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3715, file: !3700, line: 9, baseType: !172, size: 32)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3715, file: !3700, line: 10, baseType: !176, size: 64)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3708, file: !3700, line: 49, baseType: !172, size: 32, offset: 128)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3699, file: !3700, line: 57, baseType: !3721, size: 128)
!3721 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3699, file: !3700, line: 53, size: 128, elements: !3722)
!3722 = !{!3723, !3724, !3725}
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3721, file: !3700, line: 54, baseType: !3348, size: 32)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3721, file: !3700, line: 55, baseType: !693, size: 32, offset: 32)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3721, file: !3700, line: 56, baseType: !3714, size: 64, offset: 64)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3699, file: !3700, line: 66, baseType: !3727, size: 256)
!3727 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3699, file: !3700, line: 60, size: 256, elements: !3728)
!3728 = !{!3729, !3730, !3731, !3732, !3734}
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3727, file: !3700, line: 61, baseType: !3348, size: 32)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3727, file: !3700, line: 62, baseType: !693, size: 32, offset: 32)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3727, file: !3700, line: 63, baseType: !172, size: 32, offset: 64)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3727, file: !3700, line: 64, baseType: !3733, size: 64, offset: 128)
!3733 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !408, line: 94, baseType: !1116)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3727, file: !3700, line: 65, baseType: !3733, size: 64, offset: 192)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3699, file: !3700, line: 105, baseType: !3736, size: 256)
!3736 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3699, file: !3700, line: 69, size: 256, elements: !3737)
!3737 = !{!3738, !3739}
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3736, file: !3700, line: 70, baseType: !176, size: 64)
!3739 = !DIDerivedType(tag: DW_TAG_member, scope: !3736, file: !3700, line: 79, baseType: !3740, size: 192, offset: 64)
!3740 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3736, file: !3700, line: 79, size: 192, elements: !3741)
!3741 = !{!3742, !3743, !3744, !3751, !3756}
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3740, file: !3700, line: 81, baseType: !172, size: 32)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3740, file: !3700, line: 86, baseType: !169, size: 16)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3740, file: !3700, line: 92, baseType: !3745, size: 192)
!3745 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3740, file: !3700, line: 88, size: 192, elements: !3746)
!3746 = !{!3747, !3749, !3750}
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3745, file: !3700, line: 89, baseType: !3748, size: 64)
!3748 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !402)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3745, file: !3700, line: 90, baseType: !176, size: 64, offset: 64)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3745, file: !3700, line: 91, baseType: !176, size: 64, offset: 128)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3740, file: !3700, line: 97, baseType: !3752, size: 96)
!3752 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3740, file: !3700, line: 94, size: 96, elements: !3753)
!3753 = !{!3754, !3755}
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3752, file: !3700, line: 95, baseType: !3748, size: 64)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3752, file: !3700, line: 96, baseType: !160, size: 32, offset: 64)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3740, file: !3700, line: 103, baseType: !3757, size: 128)
!3757 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3740, file: !3700, line: 99, size: 128, elements: !3758)
!3758 = !{!3759, !3760, !3761}
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3757, file: !3700, line: 100, baseType: !205, size: 64)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3757, file: !3700, line: 101, baseType: !160, size: 32, offset: 64)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3757, file: !3700, line: 102, baseType: !160, size: 32, offset: 96)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3699, file: !3700, line: 111, baseType: !3763, size: 128)
!3763 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3699, file: !3700, line: 108, size: 128, elements: !3764)
!3764 = !{!3765, !3766}
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3763, file: !3700, line: 109, baseType: !1075, size: 64)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3763, file: !3700, line: 110, baseType: !172, size: 32, offset: 64)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3699, file: !3700, line: 118, baseType: !3768, size: 128)
!3768 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3699, file: !3700, line: 114, size: 128, elements: !3769)
!3769 = !{!3770, !3771, !3772}
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3768, file: !3700, line: 115, baseType: !176, size: 64)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3768, file: !3700, line: 116, baseType: !172, size: 32, offset: 64)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3768, file: !3700, line: 117, baseType: !13, size: 32, offset: 96)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !197, file: !198, line: 1208, baseType: !3553, size: 448, offset: 17664)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !197, file: !198, line: 1215, baseType: !161, size: 64, offset: 18112)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !197, file: !198, line: 1217, baseType: !161, size: 64, offset: 18176)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !197, file: !198, line: 1219, baseType: !161, size: 64, offset: 18240)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !197, file: !198, line: 1223, baseType: !3778, size: 64, offset: 18304)
!3778 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3779, line: 99, baseType: !3780)
!3779 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3780 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3779, line: 99, size: 64, elements: !3781)
!3781 = !{!3782}
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3780, file: !3779, line: 99, baseType: !492, size: 64)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !197, file: !198, line: 1225, baseType: !931, size: 32, offset: 18368)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !197, file: !198, line: 1226, baseType: !172, size: 32, offset: 18400)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !197, file: !198, line: 1227, baseType: !172, size: 32, offset: 18432)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !197, file: !198, line: 1231, baseType: !3787, size: 64, offset: 18496)
!3787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3788, size: 64)
!3788 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !198, line: 1231, flags: DIFlagFwdDecl)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !197, file: !198, line: 1233, baseType: !271, size: 128, offset: 18560)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !197, file: !198, line: 1240, baseType: !3791, size: 64, offset: 18688)
!3791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3792, size: 64)
!3792 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !198, line: 62, flags: DIFlagFwdDecl)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !197, file: !198, line: 1242, baseType: !3794, size: 64, offset: 18752)
!3794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3795, size: 64)
!3795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !3796, line: 392, size: 96, elements: !3797)
!3796 = !DIFile(filename: "./include/linux/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4fb3431a0ca9e11a8015b961c002b640")
!3797 = !{!3798, !3804, !3806}
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3795, file: !3796, line: 393, baseType: !3799, size: 32)
!3799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list", file: !3796, line: 388, size: 32, elements: !3800)
!3800 = !{!3801}
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3799, file: !3796, line: 389, baseType: !3802, size: 32)
!3802 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_uptr_t", file: !3803, line: 46, baseType: !159)
!3803 = !DIFile(filename: "./include/asm-generic/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "789dd20e6944b4211a8be38fb9d0b245")
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "futex_offset", scope: !3795, file: !3796, line: 394, baseType: !3805, size: 32, offset: 32)
!3805 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_long_t", file: !3803, line: 42, baseType: !170)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "list_op_pending", scope: !3795, file: !3796, line: 395, baseType: !3802, size: 32, offset: 64)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !197, file: !198, line: 1244, baseType: !271, size: 128, offset: 18816)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !197, file: !198, line: 1245, baseType: !3809, size: 64, offset: 18944)
!3809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3810, size: 64)
!3810 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !198, line: 51, flags: DIFlagFwdDecl)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !197, file: !198, line: 1246, baseType: !605, size: 256, offset: 19008)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !197, file: !198, line: 1247, baseType: !13, size: 32, offset: 19264)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !197, file: !198, line: 1250, baseType: !3814, size: 64, offset: 19328)
!3814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3815, size: 64)
!3815 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !198, line: 57, flags: DIFlagFwdDecl)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !197, file: !198, line: 1251, baseType: !605, size: 256, offset: 19392)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !197, file: !198, line: 1252, baseType: !271, size: 128, offset: 19648)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !197, file: !198, line: 1259, baseType: !1556, size: 64, offset: 19776)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !197, file: !198, line: 1260, baseType: !169, size: 16, offset: 19840)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !197, file: !198, line: 1261, baseType: !169, size: 16, offset: 19856)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !197, file: !198, line: 1314, baseType: !3822, size: 64, offset: 19904)
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3823, size: 64)
!3823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3824, line: 62, size: 256, align: 256, elements: !3825)
!3824 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3825 = !{!3826, !3827, !3828, !3829, !3830, !3831, !3832}
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3823, file: !3824, line: 75, baseType: !160, size: 32)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3823, file: !3824, line: 90, baseType: !160, size: 32, offset: 32)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3823, file: !3824, line: 112, baseType: !162, size: 64, offset: 64)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3823, file: !3824, line: 132, baseType: !160, size: 32, offset: 128)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3823, file: !3824, line: 140, baseType: !160, size: 32, offset: 160)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3823, file: !3824, line: 149, baseType: !160, size: 32, offset: 192)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3823, file: !3824, line: 154, baseType: !3833, offset: 224)
!3833 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !683)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !197, file: !198, line: 1315, baseType: !159, size: 32, offset: 19968)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !197, file: !198, line: 1316, baseType: !159, size: 32, offset: 20000)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !197, file: !198, line: 1321, baseType: !205, size: 64, offset: 20032)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !197, file: !198, line: 1325, baseType: !172, size: 32, offset: 20096)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !197, file: !198, line: 1326, baseType: !172, size: 32, offset: 20128)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !197, file: !198, line: 1327, baseType: !172, size: 32, offset: 20160)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !197, file: !198, line: 1328, baseType: !172, size: 32, offset: 20192)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !197, file: !198, line: 1329, baseType: !585, size: 128, align: 64, offset: 20224)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !197, file: !198, line: 1332, baseType: !3843, size: 128, offset: 20352)
!3843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3844, line: 51, size: 128, elements: !3845)
!3844 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3845 = !{!3846, !3851, !3852}
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3843, file: !3844, line: 60, baseType: !3847, size: 64)
!3847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3848, line: 7, size: 64, elements: !3849)
!3848 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3849 = !{!3850}
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3847, file: !3848, line: 12, baseType: !489, size: 64)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3843, file: !3844, line: 63, baseType: !802, size: 8, offset: 64)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3843, file: !3844, line: 70, baseType: !802, size: 8, offset: 72)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !197, file: !198, line: 1335, baseType: !3040, size: 64, offset: 20480)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !197, file: !198, line: 1337, baseType: !3855, size: 128, offset: 20544)
!3855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3844, line: 39, size: 128, elements: !3856)
!3856 = !{!3857, !3858, !3859}
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3855, file: !3844, line: 40, baseType: !1343, size: 64)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3855, file: !3844, line: 42, baseType: !160, size: 32, offset: 64)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3855, file: !3844, line: 43, baseType: !160, size: 32, offset: 96)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !197, file: !198, line: 1340, baseType: !3861, size: 64, offset: 20672)
!3861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3862, size: 64)
!3862 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !198, line: 69, flags: DIFlagFwdDecl)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !197, file: !198, line: 1351, baseType: !172, size: 32, offset: 20736)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !197, file: !198, line: 1352, baseType: !172, size: 32, offset: 20768)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !197, file: !198, line: 1354, baseType: !205, size: 64, offset: 20800)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !197, file: !198, line: 1364, baseType: !161, size: 64, offset: 20864)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !197, file: !198, line: 1365, baseType: !161, size: 64, offset: 20928)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !197, file: !198, line: 1412, baseType: !205, size: 64, offset: 20992)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !197, file: !198, line: 1453, baseType: !3870, size: 64, offset: 21056)
!3870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3871, size: 64)
!3871 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !198, line: 1453, flags: DIFlagFwdDecl)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !197, file: !198, line: 1457, baseType: !3873, size: 64, offset: 21120)
!3873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3874, size: 64)
!3874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !129, line: 61, size: 576, elements: !3875)
!3875 = !{!3876, !3877, !3896, !3899, !3900, !3933, !3943}
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3874, file: !129, line: 62, baseType: !128, size: 32)
!3877 = !DIDerivedType(tag: DW_TAG_member, scope: !3874, file: !129, line: 64, baseType: !3878, size: 192, offset: 64)
!3878 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3874, file: !129, line: 64, size: 192, elements: !3879)
!3879 = !{!3880, !3891}
!3880 = !DIDerivedType(tag: DW_TAG_member, scope: !3878, file: !129, line: 65, baseType: !3881, size: 192)
!3881 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3878, file: !129, line: 65, size: 192, elements: !3882)
!3882 = !{!3883, !3890}
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3881, file: !129, line: 66, baseType: !3884, size: 128)
!3884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3885, line: 50, size: 128, elements: !3886)
!3885 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3886 = !{!3887, !3888, !3889}
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3884, file: !3885, line: 52, baseType: !205, size: 64)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3884, file: !3885, line: 54, baseType: !13, size: 32, offset: 64)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3884, file: !3885, line: 55, baseType: !13, size: 32, offset: 96)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3881, file: !129, line: 67, baseType: !205, size: 64, offset: 128)
!3891 = !DIDerivedType(tag: DW_TAG_member, scope: !3878, file: !129, line: 70, baseType: !3892, size: 192)
!3892 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3878, file: !129, line: 70, size: 192, elements: !3893)
!3893 = !{!3894, !3895}
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3892, file: !129, line: 71, baseType: !585, size: 128, align: 64)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3892, file: !129, line: 72, baseType: !205, size: 64, offset: 128)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3874, file: !129, line: 76, baseType: !3897, size: 64, offset: 256)
!3897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3898, size: 64)
!3898 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !129, line: 76, flags: DIFlagFwdDecl)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3874, file: !129, line: 77, baseType: !205, size: 64, offset: 320)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3874, file: !129, line: 79, baseType: !3901, size: 64, offset: 384)
!3901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3902, size: 64)
!3902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3885, line: 25, size: 256, elements: !3903)
!3903 = !{!3904, !3910, !3914}
!3904 = !DIDerivedType(tag: DW_TAG_member, scope: !3902, file: !3885, line: 26, baseType: !3905, size: 128)
!3905 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3902, file: !3885, line: 26, size: 128, elements: !3906)
!3906 = !{!3907, !3909}
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3905, file: !3885, line: 27, baseType: !3908, size: 128)
!3908 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 128, elements: !2802)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3905, file: !3885, line: 28, baseType: !3908, size: 128)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3902, file: !3885, line: 31, baseType: !3911, size: 64, offset: 128)
!3911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3912, size: 64)
!3912 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3913)
!3913 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3885, line: 23, flags: DIFlagFwdDecl)
!3914 = !DIDerivedType(tag: DW_TAG_member, scope: !3902, file: !3885, line: 33, baseType: !3915, size: 64, offset: 192)
!3915 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3902, file: !3885, line: 33, size: 64, elements: !3916)
!3916 = !{!3917, !3923, !3928}
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3915, file: !3885, line: 38, baseType: !3918, size: 64)
!3918 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3915, file: !3885, line: 34, size: 64, elements: !3919)
!3919 = !{!3920, !3921, !3922}
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3918, file: !3885, line: 35, baseType: !170, size: 32)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3918, file: !3885, line: 36, baseType: !151, size: 8, offset: 32)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3918, file: !3885, line: 37, baseType: !151, size: 8, offset: 40)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3915, file: !3885, line: 42, baseType: !3924, size: 16)
!3924 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3915, file: !3885, line: 39, size: 16, elements: !3925)
!3925 = !{!3926, !3927}
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3924, file: !3885, line: 40, baseType: !151, size: 8)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3924, file: !3885, line: 41, baseType: !151, size: 8, offset: 8)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3915, file: !3885, line: 46, baseType: !3929, size: 16)
!3929 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3915, file: !3885, line: 43, size: 16, elements: !3930)
!3930 = !{!3931, !3932}
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3929, file: !3885, line: 44, baseType: !151, size: 8)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3929, file: !3885, line: 45, baseType: !151, size: 8, offset: 8)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3874, file: !129, line: 81, baseType: !3934, size: 64, offset: 448)
!3934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3935, size: 64)
!3935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !129, line: 85, size: 384, elements: !3936)
!3936 = !{!3937, !3938, !3939, !3940, !3941, !3942}
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3935, file: !129, line: 86, baseType: !3897, size: 64)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3935, file: !129, line: 87, baseType: !205, size: 64, offset: 64)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3935, file: !129, line: 88, baseType: !205, size: 64, offset: 128)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3935, file: !129, line: 89, baseType: !205, size: 64, offset: 192)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3935, file: !129, line: 90, baseType: !802, size: 8, offset: 256)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3935, file: !129, line: 92, baseType: !3934, size: 64, offset: 320)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3874, file: !129, line: 82, baseType: !13, size: 32, offset: 512)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !197, file: !198, line: 1463, baseType: !3945, offset: 21184)
!3945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !198, line: 739, elements: !570)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !197, file: !198, line: 1470, baseType: !585, size: 128, align: 64, offset: 21184)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !197, file: !198, line: 1471, baseType: !212, size: 32, offset: 21312)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !197, file: !198, line: 1472, baseType: !172, size: 32, offset: 21344)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !197, file: !198, line: 1474, baseType: !196, size: 64, offset: 21376)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !197, file: !198, line: 1475, baseType: !2294, size: 320, offset: 21440)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !197, file: !198, line: 1478, baseType: !3952, size: 64, offset: 21760)
!3952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3953, size: 64)
!3953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3954, line: 49, size: 512, elements: !3955)
!3954 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!3955 = !{!3956, !3957, !3958, !3959, !3960, !3961, !3962, !3963, !3965}
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3953, file: !3954, line: 50, baseType: !3952, size: 64)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3953, file: !3954, line: 51, baseType: !176, size: 64, offset: 64)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3953, file: !3954, line: 52, baseType: !205, size: 64, offset: 128)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3953, file: !3954, line: 53, baseType: !205, size: 64, offset: 192)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3953, file: !3954, line: 54, baseType: !1730, size: 64, offset: 256)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3953, file: !3954, line: 56, baseType: !13, size: 32, offset: 320)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3953, file: !3954, line: 58, baseType: !13, size: 32, offset: 352)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3953, file: !3954, line: 59, baseType: !3964, size: 64, offset: 384)
!3964 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !218, line: 159, baseType: !161)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3953, file: !3954, line: 60, baseType: !1914, size: 64, offset: 448)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !197, file: !198, line: 1482, baseType: !212, size: 32, offset: 21824)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !197, file: !198, line: 1489, baseType: !176, size: 64, offset: 21888)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !197, file: !198, line: 1504, baseType: !176, size: 64, offset: 21952)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !197, file: !198, line: 1505, baseType: !162, size: 64, offset: 22016)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !197, file: !198, line: 1506, baseType: !161, size: 64, offset: 22080)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !197, file: !198, line: 1507, baseType: !162, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !197, file: !198, line: 1508, baseType: !162, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !197, file: !198, line: 1509, baseType: !162, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !197, file: !198, line: 1510, baseType: !585, size: 128, align: 64, offset: 22208)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !197, file: !198, line: 1511, baseType: !172, size: 32, offset: 22336)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !197, file: !198, line: 1515, baseType: !3977, size: 64, offset: 22400)
!3977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !231, line: 56, size: 64, elements: !3978)
!3978 = !{!3979}
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3977, file: !231, line: 57, baseType: !234, size: 64)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !197, file: !198, line: 1518, baseType: !3977, size: 64, offset: 22464)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !197, file: !198, line: 1528, baseType: !585, size: 128, align: 64, offset: 22528)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !197, file: !198, line: 1552, baseType: !3983, size: 35328, offset: 23040)
!3983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3984, line: 430, size: 35328, elements: !3985)
!3984 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3985 = !{!3986, !4004, !4005, !4006, !4007, !4008, !4009, !4010, !4011, !4015, !4016, !4017, !4018, !4019, !4020, !4023, !4024, !4025, !4026}
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3983, file: !3984, line: 432, baseType: !3987, size: 192)
!3987 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3988, size: 192, elements: !643)
!3988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3989, line: 16, size: 64, elements: !3990)
!3989 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3990 = !{!3991, !3992, !3993, !3994, !3995, !3996, !3997, !3998, !3999, !4000, !4001, !4002, !4003}
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3988, file: !3989, line: 17, baseType: !156, size: 16)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3988, file: !3989, line: 18, baseType: !156, size: 16, offset: 16)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3988, file: !3989, line: 19, baseType: !156, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3988, file: !3989, line: 19, baseType: !156, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3988, file: !3989, line: 19, baseType: !156, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3988, file: !3989, line: 19, baseType: !156, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3988, file: !3989, line: 19, baseType: !156, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3988, file: !3989, line: 20, baseType: !156, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3988, file: !3989, line: 20, baseType: !156, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3988, file: !3989, line: 20, baseType: !156, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3988, file: !3989, line: 20, baseType: !156, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3988, file: !3989, line: 20, baseType: !156, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3988, file: !3989, line: 20, baseType: !156, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3983, file: !3984, line: 436, baseType: !205, size: 64, offset: 192)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3983, file: !3984, line: 440, baseType: !158, size: 16, offset: 256)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3983, file: !3984, line: 441, baseType: !158, size: 16, offset: 272)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3983, file: !3984, line: 442, baseType: !158, size: 16, offset: 288)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3983, file: !3984, line: 443, baseType: !158, size: 16, offset: 304)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3983, file: !3984, line: 447, baseType: !205, size: 64, offset: 320)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3983, file: !3984, line: 448, baseType: !205, size: 64, offset: 384)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3983, file: !3984, line: 459, baseType: !4012, size: 256, offset: 448)
!4012 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4013, size: 256, elements: !664)
!4013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4014, size: 64)
!4014 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3984, line: 428, flags: DIFlagFwdDecl)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3983, file: !3984, line: 461, baseType: !205, size: 64, offset: 704)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3983, file: !3984, line: 463, baseType: !205, size: 64, offset: 768)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3983, file: !3984, line: 465, baseType: !205, size: 64, offset: 832)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3983, file: !3984, line: 466, baseType: !205, size: 64, offset: 896)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3983, file: !3984, line: 467, baseType: !205, size: 64, offset: 960)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3983, file: !3984, line: 473, baseType: !4021, size: 64, offset: 1024)
!4021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4022, size: 64)
!4022 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3984, line: 10, flags: DIFlagFwdDecl)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3983, file: !3984, line: 480, baseType: !205, size: 64, offset: 1088)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3983, file: !3984, line: 482, baseType: !13, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3983, file: !3984, line: 491, baseType: !159, size: 32, offset: 1184)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3983, file: !3984, line: 501, baseType: !4027, size: 33792, offset: 1536)
!4027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !4028, line: 448, size: 33792, elements: !4029)
!4028 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!4029 = !{!4030, !4031, !4032, !4194, !4195, !4201, !4202}
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4027, file: !4028, line: 461, baseType: !13, size: 32)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !4027, file: !4028, line: 468, baseType: !205, size: 64, offset: 64)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !4027, file: !4028, line: 476, baseType: !4033, size: 64, offset: 128)
!4033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4034, size: 64)
!4034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !4028, line: 356, size: 33280, align: 512, elements: !4035)
!4035 = !{!4036, !4037, !4038, !4039, !4040, !4041, !4042, !4043, !4044, !4045}
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4034, file: !4028, line: 358, baseType: !13, size: 32)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !4034, file: !4028, line: 361, baseType: !13, size: 32, offset: 32)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4034, file: !4028, line: 364, baseType: !161, size: 64, offset: 64)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !4034, file: !4028, line: 367, baseType: !161, size: 64, offset: 128)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !4034, file: !4028, line: 370, baseType: !161, size: 64, offset: 192)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !4034, file: !4028, line: 373, baseType: !13, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !4034, file: !4028, line: 376, baseType: !13, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !4034, file: !4028, line: 391, baseType: !13, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !4034, file: !4028, line: 394, baseType: !13, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4034, file: !4028, line: 397, baseType: !4046, size: 32768, offset: 512)
!4046 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !4028, line: 348, size: 32768, elements: !4047)
!4047 = !{!4048, !4063, !4100, !4177, !4190}
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !4046, file: !4028, line: 349, baseType: !4049, size: 896)
!4049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !4028, line: 12, size: 896, elements: !4050)
!4050 = !{!4051, !4052, !4053, !4054, !4055, !4056, !4057, !4058, !4062}
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4049, file: !4028, line: 13, baseType: !159, size: 32)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4049, file: !4028, line: 14, baseType: !159, size: 32, offset: 32)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4049, file: !4028, line: 15, baseType: !159, size: 32, offset: 64)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4049, file: !4028, line: 16, baseType: !159, size: 32, offset: 96)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4049, file: !4028, line: 17, baseType: !159, size: 32, offset: 128)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4049, file: !4028, line: 18, baseType: !159, size: 32, offset: 160)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4049, file: !4028, line: 19, baseType: !159, size: 32, offset: 192)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4049, file: !4028, line: 22, baseType: !4059, size: 640, offset: 224)
!4059 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 640, elements: !4060)
!4060 = !{!4061}
!4061 = !DISubrange(count: 20)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4049, file: !4028, line: 25, baseType: !159, size: 32, offset: 864)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !4046, file: !4028, line: 350, baseType: !4064, size: 4096, align: 128)
!4064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !4028, line: 34, size: 4096, align: 128, elements: !4065)
!4065 = !{!4066, !4067, !4068, !4069, !4070, !4085, !4086, !4087, !4089, !4091, !4095}
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4064, file: !4028, line: 35, baseType: !156, size: 16)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4064, file: !4028, line: 36, baseType: !156, size: 16, offset: 16)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4064, file: !4028, line: 37, baseType: !156, size: 16, offset: 32)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !4064, file: !4028, line: 38, baseType: !156, size: 16, offset: 48)
!4070 = !DIDerivedType(tag: DW_TAG_member, scope: !4064, file: !4028, line: 39, baseType: !4071, size: 128, offset: 64)
!4071 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4064, file: !4028, line: 39, size: 128, elements: !4072)
!4072 = !{!4073, !4078}
!4073 = !DIDerivedType(tag: DW_TAG_member, scope: !4071, file: !4028, line: 40, baseType: !4074, size: 128)
!4074 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4071, file: !4028, line: 40, size: 128, elements: !4075)
!4075 = !{!4076, !4077}
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !4074, file: !4028, line: 41, baseType: !161, size: 64)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !4074, file: !4028, line: 42, baseType: !161, size: 64, offset: 64)
!4078 = !DIDerivedType(tag: DW_TAG_member, scope: !4071, file: !4028, line: 44, baseType: !4079, size: 128)
!4079 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4071, file: !4028, line: 44, size: 128, elements: !4080)
!4080 = !{!4081, !4082, !4083, !4084}
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4079, file: !4028, line: 45, baseType: !159, size: 32)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4079, file: !4028, line: 46, baseType: !159, size: 32, offset: 32)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4079, file: !4028, line: 47, baseType: !159, size: 32, offset: 64)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4079, file: !4028, line: 48, baseType: !159, size: 32, offset: 96)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !4064, file: !4028, line: 51, baseType: !159, size: 32, offset: 192)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !4064, file: !4028, line: 52, baseType: !159, size: 32, offset: 224)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4064, file: !4028, line: 55, baseType: !4088, size: 1024, offset: 256)
!4088 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 1024, elements: !2793)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !4064, file: !4028, line: 58, baseType: !4090, size: 2048, offset: 1280)
!4090 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 2048, elements: !1262)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4064, file: !4028, line: 60, baseType: !4092, size: 384, offset: 3328)
!4092 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 384, elements: !4093)
!4093 = !{!4094}
!4094 = !DISubrange(count: 12)
!4095 = !DIDerivedType(tag: DW_TAG_member, scope: !4064, file: !4028, line: 62, baseType: !4096, size: 384, offset: 3712)
!4096 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4064, file: !4028, line: 62, size: 384, elements: !4097)
!4097 = !{!4098, !4099}
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4096, file: !4028, line: 63, baseType: !4092, size: 384)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4096, file: !4028, line: 64, baseType: !4092, size: 384)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !4046, file: !4028, line: 351, baseType: !4101, size: 1088)
!4101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !4028, line: 79, size: 1088, elements: !4102)
!4102 = !{!4103, !4104, !4105, !4106, !4107, !4108, !4109, !4110, !4111, !4112, !4113, !4114, !4115, !4116, !4117, !4176}
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4101, file: !4028, line: 80, baseType: !159, size: 32)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4101, file: !4028, line: 81, baseType: !159, size: 32, offset: 32)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4101, file: !4028, line: 82, baseType: !159, size: 32, offset: 64)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4101, file: !4028, line: 83, baseType: !159, size: 32, offset: 96)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4101, file: !4028, line: 84, baseType: !159, size: 32, offset: 128)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4101, file: !4028, line: 85, baseType: !159, size: 32, offset: 160)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4101, file: !4028, line: 86, baseType: !159, size: 32, offset: 192)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4101, file: !4028, line: 88, baseType: !4059, size: 640, offset: 224)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4101, file: !4028, line: 89, baseType: !151, size: 8, offset: 864)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4101, file: !4028, line: 90, baseType: !151, size: 8, offset: 872)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4101, file: !4028, line: 91, baseType: !151, size: 8, offset: 880)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4101, file: !4028, line: 92, baseType: !151, size: 8, offset: 888)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4101, file: !4028, line: 93, baseType: !151, size: 8, offset: 896)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4101, file: !4028, line: 94, baseType: !151, size: 8, offset: 904)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4101, file: !4028, line: 95, baseType: !4118, size: 64, offset: 960)
!4118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4119, size: 64)
!4119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4120, line: 11, size: 128, elements: !4121)
!4120 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4121 = !{!4122, !4123}
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4119, file: !4120, line: 12, baseType: !1075, size: 64)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4119, file: !4120, line: 13, baseType: !4124, size: 64, offset: 64)
!4124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4125, size: 64)
!4125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !4126, line: 103, size: 1344, elements: !4127)
!4126 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!4127 = !{!4128, !4129, !4130, !4131, !4132, !4133, !4134, !4135, !4136, !4137, !4138, !4139, !4140, !4141, !4142, !4143, !4144, !4145, !4156, !4157, !4158}
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !4125, file: !4126, line: 109, baseType: !205, size: 64)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !4125, file: !4126, line: 110, baseType: !205, size: 64, offset: 64)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !4125, file: !4126, line: 111, baseType: !205, size: 64, offset: 128)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !4125, file: !4126, line: 112, baseType: !205, size: 64, offset: 192)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4125, file: !4126, line: 113, baseType: !205, size: 64, offset: 256)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !4125, file: !4126, line: 114, baseType: !205, size: 64, offset: 320)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !4125, file: !4126, line: 117, baseType: !205, size: 64, offset: 384)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !4125, file: !4126, line: 118, baseType: !205, size: 64, offset: 448)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !4125, file: !4126, line: 119, baseType: !205, size: 64, offset: 512)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !4125, file: !4126, line: 120, baseType: !205, size: 64, offset: 576)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !4125, file: !4126, line: 121, baseType: !205, size: 64, offset: 640)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !4125, file: !4126, line: 122, baseType: !205, size: 64, offset: 704)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4125, file: !4126, line: 123, baseType: !205, size: 64, offset: 768)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !4125, file: !4126, line: 124, baseType: !205, size: 64, offset: 832)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !4125, file: !4126, line: 125, baseType: !205, size: 64, offset: 896)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !4125, file: !4126, line: 139, baseType: !205, size: 64, offset: 960)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4125, file: !4126, line: 142, baseType: !205, size: 64, offset: 1024)
!4145 = !DIDerivedType(tag: DW_TAG_member, scope: !4125, file: !4126, line: 144, baseType: !4146, size: 64, offset: 1088)
!4146 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4125, file: !4126, line: 144, size: 64, elements: !4147)
!4147 = !{!4148, !4149, !4150}
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4146, file: !4126, line: 146, baseType: !156, size: 16)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !4146, file: !4126, line: 148, baseType: !161, size: 64)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !4146, file: !4126, line: 150, baseType: !4151, size: 64)
!4151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !4126, line: 59, size: 64, elements: !4152)
!4152 = !{!4153, !4154, !4155}
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4151, file: !4126, line: 61, baseType: !161, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !4151, file: !4126, line: 63, baseType: !161, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !4151, file: !4126, line: 65, baseType: !161, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4125, file: !4126, line: 153, baseType: !205, size: 64, offset: 1152)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4125, file: !4126, line: 154, baseType: !205, size: 64, offset: 1216)
!4158 = !DIDerivedType(tag: DW_TAG_member, scope: !4125, file: !4126, line: 156, baseType: !4159, size: 64, offset: 1280)
!4159 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4125, file: !4126, line: 156, size: 64, elements: !4160)
!4160 = !{!4161, !4162, !4163}
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4159, file: !4126, line: 158, baseType: !156, size: 16)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !4159, file: !4126, line: 160, baseType: !161, size: 64)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !4159, file: !4126, line: 162, baseType: !4164, size: 64)
!4164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !4126, line: 69, size: 64, elements: !4165)
!4165 = !{!4166, !4167, !4168, !4169, !4170, !4171, !4172, !4173, !4174, !4175}
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4164, file: !4126, line: 71, baseType: !161, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !4164, file: !4126, line: 73, baseType: !161, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !4164, file: !4126, line: 75, baseType: !161, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !4164, file: !4126, line: 77, baseType: !161, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4164, file: !4126, line: 80, baseType: !161, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4164, file: !4126, line: 83, baseType: !161, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !4164, file: !4126, line: 86, baseType: !161, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !4164, file: !4126, line: 88, baseType: !161, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !4164, file: !4126, line: 93, baseType: !161, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !4164, file: !4126, line: 100, baseType: !161, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4101, file: !4028, line: 96, baseType: !159, size: 32, offset: 1024)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !4046, file: !4028, line: 352, baseType: !4178, size: 4608, align: 512)
!4178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !4028, line: 333, size: 4608, align: 512, elements: !4179)
!4179 = !{!4180, !4181, !4188}
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4178, file: !4028, line: 334, baseType: !4064, size: 4096, align: 128)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4178, file: !4028, line: 335, baseType: !4182, size: 512, offset: 4096)
!4182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !4028, line: 312, size: 512, elements: !4183)
!4183 = !{!4184, !4185, !4186}
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4182, file: !4028, line: 313, baseType: !161, size: 64)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4182, file: !4028, line: 314, baseType: !161, size: 64, offset: 64)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4182, file: !4028, line: 315, baseType: !4187, size: 384, offset: 128)
!4187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 384, elements: !789)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4178, file: !4028, line: 336, baseType: !4189, offset: 4608)
!4189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, elements: !683)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !4046, file: !4028, line: 353, baseType: !4191, size: 32768)
!4191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 32768, elements: !4192)
!4192 = !{!4193}
!4193 = !DISubrange(count: 4096)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !4027, file: !4028, line: 484, baseType: !4033, size: 64, offset: 192)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4027, file: !4028, line: 491, baseType: !4196, size: 128, offset: 256)
!4196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !4028, line: 404, size: 128, elements: !4197)
!4197 = !{!4198, !4199, !4200}
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4196, file: !4028, line: 424, baseType: !161, size: 64)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4196, file: !4028, line: 432, baseType: !13, size: 32, offset: 64)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4196, file: !4028, line: 440, baseType: !13, size: 32, offset: 96)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !4027, file: !4028, line: 498, baseType: !4196, size: 128, offset: 384)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !4027, file: !4028, line: 508, baseType: !4034, size: 33280, align: 512, offset: 512)
!4203 = !{!0, !7, !4204, !4206, !4208, !4210, !4212, !4214, !4216, !4218, !4220, !4222, !4224, !4226, !4228, !4230, !4232, !4234, !4236, !4238, !4240, !4242, !4244, !4246, !4346, !4351, !4353, !4358, !4363, !4365, !4421, !4424, !4429, !4434, !4439, !4444, !4449, !4454, !4477, !4503, !4508, !4510, !4512, !4514, !4529, !4544, !4548, !4550}
!4204 = !DIGlobalVariableExpression(var: !4205, expr: !DIExpression())
!4205 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_nla_policy_len345", scope: !9, file: !2, line: 687, type: !176, isLocal: true, isDefinition: true)
!4206 = !DIGlobalVariableExpression(var: !4207, expr: !DIExpression())
!4207 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___nla_parse346", scope: !9, file: !2, line: 713, type: !176, isLocal: true, isDefinition: true)
!4208 = !DIGlobalVariableExpression(var: !4209, expr: !DIExpression())
!4209 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_nla_find347", scope: !9, file: !2, line: 734, type: !176, isLocal: true, isDefinition: true)
!4210 = !DIGlobalVariableExpression(var: !4211, expr: !DIExpression())
!4211 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_nla_strscpy348", scope: !9, file: !2, line: 777, type: !176, isLocal: true, isDefinition: true)
!4212 = !DIGlobalVariableExpression(var: !4213, expr: !DIExpression())
!4213 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_nla_strdup349", scope: !9, file: !2, line: 801, type: !176, isLocal: true, isDefinition: true)
!4214 = !DIGlobalVariableExpression(var: !4215, expr: !DIExpression())
!4215 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_nla_memcpy352", scope: !9, file: !2, line: 824, type: !176, isLocal: true, isDefinition: true)
!4216 = !DIGlobalVariableExpression(var: !4217, expr: !DIExpression())
!4217 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_nla_memcmp353", scope: !9, file: !2, line: 842, type: !176, isLocal: true, isDefinition: true)
!4218 = !DIGlobalVariableExpression(var: !4219, expr: !DIExpression())
!4219 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_nla_strcmp354", scope: !9, file: !2, line: 865, type: !176, isLocal: true, isDefinition: true)
!4220 = !DIGlobalVariableExpression(var: !4221, expr: !DIExpression())
!4221 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___nla_reserve355", scope: !9, file: !2, line: 892, type: !176, isLocal: true, isDefinition: true)
!4222 = !DIGlobalVariableExpression(var: !4223, expr: !DIExpression())
!4223 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___nla_reserve_64bit356", scope: !9, file: !2, line: 915, type: !176, isLocal: true, isDefinition: true)
!4224 = !DIGlobalVariableExpression(var: !4225, expr: !DIExpression())
!4225 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___nla_reserve_nohdr357", scope: !9, file: !2, line: 931, type: !176, isLocal: true, isDefinition: true)
!4226 = !DIGlobalVariableExpression(var: !4227, expr: !DIExpression())
!4227 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_nla_reserve358", scope: !9, file: !2, line: 952, type: !176, isLocal: true, isDefinition: true)
!4228 = !DIGlobalVariableExpression(var: !4229, expr: !DIExpression())
!4229 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_nla_reserve_64bit359", scope: !9, file: !2, line: 982, type: !176, isLocal: true, isDefinition: true)
!4230 = !DIGlobalVariableExpression(var: !4231, expr: !DIExpression())
!4231 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_nla_reserve_nohdr360", scope: !9, file: !2, line: 1001, type: !176, isLocal: true, isDefinition: true)
!4232 = !DIGlobalVariableExpression(var: !4233, expr: !DIExpression())
!4233 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___nla_put361", scope: !9, file: !2, line: 1021, type: !176, isLocal: true, isDefinition: true)
!4234 = !DIGlobalVariableExpression(var: !4235, expr: !DIExpression())
!4235 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___nla_put_64bit362", scope: !9, file: !2, line: 1042, type: !176, isLocal: true, isDefinition: true)
!4236 = !DIGlobalVariableExpression(var: !4237, expr: !DIExpression())
!4237 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___nla_put_nohdr363", scope: !9, file: !2, line: 1060, type: !176, isLocal: true, isDefinition: true)
!4238 = !DIGlobalVariableExpression(var: !4239, expr: !DIExpression())
!4239 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_nla_put364", scope: !9, file: !2, line: 1080, type: !176, isLocal: true, isDefinition: true)
!4240 = !DIGlobalVariableExpression(var: !4241, expr: !DIExpression())
!4241 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_nla_put_64bit365", scope: !9, file: !2, line: 1108, type: !176, isLocal: true, isDefinition: true)
!4242 = !DIGlobalVariableExpression(var: !4243, expr: !DIExpression())
!4243 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_nla_put_nohdr366", scope: !9, file: !2, line: 1127, type: !176, isLocal: true, isDefinition: true)
!4244 = !DIGlobalVariableExpression(var: !4245, expr: !DIExpression())
!4245 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_nla_append367", scope: !9, file: !2, line: 1146, type: !176, isLocal: true, isDefinition: true)
!4246 = !DIGlobalVariableExpression(var: !4247, expr: !DIExpression())
!4247 = distinct !DIGlobalVariable(name: "__msg", scope: !4248, file: !2, line: 592, type: !4343, isLocal: true, isDefinition: true)
!4248 = distinct !DISubprogram(name: "__nla_validate_parse", scope: !2, file: !2, line: 582, type: !4249, scopeLine: 587, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4307)
!4249 = !DISubroutineType(types: !4250)
!4250 = !{!172, !4251, !172, !172, !4253, !13, !4290, !4306, !13}
!4251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4252, size: 64)
!4252 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !178)
!4253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4254, size: 64)
!4254 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4255)
!4255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nla_policy", file: !12, line: 321, size: 128, elements: !4256)
!4256 = !{!4257, !4258, !4259, !4260}
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4255, file: !12, line: 322, baseType: !151, size: 8)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "validation_type", scope: !4255, file: !12, line: 323, baseType: !151, size: 8, offset: 8)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4255, file: !12, line: 324, baseType: !156, size: 16, offset: 16)
!4260 = !DIDerivedType(tag: DW_TAG_member, scope: !4255, file: !12, line: 325, baseType: !4261, size: 64, offset: 64)
!4261 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4255, file: !12, line: 325, size: 64, elements: !4262)
!4262 = !{!4263, !4264, !4266, !4267, !4268, !4269, !4275, !4281, !4286}
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "strict_start_type", scope: !4261, file: !12, line: 347, baseType: !156, size: 16)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "bitfield32_valid", scope: !4261, file: !12, line: 350, baseType: !4265, size: 32)
!4265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !159)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !4261, file: !12, line: 351, baseType: !4265, size: 32)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "reject_message", scope: !4261, file: !12, line: 352, baseType: !805, size: 64)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "nested_policy", scope: !4261, file: !12, line: 353, baseType: !4253, size: 64)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !4261, file: !12, line: 354, baseType: !4270, size: 64)
!4270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4271, size: 64)
!4271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netlink_range_validation", file: !12, line: 191, size: 128, elements: !4272)
!4272 = !{!4273, !4274}
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !4271, file: !12, line: 192, baseType: !161, size: 64)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !4271, file: !12, line: 192, baseType: !161, size: 64, offset: 64)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "range_signed", scope: !4261, file: !12, line: 355, baseType: !4276, size: 64)
!4276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4277, size: 64)
!4277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netlink_range_validation_signed", file: !12, line: 195, size: 128, elements: !4278)
!4278 = !{!4279, !4280}
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !4277, file: !12, line: 196, baseType: !173, size: 64)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !4277, file: !12, line: 196, baseType: !173, size: 64, offset: 64)
!4281 = !DIDerivedType(tag: DW_TAG_member, scope: !4261, file: !12, line: 356, baseType: !4282, size: 32)
!4282 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4261, file: !12, line: 356, size: 32, elements: !4283)
!4283 = !{!4284, !4285}
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !4282, file: !12, line: 357, baseType: !167, size: 16)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !4282, file: !12, line: 357, baseType: !167, size: 16, offset: 16)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "validate", scope: !4261, file: !12, line: 359, baseType: !4287, size: 64)
!4287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4288, size: 64)
!4288 = !DISubroutineType(types: !4289)
!4289 = !{!172, !4251, !4290}
!4290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4291, size: 64)
!4291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netlink_ext_ack", file: !4292, line: 82, size: 1088, elements: !4293)
!4292 = !DIFile(filename: "./include/linux/netlink.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cf765747b52eb2c956fc0567475222af")
!4293 = !{!4294, !4295, !4296, !4297, !4298, !4299, !4301, !4302}
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "_msg", scope: !4291, file: !4292, line: 83, baseType: !805, size: 64)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "bad_attr", scope: !4291, file: !4292, line: 84, baseType: !4251, size: 64, offset: 64)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !4291, file: !4292, line: 85, baseType: !4253, size: 64, offset: 128)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "miss_nest", scope: !4291, file: !4292, line: 86, baseType: !4251, size: 64, offset: 192)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "miss_type", scope: !4291, file: !4292, line: 87, baseType: !156, size: 16, offset: 256)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "cookie", scope: !4291, file: !4292, line: 88, baseType: !4300, size: 160, offset: 272)
!4300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 160, elements: !4060)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "cookie_len", scope: !4291, file: !4292, line: 89, baseType: !151, size: 8, offset: 432)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "_msg_buf", scope: !4291, file: !4292, line: 90, baseType: !4303, size: 640, offset: 440)
!4303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 640, elements: !4304)
!4304 = !{!4305}
!4305 = !DISubrange(count: 80)
!4306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!4307 = !{!4308, !4309, !4310, !4311, !4312, !4313, !4314, !4315, !4316, !4317, !4318, !4322, !4326, !4332, !4334, !4335, !4336, !4339}
!4308 = !DILocalVariable(name: "head", arg: 1, scope: !4248, file: !2, line: 582, type: !4251)
!4309 = !DILocalVariable(name: "len", arg: 2, scope: !4248, file: !2, line: 582, type: !172)
!4310 = !DILocalVariable(name: "maxtype", arg: 3, scope: !4248, file: !2, line: 582, type: !172)
!4311 = !DILocalVariable(name: "policy", arg: 4, scope: !4248, file: !2, line: 583, type: !4253)
!4312 = !DILocalVariable(name: "validate", arg: 5, scope: !4248, file: !2, line: 584, type: !13)
!4313 = !DILocalVariable(name: "extack", arg: 6, scope: !4248, file: !2, line: 585, type: !4290)
!4314 = !DILocalVariable(name: "tb", arg: 7, scope: !4248, file: !2, line: 586, type: !4306)
!4315 = !DILocalVariable(name: "depth", arg: 8, scope: !4248, file: !2, line: 586, type: !13)
!4316 = !DILocalVariable(name: "nla", scope: !4248, file: !2, line: 588, type: !4251)
!4317 = !DILocalVariable(name: "rem", scope: !4248, file: !2, line: 589, type: !172)
!4318 = !DILocalVariable(name: "__extack", scope: !4319, file: !2, line: 592, type: !4290)
!4319 = distinct !DILexicalBlock(scope: !4320, file: !2, line: 592, column: 3)
!4320 = distinct !DILexicalBlock(scope: !4321, file: !2, line: 591, column: 43)
!4321 = distinct !DILexicalBlock(scope: !4248, file: !2, line: 591, column: 6)
!4322 = !DILocalVariable(name: "type", scope: !4323, file: !2, line: 601, type: !156)
!4323 = distinct !DILexicalBlock(scope: !4324, file: !2, line: 600, column: 41)
!4324 = distinct !DILexicalBlock(scope: !4325, file: !2, line: 600, column: 2)
!4325 = distinct !DILexicalBlock(scope: !4248, file: !2, line: 600, column: 2)
!4326 = !DILocalVariable(name: "__extack", scope: !4327, file: !2, line: 605, type: !4290)
!4327 = distinct !DILexicalBlock(scope: !4328, file: !2, line: 605, column: 5)
!4328 = distinct !DILexicalBlock(scope: !4329, file: !2, line: 604, column: 40)
!4329 = distinct !DILexicalBlock(scope: !4330, file: !2, line: 604, column: 8)
!4330 = distinct !DILexicalBlock(scope: !4331, file: !2, line: 603, column: 36)
!4331 = distinct !DILexicalBlock(scope: !4323, file: !2, line: 603, column: 7)
!4332 = !DILocalVariable(name: "_i", scope: !4333, file: !2, line: 611, type: !156)
!4333 = distinct !DILexicalBlock(scope: !4323, file: !2, line: 611, column: 10)
!4334 = !DILocalVariable(name: "_s", scope: !4333, file: !2, line: 611, type: !172)
!4335 = !DILocalVariable(name: "_mask", scope: !4333, file: !2, line: 611, type: !205)
!4336 = !DILocalVariable(name: "err", scope: !4337, file: !2, line: 613, type: !172)
!4337 = distinct !DILexicalBlock(scope: !4338, file: !2, line: 612, column: 15)
!4338 = distinct !DILexicalBlock(scope: !4323, file: !2, line: 612, column: 7)
!4339 = !DILocalVariable(name: "__extack", scope: !4340, file: !2, line: 627, type: !4290)
!4340 = distinct !DILexicalBlock(scope: !4341, file: !2, line: 627, column: 3)
!4341 = distinct !DILexicalBlock(scope: !4342, file: !2, line: 624, column: 25)
!4342 = distinct !DILexicalBlock(scope: !4248, file: !2, line: 624, column: 6)
!4343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !806, size: 320, elements: !4344)
!4344 = !{!4345}
!4345 = !DISubrange(count: 40)
!4346 = !DIGlobalVariableExpression(var: !4347, expr: !DIExpression())
!4347 = distinct !DIGlobalVariable(name: "__msg", scope: !4248, file: !2, line: 605, type: !4348, isLocal: true, isDefinition: true)
!4348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !806, size: 184, elements: !4349)
!4349 = !{!4350}
!4350 = !DISubrange(count: 23)
!4351 = !DIGlobalVariableExpression(var: !4352, expr: !DIExpression())
!4352 = distinct !DIGlobalVariable(name: "_rs", scope: !4248, file: !2, line: 625, type: !876, isLocal: true, isDefinition: true)
!4353 = !DIGlobalVariableExpression(var: !4354, expr: !DIExpression())
!4354 = distinct !DIGlobalVariable(scope: null, file: !2, line: 625, type: !4355, isLocal: true, isDefinition: true)
!4355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !806, size: 168, elements: !4356)
!4356 = !{!4357}
!4357 = !DISubrange(count: 21)
!4358 = !DIGlobalVariableExpression(var: !4359, expr: !DIExpression())
!4359 = distinct !DIGlobalVariable(scope: null, file: !2, line: 625, type: !4360, isLocal: true, isDefinition: true)
!4360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 576, elements: !4361)
!4361 = !{!4362}
!4362 = !DISubrange(count: 72)
!4363 = !DIGlobalVariableExpression(var: !4364, expr: !DIExpression())
!4364 = distinct !DIGlobalVariable(name: "__msg", scope: !4248, file: !2, line: 627, type: !4343, isLocal: true, isDefinition: true)
!4365 = !DIGlobalVariableExpression(var: !4366, expr: !DIExpression())
!4366 = distinct !DIGlobalVariable(name: "_rs", scope: !4367, file: !2, line: 401, type: !876, isLocal: true, isDefinition: true)
!4367 = distinct !DISubprogram(name: "validate_nla", scope: !2, file: !2, line: 380, type: !4368, scopeLine: 383, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4370)
!4368 = !DISubroutineType(types: !4369)
!4369 = !{!172, !4251, !172, !4253, !13, !4290, !13}
!4370 = !{!4371, !4372, !4373, !4374, !4375, !4376, !4377, !4378, !4379, !4380, !4381, !4382, !4383, !4385, !4386, !4387, !4393, !4399, !4403, !4407, !4408, !4411, !4414, !4418, !4419}
!4371 = !DILocalVariable(name: "nla", arg: 1, scope: !4367, file: !2, line: 380, type: !4251)
!4372 = !DILocalVariable(name: "maxtype", arg: 2, scope: !4367, file: !2, line: 380, type: !172)
!4373 = !DILocalVariable(name: "policy", arg: 3, scope: !4367, file: !2, line: 381, type: !4253)
!4374 = !DILocalVariable(name: "validate", arg: 4, scope: !4367, file: !2, line: 381, type: !13)
!4375 = !DILocalVariable(name: "extack", arg: 5, scope: !4367, file: !2, line: 382, type: !4290)
!4376 = !DILocalVariable(name: "depth", arg: 6, scope: !4367, file: !2, line: 382, type: !13)
!4377 = !DILocalVariable(name: "strict_start_type", scope: !4367, file: !2, line: 384, type: !156)
!4378 = !DILocalVariable(name: "pt", scope: !4367, file: !2, line: 385, type: !4253)
!4379 = !DILocalVariable(name: "minlen", scope: !4367, file: !2, line: 386, type: !172)
!4380 = !DILocalVariable(name: "attrlen", scope: !4367, file: !2, line: 386, type: !172)
!4381 = !DILocalVariable(name: "type", scope: !4367, file: !2, line: 386, type: !172)
!4382 = !DILocalVariable(name: "err", scope: !4367, file: !2, line: 387, type: !172)
!4383 = !DILocalVariable(name: "_i", scope: !4384, file: !2, line: 395, type: !172)
!4384 = distinct !DILexicalBlock(scope: !4367, file: !2, line: 395, column: 9)
!4385 = !DILocalVariable(name: "_s", scope: !4384, file: !2, line: 395, type: !172)
!4386 = !DILocalVariable(name: "_mask", scope: !4384, file: !2, line: 395, type: !205)
!4387 = !DILocalVariable(name: "__extack", scope: !4388, file: !2, line: 404, type: !4290)
!4388 = distinct !DILexicalBlock(scope: !4389, file: !2, line: 404, column: 4)
!4389 = distinct !DILexicalBlock(scope: !4390, file: !2, line: 403, column: 44)
!4390 = distinct !DILexicalBlock(scope: !4391, file: !2, line: 403, column: 7)
!4391 = distinct !DILexicalBlock(scope: !4392, file: !2, line: 400, column: 67)
!4392 = distinct !DILexicalBlock(scope: !4367, file: !2, line: 400, column: 6)
!4393 = !DILocalVariable(name: "__extack", scope: !4394, file: !2, line: 413, type: !4290)
!4394 = distinct !DILexicalBlock(scope: !4395, file: !2, line: 413, column: 4)
!4395 = distinct !DILexicalBlock(scope: !4396, file: !2, line: 412, column: 40)
!4396 = distinct !DILexicalBlock(scope: !4397, file: !2, line: 411, column: 7)
!4397 = distinct !DILexicalBlock(scope: !4398, file: !2, line: 410, column: 37)
!4398 = distinct !DILexicalBlock(scope: !4367, file: !2, line: 410, column: 6)
!4399 = !DILocalVariable(name: "__extack", scope: !4400, file: !2, line: 419, type: !4290)
!4400 = distinct !DILexicalBlock(scope: !4401, file: !2, line: 419, column: 4)
!4401 = distinct !DILexicalBlock(scope: !4402, file: !2, line: 418, column: 65)
!4402 = distinct !DILexicalBlock(scope: !4397, file: !2, line: 417, column: 7)
!4403 = !DILocalVariable(name: "__UNIQUE_ID___x340", scope: !4404, file: !2, line: 451, type: !172)
!4404 = distinct !DILexicalBlock(scope: !4405, file: !2, line: 451, column: 13)
!4405 = distinct !DILexicalBlock(scope: !4406, file: !2, line: 450, column: 7)
!4406 = distinct !DILexicalBlock(scope: !4367, file: !2, line: 425, column: 20)
!4407 = !DILocalVariable(name: "__UNIQUE_ID___y341", scope: !4404, file: !2, line: 451, type: !172)
!4408 = !DILocalVariable(name: "buf", scope: !4409, file: !2, line: 466, type: !815)
!4409 = distinct !DILexicalBlock(scope: !4410, file: !2, line: 465, column: 16)
!4410 = distinct !DILexicalBlock(scope: !4406, file: !2, line: 465, column: 7)
!4411 = !DILocalVariable(name: "err", scope: !4412, file: !2, line: 512, type: !172)
!4412 = distinct !DILexicalBlock(scope: !4413, file: !2, line: 511, column: 26)
!4413 = distinct !DILexicalBlock(scope: !4406, file: !2, line: 511, column: 7)
!4414 = !DILocalVariable(name: "__extack", scope: !4415, file: !2, line: 529, type: !4290)
!4415 = distinct !DILexicalBlock(scope: !4416, file: !2, line: 529, column: 4)
!4416 = distinct !DILexicalBlock(scope: !4417, file: !2, line: 528, column: 38)
!4417 = distinct !DILexicalBlock(scope: !4406, file: !2, line: 528, column: 7)
!4418 = !DILabel(scope: !4367, name: "out_err", file: !2, line: 576)
!4419 = !DILocalVariable(name: "__extack", scope: !4420, file: !2, line: 577, type: !4290)
!4420 = distinct !DILexicalBlock(scope: !4367, file: !2, line: 577, column: 2)
!4421 = !DIGlobalVariableExpression(var: !4422, expr: !DIExpression())
!4422 = distinct !DIGlobalVariable(scope: null, file: !2, line: 401, type: !4423, isLocal: true, isDefinition: true)
!4423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !806, size: 104, elements: !5)
!4424 = !DIGlobalVariableExpression(var: !4425, expr: !DIExpression())
!4425 = distinct !DIGlobalVariable(scope: null, file: !2, line: 401, type: !4426, isLocal: true, isDefinition: true)
!4426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 472, elements: !4427)
!4427 = !{!4428}
!4428 = !DISubrange(count: 59)
!4429 = !DIGlobalVariableExpression(var: !4430, expr: !DIExpression())
!4430 = distinct !DIGlobalVariable(name: "__msg", scope: !4367, file: !2, line: 404, type: !4431, isLocal: true, isDefinition: true)
!4431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !806, size: 200, elements: !4432)
!4432 = !{!4433}
!4433 = !DISubrange(count: 25)
!4434 = !DIGlobalVariableExpression(var: !4435, expr: !DIExpression())
!4435 = distinct !DIGlobalVariable(name: "__msg", scope: !4367, file: !2, line: 413, type: !4436, isLocal: true, isDefinition: true)
!4436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !806, size: 192, elements: !4437)
!4437 = !{!4438}
!4438 = !DISubrange(count: 24)
!4439 = !DIGlobalVariableExpression(var: !4440, expr: !DIExpression())
!4440 = distinct !DIGlobalVariable(name: "__msg", scope: !4367, file: !2, line: 419, type: !4441, isLocal: true, isDefinition: true)
!4441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !806, size: 208, elements: !4442)
!4442 = !{!4443}
!4443 = !DISubrange(count: 26)
!4444 = !DIGlobalVariableExpression(var: !4445, expr: !DIExpression())
!4445 = distinct !DIGlobalVariable(name: "__msg", scope: !4367, file: !2, line: 529, type: !4446, isLocal: true, isDefinition: true)
!4446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !806, size: 176, elements: !4447)
!4447 = !{!4448}
!4448 = !DISubrange(count: 22)
!4449 = !DIGlobalVariableExpression(var: !4450, expr: !DIExpression())
!4450 = distinct !DIGlobalVariable(name: "__msg", scope: !4367, file: !2, line: 577, type: !4451, isLocal: true, isDefinition: true)
!4451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !806, size: 280, elements: !4452)
!4452 = !{!4453}
!4453 = !DISubrange(count: 35)
!4454 = !DIGlobalVariableExpression(var: !4455, expr: !DIExpression())
!4455 = distinct !DIGlobalVariable(name: "__msg", scope: !4456, file: !2, line: 104, type: !4436, isLocal: true, isDefinition: true)
!4456 = distinct !DISubprogram(name: "nla_validate_array", scope: !2, file: !2, line: 89, type: !4457, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4459)
!4457 = !DISubroutineType(types: !4458)
!4458 = !{!172, !4251, !172, !172, !4253, !4290, !13, !13}
!4459 = !{!4460, !4461, !4462, !4463, !4464, !4465, !4466, !4467, !4468, !4469, !4473}
!4460 = !DILocalVariable(name: "head", arg: 1, scope: !4456, file: !2, line: 89, type: !4251)
!4461 = !DILocalVariable(name: "len", arg: 2, scope: !4456, file: !2, line: 89, type: !172)
!4462 = !DILocalVariable(name: "maxtype", arg: 3, scope: !4456, file: !2, line: 89, type: !172)
!4463 = !DILocalVariable(name: "policy", arg: 4, scope: !4456, file: !2, line: 90, type: !4253)
!4464 = !DILocalVariable(name: "extack", arg: 5, scope: !4456, file: !2, line: 91, type: !4290)
!4465 = !DILocalVariable(name: "validate", arg: 6, scope: !4456, file: !2, line: 92, type: !13)
!4466 = !DILocalVariable(name: "depth", arg: 7, scope: !4456, file: !2, line: 92, type: !13)
!4467 = !DILocalVariable(name: "entry", scope: !4456, file: !2, line: 94, type: !4251)
!4468 = !DILocalVariable(name: "rem", scope: !4456, file: !2, line: 95, type: !172)
!4469 = !DILocalVariable(name: "ret", scope: !4470, file: !2, line: 98, type: !172)
!4470 = distinct !DILexicalBlock(scope: !4471, file: !2, line: 97, column: 43)
!4471 = distinct !DILexicalBlock(scope: !4472, file: !2, line: 97, column: 2)
!4472 = distinct !DILexicalBlock(scope: !4456, file: !2, line: 97, column: 2)
!4473 = !DILocalVariable(name: "__extack", scope: !4474, file: !2, line: 104, type: !4290)
!4474 = distinct !DILexicalBlock(scope: !4475, file: !2, line: 104, column: 4)
!4475 = distinct !DILexicalBlock(scope: !4476, file: !2, line: 103, column: 36)
!4476 = distinct !DILexicalBlock(scope: !4470, file: !2, line: 103, column: 7)
!4477 = !DIGlobalVariableExpression(var: !4478, expr: !DIExpression())
!4478 = distinct !DIGlobalVariable(name: "_rs", scope: !4479, file: !2, line: 210, type: !876, isLocal: true, isDefinition: true)
!4479 = distinct !DISubprogram(name: "nla_validate_range_unsigned", scope: !2, file: !2, line: 169, type: !4480, scopeLine: 173, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4482)
!4480 = !DISubroutineType(types: !4481)
!4481 = !{!172, !4253, !4251, !4290, !13}
!4482 = !{!4483, !4484, !4485, !4486, !4487, !4488, !4489, !4495, !4498, !4501}
!4483 = !DILocalVariable(name: "pt", arg: 1, scope: !4479, file: !2, line: 169, type: !4253)
!4484 = !DILocalVariable(name: "nla", arg: 2, scope: !4479, file: !2, line: 170, type: !4251)
!4485 = !DILocalVariable(name: "extack", arg: 3, scope: !4479, file: !2, line: 171, type: !4290)
!4486 = !DILocalVariable(name: "validate", arg: 4, scope: !4479, file: !2, line: 172, type: !13)
!4487 = !DILocalVariable(name: "range", scope: !4479, file: !2, line: 174, type: !4271)
!4488 = !DILocalVariable(name: "value", scope: !4479, file: !2, line: 175, type: !161)
!4489 = !DILocalVariable(name: "__extack", scope: !4490, file: !2, line: 213, type: !4290)
!4490 = distinct !DILexicalBlock(scope: !4491, file: !2, line: 213, column: 4)
!4491 = distinct !DILexicalBlock(scope: !4492, file: !2, line: 212, column: 44)
!4492 = distinct !DILexicalBlock(scope: !4493, file: !2, line: 212, column: 7)
!4493 = distinct !DILexicalBlock(scope: !4494, file: !2, line: 209, column: 51)
!4494 = distinct !DILexicalBlock(scope: !4479, file: !2, line: 208, column: 6)
!4495 = !DILocalVariable(name: "binary", scope: !4496, file: !2, line: 223, type: !802)
!4496 = distinct !DILexicalBlock(scope: !4497, file: !2, line: 222, column: 46)
!4497 = distinct !DILexicalBlock(scope: !4479, file: !2, line: 222, column: 6)
!4498 = !DILocalVariable(name: "__extack", scope: !4499, file: !2, line: 226, type: !4290)
!4499 = distinct !DILexicalBlock(scope: !4500, file: !2, line: 226, column: 4)
!4500 = distinct !DILexicalBlock(scope: !4496, file: !2, line: 225, column: 7)
!4501 = !DILocalVariable(name: "__extack", scope: !4502, file: !2, line: 229, type: !4290)
!4502 = distinct !DILexicalBlock(scope: !4500, file: !2, line: 229, column: 4)
!4503 = !DIGlobalVariableExpression(var: !4504, expr: !DIExpression())
!4504 = distinct !DIGlobalVariable(scope: null, file: !2, line: 210, type: !4505, isLocal: true, isDefinition: true)
!4505 = !DICompositeType(tag: DW_TAG_array_type, baseType: !806, size: 224, elements: !4506)
!4506 = !{!4507}
!4507 = !DISubrange(count: 28)
!4508 = !DIGlobalVariableExpression(var: !4509, expr: !DIExpression())
!4509 = distinct !DIGlobalVariable(name: "__msg", scope: !4479, file: !2, line: 213, type: !4431, isLocal: true, isDefinition: true)
!4510 = !DIGlobalVariableExpression(var: !4511, expr: !DIExpression())
!4511 = distinct !DIGlobalVariable(name: "__msg", scope: !4479, file: !2, line: 226, type: !4451, isLocal: true, isDefinition: true)
!4512 = !DIGlobalVariableExpression(var: !4513, expr: !DIExpression())
!4513 = distinct !DIGlobalVariable(name: "__msg", scope: !4479, file: !2, line: 229, type: !4355, isLocal: true, isDefinition: true)
!4514 = !DIGlobalVariableExpression(var: !4515, expr: !DIExpression())
!4515 = distinct !DIGlobalVariable(name: "__msg", scope: !4516, file: !2, line: 309, type: !4355, isLocal: true, isDefinition: true)
!4516 = distinct !DISubprogram(name: "nla_validate_int_range_signed", scope: !2, file: !2, line: 282, type: !4517, scopeLine: 285, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4519)
!4517 = !DISubroutineType(types: !4518)
!4518 = !{!172, !4253, !4251, !4290}
!4519 = !{!4520, !4521, !4522, !4523, !4524, !4525}
!4520 = !DILocalVariable(name: "pt", arg: 1, scope: !4516, file: !2, line: 282, type: !4253)
!4521 = !DILocalVariable(name: "nla", arg: 2, scope: !4516, file: !2, line: 283, type: !4251)
!4522 = !DILocalVariable(name: "extack", arg: 3, scope: !4516, file: !2, line: 284, type: !4290)
!4523 = !DILocalVariable(name: "range", scope: !4516, file: !2, line: 286, type: !4277)
!4524 = !DILocalVariable(name: "value", scope: !4516, file: !2, line: 287, type: !173)
!4525 = !DILocalVariable(name: "__extack", scope: !4526, file: !2, line: 309, type: !4290)
!4526 = distinct !DILexicalBlock(scope: !4527, file: !2, line: 309, column: 3)
!4527 = distinct !DILexicalBlock(scope: !4528, file: !2, line: 308, column: 46)
!4528 = distinct !DILexicalBlock(scope: !4516, file: !2, line: 308, column: 6)
!4529 = !DIGlobalVariableExpression(var: !4530, expr: !DIExpression())
!4530 = distinct !DIGlobalVariable(name: "__msg", scope: !4531, file: !2, line: 373, type: !4541, isLocal: true, isDefinition: true)
!4531 = distinct !DISubprogram(name: "nla_validate_mask", scope: !2, file: !2, line: 343, type: !4517, scopeLine: 346, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4532)
!4532 = !{!4533, !4534, !4535, !4536, !4537}
!4533 = !DILocalVariable(name: "pt", arg: 1, scope: !4531, file: !2, line: 343, type: !4253)
!4534 = !DILocalVariable(name: "nla", arg: 2, scope: !4531, file: !2, line: 344, type: !4251)
!4535 = !DILocalVariable(name: "extack", arg: 3, scope: !4531, file: !2, line: 345, type: !4290)
!4536 = !DILocalVariable(name: "value", scope: !4531, file: !2, line: 347, type: !161)
!4537 = !DILocalVariable(name: "__extack", scope: !4538, file: !2, line: 373, type: !4290)
!4538 = distinct !DILexicalBlock(scope: !4539, file: !2, line: 373, column: 3)
!4539 = distinct !DILexicalBlock(scope: !4540, file: !2, line: 372, column: 30)
!4540 = distinct !DILexicalBlock(scope: !4531, file: !2, line: 372, column: 6)
!4541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !806, size: 136, elements: !4542)
!4542 = !{!4543}
!4543 = !DISubrange(count: 17)
!4544 = !DIGlobalVariableExpression(var: !4545, expr: !DIExpression())
!4545 = distinct !DIGlobalVariable(name: "nla_attr_len", scope: !9, file: !2, line: 24, type: !4546, isLocal: true, isDefinition: true)
!4546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4547, size: 160, elements: !4060)
!4547 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !151)
!4548 = !DIGlobalVariableExpression(var: !4549, expr: !DIExpression())
!4549 = distinct !DIGlobalVariable(name: "nla_attr_minlen", scope: !9, file: !2, line: 37, type: !4546, isLocal: true, isDefinition: true)
!4550 = !DIGlobalVariableExpression(var: !4551, expr: !DIExpression())
!4551 = distinct !DIGlobalVariable(scope: null, file: !141, line: 480, type: !4552, isLocal: true, isDefinition: true)
!4552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !4356)
!4553 = !{i32 7, !"Dwarf Version", i32 5}
!4554 = !{i32 2, !"Debug Info Version", i32 3}
!4555 = !{i32 1, !"wchar_size", i32 2}
!4556 = !{i32 8, !"cf-protection-branch", i32 1}
!4557 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4558 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4559 = !{i32 1, !"Code Model", i32 2}
!4560 = !{i32 1, !"override-stack-alignment", i32 8}
!4561 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4562 = distinct !DISubprogram(name: "nla_get_range_unsigned", scope: !2, file: !2, line: 119, type: !4563, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4565)
!4563 = !DISubroutineType(types: !4564)
!4564 = !{null, !4253, !4270}
!4565 = !{!4566, !4567, !4568, !4570, !4573, !4576}
!4566 = !DILocalVariable(name: "pt", arg: 1, scope: !4562, file: !2, line: 119, type: !4253)
!4567 = !DILocalVariable(name: "range", arg: 2, scope: !4562, file: !2, line: 120, type: !4270)
!4568 = !DILocalVariable(name: "__ret_warn_on", scope: !4569, file: !2, line: 122, type: !172)
!4569 = distinct !DILexicalBlock(scope: !4562, file: !2, line: 122, column: 2)
!4570 = !DILocalVariable(name: "__flags", scope: !4571, file: !2, line: 122, type: !172)
!4571 = distinct !DILexicalBlock(scope: !4572, file: !2, line: 122, column: 2)
!4572 = distinct !DILexicalBlock(scope: !4569, file: !2, line: 122, column: 2)
!4573 = !DILocalVariable(name: "__ret_warn_on", scope: !4574, file: !2, line: 145, type: !172)
!4574 = distinct !DILexicalBlock(scope: !4575, file: !2, line: 145, column: 3)
!4575 = distinct !DILexicalBlock(scope: !4562, file: !2, line: 127, column: 20)
!4576 = !DILocalVariable(name: "__flags", scope: !4577, file: !2, line: 145, type: !172)
!4577 = distinct !DILexicalBlock(scope: !4578, file: !2, line: 145, column: 3)
!4578 = distinct !DILexicalBlock(scope: !4574, file: !2, line: 145, column: 3)
!4579 = !DILocation(line: 119, column: 54, scope: !4562)
!4580 = !DILocation(line: 120, column: 41, scope: !4562)
!4581 = !DILocation(line: 122, column: 2, scope: !4569)
!4582 = !DILocation(line: 0, scope: !4569)
!4583 = !DILocation(line: 122, column: 2, scope: !4572)
!4584 = !DILocation(line: 122, column: 2, scope: !4571)
!4585 = !DILocation(line: 122, column: 2, scope: !4586)
!4586 = distinct !DILexicalBlock(scope: !4571, file: !2, line: 122, column: 2)
!4587 = !DILocation(line: 122, column: 2, scope: !4588)
!4588 = distinct !DILexicalBlock(scope: !4571, file: !2, line: 122, column: 2)
!4589 = !{i64 2155522003, i64 2155522032, i64 2155522078, i64 2155522136, i64 2155522190, i64 2155522244, i64 2155522299, i64 2155522330, i64 2155522638, i64 2155522644, i64 2155522691, i64 2155522714, i64 2155522740}
!4590 = !DILocation(line: 122, column: 2, scope: !4591)
!4591 = distinct !DILexicalBlock(scope: !4571, file: !2, line: 122, column: 2)
!4592 = !DILocation(line: 122, column: 2, scope: !4562)
!4593 = !DILocation(line: 125, column: 2, scope: !4562)
!4594 = !DILocation(line: 125, column: 9, scope: !4562)
!4595 = !DILocation(line: 125, column: 13, scope: !4562)
!4596 = !DILocation(line: 127, column: 10, scope: !4562)
!4597 = !DILocation(line: 127, column: 14, scope: !4562)
!4598 = !DILocation(line: 127, column: 2, scope: !4562)
!4599 = !DILocation(line: 129, column: 3, scope: !4575)
!4600 = !DILocation(line: 129, column: 10, scope: !4575)
!4601 = !DILocation(line: 129, column: 14, scope: !4575)
!4602 = !DILocation(line: 130, column: 3, scope: !4575)
!4603 = !DILocation(line: 134, column: 3, scope: !4575)
!4604 = !DILocation(line: 134, column: 10, scope: !4575)
!4605 = !DILocation(line: 134, column: 14, scope: !4575)
!4606 = !DILocation(line: 135, column: 3, scope: !4575)
!4607 = !DILocation(line: 138, column: 3, scope: !4575)
!4608 = !DILocation(line: 138, column: 10, scope: !4575)
!4609 = !DILocation(line: 138, column: 14, scope: !4575)
!4610 = !DILocation(line: 139, column: 3, scope: !4575)
!4611 = !DILocation(line: 142, column: 3, scope: !4575)
!4612 = !DILocation(line: 142, column: 10, scope: !4575)
!4613 = !DILocation(line: 142, column: 14, scope: !4575)
!4614 = !DILocation(line: 143, column: 3, scope: !4575)
!4615 = !DILocation(line: 145, column: 3, scope: !4574)
!4616 = !DILocation(line: 145, column: 3, scope: !4578)
!4617 = !DILocation(line: 145, column: 3, scope: !4577)
!4618 = !DILocation(line: 145, column: 3, scope: !4619)
!4619 = distinct !DILexicalBlock(scope: !4577, file: !2, line: 145, column: 3)
!4620 = !DILocation(line: 145, column: 3, scope: !4621)
!4621 = distinct !DILexicalBlock(scope: !4577, file: !2, line: 145, column: 3)
!4622 = !{i64 2155523553, i64 2155523582, i64 2155523628, i64 2155523686, i64 2155523740, i64 2155523794, i64 2155523849, i64 2155523880, i64 2155524188, i64 2155524194, i64 2155524241, i64 2155524264, i64 2155524290}
!4623 = !DILocation(line: 145, column: 3, scope: !4624)
!4624 = distinct !DILexicalBlock(scope: !4577, file: !2, line: 145, column: 3)
!4625 = !DILocation(line: 145, column: 3, scope: !4575)
!4626 = !DILocation(line: 146, column: 3, scope: !4575)
!4627 = !DILocation(line: 149, column: 10, scope: !4562)
!4628 = !DILocation(line: 149, column: 14, scope: !4562)
!4629 = !DILocation(line: 149, column: 2, scope: !4562)
!4630 = !DILocation(line: 152, column: 16, scope: !4631)
!4631 = distinct !DILexicalBlock(scope: !4562, file: !2, line: 149, column: 31)
!4632 = !DILocation(line: 152, column: 20, scope: !4631)
!4633 = !DILocation(line: 152, column: 3, scope: !4631)
!4634 = !DILocation(line: 152, column: 10, scope: !4631)
!4635 = !DILocation(line: 152, column: 14, scope: !4631)
!4636 = !DILocation(line: 153, column: 16, scope: !4631)
!4637 = !DILocation(line: 153, column: 20, scope: !4631)
!4638 = !DILocation(line: 153, column: 3, scope: !4631)
!4639 = !DILocation(line: 153, column: 10, scope: !4631)
!4640 = !DILocation(line: 153, column: 14, scope: !4631)
!4641 = !DILocation(line: 154, column: 3, scope: !4631)
!4642 = !DILocation(line: 156, column: 4, scope: !4631)
!4643 = !DILocation(line: 156, column: 13, scope: !4631)
!4644 = !DILocation(line: 156, column: 17, scope: !4631)
!4645 = !DILocation(line: 156, column: 12, scope: !4631)
!4646 = !DILocation(line: 157, column: 3, scope: !4631)
!4647 = !DILocation(line: 159, column: 16, scope: !4631)
!4648 = !DILocation(line: 159, column: 20, scope: !4631)
!4649 = !DILocation(line: 159, column: 3, scope: !4631)
!4650 = !DILocation(line: 159, column: 10, scope: !4631)
!4651 = !DILocation(line: 159, column: 14, scope: !4631)
!4652 = !DILocation(line: 160, column: 3, scope: !4631)
!4653 = !DILocation(line: 162, column: 16, scope: !4631)
!4654 = !DILocation(line: 162, column: 20, scope: !4631)
!4655 = !DILocation(line: 162, column: 3, scope: !4631)
!4656 = !DILocation(line: 162, column: 10, scope: !4631)
!4657 = !DILocation(line: 162, column: 14, scope: !4631)
!4658 = !DILocation(line: 163, column: 3, scope: !4631)
!4659 = !DILocation(line: 165, column: 3, scope: !4631)
!4660 = !DILocation(line: 167, column: 1, scope: !4562)
!4661 = distinct !DISubprogram(name: "nla_get_range_signed", scope: !2, file: !2, line: 238, type: !4662, scopeLine: 240, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4664)
!4662 = !DISubroutineType(types: !4663)
!4663 = !{null, !4253, !4276}
!4664 = !{!4665, !4666, !4667, !4670}
!4665 = !DILocalVariable(name: "pt", arg: 1, scope: !4661, file: !2, line: 238, type: !4253)
!4666 = !DILocalVariable(name: "range", arg: 2, scope: !4661, file: !2, line: 239, type: !4276)
!4667 = !DILocalVariable(name: "__ret_warn_on", scope: !4668, file: !2, line: 259, type: !172)
!4668 = distinct !DILexicalBlock(scope: !4669, file: !2, line: 259, column: 3)
!4669 = distinct !DILexicalBlock(scope: !4661, file: !2, line: 241, column: 20)
!4670 = !DILocalVariable(name: "__flags", scope: !4671, file: !2, line: 259, type: !172)
!4671 = distinct !DILexicalBlock(scope: !4672, file: !2, line: 259, column: 3)
!4672 = distinct !DILexicalBlock(scope: !4668, file: !2, line: 259, column: 3)
!4673 = !DILocation(line: 238, column: 52, scope: !4661)
!4674 = !DILocation(line: 239, column: 46, scope: !4661)
!4675 = !DILocation(line: 241, column: 10, scope: !4661)
!4676 = !DILocation(line: 241, column: 14, scope: !4661)
!4677 = !DILocation(line: 241, column: 2, scope: !4661)
!4678 = !DILocation(line: 243, column: 3, scope: !4669)
!4679 = !DILocation(line: 243, column: 10, scope: !4669)
!4680 = !DILocation(line: 243, column: 14, scope: !4669)
!4681 = !DILocation(line: 244, column: 3, scope: !4669)
!4682 = !DILocation(line: 244, column: 10, scope: !4669)
!4683 = !DILocation(line: 244, column: 14, scope: !4669)
!4684 = !DILocation(line: 245, column: 3, scope: !4669)
!4685 = !DILocation(line: 247, column: 3, scope: !4669)
!4686 = !DILocation(line: 247, column: 10, scope: !4669)
!4687 = !DILocation(line: 247, column: 14, scope: !4669)
!4688 = !DILocation(line: 248, column: 3, scope: !4669)
!4689 = !DILocation(line: 248, column: 10, scope: !4669)
!4690 = !DILocation(line: 248, column: 14, scope: !4669)
!4691 = !DILocation(line: 249, column: 3, scope: !4669)
!4692 = !DILocation(line: 251, column: 3, scope: !4669)
!4693 = !DILocation(line: 251, column: 10, scope: !4669)
!4694 = !DILocation(line: 251, column: 14, scope: !4669)
!4695 = !DILocation(line: 252, column: 3, scope: !4669)
!4696 = !DILocation(line: 252, column: 10, scope: !4669)
!4697 = !DILocation(line: 252, column: 14, scope: !4669)
!4698 = !DILocation(line: 253, column: 3, scope: !4669)
!4699 = !DILocation(line: 255, column: 3, scope: !4669)
!4700 = !DILocation(line: 255, column: 10, scope: !4669)
!4701 = !DILocation(line: 255, column: 14, scope: !4669)
!4702 = !DILocation(line: 256, column: 3, scope: !4669)
!4703 = !DILocation(line: 256, column: 10, scope: !4669)
!4704 = !DILocation(line: 256, column: 14, scope: !4669)
!4705 = !DILocation(line: 257, column: 3, scope: !4669)
!4706 = !DILocation(line: 259, column: 3, scope: !4668)
!4707 = !DILocation(line: 259, column: 3, scope: !4672)
!4708 = !DILocation(line: 259, column: 3, scope: !4671)
!4709 = !DILocation(line: 259, column: 3, scope: !4710)
!4710 = distinct !DILexicalBlock(scope: !4671, file: !2, line: 259, column: 3)
!4711 = !DILocation(line: 259, column: 3, scope: !4712)
!4712 = distinct !DILexicalBlock(scope: !4671, file: !2, line: 259, column: 3)
!4713 = !{i64 2155528504, i64 2155528533, i64 2155528579, i64 2155528637, i64 2155528691, i64 2155528745, i64 2155528800, i64 2155528831, i64 2155529139, i64 2155529145, i64 2155529192, i64 2155529215, i64 2155529241}
!4714 = !DILocation(line: 259, column: 3, scope: !4715)
!4715 = distinct !DILexicalBlock(scope: !4671, file: !2, line: 259, column: 3)
!4716 = !DILocation(line: 259, column: 3, scope: !4669)
!4717 = !DILocation(line: 260, column: 3, scope: !4669)
!4718 = !DILocation(line: 263, column: 10, scope: !4661)
!4719 = !DILocation(line: 263, column: 14, scope: !4661)
!4720 = !DILocation(line: 263, column: 2, scope: !4661)
!4721 = !DILocation(line: 265, column: 16, scope: !4722)
!4722 = distinct !DILexicalBlock(scope: !4661, file: !2, line: 263, column: 31)
!4723 = !DILocation(line: 265, column: 20, scope: !4722)
!4724 = !DILocation(line: 265, column: 3, scope: !4722)
!4725 = !DILocation(line: 265, column: 10, scope: !4722)
!4726 = !DILocation(line: 265, column: 14, scope: !4722)
!4727 = !DILocation(line: 266, column: 16, scope: !4722)
!4728 = !DILocation(line: 266, column: 20, scope: !4722)
!4729 = !DILocation(line: 266, column: 3, scope: !4722)
!4730 = !DILocation(line: 266, column: 10, scope: !4722)
!4731 = !DILocation(line: 266, column: 14, scope: !4722)
!4732 = !DILocation(line: 267, column: 3, scope: !4722)
!4733 = !DILocation(line: 269, column: 4, scope: !4722)
!4734 = !DILocation(line: 269, column: 13, scope: !4722)
!4735 = !DILocation(line: 269, column: 17, scope: !4722)
!4736 = !DILocation(line: 269, column: 12, scope: !4722)
!4737 = !DILocation(line: 270, column: 3, scope: !4722)
!4738 = !DILocation(line: 272, column: 16, scope: !4722)
!4739 = !DILocation(line: 272, column: 20, scope: !4722)
!4740 = !DILocation(line: 272, column: 3, scope: !4722)
!4741 = !DILocation(line: 272, column: 10, scope: !4722)
!4742 = !DILocation(line: 272, column: 14, scope: !4722)
!4743 = !DILocation(line: 273, column: 3, scope: !4722)
!4744 = !DILocation(line: 275, column: 16, scope: !4722)
!4745 = !DILocation(line: 275, column: 20, scope: !4722)
!4746 = !DILocation(line: 275, column: 3, scope: !4722)
!4747 = !DILocation(line: 275, column: 10, scope: !4722)
!4748 = !DILocation(line: 275, column: 14, scope: !4722)
!4749 = !DILocation(line: 276, column: 3, scope: !4722)
!4750 = !DILocation(line: 278, column: 3, scope: !4722)
!4751 = !DILocation(line: 280, column: 1, scope: !4661)
!4752 = distinct !DISubprogram(name: "__nla_validate", scope: !2, file: !2, line: 651, type: !4753, scopeLine: 654, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4755)
!4753 = !DISubroutineType(types: !4754)
!4754 = !{!172, !4251, !172, !172, !4253, !13, !4290}
!4755 = !{!4756, !4757, !4758, !4759, !4760, !4761}
!4756 = !DILocalVariable(name: "head", arg: 1, scope: !4752, file: !2, line: 651, type: !4251)
!4757 = !DILocalVariable(name: "len", arg: 2, scope: !4752, file: !2, line: 651, type: !172)
!4758 = !DILocalVariable(name: "maxtype", arg: 3, scope: !4752, file: !2, line: 651, type: !172)
!4759 = !DILocalVariable(name: "policy", arg: 4, scope: !4752, file: !2, line: 652, type: !4253)
!4760 = !DILocalVariable(name: "validate", arg: 5, scope: !4752, file: !2, line: 652, type: !13)
!4761 = !DILocalVariable(name: "extack", arg: 6, scope: !4752, file: !2, line: 653, type: !4290)
!4762 = !DILocation(line: 651, column: 41, scope: !4752)
!4763 = !DILocation(line: 651, column: 51, scope: !4752)
!4764 = !DILocation(line: 651, column: 60, scope: !4752)
!4765 = !DILocation(line: 652, column: 31, scope: !4752)
!4766 = !DILocation(line: 652, column: 52, scope: !4752)
!4767 = !DILocation(line: 653, column: 30, scope: !4752)
!4768 = !DILocation(line: 655, column: 30, scope: !4752)
!4769 = !DILocation(line: 655, column: 36, scope: !4752)
!4770 = !DILocation(line: 655, column: 41, scope: !4752)
!4771 = !DILocation(line: 655, column: 50, scope: !4752)
!4772 = !DILocation(line: 655, column: 58, scope: !4752)
!4773 = !DILocation(line: 656, column: 9, scope: !4752)
!4774 = !DILocation(line: 655, column: 9, scope: !4752)
!4775 = !DILocation(line: 655, column: 2, scope: !4752)
!4776 = !DILocation(line: 582, column: 54, scope: !4248)
!4777 = !DILocation(line: 582, column: 64, scope: !4248)
!4778 = !DILocation(line: 582, column: 73, scope: !4248)
!4779 = !DILocation(line: 583, column: 30, scope: !4248)
!4780 = !DILocation(line: 584, column: 18, scope: !4248)
!4781 = !DILocation(line: 585, column: 29, scope: !4248)
!4782 = !DILocation(line: 586, column: 21, scope: !4248)
!4783 = !DILocation(line: 586, column: 38, scope: !4248)
!4784 = !DILocation(line: 588, column: 2, scope: !4248)
!4785 = !DILocation(line: 588, column: 23, scope: !4248)
!4786 = !DILocation(line: 589, column: 2, scope: !4248)
!4787 = !DILocation(line: 589, column: 6, scope: !4248)
!4788 = !DILocation(line: 591, column: 6, scope: !4321)
!4789 = !DILocation(line: 591, column: 12, scope: !4321)
!4790 = !DILocation(line: 591, column: 6, scope: !4248)
!4791 = !DILocation(line: 592, column: 3, scope: !4320)
!4792 = !DILocation(line: 592, column: 3, scope: !4319)
!4793 = !DILocation(line: 592, column: 3, scope: !4794)
!4794 = distinct !DILexicalBlock(scope: !4319, file: !2, line: 592, column: 3)
!4795 = !DILocation(line: 594, column: 3, scope: !4320)
!4796 = !DILocation(line: 597, column: 6, scope: !4797)
!4797 = distinct !DILexicalBlock(scope: !4248, file: !2, line: 597, column: 6)
!4798 = !DILocation(line: 597, column: 6, scope: !4248)
!4799 = !DILocation(line: 598, column: 10, scope: !4797)
!4800 = !DILocation(line: 598, column: 44, scope: !4797)
!4801 = !DILocation(line: 598, column: 52, scope: !4797)
!4802 = !DILocation(line: 598, column: 43, scope: !4797)
!4803 = !DILocation(line: 598, column: 41, scope: !4797)
!4804 = !DILocation(line: 598, column: 3, scope: !4797)
!4805 = !DILocation(line: 600, column: 2, scope: !4325)
!4806 = !DILocation(line: 600, column: 2, scope: !4324)
!4807 = !DILocation(line: 601, column: 3, scope: !4323)
!4808 = !DILocation(line: 601, column: 7, scope: !4323)
!4809 = !DILocation(line: 601, column: 23, scope: !4323)
!4810 = !DILocation(line: 601, column: 14, scope: !4323)
!4811 = !DILocation(line: 603, column: 7, scope: !4331)
!4812 = !DILocation(line: 603, column: 12, scope: !4331)
!4813 = !DILocation(line: 603, column: 17, scope: !4331)
!4814 = !DILocation(line: 603, column: 20, scope: !4331)
!4815 = !DILocation(line: 603, column: 27, scope: !4331)
!4816 = !DILocation(line: 603, column: 25, scope: !4331)
!4817 = !DILocation(line: 603, column: 7, scope: !4323)
!4818 = !DILocation(line: 604, column: 8, scope: !4329)
!4819 = !DILocation(line: 604, column: 17, scope: !4329)
!4820 = !DILocation(line: 604, column: 8, scope: !4330)
!4821 = !DILocation(line: 605, column: 5, scope: !4328)
!4822 = !DILocation(line: 605, column: 5, scope: !4327)
!4823 = !DILocation(line: 605, column: 5, scope: !4824)
!4824 = distinct !DILexicalBlock(scope: !4327, file: !2, line: 605, column: 5)
!4825 = !DILocation(line: 605, column: 5, scope: !4826)
!4826 = distinct !DILexicalBlock(scope: !4824, file: !2, line: 605, column: 5)
!4827 = !DILocation(line: 607, column: 5, scope: !4328)
!4828 = !DILocation(line: 609, column: 4, scope: !4330)
!4829 = !DILocation(line: 611, column: 10, scope: !4333)
!4830 = !DILocation(line: 611, column: 10, scope: !4831)
!4831 = distinct !DILexicalBlock(scope: !4333, file: !2, line: 611, column: 10)
!4832 = !DILocation(line: 611, column: 10, scope: !4833)
!4833 = distinct !DILexicalBlock(scope: !4333, file: !2, line: 611, column: 10)
!4834 = !DILocation(line: 611, column: 10, scope: !4323)
!4835 = !DILocation(line: 611, column: 8, scope: !4323)
!4836 = !DILocation(line: 612, column: 7, scope: !4338)
!4837 = !DILocation(line: 612, column: 7, scope: !4323)
!4838 = !DILocation(line: 613, column: 4, scope: !4337)
!4839 = !DILocation(line: 613, column: 8, scope: !4337)
!4840 = !DILocation(line: 613, column: 27, scope: !4337)
!4841 = !DILocation(line: 613, column: 32, scope: !4337)
!4842 = !DILocation(line: 613, column: 41, scope: !4337)
!4843 = !DILocation(line: 614, column: 13, scope: !4337)
!4844 = !DILocation(line: 614, column: 23, scope: !4337)
!4845 = !DILocation(line: 614, column: 31, scope: !4337)
!4846 = !DILocation(line: 613, column: 14, scope: !4337)
!4847 = !DILocation(line: 616, column: 8, scope: !4848)
!4848 = distinct !DILexicalBlock(scope: !4337, file: !2, line: 616, column: 8)
!4849 = !DILocation(line: 616, column: 12, scope: !4848)
!4850 = !DILocation(line: 616, column: 8, scope: !4337)
!4851 = !DILocation(line: 617, column: 12, scope: !4848)
!4852 = !DILocation(line: 617, column: 5, scope: !4848)
!4853 = !DILocation(line: 618, column: 3, scope: !4338)
!4854 = !DILocation(line: 618, column: 3, scope: !4337)
!4855 = !DILocation(line: 620, column: 7, scope: !4856)
!4856 = distinct !DILexicalBlock(scope: !4323, file: !2, line: 620, column: 7)
!4857 = !DILocation(line: 620, column: 7, scope: !4323)
!4858 = !DILocation(line: 621, column: 32, scope: !4856)
!4859 = !DILocation(line: 621, column: 4, scope: !4856)
!4860 = !DILocation(line: 621, column: 7, scope: !4856)
!4861 = !DILocation(line: 621, column: 13, scope: !4856)
!4862 = !DILocation(line: 622, column: 2, scope: !4324)
!4863 = !DILocation(line: 622, column: 2, scope: !4323)
!4864 = distinct !{!4864, !4805, !4865, !4866, !4867}
!4865 = !DILocation(line: 622, column: 2, scope: !4325)
!4866 = !{!"llvm.loop.mustprogress"}
!4867 = !{!"llvm.loop.unroll.disable"}
!4868 = !DILocation(line: 624, column: 6, scope: !4342)
!4869 = !DILocation(line: 624, column: 6, scope: !4248)
!4870 = !DILocation(line: 625, column: 3, scope: !4871)
!4871 = distinct !DILexicalBlock(scope: !4872, file: !2, line: 625, column: 3)
!4872 = distinct !DILexicalBlock(scope: !4341, file: !2, line: 625, column: 3)
!4873 = !DILocation(line: 625, column: 3, scope: !4872)
!4874 = !DILocation(line: 625, column: 3, scope: !4875)
!4875 = distinct !DILexicalBlock(scope: !4871, file: !2, line: 625, column: 3)
!4876 = !DILocation(line: 625, column: 3, scope: !4877)
!4877 = distinct !DILexicalBlock(scope: !4875, file: !2, line: 625, column: 3)
!4878 = !DILocation(line: 627, column: 3, scope: !4341)
!4879 = !DILocation(line: 627, column: 3, scope: !4340)
!4880 = !DILocation(line: 627, column: 3, scope: !4881)
!4881 = distinct !DILexicalBlock(scope: !4340, file: !2, line: 627, column: 3)
!4882 = !DILocation(line: 628, column: 7, scope: !4883)
!4883 = distinct !DILexicalBlock(scope: !4341, file: !2, line: 628, column: 7)
!4884 = !DILocation(line: 628, column: 16, scope: !4883)
!4885 = !DILocation(line: 628, column: 7, scope: !4341)
!4886 = !DILocation(line: 629, column: 4, scope: !4883)
!4887 = !DILocation(line: 630, column: 2, scope: !4341)
!4888 = !DILocation(line: 632, column: 2, scope: !4248)
!4889 = !DILocation(line: 633, column: 1, scope: !4248)
!4890 = distinct !DISubprogram(name: "nla_policy_len", scope: !2, file: !2, line: 672, type: !4891, scopeLine: 673, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4893)
!4891 = !DISubroutineType(types: !4892)
!4892 = !{!172, !4253, !172}
!4893 = !{!4894, !4895, !4896, !4897}
!4894 = !DILocalVariable(name: "p", arg: 1, scope: !4890, file: !2, line: 672, type: !4253)
!4895 = !DILocalVariable(name: "n", arg: 2, scope: !4890, file: !2, line: 672, type: !172)
!4896 = !DILocalVariable(name: "i", scope: !4890, file: !2, line: 674, type: !172)
!4897 = !DILocalVariable(name: "len", scope: !4890, file: !2, line: 674, type: !172)
!4898 = !DILocation(line: 672, column: 41, scope: !4890)
!4899 = !DILocation(line: 672, column: 48, scope: !4890)
!4900 = !DILocation(line: 674, column: 2, scope: !4890)
!4901 = !DILocation(line: 674, column: 6, scope: !4890)
!4902 = !DILocation(line: 674, column: 9, scope: !4890)
!4903 = !DILocation(line: 676, column: 9, scope: !4904)
!4904 = distinct !DILexicalBlock(scope: !4890, file: !2, line: 676, column: 2)
!4905 = !DILocation(line: 676, column: 7, scope: !4904)
!4906 = !DILocation(line: 676, column: 14, scope: !4907)
!4907 = distinct !DILexicalBlock(scope: !4904, file: !2, line: 676, column: 2)
!4908 = !DILocation(line: 676, column: 18, scope: !4907)
!4909 = !DILocation(line: 676, column: 16, scope: !4907)
!4910 = !DILocation(line: 676, column: 2, scope: !4904)
!4911 = !DILocation(line: 677, column: 7, scope: !4912)
!4912 = distinct !DILexicalBlock(scope: !4913, file: !2, line: 677, column: 7)
!4913 = distinct !DILexicalBlock(scope: !4907, file: !2, line: 676, column: 31)
!4914 = !DILocation(line: 677, column: 10, scope: !4912)
!4915 = !DILocation(line: 677, column: 7, scope: !4913)
!4916 = !DILocation(line: 678, column: 26, scope: !4912)
!4917 = !DILocation(line: 678, column: 29, scope: !4912)
!4918 = !DILocation(line: 678, column: 11, scope: !4912)
!4919 = !DILocation(line: 678, column: 8, scope: !4912)
!4920 = !DILocation(line: 678, column: 4, scope: !4912)
!4921 = !DILocation(line: 679, column: 25, scope: !4922)
!4922 = distinct !DILexicalBlock(scope: !4912, file: !2, line: 679, column: 12)
!4923 = !DILocation(line: 679, column: 28, scope: !4922)
!4924 = !DILocation(line: 679, column: 12, scope: !4922)
!4925 = !DILocation(line: 679, column: 12, scope: !4912)
!4926 = !DILocation(line: 680, column: 39, scope: !4922)
!4927 = !DILocation(line: 680, column: 42, scope: !4922)
!4928 = !DILocation(line: 680, column: 26, scope: !4922)
!4929 = !DILocation(line: 680, column: 11, scope: !4922)
!4930 = !DILocation(line: 680, column: 8, scope: !4922)
!4931 = !DILocation(line: 680, column: 4, scope: !4922)
!4932 = !DILocation(line: 681, column: 28, scope: !4933)
!4933 = distinct !DILexicalBlock(scope: !4922, file: !2, line: 681, column: 12)
!4934 = !DILocation(line: 681, column: 31, scope: !4933)
!4935 = !DILocation(line: 681, column: 12, scope: !4933)
!4936 = !DILocation(line: 681, column: 12, scope: !4922)
!4937 = !DILocation(line: 682, column: 42, scope: !4933)
!4938 = !DILocation(line: 682, column: 45, scope: !4933)
!4939 = !DILocation(line: 682, column: 26, scope: !4933)
!4940 = !DILocation(line: 682, column: 11, scope: !4933)
!4941 = !DILocation(line: 682, column: 8, scope: !4933)
!4942 = !DILocation(line: 682, column: 4, scope: !4933)
!4943 = !DILocation(line: 683, column: 2, scope: !4913)
!4944 = !DILocation(line: 676, column: 22, scope: !4907)
!4945 = !DILocation(line: 676, column: 27, scope: !4907)
!4946 = !DILocation(line: 676, column: 2, scope: !4907)
!4947 = distinct !{!4947, !4910, !4948, !4866, !4867}
!4948 = !DILocation(line: 683, column: 2, scope: !4904)
!4949 = !DILocation(line: 685, column: 9, scope: !4890)
!4950 = !DILocation(line: 686, column: 1, scope: !4890)
!4951 = !DILocation(line: 685, column: 2, scope: !4890)
!4952 = distinct !DISubprogram(name: "nla_total_size", scope: !12, file: !12, line: 1156, type: !3033, scopeLine: 1157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4953)
!4953 = !{!4954}
!4954 = !DILocalVariable(name: "payload", arg: 1, scope: !4952, file: !12, line: 1156, type: !172)
!4955 = !DILocation(line: 1156, column: 38, scope: !4952)
!4956 = !DILocation(line: 1158, column: 9, scope: !4952)
!4957 = !DILocation(line: 1158, column: 2, scope: !4952)
!4958 = distinct !DISubprogram(name: "__nla_parse", scope: !2, file: !2, line: 705, type: !4959, scopeLine: 709, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4961)
!4959 = !DISubroutineType(types: !4960)
!4960 = !{!172, !4306, !172, !4251, !172, !4253, !13, !4290}
!4961 = !{!4962, !4963, !4964, !4965, !4966, !4967, !4968}
!4962 = !DILocalVariable(name: "tb", arg: 1, scope: !4958, file: !2, line: 705, type: !4306)
!4963 = !DILocalVariable(name: "maxtype", arg: 2, scope: !4958, file: !2, line: 705, type: !172)
!4964 = !DILocalVariable(name: "head", arg: 3, scope: !4958, file: !2, line: 706, type: !4251)
!4965 = !DILocalVariable(name: "len", arg: 4, scope: !4958, file: !2, line: 706, type: !172)
!4966 = !DILocalVariable(name: "policy", arg: 5, scope: !4958, file: !2, line: 707, type: !4253)
!4967 = !DILocalVariable(name: "validate", arg: 6, scope: !4958, file: !2, line: 707, type: !13)
!4968 = !DILocalVariable(name: "extack", arg: 7, scope: !4958, file: !2, line: 708, type: !4290)
!4969 = !DILocation(line: 705, column: 33, scope: !4958)
!4970 = !DILocation(line: 705, column: 41, scope: !4958)
!4971 = !DILocation(line: 706, column: 24, scope: !4958)
!4972 = !DILocation(line: 706, column: 34, scope: !4958)
!4973 = !DILocation(line: 707, column: 28, scope: !4958)
!4974 = !DILocation(line: 707, column: 49, scope: !4958)
!4975 = !DILocation(line: 708, column: 27, scope: !4958)
!4976 = !DILocation(line: 710, column: 30, scope: !4958)
!4977 = !DILocation(line: 710, column: 36, scope: !4958)
!4978 = !DILocation(line: 710, column: 41, scope: !4958)
!4979 = !DILocation(line: 710, column: 50, scope: !4958)
!4980 = !DILocation(line: 710, column: 58, scope: !4958)
!4981 = !DILocation(line: 711, column: 9, scope: !4958)
!4982 = !DILocation(line: 711, column: 17, scope: !4958)
!4983 = !DILocation(line: 710, column: 9, scope: !4958)
!4984 = !DILocation(line: 710, column: 2, scope: !4958)
!4985 = distinct !DISubprogram(name: "nla_find", scope: !2, file: !2, line: 723, type: !4986, scopeLine: 724, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4988)
!4986 = !DISubroutineType(types: !4987)
!4987 = !{!177, !4251, !172, !172}
!4988 = !{!4989, !4990, !4991, !4992, !4993}
!4989 = !DILocalVariable(name: "head", arg: 1, scope: !4985, file: !2, line: 723, type: !4251)
!4990 = !DILocalVariable(name: "len", arg: 2, scope: !4985, file: !2, line: 723, type: !172)
!4991 = !DILocalVariable(name: "attrtype", arg: 3, scope: !4985, file: !2, line: 723, type: !172)
!4992 = !DILocalVariable(name: "nla", scope: !4985, file: !2, line: 725, type: !4251)
!4993 = !DILocalVariable(name: "rem", scope: !4985, file: !2, line: 726, type: !172)
!4994 = !DILocation(line: 723, column: 46, scope: !4985)
!4995 = !DILocation(line: 723, column: 56, scope: !4985)
!4996 = !DILocation(line: 723, column: 65, scope: !4985)
!4997 = !DILocation(line: 725, column: 2, scope: !4985)
!4998 = !DILocation(line: 725, column: 23, scope: !4985)
!4999 = !DILocation(line: 726, column: 2, scope: !4985)
!5000 = !DILocation(line: 726, column: 6, scope: !4985)
!5001 = !DILocation(line: 728, column: 2, scope: !5002)
!5002 = distinct !DILexicalBlock(scope: !4985, file: !2, line: 728, column: 2)
!5003 = !DILocation(line: 728, column: 2, scope: !5004)
!5004 = distinct !DILexicalBlock(scope: !5002, file: !2, line: 728, column: 2)
!5005 = !DILocation(line: 729, column: 16, scope: !5006)
!5006 = distinct !DILexicalBlock(scope: !5004, file: !2, line: 729, column: 7)
!5007 = !DILocation(line: 729, column: 7, scope: !5006)
!5008 = !DILocation(line: 729, column: 24, scope: !5006)
!5009 = !DILocation(line: 729, column: 21, scope: !5006)
!5010 = !DILocation(line: 729, column: 7, scope: !5004)
!5011 = !DILocation(line: 730, column: 28, scope: !5006)
!5012 = !DILocation(line: 730, column: 4, scope: !5006)
!5013 = distinct !{!5013, !5001, !5014, !4866, !4867}
!5014 = !DILocation(line: 730, column: 28, scope: !5002)
!5015 = !DILocation(line: 732, column: 2, scope: !4985)
!5016 = !DILocation(line: 733, column: 1, scope: !4985)
!5017 = distinct !DISubprogram(name: "nla_ok", scope: !12, file: !12, line: 1202, type: !5018, scopeLine: 1203, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5020)
!5018 = !DISubroutineType(types: !5019)
!5019 = !{!172, !4251, !172}
!5020 = !{!5021, !5022}
!5021 = !DILocalVariable(name: "nla", arg: 1, scope: !5017, file: !12, line: 1202, type: !4251)
!5022 = !DILocalVariable(name: "remaining", arg: 2, scope: !5017, file: !12, line: 1202, type: !172)
!5023 = !DILocation(line: 1202, column: 47, scope: !5017)
!5024 = !DILocation(line: 1202, column: 56, scope: !5017)
!5025 = !DILocation(line: 1204, column: 9, scope: !5017)
!5026 = !DILocation(line: 1204, column: 19, scope: !5017)
!5027 = !DILocation(line: 1204, column: 41, scope: !5017)
!5028 = !DILocation(line: 1205, column: 9, scope: !5017)
!5029 = !DILocation(line: 1205, column: 14, scope: !5017)
!5030 = !DILocation(line: 1205, column: 22, scope: !5017)
!5031 = !DILocation(line: 1205, column: 38, scope: !5017)
!5032 = !DILocation(line: 1206, column: 9, scope: !5017)
!5033 = !DILocation(line: 1206, column: 14, scope: !5017)
!5034 = !DILocation(line: 1206, column: 25, scope: !5017)
!5035 = !DILocation(line: 1206, column: 22, scope: !5017)
!5036 = !DILocation(line: 0, scope: !5017)
!5037 = !DILocation(line: 1204, column: 2, scope: !5017)
!5038 = distinct !DISubprogram(name: "nla_type", scope: !12, file: !12, line: 1174, type: !5039, scopeLine: 1175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5041)
!5039 = !DISubroutineType(types: !5040)
!5040 = !{!172, !4251}
!5041 = !{!5042}
!5042 = !DILocalVariable(name: "nla", arg: 1, scope: !5038, file: !12, line: 1174, type: !4251)
!5043 = !DILocation(line: 1174, column: 49, scope: !5038)
!5044 = !DILocation(line: 1176, column: 9, scope: !5038)
!5045 = !DILocation(line: 1176, column: 14, scope: !5038)
!5046 = !DILocation(line: 1176, column: 23, scope: !5038)
!5047 = !DILocation(line: 1176, column: 2, scope: !5038)
!5048 = distinct !DISubprogram(name: "nla_next", scope: !12, file: !12, line: 1217, type: !5049, scopeLine: 1218, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5051)
!5049 = !DISubroutineType(types: !5050)
!5050 = !{!177, !4251, !2194}
!5051 = !{!5052, !5053, !5054}
!5052 = !DILocalVariable(name: "nla", arg: 1, scope: !5048, file: !12, line: 1217, type: !4251)
!5053 = !DILocalVariable(name: "remaining", arg: 2, scope: !5048, file: !12, line: 1217, type: !2194)
!5054 = !DILocalVariable(name: "totlen", scope: !5048, file: !12, line: 1219, type: !13)
!5055 = !DILocation(line: 1217, column: 60, scope: !5048)
!5056 = !DILocation(line: 1217, column: 70, scope: !5048)
!5057 = !DILocation(line: 1219, column: 2, scope: !5048)
!5058 = !DILocation(line: 1219, column: 15, scope: !5048)
!5059 = !DILocation(line: 1219, column: 24, scope: !5048)
!5060 = !DILocation(line: 1221, column: 16, scope: !5048)
!5061 = !DILocation(line: 1221, column: 3, scope: !5048)
!5062 = !DILocation(line: 1221, column: 13, scope: !5048)
!5063 = !DILocation(line: 1222, column: 37, scope: !5048)
!5064 = !DILocation(line: 1222, column: 43, scope: !5048)
!5065 = !DILocation(line: 1222, column: 41, scope: !5048)
!5066 = !DILocation(line: 1223, column: 1, scope: !5048)
!5067 = !DILocation(line: 1222, column: 2, scope: !5048)
!5068 = distinct !DISubprogram(name: "nla_strscpy", scope: !2, file: !2, line: 750, type: !5069, scopeLine: 751, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5071)
!5069 = !DISubroutineType(types: !5070)
!5070 = !{!1114, !815, !4251, !1117}
!5071 = !{!5072, !5073, !5074, !5075, !5076, !5077, !5078, !5079, !5082}
!5072 = !DILocalVariable(name: "dst", arg: 1, scope: !5068, file: !2, line: 750, type: !815)
!5073 = !DILocalVariable(name: "nla", arg: 2, scope: !5068, file: !2, line: 750, type: !4251)
!5074 = !DILocalVariable(name: "dstsize", arg: 3, scope: !5068, file: !2, line: 750, type: !1117)
!5075 = !DILocalVariable(name: "srclen", scope: !5068, file: !2, line: 752, type: !1117)
!5076 = !DILocalVariable(name: "src", scope: !5068, file: !2, line: 753, type: !815)
!5077 = !DILocalVariable(name: "ret", scope: !5068, file: !2, line: 754, type: !1114)
!5078 = !DILocalVariable(name: "len", scope: !5068, file: !2, line: 755, type: !1117)
!5079 = !DILocalVariable(name: "__ret_warn_on", scope: !5080, file: !2, line: 757, type: !172)
!5080 = distinct !DILexicalBlock(scope: !5081, file: !2, line: 757, column: 22)
!5081 = distinct !DILexicalBlock(scope: !5068, file: !2, line: 757, column: 6)
!5082 = !DILocalVariable(name: "__flags", scope: !5083, file: !2, line: 757, type: !172)
!5083 = distinct !DILexicalBlock(scope: !5084, file: !2, line: 757, column: 22)
!5084 = distinct !DILexicalBlock(scope: !5080, file: !2, line: 757, column: 22)
!5085 = !DILocation(line: 750, column: 27, scope: !5068)
!5086 = !DILocation(line: 750, column: 53, scope: !5068)
!5087 = !DILocation(line: 750, column: 65, scope: !5068)
!5088 = !DILocation(line: 752, column: 2, scope: !5068)
!5089 = !DILocation(line: 752, column: 9, scope: !5068)
!5090 = !DILocation(line: 752, column: 26, scope: !5068)
!5091 = !DILocation(line: 752, column: 18, scope: !5068)
!5092 = !DILocation(line: 753, column: 2, scope: !5068)
!5093 = !DILocation(line: 753, column: 8, scope: !5068)
!5094 = !DILocation(line: 753, column: 23, scope: !5068)
!5095 = !DILocation(line: 753, column: 14, scope: !5068)
!5096 = !DILocation(line: 754, column: 2, scope: !5068)
!5097 = !DILocation(line: 754, column: 10, scope: !5068)
!5098 = !DILocation(line: 755, column: 2, scope: !5068)
!5099 = !DILocation(line: 755, column: 9, scope: !5068)
!5100 = !DILocation(line: 757, column: 6, scope: !5081)
!5101 = !DILocation(line: 757, column: 14, scope: !5081)
!5102 = !DILocation(line: 757, column: 19, scope: !5081)
!5103 = !DILocation(line: 757, column: 22, scope: !5080)
!5104 = !DILocation(line: 757, column: 22, scope: !5084)
!5105 = !DILocation(line: 757, column: 22, scope: !5083)
!5106 = !DILocation(line: 757, column: 22, scope: !5107)
!5107 = distinct !DILexicalBlock(scope: !5083, file: !2, line: 757, column: 22)
!5108 = !DILocation(line: 757, column: 22, scope: !5109)
!5109 = distinct !DILexicalBlock(scope: !5083, file: !2, line: 757, column: 22)
!5110 = !{i64 2155562648, i64 2155562677, i64 2155562723, i64 2155562781, i64 2155562835, i64 2155562889, i64 2155562944, i64 2155562975, i64 2155563283, i64 2155563289, i64 2155563336, i64 2155563359, i64 2155563385}
!5111 = !DILocation(line: 757, column: 22, scope: !5112)
!5112 = distinct !DILexicalBlock(scope: !5083, file: !2, line: 757, column: 22)
!5113 = !DILocation(line: 757, column: 22, scope: !5081)
!5114 = !DILocation(line: 757, column: 6, scope: !5068)
!5115 = !DILocation(line: 758, column: 3, scope: !5081)
!5116 = !DILocation(line: 760, column: 6, scope: !5117)
!5117 = distinct !DILexicalBlock(scope: !5068, file: !2, line: 760, column: 6)
!5118 = !DILocation(line: 760, column: 13, scope: !5117)
!5119 = !DILocation(line: 760, column: 17, scope: !5117)
!5120 = !DILocation(line: 760, column: 20, scope: !5117)
!5121 = !DILocation(line: 760, column: 24, scope: !5117)
!5122 = !DILocation(line: 760, column: 31, scope: !5117)
!5123 = !DILocation(line: 760, column: 36, scope: !5117)
!5124 = !DILocation(line: 760, column: 6, scope: !5068)
!5125 = !DILocation(line: 761, column: 9, scope: !5117)
!5126 = !DILocation(line: 761, column: 3, scope: !5117)
!5127 = !DILocation(line: 763, column: 6, scope: !5128)
!5128 = distinct !DILexicalBlock(scope: !5068, file: !2, line: 763, column: 6)
!5129 = !DILocation(line: 763, column: 16, scope: !5128)
!5130 = !DILocation(line: 763, column: 13, scope: !5128)
!5131 = !DILocation(line: 763, column: 6, scope: !5068)
!5132 = !DILocation(line: 764, column: 9, scope: !5133)
!5133 = distinct !DILexicalBlock(scope: !5128, file: !2, line: 763, column: 25)
!5134 = !DILocation(line: 764, column: 17, scope: !5133)
!5135 = !DILocation(line: 764, column: 7, scope: !5133)
!5136 = !DILocation(line: 765, column: 7, scope: !5133)
!5137 = !DILocation(line: 766, column: 2, scope: !5133)
!5138 = !DILocation(line: 767, column: 9, scope: !5139)
!5139 = distinct !DILexicalBlock(scope: !5128, file: !2, line: 766, column: 9)
!5140 = !DILocation(line: 767, column: 7, scope: !5139)
!5141 = !DILocation(line: 768, column: 9, scope: !5139)
!5142 = !DILocation(line: 768, column: 7, scope: !5139)
!5143 = !DILocation(line: 771, column: 9, scope: !5068)
!5144 = !DILocation(line: 771, column: 14, scope: !5068)
!5145 = !DILocation(line: 771, column: 19, scope: !5068)
!5146 = !DILocation(line: 771, column: 2, scope: !5068)
!5147 = !DILocation(line: 773, column: 9, scope: !5068)
!5148 = !DILocation(line: 773, column: 15, scope: !5068)
!5149 = !DILocation(line: 773, column: 13, scope: !5068)
!5150 = !DILocation(line: 773, column: 23, scope: !5068)
!5151 = !DILocation(line: 773, column: 33, scope: !5068)
!5152 = !DILocation(line: 773, column: 31, scope: !5068)
!5153 = !DILocation(line: 773, column: 2, scope: !5068)
!5154 = !DILocation(line: 775, column: 9, scope: !5068)
!5155 = !DILocation(line: 775, column: 2, scope: !5068)
!5156 = !DILocation(line: 776, column: 1, scope: !5068)
!5157 = distinct !DISubprogram(name: "nla_len", scope: !12, file: !12, line: 1192, type: !5039, scopeLine: 1193, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5158)
!5158 = !{!5159}
!5159 = !DILocalVariable(name: "nla", arg: 1, scope: !5157, file: !12, line: 1192, type: !4251)
!5160 = !DILocation(line: 1192, column: 48, scope: !5157)
!5161 = !DILocation(line: 1194, column: 9, scope: !5157)
!5162 = !DILocation(line: 1194, column: 14, scope: !5157)
!5163 = !DILocation(line: 1194, column: 22, scope: !5157)
!5164 = !DILocation(line: 1194, column: 2, scope: !5157)
!5165 = distinct !DISubprogram(name: "nla_data", scope: !12, file: !12, line: 1183, type: !5166, scopeLine: 1184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5168)
!5166 = !DISubroutineType(types: !5167)
!5167 = !{!176, !4251}
!5168 = !{!5169}
!5169 = !DILocalVariable(name: "nla", arg: 1, scope: !5165, file: !12, line: 1183, type: !4251)
!5170 = !DILocation(line: 1183, column: 51, scope: !5165)
!5171 = !DILocation(line: 1185, column: 18, scope: !5165)
!5172 = !DILocation(line: 1185, column: 22, scope: !5165)
!5173 = !DILocation(line: 1185, column: 2, scope: !5165)
!5174 = distinct !DISubprogram(name: "nla_strdup", scope: !2, file: !2, line: 786, type: !5175, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5177)
!5175 = !DISubroutineType(types: !5176)
!5176 = !{!815, !4251, !1169}
!5177 = !{!5178, !5179, !5180, !5181, !5182}
!5178 = !DILocalVariable(name: "nla", arg: 1, scope: !5174, file: !2, line: 786, type: !4251)
!5179 = !DILocalVariable(name: "flags", arg: 2, scope: !5174, file: !2, line: 786, type: !1169)
!5180 = !DILocalVariable(name: "srclen", scope: !5174, file: !2, line: 788, type: !1117)
!5181 = !DILocalVariable(name: "src", scope: !5174, file: !2, line: 789, type: !815)
!5182 = !DILocalVariable(name: "dst", scope: !5174, file: !2, line: 789, type: !815)
!5183 = !DILocation(line: 786, column: 39, scope: !5174)
!5184 = !DILocation(line: 786, column: 50, scope: !5174)
!5185 = !DILocation(line: 788, column: 2, scope: !5174)
!5186 = !DILocation(line: 788, column: 9, scope: !5174)
!5187 = !DILocation(line: 788, column: 26, scope: !5174)
!5188 = !DILocation(line: 788, column: 18, scope: !5174)
!5189 = !DILocation(line: 789, column: 2, scope: !5174)
!5190 = !DILocation(line: 789, column: 8, scope: !5174)
!5191 = !DILocation(line: 789, column: 23, scope: !5174)
!5192 = !DILocation(line: 789, column: 14, scope: !5174)
!5193 = !DILocation(line: 789, column: 30, scope: !5174)
!5194 = !DILocation(line: 791, column: 6, scope: !5195)
!5195 = distinct !DILexicalBlock(scope: !5174, file: !2, line: 791, column: 6)
!5196 = !DILocation(line: 791, column: 13, scope: !5195)
!5197 = !DILocation(line: 791, column: 17, scope: !5195)
!5198 = !DILocation(line: 791, column: 20, scope: !5195)
!5199 = !DILocation(line: 791, column: 24, scope: !5195)
!5200 = !DILocation(line: 791, column: 31, scope: !5195)
!5201 = !DILocation(line: 791, column: 36, scope: !5195)
!5202 = !DILocation(line: 791, column: 6, scope: !5174)
!5203 = !DILocation(line: 792, column: 9, scope: !5195)
!5204 = !DILocation(line: 792, column: 3, scope: !5195)
!5205 = !DILocation(line: 794, column: 16, scope: !5174)
!5206 = !DILocation(line: 794, column: 23, scope: !5174)
!5207 = !DILocation(line: 794, column: 28, scope: !5174)
!5208 = !DILocation(line: 794, column: 8, scope: !5174)
!5209 = !DILocation(line: 794, column: 6, scope: !5174)
!5210 = !DILocation(line: 795, column: 6, scope: !5211)
!5211 = distinct !DILexicalBlock(scope: !5174, file: !2, line: 795, column: 6)
!5212 = !DILocation(line: 795, column: 10, scope: !5211)
!5213 = !DILocation(line: 795, column: 6, scope: !5174)
!5214 = !DILocation(line: 796, column: 10, scope: !5215)
!5215 = distinct !DILexicalBlock(scope: !5211, file: !2, line: 795, column: 19)
!5216 = !DILocation(line: 796, column: 15, scope: !5215)
!5217 = !DILocation(line: 796, column: 20, scope: !5215)
!5218 = !DILocation(line: 796, column: 3, scope: !5215)
!5219 = !DILocation(line: 797, column: 3, scope: !5215)
!5220 = !DILocation(line: 797, column: 7, scope: !5215)
!5221 = !DILocation(line: 797, column: 15, scope: !5215)
!5222 = !DILocation(line: 798, column: 2, scope: !5215)
!5223 = !DILocation(line: 799, column: 9, scope: !5174)
!5224 = !DILocation(line: 800, column: 1, scope: !5174)
!5225 = !DILocation(line: 799, column: 2, scope: !5174)
!5226 = distinct !DISubprogram(name: "kmalloc", scope: !141, file: !141, line: 591, type: !5227, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5229)
!5227 = !DISubroutineType(types: !5228)
!5228 = !{!176, !1117, !1169}
!5229 = !{!5230, !5231, !5232}
!5230 = !DILocalVariable(name: "size", arg: 1, scope: !5226, file: !141, line: 591, type: !1117)
!5231 = !DILocalVariable(name: "flags", arg: 2, scope: !5226, file: !141, line: 591, type: !1169)
!5232 = !DILocalVariable(name: "index", scope: !5233, file: !141, line: 594, type: !13)
!5233 = distinct !DILexicalBlock(scope: !5234, file: !141, line: 593, column: 42)
!5234 = distinct !DILexicalBlock(scope: !5226, file: !141, line: 593, column: 6)
!5235 = !DILocation(line: 591, column: 61, scope: !5226)
!5236 = !DILocation(line: 591, column: 73, scope: !5226)
!5237 = !DILocation(line: 593, column: 27, scope: !5234)
!5238 = !DILocation(line: 593, column: 6, scope: !5234)
!5239 = !DILocation(line: 593, column: 33, scope: !5234)
!5240 = !DILocation(line: 593, column: 36, scope: !5234)
!5241 = !DILocation(line: 593, column: 6, scope: !5226)
!5242 = !DILocation(line: 594, column: 3, scope: !5233)
!5243 = !DILocation(line: 594, column: 16, scope: !5233)
!5244 = !DILocation(line: 596, column: 7, scope: !5245)
!5245 = distinct !DILexicalBlock(scope: !5233, file: !141, line: 596, column: 7)
!5246 = !DILocation(line: 596, column: 12, scope: !5245)
!5247 = !DILocation(line: 596, column: 7, scope: !5233)
!5248 = !DILocation(line: 597, column: 25, scope: !5245)
!5249 = !DILocation(line: 597, column: 31, scope: !5245)
!5250 = !DILocation(line: 597, column: 11, scope: !5245)
!5251 = !DILocation(line: 597, column: 4, scope: !5245)
!5252 = !DILocation(line: 599, column: 11, scope: !5233)
!5253 = !DILocation(line: 599, column: 9, scope: !5233)
!5254 = !DILocation(line: 601, column: 33, scope: !5233)
!5255 = !DILocation(line: 601, column: 40, scope: !5233)
!5256 = !DILocation(line: 601, column: 20, scope: !5233)
!5257 = !DILocation(line: 601, column: 5, scope: !5233)
!5258 = !DILocation(line: 601, column: 51, scope: !5233)
!5259 = !DILocation(line: 602, column: 5, scope: !5233)
!5260 = !DILocation(line: 602, column: 12, scope: !5233)
!5261 = !DILocation(line: 600, column: 10, scope: !5233)
!5262 = !DILocation(line: 600, column: 3, scope: !5233)
!5263 = !DILocation(line: 603, column: 2, scope: !5234)
!5264 = !DILocation(line: 604, column: 19, scope: !5226)
!5265 = !DILocation(line: 604, column: 25, scope: !5226)
!5266 = !DILocation(line: 604, column: 9, scope: !5226)
!5267 = !DILocation(line: 604, column: 2, scope: !5226)
!5268 = !DILocation(line: 605, column: 1, scope: !5226)
!5269 = distinct !DISubprogram(name: "nla_memcpy", scope: !2, file: !2, line: 814, type: !5270, scopeLine: 815, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5272)
!5270 = !DISubroutineType(types: !5271)
!5271 = !{!172, !176, !4251, !172}
!5272 = !{!5273, !5274, !5275, !5276, !5277, !5279}
!5273 = !DILocalVariable(name: "dest", arg: 1, scope: !5269, file: !2, line: 814, type: !176)
!5274 = !DILocalVariable(name: "src", arg: 2, scope: !5269, file: !2, line: 814, type: !4251)
!5275 = !DILocalVariable(name: "count", arg: 3, scope: !5269, file: !2, line: 814, type: !172)
!5276 = !DILocalVariable(name: "minlen", scope: !5269, file: !2, line: 816, type: !172)
!5277 = !DILocalVariable(name: "__UNIQUE_ID___x350", scope: !5278, file: !2, line: 816, type: !172)
!5278 = distinct !DILexicalBlock(scope: !5269, file: !2, line: 816, column: 15)
!5279 = !DILocalVariable(name: "__UNIQUE_ID___y351", scope: !5278, file: !2, line: 816, type: !172)
!5280 = !DILocation(line: 814, column: 22, scope: !5269)
!5281 = !DILocation(line: 814, column: 49, scope: !5269)
!5282 = !DILocation(line: 814, column: 58, scope: !5269)
!5283 = !DILocation(line: 816, column: 2, scope: !5269)
!5284 = !DILocation(line: 816, column: 6, scope: !5269)
!5285 = !DILocation(line: 816, column: 15, scope: !5278)
!5286 = !DILocation(line: 816, column: 15, scope: !5269)
!5287 = !DILocation(line: 818, column: 9, scope: !5269)
!5288 = !DILocation(line: 818, column: 24, scope: !5269)
!5289 = !DILocation(line: 818, column: 15, scope: !5269)
!5290 = !DILocation(line: 818, column: 30, scope: !5269)
!5291 = !DILocation(line: 818, column: 2, scope: !5269)
!5292 = !DILocation(line: 819, column: 6, scope: !5293)
!5293 = distinct !DILexicalBlock(scope: !5269, file: !2, line: 819, column: 6)
!5294 = !DILocation(line: 819, column: 14, scope: !5293)
!5295 = !DILocation(line: 819, column: 12, scope: !5293)
!5296 = !DILocation(line: 819, column: 6, scope: !5269)
!5297 = !DILocation(line: 820, column: 10, scope: !5293)
!5298 = !DILocation(line: 820, column: 17, scope: !5293)
!5299 = !DILocation(line: 820, column: 15, scope: !5293)
!5300 = !DILocation(line: 820, column: 28, scope: !5293)
!5301 = !DILocation(line: 820, column: 36, scope: !5293)
!5302 = !DILocation(line: 820, column: 34, scope: !5293)
!5303 = !DILocation(line: 820, column: 3, scope: !5293)
!5304 = !DILocation(line: 822, column: 9, scope: !5269)
!5305 = !DILocation(line: 823, column: 1, scope: !5269)
!5306 = !DILocation(line: 822, column: 2, scope: !5269)
!5307 = distinct !DISubprogram(name: "nla_memcmp", scope: !2, file: !2, line: 832, type: !5308, scopeLine: 834, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5310)
!5308 = !DISubroutineType(types: !5309)
!5309 = !{!172, !4251, !1914, !1117}
!5310 = !{!5311, !5312, !5313, !5314}
!5311 = !DILocalVariable(name: "nla", arg: 1, scope: !5307, file: !2, line: 832, type: !4251)
!5312 = !DILocalVariable(name: "data", arg: 2, scope: !5307, file: !2, line: 832, type: !1914)
!5313 = !DILocalVariable(name: "size", arg: 3, scope: !5307, file: !2, line: 833, type: !1117)
!5314 = !DILocalVariable(name: "d", scope: !5307, file: !2, line: 835, type: !172)
!5315 = !DILocation(line: 832, column: 37, scope: !5307)
!5316 = !DILocation(line: 832, column: 54, scope: !5307)
!5317 = !DILocation(line: 833, column: 16, scope: !5307)
!5318 = !DILocation(line: 835, column: 2, scope: !5307)
!5319 = !DILocation(line: 835, column: 6, scope: !5307)
!5320 = !DILocation(line: 835, column: 18, scope: !5307)
!5321 = !DILocation(line: 835, column: 10, scope: !5307)
!5322 = !DILocation(line: 835, column: 25, scope: !5307)
!5323 = !DILocation(line: 835, column: 23, scope: !5307)
!5324 = !DILocation(line: 837, column: 6, scope: !5325)
!5325 = distinct !DILexicalBlock(scope: !5307, file: !2, line: 837, column: 6)
!5326 = !DILocation(line: 837, column: 8, scope: !5325)
!5327 = !DILocation(line: 837, column: 6, scope: !5307)
!5328 = !DILocation(line: 838, column: 23, scope: !5325)
!5329 = !DILocation(line: 838, column: 14, scope: !5325)
!5330 = !DILocation(line: 838, column: 29, scope: !5325)
!5331 = !DILocation(line: 838, column: 35, scope: !5325)
!5332 = !DILocation(line: 838, column: 7, scope: !5325)
!5333 = !DILocation(line: 838, column: 5, scope: !5325)
!5334 = !DILocation(line: 838, column: 3, scope: !5325)
!5335 = !DILocation(line: 840, column: 9, scope: !5307)
!5336 = !DILocation(line: 841, column: 1, scope: !5307)
!5337 = !DILocation(line: 840, column: 2, scope: !5307)
!5338 = !DISubprogram(name: "memcmp", scope: !5339, file: !5339, line: 196, type: !5340, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5339 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!5340 = !DISubroutineType(types: !5341)
!5341 = !{!172, !1914, !1914, !1118}
!5342 = distinct !DISubprogram(name: "nla_strcmp", scope: !2, file: !2, line: 849, type: !5343, scopeLine: 850, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5345)
!5343 = !DISubroutineType(types: !5344)
!5344 = !{!172, !4251, !805}
!5345 = !{!5346, !5347, !5348, !5349, !5350, !5351}
!5346 = !DILocalVariable(name: "nla", arg: 1, scope: !5342, file: !2, line: 849, type: !4251)
!5347 = !DILocalVariable(name: "str", arg: 2, scope: !5342, file: !2, line: 849, type: !805)
!5348 = !DILocalVariable(name: "len", scope: !5342, file: !2, line: 851, type: !172)
!5349 = !DILocalVariable(name: "buf", scope: !5342, file: !2, line: 852, type: !815)
!5350 = !DILocalVariable(name: "attrlen", scope: !5342, file: !2, line: 853, type: !172)
!5351 = !DILocalVariable(name: "d", scope: !5342, file: !2, line: 854, type: !172)
!5352 = !DILocation(line: 849, column: 37, scope: !5342)
!5353 = !DILocation(line: 849, column: 54, scope: !5342)
!5354 = !DILocation(line: 851, column: 2, scope: !5342)
!5355 = !DILocation(line: 851, column: 6, scope: !5342)
!5356 = !DILocation(line: 851, column: 19, scope: !5342)
!5357 = !DILocation(line: 851, column: 12, scope: !5342)
!5358 = !DILocation(line: 852, column: 2, scope: !5342)
!5359 = !DILocation(line: 852, column: 8, scope: !5342)
!5360 = !DILocation(line: 852, column: 23, scope: !5342)
!5361 = !DILocation(line: 852, column: 14, scope: !5342)
!5362 = !DILocation(line: 853, column: 2, scope: !5342)
!5363 = !DILocation(line: 853, column: 6, scope: !5342)
!5364 = !DILocation(line: 853, column: 24, scope: !5342)
!5365 = !DILocation(line: 853, column: 16, scope: !5342)
!5366 = !DILocation(line: 854, column: 2, scope: !5342)
!5367 = !DILocation(line: 854, column: 6, scope: !5342)
!5368 = !DILocation(line: 856, column: 2, scope: !5342)
!5369 = !DILocation(line: 856, column: 9, scope: !5342)
!5370 = !DILocation(line: 856, column: 17, scope: !5342)
!5371 = !DILocation(line: 856, column: 21, scope: !5342)
!5372 = !DILocation(line: 856, column: 24, scope: !5342)
!5373 = !DILocation(line: 856, column: 28, scope: !5342)
!5374 = !DILocation(line: 856, column: 36, scope: !5342)
!5375 = !DILocation(line: 856, column: 41, scope: !5342)
!5376 = !DILocation(line: 0, scope: !5342)
!5377 = !DILocation(line: 857, column: 10, scope: !5342)
!5378 = distinct !{!5378, !5368, !5377, !4866, !4867}
!5379 = !DILocation(line: 859, column: 6, scope: !5342)
!5380 = !DILocation(line: 859, column: 16, scope: !5342)
!5381 = !DILocation(line: 859, column: 14, scope: !5342)
!5382 = !DILocation(line: 859, column: 4, scope: !5342)
!5383 = !DILocation(line: 860, column: 6, scope: !5384)
!5384 = distinct !DILexicalBlock(scope: !5342, file: !2, line: 860, column: 6)
!5385 = !DILocation(line: 860, column: 8, scope: !5384)
!5386 = !DILocation(line: 860, column: 6, scope: !5342)
!5387 = !DILocation(line: 861, column: 23, scope: !5384)
!5388 = !DILocation(line: 861, column: 14, scope: !5384)
!5389 = !DILocation(line: 861, column: 29, scope: !5384)
!5390 = !DILocation(line: 861, column: 34, scope: !5384)
!5391 = !DILocation(line: 861, column: 7, scope: !5384)
!5392 = !DILocation(line: 861, column: 5, scope: !5384)
!5393 = !DILocation(line: 861, column: 3, scope: !5384)
!5394 = !DILocation(line: 863, column: 9, scope: !5342)
!5395 = !DILocation(line: 864, column: 1, scope: !5342)
!5396 = !DILocation(line: 863, column: 2, scope: !5342)
!5397 = !DISubprogram(name: "strlen", scope: !5339, file: !5339, line: 128, type: !5398, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5398 = !DISubroutineType(types: !5399)
!5399 = !{!205, !805}
!5400 = distinct !DISubprogram(name: "__nla_reserve", scope: !2, file: !2, line: 880, type: !5401, scopeLine: 881, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5636)
!5401 = !DISubroutineType(types: !5402)
!5402 = !{!177, !5403, !172, !172}
!5403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5404, size: 64)
!5404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sk_buff", file: !5405, line: 840, size: 1792, elements: !5406)
!5405 = !DIFile(filename: "./include/linux/skbuff.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f57efcd2f012c07abad2ca113941da8")
!5406 = !{!5407, !5426, !5427, !5432, !5436, !5448, !5449, !5450, !5451, !5452, !5453, !5454, !5458, !5459, !5460, !5461, !5462, !5463, !5464, !5465, !5466, !5620, !5622, !5623, !5624, !5625, !5626, !5627}
!5407 = !DIDerivedType(tag: DW_TAG_member, scope: !5404, file: !5405, line: 841, baseType: !5408, size: 192)
!5408 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5404, file: !5405, line: 841, size: 192, elements: !5409)
!5409 = !{!5410, !5423, !5424, !5425}
!5410 = !DIDerivedType(tag: DW_TAG_member, scope: !5408, file: !5405, line: 842, baseType: !5411, size: 192)
!5411 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5408, file: !5405, line: 842, size: 192, elements: !5412)
!5412 = !{!5413, !5414, !5415}
!5413 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5411, file: !5405, line: 844, baseType: !5403, size: 64)
!5414 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !5411, file: !5405, line: 845, baseType: !5403, size: 64, offset: 64)
!5415 = !DIDerivedType(tag: DW_TAG_member, scope: !5411, file: !5405, line: 847, baseType: !5416, size: 64, offset: 128)
!5416 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5411, file: !5405, line: 847, size: 64, elements: !5417)
!5417 = !{!5418, !5422}
!5418 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5416, file: !5405, line: 848, baseType: !5419, size: 64)
!5419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5420, size: 64)
!5420 = !DICompositeType(tag: DW_TAG_structure_type, name: "net_device", file: !5421, line: 8, flags: DIFlagFwdDecl)
!5421 = !DIFile(filename: "./include/net/net_debug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10537443a3d7adb6b4f1d70426f581da")
!5422 = !DIDerivedType(tag: DW_TAG_member, name: "dev_scratch", scope: !5416, file: !5405, line: 853, baseType: !205, size: 64)
!5423 = !DIDerivedType(tag: DW_TAG_member, name: "rbnode", scope: !5408, file: !5405, line: 856, baseType: !261, size: 192, align: 64)
!5424 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5408, file: !5405, line: 857, baseType: !271, size: 128)
!5425 = !DIDerivedType(tag: DW_TAG_member, name: "ll_node", scope: !5408, file: !5405, line: 858, baseType: !230, size: 64)
!5426 = !DIDerivedType(tag: DW_TAG_member, name: "sk", scope: !5404, file: !5405, line: 861, baseType: !1916, size: 64, offset: 192)
!5427 = !DIDerivedType(tag: DW_TAG_member, scope: !5404, file: !5405, line: 863, baseType: !5428, size: 64, offset: 256)
!5428 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5404, file: !5405, line: 863, size: 64, elements: !5429)
!5429 = !{!5430, !5431}
!5430 = !DIDerivedType(tag: DW_TAG_member, name: "tstamp", scope: !5428, file: !5405, line: 864, baseType: !344, size: 64)
!5431 = !DIDerivedType(tag: DW_TAG_member, name: "skb_mstamp_ns", scope: !5428, file: !5405, line: 865, baseType: !161, size: 64)
!5432 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !5404, file: !5405, line: 873, baseType: !5433, size: 384, align: 64, offset: 320)
!5433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !5434)
!5434 = !{!5435}
!5435 = !DISubrange(count: 48)
!5436 = !DIDerivedType(tag: DW_TAG_member, scope: !5404, file: !5405, line: 875, baseType: !5437, size: 128, offset: 704)
!5437 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5404, file: !5405, line: 875, size: 128, elements: !5438)
!5438 = !{!5439, !5447}
!5439 = !DIDerivedType(tag: DW_TAG_member, scope: !5437, file: !5405, line: 876, baseType: !5440, size: 128)
!5440 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5437, file: !5405, line: 876, size: 128, elements: !5441)
!5441 = !{!5442, !5443}
!5442 = !DIDerivedType(tag: DW_TAG_member, name: "_skb_refdst", scope: !5440, file: !5405, line: 877, baseType: !205, size: 64)
!5443 = !DIDerivedType(tag: DW_TAG_member, name: "destructor", scope: !5440, file: !5405, line: 878, baseType: !5444, size: 64, offset: 64)
!5444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5445, size: 64)
!5445 = !DISubroutineType(types: !5446)
!5446 = !{null, !5403}
!5447 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_tsorted_anchor", scope: !5437, file: !5405, line: 880, baseType: !271, size: 128)
!5448 = !DIDerivedType(tag: DW_TAG_member, name: "_nfct", scope: !5404, file: !5405, line: 887, baseType: !205, size: 64, offset: 832)
!5449 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5404, file: !5405, line: 889, baseType: !13, size: 32, offset: 896)
!5450 = !DIDerivedType(tag: DW_TAG_member, name: "data_len", scope: !5404, file: !5405, line: 890, baseType: !13, size: 32, offset: 928)
!5451 = !DIDerivedType(tag: DW_TAG_member, name: "mac_len", scope: !5404, file: !5405, line: 891, baseType: !157, size: 16, offset: 960)
!5452 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_len", scope: !5404, file: !5405, line: 892, baseType: !157, size: 16, offset: 976)
!5453 = !DIDerivedType(tag: DW_TAG_member, name: "queue_mapping", scope: !5404, file: !5405, line: 897, baseType: !157, size: 16, offset: 992)
!5454 = !DIDerivedType(tag: DW_TAG_member, name: "__cloned_offset", scope: !5404, file: !5405, line: 908, baseType: !5455, offset: 1008)
!5455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, elements: !5456)
!5456 = !{!5457}
!5457 = !DISubrange(count: 0)
!5458 = !DIDerivedType(tag: DW_TAG_member, name: "cloned", scope: !5404, file: !5405, line: 910, baseType: !153, size: 1, offset: 1008, flags: DIFlagBitField, extraData: i64 1008)
!5459 = !DIDerivedType(tag: DW_TAG_member, name: "nohdr", scope: !5404, file: !5405, line: 911, baseType: !153, size: 1, offset: 1009, flags: DIFlagBitField, extraData: i64 1008)
!5460 = !DIDerivedType(tag: DW_TAG_member, name: "fclone", scope: !5404, file: !5405, line: 912, baseType: !153, size: 2, offset: 1010, flags: DIFlagBitField, extraData: i64 1008)
!5461 = !DIDerivedType(tag: DW_TAG_member, name: "peeked", scope: !5404, file: !5405, line: 913, baseType: !153, size: 1, offset: 1012, flags: DIFlagBitField, extraData: i64 1008)
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "head_frag", scope: !5404, file: !5405, line: 914, baseType: !153, size: 1, offset: 1013, flags: DIFlagBitField, extraData: i64 1008)
!5463 = !DIDerivedType(tag: DW_TAG_member, name: "pfmemalloc", scope: !5404, file: !5405, line: 915, baseType: !153, size: 1, offset: 1014, flags: DIFlagBitField, extraData: i64 1008)
!5464 = !DIDerivedType(tag: DW_TAG_member, name: "pp_recycle", scope: !5404, file: !5405, line: 916, baseType: !153, size: 1, offset: 1015, flags: DIFlagBitField, extraData: i64 1008)
!5465 = !DIDerivedType(tag: DW_TAG_member, name: "active_extensions", scope: !5404, file: !5405, line: 918, baseType: !153, size: 8, offset: 1016)
!5466 = !DIDerivedType(tag: DW_TAG_member, scope: !5404, file: !5405, line: 924, baseType: !5467, size: 448, offset: 1024)
!5467 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5404, file: !5405, line: 924, size: 448, elements: !5468)
!5468 = !{!5469, !5545}
!5469 = !DIDerivedType(tag: DW_TAG_member, scope: !5467, file: !5405, line: 924, baseType: !5470, size: 448)
!5470 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5467, file: !5405, line: 924, size: 448, elements: !5471)
!5471 = !{!5472, !5473, !5474, !5475, !5476, !5477, !5478, !5479, !5480, !5481, !5482, !5483, !5484, !5485, !5486, !5487, !5488, !5489, !5490, !5491, !5492, !5493, !5494, !5495, !5496, !5497, !5498, !5499, !5500, !5510, !5511, !5512, !5513, !5522, !5527, !5528, !5533, !5538, !5539, !5540, !5541, !5542, !5543, !5544}
!5472 = !DIDerivedType(tag: DW_TAG_member, name: "__pkt_type_offset", scope: !5470, file: !5405, line: 924, baseType: !5455)
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "pkt_type", scope: !5470, file: !5405, line: 924, baseType: !153, size: 3, flags: DIFlagBitField, extraData: i64 0)
!5474 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_df", scope: !5470, file: !5405, line: 924, baseType: !153, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!5475 = !DIDerivedType(tag: DW_TAG_member, name: "dst_pending_confirm", scope: !5470, file: !5405, line: 924, baseType: !153, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!5476 = !DIDerivedType(tag: DW_TAG_member, name: "ip_summed", scope: !5470, file: !5405, line: 924, baseType: !153, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!5477 = !DIDerivedType(tag: DW_TAG_member, name: "ooo_okay", scope: !5470, file: !5405, line: 924, baseType: !153, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!5478 = !DIDerivedType(tag: DW_TAG_member, name: "__mono_tc_offset", scope: !5470, file: !5405, line: 924, baseType: !5455, offset: 8)
!5479 = !DIDerivedType(tag: DW_TAG_member, name: "mono_delivery_time", scope: !5470, file: !5405, line: 924, baseType: !153, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 8)
!5480 = !DIDerivedType(tag: DW_TAG_member, name: "tc_at_ingress", scope: !5470, file: !5405, line: 924, baseType: !153, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 8)
!5481 = !DIDerivedType(tag: DW_TAG_member, name: "tc_skip_classify", scope: !5470, file: !5405, line: 924, baseType: !153, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 8)
!5482 = !DIDerivedType(tag: DW_TAG_member, name: "remcsum_offload", scope: !5470, file: !5405, line: 924, baseType: !153, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 8)
!5483 = !DIDerivedType(tag: DW_TAG_member, name: "csum_complete_sw", scope: !5470, file: !5405, line: 924, baseType: !153, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 8)
!5484 = !DIDerivedType(tag: DW_TAG_member, name: "csum_level", scope: !5470, file: !5405, line: 924, baseType: !153, size: 2, offset: 13, flags: DIFlagBitField, extraData: i64 8)
!5485 = !DIDerivedType(tag: DW_TAG_member, name: "inner_protocol_type", scope: !5470, file: !5405, line: 924, baseType: !153, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 8)
!5486 = !DIDerivedType(tag: DW_TAG_member, name: "l4_hash", scope: !5470, file: !5405, line: 924, baseType: !153, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 8)
!5487 = !DIDerivedType(tag: DW_TAG_member, name: "sw_hash", scope: !5470, file: !5405, line: 924, baseType: !153, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 8)
!5488 = !DIDerivedType(tag: DW_TAG_member, name: "wifi_acked_valid", scope: !5470, file: !5405, line: 924, baseType: !153, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 8)
!5489 = !DIDerivedType(tag: DW_TAG_member, name: "wifi_acked", scope: !5470, file: !5405, line: 924, baseType: !153, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 8)
!5490 = !DIDerivedType(tag: DW_TAG_member, name: "no_fcs", scope: !5470, file: !5405, line: 924, baseType: !153, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 8)
!5491 = !DIDerivedType(tag: DW_TAG_member, name: "encapsulation", scope: !5470, file: !5405, line: 924, baseType: !153, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 8)
!5492 = !DIDerivedType(tag: DW_TAG_member, name: "encap_hdr_csum", scope: !5470, file: !5405, line: 924, baseType: !153, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 8)
!5493 = !DIDerivedType(tag: DW_TAG_member, name: "csum_valid", scope: !5470, file: !5405, line: 924, baseType: !153, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 8)
!5494 = !DIDerivedType(tag: DW_TAG_member, name: "ndisc_nodetype", scope: !5470, file: !5405, line: 924, baseType: !153, size: 2, offset: 24, flags: DIFlagBitField, extraData: i64 8)
!5495 = !DIDerivedType(tag: DW_TAG_member, name: "redirected", scope: !5470, file: !5405, line: 924, baseType: !153, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 8)
!5496 = !DIDerivedType(tag: DW_TAG_member, name: "nf_skip_egress", scope: !5470, file: !5405, line: 924, baseType: !153, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 8)
!5497 = !DIDerivedType(tag: DW_TAG_member, name: "slow_gro", scope: !5470, file: !5405, line: 924, baseType: !153, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 8)
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "tc_index", scope: !5470, file: !5405, line: 924, baseType: !157, size: 16, offset: 32)
!5499 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_cpu", scope: !5470, file: !5405, line: 924, baseType: !156, size: 16, offset: 48)
!5500 = !DIDerivedType(tag: DW_TAG_member, scope: !5470, file: !5405, line: 924, baseType: !5501, size: 32, offset: 64)
!5501 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5470, file: !5405, line: 924, size: 32, elements: !5502)
!5502 = !{!5503, !5505}
!5503 = !DIDerivedType(tag: DW_TAG_member, name: "csum", scope: !5501, file: !5405, line: 924, baseType: !5504, size: 32)
!5504 = !DIDerivedType(tag: DW_TAG_typedef, name: "__wsum", file: !185, line: 44, baseType: !160)
!5505 = !DIDerivedType(tag: DW_TAG_member, scope: !5501, file: !5405, line: 924, baseType: !5506, size: 32)
!5506 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5501, file: !5405, line: 924, size: 32, elements: !5507)
!5507 = !{!5508, !5509}
!5508 = !DIDerivedType(tag: DW_TAG_member, name: "csum_start", scope: !5506, file: !5405, line: 924, baseType: !157, size: 16)
!5509 = !DIDerivedType(tag: DW_TAG_member, name: "csum_offset", scope: !5506, file: !5405, line: 924, baseType: !157, size: 16, offset: 16)
!5510 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !5470, file: !5405, line: 924, baseType: !160, size: 32, offset: 96)
!5511 = !DIDerivedType(tag: DW_TAG_member, name: "skb_iif", scope: !5470, file: !5405, line: 924, baseType: !172, size: 32, offset: 128)
!5512 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !5470, file: !5405, line: 924, baseType: !160, size: 32, offset: 160)
!5513 = !DIDerivedType(tag: DW_TAG_member, scope: !5470, file: !5405, line: 924, baseType: !5514, size: 32, offset: 192)
!5514 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5470, file: !5405, line: 924, size: 32, elements: !5515)
!5515 = !{!5516, !5517}
!5516 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_all", scope: !5514, file: !5405, line: 924, baseType: !159, size: 32)
!5517 = !DIDerivedType(tag: DW_TAG_member, scope: !5514, file: !5405, line: 924, baseType: !5518, size: 32)
!5518 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5514, file: !5405, line: 924, size: 32, elements: !5519)
!5519 = !{!5520, !5521}
!5520 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_proto", scope: !5518, file: !5405, line: 924, baseType: !184, size: 16)
!5521 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_tci", scope: !5518, file: !5405, line: 924, baseType: !157, size: 16, offset: 16)
!5522 = !DIDerivedType(tag: DW_TAG_member, scope: !5470, file: !5405, line: 924, baseType: !5523, size: 32, offset: 224)
!5523 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5470, file: !5405, line: 924, size: 32, elements: !5524)
!5524 = !{!5525, !5526}
!5525 = !DIDerivedType(tag: DW_TAG_member, name: "napi_id", scope: !5523, file: !5405, line: 924, baseType: !13, size: 32)
!5526 = !DIDerivedType(tag: DW_TAG_member, name: "sender_cpu", scope: !5523, file: !5405, line: 924, baseType: !13, size: 32)
!5527 = !DIDerivedType(tag: DW_TAG_member, name: "secmark", scope: !5470, file: !5405, line: 924, baseType: !160, size: 32, offset: 256)
!5528 = !DIDerivedType(tag: DW_TAG_member, scope: !5470, file: !5405, line: 924, baseType: !5529, size: 32, offset: 288)
!5529 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5470, file: !5405, line: 924, size: 32, elements: !5530)
!5530 = !{!5531, !5532}
!5531 = !DIDerivedType(tag: DW_TAG_member, name: "mark", scope: !5529, file: !5405, line: 924, baseType: !160, size: 32)
!5532 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_tailroom", scope: !5529, file: !5405, line: 924, baseType: !160, size: 32)
!5533 = !DIDerivedType(tag: DW_TAG_member, scope: !5470, file: !5405, line: 924, baseType: !5534, size: 16, offset: 320)
!5534 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5470, file: !5405, line: 924, size: 16, elements: !5535)
!5535 = !{!5536, !5537}
!5536 = !DIDerivedType(tag: DW_TAG_member, name: "inner_protocol", scope: !5534, file: !5405, line: 924, baseType: !184, size: 16)
!5537 = !DIDerivedType(tag: DW_TAG_member, name: "inner_ipproto", scope: !5534, file: !5405, line: 924, baseType: !153, size: 8)
!5538 = !DIDerivedType(tag: DW_TAG_member, name: "inner_transport_header", scope: !5470, file: !5405, line: 924, baseType: !157, size: 16, offset: 336)
!5539 = !DIDerivedType(tag: DW_TAG_member, name: "inner_network_header", scope: !5470, file: !5405, line: 924, baseType: !157, size: 16, offset: 352)
!5540 = !DIDerivedType(tag: DW_TAG_member, name: "inner_mac_header", scope: !5470, file: !5405, line: 924, baseType: !157, size: 16, offset: 368)
!5541 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !5470, file: !5405, line: 924, baseType: !184, size: 16, offset: 384)
!5542 = !DIDerivedType(tag: DW_TAG_member, name: "transport_header", scope: !5470, file: !5405, line: 924, baseType: !157, size: 16, offset: 400)
!5543 = !DIDerivedType(tag: DW_TAG_member, name: "network_header", scope: !5470, file: !5405, line: 924, baseType: !157, size: 16, offset: 416)
!5544 = !DIDerivedType(tag: DW_TAG_member, name: "mac_header", scope: !5470, file: !5405, line: 924, baseType: !157, size: 16, offset: 432)
!5545 = !DIDerivedType(tag: DW_TAG_member, name: "headers", scope: !5467, file: !5405, line: 924, baseType: !5546, size: 448)
!5546 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5467, file: !5405, line: 924, size: 448, elements: !5547)
!5547 = !{!5548, !5549, !5550, !5551, !5552, !5553, !5554, !5555, !5556, !5557, !5558, !5559, !5560, !5561, !5562, !5563, !5564, !5565, !5566, !5567, !5568, !5569, !5570, !5571, !5572, !5573, !5574, !5575, !5576, !5585, !5586, !5587, !5588, !5597, !5602, !5603, !5608, !5613, !5614, !5615, !5616, !5617, !5618, !5619}
!5548 = !DIDerivedType(tag: DW_TAG_member, name: "__pkt_type_offset", scope: !5546, file: !5405, line: 924, baseType: !5455)
!5549 = !DIDerivedType(tag: DW_TAG_member, name: "pkt_type", scope: !5546, file: !5405, line: 924, baseType: !153, size: 3, flags: DIFlagBitField, extraData: i64 0)
!5550 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_df", scope: !5546, file: !5405, line: 924, baseType: !153, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!5551 = !DIDerivedType(tag: DW_TAG_member, name: "dst_pending_confirm", scope: !5546, file: !5405, line: 924, baseType: !153, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!5552 = !DIDerivedType(tag: DW_TAG_member, name: "ip_summed", scope: !5546, file: !5405, line: 924, baseType: !153, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!5553 = !DIDerivedType(tag: DW_TAG_member, name: "ooo_okay", scope: !5546, file: !5405, line: 924, baseType: !153, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!5554 = !DIDerivedType(tag: DW_TAG_member, name: "__mono_tc_offset", scope: !5546, file: !5405, line: 924, baseType: !5455, offset: 8)
!5555 = !DIDerivedType(tag: DW_TAG_member, name: "mono_delivery_time", scope: !5546, file: !5405, line: 924, baseType: !153, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 8)
!5556 = !DIDerivedType(tag: DW_TAG_member, name: "tc_at_ingress", scope: !5546, file: !5405, line: 924, baseType: !153, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 8)
!5557 = !DIDerivedType(tag: DW_TAG_member, name: "tc_skip_classify", scope: !5546, file: !5405, line: 924, baseType: !153, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 8)
!5558 = !DIDerivedType(tag: DW_TAG_member, name: "remcsum_offload", scope: !5546, file: !5405, line: 924, baseType: !153, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 8)
!5559 = !DIDerivedType(tag: DW_TAG_member, name: "csum_complete_sw", scope: !5546, file: !5405, line: 924, baseType: !153, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 8)
!5560 = !DIDerivedType(tag: DW_TAG_member, name: "csum_level", scope: !5546, file: !5405, line: 924, baseType: !153, size: 2, offset: 13, flags: DIFlagBitField, extraData: i64 8)
!5561 = !DIDerivedType(tag: DW_TAG_member, name: "inner_protocol_type", scope: !5546, file: !5405, line: 924, baseType: !153, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 8)
!5562 = !DIDerivedType(tag: DW_TAG_member, name: "l4_hash", scope: !5546, file: !5405, line: 924, baseType: !153, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 8)
!5563 = !DIDerivedType(tag: DW_TAG_member, name: "sw_hash", scope: !5546, file: !5405, line: 924, baseType: !153, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 8)
!5564 = !DIDerivedType(tag: DW_TAG_member, name: "wifi_acked_valid", scope: !5546, file: !5405, line: 924, baseType: !153, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 8)
!5565 = !DIDerivedType(tag: DW_TAG_member, name: "wifi_acked", scope: !5546, file: !5405, line: 924, baseType: !153, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 8)
!5566 = !DIDerivedType(tag: DW_TAG_member, name: "no_fcs", scope: !5546, file: !5405, line: 924, baseType: !153, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 8)
!5567 = !DIDerivedType(tag: DW_TAG_member, name: "encapsulation", scope: !5546, file: !5405, line: 924, baseType: !153, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 8)
!5568 = !DIDerivedType(tag: DW_TAG_member, name: "encap_hdr_csum", scope: !5546, file: !5405, line: 924, baseType: !153, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 8)
!5569 = !DIDerivedType(tag: DW_TAG_member, name: "csum_valid", scope: !5546, file: !5405, line: 924, baseType: !153, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 8)
!5570 = !DIDerivedType(tag: DW_TAG_member, name: "ndisc_nodetype", scope: !5546, file: !5405, line: 924, baseType: !153, size: 2, offset: 24, flags: DIFlagBitField, extraData: i64 8)
!5571 = !DIDerivedType(tag: DW_TAG_member, name: "redirected", scope: !5546, file: !5405, line: 924, baseType: !153, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 8)
!5572 = !DIDerivedType(tag: DW_TAG_member, name: "nf_skip_egress", scope: !5546, file: !5405, line: 924, baseType: !153, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 8)
!5573 = !DIDerivedType(tag: DW_TAG_member, name: "slow_gro", scope: !5546, file: !5405, line: 924, baseType: !153, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 8)
!5574 = !DIDerivedType(tag: DW_TAG_member, name: "tc_index", scope: !5546, file: !5405, line: 924, baseType: !157, size: 16, offset: 32)
!5575 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_cpu", scope: !5546, file: !5405, line: 924, baseType: !156, size: 16, offset: 48)
!5576 = !DIDerivedType(tag: DW_TAG_member, scope: !5546, file: !5405, line: 924, baseType: !5577, size: 32, offset: 64)
!5577 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5546, file: !5405, line: 924, size: 32, elements: !5578)
!5578 = !{!5579, !5580}
!5579 = !DIDerivedType(tag: DW_TAG_member, name: "csum", scope: !5577, file: !5405, line: 924, baseType: !5504, size: 32)
!5580 = !DIDerivedType(tag: DW_TAG_member, scope: !5577, file: !5405, line: 924, baseType: !5581, size: 32)
!5581 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5577, file: !5405, line: 924, size: 32, elements: !5582)
!5582 = !{!5583, !5584}
!5583 = !DIDerivedType(tag: DW_TAG_member, name: "csum_start", scope: !5581, file: !5405, line: 924, baseType: !157, size: 16)
!5584 = !DIDerivedType(tag: DW_TAG_member, name: "csum_offset", scope: !5581, file: !5405, line: 924, baseType: !157, size: 16, offset: 16)
!5585 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !5546, file: !5405, line: 924, baseType: !160, size: 32, offset: 96)
!5586 = !DIDerivedType(tag: DW_TAG_member, name: "skb_iif", scope: !5546, file: !5405, line: 924, baseType: !172, size: 32, offset: 128)
!5587 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !5546, file: !5405, line: 924, baseType: !160, size: 32, offset: 160)
!5588 = !DIDerivedType(tag: DW_TAG_member, scope: !5546, file: !5405, line: 924, baseType: !5589, size: 32, offset: 192)
!5589 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5546, file: !5405, line: 924, size: 32, elements: !5590)
!5590 = !{!5591, !5592}
!5591 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_all", scope: !5589, file: !5405, line: 924, baseType: !159, size: 32)
!5592 = !DIDerivedType(tag: DW_TAG_member, scope: !5589, file: !5405, line: 924, baseType: !5593, size: 32)
!5593 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5589, file: !5405, line: 924, size: 32, elements: !5594)
!5594 = !{!5595, !5596}
!5595 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_proto", scope: !5593, file: !5405, line: 924, baseType: !184, size: 16)
!5596 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_tci", scope: !5593, file: !5405, line: 924, baseType: !157, size: 16, offset: 16)
!5597 = !DIDerivedType(tag: DW_TAG_member, scope: !5546, file: !5405, line: 924, baseType: !5598, size: 32, offset: 224)
!5598 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5546, file: !5405, line: 924, size: 32, elements: !5599)
!5599 = !{!5600, !5601}
!5600 = !DIDerivedType(tag: DW_TAG_member, name: "napi_id", scope: !5598, file: !5405, line: 924, baseType: !13, size: 32)
!5601 = !DIDerivedType(tag: DW_TAG_member, name: "sender_cpu", scope: !5598, file: !5405, line: 924, baseType: !13, size: 32)
!5602 = !DIDerivedType(tag: DW_TAG_member, name: "secmark", scope: !5546, file: !5405, line: 924, baseType: !160, size: 32, offset: 256)
!5603 = !DIDerivedType(tag: DW_TAG_member, scope: !5546, file: !5405, line: 924, baseType: !5604, size: 32, offset: 288)
!5604 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5546, file: !5405, line: 924, size: 32, elements: !5605)
!5605 = !{!5606, !5607}
!5606 = !DIDerivedType(tag: DW_TAG_member, name: "mark", scope: !5604, file: !5405, line: 924, baseType: !160, size: 32)
!5607 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_tailroom", scope: !5604, file: !5405, line: 924, baseType: !160, size: 32)
!5608 = !DIDerivedType(tag: DW_TAG_member, scope: !5546, file: !5405, line: 924, baseType: !5609, size: 16, offset: 320)
!5609 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5546, file: !5405, line: 924, size: 16, elements: !5610)
!5610 = !{!5611, !5612}
!5611 = !DIDerivedType(tag: DW_TAG_member, name: "inner_protocol", scope: !5609, file: !5405, line: 924, baseType: !184, size: 16)
!5612 = !DIDerivedType(tag: DW_TAG_member, name: "inner_ipproto", scope: !5609, file: !5405, line: 924, baseType: !153, size: 8)
!5613 = !DIDerivedType(tag: DW_TAG_member, name: "inner_transport_header", scope: !5546, file: !5405, line: 924, baseType: !157, size: 16, offset: 336)
!5614 = !DIDerivedType(tag: DW_TAG_member, name: "inner_network_header", scope: !5546, file: !5405, line: 924, baseType: !157, size: 16, offset: 352)
!5615 = !DIDerivedType(tag: DW_TAG_member, name: "inner_mac_header", scope: !5546, file: !5405, line: 924, baseType: !157, size: 16, offset: 368)
!5616 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !5546, file: !5405, line: 924, baseType: !184, size: 16, offset: 384)
!5617 = !DIDerivedType(tag: DW_TAG_member, name: "transport_header", scope: !5546, file: !5405, line: 924, baseType: !157, size: 16, offset: 400)
!5618 = !DIDerivedType(tag: DW_TAG_member, name: "network_header", scope: !5546, file: !5405, line: 924, baseType: !157, size: 16, offset: 416)
!5619 = !DIDerivedType(tag: DW_TAG_member, name: "mac_header", scope: !5546, file: !5405, line: 924, baseType: !157, size: 16, offset: 432)
!5620 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !5404, file: !5405, line: 1047, baseType: !5621, size: 32, offset: 1472)
!5621 = !DIDerivedType(tag: DW_TAG_typedef, name: "sk_buff_data_t", file: !5405, line: 683, baseType: !13)
!5622 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !5404, file: !5405, line: 1048, baseType: !5621, size: 32, offset: 1504)
!5623 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5404, file: !5405, line: 1049, baseType: !183, size: 64, offset: 1536)
!5624 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5404, file: !5405, line: 1050, baseType: !183, size: 64, offset: 1600)
!5625 = !DIDerivedType(tag: DW_TAG_member, name: "truesize", scope: !5404, file: !5405, line: 1051, baseType: !13, size: 32, offset: 1664)
!5626 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !5404, file: !5405, line: 1052, baseType: !212, size: 32, offset: 1696)
!5627 = !DIDerivedType(tag: DW_TAG_member, name: "extensions", scope: !5404, file: !5405, line: 1056, baseType: !5628, size: 64, offset: 1728)
!5628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5629, size: 64)
!5629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "skb_ext", file: !5405, line: 4679, size: 64, elements: !5630)
!5630 = !{!5631, !5632, !5634, !5635}
!5631 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !5629, file: !5405, line: 4680, baseType: !212, size: 32)
!5632 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5629, file: !5405, line: 4681, baseType: !5633, size: 8, offset: 32)
!5633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 8, elements: !493)
!5634 = !DIDerivedType(tag: DW_TAG_member, name: "chunks", scope: !5629, file: !5405, line: 4682, baseType: !151, size: 8, offset: 40)
!5635 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5629, file: !5405, line: 4683, baseType: !3833, align: 64, offset: 64)
!5636 = !{!5637, !5638, !5639, !5640}
!5637 = !DILocalVariable(name: "skb", arg: 1, scope: !5400, file: !2, line: 880, type: !5403)
!5638 = !DILocalVariable(name: "attrtype", arg: 2, scope: !5400, file: !2, line: 880, type: !172)
!5639 = !DILocalVariable(name: "attrlen", arg: 3, scope: !5400, file: !2, line: 880, type: !172)
!5640 = !DILocalVariable(name: "nla", scope: !5400, file: !2, line: 882, type: !177)
!5641 = !DILocation(line: 880, column: 46, scope: !5400)
!5642 = !DILocation(line: 880, column: 55, scope: !5400)
!5643 = !DILocation(line: 880, column: 69, scope: !5400)
!5644 = !DILocation(line: 882, column: 2, scope: !5400)
!5645 = !DILocation(line: 882, column: 17, scope: !5400)
!5646 = !DILocation(line: 884, column: 16, scope: !5400)
!5647 = !DILocation(line: 884, column: 36, scope: !5400)
!5648 = !DILocation(line: 884, column: 21, scope: !5400)
!5649 = !DILocation(line: 884, column: 8, scope: !5400)
!5650 = !DILocation(line: 884, column: 6, scope: !5400)
!5651 = !DILocation(line: 885, column: 18, scope: !5400)
!5652 = !DILocation(line: 885, column: 2, scope: !5400)
!5653 = !DILocation(line: 885, column: 7, scope: !5400)
!5654 = !DILocation(line: 885, column: 16, scope: !5400)
!5655 = !DILocation(line: 886, column: 31, scope: !5400)
!5656 = !DILocation(line: 886, column: 17, scope: !5400)
!5657 = !DILocation(line: 886, column: 2, scope: !5400)
!5658 = !DILocation(line: 886, column: 7, scope: !5400)
!5659 = !DILocation(line: 886, column: 15, scope: !5400)
!5660 = !DILocation(line: 888, column: 27, scope: !5400)
!5661 = !DILocation(line: 888, column: 33, scope: !5400)
!5662 = !DILocation(line: 888, column: 38, scope: !5400)
!5663 = !DILocation(line: 888, column: 31, scope: !5400)
!5664 = !DILocation(line: 888, column: 61, scope: !5400)
!5665 = !DILocation(line: 888, column: 50, scope: !5400)
!5666 = !DILocation(line: 888, column: 2, scope: !5400)
!5667 = !DILocation(line: 890, column: 9, scope: !5400)
!5668 = !DILocation(line: 891, column: 1, scope: !5400)
!5669 = !DILocation(line: 890, column: 2, scope: !5400)
!5670 = !DISubprogram(name: "skb_put", scope: !5405, file: !5405, line: 2571, type: !5671, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5671 = !DISubroutineType(types: !5672)
!5672 = !{!176, !5403, !13}
!5673 = distinct !DISubprogram(name: "nla_attr_size", scope: !12, file: !12, line: 1147, type: !3033, scopeLine: 1148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5674)
!5674 = !{!5675}
!5675 = !DILocalVariable(name: "payload", arg: 1, scope: !5673, file: !12, line: 1147, type: !172)
!5676 = !DILocation(line: 1147, column: 37, scope: !5673)
!5677 = !DILocation(line: 1149, column: 22, scope: !5673)
!5678 = !DILocation(line: 1149, column: 20, scope: !5673)
!5679 = !DILocation(line: 1149, column: 2, scope: !5673)
!5680 = distinct !DISubprogram(name: "nla_padlen", scope: !12, file: !12, line: 1165, type: !3033, scopeLine: 1166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5681)
!5681 = !{!5682}
!5682 = !DILocalVariable(name: "payload", arg: 1, scope: !5680, file: !12, line: 1165, type: !172)
!5683 = !DILocation(line: 1165, column: 34, scope: !5680)
!5684 = !DILocation(line: 1167, column: 24, scope: !5680)
!5685 = !DILocation(line: 1167, column: 9, scope: !5680)
!5686 = !DILocation(line: 1167, column: 49, scope: !5680)
!5687 = !DILocation(line: 1167, column: 35, scope: !5680)
!5688 = !DILocation(line: 1167, column: 33, scope: !5680)
!5689 = !DILocation(line: 1167, column: 2, scope: !5680)
!5690 = distinct !DISubprogram(name: "__nla_reserve_64bit", scope: !2, file: !2, line: 908, type: !5691, scopeLine: 910, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5693)
!5691 = !DISubroutineType(types: !5692)
!5692 = !{!177, !5403, !172, !172, !172}
!5693 = !{!5694, !5695, !5696, !5697}
!5694 = !DILocalVariable(name: "skb", arg: 1, scope: !5690, file: !2, line: 908, type: !5403)
!5695 = !DILocalVariable(name: "attrtype", arg: 2, scope: !5690, file: !2, line: 908, type: !172)
!5696 = !DILocalVariable(name: "attrlen", arg: 3, scope: !5690, file: !2, line: 909, type: !172)
!5697 = !DILocalVariable(name: "padattr", arg: 4, scope: !5690, file: !2, line: 909, type: !172)
!5698 = !DILocation(line: 908, column: 52, scope: !5690)
!5699 = !DILocation(line: 908, column: 61, scope: !5690)
!5700 = !DILocation(line: 909, column: 12, scope: !5690)
!5701 = !DILocation(line: 909, column: 25, scope: !5690)
!5702 = !DILocation(line: 911, column: 18, scope: !5690)
!5703 = !DILocation(line: 911, column: 23, scope: !5690)
!5704 = !DILocation(line: 911, column: 2, scope: !5690)
!5705 = !DILocation(line: 913, column: 23, scope: !5690)
!5706 = !DILocation(line: 913, column: 28, scope: !5690)
!5707 = !DILocation(line: 913, column: 38, scope: !5690)
!5708 = !DILocation(line: 913, column: 9, scope: !5690)
!5709 = !DILocation(line: 913, column: 2, scope: !5690)
!5710 = distinct !DISubprogram(name: "nla_align_64bit", scope: !12, file: !12, line: 1937, type: !5711, scopeLine: 1938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5713)
!5711 = !DISubroutineType(types: !5712)
!5712 = !{!172, !5403, !172}
!5713 = !{!5714, !5715}
!5714 = !DILocalVariable(name: "skb", arg: 1, scope: !5710, file: !12, line: 1937, type: !5403)
!5715 = !DILocalVariable(name: "padattr", arg: 2, scope: !5710, file: !12, line: 1937, type: !172)
!5716 = !DILocation(line: 1937, column: 51, scope: !5710)
!5717 = !DILocation(line: 1937, column: 60, scope: !5710)
!5718 = !DILocation(line: 1939, column: 33, scope: !5719)
!5719 = distinct !DILexicalBlock(scope: !5710, file: !12, line: 1939, column: 6)
!5720 = !DILocation(line: 1939, column: 6, scope: !5719)
!5721 = !DILocation(line: 1939, column: 38, scope: !5719)
!5722 = !DILocation(line: 1940, column: 19, scope: !5719)
!5723 = !DILocation(line: 1940, column: 24, scope: !5719)
!5724 = !DILocation(line: 1940, column: 7, scope: !5719)
!5725 = !DILocation(line: 1939, column: 6, scope: !5710)
!5726 = !DILocation(line: 1941, column: 3, scope: !5719)
!5727 = !DILocation(line: 1943, column: 2, scope: !5710)
!5728 = !DILocation(line: 1944, column: 1, scope: !5710)
!5729 = distinct !DISubprogram(name: "__nla_reserve_nohdr", scope: !2, file: !2, line: 927, type: !5730, scopeLine: 928, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5732)
!5730 = !DISubroutineType(types: !5731)
!5731 = !{!176, !5403, !172}
!5732 = !{!5733, !5734}
!5733 = !DILocalVariable(name: "skb", arg: 1, scope: !5729, file: !2, line: 927, type: !5403)
!5734 = !DILocalVariable(name: "attrlen", arg: 2, scope: !5729, file: !2, line: 927, type: !172)
!5735 = !DILocation(line: 927, column: 43, scope: !5729)
!5736 = !DILocation(line: 927, column: 52, scope: !5729)
!5737 = !DILocation(line: 929, column: 22, scope: !5729)
!5738 = !DILocation(line: 929, column: 27, scope: !5729)
!5739 = !DILocation(line: 929, column: 9, scope: !5729)
!5740 = !DILocation(line: 929, column: 2, scope: !5729)
!5741 = distinct !DISubprogram(name: "skb_put_zero", scope: !5405, file: !5405, line: 2603, type: !5671, scopeLine: 2604, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5742)
!5742 = !{!5743, !5744, !5745}
!5743 = !DILocalVariable(name: "skb", arg: 1, scope: !5741, file: !5405, line: 2603, type: !5403)
!5744 = !DILocalVariable(name: "len", arg: 2, scope: !5741, file: !5405, line: 2603, type: !13)
!5745 = !DILocalVariable(name: "tmp", scope: !5741, file: !5405, line: 2605, type: !176)
!5746 = !DILocation(line: 2603, column: 50, scope: !5741)
!5747 = !DILocation(line: 2603, column: 68, scope: !5741)
!5748 = !DILocation(line: 2605, column: 2, scope: !5741)
!5749 = !DILocation(line: 2605, column: 8, scope: !5741)
!5750 = !DILocation(line: 2605, column: 22, scope: !5741)
!5751 = !DILocation(line: 2605, column: 27, scope: !5741)
!5752 = !DILocation(line: 2605, column: 14, scope: !5741)
!5753 = !DILocation(line: 2607, column: 9, scope: !5741)
!5754 = !DILocation(line: 2607, column: 17, scope: !5741)
!5755 = !DILocation(line: 2607, column: 2, scope: !5741)
!5756 = !DILocation(line: 2609, column: 9, scope: !5741)
!5757 = !DILocation(line: 2610, column: 1, scope: !5741)
!5758 = !DILocation(line: 2609, column: 2, scope: !5741)
!5759 = distinct !DISubprogram(name: "nla_reserve", scope: !2, file: !2, line: 945, type: !5401, scopeLine: 946, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5760)
!5760 = !{!5761, !5762, !5763}
!5761 = !DILocalVariable(name: "skb", arg: 1, scope: !5759, file: !2, line: 945, type: !5403)
!5762 = !DILocalVariable(name: "attrtype", arg: 2, scope: !5759, file: !2, line: 945, type: !172)
!5763 = !DILocalVariable(name: "attrlen", arg: 3, scope: !5759, file: !2, line: 945, type: !172)
!5764 = !DILocation(line: 945, column: 44, scope: !5759)
!5765 = !DILocation(line: 945, column: 53, scope: !5759)
!5766 = !DILocation(line: 945, column: 67, scope: !5759)
!5767 = !DILocation(line: 947, column: 6, scope: !5768)
!5768 = distinct !DILexicalBlock(scope: !5759, file: !2, line: 947, column: 6)
!5769 = !DILocation(line: 947, column: 6, scope: !5759)
!5770 = !DILocation(line: 948, column: 3, scope: !5768)
!5771 = !DILocation(line: 950, column: 23, scope: !5759)
!5772 = !DILocation(line: 950, column: 28, scope: !5759)
!5773 = !DILocation(line: 950, column: 38, scope: !5759)
!5774 = !DILocation(line: 950, column: 9, scope: !5759)
!5775 = !DILocation(line: 950, column: 2, scope: !5759)
!5776 = !DILocation(line: 951, column: 1, scope: !5759)
!5777 = distinct !DISubprogram(name: "skb_tailroom", scope: !5405, file: !5405, line: 2713, type: !5778, scopeLine: 2714, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5782)
!5778 = !DISubroutineType(types: !5779)
!5779 = !{!172, !5780}
!5780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5781, size: 64)
!5781 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5404)
!5782 = !{!5783}
!5783 = !DILocalVariable(name: "skb", arg: 1, scope: !5777, file: !5405, line: 2713, type: !5780)
!5784 = !DILocation(line: 2713, column: 54, scope: !5777)
!5785 = !DILocation(line: 2715, column: 26, scope: !5777)
!5786 = !DILocation(line: 2715, column: 9, scope: !5777)
!5787 = !DILocation(line: 2715, column: 37, scope: !5777)
!5788 = !DILocation(line: 2715, column: 42, scope: !5777)
!5789 = !DILocation(line: 2715, column: 48, scope: !5777)
!5790 = !DILocation(line: 2715, column: 53, scope: !5777)
!5791 = !DILocation(line: 2715, column: 46, scope: !5777)
!5792 = !DILocation(line: 2715, column: 2, scope: !5777)
!5793 = distinct !DISubprogram(name: "nla_reserve_64bit", scope: !2, file: !2, line: 968, type: !5691, scopeLine: 970, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5794)
!5794 = !{!5795, !5796, !5797, !5798, !5799}
!5795 = !DILocalVariable(name: "skb", arg: 1, scope: !5793, file: !2, line: 968, type: !5403)
!5796 = !DILocalVariable(name: "attrtype", arg: 2, scope: !5793, file: !2, line: 968, type: !172)
!5797 = !DILocalVariable(name: "attrlen", arg: 3, scope: !5793, file: !2, line: 968, type: !172)
!5798 = !DILocalVariable(name: "padattr", arg: 4, scope: !5793, file: !2, line: 969, type: !172)
!5799 = !DILocalVariable(name: "len", scope: !5793, file: !2, line: 971, type: !1117)
!5800 = !DILocation(line: 968, column: 50, scope: !5793)
!5801 = !DILocation(line: 968, column: 59, scope: !5793)
!5802 = !DILocation(line: 968, column: 73, scope: !5793)
!5803 = !DILocation(line: 969, column: 10, scope: !5793)
!5804 = !DILocation(line: 971, column: 2, scope: !5793)
!5805 = !DILocation(line: 971, column: 9, scope: !5793)
!5806 = !DILocation(line: 973, column: 33, scope: !5807)
!5807 = distinct !DILexicalBlock(scope: !5793, file: !2, line: 973, column: 6)
!5808 = !DILocation(line: 973, column: 6, scope: !5807)
!5809 = !DILocation(line: 973, column: 6, scope: !5793)
!5810 = !DILocation(line: 974, column: 30, scope: !5807)
!5811 = !DILocation(line: 974, column: 9, scope: !5807)
!5812 = !DILocation(line: 974, column: 7, scope: !5807)
!5813 = !DILocation(line: 974, column: 3, scope: !5807)
!5814 = !DILocation(line: 976, column: 24, scope: !5807)
!5815 = !DILocation(line: 976, column: 9, scope: !5807)
!5816 = !DILocation(line: 976, column: 7, scope: !5807)
!5817 = !DILocation(line: 977, column: 6, scope: !5818)
!5818 = distinct !DILexicalBlock(scope: !5793, file: !2, line: 977, column: 6)
!5819 = !DILocation(line: 977, column: 6, scope: !5793)
!5820 = !DILocation(line: 978, column: 3, scope: !5818)
!5821 = !DILocation(line: 980, column: 29, scope: !5793)
!5822 = !DILocation(line: 980, column: 34, scope: !5793)
!5823 = !DILocation(line: 980, column: 44, scope: !5793)
!5824 = !DILocation(line: 980, column: 53, scope: !5793)
!5825 = !DILocation(line: 980, column: 9, scope: !5793)
!5826 = !DILocation(line: 980, column: 2, scope: !5793)
!5827 = !DILocation(line: 981, column: 1, scope: !5793)
!5828 = distinct !DISubprogram(name: "nla_need_padding_for_64bit", scope: !12, file: !12, line: 1911, type: !5829, scopeLine: 1912, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5831)
!5829 = !DISubroutineType(types: !5830)
!5830 = !{!802, !5403}
!5831 = !{!5832}
!5832 = !DILocalVariable(name: "skb", arg: 1, scope: !5828, file: !12, line: 1911, type: !5403)
!5833 = !DILocation(line: 1911, column: 63, scope: !5828)
!5834 = !DILocation(line: 1922, column: 2, scope: !5828)
!5835 = distinct !DISubprogram(name: "nla_total_size_64bit", scope: !12, file: !12, line: 1950, type: !3033, scopeLine: 1951, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5836)
!5836 = !{!5837}
!5837 = !DILocalVariable(name: "payload", arg: 1, scope: !5835, file: !12, line: 1950, type: !172)
!5838 = !DILocation(line: 1950, column: 44, scope: !5835)
!5839 = !DILocation(line: 1952, column: 9, scope: !5835)
!5840 = !DILocation(line: 1952, column: 2, scope: !5835)
!5841 = distinct !DISubprogram(name: "nla_reserve_nohdr", scope: !2, file: !2, line: 994, type: !5730, scopeLine: 995, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5842)
!5842 = !{!5843, !5844}
!5843 = !DILocalVariable(name: "skb", arg: 1, scope: !5841, file: !2, line: 994, type: !5403)
!5844 = !DILocalVariable(name: "attrlen", arg: 2, scope: !5841, file: !2, line: 994, type: !172)
!5845 = !DILocation(line: 994, column: 41, scope: !5841)
!5846 = !DILocation(line: 994, column: 50, scope: !5841)
!5847 = !DILocation(line: 996, column: 6, scope: !5848)
!5848 = distinct !DILexicalBlock(scope: !5841, file: !2, line: 996, column: 6)
!5849 = !DILocation(line: 996, column: 6, scope: !5841)
!5850 = !DILocation(line: 997, column: 3, scope: !5848)
!5851 = !DILocation(line: 999, column: 29, scope: !5841)
!5852 = !DILocation(line: 999, column: 34, scope: !5841)
!5853 = !DILocation(line: 999, column: 9, scope: !5841)
!5854 = !DILocation(line: 999, column: 2, scope: !5841)
!5855 = !DILocation(line: 1000, column: 1, scope: !5841)
!5856 = distinct !DISubprogram(name: "__nla_put", scope: !2, file: !2, line: 1013, type: !5857, scopeLine: 1015, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5859)
!5857 = !DISubroutineType(types: !5858)
!5858 = !{null, !5403, !172, !172, !1914}
!5859 = !{!5860, !5861, !5862, !5863, !5864}
!5860 = !DILocalVariable(name: "skb", arg: 1, scope: !5856, file: !2, line: 1013, type: !5403)
!5861 = !DILocalVariable(name: "attrtype", arg: 2, scope: !5856, file: !2, line: 1013, type: !172)
!5862 = !DILocalVariable(name: "attrlen", arg: 3, scope: !5856, file: !2, line: 1013, type: !172)
!5863 = !DILocalVariable(name: "data", arg: 4, scope: !5856, file: !2, line: 1014, type: !1914)
!5864 = !DILocalVariable(name: "nla", scope: !5856, file: !2, line: 1016, type: !177)
!5865 = !DILocation(line: 1013, column: 32, scope: !5856)
!5866 = !DILocation(line: 1013, column: 41, scope: !5856)
!5867 = !DILocation(line: 1013, column: 55, scope: !5856)
!5868 = !DILocation(line: 1014, column: 21, scope: !5856)
!5869 = !DILocation(line: 1016, column: 2, scope: !5856)
!5870 = !DILocation(line: 1016, column: 17, scope: !5856)
!5871 = !DILocation(line: 1018, column: 22, scope: !5856)
!5872 = !DILocation(line: 1018, column: 27, scope: !5856)
!5873 = !DILocation(line: 1018, column: 37, scope: !5856)
!5874 = !DILocation(line: 1018, column: 8, scope: !5856)
!5875 = !DILocation(line: 1018, column: 6, scope: !5856)
!5876 = !DILocation(line: 1019, column: 18, scope: !5856)
!5877 = !DILocation(line: 1019, column: 9, scope: !5856)
!5878 = !DILocation(line: 1019, column: 24, scope: !5856)
!5879 = !DILocation(line: 1019, column: 30, scope: !5856)
!5880 = !DILocation(line: 1019, column: 2, scope: !5856)
!5881 = !DILocation(line: 1020, column: 1, scope: !5856)
!5882 = distinct !DISubprogram(name: "__nla_put_64bit", scope: !2, file: !2, line: 1034, type: !5883, scopeLine: 1036, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5885)
!5883 = !DISubroutineType(types: !5884)
!5884 = !{null, !5403, !172, !172, !1914, !172}
!5885 = !{!5886, !5887, !5888, !5889, !5890, !5891}
!5886 = !DILocalVariable(name: "skb", arg: 1, scope: !5882, file: !2, line: 1034, type: !5403)
!5887 = !DILocalVariable(name: "attrtype", arg: 2, scope: !5882, file: !2, line: 1034, type: !172)
!5888 = !DILocalVariable(name: "attrlen", arg: 3, scope: !5882, file: !2, line: 1034, type: !172)
!5889 = !DILocalVariable(name: "data", arg: 4, scope: !5882, file: !2, line: 1035, type: !1914)
!5890 = !DILocalVariable(name: "padattr", arg: 5, scope: !5882, file: !2, line: 1035, type: !172)
!5891 = !DILocalVariable(name: "nla", scope: !5882, file: !2, line: 1037, type: !177)
!5892 = !DILocation(line: 1034, column: 38, scope: !5882)
!5893 = !DILocation(line: 1034, column: 47, scope: !5882)
!5894 = !DILocation(line: 1034, column: 61, scope: !5882)
!5895 = !DILocation(line: 1035, column: 20, scope: !5882)
!5896 = !DILocation(line: 1035, column: 30, scope: !5882)
!5897 = !DILocation(line: 1037, column: 2, scope: !5882)
!5898 = !DILocation(line: 1037, column: 17, scope: !5882)
!5899 = !DILocation(line: 1039, column: 28, scope: !5882)
!5900 = !DILocation(line: 1039, column: 33, scope: !5882)
!5901 = !DILocation(line: 1039, column: 43, scope: !5882)
!5902 = !DILocation(line: 1039, column: 52, scope: !5882)
!5903 = !DILocation(line: 1039, column: 8, scope: !5882)
!5904 = !DILocation(line: 1039, column: 6, scope: !5882)
!5905 = !DILocation(line: 1040, column: 18, scope: !5882)
!5906 = !DILocation(line: 1040, column: 9, scope: !5882)
!5907 = !DILocation(line: 1040, column: 24, scope: !5882)
!5908 = !DILocation(line: 1040, column: 30, scope: !5882)
!5909 = !DILocation(line: 1040, column: 2, scope: !5882)
!5910 = !DILocation(line: 1041, column: 1, scope: !5882)
!5911 = distinct !DISubprogram(name: "__nla_put_nohdr", scope: !2, file: !2, line: 1053, type: !5912, scopeLine: 1054, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5914)
!5912 = !DISubroutineType(types: !5913)
!5913 = !{null, !5403, !172, !1914}
!5914 = !{!5915, !5916, !5917, !5918}
!5915 = !DILocalVariable(name: "skb", arg: 1, scope: !5911, file: !2, line: 1053, type: !5403)
!5916 = !DILocalVariable(name: "attrlen", arg: 2, scope: !5911, file: !2, line: 1053, type: !172)
!5917 = !DILocalVariable(name: "data", arg: 3, scope: !5911, file: !2, line: 1053, type: !1914)
!5918 = !DILocalVariable(name: "start", scope: !5911, file: !2, line: 1055, type: !176)
!5919 = !DILocation(line: 1053, column: 38, scope: !5911)
!5920 = !DILocation(line: 1053, column: 47, scope: !5911)
!5921 = !DILocation(line: 1053, column: 68, scope: !5911)
!5922 = !DILocation(line: 1055, column: 2, scope: !5911)
!5923 = !DILocation(line: 1055, column: 8, scope: !5911)
!5924 = !DILocation(line: 1057, column: 30, scope: !5911)
!5925 = !DILocation(line: 1057, column: 35, scope: !5911)
!5926 = !DILocation(line: 1057, column: 10, scope: !5911)
!5927 = !DILocation(line: 1057, column: 8, scope: !5911)
!5928 = !DILocation(line: 1058, column: 9, scope: !5911)
!5929 = !DILocation(line: 1058, column: 16, scope: !5911)
!5930 = !DILocation(line: 1058, column: 22, scope: !5911)
!5931 = !DILocation(line: 1058, column: 2, scope: !5911)
!5932 = !DILocation(line: 1059, column: 1, scope: !5911)
!5933 = distinct !DISubprogram(name: "nla_put", scope: !2, file: !2, line: 1072, type: !5934, scopeLine: 1073, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5936)
!5934 = !DISubroutineType(types: !5935)
!5935 = !{!172, !5403, !172, !172, !1914}
!5936 = !{!5937, !5938, !5939, !5940}
!5937 = !DILocalVariable(name: "skb", arg: 1, scope: !5933, file: !2, line: 1072, type: !5403)
!5938 = !DILocalVariable(name: "attrtype", arg: 2, scope: !5933, file: !2, line: 1072, type: !172)
!5939 = !DILocalVariable(name: "attrlen", arg: 3, scope: !5933, file: !2, line: 1072, type: !172)
!5940 = !DILocalVariable(name: "data", arg: 4, scope: !5933, file: !2, line: 1072, type: !1914)
!5941 = !DILocation(line: 1072, column: 29, scope: !5933)
!5942 = !DILocation(line: 1072, column: 38, scope: !5933)
!5943 = !DILocation(line: 1072, column: 52, scope: !5933)
!5944 = !DILocation(line: 1072, column: 73, scope: !5933)
!5945 = !DILocation(line: 1074, column: 6, scope: !5946)
!5946 = distinct !DILexicalBlock(scope: !5933, file: !2, line: 1074, column: 6)
!5947 = !DILocation(line: 1074, column: 6, scope: !5933)
!5948 = !DILocation(line: 1075, column: 3, scope: !5946)
!5949 = !DILocation(line: 1077, column: 12, scope: !5933)
!5950 = !DILocation(line: 1077, column: 17, scope: !5933)
!5951 = !DILocation(line: 1077, column: 27, scope: !5933)
!5952 = !DILocation(line: 1077, column: 36, scope: !5933)
!5953 = !DILocation(line: 1077, column: 2, scope: !5933)
!5954 = !DILocation(line: 1078, column: 2, scope: !5933)
!5955 = !DILocation(line: 1079, column: 1, scope: !5933)
!5956 = distinct !DISubprogram(name: "nla_put_64bit", scope: !2, file: !2, line: 1093, type: !5957, scopeLine: 1095, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5959)
!5957 = !DISubroutineType(types: !5958)
!5958 = !{!172, !5403, !172, !172, !1914, !172}
!5959 = !{!5960, !5961, !5962, !5963, !5964, !5965}
!5960 = !DILocalVariable(name: "skb", arg: 1, scope: !5956, file: !2, line: 1093, type: !5403)
!5961 = !DILocalVariable(name: "attrtype", arg: 2, scope: !5956, file: !2, line: 1093, type: !172)
!5962 = !DILocalVariable(name: "attrlen", arg: 3, scope: !5956, file: !2, line: 1093, type: !172)
!5963 = !DILocalVariable(name: "data", arg: 4, scope: !5956, file: !2, line: 1094, type: !1914)
!5964 = !DILocalVariable(name: "padattr", arg: 5, scope: !5956, file: !2, line: 1094, type: !172)
!5965 = !DILocalVariable(name: "len", scope: !5956, file: !2, line: 1096, type: !1117)
!5966 = !DILocation(line: 1093, column: 35, scope: !5956)
!5967 = !DILocation(line: 1093, column: 44, scope: !5956)
!5968 = !DILocation(line: 1093, column: 58, scope: !5956)
!5969 = !DILocation(line: 1094, column: 17, scope: !5956)
!5970 = !DILocation(line: 1094, column: 27, scope: !5956)
!5971 = !DILocation(line: 1096, column: 2, scope: !5956)
!5972 = !DILocation(line: 1096, column: 9, scope: !5956)
!5973 = !DILocation(line: 1098, column: 33, scope: !5974)
!5974 = distinct !DILexicalBlock(scope: !5956, file: !2, line: 1098, column: 6)
!5975 = !DILocation(line: 1098, column: 6, scope: !5974)
!5976 = !DILocation(line: 1098, column: 6, scope: !5956)
!5977 = !DILocation(line: 1099, column: 30, scope: !5974)
!5978 = !DILocation(line: 1099, column: 9, scope: !5974)
!5979 = !DILocation(line: 1099, column: 7, scope: !5974)
!5980 = !DILocation(line: 1099, column: 3, scope: !5974)
!5981 = !DILocation(line: 1101, column: 24, scope: !5974)
!5982 = !DILocation(line: 1101, column: 9, scope: !5974)
!5983 = !DILocation(line: 1101, column: 7, scope: !5974)
!5984 = !DILocation(line: 1102, column: 6, scope: !5985)
!5985 = distinct !DILexicalBlock(scope: !5956, file: !2, line: 1102, column: 6)
!5986 = !DILocation(line: 1102, column: 6, scope: !5956)
!5987 = !DILocation(line: 1103, column: 3, scope: !5985)
!5988 = !DILocation(line: 1105, column: 18, scope: !5956)
!5989 = !DILocation(line: 1105, column: 23, scope: !5956)
!5990 = !DILocation(line: 1105, column: 33, scope: !5956)
!5991 = !DILocation(line: 1105, column: 42, scope: !5956)
!5992 = !DILocation(line: 1105, column: 48, scope: !5956)
!5993 = !DILocation(line: 1105, column: 2, scope: !5956)
!5994 = !DILocation(line: 1106, column: 2, scope: !5956)
!5995 = !DILocation(line: 1107, column: 1, scope: !5956)
!5996 = distinct !DISubprogram(name: "nla_put_nohdr", scope: !2, file: !2, line: 1119, type: !5997, scopeLine: 1120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5999)
!5997 = !DISubroutineType(types: !5998)
!5998 = !{!172, !5403, !172, !1914}
!5999 = !{!6000, !6001, !6002}
!6000 = !DILocalVariable(name: "skb", arg: 1, scope: !5996, file: !2, line: 1119, type: !5403)
!6001 = !DILocalVariable(name: "attrlen", arg: 2, scope: !5996, file: !2, line: 1119, type: !172)
!6002 = !DILocalVariable(name: "data", arg: 3, scope: !5996, file: !2, line: 1119, type: !1914)
!6003 = !DILocation(line: 1119, column: 35, scope: !5996)
!6004 = !DILocation(line: 1119, column: 44, scope: !5996)
!6005 = !DILocation(line: 1119, column: 65, scope: !5996)
!6006 = !DILocation(line: 1121, column: 6, scope: !6007)
!6007 = distinct !DILexicalBlock(scope: !5996, file: !2, line: 1121, column: 6)
!6008 = !DILocation(line: 1121, column: 6, scope: !5996)
!6009 = !DILocation(line: 1122, column: 3, scope: !6007)
!6010 = !DILocation(line: 1124, column: 18, scope: !5996)
!6011 = !DILocation(line: 1124, column: 23, scope: !5996)
!6012 = !DILocation(line: 1124, column: 32, scope: !5996)
!6013 = !DILocation(line: 1124, column: 2, scope: !5996)
!6014 = !DILocation(line: 1125, column: 2, scope: !5996)
!6015 = !DILocation(line: 1126, column: 1, scope: !5996)
!6016 = distinct !DISubprogram(name: "nla_append", scope: !2, file: !2, line: 1138, type: !5997, scopeLine: 1139, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6017)
!6017 = !{!6018, !6019, !6020}
!6018 = !DILocalVariable(name: "skb", arg: 1, scope: !6016, file: !2, line: 1138, type: !5403)
!6019 = !DILocalVariable(name: "attrlen", arg: 2, scope: !6016, file: !2, line: 1138, type: !172)
!6020 = !DILocalVariable(name: "data", arg: 3, scope: !6016, file: !2, line: 1138, type: !1914)
!6021 = !DILocation(line: 1138, column: 32, scope: !6016)
!6022 = !DILocation(line: 1138, column: 41, scope: !6016)
!6023 = !DILocation(line: 1138, column: 62, scope: !6016)
!6024 = !DILocation(line: 1140, column: 6, scope: !6025)
!6025 = distinct !DILexicalBlock(scope: !6016, file: !2, line: 1140, column: 6)
!6026 = !DILocation(line: 1140, column: 6, scope: !6016)
!6027 = !DILocation(line: 1141, column: 3, scope: !6025)
!6028 = !DILocation(line: 1143, column: 15, scope: !6016)
!6029 = !DILocation(line: 1143, column: 20, scope: !6016)
!6030 = !DILocation(line: 1143, column: 26, scope: !6016)
!6031 = !DILocation(line: 1143, column: 2, scope: !6016)
!6032 = !DILocation(line: 1144, column: 2, scope: !6016)
!6033 = !DILocation(line: 1145, column: 1, scope: !6016)
!6034 = distinct !DISubprogram(name: "skb_put_data", scope: !5405, file: !5405, line: 2612, type: !6035, scopeLine: 2614, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6037)
!6035 = !DISubroutineType(types: !6036)
!6036 = !{!176, !5403, !1914, !13}
!6037 = !{!6038, !6039, !6040, !6041}
!6038 = !DILocalVariable(name: "skb", arg: 1, scope: !6034, file: !5405, line: 2612, type: !5403)
!6039 = !DILocalVariable(name: "data", arg: 2, scope: !6034, file: !5405, line: 2612, type: !1914)
!6040 = !DILocalVariable(name: "len", arg: 3, scope: !6034, file: !5405, line: 2613, type: !13)
!6041 = !DILocalVariable(name: "tmp", scope: !6034, file: !5405, line: 2615, type: !176)
!6042 = !DILocation(line: 2612, column: 50, scope: !6034)
!6043 = !DILocation(line: 2612, column: 67, scope: !6034)
!6044 = !DILocation(line: 2613, column: 19, scope: !6034)
!6045 = !DILocation(line: 2615, column: 2, scope: !6034)
!6046 = !DILocation(line: 2615, column: 8, scope: !6034)
!6047 = !DILocation(line: 2615, column: 22, scope: !6034)
!6048 = !DILocation(line: 2615, column: 27, scope: !6034)
!6049 = !DILocation(line: 2615, column: 14, scope: !6034)
!6050 = !DILocation(line: 2617, column: 9, scope: !6034)
!6051 = !DILocation(line: 2617, column: 14, scope: !6034)
!6052 = !DILocation(line: 2617, column: 20, scope: !6034)
!6053 = !DILocation(line: 2617, column: 2, scope: !6034)
!6054 = !DILocation(line: 2619, column: 9, scope: !6034)
!6055 = !DILocation(line: 2620, column: 1, scope: !6034)
!6056 = !DILocation(line: 2619, column: 2, scope: !6034)
!6057 = !DISubprogram(name: "do_trace_netlink_extack", scope: !4292, file: !4292, line: 14, type: !6058, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6058 = !DISubroutineType(types: !6059)
!6059 = !{null, !805}
!6060 = distinct !DISubprogram(name: "array_index_mask_nospec", scope: !6061, file: !6061, line: 36, type: !6062, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6064)
!6061 = !DIFile(filename: "./arch/x86/include/asm/barrier.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "43f72005da64ca67c9ee720127636784")
!6062 = !DISubroutineType(types: !6063)
!6063 = !{!205, !205, !205}
!6064 = !{!6065, !6066, !6067}
!6065 = !DILocalVariable(name: "index", arg: 1, scope: !6060, file: !6061, line: 36, type: !205)
!6066 = !DILocalVariable(name: "size", arg: 2, scope: !6060, file: !6061, line: 37, type: !205)
!6067 = !DILocalVariable(name: "mask", scope: !6060, file: !6061, line: 39, type: !205)
!6068 = !DILocation(line: 36, column: 67, scope: !6060)
!6069 = !DILocation(line: 37, column: 17, scope: !6060)
!6070 = !DILocation(line: 39, column: 2, scope: !6060)
!6071 = !DILocation(line: 39, column: 16, scope: !6060)
!6072 = !DILocation(line: 43, column: 9, scope: !6060)
!6073 = !DILocation(line: 43, column: 20, scope: !6060)
!6074 = !DILocation(line: 41, column: 2, scope: !6060)
!6075 = !{i64 264788}
!6076 = !DILocation(line: 45, column: 9, scope: !6060)
!6077 = !DILocation(line: 46, column: 1, scope: !6060)
!6078 = !DILocation(line: 45, column: 2, scope: !6060)
!6079 = !DILocation(line: 380, column: 46, scope: !4367)
!6080 = !DILocation(line: 380, column: 55, scope: !4367)
!6081 = !DILocation(line: 381, column: 29, scope: !4367)
!6082 = !DILocation(line: 381, column: 50, scope: !4367)
!6083 = !DILocation(line: 382, column: 28, scope: !4367)
!6084 = !DILocation(line: 382, column: 49, scope: !4367)
!6085 = !DILocation(line: 384, column: 2, scope: !4367)
!6086 = !DILocation(line: 384, column: 6, scope: !4367)
!6087 = !DILocation(line: 384, column: 26, scope: !4367)
!6088 = !DILocation(line: 384, column: 36, scope: !4367)
!6089 = !DILocation(line: 385, column: 2, scope: !4367)
!6090 = !DILocation(line: 385, column: 27, scope: !4367)
!6091 = !DILocation(line: 386, column: 2, scope: !4367)
!6092 = !DILocation(line: 386, column: 6, scope: !4367)
!6093 = !DILocation(line: 386, column: 18, scope: !4367)
!6094 = !DILocation(line: 386, column: 36, scope: !4367)
!6095 = !DILocation(line: 386, column: 28, scope: !4367)
!6096 = !DILocation(line: 386, column: 42, scope: !4367)
!6097 = !DILocation(line: 386, column: 58, scope: !4367)
!6098 = !DILocation(line: 386, column: 49, scope: !4367)
!6099 = !DILocation(line: 387, column: 2, scope: !4367)
!6100 = !DILocation(line: 387, column: 6, scope: !4367)
!6101 = !DILocation(line: 389, column: 6, scope: !6102)
!6102 = distinct !DILexicalBlock(scope: !4367, file: !2, line: 389, column: 6)
!6103 = !DILocation(line: 389, column: 24, scope: !6102)
!6104 = !DILocation(line: 389, column: 27, scope: !6102)
!6105 = !DILocation(line: 389, column: 35, scope: !6102)
!6106 = !DILocation(line: 389, column: 32, scope: !6102)
!6107 = !DILocation(line: 389, column: 6, scope: !4367)
!6108 = !DILocation(line: 390, column: 12, scope: !6102)
!6109 = !DILocation(line: 390, column: 3, scope: !6102)
!6110 = !DILocation(line: 392, column: 6, scope: !6111)
!6111 = distinct !DILexicalBlock(scope: !4367, file: !2, line: 392, column: 6)
!6112 = !DILocation(line: 392, column: 11, scope: !6111)
!6113 = !DILocation(line: 392, column: 16, scope: !6111)
!6114 = !DILocation(line: 392, column: 19, scope: !6111)
!6115 = !DILocation(line: 392, column: 26, scope: !6111)
!6116 = !DILocation(line: 392, column: 24, scope: !6111)
!6117 = !DILocation(line: 392, column: 6, scope: !4367)
!6118 = !DILocation(line: 393, column: 3, scope: !6111)
!6119 = !DILocation(line: 395, column: 9, scope: !4384)
!6120 = !DILocation(line: 395, column: 9, scope: !6121)
!6121 = distinct !DILexicalBlock(scope: !4384, file: !2, line: 395, column: 9)
!6122 = !DILocation(line: 395, column: 9, scope: !6123)
!6123 = distinct !DILexicalBlock(scope: !4384, file: !2, line: 395, column: 9)
!6124 = !DILocation(line: 395, column: 9, scope: !4367)
!6125 = !DILocation(line: 395, column: 7, scope: !4367)
!6126 = !DILocation(line: 396, column: 8, scope: !4367)
!6127 = !DILocation(line: 396, column: 15, scope: !4367)
!6128 = !DILocation(line: 396, column: 5, scope: !4367)
!6129 = !DILocation(line: 398, column: 2, scope: !4367)
!6130 = !DILocation(line: 398, column: 2, scope: !6131)
!6131 = distinct !DILexicalBlock(scope: !6132, file: !2, line: 398, column: 2)
!6132 = distinct !DILexicalBlock(scope: !4367, file: !2, line: 398, column: 2)
!6133 = !DILocation(line: 398, column: 2, scope: !6132)
!6134 = !DILocation(line: 398, column: 2, scope: !6135)
!6135 = distinct !DILexicalBlock(scope: !6131, file: !2, line: 398, column: 2)
!6136 = !DILocation(line: 398, column: 2, scope: !6137)
!6137 = distinct !DILexicalBlock(scope: !6135, file: !2, line: 398, column: 2)
!6138 = !DILocation(line: 398, column: 2, scope: !6139)
!6139 = distinct !DILexicalBlock(scope: !6135, file: !2, line: 398, column: 2)
!6140 = !{i64 2155535388, i64 2155535417, i64 2155535463, i64 2155535521, i64 2155535575, i64 2155535629, i64 2155535684, i64 2155535715}
!6141 = !DILocation(line: 400, column: 19, scope: !4392)
!6142 = !DILocation(line: 400, column: 23, scope: !4392)
!6143 = !DILocation(line: 400, column: 6, scope: !4392)
!6144 = !DILocation(line: 400, column: 29, scope: !4392)
!6145 = !DILocation(line: 400, column: 32, scope: !4392)
!6146 = !DILocation(line: 400, column: 56, scope: !4392)
!6147 = !DILocation(line: 400, column: 60, scope: !4392)
!6148 = !DILocation(line: 400, column: 43, scope: !4392)
!6149 = !DILocation(line: 400, column: 40, scope: !4392)
!6150 = !DILocation(line: 400, column: 6, scope: !4367)
!6151 = !DILocation(line: 401, column: 3, scope: !6152)
!6152 = distinct !DILexicalBlock(scope: !6153, file: !2, line: 401, column: 3)
!6153 = distinct !DILexicalBlock(scope: !4391, file: !2, line: 401, column: 3)
!6154 = !DILocation(line: 401, column: 3, scope: !6153)
!6155 = !DILocation(line: 401, column: 3, scope: !6156)
!6156 = distinct !DILexicalBlock(scope: !6152, file: !2, line: 401, column: 3)
!6157 = !DILocation(line: 401, column: 3, scope: !6158)
!6158 = distinct !DILexicalBlock(scope: !6156, file: !2, line: 401, column: 3)
!6159 = !DILocation(line: 403, column: 7, scope: !4390)
!6160 = !DILocation(line: 403, column: 16, scope: !4390)
!6161 = !DILocation(line: 403, column: 7, scope: !4391)
!6162 = !DILocation(line: 404, column: 4, scope: !4389)
!6163 = !DILocation(line: 404, column: 4, scope: !4388)
!6164 = !DILocation(line: 404, column: 4, scope: !6165)
!6165 = distinct !DILexicalBlock(scope: !4388, file: !2, line: 404, column: 4)
!6166 = !DILocation(line: 404, column: 4, scope: !6167)
!6167 = distinct !DILexicalBlock(scope: !6165, file: !2, line: 404, column: 4)
!6168 = !DILocation(line: 406, column: 4, scope: !4389)
!6169 = !DILocation(line: 408, column: 2, scope: !4391)
!6170 = !DILocation(line: 410, column: 6, scope: !4398)
!6171 = !DILocation(line: 410, column: 15, scope: !4398)
!6172 = !DILocation(line: 410, column: 6, scope: !4367)
!6173 = !DILocation(line: 411, column: 8, scope: !4396)
!6174 = !DILocation(line: 411, column: 12, scope: !4396)
!6175 = !DILocation(line: 411, column: 17, scope: !4396)
!6176 = !DILocation(line: 411, column: 31, scope: !4396)
!6177 = !DILocation(line: 411, column: 34, scope: !4396)
!6178 = !DILocation(line: 411, column: 38, scope: !4396)
!6179 = !DILocation(line: 411, column: 43, scope: !4396)
!6180 = !DILocation(line: 411, column: 64, scope: !4396)
!6181 = !DILocation(line: 412, column: 9, scope: !4396)
!6182 = !DILocation(line: 412, column: 14, scope: !4396)
!6183 = !DILocation(line: 412, column: 23, scope: !4396)
!6184 = !DILocation(line: 411, column: 7, scope: !4397)
!6185 = !DILocation(line: 413, column: 4, scope: !4395)
!6186 = !DILocation(line: 413, column: 4, scope: !4394)
!6187 = !DILocation(line: 413, column: 4, scope: !6188)
!6188 = distinct !DILexicalBlock(scope: !4394, file: !2, line: 413, column: 4)
!6189 = !DILocation(line: 413, column: 4, scope: !6190)
!6190 = distinct !DILexicalBlock(scope: !6188, file: !2, line: 413, column: 4)
!6191 = !DILocation(line: 415, column: 4, scope: !4395)
!6192 = !DILocation(line: 417, column: 7, scope: !4402)
!6193 = !DILocation(line: 417, column: 11, scope: !4402)
!6194 = !DILocation(line: 417, column: 16, scope: !4402)
!6195 = !DILocation(line: 417, column: 30, scope: !4402)
!6196 = !DILocation(line: 417, column: 33, scope: !4402)
!6197 = !DILocation(line: 417, column: 37, scope: !4402)
!6198 = !DILocation(line: 417, column: 42, scope: !4402)
!6199 = !DILocation(line: 417, column: 62, scope: !4402)
!6200 = !DILocation(line: 418, column: 7, scope: !4402)
!6201 = !DILocation(line: 418, column: 11, scope: !4402)
!6202 = !DILocation(line: 418, column: 16, scope: !4402)
!6203 = !DILocation(line: 418, column: 30, scope: !4402)
!6204 = !DILocation(line: 418, column: 34, scope: !4402)
!6205 = !DILocation(line: 418, column: 39, scope: !4402)
!6206 = !DILocation(line: 418, column: 48, scope: !4402)
!6207 = !DILocation(line: 417, column: 7, scope: !4397)
!6208 = !DILocation(line: 419, column: 4, scope: !4401)
!6209 = !DILocation(line: 419, column: 4, scope: !4400)
!6210 = !DILocation(line: 419, column: 4, scope: !6211)
!6211 = distinct !DILexicalBlock(scope: !4400, file: !2, line: 419, column: 4)
!6212 = !DILocation(line: 419, column: 4, scope: !6213)
!6213 = distinct !DILexicalBlock(scope: !6211, file: !2, line: 419, column: 4)
!6214 = !DILocation(line: 421, column: 4, scope: !4401)
!6215 = !DILocation(line: 423, column: 2, scope: !4397)
!6216 = !DILocation(line: 425, column: 10, scope: !4367)
!6217 = !DILocation(line: 425, column: 14, scope: !4367)
!6218 = !DILocation(line: 425, column: 2, scope: !4367)
!6219 = !DILocation(line: 427, column: 7, scope: !6220)
!6220 = distinct !DILexicalBlock(scope: !4406, file: !2, line: 427, column: 7)
!6221 = !DILocation(line: 427, column: 14, scope: !6220)
!6222 = !DILocation(line: 427, column: 17, scope: !6220)
!6223 = !DILocation(line: 427, column: 21, scope: !6220)
!6224 = !DILocation(line: 427, column: 7, scope: !4406)
!6225 = !DILocation(line: 428, column: 4, scope: !6226)
!6226 = distinct !DILexicalBlock(scope: !6220, file: !2, line: 427, column: 37)
!6227 = !DILocation(line: 428, column: 4, scope: !6228)
!6228 = distinct !DILexicalBlock(scope: !6229, file: !2, line: 428, column: 4)
!6229 = distinct !DILexicalBlock(scope: !6226, file: !2, line: 428, column: 4)
!6230 = !DILocation(line: 428, column: 4, scope: !6229)
!6231 = !DILocation(line: 428, column: 4, scope: !6232)
!6232 = distinct !DILexicalBlock(scope: !6228, file: !2, line: 428, column: 4)
!6233 = !DILocation(line: 429, column: 19, scope: !6226)
!6234 = !DILocation(line: 429, column: 23, scope: !6226)
!6235 = !DILocation(line: 429, column: 4, scope: !6226)
!6236 = !DILocation(line: 429, column: 12, scope: !6226)
!6237 = !DILocation(line: 429, column: 17, scope: !6226)
!6238 = !DILocation(line: 430, column: 4, scope: !6226)
!6239 = !DILocation(line: 432, column: 7, scope: !4406)
!6240 = !DILocation(line: 433, column: 3, scope: !4406)
!6241 = !DILocation(line: 436, column: 7, scope: !6242)
!6242 = distinct !DILexicalBlock(scope: !4406, file: !2, line: 436, column: 7)
!6243 = !DILocation(line: 436, column: 15, scope: !6242)
!6244 = !DILocation(line: 436, column: 7, scope: !4406)
!6245 = !DILocation(line: 437, column: 4, scope: !6242)
!6246 = !DILocation(line: 438, column: 3, scope: !4406)
!6247 = !DILocation(line: 441, column: 7, scope: !6248)
!6248 = distinct !DILexicalBlock(scope: !4406, file: !2, line: 441, column: 7)
!6249 = !DILocation(line: 441, column: 15, scope: !6248)
!6250 = !DILocation(line: 441, column: 7, scope: !4406)
!6251 = !DILocation(line: 442, column: 4, scope: !6248)
!6252 = !DILocation(line: 444, column: 33, scope: !4406)
!6253 = !DILocation(line: 444, column: 38, scope: !4406)
!6254 = !DILocation(line: 444, column: 42, scope: !4406)
!6255 = !DILocation(line: 444, column: 9, scope: !4406)
!6256 = !DILocation(line: 444, column: 7, scope: !4406)
!6257 = !DILocation(line: 445, column: 7, scope: !6258)
!6258 = distinct !DILexicalBlock(scope: !4406, file: !2, line: 445, column: 7)
!6259 = !DILocation(line: 445, column: 7, scope: !4406)
!6260 = !DILocation(line: 446, column: 4, scope: !6258)
!6261 = !DILocation(line: 447, column: 3, scope: !4406)
!6262 = !DILocation(line: 450, column: 7, scope: !4405)
!6263 = !DILocation(line: 450, column: 11, scope: !4405)
!6264 = !DILocation(line: 450, column: 7, scope: !4406)
!6265 = !DILocation(line: 451, column: 13, scope: !4404)
!6266 = !DILocation(line: 451, column: 13, scope: !4405)
!6267 = !DILocation(line: 451, column: 11, scope: !4405)
!6268 = !DILocation(line: 451, column: 4, scope: !4405)
!6269 = !DILocation(line: 453, column: 13, scope: !4405)
!6270 = !DILocation(line: 453, column: 11, scope: !4405)
!6271 = !DILocation(line: 455, column: 8, scope: !6272)
!6272 = distinct !DILexicalBlock(scope: !4406, file: !2, line: 455, column: 7)
!6273 = !DILocation(line: 455, column: 15, scope: !6272)
!6274 = !DILocation(line: 455, column: 34, scope: !6272)
!6275 = !DILocation(line: 455, column: 25, scope: !6272)
!6276 = !DILocation(line: 455, column: 46, scope: !6272)
!6277 = !DILocation(line: 455, column: 18, scope: !6272)
!6278 = !DILocation(line: 455, column: 54, scope: !6272)
!6279 = !DILocation(line: 455, column: 7, scope: !4406)
!6280 = !DILocation(line: 456, column: 8, scope: !6281)
!6281 = distinct !DILexicalBlock(scope: !6272, file: !2, line: 455, column: 63)
!6282 = !DILocation(line: 457, column: 4, scope: !6281)
!6283 = !DILocation(line: 455, column: 57, scope: !6272)
!6284 = !DILocation(line: 462, column: 7, scope: !6285)
!6285 = distinct !DILexicalBlock(scope: !4406, file: !2, line: 462, column: 7)
!6286 = !DILocation(line: 462, column: 15, scope: !6285)
!6287 = !DILocation(line: 462, column: 7, scope: !4406)
!6288 = !DILocation(line: 463, column: 4, scope: !6285)
!6289 = !DILocation(line: 465, column: 7, scope: !4410)
!6290 = !DILocation(line: 465, column: 11, scope: !4410)
!6291 = !DILocation(line: 465, column: 7, scope: !4406)
!6292 = !DILocation(line: 466, column: 4, scope: !4409)
!6293 = !DILocation(line: 466, column: 10, scope: !4409)
!6294 = !DILocation(line: 466, column: 25, scope: !4409)
!6295 = !DILocation(line: 466, column: 16, scope: !4409)
!6296 = !DILocation(line: 468, column: 8, scope: !6297)
!6297 = distinct !DILexicalBlock(scope: !4409, file: !2, line: 468, column: 8)
!6298 = !DILocation(line: 468, column: 12, scope: !6297)
!6299 = !DILocation(line: 468, column: 20, scope: !6297)
!6300 = !DILocation(line: 468, column: 25, scope: !6297)
!6301 = !DILocation(line: 468, column: 8, scope: !4409)
!6302 = !DILocation(line: 469, column: 12, scope: !6297)
!6303 = !DILocation(line: 469, column: 5, scope: !6297)
!6304 = !DILocation(line: 471, column: 8, scope: !6305)
!6305 = distinct !DILexicalBlock(scope: !4409, file: !2, line: 471, column: 8)
!6306 = !DILocation(line: 471, column: 18, scope: !6305)
!6307 = !DILocation(line: 471, column: 22, scope: !6305)
!6308 = !DILocation(line: 471, column: 16, scope: !6305)
!6309 = !DILocation(line: 471, column: 8, scope: !4409)
!6310 = !DILocation(line: 472, column: 5, scope: !6305)
!6311 = !DILocation(line: 473, column: 3, scope: !4410)
!6312 = !DILocation(line: 473, column: 3, scope: !4409)
!6313 = !DILocation(line: 474, column: 3, scope: !4406)
!6314 = !DILocation(line: 477, column: 7, scope: !6315)
!6315 = distinct !DILexicalBlock(scope: !4406, file: !2, line: 477, column: 7)
!6316 = !DILocation(line: 477, column: 11, scope: !6315)
!6317 = !DILocation(line: 477, column: 15, scope: !6315)
!6318 = !DILocation(line: 477, column: 18, scope: !6315)
!6319 = !DILocation(line: 477, column: 28, scope: !6315)
!6320 = !DILocation(line: 477, column: 32, scope: !6315)
!6321 = !DILocation(line: 477, column: 26, scope: !6315)
!6322 = !DILocation(line: 477, column: 7, scope: !4406)
!6323 = !DILocation(line: 478, column: 4, scope: !6315)
!6324 = !DILocation(line: 479, column: 3, scope: !4406)
!6325 = !DILocation(line: 485, column: 7, scope: !6326)
!6326 = distinct !DILexicalBlock(scope: !4406, file: !2, line: 485, column: 7)
!6327 = !DILocation(line: 485, column: 15, scope: !6326)
!6328 = !DILocation(line: 485, column: 7, scope: !4406)
!6329 = !DILocation(line: 486, column: 4, scope: !6326)
!6330 = !DILocation(line: 487, column: 7, scope: !6331)
!6331 = distinct !DILexicalBlock(scope: !4406, file: !2, line: 487, column: 7)
!6332 = !DILocation(line: 487, column: 15, scope: !6331)
!6333 = !DILocation(line: 487, column: 7, scope: !4406)
!6334 = !DILocation(line: 488, column: 4, scope: !6331)
!6335 = !DILocation(line: 489, column: 7, scope: !6336)
!6336 = distinct !DILexicalBlock(scope: !4406, file: !2, line: 489, column: 7)
!6337 = !DILocation(line: 489, column: 11, scope: !6336)
!6338 = !DILocation(line: 489, column: 7, scope: !4406)
!6339 = !DILocation(line: 490, column: 40, scope: !6340)
!6340 = distinct !DILexicalBlock(scope: !6336, file: !2, line: 489, column: 26)
!6341 = !DILocation(line: 490, column: 31, scope: !6340)
!6342 = !DILocation(line: 490, column: 54, scope: !6340)
!6343 = !DILocation(line: 490, column: 46, scope: !6340)
!6344 = !DILocation(line: 491, column: 10, scope: !6340)
!6345 = !DILocation(line: 491, column: 14, scope: !6340)
!6346 = !DILocation(line: 491, column: 19, scope: !6340)
!6347 = !DILocation(line: 491, column: 23, scope: !6340)
!6348 = !DILocation(line: 492, column: 10, scope: !6340)
!6349 = !DILocation(line: 492, column: 20, scope: !6340)
!6350 = !DILocation(line: 493, column: 10, scope: !6340)
!6351 = !DILocation(line: 493, column: 16, scope: !6340)
!6352 = !DILocation(line: 490, column: 10, scope: !6340)
!6353 = !DILocation(line: 490, column: 8, scope: !6340)
!6354 = !DILocation(line: 494, column: 8, scope: !6355)
!6355 = distinct !DILexicalBlock(scope: !6340, file: !2, line: 494, column: 8)
!6356 = !DILocation(line: 494, column: 12, scope: !6355)
!6357 = !DILocation(line: 494, column: 8, scope: !6340)
!6358 = !DILocation(line: 499, column: 12, scope: !6359)
!6359 = distinct !DILexicalBlock(scope: !6355, file: !2, line: 494, column: 17)
!6360 = !DILocation(line: 499, column: 5, scope: !6359)
!6361 = !DILocation(line: 501, column: 3, scope: !6340)
!6362 = !DILocation(line: 502, column: 3, scope: !4406)
!6363 = !DILocation(line: 507, column: 7, scope: !6364)
!6364 = distinct !DILexicalBlock(scope: !4406, file: !2, line: 507, column: 7)
!6365 = !DILocation(line: 507, column: 15, scope: !6364)
!6366 = !DILocation(line: 507, column: 7, scope: !4406)
!6367 = !DILocation(line: 508, column: 4, scope: !6364)
!6368 = !DILocation(line: 509, column: 7, scope: !6369)
!6369 = distinct !DILexicalBlock(scope: !4406, file: !2, line: 509, column: 7)
!6370 = !DILocation(line: 509, column: 15, scope: !6369)
!6371 = !DILocation(line: 509, column: 7, scope: !4406)
!6372 = !DILocation(line: 510, column: 4, scope: !6369)
!6373 = !DILocation(line: 511, column: 7, scope: !4413)
!6374 = !DILocation(line: 511, column: 11, scope: !4413)
!6375 = !DILocation(line: 511, column: 7, scope: !4406)
!6376 = !DILocation(line: 512, column: 4, scope: !4412)
!6377 = !DILocation(line: 512, column: 8, scope: !4412)
!6378 = !DILocation(line: 514, column: 38, scope: !4412)
!6379 = !DILocation(line: 514, column: 29, scope: !4412)
!6380 = !DILocation(line: 514, column: 52, scope: !4412)
!6381 = !DILocation(line: 514, column: 44, scope: !4412)
!6382 = !DILocation(line: 515, column: 8, scope: !4412)
!6383 = !DILocation(line: 515, column: 12, scope: !4412)
!6384 = !DILocation(line: 515, column: 17, scope: !4412)
!6385 = !DILocation(line: 515, column: 21, scope: !4412)
!6386 = !DILocation(line: 516, column: 8, scope: !4412)
!6387 = !DILocation(line: 516, column: 16, scope: !4412)
!6388 = !DILocation(line: 516, column: 26, scope: !4412)
!6389 = !DILocation(line: 514, column: 10, scope: !4412)
!6390 = !DILocation(line: 514, column: 8, scope: !4412)
!6391 = !DILocation(line: 517, column: 8, scope: !6392)
!6392 = distinct !DILexicalBlock(scope: !4412, file: !2, line: 517, column: 8)
!6393 = !DILocation(line: 517, column: 12, scope: !6392)
!6394 = !DILocation(line: 517, column: 8, scope: !4412)
!6395 = !DILocation(line: 522, column: 12, scope: !6396)
!6396 = distinct !DILexicalBlock(scope: !6392, file: !2, line: 517, column: 17)
!6397 = !DILocation(line: 522, column: 5, scope: !6396)
!6398 = !DILocation(line: 524, column: 3, scope: !4413)
!6399 = !DILocation(line: 524, column: 3, scope: !4412)
!6400 = !DILocation(line: 525, column: 3, scope: !4406)
!6401 = !DILocation(line: 528, column: 7, scope: !4417)
!6402 = !DILocation(line: 528, column: 16, scope: !4417)
!6403 = !DILocation(line: 528, column: 7, scope: !4406)
!6404 = !DILocation(line: 529, column: 4, scope: !4416)
!6405 = !DILocation(line: 529, column: 4, scope: !4415)
!6406 = !DILocation(line: 529, column: 4, scope: !6407)
!6407 = distinct !DILexicalBlock(scope: !4415, file: !2, line: 529, column: 4)
!6408 = !DILocation(line: 529, column: 4, scope: !6409)
!6409 = distinct !DILexicalBlock(scope: !6407, file: !2, line: 529, column: 4)
!6410 = !DILocation(line: 531, column: 4, scope: !4416)
!6411 = !DILocation(line: 533, column: 7, scope: !6412)
!6412 = distinct !DILexicalBlock(scope: !4406, file: !2, line: 533, column: 7)
!6413 = !DILocation(line: 533, column: 17, scope: !6412)
!6414 = !DILocation(line: 533, column: 21, scope: !6412)
!6415 = !DILocation(line: 533, column: 15, scope: !6412)
!6416 = !DILocation(line: 533, column: 7, scope: !4406)
!6417 = !DILocation(line: 534, column: 4, scope: !6412)
!6418 = !DILocation(line: 535, column: 3, scope: !4406)
!6419 = !DILocation(line: 538, column: 7, scope: !6420)
!6420 = distinct !DILexicalBlock(scope: !4406, file: !2, line: 538, column: 7)
!6421 = !DILocation(line: 538, column: 11, scope: !6420)
!6422 = !DILocation(line: 538, column: 7, scope: !4406)
!6423 = !DILocation(line: 539, column: 13, scope: !6420)
!6424 = !DILocation(line: 539, column: 17, scope: !6420)
!6425 = !DILocation(line: 539, column: 11, scope: !6420)
!6426 = !DILocation(line: 539, column: 4, scope: !6420)
!6427 = !DILocation(line: 541, column: 29, scope: !6420)
!6428 = !DILocation(line: 541, column: 33, scope: !6420)
!6429 = !DILocation(line: 541, column: 13, scope: !6420)
!6430 = !DILocation(line: 541, column: 11, scope: !6420)
!6431 = !DILocation(line: 543, column: 7, scope: !6432)
!6432 = distinct !DILexicalBlock(scope: !4406, file: !2, line: 543, column: 7)
!6433 = !DILocation(line: 543, column: 17, scope: !6432)
!6434 = !DILocation(line: 543, column: 15, scope: !6432)
!6435 = !DILocation(line: 543, column: 7, scope: !4406)
!6436 = !DILocation(line: 544, column: 4, scope: !6432)
!6437 = !DILocation(line: 545, column: 2, scope: !4406)
!6438 = !DILocation(line: 548, column: 10, scope: !4367)
!6439 = !DILocation(line: 548, column: 14, scope: !4367)
!6440 = !DILocation(line: 548, column: 2, scope: !4367)
!6441 = !DILocation(line: 557, column: 32, scope: !6442)
!6442 = distinct !DILexicalBlock(scope: !4367, file: !2, line: 548, column: 31)
!6443 = !DILocation(line: 557, column: 36, scope: !6442)
!6444 = !DILocation(line: 557, column: 41, scope: !6442)
!6445 = !DILocation(line: 557, column: 49, scope: !6442)
!6446 = !DILocation(line: 557, column: 9, scope: !6442)
!6447 = !DILocation(line: 557, column: 7, scope: !6442)
!6448 = !DILocation(line: 558, column: 7, scope: !6449)
!6449 = distinct !DILexicalBlock(scope: !6442, file: !2, line: 558, column: 7)
!6450 = !DILocation(line: 558, column: 7, scope: !6442)
!6451 = !DILocation(line: 559, column: 11, scope: !6449)
!6452 = !DILocation(line: 559, column: 4, scope: !6449)
!6453 = !DILocation(line: 560, column: 3, scope: !6442)
!6454 = !DILocation(line: 562, column: 27, scope: !6442)
!6455 = !DILocation(line: 562, column: 31, scope: !6442)
!6456 = !DILocation(line: 562, column: 36, scope: !6442)
!6457 = !DILocation(line: 562, column: 9, scope: !6442)
!6458 = !DILocation(line: 562, column: 7, scope: !6442)
!6459 = !DILocation(line: 563, column: 7, scope: !6460)
!6460 = distinct !DILexicalBlock(scope: !6442, file: !2, line: 563, column: 7)
!6461 = !DILocation(line: 563, column: 7, scope: !6442)
!6462 = !DILocation(line: 564, column: 11, scope: !6460)
!6463 = !DILocation(line: 564, column: 4, scope: !6460)
!6464 = !DILocation(line: 565, column: 3, scope: !6442)
!6465 = !DILocation(line: 567, column: 7, scope: !6466)
!6466 = distinct !DILexicalBlock(scope: !6442, file: !2, line: 567, column: 7)
!6467 = !DILocation(line: 567, column: 11, scope: !6466)
!6468 = !DILocation(line: 567, column: 7, scope: !6442)
!6469 = !DILocation(line: 568, column: 10, scope: !6470)
!6470 = distinct !DILexicalBlock(scope: !6466, file: !2, line: 567, column: 21)
!6471 = !DILocation(line: 568, column: 14, scope: !6470)
!6472 = !DILocation(line: 568, column: 23, scope: !6470)
!6473 = !DILocation(line: 568, column: 28, scope: !6470)
!6474 = !DILocation(line: 568, column: 8, scope: !6470)
!6475 = !DILocation(line: 569, column: 8, scope: !6476)
!6476 = distinct !DILexicalBlock(scope: !6470, file: !2, line: 569, column: 8)
!6477 = !DILocation(line: 569, column: 8, scope: !6470)
!6478 = !DILocation(line: 570, column: 12, scope: !6476)
!6479 = !DILocation(line: 570, column: 5, scope: !6476)
!6480 = !DILocation(line: 571, column: 3, scope: !6470)
!6481 = !DILocation(line: 572, column: 3, scope: !6442)
!6482 = !DILocation(line: 575, column: 2, scope: !4367)
!6483 = !DILocation(line: 576, column: 1, scope: !4367)
!6484 = !DILocation(line: 577, column: 2, scope: !4367)
!6485 = !DILocation(line: 577, column: 2, scope: !4420)
!6486 = !DILocation(line: 577, column: 2, scope: !6487)
!6487 = distinct !DILexicalBlock(scope: !4420, file: !2, line: 577, column: 2)
!6488 = !DILocation(line: 577, column: 2, scope: !6489)
!6489 = distinct !DILexicalBlock(scope: !6487, file: !2, line: 577, column: 2)
!6490 = !DILocation(line: 579, column: 9, scope: !4367)
!6491 = !DILocation(line: 579, column: 2, scope: !4367)
!6492 = !DILocation(line: 580, column: 1, scope: !4367)
!6493 = !DISubprogram(name: "___ratelimit", scope: !877, file: !877, line: 44, type: !6494, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6494 = !DISubroutineType(types: !6495)
!6495 = !{!172, !6496, !805}
!6496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!6497 = !DISubprogram(name: "_printk", scope: !6498, file: !6498, line: 153, type: !6499, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6498 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!6499 = !DISubroutineType(types: !6500)
!6500 = !{!172, !805, null}
!6501 = distinct !DISubprogram(name: "get_current", scope: !6502, file: !6502, line: 39, type: !6503, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6505)
!6502 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!6503 = !DISubroutineType(types: !6504)
!6504 = !{!196}
!6505 = !{!6506, !6508, !6510}
!6506 = !DILocalVariable(name: "pscr_ret__", scope: !6507, file: !6502, line: 41, type: !196)
!6507 = distinct !DILexicalBlock(scope: !6501, file: !6502, line: 41, column: 9)
!6508 = !DILocalVariable(name: "__vpp_verify", scope: !6509, file: !6502, line: 41, type: !1914)
!6509 = distinct !DILexicalBlock(scope: !6507, file: !6502, line: 41, column: 9)
!6510 = !DILocalVariable(name: "pfo_val__", scope: !6511, file: !6502, line: 41, type: !161)
!6511 = distinct !DILexicalBlock(scope: !6507, file: !6502, line: 41, column: 9)
!6512 = !DILocation(line: 41, column: 9, scope: !6507)
!6513 = !DILocation(line: 41, column: 9, scope: !6509)
!6514 = !DILocation(line: 41, column: 9, scope: !6511)
!6515 = !{i64 2148435763}
!6516 = !DILocation(line: 41, column: 9, scope: !6501)
!6517 = !DILocation(line: 41, column: 2, scope: !6501)
!6518 = distinct !DISubprogram(name: "validate_nla_bitfield32", scope: !2, file: !2, line: 66, type: !6519, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6521)
!6519 = !DISubroutineType(types: !6520)
!6520 = !{!172, !4251, !4265}
!6521 = !{!6522, !6523, !6524}
!6522 = !DILocalVariable(name: "nla", arg: 1, scope: !6518, file: !2, line: 66, type: !4251)
!6523 = !DILocalVariable(name: "valid_flags_mask", arg: 2, scope: !6518, file: !2, line: 67, type: !4265)
!6524 = !DILocalVariable(name: "bf", scope: !6518, file: !2, line: 69, type: !6525)
!6525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6526, size: 64)
!6526 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6527)
!6527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nla_bitfield32", file: !179, line: 265, size: 64, elements: !6528)
!6528 = !{!6529, !6530}
!6529 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !6527, file: !179, line: 266, baseType: !160, size: 32)
!6530 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !6527, file: !179, line: 267, baseType: !160, size: 32, offset: 32)
!6531 = !DILocation(line: 66, column: 57, scope: !6518)
!6532 = !DILocation(line: 67, column: 18, scope: !6518)
!6533 = !DILocation(line: 69, column: 2, scope: !6518)
!6534 = !DILocation(line: 69, column: 31, scope: !6518)
!6535 = !DILocation(line: 69, column: 45, scope: !6518)
!6536 = !DILocation(line: 69, column: 36, scope: !6518)
!6537 = !DILocation(line: 71, column: 7, scope: !6538)
!6538 = distinct !DILexicalBlock(scope: !6518, file: !2, line: 71, column: 6)
!6539 = !DILocation(line: 71, column: 6, scope: !6518)
!6540 = !DILocation(line: 72, column: 3, scope: !6538)
!6541 = !DILocation(line: 75, column: 6, scope: !6542)
!6542 = distinct !DILexicalBlock(scope: !6518, file: !2, line: 75, column: 6)
!6543 = !DILocation(line: 75, column: 10, scope: !6542)
!6544 = !DILocation(line: 75, column: 22, scope: !6542)
!6545 = !DILocation(line: 75, column: 21, scope: !6542)
!6546 = !DILocation(line: 75, column: 19, scope: !6542)
!6547 = !DILocation(line: 75, column: 6, scope: !6518)
!6548 = !DILocation(line: 76, column: 3, scope: !6542)
!6549 = !DILocation(line: 79, column: 6, scope: !6550)
!6550 = distinct !DILexicalBlock(scope: !6518, file: !2, line: 79, column: 6)
!6551 = !DILocation(line: 79, column: 10, scope: !6550)
!6552 = !DILocation(line: 79, column: 19, scope: !6550)
!6553 = !DILocation(line: 79, column: 18, scope: !6550)
!6554 = !DILocation(line: 79, column: 16, scope: !6550)
!6555 = !DILocation(line: 79, column: 6, scope: !6518)
!6556 = !DILocation(line: 80, column: 3, scope: !6550)
!6557 = !DILocation(line: 83, column: 6, scope: !6558)
!6558 = distinct !DILexicalBlock(scope: !6518, file: !2, line: 83, column: 6)
!6559 = !DILocation(line: 83, column: 10, scope: !6558)
!6560 = !DILocation(line: 83, column: 19, scope: !6558)
!6561 = !DILocation(line: 83, column: 23, scope: !6558)
!6562 = !DILocation(line: 83, column: 18, scope: !6558)
!6563 = !DILocation(line: 83, column: 16, scope: !6558)
!6564 = !DILocation(line: 83, column: 6, scope: !6518)
!6565 = !DILocation(line: 84, column: 3, scope: !6558)
!6566 = !DILocation(line: 86, column: 2, scope: !6518)
!6567 = !DILocation(line: 87, column: 1, scope: !6518)
!6568 = !DISubprogram(name: "memchr", scope: !5339, file: !5339, line: 202, type: !6569, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6569 = !DISubroutineType(types: !6570)
!6570 = !{!176, !1914, !172, !1118}
!6571 = !DILocation(line: 89, column: 52, scope: !4456)
!6572 = !DILocation(line: 89, column: 62, scope: !4456)
!6573 = !DILocation(line: 89, column: 71, scope: !4456)
!6574 = !DILocation(line: 90, column: 35, scope: !4456)
!6575 = !DILocation(line: 91, column: 34, scope: !4456)
!6576 = !DILocation(line: 92, column: 23, scope: !4456)
!6577 = !DILocation(line: 92, column: 46, scope: !4456)
!6578 = !DILocation(line: 94, column: 2, scope: !4456)
!6579 = !DILocation(line: 94, column: 23, scope: !4456)
!6580 = !DILocation(line: 95, column: 2, scope: !4456)
!6581 = !DILocation(line: 95, column: 6, scope: !4456)
!6582 = !DILocation(line: 97, column: 2, scope: !4472)
!6583 = !DILocation(line: 97, column: 2, scope: !4471)
!6584 = !DILocation(line: 98, column: 3, scope: !4470)
!6585 = !DILocation(line: 98, column: 7, scope: !4470)
!6586 = !DILocation(line: 100, column: 15, scope: !6587)
!6587 = distinct !DILexicalBlock(scope: !4470, file: !2, line: 100, column: 7)
!6588 = !DILocation(line: 100, column: 7, scope: !6587)
!6589 = !DILocation(line: 100, column: 22, scope: !6587)
!6590 = !DILocation(line: 100, column: 7, scope: !4470)
!6591 = !DILocation(line: 101, column: 4, scope: !6587)
!6592 = !DILocation(line: 103, column: 15, scope: !4476)
!6593 = !DILocation(line: 103, column: 7, scope: !4476)
!6594 = !DILocation(line: 103, column: 22, scope: !4476)
!6595 = !DILocation(line: 103, column: 7, scope: !4470)
!6596 = !DILocation(line: 104, column: 4, scope: !4475)
!6597 = !DILocation(line: 104, column: 4, scope: !4474)
!6598 = !DILocation(line: 104, column: 4, scope: !6599)
!6599 = distinct !DILexicalBlock(scope: !4474, file: !2, line: 104, column: 4)
!6600 = !DILocation(line: 104, column: 4, scope: !6601)
!6601 = distinct !DILexicalBlock(scope: !6599, file: !2, line: 104, column: 4)
!6602 = !DILocation(line: 106, column: 4, scope: !4475)
!6603 = !DILocation(line: 109, column: 39, scope: !4470)
!6604 = !DILocation(line: 109, column: 30, scope: !4470)
!6605 = !DILocation(line: 109, column: 55, scope: !4470)
!6606 = !DILocation(line: 109, column: 47, scope: !4470)
!6607 = !DILocation(line: 110, column: 9, scope: !4470)
!6608 = !DILocation(line: 110, column: 18, scope: !4470)
!6609 = !DILocation(line: 110, column: 26, scope: !4470)
!6610 = !DILocation(line: 110, column: 36, scope: !4470)
!6611 = !DILocation(line: 111, column: 15, scope: !4470)
!6612 = !DILocation(line: 111, column: 21, scope: !4470)
!6613 = !DILocation(line: 109, column: 9, scope: !4470)
!6614 = !DILocation(line: 109, column: 7, scope: !4470)
!6615 = !DILocation(line: 112, column: 7, scope: !6616)
!6616 = distinct !DILexicalBlock(scope: !4470, file: !2, line: 112, column: 7)
!6617 = !DILocation(line: 112, column: 11, scope: !6616)
!6618 = !DILocation(line: 112, column: 7, scope: !4470)
!6619 = !DILocation(line: 113, column: 11, scope: !6616)
!6620 = !DILocation(line: 113, column: 4, scope: !6616)
!6621 = !DILocation(line: 114, column: 2, scope: !4471)
!6622 = !DILocation(line: 114, column: 2, scope: !4470)
!6623 = distinct !{!6623, !6582, !6624, !4866, !4867}
!6624 = !DILocation(line: 114, column: 2, scope: !4472)
!6625 = !DILocation(line: 116, column: 2, scope: !4456)
!6626 = !DILocation(line: 117, column: 1, scope: !4456)
!6627 = distinct !DISubprogram(name: "nla_validate_int_range", scope: !2, file: !2, line: 317, type: !4480, scopeLine: 321, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6628)
!6628 = !{!6629, !6630, !6631, !6632, !6633, !6636}
!6629 = !DILocalVariable(name: "pt", arg: 1, scope: !6627, file: !2, line: 317, type: !4253)
!6630 = !DILocalVariable(name: "nla", arg: 2, scope: !6627, file: !2, line: 318, type: !4251)
!6631 = !DILocalVariable(name: "extack", arg: 3, scope: !6627, file: !2, line: 319, type: !4290)
!6632 = !DILocalVariable(name: "validate", arg: 4, scope: !6627, file: !2, line: 320, type: !13)
!6633 = !DILocalVariable(name: "__ret_warn_on", scope: !6634, file: !2, line: 338, type: !172)
!6634 = distinct !DILexicalBlock(scope: !6635, file: !2, line: 338, column: 3)
!6635 = distinct !DILexicalBlock(scope: !6627, file: !2, line: 322, column: 20)
!6636 = !DILocalVariable(name: "__flags", scope: !6637, file: !2, line: 338, type: !172)
!6637 = distinct !DILexicalBlock(scope: !6638, file: !2, line: 338, column: 3)
!6638 = distinct !DILexicalBlock(scope: !6634, file: !2, line: 338, column: 3)
!6639 = !DILocation(line: 317, column: 60, scope: !6627)
!6640 = !DILocation(line: 318, column: 28, scope: !6627)
!6641 = !DILocation(line: 319, column: 31, scope: !6627)
!6642 = !DILocation(line: 320, column: 20, scope: !6627)
!6643 = !DILocation(line: 322, column: 10, scope: !6627)
!6644 = !DILocation(line: 322, column: 14, scope: !6627)
!6645 = !DILocation(line: 322, column: 2, scope: !6627)
!6646 = !DILocation(line: 331, column: 38, scope: !6635)
!6647 = !DILocation(line: 331, column: 42, scope: !6635)
!6648 = !DILocation(line: 331, column: 47, scope: !6635)
!6649 = !DILocation(line: 331, column: 55, scope: !6635)
!6650 = !DILocation(line: 331, column: 10, scope: !6635)
!6651 = !DILocation(line: 331, column: 3, scope: !6635)
!6652 = !DILocation(line: 336, column: 40, scope: !6635)
!6653 = !DILocation(line: 336, column: 44, scope: !6635)
!6654 = !DILocation(line: 336, column: 49, scope: !6635)
!6655 = !DILocation(line: 336, column: 10, scope: !6635)
!6656 = !DILocation(line: 336, column: 3, scope: !6635)
!6657 = !DILocation(line: 338, column: 3, scope: !6634)
!6658 = !DILocation(line: 338, column: 3, scope: !6638)
!6659 = !DILocation(line: 338, column: 3, scope: !6637)
!6660 = !DILocation(line: 338, column: 3, scope: !6661)
!6661 = distinct !DILexicalBlock(scope: !6637, file: !2, line: 338, column: 3)
!6662 = !DILocation(line: 338, column: 3, scope: !6663)
!6663 = distinct !DILexicalBlock(scope: !6637, file: !2, line: 338, column: 3)
!6664 = !{i64 2155530321, i64 2155530350, i64 2155530396, i64 2155530454, i64 2155530508, i64 2155530562, i64 2155530617, i64 2155530648, i64 2155530956, i64 2155530962, i64 2155531009, i64 2155531032, i64 2155531058}
!6665 = !DILocation(line: 338, column: 3, scope: !6666)
!6666 = distinct !DILexicalBlock(scope: !6637, file: !2, line: 338, column: 3)
!6667 = !DILocation(line: 338, column: 3, scope: !6635)
!6668 = !DILocation(line: 339, column: 3, scope: !6635)
!6669 = !DILocation(line: 341, column: 1, scope: !6627)
!6670 = !DILocation(line: 343, column: 55, scope: !4531)
!6671 = !DILocation(line: 344, column: 30, scope: !4531)
!6672 = !DILocation(line: 345, column: 33, scope: !4531)
!6673 = !DILocation(line: 347, column: 2, scope: !4531)
!6674 = !DILocation(line: 347, column: 6, scope: !4531)
!6675 = !DILocation(line: 349, column: 10, scope: !4531)
!6676 = !DILocation(line: 349, column: 14, scope: !4531)
!6677 = !DILocation(line: 349, column: 2, scope: !4531)
!6678 = !DILocation(line: 351, column: 22, scope: !6679)
!6679 = distinct !DILexicalBlock(scope: !4531, file: !2, line: 349, column: 20)
!6680 = !DILocation(line: 351, column: 11, scope: !6679)
!6681 = !DILocation(line: 351, column: 9, scope: !6679)
!6682 = !DILocation(line: 352, column: 3, scope: !6679)
!6683 = !DILocation(line: 354, column: 23, scope: !6679)
!6684 = !DILocation(line: 354, column: 11, scope: !6679)
!6685 = !DILocation(line: 354, column: 9, scope: !6679)
!6686 = !DILocation(line: 355, column: 3, scope: !6679)
!6687 = !DILocation(line: 357, column: 23, scope: !6679)
!6688 = !DILocation(line: 357, column: 11, scope: !6679)
!6689 = !DILocation(line: 357, column: 9, scope: !6679)
!6690 = !DILocation(line: 358, column: 3, scope: !6679)
!6691 = !DILocation(line: 360, column: 23, scope: !6679)
!6692 = !DILocation(line: 360, column: 11, scope: !6679)
!6693 = !DILocation(line: 360, column: 9, scope: !6679)
!6694 = !DILocation(line: 361, column: 3, scope: !6679)
!6695 = !DILocation(line: 363, column: 11, scope: !6679)
!6696 = !DILocation(line: 363, column: 9, scope: !6679)
!6697 = !DILocation(line: 364, column: 3, scope: !6679)
!6698 = !DILocation(line: 366, column: 11, scope: !6679)
!6699 = !DILocation(line: 366, column: 9, scope: !6679)
!6700 = !DILocation(line: 367, column: 3, scope: !6679)
!6701 = !DILocation(line: 369, column: 3, scope: !6679)
!6702 = !DILocation(line: 372, column: 6, scope: !4540)
!6703 = !DILocation(line: 372, column: 20, scope: !4540)
!6704 = !DILocation(line: 372, column: 24, scope: !4540)
!6705 = !DILocation(line: 372, column: 15, scope: !4540)
!6706 = !DILocation(line: 372, column: 14, scope: !4540)
!6707 = !DILocation(line: 372, column: 12, scope: !4540)
!6708 = !DILocation(line: 372, column: 6, scope: !4531)
!6709 = !DILocation(line: 373, column: 3, scope: !4539)
!6710 = !DILocation(line: 373, column: 3, scope: !4538)
!6711 = !DILocation(line: 373, column: 3, scope: !6712)
!6712 = distinct !DILexicalBlock(scope: !4538, file: !2, line: 373, column: 3)
!6713 = !DILocation(line: 373, column: 3, scope: !6714)
!6714 = distinct !DILexicalBlock(scope: !6712, file: !2, line: 373, column: 3)
!6715 = !DILocation(line: 374, column: 3, scope: !4539)
!6716 = !DILocation(line: 377, column: 2, scope: !4531)
!6717 = !DILocation(line: 378, column: 1, scope: !4531)
!6718 = !DILocation(line: 169, column: 65, scope: !4479)
!6719 = !DILocation(line: 170, column: 33, scope: !4479)
!6720 = !DILocation(line: 171, column: 36, scope: !4479)
!6721 = !DILocation(line: 172, column: 25, scope: !4479)
!6722 = !DILocation(line: 174, column: 2, scope: !4479)
!6723 = !DILocation(line: 174, column: 34, scope: !4479)
!6724 = !DILocation(line: 175, column: 2, scope: !4479)
!6725 = !DILocation(line: 175, column: 6, scope: !4479)
!6726 = !DILocation(line: 177, column: 10, scope: !4479)
!6727 = !DILocation(line: 177, column: 14, scope: !4479)
!6728 = !DILocation(line: 177, column: 2, scope: !4479)
!6729 = !DILocation(line: 179, column: 22, scope: !6730)
!6730 = distinct !DILexicalBlock(scope: !4479, file: !2, line: 177, column: 20)
!6731 = !DILocation(line: 179, column: 11, scope: !6730)
!6732 = !DILocation(line: 179, column: 9, scope: !6730)
!6733 = !DILocation(line: 180, column: 3, scope: !6730)
!6734 = !DILocation(line: 182, column: 23, scope: !6730)
!6735 = !DILocation(line: 182, column: 11, scope: !6730)
!6736 = !DILocation(line: 182, column: 9, scope: !6730)
!6737 = !DILocation(line: 183, column: 3, scope: !6730)
!6738 = !DILocation(line: 185, column: 23, scope: !6730)
!6739 = !DILocation(line: 185, column: 11, scope: !6730)
!6740 = !DILocation(line: 185, column: 9, scope: !6730)
!6741 = !DILocation(line: 186, column: 3, scope: !6730)
!6742 = !DILocation(line: 188, column: 23, scope: !6730)
!6743 = !DILocation(line: 188, column: 11, scope: !6730)
!6744 = !DILocation(line: 188, column: 9, scope: !6730)
!6745 = !DILocation(line: 189, column: 3, scope: !6730)
!6746 = !DILocation(line: 191, column: 23, scope: !6730)
!6747 = !DILocation(line: 191, column: 11, scope: !6730)
!6748 = !DILocation(line: 191, column: 9, scope: !6730)
!6749 = !DILocation(line: 192, column: 3, scope: !6730)
!6750 = !DILocation(line: 194, column: 19, scope: !6730)
!6751 = !DILocation(line: 194, column: 11, scope: !6730)
!6752 = !DILocation(line: 194, column: 9, scope: !6730)
!6753 = !DILocation(line: 195, column: 3, scope: !6730)
!6754 = !DILocation(line: 197, column: 11, scope: !6730)
!6755 = !DILocation(line: 197, column: 9, scope: !6730)
!6756 = !DILocation(line: 198, column: 3, scope: !6730)
!6757 = !DILocation(line: 200, column: 11, scope: !6730)
!6758 = !DILocation(line: 200, column: 9, scope: !6730)
!6759 = !DILocation(line: 201, column: 3, scope: !6730)
!6760 = !DILocation(line: 203, column: 3, scope: !6730)
!6761 = !DILocation(line: 206, column: 25, scope: !4479)
!6762 = !DILocation(line: 206, column: 2, scope: !4479)
!6763 = !DILocation(line: 208, column: 6, scope: !4494)
!6764 = !DILocation(line: 208, column: 10, scope: !4494)
!6765 = !DILocation(line: 208, column: 26, scope: !4494)
!6766 = !DILocation(line: 208, column: 62, scope: !4494)
!6767 = !DILocation(line: 209, column: 6, scope: !4494)
!6768 = !DILocation(line: 209, column: 10, scope: !4494)
!6769 = !DILocation(line: 209, column: 15, scope: !4494)
!6770 = !DILocation(line: 209, column: 29, scope: !4494)
!6771 = !DILocation(line: 209, column: 32, scope: !4494)
!6772 = !DILocation(line: 209, column: 46, scope: !4494)
!6773 = !DILocation(line: 209, column: 38, scope: !4494)
!6774 = !DILocation(line: 208, column: 6, scope: !4479)
!6775 = !DILocation(line: 210, column: 3, scope: !6776)
!6776 = distinct !DILexicalBlock(scope: !6777, file: !2, line: 210, column: 3)
!6777 = distinct !DILexicalBlock(scope: !4493, file: !2, line: 210, column: 3)
!6778 = !DILocation(line: 210, column: 3, scope: !6777)
!6779 = !DILocation(line: 210, column: 3, scope: !6780)
!6780 = distinct !DILexicalBlock(scope: !6776, file: !2, line: 210, column: 3)
!6781 = !DILocation(line: 210, column: 3, scope: !6782)
!6782 = distinct !DILexicalBlock(scope: !6780, file: !2, line: 210, column: 3)
!6783 = !DILocation(line: 212, column: 7, scope: !4492)
!6784 = !DILocation(line: 212, column: 16, scope: !4492)
!6785 = !DILocation(line: 212, column: 7, scope: !4493)
!6786 = !DILocation(line: 213, column: 4, scope: !4491)
!6787 = !DILocation(line: 213, column: 4, scope: !4490)
!6788 = !DILocation(line: 213, column: 4, scope: !6789)
!6789 = distinct !DILexicalBlock(scope: !4490, file: !2, line: 213, column: 4)
!6790 = !DILocation(line: 213, column: 4, scope: !6791)
!6791 = distinct !DILexicalBlock(scope: !6789, file: !2, line: 213, column: 4)
!6792 = !DILocation(line: 215, column: 4, scope: !4491)
!6793 = !DILocation(line: 219, column: 3, scope: !4493)
!6794 = !DILocation(line: 222, column: 6, scope: !4497)
!6795 = !DILocation(line: 222, column: 20, scope: !4497)
!6796 = !DILocation(line: 222, column: 12, scope: !4497)
!6797 = !DILocation(line: 222, column: 24, scope: !4497)
!6798 = !DILocation(line: 222, column: 27, scope: !4497)
!6799 = !DILocation(line: 222, column: 41, scope: !4497)
!6800 = !DILocation(line: 222, column: 33, scope: !4497)
!6801 = !DILocation(line: 222, column: 6, scope: !4479)
!6802 = !DILocation(line: 223, column: 3, scope: !4496)
!6803 = !DILocation(line: 223, column: 8, scope: !4496)
!6804 = !DILocation(line: 223, column: 17, scope: !4496)
!6805 = !DILocation(line: 223, column: 21, scope: !4496)
!6806 = !DILocation(line: 223, column: 26, scope: !4496)
!6807 = !DILocation(line: 225, column: 7, scope: !4500)
!6808 = !{i8 0, i8 2}
!6809 = !DILocation(line: 225, column: 7, scope: !4496)
!6810 = !DILocation(line: 226, column: 4, scope: !4500)
!6811 = !DILocation(line: 226, column: 4, scope: !4499)
!6812 = !DILocation(line: 226, column: 4, scope: !6813)
!6813 = distinct !DILexicalBlock(scope: !4499, file: !2, line: 226, column: 4)
!6814 = !DILocation(line: 226, column: 4, scope: !6815)
!6815 = distinct !DILexicalBlock(scope: !6813, file: !2, line: 226, column: 4)
!6816 = !DILocation(line: 229, column: 4, scope: !4500)
!6817 = !DILocation(line: 229, column: 4, scope: !4502)
!6818 = !DILocation(line: 229, column: 4, scope: !6819)
!6819 = distinct !DILexicalBlock(scope: !4502, file: !2, line: 229, column: 4)
!6820 = !DILocation(line: 229, column: 4, scope: !6821)
!6821 = distinct !DILexicalBlock(scope: !6819, file: !2, line: 229, column: 4)
!6822 = !DILocation(line: 232, column: 3, scope: !4496)
!6823 = !DILocation(line: 233, column: 2, scope: !4497)
!6824 = !DILocation(line: 235, column: 2, scope: !4479)
!6825 = !DILocation(line: 236, column: 1, scope: !4479)
!6826 = !DILocation(line: 282, column: 67, scope: !4516)
!6827 = !DILocation(line: 283, column: 28, scope: !4516)
!6828 = !DILocation(line: 284, column: 31, scope: !4516)
!6829 = !DILocation(line: 286, column: 2, scope: !4516)
!6830 = !DILocation(line: 286, column: 41, scope: !4516)
!6831 = !DILocation(line: 287, column: 2, scope: !4516)
!6832 = !DILocation(line: 287, column: 6, scope: !4516)
!6833 = !DILocation(line: 289, column: 10, scope: !4516)
!6834 = !DILocation(line: 289, column: 14, scope: !4516)
!6835 = !DILocation(line: 289, column: 2, scope: !4516)
!6836 = !DILocation(line: 291, column: 22, scope: !6837)
!6837 = distinct !DILexicalBlock(scope: !4516, file: !2, line: 289, column: 20)
!6838 = !DILocation(line: 291, column: 11, scope: !6837)
!6839 = !DILocation(line: 291, column: 9, scope: !6837)
!6840 = !DILocation(line: 292, column: 3, scope: !6837)
!6841 = !DILocation(line: 294, column: 23, scope: !6837)
!6842 = !DILocation(line: 294, column: 11, scope: !6837)
!6843 = !DILocation(line: 294, column: 9, scope: !6837)
!6844 = !DILocation(line: 295, column: 3, scope: !6837)
!6845 = !DILocation(line: 297, column: 23, scope: !6837)
!6846 = !DILocation(line: 297, column: 11, scope: !6837)
!6847 = !DILocation(line: 297, column: 9, scope: !6837)
!6848 = !DILocation(line: 298, column: 3, scope: !6837)
!6849 = !DILocation(line: 300, column: 23, scope: !6837)
!6850 = !DILocation(line: 300, column: 11, scope: !6837)
!6851 = !DILocation(line: 300, column: 9, scope: !6837)
!6852 = !DILocation(line: 301, column: 3, scope: !6837)
!6853 = !DILocation(line: 303, column: 3, scope: !6837)
!6854 = !DILocation(line: 306, column: 23, scope: !4516)
!6855 = !DILocation(line: 306, column: 2, scope: !4516)
!6856 = !DILocation(line: 308, column: 6, scope: !4528)
!6857 = !DILocation(line: 308, column: 20, scope: !4528)
!6858 = !DILocation(line: 308, column: 12, scope: !4528)
!6859 = !DILocation(line: 308, column: 24, scope: !4528)
!6860 = !DILocation(line: 308, column: 27, scope: !4528)
!6861 = !DILocation(line: 308, column: 41, scope: !4528)
!6862 = !DILocation(line: 308, column: 33, scope: !4528)
!6863 = !DILocation(line: 308, column: 6, scope: !4516)
!6864 = !DILocation(line: 309, column: 3, scope: !4527)
!6865 = !DILocation(line: 309, column: 3, scope: !4526)
!6866 = !DILocation(line: 309, column: 3, scope: !6867)
!6867 = distinct !DILexicalBlock(scope: !4526, file: !2, line: 309, column: 3)
!6868 = !DILocation(line: 309, column: 3, scope: !6869)
!6869 = distinct !DILexicalBlock(scope: !6867, file: !2, line: 309, column: 3)
!6870 = !DILocation(line: 311, column: 3, scope: !4527)
!6871 = !DILocation(line: 314, column: 2, scope: !4516)
!6872 = !DILocation(line: 315, column: 1, scope: !4516)
!6873 = distinct !DISubprogram(name: "nla_get_u8", scope: !12, file: !12, line: 1652, type: !6874, scopeLine: 1653, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6876)
!6874 = !DISubroutineType(types: !6875)
!6875 = !{!151, !4251}
!6876 = !{!6877}
!6877 = !DILocalVariable(name: "nla", arg: 1, scope: !6873, file: !12, line: 1652, type: !4251)
!6878 = !DILocation(line: 1652, column: 50, scope: !6873)
!6879 = !DILocation(line: 1654, column: 26, scope: !6873)
!6880 = !DILocation(line: 1654, column: 17, scope: !6873)
!6881 = !DILocation(line: 1654, column: 9, scope: !6873)
!6882 = !DILocation(line: 1654, column: 2, scope: !6873)
!6883 = distinct !DISubprogram(name: "nla_get_u16", scope: !12, file: !12, line: 1625, type: !6884, scopeLine: 1626, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6886)
!6884 = !DISubroutineType(types: !6885)
!6885 = !{!156, !4251}
!6886 = !{!6887}
!6887 = !DILocalVariable(name: "nla", arg: 1, scope: !6883, file: !12, line: 1625, type: !4251)
!6888 = !DILocation(line: 1625, column: 52, scope: !6883)
!6889 = !DILocation(line: 1627, column: 27, scope: !6883)
!6890 = !DILocation(line: 1627, column: 18, scope: !6883)
!6891 = !DILocation(line: 1627, column: 9, scope: !6883)
!6892 = !DILocation(line: 1627, column: 2, scope: !6883)
!6893 = distinct !DISubprogram(name: "nla_get_u32", scope: !12, file: !12, line: 1598, type: !6894, scopeLine: 1599, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6896)
!6894 = !DISubroutineType(types: !6895)
!6895 = !{!159, !4251}
!6896 = !{!6897}
!6897 = !DILocalVariable(name: "nla", arg: 1, scope: !6893, file: !12, line: 1598, type: !4251)
!6898 = !DILocation(line: 1598, column: 52, scope: !6893)
!6899 = !DILocation(line: 1600, column: 27, scope: !6893)
!6900 = !DILocation(line: 1600, column: 18, scope: !6893)
!6901 = !DILocation(line: 1600, column: 9, scope: !6893)
!6902 = !DILocation(line: 1600, column: 2, scope: !6893)
!6903 = distinct !DISubprogram(name: "nla_get_u64", scope: !12, file: !12, line: 1661, type: !6904, scopeLine: 1662, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6906)
!6904 = !DISubroutineType(types: !6905)
!6905 = !{!161, !4251}
!6906 = !{!6907, !6908}
!6907 = !DILocalVariable(name: "nla", arg: 1, scope: !6903, file: !12, line: 1661, type: !4251)
!6908 = !DILocalVariable(name: "tmp", scope: !6903, file: !12, line: 1663, type: !161)
!6909 = !DILocation(line: 1661, column: 52, scope: !6903)
!6910 = !DILocation(line: 1663, column: 2, scope: !6903)
!6911 = !DILocation(line: 1663, column: 6, scope: !6903)
!6912 = !DILocation(line: 1665, column: 19, scope: !6903)
!6913 = !DILocation(line: 1665, column: 2, scope: !6903)
!6914 = !DILocation(line: 1667, column: 9, scope: !6903)
!6915 = !DILocation(line: 1668, column: 1, scope: !6903)
!6916 = !DILocation(line: 1667, column: 2, scope: !6903)
!6917 = distinct !DISubprogram(name: "nla_get_be16", scope: !12, file: !12, line: 1634, type: !6918, scopeLine: 1635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6920)
!6918 = !DISubroutineType(types: !6919)
!6919 = !{!184, !4251}
!6920 = !{!6921}
!6921 = !DILocalVariable(name: "nla", arg: 1, scope: !6917, file: !12, line: 1634, type: !4251)
!6922 = !DILocation(line: 1634, column: 56, scope: !6917)
!6923 = !DILocation(line: 1636, column: 30, scope: !6917)
!6924 = !DILocation(line: 1636, column: 21, scope: !6917)
!6925 = !DILocation(line: 1636, column: 9, scope: !6917)
!6926 = !DILocation(line: 1636, column: 2, scope: !6917)
!6927 = distinct !DISubprogram(name: "nla_get_be32", scope: !12, file: !12, line: 1607, type: !6928, scopeLine: 1608, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6930)
!6928 = !DISubroutineType(types: !6929)
!6929 = !{!186, !4251}
!6930 = !{!6931}
!6931 = !DILocalVariable(name: "nla", arg: 1, scope: !6927, file: !12, line: 1607, type: !4251)
!6932 = !DILocation(line: 1607, column: 56, scope: !6927)
!6933 = !DILocation(line: 1609, column: 30, scope: !6927)
!6934 = !DILocation(line: 1609, column: 21, scope: !6927)
!6935 = !DILocation(line: 1609, column: 9, scope: !6927)
!6936 = !DILocation(line: 1609, column: 2, scope: !6927)
!6937 = distinct !DISubprogram(name: "nla_get_s8", scope: !12, file: !12, line: 1714, type: !6938, scopeLine: 1715, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6940)
!6938 = !DISubroutineType(types: !6939)
!6939 = !{!164, !4251}
!6940 = !{!6941}
!6941 = !DILocalVariable(name: "nla", arg: 1, scope: !6937, file: !12, line: 1714, type: !4251)
!6942 = !DILocation(line: 1714, column: 50, scope: !6937)
!6943 = !DILocation(line: 1716, column: 26, scope: !6937)
!6944 = !DILocation(line: 1716, column: 17, scope: !6937)
!6945 = !DILocation(line: 1716, column: 9, scope: !6937)
!6946 = !DILocation(line: 1716, column: 2, scope: !6937)
!6947 = distinct !DISubprogram(name: "nla_get_s16", scope: !12, file: !12, line: 1705, type: !6948, scopeLine: 1706, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6950)
!6948 = !DISubroutineType(types: !6949)
!6949 = !{!167, !4251}
!6950 = !{!6951}
!6951 = !DILocalVariable(name: "nla", arg: 1, scope: !6947, file: !12, line: 1705, type: !4251)
!6952 = !DILocation(line: 1705, column: 52, scope: !6947)
!6953 = !DILocation(line: 1707, column: 27, scope: !6947)
!6954 = !DILocation(line: 1707, column: 18, scope: !6947)
!6955 = !DILocation(line: 1707, column: 9, scope: !6947)
!6956 = !DILocation(line: 1707, column: 2, scope: !6947)
!6957 = distinct !DISubprogram(name: "nla_get_s32", scope: !12, file: !12, line: 1696, type: !6958, scopeLine: 1697, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6960)
!6958 = !DISubroutineType(types: !6959)
!6959 = !{!170, !4251}
!6960 = !{!6961}
!6961 = !DILocalVariable(name: "nla", arg: 1, scope: !6957, file: !12, line: 1696, type: !4251)
!6962 = !DILocation(line: 1696, column: 52, scope: !6957)
!6963 = !DILocation(line: 1698, column: 27, scope: !6957)
!6964 = !DILocation(line: 1698, column: 18, scope: !6957)
!6965 = !DILocation(line: 1698, column: 9, scope: !6957)
!6966 = !DILocation(line: 1698, column: 2, scope: !6957)
!6967 = distinct !DISubprogram(name: "nla_get_s64", scope: !12, file: !12, line: 1723, type: !6968, scopeLine: 1724, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6970)
!6968 = !DISubroutineType(types: !6969)
!6969 = !{!173, !4251}
!6970 = !{!6971, !6972}
!6971 = !DILocalVariable(name: "nla", arg: 1, scope: !6967, file: !12, line: 1723, type: !4251)
!6972 = !DILocalVariable(name: "tmp", scope: !6967, file: !12, line: 1725, type: !173)
!6973 = !DILocation(line: 1723, column: 52, scope: !6967)
!6974 = !DILocation(line: 1725, column: 2, scope: !6967)
!6975 = !DILocation(line: 1725, column: 6, scope: !6967)
!6976 = !DILocation(line: 1727, column: 19, scope: !6967)
!6977 = !DILocation(line: 1727, column: 2, scope: !6967)
!6978 = !DILocation(line: 1729, column: 9, scope: !6967)
!6979 = !DILocation(line: 1730, column: 1, scope: !6967)
!6980 = !DILocation(line: 1729, column: 2, scope: !6967)
!6981 = !DISubprogram(name: "kmalloc_large", scope: !141, file: !141, line: 531, type: !5227, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6982 = distinct !DISubprogram(name: "__kmalloc_index", scope: !141, file: !141, line: 444, type: !6983, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6985)
!6983 = !DISubroutineType(types: !6984)
!6984 = !{!13, !1117, !802}
!6985 = !{!6986, !6987}
!6986 = !DILocalVariable(name: "size", arg: 1, scope: !6982, file: !141, line: 444, type: !1117)
!6987 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !6982, file: !141, line: 445, type: !802)
!6988 = !DILocation(line: 444, column: 60, scope: !6982)
!6989 = !DILocation(line: 445, column: 16, scope: !6982)
!6990 = !DILocation(line: 447, column: 7, scope: !6991)
!6991 = distinct !DILexicalBlock(scope: !6982, file: !141, line: 447, column: 6)
!6992 = !DILocation(line: 447, column: 6, scope: !6982)
!6993 = !DILocation(line: 448, column: 3, scope: !6991)
!6994 = !DILocation(line: 450, column: 6, scope: !6995)
!6995 = distinct !DILexicalBlock(scope: !6982, file: !141, line: 450, column: 6)
!6996 = !DILocation(line: 450, column: 11, scope: !6995)
!6997 = !DILocation(line: 450, column: 6, scope: !6982)
!6998 = !DILocation(line: 451, column: 3, scope: !6995)
!6999 = !DILocation(line: 453, column: 32, scope: !7000)
!7000 = distinct !DILexicalBlock(scope: !6982, file: !141, line: 453, column: 6)
!7001 = !DILocation(line: 453, column: 37, scope: !7000)
!7002 = !DILocation(line: 453, column: 42, scope: !7000)
!7003 = !DILocation(line: 453, column: 45, scope: !7000)
!7004 = !DILocation(line: 453, column: 50, scope: !7000)
!7005 = !DILocation(line: 453, column: 6, scope: !6982)
!7006 = !DILocation(line: 454, column: 3, scope: !7000)
!7007 = !DILocation(line: 455, column: 32, scope: !7008)
!7008 = distinct !DILexicalBlock(scope: !6982, file: !141, line: 455, column: 6)
!7009 = !DILocation(line: 455, column: 37, scope: !7008)
!7010 = !DILocation(line: 455, column: 43, scope: !7008)
!7011 = !DILocation(line: 455, column: 46, scope: !7008)
!7012 = !DILocation(line: 455, column: 51, scope: !7008)
!7013 = !DILocation(line: 455, column: 6, scope: !6982)
!7014 = !DILocation(line: 456, column: 3, scope: !7008)
!7015 = !DILocation(line: 457, column: 6, scope: !7016)
!7016 = distinct !DILexicalBlock(scope: !6982, file: !141, line: 457, column: 6)
!7017 = !DILocation(line: 457, column: 11, scope: !7016)
!7018 = !DILocation(line: 457, column: 6, scope: !6982)
!7019 = !DILocation(line: 457, column: 26, scope: !7016)
!7020 = !DILocation(line: 458, column: 6, scope: !7021)
!7021 = distinct !DILexicalBlock(scope: !6982, file: !141, line: 458, column: 6)
!7022 = !DILocation(line: 458, column: 11, scope: !7021)
!7023 = !DILocation(line: 458, column: 6, scope: !6982)
!7024 = !DILocation(line: 458, column: 26, scope: !7021)
!7025 = !DILocation(line: 459, column: 6, scope: !7026)
!7026 = distinct !DILexicalBlock(scope: !6982, file: !141, line: 459, column: 6)
!7027 = !DILocation(line: 459, column: 11, scope: !7026)
!7028 = !DILocation(line: 459, column: 6, scope: !6982)
!7029 = !DILocation(line: 459, column: 26, scope: !7026)
!7030 = !DILocation(line: 460, column: 6, scope: !7031)
!7031 = distinct !DILexicalBlock(scope: !6982, file: !141, line: 460, column: 6)
!7032 = !DILocation(line: 460, column: 11, scope: !7031)
!7033 = !DILocation(line: 460, column: 6, scope: !6982)
!7034 = !DILocation(line: 460, column: 26, scope: !7031)
!7035 = !DILocation(line: 461, column: 6, scope: !7036)
!7036 = distinct !DILexicalBlock(scope: !6982, file: !141, line: 461, column: 6)
!7037 = !DILocation(line: 461, column: 11, scope: !7036)
!7038 = !DILocation(line: 461, column: 6, scope: !6982)
!7039 = !DILocation(line: 461, column: 26, scope: !7036)
!7040 = !DILocation(line: 462, column: 6, scope: !7041)
!7041 = distinct !DILexicalBlock(scope: !6982, file: !141, line: 462, column: 6)
!7042 = !DILocation(line: 462, column: 11, scope: !7041)
!7043 = !DILocation(line: 462, column: 6, scope: !6982)
!7044 = !DILocation(line: 462, column: 26, scope: !7041)
!7045 = !DILocation(line: 463, column: 6, scope: !7046)
!7046 = distinct !DILexicalBlock(scope: !6982, file: !141, line: 463, column: 6)
!7047 = !DILocation(line: 463, column: 11, scope: !7046)
!7048 = !DILocation(line: 463, column: 6, scope: !6982)
!7049 = !DILocation(line: 463, column: 26, scope: !7046)
!7050 = !DILocation(line: 464, column: 6, scope: !7051)
!7051 = distinct !DILexicalBlock(scope: !6982, file: !141, line: 464, column: 6)
!7052 = !DILocation(line: 464, column: 11, scope: !7051)
!7053 = !DILocation(line: 464, column: 6, scope: !6982)
!7054 = !DILocation(line: 464, column: 26, scope: !7051)
!7055 = !DILocation(line: 465, column: 6, scope: !7056)
!7056 = distinct !DILexicalBlock(scope: !6982, file: !141, line: 465, column: 6)
!7057 = !DILocation(line: 465, column: 11, scope: !7056)
!7058 = !DILocation(line: 465, column: 6, scope: !6982)
!7059 = !DILocation(line: 465, column: 26, scope: !7056)
!7060 = !DILocation(line: 466, column: 6, scope: !7061)
!7061 = distinct !DILexicalBlock(scope: !6982, file: !141, line: 466, column: 6)
!7062 = !DILocation(line: 466, column: 11, scope: !7061)
!7063 = !DILocation(line: 466, column: 6, scope: !6982)
!7064 = !DILocation(line: 466, column: 26, scope: !7061)
!7065 = !DILocation(line: 467, column: 6, scope: !7066)
!7066 = distinct !DILexicalBlock(scope: !6982, file: !141, line: 467, column: 6)
!7067 = !DILocation(line: 467, column: 11, scope: !7066)
!7068 = !DILocation(line: 467, column: 6, scope: !6982)
!7069 = !DILocation(line: 467, column: 26, scope: !7066)
!7070 = !DILocation(line: 468, column: 6, scope: !7071)
!7071 = distinct !DILexicalBlock(scope: !6982, file: !141, line: 468, column: 6)
!7072 = !DILocation(line: 468, column: 11, scope: !7071)
!7073 = !DILocation(line: 468, column: 6, scope: !6982)
!7074 = !DILocation(line: 468, column: 26, scope: !7071)
!7075 = !DILocation(line: 469, column: 6, scope: !7076)
!7076 = distinct !DILexicalBlock(scope: !6982, file: !141, line: 469, column: 6)
!7077 = !DILocation(line: 469, column: 11, scope: !7076)
!7078 = !DILocation(line: 469, column: 6, scope: !6982)
!7079 = !DILocation(line: 469, column: 26, scope: !7076)
!7080 = !DILocation(line: 470, column: 6, scope: !7081)
!7081 = distinct !DILexicalBlock(scope: !6982, file: !141, line: 470, column: 6)
!7082 = !DILocation(line: 470, column: 11, scope: !7081)
!7083 = !DILocation(line: 470, column: 6, scope: !6982)
!7084 = !DILocation(line: 470, column: 26, scope: !7081)
!7085 = !DILocation(line: 471, column: 6, scope: !7086)
!7086 = distinct !DILexicalBlock(scope: !6982, file: !141, line: 471, column: 6)
!7087 = !DILocation(line: 471, column: 11, scope: !7086)
!7088 = !DILocation(line: 471, column: 6, scope: !6982)
!7089 = !DILocation(line: 471, column: 26, scope: !7086)
!7090 = !DILocation(line: 472, column: 6, scope: !7091)
!7091 = distinct !DILexicalBlock(scope: !6982, file: !141, line: 472, column: 6)
!7092 = !DILocation(line: 472, column: 11, scope: !7091)
!7093 = !DILocation(line: 472, column: 6, scope: !6982)
!7094 = !DILocation(line: 472, column: 26, scope: !7091)
!7095 = !DILocation(line: 473, column: 6, scope: !7096)
!7096 = distinct !DILexicalBlock(scope: !6982, file: !141, line: 473, column: 6)
!7097 = !DILocation(line: 473, column: 11, scope: !7096)
!7098 = !DILocation(line: 473, column: 6, scope: !6982)
!7099 = !DILocation(line: 473, column: 26, scope: !7096)
!7100 = !DILocation(line: 474, column: 6, scope: !7101)
!7101 = distinct !DILexicalBlock(scope: !6982, file: !141, line: 474, column: 6)
!7102 = !DILocation(line: 474, column: 11, scope: !7101)
!7103 = !DILocation(line: 474, column: 6, scope: !6982)
!7104 = !DILocation(line: 474, column: 27, scope: !7101)
!7105 = !DILocation(line: 475, column: 6, scope: !7106)
!7106 = distinct !DILexicalBlock(scope: !6982, file: !141, line: 475, column: 6)
!7107 = !DILocation(line: 475, column: 11, scope: !7106)
!7108 = !DILocation(line: 475, column: 6, scope: !6982)
!7109 = !DILocation(line: 475, column: 32, scope: !7106)
!7110 = !DILocation(line: 477, column: 50, scope: !7111)
!7111 = distinct !DILexicalBlock(scope: !6982, file: !141, line: 477, column: 6)
!7112 = !DILocation(line: 477, column: 6, scope: !6982)
!7113 = !DILocation(line: 478, column: 3, scope: !7111)
!7114 = !DILocation(line: 478, column: 3, scope: !7115)
!7115 = distinct !DILexicalBlock(scope: !7116, file: !141, line: 478, column: 3)
!7116 = distinct !DILexicalBlock(scope: !7111, file: !141, line: 478, column: 3)
!7117 = !{i32 -2141532397}
!7118 = !DILocation(line: 478, column: 3, scope: !7116)
!7119 = !DILocation(line: 480, column: 3, scope: !7111)
!7120 = !DILocation(line: 480, column: 3, scope: !7121)
!7121 = distinct !DILexicalBlock(scope: !7111, file: !141, line: 480, column: 3)
!7122 = !DILocation(line: 480, column: 3, scope: !7123)
!7123 = distinct !DILexicalBlock(scope: !7121, file: !141, line: 480, column: 3)
!7124 = !DILocation(line: 480, column: 3, scope: !7125)
!7125 = distinct !DILexicalBlock(scope: !7121, file: !141, line: 480, column: 3)
!7126 = !{i64 2153435102, i64 2153435131, i64 2153435177, i64 2153435235, i64 2153435289, i64 2153435343, i64 2153435398, i64 2153435429}
!7127 = !DILocation(line: 483, column: 2, scope: !6982)
!7128 = !DILocation(line: 484, column: 1, scope: !6982)
!7129 = !DISubprogram(name: "kmalloc_trace", scope: !141, file: !141, line: 525, type: !7130, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7130 = !DISubroutineType(types: !7131)
!7131 = !{!176, !7132, !1169, !1117}
!7132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7133, size: 64)
!7133 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !7134, line: 325, flags: DIFlagFwdDecl)
!7134 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!7135 = distinct !DISubprogram(name: "kmalloc_type", scope: !141, file: !141, line: 401, type: !7136, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7138)
!7136 = !DISubroutineType(types: !7137)
!7137 = !{!140, !1169, !205}
!7138 = !{!7139, !7140}
!7139 = !DILocalVariable(name: "flags", arg: 1, scope: !7135, file: !141, line: 401, type: !1169)
!7140 = !DILocalVariable(name: "caller", arg: 2, scope: !7135, file: !141, line: 401, type: !205)
!7141 = !DILocation(line: 401, column: 67, scope: !7135)
!7142 = !DILocation(line: 401, column: 88, scope: !7135)
!7143 = !DILocation(line: 407, column: 6, scope: !7144)
!7144 = distinct !DILexicalBlock(scope: !7135, file: !141, line: 407, column: 6)
!7145 = !DILocation(line: 407, column: 6, scope: !7135)
!7146 = !DILocation(line: 413, column: 3, scope: !7144)
!7147 = !DILocation(line: 423, column: 38, scope: !7148)
!7148 = distinct !DILexicalBlock(scope: !7135, file: !141, line: 423, column: 6)
!7149 = !DILocation(line: 423, column: 44, scope: !7148)
!7150 = !DILocation(line: 423, column: 6, scope: !7135)
!7151 = !DILocation(line: 424, column: 3, scope: !7148)
!7152 = !DILocation(line: 426, column: 3, scope: !7153)
!7153 = distinct !DILexicalBlock(scope: !7135, file: !141, line: 425, column: 6)
!7154 = !DILocation(line: 429, column: 1, scope: !7135)
!7155 = !DISubprogram(name: "__kmalloc", scope: !141, file: !141, line: 488, type: !5227, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7156 = !DISubprogram(name: "__compiletime_assert_245", scope: !141, file: !141, line: 478, type: !2410, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!7157 = distinct !DISubprogram(name: "skb_is_nonlinear", scope: !5405, file: !5405, line: 2393, type: !7158, scopeLine: 2394, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7160)
!7158 = !DISubroutineType(types: !7159)
!7159 = !{!802, !5780}
!7160 = !{!7161}
!7161 = !DILocalVariable(name: "skb", arg: 1, scope: !7157, file: !5405, line: 2393, type: !5780)
!7162 = !DILocation(line: 2393, column: 59, scope: !7157)
!7163 = !DILocation(line: 2395, column: 9, scope: !7157)
!7164 = !DILocation(line: 2395, column: 14, scope: !7157)
!7165 = !DILocation(line: 2395, column: 2, scope: !7157)
