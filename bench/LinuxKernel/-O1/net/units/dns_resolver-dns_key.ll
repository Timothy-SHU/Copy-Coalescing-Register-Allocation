; ModuleID = 'net/dns_resolver/dns_key.c'
source_filename = "net/dns_resolver/dns_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall6.init..kmod_dns_resolver__267_389_init_dns_resolver\22, \22a\22\09\09"
module asm "__initcall__kmod_dns_resolver__267_389_init_dns_resolver6:\09\09\09"
module asm ".long\09__initstub__kmod_dns_resolver__267_389_init_dns_resolver6 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.14 }
%union.anon.14 = type { ptr }
%struct.key_type = type { ptr, i64, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.lock_class_key }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type {}
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.pcpu_hot = type { %union.anon.16 }
%union.anon.16 = type { %struct.anon.17, [16 x i8] }
%struct.anon.17 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i64, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, ptr, [32 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, %union.rcu_special, %struct.list_head, ptr, i64, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i16, i64, %struct.restart_block, i32, i32, i64, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, ptr, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, %struct.task_io_accounting, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.mutex, i32, ptr, %struct.mutex, %struct.list_head, ptr, i16, i16, ptr, i32, i32, i64, i32, i32, i32, i32, %struct.callback_head, %struct.tlbflush_unmap_batch, ptr, %struct.page_frag, ptr, i32, i32, i64, i64, i64, i64, ptr, ptr, %struct.kmap_ctrl, %struct.callback_head, %struct.refcount_struct, i32, ptr, %struct.timer_list, ptr, %struct.refcount_struct, ptr, ptr, i64, i64, i64, %struct.callback_head, i32, %struct.llist_head, %struct.llist_head, %struct.callback_head, [48 x i8], %struct.thread_struct }
%struct.thread_info = type { i64, i64, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.2, i16, i16 }
%struct.llist_node = type { ptr }
%union.anon.2 = type { i32 }
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
%struct.restart_block = type { i64, ptr, %union.anon.4 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.10, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.13 }
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type { i64, i64 }
%union.anon.13 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.key_preparsed_payload = type { ptr, ptr, %union.key_payload, ptr, i64, i64, i64 }
%union.key_payload = type { [4 x ptr] }
%struct.dns_server_list_v1_header = type { %struct.dns_payload_header, i8, i8, i8 }
%struct.dns_payload_header = type { i8, i8, i8 }
%struct.user_key_payload = type { %struct.callback_head, i16, [6 x i8], [0 x i8] }
%struct.key_match_data = type { ptr, ptr, ptr, i32 }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.18, %struct.rw_semaphore, ptr, ptr, %union.anon.19, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i64, %union.anon.20, %union.anon.24, ptr }
%union.anon.18 = type { %struct.rb_node }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.19 = type { i64 }
%struct.kgid_t = type { i32 }
%union.anon.20 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i64, %union.anon.21, ptr, ptr, ptr }
%union.anon.21 = type { i64 }
%union.anon.24 = type { %union.key_payload }
%struct.anon.23 = type { i64, i64, ptr, ptr, ptr }
%struct.cred = type { %struct.atomic64_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_t, %struct.kernel_cap_t, %struct.kernel_cap_t, %struct.kernel_cap_t, %struct.kernel_cap_t, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.15 }
%struct.kernel_cap_t = type { i64 }
%union.anon.15 = type { %struct.callback_head }

@__UNIQUE_ID_description261 = internal constant [38 x i8] c"dns_resolver.description=DNS Resolver\00", section ".modinfo", align 1, !dbg !0
@__UNIQUE_ID_author262 = internal constant [29 x i8] c"dns_resolver.author=Wang Lei\00", section ".modinfo", align 1, !dbg !4040
@__UNIQUE_ID_file263 = internal constant [48 x i8] c"dns_resolver.file=net/dns_resolver/dns_resolver\00", section ".modinfo", align 1, !dbg !4045
@__UNIQUE_ID_license264 = internal constant [25 x i8] c"dns_resolver.license=GPL\00", section ".modinfo", align 1, !dbg !4050
@__param_str_debug = internal constant [19 x i8] c"dns_resolver.debug\00", align 16, !dbg !4086
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 8
@dns_resolver_debug = hidden global i32 0, align 4, !dbg !4082
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.14 { ptr @dns_resolver_debug } }, section "__param", align 8, !dbg !4055
@__UNIQUE_ID_debugtype265 = internal constant [33 x i8] c"dns_resolver.parmtype=debug:uint\00", section ".modinfo", align 1, !dbg !4057
@__UNIQUE_ID_debug266 = internal constant [52 x i8] c"dns_resolver.parm=debug:DNS Resolver debugging mask\00", section ".modinfo", align 1, !dbg !4062
@.str = private unnamed_addr constant [13 x i8] c"dns_resolver\00", align 1, !dbg !4065
@key_type_dns_resolver = hidden global %struct.key_type { ptr @.str, i64 0, i32 3, ptr null, ptr @dns_resolver_preparse, ptr @dns_resolver_free_preparse, ptr @generic_key_instantiate, ptr null, ptr @dns_resolver_match_preparse, ptr null, ptr @user_revoke, ptr @user_destroy, ptr @dns_resolver_describe, ptr @dns_resolver_read, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, %struct.lock_class_key zeroinitializer }, align 8, !dbg !4070
@dns_resolver_cache = hidden global ptr null, align 8, !dbg !4084
@__UNIQUE_ID___addressable___initstub__kmod_dns_resolver__267_389_init_dns_resolver6268 = internal global ptr @__initstub__kmod_dns_resolver__267_389_init_dns_resolver6, section ".discard.addressable", align 8, !dbg !4072
@__exitcall_exit_dns_resolver = internal global ptr @exit_dns_resolver, section ".exitcall.exit", align 8, !dbg !4074
@__UNIQUE_ID_file269 = internal constant [48 x i8] c"dns_resolver.file=net/dns_resolver/dns_resolver\00", section ".modinfo", align 1, !dbg !4078
@__UNIQUE_ID_license270 = internal constant [25 x i8] c"dns_resolver.license=GPL\00", section ".modinfo", align 1, !dbg !4080
@.str.1 = private unnamed_addr constant [31 x i8] c"\017[%-6.6s] ==> %s([%u,%u],%u)\0A\00", align 1, !dbg !4091
@__func__.dns_resolver_preparse = private unnamed_addr constant [22 x i8] c"dns_resolver_preparse\00", align 1, !dbg !4096
@dns_resolver_preparse._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 5000, i32 10, i32 0, i32 0, i64 0, i64 0 }, align 8, !dbg !4101
@.str.2 = private unnamed_addr constant [47 x i8] c"\014dns_resolver: Unsupported content type (%u)\0A\00", align 1, !dbg !4137
@dns_resolver_preparse._rs.3 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 5000, i32 10, i32 0, i32 0, i64 0, i64 0 }, align 8, !dbg !4142
@.str.4 = private unnamed_addr constant [54 x i8] c"\014dns_resolver: Unsupported server list version (%u)\0A\00", align 1, !dbg !4144
@.str.5 = private unnamed_addr constant [31 x i8] c"\017[%-6.6s] ==> %s('%*.*s',%u)\0A\00", align 1, !dbg !4149
@.str.6 = private unnamed_addr constant [23 x i8] c"\017[%-6.6s] no options\0A\00", align 1, !dbg !4151
@.str.7 = private unnamed_addr constant [26 x i8] c"\017[%-6.6s] options: '%s'\0A\00", align 1, !dbg !4156
@dns_resolver_preparse._rs.8 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 5000, i32 10, i32 0, i32 0, i64 0, i64 0 }, align 8, !dbg !4161
@.str.9 = private unnamed_addr constant [51 x i8] c"\014Invalid option length (%d) for dns_resolver key\0A\00", align 1, !dbg !4163
@.str.10 = private unnamed_addr constant [36 x i8] c"\017[%-6.6s] option '%*.*s' val '%s'\0A\00", align 1, !dbg !4168
@.str.11 = private unnamed_addr constant [9 x i8] c"dnserror\00", align 1, !dbg !4173
@.str.12 = private unnamed_addr constant [36 x i8] c"\017[%-6.6s] dns error number option\0A\00", align 1, !dbg !4178
@.str.13 = private unnamed_addr constant [32 x i8] c"\017[%-6.6s] dns error no. = %lu\0A\00", align 1, !dbg !4180
@dns_resolver_preparse._rs.14 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 5000, i32 10, i32 0, i32 0, i64 0, i64 0 }, align 8, !dbg !4182
@.str.15 = private unnamed_addr constant [57 x i8] c"\014Option '%*.*s' to dns_resolver key: bad/missing value\0A\00", align 1, !dbg !4184
@.str.16 = private unnamed_addr constant [39 x i8] c"\017[%-6.6s] <== %s() = 0 [h_error %ld]\0A\00", align 1, !dbg !4189
@.str.17 = private unnamed_addr constant [25 x i8] c"\017[%-6.6s] store result\0A\00", align 1, !dbg !4194
@.str.18 = private unnamed_addr constant [31 x i8] c"\017[%-6.6s] <== %s() = -ENOMEM\0A\00", align 1, !dbg !4197
@.str.19 = private unnamed_addr constant [25 x i8] c"\017[%-6.6s] <== %s() = 0\0A\00", align 1, !dbg !4199
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.20 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !4201
@.str.21 = private unnamed_addr constant [26 x i8] c"\017[%-6.6s] ==> %s(%s,%s)\0A\00", align 1, !dbg !4206
@__func__.dns_resolver_cmp = private unnamed_addr constant [17 x i8] c"dns_resolver_cmp\00", align 1, !dbg !4208
@.str.22 = private unnamed_addr constant [26 x i8] c"\017[%-6.6s] <== %s() = %d\0A\00", align 1, !dbg !4213
@.str.23 = private unnamed_addr constant [5 x i8] c": %d\00", align 1, !dbg !4215
@.str.24 = private unnamed_addr constant [5 x i8] c": %u\00", align 1, !dbg !4220
@init_task = external dso_local global %struct.task_struct, align 64
@.str.25 = private unnamed_addr constant [14 x i8] c".dns_resolver\00", align 1, !dbg !4222
@.str.26 = private unnamed_addr constant [38 x i8] c"\017[%-6.6s] DNS resolver keyring: %d\0A\0A\00", align 1, !dbg !4227
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_description261, ptr @__UNIQUE_ID_author262, ptr @__UNIQUE_ID_file263, ptr @__UNIQUE_ID_license264, ptr @__param_debug, ptr @__UNIQUE_ID_debugtype265, ptr @__UNIQUE_ID_debug266, ptr @exit_dns_resolver, ptr @__UNIQUE_ID___addressable___initstub__kmod_dns_resolver__267_389_init_dns_resolver6268, ptr @__exitcall_exit_dns_resolver, ptr @__UNIQUE_ID_file269, ptr @__UNIQUE_ID_license270], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @dns_resolver_preparse(ptr noundef %prep) #0 align 16 !dbg !4103 {
entry:
  %retval = alloca i32, align 4
  %prep.addr = alloca ptr, align 8
  %upayload = alloca ptr, align 8
  %derrno = alloca i64, align 8
  %ret = alloca i32, align 4
  %datalen = alloca i32, align 4
  %result_len = alloca i32, align 4
  %data = alloca ptr, align 8
  %end = alloca ptr, align 8
  %opt = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %v1 = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %tmp38 = alloca i32, align 4
  %tmp57 = alloca i32, align 4
  %tmp93 = alloca i32, align 4
  %tmp126 = alloca i32, align 4
  %next_opt = alloca ptr, align 8
  %tmp148 = alloca i32, align 4
  %opt_len = alloca i32, align 4
  %opt_nlen = alloca i32, align 4
  %eq = alloca ptr, align 8
  %optval = alloca [128 x i8], align 16
  %tmp179 = alloca i32, align 4
  %tmp216 = alloca i32, align 4
  %tmp247 = alloca i32, align 4
  %tmp281 = alloca i32, align 4
  %tmp299 = alloca i32, align 4
  %tmp331 = alloca i32, align 4
  %tmp357 = alloca i32, align 4
  %tmp385 = alloca i32, align 4
  %tmp417 = alloca i32, align 4
  store ptr %prep, ptr %prep.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prep.addr, metadata !4105, metadata !DIExpression()), !dbg !4242
  call void @llvm.lifetime.start.p0(i64 8, ptr %upayload) #16, !dbg !4243
  call void @llvm.dbg.declare(metadata ptr %upayload, metadata !4106, metadata !DIExpression()), !dbg !4244
  call void @llvm.lifetime.start.p0(i64 8, ptr %derrno) #16, !dbg !4245
  call void @llvm.dbg.declare(metadata ptr %derrno, metadata !4114, metadata !DIExpression()), !dbg !4246
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !4247
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4115, metadata !DIExpression()), !dbg !4248
  call void @llvm.lifetime.start.p0(i64 4, ptr %datalen) #16, !dbg !4249
  call void @llvm.dbg.declare(metadata ptr %datalen, metadata !4116, metadata !DIExpression()), !dbg !4250
  %0 = load ptr, ptr %prep.addr, align 8, !dbg !4251
  %datalen1 = getelementptr inbounds %struct.key_preparsed_payload, ptr %0, i32 0, i32 4, !dbg !4252
  %1 = load i64, ptr %datalen1, align 8, !dbg !4252
  %conv = trunc i64 %1 to i32, !dbg !4251
  store i32 %conv, ptr %datalen, align 4, !dbg !4250
  call void @llvm.lifetime.start.p0(i64 4, ptr %result_len) #16, !dbg !4249
  call void @llvm.dbg.declare(metadata ptr %result_len, metadata !4117, metadata !DIExpression()), !dbg !4253
  store i32 0, ptr %result_len, align 4, !dbg !4253
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #16, !dbg !4254
  call void @llvm.dbg.declare(metadata ptr %data, metadata !4118, metadata !DIExpression()), !dbg !4255
  %2 = load ptr, ptr %prep.addr, align 8, !dbg !4256
  %data2 = getelementptr inbounds %struct.key_preparsed_payload, ptr %2, i32 0, i32 3, !dbg !4257
  %3 = load ptr, ptr %data2, align 8, !dbg !4257
  store ptr %3, ptr %data, align 8, !dbg !4255
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #16, !dbg !4254
  call void @llvm.dbg.declare(metadata ptr %end, metadata !4119, metadata !DIExpression()), !dbg !4258
  call void @llvm.lifetime.start.p0(i64 8, ptr %opt) #16, !dbg !4254
  call void @llvm.dbg.declare(metadata ptr %opt, metadata !4120, metadata !DIExpression()), !dbg !4259
  %4 = load i32, ptr %datalen, align 4, !dbg !4260
  %cmp = icmp sle i32 %4, 1, !dbg !4262
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4263

lor.lhs.false:                                    ; preds = %entry
  %5 = load ptr, ptr %data, align 8, !dbg !4264
  %tobool = icmp ne ptr %5, null, !dbg !4264
  br i1 %tobool, label %if.end, label %if.then, !dbg !4265

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, ptr %retval, align 4, !dbg !4266
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup425, !dbg !4266

if.end:                                           ; preds = %lor.lhs.false
  %6 = load ptr, ptr %data, align 8, !dbg !4267
  %arrayidx = getelementptr i8, ptr %6, i64 0, !dbg !4267
  %7 = load i8, ptr %arrayidx, align 1, !dbg !4267
  %conv4 = zext i8 %7 to i32, !dbg !4267
  %cmp5 = icmp eq i32 %conv4, 0, !dbg !4268
  br i1 %cmp5, label %if.then7, label %if.end79, !dbg !4269

if.then7:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %v1) #16, !dbg !4270
  call void @llvm.dbg.declare(metadata ptr %v1, metadata !4121, metadata !DIExpression()), !dbg !4271
  %8 = load i32, ptr %datalen, align 4, !dbg !4272
  %conv8 = sext i32 %8 to i64, !dbg !4272
  %cmp9 = icmp ult i64 %conv8, 6, !dbg !4274
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !4275

if.then11:                                        ; preds = %if.then7
  store i32 -22, ptr %retval, align 4, !dbg !4276
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4276

if.end12:                                         ; preds = %if.then7
  %9 = load ptr, ptr %data, align 8, !dbg !4277
  store ptr %9, ptr %v1, align 8, !dbg !4278
  br label %do.body, !dbg !4279

do.body:                                          ; preds = %if.end12
  %10 = load i32, ptr @dns_resolver_debug, align 4, !dbg !4280
  %tobool13 = icmp ne i32 %10, 0, !dbg !4280
  %lnot = xor i1 %tobool13, true, !dbg !4280
  %lnot14 = xor i1 %lnot, true, !dbg !4280
  %lnot.ext = zext i1 %lnot14 to i32, !dbg !4280
  %conv15 = sext i32 %lnot.ext to i64, !dbg !4280
  %expval = call i64 @llvm.expect.i64(i64 %conv15, i64 0), !dbg !4280
  %tobool16 = icmp ne i64 %expval, 0, !dbg !4280
  br i1 %tobool16, label %if.then17, label %if.end23, !dbg !4283

if.then17:                                        ; preds = %do.body
  br label %do.body18, !dbg !4284

do.body18:                                        ; preds = %if.then17
  br label %do.cond, !dbg !4286

do.cond:                                          ; preds = %do.body18
  br label %do.end, !dbg !4286

do.end:                                           ; preds = %do.cond
  %call = call ptr @get_current() #17, !dbg !4284
  %comm = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 96, !dbg !4284
  %arraydecay = getelementptr inbounds [16 x i8], ptr %comm, i64 0, i64 0, !dbg !4284
  %11 = load ptr, ptr %v1, align 8, !dbg !4284
  %hdr = getelementptr inbounds %struct.dns_server_list_v1_header, ptr %11, i32 0, i32 0, !dbg !4284
  %content = getelementptr inbounds %struct.dns_payload_header, ptr %hdr, i32 0, i32 1, !dbg !4284
  %12 = load i8, ptr %content, align 1, !dbg !4284
  %conv19 = zext i8 %12 to i32, !dbg !4284
  %13 = load ptr, ptr %v1, align 8, !dbg !4284
  %hdr20 = getelementptr inbounds %struct.dns_server_list_v1_header, ptr %13, i32 0, i32 0, !dbg !4284
  %version = getelementptr inbounds %struct.dns_payload_header, ptr %hdr20, i32 0, i32 2, !dbg !4284
  %14 = load i8, ptr %version, align 1, !dbg !4284
  %conv21 = zext i8 %14 to i32, !dbg !4284
  %15 = load i32, ptr %datalen, align 4, !dbg !4284
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1, ptr noundef %arraydecay, ptr noundef @__func__.dns_resolver_preparse, i32 noundef %conv19, i32 noundef %conv21, i32 noundef %15) #18, !dbg !4284
  store i32 %call22, ptr %tmp, align 4, !dbg !4286
  %16 = load i32, ptr %tmp, align 4, !dbg !4284
  br label %if.end23, !dbg !4280

if.end23:                                         ; preds = %do.end, %do.body
  br label %do.cond24, !dbg !4283

do.cond24:                                        ; preds = %if.end23
  br label %do.end25, !dbg !4283

do.end25:                                         ; preds = %do.cond24
  %17 = load ptr, ptr %v1, align 8, !dbg !4288
  %hdr26 = getelementptr inbounds %struct.dns_server_list_v1_header, ptr %17, i32 0, i32 0, !dbg !4290
  %content27 = getelementptr inbounds %struct.dns_payload_header, ptr %hdr26, i32 0, i32 1, !dbg !4291
  %18 = load i8, ptr %content27, align 1, !dbg !4291
  %conv28 = zext i8 %18 to i32, !dbg !4288
  %cmp29 = icmp ne i32 %conv28, 0, !dbg !4292
  br i1 %cmp29, label %if.then31, label %if.end44, !dbg !4293

if.then31:                                        ; preds = %do.end25
  %call32 = call i32 @___ratelimit(ptr noundef @dns_resolver_preparse._rs, ptr noundef @__func__.dns_resolver_preparse) #17, !dbg !4294
  %tobool33 = icmp ne i32 %call32, 0, !dbg !4294
  br i1 %tobool33, label %if.then34, label %if.end43, !dbg !4298

if.then34:                                        ; preds = %if.then31
  br label %do.body35, !dbg !4299

do.body35:                                        ; preds = %if.then34
  br label %do.cond36, !dbg !4301

do.cond36:                                        ; preds = %do.body35
  br label %do.end37, !dbg !4301

do.end37:                                         ; preds = %do.cond36
  %19 = load ptr, ptr %v1, align 8, !dbg !4299
  %hdr39 = getelementptr inbounds %struct.dns_server_list_v1_header, ptr %19, i32 0, i32 0, !dbg !4299
  %content40 = getelementptr inbounds %struct.dns_payload_header, ptr %hdr39, i32 0, i32 1, !dbg !4299
  %20 = load i8, ptr %content40, align 1, !dbg !4299
  %conv41 = zext i8 %20 to i32, !dbg !4299
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2, i32 noundef %conv41) #18, !dbg !4299
  store i32 %call42, ptr %tmp38, align 4, !dbg !4301
  %21 = load i32, ptr %tmp38, align 4, !dbg !4299
  br label %if.end43, !dbg !4294

if.end43:                                         ; preds = %do.end37, %if.then31
  store i32 -22, ptr %retval, align 4, !dbg !4303
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4303

if.end44:                                         ; preds = %do.end25
  %22 = load ptr, ptr %v1, align 8, !dbg !4304
  %hdr45 = getelementptr inbounds %struct.dns_server_list_v1_header, ptr %22, i32 0, i32 0, !dbg !4306
  %version46 = getelementptr inbounds %struct.dns_payload_header, ptr %hdr45, i32 0, i32 2, !dbg !4307
  %23 = load i8, ptr %version46, align 1, !dbg !4307
  %conv47 = zext i8 %23 to i32, !dbg !4304
  %cmp48 = icmp ne i32 %conv47, 1, !dbg !4308
  br i1 %cmp48, label %if.then50, label %if.end63, !dbg !4309

if.then50:                                        ; preds = %if.end44
  %call51 = call i32 @___ratelimit(ptr noundef @dns_resolver_preparse._rs.3, ptr noundef @__func__.dns_resolver_preparse) #17, !dbg !4310
  %tobool52 = icmp ne i32 %call51, 0, !dbg !4310
  br i1 %tobool52, label %if.then53, label %if.end62, !dbg !4314

if.then53:                                        ; preds = %if.then50
  br label %do.body54, !dbg !4315

do.body54:                                        ; preds = %if.then53
  br label %do.cond55, !dbg !4317

do.cond55:                                        ; preds = %do.body54
  br label %do.end56, !dbg !4317

do.end56:                                         ; preds = %do.cond55
  %24 = load ptr, ptr %v1, align 8, !dbg !4315
  %hdr58 = getelementptr inbounds %struct.dns_server_list_v1_header, ptr %24, i32 0, i32 0, !dbg !4315
  %version59 = getelementptr inbounds %struct.dns_payload_header, ptr %hdr58, i32 0, i32 2, !dbg !4315
  %25 = load i8, ptr %version59, align 1, !dbg !4315
  %conv60 = zext i8 %25 to i32, !dbg !4315
  %call61 = call i32 (ptr, ...) @_printk(ptr noundef @.str.4, i32 noundef %conv60) #18, !dbg !4315
  store i32 %call61, ptr %tmp57, align 4, !dbg !4317
  %26 = load i32, ptr %tmp57, align 4, !dbg !4315
  br label %if.end62, !dbg !4310

if.end62:                                         ; preds = %do.end56, %if.then50
  store i32 -22, ptr %retval, align 4, !dbg !4319
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4319

if.end63:                                         ; preds = %if.end44
  %27 = load ptr, ptr %v1, align 8, !dbg !4320
  %status = getelementptr inbounds %struct.dns_server_list_v1_header, ptr %27, i32 0, i32 2, !dbg !4322
  %28 = load i8, ptr %status, align 1, !dbg !4322
  %conv64 = zext i8 %28 to i32, !dbg !4320
  %cmp65 = icmp ne i32 %conv64, 1, !dbg !4323
  br i1 %cmp65, label %land.lhs.true, label %if.end78, !dbg !4324

land.lhs.true:                                    ; preds = %if.end63
  %29 = load ptr, ptr %v1, align 8, !dbg !4325
  %status67 = getelementptr inbounds %struct.dns_server_list_v1_header, ptr %29, i32 0, i32 2, !dbg !4326
  %30 = load i8, ptr %status67, align 1, !dbg !4326
  %conv68 = zext i8 %30 to i32, !dbg !4325
  %cmp69 = icmp ne i32 %conv68, 2, !dbg !4327
  br i1 %cmp69, label %if.then71, label %if.end78, !dbg !4328

if.then71:                                        ; preds = %land.lhs.true
  %31 = load ptr, ptr %prep.addr, align 8, !dbg !4329
  %expiry = getelementptr inbounds %struct.key_preparsed_payload, ptr %31, i32 0, i32 6, !dbg !4332
  %32 = load i64, ptr %expiry, align 8, !dbg !4332
  %cmp72 = icmp eq i64 %32, 9223372036854775807, !dbg !4333
  br i1 %cmp72, label %if.then74, label %if.end77, !dbg !4334

if.then74:                                        ; preds = %if.then71
  %call75 = call i64 @ktime_get_real_seconds() #17, !dbg !4335
  %add = add i64 %call75, 1, !dbg !4336
  %33 = load ptr, ptr %prep.addr, align 8, !dbg !4337
  %expiry76 = getelementptr inbounds %struct.key_preparsed_payload, ptr %33, i32 0, i32 6, !dbg !4338
  store i64 %add, ptr %expiry76, align 8, !dbg !4339
  br label %if.end77, !dbg !4337

if.end77:                                         ; preds = %if.then74, %if.then71
  br label %if.end78, !dbg !4340

if.end78:                                         ; preds = %if.end77, %land.lhs.true, %if.end63
  %34 = load i32, ptr %datalen, align 4, !dbg !4341
  store i32 %34, ptr %result_len, align 4, !dbg !4342
  store i32 10, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4343

cleanup:                                          ; preds = %if.end78, %if.end62, %if.end43, %if.then11
  call void @llvm.lifetime.end.p0(i64 8, ptr %v1) #16, !dbg !4344
  %cleanup.dest343 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest343, label %cleanup425 [
    i32 10, label %store_result
  ]

if.end79:                                         ; preds = %if.end
  br label %do.body80, !dbg !4345

do.body80:                                        ; preds = %if.end79
  %35 = load i32, ptr @dns_resolver_debug, align 4, !dbg !4346
  %tobool81 = icmp ne i32 %35, 0, !dbg !4346
  %lnot82 = xor i1 %tobool81, true, !dbg !4346
  %lnot84 = xor i1 %lnot82, true, !dbg !4346
  %lnot.ext85 = zext i1 %lnot84 to i32, !dbg !4346
  %conv86 = sext i32 %lnot.ext85 to i64, !dbg !4346
  %expval87 = call i64 @llvm.expect.i64(i64 %conv86, i64 0), !dbg !4346
  %tobool88 = icmp ne i64 %expval87, 0, !dbg !4346
  br i1 %tobool88, label %if.then89, label %if.end98, !dbg !4349

if.then89:                                        ; preds = %do.body80
  br label %do.body90, !dbg !4350

do.body90:                                        ; preds = %if.then89
  br label %do.cond91, !dbg !4352

do.cond91:                                        ; preds = %do.body90
  br label %do.end92, !dbg !4352

do.end92:                                         ; preds = %do.cond91
  %call94 = call ptr @get_current() #17, !dbg !4350
  %comm95 = getelementptr inbounds %struct.task_struct, ptr %call94, i32 0, i32 96, !dbg !4350
  %arraydecay96 = getelementptr inbounds [16 x i8], ptr %comm95, i64 0, i64 0, !dbg !4350
  %36 = load i32, ptr %datalen, align 4, !dbg !4350
  %37 = load i32, ptr %datalen, align 4, !dbg !4350
  %38 = load ptr, ptr %data, align 8, !dbg !4350
  %39 = load i32, ptr %datalen, align 4, !dbg !4350
  %call97 = call i32 (ptr, ...) @_printk(ptr noundef @.str.5, ptr noundef %arraydecay96, ptr noundef @__func__.dns_resolver_preparse, i32 noundef %36, i32 noundef %37, ptr noundef %38, i32 noundef %39) #18, !dbg !4350
  store i32 %call97, ptr %tmp93, align 4, !dbg !4352
  %40 = load i32, ptr %tmp93, align 4, !dbg !4350
  br label %if.end98, !dbg !4346

if.end98:                                         ; preds = %do.end92, %do.body80
  br label %do.cond99, !dbg !4349

do.cond99:                                        ; preds = %if.end98
  br label %do.end100, !dbg !4349

do.end100:                                        ; preds = %do.cond99
  %41 = load ptr, ptr %data, align 8, !dbg !4354
  %tobool101 = icmp ne ptr %41, null, !dbg !4354
  br i1 %tobool101, label %lor.lhs.false102, label %if.then107, !dbg !4356

lor.lhs.false102:                                 ; preds = %do.end100
  %42 = load ptr, ptr %data, align 8, !dbg !4357
  %43 = load i32, ptr %datalen, align 4, !dbg !4358
  %sub = sub i32 %43, 1, !dbg !4359
  %idxprom = sext i32 %sub to i64, !dbg !4357
  %arrayidx103 = getelementptr i8, ptr %42, i64 %idxprom, !dbg !4357
  %44 = load i8, ptr %arrayidx103, align 1, !dbg !4357
  %conv104 = zext i8 %44 to i32, !dbg !4357
  %cmp105 = icmp ne i32 %conv104, 0, !dbg !4360
  br i1 %cmp105, label %if.then107, label %if.end108, !dbg !4361

if.then107:                                       ; preds = %lor.lhs.false102, %do.end100
  store i32 -22, ptr %retval, align 4, !dbg !4362
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup425, !dbg !4362

if.end108:                                        ; preds = %lor.lhs.false102
  %45 = load i32, ptr %datalen, align 4, !dbg !4363
  %dec = add i32 %45, -1, !dbg !4363
  store i32 %dec, ptr %datalen, align 4, !dbg !4363
  %46 = load ptr, ptr %data, align 8, !dbg !4364
  %47 = load i32, ptr %datalen, align 4, !dbg !4365
  %idx.ext = sext i32 %47 to i64, !dbg !4366
  %add.ptr = getelementptr i8, ptr %46, i64 %idx.ext, !dbg !4366
  store ptr %add.ptr, ptr %end, align 8, !dbg !4367
  %48 = load ptr, ptr %data, align 8, !dbg !4368
  %49 = load i32, ptr %datalen, align 4, !dbg !4369
  %conv109 = sext i32 %49 to i64, !dbg !4369
  %call110 = call ptr @memchr(ptr noundef %48, i32 noundef 35, i64 noundef %conv109) #17, !dbg !4370
  store ptr %call110, ptr %opt, align 8, !dbg !4371
  %50 = load ptr, ptr %opt, align 8, !dbg !4372
  %tobool111 = icmp ne ptr %50, null, !dbg !4372
  br i1 %tobool111, label %if.else, label %if.then112, !dbg !4373

if.then112:                                       ; preds = %if.end108
  br label %do.body113, !dbg !4374

do.body113:                                       ; preds = %if.then112
  %51 = load i32, ptr @dns_resolver_debug, align 4, !dbg !4376
  %tobool114 = icmp ne i32 %51, 0, !dbg !4376
  %lnot115 = xor i1 %tobool114, true, !dbg !4376
  %lnot117 = xor i1 %lnot115, true, !dbg !4376
  %lnot.ext118 = zext i1 %lnot117 to i32, !dbg !4376
  %conv119 = sext i32 %lnot.ext118 to i64, !dbg !4376
  %expval120 = call i64 @llvm.expect.i64(i64 %conv119, i64 0), !dbg !4376
  %tobool121 = icmp ne i64 %expval120, 0, !dbg !4376
  br i1 %tobool121, label %if.then122, label %if.end131, !dbg !4379

if.then122:                                       ; preds = %do.body113
  br label %do.body123, !dbg !4380

do.body123:                                       ; preds = %if.then122
  br label %do.cond124, !dbg !4382

do.cond124:                                       ; preds = %do.body123
  br label %do.end125, !dbg !4382

do.end125:                                        ; preds = %do.cond124
  %call127 = call ptr @get_current() #17, !dbg !4380
  %comm128 = getelementptr inbounds %struct.task_struct, ptr %call127, i32 0, i32 96, !dbg !4380
  %arraydecay129 = getelementptr inbounds [16 x i8], ptr %comm128, i64 0, i64 0, !dbg !4380
  %call130 = call i32 (ptr, ...) @_printk(ptr noundef @.str.6, ptr noundef %arraydecay129) #18, !dbg !4380
  store i32 %call130, ptr %tmp126, align 4, !dbg !4382
  %52 = load i32, ptr %tmp126, align 4, !dbg !4380
  br label %if.end131, !dbg !4376

if.end131:                                        ; preds = %do.end125, %do.body113
  br label %do.cond132, !dbg !4379

do.cond132:                                       ; preds = %if.end131
  br label %do.end133, !dbg !4379

do.end133:                                        ; preds = %do.cond132
  %53 = load i32, ptr %datalen, align 4, !dbg !4384
  store i32 %53, ptr %result_len, align 4, !dbg !4385
  br label %if.end313, !dbg !4386

if.else:                                          ; preds = %if.end108
  call void @llvm.lifetime.start.p0(i64 8, ptr %next_opt) #16, !dbg !4387
  call void @llvm.dbg.declare(metadata ptr %next_opt, metadata !4124, metadata !DIExpression()), !dbg !4388
  %54 = load ptr, ptr %opt, align 8, !dbg !4389
  %55 = load ptr, ptr %data, align 8, !dbg !4390
  %sub.ptr.lhs.cast = ptrtoint ptr %54 to i64, !dbg !4391
  %sub.ptr.rhs.cast = ptrtoint ptr %55 to i64, !dbg !4391
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !4391
  %conv134 = trunc i64 %sub.ptr.sub to i32, !dbg !4389
  store i32 %conv134, ptr %result_len, align 4, !dbg !4392
  %56 = load ptr, ptr %opt, align 8, !dbg !4393
  %incdec.ptr = getelementptr i8, ptr %56, i32 1, !dbg !4393
  store ptr %incdec.ptr, ptr %opt, align 8, !dbg !4393
  br label %do.body135, !dbg !4394

do.body135:                                       ; preds = %if.else
  %57 = load i32, ptr @dns_resolver_debug, align 4, !dbg !4395
  %tobool136 = icmp ne i32 %57, 0, !dbg !4395
  %lnot137 = xor i1 %tobool136, true, !dbg !4395
  %lnot139 = xor i1 %lnot137, true, !dbg !4395
  %lnot.ext140 = zext i1 %lnot139 to i32, !dbg !4395
  %conv141 = sext i32 %lnot.ext140 to i64, !dbg !4395
  %expval142 = call i64 @llvm.expect.i64(i64 %conv141, i64 0), !dbg !4395
  %tobool143 = icmp ne i64 %expval142, 0, !dbg !4395
  br i1 %tobool143, label %if.then144, label %if.end153, !dbg !4398

if.then144:                                       ; preds = %do.body135
  br label %do.body145, !dbg !4399

do.body145:                                       ; preds = %if.then144
  br label %do.cond146, !dbg !4401

do.cond146:                                       ; preds = %do.body145
  br label %do.end147, !dbg !4401

do.end147:                                        ; preds = %do.cond146
  %call149 = call ptr @get_current() #17, !dbg !4399
  %comm150 = getelementptr inbounds %struct.task_struct, ptr %call149, i32 0, i32 96, !dbg !4399
  %arraydecay151 = getelementptr inbounds [16 x i8], ptr %comm150, i64 0, i64 0, !dbg !4399
  %58 = load ptr, ptr %opt, align 8, !dbg !4399
  %call152 = call i32 (ptr, ...) @_printk(ptr noundef @.str.7, ptr noundef %arraydecay151, ptr noundef %58) #18, !dbg !4399
  store i32 %call152, ptr %tmp148, align 4, !dbg !4401
  %59 = load i32, ptr %tmp148, align 4, !dbg !4399
  br label %if.end153, !dbg !4395

if.end153:                                        ; preds = %do.end147, %do.body135
  br label %do.cond154, !dbg !4398

do.cond154:                                       ; preds = %if.end153
  br label %do.end155, !dbg !4398

do.end155:                                        ; preds = %do.cond154
  br label %do.body156, !dbg !4403

do.body156:                                       ; preds = %do.cond306, %do.end155
  call void @llvm.lifetime.start.p0(i64 4, ptr %opt_len) #16, !dbg !4404
  call void @llvm.dbg.declare(metadata ptr %opt_len, metadata !4127, metadata !DIExpression()), !dbg !4405
  call void @llvm.lifetime.start.p0(i64 4, ptr %opt_nlen) #16, !dbg !4404
  call void @llvm.dbg.declare(metadata ptr %opt_nlen, metadata !4129, metadata !DIExpression()), !dbg !4406
  call void @llvm.lifetime.start.p0(i64 8, ptr %eq) #16, !dbg !4407
  call void @llvm.dbg.declare(metadata ptr %eq, metadata !4130, metadata !DIExpression()), !dbg !4408
  call void @llvm.lifetime.start.p0(i64 128, ptr %optval) #16, !dbg !4409
  call void @llvm.dbg.declare(metadata ptr %optval, metadata !4131, metadata !DIExpression()), !dbg !4410
  %60 = load ptr, ptr %opt, align 8, !dbg !4411
  %61 = load ptr, ptr %end, align 8, !dbg !4412
  %62 = load ptr, ptr %opt, align 8, !dbg !4413
  %sub.ptr.lhs.cast157 = ptrtoint ptr %61 to i64, !dbg !4414
  %sub.ptr.rhs.cast158 = ptrtoint ptr %62 to i64, !dbg !4414
  %sub.ptr.sub159 = sub i64 %sub.ptr.lhs.cast157, %sub.ptr.rhs.cast158, !dbg !4414
  %call160 = call ptr @memchr(ptr noundef %60, i32 noundef 35, i64 noundef %sub.ptr.sub159) #17, !dbg !4415
  %tobool161 = icmp ne ptr %call160, null, !dbg !4415
  br i1 %tobool161, label %cond.true, label %cond.false, !dbg !4415

cond.true:                                        ; preds = %do.body156
  br label %cond.end, !dbg !4415

cond.false:                                       ; preds = %do.body156
  %63 = load ptr, ptr %end, align 8, !dbg !4416
  br label %cond.end, !dbg !4415

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %call160, %cond.true ], [ %63, %cond.false ], !dbg !4415
  store ptr %cond, ptr %next_opt, align 8, !dbg !4417
  %64 = load ptr, ptr %next_opt, align 8, !dbg !4418
  %65 = load ptr, ptr %opt, align 8, !dbg !4419
  %sub.ptr.lhs.cast162 = ptrtoint ptr %64 to i64, !dbg !4420
  %sub.ptr.rhs.cast163 = ptrtoint ptr %65 to i64, !dbg !4420
  %sub.ptr.sub164 = sub i64 %sub.ptr.lhs.cast162, %sub.ptr.rhs.cast163, !dbg !4420
  %conv165 = trunc i64 %sub.ptr.sub164 to i32, !dbg !4418
  store i32 %conv165, ptr %opt_len, align 4, !dbg !4421
  %66 = load i32, ptr %opt_len, align 4, !dbg !4422
  %cmp166 = icmp sle i32 %66, 0, !dbg !4424
  br i1 %cmp166, label %if.then172, label %lor.lhs.false168, !dbg !4425

lor.lhs.false168:                                 ; preds = %cond.end
  %67 = load i32, ptr %opt_len, align 4, !dbg !4426
  %conv169 = sext i32 %67 to i64, !dbg !4426
  %cmp170 = icmp ugt i64 %conv169, 128, !dbg !4427
  br i1 %cmp170, label %if.then172, label %if.end182, !dbg !4428

if.then172:                                       ; preds = %lor.lhs.false168, %cond.end
  %call173 = call i32 @___ratelimit(ptr noundef @dns_resolver_preparse._rs.8, ptr noundef @__func__.dns_resolver_preparse) #17, !dbg !4429
  %tobool174 = icmp ne i32 %call173, 0, !dbg !4429
  br i1 %tobool174, label %if.then175, label %if.end181, !dbg !4433

if.then175:                                       ; preds = %if.then172
  br label %do.body176, !dbg !4434

do.body176:                                       ; preds = %if.then175
  br label %do.cond177, !dbg !4436

do.cond177:                                       ; preds = %do.body176
  br label %do.end178, !dbg !4436

do.end178:                                        ; preds = %do.cond177
  %68 = load i32, ptr %opt_len, align 4, !dbg !4434
  %call180 = call i32 (ptr, ...) @_printk(ptr noundef @.str.9, i32 noundef %68) #18, !dbg !4434
  store i32 %call180, ptr %tmp179, align 4, !dbg !4436
  %69 = load i32, ptr %tmp179, align 4, !dbg !4434
  br label %if.end181, !dbg !4429

if.end181:                                        ; preds = %do.end178, %if.then172
  store i32 -22, ptr %retval, align 4, !dbg !4438
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup302, !dbg !4438

if.end182:                                        ; preds = %lor.lhs.false168
  %70 = load ptr, ptr %opt, align 8, !dbg !4439
  %71 = load i32, ptr %opt_len, align 4, !dbg !4440
  %conv183 = sext i32 %71 to i64, !dbg !4440
  %call184 = call ptr @memchr(ptr noundef %70, i32 noundef 61, i64 noundef %conv183) #17, !dbg !4441
  store ptr %call184, ptr %eq, align 8, !dbg !4442
  %72 = load ptr, ptr %eq, align 8, !dbg !4443
  %tobool185 = icmp ne ptr %72, null, !dbg !4443
  br i1 %tobool185, label %if.then186, label %if.else200, !dbg !4445

if.then186:                                       ; preds = %if.end182
  %73 = load ptr, ptr %eq, align 8, !dbg !4446
  %74 = load ptr, ptr %opt, align 8, !dbg !4448
  %sub.ptr.lhs.cast187 = ptrtoint ptr %73 to i64, !dbg !4449
  %sub.ptr.rhs.cast188 = ptrtoint ptr %74 to i64, !dbg !4449
  %sub.ptr.sub189 = sub i64 %sub.ptr.lhs.cast187, %sub.ptr.rhs.cast188, !dbg !4449
  %conv190 = trunc i64 %sub.ptr.sub189 to i32, !dbg !4446
  store i32 %conv190, ptr %opt_nlen, align 4, !dbg !4450
  %75 = load ptr, ptr %eq, align 8, !dbg !4451
  %incdec.ptr191 = getelementptr i8, ptr %75, i32 1, !dbg !4451
  store ptr %incdec.ptr191, ptr %eq, align 8, !dbg !4451
  %arraydecay192 = getelementptr inbounds [128 x i8], ptr %optval, i64 0, i64 0, !dbg !4452
  %76 = load ptr, ptr %eq, align 8, !dbg !4453
  %77 = load ptr, ptr %next_opt, align 8, !dbg !4454
  %78 = load ptr, ptr %eq, align 8, !dbg !4455
  %sub.ptr.lhs.cast193 = ptrtoint ptr %77 to i64, !dbg !4456
  %sub.ptr.rhs.cast194 = ptrtoint ptr %78 to i64, !dbg !4456
  %sub.ptr.sub195 = sub i64 %sub.ptr.lhs.cast193, %sub.ptr.rhs.cast194, !dbg !4456
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %arraydecay192, ptr align 1 %76, i64 %sub.ptr.sub195, i1 false), !dbg !4452
  %79 = load ptr, ptr %next_opt, align 8, !dbg !4457
  %80 = load ptr, ptr %eq, align 8, !dbg !4458
  %sub.ptr.lhs.cast196 = ptrtoint ptr %79 to i64, !dbg !4459
  %sub.ptr.rhs.cast197 = ptrtoint ptr %80 to i64, !dbg !4459
  %sub.ptr.sub198 = sub i64 %sub.ptr.lhs.cast196, %sub.ptr.rhs.cast197, !dbg !4459
  %arrayidx199 = getelementptr [128 x i8], ptr %optval, i64 0, i64 %sub.ptr.sub198, !dbg !4460
  store i8 0, ptr %arrayidx199, align 1, !dbg !4461
  br label %if.end202, !dbg !4462

if.else200:                                       ; preds = %if.end182
  %81 = load i32, ptr %opt_len, align 4, !dbg !4463
  store i32 %81, ptr %opt_nlen, align 4, !dbg !4465
  %arrayidx201 = getelementptr [128 x i8], ptr %optval, i64 0, i64 0, !dbg !4466
  store i8 0, ptr %arrayidx201, align 16, !dbg !4467
  br label %if.end202

if.end202:                                        ; preds = %if.else200, %if.then186
  br label %do.body203, !dbg !4468

do.body203:                                       ; preds = %if.end202
  %82 = load i32, ptr @dns_resolver_debug, align 4, !dbg !4469
  %tobool204 = icmp ne i32 %82, 0, !dbg !4469
  %lnot205 = xor i1 %tobool204, true, !dbg !4469
  %lnot207 = xor i1 %lnot205, true, !dbg !4469
  %lnot.ext208 = zext i1 %lnot207 to i32, !dbg !4469
  %conv209 = sext i32 %lnot.ext208 to i64, !dbg !4469
  %expval210 = call i64 @llvm.expect.i64(i64 %conv209, i64 0), !dbg !4469
  %tobool211 = icmp ne i64 %expval210, 0, !dbg !4469
  br i1 %tobool211, label %if.then212, label %if.end222, !dbg !4472

if.then212:                                       ; preds = %do.body203
  br label %do.body213, !dbg !4473

do.body213:                                       ; preds = %if.then212
  br label %do.cond214, !dbg !4475

do.cond214:                                       ; preds = %do.body213
  br label %do.end215, !dbg !4475

do.end215:                                        ; preds = %do.cond214
  %call217 = call ptr @get_current() #17, !dbg !4473
  %comm218 = getelementptr inbounds %struct.task_struct, ptr %call217, i32 0, i32 96, !dbg !4473
  %arraydecay219 = getelementptr inbounds [16 x i8], ptr %comm218, i64 0, i64 0, !dbg !4473
  %83 = load i32, ptr %opt_nlen, align 4, !dbg !4473
  %84 = load i32, ptr %opt_nlen, align 4, !dbg !4473
  %85 = load ptr, ptr %opt, align 8, !dbg !4473
  %arraydecay220 = getelementptr inbounds [128 x i8], ptr %optval, i64 0, i64 0, !dbg !4473
  %call221 = call i32 (ptr, ...) @_printk(ptr noundef @.str.10, ptr noundef %arraydecay219, i32 noundef %83, i32 noundef %84, ptr noundef %85, ptr noundef %arraydecay220) #18, !dbg !4473
  store i32 %call221, ptr %tmp216, align 4, !dbg !4475
  %86 = load i32, ptr %tmp216, align 4, !dbg !4473
  br label %if.end222, !dbg !4469

if.end222:                                        ; preds = %do.end215, %do.body203
  br label %do.cond223, !dbg !4472

do.cond223:                                       ; preds = %if.end222
  br label %do.end224, !dbg !4472

do.end224:                                        ; preds = %do.cond223
  %87 = load i32, ptr %opt_nlen, align 4, !dbg !4477
  %conv225 = sext i32 %87 to i64, !dbg !4477
  %cmp226 = icmp eq i64 %conv225, 8, !dbg !4479
  br i1 %cmp226, label %land.lhs.true228, label %if.end292, !dbg !4480

land.lhs.true228:                                 ; preds = %do.end224
  %88 = load ptr, ptr %opt, align 8, !dbg !4481
  %89 = load i32, ptr %opt_nlen, align 4, !dbg !4482
  %conv229 = sext i32 %89 to i64, !dbg !4482
  %call230 = call i32 @memcmp(ptr noundef %88, ptr noundef @.str.11, i64 noundef %conv229) #17, !dbg !4483
  %cmp231 = icmp eq i32 %call230, 0, !dbg !4484
  br i1 %cmp231, label %if.then233, label %if.end292, !dbg !4485

if.then233:                                       ; preds = %land.lhs.true228
  br label %do.body234, !dbg !4486

do.body234:                                       ; preds = %if.then233
  %90 = load i32, ptr @dns_resolver_debug, align 4, !dbg !4488
  %tobool235 = icmp ne i32 %90, 0, !dbg !4488
  %lnot236 = xor i1 %tobool235, true, !dbg !4488
  %lnot238 = xor i1 %lnot236, true, !dbg !4488
  %lnot.ext239 = zext i1 %lnot238 to i32, !dbg !4488
  %conv240 = sext i32 %lnot.ext239 to i64, !dbg !4488
  %expval241 = call i64 @llvm.expect.i64(i64 %conv240, i64 0), !dbg !4488
  %tobool242 = icmp ne i64 %expval241, 0, !dbg !4488
  br i1 %tobool242, label %if.then243, label %if.end252, !dbg !4491

if.then243:                                       ; preds = %do.body234
  br label %do.body244, !dbg !4492

do.body244:                                       ; preds = %if.then243
  br label %do.cond245, !dbg !4494

do.cond245:                                       ; preds = %do.body244
  br label %do.end246, !dbg !4494

do.end246:                                        ; preds = %do.cond245
  %call248 = call ptr @get_current() #17, !dbg !4492
  %comm249 = getelementptr inbounds %struct.task_struct, ptr %call248, i32 0, i32 96, !dbg !4492
  %arraydecay250 = getelementptr inbounds [16 x i8], ptr %comm249, i64 0, i64 0, !dbg !4492
  %call251 = call i32 (ptr, ...) @_printk(ptr noundef @.str.12, ptr noundef %arraydecay250) #18, !dbg !4492
  store i32 %call251, ptr %tmp247, align 4, !dbg !4494
  %91 = load i32, ptr %tmp247, align 4, !dbg !4492
  br label %if.end252, !dbg !4488

if.end252:                                        ; preds = %do.end246, %do.body234
  br label %do.cond253, !dbg !4491

do.cond253:                                       ; preds = %if.end252
  br label %do.end254, !dbg !4491

do.end254:                                        ; preds = %do.cond253
  %arraydecay255 = getelementptr inbounds [128 x i8], ptr %optval, i64 0, i64 0, !dbg !4496
  %call256 = call i32 @kstrtoul(ptr noundef %arraydecay255, i32 noundef 10, ptr noundef %derrno) #17, !dbg !4497
  store i32 %call256, ptr %ret, align 4, !dbg !4498
  %92 = load i32, ptr %ret, align 4, !dbg !4499
  %cmp257 = icmp slt i32 %92, 0, !dbg !4501
  br i1 %cmp257, label %if.then259, label %if.end260, !dbg !4502

if.then259:                                       ; preds = %do.end254
  br label %bad_option_value, !dbg !4503

if.end260:                                        ; preds = %do.end254
  %93 = load i64, ptr %derrno, align 8, !dbg !4504
  %cmp261 = icmp ult i64 %93, 1, !dbg !4506
  br i1 %cmp261, label %if.then266, label %lor.lhs.false263, !dbg !4507

lor.lhs.false263:                                 ; preds = %if.end260
  %94 = load i64, ptr %derrno, align 8, !dbg !4508
  %cmp264 = icmp ugt i64 %94, 511, !dbg !4509
  br i1 %cmp264, label %if.then266, label %if.end267, !dbg !4510

if.then266:                                       ; preds = %lor.lhs.false263, %if.end260
  br label %bad_option_value, !dbg !4511

if.end267:                                        ; preds = %lor.lhs.false263
  br label %do.body268, !dbg !4512

do.body268:                                       ; preds = %if.end267
  %95 = load i32, ptr @dns_resolver_debug, align 4, !dbg !4513
  %tobool269 = icmp ne i32 %95, 0, !dbg !4513
  %lnot270 = xor i1 %tobool269, true, !dbg !4513
  %lnot272 = xor i1 %lnot270, true, !dbg !4513
  %lnot.ext273 = zext i1 %lnot272 to i32, !dbg !4513
  %conv274 = sext i32 %lnot.ext273 to i64, !dbg !4513
  %expval275 = call i64 @llvm.expect.i64(i64 %conv274, i64 0), !dbg !4513
  %tobool276 = icmp ne i64 %expval275, 0, !dbg !4513
  br i1 %tobool276, label %if.then277, label %if.end286, !dbg !4516

if.then277:                                       ; preds = %do.body268
  br label %do.body278, !dbg !4517

do.body278:                                       ; preds = %if.then277
  br label %do.cond279, !dbg !4519

do.cond279:                                       ; preds = %do.body278
  br label %do.end280, !dbg !4519

do.end280:                                        ; preds = %do.cond279
  %call282 = call ptr @get_current() #17, !dbg !4517
  %comm283 = getelementptr inbounds %struct.task_struct, ptr %call282, i32 0, i32 96, !dbg !4517
  %arraydecay284 = getelementptr inbounds [16 x i8], ptr %comm283, i64 0, i64 0, !dbg !4517
  %96 = load i64, ptr %derrno, align 8, !dbg !4517
  %call285 = call i32 (ptr, ...) @_printk(ptr noundef @.str.13, ptr noundef %arraydecay284, i64 noundef %96) #18, !dbg !4517
  store i32 %call285, ptr %tmp281, align 4, !dbg !4519
  %97 = load i32, ptr %tmp281, align 4, !dbg !4517
  br label %if.end286, !dbg !4513

if.end286:                                        ; preds = %do.end280, %do.body268
  br label %do.cond287, !dbg !4516

do.cond287:                                       ; preds = %if.end286
  br label %do.end288, !dbg !4516

do.end288:                                        ; preds = %do.cond287
  %98 = load i64, ptr %derrno, align 8, !dbg !4521
  %sub289 = sub i64 0, %98, !dbg !4522
  %call290 = call ptr @ERR_PTR(i64 noundef %sub289) #17, !dbg !4523
  %99 = load ptr, ptr %prep.addr, align 8, !dbg !4524
  %payload = getelementptr inbounds %struct.key_preparsed_payload, ptr %99, i32 0, i32 2, !dbg !4525
  %arrayidx291 = getelementptr [4 x ptr], ptr %payload, i64 0, i64 1, !dbg !4524
  store ptr %call290, ptr %arrayidx291, align 8, !dbg !4526
  store i32 24, ptr %cleanup.dest.slot, align 4
  br label %cleanup302, !dbg !4527

if.end292:                                        ; preds = %land.lhs.true228, %do.end224
  br label %bad_option_value, !dbg !4528

bad_option_value:                                 ; preds = %if.end292, %if.then266, %if.then259
  call void @llvm.dbg.label(metadata !4135), !dbg !4529
  %call293 = call i32 @___ratelimit(ptr noundef @dns_resolver_preparse._rs.14, ptr noundef @__func__.dns_resolver_preparse) #17, !dbg !4530
  %tobool294 = icmp ne i32 %call293, 0, !dbg !4530
  br i1 %tobool294, label %if.then295, label %if.end301, !dbg !4533

if.then295:                                       ; preds = %bad_option_value
  br label %do.body296, !dbg !4534

do.body296:                                       ; preds = %if.then295
  br label %do.cond297, !dbg !4536

do.cond297:                                       ; preds = %do.body296
  br label %do.end298, !dbg !4536

do.end298:                                        ; preds = %do.cond297
  %100 = load i32, ptr %opt_nlen, align 4, !dbg !4534
  %101 = load i32, ptr %opt_nlen, align 4, !dbg !4534
  %102 = load ptr, ptr %opt, align 8, !dbg !4534
  %call300 = call i32 (ptr, ...) @_printk(ptr noundef @.str.15, i32 noundef %100, i32 noundef %101, ptr noundef %102) #18, !dbg !4534
  store i32 %call300, ptr %tmp299, align 4, !dbg !4536
  %103 = load i32, ptr %tmp299, align 4, !dbg !4534
  br label %if.end301, !dbg !4530

if.end301:                                        ; preds = %do.end298, %bad_option_value
  store i32 -22, ptr %retval, align 4, !dbg !4538
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup302, !dbg !4538

cleanup302:                                       ; preds = %if.end301, %do.end288, %if.end181
  call void @llvm.lifetime.end.p0(i64 128, ptr %optval) #16, !dbg !4539
  call void @llvm.lifetime.end.p0(i64 8, ptr %eq) #16, !dbg !4539
  call void @llvm.lifetime.end.p0(i64 4, ptr %opt_nlen) #16, !dbg !4539
  call void @llvm.lifetime.end.p0(i64 4, ptr %opt_len) #16, !dbg !4539
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup311 [
    i32 24, label %do.cond306
  ]

do.cond306:                                       ; preds = %cleanup302
  %104 = load ptr, ptr %next_opt, align 8, !dbg !4540
  %add.ptr307 = getelementptr i8, ptr %104, i64 1, !dbg !4541
  store ptr %add.ptr307, ptr %opt, align 8, !dbg !4542
  %105 = load ptr, ptr %opt, align 8, !dbg !4543
  %106 = load ptr, ptr %end, align 8, !dbg !4544
  %cmp308 = icmp ult ptr %105, %106, !dbg !4545
  br i1 %cmp308, label %do.body156, label %do.end310, !dbg !4546, !llvm.loop !4547

do.end310:                                        ; preds = %do.cond306
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4551
  br label %cleanup311, !dbg !4551

cleanup311:                                       ; preds = %do.end310, %cleanup302
  call void @llvm.lifetime.end.p0(i64 8, ptr %next_opt) #16, !dbg !4551
  %cleanup.dest312 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest312, label %cleanup425 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup311
  br label %if.end313

if.end313:                                        ; preds = %cleanup.cont, %do.end133
  %107 = load ptr, ptr %prep.addr, align 8, !dbg !4552
  %payload314 = getelementptr inbounds %struct.key_preparsed_payload, ptr %107, i32 0, i32 2, !dbg !4554
  %arrayidx315 = getelementptr [4 x ptr], ptr %payload314, i64 0, i64 1, !dbg !4552
  %108 = load ptr, ptr %arrayidx315, align 8, !dbg !4552
  %tobool316 = icmp ne ptr %108, null, !dbg !4552
  br i1 %tobool316, label %if.then317, label %if.end342, !dbg !4555

if.then317:                                       ; preds = %if.end313
  br label %do.body318, !dbg !4556

do.body318:                                       ; preds = %if.then317
  %109 = load i32, ptr @dns_resolver_debug, align 4, !dbg !4558
  %tobool319 = icmp ne i32 %109, 0, !dbg !4558
  %lnot320 = xor i1 %tobool319, true, !dbg !4558
  %lnot322 = xor i1 %lnot320, true, !dbg !4558
  %lnot.ext323 = zext i1 %lnot322 to i32, !dbg !4558
  %conv324 = sext i32 %lnot.ext323 to i64, !dbg !4558
  %expval325 = call i64 @llvm.expect.i64(i64 %conv324, i64 0), !dbg !4558
  %tobool326 = icmp ne i64 %expval325, 0, !dbg !4558
  br i1 %tobool326, label %if.then327, label %if.end339, !dbg !4561

if.then327:                                       ; preds = %do.body318
  br label %do.body328, !dbg !4562

do.body328:                                       ; preds = %if.then327
  br label %do.cond329, !dbg !4564

do.cond329:                                       ; preds = %do.body328
  br label %do.end330, !dbg !4564

do.end330:                                        ; preds = %do.cond329
  %call332 = call ptr @get_current() #17, !dbg !4562
  %comm333 = getelementptr inbounds %struct.task_struct, ptr %call332, i32 0, i32 96, !dbg !4562
  %arraydecay334 = getelementptr inbounds [16 x i8], ptr %comm333, i64 0, i64 0, !dbg !4562
  %110 = load ptr, ptr %prep.addr, align 8, !dbg !4562
  %payload335 = getelementptr inbounds %struct.key_preparsed_payload, ptr %110, i32 0, i32 2, !dbg !4562
  %arrayidx336 = getelementptr [4 x ptr], ptr %payload335, i64 0, i64 1, !dbg !4562
  %111 = load ptr, ptr %arrayidx336, align 8, !dbg !4562
  %call337 = call i64 @PTR_ERR(ptr noundef %111) #17, !dbg !4562
  %call338 = call i32 (ptr, ...) @_printk(ptr noundef @.str.16, ptr noundef %arraydecay334, ptr noundef @__func__.dns_resolver_preparse, i64 noundef %call337) #18, !dbg !4562
  store i32 %call338, ptr %tmp331, align 4, !dbg !4564
  %112 = load i32, ptr %tmp331, align 4, !dbg !4562
  br label %if.end339, !dbg !4558

if.end339:                                        ; preds = %do.end330, %do.body318
  br label %do.cond340, !dbg !4561

do.cond340:                                       ; preds = %if.end339
  br label %do.end341, !dbg !4561

do.end341:                                        ; preds = %do.cond340
  store i32 0, ptr %retval, align 4, !dbg !4566
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup425, !dbg !4566

if.end342:                                        ; preds = %if.end313
  br label %store_result, !dbg !4567

store_result:                                     ; preds = %if.end342, %cleanup
  call void @llvm.dbg.label(metadata !4136), !dbg !4568
  br label %do.body344, !dbg !4569

do.body344:                                       ; preds = %store_result
  %113 = load i32, ptr @dns_resolver_debug, align 4, !dbg !4570
  %tobool345 = icmp ne i32 %113, 0, !dbg !4570
  %lnot346 = xor i1 %tobool345, true, !dbg !4570
  %lnot348 = xor i1 %lnot346, true, !dbg !4570
  %lnot.ext349 = zext i1 %lnot348 to i32, !dbg !4570
  %conv350 = sext i32 %lnot.ext349 to i64, !dbg !4570
  %expval351 = call i64 @llvm.expect.i64(i64 %conv350, i64 0), !dbg !4570
  %tobool352 = icmp ne i64 %expval351, 0, !dbg !4570
  br i1 %tobool352, label %if.then353, label %if.end362, !dbg !4573

if.then353:                                       ; preds = %do.body344
  br label %do.body354, !dbg !4574

do.body354:                                       ; preds = %if.then353
  br label %do.cond355, !dbg !4576

do.cond355:                                       ; preds = %do.body354
  br label %do.end356, !dbg !4576

do.end356:                                        ; preds = %do.cond355
  %call358 = call ptr @get_current() #17, !dbg !4574
  %comm359 = getelementptr inbounds %struct.task_struct, ptr %call358, i32 0, i32 96, !dbg !4574
  %arraydecay360 = getelementptr inbounds [16 x i8], ptr %comm359, i64 0, i64 0, !dbg !4574
  %call361 = call i32 (ptr, ...) @_printk(ptr noundef @.str.17, ptr noundef %arraydecay360) #18, !dbg !4574
  store i32 %call361, ptr %tmp357, align 4, !dbg !4576
  %114 = load i32, ptr %tmp357, align 4, !dbg !4574
  br label %if.end362, !dbg !4570

if.end362:                                        ; preds = %do.end356, %do.body344
  br label %do.cond363, !dbg !4573

do.cond363:                                       ; preds = %if.end362
  br label %do.end364, !dbg !4573

do.end364:                                        ; preds = %do.cond363
  %115 = load i32, ptr %result_len, align 4, !dbg !4578
  %conv365 = sext i32 %115 to i64, !dbg !4578
  %116 = load ptr, ptr %prep.addr, align 8, !dbg !4579
  %quotalen = getelementptr inbounds %struct.key_preparsed_payload, ptr %116, i32 0, i32 5, !dbg !4580
  store i64 %conv365, ptr %quotalen, align 8, !dbg !4581
  %117 = load i32, ptr %result_len, align 4, !dbg !4582
  %conv366 = sext i32 %117 to i64, !dbg !4582
  %add367 = add i64 24, %conv366, !dbg !4583
  %add368 = add i64 %add367, 1, !dbg !4584
  %call369 = call noalias ptr @kmalloc(i64 noundef %add368, i32 noundef 3264) #19, !dbg !4585
  store ptr %call369, ptr %upayload, align 8, !dbg !4586
  %118 = load ptr, ptr %upayload, align 8, !dbg !4587
  %tobool370 = icmp ne ptr %118, null, !dbg !4587
  br i1 %tobool370, label %if.end393, label %if.then371, !dbg !4589

if.then371:                                       ; preds = %do.end364
  br label %do.body372, !dbg !4590

do.body372:                                       ; preds = %if.then371
  %119 = load i32, ptr @dns_resolver_debug, align 4, !dbg !4592
  %tobool373 = icmp ne i32 %119, 0, !dbg !4592
  %lnot374 = xor i1 %tobool373, true, !dbg !4592
  %lnot376 = xor i1 %lnot374, true, !dbg !4592
  %lnot.ext377 = zext i1 %lnot376 to i32, !dbg !4592
  %conv378 = sext i32 %lnot.ext377 to i64, !dbg !4592
  %expval379 = call i64 @llvm.expect.i64(i64 %conv378, i64 0), !dbg !4592
  %tobool380 = icmp ne i64 %expval379, 0, !dbg !4592
  br i1 %tobool380, label %if.then381, label %if.end390, !dbg !4595

if.then381:                                       ; preds = %do.body372
  br label %do.body382, !dbg !4596

do.body382:                                       ; preds = %if.then381
  br label %do.cond383, !dbg !4598

do.cond383:                                       ; preds = %do.body382
  br label %do.end384, !dbg !4598

do.end384:                                        ; preds = %do.cond383
  %call386 = call ptr @get_current() #17, !dbg !4596
  %comm387 = getelementptr inbounds %struct.task_struct, ptr %call386, i32 0, i32 96, !dbg !4596
  %arraydecay388 = getelementptr inbounds [16 x i8], ptr %comm387, i64 0, i64 0, !dbg !4596
  %call389 = call i32 (ptr, ...) @_printk(ptr noundef @.str.18, ptr noundef %arraydecay388, ptr noundef @__func__.dns_resolver_preparse) #18, !dbg !4596
  store i32 %call389, ptr %tmp385, align 4, !dbg !4598
  %120 = load i32, ptr %tmp385, align 4, !dbg !4596
  br label %if.end390, !dbg !4592

if.end390:                                        ; preds = %do.end384, %do.body372
  br label %do.cond391, !dbg !4595

do.cond391:                                       ; preds = %if.end390
  br label %do.end392, !dbg !4595

do.end392:                                        ; preds = %do.cond391
  store i32 -12, ptr %retval, align 4, !dbg !4600
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup425, !dbg !4600

if.end393:                                        ; preds = %do.end364
  %121 = load i32, ptr %result_len, align 4, !dbg !4601
  %conv394 = trunc i32 %121 to i16, !dbg !4601
  %122 = load ptr, ptr %upayload, align 8, !dbg !4602
  %datalen395 = getelementptr inbounds %struct.user_key_payload, ptr %122, i32 0, i32 1, !dbg !4603
  store i16 %conv394, ptr %datalen395, align 8, !dbg !4604
  %123 = load ptr, ptr %upayload, align 8, !dbg !4605
  %data396 = getelementptr inbounds %struct.user_key_payload, ptr %123, i32 0, i32 3, !dbg !4606
  %arraydecay397 = getelementptr inbounds [0 x i8], ptr %data396, i64 0, i64 0, !dbg !4607
  %124 = load ptr, ptr %data, align 8, !dbg !4608
  %125 = load i32, ptr %result_len, align 4, !dbg !4609
  %conv398 = sext i32 %125 to i64, !dbg !4609
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arraydecay397, ptr align 1 %124, i64 %conv398, i1 false), !dbg !4607
  %126 = load ptr, ptr %upayload, align 8, !dbg !4610
  %data399 = getelementptr inbounds %struct.user_key_payload, ptr %126, i32 0, i32 3, !dbg !4611
  %127 = load i32, ptr %result_len, align 4, !dbg !4612
  %idxprom400 = sext i32 %127 to i64, !dbg !4610
  %arrayidx401 = getelementptr [0 x i8], ptr %data399, i64 0, i64 %idxprom400, !dbg !4610
  store i8 0, ptr %arrayidx401, align 1, !dbg !4613
  %128 = load ptr, ptr %upayload, align 8, !dbg !4614
  %129 = load ptr, ptr %prep.addr, align 8, !dbg !4615
  %payload402 = getelementptr inbounds %struct.key_preparsed_payload, ptr %129, i32 0, i32 2, !dbg !4616
  %arrayidx403 = getelementptr [4 x ptr], ptr %payload402, i64 0, i64 0, !dbg !4615
  store ptr %128, ptr %arrayidx403, align 8, !dbg !4617
  br label %do.body404, !dbg !4618

do.body404:                                       ; preds = %if.end393
  %130 = load i32, ptr @dns_resolver_debug, align 4, !dbg !4619
  %tobool405 = icmp ne i32 %130, 0, !dbg !4619
  %lnot406 = xor i1 %tobool405, true, !dbg !4619
  %lnot408 = xor i1 %lnot406, true, !dbg !4619
  %lnot.ext409 = zext i1 %lnot408 to i32, !dbg !4619
  %conv410 = sext i32 %lnot.ext409 to i64, !dbg !4619
  %expval411 = call i64 @llvm.expect.i64(i64 %conv410, i64 0), !dbg !4619
  %tobool412 = icmp ne i64 %expval411, 0, !dbg !4619
  br i1 %tobool412, label %if.then413, label %if.end422, !dbg !4622

if.then413:                                       ; preds = %do.body404
  br label %do.body414, !dbg !4623

do.body414:                                       ; preds = %if.then413
  br label %do.cond415, !dbg !4625

do.cond415:                                       ; preds = %do.body414
  br label %do.end416, !dbg !4625

do.end416:                                        ; preds = %do.cond415
  %call418 = call ptr @get_current() #17, !dbg !4623
  %comm419 = getelementptr inbounds %struct.task_struct, ptr %call418, i32 0, i32 96, !dbg !4623
  %arraydecay420 = getelementptr inbounds [16 x i8], ptr %comm419, i64 0, i64 0, !dbg !4623
  %call421 = call i32 (ptr, ...) @_printk(ptr noundef @.str.19, ptr noundef %arraydecay420, ptr noundef @__func__.dns_resolver_preparse) #18, !dbg !4623
  store i32 %call421, ptr %tmp417, align 4, !dbg !4625
  %131 = load i32, ptr %tmp417, align 4, !dbg !4623
  br label %if.end422, !dbg !4619

if.end422:                                        ; preds = %do.end416, %do.body404
  br label %do.cond423, !dbg !4622

do.cond423:                                       ; preds = %if.end422
  br label %do.end424, !dbg !4622

do.end424:                                        ; preds = %do.cond423
  store i32 0, ptr %retval, align 4, !dbg !4627
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup425, !dbg !4627

cleanup425:                                       ; preds = %do.end424, %do.end392, %cleanup, %do.end341, %cleanup311, %if.then107, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %opt) #16, !dbg !4628
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #16, !dbg !4628
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #16, !dbg !4628
  call void @llvm.lifetime.end.p0(i64 4, ptr %result_len) #16, !dbg !4628
  call void @llvm.lifetime.end.p0(i64 4, ptr %datalen) #16, !dbg !4628
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !4628
  call void @llvm.lifetime.end.p0(i64 8, ptr %derrno) #16, !dbg !4628
  call void @llvm.lifetime.end.p0(i64 8, ptr %upayload) #16, !dbg !4628
  %132 = load i32, ptr %retval, align 4, !dbg !4628
  ret i32 %132, !dbg !4628
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dns_resolver_free_preparse(ptr noundef %prep) #0 align 16 !dbg !4629 {
entry:
  %prep.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %prep, ptr %prep.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prep.addr, metadata !4631, metadata !DIExpression()), !dbg !4632
  store i32 0, ptr %tmp, align 4, !dbg !4633
  %0 = load i32, ptr %tmp, align 4, !dbg !4636
  %1 = load ptr, ptr %prep.addr, align 8, !dbg !4637
  %payload = getelementptr inbounds %struct.key_preparsed_payload, ptr %1, i32 0, i32 2, !dbg !4638
  %arrayidx = getelementptr [4 x ptr], ptr %payload, i64 0, i64 0, !dbg !4637
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !4637
  call void @kfree(ptr noundef %2) #17, !dbg !4639
  ret void, !dbg !4640
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @generic_key_instantiate(ptr noundef, ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @dns_resolver_match_preparse(ptr noundef %match_data) #0 align 16 !dbg !4641 {
entry:
  %match_data.addr = alloca ptr, align 8
  store ptr %match_data, ptr %match_data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %match_data.addr, metadata !4643, metadata !DIExpression()), !dbg !4644
  %0 = load ptr, ptr %match_data.addr, align 8, !dbg !4645
  %lookup_type = getelementptr inbounds %struct.key_match_data, ptr %0, i32 0, i32 3, !dbg !4646
  store i32 1, ptr %lookup_type, align 8, !dbg !4647
  %1 = load ptr, ptr %match_data.addr, align 8, !dbg !4648
  %cmp = getelementptr inbounds %struct.key_match_data, ptr %1, i32 0, i32 0, !dbg !4649
  store ptr @dns_resolver_cmp, ptr %cmp, align 8, !dbg !4650
  ret i32 0, !dbg !4651
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @user_revoke(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @user_destroy(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dns_resolver_describe(ptr noundef %key, ptr noundef %m) #0 align 16 !dbg !4652 {
entry:
  %key.addr = alloca ptr, align 8
  %m.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !4654, metadata !DIExpression()), !dbg !4659
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !4655, metadata !DIExpression()), !dbg !4660
  %0 = load ptr, ptr %m.addr, align 8, !dbg !4661
  %1 = load ptr, ptr %key.addr, align 8, !dbg !4662
  %2 = getelementptr inbounds %struct.key, ptr %1, i32 0, i32 15, !dbg !4663
  %description = getelementptr inbounds %struct.anon.23, ptr %2, i32 0, i32 4, !dbg !4663
  %3 = load ptr, ptr %description, align 8, !dbg !4663
  call void @seq_puts(ptr noundef %0, ptr noundef %3) #17, !dbg !4664
  %4 = load ptr, ptr %key.addr, align 8, !dbg !4665
  %call = call zeroext i1 @key_is_positive(ptr noundef %4) #17, !dbg !4666
  br i1 %call, label %if.then, label %if.end4, !dbg !4667

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #16, !dbg !4668
  call void @llvm.dbg.declare(metadata ptr %err, metadata !4656, metadata !DIExpression()), !dbg !4669
  %5 = load ptr, ptr %key.addr, align 8, !dbg !4670
  %6 = getelementptr inbounds %struct.key, ptr %5, i32 0, i32 16, !dbg !4671
  %arrayidx = getelementptr [4 x ptr], ptr %6, i64 0, i64 1, !dbg !4670
  %7 = load ptr, ptr %arrayidx, align 8, !dbg !4670
  %call1 = call i64 @PTR_ERR(ptr noundef %7) #17, !dbg !4672
  %conv = trunc i64 %call1 to i32, !dbg !4672
  store i32 %conv, ptr %err, align 4, !dbg !4669
  %8 = load i32, ptr %err, align 4, !dbg !4673
  %tobool = icmp ne i32 %8, 0, !dbg !4673
  br i1 %tobool, label %if.then2, label %if.else, !dbg !4675

if.then2:                                         ; preds = %if.then
  %9 = load ptr, ptr %m.addr, align 8, !dbg !4676
  %10 = load i32, ptr %err, align 4, !dbg !4677
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %9, ptr noundef @.str.23, i32 noundef %10) #17, !dbg !4678
  br label %if.end, !dbg !4678

if.else:                                          ; preds = %if.then
  %11 = load ptr, ptr %m.addr, align 8, !dbg !4679
  %12 = load ptr, ptr %key.addr, align 8, !dbg !4680
  %datalen = getelementptr inbounds %struct.key, ptr %12, i32 0, i32 12, !dbg !4681
  %13 = load i16, ptr %datalen, align 2, !dbg !4681
  %conv3 = zext i16 %13 to i32, !dbg !4680
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %11, ptr noundef @.str.24, i32 noundef %conv3) #17, !dbg !4682
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #16, !dbg !4683
  br label %if.end4, !dbg !4684

if.end4:                                          ; preds = %if.end, %entry
  ret void, !dbg !4685
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @dns_resolver_read(ptr noundef %key, ptr noundef %buffer, i64 noundef %buflen) #0 align 16 !dbg !4686 {
entry:
  %retval = alloca i64, align 8
  %key.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  %buflen.addr = alloca i64, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !4688, metadata !DIExpression()), !dbg !4692
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !4689, metadata !DIExpression()), !dbg !4693
  store i64 %buflen, ptr %buflen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buflen.addr, metadata !4690, metadata !DIExpression()), !dbg !4694
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #16, !dbg !4695
  call void @llvm.dbg.declare(metadata ptr %err, metadata !4691, metadata !DIExpression()), !dbg !4696
  %0 = load ptr, ptr %key.addr, align 8, !dbg !4697
  %1 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 16, !dbg !4698
  %arrayidx = getelementptr [4 x ptr], ptr %1, i64 0, i64 1, !dbg !4697
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !4697
  %call = call i64 @PTR_ERR(ptr noundef %2) #17, !dbg !4699
  %conv = trunc i64 %call to i32, !dbg !4699
  store i32 %conv, ptr %err, align 4, !dbg !4696
  %3 = load i32, ptr %err, align 4, !dbg !4700
  %tobool = icmp ne i32 %3, 0, !dbg !4700
  br i1 %tobool, label %if.then, label %if.end, !dbg !4702

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %err, align 4, !dbg !4703
  %conv1 = sext i32 %4 to i64, !dbg !4703
  store i64 %conv1, ptr %retval, align 8, !dbg !4704
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4704

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %key.addr, align 8, !dbg !4705
  %6 = load ptr, ptr %buffer.addr, align 8, !dbg !4706
  %7 = load i64, ptr %buflen.addr, align 8, !dbg !4707
  %call2 = call i64 @user_read(ptr noundef %5, ptr noundef %6, i64 noundef %7) #17, !dbg !4708
  store i64 %call2, ptr %retval, align 8, !dbg !4709
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4709

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #16, !dbg !4710
  %8 = load i64, ptr %retval, align 8, !dbg !4710
  ret i64 %8, !dbg !4710
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @exit_dns_resolver() #2 section ".exit.text" align 16 !dbg !4711 {
entry:
  %0 = load ptr, ptr @dns_resolver_cache, align 8, !dbg !4712
  %thread_keyring = getelementptr inbounds %struct.cred, ptr %0, i32 0, i32 18, !dbg !4713
  %1 = load ptr, ptr %thread_keyring, align 8, !dbg !4713
  call void @key_revoke(ptr noundef %1) #17, !dbg !4714
  call void @unregister_key_type(ptr noundef @key_type_dns_resolver) #17, !dbg !4715
  %2 = load ptr, ptr @dns_resolver_cache, align 8, !dbg !4716
  call void @put_cred(ptr noundef %2) #17, !dbg !4717
  ret void, !dbg !4718
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4719 dso_local void @key_revoke(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4720 dso_local void @unregister_key_type(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @put_cred(ptr noundef %_cred) #3 align 16 !dbg !4723 {
entry:
  %_cred.addr = alloca ptr, align 8
  %cred = alloca ptr, align 8
  store ptr %_cred, ptr %_cred.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %_cred.addr, metadata !4727, metadata !DIExpression()), !dbg !4729
  call void @llvm.lifetime.start.p0(i64 8, ptr %cred) #16, !dbg !4730
  call void @llvm.dbg.declare(metadata ptr %cred, metadata !4728, metadata !DIExpression()), !dbg !4731
  %0 = load ptr, ptr %_cred.addr, align 8, !dbg !4732
  store ptr %0, ptr %cred, align 8, !dbg !4731
  %1 = load ptr, ptr %cred, align 8, !dbg !4733
  %tobool = icmp ne ptr %1, null, !dbg !4733
  br i1 %tobool, label %if.then, label %if.end2, !dbg !4735

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %cred, align 8, !dbg !4736
  %usage = getelementptr inbounds %struct.cred, ptr %2, i32 0, i32 0, !dbg !4739
  %call = call zeroext i1 @atomic_long_dec_and_test(ptr noundef %usage) #17, !dbg !4740
  br i1 %call, label %if.then1, label %if.end, !dbg !4741

if.then1:                                         ; preds = %if.then
  %3 = load ptr, ptr %cred, align 8, !dbg !4742
  call void @__put_cred(ptr noundef %3) #17, !dbg !4743
  br label %if.end, !dbg !4743

if.end:                                           ; preds = %if.then1, %if.then
  br label %if.end2, !dbg !4744

if.end2:                                          ; preds = %if.end, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %cred) #16, !dbg !4745
  ret void, !dbg !4745
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_dns_resolver__267_389_init_dns_resolver6() #2 section ".init.text" align 16 !dbg !4746 {
entry:
  %call = call i32 @init_dns_resolver() #18, !dbg !4747
  ret i32 %call, !dbg !4747
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @init_dns_resolver() #2 section ".init.text" align 16 !dbg !4748 {
entry:
  %retval = alloca i32, align 4
  %cred = alloca ptr, align 8
  %keyring = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %.compoundliteral = alloca %struct.kuid_t, align 4
  %.compoundliteral1 = alloca %struct.kgid_t, align 4
  %tmp = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %cred) #16, !dbg !4755
  call void @llvm.dbg.declare(metadata ptr %cred, metadata !4750, metadata !DIExpression()), !dbg !4756
  call void @llvm.lifetime.start.p0(i64 8, ptr %keyring) #16, !dbg !4757
  call void @llvm.dbg.declare(metadata ptr %keyring, metadata !4751, metadata !DIExpression()), !dbg !4758
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !4759
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4752, metadata !DIExpression()), !dbg !4760
  %call = call ptr @prepare_kernel_cred(ptr noundef @init_task) #17, !dbg !4761
  store ptr %call, ptr %cred, align 8, !dbg !4762
  %0 = load ptr, ptr %cred, align 8, !dbg !4763
  %tobool = icmp ne ptr %0, null, !dbg !4763
  br i1 %tobool, label %if.end, label %if.then, !dbg !4765

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !4766
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4766

if.end:                                           ; preds = %entry
  %val = getelementptr inbounds %struct.kuid_t, ptr %.compoundliteral, i32 0, i32 0, !dbg !4767
  store i32 0, ptr %val, align 4, !dbg !4767
  %val2 = getelementptr inbounds %struct.kgid_t, ptr %.compoundliteral1, i32 0, i32 0, !dbg !4768
  store i32 0, ptr %val2, align 4, !dbg !4768
  %1 = load ptr, ptr %cred, align 8, !dbg !4769
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %.compoundliteral, i32 0, i32 0, !dbg !4770
  %2 = load i32, ptr %coerce.dive, align 4, !dbg !4770
  %coerce.dive3 = getelementptr inbounds %struct.kgid_t, ptr %.compoundliteral1, i32 0, i32 0, !dbg !4770
  %3 = load i32, ptr %coerce.dive3, align 4, !dbg !4770
  %call4 = call ptr @keyring_alloc(ptr noundef @.str.25, i32 %2, i32 %3, ptr noundef %1, i32 noundef 520290304, i64 noundef 2, ptr noundef null, ptr noundef null) #17, !dbg !4770
  store ptr %call4, ptr %keyring, align 8, !dbg !4771
  %4 = load ptr, ptr %keyring, align 8, !dbg !4772
  %call5 = call zeroext i1 @IS_ERR(ptr noundef %4) #17, !dbg !4774
  br i1 %call5, label %if.then6, label %if.end8, !dbg !4775

if.then6:                                         ; preds = %if.end
  %5 = load ptr, ptr %keyring, align 8, !dbg !4776
  %call7 = call i64 @PTR_ERR(ptr noundef %5) #17, !dbg !4778
  %conv = trunc i64 %call7 to i32, !dbg !4778
  store i32 %conv, ptr %ret, align 4, !dbg !4779
  br label %failed_put_cred, !dbg !4780

if.end8:                                          ; preds = %if.end
  %call9 = call i32 @register_key_type(ptr noundef @key_type_dns_resolver) #17, !dbg !4781
  store i32 %call9, ptr %ret, align 4, !dbg !4782
  %6 = load i32, ptr %ret, align 4, !dbg !4783
  %cmp = icmp slt i32 %6, 0, !dbg !4785
  br i1 %cmp, label %if.then11, label %if.end12, !dbg !4786

if.then11:                                        ; preds = %if.end8
  br label %failed_put_key, !dbg !4787

if.end12:                                         ; preds = %if.end8
  %7 = load ptr, ptr %keyring, align 8, !dbg !4788
  %flags = getelementptr inbounds %struct.key, ptr %7, i32 0, i32 14, !dbg !4789
  call void @set_bit(i64 noundef 4, ptr noundef %flags) #17, !dbg !4790
  %8 = load ptr, ptr %keyring, align 8, !dbg !4791
  %9 = load ptr, ptr %cred, align 8, !dbg !4792
  %thread_keyring = getelementptr inbounds %struct.cred, ptr %9, i32 0, i32 18, !dbg !4793
  store ptr %8, ptr %thread_keyring, align 8, !dbg !4794
  %10 = load ptr, ptr %cred, align 8, !dbg !4795
  %jit_keyring = getelementptr inbounds %struct.cred, ptr %10, i32 0, i32 15, !dbg !4796
  store i8 1, ptr %jit_keyring, align 8, !dbg !4797
  %11 = load ptr, ptr %cred, align 8, !dbg !4798
  store ptr %11, ptr @dns_resolver_cache, align 8, !dbg !4799
  br label %do.body, !dbg !4800

do.body:                                          ; preds = %if.end12
  %12 = load i32, ptr @dns_resolver_debug, align 4, !dbg !4801
  %tobool13 = icmp ne i32 %12, 0, !dbg !4801
  %lnot = xor i1 %tobool13, true, !dbg !4801
  %lnot14 = xor i1 %lnot, true, !dbg !4801
  %lnot.ext = zext i1 %lnot14 to i32, !dbg !4801
  %conv15 = sext i32 %lnot.ext to i64, !dbg !4801
  %expval = call i64 @llvm.expect.i64(i64 %conv15, i64 0), !dbg !4801
  %tobool16 = icmp ne i64 %expval, 0, !dbg !4801
  br i1 %tobool16, label %if.then17, label %if.end22, !dbg !4804

if.then17:                                        ; preds = %do.body
  br label %do.body18, !dbg !4805

do.body18:                                        ; preds = %if.then17
  br label %do.cond, !dbg !4807

do.cond:                                          ; preds = %do.body18
  br label %do.end, !dbg !4807

do.end:                                           ; preds = %do.cond
  %call19 = call ptr @get_current() #17, !dbg !4805
  %comm = getelementptr inbounds %struct.task_struct, ptr %call19, i32 0, i32 96, !dbg !4805
  %arraydecay = getelementptr inbounds [16 x i8], ptr %comm, i64 0, i64 0, !dbg !4805
  %13 = load ptr, ptr %keyring, align 8, !dbg !4805
  %call20 = call i32 @key_serial(ptr noundef %13) #17, !dbg !4805
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef @.str.26, ptr noundef %arraydecay, i32 noundef %call20) #18, !dbg !4805
  store i32 %call21, ptr %tmp, align 4, !dbg !4807
  %14 = load i32, ptr %tmp, align 4, !dbg !4805
  br label %if.end22, !dbg !4801

if.end22:                                         ; preds = %do.end, %do.body
  br label %do.cond23, !dbg !4804

do.cond23:                                        ; preds = %if.end22
  br label %do.end24, !dbg !4804

do.end24:                                         ; preds = %do.cond23
  store i32 0, ptr %retval, align 4, !dbg !4809
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4809

failed_put_key:                                   ; preds = %if.then11
  call void @llvm.dbg.label(metadata !4753), !dbg !4810
  %15 = load ptr, ptr %keyring, align 8, !dbg !4811
  call void @key_put(ptr noundef %15) #17, !dbg !4812
  br label %failed_put_cred, !dbg !4812

failed_put_cred:                                  ; preds = %failed_put_key, %if.then6
  call void @llvm.dbg.label(metadata !4754), !dbg !4813
  %16 = load ptr, ptr %cred, align 8, !dbg !4814
  call void @put_cred(ptr noundef %16) #17, !dbg !4815
  %17 = load i32, ptr %ret, align 4, !dbg !4816
  store i32 %17, ptr %retval, align 4, !dbg !4817
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4817

cleanup:                                          ; preds = %failed_put_cred, %do.end24, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !4818
  call void @llvm.lifetime.end.p0(i64 8, ptr %keyring) #16, !dbg !4818
  call void @llvm.lifetime.end.p0(i64 8, ptr %cred) #16, !dbg !4818
  %18 = load i32, ptr %retval, align 4, !dbg !4818
  ret i32 %18, !dbg !4818
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !4819 dso_local i32 @_printk(ptr noundef, ...) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #8 align 16 !dbg !4823 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #16, !dbg !4834
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !4828, metadata !DIExpression()), !dbg !4834
  br label %do.body, !dbg !4834

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #16, !dbg !4835
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4830, metadata !DIExpression()), !dbg !4835
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4835
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !4835
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #16, !dbg !4834
  br label %do.cond, !dbg !4835

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4835

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #16, !dbg !4836
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !4832, metadata !DIExpression()), !dbg !4836
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #20, !dbg !4836, !srcloc !4837
  store i64 %1, ptr %pfo_val__, align 8, !dbg !4836
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !4836
  %3 = inttoptr i64 %2 to ptr, !dbg !4836
  store ptr %3, ptr %tmp, align 8, !dbg !4836
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #16, !dbg !4834
  %4 = load ptr, ptr %tmp, align 8, !dbg !4836
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !4834
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !4834
  store ptr %5, ptr %tmp1, align 8, !dbg !4834
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #16, !dbg !4838
  %6 = load ptr, ptr %tmp1, align 8, !dbg !4834
  ret ptr %6, !dbg !4839
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4840 dso_local i32 @___ratelimit(ptr noundef, ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4844 dso_local i64 @ktime_get_real_seconds() #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4848 dso_local ptr @memchr(ptr noundef, i32 noundef, i64 noundef) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4852 dso_local i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kstrtoul(ptr noundef %s, i32 noundef %base, ptr noundef %res) #3 align 16 !dbg !4855 {
entry:
  %s.addr = alloca ptr, align 8
  %base.addr = alloca i32, align 4
  %res.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !4860, metadata !DIExpression()), !dbg !4863
  store i32 %base, ptr %base.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !4861, metadata !DIExpression()), !dbg !4864
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !4862, metadata !DIExpression()), !dbg !4865
  %0 = load ptr, ptr %s.addr, align 8, !dbg !4866
  %1 = load i32, ptr %base.addr, align 4, !dbg !4868
  %2 = load ptr, ptr %res.addr, align 8, !dbg !4869
  %call = call i32 @kstrtoull(ptr noundef %0, i32 noundef %1, ptr noundef %2) #17, !dbg !4870
  ret i32 %call, !dbg !4871
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #3 align 16 !dbg !4872 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !4877, metadata !DIExpression()), !dbg !4878
  %0 = load i64, ptr %error.addr, align 8, !dbg !4879
  %1 = inttoptr i64 %0 to ptr, !dbg !4880
  ret ptr %1, !dbg !4881
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #3 align 16 !dbg !4882 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4886, metadata !DIExpression()), !dbg !4887
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !4888
  %1 = ptrtoint ptr %0 to i64, !dbg !4889
  ret i64 %1, !dbg !4890
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #10 align 16 !dbg !4891 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4895, metadata !DIExpression()), !dbg !4900
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4896, metadata !DIExpression()), !dbg !4901
  %0 = load i64, ptr %size.addr, align 8, !dbg !4902
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4903
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !4904

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !4905
  %tobool = icmp ne i64 %2, 0, !dbg !4905
  br i1 %tobool, label %if.then, label %if.end7, !dbg !4906

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #16, !dbg !4907
  call void @llvm.dbg.declare(metadata ptr %index, metadata !4897, metadata !DIExpression()), !dbg !4908
  %3 = load i64, ptr %size.addr, align 8, !dbg !4909
  %cmp = icmp ugt i64 %3, 8192, !dbg !4911
  br i1 %cmp, label %if.then1, label %if.end, !dbg !4912

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !4913
  %5 = load i32, ptr %flags.addr, align 4, !dbg !4914
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #19, !dbg !4915
  store ptr %call, ptr %retval, align 8, !dbg !4916
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4916

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !4917
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #17, !dbg !4917
  store i32 %call2, ptr %index, align 4, !dbg !4918
  %7 = load i32, ptr %flags.addr, align 4, !dbg !4919
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !4920
  %9 = ptrtoint ptr %8 to i64, !dbg !4920
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #17, !dbg !4921
  %idxprom = zext i32 %call3 to i64, !dbg !4922
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !4922
  %10 = load i32, ptr %index, align 4, !dbg !4923
  %idxprom4 = zext i32 %10 to i64, !dbg !4922
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !4922
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !4922
  %12 = load i32, ptr %flags.addr, align 4, !dbg !4924
  %13 = load i64, ptr %size.addr, align 8, !dbg !4925
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #21, !dbg !4926
  store ptr %call6, ptr %retval, align 8, !dbg !4927
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4927

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #16, !dbg !4928
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !4929
  %15 = load i32, ptr %flags.addr, align 4, !dbg !4930
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #19, !dbg !4931
  store ptr %call8, ptr %retval, align 8, !dbg !4932
  br label %return, !dbg !4932

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !4933
  ret ptr %16, !dbg !4933
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4934 dso_local i32 @kstrtoull(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #11

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !4937 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #8 align 16 !dbg !4938 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4942, metadata !DIExpression()), !dbg !4944
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !4943, metadata !DIExpression()), !dbg !4945
  %0 = load i64, ptr %size.addr, align 8, !dbg !4946
  %tobool = icmp ne i64 %0, 0, !dbg !4946
  br i1 %tobool, label %if.end, label %if.then, !dbg !4948

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4949
  br label %return, !dbg !4949

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !4950
  %cmp = icmp ule i64 %1, 8, !dbg !4952
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !4953

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !4954
  br label %return, !dbg !4954

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !4955
  %cmp3 = icmp ugt i64 %2, 64, !dbg !4957
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !4958

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !4959
  %cmp4 = icmp ule i64 %3, 96, !dbg !4960
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !4961

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !4962
  br label %return, !dbg !4962

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !4963
  %cmp7 = icmp ugt i64 %4, 128, !dbg !4965
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !4966

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !4967
  %cmp9 = icmp ule i64 %5, 192, !dbg !4968
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !4969

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !4970
  br label %return, !dbg !4970

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !4971
  %cmp12 = icmp ule i64 %6, 8, !dbg !4973
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !4974

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !4975
  br label %return, !dbg !4975

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !4976
  %cmp15 = icmp ule i64 %7, 16, !dbg !4978
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !4979

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !4980
  br label %return, !dbg !4980

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !4981
  %cmp18 = icmp ule i64 %8, 32, !dbg !4983
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !4984

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !4985
  br label %return, !dbg !4985

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !4986
  %cmp21 = icmp ule i64 %9, 64, !dbg !4988
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !4989

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !4990
  br label %return, !dbg !4990

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !4991
  %cmp24 = icmp ule i64 %10, 128, !dbg !4993
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !4994

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !4995
  br label %return, !dbg !4995

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !4996
  %cmp27 = icmp ule i64 %11, 256, !dbg !4998
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !4999

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !5000
  br label %return, !dbg !5000

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !5001
  %cmp30 = icmp ule i64 %12, 512, !dbg !5003
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !5004

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !5005
  br label %return, !dbg !5005

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !5006
  %cmp33 = icmp ule i64 %13, 1024, !dbg !5008
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !5009

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !5010
  br label %return, !dbg !5010

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !5011
  %cmp36 = icmp ule i64 %14, 2048, !dbg !5013
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !5014

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !5015
  br label %return, !dbg !5015

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !5016
  %cmp39 = icmp ule i64 %15, 4096, !dbg !5018
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !5019

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !5020
  br label %return, !dbg !5020

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !5021
  %cmp42 = icmp ule i64 %16, 8192, !dbg !5023
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !5024

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !5025
  br label %return, !dbg !5025

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !5026
  %cmp45 = icmp ule i64 %17, 16384, !dbg !5028
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !5029

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !5030
  br label %return, !dbg !5030

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !5031
  %cmp48 = icmp ule i64 %18, 32768, !dbg !5033
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !5034

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !5035
  br label %return, !dbg !5035

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !5036
  %cmp51 = icmp ule i64 %19, 65536, !dbg !5038
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !5039

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !5040
  br label %return, !dbg !5040

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !5041
  %cmp54 = icmp ule i64 %20, 131072, !dbg !5043
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !5044

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !5045
  br label %return, !dbg !5045

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !5046
  %cmp57 = icmp ule i64 %21, 262144, !dbg !5048
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !5049

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !5050
  br label %return, !dbg !5050

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !5051
  %cmp60 = icmp ule i64 %22, 524288, !dbg !5053
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !5054

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !5055
  br label %return, !dbg !5055

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !5056
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !5058
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !5059

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !5060
  br label %return, !dbg !5060

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !5061
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !5063
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !5064

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !5065
  br label %return, !dbg !5065

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !5066, !range !5068, !noundef !502
  %tobool69 = trunc i8 %25 to i1, !dbg !5066
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !5069

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !5070

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_196() #22, !dbg !5071, !srcloc !5074
  unreachable, !dbg !5071

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !5075

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !5076

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !5077

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !5079

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !5077

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.20, i32 480, i32 0, i64 12) #16, !dbg !5081, !srcloc !5083
  br label %do.end75, !dbg !5081

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !5077

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !5084
  br label %return, !dbg !5084

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !5085
  ret i32 %26, !dbg !5085
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !5086 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #8 align 16 !dbg !5092 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5096, metadata !DIExpression()), !dbg !5098
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !5097, metadata !DIExpression()), !dbg !5099
  %0 = load i32, ptr %flags.addr, align 4, !dbg !5100
  %and = and i32 %0, 17, !dbg !5100
  %cmp = icmp eq i32 %and, 0, !dbg !5100
  %lnot = xor i1 %cmp, true, !dbg !5100
  %lnot1 = xor i1 %lnot, true, !dbg !5100
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5100
  %conv = sext i32 %lnot.ext to i64, !dbg !5100
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !5100
  %tobool = icmp ne i64 %expval, 0, !dbg !5100
  br i1 %tobool, label %if.then, label %if.end, !dbg !5102

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5103
  br label %return, !dbg !5103

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5104
  %and2 = and i32 %1, 1, !dbg !5106
  %tobool3 = icmp ne i32 %and2, 0, !dbg !5106
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5107

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !5108
  br label %return, !dbg !5108

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !5109
  br label %return, !dbg !5109

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !5111
  ret i32 %2, !dbg !5111
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5112 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #12

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !5113 dso_local void @__compiletime_assert_196() #14

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5114 dso_local void @kfree(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @dns_resolver_cmp(ptr noundef %key, ptr noundef %match_data) #0 align 16 !dbg !5117 {
entry:
  %key.addr = alloca ptr, align 8
  %match_data.addr = alloca ptr, align 8
  %slen = alloca i32, align 4
  %dlen = alloca i32, align 4
  %ret = alloca i32, align 4
  %src = alloca ptr, align 8
  %dsp = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %tmp62 = alloca i32, align 4
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !5119, metadata !DIExpression()), !dbg !5128
  store ptr %match_data, ptr %match_data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %match_data.addr, metadata !5120, metadata !DIExpression()), !dbg !5129
  call void @llvm.lifetime.start.p0(i64 4, ptr %slen) #16, !dbg !5130
  call void @llvm.dbg.declare(metadata ptr %slen, metadata !5121, metadata !DIExpression()), !dbg !5131
  call void @llvm.lifetime.start.p0(i64 4, ptr %dlen) #16, !dbg !5130
  call void @llvm.dbg.declare(metadata ptr %dlen, metadata !5122, metadata !DIExpression()), !dbg !5132
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !5130
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5123, metadata !DIExpression()), !dbg !5133
  store i32 0, ptr %ret, align 4, !dbg !5133
  call void @llvm.lifetime.start.p0(i64 8, ptr %src) #16, !dbg !5134
  call void @llvm.dbg.declare(metadata ptr %src, metadata !5124, metadata !DIExpression()), !dbg !5135
  %0 = load ptr, ptr %key.addr, align 8, !dbg !5136
  %1 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 15, !dbg !5137
  %description = getelementptr inbounds %struct.anon.23, ptr %1, i32 0, i32 4, !dbg !5137
  %2 = load ptr, ptr %description, align 8, !dbg !5137
  store ptr %2, ptr %src, align 8, !dbg !5135
  call void @llvm.lifetime.start.p0(i64 8, ptr %dsp) #16, !dbg !5134
  call void @llvm.dbg.declare(metadata ptr %dsp, metadata !5125, metadata !DIExpression()), !dbg !5138
  %3 = load ptr, ptr %match_data.addr, align 8, !dbg !5139
  %raw_data = getelementptr inbounds %struct.key_match_data, ptr %3, i32 0, i32 1, !dbg !5140
  %4 = load ptr, ptr %raw_data, align 8, !dbg !5140
  store ptr %4, ptr %dsp, align 8, !dbg !5138
  br label %do.body, !dbg !5141

do.body:                                          ; preds = %entry
  %5 = load i32, ptr @dns_resolver_debug, align 4, !dbg !5142
  %tobool = icmp ne i32 %5, 0, !dbg !5142
  %lnot = xor i1 %tobool, true, !dbg !5142
  %lnot1 = xor i1 %lnot, true, !dbg !5142
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5142
  %conv = sext i32 %lnot.ext to i64, !dbg !5142
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5142
  %tobool2 = icmp ne i64 %expval, 0, !dbg !5142
  br i1 %tobool2, label %if.then, label %if.end, !dbg !5145

if.then:                                          ; preds = %do.body
  br label %do.body3, !dbg !5146

do.body3:                                         ; preds = %if.then
  br label %do.cond, !dbg !5148

do.cond:                                          ; preds = %do.body3
  br label %do.end, !dbg !5148

do.end:                                           ; preds = %do.cond
  %call = call ptr @get_current() #17, !dbg !5146
  %comm = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 96, !dbg !5146
  %arraydecay = getelementptr inbounds [16 x i8], ptr %comm, i64 0, i64 0, !dbg !5146
  %6 = load ptr, ptr %src, align 8, !dbg !5146
  %7 = load ptr, ptr %dsp, align 8, !dbg !5146
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef @.str.21, ptr noundef %arraydecay, ptr noundef @__func__.dns_resolver_cmp, ptr noundef %6, ptr noundef %7) #18, !dbg !5146
  store i32 %call4, ptr %tmp, align 4, !dbg !5148
  %8 = load i32, ptr %tmp, align 4, !dbg !5146
  br label %if.end, !dbg !5142

if.end:                                           ; preds = %do.end, %do.body
  br label %do.cond5, !dbg !5145

do.cond5:                                         ; preds = %if.end
  br label %do.end6, !dbg !5145

do.end6:                                          ; preds = %do.cond5
  %9 = load ptr, ptr %src, align 8, !dbg !5150
  %tobool7 = icmp ne ptr %9, null, !dbg !5150
  br i1 %tobool7, label %lor.lhs.false, label %if.then9, !dbg !5152

lor.lhs.false:                                    ; preds = %do.end6
  %10 = load ptr, ptr %dsp, align 8, !dbg !5153
  %tobool8 = icmp ne ptr %10, null, !dbg !5153
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !5154

if.then9:                                         ; preds = %lor.lhs.false, %do.end6
  br label %no_match, !dbg !5155

if.end10:                                         ; preds = %lor.lhs.false
  %11 = load ptr, ptr %src, align 8, !dbg !5156
  %12 = load ptr, ptr %dsp, align 8, !dbg !5158
  %call11 = call i32 @strcasecmp(ptr noundef %11, ptr noundef %12) #17, !dbg !5159
  %cmp = icmp eq i32 %call11, 0, !dbg !5160
  br i1 %cmp, label %if.then13, label %if.end14, !dbg !5161

if.then13:                                        ; preds = %if.end10
  br label %matched, !dbg !5162

if.end14:                                         ; preds = %if.end10
  %13 = load ptr, ptr %src, align 8, !dbg !5163
  %call15 = call i64 @strlen(ptr noundef %13) #17, !dbg !5164
  %conv16 = trunc i64 %call15 to i32, !dbg !5164
  store i32 %conv16, ptr %slen, align 4, !dbg !5165
  %14 = load ptr, ptr %dsp, align 8, !dbg !5166
  %call17 = call i64 @strlen(ptr noundef %14) #17, !dbg !5167
  %conv18 = trunc i64 %call17 to i32, !dbg !5167
  store i32 %conv18, ptr %dlen, align 4, !dbg !5168
  %15 = load i32, ptr %slen, align 4, !dbg !5169
  %cmp19 = icmp sle i32 %15, 0, !dbg !5171
  br i1 %cmp19, label %if.then24, label %lor.lhs.false21, !dbg !5172

lor.lhs.false21:                                  ; preds = %if.end14
  %16 = load i32, ptr %dlen, align 4, !dbg !5173
  %cmp22 = icmp sle i32 %16, 0, !dbg !5174
  br i1 %cmp22, label %if.then24, label %if.end25, !dbg !5175

if.then24:                                        ; preds = %lor.lhs.false21, %if.end14
  br label %no_match, !dbg !5176

if.end25:                                         ; preds = %lor.lhs.false21
  %17 = load ptr, ptr %src, align 8, !dbg !5177
  %18 = load i32, ptr %slen, align 4, !dbg !5179
  %sub = sub i32 %18, 1, !dbg !5180
  %idxprom = sext i32 %sub to i64, !dbg !5177
  %arrayidx = getelementptr i8, ptr %17, i64 %idxprom, !dbg !5177
  %19 = load i8, ptr %arrayidx, align 1, !dbg !5177
  %conv26 = zext i8 %19 to i32, !dbg !5177
  %cmp27 = icmp eq i32 %conv26, 46, !dbg !5181
  br i1 %cmp27, label %if.then29, label %if.end30, !dbg !5182

if.then29:                                        ; preds = %if.end25
  %20 = load i32, ptr %slen, align 4, !dbg !5183
  %dec = add i32 %20, -1, !dbg !5183
  store i32 %dec, ptr %slen, align 4, !dbg !5183
  br label %if.end30, !dbg !5184

if.end30:                                         ; preds = %if.then29, %if.end25
  %21 = load ptr, ptr %dsp, align 8, !dbg !5185
  %22 = load i32, ptr %dlen, align 4, !dbg !5187
  %sub31 = sub i32 %22, 1, !dbg !5188
  %idxprom32 = sext i32 %sub31 to i64, !dbg !5185
  %arrayidx33 = getelementptr i8, ptr %21, i64 %idxprom32, !dbg !5185
  %23 = load i8, ptr %arrayidx33, align 1, !dbg !5185
  %conv34 = zext i8 %23 to i32, !dbg !5185
  %cmp35 = icmp eq i32 %conv34, 46, !dbg !5189
  br i1 %cmp35, label %if.then37, label %if.end39, !dbg !5190

if.then37:                                        ; preds = %if.end30
  %24 = load i32, ptr %dlen, align 4, !dbg !5191
  %dec38 = add i32 %24, -1, !dbg !5191
  store i32 %dec38, ptr %dlen, align 4, !dbg !5191
  br label %if.end39, !dbg !5192

if.end39:                                         ; preds = %if.then37, %if.end30
  %25 = load i32, ptr %slen, align 4, !dbg !5193
  %26 = load i32, ptr %dlen, align 4, !dbg !5195
  %cmp40 = icmp ne i32 %25, %26, !dbg !5196
  br i1 %cmp40, label %if.then47, label %lor.lhs.false42, !dbg !5197

lor.lhs.false42:                                  ; preds = %if.end39
  %27 = load ptr, ptr %src, align 8, !dbg !5198
  %28 = load ptr, ptr %dsp, align 8, !dbg !5199
  %29 = load i32, ptr %slen, align 4, !dbg !5200
  %conv43 = sext i32 %29 to i64, !dbg !5200
  %call44 = call i32 @strncasecmp(ptr noundef %27, ptr noundef %28, i64 noundef %conv43) #17, !dbg !5201
  %cmp45 = icmp ne i32 %call44, 0, !dbg !5202
  br i1 %cmp45, label %if.then47, label %if.end48, !dbg !5203

if.then47:                                        ; preds = %lor.lhs.false42, %if.end39
  br label %no_match, !dbg !5204

if.end48:                                         ; preds = %lor.lhs.false42
  br label %matched, !dbg !5205

matched:                                          ; preds = %if.end48, %if.then13
  call void @llvm.dbg.label(metadata !5126), !dbg !5206
  store i32 1, ptr %ret, align 4, !dbg !5207
  br label %no_match, !dbg !5208

no_match:                                         ; preds = %matched, %if.then47, %if.then24, %if.then9
  call void @llvm.dbg.label(metadata !5127), !dbg !5209
  br label %do.body49, !dbg !5210

do.body49:                                        ; preds = %no_match
  %30 = load i32, ptr @dns_resolver_debug, align 4, !dbg !5211
  %tobool50 = icmp ne i32 %30, 0, !dbg !5211
  %lnot51 = xor i1 %tobool50, true, !dbg !5211
  %lnot53 = xor i1 %lnot51, true, !dbg !5211
  %lnot.ext54 = zext i1 %lnot53 to i32, !dbg !5211
  %conv55 = sext i32 %lnot.ext54 to i64, !dbg !5211
  %expval56 = call i64 @llvm.expect.i64(i64 %conv55, i64 0), !dbg !5211
  %tobool57 = icmp ne i64 %expval56, 0, !dbg !5211
  br i1 %tobool57, label %if.then58, label %if.end67, !dbg !5214

if.then58:                                        ; preds = %do.body49
  br label %do.body59, !dbg !5215

do.body59:                                        ; preds = %if.then58
  br label %do.cond60, !dbg !5217

do.cond60:                                        ; preds = %do.body59
  br label %do.end61, !dbg !5217

do.end61:                                         ; preds = %do.cond60
  %call63 = call ptr @get_current() #17, !dbg !5215
  %comm64 = getelementptr inbounds %struct.task_struct, ptr %call63, i32 0, i32 96, !dbg !5215
  %arraydecay65 = getelementptr inbounds [16 x i8], ptr %comm64, i64 0, i64 0, !dbg !5215
  %31 = load i32, ptr %ret, align 4, !dbg !5215
  %call66 = call i32 (ptr, ...) @_printk(ptr noundef @.str.22, ptr noundef %arraydecay65, ptr noundef @__func__.dns_resolver_cmp, i32 noundef %31) #18, !dbg !5215
  store i32 %call66, ptr %tmp62, align 4, !dbg !5217
  %32 = load i32, ptr %tmp62, align 4, !dbg !5215
  br label %if.end67, !dbg !5211

if.end67:                                         ; preds = %do.end61, %do.body49
  br label %do.cond68, !dbg !5214

do.cond68:                                        ; preds = %if.end67
  br label %do.end69, !dbg !5214

do.end69:                                         ; preds = %do.cond68
  %33 = load i32, ptr %ret, align 4, !dbg !5219
  %tobool70 = icmp ne i32 %33, 0, !dbg !5219
  call void @llvm.lifetime.end.p0(i64 8, ptr %dsp) #16, !dbg !5220
  call void @llvm.lifetime.end.p0(i64 8, ptr %src) #16, !dbg !5220
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !5220
  call void @llvm.lifetime.end.p0(i64 4, ptr %dlen) #16, !dbg !5220
  call void @llvm.lifetime.end.p0(i64 4, ptr %slen) #16, !dbg !5220
  ret i1 %tobool70, !dbg !5221
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5222 dso_local i32 @strcasecmp(ptr noundef, ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5225 dso_local i64 @strlen(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5228 dso_local i32 @strncasecmp(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5231 dso_local void @seq_puts(ptr noundef, ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @key_is_positive(ptr noundef %key) #3 align 16 !dbg !5234 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !5238, metadata !DIExpression()), !dbg !5239
  %0 = load ptr, ptr %key.addr, align 8, !dbg !5240
  %call = call signext i16 @key_read_state(ptr noundef %0) #17, !dbg !5241
  %conv = sext i16 %call to i32, !dbg !5241
  %cmp = icmp eq i32 %conv, 1, !dbg !5242
  ret i1 %cmp, !dbg !5243
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5244 dso_local void @seq_printf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal signext i16 @key_read_state(ptr noundef %key) #3 align 16 !dbg !5247 {
entry:
  %key.addr = alloca ptr, align 8
  %___p1 = alloca i16, align 2
  %tmp = alloca i16, align 2
  %tmp4 = alloca i16, align 2
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !5251, metadata !DIExpression()), !dbg !5255
  call void @llvm.lifetime.start.p0(i64 2, ptr %___p1) #16, !dbg !5256
  call void @llvm.dbg.declare(metadata ptr %___p1, metadata !5252, metadata !DIExpression()), !dbg !5256
  br label %do.body, !dbg !5257

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !5259

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5259

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %key.addr, align 8, !dbg !5257
  %state = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 13, !dbg !5257
  %1 = load volatile i16, ptr %state, align 8, !dbg !5257
  store i16 %1, ptr %tmp, align 2, !dbg !5259
  %2 = load i16, ptr %tmp, align 2, !dbg !5257
  store i16 %2, ptr %___p1, align 2, !dbg !5256
  br label %do.body1, !dbg !5256

do.body1:                                         ; preds = %do.end
  br label %do.cond2, !dbg !5261

do.cond2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !5261

do.end3:                                          ; preds = %do.cond2
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !dbg !5256, !srcloc !5263
  %3 = load i16, ptr %___p1, align 2, !dbg !5256
  store i16 %3, ptr %tmp4, align 2, !dbg !5256
  call void @llvm.lifetime.end.p0(i64 2, ptr %___p1) #16, !dbg !5264
  %4 = load i16, ptr %tmp4, align 2, !dbg !5256
  ret i16 %4, !dbg !5265
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5266 dso_local i64 @user_read(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @atomic_long_dec_and_test(ptr noundef %v) #8 align 16 !dbg !5267 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5272, metadata !DIExpression()), !dbg !5273
  br label %do.body, !dbg !5274

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5275

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5277
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 8) #17, !dbg !5278
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5279
  %call = call zeroext i1 @raw_atomic_long_dec_and_test(ptr noundef %1) #17, !dbg !5280
  ret i1 %call, !dbg !5281
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5282 dso_local void @__put_cred(ptr noundef) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #8 align 16 !dbg !5285 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5293, metadata !DIExpression()), !dbg !5295
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5294, metadata !DIExpression()), !dbg !5296
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5297
  %1 = load i64, ptr %size.addr, align 8, !dbg !5298
  %conv = trunc i64 %1 to i32, !dbg !5298
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #17, !dbg !5299
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5300
  %3 = load i64, ptr %size.addr, align 8, !dbg !5300
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #17, !dbg !5300
  ret void, !dbg !5301
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic_long_dec_and_test(ptr noundef %v) #8 align 16 !dbg !5302 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5304, metadata !DIExpression()), !dbg !5305
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5306
  %call = call zeroext i1 @raw_atomic64_dec_and_test(ptr noundef %0) #17, !dbg !5307
  ret i1 %call, !dbg !5308
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !5309 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5314, metadata !DIExpression()), !dbg !5316
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5315, metadata !DIExpression()), !dbg !5317
  ret i1 true, !dbg !5318
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !5319 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5324, metadata !DIExpression()), !dbg !5327
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5325, metadata !DIExpression()), !dbg !5328
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5326, metadata !DIExpression()), !dbg !5329
  ret void, !dbg !5330
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic64_dec_and_test(ptr noundef %v) #8 align 16 !dbg !5331 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5337, metadata !DIExpression()), !dbg !5338
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5339
  %call = call zeroext i1 @arch_atomic64_dec_and_test(ptr noundef %0) #17, !dbg !5340
  ret i1 %call, !dbg !5341
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_atomic64_dec_and_test(ptr noundef %v) #8 align 16 !dbg !5342 {
entry:
  %v.addr = alloca ptr, align 8
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5345, metadata !DIExpression()), !dbg !5348
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #16, !dbg !5349
  call void @llvm.dbg.declare(metadata ptr %c, metadata !5346, metadata !DIExpression()), !dbg !5349
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5349
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %0, i32 0, i32 0, !dbg !5349
  %1 = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; decq $0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %counter, ptr elementtype(i64) %counter) #16, !dbg !5349, !srcloc !5350
  %2 = icmp ult i8 %1, 2, !dbg !5349
  call void @llvm.assume(i1 %2), !dbg !5349
  store i8 %1, ptr %c, align 1, !dbg !5349
  %3 = load i8, ptr %c, align 1, !dbg !5349, !range !5068, !noundef !502
  %tobool = trunc i8 %3 to i1, !dbg !5349
  %frombool = zext i1 %tobool to i8, !dbg !5349
  store i8 %frombool, ptr %tmp, align 1, !dbg !5349
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #16, !dbg !5351
  %4 = load i8, ptr %tmp, align 1, !dbg !5349, !range !5068, !noundef !502
  %tobool1 = trunc i8 %4 to i1, !dbg !5349
  ret i1 %tobool1, !dbg !5352
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5353 dso_local ptr @prepare_kernel_cred(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5356 dso_local ptr @keyring_alloc(ptr noundef, i32, i32, ptr noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #3 align 16 !dbg !5359 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5363, metadata !DIExpression()), !dbg !5364
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !5365
  %1 = ptrtoint ptr %0 to i64, !dbg !5365
  %2 = inttoptr i64 %1 to ptr, !dbg !5365
  %3 = ptrtoint ptr %2 to i64, !dbg !5365
  %cmp = icmp uge i64 %3, -4095, !dbg !5365
  %lnot = xor i1 %cmp, true, !dbg !5365
  %lnot1 = xor i1 %lnot, true, !dbg !5365
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5365
  %conv = sext i32 %lnot.ext to i64, !dbg !5365
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5365
  %tobool = icmp ne i64 %expval, 0, !dbg !5365
  ret i1 %tobool, !dbg !5366
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5367 dso_local i32 @register_key_type(ptr noundef) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_bit(i64 noundef %nr, ptr noundef %addr) #8 align 16 !dbg !5370 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5377, metadata !DIExpression()), !dbg !5379
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5378, metadata !DIExpression()), !dbg !5380
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5381
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5382
  %div = sdiv i64 %1, 64, !dbg !5382
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5383
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #17, !dbg !5384
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5385
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5386
  call void @arch_set_bit(i64 noundef %2, ptr noundef %3) #17, !dbg !5387
  ret void, !dbg !5388
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @key_serial(ptr noundef %key) #3 align 16 !dbg !5389 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !5393, metadata !DIExpression()), !dbg !5394
  %0 = load ptr, ptr %key.addr, align 8, !dbg !5395
  %tobool = icmp ne ptr %0, null, !dbg !5395
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !5395

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %key.addr, align 8, !dbg !5396
  %serial = getelementptr inbounds %struct.key, ptr %1, i32 0, i32 1, !dbg !5397
  %2 = load i32, ptr %serial, align 4, !dbg !5397
  br label %cond.end, !dbg !5395

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !5395

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ 0, %cond.false ], !dbg !5395
  ret i32 %cond, !dbg !5398
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5399 dso_local void @key_put(ptr noundef) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #8 align 16 !dbg !5400 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5402, metadata !DIExpression()), !dbg !5404
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5403, metadata !DIExpression()), !dbg !5405
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5406
  %1 = load i64, ptr %size.addr, align 8, !dbg !5407
  %conv = trunc i64 %1 to i32, !dbg !5407
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #17, !dbg !5408
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5409
  %3 = load i64, ptr %size.addr, align 8, !dbg !5409
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #17, !dbg !5409
  ret void, !dbg !5410
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_set_bit(i64 noundef %nr, ptr noundef %addr) #8 align 16 !dbg !5411 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5414, metadata !DIExpression()), !dbg !5416
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5415, metadata !DIExpression()), !dbg !5417
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5418
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5420
  br i1 %1, label %if.then, label %if.else, !dbg !5421

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !5422
  %3 = load i64, ptr %nr.addr, align 8, !dbg !5422
  %shr = ashr i64 %3, 3, !dbg !5422
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !5422
  %4 = load i64, ptr %nr.addr, align 8, !dbg !5424
  %and = and i64 %4, 7, !dbg !5424
  %sh_prom = trunc i64 %and to i32, !dbg !5424
  %shl = shl i32 1, %sh_prom, !dbg !5424
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %shl, ptr elementtype(i8) %add.ptr) #16, !dbg !5425, !srcloc !5426
  br label %if.end, !dbg !5427

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !5428
  %6 = load i64, ptr %nr.addr, align 8, !dbg !5430
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #16, !dbg !5431, !srcloc !5432
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !5433
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind }
attributes #17 = { noredzone }
attributes #18 = { cold noredzone }
attributes #19 = { noredzone allocsize(0) }
attributes #20 = { nounwind memory(none) }
attributes #21 = { noredzone allocsize(2) }
attributes #22 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4233, !4234, !4235, !4236, !4237, !4238, !4239, !4240}
!llvm.ident = !{!4241}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description261", scope: !2, file: !3, line: 37, type: !4232, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF net/dns_resolver/.dns_key.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22net/dns_resolver/dns_resolver\22 -D KBUILD_BASENAME=\22dns_key\22 -D KBUILD_MODNAME=\22dns_resolver\22 -D __KBUILD_MODNAME=kmod_dns_resolver -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o net/dns_resolver/dns_key.ll net/dns_resolver/dns_key.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !110, globals: !4039, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "net/dns_resolver/dns_key.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ef8af281d5a9ac1d578332755791db8")
!4 = !{!5, !13, !18, !26, !33, !39, !44, !50, !57, !64, !70, !74, !85, !90, !95, !105}
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
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kernel_pkey_operation", file: !27, line: 22, baseType: !7, size: 32, elements: !28)
!27 = !DIFile(filename: "./include/linux/keyctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4fb6b47c8f95fa53866d7002b6a7b8c6")
!28 = !{!29, !30, !31, !32}
!29 = !DIEnumerator(name: "kernel_pkey_encrypt", value: 0)
!30 = !DIEnumerator(name: "kernel_pkey_decrypt", value: 1)
!31 = !DIEnumerator(name: "kernel_pkey_sign", value: 2)
!32 = !DIEnumerator(name: "kernel_pkey_verify", value: 3)
!33 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !34, line: 54, baseType: !7, size: 32, elements: !35)
!34 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!35 = !{!36, !37, !38}
!36 = !DIEnumerator(name: "USRQUOTA", value: 0)
!37 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!38 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!39 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !40, line: 65, baseType: !7, size: 32, elements: !41)
!40 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!41 = !{!42, !43}
!42 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!43 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!44 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !45, line: 16, baseType: !7, size: 32, elements: !46)
!45 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!46 = !{!47, !48, !49}
!47 = !DIEnumerator(name: "TT_NONE", value: 0)
!48 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!49 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !51, line: 51, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!52 = !{!53, !54, !55, !56}
!53 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!54 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!55 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!56 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!57 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !58, line: 15, baseType: !7, size: 32, elements: !59)
!58 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!59 = !{!60, !61, !62, !63}
!60 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!61 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!62 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!63 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !65, line: 26, baseType: !7, size: 32, elements: !66)
!65 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!66 = !{!67, !68, !69}
!67 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!68 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!69 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!70 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dns_payload_content_type", file: !71, line: 21, baseType: !7, size: 32, elements: !72)
!71 = !DIFile(filename: "./include/uapi/linux/dns_resolver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c664ebb50fcb0ed1012caf28a96f0556")
!72 = !{!73}
!73 = !DIEnumerator(name: "DNS_PAYLOAD_IS_SERVER_LIST", value: 0)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dns_lookup_status", file: !71, line: 58, baseType: !7, size: 32, elements: !75)
!75 = !{!76, !77, !78, !79, !80, !81, !82, !83, !84}
!76 = !DIEnumerator(name: "DNS_LOOKUP_NOT_DONE", value: 0)
!77 = !DIEnumerator(name: "DNS_LOOKUP_GOOD", value: 1)
!78 = !DIEnumerator(name: "DNS_LOOKUP_GOOD_WITH_BAD", value: 2)
!79 = !DIEnumerator(name: "DNS_LOOKUP_BAD", value: 3)
!80 = !DIEnumerator(name: "DNS_LOOKUP_GOT_NOT_FOUND", value: 4)
!81 = !DIEnumerator(name: "DNS_LOOKUP_GOT_LOCAL_FAILURE", value: 5)
!82 = !DIEnumerator(name: "DNS_LOOKUP_GOT_TEMP_FAILURE", value: 6)
!83 = !DIEnumerator(name: "DNS_LOOKUP_GOT_NS_FAILURE", value: 7)
!84 = !DIEnumerator(name: "NR__dns_lookup_status", value: 8)
!85 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !86, line: 28, baseType: !7, size: 32, elements: !87)
!86 = !DIFile(filename: "net/dns_resolver/internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d83f470ad6b9e03cd47cfaeb2889349")
!87 = !{!88, !89}
!88 = !DIEnumerator(name: "dns_key_data", value: 0)
!89 = !DIEnumerator(name: "dns_key_error", value: 1)
!90 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !91, line: 10, baseType: !7, size: 32, elements: !92)
!91 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!92 = !{!93, !94}
!93 = !DIEnumerator(name: "false", value: 0)
!94 = !DIEnumerator(name: "true", value: 1)
!95 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !96, line: 364, baseType: !7, size: 32, elements: !97)
!96 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!97 = !{!98, !99, !100, !101, !102, !103, !104}
!98 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!99 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!100 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!101 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!102 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!103 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!104 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!105 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "key_state", file: !106, line: 182, baseType: !7, size: 32, elements: !107)
!106 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!107 = !{!108, !109}
!108 = !DIEnumerator(name: "KEY_IS_UNINSTANTIATED", value: 0)
!109 = !DIEnumerator(name: "KEY_IS_POSITIVE", value: 1)
!110 = !{!111, !289, !4016, !593, !371, !1526, !4029, !1762, !267, !4030, !253, !4031, !4034, !4035, !4037}
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !113)
!113 = !{!114, !115, !122, !127, !3692, !3718, !3719, !3720, !3721, !3725, !3728, !3729, !3730, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3797, !3801, !3819, !3836, !3837, !3838, !3839, !3848, !3871, !3872, !3875, !3878, !3879, !3880, !3881, !3882, !3883, !3884, !3889, !3890, !3976, !3984, !3985, !3986, !3988, !3992, !3993, !3997, !3998, !3999, !4000, !4002, !4003, !4004, !4011, !4012, !4013, !4015}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !112, file: !6, line: 403, baseType: !5, size: 32)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !112, file: !6, line: 406, baseType: !116, size: 128, offset: 64)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !117, line: 190, size: 128, elements: !118)
!117 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!118 = !{!119, !121}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !116, file: !117, line: 191, baseType: !120, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !116, file: !117, line: 191, baseType: !120, size: 64, offset: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !112, file: !6, line: 409, baseType: !123, size: 448, offset: 192)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 448, elements: !125)
!124 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!125 = !{!126}
!126 = !DISubrange(count: 56)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !112, file: !6, line: 417, baseType: !128, size: 768, offset: 640)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !129)
!129 = !{!130, !3686, !3687, !3688, !3691}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !128, file: !6, line: 46, baseType: !131, size: 512)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !132, line: 64, size: 512, elements: !133)
!132 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!133 = !{!134, !137, !138, !140, !230, !3585, !3676, !3681, !3682, !3683, !3684, !3685}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !131, file: !132, line: 65, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !124)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !131, file: !132, line: 66, baseType: !116, size: 128, offset: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !131, file: !132, line: 67, baseType: !139, size: 64, offset: 192)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !131, file: !132, line: 68, baseType: !141, size: 64, offset: 256)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !132, line: 168, size: 768, elements: !143)
!143 = !{!144, !145, !189, !190}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !142, file: !132, line: 169, baseType: !116, size: 128)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !142, file: !132, line: 170, baseType: !146, size: 32, offset: 128)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !147, line: 29, baseType: !148)
!147 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !147, line: 17, size: 32, elements: !149)
!149 = !{!150}
!150 = !DIDerivedType(tag: DW_TAG_member, scope: !148, file: !147, line: 18, baseType: !151, size: 32)
!151 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !148, file: !147, line: 18, size: 32, elements: !152)
!152 = !{!153}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !151, file: !147, line: 19, baseType: !154, size: 32)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !155, line: 14, size: 32, elements: !156)
!155 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!156 = !{!157}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !154, file: !155, line: 15, baseType: !158, size: 32)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !159, line: 44, baseType: !160)
!159 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !159, line: 14, size: 32, elements: !161)
!161 = !{!162}
!162 = !DIDerivedType(tag: DW_TAG_member, scope: !160, file: !159, line: 15, baseType: !163, size: 32)
!163 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !160, file: !159, line: 15, size: 32, elements: !164)
!164 = !{!165, !171, !181}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !163, file: !159, line: 16, baseType: !166, size: 32)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !117, line: 174, baseType: !167)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !117, line: 172, size: 32, elements: !168)
!168 = !{!169}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !167, file: !117, line: 173, baseType: !170, size: 32)
!170 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!171 = !DIDerivedType(tag: DW_TAG_member, scope: !163, file: !159, line: 24, baseType: !172, size: 16)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !163, file: !159, line: 24, size: 16, elements: !173)
!173 = !{!174, !180}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !172, file: !159, line: 25, baseType: !175, size: 8)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !176, line: 17, baseType: !177)
!176 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !178, line: 21, baseType: !179)
!178 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!179 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !172, file: !159, line: 26, baseType: !175, size: 8, offset: 8)
!181 = !DIDerivedType(tag: DW_TAG_member, scope: !163, file: !159, line: 28, baseType: !182, size: 32)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !163, file: !159, line: 28, size: 32, elements: !183)
!183 = !{!184, !188}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !182, file: !159, line: 29, baseType: !185, size: 16)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !176, line: 19, baseType: !186)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !178, line: 24, baseType: !187)
!187 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !182, file: !159, line: 30, baseType: !185, size: 16, offset: 16)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !142, file: !132, line: 171, baseType: !131, size: 512, offset: 192)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !142, file: !132, line: 172, baseType: !191, size: 64, offset: 704)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !193)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !132, line: 133, size: 192, elements: !194)
!194 = !{!195, !202, !207}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !193, file: !132, line: 134, baseType: !196, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !197)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DISubroutineType(types: !199)
!199 = !{!170, !200}
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !131)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !193, file: !132, line: 135, baseType: !203, size: 64, offset: 64)
!203 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !204)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DISubroutineType(types: !206)
!206 = !{!135, !200}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !193, file: !132, line: 136, baseType: !208, size: 64, offset: 128)
!208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !209)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DISubroutineType(types: !211)
!211 = !{!170, !200, !212}
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !132, line: 125, size: 20736, elements: !214)
!214 = !{!215, !220, !224, !225, !229}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !213, file: !132, line: 126, baseType: !216, size: 192)
!216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 192, elements: !218)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!218 = !{!219}
!219 = !DISubrange(count: 3)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !213, file: !132, line: 127, baseType: !221, size: 4096, offset: 192)
!221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 4096, elements: !222)
!222 = !{!223}
!223 = !DISubrange(count: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !213, file: !132, line: 128, baseType: !170, size: 32, offset: 4288)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !213, file: !132, line: 129, baseType: !226, size: 16384, offset: 4320)
!226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 16384, elements: !227)
!227 = !{!228}
!228 = !DISubrange(count: 2048)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !213, file: !132, line: 130, baseType: !170, size: 32, offset: 20704)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !131, file: !132, line: 69, baseType: !231, size: 64, offset: 320)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !233)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !132, line: 116, size: 384, elements: !234)
!234 = !{!235, !239, !268, !3547, !3575, !3579}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !233, file: !132, line: 117, baseType: !236, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DISubroutineType(types: !238)
!238 = !{null, !139}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !233, file: !132, line: 118, baseType: !240, size: 64, offset: 64)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !242)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !243, line: 254, size: 128, elements: !244)
!243 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!244 = !{!245, !260}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !242, file: !243, line: 255, baseType: !246, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DISubroutineType(types: !248)
!248 = !{!249, !139, !254, !217}
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !117, line: 66, baseType: !250)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !251, line: 73, baseType: !252)
!251 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !251, line: 15, baseType: !253)
!253 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !243, line: 30, size: 128, elements: !256)
!256 = !{!257, !258}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !255, file: !243, line: 31, baseType: !135, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !255, file: !243, line: 32, baseType: !259, size: 16, offset: 64)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !117, line: 24, baseType: !187)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !242, file: !243, line: 256, baseType: !261, size: 64, offset: 64)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DISubroutineType(types: !263)
!263 = !{!249, !139, !254, !135, !264}
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !117, line: 61, baseType: !265)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !251, line: 72, baseType: !266)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !251, line: 16, baseType: !267)
!267 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !233, file: !132, line: 119, baseType: !269, size: 64, offset: 128)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !272)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !243, line: 84, size: 320, elements: !273)
!273 = !{!274, !275, !279, !3543, !3545}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !272, file: !243, line: 85, baseType: !135, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !272, file: !243, line: 86, baseType: !276, size: 64, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DISubroutineType(types: !278)
!278 = !{!259, !139, !254, !170}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !272, file: !243, line: 88, baseType: !280, size: 64, offset: 128)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DISubroutineType(types: !282)
!282 = !{!259, !139, !283, !170}
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !243, line: 175, size: 512, elements: !285)
!285 = !{!286, !287, !288, !290, !3534, !3538, !3539}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !284, file: !243, line: 176, baseType: !255, size: 128)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !284, file: !243, line: 177, baseType: !264, size: 64, offset: 128)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !284, file: !243, line: 178, baseType: !289, size: 64, offset: 192)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !284, file: !243, line: 179, baseType: !291, size: 64, offset: 256)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DISubroutineType(types: !293)
!293 = !{!294}
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !296)
!296 = !{!297, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3528, !3529, !3530, !3531, !3532, !3533}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !295, file: !14, line: 473, baseType: !298, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !300)
!300 = !{!301, !302, !303, !311, !312, !319, !320, !323, !324, !3306, !3307, !3308, !3309, !3310, !3316, !3317, !3318, !3319, !3320, !3321, !3322, !3323, !3324, !3325, !3326, !3327, !3328, !3329, !3330, !3331, !3332, !3333, !3334, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3350, !3353, !3354, !3355, !3364, !3365, !3366, !3367}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !299, file: !14, line: 642, baseType: !259, size: 16)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !299, file: !14, line: 643, baseType: !187, size: 16, offset: 16)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !299, file: !14, line: 644, baseType: !304, size: 32, offset: 32)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !305, line: 23, baseType: !306)
!305 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !305, line: 21, size: 32, elements: !307)
!307 = !{!308}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !306, file: !305, line: 22, baseType: !309, size: 32)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !117, line: 37, baseType: !310)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !251, line: 49, baseType: !7)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !299, file: !14, line: 645, baseType: !116, size: 128, offset: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !299, file: !14, line: 646, baseType: !313, size: 32, offset: 192)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !305, line: 28, baseType: !314)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !305, line: 26, size: 32, elements: !315)
!315 = !{!316}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !314, file: !305, line: 27, baseType: !317, size: 32)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !117, line: 38, baseType: !318)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !251, line: 50, baseType: !7)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !299, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !299, file: !14, line: 650, baseType: !321, size: 64, offset: 256)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !299, file: !14, line: 651, baseType: !321, size: 64, offset: 320)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !299, file: !14, line: 654, baseType: !325, size: 64, offset: 384)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !327)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !328)
!328 = !{!329, !3131, !3144, !3148, !3152, !3156, !3160, !3164, !3168, !3172, !3176, !3177, !3181, !3185, !3222, !3251, !3255, !3261, !3265, !3269, !3273, !3277, !3281, !3287, !3291}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !327, file: !14, line: 1967, baseType: !330, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DISubroutineType(types: !332)
!332 = !{!333, !298, !333, !7}
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !335, line: 82, size: 1536, elements: !336)
!335 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!336 = !{!337, !338, !348, !356, !357, !377, !378, !382, !395, !3114, !3115, !3116, !3117, !3123, !3124, !3125}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !334, file: !335, line: 84, baseType: !7, size: 32)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !334, file: !335, line: 85, baseType: !339, size: 32, offset: 32)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !340, line: 275, baseType: !341)
!340 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !340, line: 275, size: 32, elements: !342)
!342 = !{!343}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !341, file: !340, line: 275, baseType: !344, size: 32)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !340, line: 69, baseType: !345)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !340, line: 64, size: 32, elements: !346)
!346 = !{!347}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !345, file: !340, line: 65, baseType: !7, size: 32)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !334, file: !335, line: 86, baseType: !349, size: 128, offset: 64)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !350, line: 38, size: 128, elements: !351)
!350 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!351 = !{!352, !354}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !349, file: !350, line: 39, baseType: !353, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !349, file: !350, line: 39, baseType: !355, size: 64, offset: 64)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !334, file: !335, line: 87, baseType: !333, size: 64, offset: 192)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !334, file: !335, line: 88, baseType: !358, size: 128, offset: 256)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !335, line: 49, size: 128, elements: !359)
!359 = !{!360, !374}
!360 = !DIDerivedType(tag: DW_TAG_member, scope: !358, file: !335, line: 50, baseType: !361, size: 64)
!361 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !358, file: !335, line: 50, size: 64, elements: !362)
!362 = !{!363, !370}
!363 = !DIDerivedType(tag: DW_TAG_member, scope: !361, file: !335, line: 51, baseType: !364, size: 64)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !361, file: !335, line: 51, size: 64, elements: !365)
!365 = !{!366, !369}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !364, file: !335, line: 52, baseType: !367, size: 32)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !176, line: 21, baseType: !368)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !178, line: 27, baseType: !7)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !364, file: !335, line: 52, baseType: !367, size: 32, offset: 32)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !361, file: !335, line: 54, baseType: !371, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !176, line: 23, baseType: !372)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !178, line: 31, baseType: !373)
!373 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !358, file: !335, line: 56, baseType: !375, size: 64, offset: 64)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !179)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !334, file: !335, line: 89, baseType: !298, size: 64, offset: 384)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !334, file: !335, line: 91, baseType: !379, size: 256, offset: 448)
!379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 256, elements: !380)
!380 = !{!381}
!381 = !DISubrange(count: 32)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !334, file: !335, line: 94, baseType: !383, size: 64, offset: 704)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !384, line: 25, size: 64, elements: !385)
!384 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!385 = !{!386}
!386 = !DIDerivedType(tag: DW_TAG_member, scope: !383, file: !384, line: 26, baseType: !387, size: 64)
!387 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !383, file: !384, line: 26, size: 64, elements: !388)
!388 = !{!389, !390}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !387, file: !384, line: 28, baseType: !372, size: 64, align: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, scope: !387, file: !384, line: 30, baseType: !391, size: 64)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !387, file: !384, line: 30, size: 64, elements: !392)
!392 = !{!393, !394}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !391, file: !384, line: 31, baseType: !146, size: 32)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !391, file: !384, line: 32, baseType: !170, size: 32, offset: 32)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !334, file: !335, line: 95, baseType: !396, size: 64, offset: 768)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !398)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !335, line: 128, size: 1024, align: 512, elements: !399)
!399 = !{!400, !404, !405, !412, !418, !422, !426, !430, !431, !435, !439, !3104, !3108}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !398, file: !335, line: 129, baseType: !401, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = !DISubroutineType(types: !403)
!403 = !{!170, !333, !7}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !398, file: !335, line: 130, baseType: !401, size: 64, offset: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !398, file: !335, line: 131, baseType: !406, size: 64, offset: 128)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DISubroutineType(types: !408)
!408 = !{!170, !409, !411}
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !334)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !398, file: !335, line: 132, baseType: !413, size: 64, offset: 192)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = !DISubroutineType(types: !415)
!415 = !{!170, !409, !7, !135, !416}
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !358)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !398, file: !335, line: 134, baseType: !419, size: 64, offset: 256)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = !DISubroutineType(types: !421)
!421 = !{!170, !409}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !398, file: !335, line: 135, baseType: !423, size: 64, offset: 320)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DISubroutineType(types: !425)
!425 = !{!170, !333}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !398, file: !335, line: 136, baseType: !427, size: 64, offset: 384)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DISubroutineType(types: !429)
!429 = !{null, !333}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !398, file: !335, line: 137, baseType: !427, size: 64, offset: 448)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !398, file: !335, line: 138, baseType: !432, size: 64, offset: 512)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DISubroutineType(types: !434)
!434 = !{null, !333, !298}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !398, file: !335, line: 139, baseType: !436, size: 64, offset: 576)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DISubroutineType(types: !438)
!438 = !{!217, !333, !217, !170}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !398, file: !335, line: 140, baseType: !440, size: 64, offset: 640)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DISubroutineType(types: !442)
!442 = !{!443, !3103}
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !445, line: 70, size: 256, elements: !446)
!445 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!446 = !{!447, !448, !3099, !3100}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !444, file: !445, line: 71, baseType: !333, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !444, file: !445, line: 72, baseType: !449, size: 64, offset: 64)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !451)
!451 = !{!452, !453, !456, !457, !458, !462, !511, !1535, !1575, !1660, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1677, !1681, !1682, !1685, !1688, !1691, !1694, !1695, !1696, !1737, !3030, !3031, !3032, !3033, !3034, !3035, !3038, !3040, !3047, !3048, !3049, !3050, !3051, !3066, !3067, !3068, !3069, !3070, !3073, !3074, !3075, !3090, !3091, !3092, !3093, !3094, !3095, !3096, !3097, !3098}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !450, file: !14, line: 1191, baseType: !116, size: 128)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !450, file: !14, line: 1192, baseType: !454, size: 32, offset: 128)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !117, line: 21, baseType: !455)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !117, line: 18, baseType: !367)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !450, file: !14, line: 1193, baseType: !179, size: 8, offset: 160)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !450, file: !14, line: 1194, baseType: !267, size: 64, offset: 192)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !450, file: !14, line: 1195, baseType: !459, size: 64, offset: 256)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !117, line: 52, baseType: !460)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !251, line: 88, baseType: !461)
!461 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !450, file: !14, line: 1196, baseType: !463, size: 64, offset: 320)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !465)
!465 = !{!466, !467, !468, !475, !479, !483, !487, !488, !489, !499, !503, !504, !505, !507, !508, !509, !510}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !464, file: !14, line: 2367, baseType: !135, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !464, file: !14, line: 2368, baseType: !170, size: 32, offset: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !464, file: !14, line: 2376, baseType: !469, size: 64, offset: 128)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DISubroutineType(types: !471)
!471 = !{!170, !472}
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !474, line: 32, flags: DIFlagFwdDecl)
!474 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!475 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !464, file: !14, line: 2377, baseType: !476, size: 64, offset: 192)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !478)
!478 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !464, file: !14, line: 2378, baseType: !480, size: 64, offset: 256)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DISubroutineType(types: !482)
!482 = !{!333, !463, !170, !135, !289}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !464, file: !14, line: 2380, baseType: !484, size: 64, offset: 320)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DISubroutineType(types: !486)
!486 = !{null, !449}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !464, file: !14, line: 2381, baseType: !111, size: 64, offset: 384)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !464, file: !14, line: 2382, baseType: !463, size: 64, offset: 448)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !464, file: !14, line: 2383, baseType: !490, size: 64, offset: 512)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !117, line: 194, size: 64, elements: !491)
!491 = !{!492}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !490, file: !117, line: 195, baseType: !493, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !117, line: 198, size: 128, elements: !495)
!495 = !{!496, !497}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !494, file: !117, line: 199, baseType: !493, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !494, file: !117, line: 199, baseType: !498, size: 64, offset: 64)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !464, file: !14, line: 2385, baseType: !500, offset: 576)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !501, line: 206, elements: !502)
!501 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!502 = !{}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !464, file: !14, line: 2386, baseType: !500, offset: 576)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !464, file: !14, line: 2387, baseType: !500, offset: 576)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !464, file: !14, line: 2388, baseType: !506, offset: 576)
!506 = !DICompositeType(tag: DW_TAG_array_type, baseType: !500, elements: !218)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !464, file: !14, line: 2390, baseType: !500, offset: 576)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !464, file: !14, line: 2391, baseType: !500, offset: 576)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !464, file: !14, line: 2392, baseType: !500, offset: 576)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !464, file: !14, line: 2393, baseType: !500, offset: 576)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !450, file: !14, line: 1197, baseType: !512, size: 64, offset: 384)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !514)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !515)
!515 = !{!516, !520, !524, !525, !529, !535, !539, !540, !541, !545, !549, !553, !554, !555, !561, !566, !567, !1459, !1460, !1461, !1462, !1466, !1470, !1517, !1533, !1534}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !514, file: !14, line: 2058, baseType: !517, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DISubroutineType(types: !519)
!519 = !{!298, !449}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !514, file: !14, line: 2059, baseType: !521, size: 64, offset: 64)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DISubroutineType(types: !523)
!523 = !{null, !298}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !514, file: !14, line: 2060, baseType: !521, size: 64, offset: 128)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !514, file: !14, line: 2062, baseType: !526, size: 64, offset: 192)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = !DISubroutineType(types: !528)
!528 = !{null, !298, !170}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !514, file: !14, line: 2063, baseType: !530, size: 64, offset: 256)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DISubroutineType(types: !532)
!532 = !{!170, !298, !533}
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !514, file: !14, line: 2064, baseType: !536, size: 64, offset: 320)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DISubroutineType(types: !538)
!538 = !{!170, !298}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !514, file: !14, line: 2065, baseType: !521, size: 64, offset: 384)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !514, file: !14, line: 2066, baseType: !484, size: 64, offset: 448)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !514, file: !14, line: 2067, baseType: !542, size: 64, offset: 512)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DISubroutineType(types: !544)
!544 = !{!170, !449, !170}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !514, file: !14, line: 2068, baseType: !546, size: 64, offset: 576)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = !DISubroutineType(types: !548)
!548 = !{!170, !449, !13}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !514, file: !14, line: 2069, baseType: !550, size: 64, offset: 640)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = !DISubroutineType(types: !552)
!552 = !{!170, !449}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !514, file: !14, line: 2070, baseType: !546, size: 64, offset: 704)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !514, file: !14, line: 2071, baseType: !550, size: 64, offset: 768)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !514, file: !14, line: 2072, baseType: !556, size: 64, offset: 832)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DISubroutineType(types: !558)
!558 = !{!170, !333, !559}
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !514, file: !14, line: 2073, baseType: !562, size: 64, offset: 896)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DISubroutineType(types: !564)
!564 = !{!170, !449, !565, !217}
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !514, file: !14, line: 2074, baseType: !484, size: 64, offset: 960)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !514, file: !14, line: 2076, baseType: !568, size: 64, offset: 1024)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DISubroutineType(types: !570)
!570 = !{!170, !571, !333}
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !573, line: 17, size: 960, elements: !574)
!573 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!574 = !{!575, !576, !577, !578, !579, !580, !581, !582, !603, !625, !626, !1458}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !572, file: !573, line: 18, baseType: !217, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !572, file: !573, line: 19, baseType: !264, size: 64, offset: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !572, file: !573, line: 20, baseType: !264, size: 64, offset: 128)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !572, file: !573, line: 21, baseType: !264, size: 64, offset: 192)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !572, file: !573, line: 22, baseType: !264, size: 64, offset: 256)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !572, file: !573, line: 23, baseType: !459, size: 64, offset: 320)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !572, file: !573, line: 24, baseType: !459, size: 64, offset: 384)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !572, file: !573, line: 25, baseType: !583, size: 256, offset: 448)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !584, line: 66, size: 256, elements: !585)
!584 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!585 = !{!586, !595, !597, !602}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !583, file: !584, line: 67, baseType: !587, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !588, line: 13, baseType: !589)
!588 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !117, line: 181, baseType: !590)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !117, line: 179, size: 64, elements: !591)
!591 = !{!592}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !590, file: !117, line: 180, baseType: !593, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !176, line: 22, baseType: !594)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !178, line: 30, baseType: !461)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !583, file: !584, line: 68, baseType: !596, size: 32, offset: 64)
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !155, line: 23, baseType: !154)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !583, file: !584, line: 70, baseType: !598, size: 32, offset: 96)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !599, line: 15, size: 32, elements: !600)
!599 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!600 = !{!601}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !598, file: !599, line: 20, baseType: !166, size: 32)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !583, file: !584, line: 72, baseType: !116, size: 128, offset: 128)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !572, file: !573, line: 26, baseType: !604, size: 64, offset: 704)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !606)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !573, line: 32, size: 256, elements: !607)
!607 = !{!608, !613, !617, !621}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !606, file: !573, line: 33, baseType: !609, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DISubroutineType(types: !611)
!611 = !{!289, !571, !612}
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !606, file: !573, line: 34, baseType: !614, size: 64, offset: 64)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DISubroutineType(types: !616)
!616 = !{null, !571, !289}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !606, file: !573, line: 35, baseType: !618, size: 64, offset: 128)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DISubroutineType(types: !620)
!620 = !{!289, !571, !289, !612}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !606, file: !573, line: 36, baseType: !622, size: 64, offset: 192)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DISubroutineType(types: !624)
!624 = !{!170, !571, !289}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !572, file: !573, line: 27, baseType: !170, size: 32, offset: 768)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !572, file: !573, line: 28, baseType: !627, size: 64, offset: 832)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !629)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !630)
!630 = !{!631, !650, !651, !653, !654, !655, !656, !657, !720, !1048, !1057, !1063, !1064, !1448, !1449, !1450, !1451, !1453, !1454, !1457}
!631 = !DIDerivedType(tag: DW_TAG_member, scope: !629, file: !14, line: 995, baseType: !632, size: 128)
!632 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !629, file: !14, line: 995, size: 128, elements: !633)
!633 = !{!634, !640, !649}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !632, file: !14, line: 996, baseType: !635, size: 64)
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !636, line: 60, size: 64, elements: !637)
!636 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!637 = !{!638}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !635, file: !636, line: 61, baseType: !639, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !632, file: !14, line: 997, baseType: !641, size: 128, align: 64)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !117, line: 232, size: 128, align: 64, elements: !642)
!642 = !{!643, !645}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !641, file: !117, line: 233, baseType: !644, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !641, file: !117, line: 234, baseType: !646, size: 64, offset: 64)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DISubroutineType(types: !648)
!648 = !{null, !644}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !632, file: !14, line: 998, baseType: !7, size: 32)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !629, file: !14, line: 1005, baseType: !146, size: 32, offset: 128)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !629, file: !14, line: 1006, baseType: !652, size: 32, offset: 160)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !117, line: 156, baseType: !7)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !629, file: !14, line: 1007, baseType: !587, size: 64, offset: 192)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !629, file: !14, line: 1008, baseType: !583, size: 256, offset: 256)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !629, file: !14, line: 1009, baseType: !459, size: 64, offset: 512)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !629, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !629, file: !14, line: 1011, baseType: !658, size: 256, offset: 640)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !659)
!659 = !{!660, !681, !716, !717, !718, !719}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !658, file: !14, line: 949, baseType: !661, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !662, line: 34, baseType: !663)
!662 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !662, line: 25, size: 64, elements: !664)
!664 = !{!665}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !663, file: !662, line: 26, baseType: !666, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !667, line: 27, baseType: !668)
!667 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !667, line: 13, size: 64, elements: !669)
!669 = !{!670, !680}
!670 = !DIDerivedType(tag: DW_TAG_member, scope: !668, file: !667, line: 14, baseType: !671, size: 32)
!671 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !668, file: !667, line: 14, size: 32, elements: !672)
!672 = !{!673, !674}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !671, file: !667, line: 15, baseType: !166, size: 32)
!674 = !DIDerivedType(tag: DW_TAG_member, scope: !671, file: !667, line: 16, baseType: !675, size: 32)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !671, file: !667, line: 16, size: 32, elements: !676)
!676 = !{!677, !678}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !675, file: !667, line: 18, baseType: !175, size: 8)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !675, file: !667, line: 19, baseType: !679, size: 24, offset: 8)
!679 = !DICompositeType(tag: DW_TAG_array_type, baseType: !175, size: 24, elements: !218)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !668, file: !667, line: 26, baseType: !158, size: 32, offset: 32)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !658, file: !14, line: 950, baseType: !682, size: 64, offset: 64)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !19, line: 59, size: 768, elements: !684)
!684 = !{!685, !691, !692, !693, !697, !698, !705, !706}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !683, file: !19, line: 61, baseType: !686, size: 32)
!686 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !687, line: 113, baseType: !688)
!687 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !687, line: 111, size: 32, elements: !689)
!689 = !{!690}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !688, file: !687, line: 112, baseType: !166, size: 32)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !683, file: !19, line: 62, baseType: !7, size: 32, offset: 32)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !683, file: !19, line: 63, baseType: !146, size: 32, offset: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !683, file: !19, line: 65, baseType: !694, size: 256, offset: 128)
!694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !490, size: 256, elements: !695)
!695 = !{!696}
!696 = !DISubrange(count: 4)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !683, file: !19, line: 66, baseType: !490, size: 64, offset: 384)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !683, file: !19, line: 68, baseType: !699, size: 192, offset: 448)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !700, line: 41, baseType: !701)
!700 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !700, line: 37, size: 192, elements: !702)
!702 = !{!703, !704}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !701, file: !700, line: 38, baseType: !146, size: 32)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !701, file: !700, line: 39, baseType: !116, size: 128, offset: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !683, file: !19, line: 69, baseType: !641, size: 128, align: 64, offset: 640)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !683, file: !19, line: 70, baseType: !707, offset: 768)
!707 = !DICompositeType(tag: DW_TAG_array_type, baseType: !708, elements: !714)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !19, line: 54, size: 128, elements: !709)
!709 = !{!710, !711}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !708, file: !19, line: 55, baseType: !170, size: 32)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !708, file: !19, line: 56, baseType: !712, size: 64, offset: 64)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !19, line: 56, flags: DIFlagFwdDecl)
!714 = !{!715}
!715 = !DISubrange(count: -1)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !658, file: !14, line: 951, baseType: !18, size: 32, offset: 128)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !658, file: !14, line: 952, baseType: !304, size: 32, offset: 160)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !658, file: !14, line: 952, baseType: !304, size: 32, offset: 192)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !658, file: !14, line: 953, baseType: !170, size: 32, offset: 224)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !629, file: !14, line: 1012, baseType: !721, size: 64, offset: 896)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !723)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !724, line: 110, size: 1472, elements: !725)
!724 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!725 = !{!726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !742, !743, !744, !745, !746, !747, !993, !994, !995, !996, !997, !1028, !1031, !1035, !1043}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !723, file: !724, line: 111, baseType: !587, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !723, file: !724, line: 112, baseType: !304, size: 32, offset: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !723, file: !724, line: 113, baseType: !313, size: 32, offset: 96)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !723, file: !724, line: 114, baseType: !304, size: 32, offset: 128)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !723, file: !724, line: 115, baseType: !313, size: 32, offset: 160)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !723, file: !724, line: 116, baseType: !304, size: 32, offset: 192)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !723, file: !724, line: 117, baseType: !313, size: 32, offset: 224)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !723, file: !724, line: 118, baseType: !304, size: 32, offset: 256)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !723, file: !724, line: 119, baseType: !313, size: 32, offset: 288)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !723, file: !724, line: 120, baseType: !7, size: 32, offset: 320)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !723, file: !724, line: 121, baseType: !737, size: 64, offset: 384)
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !738, line: 24, baseType: !739)
!738 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !738, line: 24, size: 64, elements: !740)
!740 = !{!741}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !739, file: !738, line: 24, baseType: !371, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !723, file: !724, line: 122, baseType: !737, size: 64, offset: 448)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !723, file: !724, line: 123, baseType: !737, size: 64, offset: 512)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !723, file: !724, line: 124, baseType: !737, size: 64, offset: 576)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !723, file: !724, line: 125, baseType: !737, size: 64, offset: 640)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !723, file: !724, line: 127, baseType: !179, size: 8, offset: 704)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !723, file: !724, line: 129, baseType: !748, size: 64, offset: 768)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !106, line: 195, size: 1728, elements: !750)
!750 = !{!751, !752, !757, !769, !778, !781, !782, !789, !790, !791, !792, !795, !796, !797, !799, !800, !976, !992}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !749, file: !106, line: 196, baseType: !686, size: 32)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !749, file: !106, line: 197, baseType: !753, size: 32, offset: 32)
!753 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !106, line: 28, baseType: !754)
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !117, line: 104, baseType: !755)
!755 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !176, line: 20, baseType: !756)
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !178, line: 26, baseType: !170)
!757 = !DIDerivedType(tag: DW_TAG_member, scope: !749, file: !106, line: 198, baseType: !758, size: 192, offset: 64)
!758 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !749, file: !106, line: 198, size: 192, elements: !759)
!759 = !{!760, !761}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !758, file: !106, line: 199, baseType: !116, size: 128)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !758, file: !106, line: 200, baseType: !762, size: 192, align: 64)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !763, line: 5, size: 192, align: 64, elements: !764)
!763 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!764 = !{!765, !766, !768}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !762, file: !763, line: 6, baseType: !267, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !762, file: !763, line: 7, baseType: !767, size: 64, offset: 64)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !762, file: !763, line: 8, baseType: !767, size: 64, offset: 128)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !749, file: !106, line: 205, baseType: !770, size: 320, offset: 256)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !771, line: 48, size: 320, elements: !772)
!771 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!772 = !{!773, !774, !775, !776, !777}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !770, file: !771, line: 49, baseType: !587, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !770, file: !771, line: 55, baseType: !587, size: 64, offset: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !770, file: !771, line: 57, baseType: !598, size: 32, offset: 128)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !770, file: !771, line: 59, baseType: !596, size: 32, offset: 160)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !770, file: !771, line: 60, baseType: !116, size: 128, offset: 192)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !749, file: !106, line: 206, baseType: !779, size: 64, offset: 576)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !106, line: 206, flags: DIFlagFwdDecl)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !749, file: !106, line: 207, baseType: !289, size: 64, offset: 640)
!782 = !DIDerivedType(tag: DW_TAG_member, scope: !749, file: !106, line: 208, baseType: !783, size: 64, offset: 704)
!783 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !749, file: !106, line: 208, size: 64, elements: !784)
!784 = !{!785, !788}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !783, file: !106, line: 209, baseType: !786, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !787, line: 8, baseType: !594)
!787 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!788 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !783, file: !106, line: 210, baseType: !786, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !749, file: !106, line: 212, baseType: !786, size: 64, offset: 768)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !749, file: !106, line: 213, baseType: !304, size: 32, offset: 832)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !749, file: !106, line: 214, baseType: !313, size: 32, offset: 864)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !749, file: !106, line: 215, baseType: !793, size: 32, offset: 896)
!793 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !106, line: 31, baseType: !794)
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !117, line: 110, baseType: !367)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !749, file: !106, line: 216, baseType: !187, size: 16, offset: 928)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !749, file: !106, line: 217, baseType: !187, size: 16, offset: 944)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !749, file: !106, line: 221, baseType: !798, size: 16, offset: 960)
!798 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !749, file: !106, line: 228, baseType: !267, size: 64, offset: 1024)
!800 = !DIDerivedType(tag: DW_TAG_member, scope: !749, file: !106, line: 245, baseType: !801, size: 320, offset: 1088)
!801 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !749, file: !106, line: 245, size: 320, elements: !802)
!802 = !{!803, !968}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !801, file: !106, line: 246, baseType: !804, size: 320)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !106, line: 114, size: 320, elements: !805)
!805 = !{!806, !807, !819, !960, !967}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !804, file: !106, line: 116, baseType: !267, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, scope: !804, file: !106, line: 117, baseType: !808, size: 64, offset: 64)
!808 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !804, file: !106, line: 117, size: 64, elements: !809)
!809 = !{!810, !818}
!810 = !DIDerivedType(tag: DW_TAG_member, scope: !808, file: !106, line: 118, baseType: !811, size: 64)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !808, file: !106, line: 118, size: 64, elements: !812)
!812 = !{!813, !814}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !811, file: !106, line: 120, baseType: !185, size: 16)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !811, file: !106, line: 121, baseType: !815, size: 48, offset: 16)
!815 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 48, elements: !816)
!816 = !{!817}
!817 = !DISubrange(count: 6)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !808, file: !106, line: 127, baseType: !267, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !804, file: !106, line: 129, baseType: !820, size: 64, offset: 128)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !822, line: 64, size: 1344, elements: !823)
!822 = !DIFile(filename: "./include/linux/key-type.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79a6b816f9397cf1462a94b9d3d8f5a6")
!823 = !{!824, !825, !826, !827, !831, !852, !856, !860, !861, !881, !885, !889, !890, !894, !898, !903, !921, !949, !954, !958, !959}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !821, file: !822, line: 66, baseType: !135, size: 64)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "def_datalen", scope: !821, file: !822, line: 72, baseType: !264, size: 64, offset: 64)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !821, file: !822, line: 74, baseType: !7, size: 32, offset: 128)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "vet_description", scope: !821, file: !822, line: 79, baseType: !828, size: 64, offset: 192)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DISubroutineType(types: !830)
!830 = !{!170, !135}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "preparse", scope: !821, file: !822, line: 85, baseType: !832, size: 64, offset: 256)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DISubroutineType(types: !834)
!834 = !{!170, !835}
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_preparsed_payload", file: !822, line: 31, size: 640, elements: !837)
!837 = !{!838, !839, !840, !846, !849, !850, !851}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "orig_description", scope: !836, file: !822, line: 32, baseType: !135, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !836, file: !822, line: 33, baseType: !217, size: 64, offset: 64)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !836, file: !822, line: 34, baseType: !841, size: 256, offset: 128)
!841 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !106, line: 134, size: 256, elements: !842)
!842 = !{!843, !844}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !841, file: !106, line: 135, baseType: !289, size: 64)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !841, file: !106, line: 136, baseType: !845, size: 256)
!845 = !DICompositeType(tag: DW_TAG_array_type, baseType: !289, size: 256, elements: !695)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !836, file: !822, line: 35, baseType: !847, size: 64, offset: 384)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !836, file: !822, line: 36, baseType: !264, size: 64, offset: 448)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !836, file: !822, line: 37, baseType: !264, size: 64, offset: 512)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !836, file: !822, line: 38, baseType: !786, size: 64, offset: 576)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "free_preparse", scope: !821, file: !822, line: 89, baseType: !853, size: 64, offset: 320)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DISubroutineType(types: !855)
!855 = !{null, !835}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "instantiate", scope: !821, file: !822, line: 95, baseType: !857, size: 64, offset: 384)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DISubroutineType(types: !859)
!859 = !{!170, !748, !835}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !821, file: !822, line: 102, baseType: !857, size: 64, offset: 448)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "match_preparse", scope: !821, file: !822, line: 108, baseType: !862, size: 64, offset: 512)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = !DISubroutineType(types: !864)
!864 = !{!170, !865}
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_match_data", file: !822, line: 46, size: 256, elements: !867)
!867 = !{!868, !878, !879, !880}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "cmp", scope: !866, file: !822, line: 51, baseType: !869, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DISubroutineType(types: !871)
!871 = !{!872, !874, !876}
!872 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !117, line: 35, baseType: !873)
!873 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !749)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !866)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "raw_data", scope: !866, file: !822, line: 54, baseType: !847, size: 64, offset: 64)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "preparsed", scope: !866, file: !822, line: 55, baseType: !289, size: 64, offset: 128)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "lookup_type", scope: !866, file: !822, line: 56, baseType: !7, size: 32, offset: 192)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "match_free", scope: !821, file: !822, line: 112, baseType: !882, size: 64, offset: 576)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DISubroutineType(types: !884)
!884 = !{null, !865}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "revoke", scope: !821, file: !822, line: 117, baseType: !886, size: 64, offset: 640)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = !DISubroutineType(types: !888)
!888 = !{null, !748}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !821, file: !822, line: 120, baseType: !886, size: 64, offset: 704)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "describe", scope: !821, file: !822, line: 123, baseType: !891, size: 64, offset: 768)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DISubroutineType(types: !893)
!893 = !{null, !874, !571}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !821, file: !822, line: 132, baseType: !895, size: 64, offset: 832)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DISubroutineType(types: !897)
!897 = !{!253, !874, !217, !264}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "request_key", scope: !821, file: !822, line: 142, baseType: !899, size: 64, offset: 896)
!899 = !DIDerivedType(tag: DW_TAG_typedef, name: "request_key_actor_t", file: !822, line: 41, baseType: !900)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = !DISubroutineType(types: !902)
!902 = !{!170, !748, !289}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "lookup_restriction", scope: !821, file: !822, line: 150, baseType: !904, size: 64, offset: 960)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = !DISubroutineType(types: !906)
!906 = !{!907, !135}
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !106, line: 176, size: 192, elements: !909)
!909 = !{!910, !919, !920}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !908, file: !106, line: 177, baseType: !911, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !106, line: 171, baseType: !912)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = !DISubroutineType(types: !914)
!914 = !{!170, !748, !915, !917, !748}
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !821)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !841)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !908, file: !106, line: 178, baseType: !748, size: 64, offset: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !908, file: !106, line: 179, baseType: !820, size: 64, offset: 128)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "asym_query", scope: !821, file: !822, line: 153, baseType: !922, size: 64, offset: 1024)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = !DISubroutineType(types: !924)
!924 = !{!170, !925, !940}
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !927)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_pkey_params", file: !27, line: 29, size: 384, elements: !928)
!928 = !{!929, !930, !931, !932, !933, !934, !939}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !927, file: !27, line: 30, baseType: !748, size: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !927, file: !27, line: 31, baseType: !135, size: 64, offset: 64)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "hash_algo", scope: !927, file: !27, line: 32, baseType: !135, size: 64, offset: 128)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !927, file: !27, line: 33, baseType: !217, size: 64, offset: 192)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "in_len", scope: !927, file: !27, line: 34, baseType: !368, size: 32, offset: 256)
!934 = !DIDerivedType(tag: DW_TAG_member, scope: !927, file: !27, line: 35, baseType: !935, size: 32, offset: 288)
!935 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !927, file: !27, line: 35, size: 32, elements: !936)
!936 = !{!937, !938}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "out_len", scope: !935, file: !27, line: 36, baseType: !368, size: 32)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "in2_len", scope: !935, file: !27, line: 37, baseType: !368, size: 32)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !927, file: !27, line: 39, baseType: !26, size: 8, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_pkey_query", file: !27, line: 13, size: 128, elements: !942)
!942 = !{!943, !944, !945, !946, !947, !948}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "supported_ops", scope: !941, file: !27, line: 14, baseType: !368, size: 32)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "key_size", scope: !941, file: !27, line: 15, baseType: !368, size: 32, offset: 32)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "max_data_size", scope: !941, file: !27, line: 16, baseType: !186, size: 16, offset: 64)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "max_sig_size", scope: !941, file: !27, line: 17, baseType: !186, size: 16, offset: 80)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "max_enc_size", scope: !941, file: !27, line: 18, baseType: !186, size: 16, offset: 96)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "max_dec_size", scope: !941, file: !27, line: 19, baseType: !186, size: 16, offset: 112)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "asym_eds_op", scope: !821, file: !822, line: 155, baseType: !950, size: 64, offset: 1088)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = !DISubroutineType(types: !952)
!952 = !{!170, !953, !847, !289}
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "asym_verify_signature", scope: !821, file: !822, line: 157, baseType: !955, size: 64, offset: 1152)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = !DISubroutineType(types: !957)
!957 = !{!170, !953, !847, !847}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !821, file: !822, line: 161, baseType: !116, size: 128, offset: 1216)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "lock_class", scope: !821, file: !822, line: 162, baseType: !500, offset: 1344)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !804, file: !106, line: 130, baseType: !961, size: 64, offset: 192)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !106, line: 108, size: 192, elements: !963)
!963 = !{!964, !965, !966}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !962, file: !106, line: 109, baseType: !641, size: 128, align: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !962, file: !106, line: 110, baseType: !686, size: 32, offset: 128)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !962, file: !106, line: 111, baseType: !872, size: 8, offset: 160)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !804, file: !106, line: 131, baseType: !135, size: 64, offset: 256)
!968 = !DIDerivedType(tag: DW_TAG_member, scope: !801, file: !106, line: 247, baseType: !969, size: 320)
!969 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !801, file: !106, line: 247, size: 320, elements: !970)
!970 = !{!971, !972, !973, !974, !975}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !969, file: !106, line: 248, baseType: !267, size: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !969, file: !106, line: 249, baseType: !267, size: 64, offset: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !969, file: !106, line: 250, baseType: !820, size: 64, offset: 128)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !969, file: !106, line: 251, baseType: !961, size: 64, offset: 192)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !969, file: !106, line: 252, baseType: !217, size: 64, offset: 256)
!976 = !DIDerivedType(tag: DW_TAG_member, scope: !749, file: !106, line: 260, baseType: !977, size: 256, offset: 1408)
!977 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !749, file: !106, line: 260, size: 256, elements: !978)
!978 = !{!979, !980}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !977, file: !106, line: 261, baseType: !841, size: 256)
!980 = !DIDerivedType(tag: DW_TAG_member, scope: !977, file: !106, line: 262, baseType: !981, size: 256)
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !977, file: !106, line: 262, size: 256, elements: !982)
!982 = !{!983, !984}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !981, file: !106, line: 264, baseType: !116, size: 128)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !981, file: !106, line: 265, baseType: !985, size: 128, offset: 128)
!985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !986, line: 22, size: 128, elements: !987)
!986 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!987 = !{!988, !991}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !985, file: !986, line: 23, baseType: !989, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !986, line: 23, flags: DIFlagFwdDecl)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !985, file: !986, line: 24, baseType: !267, size: 64, offset: 64)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !749, file: !106, line: 280, baseType: !907, size: 64, offset: 1664)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !723, file: !724, line: 130, baseType: !748, size: 64, offset: 832)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !723, file: !724, line: 131, baseType: !748, size: 64, offset: 896)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !723, file: !724, line: 132, baseType: !748, size: 64, offset: 960)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !723, file: !724, line: 135, baseType: !289, size: 64, offset: 1024)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !723, file: !724, line: 137, baseType: !998, size: 64, offset: 1088)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1000, line: 14, size: 1088, elements: !1001)
!1000 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1001 = !{!1002, !1003, !1012, !1013, !1014, !1015, !1016, !1017}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !999, file: !1000, line: 15, baseType: !686, size: 32)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !999, file: !1000, line: 17, baseType: !1004, size: 320, offset: 64)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1005, line: 22, size: 320, elements: !1006)
!1005 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1006 = !{!1007, !1008, !1009, !1010}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1004, file: !1005, line: 23, baseType: !596, size: 32)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1004, file: !1005, line: 24, baseType: !593, size: 64, offset: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1004, file: !1005, line: 26, baseType: !116, size: 128, offset: 128)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1004, file: !1005, line: 28, baseType: !1011, size: 64, offset: 256)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !999, file: !1000, line: 19, baseType: !267, size: 64, offset: 384)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !999, file: !1000, line: 20, baseType: !587, size: 64, offset: 448)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !999, file: !1000, line: 23, baseType: !494, size: 128, offset: 512)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !999, file: !1000, line: 24, baseType: !304, size: 32, offset: 640)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !999, file: !1000, line: 29, baseType: !587, size: 64, offset: 704)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !999, file: !1000, line: 36, baseType: !1018, size: 320, offset: 768)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1019, line: 15, size: 320, elements: !1020)
!1019 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1020 = !{!1021, !1022, !1023, !1024, !1025, !1026, !1027}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1018, file: !1019, line: 16, baseType: !596, size: 32)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1018, file: !1019, line: 18, baseType: !170, size: 32, offset: 32)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1018, file: !1019, line: 19, baseType: !170, size: 32, offset: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1018, file: !1019, line: 20, baseType: !170, size: 32, offset: 96)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1018, file: !1019, line: 21, baseType: !170, size: 32, offset: 128)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1018, file: !1019, line: 22, baseType: !267, size: 64, offset: 192)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1018, file: !1019, line: 23, baseType: !267, size: 64, offset: 256)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !723, file: !724, line: 138, baseType: !1029, size: 64, offset: 1152)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1030 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !305, line: 18, flags: DIFlagFwdDecl)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !723, file: !724, line: 139, baseType: !1032, size: 64, offset: 1216)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1034, line: 16, flags: DIFlagFwdDecl)
!1034 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !723, file: !724, line: 140, baseType: !1036, size: 64, offset: 1280)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !724, line: 25, size: 64, elements: !1038)
!1038 = !{!1039, !1040, !1041}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1037, file: !724, line: 26, baseType: !166, size: 32)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1037, file: !724, line: 27, baseType: !170, size: 32, offset: 32)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1037, file: !724, line: 28, baseType: !1042, offset: 64)
!1042 = !DICompositeType(tag: DW_TAG_array_type, baseType: !313, elements: !714)
!1043 = !DIDerivedType(tag: DW_TAG_member, scope: !723, file: !724, line: 142, baseType: !1044, size: 128, offset: 1344)
!1044 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !723, file: !724, line: 142, size: 128, elements: !1045)
!1045 = !{!1046, !1047}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1044, file: !724, line: 143, baseType: !170, size: 32)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1044, file: !724, line: 144, baseType: !641, size: 128, align: 64)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !629, file: !14, line: 1013, baseType: !1049, size: 256, offset: 960)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !1050)
!1050 = !{!1051, !1052, !1053, !1054, !1055, !1056}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1049, file: !14, line: 971, baseType: !267, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1049, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1049, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1049, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1049, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1049, file: !14, line: 976, baseType: !459, size: 64, offset: 192)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !629, file: !14, line: 1014, baseType: !1058, size: 128, offset: 1216)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1059, line: 8, size: 128, elements: !1060)
!1059 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1060 = !{!1061, !1062}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1058, file: !1059, line: 9, baseType: !443, size: 64)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1058, file: !1059, line: 10, baseType: !333, size: 64, offset: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !629, file: !14, line: 1015, baseType: !298, size: 64, offset: 1344)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !629, file: !14, line: 1016, baseType: !1065, size: 64, offset: 1408)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1067)
!1067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !1068)
!1068 = !{!1069, !1070, !1075, !1079, !1083, !1111, !1112, !1118, !1131, !1139, !1143, !1144, !1369, !1370, !1374, !1379, !1380, !1384, !1388, !1394, !1395, !1399, !1400, !1407, !1411, !1415, !1421, !1425, !1429, !1433, !1437, !1438, !1444}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1067, file: !14, line: 1915, baseType: !111, size: 64)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1067, file: !14, line: 1916, baseType: !1071, size: 64, offset: 64)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{!459, !1074, !459, !170}
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1067, file: !14, line: 1917, baseType: !1076, size: 64, offset: 128)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = !DISubroutineType(types: !1078)
!1078 = !{!249, !1074, !217, !264, !612}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1067, file: !14, line: 1918, baseType: !1080, size: 64, offset: 192)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = !DISubroutineType(types: !1082)
!1082 = !{!249, !1074, !135, !264, !612}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1067, file: !14, line: 1919, baseType: !1084, size: 64, offset: 256)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{!249, !1087, !1109}
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !1089)
!1089 = !{!1090, !1091, !1092, !1096, !1097, !1098, !1099}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1088, file: !14, line: 374, baseType: !1074, size: 64)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1088, file: !14, line: 375, baseType: !459, size: 64, offset: 64)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1088, file: !14, line: 376, baseType: !1093, size: 64, offset: 128)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{null, !1087, !253}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1088, file: !14, line: 377, baseType: !289, size: 64, offset: 192)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1088, file: !14, line: 378, baseType: !170, size: 32, offset: 256)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1088, file: !14, line: 379, baseType: !185, size: 16, offset: 288)
!1099 = !DIDerivedType(tag: DW_TAG_member, scope: !1088, file: !14, line: 380, baseType: !1100, size: 64, offset: 320)
!1100 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1088, file: !14, line: 380, size: 64, elements: !1101)
!1101 = !{!1102, !1105}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1100, file: !14, line: 386, baseType: !1103, size: 64)
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1104 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !14, line: 386, flags: DIFlagFwdDecl)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1100, file: !14, line: 395, baseType: !1106, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = !DISubroutineType(types: !1108)
!1108 = !{!249, !289}
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1110 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !14, line: 69, flags: DIFlagFwdDecl)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1067, file: !14, line: 1920, baseType: !1084, size: 64, offset: 320)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1067, file: !14, line: 1921, baseType: !1113, size: 64, offset: 384)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = !DISubroutineType(types: !1115)
!1115 = !{!170, !1087, !1116, !7}
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1117 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !14, line: 53, flags: DIFlagFwdDecl)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1067, file: !14, line: 1923, baseType: !1119, size: 64, offset: 448)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = !DISubroutineType(types: !1121)
!1121 = !{!170, !1074, !1122}
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !1124)
!1124 = !{!1125, !1130}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1123, file: !14, line: 1859, baseType: !1126, size: 64)
!1126 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !1127)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = !DISubroutineType(types: !1129)
!1129 = !{!872, !1122, !135, !170, !459, !371, !7}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1123, file: !14, line: 1860, baseType: !459, size: 64, offset: 64)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1067, file: !14, line: 1924, baseType: !1132, size: 64, offset: 512)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = !DISubroutineType(types: !1134)
!1134 = !{!1135, !1074, !1137}
!1135 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1136, line: 59, baseType: !7)
!1136 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !474, line: 31, flags: DIFlagFwdDecl)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1067, file: !14, line: 1925, baseType: !1140, size: 64, offset: 576)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DISubroutineType(types: !1142)
!1142 = !{!253, !1074, !7, !267}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1067, file: !14, line: 1926, baseType: !1140, size: 64, offset: 640)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1067, file: !14, line: 1927, baseType: !1145, size: 64, offset: 704)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{!170, !1074, !1148}
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !1150, line: 625, size: 1344, elements: !1151)
!1150 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!1151 = !{!1152, !1161, !1327, !1333, !1340, !1341, !1346, !1347, !1352, !1353, !1356, !1360, !1361, !1362, !1363, !1364, !1367}
!1152 = !DIDerivedType(tag: DW_TAG_member, scope: !1149, file: !1150, line: 628, baseType: !1153, size: 128)
!1153 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1149, file: !1150, line: 628, size: 128, elements: !1154)
!1154 = !{!1155, !1160}
!1155 = !DIDerivedType(tag: DW_TAG_member, scope: !1153, file: !1150, line: 629, baseType: !1156, size: 128)
!1156 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1153, file: !1150, line: 629, size: 128, elements: !1157)
!1157 = !{!1158, !1159}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1156, file: !1150, line: 631, baseType: !267, size: 64)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1156, file: !1150, line: 632, baseType: !267, size: 64, offset: 64)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1153, file: !1150, line: 635, baseType: !641, size: 128, align: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1149, file: !1150, line: 639, baseType: !1162, size: 64, offset: 128)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !1150, line: 733, size: 10240, elements: !1164)
!1164 = !{!1165, !1325}
!1165 = !DIDerivedType(tag: DW_TAG_member, scope: !1163, file: !1150, line: 734, baseType: !1166, size: 10240)
!1166 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1163, file: !1150, line: 734, size: 10240, elements: !1167)
!1167 = !{!1168, !1172, !1185, !1189, !1190, !1191, !1192, !1193, !1194, !1203, !1204, !1205, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1244, !1246, !1249, !1294, !1295, !1296, !1299, !1300, !1301, !1304, !1305, !1306, !1312, !1313}
!1168 = !DIDerivedType(tag: DW_TAG_member, scope: !1166, file: !1150, line: 739, baseType: !1169, size: 512, align: 512)
!1169 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1166, file: !1150, line: 739, size: 512, align: 512, elements: !1170)
!1170 = !{!1171}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1169, file: !1150, line: 747, baseType: !166, size: 32)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1166, file: !1150, line: 750, baseType: !1173, size: 128, offset: 512)
!1173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1174, line: 218, size: 128, elements: !1175)
!1174 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1175 = !{!1176, !1183, !1184}
!1176 = !DIDerivedType(tag: DW_TAG_member, scope: !1173, file: !1174, line: 219, baseType: !1177, size: 32)
!1177 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1173, file: !1174, line: 219, size: 32, elements: !1178)
!1178 = !{!1179, !1180}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1177, file: !1174, line: 220, baseType: !146, size: 32)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1177, file: !1174, line: 221, baseType: !1181)
!1181 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1174, line: 197, baseType: !1182)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1174, line: 197, elements: !502)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1173, file: !1174, line: 223, baseType: !7, size: 32, offset: 32)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1173, file: !1174, line: 224, baseType: !289, size: 64, offset: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1166, file: !1150, line: 752, baseType: !1186, size: 64, offset: 640)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = !DISubroutineType(types: !1188)
!1188 = !{!267, !1074, !267, !267, !267, !267}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1166, file: !1150, line: 756, baseType: !267, size: 64, offset: 704)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1166, file: !1150, line: 757, baseType: !267, size: 64, offset: 768)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1166, file: !1150, line: 760, baseType: !267, size: 64, offset: 832)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1166, file: !1150, line: 761, baseType: !267, size: 64, offset: 896)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1166, file: !1150, line: 763, baseType: !267, size: 64, offset: 960)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1166, file: !1150, line: 764, baseType: !1195, size: 64, offset: 1024)
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1197, line: 299, baseType: !1198)
!1197 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1198 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1197, line: 299, size: 64, elements: !1199)
!1199 = !{!1200}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1198, file: !1197, line: 299, baseType: !1201, size: 64)
!1201 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1202, line: 18, baseType: !267)
!1202 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1166, file: !1150, line: 773, baseType: !166, size: 32, offset: 1088)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1166, file: !1150, line: 785, baseType: !166, size: 32, offset: 1120)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1166, file: !1150, line: 795, baseType: !1206, size: 64, offset: 1152)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !1150, line: 726, size: 128, elements: !1208)
!1208 = !{!1209, !1210}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1207, file: !1150, line: 727, baseType: !371, size: 64)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1207, file: !1150, line: 728, baseType: !170, size: 32, offset: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1166, file: !1150, line: 801, baseType: !267, size: 64, offset: 1216)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1166, file: !1150, line: 804, baseType: !587, size: 64, offset: 1280)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1166, file: !1150, line: 806, baseType: !170, size: 32, offset: 1344)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1166, file: !1150, line: 808, baseType: !146, size: 32, offset: 1376)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1166, file: !1150, line: 823, baseType: !770, size: 320, offset: 1408)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1166, file: !1150, line: 825, baseType: !116, size: 128, offset: 1728)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1166, file: !1150, line: 845, baseType: !170, size: 32, offset: 1856)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1166, file: !1150, line: 849, baseType: !267, size: 64, offset: 1920)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1166, file: !1150, line: 850, baseType: !267, size: 64, offset: 1984)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1166, file: !1150, line: 852, baseType: !267, size: 64, offset: 2048)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1166, file: !1150, line: 853, baseType: !267, size: 64, offset: 2112)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1166, file: !1150, line: 854, baseType: !589, size: 64, offset: 2176)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1166, file: !1150, line: 855, baseType: !267, size: 64, offset: 2240)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1166, file: !1150, line: 856, baseType: !267, size: 64, offset: 2304)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1166, file: !1150, line: 857, baseType: !267, size: 64, offset: 2368)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1166, file: !1150, line: 858, baseType: !267, size: 64, offset: 2432)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1166, file: !1150, line: 865, baseType: !344, size: 32, offset: 2496)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1166, file: !1150, line: 867, baseType: !146, size: 32, offset: 2528)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1166, file: !1150, line: 869, baseType: !267, size: 64, offset: 2560)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1166, file: !1150, line: 869, baseType: !267, size: 64, offset: 2624)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1166, file: !1150, line: 869, baseType: !267, size: 64, offset: 2688)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1166, file: !1150, line: 869, baseType: !267, size: 64, offset: 2752)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1166, file: !1150, line: 870, baseType: !267, size: 64, offset: 2816)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1166, file: !1150, line: 870, baseType: !267, size: 64, offset: 2880)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1166, file: !1150, line: 870, baseType: !267, size: 64, offset: 2944)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1166, file: !1150, line: 871, baseType: !267, size: 64, offset: 3008)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1166, file: !1150, line: 871, baseType: !267, size: 64, offset: 3072)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1166, file: !1150, line: 871, baseType: !267, size: 64, offset: 3136)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1166, file: !1150, line: 871, baseType: !267, size: 64, offset: 3200)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1166, file: !1150, line: 873, baseType: !1241, size: 3328, offset: 3264)
!1241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !267, size: 3328, elements: !1242)
!1242 = !{!1243}
!1243 = !DISubrange(count: 52)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1166, file: !1150, line: 875, baseType: !1245, size: 1280, offset: 6592)
!1245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1004, size: 1280, elements: !695)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1166, file: !1150, line: 877, baseType: !1247, size: 64, offset: 7872)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !1150, line: 877, flags: DIFlagFwdDecl)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1166, file: !1150, line: 880, baseType: !1250, size: 1088, offset: 7936)
!1250 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1251, line: 72, baseType: !1252)
!1251 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1252 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1251, line: 23, size: 1088, elements: !1253)
!1253 = !{!1254, !1255, !1256, !1257, !1258, !1261, !1262, !1263, !1264, !1289, !1290, !1291}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1252, file: !1251, line: 28, baseType: !371, size: 64)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1252, file: !1251, line: 38, baseType: !589, size: 64, offset: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1252, file: !1251, line: 40, baseType: !267, size: 64, offset: 128)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1252, file: !1251, line: 43, baseType: !770, size: 320, offset: 192)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1252, file: !1251, line: 44, baseType: !1259, size: 64, offset: 512)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1251, line: 44, flags: DIFlagFwdDecl)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1252, file: !1251, line: 48, baseType: !267, size: 64, offset: 576)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1252, file: !1251, line: 59, baseType: !583, size: 256, offset: 640)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1252, file: !1251, line: 60, baseType: !289, size: 64, offset: 896)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1252, file: !1251, line: 61, baseType: !1265, size: 64, offset: 960)
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1267)
!1267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1268, line: 13, size: 1216, elements: !1269)
!1268 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1269 = !{!1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1267, file: !1268, line: 14, baseType: !289, size: 64)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1267, file: !1268, line: 15, baseType: !267, size: 64, offset: 64)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1267, file: !1268, line: 17, baseType: !267, size: 64, offset: 128)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1267, file: !1268, line: 17, baseType: !267, size: 64, offset: 192)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1267, file: !1268, line: 18, baseType: !267, size: 64, offset: 256)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1267, file: !1268, line: 18, baseType: !267, size: 64, offset: 320)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1267, file: !1268, line: 19, baseType: !847, size: 64, offset: 384)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1267, file: !1268, line: 21, baseType: !253, size: 64, offset: 448)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1267, file: !1268, line: 23, baseType: !253, size: 64, offset: 512)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1267, file: !1268, line: 24, baseType: !253, size: 64, offset: 576)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1267, file: !1268, line: 25, baseType: !253, size: 64, offset: 640)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1267, file: !1268, line: 26, baseType: !253, size: 64, offset: 704)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1267, file: !1268, line: 27, baseType: !253, size: 64, offset: 768)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1267, file: !1268, line: 28, baseType: !253, size: 64, offset: 832)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1267, file: !1268, line: 29, baseType: !253, size: 64, offset: 896)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1267, file: !1268, line: 30, baseType: !253, size: 64, offset: 960)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1267, file: !1268, line: 31, baseType: !253, size: 64, offset: 1024)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1267, file: !1268, line: 32, baseType: !253, size: 64, offset: 1088)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1267, file: !1268, line: 33, baseType: !253, size: 64, offset: 1152)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1252, file: !1251, line: 63, baseType: !166, size: 32, offset: 1024)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1252, file: !1251, line: 69, baseType: !185, size: 16, offset: 1056)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1252, file: !1251, line: 70, baseType: !1292, size: 16, offset: 1072)
!1292 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !176, line: 18, baseType: !1293)
!1293 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !178, line: 23, baseType: !798)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1166, file: !1150, line: 882, baseType: !267, size: 64, offset: 9024)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1166, file: !1150, line: 885, baseType: !146, size: 32, offset: 9088)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1166, file: !1150, line: 886, baseType: !1297, size: 64, offset: 9152)
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1298 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !1150, line: 732, flags: DIFlagFwdDecl)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1166, file: !1150, line: 901, baseType: !1029, size: 64, offset: 9216)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1166, file: !1150, line: 904, baseType: !1074, size: 64, offset: 9280)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1166, file: !1150, line: 906, baseType: !1302, size: 64, offset: 9344)
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1303 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !1150, line: 906, flags: DIFlagFwdDecl)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1166, file: !1150, line: 930, baseType: !166, size: 32, offset: 9408)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1166, file: !1150, line: 933, baseType: !166, size: 32, offset: 9440)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1166, file: !1150, line: 935, baseType: !1307, size: 64, offset: 9472)
!1307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !51, line: 103, size: 64, elements: !1308)
!1308 = !{!1309}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1307, file: !51, line: 104, baseType: !1310, size: 64)
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!1311 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !51, line: 101, flags: DIFlagFwdDecl)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1166, file: !1150, line: 940, baseType: !587, size: 64, offset: 9536)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1166, file: !1150, line: 942, baseType: !1314, size: 256, offset: 9600)
!1314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1315, line: 98, size: 256, elements: !1316)
!1315 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1316 = !{!1317, !1318, !1319}
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1314, file: !1315, line: 99, baseType: !587, size: 64)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1314, file: !1315, line: 100, baseType: !116, size: 128, offset: 64)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1314, file: !1315, line: 101, baseType: !1320, size: 64, offset: 192)
!1320 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1315, line: 21, baseType: !1321)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = !DISubroutineType(types: !1323)
!1323 = !{null, !1324}
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1163, file: !1150, line: 986, baseType: !1326, offset: 10240)
!1326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !267, elements: !714)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1149, file: !1150, line: 640, baseType: !1328, size: 64, offset: 192)
!1328 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1197, line: 297, baseType: !1329)
!1329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1197, line: 297, size: 64, elements: !1330)
!1330 = !{!1331}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1329, file: !1197, line: 297, baseType: !1332, size: 64)
!1332 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1202, line: 19, baseType: !267)
!1333 = !DIDerivedType(tag: DW_TAG_member, scope: !1149, file: !1150, line: 646, baseType: !1334, size: 64, offset: 256)
!1334 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1149, file: !1150, line: 646, size: 64, elements: !1335)
!1335 = !{!1336, !1339}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1334, file: !1150, line: 647, baseType: !1337, size: 64)
!1337 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1338)
!1338 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !1150, line: 542, baseType: !267)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1334, file: !1150, line: 648, baseType: !1338, size: 64)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1149, file: !1150, line: 666, baseType: !170, size: 32, offset: 320)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1149, file: !1150, line: 667, baseType: !1342, size: 64, offset: 384)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !1150, line: 579, size: 320, elements: !1344)
!1344 = !{!1345}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1343, file: !1150, line: 580, baseType: !770, size: 320)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1149, file: !1150, line: 670, baseType: !872, size: 8, offset: 448)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1149, file: !1150, line: 681, baseType: !1348, size: 256, offset: 512)
!1348 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1149, file: !1150, line: 678, size: 256, elements: !1349)
!1349 = !{!1350, !1351}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1348, file: !1150, line: 679, baseType: !762, size: 192, align: 64)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1348, file: !1150, line: 680, baseType: !267, size: 64, offset: 192)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1149, file: !1150, line: 689, baseType: !116, size: 128, offset: 768)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1149, file: !1150, line: 691, baseType: !1354, size: 64, offset: 896)
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1355, size: 64)
!1355 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !1150, line: 691, flags: DIFlagFwdDecl)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1149, file: !1150, line: 694, baseType: !1357, size: 64, offset: 960)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1358 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1359)
!1359 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1150, line: 694, flags: DIFlagFwdDecl)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1149, file: !1150, line: 697, baseType: !267, size: 64, offset: 1024)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1149, file: !1150, line: 699, baseType: !1074, size: 64, offset: 1088)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1149, file: !1150, line: 700, baseType: !289, size: 64, offset: 1152)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1149, file: !1150, line: 711, baseType: !587, size: 64, offset: 1216)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1149, file: !1150, line: 717, baseType: !1365, size: 64, offset: 1280)
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1366 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1150, line: 717, flags: DIFlagFwdDecl)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1149, file: !1150, line: 722, baseType: !1368, offset: 1344)
!1368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !1150, line: 570, elements: !502)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1067, file: !14, line: 1928, baseType: !267, size: 64, offset: 768)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1067, file: !14, line: 1929, baseType: !1371, size: 64, offset: 832)
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = !DISubroutineType(types: !1373)
!1373 = !{!170, !298, !1074}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1067, file: !14, line: 1930, baseType: !1375, size: 64, offset: 896)
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!1376 = !DISubroutineType(types: !1377)
!1377 = !{!170, !1074, !1378}
!1378 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !289)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1067, file: !14, line: 1931, baseType: !1371, size: 64, offset: 960)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1067, file: !14, line: 1932, baseType: !1381, size: 64, offset: 1024)
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1382 = !DISubroutineType(types: !1383)
!1383 = !{!170, !1074, !459, !459, !170}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1067, file: !14, line: 1933, baseType: !1385, size: 64, offset: 1088)
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1386 = !DISubroutineType(types: !1387)
!1387 = !{!170, !170, !1074, !170}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1067, file: !14, line: 1934, baseType: !1389, size: 64, offset: 1152)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1390 = !DISubroutineType(types: !1391)
!1391 = !{!170, !1074, !170, !1392}
!1392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1393, size: 64)
!1393 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1067, file: !14, line: 1935, baseType: !1186, size: 64, offset: 1216)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1067, file: !14, line: 1936, baseType: !1396, size: 64, offset: 1280)
!1396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1397, size: 64)
!1397 = !DISubroutineType(types: !1398)
!1398 = !{!170, !170}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1067, file: !14, line: 1937, baseType: !1389, size: 64, offset: 1344)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1067, file: !14, line: 1938, baseType: !1401, size: 64, offset: 1408)
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64)
!1402 = !DISubroutineType(types: !1403)
!1403 = !{!249, !1404, !1074, !612, !264, !7}
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1406, line: 59, flags: DIFlagFwdDecl)
!1406 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1067, file: !14, line: 1939, baseType: !1408, size: 64, offset: 1472)
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1409, size: 64)
!1409 = !DISubroutineType(types: !1410)
!1410 = !{!249, !1074, !612, !1404, !264, !7}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1067, file: !14, line: 1940, baseType: !1412, size: 64, offset: 1536)
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1413 = !DISubroutineType(types: !1414)
!1414 = !{null, !1074}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1067, file: !14, line: 1941, baseType: !1416, size: 64, offset: 1600)
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!1417 = !DISubroutineType(types: !1418)
!1418 = !{!170, !1074, !170, !1419, !1420}
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1067, file: !14, line: 1942, baseType: !1422, size: 64, offset: 1664)
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = !DISubroutineType(types: !1424)
!1424 = !{!253, !1074, !170, !459, !459}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1067, file: !14, line: 1944, baseType: !1426, size: 64, offset: 1728)
!1426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1427, size: 64)
!1427 = !DISubroutineType(types: !1428)
!1428 = !{null, !571, !1074}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1067, file: !14, line: 1948, baseType: !1430, size: 64, offset: 1792)
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!1431 = !DISubroutineType(types: !1432)
!1432 = !{!249, !1074, !459, !1074, !459, !264, !7}
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1067, file: !14, line: 1950, baseType: !1434, size: 64, offset: 1856)
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!1435 = !DISubroutineType(types: !1436)
!1436 = !{!459, !1074, !459, !1074, !459, !459, !7}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1067, file: !14, line: 1953, baseType: !1381, size: 64, offset: 1920)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1067, file: !14, line: 1954, baseType: !1439, size: 64, offset: 1984)
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!1440 = !DISubroutineType(types: !1441)
!1441 = !{!170, !1442, !7}
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1067, file: !14, line: 1955, baseType: !1445, size: 64, offset: 2048)
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1446, size: 64)
!1446 = !DISubroutineType(types: !1447)
!1447 = !{!170, !1442, !1116, !7}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !629, file: !14, line: 1018, baseType: !371, size: 64, offset: 1472)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !629, file: !14, line: 1020, baseType: !289, size: 64, offset: 1536)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !629, file: !14, line: 1023, baseType: !289, size: 64, offset: 1600)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !629, file: !14, line: 1027, baseType: !1452, size: 64, offset: 1664)
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !629, file: !14, line: 1029, baseType: !294, size: 64, offset: 1728)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !629, file: !14, line: 1030, baseType: !1455, size: 32, offset: 1792)
!1455 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1456, line: 8, baseType: !367)
!1456 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !629, file: !14, line: 1031, baseType: !1455, size: 32, offset: 1824)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !572, file: !573, line: 29, baseType: !289, size: 64, offset: 896)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !514, file: !14, line: 2077, baseType: !568, size: 64, offset: 1088)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !514, file: !14, line: 2078, baseType: !568, size: 64, offset: 1152)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !514, file: !14, line: 2079, baseType: !568, size: 64, offset: 1216)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !514, file: !14, line: 2081, baseType: !1463, size: 64, offset: 1280)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = !DISubroutineType(types: !1465)
!1465 = !{!249, !449, !170, !217, !264, !459}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !514, file: !14, line: 2082, baseType: !1467, size: 64, offset: 1344)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = !DISubroutineType(types: !1469)
!1469 = !{!249, !449, !170, !135, !264, !459}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !514, file: !14, line: 2083, baseType: !1471, size: 64, offset: 1408)
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1472 = !DISubroutineType(types: !1473)
!1473 = !{!1474, !298}
!1474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1475, size: 64)
!1475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64)
!1476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !34, line: 296, size: 1664, elements: !1477)
!1477 = !{!1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1502, !1503, !1504}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1476, file: !34, line: 297, baseType: !494, size: 128)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1476, file: !34, line: 298, baseType: !116, size: 128, offset: 128)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1476, file: !34, line: 299, baseType: !116, size: 128, offset: 256)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1476, file: !34, line: 300, baseType: !116, size: 128, offset: 384)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1476, file: !34, line: 301, baseType: !583, size: 256, offset: 512)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1476, file: !34, line: 302, baseType: !146, size: 32, offset: 768)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1476, file: !34, line: 303, baseType: !166, size: 32, offset: 800)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1476, file: !34, line: 304, baseType: !449, size: 64, offset: 832)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1476, file: !34, line: 305, baseType: !1487, size: 64, offset: 896)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !34, line: 68, size: 64, elements: !1488)
!1488 = !{!1489, !1501}
!1489 = !DIDerivedType(tag: DW_TAG_member, scope: !1487, file: !34, line: 69, baseType: !1490, size: 32)
!1490 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1487, file: !34, line: 69, size: 32, elements: !1491)
!1491 = !{!1492, !1493, !1494}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1490, file: !34, line: 70, baseType: !304, size: 32)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1490, file: !34, line: 71, baseType: !313, size: 32)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1490, file: !34, line: 72, baseType: !1495, size: 32)
!1495 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1496, line: 24, baseType: !1497)
!1496 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1497 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1496, line: 22, size: 32, elements: !1498)
!1498 = !{!1499}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1497, file: !1496, line: 23, baseType: !1500, size: 32)
!1500 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1496, line: 20, baseType: !310)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1487, file: !34, line: 74, baseType: !33, size: 32, offset: 32)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1476, file: !34, line: 306, baseType: !459, size: 64, offset: 960)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1476, file: !34, line: 307, baseType: !267, size: 64, offset: 1024)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1476, file: !34, line: 308, baseType: !1505, size: 576, offset: 1088)
!1505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !34, line: 205, size: 576, elements: !1506)
!1506 = !{!1507, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1505, file: !34, line: 206, baseType: !1508, size: 64)
!1508 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !34, line: 66, baseType: !461)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1505, file: !34, line: 207, baseType: !1508, size: 64, offset: 64)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1505, file: !34, line: 208, baseType: !1508, size: 64, offset: 128)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1505, file: !34, line: 209, baseType: !1508, size: 64, offset: 192)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1505, file: !34, line: 210, baseType: !1508, size: 64, offset: 256)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1505, file: !34, line: 211, baseType: !1508, size: 64, offset: 320)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1505, file: !34, line: 212, baseType: !1508, size: 64, offset: 384)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1505, file: !34, line: 213, baseType: !786, size: 64, offset: 448)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1505, file: !34, line: 214, baseType: !786, size: 64, offset: 512)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !514, file: !14, line: 2085, baseType: !1518, size: 64, offset: 1472)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = !DISubroutineType(types: !1520)
!1520 = !{!253, !449, !1521}
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64)
!1522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1523, line: 15, size: 256, elements: !1524)
!1523 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1524 = !{!1525, !1527, !1528, !1529, !1530}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1522, file: !1523, line: 16, baseType: !1526, size: 32)
!1526 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !117, line: 154, baseType: !7)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1522, file: !1523, line: 19, baseType: !170, size: 32, offset: 32)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1522, file: !1523, line: 26, baseType: !267, size: 64, offset: 64)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1522, file: !1523, line: 33, baseType: !267, size: 64, offset: 128)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1522, file: !1523, line: 36, baseType: !1531, size: 64, offset: 192)
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !1150, line: 33, flags: DIFlagFwdDecl)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !514, file: !14, line: 2087, baseType: !1518, size: 64, offset: 1536)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !514, file: !14, line: 2089, baseType: !484, size: 64, offset: 1600)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !450, file: !14, line: 1198, baseType: !1536, size: 64, offset: 448)
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1538)
!1538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !34, line: 324, size: 704, elements: !1539)
!1539 = !{!1540, !1544, !1548, !1552, !1553, !1554, !1555, !1556, !1561, !1566, !1570}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1538, file: !34, line: 325, baseType: !1541, size: 64)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1542 = !DISubroutineType(types: !1543)
!1543 = !{!170, !1475}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1538, file: !34, line: 326, baseType: !1545, size: 64, offset: 64)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = !DISubroutineType(types: !1547)
!1547 = !{!1475, !449, !170}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1538, file: !34, line: 327, baseType: !1549, size: 64, offset: 128)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = !DISubroutineType(types: !1551)
!1551 = !{null, !1475}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1538, file: !34, line: 328, baseType: !1541, size: 64, offset: 192)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1538, file: !34, line: 329, baseType: !1541, size: 64, offset: 256)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1538, file: !34, line: 330, baseType: !1541, size: 64, offset: 320)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1538, file: !34, line: 331, baseType: !542, size: 64, offset: 384)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1538, file: !34, line: 334, baseType: !1557, size: 64, offset: 448)
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1558 = !DISubroutineType(types: !1559)
!1559 = !{!1560, !298}
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1538, file: !34, line: 335, baseType: !1562, size: 64, offset: 512)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = !DISubroutineType(types: !1564)
!1564 = !{!170, !298, !1565}
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1495, size: 64)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1538, file: !34, line: 337, baseType: !1567, size: 64, offset: 576)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = !DISubroutineType(types: !1569)
!1569 = !{!170, !298, !1560}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1538, file: !34, line: 339, baseType: !1571, size: 64, offset: 640)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = !DISubroutineType(types: !1573)
!1573 = !{!170, !449, !1574}
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !450, file: !14, line: 1199, baseType: !1576, size: 64, offset: 512)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1578)
!1578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !34, line: 430, size: 704, elements: !1579)
!1579 = !{!1580, !1586, !1587, !1591, !1592, !1593, !1608, !1631, !1635, !1636, !1659}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1578, file: !34, line: 431, baseType: !1581, size: 64)
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = !DISubroutineType(types: !1583)
!1583 = !{!170, !449, !170, !170, !1584}
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1058)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1578, file: !34, line: 432, baseType: !542, size: 64, offset: 64)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1578, file: !34, line: 433, baseType: !1588, size: 64, offset: 128)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = !DISubroutineType(types: !1590)
!1590 = !{!170, !449, !7}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1578, file: !34, line: 434, baseType: !1588, size: 64, offset: 192)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1578, file: !34, line: 435, baseType: !542, size: 64, offset: 256)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1578, file: !34, line: 436, baseType: !1594, size: 64, offset: 320)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = !DISubroutineType(types: !1596)
!1596 = !{!170, !449, !170, !1597}
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !34, line: 417, size: 256, elements: !1599)
!1599 = !{!1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1598, file: !34, line: 418, baseType: !170, size: 32)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1598, file: !34, line: 419, baseType: !7, size: 32, offset: 32)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1598, file: !34, line: 420, baseType: !7, size: 32, offset: 64)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1598, file: !34, line: 422, baseType: !7, size: 32, offset: 96)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1598, file: !34, line: 423, baseType: !7, size: 32, offset: 128)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1598, file: !34, line: 424, baseType: !7, size: 32, offset: 160)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1598, file: !34, line: 425, baseType: !7, size: 32, offset: 192)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1598, file: !34, line: 426, baseType: !7, size: 32, offset: 224)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1578, file: !34, line: 437, baseType: !1609, size: 64, offset: 384)
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1610, size: 64)
!1610 = !DISubroutineType(types: !1611)
!1611 = !{!170, !449, !1487, !1612}
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !34, line: 345, size: 960, elements: !1614)
!1614 = !{!1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1613, file: !34, line: 346, baseType: !170, size: 32)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1613, file: !34, line: 347, baseType: !371, size: 64, offset: 64)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1613, file: !34, line: 348, baseType: !371, size: 64, offset: 128)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1613, file: !34, line: 349, baseType: !371, size: 64, offset: 192)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1613, file: !34, line: 350, baseType: !371, size: 64, offset: 256)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1613, file: !34, line: 351, baseType: !371, size: 64, offset: 320)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1613, file: !34, line: 352, baseType: !371, size: 64, offset: 384)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1613, file: !34, line: 353, baseType: !593, size: 64, offset: 448)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1613, file: !34, line: 355, baseType: !593, size: 64, offset: 512)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1613, file: !34, line: 356, baseType: !170, size: 32, offset: 576)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1613, file: !34, line: 357, baseType: !170, size: 32, offset: 608)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1613, file: !34, line: 358, baseType: !371, size: 64, offset: 640)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1613, file: !34, line: 359, baseType: !371, size: 64, offset: 704)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1613, file: !34, line: 360, baseType: !371, size: 64, offset: 768)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1613, file: !34, line: 361, baseType: !593, size: 64, offset: 832)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1613, file: !34, line: 362, baseType: !170, size: 32, offset: 896)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1578, file: !34, line: 438, baseType: !1632, size: 64, offset: 448)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = !DISubroutineType(types: !1634)
!1634 = !{!170, !449, !1574, !1612}
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1578, file: !34, line: 440, baseType: !1609, size: 64, offset: 512)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1578, file: !34, line: 441, baseType: !1637, size: 64, offset: 576)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = !DISubroutineType(types: !1639)
!1639 = !{!170, !449, !1640}
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !34, line: 411, size: 1408, elements: !1642)
!1642 = !{!1643, !1644}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1641, file: !34, line: 412, baseType: !7, size: 32)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1641, file: !34, line: 413, baseType: !1645, size: 1344, offset: 64)
!1645 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1646, size: 1344, elements: !218)
!1646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !34, line: 397, size: 448, elements: !1647)
!1647 = !{!1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1658}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1646, file: !34, line: 398, baseType: !7, size: 32)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1646, file: !34, line: 399, baseType: !7, size: 32, offset: 32)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1646, file: !34, line: 401, baseType: !7, size: 32, offset: 64)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1646, file: !34, line: 402, baseType: !7, size: 32, offset: 96)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1646, file: !34, line: 403, baseType: !7, size: 32, offset: 128)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1646, file: !34, line: 404, baseType: !7, size: 32, offset: 160)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1646, file: !34, line: 405, baseType: !7, size: 32, offset: 192)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1646, file: !34, line: 406, baseType: !373, size: 64, offset: 256)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1646, file: !34, line: 407, baseType: !1657, size: 64, offset: 320)
!1657 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !117, line: 132, baseType: !371)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1646, file: !34, line: 408, baseType: !1657, size: 64, offset: 384)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1578, file: !34, line: 442, baseType: !1588, size: 64, offset: 640)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !450, file: !14, line: 1200, baseType: !1661, size: 64, offset: 576)
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1662, size: 64)
!1662 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1663)
!1663 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !450, file: !14, line: 1201, baseType: !267, size: 64, offset: 640)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !450, file: !14, line: 1202, baseType: !267, size: 64, offset: 704)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !450, file: !14, line: 1203, baseType: !267, size: 64, offset: 768)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !450, file: !14, line: 1204, baseType: !333, size: 64, offset: 832)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !450, file: !14, line: 1205, baseType: !770, size: 320, offset: 896)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !450, file: !14, line: 1206, baseType: !170, size: 32, offset: 1216)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !450, file: !14, line: 1207, baseType: !166, size: 32, offset: 1248)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !450, file: !14, line: 1209, baseType: !289, size: 64, offset: 1280)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !450, file: !14, line: 1211, baseType: !1673, size: 64, offset: 1344)
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1676)
!1676 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !450, file: !14, line: 1223, baseType: !1678, size: 64, offset: 1408)
!1678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !350, line: 34, size: 64, elements: !1679)
!1679 = !{!1680}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1678, file: !350, line: 35, baseType: !353, size: 64)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !450, file: !14, line: 1224, baseType: !116, size: 128, offset: 1472)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !450, file: !14, line: 1225, baseType: !1683, size: 64, offset: 1600)
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1684 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !450, file: !14, line: 1226, baseType: !1686, size: 64, offset: 1664)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !450, file: !14, line: 1227, baseType: !1689, size: 64, offset: 1728)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !450, file: !14, line: 1228, baseType: !1692, size: 64, offset: 1792)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !450, file: !14, line: 1229, baseType: !494, size: 128, offset: 1856)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !450, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !450, file: !14, line: 1231, baseType: !1697, size: 2496, offset: 2048)
!1697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !34, line: 521, size: 2496, elements: !1698)
!1698 = !{!1699, !1700, !1701, !1703, !1735}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1697, file: !34, line: 522, baseType: !7, size: 32)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1697, file: !34, line: 523, baseType: !770, size: 320, offset: 64)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1697, file: !34, line: 524, baseType: !1702, size: 192, offset: 384)
!1702 = !DICompositeType(tag: DW_TAG_array_type, baseType: !298, size: 192, elements: !218)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1697, file: !34, line: 525, baseType: !1704, size: 1728, offset: 576)
!1704 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1705, size: 1728, elements: !218)
!1705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !34, line: 222, size: 576, elements: !1706)
!1706 = !{!1707, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1705, file: !34, line: 223, baseType: !1708, size: 64)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !34, line: 445, size: 256, elements: !1710)
!1710 = !{!1711, !1712, !1725, !1726}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1709, file: !34, line: 446, baseType: !170, size: 32)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1709, file: !34, line: 447, baseType: !1713, size: 64, offset: 64)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1715)
!1715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !34, line: 312, size: 512, elements: !1716)
!1716 = !{!1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724}
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1715, file: !34, line: 313, baseType: !542, size: 64)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1715, file: !34, line: 314, baseType: !542, size: 64, offset: 64)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1715, file: !34, line: 315, baseType: !542, size: 64, offset: 128)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1715, file: !34, line: 316, baseType: !542, size: 64, offset: 192)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1715, file: !34, line: 317, baseType: !1541, size: 64, offset: 256)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1715, file: !34, line: 318, baseType: !1541, size: 64, offset: 320)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1715, file: !34, line: 319, baseType: !1541, size: 64, offset: 384)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1715, file: !34, line: 320, baseType: !1571, size: 64, offset: 448)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1709, file: !34, line: 448, baseType: !111, size: 64, offset: 128)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1709, file: !34, line: 449, baseType: !1708, size: 64, offset: 192)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1705, file: !34, line: 224, baseType: !170, size: 32, offset: 64)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1705, file: !34, line: 226, baseType: !116, size: 128, offset: 128)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1705, file: !34, line: 227, baseType: !267, size: 64, offset: 256)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1705, file: !34, line: 228, baseType: !7, size: 32, offset: 320)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1705, file: !34, line: 229, baseType: !7, size: 32, offset: 352)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1705, file: !34, line: 230, baseType: !1508, size: 64, offset: 384)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1705, file: !34, line: 231, baseType: !1508, size: 64, offset: 448)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1705, file: !34, line: 232, baseType: !289, size: 64, offset: 512)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1697, file: !34, line: 526, baseType: !1736, size: 192, offset: 2304)
!1736 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1713, size: 192, elements: !218)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !450, file: !14, line: 1233, baseType: !1738, size: 2368, offset: 4544)
!1738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !1739)
!1739 = !{!1740, !1741, !1742}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1738, file: !14, line: 1185, baseType: !187, size: 16)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1738, file: !14, line: 1186, baseType: !187, size: 16, offset: 16)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1738, file: !14, line: 1187, baseType: !1743, size: 2304, offset: 64)
!1743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1744, size: 2304, elements: !218)
!1744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1745, line: 12, size: 768, elements: !1746)
!1745 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1746 = !{!1747, !1755, !1757, !3028, !3029}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1744, file: !1745, line: 13, baseType: !1748, size: 384)
!1748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1749, line: 17, size: 384, elements: !1750)
!1749 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1750 = !{!1751, !1752, !1753, !1754}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1748, file: !1749, line: 18, baseType: !170, size: 32)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1748, file: !1749, line: 19, baseType: !170, size: 32, offset: 32)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1748, file: !1749, line: 20, baseType: !699, size: 192, offset: 64)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1748, file: !1749, line: 22, baseType: !641, size: 128, align: 64, offset: 256)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1744, file: !1745, line: 14, baseType: !1756, size: 64, offset: 384)
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1744, file: !1745, line: 15, baseType: !1758, size: 64, offset: 448)
!1758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1759, line: 16, size: 64, elements: !1760)
!1759 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1760 = !{!1761}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1758, file: !1759, line: 17, baseType: !1762, size: 64)
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1406, line: 746, size: 58368, elements: !1764)
!1764 = !{!1765, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1845, !1856, !1951, !1955, !1958, !1989, !1990, !1991, !1992, !2003, !2005, !2006, !2007, !2008, !2009, !2010, !2021, !2022, !2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032, !2039, !2040, !2047, !2048, !2049, !2050, !2051, !2052, !2053, !2054, !2055, !2056, !2057, !2058, !2059, !2060, !2061, !2062, !2063, !2064, !2065, !2066, !2067, !2068, !2069, !2070, !2071, !2128, !2131, !2132, !2133, !2134, !2135, !2136, !2137, !2138, !2139, !2140, !2141, !2143, !2144, !2145, !2157, !2158, !2159, !2160, !2161, !2162, !2163, !2169, !2170, !2171, !2172, !2173, !2174, !2175, !2187, !2193, !2194, !2195, !2196, !2197, !2201, !2204, !2211, !2216, !2219, !2222, !2225, !2229, !2369, !2398, !2399, !2400, !2401, !2402, !2403, !2404, !2405, !2406, !2409, !2410, !2411, !2420, !2428, !2429, !2430, !2431, !2432, !2437, !2438, !2439, !2442, !2443, !2446, !2449, !2452, !2460, !2463, !2464, !2550, !2551, !2552, !2553, !2554, !2560, !2561, !2562, !2563, !2566, !2567, !2570, !2573, !2574, !2577, !2578, !2579, !2582, !2583, !2584, !2585, !2586, !2587, !2600, !2601, !2602, !2603, !2604, !2605, !2606, !2607, !2608, !2619, !2620, !2686, !2689, !2690, !2691, !2692, !2693, !2694, !2695, !2698, !2770, !2772, !2773, !2774, !2775, !2776, !2788, !2791, !2792, !2793, !2794, !2795, !2796, !2797, !2798, !2799, !2800, !2801, !2805, !2806, !2807}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1763, file: !1406, line: 752, baseType: !1766, size: 192)
!1766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1767, line: 56, size: 192, elements: !1768)
!1767 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1768 = !{!1769, !1770, !1771, !1772}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1766, file: !1767, line: 57, baseType: !267, size: 64)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1766, file: !1767, line: 58, baseType: !267, size: 64, offset: 64)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1766, file: !1767, line: 59, baseType: !367, size: 32, offset: 128)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1766, file: !1767, line: 61, baseType: !367, size: 32, offset: 160)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1763, file: !1406, line: 754, baseType: !7, size: 32, offset: 192)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1763, file: !1406, line: 767, baseType: !289, size: 64, offset: 256)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1763, file: !1406, line: 768, baseType: !686, size: 32, offset: 320)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1763, file: !1406, line: 770, baseType: !7, size: 32, offset: 352)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1763, file: !1406, line: 771, baseType: !7, size: 32, offset: 384)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1763, file: !1406, line: 774, baseType: !170, size: 32, offset: 416)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1763, file: !1406, line: 775, baseType: !1780, size: 128, offset: 448)
!1780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1781, line: 58, size: 128, elements: !1782)
!1781 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1782 = !{!1783, !1784, !1789, !1790}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1780, file: !1781, line: 59, baseType: !635, size: 64)
!1784 = !DIDerivedType(tag: DW_TAG_member, scope: !1780, file: !1781, line: 60, baseType: !1785, size: 32, offset: 64)
!1785 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1780, file: !1781, line: 60, size: 32, elements: !1786)
!1786 = !{!1787, !1788}
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1785, file: !1781, line: 61, baseType: !7, size: 32)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1785, file: !1781, line: 62, baseType: !166, size: 32)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1780, file: !1781, line: 65, baseType: !185, size: 16, offset: 96)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1780, file: !1781, line: 65, baseType: !185, size: 16, offset: 112)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1763, file: !1406, line: 776, baseType: !7, size: 32, offset: 576)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1763, file: !1406, line: 777, baseType: !267, size: 64, offset: 640)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1763, file: !1406, line: 778, baseType: !1762, size: 64, offset: 704)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1763, file: !1406, line: 787, baseType: !170, size: 32, offset: 768)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1763, file: !1406, line: 788, baseType: !170, size: 32, offset: 800)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1763, file: !1406, line: 790, baseType: !170, size: 32, offset: 832)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1763, file: !1406, line: 792, baseType: !170, size: 32, offset: 864)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1763, file: !1406, line: 793, baseType: !170, size: 32, offset: 896)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1763, file: !1406, line: 794, baseType: !170, size: 32, offset: 928)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1763, file: !1406, line: 795, baseType: !7, size: 32, offset: 960)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1763, file: !1406, line: 797, baseType: !1802, size: 2048, offset: 1024)
!1802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1406, line: 551, size: 2048, elements: !1803)
!1803 = !{!1804, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1824, !1827, !1828, !1829}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1802, file: !1406, line: 553, baseType: !1805, size: 128)
!1805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1406, line: 411, size: 128, elements: !1806)
!1806 = !{!1807, !1808}
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1805, file: !1406, line: 412, baseType: !267, size: 64)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1805, file: !1406, line: 413, baseType: !367, size: 32, offset: 64)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1802, file: !1406, line: 554, baseType: !762, size: 192, align: 64, offset: 128)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1802, file: !1406, line: 555, baseType: !371, size: 64, offset: 320)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1802, file: !1406, line: 556, baseType: !371, size: 64, offset: 384)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1802, file: !1406, line: 558, baseType: !116, size: 128, offset: 448)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1802, file: !1406, line: 559, baseType: !7, size: 32, offset: 576)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1802, file: !1406, line: 561, baseType: !371, size: 64, offset: 640)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1802, file: !1406, line: 562, baseType: !371, size: 64, offset: 704)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1802, file: !1406, line: 563, baseType: !371, size: 64, offset: 768)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1802, file: !1406, line: 564, baseType: !371, size: 64, offset: 832)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1802, file: !1406, line: 565, baseType: !593, size: 64, offset: 896)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1802, file: !1406, line: 566, baseType: !371, size: 64, offset: 960)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1802, file: !1406, line: 568, baseType: !371, size: 64, offset: 1024)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1802, file: !1406, line: 571, baseType: !170, size: 32, offset: 1088)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1802, file: !1406, line: 572, baseType: !1823, size: 64, offset: 1152)
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1802, file: !1406, line: 574, baseType: !1825, size: 64, offset: 1216)
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1826 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1406, line: 49, flags: DIFlagFwdDecl)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1802, file: !1406, line: 576, baseType: !1825, size: 64, offset: 1280)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1802, file: !1406, line: 578, baseType: !267, size: 64, offset: 1344)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1802, file: !1406, line: 588, baseType: !1830, size: 512, align: 512, offset: 1536)
!1830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1406, line: 497, size: 512, align: 512, elements: !1831)
!1831 = !{!1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840}
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1830, file: !1406, line: 498, baseType: !371, size: 64)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1830, file: !1406, line: 499, baseType: !371, size: 64, offset: 64)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1830, file: !1406, line: 500, baseType: !371, size: 64, offset: 128)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1830, file: !1406, line: 501, baseType: !367, size: 32, offset: 192)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1830, file: !1406, line: 502, baseType: !367, size: 32, offset: 224)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1830, file: !1406, line: 503, baseType: !267, size: 64, offset: 256)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1830, file: !1406, line: 504, baseType: !267, size: 64, offset: 320)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1830, file: !1406, line: 505, baseType: !267, size: 64, offset: 384)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1830, file: !1406, line: 506, baseType: !1841, size: 64, align: 64, offset: 448)
!1841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1406, line: 445, size: 64, align: 64, elements: !1842)
!1842 = !{!1843, !1844}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1841, file: !1406, line: 446, baseType: !7, size: 32)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1841, file: !1406, line: 447, baseType: !7, size: 32, offset: 32)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1763, file: !1406, line: 798, baseType: !1846, size: 384, offset: 3072)
!1846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1406, line: 592, size: 384, elements: !1847)
!1847 = !{!1848, !1849, !1850, !1851, !1852, !1853, !1854}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1846, file: !1406, line: 593, baseType: !116, size: 128)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1846, file: !1406, line: 594, baseType: !267, size: 64, offset: 128)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1846, file: !1406, line: 595, baseType: !267, size: 64, offset: 192)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1846, file: !1406, line: 596, baseType: !7, size: 32, offset: 256)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1846, file: !1406, line: 597, baseType: !187, size: 16, offset: 288)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1846, file: !1406, line: 598, baseType: !187, size: 16, offset: 304)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1846, file: !1406, line: 600, baseType: !1855, size: 64, offset: 320)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1763, file: !1406, line: 799, baseType: !1857, size: 1792, offset: 3456)
!1857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1406, line: 610, size: 1792, elements: !1858)
!1858 = !{!1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1948, !1949}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1857, file: !1406, line: 611, baseType: !762, size: 192, align: 64)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1857, file: !1406, line: 618, baseType: !371, size: 64, offset: 192)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1857, file: !1406, line: 619, baseType: !371, size: 64, offset: 256)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1857, file: !1406, line: 620, baseType: !371, size: 64, offset: 320)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1857, file: !1406, line: 621, baseType: !371, size: 64, offset: 384)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1857, file: !1406, line: 622, baseType: !371, size: 64, offset: 448)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1857, file: !1406, line: 629, baseType: !593, size: 64, offset: 512)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1857, file: !1406, line: 630, baseType: !371, size: 64, offset: 576)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1857, file: !1406, line: 631, baseType: !7, size: 32, offset: 640)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1857, file: !1406, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1857, file: !1406, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1857, file: !1406, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1857, file: !1406, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1857, file: !1406, line: 662, baseType: !1873, size: 512, offset: 704)
!1873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !40, line: 118, size: 512, elements: !1874)
!1874 = !{!1875, !1883, !1884, !1889, !1944, !1945, !1946, !1947}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1873, file: !40, line: 119, baseType: !1876, size: 256)
!1876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1877, line: 9, size: 256, elements: !1878)
!1877 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1878 = !{!1879, !1880}
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1876, file: !1877, line: 10, baseType: !762, size: 192, align: 64)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1876, file: !1877, line: 11, baseType: !1881, size: 64, offset: 192)
!1881 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1882, line: 29, baseType: !593)
!1882 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1873, file: !40, line: 120, baseType: !1881, size: 64, offset: 256)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1873, file: !40, line: 121, baseType: !1885, size: 64, offset: 320)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = !DISubroutineType(types: !1887)
!1887 = !{!39, !1888}
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1873, file: !40, line: 122, baseType: !1890, size: 64, offset: 384)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !40, line: 159, size: 512, align: 512, elements: !1892)
!1892 = !{!1893, !1918, !1919, !1922, !1927, !1928, !1939, !1943}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1891, file: !40, line: 160, baseType: !1894, size: 64)
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !40, line: 215, size: 4608, align: 512, elements: !1896)
!1896 = !{!1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906, !1907, !1908, !1909, !1910, !1911, !1912, !1913, !1914}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1895, file: !40, line: 216, baseType: !596, size: 32)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1895, file: !40, line: 217, baseType: !7, size: 32, offset: 32)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1895, file: !40, line: 218, baseType: !7, size: 32, offset: 64)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1895, file: !40, line: 219, baseType: !7, size: 32, offset: 96)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1895, file: !40, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1895, file: !40, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1895, file: !40, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1895, file: !40, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1895, file: !40, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1895, file: !40, line: 226, baseType: !7, size: 32, offset: 160)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1895, file: !40, line: 227, baseType: !187, size: 16, offset: 192)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1895, file: !40, line: 228, baseType: !187, size: 16, offset: 208)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1895, file: !40, line: 229, baseType: !7, size: 32, offset: 224)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1895, file: !40, line: 235, baseType: !1881, size: 64, offset: 256)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1895, file: !40, line: 236, baseType: !1888, size: 64, offset: 320)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1895, file: !40, line: 237, baseType: !1881, size: 64, offset: 384)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1895, file: !40, line: 238, baseType: !1888, size: 64, offset: 448)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1895, file: !40, line: 239, baseType: !1915, size: 4096, align: 512, offset: 512)
!1915 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1891, size: 4096, align: 512, elements: !1916)
!1916 = !{!1917}
!1917 = !DISubrange(count: 8)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1891, file: !40, line: 161, baseType: !7, size: 32, offset: 64)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1891, file: !40, line: 162, baseType: !1920, size: 32, offset: 96)
!1920 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !117, line: 32, baseType: !1921)
!1921 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !251, line: 96, baseType: !170)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1891, file: !40, line: 163, baseType: !1923, size: 32, offset: 128)
!1923 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !340, line: 274, baseType: !1924)
!1924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !340, line: 274, size: 32, elements: !1925)
!1925 = !{!1926}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1924, file: !340, line: 274, baseType: !344, size: 32)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1891, file: !40, line: 164, baseType: !1888, size: 64, offset: 192)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1891, file: !40, line: 165, baseType: !1929, size: 128, offset: 256)
!1929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1877, line: 14, size: 128, elements: !1930)
!1930 = !{!1931}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1929, file: !1877, line: 15, baseType: !1932, size: 128)
!1932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !763, line: 26, size: 128, elements: !1933)
!1933 = !{!1934, !1938}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1932, file: !763, line: 27, baseType: !1935, size: 64)
!1935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !763, line: 12, size: 64, elements: !1936)
!1936 = !{!1937}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1935, file: !763, line: 13, baseType: !767, size: 64)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1932, file: !763, line: 28, baseType: !767, size: 64, offset: 64)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1891, file: !40, line: 166, baseType: !1940, size: 64, offset: 384)
!1940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1941, size: 64)
!1941 = !DISubroutineType(types: !1942)
!1942 = !{!1881}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1891, file: !40, line: 167, baseType: !1881, size: 64, offset: 448)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1873, file: !40, line: 123, baseType: !175, size: 8, offset: 448)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1873, file: !40, line: 124, baseType: !175, size: 8, offset: 456)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1873, file: !40, line: 125, baseType: !175, size: 8, offset: 464)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1873, file: !40, line: 126, baseType: !175, size: 8, offset: 472)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1857, file: !1406, line: 671, baseType: !1873, size: 512, offset: 1216)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1857, file: !1406, line: 679, baseType: !1950, size: 64, offset: 1728)
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1763, file: !1406, line: 800, baseType: !1952, size: 64, offset: 5248)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1954)
!1954 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1406, line: 800, flags: DIFlagFwdDecl)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1763, file: !1406, line: 809, baseType: !1956, size: 64, offset: 5312)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1406, line: 70, flags: DIFlagFwdDecl)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1763, file: !1406, line: 825, baseType: !1959, size: 2048, align: 512, offset: 5632)
!1959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1406, line: 509, size: 2048, align: 512, elements: !1960)
!1960 = !{!1961, !1962, !1963, !1964, !1965, !1966, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !1980, !1981, !1982, !1983, !1984, !1985, !1986, !1987, !1988}
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1959, file: !1406, line: 511, baseType: !371, size: 64)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1959, file: !1406, line: 512, baseType: !371, size: 64, offset: 64)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1959, file: !1406, line: 513, baseType: !371, size: 64, offset: 128)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1959, file: !1406, line: 514, baseType: !371, size: 64, offset: 192)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1959, file: !1406, line: 515, baseType: !371, size: 64, offset: 256)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1959, file: !1406, line: 516, baseType: !371, size: 64, offset: 320)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1959, file: !1406, line: 518, baseType: !371, size: 64, offset: 384)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1959, file: !1406, line: 519, baseType: !371, size: 64, offset: 448)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1959, file: !1406, line: 520, baseType: !593, size: 64, offset: 512)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1959, file: !1406, line: 522, baseType: !371, size: 64, offset: 576)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1959, file: !1406, line: 523, baseType: !371, size: 64, offset: 640)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1959, file: !1406, line: 524, baseType: !593, size: 64, offset: 704)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1959, file: !1406, line: 526, baseType: !593, size: 64, offset: 768)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1959, file: !1406, line: 527, baseType: !371, size: 64, offset: 832)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1959, file: !1406, line: 529, baseType: !371, size: 64, offset: 896)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1959, file: !1406, line: 530, baseType: !371, size: 64, offset: 960)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1959, file: !1406, line: 531, baseType: !371, size: 64, offset: 1024)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1959, file: !1406, line: 532, baseType: !371, size: 64, offset: 1088)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1959, file: !1406, line: 533, baseType: !371, size: 64, offset: 1152)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1959, file: !1406, line: 535, baseType: !371, size: 64, offset: 1216)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1959, file: !1406, line: 536, baseType: !371, size: 64, offset: 1280)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1959, file: !1406, line: 537, baseType: !371, size: 64, offset: 1344)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1959, file: !1406, line: 538, baseType: !371, size: 64, offset: 1408)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1959, file: !1406, line: 539, baseType: !371, size: 64, offset: 1472)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1959, file: !1406, line: 540, baseType: !371, size: 64, offset: 1536)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1959, file: !1406, line: 541, baseType: !371, size: 64, offset: 1600)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1959, file: !1406, line: 542, baseType: !371, size: 64, offset: 1664)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1959, file: !1406, line: 543, baseType: !371, size: 64, offset: 1728)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1763, file: !1406, line: 833, baseType: !7, size: 32, offset: 7680)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1763, file: !1406, line: 836, baseType: !7, size: 32, offset: 7712)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1763, file: !1406, line: 837, baseType: !170, size: 32, offset: 7744)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1763, file: !1406, line: 838, baseType: !1993, size: 64, offset: 7808)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1995)
!1995 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1996, line: 19, baseType: !1997)
!1996 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1996, line: 19, size: 64, elements: !1998)
!1998 = !{!1999}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1997, file: !1996, line: 19, baseType: !2000, size: 64)
!2000 = !DICompositeType(tag: DW_TAG_array_type, baseType: !267, size: 64, elements: !2001)
!2001 = !{!2002}
!2002 = !DISubrange(count: 1)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1763, file: !1406, line: 839, baseType: !2004, size: 64, offset: 7872)
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1763, file: !1406, line: 840, baseType: !1995, size: 64, offset: 7936)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1763, file: !1406, line: 841, baseType: !289, size: 64, offset: 8000)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1763, file: !1406, line: 843, baseType: !187, size: 16, offset: 8064)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1763, file: !1406, line: 845, baseType: !187, size: 16, offset: 8080)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1763, file: !1406, line: 848, baseType: !170, size: 32, offset: 8096)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1763, file: !1406, line: 849, baseType: !2011, size: 32, offset: 8128)
!2011 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1406, line: 718, size: 32, elements: !2012)
!2012 = !{!2013, !2020}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2011, file: !1406, line: 724, baseType: !2014, size: 32)
!2014 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2011, file: !1406, line: 719, size: 32, elements: !2015)
!2015 = !{!2016, !2017, !2018, !2019}
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2014, file: !1406, line: 720, baseType: !175, size: 8)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2014, file: !1406, line: 721, baseType: !175, size: 8, offset: 8)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2014, file: !1406, line: 722, baseType: !175, size: 8, offset: 16)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2014, file: !1406, line: 723, baseType: !175, size: 8, offset: 24)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2011, file: !1406, line: 725, baseType: !367, size: 32)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1763, file: !1406, line: 850, baseType: !116, size: 128, offset: 8192)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1763, file: !1406, line: 851, baseType: !2023, size: 64, offset: 8320)
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!2024 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1406, line: 60, flags: DIFlagFwdDecl)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1763, file: !1406, line: 855, baseType: !267, size: 64, offset: 8384)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1763, file: !1406, line: 856, baseType: !175, size: 8, offset: 8448)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1763, file: !1406, line: 857, baseType: !175, size: 8, offset: 8456)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1763, file: !1406, line: 858, baseType: !170, size: 32, offset: 8480)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1763, file: !1406, line: 859, baseType: !116, size: 128, offset: 8512)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1763, file: !1406, line: 860, baseType: !170, size: 32, offset: 8640)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1763, file: !1406, line: 861, baseType: !116, size: 128, offset: 8704)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1763, file: !1406, line: 873, baseType: !2033, size: 256, offset: 8832)
!2033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1406, line: 376, size: 256, elements: !2034)
!2034 = !{!2035, !2036, !2037, !2038}
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2033, file: !1406, line: 381, baseType: !267, size: 64)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2033, file: !1406, line: 384, baseType: !373, size: 64, offset: 64)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2033, file: !1406, line: 389, baseType: !373, size: 64, offset: 128)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2033, file: !1406, line: 392, baseType: !373, size: 64, offset: 192)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1763, file: !1406, line: 875, baseType: !116, size: 128, offset: 9088)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1763, file: !1406, line: 877, baseType: !2041, size: 320, offset: 9216)
!2041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2042, line: 86, size: 320, elements: !2043)
!2042 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!2043 = !{!2044, !2045, !2046}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2041, file: !2042, line: 87, baseType: !170, size: 32)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2041, file: !2042, line: 88, baseType: !116, size: 128, offset: 64)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2041, file: !2042, line: 89, baseType: !116, size: 128, offset: 192)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1763, file: !1406, line: 878, baseType: !762, size: 192, align: 64, offset: 9536)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1763, file: !1406, line: 881, baseType: !1162, size: 64, offset: 9728)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1763, file: !1406, line: 882, baseType: !1162, size: 64, offset: 9792)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1763, file: !1406, line: 884, baseType: !170, size: 32, offset: 9856)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1763, file: !1406, line: 885, baseType: !170, size: 32, offset: 9888)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1763, file: !1406, line: 886, baseType: !170, size: 32, offset: 9920)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1763, file: !1406, line: 888, baseType: !170, size: 32, offset: 9952)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1763, file: !1406, line: 890, baseType: !267, size: 64, offset: 9984)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1763, file: !1406, line: 893, baseType: !7, size: 32, offset: 10048)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1763, file: !1406, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1763, file: !1406, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1763, file: !1406, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1763, file: !1406, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1763, file: !1406, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1763, file: !1406, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1763, file: !1406, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1763, file: !1406, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1763, file: !1406, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1763, file: !1406, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1763, file: !1406, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1763, file: !1406, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1763, file: !1406, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1763, file: !1406, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1763, file: !1406, line: 969, baseType: !267, size: 64, offset: 10176)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1763, file: !1406, line: 971, baseType: !2072, size: 448, offset: 10240)
!2072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !45, line: 25, size: 448, elements: !2073)
!2073 = !{!2074, !2075, !2080}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2072, file: !45, line: 26, baseType: !267, size: 64)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2072, file: !45, line: 27, baseType: !2076, size: 64, offset: 64)
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2077, size: 64)
!2077 = !DISubroutineType(types: !2078)
!2078 = !{!253, !2079}
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2080 = !DIDerivedType(tag: DW_TAG_member, scope: !2072, file: !45, line: 28, baseType: !2081, size: 320, offset: 128)
!2081 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2072, file: !45, line: 28, size: 320, elements: !2082)
!2082 = !{!2083, !2093, !2118}
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2081, file: !45, line: 37, baseType: !2084, size: 320)
!2084 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2081, file: !45, line: 30, size: 320, elements: !2085)
!2085 = !{!2086, !2088, !2089, !2090, !2091, !2092}
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2084, file: !45, line: 31, baseType: !2087, size: 64)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2084, file: !45, line: 32, baseType: !367, size: 32, offset: 64)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2084, file: !45, line: 33, baseType: !367, size: 32, offset: 96)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2084, file: !45, line: 34, baseType: !367, size: 32, offset: 128)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2084, file: !45, line: 35, baseType: !371, size: 64, offset: 192)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2084, file: !45, line: 36, baseType: !2087, size: 64, offset: 256)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2081, file: !45, line: 47, baseType: !2094, size: 192)
!2094 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2081, file: !45, line: 39, size: 192, elements: !2095)
!2095 = !{!2096, !2097, !2098, !2117}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2094, file: !45, line: 40, baseType: !1920, size: 32)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2094, file: !45, line: 41, baseType: !44, size: 32, offset: 32)
!2098 = !DIDerivedType(tag: DW_TAG_member, scope: !2094, file: !45, line: 42, baseType: !2099, size: 64, offset: 64)
!2099 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2094, file: !45, line: 42, size: 64, elements: !2100)
!2100 = !{!2101, !2109}
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2099, file: !45, line: 43, baseType: !2102, size: 64)
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!2103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2104, line: 7, size: 128, elements: !2105)
!2104 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2105 = !{!2106, !2108}
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2103, file: !2104, line: 8, baseType: !2107, size: 64)
!2107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !251, line: 93, baseType: !461)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2103, file: !2104, line: 9, baseType: !461, size: 64, offset: 64)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2099, file: !45, line: 44, baseType: !2110, size: 64)
!2110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2111, size: 64)
!2111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2112, line: 7, size: 64, elements: !2113)
!2112 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2113 = !{!2114, !2116}
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2111, file: !2112, line: 8, baseType: !2115, size: 32)
!2115 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2112, line: 5, baseType: !755)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2111, file: !2112, line: 9, baseType: !755, size: 32, offset: 32)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2094, file: !45, line: 46, baseType: !371, size: 64, offset: 128)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2081, file: !45, line: 55, baseType: !2119, size: 256)
!2119 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2081, file: !45, line: 49, size: 256, elements: !2120)
!2120 = !{!2121, !2124, !2125, !2126, !2127}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2119, file: !45, line: 50, baseType: !2122, size: 64)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !45, line: 14, flags: DIFlagFwdDecl)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2119, file: !45, line: 51, baseType: !170, size: 32, offset: 64)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2119, file: !45, line: 52, baseType: !170, size: 32, offset: 96)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2119, file: !45, line: 53, baseType: !267, size: 64, offset: 128)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2119, file: !45, line: 54, baseType: !267, size: 64, offset: 192)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1763, file: !1406, line: 973, baseType: !2129, size: 32, offset: 10688)
!2129 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !117, line: 27, baseType: !2130)
!2130 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !251, line: 28, baseType: !170)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1763, file: !1406, line: 974, baseType: !2129, size: 32, offset: 10720)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1763, file: !1406, line: 978, baseType: !267, size: 64, offset: 10752)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1763, file: !1406, line: 987, baseType: !1762, size: 64, offset: 10816)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1763, file: !1406, line: 990, baseType: !1762, size: 64, offset: 10880)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1763, file: !1406, line: 995, baseType: !116, size: 128, offset: 10944)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1763, file: !1406, line: 996, baseType: !116, size: 128, offset: 11072)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1763, file: !1406, line: 997, baseType: !1762, size: 64, offset: 11200)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1763, file: !1406, line: 1005, baseType: !116, size: 128, offset: 11264)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1763, file: !1406, line: 1006, baseType: !116, size: 128, offset: 11392)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1763, file: !1406, line: 1009, baseType: !682, size: 64, offset: 11520)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1763, file: !1406, line: 1010, baseType: !2142, size: 512, offset: 11584)
!2142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !494, size: 512, elements: !695)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1763, file: !1406, line: 1011, baseType: !116, size: 128, offset: 12096)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1763, file: !1406, line: 1012, baseType: !116, size: 128, offset: 12224)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1763, file: !1406, line: 1014, baseType: !2146, size: 64, offset: 12352)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !2148, line: 26, size: 256, elements: !2149)
!2148 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!2149 = !{!2150, !2151}
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2147, file: !2148, line: 27, baseType: !7, size: 32)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2147, file: !2148, line: 28, baseType: !2152, size: 192, offset: 64)
!2152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !2153, line: 43, size: 192, elements: !2154)
!2153 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!2154 = !{!2155, !2156}
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2152, file: !2153, line: 44, baseType: !596, size: 32)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !2152, file: !2153, line: 45, baseType: !116, size: 128, offset: 64)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1763, file: !1406, line: 1017, baseType: !565, size: 64, offset: 12416)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1763, file: !1406, line: 1020, baseType: !565, size: 64, offset: 12480)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1763, file: !1406, line: 1023, baseType: !289, size: 64, offset: 12544)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1763, file: !1406, line: 1025, baseType: !371, size: 64, offset: 12608)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1763, file: !1406, line: 1026, baseType: !371, size: 64, offset: 12672)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1763, file: !1406, line: 1031, baseType: !371, size: 64, offset: 12736)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1763, file: !1406, line: 1032, baseType: !2164, size: 192, offset: 12800)
!2164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1406, line: 324, size: 192, elements: !2165)
!2165 = !{!2166, !2167, !2168}
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2164, file: !1406, line: 326, baseType: !371, size: 64)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2164, file: !1406, line: 327, baseType: !371, size: 64, offset: 64)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2164, file: !1406, line: 328, baseType: !596, size: 32, offset: 128)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1763, file: !1406, line: 1041, baseType: !267, size: 64, offset: 12992)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1763, file: !1406, line: 1042, baseType: !267, size: 64, offset: 13056)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1763, file: !1406, line: 1045, baseType: !371, size: 64, offset: 13120)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1763, file: !1406, line: 1048, baseType: !371, size: 64, offset: 13184)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1763, file: !1406, line: 1051, baseType: !267, size: 64, offset: 13248)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1763, file: !1406, line: 1052, baseType: !267, size: 64, offset: 13312)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1763, file: !1406, line: 1055, baseType: !2176, size: 640, offset: 13376)
!2176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2177, line: 132, size: 640, elements: !2178)
!2177 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2178 = !{!2179, !2185, !2186}
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2176, file: !2177, line: 133, baseType: !2180, size: 576)
!2180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2181, size: 576, elements: !218)
!2181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2177, line: 117, size: 192, elements: !2182)
!2182 = !{!2183, !2184}
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2181, file: !2177, line: 118, baseType: !371, size: 64)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2181, file: !2177, line: 119, baseType: !1929, size: 128, offset: 64)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2176, file: !2177, line: 134, baseType: !7, size: 32, offset: 576)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2176, file: !2177, line: 135, baseType: !7, size: 32, offset: 608)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1763, file: !1406, line: 1058, baseType: !2188, size: 448, offset: 14016)
!2188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2177, line: 144, size: 448, elements: !2189)
!2189 = !{!2190, !2191, !2192}
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2188, file: !2177, line: 145, baseType: !641, size: 128, align: 64)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2188, file: !2177, line: 146, baseType: !583, size: 256, offset: 128)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2188, file: !2177, line: 147, baseType: !7, size: 32, offset: 384)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1763, file: !1406, line: 1064, baseType: !721, size: 64, offset: 14464)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1763, file: !1406, line: 1067, baseType: !721, size: 64, offset: 14528)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1763, file: !1406, line: 1070, baseType: !721, size: 64, offset: 14592)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1763, file: !1406, line: 1074, baseType: !748, size: 64, offset: 14656)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1763, file: !1406, line: 1084, baseType: !2198, size: 128, offset: 14720)
!2198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 128, elements: !2199)
!2199 = !{!2200}
!2200 = !DISubrange(count: 16)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1763, file: !1406, line: 1086, baseType: !2202, size: 64, offset: 14848)
!2202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2203, size: 64)
!2203 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1406, line: 55, flags: DIFlagFwdDecl)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1763, file: !1406, line: 1089, baseType: !2205, size: 64, offset: 14912)
!2205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2206, line: 12, size: 64, elements: !2207)
!2206 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2207 = !{!2208}
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2205, file: !2206, line: 13, baseType: !2209, size: 64)
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2210, size: 64)
!2210 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2206, line: 8, flags: DIFlagFwdDecl)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1763, file: !1406, line: 1090, baseType: !2212, size: 128, offset: 14976)
!2212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2213, line: 13, size: 128, elements: !2214)
!2213 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2214 = !{!2215}
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2212, file: !2213, line: 14, baseType: !116, size: 128)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1763, file: !1406, line: 1097, baseType: !2217, size: 64, offset: 15104)
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64)
!2218 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1406, line: 50, flags: DIFlagFwdDecl)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1763, file: !1406, line: 1100, baseType: !2220, size: 64, offset: 15168)
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2221, size: 64)
!2221 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1406, line: 1100, flags: DIFlagFwdDecl)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1763, file: !1406, line: 1103, baseType: !2223, size: 64, offset: 15232)
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2224, size: 64)
!2224 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1406, line: 53, flags: DIFlagFwdDecl)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1763, file: !1406, line: 1107, baseType: !2226, size: 64, offset: 15296)
!2226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2227, size: 64)
!2227 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2228, line: 35, flags: DIFlagFwdDecl)
!2228 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1763, file: !1406, line: 1110, baseType: !2230, size: 64, offset: 15360)
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2232, line: 93, size: 8768, elements: !2233)
!2232 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2233 = !{!2234, !2235, !2236, !2237, !2238, !2239, !2240, !2241, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2269, !2270, !2271, !2272, !2273, !2274, !2275, !2283, !2292, !2293, !2295, !2296, !2297, !2300, !2306, !2307, !2308, !2309, !2310, !2311, !2312, !2313, !2314, !2315, !2316, !2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2338, !2339, !2346, !2356, !2359, !2360, !2363, !2364, !2365, !2366, !2367, !2368}
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2231, file: !2232, line: 94, baseType: !686, size: 32)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2231, file: !2232, line: 95, baseType: !166, size: 32, offset: 32)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2231, file: !2232, line: 96, baseType: !170, size: 32, offset: 64)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2231, file: !2232, line: 97, baseType: !170, size: 32, offset: 96)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2231, file: !2232, line: 98, baseType: !116, size: 128, offset: 128)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2231, file: !2232, line: 100, baseType: !699, size: 192, offset: 256)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2231, file: !2232, line: 103, baseType: !1762, size: 64, offset: 448)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2231, file: !2232, line: 106, baseType: !2242, size: 192, offset: 512)
!2242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1034, line: 32, size: 192, elements: !2243)
!2243 = !{!2244, !2245}
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2242, file: !1034, line: 33, baseType: !116, size: 128)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2242, file: !1034, line: 34, baseType: !2246, size: 64, offset: 128)
!2246 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2247, line: 25, baseType: !2248)
!2247 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2248 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2247, line: 23, size: 64, elements: !2249)
!2249 = !{!2250}
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2248, file: !2247, line: 24, baseType: !2000, size: 64)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2231, file: !2232, line: 109, baseType: !490, size: 64, offset: 704)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2231, file: !2232, line: 112, baseType: !170, size: 32, offset: 768)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2231, file: !2232, line: 114, baseType: !170, size: 32, offset: 800)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2231, file: !2232, line: 115, baseType: !1762, size: 64, offset: 832)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2231, file: !2232, line: 118, baseType: !170, size: 32, offset: 896)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2231, file: !2232, line: 119, baseType: !7, size: 32, offset: 928)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2231, file: !2232, line: 121, baseType: !2258, size: 64, offset: 960)
!2258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2259, size: 64)
!2259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2232, line: 80, size: 448, elements: !2260)
!2260 = !{!2261, !2262, !2268}
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2259, file: !2232, line: 81, baseType: !166, size: 32)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2259, file: !2232, line: 82, baseType: !2263, size: 128, offset: 64)
!2263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2232, line: 75, size: 128, elements: !2264)
!2264 = !{!2265, !2266}
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2263, file: !2232, line: 76, baseType: !1762, size: 64)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2263, file: !2232, line: 77, baseType: !2267, size: 64, offset: 64)
!2267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2263, size: 64)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2259, file: !2232, line: 83, baseType: !2147, size: 256, offset: 192)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2231, file: !2232, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2231, file: !2232, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2231, file: !2232, line: 138, baseType: !7, size: 32, offset: 1056)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2231, file: !2232, line: 139, baseType: !116, size: 128, offset: 1088)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2231, file: !2232, line: 142, baseType: !1873, size: 512, offset: 1216)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2231, file: !2232, line: 143, baseType: !1881, size: 64, offset: 1728)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2231, file: !2232, line: 150, baseType: !2276, size: 256, offset: 1792)
!2276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2277, size: 256, elements: !2281)
!2277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2232, line: 38, size: 128, elements: !2278)
!2278 = !{!2279, !2280}
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2277, file: !2232, line: 39, baseType: !371, size: 64)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2277, file: !2232, line: 40, baseType: !371, size: 64, offset: 64)
!2281 = !{!2282}
!2282 = !DISubrange(count: 2)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2231, file: !2232, line: 156, baseType: !2284, size: 192, offset: 2048)
!2284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2232, line: 66, size: 192, elements: !2285)
!2285 = !{!2286}
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2284, file: !2232, line: 67, baseType: !2287, size: 192)
!2287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2232, line: 47, size: 192, elements: !2288)
!2288 = !{!2289, !2290, !2291}
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2287, file: !2232, line: 48, baseType: !589, size: 64)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2287, file: !2232, line: 49, baseType: !589, size: 64, offset: 64)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2287, file: !2232, line: 50, baseType: !589, size: 64, offset: 128)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2231, file: !2232, line: 160, baseType: !2176, size: 640, offset: 2240)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2231, file: !2232, line: 163, baseType: !2294, size: 256, offset: 2880)
!2294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !682, size: 256, elements: !695)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2231, file: !2232, line: 169, baseType: !682, size: 64, offset: 3136)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2231, file: !2232, line: 172, baseType: !170, size: 32, offset: 3200)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2231, file: !2232, line: 174, baseType: !2298, size: 64, offset: 3264)
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2299, size: 64)
!2299 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2232, line: 174, flags: DIFlagFwdDecl)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2231, file: !2232, line: 185, baseType: !2301, size: 64, offset: 3328)
!2301 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !340, line: 860, baseType: !2302)
!2302 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !340, line: 853, size: 64, elements: !2303)
!2303 = !{!2304, !2305}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2302, file: !340, line: 858, baseType: !339, size: 32)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2302, file: !340, line: 859, baseType: !146, size: 32, offset: 32)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2231, file: !2232, line: 186, baseType: !371, size: 64, offset: 3392)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2231, file: !2232, line: 186, baseType: !371, size: 64, offset: 3456)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2231, file: !2232, line: 186, baseType: !371, size: 64, offset: 3520)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2231, file: !2232, line: 186, baseType: !371, size: 64, offset: 3584)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2231, file: !2232, line: 187, baseType: !371, size: 64, offset: 3648)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2231, file: !2232, line: 188, baseType: !371, size: 64, offset: 3712)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2231, file: !2232, line: 189, baseType: !2164, size: 192, offset: 3776)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2231, file: !2232, line: 190, baseType: !267, size: 64, offset: 3968)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2231, file: !2232, line: 190, baseType: !267, size: 64, offset: 4032)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2231, file: !2232, line: 190, baseType: !267, size: 64, offset: 4096)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2231, file: !2232, line: 190, baseType: !267, size: 64, offset: 4160)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2231, file: !2232, line: 191, baseType: !267, size: 64, offset: 4224)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2231, file: !2232, line: 191, baseType: !267, size: 64, offset: 4288)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2231, file: !2232, line: 191, baseType: !267, size: 64, offset: 4352)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2231, file: !2232, line: 191, baseType: !267, size: 64, offset: 4416)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2231, file: !2232, line: 192, baseType: !267, size: 64, offset: 4480)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2231, file: !2232, line: 192, baseType: !267, size: 64, offset: 4544)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2231, file: !2232, line: 192, baseType: !267, size: 64, offset: 4608)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2231, file: !2232, line: 192, baseType: !267, size: 64, offset: 4672)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2231, file: !2232, line: 193, baseType: !267, size: 64, offset: 4736)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2231, file: !2232, line: 193, baseType: !267, size: 64, offset: 4800)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2231, file: !2232, line: 194, baseType: !2328, size: 448, offset: 4864)
!2328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2329, line: 12, size: 448, elements: !2330)
!2329 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2330 = !{!2331, !2332, !2333, !2334, !2335, !2336, !2337}
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2328, file: !2329, line: 15, baseType: !371, size: 64)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2328, file: !2329, line: 17, baseType: !371, size: 64, offset: 64)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2328, file: !2329, line: 19, baseType: !371, size: 64, offset: 128)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2328, file: !2329, line: 21, baseType: !371, size: 64, offset: 192)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2328, file: !2329, line: 29, baseType: !371, size: 64, offset: 256)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2328, file: !2329, line: 35, baseType: !371, size: 64, offset: 320)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2328, file: !2329, line: 44, baseType: !371, size: 64, offset: 384)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2231, file: !2232, line: 202, baseType: !373, size: 64, offset: 5312)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2231, file: !2232, line: 213, baseType: !2340, size: 2048, offset: 5376)
!2340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2341, size: 2048, elements: !2199)
!2341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2342, line: 43, size: 128, elements: !2343)
!2342 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2343 = !{!2344, !2345}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2341, file: !2342, line: 44, baseType: !266, size: 64)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2341, file: !2342, line: 45, baseType: !266, size: 64, offset: 64)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2231, file: !2232, line: 216, baseType: !2347, size: 448, offset: 7424)
!2347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2232, line: 30, size: 448, elements: !2348)
!2348 = !{!2349, !2350, !2351, !2352, !2353, !2354, !2355}
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2347, file: !2232, line: 31, baseType: !170, size: 32)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2347, file: !2232, line: 32, baseType: !253, size: 64, offset: 64)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2347, file: !2232, line: 33, baseType: !267, size: 64, offset: 128)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2347, file: !2232, line: 34, baseType: !371, size: 64, offset: 192)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2347, file: !2232, line: 34, baseType: !371, size: 64, offset: 256)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2347, file: !2232, line: 35, baseType: !267, size: 64, offset: 320)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2347, file: !2232, line: 35, baseType: !267, size: 64, offset: 384)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2231, file: !2232, line: 219, baseType: !2357, size: 64, offset: 7872)
!2357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2358, size: 64)
!2358 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2232, line: 219, flags: DIFlagFwdDecl)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2231, file: !2232, line: 222, baseType: !7, size: 32, offset: 7936)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2231, file: !2232, line: 223, baseType: !2361, size: 64, offset: 8000)
!2361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2362, size: 64)
!2362 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2232, line: 223, flags: DIFlagFwdDecl)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2231, file: !2232, line: 230, baseType: !872, size: 8, offset: 8064)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2231, file: !2232, line: 231, baseType: !798, size: 16, offset: 8080)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2231, file: !2232, line: 232, baseType: !798, size: 16, offset: 8096)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2231, file: !2232, line: 234, baseType: !1162, size: 64, offset: 8128)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2231, file: !2232, line: 237, baseType: !583, size: 256, offset: 8192)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2231, file: !2232, line: 243, baseType: !770, size: 320, offset: 8448)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1763, file: !1406, line: 1111, baseType: !2370, size: 64, offset: 15424)
!2370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2371, size: 64)
!2371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2232, line: 20, size: 16640, elements: !2372)
!2372 = !{!2373, !2374, !2375, !2376}
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2371, file: !2232, line: 21, baseType: !146, size: 32)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2371, file: !2232, line: 22, baseType: !686, size: 32, offset: 32)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2371, file: !2232, line: 23, baseType: !699, size: 192, offset: 64)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2371, file: !2232, line: 24, baseType: !2377, size: 16384, offset: 256)
!2377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2378, size: 16384, elements: !222)
!2378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1034, line: 51, size: 256, elements: !2379)
!2379 = !{!2380}
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2378, file: !1034, line: 52, baseType: !2381, size: 256)
!2381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1034, line: 37, size: 256, elements: !2382)
!2382 = !{!2383, !2390, !2391, !2397}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2381, file: !1034, line: 39, baseType: !2384, size: 64)
!2384 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2385, line: 83, baseType: !2386)
!2385 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2387, size: 64)
!2387 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2385, line: 82, baseType: !2388)
!2388 = !DISubroutineType(types: !2389)
!2389 = !{null, !170}
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2381, file: !1034, line: 40, baseType: !267, size: 64, offset: 64)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2381, file: !1034, line: 46, baseType: !2392, size: 64, offset: 128)
!2392 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2385, line: 86, baseType: !2393)
!2393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2394, size: 64)
!2394 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2385, line: 85, baseType: !2395)
!2395 = !DISubroutineType(types: !2396)
!2396 = !{null}
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2381, file: !1034, line: 48, baseType: !2246, size: 64, offset: 192)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1763, file: !1406, line: 1112, baseType: !2246, size: 64, offset: 15488)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1763, file: !1406, line: 1113, baseType: !2246, size: 64, offset: 15552)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1763, file: !1406, line: 1115, baseType: !2246, size: 64, offset: 15616)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1763, file: !1406, line: 1116, baseType: !2242, size: 192, offset: 15680)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1763, file: !1406, line: 1117, baseType: !267, size: 64, offset: 15872)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1763, file: !1406, line: 1118, baseType: !264, size: 64, offset: 15936)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1763, file: !1406, line: 1119, baseType: !7, size: 32, offset: 16000)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1763, file: !1406, line: 1121, baseType: !644, size: 64, offset: 16064)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1763, file: !1406, line: 1125, baseType: !2407, size: 64, offset: 16128)
!2407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2408, size: 64)
!2408 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1406, line: 43, flags: DIFlagFwdDecl)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1763, file: !1406, line: 1127, baseType: !304, size: 32, offset: 16192)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1763, file: !1406, line: 1128, baseType: !7, size: 32, offset: 16224)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1763, file: !1406, line: 1130, baseType: !2412, size: 128, offset: 16256)
!2412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2413, line: 37, size: 128, elements: !2414)
!2413 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2414 = !{!2415, !2416, !2417}
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2412, file: !2413, line: 38, baseType: !170, size: 32)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2412, file: !2413, line: 39, baseType: !166, size: 32, offset: 32)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2412, file: !2413, line: 40, baseType: !2418, size: 64, offset: 64)
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2419, size: 64)
!2419 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2413, line: 24, flags: DIFlagFwdDecl)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1763, file: !1406, line: 1131, baseType: !2421, size: 256, offset: 16384)
!2421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2422, line: 12, size: 256, elements: !2423)
!2422 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2423 = !{!2424, !2425, !2426, !2427}
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2421, file: !2422, line: 13, baseType: !217, size: 64)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2421, file: !2422, line: 14, baseType: !267, size: 64, offset: 64)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2421, file: !2422, line: 15, baseType: !267, size: 64, offset: 128)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2421, file: !2422, line: 16, baseType: !872, size: 8, offset: 192)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1763, file: !1406, line: 1134, baseType: !371, size: 64, offset: 16640)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1763, file: !1406, line: 1135, baseType: !371, size: 64, offset: 16704)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1763, file: !1406, line: 1138, baseType: !146, size: 32, offset: 16768)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1763, file: !1406, line: 1141, baseType: !596, size: 32, offset: 16800)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1763, file: !1406, line: 1143, baseType: !2433, size: 64, offset: 16832)
!2433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1406, line: 735, size: 64, elements: !2434)
!2434 = !{!2435}
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2433, file: !1406, line: 736, baseType: !2436, size: 64)
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2433, size: 64)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1763, file: !1406, line: 1147, baseType: !1932, size: 128, offset: 16896)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1763, file: !1406, line: 1149, baseType: !1762, size: 64, offset: 17024)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1763, file: !1406, line: 1151, baseType: !2440, size: 64, offset: 17088)
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2441 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1406, line: 1151, flags: DIFlagFwdDecl)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1763, file: !1406, line: 1188, baseType: !289, size: 64, offset: 17152)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1763, file: !1406, line: 1191, baseType: !2444, size: 64, offset: 17216)
!2444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2445, size: 64)
!2445 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1406, line: 44, flags: DIFlagFwdDecl)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1763, file: !1406, line: 1194, baseType: !2447, size: 64, offset: 17280)
!2447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2448, size: 64)
!2448 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1406, line: 45, flags: DIFlagFwdDecl)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1763, file: !1406, line: 1197, baseType: !2450, size: 64, offset: 17344)
!2450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2451, size: 64)
!2451 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1406, line: 61, flags: DIFlagFwdDecl)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1763, file: !1406, line: 1199, baseType: !2453, size: 64, offset: 17408)
!2453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2454, size: 64)
!2454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2455, line: 99, size: 128, elements: !2456)
!2455 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2456 = !{!2457, !2458, !2459}
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2454, file: !2455, line: 100, baseType: !587, size: 64)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2454, file: !2455, line: 101, baseType: !166, size: 32, offset: 64)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2454, file: !2455, line: 103, baseType: !187, size: 16, offset: 96)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1763, file: !1406, line: 1202, baseType: !2461, size: 64, offset: 17472)
!2461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2462, size: 64)
!2462 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1406, line: 48, flags: DIFlagFwdDecl)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1763, file: !1406, line: 1205, baseType: !267, size: 64, offset: 17536)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1763, file: !1406, line: 1206, baseType: !2465, size: 64, offset: 17600)
!2465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2466, size: 64)
!2466 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1034, line: 14, baseType: !2467)
!2467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1034, line: 12, size: 384, elements: !2468)
!2468 = !{!2469}
!2469 = !DIDerivedType(tag: DW_TAG_member, scope: !2467, file: !1034, line: 13, baseType: !2470, size: 384)
!2470 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2467, file: !1034, line: 13, size: 384, elements: !2471)
!2471 = !{!2472, !2473, !2474, !2475}
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2470, file: !1034, line: 13, baseType: !170, size: 32)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2470, file: !1034, line: 13, baseType: !170, size: 32, offset: 32)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2470, file: !1034, line: 13, baseType: !170, size: 32, offset: 64)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2470, file: !1034, line: 13, baseType: !2476, size: 256, offset: 128)
!2476 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2477, line: 37, size: 256, elements: !2478)
!2477 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2478 = !{!2479, !2484, !2497, !2503, !2512, !2539, !2544}
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2476, file: !2477, line: 42, baseType: !2480, size: 64)
!2480 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2476, file: !2477, line: 39, size: 64, elements: !2481)
!2481 = !{!2482, !2483}
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2480, file: !2477, line: 40, baseType: !2130, size: 32)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2480, file: !2477, line: 41, baseType: !310, size: 32, offset: 32)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2476, file: !2477, line: 50, baseType: !2485, size: 192)
!2485 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2476, file: !2477, line: 45, size: 192, elements: !2486)
!2486 = !{!2487, !2489, !2490, !2496}
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2485, file: !2477, line: 46, baseType: !2488, size: 32)
!2488 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !251, line: 95, baseType: !170)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2485, file: !2477, line: 47, baseType: !170, size: 32, offset: 32)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2485, file: !2477, line: 48, baseType: !2491, size: 64, offset: 64)
!2491 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2477, line: 11, baseType: !2492)
!2492 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2477, line: 8, size: 64, elements: !2493)
!2493 = !{!2494, !2495}
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2492, file: !2477, line: 9, baseType: !170, size: 32)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2492, file: !2477, line: 10, baseType: !289, size: 64)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2485, file: !2477, line: 49, baseType: !170, size: 32, offset: 128)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2476, file: !2477, line: 57, baseType: !2498, size: 128)
!2498 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2476, file: !2477, line: 53, size: 128, elements: !2499)
!2499 = !{!2500, !2501, !2502}
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2498, file: !2477, line: 54, baseType: !2130, size: 32)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2498, file: !2477, line: 55, baseType: !310, size: 32, offset: 32)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2498, file: !2477, line: 56, baseType: !2491, size: 64, offset: 64)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2476, file: !2477, line: 66, baseType: !2504, size: 256)
!2504 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2476, file: !2477, line: 60, size: 256, elements: !2505)
!2505 = !{!2506, !2507, !2508, !2509, !2511}
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2504, file: !2477, line: 61, baseType: !2130, size: 32)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2504, file: !2477, line: 62, baseType: !310, size: 32, offset: 32)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2504, file: !2477, line: 63, baseType: !170, size: 32, offset: 64)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2504, file: !2477, line: 64, baseType: !2510, size: 64, offset: 128)
!2510 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !251, line: 94, baseType: !252)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2504, file: !2477, line: 65, baseType: !2510, size: 64, offset: 192)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2476, file: !2477, line: 105, baseType: !2513, size: 256)
!2513 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2476, file: !2477, line: 69, size: 256, elements: !2514)
!2514 = !{!2515, !2516}
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2513, file: !2477, line: 70, baseType: !289, size: 64)
!2516 = !DIDerivedType(tag: DW_TAG_member, scope: !2513, file: !2477, line: 79, baseType: !2517, size: 192, offset: 64)
!2517 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2513, file: !2477, line: 79, size: 192, elements: !2518)
!2518 = !{!2519, !2520, !2521, !2528, !2533}
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2517, file: !2477, line: 81, baseType: !170, size: 32)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2517, file: !2477, line: 86, baseType: !798, size: 16)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2517, file: !2477, line: 92, baseType: !2522, size: 192)
!2522 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2517, file: !2477, line: 88, size: 192, elements: !2523)
!2523 = !{!2524, !2526, !2527}
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2522, file: !2477, line: 89, baseType: !2525, size: 64)
!2525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 64, elements: !1916)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2522, file: !2477, line: 90, baseType: !289, size: 64, offset: 64)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2522, file: !2477, line: 91, baseType: !289, size: 64, offset: 128)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2517, file: !2477, line: 97, baseType: !2529, size: 96)
!2529 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2517, file: !2477, line: 94, size: 96, elements: !2530)
!2530 = !{!2531, !2532}
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2529, file: !2477, line: 95, baseType: !2525, size: 64)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2529, file: !2477, line: 96, baseType: !368, size: 32, offset: 64)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2517, file: !2477, line: 103, baseType: !2534, size: 128)
!2534 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2517, file: !2477, line: 99, size: 128, elements: !2535)
!2535 = !{!2536, !2537, !2538}
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2534, file: !2477, line: 100, baseType: !267, size: 64)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2534, file: !2477, line: 101, baseType: !368, size: 32, offset: 64)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2534, file: !2477, line: 102, baseType: !368, size: 32, offset: 96)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2476, file: !2477, line: 111, baseType: !2540, size: 128)
!2540 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2476, file: !2477, line: 108, size: 128, elements: !2541)
!2541 = !{!2542, !2543}
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2540, file: !2477, line: 109, baseType: !253, size: 64)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2540, file: !2477, line: 110, baseType: !170, size: 32, offset: 64)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2476, file: !2477, line: 118, baseType: !2545, size: 128)
!2545 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2476, file: !2477, line: 114, size: 128, elements: !2546)
!2546 = !{!2547, !2548, !2549}
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2545, file: !2477, line: 115, baseType: !289, size: 64)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2545, file: !2477, line: 116, baseType: !170, size: 32, offset: 64)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2545, file: !2477, line: 117, baseType: !7, size: 32, offset: 96)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1763, file: !1406, line: 1208, baseType: !2328, size: 448, offset: 17664)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1763, file: !1406, line: 1215, baseType: !371, size: 64, offset: 18112)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1763, file: !1406, line: 1217, baseType: !371, size: 64, offset: 18176)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1763, file: !1406, line: 1219, baseType: !371, size: 64, offset: 18240)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1763, file: !1406, line: 1223, baseType: !2555, size: 64, offset: 18304)
!2555 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2556, line: 99, baseType: !2557)
!2556 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2557 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2556, line: 99, size: 64, elements: !2558)
!2558 = !{!2559}
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2557, file: !2556, line: 99, baseType: !2000, size: 64)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1763, file: !1406, line: 1225, baseType: !339, size: 32, offset: 18368)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1763, file: !1406, line: 1226, baseType: !170, size: 32, offset: 18400)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1763, file: !1406, line: 1227, baseType: !170, size: 32, offset: 18432)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1763, file: !1406, line: 1231, baseType: !2564, size: 64, offset: 18496)
!2564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2565, size: 64)
!2565 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1406, line: 1231, flags: DIFlagFwdDecl)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1763, file: !1406, line: 1233, baseType: !116, size: 128, offset: 18560)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1763, file: !1406, line: 1240, baseType: !2568, size: 64, offset: 18688)
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2569 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1406, line: 62, flags: DIFlagFwdDecl)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1763, file: !1406, line: 1242, baseType: !2571, size: 64, offset: 18752)
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2572, size: 64)
!2572 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1406, line: 1242, flags: DIFlagFwdDecl)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1763, file: !1406, line: 1244, baseType: !116, size: 128, offset: 18816)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1763, file: !1406, line: 1245, baseType: !2575, size: 64, offset: 18944)
!2575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2576, size: 64)
!2576 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1406, line: 51, flags: DIFlagFwdDecl)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1763, file: !1406, line: 1246, baseType: !583, size: 256, offset: 19008)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1763, file: !1406, line: 1247, baseType: !7, size: 32, offset: 19264)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1763, file: !1406, line: 1250, baseType: !2580, size: 64, offset: 19328)
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2581, size: 64)
!2581 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1406, line: 57, flags: DIFlagFwdDecl)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1763, file: !1406, line: 1251, baseType: !583, size: 256, offset: 19392)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1763, file: !1406, line: 1252, baseType: !116, size: 128, offset: 19648)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1763, file: !1406, line: 1259, baseType: !1365, size: 64, offset: 19776)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1763, file: !1406, line: 1260, baseType: !798, size: 16, offset: 19840)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1763, file: !1406, line: 1261, baseType: !798, size: 16, offset: 19856)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1763, file: !1406, line: 1314, baseType: !2588, size: 64, offset: 19904)
!2588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2589, size: 64)
!2589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2590, line: 62, size: 256, align: 256, elements: !2591)
!2590 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2591 = !{!2592, !2593, !2594, !2595, !2596, !2597, !2598}
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2589, file: !2590, line: 75, baseType: !368, size: 32)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2589, file: !2590, line: 90, baseType: !368, size: 32, offset: 32)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2589, file: !2590, line: 112, baseType: !372, size: 64, offset: 64)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2589, file: !2590, line: 132, baseType: !368, size: 32, offset: 128)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2589, file: !2590, line: 140, baseType: !368, size: 32, offset: 160)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2589, file: !2590, line: 149, baseType: !368, size: 32, offset: 192)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2589, file: !2590, line: 154, baseType: !2599, offset: 224)
!2599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, elements: !714)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1763, file: !1406, line: 1315, baseType: !367, size: 32, offset: 19968)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1763, file: !1406, line: 1316, baseType: !367, size: 32, offset: 20000)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1763, file: !1406, line: 1321, baseType: !267, size: 64, offset: 20032)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1763, file: !1406, line: 1325, baseType: !170, size: 32, offset: 20096)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1763, file: !1406, line: 1326, baseType: !170, size: 32, offset: 20128)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1763, file: !1406, line: 1327, baseType: !170, size: 32, offset: 20160)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1763, file: !1406, line: 1328, baseType: !170, size: 32, offset: 20192)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1763, file: !1406, line: 1329, baseType: !641, size: 128, align: 64, offset: 20224)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1763, file: !1406, line: 1332, baseType: !2609, size: 128, offset: 20352)
!2609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2610, line: 51, size: 128, elements: !2611)
!2610 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2611 = !{!2612, !2617, !2618}
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2609, file: !2610, line: 60, baseType: !2613, size: 64)
!2613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2614, line: 7, size: 64, elements: !2615)
!2614 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2615 = !{!2616}
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2613, file: !2614, line: 12, baseType: !1997, size: 64)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2609, file: !2610, line: 63, baseType: !872, size: 8, offset: 64)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2609, file: !2610, line: 70, baseType: !872, size: 8, offset: 72)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1763, file: !1406, line: 1335, baseType: !1404, size: 64, offset: 20480)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1763, file: !1406, line: 1337, baseType: !2621, size: 128, offset: 20544)
!2621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2610, line: 39, size: 128, elements: !2622)
!2622 = !{!2623, !2684, !2685}
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2621, file: !2610, line: 40, baseType: !2624, size: 64)
!2624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2625, size: 64)
!2625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !1150, line: 74, size: 512, align: 128, elements: !2626)
!2626 = !{!2627, !2628, !2678, !2683}
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2625, file: !1150, line: 75, baseType: !267, size: 64)
!2628 = !DIDerivedType(tag: DW_TAG_member, scope: !2625, file: !1150, line: 83, baseType: !2629, size: 320, offset: 64)
!2629 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2625, file: !1150, line: 83, size: 320, elements: !2630)
!2630 = !{!2631, !2652, !2666, !2670, !2677}
!2631 = !DIDerivedType(tag: DW_TAG_member, scope: !2629, file: !1150, line: 84, baseType: !2632, size: 320)
!2632 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2629, file: !1150, line: 84, size: 320, elements: !2633)
!2633 = !{!2634, !2645, !2646, !2651}
!2634 = !DIDerivedType(tag: DW_TAG_member, scope: !2632, file: !1150, line: 90, baseType: !2635, size: 128)
!2635 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2632, file: !1150, line: 90, size: 128, elements: !2636)
!2636 = !{!2637, !2638, !2643, !2644}
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2635, file: !1150, line: 91, baseType: !116, size: 128)
!2638 = !DIDerivedType(tag: DW_TAG_member, scope: !2635, file: !1150, line: 94, baseType: !2639, size: 128)
!2639 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2635, file: !1150, line: 94, size: 128, elements: !2640)
!2640 = !{!2641, !2642}
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2639, file: !1150, line: 96, baseType: !289, size: 64)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2639, file: !1150, line: 98, baseType: !7, size: 32, offset: 64)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2635, file: !1150, line: 102, baseType: !116, size: 128)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2635, file: !1150, line: 103, baseType: !116, size: 128)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2632, file: !1150, line: 106, baseType: !294, size: 64, offset: 128)
!2646 = !DIDerivedType(tag: DW_TAG_member, scope: !2632, file: !1150, line: 107, baseType: !2647, size: 64, offset: 192)
!2647 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2632, file: !1150, line: 107, size: 64, elements: !2648)
!2648 = !{!2649, !2650}
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2647, file: !1150, line: 108, baseType: !267, size: 64)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2647, file: !1150, line: 109, baseType: !267, size: 64)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2632, file: !1150, line: 117, baseType: !267, size: 64, offset: 256)
!2652 = !DIDerivedType(tag: DW_TAG_member, scope: !2629, file: !1150, line: 119, baseType: !2653, size: 320)
!2653 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2629, file: !1150, line: 119, size: 320, elements: !2654)
!2654 = !{!2655, !2656, !2659, !2660, !2661}
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2653, file: !1150, line: 124, baseType: !267, size: 64)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2653, file: !1150, line: 125, baseType: !2657, size: 64, offset: 64)
!2657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2658, size: 64)
!2658 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !1150, line: 125, flags: DIFlagFwdDecl)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2653, file: !1150, line: 126, baseType: !267, size: 64, offset: 128)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2653, file: !1150, line: 127, baseType: !267, size: 64, offset: 192)
!2661 = !DIDerivedType(tag: DW_TAG_member, scope: !2653, file: !1150, line: 128, baseType: !2662, size: 64, offset: 256)
!2662 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2653, file: !1150, line: 128, size: 64, elements: !2663)
!2663 = !{!2664, !2665}
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2662, file: !1150, line: 133, baseType: !267, size: 64)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2662, file: !1150, line: 138, baseType: !587, size: 64)
!2666 = !DIDerivedType(tag: DW_TAG_member, scope: !2629, file: !1150, line: 141, baseType: !2667, size: 64)
!2667 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2629, file: !1150, line: 141, size: 64, elements: !2668)
!2668 = !{!2669}
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2667, file: !1150, line: 142, baseType: !267, size: 64)
!2670 = !DIDerivedType(tag: DW_TAG_member, scope: !2629, file: !1150, line: 144, baseType: !2671, size: 128)
!2671 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2629, file: !1150, line: 144, size: 128, elements: !2672)
!2672 = !{!2673, !2676}
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2671, file: !1150, line: 146, baseType: !2674, size: 64)
!2674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2675, size: 64)
!2675 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !1150, line: 146, flags: DIFlagFwdDecl)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2671, file: !1150, line: 147, baseType: !289, size: 64, offset: 64)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2629, file: !1150, line: 161, baseType: !641, size: 128, align: 64)
!2678 = !DIDerivedType(tag: DW_TAG_member, scope: !2625, file: !1150, line: 164, baseType: !2679, size: 32, offset: 384)
!2679 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2625, file: !1150, line: 164, size: 32, elements: !2680)
!2680 = !{!2681, !2682}
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2679, file: !1150, line: 169, baseType: !166, size: 32)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2679, file: !1150, line: 177, baseType: !7, size: 32)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2625, file: !1150, line: 181, baseType: !166, size: 32, offset: 416)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2621, file: !2610, line: 42, baseType: !368, size: 32, offset: 64)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2621, file: !2610, line: 43, baseType: !368, size: 32, offset: 96)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1763, file: !1406, line: 1340, baseType: !2687, size: 64, offset: 20672)
!2687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2688, size: 64)
!2688 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1406, line: 69, flags: DIFlagFwdDecl)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1763, file: !1406, line: 1351, baseType: !170, size: 32, offset: 20736)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1763, file: !1406, line: 1352, baseType: !170, size: 32, offset: 20768)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1763, file: !1406, line: 1354, baseType: !267, size: 64, offset: 20800)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1763, file: !1406, line: 1364, baseType: !371, size: 64, offset: 20864)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1763, file: !1406, line: 1365, baseType: !371, size: 64, offset: 20928)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1763, file: !1406, line: 1412, baseType: !267, size: 64, offset: 20992)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1763, file: !1406, line: 1453, baseType: !2696, size: 64, offset: 21056)
!2696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2697, size: 64)
!2697 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1406, line: 1453, flags: DIFlagFwdDecl)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1763, file: !1406, line: 1457, baseType: !2699, size: 64, offset: 21120)
!2699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2700, size: 64)
!2700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !51, line: 61, size: 576, elements: !2701)
!2701 = !{!2702, !2703, !2722, !2725, !2726, !2759, !2769}
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2700, file: !51, line: 62, baseType: !50, size: 32)
!2703 = !DIDerivedType(tag: DW_TAG_member, scope: !2700, file: !51, line: 64, baseType: !2704, size: 192, offset: 64)
!2704 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2700, file: !51, line: 64, size: 192, elements: !2705)
!2705 = !{!2706, !2717}
!2706 = !DIDerivedType(tag: DW_TAG_member, scope: !2704, file: !51, line: 65, baseType: !2707, size: 192)
!2707 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2704, file: !51, line: 65, size: 192, elements: !2708)
!2708 = !{!2709, !2716}
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2707, file: !51, line: 66, baseType: !2710, size: 128)
!2710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2711, line: 50, size: 128, elements: !2712)
!2711 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2712 = !{!2713, !2714, !2715}
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2710, file: !2711, line: 52, baseType: !267, size: 64)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2710, file: !2711, line: 54, baseType: !7, size: 32, offset: 64)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2710, file: !2711, line: 55, baseType: !7, size: 32, offset: 96)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2707, file: !51, line: 67, baseType: !267, size: 64, offset: 128)
!2717 = !DIDerivedType(tag: DW_TAG_member, scope: !2704, file: !51, line: 70, baseType: !2718, size: 192)
!2718 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2704, file: !51, line: 70, size: 192, elements: !2719)
!2719 = !{!2720, !2721}
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2718, file: !51, line: 71, baseType: !641, size: 128, align: 64)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2718, file: !51, line: 72, baseType: !267, size: 64, offset: 128)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2700, file: !51, line: 76, baseType: !2723, size: 64, offset: 256)
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2724, size: 64)
!2724 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !51, line: 76, flags: DIFlagFwdDecl)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2700, file: !51, line: 77, baseType: !267, size: 64, offset: 320)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2700, file: !51, line: 79, baseType: !2727, size: 64, offset: 384)
!2727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2728, size: 64)
!2728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2711, line: 25, size: 256, elements: !2729)
!2729 = !{!2730, !2736, !2740}
!2730 = !DIDerivedType(tag: DW_TAG_member, scope: !2728, file: !2711, line: 26, baseType: !2731, size: 128)
!2731 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2728, file: !2711, line: 26, size: 128, elements: !2732)
!2732 = !{!2733, !2735}
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2731, file: !2711, line: 27, baseType: !2734, size: 128)
!2734 = !DICompositeType(tag: DW_TAG_array_type, baseType: !175, size: 128, elements: !2199)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2731, file: !2711, line: 28, baseType: !2734, size: 128)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2728, file: !2711, line: 31, baseType: !2737, size: 64, offset: 128)
!2737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2738, size: 64)
!2738 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2739)
!2739 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2711, line: 23, flags: DIFlagFwdDecl)
!2740 = !DIDerivedType(tag: DW_TAG_member, scope: !2728, file: !2711, line: 33, baseType: !2741, size: 64, offset: 192)
!2741 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2728, file: !2711, line: 33, size: 64, elements: !2742)
!2742 = !{!2743, !2749, !2754}
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2741, file: !2711, line: 38, baseType: !2744, size: 64)
!2744 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2741, file: !2711, line: 34, size: 64, elements: !2745)
!2745 = !{!2746, !2747, !2748}
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2744, file: !2711, line: 35, baseType: !755, size: 32)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2744, file: !2711, line: 36, baseType: !175, size: 8, offset: 32)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2744, file: !2711, line: 37, baseType: !175, size: 8, offset: 40)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2741, file: !2711, line: 42, baseType: !2750, size: 16)
!2750 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2741, file: !2711, line: 39, size: 16, elements: !2751)
!2751 = !{!2752, !2753}
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2750, file: !2711, line: 40, baseType: !175, size: 8)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2750, file: !2711, line: 41, baseType: !175, size: 8, offset: 8)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2741, file: !2711, line: 46, baseType: !2755, size: 16)
!2755 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2741, file: !2711, line: 43, size: 16, elements: !2756)
!2756 = !{!2757, !2758}
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2755, file: !2711, line: 44, baseType: !175, size: 8)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2755, file: !2711, line: 45, baseType: !175, size: 8, offset: 8)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2700, file: !51, line: 81, baseType: !2760, size: 64, offset: 448)
!2760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2761, size: 64)
!2761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !51, line: 85, size: 384, elements: !2762)
!2762 = !{!2763, !2764, !2765, !2766, !2767, !2768}
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2761, file: !51, line: 86, baseType: !2723, size: 64)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2761, file: !51, line: 87, baseType: !267, size: 64, offset: 64)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2761, file: !51, line: 88, baseType: !267, size: 64, offset: 128)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2761, file: !51, line: 89, baseType: !267, size: 64, offset: 192)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2761, file: !51, line: 90, baseType: !872, size: 8, offset: 256)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2761, file: !51, line: 92, baseType: !2760, size: 64, offset: 320)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2700, file: !51, line: 82, baseType: !7, size: 32, offset: 512)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1763, file: !1406, line: 1463, baseType: !2771, offset: 21184)
!2771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1406, line: 739, elements: !502)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1763, file: !1406, line: 1470, baseType: !641, size: 128, align: 64, offset: 21184)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1763, file: !1406, line: 1471, baseType: !686, size: 32, offset: 21312)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1763, file: !1406, line: 1472, baseType: !170, size: 32, offset: 21344)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1763, file: !1406, line: 1474, baseType: !1762, size: 64, offset: 21376)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1763, file: !1406, line: 1475, baseType: !2777, size: 320, offset: 21440)
!2777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2778, line: 11, size: 320, elements: !2779)
!2778 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2779 = !{!2780, !2781, !2782, !2787}
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2777, file: !2778, line: 16, baseType: !494, size: 128)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2777, file: !2778, line: 17, baseType: !267, size: 64, offset: 128)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2777, file: !2778, line: 18, baseType: !2783, size: 64, offset: 192)
!2783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2784, size: 64)
!2784 = !DISubroutineType(types: !2785)
!2785 = !{null, !2786}
!2786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2777, size: 64)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2777, file: !2778, line: 19, baseType: !367, size: 32, offset: 256)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1763, file: !1406, line: 1478, baseType: !2789, size: 64, offset: 21760)
!2789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2790, size: 64)
!2790 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1406, line: 1478, flags: DIFlagFwdDecl)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1763, file: !1406, line: 1482, baseType: !686, size: 32, offset: 21824)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1763, file: !1406, line: 1489, baseType: !289, size: 64, offset: 21888)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1763, file: !1406, line: 1504, baseType: !289, size: 64, offset: 21952)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1763, file: !1406, line: 1505, baseType: !372, size: 64, offset: 22016)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1763, file: !1406, line: 1506, baseType: !371, size: 64, offset: 22080)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1763, file: !1406, line: 1507, baseType: !372, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1763, file: !1406, line: 1508, baseType: !372, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1763, file: !1406, line: 1509, baseType: !372, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1763, file: !1406, line: 1510, baseType: !641, size: 128, align: 64, offset: 22208)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1763, file: !1406, line: 1511, baseType: !170, size: 32, offset: 22336)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1763, file: !1406, line: 1515, baseType: !2802, size: 64, offset: 22400)
!2802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !636, line: 56, size: 64, elements: !2803)
!2803 = !{!2804}
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2802, file: !636, line: 57, baseType: !639, size: 64)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1763, file: !1406, line: 1518, baseType: !2802, size: 64, offset: 22464)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1763, file: !1406, line: 1528, baseType: !641, size: 128, align: 64, offset: 22528)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1763, file: !1406, line: 1552, baseType: !2808, size: 35328, offset: 23040)
!2808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2809, line: 430, size: 35328, elements: !2810)
!2809 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!2810 = !{!2811, !2829, !2830, !2831, !2832, !2833, !2834, !2835, !2836, !2840, !2841, !2842, !2843, !2844, !2845, !2848, !2849, !2850, !2851}
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2808, file: !2809, line: 432, baseType: !2812, size: 192)
!2812 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2813, size: 192, elements: !218)
!2813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2814, line: 16, size: 64, elements: !2815)
!2814 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!2815 = !{!2816, !2817, !2818, !2819, !2820, !2821, !2822, !2823, !2824, !2825, !2826, !2827, !2828}
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2813, file: !2814, line: 17, baseType: !185, size: 16)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2813, file: !2814, line: 18, baseType: !185, size: 16, offset: 16)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2813, file: !2814, line: 19, baseType: !185, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2813, file: !2814, line: 19, baseType: !185, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2813, file: !2814, line: 19, baseType: !185, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2813, file: !2814, line: 19, baseType: !185, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2813, file: !2814, line: 19, baseType: !185, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2813, file: !2814, line: 20, baseType: !185, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2813, file: !2814, line: 20, baseType: !185, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2813, file: !2814, line: 20, baseType: !185, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2813, file: !2814, line: 20, baseType: !185, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2813, file: !2814, line: 20, baseType: !185, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2813, file: !2814, line: 20, baseType: !185, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2808, file: !2809, line: 436, baseType: !267, size: 64, offset: 192)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2808, file: !2809, line: 440, baseType: !187, size: 16, offset: 256)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2808, file: !2809, line: 441, baseType: !187, size: 16, offset: 272)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2808, file: !2809, line: 442, baseType: !187, size: 16, offset: 288)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2808, file: !2809, line: 443, baseType: !187, size: 16, offset: 304)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2808, file: !2809, line: 447, baseType: !267, size: 64, offset: 320)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2808, file: !2809, line: 448, baseType: !267, size: 64, offset: 384)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2808, file: !2809, line: 459, baseType: !2837, size: 256, offset: 448)
!2837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2838, size: 256, elements: !695)
!2838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2839, size: 64)
!2839 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2809, line: 428, flags: DIFlagFwdDecl)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2808, file: !2809, line: 461, baseType: !267, size: 64, offset: 704)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2808, file: !2809, line: 463, baseType: !267, size: 64, offset: 768)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2808, file: !2809, line: 465, baseType: !267, size: 64, offset: 832)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2808, file: !2809, line: 466, baseType: !267, size: 64, offset: 896)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2808, file: !2809, line: 467, baseType: !267, size: 64, offset: 960)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2808, file: !2809, line: 473, baseType: !2846, size: 64, offset: 1024)
!2846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2847, size: 64)
!2847 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2809, line: 10, flags: DIFlagFwdDecl)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2808, file: !2809, line: 480, baseType: !267, size: 64, offset: 1088)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !2808, file: !2809, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !2808, file: !2809, line: 491, baseType: !367, size: 32, offset: 1184)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2808, file: !2809, line: 501, baseType: !2852, size: 33792, offset: 1536)
!2852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2853, line: 448, size: 33792, elements: !2854)
!2853 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!2854 = !{!2855, !2856, !2857, !3019, !3020, !3026, !3027}
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2852, file: !2853, line: 461, baseType: !7, size: 32)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2852, file: !2853, line: 468, baseType: !267, size: 64, offset: 64)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !2852, file: !2853, line: 476, baseType: !2858, size: 64, offset: 128)
!2858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2859, size: 64)
!2859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !2853, line: 356, size: 33280, align: 512, elements: !2860)
!2860 = !{!2861, !2862, !2863, !2864, !2865, !2866, !2867, !2868, !2869, !2870}
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2859, file: !2853, line: 358, baseType: !7, size: 32)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !2859, file: !2853, line: 361, baseType: !7, size: 32, offset: 32)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2859, file: !2853, line: 364, baseType: !371, size: 64, offset: 64)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !2859, file: !2853, line: 367, baseType: !371, size: 64, offset: 128)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !2859, file: !2853, line: 370, baseType: !371, size: 64, offset: 192)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !2859, file: !2853, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !2859, file: !2853, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !2859, file: !2853, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !2859, file: !2853, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2859, file: !2853, line: 397, baseType: !2871, size: 32768, offset: 512)
!2871 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2853, line: 348, size: 32768, elements: !2872)
!2872 = !{!2873, !2888, !2925, !3002, !3015}
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2871, file: !2853, line: 349, baseType: !2874, size: 896)
!2874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2853, line: 12, size: 896, elements: !2875)
!2875 = !{!2876, !2877, !2878, !2879, !2880, !2881, !2882, !2883, !2887}
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2874, file: !2853, line: 13, baseType: !367, size: 32)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2874, file: !2853, line: 14, baseType: !367, size: 32, offset: 32)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2874, file: !2853, line: 15, baseType: !367, size: 32, offset: 64)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2874, file: !2853, line: 16, baseType: !367, size: 32, offset: 96)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2874, file: !2853, line: 17, baseType: !367, size: 32, offset: 128)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2874, file: !2853, line: 18, baseType: !367, size: 32, offset: 160)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2874, file: !2853, line: 19, baseType: !367, size: 32, offset: 192)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2874, file: !2853, line: 22, baseType: !2884, size: 640, offset: 224)
!2884 = !DICompositeType(tag: DW_TAG_array_type, baseType: !367, size: 640, elements: !2885)
!2885 = !{!2886}
!2886 = !DISubrange(count: 20)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2874, file: !2853, line: 25, baseType: !367, size: 32, offset: 864)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2871, file: !2853, line: 350, baseType: !2889, size: 4096, align: 128)
!2889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2853, line: 34, size: 4096, align: 128, elements: !2890)
!2890 = !{!2891, !2892, !2893, !2894, !2895, !2910, !2911, !2912, !2914, !2916, !2920}
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2889, file: !2853, line: 35, baseType: !185, size: 16)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2889, file: !2853, line: 36, baseType: !185, size: 16, offset: 16)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2889, file: !2853, line: 37, baseType: !185, size: 16, offset: 32)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2889, file: !2853, line: 38, baseType: !185, size: 16, offset: 48)
!2895 = !DIDerivedType(tag: DW_TAG_member, scope: !2889, file: !2853, line: 39, baseType: !2896, size: 128, offset: 64)
!2896 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2889, file: !2853, line: 39, size: 128, elements: !2897)
!2897 = !{!2898, !2903}
!2898 = !DIDerivedType(tag: DW_TAG_member, scope: !2896, file: !2853, line: 40, baseType: !2899, size: 128)
!2899 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2896, file: !2853, line: 40, size: 128, elements: !2900)
!2900 = !{!2901, !2902}
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2899, file: !2853, line: 41, baseType: !371, size: 64)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2899, file: !2853, line: 42, baseType: !371, size: 64, offset: 64)
!2903 = !DIDerivedType(tag: DW_TAG_member, scope: !2896, file: !2853, line: 44, baseType: !2904, size: 128)
!2904 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2896, file: !2853, line: 44, size: 128, elements: !2905)
!2905 = !{!2906, !2907, !2908, !2909}
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2904, file: !2853, line: 45, baseType: !367, size: 32)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2904, file: !2853, line: 46, baseType: !367, size: 32, offset: 32)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2904, file: !2853, line: 47, baseType: !367, size: 32, offset: 64)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2904, file: !2853, line: 48, baseType: !367, size: 32, offset: 96)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2889, file: !2853, line: 51, baseType: !367, size: 32, offset: 192)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2889, file: !2853, line: 52, baseType: !367, size: 32, offset: 224)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2889, file: !2853, line: 55, baseType: !2913, size: 1024, offset: 256)
!2913 = !DICompositeType(tag: DW_TAG_array_type, baseType: !367, size: 1024, elements: !380)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2889, file: !2853, line: 58, baseType: !2915, size: 2048, offset: 1280)
!2915 = !DICompositeType(tag: DW_TAG_array_type, baseType: !367, size: 2048, elements: !222)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2889, file: !2853, line: 60, baseType: !2917, size: 384, offset: 3328)
!2917 = !DICompositeType(tag: DW_TAG_array_type, baseType: !367, size: 384, elements: !2918)
!2918 = !{!2919}
!2919 = !DISubrange(count: 12)
!2920 = !DIDerivedType(tag: DW_TAG_member, scope: !2889, file: !2853, line: 62, baseType: !2921, size: 384, offset: 3712)
!2921 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2889, file: !2853, line: 62, size: 384, elements: !2922)
!2922 = !{!2923, !2924}
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2921, file: !2853, line: 63, baseType: !2917, size: 384)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2921, file: !2853, line: 64, baseType: !2917, size: 384)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2871, file: !2853, line: 351, baseType: !2926, size: 1088)
!2926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2853, line: 79, size: 1088, elements: !2927)
!2927 = !{!2928, !2929, !2930, !2931, !2932, !2933, !2934, !2935, !2936, !2937, !2938, !2939, !2940, !2941, !2942, !3001}
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2926, file: !2853, line: 80, baseType: !367, size: 32)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2926, file: !2853, line: 81, baseType: !367, size: 32, offset: 32)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2926, file: !2853, line: 82, baseType: !367, size: 32, offset: 64)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2926, file: !2853, line: 83, baseType: !367, size: 32, offset: 96)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2926, file: !2853, line: 84, baseType: !367, size: 32, offset: 128)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2926, file: !2853, line: 85, baseType: !367, size: 32, offset: 160)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2926, file: !2853, line: 86, baseType: !367, size: 32, offset: 192)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2926, file: !2853, line: 88, baseType: !2884, size: 640, offset: 224)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2926, file: !2853, line: 89, baseType: !175, size: 8, offset: 864)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2926, file: !2853, line: 90, baseType: !175, size: 8, offset: 872)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2926, file: !2853, line: 91, baseType: !175, size: 8, offset: 880)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2926, file: !2853, line: 92, baseType: !175, size: 8, offset: 888)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2926, file: !2853, line: 93, baseType: !175, size: 8, offset: 896)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2926, file: !2853, line: 94, baseType: !175, size: 8, offset: 904)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2926, file: !2853, line: 95, baseType: !2943, size: 64, offset: 960)
!2943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2944, size: 64)
!2944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2945, line: 11, size: 128, elements: !2946)
!2945 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!2946 = !{!2947, !2948}
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2944, file: !2945, line: 12, baseType: !253, size: 64)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2944, file: !2945, line: 13, baseType: !2949, size: 64, offset: 64)
!2949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2950, size: 64)
!2950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2951, line: 103, size: 1344, elements: !2952)
!2951 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!2952 = !{!2953, !2954, !2955, !2956, !2957, !2958, !2959, !2960, !2961, !2962, !2963, !2964, !2965, !2966, !2967, !2968, !2969, !2970, !2981, !2982, !2983}
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2950, file: !2951, line: 109, baseType: !267, size: 64)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2950, file: !2951, line: 110, baseType: !267, size: 64, offset: 64)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2950, file: !2951, line: 111, baseType: !267, size: 64, offset: 128)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2950, file: !2951, line: 112, baseType: !267, size: 64, offset: 192)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2950, file: !2951, line: 113, baseType: !267, size: 64, offset: 256)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2950, file: !2951, line: 114, baseType: !267, size: 64, offset: 320)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2950, file: !2951, line: 117, baseType: !267, size: 64, offset: 384)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2950, file: !2951, line: 118, baseType: !267, size: 64, offset: 448)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2950, file: !2951, line: 119, baseType: !267, size: 64, offset: 512)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2950, file: !2951, line: 120, baseType: !267, size: 64, offset: 576)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2950, file: !2951, line: 121, baseType: !267, size: 64, offset: 640)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2950, file: !2951, line: 122, baseType: !267, size: 64, offset: 704)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2950, file: !2951, line: 123, baseType: !267, size: 64, offset: 768)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2950, file: !2951, line: 124, baseType: !267, size: 64, offset: 832)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2950, file: !2951, line: 125, baseType: !267, size: 64, offset: 896)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2950, file: !2951, line: 139, baseType: !267, size: 64, offset: 960)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2950, file: !2951, line: 142, baseType: !267, size: 64, offset: 1024)
!2970 = !DIDerivedType(tag: DW_TAG_member, scope: !2950, file: !2951, line: 144, baseType: !2971, size: 64, offset: 1088)
!2971 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2950, file: !2951, line: 144, size: 64, elements: !2972)
!2972 = !{!2973, !2974, !2975}
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2971, file: !2951, line: 146, baseType: !185, size: 16)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !2971, file: !2951, line: 148, baseType: !371, size: 64)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !2971, file: !2951, line: 150, baseType: !2976, size: 64)
!2976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !2951, line: 59, size: 64, elements: !2977)
!2977 = !{!2978, !2979, !2980}
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2976, file: !2951, line: 61, baseType: !371, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !2976, file: !2951, line: 63, baseType: !371, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !2976, file: !2951, line: 65, baseType: !371, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2950, file: !2951, line: 153, baseType: !267, size: 64, offset: 1152)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2950, file: !2951, line: 154, baseType: !267, size: 64, offset: 1216)
!2983 = !DIDerivedType(tag: DW_TAG_member, scope: !2950, file: !2951, line: 156, baseType: !2984, size: 64, offset: 1280)
!2984 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2950, file: !2951, line: 156, size: 64, elements: !2985)
!2985 = !{!2986, !2987, !2988}
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2984, file: !2951, line: 158, baseType: !185, size: 16)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !2984, file: !2951, line: 160, baseType: !371, size: 64)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !2984, file: !2951, line: 162, baseType: !2989, size: 64)
!2989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !2951, line: 69, size: 64, elements: !2990)
!2990 = !{!2991, !2992, !2993, !2994, !2995, !2996, !2997, !2998, !2999, !3000}
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2989, file: !2951, line: 71, baseType: !371, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !2989, file: !2951, line: 73, baseType: !371, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !2989, file: !2951, line: 75, baseType: !371, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !2989, file: !2951, line: 77, baseType: !371, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !2989, file: !2951, line: 80, baseType: !371, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2989, file: !2951, line: 83, baseType: !371, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !2989, file: !2951, line: 86, baseType: !371, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !2989, file: !2951, line: 88, baseType: !371, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !2989, file: !2951, line: 93, baseType: !371, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !2989, file: !2951, line: 100, baseType: !371, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2926, file: !2853, line: 96, baseType: !367, size: 32, offset: 1024)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2871, file: !2853, line: 352, baseType: !3003, size: 4608, align: 512)
!3003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2853, line: 333, size: 4608, align: 512, elements: !3004)
!3004 = !{!3005, !3006, !3013}
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3003, file: !2853, line: 334, baseType: !2889, size: 4096, align: 128)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3003, file: !2853, line: 335, baseType: !3007, size: 512, offset: 4096)
!3007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2853, line: 312, size: 512, elements: !3008)
!3008 = !{!3009, !3010, !3011}
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3007, file: !2853, line: 313, baseType: !371, size: 64)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3007, file: !2853, line: 314, baseType: !371, size: 64, offset: 64)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3007, file: !2853, line: 315, baseType: !3012, size: 384, offset: 128)
!3012 = !DICompositeType(tag: DW_TAG_array_type, baseType: !371, size: 384, elements: !816)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3003, file: !2853, line: 336, baseType: !3014, offset: 4608)
!3014 = !DICompositeType(tag: DW_TAG_array_type, baseType: !175, elements: !714)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2871, file: !2853, line: 353, baseType: !3016, size: 32768)
!3016 = !DICompositeType(tag: DW_TAG_array_type, baseType: !175, size: 32768, elements: !3017)
!3017 = !{!3018}
!3018 = !DISubrange(count: 4096)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !2852, file: !2853, line: 484, baseType: !2858, size: 64, offset: 192)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2852, file: !2853, line: 491, baseType: !3021, size: 128, offset: 256)
!3021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !2853, line: 404, size: 128, elements: !3022)
!3022 = !{!3023, !3024, !3025}
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3021, file: !2853, line: 424, baseType: !371, size: 64)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3021, file: !2853, line: 432, baseType: !7, size: 32, offset: 64)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3021, file: !2853, line: 440, baseType: !7, size: 32, offset: 96)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !2852, file: !2853, line: 498, baseType: !3021, size: 128, offset: 384)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !2852, file: !2853, line: 508, baseType: !2859, size: 33280, align: 512, offset: 512)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1744, file: !1745, line: 16, baseType: !699, size: 192, offset: 512)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1744, file: !1745, line: 17, baseType: !166, size: 32, offset: 704)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !450, file: !14, line: 1240, baseType: !289, size: 64, offset: 6912)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !450, file: !14, line: 1243, baseType: !367, size: 32, offset: 6976)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !450, file: !14, line: 1245, baseType: !786, size: 64, offset: 7040)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !450, file: !14, line: 1246, baseType: !786, size: 64, offset: 7104)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !450, file: !14, line: 1248, baseType: !368, size: 32, offset: 7168)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !450, file: !14, line: 1249, baseType: !3036, size: 64, offset: 7232)
!3036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3037, size: 64)
!3037 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !450, file: !14, line: 1252, baseType: !3039, size: 256, offset: 7296)
!3039 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 256, elements: !380)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !450, file: !14, line: 1253, baseType: !3041, size: 128, offset: 7552)
!3041 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3042, line: 21, baseType: !3043)
!3042 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3043 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3042, line: 19, size: 128, elements: !3044)
!3044 = !{!3045}
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3043, file: !3042, line: 20, baseType: !3046, size: 128)
!3046 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, size: 128, elements: !2199)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !450, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !450, file: !14, line: 1261, baseType: !583, size: 256, offset: 7744)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !450, file: !14, line: 1267, baseType: !135, size: 64, offset: 8000)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !450, file: !14, line: 1269, baseType: !396, size: 64, offset: 8064)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !450, file: !14, line: 1271, baseType: !3052, size: 448, offset: 8128)
!3052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1523, line: 63, size: 448, elements: !3053)
!3053 = !{!3054, !3059, !3060, !3061, !3062, !3063, !3064}
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3052, file: !1523, line: 64, baseType: !3055, size: 64)
!3055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3056, size: 64)
!3056 = !DISubroutineType(types: !3057)
!3057 = !{!267, !3058, !1521}
!3058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3052, size: 64)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3052, file: !1523, line: 66, baseType: !3055, size: 64, offset: 64)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3052, file: !1523, line: 69, baseType: !253, size: 64, offset: 128)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3052, file: !1523, line: 70, baseType: !170, size: 32, offset: 192)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3052, file: !1523, line: 71, baseType: !7, size: 32, offset: 224)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3052, file: !1523, line: 74, baseType: !116, size: 128, offset: 256)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3052, file: !1523, line: 85, baseType: !3065, size: 64, offset: 384)
!3065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !450, file: !14, line: 1274, baseType: !587, size: 64, offset: 8576)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !450, file: !14, line: 1280, baseType: !587, size: 64, offset: 8640)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !450, file: !14, line: 1283, baseType: !170, size: 32, offset: 8704)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !450, file: !14, line: 1286, baseType: !1455, size: 32, offset: 8736)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !450, file: !14, line: 1289, baseType: !3071, size: 64, offset: 8768)
!3071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3072, size: 64)
!3072 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1315, line: 18, flags: DIFlagFwdDecl)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !450, file: !14, line: 1290, baseType: !490, size: 64, offset: 8832)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !450, file: !14, line: 1297, baseType: !1029, size: 64, offset: 8896)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !450, file: !14, line: 1304, baseType: !3076, size: 64, offset: 8960)
!3076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3077, line: 49, size: 64, elements: !3078)
!3077 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3078 = !{!3079}
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3076, file: !3077, line: 50, baseType: !3080, size: 64)
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3081, size: 64)
!3081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3077, line: 41, size: 512, align: 512, elements: !3082)
!3082 = !{!3083, !3084, !3089}
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3081, file: !3077, line: 43, baseType: !146, size: 32)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3081, file: !3077, line: 45, baseType: !3085, size: 192, offset: 64)
!3085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3077, line: 29, size: 192, elements: !3086)
!3086 = !{!3087, !3088}
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3085, file: !3077, line: 30, baseType: !116, size: 128)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3085, file: !3077, line: 32, baseType: !253, size: 64, offset: 128)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3081, file: !3077, line: 46, baseType: !253, size: 64, offset: 256)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !450, file: !14, line: 1305, baseType: !3076, size: 64, offset: 9024)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !450, file: !14, line: 1306, baseType: !641, size: 128, align: 64, offset: 9088)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !450, file: !14, line: 1307, baseType: !1314, size: 256, offset: 9216)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !450, file: !14, line: 1309, baseType: !583, size: 256, offset: 9472)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !450, file: !14, line: 1314, baseType: !170, size: 32, offset: 9728)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !450, file: !14, line: 1317, baseType: !146, size: 32, align: 512, offset: 10240)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !450, file: !14, line: 1318, baseType: !116, size: 128, offset: 10304)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !450, file: !14, line: 1320, baseType: !146, size: 32, offset: 10432)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !450, file: !14, line: 1321, baseType: !116, size: 128, offset: 10496)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !444, file: !445, line: 73, baseType: !170, size: 32, offset: 128)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !444, file: !445, line: 74, baseType: !3101, size: 64, offset: 192)
!3101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3102, size: 64)
!3102 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !738, line: 42, flags: DIFlagFwdDecl)
!3103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !398, file: !335, line: 141, baseType: !3105, size: 64, offset: 704)
!3105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3106, size: 64)
!3106 = !DISubroutineType(types: !3107)
!3107 = !{!170, !1584, !872}
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !398, file: !335, line: 142, baseType: !3109, size: 64, offset: 768)
!3109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3110, size: 64)
!3110 = !DISubroutineType(types: !3111)
!3111 = !{!333, !333, !3112}
!3112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3113, size: 64)
!3113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !299)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !334, file: !335, line: 96, baseType: !449, size: 64, offset: 832)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !334, file: !335, line: 97, baseType: !267, size: 64, offset: 896)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !334, file: !335, line: 98, baseType: !289, size: 64, offset: 960)
!3117 = !DIDerivedType(tag: DW_TAG_member, scope: !334, file: !335, line: 100, baseType: !3118, size: 128, offset: 1024)
!3118 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !334, file: !335, line: 100, size: 128, elements: !3119)
!3119 = !{!3120, !3121}
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3118, file: !335, line: 101, baseType: !116, size: 128)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3118, file: !335, line: 102, baseType: !3122, size: 64)
!3122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !334, file: !335, line: 104, baseType: !116, size: 128, offset: 1152)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !334, file: !335, line: 105, baseType: !116, size: 128, offset: 1280)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !334, file: !335, line: 113, baseType: !3126, size: 128, offset: 1408)
!3126 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !334, file: !335, line: 109, size: 128, elements: !3127)
!3127 = !{!3128, !3129, !3130}
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3126, file: !335, line: 110, baseType: !494, size: 128)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3126, file: !335, line: 111, baseType: !349, size: 128)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3126, file: !335, line: 112, baseType: !641, size: 128, align: 64)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !327, file: !14, line: 1968, baseType: !3132, size: 64, offset: 64)
!3132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3133, size: 64)
!3133 = !DISubroutineType(types: !3134)
!3134 = !{!135, !333, !298, !3135}
!3135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3136, size: 64)
!3136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3137, line: 10, size: 128, elements: !3138)
!3137 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3138 = !{!3139, !3143}
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3136, file: !3137, line: 11, baseType: !3140, size: 64)
!3140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3141, size: 64)
!3141 = !DISubroutineType(types: !3142)
!3142 = !{null, !289}
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3136, file: !3137, line: 12, baseType: !289, size: 64, offset: 64)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !327, file: !14, line: 1969, baseType: !3145, size: 64, offset: 128)
!3145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3146, size: 64)
!3146 = !DISubroutineType(types: !3147)
!3147 = !{!170, !3101, !298, !170}
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !327, file: !14, line: 1970, baseType: !3149, size: 64, offset: 192)
!3149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3150, size: 64)
!3150 = !DISubroutineType(types: !3151)
!3151 = !{!321, !298, !170, !872}
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !327, file: !14, line: 1972, baseType: !3153, size: 64, offset: 256)
!3153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3154, size: 64)
!3154 = !DISubroutineType(types: !3155)
!3155 = !{!170, !333, !217, !170}
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !327, file: !14, line: 1974, baseType: !3157, size: 64, offset: 320)
!3157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3158, size: 64)
!3158 = !DISubroutineType(types: !3159)
!3159 = !{!170, !3101, !298, !333, !259, !872}
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !327, file: !14, line: 1976, baseType: !3161, size: 64, offset: 384)
!3161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3162, size: 64)
!3162 = !DISubroutineType(types: !3163)
!3163 = !{!170, !333, !298, !333}
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !327, file: !14, line: 1977, baseType: !3165, size: 64, offset: 448)
!3165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3166, size: 64)
!3166 = !DISubroutineType(types: !3167)
!3167 = !{!170, !298, !333}
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !327, file: !14, line: 1978, baseType: !3169, size: 64, offset: 512)
!3169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3170, size: 64)
!3170 = !DISubroutineType(types: !3171)
!3171 = !{!170, !3101, !298, !333, !135}
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !327, file: !14, line: 1980, baseType: !3173, size: 64, offset: 576)
!3173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3174, size: 64)
!3174 = !DISubroutineType(types: !3175)
!3175 = !{!170, !3101, !298, !333, !259}
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !327, file: !14, line: 1982, baseType: !3165, size: 64, offset: 640)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !327, file: !14, line: 1983, baseType: !3178, size: 64, offset: 704)
!3178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3179, size: 64)
!3179 = !DISubroutineType(types: !3180)
!3180 = !{!170, !3101, !298, !333, !259, !454}
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !327, file: !14, line: 1985, baseType: !3182, size: 64, offset: 768)
!3182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3183, size: 64)
!3183 = !DISubroutineType(types: !3184)
!3184 = !{!170, !3101, !298, !333, !298, !333, !7}
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !327, file: !14, line: 1987, baseType: !3186, size: 64, offset: 832)
!3186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3187, size: 64)
!3187 = !DISubroutineType(types: !3188)
!3188 = !{!170, !3101, !333, !3189}
!3189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3190, size: 64)
!3190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !3191)
!3191 = !{!3192, !3193, !3194, !3204, !3213, !3214, !3219, !3220, !3221}
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3190, file: !14, line: 227, baseType: !7, size: 32)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3190, file: !14, line: 228, baseType: !259, size: 16, offset: 32)
!3194 = !DIDerivedType(tag: DW_TAG_member, scope: !3190, file: !14, line: 241, baseType: !3195, size: 32, offset: 64)
!3195 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3190, file: !14, line: 241, size: 32, elements: !3196)
!3196 = !{!3197, !3198}
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3195, file: !14, line: 242, baseType: !304, size: 32)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3195, file: !14, line: 243, baseType: !3199, size: 32)
!3199 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3200, line: 16, baseType: !3201)
!3200 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3201 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3200, line: 14, size: 32, elements: !3202)
!3202 = !{!3203}
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3201, file: !3200, line: 15, baseType: !309, size: 32)
!3204 = !DIDerivedType(tag: DW_TAG_member, scope: !3190, file: !14, line: 245, baseType: !3205, size: 32, offset: 96)
!3205 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3190, file: !14, line: 245, size: 32, elements: !3206)
!3206 = !{!3207, !3208}
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3205, file: !14, line: 246, baseType: !313, size: 32)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3205, file: !14, line: 247, baseType: !3209, size: 32)
!3209 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3200, line: 20, baseType: !3210)
!3210 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3200, line: 18, size: 32, elements: !3211)
!3211 = !{!3212}
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3210, file: !3200, line: 19, baseType: !317, size: 32)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3190, file: !14, line: 249, baseType: !459, size: 64, offset: 128)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3190, file: !14, line: 250, baseType: !3215, size: 128, offset: 192)
!3215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !787, line: 13, size: 128, elements: !3216)
!3216 = !{!3217, !3218}
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3215, file: !787, line: 14, baseType: !786, size: 64)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3215, file: !787, line: 15, baseType: !253, size: 64, offset: 64)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3190, file: !14, line: 251, baseType: !3215, size: 128, offset: 320)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3190, file: !14, line: 252, baseType: !3215, size: 128, offset: 448)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3190, file: !14, line: 259, baseType: !1074, size: 64, offset: 576)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !327, file: !14, line: 1988, baseType: !3223, size: 64, offset: 896)
!3223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3224, size: 64)
!3224 = !DISubroutineType(types: !3225)
!3225 = !{!170, !3101, !1584, !3226, !367, !7}
!3226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3227, size: 64)
!3227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3228, line: 22, size: 1280, elements: !3229)
!3228 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3229 = !{!3230, !3231, !3232, !3233, !3234, !3235, !3236, !3237, !3238, !3239, !3240, !3241, !3242, !3243, !3244, !3245, !3246, !3247, !3248, !3249, !3250}
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3227, file: !3228, line: 23, baseType: !367, size: 32)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3227, file: !3228, line: 24, baseType: !259, size: 16, offset: 32)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3227, file: !3228, line: 25, baseType: !7, size: 32, offset: 64)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3227, file: !3228, line: 26, baseType: !794, size: 32, offset: 96)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3227, file: !3228, line: 27, baseType: !371, size: 64, offset: 128)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3227, file: !3228, line: 28, baseType: !371, size: 64, offset: 192)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3227, file: !3228, line: 41, baseType: !371, size: 64, offset: 256)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3227, file: !3228, line: 42, baseType: !454, size: 32, offset: 320)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3227, file: !3228, line: 43, baseType: !454, size: 32, offset: 352)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3227, file: !3228, line: 44, baseType: !304, size: 32, offset: 384)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3227, file: !3228, line: 45, baseType: !313, size: 32, offset: 416)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3227, file: !3228, line: 46, baseType: !459, size: 64, offset: 448)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3227, file: !3228, line: 47, baseType: !3215, size: 128, offset: 512)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3227, file: !3228, line: 48, baseType: !3215, size: 128, offset: 640)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3227, file: !3228, line: 49, baseType: !3215, size: 128, offset: 768)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3227, file: !3228, line: 50, baseType: !3215, size: 128, offset: 896)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3227, file: !3228, line: 51, baseType: !371, size: 64, offset: 1024)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3227, file: !3228, line: 52, baseType: !371, size: 64, offset: 1088)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3227, file: !3228, line: 53, baseType: !367, size: 32, offset: 1152)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3227, file: !3228, line: 54, baseType: !367, size: 32, offset: 1184)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3227, file: !3228, line: 55, baseType: !371, size: 64, offset: 1216)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !327, file: !14, line: 1990, baseType: !3252, size: 64, offset: 960)
!3252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3253, size: 64)
!3253 = !DISubroutineType(types: !3254)
!3254 = !{!249, !333, !217, !264}
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !327, file: !14, line: 1991, baseType: !3256, size: 64, offset: 1024)
!3256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3257, size: 64)
!3257 = !DISubroutineType(types: !3258)
!3258 = !{!170, !298, !3259, !371, !371}
!3259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3260, size: 64)
!3260 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !327, file: !14, line: 1993, baseType: !3262, size: 64, offset: 1088)
!3262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3263, size: 64)
!3263 = !DISubroutineType(types: !3264)
!3264 = !{!170, !298, !170}
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !327, file: !14, line: 1994, baseType: !3266, size: 64, offset: 1152)
!3266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3267, size: 64)
!3267 = !DISubroutineType(types: !3268)
!3268 = !{!170, !298, !333, !1074, !7, !259}
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !327, file: !14, line: 1997, baseType: !3270, size: 64, offset: 1216)
!3270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3271, size: 64)
!3271 = !DISubroutineType(types: !3272)
!3272 = !{!170, !3101, !298, !1074, !259}
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !327, file: !14, line: 1999, baseType: !3274, size: 64, offset: 1280)
!3274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3275, size: 64)
!3275 = !DISubroutineType(types: !3276)
!3276 = !{!321, !3101, !333, !170}
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !327, file: !14, line: 2001, baseType: !3278, size: 64, offset: 1344)
!3278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3279, size: 64)
!3279 = !DISubroutineType(types: !3280)
!3280 = !{!170, !3101, !333, !321, !170}
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !327, file: !14, line: 2003, baseType: !3282, size: 64, offset: 1408)
!3282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3283, size: 64)
!3283 = !DISubroutineType(types: !3284)
!3284 = !{!170, !3101, !333, !3285}
!3285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3286, size: 64)
!3286 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !327, file: !14, line: 2005, baseType: !3288, size: 64, offset: 1472)
!3288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3289, size: 64)
!3289 = !DISubroutineType(types: !3290)
!3290 = !{!170, !333, !3285}
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !327, file: !14, line: 2006, baseType: !3292, size: 64, offset: 1536)
!3292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3293, size: 64)
!3293 = !DISubroutineType(types: !3294)
!3294 = !{!3295, !298}
!3295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3296, size: 64)
!3296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !3297)
!3297 = !{!3298, !3305}
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3296, file: !14, line: 3193, baseType: !3299, size: 128)
!3299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3300, line: 296, size: 128, elements: !3301)
!3300 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3301 = !{!3302, !3303, !3304}
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3299, file: !3300, line: 297, baseType: !146, size: 32)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3299, file: !3300, line: 299, baseType: !1526, size: 32, offset: 32)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3299, file: !3300, line: 300, baseType: !289, size: 64, offset: 64)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3296, file: !14, line: 3194, baseType: !367, size: 32, offset: 128)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !299, file: !14, line: 655, baseType: !449, size: 64, offset: 448)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !299, file: !14, line: 656, baseType: !294, size: 64, offset: 512)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !299, file: !14, line: 659, baseType: !289, size: 64, offset: 576)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !299, file: !14, line: 663, baseType: !267, size: 64, offset: 640)
!3310 = !DIDerivedType(tag: DW_TAG_member, scope: !299, file: !14, line: 671, baseType: !3311, size: 32, offset: 704)
!3311 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !299, file: !14, line: 671, size: 32, elements: !3312)
!3312 = !{!3313, !3315}
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3311, file: !14, line: 672, baseType: !3314, size: 32)
!3314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3311, file: !14, line: 673, baseType: !7, size: 32)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !299, file: !14, line: 675, baseType: !454, size: 32, offset: 736)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !299, file: !14, line: 676, baseType: !459, size: 64, offset: 768)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !299, file: !14, line: 677, baseType: !3215, size: 128, offset: 832)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !299, file: !14, line: 678, baseType: !3215, size: 128, offset: 960)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !299, file: !14, line: 679, baseType: !3215, size: 128, offset: 1088)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !299, file: !14, line: 680, baseType: !146, size: 32, offset: 1216)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !299, file: !14, line: 681, baseType: !187, size: 16, offset: 1248)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !299, file: !14, line: 682, baseType: !175, size: 8, offset: 1264)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !299, file: !14, line: 683, baseType: !175, size: 8, offset: 1272)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !299, file: !14, line: 684, baseType: !1657, size: 64, offset: 1280)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !299, file: !14, line: 691, baseType: !267, size: 64, offset: 1344)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !299, file: !14, line: 692, baseType: !770, size: 320, offset: 1408)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !299, file: !14, line: 694, baseType: !267, size: 64, offset: 1728)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !299, file: !14, line: 695, baseType: !267, size: 64, offset: 1792)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !299, file: !14, line: 697, baseType: !494, size: 128, offset: 1856)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !299, file: !14, line: 698, baseType: !116, size: 128, offset: 1984)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !299, file: !14, line: 707, baseType: !116, size: 128, offset: 2112)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !299, file: !14, line: 708, baseType: !116, size: 128, offset: 2240)
!3334 = !DIDerivedType(tag: DW_TAG_member, scope: !299, file: !14, line: 709, baseType: !3335, size: 128, offset: 2368)
!3335 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !299, file: !14, line: 709, size: 128, elements: !3336)
!3336 = !{!3337, !3338}
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3335, file: !14, line: 710, baseType: !490, size: 64)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3335, file: !14, line: 711, baseType: !641, size: 128, align: 64)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !299, file: !14, line: 713, baseType: !589, size: 64, offset: 2496)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !299, file: !14, line: 714, baseType: !589, size: 64, offset: 2560)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !299, file: !14, line: 715, baseType: !166, size: 32, offset: 2624)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !299, file: !14, line: 716, baseType: !166, size: 32, offset: 2656)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !299, file: !14, line: 717, baseType: !166, size: 32, offset: 2688)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !299, file: !14, line: 719, baseType: !166, size: 32, offset: 2720)
!3345 = !DIDerivedType(tag: DW_TAG_member, scope: !299, file: !14, line: 721, baseType: !3346, size: 64, offset: 2752)
!3346 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !299, file: !14, line: 721, size: 64, elements: !3347)
!3347 = !{!3348, !3349}
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3346, file: !14, line: 722, baseType: !1065, size: 64)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3346, file: !14, line: 723, baseType: !521, size: 64)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !299, file: !14, line: 725, baseType: !3351, size: 64, offset: 2816)
!3351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3352, size: 64)
!3352 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !299, file: !14, line: 726, baseType: !295, size: 1536, align: 64, offset: 2880)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !299, file: !14, line: 727, baseType: !116, size: 128, offset: 4416)
!3355 = !DIDerivedType(tag: DW_TAG_member, scope: !299, file: !14, line: 728, baseType: !3356, size: 64, offset: 4544)
!3356 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !299, file: !14, line: 728, size: 64, elements: !3357)
!3357 = !{!3358, !3359, !3362, !3363}
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3356, file: !14, line: 729, baseType: !1404, size: 64)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3356, file: !14, line: 730, baseType: !3360, size: 64)
!3360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3361, size: 64)
!3361 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !14, line: 730, flags: DIFlagFwdDecl)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3356, file: !14, line: 731, baseType: !217, size: 64)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3356, file: !14, line: 732, baseType: !7, size: 32)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !299, file: !14, line: 735, baseType: !368, size: 32, offset: 4608)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !299, file: !14, line: 738, baseType: !368, size: 32, offset: 4640)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !299, file: !14, line: 739, baseType: !3036, size: 64, offset: 4672)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !299, file: !14, line: 750, baseType: !289, size: 64, offset: 4736)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !295, file: !14, line: 474, baseType: !3299, size: 128, offset: 64)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !295, file: !14, line: 475, baseType: !770, size: 320, offset: 192)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !295, file: !14, line: 476, baseType: !1526, size: 32, offset: 512)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !295, file: !14, line: 477, baseType: !166, size: 32, offset: 544)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !295, file: !14, line: 482, baseType: !1932, size: 128, offset: 576)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !295, file: !14, line: 483, baseType: !267, size: 64, offset: 704)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !295, file: !14, line: 484, baseType: !267, size: 64, offset: 768)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !295, file: !14, line: 485, baseType: !3376, size: 64, offset: 832)
!3376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3377, size: 64)
!3377 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3378)
!3378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !3379)
!3379 = !{!3380, !3384, !3454, !3458, !3462, !3468, !3473, !3477, !3482, !3486, !3490, !3494, !3495, !3499, !3503, !3507, !3512, !3516, !3523, !3524}
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3378, file: !14, line: 405, baseType: !3381, size: 64)
!3381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3382, size: 64)
!3382 = !DISubroutineType(types: !3383)
!3383 = !{!170, !2624, !533}
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3378, file: !14, line: 406, baseType: !3385, size: 64, offset: 64)
!3385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3386, size: 64)
!3386 = !DISubroutineType(types: !3387)
!3387 = !{!170, !1074, !3388}
!3388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3389, size: 64)
!3389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !1150, line: 293, size: 1536, elements: !3390)
!3390 = !{!3391, !3421, !3435}
!3391 = !DIDerivedType(tag: DW_TAG_member, scope: !3389, file: !1150, line: 295, baseType: !3392, size: 512)
!3392 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3389, file: !1150, line: 295, size: 512, elements: !3393)
!3393 = !{!3394, !3420}
!3394 = !DIDerivedType(tag: DW_TAG_member, scope: !3392, file: !1150, line: 296, baseType: !3395, size: 448)
!3395 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3392, file: !1150, line: 296, size: 448, elements: !3396)
!3396 = !{!3397, !3398, !3407, !3408, !3409, !3418, !3419}
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3395, file: !1150, line: 298, baseType: !267, size: 64)
!3398 = !DIDerivedType(tag: DW_TAG_member, scope: !3395, file: !1150, line: 299, baseType: !3399, size: 128, offset: 64)
!3399 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3395, file: !1150, line: 299, size: 128, elements: !3400)
!3400 = !{!3401, !3402}
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3399, file: !1150, line: 300, baseType: !116, size: 128)
!3402 = !DIDerivedType(tag: DW_TAG_member, scope: !3399, file: !1150, line: 302, baseType: !3403, size: 128)
!3403 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3399, file: !1150, line: 302, size: 128, elements: !3404)
!3404 = !{!3405, !3406}
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3403, file: !1150, line: 303, baseType: !289, size: 64)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3403, file: !1150, line: 305, baseType: !7, size: 32, offset: 64)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3395, file: !1150, line: 310, baseType: !294, size: 64, offset: 192)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3395, file: !1150, line: 311, baseType: !267, size: 64, offset: 256)
!3409 = !DIDerivedType(tag: DW_TAG_member, scope: !3395, file: !1150, line: 312, baseType: !3410, size: 64, offset: 320)
!3410 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3395, file: !1150, line: 312, size: 64, elements: !3411)
!3411 = !{!3412, !3413}
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3410, file: !1150, line: 313, baseType: !289, size: 64)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3410, file: !1150, line: 314, baseType: !3414, size: 64)
!3414 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !1150, line: 257, baseType: !3415)
!3415 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1150, line: 255, size: 64, elements: !3416)
!3416 = !{!3417}
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3415, file: !1150, line: 256, baseType: !267, size: 64)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3395, file: !1150, line: 316, baseType: !166, size: 32, offset: 384)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3395, file: !1150, line: 317, baseType: !166, size: 32, offset: 416)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3392, file: !1150, line: 323, baseType: !2625, size: 512, align: 128)
!3421 = !DIDerivedType(tag: DW_TAG_member, scope: !3389, file: !1150, line: 325, baseType: !3422, size: 512, offset: 512)
!3422 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3389, file: !1150, line: 325, size: 512, elements: !3423)
!3423 = !{!3424, !3434}
!3424 = !DIDerivedType(tag: DW_TAG_member, scope: !3422, file: !1150, line: 326, baseType: !3425, size: 320)
!3425 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3422, file: !1150, line: 326, size: 320, elements: !3426)
!3426 = !{!3427, !3428, !3429, !3430, !3431, !3432, !3433}
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3425, file: !1150, line: 327, baseType: !267, size: 64)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3425, file: !1150, line: 328, baseType: !267, size: 64, offset: 64)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3425, file: !1150, line: 329, baseType: !267, size: 64, offset: 128)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3425, file: !1150, line: 331, baseType: !166, size: 32, offset: 192)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3425, file: !1150, line: 332, baseType: !166, size: 32, offset: 224)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3425, file: !1150, line: 333, baseType: !166, size: 32, offset: 256)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3425, file: !1150, line: 335, baseType: !7, size: 32, offset: 288)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3422, file: !1150, line: 339, baseType: !2625, size: 512, align: 128)
!3435 = !DIDerivedType(tag: DW_TAG_member, scope: !3389, file: !1150, line: 341, baseType: !3436, size: 512, offset: 1024)
!3436 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3389, file: !1150, line: 341, size: 512, elements: !3437)
!3437 = !{!3438, !3447, !3453}
!3438 = !DIDerivedType(tag: DW_TAG_member, scope: !3436, file: !1150, line: 342, baseType: !3439, size: 384)
!3439 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3436, file: !1150, line: 342, size: 384, elements: !3440)
!3440 = !{!3441, !3442, !3443, !3444, !3445, !3446}
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3439, file: !1150, line: 343, baseType: !267, size: 64)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3439, file: !1150, line: 344, baseType: !267, size: 64, offset: 64)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3439, file: !1150, line: 346, baseType: !289, size: 64, offset: 128)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3439, file: !1150, line: 347, baseType: !289, size: 64, offset: 192)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3439, file: !1150, line: 348, baseType: !289, size: 64, offset: 256)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3439, file: !1150, line: 349, baseType: !289, size: 64, offset: 320)
!3447 = !DIDerivedType(tag: DW_TAG_member, scope: !3436, file: !1150, line: 352, baseType: !3448, size: 256)
!3448 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3436, file: !1150, line: 352, size: 256, elements: !3449)
!3449 = !{!3450, !3451, !3452}
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3448, file: !1150, line: 353, baseType: !267, size: 64)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3448, file: !1150, line: 354, baseType: !267, size: 64, offset: 64)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3448, file: !1150, line: 356, baseType: !116, size: 128, offset: 128)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3436, file: !1150, line: 359, baseType: !2625, size: 512, align: 128)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3378, file: !14, line: 409, baseType: !3455, size: 64, offset: 128)
!3455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3456, size: 64)
!3456 = !DISubroutineType(types: !3457)
!3457 = !{!170, !294, !533}
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3378, file: !14, line: 412, baseType: !3459, size: 64, offset: 192)
!3459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3460, size: 64)
!3460 = !DISubroutineType(types: !3461)
!3461 = !{!872, !294, !3388}
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3378, file: !14, line: 414, baseType: !3463, size: 64, offset: 256)
!3463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3464, size: 64)
!3464 = !DISubroutineType(types: !3465)
!3465 = !{null, !3466}
!3466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3467, size: 64)
!3467 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !14, line: 310, flags: DIFlagFwdDecl)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3378, file: !14, line: 416, baseType: !3469, size: 64, offset: 320)
!3469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3470, size: 64)
!3470 = !DISubroutineType(types: !3471)
!3471 = !{!170, !1074, !294, !459, !7, !3472, !1420}
!3472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2624, size: 64)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3378, file: !14, line: 419, baseType: !3474, size: 64, offset: 384)
!3474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3475, size: 64)
!3475 = !DISubroutineType(types: !3476)
!3476 = !{!170, !1074, !294, !459, !7, !7, !2624, !289}
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3378, file: !14, line: 424, baseType: !3478, size: 64, offset: 448)
!3478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3479, size: 64)
!3479 = !DISubroutineType(types: !3480)
!3480 = !{!3481, !294, !3481}
!3481 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !117, line: 131, baseType: !371)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3378, file: !14, line: 425, baseType: !3483, size: 64, offset: 512)
!3483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3484, size: 64)
!3484 = !DISubroutineType(types: !3485)
!3485 = !{null, !3388, !264, !264}
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3378, file: !14, line: 426, baseType: !3487, size: 64, offset: 576)
!3487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3488, size: 64)
!3488 = !DISubroutineType(types: !3489)
!3489 = !{!872, !3388, !1526}
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3378, file: !14, line: 427, baseType: !3491, size: 64, offset: 640)
!3491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3492, size: 64)
!3492 = !DISubroutineType(types: !3493)
!3493 = !{null, !3388}
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3378, file: !14, line: 428, baseType: !1084, size: 64, offset: 704)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3378, file: !14, line: 433, baseType: !3496, size: 64, offset: 768)
!3496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3497, size: 64)
!3497 = !DISubroutineType(types: !3498)
!3498 = !{!170, !294, !3388, !3388, !57}
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3378, file: !14, line: 435, baseType: !3500, size: 64, offset: 832)
!3500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3501, size: 64)
!3501 = !DISubroutineType(types: !3502)
!3502 = !{!170, !3388}
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3378, file: !14, line: 436, baseType: !3504, size: 64, offset: 896)
!3504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3505, size: 64)
!3505 = !DISubroutineType(types: !3506)
!3506 = !{!872, !3388, !264, !264}
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3378, file: !14, line: 438, baseType: !3508, size: 64, offset: 960)
!3508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3509, size: 64)
!3509 = !DISubroutineType(types: !3510)
!3510 = !{null, !3388, !3511, !3511}
!3511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3378, file: !14, line: 439, baseType: !3513, size: 64, offset: 1024)
!3513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3514, size: 64)
!3514 = !DISubroutineType(types: !3515)
!3515 = !{!170, !294, !2624}
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3378, file: !14, line: 442, baseType: !3517, size: 64, offset: 1088)
!3517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3518, size: 64)
!3518 = !DISubroutineType(types: !3519)
!3519 = !{!170, !3520, !1074, !3522}
!3520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3521, size: 64)
!3521 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!3522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3481, size: 64)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3378, file: !14, line: 444, baseType: !1412, size: 64, offset: 1152)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3378, file: !14, line: 445, baseType: !3525, size: 64, offset: 1216)
!3525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3526, size: 64)
!3526 = !DISubroutineType(types: !3527)
!3527 = !{!170, !1087, !1109}
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !295, file: !14, line: 486, baseType: !267, size: 64, offset: 896)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !295, file: !14, line: 487, baseType: !770, size: 320, offset: 960)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !295, file: !14, line: 488, baseType: !1455, size: 32, offset: 1280)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !295, file: !14, line: 489, baseType: !146, size: 32, offset: 1312)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !295, file: !14, line: 490, baseType: !116, size: 128, offset: 1344)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !295, file: !14, line: 491, baseType: !289, size: 64, offset: 1472)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !284, file: !243, line: 180, baseType: !3535, size: 64, offset: 320)
!3535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3536, size: 64)
!3536 = !DISubroutineType(types: !3537)
!3537 = !{!249, !1074, !139, !283, !217, !459, !264}
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !284, file: !243, line: 182, baseType: !3535, size: 64, offset: 384)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !284, file: !243, line: 184, baseType: !3540, size: 64, offset: 448)
!3540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3541, size: 64)
!3541 = !DISubroutineType(types: !3542)
!3542 = !{!170, !1074, !139, !283, !1148}
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !272, file: !243, line: 90, baseType: !3544, size: 64, offset: 192)
!3544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !272, file: !243, line: 91, baseType: !3546, size: 64, offset: 256)
!3546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !233, file: !132, line: 120, baseType: !3548, size: 64, offset: 192)
!3548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3549, size: 64)
!3549 = !DISubroutineType(types: !3550)
!3550 = !{!3551, !200}
!3551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3552, size: 64)
!3552 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3553)
!3553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !65, line: 39, size: 384, elements: !3554)
!3554 = !{!3555, !3556, !3560, !3564, !3570, !3574}
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3553, file: !65, line: 40, baseType: !64, size: 32)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3553, file: !65, line: 41, baseType: !3557, size: 64, offset: 64)
!3557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3558, size: 64)
!3558 = !DISubroutineType(types: !3559)
!3559 = !{!872}
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3553, file: !65, line: 42, baseType: !3561, size: 64, offset: 128)
!3561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3562, size: 64)
!3562 = !DISubroutineType(types: !3563)
!3563 = !{!289}
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3553, file: !65, line: 43, baseType: !3565, size: 64, offset: 192)
!3565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3566, size: 64)
!3566 = !DISubroutineType(types: !3567)
!3567 = !{!847, !3568}
!3568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3569, size: 64)
!3569 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !65, line: 19, flags: DIFlagFwdDecl)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3553, file: !65, line: 44, baseType: !3571, size: 64, offset: 256)
!3571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3572, size: 64)
!3572 = !DISubroutineType(types: !3573)
!3573 = !{!847}
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3553, file: !65, line: 45, baseType: !3140, size: 64, offset: 320)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !233, file: !132, line: 121, baseType: !3576, size: 64, offset: 256)
!3576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3577, size: 64)
!3577 = !DISubroutineType(types: !3578)
!3578 = !{!847, !200}
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !233, file: !132, line: 122, baseType: !3580, size: 64, offset: 320)
!3580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3581, size: 64)
!3581 = !DISubroutineType(types: !3582)
!3582 = !{null, !200, !3583, !3584}
!3583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!3584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !131, file: !132, line: 70, baseType: !3586, size: 64, offset: 384)
!3586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3587, size: 64)
!3587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !474, line: 190, size: 1152, elements: !3588)
!3588 = !{!3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3668, !3669, !3670, !3671, !3672, !3675}
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3587, file: !474, line: 191, baseType: !166, size: 32)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3587, file: !474, line: 192, baseType: !166, size: 32, offset: 32)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3587, file: !474, line: 202, baseType: !3586, size: 64, offset: 64)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3587, file: !474, line: 203, baseType: !135, size: 64, offset: 128)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3587, file: !474, line: 205, baseType: !762, size: 192, align: 64, offset: 192)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3587, file: !474, line: 207, baseType: !847, size: 64, offset: 384)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3587, file: !474, line: 208, baseType: !7, size: 32, offset: 448)
!3596 = !DIDerivedType(tag: DW_TAG_member, scope: !3587, file: !474, line: 209, baseType: !3597, size: 256, offset: 512)
!3597 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3587, file: !474, line: 209, size: 256, elements: !3598)
!3598 = !{!3599, !3608, !3612}
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3597, file: !474, line: 210, baseType: !3600, size: 256)
!3600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !474, line: 153, size: 256, elements: !3601)
!3601 = !{!3602, !3603, !3604, !3607}
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3600, file: !474, line: 154, baseType: !267, size: 64)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3600, file: !474, line: 156, baseType: !1935, size: 64, offset: 64)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3600, file: !474, line: 162, baseType: !3605, size: 64, offset: 128)
!3605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3606, size: 64)
!3606 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !474, line: 162, flags: DIFlagFwdDecl)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !3600, file: !474, line: 167, baseType: !267, size: 64, offset: 192)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3597, file: !474, line: 211, baseType: !3609, size: 64)
!3609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !474, line: 170, size: 64, elements: !3610)
!3610 = !{!3611}
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3609, file: !474, line: 171, baseType: !3586, size: 64)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3597, file: !474, line: 212, baseType: !3613, size: 256)
!3613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !474, line: 174, size: 256, elements: !3614)
!3614 = !{!3615, !3663, !3666, !3667}
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3613, file: !474, line: 175, baseType: !3616, size: 64)
!3616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3617, size: 64)
!3617 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3618)
!3618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !474, line: 271, size: 768, elements: !3619)
!3619 = !{!3620, !3640, !3644, !3645, !3646, !3647, !3648, !3652, !3653, !3654, !3655, !3659}
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3618, file: !474, line: 276, baseType: !3621, size: 64)
!3621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3622, size: 64)
!3622 = !DISubroutineType(types: !3623)
!3623 = !{!170, !3624}
!3624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3625, size: 64)
!3625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !474, line: 251, size: 1216, elements: !3626)
!3626 = !{!3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639}
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3625, file: !474, line: 253, baseType: !3586, size: 64)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3625, file: !474, line: 254, baseType: !1074, size: 64, offset: 64)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3625, file: !474, line: 255, baseType: !571, size: 64, offset: 128)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3625, file: !474, line: 256, baseType: !289, size: 64, offset: 192)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3625, file: !474, line: 259, baseType: !583, size: 256, offset: 256)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3625, file: !474, line: 260, baseType: !583, size: 256, offset: 512)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3625, file: !474, line: 261, baseType: !170, size: 32, offset: 768)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3625, file: !474, line: 262, baseType: !116, size: 128, offset: 832)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3625, file: !474, line: 263, baseType: !217, size: 64, offset: 960)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3625, file: !474, line: 265, baseType: !264, size: 64, offset: 1024)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3625, file: !474, line: 266, baseType: !872, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3625, file: !474, line: 267, baseType: !872, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3625, file: !474, line: 268, baseType: !1357, size: 64, offset: 1152)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3618, file: !474, line: 277, baseType: !3641, size: 64, offset: 64)
!3641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3642, size: 64)
!3642 = !DISubroutineType(types: !3643)
!3643 = !{null, !3624}
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3618, file: !474, line: 290, baseType: !622, size: 64, offset: 128)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3618, file: !474, line: 292, baseType: !609, size: 64, offset: 192)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3618, file: !474, line: 293, baseType: !618, size: 64, offset: 256)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3618, file: !474, line: 294, baseType: !614, size: 64, offset: 320)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3618, file: !474, line: 296, baseType: !3649, size: 64, offset: 384)
!3649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3650, size: 64)
!3650 = !DISubroutineType(types: !3651)
!3651 = !{!249, !3624, !217, !264, !459}
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3618, file: !474, line: 306, baseType: !264, size: 64, offset: 448)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3618, file: !474, line: 313, baseType: !872, size: 8, offset: 512)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3618, file: !474, line: 314, baseType: !3649, size: 64, offset: 576)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3618, file: !474, line: 317, baseType: !3656, size: 64, offset: 640)
!3656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3657, size: 64)
!3657 = !DISubroutineType(types: !3658)
!3658 = !{!1135, !3624, !1137}
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3618, file: !474, line: 320, baseType: !3660, size: 64, offset: 704)
!3660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3661, size: 64)
!3661 = !DISubroutineType(types: !3662)
!3662 = !{!170, !3624, !1148}
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3613, file: !474, line: 176, baseType: !3664, size: 64, offset: 64)
!3664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3665, size: 64)
!3665 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !474, line: 35, flags: DIFlagFwdDecl)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3613, file: !474, line: 177, baseType: !459, size: 64, offset: 128)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3613, file: !474, line: 178, baseType: !3586, size: 64, offset: 192)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3587, file: !474, line: 215, baseType: !289, size: 64, offset: 768)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3587, file: !474, line: 221, baseType: !371, size: 64, offset: 832)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3587, file: !474, line: 223, baseType: !187, size: 16, offset: 896)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3587, file: !474, line: 224, baseType: !259, size: 16, offset: 912)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3587, file: !474, line: 225, baseType: !3673, size: 64, offset: 960)
!3673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3674, size: 64)
!3674 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !474, line: 36, flags: DIFlagFwdDecl)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3587, file: !474, line: 227, baseType: !641, size: 128, align: 64, offset: 1024)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !131, file: !132, line: 71, baseType: !3677, size: 32, offset: 448)
!3677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3678, line: 19, size: 32, elements: !3679)
!3678 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!3679 = !{!3680}
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3677, file: !3678, line: 20, baseType: !686, size: 32)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !131, file: !132, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !131, file: !132, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !131, file: !132, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !131, file: !132, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !131, file: !132, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !128, file: !6, line: 47, baseType: !111, size: 64, offset: 512)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !128, file: !6, line: 48, baseType: !139, size: 64, offset: 576)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !128, file: !6, line: 49, baseType: !3689, size: 64, offset: 640)
!3689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3690, size: 64)
!3690 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !128, file: !6, line: 50, baseType: !2146, size: 64, offset: 704)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !112, file: !6, line: 418, baseType: !3693, size: 64, offset: 1408)
!3693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3694, size: 64)
!3694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !3695)
!3695 = !{!3696, !3697, !3702, !3706, !3710, !3714}
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3694, file: !6, line: 54, baseType: !255, size: 128)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3694, file: !6, line: 55, baseType: !3698, size: 64, offset: 128)
!3698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3699, size: 64)
!3699 = !DISubroutineType(types: !3700)
!3700 = !{!249, !3693, !3701, !217}
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3694, file: !6, line: 57, baseType: !3703, size: 64, offset: 192)
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3704, size: 64)
!3704 = !DISubroutineType(types: !3705)
!3705 = !{!249, !3693, !3701, !135, !264}
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !3694, file: !6, line: 59, baseType: !3707, size: 64, offset: 256)
!3707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3708, size: 64)
!3708 = !DISubroutineType(types: !3709)
!3709 = !{null, !111, !135}
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !3694, file: !6, line: 60, baseType: !3711, size: 64, offset: 320)
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3712, size: 64)
!3712 = !DISubroutineType(types: !3713)
!3713 = !{!170, !111}
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3694, file: !6, line: 61, baseType: !3715, size: 64, offset: 384)
!3715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3716, size: 64)
!3716 = !DISubroutineType(types: !3717)
!3717 = !{null, !111}
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !112, file: !6, line: 419, baseType: !135, size: 64, offset: 1472)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !112, file: !6, line: 420, baseType: !135, size: 64, offset: 1536)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !112, file: !6, line: 421, baseType: !139, size: 64, offset: 1600)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !112, file: !6, line: 424, baseType: !3722, size: 64, offset: 1664)
!3722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3723, size: 64)
!3723 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3724)
!3724 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !112, file: !6, line: 425, baseType: !3726, size: 64, offset: 1728)
!3726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3727, size: 64)
!3727 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !755)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !112, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !112, file: !6, line: 435, baseType: !583, size: 256, offset: 1856)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !112, file: !6, line: 437, baseType: !3731, size: 64, offset: 2112)
!3731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3732, size: 64)
!3732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !3733, line: 69, size: 320, elements: !3734)
!3733 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!3734 = !{!3735, !3736, !3737, !3754, !3756, !3760, !3761}
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3732, file: !3733, line: 70, baseType: !135, size: 64)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3732, file: !3733, line: 71, baseType: !111, size: 64, offset: 64)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3732, file: !3733, line: 72, baseType: !3738, size: 64, offset: 128)
!3738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3739, size: 64)
!3739 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3740)
!3740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !3733, line: 47, size: 256, elements: !3741)
!3741 = !{!3742, !3743, !3749, !3753}
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3740, file: !3733, line: 49, baseType: !7, size: 32)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !3740, file: !3733, line: 51, baseType: !3744, size: 64, offset: 64)
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!3745 = !DISubroutineType(types: !3746)
!3746 = !{!170, !135, !3747}
!3747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3748, size: 64)
!3748 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3732)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3740, file: !3733, line: 53, baseType: !3750, size: 64, offset: 128)
!3750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3751, size: 64)
!3751 = !DISubroutineType(types: !3752)
!3752 = !{!170, !217, !3747}
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3740, file: !3733, line: 55, baseType: !3140, size: 64, offset: 192)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3732, file: !3733, line: 73, baseType: !3755, size: 16, offset: 192)
!3755 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !185)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3732, file: !3733, line: 74, baseType: !3757, size: 8, offset: 208)
!3757 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !176, line: 16, baseType: !3758)
!3758 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !178, line: 20, baseType: !3759)
!3759 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3732, file: !3733, line: 75, baseType: !175, size: 8, offset: 216)
!3761 = !DIDerivedType(tag: DW_TAG_member, scope: !3732, file: !3733, line: 76, baseType: !3762, size: 64, offset: 256)
!3762 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3732, file: !3733, line: 76, size: 64, elements: !3763)
!3763 = !{!3764, !3765, !3772}
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3762, file: !3733, line: 77, baseType: !289, size: 64)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !3762, file: !3733, line: 78, baseType: !3766, size: 64)
!3766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3767, size: 64)
!3767 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3768)
!3768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !3733, line: 86, size: 128, elements: !3769)
!3769 = !{!3770, !3771}
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !3768, file: !3733, line: 87, baseType: !7, size: 32)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3768, file: !3733, line: 88, baseType: !217, size: 64, offset: 64)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !3762, file: !3733, line: 79, baseType: !3773, size: 64)
!3773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3774, size: 64)
!3774 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3775)
!3775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !3733, line: 92, size: 256, elements: !3776)
!3776 = !{!3777, !3778, !3779, !3780, !3781}
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3775, file: !3733, line: 94, baseType: !7, size: 32)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !3775, file: !3733, line: 95, baseType: !7, size: 32, offset: 32)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3775, file: !3733, line: 96, baseType: !1756, size: 64, offset: 64)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3775, file: !3733, line: 97, baseType: !3738, size: 64, offset: 128)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !3775, file: !3733, line: 98, baseType: !289, size: 64, offset: 192)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !112, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !112, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !112, file: !6, line: 442, baseType: !3722, size: 64, offset: 2240)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !112, file: !6, line: 443, baseType: !3726, size: 64, offset: 2304)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !112, file: !6, line: 444, baseType: !872, size: 8, offset: 2368)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !112, file: !6, line: 451, baseType: !872, size: 8, offset: 2376)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !112, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !112, file: !6, line: 455, baseType: !3790, size: 64, offset: 2432)
!3790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3791, size: 64)
!3791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !3792, line: 23, size: 96, elements: !3793)
!3792 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!3793 = !{!3794, !3795, !3796}
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3791, file: !3792, line: 24, baseType: !170, size: 32)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !3791, file: !3792, line: 24, baseType: !170, size: 32, offset: 32)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3791, file: !3792, line: 24, baseType: !170, size: 32, offset: 64)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !112, file: !6, line: 458, baseType: !3798, size: 64, offset: 2496)
!3798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3799, size: 64)
!3799 = !DISubroutineType(types: !3800)
!3800 = !{!170}
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !112, file: !6, line: 460, baseType: !3802, size: 4032, align: 512, offset: 2560)
!3802 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3803, size: 4032, elements: !3817)
!3803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !3804)
!3804 = !{!3805, !3806, !3807}
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !3803, file: !6, line: 363, baseType: !289, size: 64)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3803, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !3803, file: !6, line: 367, baseType: !3808, size: 448, offset: 128)
!3808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !3809)
!3809 = !{!3810, !3811}
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3808, file: !6, line: 320, baseType: !111, size: 64)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3808, file: !6, line: 321, baseType: !3812, size: 384, offset: 64)
!3812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !3813, line: 40, size: 384, elements: !3814)
!3813 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!3814 = !{!3815}
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3812, file: !3813, line: 41, baseType: !3816, size: 384, align: 64)
!3816 = !DICompositeType(tag: DW_TAG_array_type, baseType: !762, size: 384, align: 64, elements: !2281)
!3817 = !{!3818}
!3818 = !DISubrange(count: 7)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !112, file: !6, line: 463, baseType: !3820, size: 192, offset: 6592)
!3820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !3821, line: 8, size: 192, elements: !3822)
!3821 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!3822 = !{!3823, !3824, !3825}
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !3820, file: !3821, line: 10, baseType: !7, size: 32)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !3820, file: !3821, line: 11, baseType: !565, size: 64, offset: 64)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !3820, file: !3821, line: 12, baseType: !3826, size: 64, offset: 128)
!3826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3827, size: 64)
!3827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !3828, line: 59, size: 48, elements: !3829)
!3828 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!3829 = !{!3830, !3831, !3832, !3833, !3834, !3835}
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !3827, file: !3828, line: 60, baseType: !1292, size: 16)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !3827, file: !3828, line: 61, baseType: !1292, size: 16, offset: 16)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !3827, file: !3828, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !3827, file: !3828, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3827, file: !3828, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3827, file: !3828, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !112, file: !6, line: 465, baseType: !267, size: 64, offset: 6784)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !112, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !112, file: !6, line: 470, baseType: !116, size: 128, offset: 6912)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !112, file: !6, line: 471, baseType: !3840, size: 64, offset: 7040)
!3840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3841, size: 64)
!3841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !3842, line: 33, size: 96, elements: !3843)
!3842 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!3843 = !{!3844, !3845, !3846, !3847}
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !3841, file: !3842, line: 37, baseType: !170, size: 32)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !3841, file: !3842, line: 43, baseType: !170, size: 32, offset: 32)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !3841, file: !3842, line: 45, baseType: !187, size: 16, offset: 64)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3841, file: !3842, line: 47, baseType: !187, size: 16, offset: 80)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !112, file: !6, line: 476, baseType: !3849, size: 64, offset: 7104)
!3849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3850, size: 64)
!3850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !3851)
!3851 = !{!3852, !3868, !3869, !3870}
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !3850, file: !6, line: 379, baseType: !3853, size: 64)
!3853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3854, size: 64)
!3854 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !3855, line: 204, baseType: !3856)
!3855 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!3856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !3855, line: 197, size: 192, elements: !3857)
!3857 = !{!3858, !3860, !3861, !3862, !3864, !3866}
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !3856, file: !3855, line: 198, baseType: !3859, size: 32)
!3859 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !3855, line: 21, baseType: !368)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !3856, file: !3855, line: 199, baseType: !179, size: 8, offset: 32)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !3856, file: !3855, line: 200, baseType: !179, size: 8, offset: 40)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !3856, file: !3855, line: 201, baseType: !3863, size: 16, offset: 48)
!3863 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !3855, line: 17, baseType: !186)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !3856, file: !3855, line: 202, baseType: !3865, size: 64, offset: 64)
!3865 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !3855, line: 16, baseType: !372)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !3856, file: !3855, line: 203, baseType: !3867, size: 64, offset: 128)
!3867 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !3855, line: 22, baseType: !372)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !3850, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !3850, file: !6, line: 381, baseType: !217, size: 64, offset: 128)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !3850, file: !6, line: 382, baseType: !217, size: 64, offset: 192)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !112, file: !6, line: 477, baseType: !3850, size: 256, offset: 7168)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !112, file: !6, line: 480, baseType: !3873, size: 64, offset: 7424)
!3873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3874, size: 64)
!3874 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !112, file: !6, line: 483, baseType: !3876, size: 64, offset: 7488)
!3876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3877, size: 64)
!3877 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !112, file: !6, line: 488, baseType: !217, size: 64, offset: 7552)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !112, file: !6, line: 492, baseType: !289, size: 64, offset: 7616)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !112, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !112, file: !6, line: 495, baseType: !289, size: 64, offset: 7744)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !112, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !112, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !112, file: !6, line: 500, baseType: !3885, size: 64, offset: 7872)
!3885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3886, size: 64)
!3886 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !3887, line: 45, baseType: !3888)
!3887 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!3888 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !170)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !112, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !112, file: !6, line: 504, baseType: !3891, size: 64, offset: 8000)
!3891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3892, size: 64)
!3892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3893, size: 64)
!3893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !3894, line: 96, size: 192, elements: !3895)
!3894 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!3895 = !{!3896, !3897, !3940, !3942}
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !3893, file: !3894, line: 97, baseType: !7, size: 32)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !3893, file: !3894, line: 98, baseType: !3898, size: 64, offset: 64)
!3898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3899, size: 64)
!3899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !3894, line: 24, size: 3072, elements: !3900)
!3900 = !{!3901, !3903, !3904, !3905, !3906, !3920, !3921, !3922, !3923, !3924, !3925, !3926, !3937, !3938, !3939}
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !3899, file: !3894, line: 26, baseType: !3902, size: 128)
!3902 = !DICompositeType(tag: DW_TAG_array_type, baseType: !587, size: 128, elements: !2281)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !3899, file: !3894, line: 27, baseType: !3902, size: 128, offset: 128)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !3899, file: !3894, line: 28, baseType: !170, size: 32, offset: 256)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3899, file: !3894, line: 31, baseType: !146, size: 32, align: 512, offset: 512)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !3899, file: !3894, line: 32, baseType: !3907, size: 960, offset: 576)
!3907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !3908, line: 206, size: 960, elements: !3909)
!3908 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!3909 = !{!3910, !3911, !3914, !3916, !3917, !3919}
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3907, file: !3908, line: 207, baseType: !644, size: 64)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !3907, file: !3908, line: 208, baseType: !3912, size: 256, offset: 64)
!3912 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3913, size: 256, elements: !695)
!3913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !3907, file: !3908, line: 209, baseType: !3915, size: 256, offset: 320)
!3915 = !DICompositeType(tag: DW_TAG_array_type, baseType: !267, size: 256, elements: !695)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3907, file: !3908, line: 213, baseType: !253, size: 64, offset: 576)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !3907, file: !3908, line: 215, baseType: !3918, size: 256, offset: 640)
!3918 = !DICompositeType(tag: DW_TAG_array_type, baseType: !253, size: 256, elements: !695)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3907, file: !3908, line: 216, baseType: !175, size: 8, offset: 896)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !3899, file: !3894, line: 33, baseType: !267, size: 64, offset: 1536)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3899, file: !3894, line: 34, baseType: !267, size: 64, offset: 1600)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !3899, file: !3894, line: 35, baseType: !872, size: 8, offset: 1664)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !3899, file: !3894, line: 36, baseType: !2777, size: 320, offset: 1728)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3899, file: !3894, line: 37, baseType: !1314, size: 256, offset: 2048)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !3899, file: !3894, line: 38, baseType: !641, size: 128, align: 64, offset: 2304)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !3899, file: !3894, line: 39, baseType: !3927, size: 64, offset: 2432)
!3927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3928, size: 64)
!3928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !3894, line: 49, size: 768, elements: !3929)
!3929 = !{!3930, !3931, !3932, !3933, !3934, !3935, !3936}
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3928, file: !3894, line: 50, baseType: !146, size: 32)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !3928, file: !3894, line: 51, baseType: !3915, size: 256, offset: 64)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !3928, file: !3894, line: 53, baseType: !3915, size: 256, offset: 320)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3928, file: !3894, line: 54, baseType: !267, size: 64, offset: 576)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !3928, file: !3894, line: 55, baseType: !3927, size: 64, offset: 640)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !3928, file: !3894, line: 56, baseType: !170, size: 32, offset: 704)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !3928, file: !3894, line: 57, baseType: !170, size: 32, offset: 736)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !3899, file: !3894, line: 40, baseType: !267, size: 64, offset: 2496)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3899, file: !3894, line: 42, baseType: !170, size: 32, offset: 2560)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !3899, file: !3894, line: 43, baseType: !3892, size: 64, offset: 2624)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !3893, file: !3894, line: 99, baseType: !3941, offset: 128)
!3941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !501, line: 211, elements: !502)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !3893, file: !3894, line: 100, baseType: !3943, size: 64, offset: 128)
!3943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3944, size: 64)
!3944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !3894, line: 63, size: 3008, elements: !3945)
!3945 = !{!3946, !3947, !3949, !3950, !3951, !3952, !3953, !3954, !3955, !3956, !3957, !3958, !3959, !3960, !3961, !3962, !3963, !3964, !3965, !3966, !3967, !3968, !3975}
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3944, file: !3894, line: 64, baseType: !3927, size: 64)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3944, file: !3894, line: 65, baseType: !3948, size: 192, offset: 64)
!3948 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3927, size: 192, elements: !218)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !3944, file: !3894, line: 67, baseType: !170, size: 32, offset: 256)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !3944, file: !3894, line: 68, baseType: !583, size: 256, offset: 320)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3944, file: !3894, line: 69, baseType: !146, size: 32, offset: 576)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !3944, file: !3894, line: 70, baseType: !583, size: 256, offset: 640)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !3944, file: !3894, line: 71, baseType: !267, size: 64, offset: 896)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !3944, file: !3894, line: 72, baseType: !267, size: 64, offset: 960)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3944, file: !3894, line: 73, baseType: !267, size: 64, offset: 1024)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !3944, file: !3894, line: 74, baseType: !267, size: 64, offset: 1088)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !3944, file: !3894, line: 75, baseType: !267, size: 64, offset: 1152)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !3944, file: !3894, line: 76, baseType: !267, size: 64, offset: 1216)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !3944, file: !3894, line: 77, baseType: !267, size: 64, offset: 1280)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !3944, file: !3894, line: 78, baseType: !267, size: 64, offset: 1344)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !3944, file: !3894, line: 79, baseType: !872, size: 8, offset: 1408)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !3944, file: !3894, line: 80, baseType: !267, size: 64, offset: 1472)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !3944, file: !3894, line: 81, baseType: !583, size: 256, offset: 1536)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !3944, file: !3894, line: 82, baseType: !2147, size: 256, offset: 1792)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !3944, file: !3894, line: 84, baseType: !166, size: 32, offset: 2048)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !3944, file: !3894, line: 87, baseType: !267, size: 64, offset: 2112)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !3944, file: !3894, line: 88, baseType: !267, size: 64, offset: 2176)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3944, file: !3894, line: 89, baseType: !3969, size: 704, offset: 2240)
!3969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1315, line: 111, size: 704, elements: !3970)
!3970 = !{!3971, !3972, !3973, !3974}
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3969, file: !1315, line: 112, baseType: !1314, size: 256)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3969, file: !1315, line: 113, baseType: !2777, size: 320, offset: 256)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !3969, file: !1315, line: 116, baseType: !3071, size: 64, offset: 576)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3969, file: !1315, line: 117, baseType: !170, size: 32, offset: 640)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !3944, file: !3894, line: 90, baseType: !3892, size: 64, offset: 2944)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !112, file: !6, line: 515, baseType: !3977, size: 64, offset: 8064)
!3977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3978, size: 64)
!3978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !3979, line: 117, size: 128, elements: !3980)
!3979 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!3980 = !{!3981, !3982, !3983}
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !3978, file: !3979, line: 118, baseType: !755, size: 32)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !3978, file: !3979, line: 119, baseType: !755, size: 32, offset: 32)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3978, file: !3979, line: 120, baseType: !253, size: 64, offset: 64)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !112, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !112, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !112, file: !6, line: 520, baseType: !3987, size: 64, offset: 8192)
!3987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !112, file: !6, line: 523, baseType: !3989, size: 64, offset: 8256)
!3989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3990, size: 64)
!3990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3991, size: 64)
!3991 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !112, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !112, file: !6, line: 525, baseType: !3994, size: 64, offset: 8384)
!3994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3995, size: 64)
!3995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3996, size: 64)
!3996 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !112, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !112, file: !6, line: 533, baseType: !289, size: 64, offset: 8512)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !112, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !112, file: !6, line: 535, baseType: !4001, size: 64, offset: 8640)
!4001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !112, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !112, file: !6, line: 539, baseType: !170, size: 32, offset: 8736)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !112, file: !6, line: 540, baseType: !4005, size: 64, offset: 8768)
!4005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4006, size: 64)
!4006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !4007, line: 32, size: 64, elements: !4008)
!4007 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!4008 = !{!4009, !4010}
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4006, file: !4007, line: 33, baseType: !755, size: 32)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4006, file: !4007, line: 34, baseType: !755, size: 32, offset: 32)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !112, file: !6, line: 563, baseType: !116, size: 128, offset: 8832)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !112, file: !6, line: 565, baseType: !116, size: 128, offset: 8960)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !112, file: !6, line: 568, baseType: !4014, size: 64, offset: 9088)
!4014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2395, size: 64)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !112, file: !6, line: 570, baseType: !166, size: 32, offset: 9152)
!4016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4017, size: 64)
!4017 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4018)
!4018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_server_list_v1_header", file: !71, line: 84, size: 48, elements: !4019)
!4019 = !{!4020, !4026, !4027, !4028}
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !4018, file: !71, line: 85, baseType: !4021, size: 24)
!4021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_payload_header", file: !71, line: 73, size: 24, elements: !4022)
!4022 = !{!4023, !4024, !4025}
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "zero", scope: !4021, file: !71, line: 74, baseType: !177, size: 8)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !4021, file: !71, line: 75, baseType: !177, size: 8, offset: 8)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4021, file: !71, line: 76, baseType: !177, size: 8, offset: 16)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !4018, file: !71, line: 86, baseType: !177, size: 8, offset: 24)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4018, file: !71, line: 87, baseType: !177, size: 8, offset: 32)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "nr_servers", scope: !4018, file: !71, line: 88, baseType: !177, size: 8, offset: 40)
!4029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!4030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!4031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4032, size: 64)
!4032 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4033)
!4033 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !798)
!4034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!4035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4036, size: 64)
!4036 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !124)
!4037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4038, size: 64)
!4038 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !253)
!4039 = !{!0, !4040, !4045, !4050, !4055, !4057, !4062, !4065, !4070, !4072, !4074, !4078, !4080, !4082, !4084, !4086, !4091, !4096, !4101, !4137, !4142, !4144, !4149, !4151, !4156, !4161, !4163, !4168, !4173, !4178, !4180, !4182, !4184, !4189, !4194, !4197, !4199, !4201, !4206, !4208, !4213, !4215, !4220, !4222, !4227}
!4040 = !DIGlobalVariableExpression(var: !4041, expr: !DIExpression())
!4041 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author262", scope: !2, file: !3, line: 38, type: !4042, isLocal: true, isDefinition: true, align: 8)
!4042 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 232, elements: !4043)
!4043 = !{!4044}
!4044 = !DISubrange(count: 29)
!4045 = !DIGlobalVariableExpression(var: !4046, expr: !DIExpression())
!4046 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file263", scope: !2, file: !3, line: 39, type: !4047, isLocal: true, isDefinition: true, align: 8)
!4047 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 384, elements: !4048)
!4048 = !{!4049}
!4049 = !DISubrange(count: 48)
!4050 = !DIGlobalVariableExpression(var: !4051, expr: !DIExpression())
!4051 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license264", scope: !2, file: !3, line: 39, type: !4052, isLocal: true, isDefinition: true, align: 8)
!4052 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 200, elements: !4053)
!4053 = !{!4054}
!4054 = !DISubrange(count: 25)
!4055 = !DIGlobalVariableExpression(var: !4056, expr: !DIExpression())
!4056 = distinct !DIGlobalVariable(name: "__param_debug", scope: !2, file: !3, line: 42, type: !3748, isLocal: true, isDefinition: true, align: 64)
!4057 = !DIGlobalVariableExpression(var: !4058, expr: !DIExpression())
!4058 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_debugtype265", scope: !2, file: !3, line: 42, type: !4059, isLocal: true, isDefinition: true, align: 8)
!4059 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 264, elements: !4060)
!4060 = !{!4061}
!4061 = !DISubrange(count: 33)
!4062 = !DIGlobalVariableExpression(var: !4063, expr: !DIExpression())
!4063 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_debug266", scope: !2, file: !3, line: 43, type: !4064, isLocal: true, isDefinition: true, align: 8)
!4064 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 416, elements: !1242)
!4065 = !DIGlobalVariableExpression(var: !4066, expr: !DIExpression())
!4066 = distinct !DIGlobalVariable(scope: null, file: !3, line: 323, type: !4067, isLocal: true, isDefinition: true)
!4067 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 104, elements: !4068)
!4068 = !{!4069}
!4069 = !DISubrange(count: 13)
!4070 = !DIGlobalVariableExpression(var: !4071, expr: !DIExpression())
!4071 = distinct !DIGlobalVariable(name: "key_type_dns_resolver", scope: !2, file: !3, line: 322, type: !821, isLocal: false, isDefinition: true)
!4072 = !DIGlobalVariableExpression(var: !4073, expr: !DIExpression())
!4073 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_dns_resolver__267_389_init_dns_resolver6268", scope: !2, file: !3, line: 389, type: !289, isLocal: true, isDefinition: true)
!4074 = !DIGlobalVariableExpression(var: !4075, expr: !DIExpression())
!4075 = distinct !DIGlobalVariable(name: "__exitcall_exit_dns_resolver", scope: !2, file: !3, line: 390, type: !4076, isLocal: true, isDefinition: true)
!4076 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !4077, line: 120, baseType: !4014)
!4077 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!4078 = !DIGlobalVariableExpression(var: !4079, expr: !DIExpression())
!4079 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file269", scope: !2, file: !3, line: 391, type: !4047, isLocal: true, isDefinition: true, align: 8)
!4080 = !DIGlobalVariableExpression(var: !4081, expr: !DIExpression())
!4081 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license270", scope: !2, file: !3, line: 391, type: !4052, isLocal: true, isDefinition: true, align: 8)
!4082 = !DIGlobalVariableExpression(var: !4083, expr: !DIExpression())
!4083 = distinct !DIGlobalVariable(name: "dns_resolver_debug", scope: !2, file: !3, line: 41, type: !7, isLocal: false, isDefinition: true)
!4084 = !DIGlobalVariableExpression(var: !4085, expr: !DIExpression())
!4085 = distinct !DIGlobalVariable(name: "dns_resolver_cache", scope: !2, file: !3, line: 45, type: !721, isLocal: false, isDefinition: true)
!4086 = !DIGlobalVariableExpression(var: !4087, expr: !DIExpression())
!4087 = distinct !DIGlobalVariable(name: "__param_str_debug", scope: !2, file: !3, line: 42, type: !4088, isLocal: true, isDefinition: true)
!4088 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 152, elements: !4089)
!4089 = !{!4090}
!4090 = !DISubrange(count: 19)
!4091 = !DIGlobalVariableExpression(var: !4092, expr: !DIExpression())
!4092 = distinct !DIGlobalVariable(scope: null, file: !3, line: 111, type: !4093, isLocal: true, isDefinition: true)
!4093 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 248, elements: !4094)
!4094 = !{!4095}
!4095 = !DISubrange(count: 31)
!4096 = !DIGlobalVariableExpression(var: !4097, expr: !DIExpression())
!4097 = distinct !DIGlobalVariable(scope: null, file: !3, line: 111, type: !4098, isLocal: true, isDefinition: true)
!4098 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 176, elements: !4099)
!4099 = !{!4100}
!4100 = !DISubrange(count: 22)
!4101 = !DIGlobalVariableExpression(var: !4102, expr: !DIExpression())
!4102 = distinct !DIGlobalVariable(name: "_rs", scope: !4103, file: !3, line: 113, type: !1018, isLocal: true, isDefinition: true)
!4103 = distinct !DISubprogram(name: "dns_resolver_preparse", scope: !3, file: !3, line: 92, type: !833, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4104)
!4104 = !{!4105, !4106, !4114, !4115, !4116, !4117, !4118, !4119, !4120, !4121, !4124, !4127, !4129, !4130, !4131, !4135, !4136}
!4105 = !DILocalVariable(name: "prep", arg: 1, scope: !4103, file: !3, line: 92, type: !835)
!4106 = !DILocalVariable(name: "upayload", scope: !4103, file: !3, line: 94, type: !4107)
!4107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4108, size: 64)
!4108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_key_payload", file: !4109, line: 27, size: 192, elements: !4110)
!4109 = !DIFile(filename: "./include/keys/user-type.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f244a9e1cd77ab5806ae64720b61f6a")
!4110 = !{!4111, !4112, !4113}
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4108, file: !4109, line: 28, baseType: !641, size: 128, align: 64)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !4108, file: !4109, line: 29, baseType: !187, size: 16, offset: 128)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4108, file: !4109, line: 30, baseType: !2599, align: 64, offset: 192)
!4114 = !DILocalVariable(name: "derrno", scope: !4103, file: !3, line: 95, type: !267)
!4115 = !DILocalVariable(name: "ret", scope: !4103, file: !3, line: 96, type: !170)
!4116 = !DILocalVariable(name: "datalen", scope: !4103, file: !3, line: 97, type: !170)
!4117 = !DILocalVariable(name: "result_len", scope: !4103, file: !3, line: 97, type: !170)
!4118 = !DILocalVariable(name: "data", scope: !4103, file: !3, line: 98, type: !135)
!4119 = !DILocalVariable(name: "end", scope: !4103, file: !3, line: 98, type: !135)
!4120 = !DILocalVariable(name: "opt", scope: !4103, file: !3, line: 98, type: !135)
!4121 = !DILocalVariable(name: "v1", scope: !4122, file: !3, line: 104, type: !4016)
!4122 = distinct !DILexicalBlock(scope: !4123, file: !3, line: 103, column: 20)
!4123 = distinct !DILexicalBlock(scope: !4103, file: !3, line: 103, column: 6)
!4124 = !DILocalVariable(name: "next_opt", scope: !4125, file: !3, line: 150, type: !135)
!4125 = distinct !DILexicalBlock(scope: !4126, file: !3, line: 149, column: 9)
!4126 = distinct !DILexicalBlock(scope: !4103, file: !3, line: 145, column: 6)
!4127 = !DILocalVariable(name: "opt_len", scope: !4128, file: !3, line: 156, type: !170)
!4128 = distinct !DILexicalBlock(scope: !4125, file: !3, line: 155, column: 6)
!4129 = !DILocalVariable(name: "opt_nlen", scope: !4128, file: !3, line: 156, type: !170)
!4130 = !DILocalVariable(name: "eq", scope: !4128, file: !3, line: 157, type: !135)
!4131 = !DILocalVariable(name: "optval", scope: !4128, file: !3, line: 158, type: !4132)
!4132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 1024, elements: !4133)
!4133 = !{!4134}
!4134 = !DISubrange(count: 128)
!4135 = !DILabel(scope: !4128, name: "bad_option_value", file: !3, line: 200)
!4136 = !DILabel(scope: !4103, name: "store_result", file: !3, line: 214)
!4137 = !DIGlobalVariableExpression(var: !4138, expr: !DIExpression())
!4138 = distinct !DIGlobalVariable(scope: null, file: !3, line: 113, type: !4139, isLocal: true, isDefinition: true)
!4139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 376, elements: !4140)
!4140 = !{!4141}
!4141 = !DISubrange(count: 47)
!4142 = !DIGlobalVariableExpression(var: !4143, expr: !DIExpression())
!4143 = distinct !DIGlobalVariable(name: "_rs", scope: !4103, file: !3, line: 120, type: !1018, isLocal: true, isDefinition: true)
!4144 = !DIGlobalVariableExpression(var: !4145, expr: !DIExpression())
!4145 = distinct !DIGlobalVariable(scope: null, file: !3, line: 120, type: !4146, isLocal: true, isDefinition: true)
!4146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 432, elements: !4147)
!4147 = !{!4148}
!4148 = !DISubrange(count: 54)
!4149 = !DIGlobalVariableExpression(var: !4150, expr: !DIExpression())
!4150 = distinct !DIGlobalVariable(scope: null, file: !3, line: 136, type: !4093, isLocal: true, isDefinition: true)
!4151 = !DIGlobalVariableExpression(var: !4152, expr: !DIExpression())
!4152 = distinct !DIGlobalVariable(scope: null, file: !3, line: 147, type: !4153, isLocal: true, isDefinition: true)
!4153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 184, elements: !4154)
!4154 = !{!4155}
!4155 = !DISubrange(count: 23)
!4156 = !DIGlobalVariableExpression(var: !4157, expr: !DIExpression())
!4157 = distinct !DIGlobalVariable(scope: null, file: !3, line: 154, type: !4158, isLocal: true, isDefinition: true)
!4158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 208, elements: !4159)
!4159 = !{!4160}
!4160 = !DISubrange(count: 26)
!4161 = !DIGlobalVariableExpression(var: !4162, expr: !DIExpression())
!4162 = distinct !DIGlobalVariable(name: "_rs", scope: !4103, file: !3, line: 163, type: !1018, isLocal: true, isDefinition: true)
!4163 = !DIGlobalVariableExpression(var: !4164, expr: !DIExpression())
!4164 = distinct !DIGlobalVariable(scope: null, file: !3, line: 163, type: !4165, isLocal: true, isDefinition: true)
!4165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 408, elements: !4166)
!4166 = !{!4167}
!4167 = !DISubrange(count: 51)
!4168 = !DIGlobalVariableExpression(var: !4169, expr: !DIExpression())
!4169 = distinct !DIGlobalVariable(scope: null, file: !3, line: 179, type: !4170, isLocal: true, isDefinition: true)
!4170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 288, elements: !4171)
!4171 = !{!4172}
!4172 = !DISubrange(count: 36)
!4173 = !DIGlobalVariableExpression(var: !4174, expr: !DIExpression())
!4174 = distinct !DIGlobalVariable(scope: null, file: !3, line: 185, type: !4175, isLocal: true, isDefinition: true)
!4175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 72, elements: !4176)
!4176 = !{!4177}
!4177 = !DISubrange(count: 9)
!4178 = !DIGlobalVariableExpression(var: !4179, expr: !DIExpression())
!4179 = distinct !DIGlobalVariable(scope: null, file: !3, line: 186, type: !4170, isLocal: true, isDefinition: true)
!4180 = !DIGlobalVariableExpression(var: !4181, expr: !DIExpression())
!4181 = distinct !DIGlobalVariable(scope: null, file: !3, line: 195, type: !3039, isLocal: true, isDefinition: true)
!4182 = !DIGlobalVariableExpression(var: !4183, expr: !DIExpression())
!4183 = distinct !DIGlobalVariable(name: "_rs", scope: !4103, file: !3, line: 201, type: !1018, isLocal: true, isDefinition: true)
!4184 = !DIGlobalVariableExpression(var: !4185, expr: !DIExpression())
!4185 = distinct !DIGlobalVariable(scope: null, file: !3, line: 201, type: !4186, isLocal: true, isDefinition: true)
!4186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 456, elements: !4187)
!4187 = !{!4188}
!4188 = !DISubrange(count: 57)
!4189 = !DIGlobalVariableExpression(var: !4190, expr: !DIExpression())
!4190 = distinct !DIGlobalVariable(scope: null, file: !3, line: 210, type: !4191, isLocal: true, isDefinition: true)
!4191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 312, elements: !4192)
!4192 = !{!4193}
!4193 = !DISubrange(count: 39)
!4194 = !DIGlobalVariableExpression(var: !4195, expr: !DIExpression())
!4195 = distinct !DIGlobalVariable(scope: null, file: !3, line: 215, type: !4196, isLocal: true, isDefinition: true)
!4196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 200, elements: !4053)
!4197 = !DIGlobalVariableExpression(var: !4198, expr: !DIExpression())
!4198 = distinct !DIGlobalVariable(scope: null, file: !3, line: 220, type: !4093, isLocal: true, isDefinition: true)
!4199 = !DIGlobalVariableExpression(var: !4200, expr: !DIExpression())
!4200 = distinct !DIGlobalVariable(scope: null, file: !3, line: 229, type: !4196, isLocal: true, isDefinition: true)
!4201 = !DIGlobalVariableExpression(var: !4202, expr: !DIExpression())
!4202 = distinct !DIGlobalVariable(scope: null, file: !96, line: 480, type: !4203, isLocal: true, isDefinition: true)
!4203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 168, elements: !4204)
!4204 = !{!4205}
!4205 = !DISubrange(count: 21)
!4206 = !DIGlobalVariableExpression(var: !4207, expr: !DIExpression())
!4207 = distinct !DIGlobalVariable(scope: null, file: !3, line: 255, type: !4158, isLocal: true, isDefinition: true)
!4208 = !DIGlobalVariableExpression(var: !4209, expr: !DIExpression())
!4209 = distinct !DIGlobalVariable(scope: null, file: !3, line: 255, type: !4210, isLocal: true, isDefinition: true)
!4210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 136, elements: !4211)
!4211 = !{!4212}
!4212 = !DISubrange(count: 17)
!4213 = !DIGlobalVariableExpression(var: !4214, expr: !DIExpression())
!4214 = distinct !DIGlobalVariable(scope: null, file: !3, line: 277, type: !4158, isLocal: true, isDefinition: true)
!4215 = !DIGlobalVariableExpression(var: !4216, expr: !DIExpression())
!4216 = distinct !DIGlobalVariable(scope: null, file: !3, line: 301, type: !4217, isLocal: true, isDefinition: true)
!4217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 40, elements: !4218)
!4218 = !{!4219}
!4219 = !DISubrange(count: 5)
!4220 = !DIGlobalVariableExpression(var: !4221, expr: !DIExpression())
!4221 = distinct !DIGlobalVariable(scope: null, file: !3, line: 303, type: !4217, isLocal: true, isDefinition: true)
!4222 = !DIGlobalVariableExpression(var: !4223, expr: !DIExpression())
!4223 = distinct !DIGlobalVariable(scope: null, file: !3, line: 351, type: !4224, isLocal: true, isDefinition: true)
!4224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 112, elements: !4225)
!4225 = !{!4226}
!4226 = !DISubrange(count: 14)
!4227 = !DIGlobalVariableExpression(var: !4228, expr: !DIExpression())
!4228 = distinct !DIGlobalVariable(scope: null, file: !3, line: 372, type: !4229, isLocal: true, isDefinition: true)
!4229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 304, elements: !4230)
!4230 = !{!4231}
!4231 = !DISubrange(count: 38)
!4232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 304, elements: !4230)
!4233 = !{i32 7, !"Dwarf Version", i32 5}
!4234 = !{i32 2, !"Debug Info Version", i32 3}
!4235 = !{i32 1, !"wchar_size", i32 2}
!4236 = !{i32 8, !"cf-protection-branch", i32 1}
!4237 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4238 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4239 = !{i32 1, !"Code Model", i32 2}
!4240 = !{i32 1, !"override-stack-alignment", i32 8}
!4241 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4242 = !DILocation(line: 92, column: 53, scope: !4103)
!4243 = !DILocation(line: 94, column: 2, scope: !4103)
!4244 = !DILocation(line: 94, column: 27, scope: !4103)
!4245 = !DILocation(line: 95, column: 2, scope: !4103)
!4246 = !DILocation(line: 95, column: 16, scope: !4103)
!4247 = !DILocation(line: 96, column: 2, scope: !4103)
!4248 = !DILocation(line: 96, column: 6, scope: !4103)
!4249 = !DILocation(line: 97, column: 2, scope: !4103)
!4250 = !DILocation(line: 97, column: 6, scope: !4103)
!4251 = !DILocation(line: 97, column: 16, scope: !4103)
!4252 = !DILocation(line: 97, column: 22, scope: !4103)
!4253 = !DILocation(line: 97, column: 31, scope: !4103)
!4254 = !DILocation(line: 98, column: 2, scope: !4103)
!4255 = !DILocation(line: 98, column: 14, scope: !4103)
!4256 = !DILocation(line: 98, column: 21, scope: !4103)
!4257 = !DILocation(line: 98, column: 27, scope: !4103)
!4258 = !DILocation(line: 98, column: 34, scope: !4103)
!4259 = !DILocation(line: 98, column: 40, scope: !4103)
!4260 = !DILocation(line: 100, column: 6, scope: !4261)
!4261 = distinct !DILexicalBlock(scope: !4103, file: !3, line: 100, column: 6)
!4262 = !DILocation(line: 100, column: 14, scope: !4261)
!4263 = !DILocation(line: 100, column: 19, scope: !4261)
!4264 = !DILocation(line: 100, column: 23, scope: !4261)
!4265 = !DILocation(line: 100, column: 6, scope: !4103)
!4266 = !DILocation(line: 101, column: 3, scope: !4261)
!4267 = !DILocation(line: 103, column: 6, scope: !4123)
!4268 = !DILocation(line: 103, column: 14, scope: !4123)
!4269 = !DILocation(line: 103, column: 6, scope: !4103)
!4270 = !DILocation(line: 104, column: 3, scope: !4122)
!4271 = !DILocation(line: 104, column: 43, scope: !4122)
!4272 = !DILocation(line: 107, column: 7, scope: !4273)
!4273 = distinct !DILexicalBlock(scope: !4122, file: !3, line: 107, column: 7)
!4274 = !DILocation(line: 107, column: 15, scope: !4273)
!4275 = !DILocation(line: 107, column: 7, scope: !4122)
!4276 = !DILocation(line: 108, column: 4, scope: !4273)
!4277 = !DILocation(line: 110, column: 50, scope: !4122)
!4278 = !DILocation(line: 110, column: 6, scope: !4122)
!4279 = !DILocation(line: 111, column: 3, scope: !4122)
!4280 = !DILocation(line: 111, column: 3, scope: !4281)
!4281 = distinct !DILexicalBlock(scope: !4282, file: !3, line: 111, column: 3)
!4282 = distinct !DILexicalBlock(scope: !4122, file: !3, line: 111, column: 3)
!4283 = !DILocation(line: 111, column: 3, scope: !4282)
!4284 = !DILocation(line: 111, column: 3, scope: !4285)
!4285 = distinct !DILexicalBlock(scope: !4281, file: !3, line: 111, column: 3)
!4286 = !DILocation(line: 111, column: 3, scope: !4287)
!4287 = distinct !DILexicalBlock(scope: !4285, file: !3, line: 111, column: 3)
!4288 = !DILocation(line: 112, column: 7, scope: !4289)
!4289 = distinct !DILexicalBlock(scope: !4122, file: !3, line: 112, column: 7)
!4290 = !DILocation(line: 112, column: 11, scope: !4289)
!4291 = !DILocation(line: 112, column: 15, scope: !4289)
!4292 = !DILocation(line: 112, column: 23, scope: !4289)
!4293 = !DILocation(line: 112, column: 7, scope: !4122)
!4294 = !DILocation(line: 113, column: 4, scope: !4295)
!4295 = distinct !DILexicalBlock(scope: !4296, file: !3, line: 113, column: 4)
!4296 = distinct !DILexicalBlock(scope: !4297, file: !3, line: 113, column: 4)
!4297 = distinct !DILexicalBlock(scope: !4289, file: !3, line: 112, column: 54)
!4298 = !DILocation(line: 113, column: 4, scope: !4296)
!4299 = !DILocation(line: 113, column: 4, scope: !4300)
!4300 = distinct !DILexicalBlock(scope: !4295, file: !3, line: 113, column: 4)
!4301 = !DILocation(line: 113, column: 4, scope: !4302)
!4302 = distinct !DILexicalBlock(scope: !4300, file: !3, line: 113, column: 4)
!4303 = !DILocation(line: 116, column: 4, scope: !4297)
!4304 = !DILocation(line: 119, column: 7, scope: !4305)
!4305 = distinct !DILexicalBlock(scope: !4122, file: !3, line: 119, column: 7)
!4306 = !DILocation(line: 119, column: 11, scope: !4305)
!4307 = !DILocation(line: 119, column: 15, scope: !4305)
!4308 = !DILocation(line: 119, column: 23, scope: !4305)
!4309 = !DILocation(line: 119, column: 7, scope: !4122)
!4310 = !DILocation(line: 120, column: 4, scope: !4311)
!4311 = distinct !DILexicalBlock(scope: !4312, file: !3, line: 120, column: 4)
!4312 = distinct !DILexicalBlock(scope: !4313, file: !3, line: 120, column: 4)
!4313 = distinct !DILexicalBlock(scope: !4305, file: !3, line: 119, column: 29)
!4314 = !DILocation(line: 120, column: 4, scope: !4312)
!4315 = !DILocation(line: 120, column: 4, scope: !4316)
!4316 = distinct !DILexicalBlock(scope: !4311, file: !3, line: 120, column: 4)
!4317 = !DILocation(line: 120, column: 4, scope: !4318)
!4318 = distinct !DILexicalBlock(scope: !4316, file: !3, line: 120, column: 4)
!4319 = !DILocation(line: 123, column: 4, scope: !4313)
!4320 = !DILocation(line: 126, column: 8, scope: !4321)
!4321 = distinct !DILexicalBlock(scope: !4122, file: !3, line: 126, column: 7)
!4322 = !DILocation(line: 126, column: 12, scope: !4321)
!4323 = !DILocation(line: 126, column: 19, scope: !4321)
!4324 = !DILocation(line: 126, column: 38, scope: !4321)
!4325 = !DILocation(line: 127, column: 8, scope: !4321)
!4326 = !DILocation(line: 127, column: 12, scope: !4321)
!4327 = !DILocation(line: 127, column: 19, scope: !4321)
!4328 = !DILocation(line: 126, column: 7, scope: !4122)
!4329 = !DILocation(line: 128, column: 8, scope: !4330)
!4330 = distinct !DILexicalBlock(scope: !4331, file: !3, line: 128, column: 8)
!4331 = distinct !DILexicalBlock(scope: !4321, file: !3, line: 127, column: 49)
!4332 = !DILocation(line: 128, column: 14, scope: !4330)
!4333 = !DILocation(line: 128, column: 21, scope: !4330)
!4334 = !DILocation(line: 128, column: 8, scope: !4331)
!4335 = !DILocation(line: 129, column: 20, scope: !4330)
!4336 = !DILocation(line: 129, column: 45, scope: !4330)
!4337 = !DILocation(line: 129, column: 5, scope: !4330)
!4338 = !DILocation(line: 129, column: 11, scope: !4330)
!4339 = !DILocation(line: 129, column: 18, scope: !4330)
!4340 = !DILocation(line: 130, column: 3, scope: !4331)
!4341 = !DILocation(line: 132, column: 16, scope: !4122)
!4342 = !DILocation(line: 132, column: 14, scope: !4122)
!4343 = !DILocation(line: 133, column: 3, scope: !4122)
!4344 = !DILocation(line: 134, column: 2, scope: !4123)
!4345 = !DILocation(line: 136, column: 2, scope: !4103)
!4346 = !DILocation(line: 136, column: 2, scope: !4347)
!4347 = distinct !DILexicalBlock(scope: !4348, file: !3, line: 136, column: 2)
!4348 = distinct !DILexicalBlock(scope: !4103, file: !3, line: 136, column: 2)
!4349 = !DILocation(line: 136, column: 2, scope: !4348)
!4350 = !DILocation(line: 136, column: 2, scope: !4351)
!4351 = distinct !DILexicalBlock(scope: !4347, file: !3, line: 136, column: 2)
!4352 = !DILocation(line: 136, column: 2, scope: !4353)
!4353 = distinct !DILexicalBlock(scope: !4351, file: !3, line: 136, column: 2)
!4354 = !DILocation(line: 138, column: 7, scope: !4355)
!4355 = distinct !DILexicalBlock(scope: !4103, file: !3, line: 138, column: 6)
!4356 = !DILocation(line: 138, column: 12, scope: !4355)
!4357 = !DILocation(line: 138, column: 15, scope: !4355)
!4358 = !DILocation(line: 138, column: 20, scope: !4355)
!4359 = !DILocation(line: 138, column: 28, scope: !4355)
!4360 = !DILocation(line: 138, column: 33, scope: !4355)
!4361 = !DILocation(line: 138, column: 6, scope: !4103)
!4362 = !DILocation(line: 139, column: 3, scope: !4355)
!4363 = !DILocation(line: 140, column: 9, scope: !4103)
!4364 = !DILocation(line: 143, column: 8, scope: !4103)
!4365 = !DILocation(line: 143, column: 15, scope: !4103)
!4366 = !DILocation(line: 143, column: 13, scope: !4103)
!4367 = !DILocation(line: 143, column: 6, scope: !4103)
!4368 = !DILocation(line: 144, column: 15, scope: !4103)
!4369 = !DILocation(line: 144, column: 26, scope: !4103)
!4370 = !DILocation(line: 144, column: 8, scope: !4103)
!4371 = !DILocation(line: 144, column: 6, scope: !4103)
!4372 = !DILocation(line: 145, column: 7, scope: !4126)
!4373 = !DILocation(line: 145, column: 6, scope: !4103)
!4374 = !DILocation(line: 147, column: 3, scope: !4375)
!4375 = distinct !DILexicalBlock(scope: !4126, file: !3, line: 145, column: 12)
!4376 = !DILocation(line: 147, column: 3, scope: !4377)
!4377 = distinct !DILexicalBlock(scope: !4378, file: !3, line: 147, column: 3)
!4378 = distinct !DILexicalBlock(scope: !4375, file: !3, line: 147, column: 3)
!4379 = !DILocation(line: 147, column: 3, scope: !4378)
!4380 = !DILocation(line: 147, column: 3, scope: !4381)
!4381 = distinct !DILexicalBlock(scope: !4377, file: !3, line: 147, column: 3)
!4382 = !DILocation(line: 147, column: 3, scope: !4383)
!4383 = distinct !DILexicalBlock(scope: !4381, file: !3, line: 147, column: 3)
!4384 = !DILocation(line: 148, column: 16, scope: !4375)
!4385 = !DILocation(line: 148, column: 14, scope: !4375)
!4386 = !DILocation(line: 149, column: 2, scope: !4375)
!4387 = !DILocation(line: 150, column: 3, scope: !4125)
!4388 = !DILocation(line: 150, column: 15, scope: !4125)
!4389 = !DILocation(line: 152, column: 16, scope: !4125)
!4390 = !DILocation(line: 152, column: 22, scope: !4125)
!4391 = !DILocation(line: 152, column: 20, scope: !4125)
!4392 = !DILocation(line: 152, column: 14, scope: !4125)
!4393 = !DILocation(line: 153, column: 6, scope: !4125)
!4394 = !DILocation(line: 154, column: 3, scope: !4125)
!4395 = !DILocation(line: 154, column: 3, scope: !4396)
!4396 = distinct !DILexicalBlock(scope: !4397, file: !3, line: 154, column: 3)
!4397 = distinct !DILexicalBlock(scope: !4125, file: !3, line: 154, column: 3)
!4398 = !DILocation(line: 154, column: 3, scope: !4397)
!4399 = !DILocation(line: 154, column: 3, scope: !4400)
!4400 = distinct !DILexicalBlock(scope: !4396, file: !3, line: 154, column: 3)
!4401 = !DILocation(line: 154, column: 3, scope: !4402)
!4402 = distinct !DILexicalBlock(scope: !4400, file: !3, line: 154, column: 3)
!4403 = !DILocation(line: 155, column: 3, scope: !4125)
!4404 = !DILocation(line: 156, column: 4, scope: !4128)
!4405 = !DILocation(line: 156, column: 8, scope: !4128)
!4406 = !DILocation(line: 156, column: 17, scope: !4128)
!4407 = !DILocation(line: 157, column: 4, scope: !4128)
!4408 = !DILocation(line: 157, column: 16, scope: !4128)
!4409 = !DILocation(line: 158, column: 4, scope: !4128)
!4410 = !DILocation(line: 158, column: 9, scope: !4128)
!4411 = !DILocation(line: 160, column: 22, scope: !4128)
!4412 = !DILocation(line: 160, column: 32, scope: !4128)
!4413 = !DILocation(line: 160, column: 38, scope: !4128)
!4414 = !DILocation(line: 160, column: 36, scope: !4128)
!4415 = !DILocation(line: 160, column: 15, scope: !4128)
!4416 = !DILocation(line: 160, column: 46, scope: !4128)
!4417 = !DILocation(line: 160, column: 13, scope: !4128)
!4418 = !DILocation(line: 161, column: 14, scope: !4128)
!4419 = !DILocation(line: 161, column: 25, scope: !4128)
!4420 = !DILocation(line: 161, column: 23, scope: !4128)
!4421 = !DILocation(line: 161, column: 12, scope: !4128)
!4422 = !DILocation(line: 162, column: 8, scope: !4423)
!4423 = distinct !DILexicalBlock(scope: !4128, file: !3, line: 162, column: 8)
!4424 = !DILocation(line: 162, column: 16, scope: !4423)
!4425 = !DILocation(line: 162, column: 21, scope: !4423)
!4426 = !DILocation(line: 162, column: 24, scope: !4423)
!4427 = !DILocation(line: 162, column: 32, scope: !4423)
!4428 = !DILocation(line: 162, column: 8, scope: !4128)
!4429 = !DILocation(line: 163, column: 5, scope: !4430)
!4430 = distinct !DILexicalBlock(scope: !4431, file: !3, line: 163, column: 5)
!4431 = distinct !DILexicalBlock(scope: !4432, file: !3, line: 163, column: 5)
!4432 = distinct !DILexicalBlock(scope: !4423, file: !3, line: 162, column: 50)
!4433 = !DILocation(line: 163, column: 5, scope: !4431)
!4434 = !DILocation(line: 163, column: 5, scope: !4435)
!4435 = distinct !DILexicalBlock(scope: !4430, file: !3, line: 163, column: 5)
!4436 = !DILocation(line: 163, column: 5, scope: !4437)
!4437 = distinct !DILexicalBlock(scope: !4435, file: !3, line: 163, column: 5)
!4438 = !DILocation(line: 165, column: 5, scope: !4432)
!4439 = !DILocation(line: 168, column: 16, scope: !4128)
!4440 = !DILocation(line: 168, column: 26, scope: !4128)
!4441 = !DILocation(line: 168, column: 9, scope: !4128)
!4442 = !DILocation(line: 168, column: 7, scope: !4128)
!4443 = !DILocation(line: 169, column: 8, scope: !4444)
!4444 = distinct !DILexicalBlock(scope: !4128, file: !3, line: 169, column: 8)
!4445 = !DILocation(line: 169, column: 8, scope: !4128)
!4446 = !DILocation(line: 170, column: 16, scope: !4447)
!4447 = distinct !DILexicalBlock(scope: !4444, file: !3, line: 169, column: 12)
!4448 = !DILocation(line: 170, column: 21, scope: !4447)
!4449 = !DILocation(line: 170, column: 19, scope: !4447)
!4450 = !DILocation(line: 170, column: 14, scope: !4447)
!4451 = !DILocation(line: 171, column: 7, scope: !4447)
!4452 = !DILocation(line: 172, column: 5, scope: !4447)
!4453 = !DILocation(line: 172, column: 20, scope: !4447)
!4454 = !DILocation(line: 172, column: 24, scope: !4447)
!4455 = !DILocation(line: 172, column: 35, scope: !4447)
!4456 = !DILocation(line: 172, column: 33, scope: !4447)
!4457 = !DILocation(line: 173, column: 12, scope: !4447)
!4458 = !DILocation(line: 173, column: 23, scope: !4447)
!4459 = !DILocation(line: 173, column: 21, scope: !4447)
!4460 = !DILocation(line: 173, column: 5, scope: !4447)
!4461 = !DILocation(line: 173, column: 27, scope: !4447)
!4462 = !DILocation(line: 174, column: 4, scope: !4447)
!4463 = !DILocation(line: 175, column: 16, scope: !4464)
!4464 = distinct !DILexicalBlock(scope: !4444, file: !3, line: 174, column: 11)
!4465 = !DILocation(line: 175, column: 14, scope: !4464)
!4466 = !DILocation(line: 176, column: 5, scope: !4464)
!4467 = !DILocation(line: 176, column: 15, scope: !4464)
!4468 = !DILocation(line: 179, column: 4, scope: !4128)
!4469 = !DILocation(line: 179, column: 4, scope: !4470)
!4470 = distinct !DILexicalBlock(scope: !4471, file: !3, line: 179, column: 4)
!4471 = distinct !DILexicalBlock(scope: !4128, file: !3, line: 179, column: 4)
!4472 = !DILocation(line: 179, column: 4, scope: !4471)
!4473 = !DILocation(line: 179, column: 4, scope: !4474)
!4474 = distinct !DILexicalBlock(scope: !4470, file: !3, line: 179, column: 4)
!4475 = !DILocation(line: 179, column: 4, scope: !4476)
!4476 = distinct !DILexicalBlock(scope: !4474, file: !3, line: 179, column: 4)
!4477 = !DILocation(line: 184, column: 8, scope: !4478)
!4478 = distinct !DILexicalBlock(scope: !4128, file: !3, line: 184, column: 8)
!4479 = !DILocation(line: 184, column: 17, scope: !4478)
!4480 = !DILocation(line: 184, column: 51, scope: !4478)
!4481 = !DILocation(line: 185, column: 15, scope: !4478)
!4482 = !DILocation(line: 185, column: 40, scope: !4478)
!4483 = !DILocation(line: 185, column: 8, scope: !4478)
!4484 = !DILocation(line: 185, column: 50, scope: !4478)
!4485 = !DILocation(line: 184, column: 8, scope: !4128)
!4486 = !DILocation(line: 186, column: 5, scope: !4487)
!4487 = distinct !DILexicalBlock(scope: !4478, file: !3, line: 185, column: 56)
!4488 = !DILocation(line: 186, column: 5, scope: !4489)
!4489 = distinct !DILexicalBlock(scope: !4490, file: !3, line: 186, column: 5)
!4490 = distinct !DILexicalBlock(scope: !4487, file: !3, line: 186, column: 5)
!4491 = !DILocation(line: 186, column: 5, scope: !4490)
!4492 = !DILocation(line: 186, column: 5, scope: !4493)
!4493 = distinct !DILexicalBlock(scope: !4489, file: !3, line: 186, column: 5)
!4494 = !DILocation(line: 186, column: 5, scope: !4495)
!4495 = distinct !DILexicalBlock(scope: !4493, file: !3, line: 186, column: 5)
!4496 = !DILocation(line: 188, column: 20, scope: !4487)
!4497 = !DILocation(line: 188, column: 11, scope: !4487)
!4498 = !DILocation(line: 188, column: 9, scope: !4487)
!4499 = !DILocation(line: 189, column: 9, scope: !4500)
!4500 = distinct !DILexicalBlock(scope: !4487, file: !3, line: 189, column: 9)
!4501 = !DILocation(line: 189, column: 13, scope: !4500)
!4502 = !DILocation(line: 189, column: 9, scope: !4487)
!4503 = !DILocation(line: 190, column: 6, scope: !4500)
!4504 = !DILocation(line: 192, column: 9, scope: !4505)
!4505 = distinct !DILexicalBlock(scope: !4487, file: !3, line: 192, column: 9)
!4506 = !DILocation(line: 192, column: 16, scope: !4505)
!4507 = !DILocation(line: 192, column: 20, scope: !4505)
!4508 = !DILocation(line: 192, column: 23, scope: !4505)
!4509 = !DILocation(line: 192, column: 30, scope: !4505)
!4510 = !DILocation(line: 192, column: 9, scope: !4487)
!4511 = !DILocation(line: 193, column: 6, scope: !4505)
!4512 = !DILocation(line: 195, column: 5, scope: !4487)
!4513 = !DILocation(line: 195, column: 5, scope: !4514)
!4514 = distinct !DILexicalBlock(scope: !4515, file: !3, line: 195, column: 5)
!4515 = distinct !DILexicalBlock(scope: !4487, file: !3, line: 195, column: 5)
!4516 = !DILocation(line: 195, column: 5, scope: !4515)
!4517 = !DILocation(line: 195, column: 5, scope: !4518)
!4518 = distinct !DILexicalBlock(scope: !4514, file: !3, line: 195, column: 5)
!4519 = !DILocation(line: 195, column: 5, scope: !4520)
!4520 = distinct !DILexicalBlock(scope: !4518, file: !3, line: 195, column: 5)
!4521 = !DILocation(line: 196, column: 50, scope: !4487)
!4522 = !DILocation(line: 196, column: 49, scope: !4487)
!4523 = !DILocation(line: 196, column: 41, scope: !4487)
!4524 = !DILocation(line: 196, column: 5, scope: !4487)
!4525 = !DILocation(line: 196, column: 11, scope: !4487)
!4526 = !DILocation(line: 196, column: 39, scope: !4487)
!4527 = !DILocation(line: 197, column: 5, scope: !4487)
!4528 = !DILocation(line: 185, column: 53, scope: !4478)
!4529 = !DILocation(line: 200, column: 3, scope: !4128)
!4530 = !DILocation(line: 201, column: 4, scope: !4531)
!4531 = distinct !DILexicalBlock(scope: !4532, file: !3, line: 201, column: 4)
!4532 = distinct !DILexicalBlock(scope: !4128, file: !3, line: 201, column: 4)
!4533 = !DILocation(line: 201, column: 4, scope: !4532)
!4534 = !DILocation(line: 201, column: 4, scope: !4535)
!4535 = distinct !DILexicalBlock(scope: !4531, file: !3, line: 201, column: 4)
!4536 = !DILocation(line: 201, column: 4, scope: !4537)
!4537 = distinct !DILexicalBlock(scope: !4535, file: !3, line: 201, column: 4)
!4538 = !DILocation(line: 203, column: 4, scope: !4128)
!4539 = !DILocation(line: 204, column: 3, scope: !4125)
!4540 = !DILocation(line: 204, column: 18, scope: !4125)
!4541 = !DILocation(line: 204, column: 27, scope: !4125)
!4542 = !DILocation(line: 204, column: 16, scope: !4125)
!4543 = !DILocation(line: 204, column: 32, scope: !4125)
!4544 = !DILocation(line: 204, column: 38, scope: !4125)
!4545 = !DILocation(line: 204, column: 36, scope: !4125)
!4546 = !DILocation(line: 204, column: 3, scope: !4128)
!4547 = distinct !{!4547, !4403, !4548, !4549, !4550}
!4548 = !DILocation(line: 204, column: 41, scope: !4125)
!4549 = !{!"llvm.loop.mustprogress"}
!4550 = !{!"llvm.loop.unroll.disable"}
!4551 = !DILocation(line: 205, column: 2, scope: !4126)
!4552 = !DILocation(line: 209, column: 6, scope: !4553)
!4553 = distinct !DILexicalBlock(scope: !4103, file: !3, line: 209, column: 6)
!4554 = !DILocation(line: 209, column: 12, scope: !4553)
!4555 = !DILocation(line: 209, column: 6, scope: !4103)
!4556 = !DILocation(line: 210, column: 3, scope: !4557)
!4557 = distinct !DILexicalBlock(scope: !4553, file: !3, line: 209, column: 41)
!4558 = !DILocation(line: 210, column: 3, scope: !4559)
!4559 = distinct !DILexicalBlock(scope: !4560, file: !3, line: 210, column: 3)
!4560 = distinct !DILexicalBlock(scope: !4557, file: !3, line: 210, column: 3)
!4561 = !DILocation(line: 210, column: 3, scope: !4560)
!4562 = !DILocation(line: 210, column: 3, scope: !4563)
!4563 = distinct !DILexicalBlock(scope: !4559, file: !3, line: 210, column: 3)
!4564 = !DILocation(line: 210, column: 3, scope: !4565)
!4565 = distinct !DILexicalBlock(scope: !4563, file: !3, line: 210, column: 3)
!4566 = !DILocation(line: 211, column: 3, scope: !4557)
!4567 = !DILocation(line: 209, column: 38, scope: !4553)
!4568 = !DILocation(line: 214, column: 1, scope: !4103)
!4569 = !DILocation(line: 215, column: 2, scope: !4103)
!4570 = !DILocation(line: 215, column: 2, scope: !4571)
!4571 = distinct !DILexicalBlock(scope: !4572, file: !3, line: 215, column: 2)
!4572 = distinct !DILexicalBlock(scope: !4103, file: !3, line: 215, column: 2)
!4573 = !DILocation(line: 215, column: 2, scope: !4572)
!4574 = !DILocation(line: 215, column: 2, scope: !4575)
!4575 = distinct !DILexicalBlock(scope: !4571, file: !3, line: 215, column: 2)
!4576 = !DILocation(line: 215, column: 2, scope: !4577)
!4577 = distinct !DILexicalBlock(scope: !4575, file: !3, line: 215, column: 2)
!4578 = !DILocation(line: 216, column: 19, scope: !4103)
!4579 = !DILocation(line: 216, column: 2, scope: !4103)
!4580 = !DILocation(line: 216, column: 8, scope: !4103)
!4581 = !DILocation(line: 216, column: 17, scope: !4103)
!4582 = !DILocation(line: 218, column: 41, scope: !4103)
!4583 = !DILocation(line: 218, column: 39, scope: !4103)
!4584 = !DILocation(line: 218, column: 52, scope: !4103)
!4585 = !DILocation(line: 218, column: 13, scope: !4103)
!4586 = !DILocation(line: 218, column: 11, scope: !4103)
!4587 = !DILocation(line: 219, column: 7, scope: !4588)
!4588 = distinct !DILexicalBlock(scope: !4103, file: !3, line: 219, column: 6)
!4589 = !DILocation(line: 219, column: 6, scope: !4103)
!4590 = !DILocation(line: 220, column: 3, scope: !4591)
!4591 = distinct !DILexicalBlock(scope: !4588, file: !3, line: 219, column: 17)
!4592 = !DILocation(line: 220, column: 3, scope: !4593)
!4593 = distinct !DILexicalBlock(scope: !4594, file: !3, line: 220, column: 3)
!4594 = distinct !DILexicalBlock(scope: !4591, file: !3, line: 220, column: 3)
!4595 = !DILocation(line: 220, column: 3, scope: !4594)
!4596 = !DILocation(line: 220, column: 3, scope: !4597)
!4597 = distinct !DILexicalBlock(scope: !4593, file: !3, line: 220, column: 3)
!4598 = !DILocation(line: 220, column: 3, scope: !4599)
!4599 = distinct !DILexicalBlock(scope: !4597, file: !3, line: 220, column: 3)
!4600 = !DILocation(line: 221, column: 3, scope: !4591)
!4601 = !DILocation(line: 224, column: 22, scope: !4103)
!4602 = !DILocation(line: 224, column: 2, scope: !4103)
!4603 = !DILocation(line: 224, column: 12, scope: !4103)
!4604 = !DILocation(line: 224, column: 20, scope: !4103)
!4605 = !DILocation(line: 225, column: 9, scope: !4103)
!4606 = !DILocation(line: 225, column: 19, scope: !4103)
!4607 = !DILocation(line: 225, column: 2, scope: !4103)
!4608 = !DILocation(line: 225, column: 25, scope: !4103)
!4609 = !DILocation(line: 225, column: 31, scope: !4103)
!4610 = !DILocation(line: 226, column: 2, scope: !4103)
!4611 = !DILocation(line: 226, column: 12, scope: !4103)
!4612 = !DILocation(line: 226, column: 17, scope: !4103)
!4613 = !DILocation(line: 226, column: 29, scope: !4103)
!4614 = !DILocation(line: 228, column: 37, scope: !4103)
!4615 = !DILocation(line: 228, column: 2, scope: !4103)
!4616 = !DILocation(line: 228, column: 8, scope: !4103)
!4617 = !DILocation(line: 228, column: 35, scope: !4103)
!4618 = !DILocation(line: 229, column: 2, scope: !4103)
!4619 = !DILocation(line: 229, column: 2, scope: !4620)
!4620 = distinct !DILexicalBlock(scope: !4621, file: !3, line: 229, column: 2)
!4621 = distinct !DILexicalBlock(scope: !4103, file: !3, line: 229, column: 2)
!4622 = !DILocation(line: 229, column: 2, scope: !4621)
!4623 = !DILocation(line: 229, column: 2, scope: !4624)
!4624 = distinct !DILexicalBlock(scope: !4620, file: !3, line: 229, column: 2)
!4625 = !DILocation(line: 229, column: 2, scope: !4626)
!4626 = distinct !DILexicalBlock(scope: !4624, file: !3, line: 229, column: 2)
!4627 = !DILocation(line: 230, column: 2, scope: !4103)
!4628 = !DILocation(line: 231, column: 1, scope: !4103)
!4629 = distinct !DISubprogram(name: "dns_resolver_free_preparse", scope: !3, file: !3, line: 236, type: !854, scopeLine: 237, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4630)
!4630 = !{!4631}
!4631 = !DILocalVariable(name: "prep", arg: 1, scope: !4629, file: !3, line: 236, type: !835)
!4632 = !DILocation(line: 236, column: 70, scope: !4629)
!4633 = !DILocation(line: 238, column: 2, scope: !4634)
!4634 = distinct !DILexicalBlock(scope: !4635, file: !3, line: 238, column: 2)
!4635 = distinct !DILexicalBlock(scope: !4629, file: !3, line: 238, column: 2)
!4636 = !DILocation(line: 238, column: 2, scope: !4635)
!4637 = !DILocation(line: 240, column: 8, scope: !4629)
!4638 = !DILocation(line: 240, column: 14, scope: !4629)
!4639 = !DILocation(line: 240, column: 2, scope: !4629)
!4640 = !DILocation(line: 241, column: 1, scope: !4629)
!4641 = distinct !DISubprogram(name: "dns_resolver_match_preparse", scope: !3, file: !3, line: 284, type: !863, scopeLine: 285, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4642)
!4642 = !{!4643}
!4643 = !DILocalVariable(name: "match_data", arg: 1, scope: !4641, file: !3, line: 284, type: !865)
!4644 = !DILocation(line: 284, column: 63, scope: !4641)
!4645 = !DILocation(line: 286, column: 2, scope: !4641)
!4646 = !DILocation(line: 286, column: 14, scope: !4641)
!4647 = !DILocation(line: 286, column: 26, scope: !4641)
!4648 = !DILocation(line: 287, column: 2, scope: !4641)
!4649 = !DILocation(line: 287, column: 14, scope: !4641)
!4650 = !DILocation(line: 287, column: 18, scope: !4641)
!4651 = !DILocation(line: 288, column: 2, scope: !4641)
!4652 = distinct !DISubprogram(name: "dns_resolver_describe", scope: !3, file: !3, line: 294, type: !892, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4653)
!4653 = !{!4654, !4655, !4656}
!4654 = !DILocalVariable(name: "key", arg: 1, scope: !4652, file: !3, line: 294, type: !874)
!4655 = !DILocalVariable(name: "m", arg: 2, scope: !4652, file: !3, line: 294, type: !571)
!4656 = !DILocalVariable(name: "err", scope: !4657, file: !3, line: 298, type: !170)
!4657 = distinct !DILexicalBlock(scope: !4658, file: !3, line: 297, column: 28)
!4658 = distinct !DILexicalBlock(scope: !4652, file: !3, line: 297, column: 6)
!4659 = !DILocation(line: 294, column: 53, scope: !4652)
!4660 = !DILocation(line: 294, column: 75, scope: !4652)
!4661 = !DILocation(line: 296, column: 11, scope: !4652)
!4662 = !DILocation(line: 296, column: 14, scope: !4652)
!4663 = !DILocation(line: 296, column: 19, scope: !4652)
!4664 = !DILocation(line: 296, column: 2, scope: !4652)
!4665 = !DILocation(line: 297, column: 22, scope: !4658)
!4666 = !DILocation(line: 297, column: 6, scope: !4658)
!4667 = !DILocation(line: 297, column: 6, scope: !4652)
!4668 = !DILocation(line: 298, column: 3, scope: !4657)
!4669 = !DILocation(line: 298, column: 7, scope: !4657)
!4670 = !DILocation(line: 298, column: 21, scope: !4657)
!4671 = !DILocation(line: 298, column: 26, scope: !4657)
!4672 = !DILocation(line: 298, column: 13, scope: !4657)
!4673 = !DILocation(line: 300, column: 7, scope: !4674)
!4674 = distinct !DILexicalBlock(scope: !4657, file: !3, line: 300, column: 7)
!4675 = !DILocation(line: 300, column: 7, scope: !4657)
!4676 = !DILocation(line: 301, column: 15, scope: !4674)
!4677 = !DILocation(line: 301, column: 26, scope: !4674)
!4678 = !DILocation(line: 301, column: 4, scope: !4674)
!4679 = !DILocation(line: 303, column: 15, scope: !4674)
!4680 = !DILocation(line: 303, column: 26, scope: !4674)
!4681 = !DILocation(line: 303, column: 31, scope: !4674)
!4682 = !DILocation(line: 303, column: 4, scope: !4674)
!4683 = !DILocation(line: 304, column: 2, scope: !4658)
!4684 = !DILocation(line: 304, column: 2, scope: !4657)
!4685 = !DILocation(line: 305, column: 1, scope: !4652)
!4686 = distinct !DISubprogram(name: "dns_resolver_read", scope: !3, file: !3, line: 311, type: !896, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4687)
!4687 = !{!4688, !4689, !4690, !4691}
!4688 = !DILocalVariable(name: "key", arg: 1, scope: !4686, file: !3, line: 311, type: !874)
!4689 = !DILocalVariable(name: "buffer", arg: 2, scope: !4686, file: !3, line: 312, type: !217)
!4690 = !DILocalVariable(name: "buflen", arg: 3, scope: !4686, file: !3, line: 312, type: !264)
!4691 = !DILocalVariable(name: "err", scope: !4686, file: !3, line: 314, type: !170)
!4692 = !DILocation(line: 311, column: 49, scope: !4686)
!4693 = !DILocation(line: 312, column: 16, scope: !4686)
!4694 = !DILocation(line: 312, column: 31, scope: !4686)
!4695 = !DILocation(line: 314, column: 2, scope: !4686)
!4696 = !DILocation(line: 314, column: 6, scope: !4686)
!4697 = !DILocation(line: 314, column: 20, scope: !4686)
!4698 = !DILocation(line: 314, column: 25, scope: !4686)
!4699 = !DILocation(line: 314, column: 12, scope: !4686)
!4700 = !DILocation(line: 316, column: 6, scope: !4701)
!4701 = distinct !DILexicalBlock(scope: !4686, file: !3, line: 316, column: 6)
!4702 = !DILocation(line: 316, column: 6, scope: !4686)
!4703 = !DILocation(line: 317, column: 10, scope: !4701)
!4704 = !DILocation(line: 317, column: 3, scope: !4701)
!4705 = !DILocation(line: 319, column: 19, scope: !4686)
!4706 = !DILocation(line: 319, column: 24, scope: !4686)
!4707 = !DILocation(line: 319, column: 32, scope: !4686)
!4708 = !DILocation(line: 319, column: 9, scope: !4686)
!4709 = !DILocation(line: 319, column: 2, scope: !4686)
!4710 = !DILocation(line: 320, column: 1, scope: !4686)
!4711 = distinct !DISubprogram(name: "exit_dns_resolver", scope: !3, file: !3, line: 382, type: !2395, scopeLine: 383, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4712 = !DILocation(line: 384, column: 13, scope: !4711)
!4713 = !DILocation(line: 384, column: 33, scope: !4711)
!4714 = !DILocation(line: 384, column: 2, scope: !4711)
!4715 = !DILocation(line: 385, column: 2, scope: !4711)
!4716 = !DILocation(line: 386, column: 11, scope: !4711)
!4717 = !DILocation(line: 386, column: 2, scope: !4711)
!4718 = !DILocation(line: 387, column: 1, scope: !4711)
!4719 = !DISubprogram(name: "key_revoke", scope: !106, file: !106, line: 300, type: !887, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4720 = !DISubprogram(name: "unregister_key_type", scope: !822, file: !822, line: 168, type: !4721, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4721 = !DISubroutineType(types: !4722)
!4722 = !{null, !820}
!4723 = distinct !DISubprogram(name: "put_cred", scope: !724, file: !724, line: 231, type: !4724, scopeLine: 232, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4726)
!4724 = !DISubroutineType(types: !4725)
!4725 = !{null, !721}
!4726 = !{!4727, !4728}
!4727 = !DILocalVariable(name: "_cred", arg: 1, scope: !4723, file: !724, line: 231, type: !721)
!4728 = !DILocalVariable(name: "cred", scope: !4723, file: !724, line: 233, type: !4034)
!4729 = !DILocation(line: 231, column: 48, scope: !4723)
!4730 = !DILocation(line: 233, column: 2, scope: !4723)
!4731 = !DILocation(line: 233, column: 15, scope: !4723)
!4732 = !DILocation(line: 233, column: 38, scope: !4723)
!4733 = !DILocation(line: 235, column: 6, scope: !4734)
!4734 = distinct !DILexicalBlock(scope: !4723, file: !724, line: 235, column: 6)
!4735 = !DILocation(line: 235, column: 6, scope: !4723)
!4736 = !DILocation(line: 236, column: 34, scope: !4737)
!4737 = distinct !DILexicalBlock(scope: !4738, file: !724, line: 236, column: 7)
!4738 = distinct !DILexicalBlock(scope: !4734, file: !724, line: 235, column: 12)
!4739 = !DILocation(line: 236, column: 41, scope: !4737)
!4740 = !DILocation(line: 236, column: 7, scope: !4737)
!4741 = !DILocation(line: 236, column: 7, scope: !4738)
!4742 = !DILocation(line: 237, column: 15, scope: !4737)
!4743 = !DILocation(line: 237, column: 4, scope: !4737)
!4744 = !DILocation(line: 238, column: 2, scope: !4738)
!4745 = !DILocation(line: 239, column: 1, scope: !4723)
!4746 = distinct !DISubprogram(name: "__initstub__kmod_dns_resolver__267_389_init_dns_resolver6", scope: !3, file: !3, line: 389, type: !3799, scopeLine: 389, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4747 = !DILocation(line: 389, column: 1, scope: !4746)
!4748 = distinct !DISubprogram(name: "init_dns_resolver", scope: !3, file: !3, line: 335, type: !3799, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4749)
!4749 = !{!4750, !4751, !4752, !4753, !4754}
!4750 = !DILocalVariable(name: "cred", scope: !4748, file: !3, line: 337, type: !4034)
!4751 = !DILocalVariable(name: "keyring", scope: !4748, file: !3, line: 338, type: !748)
!4752 = !DILocalVariable(name: "ret", scope: !4748, file: !3, line: 339, type: !170)
!4753 = !DILabel(scope: !4748, name: "failed_put_key", file: !3, line: 375)
!4754 = !DILabel(scope: !4748, name: "failed_put_cred", file: !3, line: 377)
!4755 = !DILocation(line: 337, column: 2, scope: !4748)
!4756 = !DILocation(line: 337, column: 15, scope: !4748)
!4757 = !DILocation(line: 338, column: 2, scope: !4748)
!4758 = !DILocation(line: 338, column: 14, scope: !4748)
!4759 = !DILocation(line: 339, column: 2, scope: !4748)
!4760 = !DILocation(line: 339, column: 6, scope: !4748)
!4761 = !DILocation(line: 347, column: 9, scope: !4748)
!4762 = !DILocation(line: 347, column: 7, scope: !4748)
!4763 = !DILocation(line: 348, column: 7, scope: !4764)
!4764 = distinct !DILexicalBlock(scope: !4748, file: !3, line: 348, column: 6)
!4765 = !DILocation(line: 348, column: 6, scope: !4748)
!4766 = !DILocation(line: 349, column: 3, scope: !4764)
!4767 = !DILocation(line: 352, column: 5, scope: !4748)
!4768 = !DILocation(line: 352, column: 22, scope: !4748)
!4769 = !DILocation(line: 352, column: 39, scope: !4748)
!4770 = !DILocation(line: 351, column: 12, scope: !4748)
!4771 = !DILocation(line: 351, column: 10, scope: !4748)
!4772 = !DILocation(line: 356, column: 13, scope: !4773)
!4773 = distinct !DILexicalBlock(scope: !4748, file: !3, line: 356, column: 6)
!4774 = !DILocation(line: 356, column: 6, scope: !4773)
!4775 = !DILocation(line: 356, column: 6, scope: !4748)
!4776 = !DILocation(line: 357, column: 17, scope: !4777)
!4777 = distinct !DILexicalBlock(scope: !4773, file: !3, line: 356, column: 23)
!4778 = !DILocation(line: 357, column: 9, scope: !4777)
!4779 = !DILocation(line: 357, column: 7, scope: !4777)
!4780 = !DILocation(line: 358, column: 3, scope: !4777)
!4781 = !DILocation(line: 361, column: 8, scope: !4748)
!4782 = !DILocation(line: 361, column: 6, scope: !4748)
!4783 = !DILocation(line: 362, column: 6, scope: !4784)
!4784 = distinct !DILexicalBlock(scope: !4748, file: !3, line: 362, column: 6)
!4785 = !DILocation(line: 362, column: 10, scope: !4784)
!4786 = !DILocation(line: 362, column: 6, scope: !4748)
!4787 = !DILocation(line: 363, column: 3, scope: !4784)
!4788 = !DILocation(line: 367, column: 36, scope: !4748)
!4789 = !DILocation(line: 367, column: 45, scope: !4748)
!4790 = !DILocation(line: 367, column: 2, scope: !4748)
!4791 = !DILocation(line: 368, column: 25, scope: !4748)
!4792 = !DILocation(line: 368, column: 2, scope: !4748)
!4793 = !DILocation(line: 368, column: 8, scope: !4748)
!4794 = !DILocation(line: 368, column: 23, scope: !4748)
!4795 = !DILocation(line: 369, column: 2, scope: !4748)
!4796 = !DILocation(line: 369, column: 8, scope: !4748)
!4797 = !DILocation(line: 369, column: 20, scope: !4748)
!4798 = !DILocation(line: 370, column: 23, scope: !4748)
!4799 = !DILocation(line: 370, column: 21, scope: !4748)
!4800 = !DILocation(line: 372, column: 2, scope: !4748)
!4801 = !DILocation(line: 372, column: 2, scope: !4802)
!4802 = distinct !DILexicalBlock(scope: !4803, file: !3, line: 372, column: 2)
!4803 = distinct !DILexicalBlock(scope: !4748, file: !3, line: 372, column: 2)
!4804 = !DILocation(line: 372, column: 2, scope: !4803)
!4805 = !DILocation(line: 372, column: 2, scope: !4806)
!4806 = distinct !DILexicalBlock(scope: !4802, file: !3, line: 372, column: 2)
!4807 = !DILocation(line: 372, column: 2, scope: !4808)
!4808 = distinct !DILexicalBlock(scope: !4806, file: !3, line: 372, column: 2)
!4809 = !DILocation(line: 373, column: 2, scope: !4748)
!4810 = !DILocation(line: 375, column: 1, scope: !4748)
!4811 = !DILocation(line: 376, column: 10, scope: !4748)
!4812 = !DILocation(line: 376, column: 2, scope: !4748)
!4813 = !DILocation(line: 377, column: 1, scope: !4748)
!4814 = !DILocation(line: 378, column: 11, scope: !4748)
!4815 = !DILocation(line: 378, column: 2, scope: !4748)
!4816 = !DILocation(line: 379, column: 9, scope: !4748)
!4817 = !DILocation(line: 379, column: 2, scope: !4748)
!4818 = !DILocation(line: 380, column: 1, scope: !4748)
!4819 = !DISubprogram(name: "_printk", scope: !4820, file: !4820, line: 153, type: !4821, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4820 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!4821 = !DISubroutineType(types: !4822)
!4822 = !{!170, !135, null}
!4823 = distinct !DISubprogram(name: "get_current", scope: !4824, file: !4824, line: 39, type: !4825, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4827)
!4824 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!4825 = !DISubroutineType(types: !4826)
!4826 = !{!1762}
!4827 = !{!4828, !4830, !4832}
!4828 = !DILocalVariable(name: "pscr_ret__", scope: !4829, file: !4824, line: 41, type: !1762)
!4829 = distinct !DILexicalBlock(scope: !4823, file: !4824, line: 41, column: 9)
!4830 = !DILocalVariable(name: "__vpp_verify", scope: !4831, file: !4824, line: 41, type: !847)
!4831 = distinct !DILexicalBlock(scope: !4829, file: !4824, line: 41, column: 9)
!4832 = !DILocalVariable(name: "pfo_val__", scope: !4833, file: !4824, line: 41, type: !371)
!4833 = distinct !DILexicalBlock(scope: !4829, file: !4824, line: 41, column: 9)
!4834 = !DILocation(line: 41, column: 9, scope: !4829)
!4835 = !DILocation(line: 41, column: 9, scope: !4831)
!4836 = !DILocation(line: 41, column: 9, scope: !4833)
!4837 = !{i64 2148541110}
!4838 = !DILocation(line: 41, column: 9, scope: !4823)
!4839 = !DILocation(line: 41, column: 2, scope: !4823)
!4840 = !DISubprogram(name: "___ratelimit", scope: !1019, file: !1019, line: 44, type: !4841, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4841 = !DISubroutineType(types: !4842)
!4842 = !{!170, !4843, !135}
!4843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!4844 = !DISubprogram(name: "ktime_get_real_seconds", scope: !4845, file: !4845, line: 54, type: !4846, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4845 = !DIFile(filename: "./include/linux/timekeeping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f8a5b548f2f61d6d6461a10d2f09afe")
!4846 = !DISubroutineType(types: !4847)
!4847 = !{!786}
!4848 = !DISubprogram(name: "memchr", scope: !4849, file: !4849, line: 202, type: !4850, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4849 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!4850 = !DISubroutineType(types: !4851)
!4851 = !{!289, !847, !170, !265}
!4852 = !DISubprogram(name: "memcmp", scope: !4849, file: !4849, line: 196, type: !4853, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4853 = !DISubroutineType(types: !4854)
!4854 = !{!170, !847, !847, !265}
!4855 = distinct !DISubprogram(name: "kstrtoul", scope: !4856, file: !4856, line: 30, type: !4857, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4859)
!4856 = !DIFile(filename: "./include/linux/kstrtox.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b7da882f1f371706e764491098c6cb23")
!4857 = !DISubroutineType(types: !4858)
!4858 = !{!170, !135, !7, !4001}
!4859 = !{!4860, !4861, !4862}
!4860 = !DILocalVariable(name: "s", arg: 1, scope: !4855, file: !4856, line: 30, type: !135)
!4861 = !DILocalVariable(name: "base", arg: 2, scope: !4855, file: !4856, line: 30, type: !7)
!4862 = !DILocalVariable(name: "res", arg: 3, scope: !4855, file: !4856, line: 30, type: !4001)
!4863 = !DILocation(line: 30, column: 53, scope: !4855)
!4864 = !DILocation(line: 30, column: 69, scope: !4855)
!4865 = !DILocation(line: 30, column: 90, scope: !4855)
!4866 = !DILocation(line: 38, column: 20, scope: !4867)
!4867 = distinct !DILexicalBlock(scope: !4855, file: !4856, line: 36, column: 6)
!4868 = !DILocation(line: 38, column: 23, scope: !4867)
!4869 = !DILocation(line: 38, column: 51, scope: !4867)
!4870 = !DILocation(line: 38, column: 10, scope: !4867)
!4871 = !DILocation(line: 38, column: 3, scope: !4867)
!4872 = distinct !DISubprogram(name: "ERR_PTR", scope: !4873, file: !4873, line: 39, type: !4874, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4876)
!4873 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!4874 = !DISubroutineType(types: !4875)
!4875 = !{!289, !253}
!4876 = !{!4877}
!4877 = !DILocalVariable(name: "error", arg: 1, scope: !4872, file: !4873, line: 39, type: !253)
!4878 = !DILocation(line: 39, column: 48, scope: !4872)
!4879 = !DILocation(line: 41, column: 18, scope: !4872)
!4880 = !DILocation(line: 41, column: 9, scope: !4872)
!4881 = !DILocation(line: 41, column: 2, scope: !4872)
!4882 = distinct !DISubprogram(name: "PTR_ERR", scope: !4873, file: !4873, line: 49, type: !4883, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4885)
!4883 = !DISubroutineType(types: !4884)
!4884 = !{!253, !847}
!4885 = !{!4886}
!4886 = !DILocalVariable(name: "ptr", arg: 1, scope: !4882, file: !4873, line: 49, type: !847)
!4887 = !DILocation(line: 49, column: 61, scope: !4882)
!4888 = !DILocation(line: 51, column: 16, scope: !4882)
!4889 = !DILocation(line: 51, column: 9, scope: !4882)
!4890 = !DILocation(line: 51, column: 2, scope: !4882)
!4891 = distinct !DISubprogram(name: "kmalloc", scope: !96, file: !96, line: 591, type: !4892, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4894)
!4892 = !DISubroutineType(types: !4893)
!4893 = !{!289, !264, !1526}
!4894 = !{!4895, !4896, !4897}
!4895 = !DILocalVariable(name: "size", arg: 1, scope: !4891, file: !96, line: 591, type: !264)
!4896 = !DILocalVariable(name: "flags", arg: 2, scope: !4891, file: !96, line: 591, type: !1526)
!4897 = !DILocalVariable(name: "index", scope: !4898, file: !96, line: 594, type: !7)
!4898 = distinct !DILexicalBlock(scope: !4899, file: !96, line: 593, column: 42)
!4899 = distinct !DILexicalBlock(scope: !4891, file: !96, line: 593, column: 6)
!4900 = !DILocation(line: 591, column: 61, scope: !4891)
!4901 = !DILocation(line: 591, column: 73, scope: !4891)
!4902 = !DILocation(line: 593, column: 27, scope: !4899)
!4903 = !DILocation(line: 593, column: 6, scope: !4899)
!4904 = !DILocation(line: 593, column: 33, scope: !4899)
!4905 = !DILocation(line: 593, column: 36, scope: !4899)
!4906 = !DILocation(line: 593, column: 6, scope: !4891)
!4907 = !DILocation(line: 594, column: 3, scope: !4898)
!4908 = !DILocation(line: 594, column: 16, scope: !4898)
!4909 = !DILocation(line: 596, column: 7, scope: !4910)
!4910 = distinct !DILexicalBlock(scope: !4898, file: !96, line: 596, column: 7)
!4911 = !DILocation(line: 596, column: 12, scope: !4910)
!4912 = !DILocation(line: 596, column: 7, scope: !4898)
!4913 = !DILocation(line: 597, column: 25, scope: !4910)
!4914 = !DILocation(line: 597, column: 31, scope: !4910)
!4915 = !DILocation(line: 597, column: 11, scope: !4910)
!4916 = !DILocation(line: 597, column: 4, scope: !4910)
!4917 = !DILocation(line: 599, column: 11, scope: !4898)
!4918 = !DILocation(line: 599, column: 9, scope: !4898)
!4919 = !DILocation(line: 601, column: 33, scope: !4898)
!4920 = !DILocation(line: 601, column: 40, scope: !4898)
!4921 = !DILocation(line: 601, column: 20, scope: !4898)
!4922 = !DILocation(line: 601, column: 5, scope: !4898)
!4923 = !DILocation(line: 601, column: 51, scope: !4898)
!4924 = !DILocation(line: 602, column: 5, scope: !4898)
!4925 = !DILocation(line: 602, column: 12, scope: !4898)
!4926 = !DILocation(line: 600, column: 10, scope: !4898)
!4927 = !DILocation(line: 600, column: 3, scope: !4898)
!4928 = !DILocation(line: 603, column: 2, scope: !4899)
!4929 = !DILocation(line: 604, column: 19, scope: !4891)
!4930 = !DILocation(line: 604, column: 25, scope: !4891)
!4931 = !DILocation(line: 604, column: 9, scope: !4891)
!4932 = !DILocation(line: 604, column: 2, scope: !4891)
!4933 = !DILocation(line: 605, column: 1, scope: !4891)
!4934 = !DISubprogram(name: "kstrtoull", scope: !4856, file: !4856, line: 12, type: !4935, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4935 = !DISubroutineType(types: !4936)
!4936 = !{!170, !135, !7, !4030}
!4937 = !DISubprogram(name: "kmalloc_large", scope: !96, file: !96, line: 531, type: !4892, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4938 = distinct !DISubprogram(name: "__kmalloc_index", scope: !96, file: !96, line: 444, type: !4939, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4941)
!4939 = !DISubroutineType(types: !4940)
!4940 = !{!7, !264, !872}
!4941 = !{!4942, !4943}
!4942 = !DILocalVariable(name: "size", arg: 1, scope: !4938, file: !96, line: 444, type: !264)
!4943 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !4938, file: !96, line: 445, type: !872)
!4944 = !DILocation(line: 444, column: 60, scope: !4938)
!4945 = !DILocation(line: 445, column: 16, scope: !4938)
!4946 = !DILocation(line: 447, column: 7, scope: !4947)
!4947 = distinct !DILexicalBlock(scope: !4938, file: !96, line: 447, column: 6)
!4948 = !DILocation(line: 447, column: 6, scope: !4938)
!4949 = !DILocation(line: 448, column: 3, scope: !4947)
!4950 = !DILocation(line: 450, column: 6, scope: !4951)
!4951 = distinct !DILexicalBlock(scope: !4938, file: !96, line: 450, column: 6)
!4952 = !DILocation(line: 450, column: 11, scope: !4951)
!4953 = !DILocation(line: 450, column: 6, scope: !4938)
!4954 = !DILocation(line: 451, column: 3, scope: !4951)
!4955 = !DILocation(line: 453, column: 32, scope: !4956)
!4956 = distinct !DILexicalBlock(scope: !4938, file: !96, line: 453, column: 6)
!4957 = !DILocation(line: 453, column: 37, scope: !4956)
!4958 = !DILocation(line: 453, column: 42, scope: !4956)
!4959 = !DILocation(line: 453, column: 45, scope: !4956)
!4960 = !DILocation(line: 453, column: 50, scope: !4956)
!4961 = !DILocation(line: 453, column: 6, scope: !4938)
!4962 = !DILocation(line: 454, column: 3, scope: !4956)
!4963 = !DILocation(line: 455, column: 32, scope: !4964)
!4964 = distinct !DILexicalBlock(scope: !4938, file: !96, line: 455, column: 6)
!4965 = !DILocation(line: 455, column: 37, scope: !4964)
!4966 = !DILocation(line: 455, column: 43, scope: !4964)
!4967 = !DILocation(line: 455, column: 46, scope: !4964)
!4968 = !DILocation(line: 455, column: 51, scope: !4964)
!4969 = !DILocation(line: 455, column: 6, scope: !4938)
!4970 = !DILocation(line: 456, column: 3, scope: !4964)
!4971 = !DILocation(line: 457, column: 6, scope: !4972)
!4972 = distinct !DILexicalBlock(scope: !4938, file: !96, line: 457, column: 6)
!4973 = !DILocation(line: 457, column: 11, scope: !4972)
!4974 = !DILocation(line: 457, column: 6, scope: !4938)
!4975 = !DILocation(line: 457, column: 26, scope: !4972)
!4976 = !DILocation(line: 458, column: 6, scope: !4977)
!4977 = distinct !DILexicalBlock(scope: !4938, file: !96, line: 458, column: 6)
!4978 = !DILocation(line: 458, column: 11, scope: !4977)
!4979 = !DILocation(line: 458, column: 6, scope: !4938)
!4980 = !DILocation(line: 458, column: 26, scope: !4977)
!4981 = !DILocation(line: 459, column: 6, scope: !4982)
!4982 = distinct !DILexicalBlock(scope: !4938, file: !96, line: 459, column: 6)
!4983 = !DILocation(line: 459, column: 11, scope: !4982)
!4984 = !DILocation(line: 459, column: 6, scope: !4938)
!4985 = !DILocation(line: 459, column: 26, scope: !4982)
!4986 = !DILocation(line: 460, column: 6, scope: !4987)
!4987 = distinct !DILexicalBlock(scope: !4938, file: !96, line: 460, column: 6)
!4988 = !DILocation(line: 460, column: 11, scope: !4987)
!4989 = !DILocation(line: 460, column: 6, scope: !4938)
!4990 = !DILocation(line: 460, column: 26, scope: !4987)
!4991 = !DILocation(line: 461, column: 6, scope: !4992)
!4992 = distinct !DILexicalBlock(scope: !4938, file: !96, line: 461, column: 6)
!4993 = !DILocation(line: 461, column: 11, scope: !4992)
!4994 = !DILocation(line: 461, column: 6, scope: !4938)
!4995 = !DILocation(line: 461, column: 26, scope: !4992)
!4996 = !DILocation(line: 462, column: 6, scope: !4997)
!4997 = distinct !DILexicalBlock(scope: !4938, file: !96, line: 462, column: 6)
!4998 = !DILocation(line: 462, column: 11, scope: !4997)
!4999 = !DILocation(line: 462, column: 6, scope: !4938)
!5000 = !DILocation(line: 462, column: 26, scope: !4997)
!5001 = !DILocation(line: 463, column: 6, scope: !5002)
!5002 = distinct !DILexicalBlock(scope: !4938, file: !96, line: 463, column: 6)
!5003 = !DILocation(line: 463, column: 11, scope: !5002)
!5004 = !DILocation(line: 463, column: 6, scope: !4938)
!5005 = !DILocation(line: 463, column: 26, scope: !5002)
!5006 = !DILocation(line: 464, column: 6, scope: !5007)
!5007 = distinct !DILexicalBlock(scope: !4938, file: !96, line: 464, column: 6)
!5008 = !DILocation(line: 464, column: 11, scope: !5007)
!5009 = !DILocation(line: 464, column: 6, scope: !4938)
!5010 = !DILocation(line: 464, column: 26, scope: !5007)
!5011 = !DILocation(line: 465, column: 6, scope: !5012)
!5012 = distinct !DILexicalBlock(scope: !4938, file: !96, line: 465, column: 6)
!5013 = !DILocation(line: 465, column: 11, scope: !5012)
!5014 = !DILocation(line: 465, column: 6, scope: !4938)
!5015 = !DILocation(line: 465, column: 26, scope: !5012)
!5016 = !DILocation(line: 466, column: 6, scope: !5017)
!5017 = distinct !DILexicalBlock(scope: !4938, file: !96, line: 466, column: 6)
!5018 = !DILocation(line: 466, column: 11, scope: !5017)
!5019 = !DILocation(line: 466, column: 6, scope: !4938)
!5020 = !DILocation(line: 466, column: 26, scope: !5017)
!5021 = !DILocation(line: 467, column: 6, scope: !5022)
!5022 = distinct !DILexicalBlock(scope: !4938, file: !96, line: 467, column: 6)
!5023 = !DILocation(line: 467, column: 11, scope: !5022)
!5024 = !DILocation(line: 467, column: 6, scope: !4938)
!5025 = !DILocation(line: 467, column: 26, scope: !5022)
!5026 = !DILocation(line: 468, column: 6, scope: !5027)
!5027 = distinct !DILexicalBlock(scope: !4938, file: !96, line: 468, column: 6)
!5028 = !DILocation(line: 468, column: 11, scope: !5027)
!5029 = !DILocation(line: 468, column: 6, scope: !4938)
!5030 = !DILocation(line: 468, column: 26, scope: !5027)
!5031 = !DILocation(line: 469, column: 6, scope: !5032)
!5032 = distinct !DILexicalBlock(scope: !4938, file: !96, line: 469, column: 6)
!5033 = !DILocation(line: 469, column: 11, scope: !5032)
!5034 = !DILocation(line: 469, column: 6, scope: !4938)
!5035 = !DILocation(line: 469, column: 26, scope: !5032)
!5036 = !DILocation(line: 470, column: 6, scope: !5037)
!5037 = distinct !DILexicalBlock(scope: !4938, file: !96, line: 470, column: 6)
!5038 = !DILocation(line: 470, column: 11, scope: !5037)
!5039 = !DILocation(line: 470, column: 6, scope: !4938)
!5040 = !DILocation(line: 470, column: 26, scope: !5037)
!5041 = !DILocation(line: 471, column: 6, scope: !5042)
!5042 = distinct !DILexicalBlock(scope: !4938, file: !96, line: 471, column: 6)
!5043 = !DILocation(line: 471, column: 11, scope: !5042)
!5044 = !DILocation(line: 471, column: 6, scope: !4938)
!5045 = !DILocation(line: 471, column: 26, scope: !5042)
!5046 = !DILocation(line: 472, column: 6, scope: !5047)
!5047 = distinct !DILexicalBlock(scope: !4938, file: !96, line: 472, column: 6)
!5048 = !DILocation(line: 472, column: 11, scope: !5047)
!5049 = !DILocation(line: 472, column: 6, scope: !4938)
!5050 = !DILocation(line: 472, column: 26, scope: !5047)
!5051 = !DILocation(line: 473, column: 6, scope: !5052)
!5052 = distinct !DILexicalBlock(scope: !4938, file: !96, line: 473, column: 6)
!5053 = !DILocation(line: 473, column: 11, scope: !5052)
!5054 = !DILocation(line: 473, column: 6, scope: !4938)
!5055 = !DILocation(line: 473, column: 26, scope: !5052)
!5056 = !DILocation(line: 474, column: 6, scope: !5057)
!5057 = distinct !DILexicalBlock(scope: !4938, file: !96, line: 474, column: 6)
!5058 = !DILocation(line: 474, column: 11, scope: !5057)
!5059 = !DILocation(line: 474, column: 6, scope: !4938)
!5060 = !DILocation(line: 474, column: 27, scope: !5057)
!5061 = !DILocation(line: 475, column: 6, scope: !5062)
!5062 = distinct !DILexicalBlock(scope: !4938, file: !96, line: 475, column: 6)
!5063 = !DILocation(line: 475, column: 11, scope: !5062)
!5064 = !DILocation(line: 475, column: 6, scope: !4938)
!5065 = !DILocation(line: 475, column: 32, scope: !5062)
!5066 = !DILocation(line: 477, column: 50, scope: !5067)
!5067 = distinct !DILexicalBlock(scope: !4938, file: !96, line: 477, column: 6)
!5068 = !{i8 0, i8 2}
!5069 = !DILocation(line: 477, column: 6, scope: !4938)
!5070 = !DILocation(line: 478, column: 3, scope: !5067)
!5071 = !DILocation(line: 478, column: 3, scope: !5072)
!5072 = distinct !DILexicalBlock(scope: !5073, file: !96, line: 478, column: 3)
!5073 = distinct !DILexicalBlock(scope: !5067, file: !96, line: 478, column: 3)
!5074 = !{i32 -2142594726}
!5075 = !DILocation(line: 478, column: 3, scope: !5073)
!5076 = !DILocation(line: 480, column: 3, scope: !5067)
!5077 = !DILocation(line: 480, column: 3, scope: !5078)
!5078 = distinct !DILexicalBlock(scope: !5067, file: !96, line: 480, column: 3)
!5079 = !DILocation(line: 480, column: 3, scope: !5080)
!5080 = distinct !DILexicalBlock(scope: !5078, file: !96, line: 480, column: 3)
!5081 = !DILocation(line: 480, column: 3, scope: !5082)
!5082 = distinct !DILexicalBlock(scope: !5078, file: !96, line: 480, column: 3)
!5083 = !{i64 2152372773, i64 2152372802, i64 2152372848, i64 2152372906, i64 2152372960, i64 2152373014, i64 2152373069, i64 2152373100}
!5084 = !DILocation(line: 483, column: 2, scope: !4938)
!5085 = !DILocation(line: 484, column: 1, scope: !4938)
!5086 = !DISubprogram(name: "kmalloc_trace", scope: !96, file: !96, line: 525, type: !5087, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5087 = !DISubroutineType(types: !5088)
!5088 = !{!289, !5089, !1526, !264}
!5089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5090, size: 64)
!5090 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !5091, line: 11, flags: DIFlagFwdDecl)
!5091 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!5092 = distinct !DISubprogram(name: "kmalloc_type", scope: !96, file: !96, line: 401, type: !5093, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5095)
!5093 = !DISubroutineType(types: !5094)
!5094 = !{!95, !1526, !267}
!5095 = !{!5096, !5097}
!5096 = !DILocalVariable(name: "flags", arg: 1, scope: !5092, file: !96, line: 401, type: !1526)
!5097 = !DILocalVariable(name: "caller", arg: 2, scope: !5092, file: !96, line: 401, type: !267)
!5098 = !DILocation(line: 401, column: 67, scope: !5092)
!5099 = !DILocation(line: 401, column: 88, scope: !5092)
!5100 = !DILocation(line: 407, column: 6, scope: !5101)
!5101 = distinct !DILexicalBlock(scope: !5092, file: !96, line: 407, column: 6)
!5102 = !DILocation(line: 407, column: 6, scope: !5092)
!5103 = !DILocation(line: 413, column: 3, scope: !5101)
!5104 = !DILocation(line: 423, column: 38, scope: !5105)
!5105 = distinct !DILexicalBlock(scope: !5092, file: !96, line: 423, column: 6)
!5106 = !DILocation(line: 423, column: 44, scope: !5105)
!5107 = !DILocation(line: 423, column: 6, scope: !5092)
!5108 = !DILocation(line: 424, column: 3, scope: !5105)
!5109 = !DILocation(line: 426, column: 3, scope: !5110)
!5110 = distinct !DILexicalBlock(scope: !5092, file: !96, line: 425, column: 6)
!5111 = !DILocation(line: 429, column: 1, scope: !5092)
!5112 = !DISubprogram(name: "__kmalloc", scope: !96, file: !96, line: 488, type: !4892, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5113 = !DISubprogram(name: "__compiletime_assert_196", scope: !96, file: !96, line: 478, type: !2395, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!5114 = !DISubprogram(name: "kfree", scope: !96, file: !96, line: 227, type: !5115, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5115 = !DISubroutineType(types: !5116)
!5116 = !{null, !847}
!5117 = distinct !DISubprogram(name: "dns_resolver_cmp", scope: !3, file: !3, line: 249, type: !870, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5118)
!5118 = !{!5119, !5120, !5121, !5122, !5123, !5124, !5125, !5126, !5127}
!5119 = !DILocalVariable(name: "key", arg: 1, scope: !5117, file: !3, line: 249, type: !874)
!5120 = !DILocalVariable(name: "match_data", arg: 2, scope: !5117, file: !3, line: 250, type: !876)
!5121 = !DILocalVariable(name: "slen", scope: !5117, file: !3, line: 252, type: !170)
!5122 = !DILocalVariable(name: "dlen", scope: !5117, file: !3, line: 252, type: !170)
!5123 = !DILocalVariable(name: "ret", scope: !5117, file: !3, line: 252, type: !170)
!5124 = !DILocalVariable(name: "src", scope: !5117, file: !3, line: 253, type: !135)
!5125 = !DILocalVariable(name: "dsp", scope: !5117, file: !3, line: 253, type: !135)
!5126 = !DILabel(scope: !5117, name: "matched", file: !3, line: 274)
!5127 = !DILabel(scope: !5117, name: "no_match", file: !3, line: 276)
!5128 = !DILocation(line: 249, column: 48, scope: !5117)
!5129 = !DILocation(line: 250, column: 38, scope: !5117)
!5130 = !DILocation(line: 252, column: 2, scope: !5117)
!5131 = !DILocation(line: 252, column: 6, scope: !5117)
!5132 = !DILocation(line: 252, column: 12, scope: !5117)
!5133 = !DILocation(line: 252, column: 18, scope: !5117)
!5134 = !DILocation(line: 253, column: 2, scope: !5117)
!5135 = !DILocation(line: 253, column: 14, scope: !5117)
!5136 = !DILocation(line: 253, column: 20, scope: !5117)
!5137 = !DILocation(line: 253, column: 25, scope: !5117)
!5138 = !DILocation(line: 253, column: 39, scope: !5117)
!5139 = !DILocation(line: 253, column: 45, scope: !5117)
!5140 = !DILocation(line: 253, column: 57, scope: !5117)
!5141 = !DILocation(line: 255, column: 2, scope: !5117)
!5142 = !DILocation(line: 255, column: 2, scope: !5143)
!5143 = distinct !DILexicalBlock(scope: !5144, file: !3, line: 255, column: 2)
!5144 = distinct !DILexicalBlock(scope: !5117, file: !3, line: 255, column: 2)
!5145 = !DILocation(line: 255, column: 2, scope: !5144)
!5146 = !DILocation(line: 255, column: 2, scope: !5147)
!5147 = distinct !DILexicalBlock(scope: !5143, file: !3, line: 255, column: 2)
!5148 = !DILocation(line: 255, column: 2, scope: !5149)
!5149 = distinct !DILexicalBlock(scope: !5147, file: !3, line: 255, column: 2)
!5150 = !DILocation(line: 257, column: 7, scope: !5151)
!5151 = distinct !DILexicalBlock(scope: !5117, file: !3, line: 257, column: 6)
!5152 = !DILocation(line: 257, column: 11, scope: !5151)
!5153 = !DILocation(line: 257, column: 15, scope: !5151)
!5154 = !DILocation(line: 257, column: 6, scope: !5117)
!5155 = !DILocation(line: 258, column: 3, scope: !5151)
!5156 = !DILocation(line: 260, column: 17, scope: !5157)
!5157 = distinct !DILexicalBlock(scope: !5117, file: !3, line: 260, column: 6)
!5158 = !DILocation(line: 260, column: 22, scope: !5157)
!5159 = !DILocation(line: 260, column: 6, scope: !5157)
!5160 = !DILocation(line: 260, column: 27, scope: !5157)
!5161 = !DILocation(line: 260, column: 6, scope: !5117)
!5162 = !DILocation(line: 261, column: 3, scope: !5157)
!5163 = !DILocation(line: 263, column: 16, scope: !5117)
!5164 = !DILocation(line: 263, column: 9, scope: !5117)
!5165 = !DILocation(line: 263, column: 7, scope: !5117)
!5166 = !DILocation(line: 264, column: 16, scope: !5117)
!5167 = !DILocation(line: 264, column: 9, scope: !5117)
!5168 = !DILocation(line: 264, column: 7, scope: !5117)
!5169 = !DILocation(line: 265, column: 6, scope: !5170)
!5170 = distinct !DILexicalBlock(scope: !5117, file: !3, line: 265, column: 6)
!5171 = !DILocation(line: 265, column: 11, scope: !5170)
!5172 = !DILocation(line: 265, column: 16, scope: !5170)
!5173 = !DILocation(line: 265, column: 19, scope: !5170)
!5174 = !DILocation(line: 265, column: 24, scope: !5170)
!5175 = !DILocation(line: 265, column: 6, scope: !5117)
!5176 = !DILocation(line: 266, column: 3, scope: !5170)
!5177 = !DILocation(line: 267, column: 6, scope: !5178)
!5178 = distinct !DILexicalBlock(scope: !5117, file: !3, line: 267, column: 6)
!5179 = !DILocation(line: 267, column: 10, scope: !5178)
!5180 = !DILocation(line: 267, column: 15, scope: !5178)
!5181 = !DILocation(line: 267, column: 20, scope: !5178)
!5182 = !DILocation(line: 267, column: 6, scope: !5117)
!5183 = !DILocation(line: 268, column: 7, scope: !5178)
!5184 = !DILocation(line: 268, column: 3, scope: !5178)
!5185 = !DILocation(line: 269, column: 6, scope: !5186)
!5186 = distinct !DILexicalBlock(scope: !5117, file: !3, line: 269, column: 6)
!5187 = !DILocation(line: 269, column: 10, scope: !5186)
!5188 = !DILocation(line: 269, column: 15, scope: !5186)
!5189 = !DILocation(line: 269, column: 20, scope: !5186)
!5190 = !DILocation(line: 269, column: 6, scope: !5117)
!5191 = !DILocation(line: 270, column: 7, scope: !5186)
!5192 = !DILocation(line: 270, column: 3, scope: !5186)
!5193 = !DILocation(line: 271, column: 6, scope: !5194)
!5194 = distinct !DILexicalBlock(scope: !5117, file: !3, line: 271, column: 6)
!5195 = !DILocation(line: 271, column: 14, scope: !5194)
!5196 = !DILocation(line: 271, column: 11, scope: !5194)
!5197 = !DILocation(line: 271, column: 19, scope: !5194)
!5198 = !DILocation(line: 271, column: 34, scope: !5194)
!5199 = !DILocation(line: 271, column: 39, scope: !5194)
!5200 = !DILocation(line: 271, column: 44, scope: !5194)
!5201 = !DILocation(line: 271, column: 22, scope: !5194)
!5202 = !DILocation(line: 271, column: 50, scope: !5194)
!5203 = !DILocation(line: 271, column: 6, scope: !5117)
!5204 = !DILocation(line: 272, column: 3, scope: !5194)
!5205 = !DILocation(line: 271, column: 53, scope: !5194)
!5206 = !DILocation(line: 274, column: 1, scope: !5117)
!5207 = !DILocation(line: 275, column: 6, scope: !5117)
!5208 = !DILocation(line: 275, column: 2, scope: !5117)
!5209 = !DILocation(line: 276, column: 1, scope: !5117)
!5210 = !DILocation(line: 277, column: 2, scope: !5117)
!5211 = !DILocation(line: 277, column: 2, scope: !5212)
!5212 = distinct !DILexicalBlock(scope: !5213, file: !3, line: 277, column: 2)
!5213 = distinct !DILexicalBlock(scope: !5117, file: !3, line: 277, column: 2)
!5214 = !DILocation(line: 277, column: 2, scope: !5213)
!5215 = !DILocation(line: 277, column: 2, scope: !5216)
!5216 = distinct !DILexicalBlock(scope: !5212, file: !3, line: 277, column: 2)
!5217 = !DILocation(line: 277, column: 2, scope: !5218)
!5218 = distinct !DILexicalBlock(scope: !5216, file: !3, line: 277, column: 2)
!5219 = !DILocation(line: 278, column: 9, scope: !5117)
!5220 = !DILocation(line: 279, column: 1, scope: !5117)
!5221 = !DILocation(line: 278, column: 2, scope: !5117)
!5222 = !DISubprogram(name: "strcasecmp", scope: !4849, file: !4849, line: 94, type: !5223, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5223 = !DISubroutineType(types: !5224)
!5224 = !{!170, !135, !135}
!5225 = !DISubprogram(name: "strlen", scope: !4849, file: !4849, line: 128, type: !5226, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5226 = !DISubroutineType(types: !5227)
!5227 = !{!267, !135}
!5228 = !DISubprogram(name: "strncasecmp", scope: !4849, file: !4849, line: 97, type: !5229, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5229 = !DISubroutineType(types: !5230)
!5230 = !{!170, !135, !135, !264}
!5231 = !DISubprogram(name: "seq_puts", scope: !573, file: !573, line: 121, type: !5232, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5232 = !DISubroutineType(types: !5233)
!5233 = !{null, !571, !135}
!5234 = distinct !DISubprogram(name: "key_is_positive", scope: !106, file: !106, line: 471, type: !5235, scopeLine: 472, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5237)
!5235 = !DISubroutineType(types: !5236)
!5236 = !{!872, !874}
!5237 = !{!5238}
!5238 = !DILocalVariable(name: "key", arg: 1, scope: !5234, file: !106, line: 471, type: !874)
!5239 = !DILocation(line: 471, column: 54, scope: !5234)
!5240 = !DILocation(line: 473, column: 24, scope: !5234)
!5241 = !DILocation(line: 473, column: 9, scope: !5234)
!5242 = !DILocation(line: 473, column: 29, scope: !5234)
!5243 = !DILocation(line: 473, column: 2, scope: !5234)
!5244 = !DISubprogram(name: "seq_printf", scope: !573, file: !573, line: 119, type: !5245, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5245 = !DISubroutineType(types: !5246)
!5246 = !{null, !571, !135, null}
!5247 = distinct !DISubprogram(name: "key_read_state", scope: !106, file: !106, line: 458, type: !5248, scopeLine: 459, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5250)
!5248 = !DISubroutineType(types: !5249)
!5249 = !{!798, !874}
!5250 = !{!5251, !5252}
!5251 = !DILocalVariable(name: "key", arg: 1, scope: !5247, file: !106, line: 458, type: !874)
!5252 = !DILocalVariable(name: "___p1", scope: !5253, file: !106, line: 461, type: !5254)
!5253 = distinct !DILexicalBlock(scope: !5247, file: !106, line: 461, column: 9)
!5254 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !798)
!5255 = !DILocation(line: 458, column: 54, scope: !5247)
!5256 = !DILocation(line: 461, column: 9, scope: !5253)
!5257 = !DILocation(line: 461, column: 9, scope: !5258)
!5258 = distinct !DILexicalBlock(scope: !5253, file: !106, line: 461, column: 9)
!5259 = !DILocation(line: 461, column: 9, scope: !5260)
!5260 = distinct !DILexicalBlock(scope: !5258, file: !106, line: 461, column: 9)
!5261 = !DILocation(line: 461, column: 9, scope: !5262)
!5262 = distinct !DILexicalBlock(scope: !5253, file: !106, line: 461, column: 9)
!5263 = !{i64 2153372556}
!5264 = !DILocation(line: 461, column: 9, scope: !5247)
!5265 = !DILocation(line: 461, column: 2, scope: !5247)
!5266 = !DISubprogram(name: "user_read", scope: !4109, file: !4109, line: 44, type: !896, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5267 = distinct !DISubprogram(name: "atomic_long_dec_and_test", scope: !5268, file: !5268, line: 4500, type: !5269, scopeLine: 4501, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5271)
!5268 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!5269 = !DISubroutineType(types: !5270)
!5270 = !{!872, !3065}
!5271 = !{!5272}
!5272 = !DILocalVariable(name: "v", arg: 1, scope: !5267, file: !5268, line: 4500, type: !3065)
!5273 = !DILocation(line: 4500, column: 41, scope: !5267)
!5274 = !DILocation(line: 4502, column: 2, scope: !5267)
!5275 = !DILocation(line: 4502, column: 2, scope: !5276)
!5276 = distinct !DILexicalBlock(scope: !5267, file: !5268, line: 4502, column: 2)
!5277 = !DILocation(line: 4503, column: 31, scope: !5267)
!5278 = !DILocation(line: 4503, column: 2, scope: !5267)
!5279 = !DILocation(line: 4504, column: 38, scope: !5267)
!5280 = !DILocation(line: 4504, column: 9, scope: !5267)
!5281 = !DILocation(line: 4504, column: 2, scope: !5267)
!5282 = !DISubprogram(name: "__put_cred", scope: !724, file: !724, line: 148, type: !5283, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5283 = !DISubroutineType(types: !5284)
!5284 = !{null, !4034}
!5285 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !5286, file: !5286, line: 94, type: !5287, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5292)
!5286 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!5287 = !DISubroutineType(types: !5288)
!5288 = !{null, !5289, !264}
!5289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5290, size: 64)
!5290 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5291)
!5291 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5292 = !{!5293, !5294}
!5293 = !DILocalVariable(name: "v", arg: 1, scope: !5285, file: !5286, line: 94, type: !5289)
!5294 = !DILocalVariable(name: "size", arg: 2, scope: !5285, file: !5286, line: 94, type: !264)
!5295 = !DILocation(line: 94, column: 79, scope: !5285)
!5296 = !DILocation(line: 94, column: 89, scope: !5285)
!5297 = !DILocation(line: 96, column: 20, scope: !5285)
!5298 = !DILocation(line: 96, column: 23, scope: !5285)
!5299 = !DILocation(line: 96, column: 2, scope: !5285)
!5300 = !DILocation(line: 97, column: 2, scope: !5285)
!5301 = !DILocation(line: 98, column: 1, scope: !5285)
!5302 = distinct !DISubprogram(name: "raw_atomic_long_dec_and_test", scope: !588, file: !588, line: 1560, type: !5269, scopeLine: 1561, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5303)
!5303 = !{!5304}
!5304 = !DILocalVariable(name: "v", arg: 1, scope: !5302, file: !588, line: 1560, type: !3065)
!5305 = !DILocation(line: 1560, column: 45, scope: !5302)
!5306 = !DILocation(line: 1563, column: 35, scope: !5302)
!5307 = !DILocation(line: 1563, column: 9, scope: !5302)
!5308 = !DILocation(line: 1563, column: 2, scope: !5302)
!5309 = distinct !DISubprogram(name: "kasan_check_write", scope: !5310, file: !5310, line: 44, type: !5311, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5313)
!5310 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!5311 = !DISubroutineType(types: !5312)
!5312 = !{!872, !5289, !7}
!5313 = !{!5314, !5315}
!5314 = !DILocalVariable(name: "p", arg: 1, scope: !5309, file: !5310, line: 44, type: !5289)
!5315 = !DILocalVariable(name: "size", arg: 2, scope: !5309, file: !5310, line: 44, type: !7)
!5316 = !DILocation(line: 44, column: 59, scope: !5309)
!5317 = !DILocation(line: 44, column: 75, scope: !5309)
!5318 = !DILocation(line: 46, column: 2, scope: !5309)
!5319 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5320, file: !5320, line: 229, type: !5321, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5323)
!5320 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!5321 = !DISubroutineType(types: !5322)
!5322 = !{null, !5289, !264, !170}
!5323 = !{!5324, !5325, !5326}
!5324 = !DILocalVariable(name: "ptr", arg: 1, scope: !5319, file: !5320, line: 229, type: !5289)
!5325 = !DILocalVariable(name: "size", arg: 2, scope: !5319, file: !5320, line: 229, type: !264)
!5326 = !DILocalVariable(name: "type", arg: 3, scope: !5319, file: !5320, line: 230, type: !170)
!5327 = !DILocation(line: 229, column: 60, scope: !5319)
!5328 = !DILocation(line: 229, column: 72, scope: !5319)
!5329 = !DILocation(line: 230, column: 15, scope: !5319)
!5330 = !DILocation(line: 230, column: 23, scope: !5319)
!5331 = distinct !DISubprogram(name: "raw_atomic64_dec_and_test", scope: !5332, file: !5332, line: 4366, type: !5333, scopeLine: 4367, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5336)
!5332 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!5333 = !DISubroutineType(types: !5334)
!5334 = !{!872, !5335}
!5335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!5336 = !{!5337}
!5337 = !DILocalVariable(name: "v", arg: 1, scope: !5331, file: !5332, line: 4366, type: !5335)
!5338 = !DILocation(line: 4366, column: 39, scope: !5331)
!5339 = !DILocation(line: 4369, column: 36, scope: !5331)
!5340 = !DILocation(line: 4369, column: 9, scope: !5331)
!5341 = !DILocation(line: 4369, column: 2, scope: !5331)
!5342 = distinct !DISubprogram(name: "arch_atomic64_dec_and_test", scope: !5343, file: !5343, line: 59, type: !5333, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5344)
!5343 = !DIFile(filename: "./arch/x86/include/asm/atomic64_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e491f305c5821f66703047d9c813539")
!5344 = !{!5345, !5346}
!5345 = !DILocalVariable(name: "v", arg: 1, scope: !5342, file: !5343, line: 59, type: !5335)
!5346 = !DILocalVariable(name: "c", scope: !5347, file: !5343, line: 61, type: !872)
!5347 = distinct !DILexicalBlock(scope: !5342, file: !5343, line: 61, column: 9)
!5348 = !DILocation(line: 59, column: 68, scope: !5342)
!5349 = !DILocation(line: 61, column: 9, scope: !5347)
!5350 = !{i64 2148823454, i64 2148823493, i64 2148823514, i64 2148823551, i64 2148823574, i64 2148823583, i64 2148823657}
!5351 = !DILocation(line: 61, column: 9, scope: !5342)
!5352 = !DILocation(line: 61, column: 2, scope: !5342)
!5353 = !DISubprogram(name: "prepare_kernel_cred", scope: !724, file: !724, line: 159, type: !5354, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5354 = !DISubroutineType(types: !5355)
!5355 = !{!4034, !1762}
!5356 = !DISubprogram(name: "keyring_alloc", scope: !106, file: !106, line: 420, type: !5357, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5357 = !DISubroutineType(types: !5358)
!5358 = !{!748, !135, !304, !313, !721, !793, !267, !907, !748}
!5359 = distinct !DISubprogram(name: "IS_ERR", scope: !4873, file: !4873, line: 59, type: !5360, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5362)
!5360 = !DISubroutineType(types: !5361)
!5361 = !{!872, !847}
!5362 = !{!5363}
!5363 = !DILocalVariable(name: "ptr", arg: 1, scope: !5359, file: !4873, line: 59, type: !847)
!5364 = !DILocation(line: 59, column: 60, scope: !5359)
!5365 = !DILocation(line: 61, column: 9, scope: !5359)
!5366 = !DILocation(line: 61, column: 2, scope: !5359)
!5367 = !DISubprogram(name: "register_key_type", scope: !822, file: !822, line: 167, type: !5368, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5368 = !DISubroutineType(types: !5369)
!5369 = !{!170, !820}
!5370 = distinct !DISubprogram(name: "set_bit", scope: !5371, file: !5371, line: 26, type: !5372, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5376)
!5371 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!5372 = !DISubroutineType(types: !5373)
!5373 = !{null, !253, !5374}
!5374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5375, size: 64)
!5375 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !267)
!5376 = !{!5377, !5378}
!5377 = !DILocalVariable(name: "nr", arg: 1, scope: !5370, file: !5371, line: 26, type: !253)
!5378 = !DILocalVariable(name: "addr", arg: 2, scope: !5370, file: !5371, line: 26, type: !5374)
!5379 = !DILocation(line: 26, column: 42, scope: !5370)
!5380 = !DILocation(line: 26, column: 70, scope: !5370)
!5381 = !DILocation(line: 28, column: 26, scope: !5370)
!5382 = !DILocation(line: 28, column: 33, scope: !5370)
!5383 = !DILocation(line: 28, column: 31, scope: !5370)
!5384 = !DILocation(line: 28, column: 2, scope: !5370)
!5385 = !DILocation(line: 29, column: 15, scope: !5370)
!5386 = !DILocation(line: 29, column: 19, scope: !5370)
!5387 = !DILocation(line: 29, column: 2, scope: !5370)
!5388 = !DILocation(line: 30, column: 1, scope: !5370)
!5389 = distinct !DISubprogram(name: "key_serial", scope: !106, file: !106, line: 447, type: !5390, scopeLine: 448, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5392)
!5390 = !DISubroutineType(types: !5391)
!5391 = !{!753, !874}
!5392 = !{!5393}
!5393 = !DILocalVariable(name: "key", arg: 1, scope: !5389, file: !106, line: 447, type: !874)
!5394 = !DILocation(line: 447, column: 57, scope: !5389)
!5395 = !DILocation(line: 449, column: 9, scope: !5389)
!5396 = !DILocation(line: 449, column: 15, scope: !5389)
!5397 = !DILocation(line: 449, column: 20, scope: !5389)
!5398 = !DILocation(line: 449, column: 2, scope: !5389)
!5399 = !DISubprogram(name: "key_put", scope: !106, file: !106, line: 302, type: !887, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5400 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !5286, file: !5286, line: 80, type: !5287, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5401)
!5401 = !{!5402, !5403}
!5402 = !DILocalVariable(name: "v", arg: 1, scope: !5400, file: !5286, line: 80, type: !5289)
!5403 = !DILocalVariable(name: "size", arg: 2, scope: !5400, file: !5286, line: 80, type: !264)
!5404 = !DILocation(line: 80, column: 74, scope: !5400)
!5405 = !DILocation(line: 80, column: 84, scope: !5400)
!5406 = !DILocation(line: 82, column: 20, scope: !5400)
!5407 = !DILocation(line: 82, column: 23, scope: !5400)
!5408 = !DILocation(line: 82, column: 2, scope: !5400)
!5409 = !DILocation(line: 83, column: 2, scope: !5400)
!5410 = !DILocation(line: 84, column: 1, scope: !5400)
!5411 = distinct !DISubprogram(name: "arch_set_bit", scope: !5412, file: !5412, line: 52, type: !5372, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5413)
!5412 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!5413 = !{!5414, !5415}
!5414 = !DILocalVariable(name: "nr", arg: 1, scope: !5411, file: !5412, line: 52, type: !253)
!5415 = !DILocalVariable(name: "addr", arg: 2, scope: !5411, file: !5412, line: 52, type: !5374)
!5416 = !DILocation(line: 52, column: 19, scope: !5411)
!5417 = !DILocation(line: 52, column: 47, scope: !5411)
!5418 = !DILocation(line: 54, column: 27, scope: !5419)
!5419 = distinct !DILexicalBlock(scope: !5411, file: !5412, line: 54, column: 6)
!5420 = !DILocation(line: 54, column: 6, scope: !5419)
!5421 = !DILocation(line: 54, column: 6, scope: !5411)
!5422 = !DILocation(line: 56, column: 6, scope: !5423)
!5423 = distinct !DILexicalBlock(scope: !5419, file: !5412, line: 54, column: 32)
!5424 = !DILocation(line: 57, column: 12, scope: !5423)
!5425 = !DILocation(line: 55, column: 3, scope: !5423)
!5426 = !{i64 2148337085, i64 2148337124, i64 2148337145, i64 2148337182, i64 2148337205, i64 2148337075}
!5427 = !DILocation(line: 59, column: 2, scope: !5423)
!5428 = !DILocation(line: 61, column: 8, scope: !5429)
!5429 = distinct !DILexicalBlock(scope: !5419, file: !5412, line: 59, column: 9)
!5430 = !DILocation(line: 61, column: 32, scope: !5429)
!5431 = !DILocation(line: 60, column: 3, scope: !5429)
!5432 = !{i64 2148337370, i64 2148337409, i64 2148337430, i64 2148337467, i64 2148337490, i64 2148337360}
!5433 = !DILocation(line: 63, column: 1, scope: !5411)
