; ModuleID = 'crypto/api.c'
source_filename = "crypto/api.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_crypto_alg_list: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad crypto_alg_list ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_crypto_alg_sem: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad crypto_alg_sem ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_crypto_chain: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad crypto_chain ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_crypto_mod_get: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad crypto_mod_get ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_crypto_mod_put: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad crypto_mod_put ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_crypto_larval_alloc: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad crypto_larval_alloc ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_crypto_larval_kill: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad crypto_larval_kill ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_crypto_wait_for_test: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad crypto_wait_for_test ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_crypto_probing_notify: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad crypto_probing_notify ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_crypto_alg_mod_lookup: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad crypto_alg_mod_lookup ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_crypto_shoot_alg: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad crypto_shoot_alg ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___crypto_alloc_tfmgfp: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad __crypto_alloc_tfmgfp ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___crypto_alloc_tfm: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad __crypto_alloc_tfm ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_crypto_alloc_base: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad crypto_alloc_base ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_crypto_create_tfm_node: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad crypto_create_tfm_node ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_crypto_clone_tfm: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad crypto_clone_tfm ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_crypto_find_alg: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad crypto_find_alg ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_crypto_alloc_tfm_node: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad crypto_alloc_tfm_node ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_crypto_destroy_tfm: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad crypto_destroy_tfm ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_crypto_has_alg: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad crypto_has_alg ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_crypto_req_done: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad crypto_req_done ; .previous"

%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.lock_class_key = type {}
%struct.pcpu_hot = type { %union.anon.14 }
%union.anon.14 = type { %struct.anon.15, [16 x i8] }
%struct.anon.15 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.13, ptr, ptr, ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.13 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%struct.crypto_larval = type { %struct.crypto_alg, ptr, %struct.completion, i32, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.crypto_tfm = type { %struct.refcount_struct, i32, i32, ptr, ptr, [0 x ptr] }
%struct.crypto_type = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.crypto_wait = type { %struct.completion, i32 }
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
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i64] }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
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

@crypto_alg_list = hidden global %struct.list_head { ptr @crypto_alg_list, ptr @crypto_alg_list }, align 8, !dbg !0
@__UNIQUE_ID___addressable_crypto_alg_list287 = internal global ptr @crypto_alg_list, section ".discard.addressable", align 8, !dbg !4221
@crypto_alg_sem = hidden global %struct.rw_semaphore { %struct.atomic64_t zeroinitializer, %struct.atomic64_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @crypto_alg_sem, i64 24), ptr getelementptr (i8, ptr @crypto_alg_sem, i64 24) } }, align 8, !dbg !4223
@__UNIQUE_ID___addressable_crypto_alg_sem288 = internal global ptr @crypto_alg_sem, section ".discard.addressable", align 8, !dbg !4225
@crypto_chain = hidden global %struct.blocking_notifier_head { %struct.rw_semaphore { %struct.atomic64_t zeroinitializer, %struct.atomic64_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @crypto_chain, i64 24), ptr getelementptr (i8, ptr @crypto_chain, i64 24) } }, ptr null }, align 8, !dbg !4227
@__UNIQUE_ID___addressable_crypto_chain289 = internal global ptr @crypto_chain, section ".discard.addressable", align 8, !dbg !4244
@__UNIQUE_ID___addressable_crypto_mod_get290 = internal global ptr @crypto_mod_get, section ".discard.addressable", align 8, !dbg !4246
@__UNIQUE_ID___addressable_crypto_mod_put291 = internal global ptr @crypto_mod_put, section ".discard.addressable", align 8, !dbg !4248
@__UNIQUE_ID___addressable_crypto_larval_alloc292 = internal global ptr @crypto_larval_alloc, section ".discard.addressable", align 8, !dbg !4250
@__UNIQUE_ID___addressable_crypto_larval_kill293 = internal global ptr @crypto_larval_kill, section ".discard.addressable", align 8, !dbg !4252
@.str = private unnamed_addr constant [13 x i8] c"crypto/api.c\00", align 1, !dbg !4254
@__UNIQUE_ID___addressable_crypto_wait_for_test294 = internal global ptr @crypto_wait_for_test, section ".discard.addressable", align 8, !dbg !4259
@.str.1 = private unnamed_addr constant [10 x i8] c"cryptomgr\00", align 1, !dbg !4261
@__UNIQUE_ID___addressable_crypto_probing_notify295 = internal global ptr @crypto_probing_notify, section ".discard.addressable", align 8, !dbg !4266
@__UNIQUE_ID___addressable_crypto_alg_mod_lookup296 = internal global ptr @crypto_alg_mod_lookup, section ".discard.addressable", align 8, !dbg !4268
@__UNIQUE_ID___addressable_crypto_shoot_alg297 = internal global ptr @crypto_shoot_alg, section ".discard.addressable", align 8, !dbg !4270
@__UNIQUE_ID___addressable___crypto_alloc_tfmgfp298 = internal global ptr @__crypto_alloc_tfmgfp, section ".discard.addressable", align 8, !dbg !4272
@__UNIQUE_ID___addressable___crypto_alloc_tfm299 = internal global ptr @__crypto_alloc_tfm, section ".discard.addressable", align 8, !dbg !4274
@__UNIQUE_ID___addressable_crypto_alloc_base300 = internal global ptr @crypto_alloc_base, section ".discard.addressable", align 8, !dbg !4276
@__UNIQUE_ID___addressable_crypto_create_tfm_node301 = internal global ptr @crypto_create_tfm_node, section ".discard.addressable", align 8, !dbg !4278
@__UNIQUE_ID___addressable_crypto_clone_tfm302 = internal global ptr @crypto_clone_tfm, section ".discard.addressable", align 8, !dbg !4280
@__UNIQUE_ID___addressable_crypto_find_alg303 = internal global ptr @crypto_find_alg, section ".discard.addressable", align 8, !dbg !4282
@__UNIQUE_ID___addressable_crypto_alloc_tfm_node304 = internal global ptr @crypto_alloc_tfm_node, section ".discard.addressable", align 8, !dbg !4284
@__UNIQUE_ID___addressable_crypto_destroy_tfm305 = internal global ptr @crypto_destroy_tfm, section ".discard.addressable", align 8, !dbg !4286
@__UNIQUE_ID___addressable_crypto_has_alg306 = internal global ptr @crypto_has_alg, section ".discard.addressable", align 8, !dbg !4288
@__UNIQUE_ID___addressable_crypto_req_done307 = internal global ptr @crypto_req_done, section ".discard.addressable", align 8, !dbg !4290
@__UNIQUE_ID_description308 = internal constant [42 x i8] c"crypto.description=Cryptographic core API\00", section ".modinfo", align 1, !dbg !4292
@__UNIQUE_ID_file309 = internal constant [26 x i8] c"crypto.file=crypto/crypto\00", section ".modinfo", align 1, !dbg !4297
@__UNIQUE_ID_license310 = internal constant [19 x i8] c"crypto.license=GPL\00", section ".modinfo", align 1, !dbg !4302
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !4307
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !4312
@.str.3 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1, !dbg !4319
@.str.4 = private unnamed_addr constant [10 x i8] c"crypto-%s\00", align 1, !dbg !4324
@.str.5 = private unnamed_addr constant [14 x i8] c"crypto-%s-all\00", align 1, !dbg !4326
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@llvm.compiler.used = appending global [24 x ptr] [ptr @__UNIQUE_ID___addressable_crypto_alg_list287, ptr @__UNIQUE_ID___addressable_crypto_alg_sem288, ptr @__UNIQUE_ID___addressable_crypto_chain289, ptr @__UNIQUE_ID___addressable_crypto_mod_get290, ptr @__UNIQUE_ID___addressable_crypto_mod_put291, ptr @__UNIQUE_ID___addressable_crypto_larval_alloc292, ptr @__UNIQUE_ID___addressable_crypto_larval_kill293, ptr @__UNIQUE_ID___addressable_crypto_wait_for_test294, ptr @__UNIQUE_ID___addressable_crypto_probing_notify295, ptr @__UNIQUE_ID___addressable_crypto_alg_mod_lookup296, ptr @__UNIQUE_ID___addressable_crypto_shoot_alg297, ptr @__UNIQUE_ID___addressable___crypto_alloc_tfmgfp298, ptr @__UNIQUE_ID___addressable___crypto_alloc_tfm299, ptr @__UNIQUE_ID___addressable_crypto_alloc_base300, ptr @__UNIQUE_ID___addressable_crypto_create_tfm_node301, ptr @__UNIQUE_ID___addressable_crypto_clone_tfm302, ptr @__UNIQUE_ID___addressable_crypto_find_alg303, ptr @__UNIQUE_ID___addressable_crypto_alloc_tfm_node304, ptr @__UNIQUE_ID___addressable_crypto_destroy_tfm305, ptr @__UNIQUE_ID___addressable_crypto_has_alg306, ptr @__UNIQUE_ID___addressable_crypto_req_done307, ptr @__UNIQUE_ID_description308, ptr @__UNIQUE_ID_file309, ptr @__UNIQUE_ID_license310], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @crypto_mod_get(ptr noundef %alg) #0 align 16 !dbg !4340 {
entry:
  %alg.addr = alloca ptr, align 8
  store ptr %alg, ptr %alg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %alg.addr, metadata !4344, metadata !DIExpression()), !dbg !4345
  %0 = load ptr, ptr %alg.addr, align 8, !dbg !4346
  %cra_module = getelementptr inbounds %struct.crypto_alg, ptr %0, i32 0, i32 15, !dbg !4347
  %1 = load ptr, ptr %cra_module, align 8, !dbg !4347
  %call = call zeroext i1 @try_module_get(ptr noundef %1) #15, !dbg !4348
  br i1 %call, label %cond.true, label %cond.false, !dbg !4348

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %alg.addr, align 8, !dbg !4349
  %call1 = call ptr @crypto_alg_get(ptr noundef %2) #15, !dbg !4350
  br label %cond.end, !dbg !4348

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !4348

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %call1, %cond.true ], [ null, %cond.false ], !dbg !4348
  ret ptr %cond, !dbg !4351
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4352 dso_local zeroext i1 @try_module_get(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @crypto_alg_get(ptr noundef %alg) #3 align 16 !dbg !4355 {
entry:
  %alg.addr = alloca ptr, align 8
  store ptr %alg, ptr %alg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %alg.addr, metadata !4357, metadata !DIExpression()), !dbg !4358
  %0 = load ptr, ptr %alg.addr, align 8, !dbg !4359
  %cra_refcnt = getelementptr inbounds %struct.crypto_alg, ptr %0, i32 0, i32 7, !dbg !4360
  call void @refcount_inc(ptr noundef %cra_refcnt) #15, !dbg !4361
  %1 = load ptr, ptr %alg.addr, align 8, !dbg !4362
  ret ptr %1, !dbg !4363
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @crypto_mod_put(ptr noundef %alg) #0 align 16 !dbg !4364 {
entry:
  %alg.addr = alloca ptr, align 8
  %module = alloca ptr, align 8
  store ptr %alg, ptr %alg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %alg.addr, metadata !4366, metadata !DIExpression()), !dbg !4368
  call void @llvm.lifetime.start.p0(i64 8, ptr %module) #16, !dbg !4369
  call void @llvm.dbg.declare(metadata ptr %module, metadata !4367, metadata !DIExpression()), !dbg !4370
  %0 = load ptr, ptr %alg.addr, align 8, !dbg !4371
  %cra_module = getelementptr inbounds %struct.crypto_alg, ptr %0, i32 0, i32 15, !dbg !4372
  %1 = load ptr, ptr %cra_module, align 8, !dbg !4372
  store ptr %1, ptr %module, align 8, !dbg !4370
  %2 = load ptr, ptr %alg.addr, align 8, !dbg !4373
  call void @crypto_alg_put(ptr noundef %2) #15, !dbg !4374
  %3 = load ptr, ptr %module, align 8, !dbg !4375
  call void @module_put(ptr noundef %3) #15, !dbg !4376
  call void @llvm.lifetime.end.p0(i64 8, ptr %module) #16, !dbg !4377
  ret void, !dbg !4377
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @crypto_alg_put(ptr noundef %alg) #3 align 16 !dbg !4378 {
entry:
  %alg.addr = alloca ptr, align 8
  store ptr %alg, ptr %alg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %alg.addr, metadata !4380, metadata !DIExpression()), !dbg !4381
  %0 = load ptr, ptr %alg.addr, align 8, !dbg !4382
  %cra_refcnt = getelementptr inbounds %struct.crypto_alg, ptr %0, i32 0, i32 7, !dbg !4384
  %call = call zeroext i1 @refcount_dec_and_test(ptr noundef %cra_refcnt) #15, !dbg !4385
  br i1 %call, label %land.lhs.true, label %if.end, !dbg !4386

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %alg.addr, align 8, !dbg !4387
  %cra_destroy = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 14, !dbg !4388
  %2 = load ptr, ptr %cra_destroy, align 8, !dbg !4388
  %tobool = icmp ne ptr %2, null, !dbg !4387
  br i1 %tobool, label %if.then, label %if.end, !dbg !4389

if.then:                                          ; preds = %land.lhs.true
  %3 = load ptr, ptr %alg.addr, align 8, !dbg !4390
  %cra_destroy1 = getelementptr inbounds %struct.crypto_alg, ptr %3, i32 0, i32 14, !dbg !4391
  %4 = load ptr, ptr %cra_destroy1, align 8, !dbg !4391
  %5 = load ptr, ptr %alg.addr, align 8, !dbg !4392
  call void %4(ptr noundef %5) #15, !dbg !4390
  br label %if.end, !dbg !4390

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void, !dbg !4393
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4394 dso_local void @module_put(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @crypto_larval_alloc(ptr noundef %name, i32 noundef %type, i32 noundef %mask) #0 align 16 !dbg !4395 {
entry:
  %retval = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %mask.addr = alloca i32, align 4
  %larval = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !4399, metadata !DIExpression()), !dbg !4403
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !4400, metadata !DIExpression()), !dbg !4404
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !4401, metadata !DIExpression()), !dbg !4405
  call void @llvm.lifetime.start.p0(i64 8, ptr %larval) #16, !dbg !4406
  call void @llvm.dbg.declare(metadata ptr %larval, metadata !4402, metadata !DIExpression()), !dbg !4407
  %call = call noalias ptr @kzalloc(i64 noundef 432, i32 noundef 3264) #17, !dbg !4408
  store ptr %call, ptr %larval, align 8, !dbg !4409
  %0 = load ptr, ptr %larval, align 8, !dbg !4410
  %tobool = icmp ne ptr %0, null, !dbg !4410
  br i1 %tobool, label %if.end, label %if.then, !dbg !4412

if.then:                                          ; preds = %entry
  %call1 = call ptr @ERR_PTR(i64 noundef -12) #15, !dbg !4413
  store ptr %call1, ptr %retval, align 8, !dbg !4414
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4414

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %mask.addr, align 4, !dbg !4415
  %2 = load ptr, ptr %larval, align 8, !dbg !4416
  %mask2 = getelementptr inbounds %struct.crypto_larval, ptr %2, i32 0, i32 3, !dbg !4417
  store i32 %1, ptr %mask2, align 8, !dbg !4418
  %3 = load i32, ptr %type.addr, align 4, !dbg !4419
  %or = or i32 16, %3, !dbg !4420
  %4 = load ptr, ptr %larval, align 8, !dbg !4421
  %alg = getelementptr inbounds %struct.crypto_larval, ptr %4, i32 0, i32 0, !dbg !4422
  %cra_flags = getelementptr inbounds %struct.crypto_alg, ptr %alg, i32 0, i32 2, !dbg !4423
  store i32 %or, ptr %cra_flags, align 8, !dbg !4424
  %5 = load ptr, ptr %larval, align 8, !dbg !4425
  %alg3 = getelementptr inbounds %struct.crypto_larval, ptr %5, i32 0, i32 0, !dbg !4426
  %cra_priority = getelementptr inbounds %struct.crypto_alg, ptr %alg3, i32 0, i32 6, !dbg !4427
  store i32 -1, ptr %cra_priority, align 8, !dbg !4428
  %6 = load ptr, ptr %larval, align 8, !dbg !4429
  %alg4 = getelementptr inbounds %struct.crypto_larval, ptr %6, i32 0, i32 0, !dbg !4430
  %cra_destroy = getelementptr inbounds %struct.crypto_alg, ptr %alg4, i32 0, i32 14, !dbg !4431
  store ptr @crypto_larval_destroy, ptr %cra_destroy, align 8, !dbg !4432
  %7 = load ptr, ptr %larval, align 8, !dbg !4433
  %alg5 = getelementptr inbounds %struct.crypto_larval, ptr %7, i32 0, i32 0, !dbg !4434
  %cra_name = getelementptr inbounds %struct.crypto_alg, ptr %alg5, i32 0, i32 8, !dbg !4435
  %arraydecay = getelementptr inbounds [128 x i8], ptr %cra_name, i64 0, i64 0, !dbg !4433
  %8 = load ptr, ptr %name.addr, align 8, !dbg !4436
  %call6 = call i64 @strscpy(ptr noundef %arraydecay, ptr noundef %8, i64 noundef 128) #15, !dbg !4437
  %9 = load ptr, ptr %larval, align 8, !dbg !4438
  %completion = getelementptr inbounds %struct.crypto_larval, ptr %9, i32 0, i32 2, !dbg !4439
  call void @init_completion(ptr noundef %completion) #15, !dbg !4440
  %10 = load ptr, ptr %larval, align 8, !dbg !4441
  store ptr %10, ptr %retval, align 8, !dbg !4442
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4442

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %larval) #16, !dbg !4443
  %11 = load ptr, ptr %retval, align 8, !dbg !4443
  ret ptr %11, !dbg !4443
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #5 align 16 !dbg !4444 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4448, metadata !DIExpression()), !dbg !4450
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4449, metadata !DIExpression()), !dbg !4451
  %0 = load i64, ptr %size.addr, align 8, !dbg !4452
  %1 = load i32, ptr %flags.addr, align 4, !dbg !4453
  %or = or i32 %1, 256, !dbg !4454
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #17, !dbg !4455
  ret ptr %call, !dbg !4456
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #3 align 16 !dbg !4457 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !4462, metadata !DIExpression()), !dbg !4463
  %0 = load i64, ptr %error.addr, align 8, !dbg !4464
  %1 = inttoptr i64 %0 to ptr, !dbg !4465
  ret ptr %1, !dbg !4466
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @crypto_larval_destroy(ptr noundef %alg) #0 align 16 !dbg !4467 {
entry:
  %alg.addr = alloca ptr, align 8
  %larval = alloca ptr, align 8
  store ptr %alg, ptr %alg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %alg.addr, metadata !4469, metadata !DIExpression()), !dbg !4471
  call void @llvm.lifetime.start.p0(i64 8, ptr %larval) #16, !dbg !4472
  call void @llvm.dbg.declare(metadata ptr %larval, metadata !4470, metadata !DIExpression()), !dbg !4473
  %0 = load ptr, ptr %alg.addr, align 8, !dbg !4474
  store ptr %0, ptr %larval, align 8, !dbg !4473
  br label %do.body, !dbg !4475

do.body:                                          ; preds = %entry
  %1 = load ptr, ptr %alg.addr, align 8, !dbg !4476
  %call = call i32 @crypto_is_larval(ptr noundef %1) #15, !dbg !4476
  %tobool = icmp ne i32 %call, 0, !dbg !4476
  %lnot = xor i1 %tobool, true, !dbg !4476
  %lnot1 = xor i1 %lnot, true, !dbg !4476
  %lnot2 = xor i1 %lnot1, true, !dbg !4476
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4476
  %conv = sext i32 %lnot.ext to i64, !dbg !4476
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4476
  %tobool3 = icmp ne i64 %expval, 0, !dbg !4476
  br i1 %tobool3, label %if.then, label %if.end, !dbg !4479

if.then:                                          ; preds = %do.body
  br label %do.body4, !dbg !4476

do.body4:                                         ; preds = %if.then
  br label %do.body5, !dbg !4480

do.body5:                                         ; preds = %do.body4
  br label %do.cond, !dbg !4482

do.cond:                                          ; preds = %do.body5
  br label %do.end, !dbg !4482

do.end:                                           ; preds = %do.cond
  br label %do.body6, !dbg !4480

do.body6:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 100, i32 0, i64 12) #16, !dbg !4484, !srcloc !4486
  br label %do.cond7, !dbg !4484

do.cond7:                                         ; preds = %do.body6
  br label %do.end8, !dbg !4484

do.end8:                                          ; preds = %do.cond7
  unreachable, !dbg !4480

do.cond9:                                         ; No predecessors!
  br label %do.end10, !dbg !4480

do.end10:                                         ; preds = %do.cond9
  br label %if.end, !dbg !4480

if.end:                                           ; preds = %do.end10, %do.body
  br label %do.cond11, !dbg !4479

do.cond11:                                        ; preds = %if.end
  br label %do.end12, !dbg !4479

do.end12:                                         ; preds = %do.cond11
  %2 = load ptr, ptr %larval, align 8, !dbg !4487
  %adult = getelementptr inbounds %struct.crypto_larval, ptr %2, i32 0, i32 1, !dbg !4489
  %3 = load ptr, ptr %adult, align 8, !dbg !4489
  %call13 = call zeroext i1 @IS_ERR_OR_NULL(ptr noundef %3) #15, !dbg !4490
  br i1 %call13, label %if.end16, label %if.then14, !dbg !4491

if.then14:                                        ; preds = %do.end12
  %4 = load ptr, ptr %larval, align 8, !dbg !4492
  %adult15 = getelementptr inbounds %struct.crypto_larval, ptr %4, i32 0, i32 1, !dbg !4493
  %5 = load ptr, ptr %adult15, align 8, !dbg !4493
  call void @crypto_mod_put(ptr noundef %5) #15, !dbg !4494
  br label %if.end16, !dbg !4494

if.end16:                                         ; preds = %if.then14, %do.end12
  %6 = load ptr, ptr %larval, align 8, !dbg !4495
  call void @kfree(ptr noundef %6) #15, !dbg !4496
  call void @llvm.lifetime.end.p0(i64 8, ptr %larval) #16, !dbg !4497
  ret void, !dbg !4497
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4498 dso_local i64 @strscpy(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @init_completion(ptr noundef %x) #3 align 16 !dbg !4314 {
entry:
  %x.addr = alloca ptr, align 8
  store ptr %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !4318, metadata !DIExpression()), !dbg !4502
  %0 = load ptr, ptr %x.addr, align 8, !dbg !4503
  %done = getelementptr inbounds %struct.completion, ptr %0, i32 0, i32 0, !dbg !4504
  store i32 0, ptr %done, align 8, !dbg !4505
  br label %do.body, !dbg !4506

do.body:                                          ; preds = %entry
  %1 = load ptr, ptr %x.addr, align 8, !dbg !4507
  %wait = getelementptr inbounds %struct.completion, ptr %1, i32 0, i32 1, !dbg !4507
  call void @__init_swait_queue_head(ptr noundef %wait, ptr noundef @.str.3, ptr noundef @init_completion.__key) #15, !dbg !4507
  br label %do.end, !dbg !4507

do.end:                                           ; preds = %do.body
  ret void, !dbg !4509
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @crypto_larval_kill(ptr noundef %alg) #0 align 16 !dbg !4510 {
entry:
  %alg.addr = alloca ptr, align 8
  %larval = alloca ptr, align 8
  store ptr %alg, ptr %alg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %alg.addr, metadata !4512, metadata !DIExpression()), !dbg !4514
  call void @llvm.lifetime.start.p0(i64 8, ptr %larval) #16, !dbg !4515
  call void @llvm.dbg.declare(metadata ptr %larval, metadata !4513, metadata !DIExpression()), !dbg !4516
  %0 = load ptr, ptr %alg.addr, align 8, !dbg !4517
  store ptr %0, ptr %larval, align 8, !dbg !4516
  call void @down_write(ptr noundef @crypto_alg_sem) #15, !dbg !4518
  %1 = load ptr, ptr %alg.addr, align 8, !dbg !4519
  %cra_list = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 0, !dbg !4520
  call void @list_del(ptr noundef %cra_list) #15, !dbg !4521
  call void @up_write(ptr noundef @crypto_alg_sem) #15, !dbg !4522
  %2 = load ptr, ptr %larval, align 8, !dbg !4523
  %completion = getelementptr inbounds %struct.crypto_larval, ptr %2, i32 0, i32 2, !dbg !4524
  call void @complete_all(ptr noundef %completion) #15, !dbg !4525
  %3 = load ptr, ptr %alg.addr, align 8, !dbg !4526
  call void @crypto_alg_put(ptr noundef %3) #15, !dbg !4527
  call void @llvm.lifetime.end.p0(i64 8, ptr %larval) #16, !dbg !4528
  ret void, !dbg !4528
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4529 dso_local void @down_write(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del(ptr noundef %entry1) #3 align 16 !dbg !4533 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !4538, metadata !DIExpression()), !dbg !4539
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !4540
  call void @__list_del_entry(ptr noundef %0) #15, !dbg !4541
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !4542
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !4543
  store ptr getelementptr (i8, ptr inttoptr (i64 256 to ptr), i64 -2401263026318606336), ptr %next, align 8, !dbg !4544
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !4545
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !4546
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !4547
  ret void, !dbg !4548
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4549 dso_local void @up_write(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4550 dso_local void @complete_all(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @crypto_wait_for_test(ptr noundef %larval) #0 align 16 !dbg !4551 {
entry:
  %larval.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_warn_on27 = alloca i32, align 4
  %__flags43 = alloca i32, align 4
  %tmp56 = alloca i64, align 8
  store ptr %larval, ptr %larval.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %larval.addr, metadata !4555, metadata !DIExpression()), !dbg !4569
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #16, !dbg !4570
  call void @llvm.dbg.declare(metadata ptr %err, metadata !4556, metadata !DIExpression()), !dbg !4571
  %0 = load ptr, ptr %larval.addr, align 8, !dbg !4572
  %adult = getelementptr inbounds %struct.crypto_larval, ptr %0, i32 0, i32 1, !dbg !4573
  %1 = load ptr, ptr %adult, align 8, !dbg !4573
  %call = call i32 @crypto_probing_notify(i64 noundef 1, ptr noundef %1) #15, !dbg !4574
  store i32 %call, ptr %err, align 4, !dbg !4575
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !4576
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4557, metadata !DIExpression()), !dbg !4576
  %2 = load i32, ptr %err, align 4, !dbg !4576
  %cmp = icmp ne i32 %2, 32769, !dbg !4576
  %lnot = xor i1 %cmp, true, !dbg !4576
  %lnot1 = xor i1 %lnot, true, !dbg !4576
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4576
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !4576
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !4577
  %tobool = icmp ne i32 %3, 0, !dbg !4577
  %lnot2 = xor i1 %tobool, true, !dbg !4577
  %lnot4 = xor i1 %lnot2, true, !dbg !4577
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !4577
  %conv = sext i32 %lnot.ext5 to i64, !dbg !4577
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4577
  %tobool6 = icmp ne i64 %expval, 0, !dbg !4577
  br i1 %tobool6, label %if.then, label %if.end, !dbg !4576

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !4577

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #16, !dbg !4578
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4560, metadata !DIExpression()), !dbg !4578
  store i32 2307, ptr %__flags, align 4, !dbg !4578
  br label %do.body7, !dbg !4578

do.body7:                                         ; preds = %do.body
  br label %do.cond, !dbg !4579

do.cond:                                          ; preds = %do.body7
  br label %do.end, !dbg !4579

do.end:                                           ; preds = %do.cond
  br label %do.body8, !dbg !4578

do.body8:                                         ; preds = %do.end
  %4 = load i32, ptr %__flags, align 4, !dbg !4581
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 172, i32 %4, i64 12) #16, !dbg !4581, !srcloc !4583
  br label %do.cond9, !dbg !4581

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !4581

do.end10:                                         ; preds = %do.cond9
  br label %do.body11, !dbg !4578

do.body11:                                        ; preds = %do.end10
  br label %do.cond12, !dbg !4584

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !4584

do.end13:                                         ; preds = %do.cond12
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #16, !dbg !4577
  br label %do.cond14, !dbg !4578

do.cond14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !4578

do.end15:                                         ; preds = %do.cond14
  br label %if.end, !dbg !4578

if.end:                                           ; preds = %do.end15, %entry
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !4576
  %tobool16 = icmp ne i32 %5, 0, !dbg !4576
  %lnot17 = xor i1 %tobool16, true, !dbg !4576
  %lnot19 = xor i1 %lnot17, true, !dbg !4576
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !4576
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !4576
  %expval22 = call i64 @llvm.expect.i64(i64 %conv21, i64 0), !dbg !4576
  store i64 %expval22, ptr %tmp, align 8, !dbg !4577
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !4586
  %6 = load i64, ptr %tmp, align 8, !dbg !4576
  %tobool23 = icmp ne i64 %6, 0, !dbg !4586
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !4587

if.then24:                                        ; preds = %if.end
  br label %out, !dbg !4588

if.end25:                                         ; preds = %if.end
  %7 = load ptr, ptr %larval.addr, align 8, !dbg !4589
  %completion = getelementptr inbounds %struct.crypto_larval, ptr %7, i32 0, i32 2, !dbg !4590
  %call26 = call i32 @wait_for_completion_killable(ptr noundef %completion) #15, !dbg !4591
  store i32 %call26, ptr %err, align 4, !dbg !4592
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on27) #16, !dbg !4593
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on27, metadata !4563, metadata !DIExpression()), !dbg !4593
  %8 = load i32, ptr %err, align 4, !dbg !4593
  %tobool28 = icmp ne i32 %8, 0, !dbg !4593
  %lnot29 = xor i1 %tobool28, true, !dbg !4593
  %lnot31 = xor i1 %lnot29, true, !dbg !4593
  %lnot.ext32 = zext i1 %lnot31 to i32, !dbg !4593
  store i32 %lnot.ext32, ptr %__ret_warn_on27, align 4, !dbg !4593
  %9 = load i32, ptr %__ret_warn_on27, align 4, !dbg !4594
  %tobool33 = icmp ne i32 %9, 0, !dbg !4594
  %lnot34 = xor i1 %tobool33, true, !dbg !4594
  %lnot36 = xor i1 %lnot34, true, !dbg !4594
  %lnot.ext37 = zext i1 %lnot36 to i32, !dbg !4594
  %conv38 = sext i32 %lnot.ext37 to i64, !dbg !4594
  %expval39 = call i64 @llvm.expect.i64(i64 %conv38, i64 0), !dbg !4594
  %tobool40 = icmp ne i64 %expval39, 0, !dbg !4594
  br i1 %tobool40, label %if.then41, label %if.end55, !dbg !4593

if.then41:                                        ; preds = %if.end25
  br label %do.body42, !dbg !4594

do.body42:                                        ; preds = %if.then41
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags43) #16, !dbg !4595
  call void @llvm.dbg.declare(metadata ptr %__flags43, metadata !4565, metadata !DIExpression()), !dbg !4595
  store i32 2305, ptr %__flags43, align 4, !dbg !4595
  br label %do.body44, !dbg !4595

do.body44:                                        ; preds = %do.body42
  br label %do.cond45, !dbg !4596

do.cond45:                                        ; preds = %do.body44
  br label %do.end46, !dbg !4596

do.end46:                                         ; preds = %do.cond45
  br label %do.body47, !dbg !4595

do.body47:                                        ; preds = %do.end46
  %10 = load i32, ptr %__flags43, align 4, !dbg !4598
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 176, i32 %10, i64 12) #16, !dbg !4598, !srcloc !4600
  br label %do.cond48, !dbg !4598

do.cond48:                                        ; preds = %do.body47
  br label %do.end49, !dbg !4598

do.end49:                                         ; preds = %do.cond48
  br label %do.body50, !dbg !4595

do.body50:                                        ; preds = %do.end49
  br label %do.cond51, !dbg !4601

do.cond51:                                        ; preds = %do.body50
  br label %do.end52, !dbg !4601

do.end52:                                         ; preds = %do.cond51
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags43) #16, !dbg !4594
  br label %do.cond53, !dbg !4595

do.cond53:                                        ; preds = %do.end52
  br label %do.end54, !dbg !4595

do.end54:                                         ; preds = %do.cond53
  br label %if.end55, !dbg !4595

if.end55:                                         ; preds = %do.end54, %if.end25
  %11 = load i32, ptr %__ret_warn_on27, align 4, !dbg !4593
  %tobool57 = icmp ne i32 %11, 0, !dbg !4593
  %lnot58 = xor i1 %tobool57, true, !dbg !4593
  %lnot60 = xor i1 %lnot58, true, !dbg !4593
  %lnot.ext61 = zext i1 %lnot60 to i32, !dbg !4593
  %conv62 = sext i32 %lnot.ext61 to i64, !dbg !4593
  %expval63 = call i64 @llvm.expect.i64(i64 %conv62, i64 0), !dbg !4593
  store i64 %expval63, ptr %tmp56, align 8, !dbg !4594
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on27) #16, !dbg !4603
  %12 = load i64, ptr %tmp56, align 8, !dbg !4593
  br label %out, !dbg !4603

out:                                              ; preds = %if.end55, %if.then24
  call void @llvm.dbg.label(metadata !4568), !dbg !4604
  %13 = load ptr, ptr %larval.addr, align 8, !dbg !4605
  %alg = getelementptr inbounds %struct.crypto_larval, ptr %13, i32 0, i32 0, !dbg !4606
  call void @crypto_larval_kill(ptr noundef %alg) #15, !dbg !4607
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #16, !dbg !4608
  ret void, !dbg !4608
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @crypto_probing_notify(i64 noundef %val, ptr noundef %v) #0 align 16 !dbg !4609 {
entry:
  %val.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  %ok = alloca i32, align 4
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !4613, metadata !DIExpression()), !dbg !4616
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4614, metadata !DIExpression()), !dbg !4617
  call void @llvm.lifetime.start.p0(i64 4, ptr %ok) #16, !dbg !4618
  call void @llvm.dbg.declare(metadata ptr %ok, metadata !4615, metadata !DIExpression()), !dbg !4619
  %0 = load i64, ptr %val.addr, align 8, !dbg !4620
  %1 = load ptr, ptr %v.addr, align 8, !dbg !4621
  %call = call i32 @blocking_notifier_call_chain(ptr noundef @crypto_chain, i64 noundef %0, ptr noundef %1) #15, !dbg !4622
  store i32 %call, ptr %ok, align 4, !dbg !4623
  %2 = load i32, ptr %ok, align 4, !dbg !4624
  %cmp = icmp eq i32 %2, 0, !dbg !4626
  br i1 %cmp, label %if.then, label %if.end, !dbg !4627

if.then:                                          ; preds = %entry
  %call1 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef @.str.1) #15, !dbg !4628
  %3 = load i64, ptr %val.addr, align 8, !dbg !4630
  %4 = load ptr, ptr %v.addr, align 8, !dbg !4631
  %call2 = call i32 @blocking_notifier_call_chain(ptr noundef @crypto_chain, i64 noundef %3, ptr noundef %4) #15, !dbg !4632
  store i32 %call2, ptr %ok, align 4, !dbg !4633
  br label %if.end, !dbg !4634

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %ok, align 4, !dbg !4635
  call void @llvm.lifetime.end.p0(i64 4, ptr %ok) #16, !dbg !4636
  ret i32 %5, !dbg !4637
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4638 dso_local i32 @wait_for_completion_killable(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4641 dso_local i32 @blocking_notifier_call_chain(ptr noundef, i64 noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4645 dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @crypto_alg_mod_lookup(ptr noundef %name, i32 noundef %type, i32 noundef %mask) #0 align 16 !dbg !4649 {
entry:
  %retval = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %mask.addr = alloca i32, align 4
  %alg = alloca ptr, align 8
  %larval = alloca ptr, align 8
  %ok = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !4653, metadata !DIExpression()), !dbg !4659
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !4654, metadata !DIExpression()), !dbg !4660
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !4655, metadata !DIExpression()), !dbg !4661
  call void @llvm.lifetime.start.p0(i64 8, ptr %alg) #16, !dbg !4662
  call void @llvm.dbg.declare(metadata ptr %alg, metadata !4656, metadata !DIExpression()), !dbg !4663
  call void @llvm.lifetime.start.p0(i64 8, ptr %larval) #16, !dbg !4664
  call void @llvm.dbg.declare(metadata ptr %larval, metadata !4657, metadata !DIExpression()), !dbg !4665
  call void @llvm.lifetime.start.p0(i64 4, ptr %ok) #16, !dbg !4666
  call void @llvm.dbg.declare(metadata ptr %ok, metadata !4658, metadata !DIExpression()), !dbg !4667
  %0 = load i32, ptr %type.addr, align 4, !dbg !4668
  %1 = load i32, ptr %mask.addr, align 4, !dbg !4670
  %or = or i32 %0, %1, !dbg !4671
  %and = and i32 %or, 8192, !dbg !4672
  %tobool = icmp ne i32 %and, 0, !dbg !4672
  br i1 %tobool, label %if.end, label %if.then, !dbg !4673

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %mask.addr, align 4, !dbg !4674
  %or1 = or i32 %2, 8192, !dbg !4674
  store i32 %or1, ptr %mask.addr, align 4, !dbg !4674
  br label %if.end, !dbg !4675

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %name.addr, align 8, !dbg !4676
  %4 = load i32, ptr %type.addr, align 4, !dbg !4677
  %5 = load i32, ptr %mask.addr, align 4, !dbg !4678
  %call = call ptr @crypto_larval_lookup(ptr noundef %3, i32 noundef %4, i32 noundef %5) #15, !dbg !4679
  store ptr %call, ptr %larval, align 8, !dbg !4680
  %6 = load ptr, ptr %larval, align 8, !dbg !4681
  %call2 = call zeroext i1 @IS_ERR(ptr noundef %6) #15, !dbg !4683
  br i1 %call2, label %if.then5, label %lor.lhs.false, !dbg !4684

lor.lhs.false:                                    ; preds = %if.end
  %7 = load ptr, ptr %larval, align 8, !dbg !4685
  %call3 = call i32 @crypto_is_larval(ptr noundef %7) #15, !dbg !4686
  %tobool4 = icmp ne i32 %call3, 0, !dbg !4686
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !4687

if.then5:                                         ; preds = %lor.lhs.false, %if.end
  %8 = load ptr, ptr %larval, align 8, !dbg !4688
  store ptr %8, ptr %retval, align 8, !dbg !4689
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4689

if.end6:                                          ; preds = %lor.lhs.false
  %9 = load ptr, ptr %larval, align 8, !dbg !4690
  %call7 = call i32 @crypto_probing_notify(i64 noundef 0, ptr noundef %9) #15, !dbg !4691
  store i32 %call7, ptr %ok, align 4, !dbg !4692
  %10 = load i32, ptr %ok, align 4, !dbg !4693
  %cmp = icmp eq i32 %10, 32769, !dbg !4695
  br i1 %cmp, label %if.then8, label %if.else, !dbg !4696

if.then8:                                         ; preds = %if.end6
  %11 = load ptr, ptr %larval, align 8, !dbg !4697
  %call9 = call ptr @crypto_larval_wait(ptr noundef %11) #15, !dbg !4698
  store ptr %call9, ptr %alg, align 8, !dbg !4699
  br label %if.end11, !dbg !4700

if.else:                                          ; preds = %if.end6
  %12 = load ptr, ptr %larval, align 8, !dbg !4701
  call void @crypto_mod_put(ptr noundef %12) #15, !dbg !4703
  %call10 = call ptr @ERR_PTR(i64 noundef -2) #15, !dbg !4704
  store ptr %call10, ptr %alg, align 8, !dbg !4705
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then8
  %13 = load ptr, ptr %larval, align 8, !dbg !4706
  call void @crypto_larval_kill(ptr noundef %13) #15, !dbg !4707
  %14 = load ptr, ptr %alg, align 8, !dbg !4708
  store ptr %14, ptr %retval, align 8, !dbg !4709
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4709

cleanup:                                          ; preds = %if.end11, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ok) #16, !dbg !4710
  call void @llvm.lifetime.end.p0(i64 8, ptr %larval) #16, !dbg !4710
  call void @llvm.lifetime.end.p0(i64 8, ptr %alg) #16, !dbg !4710
  %15 = load ptr, ptr %retval, align 8, !dbg !4710
  ret ptr %15, !dbg !4710
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @crypto_larval_lookup(ptr noundef %name, i32 noundef %type, i32 noundef %mask) #0 align 16 !dbg !4711 {
entry:
  %retval = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %mask.addr = alloca i32, align 4
  %alg = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !4713, metadata !DIExpression()), !dbg !4717
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !4714, metadata !DIExpression()), !dbg !4718
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !4715, metadata !DIExpression()), !dbg !4719
  call void @llvm.lifetime.start.p0(i64 8, ptr %alg) #16, !dbg !4720
  call void @llvm.dbg.declare(metadata ptr %alg, metadata !4716, metadata !DIExpression()), !dbg !4721
  %0 = load ptr, ptr %name.addr, align 8, !dbg !4722
  %tobool = icmp ne ptr %0, null, !dbg !4722
  br i1 %tobool, label %if.end, label %if.then, !dbg !4724

if.then:                                          ; preds = %entry
  %call = call ptr @ERR_PTR(i64 noundef -2) #15, !dbg !4725
  store ptr %call, ptr %retval, align 8, !dbg !4726
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4726

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %type.addr, align 4, !dbg !4727
  %and = and i32 %1, -49, !dbg !4727
  store i32 %and, ptr %type.addr, align 4, !dbg !4727
  %2 = load i32, ptr %mask.addr, align 4, !dbg !4728
  %and1 = and i32 %2, -49, !dbg !4728
  store i32 %and1, ptr %mask.addr, align 4, !dbg !4728
  %3 = load ptr, ptr %name.addr, align 8, !dbg !4729
  %4 = load i32, ptr %type.addr, align 4, !dbg !4730
  %5 = load i32, ptr %mask.addr, align 4, !dbg !4731
  %call2 = call ptr @crypto_alg_lookup(ptr noundef %3, i32 noundef %4, i32 noundef %5) #15, !dbg !4732
  store ptr %call2, ptr %alg, align 8, !dbg !4733
  %6 = load ptr, ptr %alg, align 8, !dbg !4734
  %tobool3 = icmp ne ptr %6, null, !dbg !4734
  br i1 %tobool3, label %if.end15, label %land.lhs.true, !dbg !4736

land.lhs.true:                                    ; preds = %if.end
  %7 = load i32, ptr %mask.addr, align 4, !dbg !4737
  %and4 = and i32 %7, 32768, !dbg !4738
  %tobool5 = icmp ne i32 %and4, 0, !dbg !4738
  br i1 %tobool5, label %if.end15, label %if.then6, !dbg !4739

if.then6:                                         ; preds = %land.lhs.true
  %8 = load ptr, ptr %name.addr, align 8, !dbg !4740
  %call7 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef @.str.4, ptr noundef %8) #15, !dbg !4740
  %9 = load i32, ptr %type.addr, align 4, !dbg !4742
  %xor = xor i32 %9, 256, !dbg !4744
  %10 = load i32, ptr %mask.addr, align 4, !dbg !4745
  %and8 = and i32 %xor, %10, !dbg !4746
  %and9 = and i32 %and8, 256, !dbg !4747
  %tobool10 = icmp ne i32 %and9, 0, !dbg !4747
  br i1 %tobool10, label %if.end13, label %if.then11, !dbg !4748

if.then11:                                        ; preds = %if.then6
  %11 = load ptr, ptr %name.addr, align 8, !dbg !4749
  %call12 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef @.str.5, ptr noundef %11) #15, !dbg !4749
  br label %if.end13, !dbg !4749

if.end13:                                         ; preds = %if.then11, %if.then6
  %12 = load ptr, ptr %name.addr, align 8, !dbg !4750
  %13 = load i32, ptr %type.addr, align 4, !dbg !4751
  %14 = load i32, ptr %mask.addr, align 4, !dbg !4752
  %call14 = call ptr @crypto_alg_lookup(ptr noundef %12, i32 noundef %13, i32 noundef %14) #15, !dbg !4753
  store ptr %call14, ptr %alg, align 8, !dbg !4754
  br label %if.end15, !dbg !4755

if.end15:                                         ; preds = %if.end13, %land.lhs.true, %if.end
  %15 = load ptr, ptr %alg, align 8, !dbg !4756
  %call16 = call zeroext i1 @IS_ERR_OR_NULL(ptr noundef %15) #15, !dbg !4758
  br i1 %call16, label %if.else, label %land.lhs.true17, !dbg !4759

land.lhs.true17:                                  ; preds = %if.end15
  %16 = load ptr, ptr %alg, align 8, !dbg !4760
  %call18 = call i32 @crypto_is_larval(ptr noundef %16) #15, !dbg !4761
  %tobool19 = icmp ne i32 %call18, 0, !dbg !4761
  br i1 %tobool19, label %if.then20, label %if.else, !dbg !4762

if.then20:                                        ; preds = %land.lhs.true17
  %17 = load ptr, ptr %alg, align 8, !dbg !4763
  %call21 = call ptr @crypto_larval_wait(ptr noundef %17) #15, !dbg !4764
  store ptr %call21, ptr %alg, align 8, !dbg !4765
  br label %if.end26, !dbg !4766

if.else:                                          ; preds = %land.lhs.true17, %if.end15
  %18 = load ptr, ptr %alg, align 8, !dbg !4767
  %tobool22 = icmp ne ptr %18, null, !dbg !4767
  br i1 %tobool22, label %if.end25, label %if.then23, !dbg !4769

if.then23:                                        ; preds = %if.else
  %19 = load ptr, ptr %name.addr, align 8, !dbg !4770
  %20 = load i32, ptr %type.addr, align 4, !dbg !4771
  %21 = load i32, ptr %mask.addr, align 4, !dbg !4772
  %call24 = call ptr @crypto_larval_add(ptr noundef %19, i32 noundef %20, i32 noundef %21) #15, !dbg !4773
  store ptr %call24, ptr %alg, align 8, !dbg !4774
  br label %if.end25, !dbg !4775

if.end25:                                         ; preds = %if.then23, %if.else
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.then20
  %22 = load ptr, ptr %alg, align 8, !dbg !4776
  store ptr %22, ptr %retval, align 8, !dbg !4777
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4777

cleanup:                                          ; preds = %if.end26, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %alg) #16, !dbg !4778
  %23 = load ptr, ptr %retval, align 8, !dbg !4778
  ret ptr %23, !dbg !4778
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #3 align 16 !dbg !4779 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4783, metadata !DIExpression()), !dbg !4784
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !4785
  %1 = ptrtoint ptr %0 to i64, !dbg !4785
  %2 = inttoptr i64 %1 to ptr, !dbg !4785
  %3 = ptrtoint ptr %2 to i64, !dbg !4785
  %cmp = icmp uge i64 %3, -4095, !dbg !4785
  %lnot = xor i1 %cmp, true, !dbg !4785
  %lnot1 = xor i1 %lnot, true, !dbg !4785
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4785
  %conv = sext i32 %lnot.ext to i64, !dbg !4785
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4785
  %tobool = icmp ne i64 %expval, 0, !dbg !4785
  ret i1 %tobool, !dbg !4786
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crypto_is_larval(ptr noundef %alg) #3 align 16 !dbg !4787 {
entry:
  %alg.addr = alloca ptr, align 8
  store ptr %alg, ptr %alg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %alg.addr, metadata !4791, metadata !DIExpression()), !dbg !4792
  %0 = load ptr, ptr %alg.addr, align 8, !dbg !4793
  %cra_flags = getelementptr inbounds %struct.crypto_alg, ptr %0, i32 0, i32 2, !dbg !4794
  %1 = load i32, ptr %cra_flags, align 8, !dbg !4794
  %and = and i32 %1, 16, !dbg !4795
  ret i32 %and, !dbg !4796
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @crypto_larval_wait(ptr noundef %alg) #0 align 16 !dbg !4797 {
entry:
  %alg.addr = alloca ptr, align 8
  %larval = alloca ptr, align 8
  %timeout = alloca i64, align 8
  store ptr %alg, ptr %alg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %alg.addr, metadata !4799, metadata !DIExpression()), !dbg !4802
  call void @llvm.lifetime.start.p0(i64 8, ptr %larval) #16, !dbg !4803
  call void @llvm.dbg.declare(metadata ptr %larval, metadata !4800, metadata !DIExpression()), !dbg !4804
  %0 = load ptr, ptr %alg.addr, align 8, !dbg !4805
  store ptr %0, ptr %larval, align 8, !dbg !4804
  call void @llvm.lifetime.start.p0(i64 8, ptr %timeout) #16, !dbg !4806
  call void @llvm.dbg.declare(metadata ptr %timeout, metadata !4801, metadata !DIExpression()), !dbg !4807
  %call = call zeroext i1 @crypto_boot_test_finished() #15, !dbg !4808
  br i1 %call, label %if.end, label %if.then, !dbg !4810

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %larval, align 8, !dbg !4811
  call void @crypto_start_test(ptr noundef %1) #15, !dbg !4812
  br label %if.end, !dbg !4812

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %larval, align 8, !dbg !4813
  %completion = getelementptr inbounds %struct.crypto_larval, ptr %2, i32 0, i32 2, !dbg !4814
  %call1 = call i64 @wait_for_completion_killable_timeout(ptr noundef %completion, i64 noundef 60000) #15, !dbg !4815
  store i64 %call1, ptr %timeout, align 8, !dbg !4816
  %3 = load ptr, ptr %larval, align 8, !dbg !4817
  %adult = getelementptr inbounds %struct.crypto_larval, ptr %3, i32 0, i32 1, !dbg !4818
  %4 = load ptr, ptr %adult, align 8, !dbg !4818
  store ptr %4, ptr %alg.addr, align 8, !dbg !4819
  %5 = load i64, ptr %timeout, align 8, !dbg !4820
  %cmp = icmp slt i64 %5, 0, !dbg !4822
  br i1 %cmp, label %if.then2, label %if.else, !dbg !4823

if.then2:                                         ; preds = %if.end
  %call3 = call ptr @ERR_PTR(i64 noundef -4) #15, !dbg !4824
  store ptr %call3, ptr %alg.addr, align 8, !dbg !4825
  br label %if.end36, !dbg !4826

if.else:                                          ; preds = %if.end
  %6 = load i64, ptr %timeout, align 8, !dbg !4827
  %tobool = icmp ne i64 %6, 0, !dbg !4827
  br i1 %tobool, label %if.else6, label %if.then4, !dbg !4829

if.then4:                                         ; preds = %if.else
  %call5 = call ptr @ERR_PTR(i64 noundef -110) #15, !dbg !4830
  store ptr %call5, ptr %alg.addr, align 8, !dbg !4831
  br label %if.end35, !dbg !4832

if.else6:                                         ; preds = %if.else
  %7 = load ptr, ptr %alg.addr, align 8, !dbg !4833
  %tobool7 = icmp ne ptr %7, null, !dbg !4833
  br i1 %tobool7, label %if.else10, label %if.then8, !dbg !4835

if.then8:                                         ; preds = %if.else6
  %call9 = call ptr @ERR_PTR(i64 noundef -2) #15, !dbg !4836
  store ptr %call9, ptr %alg.addr, align 8, !dbg !4837
  br label %if.end34, !dbg !4838

if.else10:                                        ; preds = %if.else6
  %8 = load ptr, ptr %alg.addr, align 8, !dbg !4839
  %call11 = call zeroext i1 @IS_ERR(ptr noundef %8) #15, !dbg !4841
  br i1 %call11, label %if.then12, label %if.else13, !dbg !4842

if.then12:                                        ; preds = %if.else10
  br label %if.end33, !dbg !4842

if.else13:                                        ; preds = %if.else10
  %9 = load ptr, ptr %larval, align 8, !dbg !4843
  %call14 = call i32 @crypto_is_test_larval(ptr noundef %9) #15, !dbg !4845
  %tobool15 = icmp ne i32 %call14, 0, !dbg !4845
  br i1 %tobool15, label %land.lhs.true, label %if.else19, !dbg !4846

land.lhs.true:                                    ; preds = %if.else13
  %10 = load ptr, ptr %alg.addr, align 8, !dbg !4847
  %cra_flags = getelementptr inbounds %struct.crypto_alg, ptr %10, i32 0, i32 2, !dbg !4848
  %11 = load i32, ptr %cra_flags, align 8, !dbg !4848
  %and = and i32 %11, 1024, !dbg !4849
  %tobool16 = icmp ne i32 %and, 0, !dbg !4849
  br i1 %tobool16, label %if.else19, label %if.then17, !dbg !4850

if.then17:                                        ; preds = %land.lhs.true
  %call18 = call ptr @ERR_PTR(i64 noundef -11) #15, !dbg !4851
  store ptr %call18, ptr %alg.addr, align 8, !dbg !4852
  br label %if.end32, !dbg !4853

if.else19:                                        ; preds = %land.lhs.true, %if.else13
  %12 = load ptr, ptr %alg.addr, align 8, !dbg !4854
  %cra_flags20 = getelementptr inbounds %struct.crypto_alg, ptr %12, i32 0, i32 2, !dbg !4856
  %13 = load i32, ptr %cra_flags20, align 8, !dbg !4856
  %and21 = and i32 %13, 131072, !dbg !4857
  %tobool22 = icmp ne i32 %and21, 0, !dbg !4857
  br i1 %tobool22, label %if.then23, label %if.else25, !dbg !4858

if.then23:                                        ; preds = %if.else19
  %call24 = call ptr @ERR_PTR(i64 noundef -11) #15, !dbg !4859
  store ptr %call24, ptr %alg.addr, align 8, !dbg !4860
  br label %if.end31, !dbg !4861

if.else25:                                        ; preds = %if.else19
  %14 = load ptr, ptr %alg.addr, align 8, !dbg !4862
  %call26 = call ptr @crypto_mod_get(ptr noundef %14) #15, !dbg !4864
  %tobool27 = icmp ne ptr %call26, null, !dbg !4864
  br i1 %tobool27, label %if.end30, label %if.then28, !dbg !4865

if.then28:                                        ; preds = %if.else25
  %call29 = call ptr @ERR_PTR(i64 noundef -11) #15, !dbg !4866
  store ptr %call29, ptr %alg.addr, align 8, !dbg !4867
  br label %if.end30, !dbg !4868

if.end30:                                         ; preds = %if.then28, %if.else25
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.then23
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.then17
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.then12
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.then8
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.then4
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.then2
  %15 = load ptr, ptr %larval, align 8, !dbg !4869
  %alg37 = getelementptr inbounds %struct.crypto_larval, ptr %15, i32 0, i32 0, !dbg !4870
  call void @crypto_mod_put(ptr noundef %alg37) #15, !dbg !4871
  %16 = load ptr, ptr %alg.addr, align 8, !dbg !4872
  call void @llvm.lifetime.end.p0(i64 8, ptr %timeout) #16, !dbg !4873
  call void @llvm.lifetime.end.p0(i64 8, ptr %larval) #16, !dbg !4873
  ret ptr %16, !dbg !4874
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @crypto_shoot_alg(ptr noundef %alg) #0 align 16 !dbg !4875 {
entry:
  %alg.addr = alloca ptr, align 8
  store ptr %alg, ptr %alg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %alg.addr, metadata !4877, metadata !DIExpression()), !dbg !4878
  call void @down_write(ptr noundef @crypto_alg_sem) #15, !dbg !4879
  %0 = load ptr, ptr %alg.addr, align 8, !dbg !4880
  %cra_flags = getelementptr inbounds %struct.crypto_alg, ptr %0, i32 0, i32 2, !dbg !4881
  %1 = load i32, ptr %cra_flags, align 8, !dbg !4882
  %or = or i32 %1, 64, !dbg !4882
  store i32 %or, ptr %cra_flags, align 8, !dbg !4882
  call void @up_write(ptr noundef @crypto_alg_sem) #15, !dbg !4883
  ret void, !dbg !4884
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @__crypto_alloc_tfmgfp(ptr noundef %alg, i32 noundef %type, i32 noundef %mask, i32 noundef %gfp) #0 align 16 !dbg !4885 {
entry:
  %alg.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %mask.addr = alloca i32, align 4
  %gfp.addr = alloca i32, align 4
  %tfm = alloca ptr, align 8
  %tfm_size = alloca i32, align 4
  %err = alloca i32, align 4
  store ptr %alg, ptr %alg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %alg.addr, metadata !4889, metadata !DIExpression()), !dbg !4899
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !4890, metadata !DIExpression()), !dbg !4900
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !4891, metadata !DIExpression()), !dbg !4901
  store i32 %gfp, ptr %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp.addr, metadata !4892, metadata !DIExpression()), !dbg !4902
  call void @llvm.lifetime.start.p0(i64 8, ptr %tfm) #16, !dbg !4903
  call void @llvm.dbg.declare(metadata ptr %tfm, metadata !4893, metadata !DIExpression()), !dbg !4904
  store ptr null, ptr %tfm, align 8, !dbg !4904
  call void @llvm.lifetime.start.p0(i64 4, ptr %tfm_size) #16, !dbg !4905
  call void @llvm.dbg.declare(metadata ptr %tfm_size, metadata !4894, metadata !DIExpression()), !dbg !4906
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #16, !dbg !4907
  call void @llvm.dbg.declare(metadata ptr %err, metadata !4895, metadata !DIExpression()), !dbg !4908
  store i32 -12, ptr %err, align 4, !dbg !4908
  %0 = load ptr, ptr %alg.addr, align 8, !dbg !4909
  %1 = load i32, ptr %type.addr, align 4, !dbg !4910
  %2 = load i32, ptr %mask.addr, align 4, !dbg !4911
  %call = call i32 @crypto_ctxsize(ptr noundef %0, i32 noundef %1, i32 noundef %2) #15, !dbg !4912
  %conv = zext i32 %call to i64, !dbg !4912
  %add = add i64 32, %conv, !dbg !4913
  %conv1 = trunc i64 %add to i32, !dbg !4914
  store i32 %conv1, ptr %tfm_size, align 4, !dbg !4915
  %3 = load i32, ptr %tfm_size, align 4, !dbg !4916
  %conv2 = zext i32 %3 to i64, !dbg !4916
  %4 = load i32, ptr %gfp.addr, align 4, !dbg !4917
  %call3 = call noalias ptr @kzalloc(i64 noundef %conv2, i32 noundef %4) #17, !dbg !4918
  store ptr %call3, ptr %tfm, align 8, !dbg !4919
  %5 = load ptr, ptr %tfm, align 8, !dbg !4920
  %cmp = icmp eq ptr %5, null, !dbg !4922
  br i1 %cmp, label %if.then, label %if.end, !dbg !4923

if.then:                                          ; preds = %entry
  br label %out_err, !dbg !4924

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %alg.addr, align 8, !dbg !4925
  %7 = load ptr, ptr %tfm, align 8, !dbg !4926
  %__crt_alg = getelementptr inbounds %struct.crypto_tfm, ptr %7, i32 0, i32 4, !dbg !4927
  store ptr %6, ptr %__crt_alg, align 8, !dbg !4928
  %8 = load ptr, ptr %tfm, align 8, !dbg !4929
  %refcnt = getelementptr inbounds %struct.crypto_tfm, ptr %8, i32 0, i32 0, !dbg !4930
  call void @refcount_set(ptr noundef %refcnt, i32 noundef 1) #15, !dbg !4931
  %9 = load ptr, ptr %tfm, align 8, !dbg !4932
  %exit = getelementptr inbounds %struct.crypto_tfm, ptr %9, i32 0, i32 3, !dbg !4934
  %10 = load ptr, ptr %exit, align 8, !dbg !4934
  %tobool = icmp ne ptr %10, null, !dbg !4932
  br i1 %tobool, label %if.end11, label %land.lhs.true, !dbg !4935

land.lhs.true:                                    ; preds = %if.end
  %11 = load ptr, ptr %alg.addr, align 8, !dbg !4936
  %cra_init = getelementptr inbounds %struct.crypto_alg, ptr %11, i32 0, i32 12, !dbg !4937
  %12 = load ptr, ptr %cra_init, align 8, !dbg !4937
  %tobool5 = icmp ne ptr %12, null, !dbg !4936
  br i1 %tobool5, label %land.lhs.true6, label %if.end11, !dbg !4938

land.lhs.true6:                                   ; preds = %land.lhs.true
  %13 = load ptr, ptr %alg.addr, align 8, !dbg !4939
  %cra_init7 = getelementptr inbounds %struct.crypto_alg, ptr %13, i32 0, i32 12, !dbg !4940
  %14 = load ptr, ptr %cra_init7, align 8, !dbg !4940
  %15 = load ptr, ptr %tfm, align 8, !dbg !4941
  %call8 = call i32 %14(ptr noundef %15) #15, !dbg !4939
  store i32 %call8, ptr %err, align 4, !dbg !4942
  %tobool9 = icmp ne i32 %call8, 0, !dbg !4942
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !4943

if.then10:                                        ; preds = %land.lhs.true6
  br label %cra_init_failed, !dbg !4944

if.end11:                                         ; preds = %land.lhs.true6, %land.lhs.true, %if.end
  br label %out, !dbg !4945

cra_init_failed:                                  ; preds = %if.then10
  call void @llvm.dbg.label(metadata !4896), !dbg !4946
  %16 = load ptr, ptr %tfm, align 8, !dbg !4947
  call void @crypto_exit_ops(ptr noundef %16) #15, !dbg !4948
  %17 = load i32, ptr %err, align 4, !dbg !4949
  %cmp12 = icmp eq i32 %17, -11, !dbg !4951
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !4952

if.then14:                                        ; preds = %cra_init_failed
  %18 = load ptr, ptr %alg.addr, align 8, !dbg !4953
  call void @crypto_shoot_alg(ptr noundef %18) #15, !dbg !4954
  br label %if.end15, !dbg !4954

if.end15:                                         ; preds = %if.then14, %cra_init_failed
  %19 = load ptr, ptr %tfm, align 8, !dbg !4955
  call void @kfree(ptr noundef %19) #15, !dbg !4956
  br label %out_err, !dbg !4956

out_err:                                          ; preds = %if.end15, %if.then
  call void @llvm.dbg.label(metadata !4897), !dbg !4957
  %20 = load i32, ptr %err, align 4, !dbg !4958
  %conv16 = sext i32 %20 to i64, !dbg !4958
  %call17 = call ptr @ERR_PTR(i64 noundef %conv16) #15, !dbg !4959
  store ptr %call17, ptr %tfm, align 8, !dbg !4960
  br label %out, !dbg !4961

out:                                              ; preds = %out_err, %if.end11
  call void @llvm.dbg.label(metadata !4898), !dbg !4962
  %21 = load ptr, ptr %tfm, align 8, !dbg !4963
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #16, !dbg !4964
  call void @llvm.lifetime.end.p0(i64 4, ptr %tfm_size) #16, !dbg !4964
  call void @llvm.lifetime.end.p0(i64 8, ptr %tfm) #16, !dbg !4964
  ret ptr %21, !dbg !4965
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crypto_ctxsize(ptr noundef %alg, i32 noundef %type, i32 noundef %mask) #0 align 16 !dbg !4966 {
entry:
  %retval = alloca i32, align 4
  %alg.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %mask.addr = alloca i32, align 4
  %type_obj = alloca ptr, align 8
  %len = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %alg, ptr %alg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %alg.addr, metadata !4968, metadata !DIExpression()), !dbg !4973
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !4969, metadata !DIExpression()), !dbg !4974
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !4970, metadata !DIExpression()), !dbg !4975
  call void @llvm.lifetime.start.p0(i64 8, ptr %type_obj) #16, !dbg !4976
  call void @llvm.dbg.declare(metadata ptr %type_obj, metadata !4971, metadata !DIExpression()), !dbg !4977
  %0 = load ptr, ptr %alg.addr, align 8, !dbg !4978
  %cra_type = getelementptr inbounds %struct.crypto_alg, ptr %0, i32 0, i32 10, !dbg !4979
  %1 = load ptr, ptr %cra_type, align 8, !dbg !4979
  store ptr %1, ptr %type_obj, align 8, !dbg !4977
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #16, !dbg !4980
  call void @llvm.dbg.declare(metadata ptr %len, metadata !4972, metadata !DIExpression()), !dbg !4981
  %2 = load ptr, ptr %alg.addr, align 8, !dbg !4982
  %cra_alignmask = getelementptr inbounds %struct.crypto_alg, ptr %2, i32 0, i32 5, !dbg !4983
  %3 = load i32, ptr %cra_alignmask, align 4, !dbg !4983
  %call = call i32 @crypto_tfm_ctx_alignment() #15, !dbg !4984
  %sub = sub i32 %call, 1, !dbg !4985
  %not = xor i32 %sub, -1, !dbg !4986
  %and = and i32 %3, %not, !dbg !4987
  store i32 %and, ptr %len, align 4, !dbg !4988
  %4 = load ptr, ptr %type_obj, align 8, !dbg !4989
  %tobool = icmp ne ptr %4, null, !dbg !4989
  br i1 %tobool, label %if.then, label %if.end, !dbg !4991

if.then:                                          ; preds = %entry
  %5 = load i32, ptr %len, align 4, !dbg !4992
  %6 = load ptr, ptr %type_obj, align 8, !dbg !4993
  %ctxsize = getelementptr inbounds %struct.crypto_type, ptr %6, i32 0, i32 0, !dbg !4994
  %7 = load ptr, ptr %ctxsize, align 8, !dbg !4994
  %8 = load ptr, ptr %alg.addr, align 8, !dbg !4995
  %9 = load i32, ptr %type.addr, align 4, !dbg !4996
  %10 = load i32, ptr %mask.addr, align 4, !dbg !4997
  %call1 = call i32 %7(ptr noundef %8, i32 noundef %9, i32 noundef %10) #15, !dbg !4993
  %add = add i32 %5, %call1, !dbg !4998
  store i32 %add, ptr %retval, align 4, !dbg !4999
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4999

if.end:                                           ; preds = %entry
  %11 = load ptr, ptr %alg.addr, align 8, !dbg !5000
  %cra_flags = getelementptr inbounds %struct.crypto_alg, ptr %11, i32 0, i32 2, !dbg !5001
  %12 = load i32, ptr %cra_flags, align 8, !dbg !5001
  %and2 = and i32 %12, 15, !dbg !5002
  switch i32 %and2, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb11
  ], !dbg !5003

sw.default:                                       ; preds = %if.end
  br label %do.body, !dbg !5004

do.body:                                          ; preds = %sw.default
  br label %do.body3, !dbg !5006

do.body3:                                         ; preds = %do.body
  br label %do.cond, !dbg !5008

do.cond:                                          ; preds = %do.body3
  br label %do.end, !dbg !5008

do.end:                                           ; preds = %do.cond
  br label %do.body4, !dbg !5006

do.body4:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 367, i32 0, i64 12) #16, !dbg !5010, !srcloc !5012
  br label %do.cond5, !dbg !5010

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !5010

do.end6:                                          ; preds = %do.cond5
  unreachable, !dbg !5006

do.cond7:                                         ; No predecessors!
  br label %do.end8, !dbg !5006

do.end8:                                          ; preds = %do.cond7
  br label %sw.bb, !dbg !5006

sw.bb:                                            ; preds = %if.end, %do.end8
  %13 = load ptr, ptr %alg.addr, align 8, !dbg !5013
  %call9 = call i32 @crypto_cipher_ctxsize(ptr noundef %13) #15, !dbg !5014
  %14 = load i32, ptr %len, align 4, !dbg !5015
  %add10 = add i32 %14, %call9, !dbg !5015
  store i32 %add10, ptr %len, align 4, !dbg !5015
  br label %sw.epilog, !dbg !5016

sw.bb11:                                          ; preds = %if.end
  %15 = load ptr, ptr %alg.addr, align 8, !dbg !5017
  %call12 = call i32 @crypto_compress_ctxsize(ptr noundef %15) #15, !dbg !5018
  %16 = load i32, ptr %len, align 4, !dbg !5019
  %add13 = add i32 %16, %call12, !dbg !5019
  store i32 %add13, ptr %len, align 4, !dbg !5019
  br label %sw.epilog, !dbg !5020

sw.epilog:                                        ; preds = %sw.bb11, %sw.bb
  %17 = load i32, ptr %len, align 4, !dbg !5021
  store i32 %17, ptr %retval, align 4, !dbg !5022
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5022

cleanup:                                          ; preds = %sw.epilog, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #16, !dbg !5023
  call void @llvm.lifetime.end.p0(i64 8, ptr %type_obj) #16, !dbg !5023
  %18 = load i32, ptr %retval, align 4, !dbg !5023
  ret i32 %18, !dbg !5023
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @refcount_set(ptr noundef %r, i32 noundef %n) #3 align 16 !dbg !5024 {
entry:
  %r.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5029, metadata !DIExpression()), !dbg !5031
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5030, metadata !DIExpression()), !dbg !5032
  %0 = load ptr, ptr %r.addr, align 8, !dbg !5033
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %0, i32 0, i32 0, !dbg !5034
  %1 = load i32, ptr %n.addr, align 4, !dbg !5035
  call void @atomic_set(ptr noundef %refs, i32 noundef %1) #15, !dbg !5036
  ret void, !dbg !5037
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @crypto_exit_ops(ptr noundef %tfm) #0 align 16 !dbg !5038 {
entry:
  %tfm.addr = alloca ptr, align 8
  %type = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !5040, metadata !DIExpression()), !dbg !5042
  call void @llvm.lifetime.start.p0(i64 8, ptr %type) #16, !dbg !5043
  call void @llvm.dbg.declare(metadata ptr %type, metadata !5041, metadata !DIExpression()), !dbg !5044
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !5045
  %__crt_alg = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 4, !dbg !5046
  %1 = load ptr, ptr %__crt_alg, align 8, !dbg !5046
  %cra_type = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 10, !dbg !5047
  %2 = load ptr, ptr %cra_type, align 8, !dbg !5047
  store ptr %2, ptr %type, align 8, !dbg !5044
  %3 = load ptr, ptr %type, align 8, !dbg !5048
  %tobool = icmp ne ptr %3, null, !dbg !5048
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !5050

land.lhs.true:                                    ; preds = %entry
  %4 = load ptr, ptr %tfm.addr, align 8, !dbg !5051
  %exit = getelementptr inbounds %struct.crypto_tfm, ptr %4, i32 0, i32 3, !dbg !5052
  %5 = load ptr, ptr %exit, align 8, !dbg !5052
  %tobool1 = icmp ne ptr %5, null, !dbg !5051
  br i1 %tobool1, label %if.then, label %if.end, !dbg !5053

if.then:                                          ; preds = %land.lhs.true
  %6 = load ptr, ptr %tfm.addr, align 8, !dbg !5054
  %exit2 = getelementptr inbounds %struct.crypto_tfm, ptr %6, i32 0, i32 3, !dbg !5055
  %7 = load ptr, ptr %exit2, align 8, !dbg !5055
  %8 = load ptr, ptr %tfm.addr, align 8, !dbg !5056
  call void %7(ptr noundef %8) #15, !dbg !5054
  br label %if.end, !dbg !5054

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %type) #16, !dbg !5057
  ret void, !dbg !5057
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5058 dso_local void @kfree(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @__crypto_alloc_tfm(ptr noundef %alg, i32 noundef %type, i32 noundef %mask) #0 align 16 !dbg !5061 {
entry:
  %alg.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %mask.addr = alloca i32, align 4
  store ptr %alg, ptr %alg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %alg.addr, metadata !5065, metadata !DIExpression()), !dbg !5068
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5066, metadata !DIExpression()), !dbg !5069
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !5067, metadata !DIExpression()), !dbg !5070
  %0 = load ptr, ptr %alg.addr, align 8, !dbg !5071
  %1 = load i32, ptr %type.addr, align 4, !dbg !5072
  %2 = load i32, ptr %mask.addr, align 4, !dbg !5073
  %call = call ptr @__crypto_alloc_tfmgfp(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef 3264) #15, !dbg !5074
  ret ptr %call, !dbg !5075
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @crypto_alloc_base(ptr noundef %alg_name, i32 noundef %type, i32 noundef %mask) #0 align 16 !dbg !5076 {
entry:
  %retval = alloca ptr, align 8
  %alg_name.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %mask.addr = alloca i32, align 4
  %tfm = alloca ptr, align 8
  %err = alloca i32, align 4
  %alg = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %alg_name, ptr %alg_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %alg_name.addr, metadata !5080, metadata !DIExpression()), !dbg !5090
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5081, metadata !DIExpression()), !dbg !5091
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !5082, metadata !DIExpression()), !dbg !5092
  call void @llvm.lifetime.start.p0(i64 8, ptr %tfm) #16, !dbg !5093
  call void @llvm.dbg.declare(metadata ptr %tfm, metadata !5083, metadata !DIExpression()), !dbg !5094
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #16, !dbg !5095
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5084, metadata !DIExpression()), !dbg !5096
  br label %for.cond, !dbg !5097

for.cond:                                         ; preds = %cleanup.cont, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %alg) #16, !dbg !5098
  call void @llvm.dbg.declare(metadata ptr %alg, metadata !5085, metadata !DIExpression()), !dbg !5099
  %0 = load ptr, ptr %alg_name.addr, align 8, !dbg !5100
  %1 = load i32, ptr %type.addr, align 4, !dbg !5101
  %2 = load i32, ptr %mask.addr, align 4, !dbg !5102
  %call = call ptr @crypto_alg_mod_lookup(ptr noundef %0, i32 noundef %1, i32 noundef %2) #15, !dbg !5103
  store ptr %call, ptr %alg, align 8, !dbg !5104
  %3 = load ptr, ptr %alg, align 8, !dbg !5105
  %call1 = call zeroext i1 @IS_ERR(ptr noundef %3) #15, !dbg !5107
  br i1 %call1, label %if.then, label %if.end, !dbg !5108

if.then:                                          ; preds = %for.cond
  %4 = load ptr, ptr %alg, align 8, !dbg !5109
  %call2 = call i64 @PTR_ERR(ptr noundef %4) #15, !dbg !5111
  %conv = trunc i64 %call2 to i32, !dbg !5111
  store i32 %conv, ptr %err, align 4, !dbg !5112
  br label %err9, !dbg !5113

if.end:                                           ; preds = %for.cond
  %5 = load ptr, ptr %alg, align 8, !dbg !5114
  %6 = load i32, ptr %type.addr, align 4, !dbg !5115
  %7 = load i32, ptr %mask.addr, align 4, !dbg !5116
  %call3 = call ptr @__crypto_alloc_tfm(ptr noundef %5, i32 noundef %6, i32 noundef %7) #15, !dbg !5117
  store ptr %call3, ptr %tfm, align 8, !dbg !5118
  %8 = load ptr, ptr %tfm, align 8, !dbg !5119
  %call4 = call zeroext i1 @IS_ERR(ptr noundef %8) #15, !dbg !5121
  br i1 %call4, label %if.end6, label %if.then5, !dbg !5122

if.then5:                                         ; preds = %if.end
  %9 = load ptr, ptr %tfm, align 8, !dbg !5123
  store ptr %9, ptr %retval, align 8, !dbg !5124
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5124

if.end6:                                          ; preds = %if.end
  %10 = load ptr, ptr %alg, align 8, !dbg !5125
  call void @crypto_mod_put(ptr noundef %10) #15, !dbg !5126
  %11 = load ptr, ptr %tfm, align 8, !dbg !5127
  %call7 = call i64 @PTR_ERR(ptr noundef %11) #15, !dbg !5128
  %conv8 = trunc i64 %call7 to i32, !dbg !5128
  store i32 %conv8, ptr %err, align 4, !dbg !5129
  br label %err9, !dbg !5130

err9:                                             ; preds = %if.end6, %if.then
  call void @llvm.dbg.label(metadata !5089), !dbg !5131
  %12 = load i32, ptr %err, align 4, !dbg !5132
  %cmp = icmp ne i32 %12, -11, !dbg !5134
  br i1 %cmp, label %if.then11, label %if.end12, !dbg !5135

if.then11:                                        ; preds = %err9
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5136

if.end12:                                         ; preds = %err9
  %call13 = call ptr @get_current() #15, !dbg !5137
  %call14 = call i32 @fatal_signal_pending(ptr noundef %call13) #15, !dbg !5139
  %tobool = icmp ne i32 %call14, 0, !dbg !5139
  br i1 %tobool, label %if.then15, label %if.end16, !dbg !5140

if.then15:                                        ; preds = %if.end12
  store i32 -4, ptr %err, align 4, !dbg !5141
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5143

if.end16:                                         ; preds = %if.end12
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5144
  br label %cleanup, !dbg !5144

cleanup:                                          ; preds = %if.end16, %if.then15, %if.then11, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %alg) #16, !dbg !5144
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup19 [
    i32 0, label %cleanup.cont
    i32 2, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond, !dbg !5145, !llvm.loop !5146

for.end:                                          ; preds = %cleanup
  %13 = load i32, ptr %err, align 4, !dbg !5150
  %conv17 = sext i32 %13 to i64, !dbg !5150
  %call18 = call ptr @ERR_PTR(i64 noundef %conv17) #15, !dbg !5151
  store ptr %call18, ptr %retval, align 8, !dbg !5152
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup19, !dbg !5152

cleanup19:                                        ; preds = %for.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #16, !dbg !5153
  call void @llvm.lifetime.end.p0(i64 8, ptr %tfm) #16, !dbg !5153
  %14 = load ptr, ptr %retval, align 8, !dbg !5153
  ret ptr %14, !dbg !5153
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #3 align 16 !dbg !5154 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5158, metadata !DIExpression()), !dbg !5159
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !5160
  %1 = ptrtoint ptr %0 to i64, !dbg !5161
  ret i64 %1, !dbg !5162
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fatal_signal_pending(ptr noundef %p) #3 align 16 !dbg !5163 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5167, metadata !DIExpression()), !dbg !5168
  %0 = load ptr, ptr %p.addr, align 8, !dbg !5169
  %call = call i32 @task_sigpending(ptr noundef %0) #15, !dbg !5170
  %tobool = icmp ne i32 %call, 0, !dbg !5170
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !5171

land.rhs:                                         ; preds = %entry
  %1 = load ptr, ptr %p.addr, align 8, !dbg !5172
  %call1 = call i32 @__fatal_signal_pending(ptr noundef %1) #15, !dbg !5173
  %tobool2 = icmp ne i32 %call1, 0, !dbg !5171
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %tobool2, %land.rhs ], !dbg !5174
  %land.ext = zext i1 %2 to i32, !dbg !5171
  ret i32 %land.ext, !dbg !5175
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #7 align 16 !dbg !5176 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #16, !dbg !5187
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !5181, metadata !DIExpression()), !dbg !5187
  br label %do.body, !dbg !5187

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #16, !dbg !5188
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5183, metadata !DIExpression()), !dbg !5188
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5188
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !5188
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #16, !dbg !5187
  br label %do.cond, !dbg !5188

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5188

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #16, !dbg !5189
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !5185, metadata !DIExpression()), !dbg !5189
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #18, !dbg !5189, !srcloc !5190
  store i64 %1, ptr %pfo_val__, align 8, !dbg !5189
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !5189
  %3 = inttoptr i64 %2 to ptr, !dbg !5189
  store ptr %3, ptr %tmp, align 8, !dbg !5189
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #16, !dbg !5187
  %4 = load ptr, ptr %tmp, align 8, !dbg !5189
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !5187
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !5187
  store ptr %5, ptr %tmp1, align 8, !dbg !5187
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #16, !dbg !5191
  %6 = load ptr, ptr %tmp1, align 8, !dbg !5187
  ret ptr %6, !dbg !5192
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @crypto_create_tfm_node(ptr noundef %alg, ptr noundef %frontend, i32 noundef %node) #0 align 16 !dbg !5193 {
entry:
  %alg.addr = alloca ptr, align 8
  %frontend.addr = alloca ptr, align 8
  %node.addr = alloca i32, align 4
  %tfm = alloca ptr, align 8
  %mem = alloca ptr, align 8
  %err = alloca i32, align 4
  store ptr %alg, ptr %alg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %alg.addr, metadata !5197, metadata !DIExpression()), !dbg !5206
  store ptr %frontend, ptr %frontend.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %frontend.addr, metadata !5198, metadata !DIExpression()), !dbg !5207
  store i32 %node, ptr %node.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !5199, metadata !DIExpression()), !dbg !5208
  call void @llvm.lifetime.start.p0(i64 8, ptr %tfm) #16, !dbg !5209
  call void @llvm.dbg.declare(metadata ptr %tfm, metadata !5200, metadata !DIExpression()), !dbg !5210
  call void @llvm.lifetime.start.p0(i64 8, ptr %mem) #16, !dbg !5211
  call void @llvm.dbg.declare(metadata ptr %mem, metadata !5201, metadata !DIExpression()), !dbg !5212
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #16, !dbg !5213
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5202, metadata !DIExpression()), !dbg !5214
  %0 = load ptr, ptr %alg.addr, align 8, !dbg !5215
  %1 = load ptr, ptr %frontend.addr, align 8, !dbg !5216
  %2 = load i32, ptr %node.addr, align 4, !dbg !5217
  %call = call ptr @crypto_alloc_tfmmem(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 3264) #15, !dbg !5218
  store ptr %call, ptr %mem, align 8, !dbg !5219
  %3 = load ptr, ptr %mem, align 8, !dbg !5220
  %call1 = call zeroext i1 @IS_ERR(ptr noundef %3) #15, !dbg !5222
  br i1 %call1, label %if.then, label %if.end, !dbg !5223

if.then:                                          ; preds = %entry
  br label %out, !dbg !5224

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %mem, align 8, !dbg !5225
  %5 = load ptr, ptr %frontend.addr, align 8, !dbg !5226
  %tfmsize = getelementptr inbounds %struct.crypto_type, ptr %5, i32 0, i32 9, !dbg !5227
  %6 = load i32, ptr %tfmsize, align 4, !dbg !5227
  %idx.ext = zext i32 %6 to i64, !dbg !5228
  %add.ptr = getelementptr i8, ptr %4, i64 %idx.ext, !dbg !5228
  store ptr %add.ptr, ptr %tfm, align 8, !dbg !5229
  %7 = load ptr, ptr %frontend.addr, align 8, !dbg !5230
  %init_tfm = getelementptr inbounds %struct.crypto_type, ptr %7, i32 0, i32 2, !dbg !5231
  %8 = load ptr, ptr %init_tfm, align 8, !dbg !5231
  %9 = load ptr, ptr %tfm, align 8, !dbg !5232
  %call2 = call i32 %8(ptr noundef %9) #15, !dbg !5230
  store i32 %call2, ptr %err, align 4, !dbg !5233
  %10 = load i32, ptr %err, align 4, !dbg !5234
  %tobool = icmp ne i32 %10, 0, !dbg !5234
  br i1 %tobool, label %if.then3, label %if.end4, !dbg !5236

if.then3:                                         ; preds = %if.end
  br label %out_free_tfm, !dbg !5237

if.end4:                                          ; preds = %if.end
  %11 = load ptr, ptr %tfm, align 8, !dbg !5238
  %exit = getelementptr inbounds %struct.crypto_tfm, ptr %11, i32 0, i32 3, !dbg !5240
  %12 = load ptr, ptr %exit, align 8, !dbg !5240
  %tobool5 = icmp ne ptr %12, null, !dbg !5238
  br i1 %tobool5, label %if.end12, label %land.lhs.true, !dbg !5241

land.lhs.true:                                    ; preds = %if.end4
  %13 = load ptr, ptr %alg.addr, align 8, !dbg !5242
  %cra_init = getelementptr inbounds %struct.crypto_alg, ptr %13, i32 0, i32 12, !dbg !5243
  %14 = load ptr, ptr %cra_init, align 8, !dbg !5243
  %tobool6 = icmp ne ptr %14, null, !dbg !5242
  br i1 %tobool6, label %land.lhs.true7, label %if.end12, !dbg !5244

land.lhs.true7:                                   ; preds = %land.lhs.true
  %15 = load ptr, ptr %alg.addr, align 8, !dbg !5245
  %cra_init8 = getelementptr inbounds %struct.crypto_alg, ptr %15, i32 0, i32 12, !dbg !5246
  %16 = load ptr, ptr %cra_init8, align 8, !dbg !5246
  %17 = load ptr, ptr %tfm, align 8, !dbg !5247
  %call9 = call i32 %16(ptr noundef %17) #15, !dbg !5245
  store i32 %call9, ptr %err, align 4, !dbg !5248
  %tobool10 = icmp ne i32 %call9, 0, !dbg !5248
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !5249

if.then11:                                        ; preds = %land.lhs.true7
  br label %cra_init_failed, !dbg !5250

if.end12:                                         ; preds = %land.lhs.true7, %land.lhs.true, %if.end4
  br label %out, !dbg !5251

cra_init_failed:                                  ; preds = %if.then11
  call void @llvm.dbg.label(metadata !5203), !dbg !5252
  %18 = load ptr, ptr %tfm, align 8, !dbg !5253
  call void @crypto_exit_ops(ptr noundef %18) #15, !dbg !5254
  br label %out_free_tfm, !dbg !5254

out_free_tfm:                                     ; preds = %cra_init_failed, %if.then3
  call void @llvm.dbg.label(metadata !5204), !dbg !5255
  %19 = load i32, ptr %err, align 4, !dbg !5256
  %cmp = icmp eq i32 %19, -11, !dbg !5258
  br i1 %cmp, label %if.then13, label %if.end14, !dbg !5259

if.then13:                                        ; preds = %out_free_tfm
  %20 = load ptr, ptr %alg.addr, align 8, !dbg !5260
  call void @crypto_shoot_alg(ptr noundef %20) #15, !dbg !5261
  br label %if.end14, !dbg !5261

if.end14:                                         ; preds = %if.then13, %out_free_tfm
  %21 = load ptr, ptr %mem, align 8, !dbg !5262
  call void @kfree(ptr noundef %21) #15, !dbg !5263
  %22 = load i32, ptr %err, align 4, !dbg !5264
  %conv = sext i32 %22 to i64, !dbg !5264
  %call15 = call ptr @ERR_PTR(i64 noundef %conv) #15, !dbg !5265
  store ptr %call15, ptr %mem, align 8, !dbg !5266
  br label %out, !dbg !5267

out:                                              ; preds = %if.end14, %if.end12, %if.then
  call void @llvm.dbg.label(metadata !5205), !dbg !5268
  %23 = load ptr, ptr %mem, align 8, !dbg !5269
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #16, !dbg !5270
  call void @llvm.lifetime.end.p0(i64 8, ptr %mem) #16, !dbg !5270
  call void @llvm.lifetime.end.p0(i64 8, ptr %tfm) #16, !dbg !5270
  ret ptr %23, !dbg !5271
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @crypto_alloc_tfmmem(ptr noundef %alg, ptr noundef %frontend, i32 noundef %node, i32 noundef %gfp) #0 align 16 !dbg !5272 {
entry:
  %retval = alloca ptr, align 8
  %alg.addr = alloca ptr, align 8
  %frontend.addr = alloca ptr, align 8
  %node.addr = alloca i32, align 4
  %gfp.addr = alloca i32, align 4
  %tfm = alloca ptr, align 8
  %tfmsize = alloca i32, align 4
  %total = alloca i32, align 4
  %mem = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %alg, ptr %alg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %alg.addr, metadata !5276, metadata !DIExpression()), !dbg !5284
  store ptr %frontend, ptr %frontend.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %frontend.addr, metadata !5277, metadata !DIExpression()), !dbg !5285
  store i32 %node, ptr %node.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !5278, metadata !DIExpression()), !dbg !5286
  store i32 %gfp, ptr %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp.addr, metadata !5279, metadata !DIExpression()), !dbg !5287
  call void @llvm.lifetime.start.p0(i64 8, ptr %tfm) #16, !dbg !5288
  call void @llvm.dbg.declare(metadata ptr %tfm, metadata !5280, metadata !DIExpression()), !dbg !5289
  call void @llvm.lifetime.start.p0(i64 4, ptr %tfmsize) #16, !dbg !5290
  call void @llvm.dbg.declare(metadata ptr %tfmsize, metadata !5281, metadata !DIExpression()), !dbg !5291
  call void @llvm.lifetime.start.p0(i64 4, ptr %total) #16, !dbg !5292
  call void @llvm.dbg.declare(metadata ptr %total, metadata !5282, metadata !DIExpression()), !dbg !5293
  call void @llvm.lifetime.start.p0(i64 8, ptr %mem) #16, !dbg !5294
  call void @llvm.dbg.declare(metadata ptr %mem, metadata !5283, metadata !DIExpression()), !dbg !5295
  %0 = load ptr, ptr %frontend.addr, align 8, !dbg !5296
  %tfmsize1 = getelementptr inbounds %struct.crypto_type, ptr %0, i32 0, i32 9, !dbg !5297
  %1 = load i32, ptr %tfmsize1, align 4, !dbg !5297
  store i32 %1, ptr %tfmsize, align 4, !dbg !5298
  %2 = load i32, ptr %tfmsize, align 4, !dbg !5299
  %conv = zext i32 %2 to i64, !dbg !5299
  %add = add i64 %conv, 32, !dbg !5300
  %3 = load ptr, ptr %frontend.addr, align 8, !dbg !5301
  %extsize = getelementptr inbounds %struct.crypto_type, ptr %3, i32 0, i32 1, !dbg !5302
  %4 = load ptr, ptr %extsize, align 8, !dbg !5302
  %5 = load ptr, ptr %alg.addr, align 8, !dbg !5303
  %call = call i32 %4(ptr noundef %5) #15, !dbg !5301
  %conv2 = zext i32 %call to i64, !dbg !5301
  %add3 = add i64 %add, %conv2, !dbg !5304
  %conv4 = trunc i64 %add3 to i32, !dbg !5299
  store i32 %conv4, ptr %total, align 4, !dbg !5305
  %6 = load i32, ptr %total, align 4, !dbg !5306
  %conv5 = zext i32 %6 to i64, !dbg !5306
  %7 = load i32, ptr %gfp.addr, align 4, !dbg !5307
  %8 = load i32, ptr %node.addr, align 4, !dbg !5308
  %call6 = call noalias ptr @kzalloc_node(i64 noundef %conv5, i32 noundef %7, i32 noundef %8) #17, !dbg !5309
  store ptr %call6, ptr %mem, align 8, !dbg !5310
  %9 = load ptr, ptr %mem, align 8, !dbg !5311
  %cmp = icmp eq ptr %9, null, !dbg !5313
  br i1 %cmp, label %if.then, label %if.end, !dbg !5314

if.then:                                          ; preds = %entry
  %call8 = call ptr @ERR_PTR(i64 noundef -12) #15, !dbg !5315
  store ptr %call8, ptr %retval, align 8, !dbg !5316
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5316

if.end:                                           ; preds = %entry
  %10 = load ptr, ptr %mem, align 8, !dbg !5317
  %11 = load i32, ptr %tfmsize, align 4, !dbg !5318
  %idx.ext = zext i32 %11 to i64, !dbg !5319
  %add.ptr = getelementptr i8, ptr %10, i64 %idx.ext, !dbg !5319
  store ptr %add.ptr, ptr %tfm, align 8, !dbg !5320
  %12 = load ptr, ptr %alg.addr, align 8, !dbg !5321
  %13 = load ptr, ptr %tfm, align 8, !dbg !5322
  %__crt_alg = getelementptr inbounds %struct.crypto_tfm, ptr %13, i32 0, i32 4, !dbg !5323
  store ptr %12, ptr %__crt_alg, align 8, !dbg !5324
  %14 = load i32, ptr %node.addr, align 4, !dbg !5325
  %15 = load ptr, ptr %tfm, align 8, !dbg !5326
  %node9 = getelementptr inbounds %struct.crypto_tfm, ptr %15, i32 0, i32 2, !dbg !5327
  store i32 %14, ptr %node9, align 8, !dbg !5328
  %16 = load ptr, ptr %tfm, align 8, !dbg !5329
  %refcnt = getelementptr inbounds %struct.crypto_tfm, ptr %16, i32 0, i32 0, !dbg !5330
  call void @refcount_set(ptr noundef %refcnt, i32 noundef 1) #15, !dbg !5331
  %17 = load ptr, ptr %mem, align 8, !dbg !5332
  store ptr %17, ptr %retval, align 8, !dbg !5333
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5333

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %mem) #16, !dbg !5334
  call void @llvm.lifetime.end.p0(i64 4, ptr %total) #16, !dbg !5334
  call void @llvm.lifetime.end.p0(i64 4, ptr %tfmsize) #16, !dbg !5334
  call void @llvm.lifetime.end.p0(i64 8, ptr %tfm) #16, !dbg !5334
  %18 = load ptr, ptr %retval, align 8, !dbg !5334
  ret ptr %18, !dbg !5334
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @crypto_clone_tfm(ptr noundef %frontend, ptr noundef %otfm) #0 align 16 !dbg !5335 {
entry:
  %frontend.addr = alloca ptr, align 8
  %otfm.addr = alloca ptr, align 8
  %alg = alloca ptr, align 8
  %tfm = alloca ptr, align 8
  %mem = alloca ptr, align 8
  store ptr %frontend, ptr %frontend.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %frontend.addr, metadata !5339, metadata !DIExpression()), !dbg !5345
  store ptr %otfm, ptr %otfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %otfm.addr, metadata !5340, metadata !DIExpression()), !dbg !5346
  call void @llvm.lifetime.start.p0(i64 8, ptr %alg) #16, !dbg !5347
  call void @llvm.dbg.declare(metadata ptr %alg, metadata !5341, metadata !DIExpression()), !dbg !5348
  %0 = load ptr, ptr %otfm.addr, align 8, !dbg !5349
  %__crt_alg = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 4, !dbg !5350
  %1 = load ptr, ptr %__crt_alg, align 8, !dbg !5350
  store ptr %1, ptr %alg, align 8, !dbg !5348
  call void @llvm.lifetime.start.p0(i64 8, ptr %tfm) #16, !dbg !5351
  call void @llvm.dbg.declare(metadata ptr %tfm, metadata !5342, metadata !DIExpression()), !dbg !5352
  call void @llvm.lifetime.start.p0(i64 8, ptr %mem) #16, !dbg !5353
  call void @llvm.dbg.declare(metadata ptr %mem, metadata !5343, metadata !DIExpression()), !dbg !5354
  %call = call ptr @ERR_PTR(i64 noundef -116) #15, !dbg !5355
  store ptr %call, ptr %mem, align 8, !dbg !5356
  %2 = load ptr, ptr %alg, align 8, !dbg !5357
  %call1 = call ptr @crypto_mod_get(ptr noundef %2) #15, !dbg !5357
  %tobool = icmp ne ptr %call1, null, !dbg !5357
  %lnot = xor i1 %tobool, true, !dbg !5357
  %lnot2 = xor i1 %lnot, true, !dbg !5357
  %lnot3 = xor i1 %lnot2, true, !dbg !5357
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !5357
  %conv = sext i32 %lnot.ext to i64, !dbg !5357
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5357
  %tobool4 = icmp ne i64 %expval, 0, !dbg !5357
  br i1 %tobool4, label %if.then, label %if.end, !dbg !5359

if.then:                                          ; preds = %entry
  br label %out, !dbg !5360

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %alg, align 8, !dbg !5361
  %4 = load ptr, ptr %frontend.addr, align 8, !dbg !5362
  %5 = load ptr, ptr %otfm.addr, align 8, !dbg !5363
  %node = getelementptr inbounds %struct.crypto_tfm, ptr %5, i32 0, i32 2, !dbg !5364
  %6 = load i32, ptr %node, align 8, !dbg !5364
  %call5 = call ptr @crypto_alloc_tfmmem(ptr noundef %3, ptr noundef %4, i32 noundef %6, i32 noundef 2080) #15, !dbg !5365
  store ptr %call5, ptr %mem, align 8, !dbg !5366
  %7 = load ptr, ptr %mem, align 8, !dbg !5367
  %call6 = call zeroext i1 @IS_ERR(ptr noundef %7) #15, !dbg !5369
  br i1 %call6, label %if.then7, label %if.end8, !dbg !5370

if.then7:                                         ; preds = %if.end
  %8 = load ptr, ptr %alg, align 8, !dbg !5371
  call void @crypto_mod_put(ptr noundef %8) #15, !dbg !5373
  br label %out, !dbg !5374

if.end8:                                          ; preds = %if.end
  %9 = load ptr, ptr %mem, align 8, !dbg !5375
  %10 = load ptr, ptr %frontend.addr, align 8, !dbg !5376
  %tfmsize = getelementptr inbounds %struct.crypto_type, ptr %10, i32 0, i32 9, !dbg !5377
  %11 = load i32, ptr %tfmsize, align 4, !dbg !5377
  %idx.ext = zext i32 %11 to i64, !dbg !5378
  %add.ptr = getelementptr i8, ptr %9, i64 %idx.ext, !dbg !5378
  store ptr %add.ptr, ptr %tfm, align 8, !dbg !5379
  %12 = load ptr, ptr %otfm.addr, align 8, !dbg !5380
  %crt_flags = getelementptr inbounds %struct.crypto_tfm, ptr %12, i32 0, i32 1, !dbg !5381
  %13 = load i32, ptr %crt_flags, align 4, !dbg !5381
  %14 = load ptr, ptr %tfm, align 8, !dbg !5382
  %crt_flags9 = getelementptr inbounds %struct.crypto_tfm, ptr %14, i32 0, i32 1, !dbg !5383
  store i32 %13, ptr %crt_flags9, align 4, !dbg !5384
  %15 = load ptr, ptr %otfm.addr, align 8, !dbg !5385
  %exit = getelementptr inbounds %struct.crypto_tfm, ptr %15, i32 0, i32 3, !dbg !5386
  %16 = load ptr, ptr %exit, align 8, !dbg !5386
  %17 = load ptr, ptr %tfm, align 8, !dbg !5387
  %exit10 = getelementptr inbounds %struct.crypto_tfm, ptr %17, i32 0, i32 3, !dbg !5388
  store ptr %16, ptr %exit10, align 8, !dbg !5389
  br label %out, !dbg !5387

out:                                              ; preds = %if.end8, %if.then7, %if.then
  call void @llvm.dbg.label(metadata !5344), !dbg !5390
  %18 = load ptr, ptr %mem, align 8, !dbg !5391
  call void @llvm.lifetime.end.p0(i64 8, ptr %mem) #16, !dbg !5392
  call void @llvm.lifetime.end.p0(i64 8, ptr %tfm) #16, !dbg !5392
  call void @llvm.lifetime.end.p0(i64 8, ptr %alg) #16, !dbg !5392
  ret ptr %18, !dbg !5393
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @crypto_find_alg(ptr noundef %alg_name, ptr noundef %frontend, i32 noundef %type, i32 noundef %mask) #0 align 16 !dbg !5394 {
entry:
  %alg_name.addr = alloca ptr, align 8
  %frontend.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %mask.addr = alloca i32, align 4
  store ptr %alg_name, ptr %alg_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %alg_name.addr, metadata !5398, metadata !DIExpression()), !dbg !5402
  store ptr %frontend, ptr %frontend.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %frontend.addr, metadata !5399, metadata !DIExpression()), !dbg !5403
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5400, metadata !DIExpression()), !dbg !5404
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !5401, metadata !DIExpression()), !dbg !5405
  %0 = load ptr, ptr %frontend.addr, align 8, !dbg !5406
  %tobool = icmp ne ptr %0, null, !dbg !5406
  br i1 %tobool, label %if.then, label %if.end, !dbg !5408

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %frontend.addr, align 8, !dbg !5409
  %maskclear = getelementptr inbounds %struct.crypto_type, ptr %1, i32 0, i32 7, !dbg !5411
  %2 = load i32, ptr %maskclear, align 4, !dbg !5411
  %3 = load i32, ptr %type.addr, align 4, !dbg !5412
  %and = and i32 %3, %2, !dbg !5412
  store i32 %and, ptr %type.addr, align 4, !dbg !5412
  %4 = load ptr, ptr %frontend.addr, align 8, !dbg !5413
  %maskclear1 = getelementptr inbounds %struct.crypto_type, ptr %4, i32 0, i32 7, !dbg !5414
  %5 = load i32, ptr %maskclear1, align 4, !dbg !5414
  %6 = load i32, ptr %mask.addr, align 4, !dbg !5415
  %and2 = and i32 %6, %5, !dbg !5415
  store i32 %and2, ptr %mask.addr, align 4, !dbg !5415
  %7 = load ptr, ptr %frontend.addr, align 8, !dbg !5416
  %type3 = getelementptr inbounds %struct.crypto_type, ptr %7, i32 0, i32 6, !dbg !5417
  %8 = load i32, ptr %type3, align 8, !dbg !5417
  %9 = load i32, ptr %type.addr, align 4, !dbg !5418
  %or = or i32 %9, %8, !dbg !5418
  store i32 %or, ptr %type.addr, align 4, !dbg !5418
  %10 = load ptr, ptr %frontend.addr, align 8, !dbg !5419
  %maskset = getelementptr inbounds %struct.crypto_type, ptr %10, i32 0, i32 8, !dbg !5420
  %11 = load i32, ptr %maskset, align 8, !dbg !5420
  %12 = load i32, ptr %mask.addr, align 4, !dbg !5421
  %or4 = or i32 %12, %11, !dbg !5421
  store i32 %or4, ptr %mask.addr, align 4, !dbg !5421
  br label %if.end, !dbg !5422

if.end:                                           ; preds = %if.then, %entry
  %13 = load ptr, ptr %alg_name.addr, align 8, !dbg !5423
  %14 = load i32, ptr %type.addr, align 4, !dbg !5424
  %15 = load i32, ptr %mask.addr, align 4, !dbg !5425
  %call = call ptr @crypto_alg_mod_lookup(ptr noundef %13, i32 noundef %14, i32 noundef %15) #15, !dbg !5426
  ret ptr %call, !dbg !5427
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @crypto_alloc_tfm_node(ptr noundef %alg_name, ptr noundef %frontend, i32 noundef %type, i32 noundef %mask, i32 noundef %node) #0 align 16 !dbg !5428 {
entry:
  %retval = alloca ptr, align 8
  %alg_name.addr = alloca ptr, align 8
  %frontend.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %mask.addr = alloca i32, align 4
  %node.addr = alloca i32, align 4
  %tfm = alloca ptr, align 8
  %err = alloca i32, align 4
  %alg = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %alg_name, ptr %alg_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %alg_name.addr, metadata !5432, metadata !DIExpression()), !dbg !5444
  store ptr %frontend, ptr %frontend.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %frontend.addr, metadata !5433, metadata !DIExpression()), !dbg !5445
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5434, metadata !DIExpression()), !dbg !5446
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !5435, metadata !DIExpression()), !dbg !5447
  store i32 %node, ptr %node.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !5436, metadata !DIExpression()), !dbg !5448
  call void @llvm.lifetime.start.p0(i64 8, ptr %tfm) #16, !dbg !5449
  call void @llvm.dbg.declare(metadata ptr %tfm, metadata !5437, metadata !DIExpression()), !dbg !5450
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #16, !dbg !5451
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5438, metadata !DIExpression()), !dbg !5452
  br label %for.cond, !dbg !5453

for.cond:                                         ; preds = %cleanup.cont, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %alg) #16, !dbg !5454
  call void @llvm.dbg.declare(metadata ptr %alg, metadata !5439, metadata !DIExpression()), !dbg !5455
  %0 = load ptr, ptr %alg_name.addr, align 8, !dbg !5456
  %1 = load ptr, ptr %frontend.addr, align 8, !dbg !5457
  %2 = load i32, ptr %type.addr, align 4, !dbg !5458
  %3 = load i32, ptr %mask.addr, align 4, !dbg !5459
  %call = call ptr @crypto_find_alg(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #15, !dbg !5460
  store ptr %call, ptr %alg, align 8, !dbg !5461
  %4 = load ptr, ptr %alg, align 8, !dbg !5462
  %call1 = call zeroext i1 @IS_ERR(ptr noundef %4) #15, !dbg !5464
  br i1 %call1, label %if.then, label %if.end, !dbg !5465

if.then:                                          ; preds = %for.cond
  %5 = load ptr, ptr %alg, align 8, !dbg !5466
  %call2 = call i64 @PTR_ERR(ptr noundef %5) #15, !dbg !5468
  %conv = trunc i64 %call2 to i32, !dbg !5468
  store i32 %conv, ptr %err, align 4, !dbg !5469
  br label %err9, !dbg !5470

if.end:                                           ; preds = %for.cond
  %6 = load ptr, ptr %alg, align 8, !dbg !5471
  %7 = load ptr, ptr %frontend.addr, align 8, !dbg !5472
  %8 = load i32, ptr %node.addr, align 4, !dbg !5473
  %call3 = call ptr @crypto_create_tfm_node(ptr noundef %6, ptr noundef %7, i32 noundef %8) #15, !dbg !5474
  store ptr %call3, ptr %tfm, align 8, !dbg !5475
  %9 = load ptr, ptr %tfm, align 8, !dbg !5476
  %call4 = call zeroext i1 @IS_ERR(ptr noundef %9) #15, !dbg !5478
  br i1 %call4, label %if.end6, label %if.then5, !dbg !5479

if.then5:                                         ; preds = %if.end
  %10 = load ptr, ptr %tfm, align 8, !dbg !5480
  store ptr %10, ptr %retval, align 8, !dbg !5481
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5481

if.end6:                                          ; preds = %if.end
  %11 = load ptr, ptr %alg, align 8, !dbg !5482
  call void @crypto_mod_put(ptr noundef %11) #15, !dbg !5483
  %12 = load ptr, ptr %tfm, align 8, !dbg !5484
  %call7 = call i64 @PTR_ERR(ptr noundef %12) #15, !dbg !5485
  %conv8 = trunc i64 %call7 to i32, !dbg !5485
  store i32 %conv8, ptr %err, align 4, !dbg !5486
  br label %err9, !dbg !5487

err9:                                             ; preds = %if.end6, %if.then
  call void @llvm.dbg.label(metadata !5443), !dbg !5488
  %13 = load i32, ptr %err, align 4, !dbg !5489
  %cmp = icmp ne i32 %13, -11, !dbg !5491
  br i1 %cmp, label %if.then11, label %if.end12, !dbg !5492

if.then11:                                        ; preds = %err9
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5493

if.end12:                                         ; preds = %err9
  %call13 = call ptr @get_current() #15, !dbg !5494
  %call14 = call i32 @fatal_signal_pending(ptr noundef %call13) #15, !dbg !5496
  %tobool = icmp ne i32 %call14, 0, !dbg !5496
  br i1 %tobool, label %if.then15, label %if.end16, !dbg !5497

if.then15:                                        ; preds = %if.end12
  store i32 -4, ptr %err, align 4, !dbg !5498
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5500

if.end16:                                         ; preds = %if.end12
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5501
  br label %cleanup, !dbg !5501

cleanup:                                          ; preds = %if.end16, %if.then15, %if.then11, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %alg) #16, !dbg !5501
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup19 [
    i32 0, label %cleanup.cont
    i32 2, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond, !dbg !5502, !llvm.loop !5503

for.end:                                          ; preds = %cleanup
  %14 = load i32, ptr %err, align 4, !dbg !5506
  %conv17 = sext i32 %14 to i64, !dbg !5506
  %call18 = call ptr @ERR_PTR(i64 noundef %conv17) #15, !dbg !5507
  store ptr %call18, ptr %retval, align 8, !dbg !5508
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup19, !dbg !5508

cleanup19:                                        ; preds = %for.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #16, !dbg !5509
  call void @llvm.lifetime.end.p0(i64 8, ptr %tfm) #16, !dbg !5509
  %15 = load ptr, ptr %retval, align 8, !dbg !5509
  ret ptr %15, !dbg !5509
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @crypto_destroy_tfm(ptr noundef %mem, ptr noundef %tfm) #0 align 16 !dbg !5510 {
entry:
  %mem.addr = alloca ptr, align 8
  %tfm.addr = alloca ptr, align 8
  %alg = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %mem, ptr %mem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mem.addr, metadata !5514, metadata !DIExpression()), !dbg !5517
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !5515, metadata !DIExpression()), !dbg !5518
  call void @llvm.lifetime.start.p0(i64 8, ptr %alg) #16, !dbg !5519
  call void @llvm.dbg.declare(metadata ptr %alg, metadata !5516, metadata !DIExpression()), !dbg !5520
  %0 = load ptr, ptr %mem.addr, align 8, !dbg !5521
  %call = call zeroext i1 @IS_ERR_OR_NULL(ptr noundef %0) #15, !dbg !5523
  br i1 %call, label %if.then, label %if.end, !dbg !5524

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5525

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %tfm.addr, align 8, !dbg !5526
  %refcnt = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 0, i32 0, !dbg !5528
  %call1 = call zeroext i1 @refcount_dec_and_test(ptr noundef %refcnt) #15, !dbg !5529
  br i1 %call1, label %if.end3, label %if.then2, !dbg !5530

if.then2:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5531

if.end3:                                          ; preds = %if.end
  %2 = load ptr, ptr %tfm.addr, align 8, !dbg !5532
  %__crt_alg = getelementptr inbounds %struct.crypto_tfm, ptr %2, i32 0, i32 4, !dbg !5533
  %3 = load ptr, ptr %__crt_alg, align 8, !dbg !5533
  store ptr %3, ptr %alg, align 8, !dbg !5534
  %4 = load ptr, ptr %tfm.addr, align 8, !dbg !5535
  %exit = getelementptr inbounds %struct.crypto_tfm, ptr %4, i32 0, i32 3, !dbg !5537
  %5 = load ptr, ptr %exit, align 8, !dbg !5537
  %tobool = icmp ne ptr %5, null, !dbg !5535
  br i1 %tobool, label %if.end7, label %land.lhs.true, !dbg !5538

land.lhs.true:                                    ; preds = %if.end3
  %6 = load ptr, ptr %alg, align 8, !dbg !5539
  %cra_exit = getelementptr inbounds %struct.crypto_alg, ptr %6, i32 0, i32 13, !dbg !5540
  %7 = load ptr, ptr %cra_exit, align 8, !dbg !5540
  %tobool4 = icmp ne ptr %7, null, !dbg !5539
  br i1 %tobool4, label %if.then5, label %if.end7, !dbg !5541

if.then5:                                         ; preds = %land.lhs.true
  %8 = load ptr, ptr %alg, align 8, !dbg !5542
  %cra_exit6 = getelementptr inbounds %struct.crypto_alg, ptr %8, i32 0, i32 13, !dbg !5543
  %9 = load ptr, ptr %cra_exit6, align 8, !dbg !5543
  %10 = load ptr, ptr %tfm.addr, align 8, !dbg !5544
  call void %9(ptr noundef %10) #15, !dbg !5542
  br label %if.end7, !dbg !5542

if.end7:                                          ; preds = %if.then5, %land.lhs.true, %if.end3
  %11 = load ptr, ptr %tfm.addr, align 8, !dbg !5545
  call void @crypto_exit_ops(ptr noundef %11) #15, !dbg !5546
  %12 = load ptr, ptr %alg, align 8, !dbg !5547
  call void @crypto_mod_put(ptr noundef %12) #15, !dbg !5548
  %13 = load ptr, ptr %mem.addr, align 8, !dbg !5549
  call void @kfree_sensitive(ptr noundef %13) #15, !dbg !5550
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5551
  br label %cleanup, !dbg !5551

cleanup:                                          ; preds = %if.end7, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %alg) #16, !dbg !5551
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5551

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR_OR_NULL(ptr noundef %ptr) #3 align 16 !dbg !5552 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5554, metadata !DIExpression()), !dbg !5555
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !5556
  %tobool = icmp ne ptr %0, null, !dbg !5556
  %lnot = xor i1 %tobool, true, !dbg !5556
  %lnot1 = xor i1 %lnot, true, !dbg !5556
  %lnot2 = xor i1 %lnot1, true, !dbg !5556
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5556
  %conv = sext i32 %lnot.ext to i64, !dbg !5556
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5556
  %tobool3 = icmp ne i64 %expval, 0, !dbg !5556
  br i1 %tobool3, label %lor.end, label %lor.rhs, !dbg !5557

lor.rhs:                                          ; preds = %entry
  %1 = load ptr, ptr %ptr.addr, align 8, !dbg !5558
  %2 = ptrtoint ptr %1 to i64, !dbg !5558
  %3 = inttoptr i64 %2 to ptr, !dbg !5558
  %4 = ptrtoint ptr %3 to i64, !dbg !5558
  %cmp = icmp uge i64 %4, -4095, !dbg !5558
  %lnot5 = xor i1 %cmp, true, !dbg !5558
  %lnot7 = xor i1 %lnot5, true, !dbg !5558
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !5558
  %conv9 = sext i32 %lnot.ext8 to i64, !dbg !5558
  %expval10 = call i64 @llvm.expect.i64(i64 %conv9, i64 0), !dbg !5558
  %tobool11 = icmp ne i64 %expval10, 0, !dbg !5557
  br label %lor.end, !dbg !5557

lor.end:                                          ; preds = %lor.rhs, %entry
  %5 = phi i1 [ true, %entry ], [ %tobool11, %lor.rhs ]
  ret i1 %5, !dbg !5559
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @refcount_dec_and_test(ptr noundef %r) #3 align 16 !dbg !5560 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5564, metadata !DIExpression()), !dbg !5565
  %0 = load ptr, ptr %r.addr, align 8, !dbg !5566
  %call = call zeroext i1 @__refcount_dec_and_test(ptr noundef %0, ptr noundef null) #15, !dbg !5567
  ret i1 %call, !dbg !5568
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5569 dso_local void @kfree_sensitive(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @crypto_has_alg(ptr noundef %name, i32 noundef %type, i32 noundef %mask) #0 align 16 !dbg !5570 {
entry:
  %name.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %mask.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %alg = alloca ptr, align 8
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !5574, metadata !DIExpression()), !dbg !5579
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5575, metadata !DIExpression()), !dbg !5580
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !5576, metadata !DIExpression()), !dbg !5581
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !5582
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5577, metadata !DIExpression()), !dbg !5583
  store i32 0, ptr %ret, align 4, !dbg !5583
  call void @llvm.lifetime.start.p0(i64 8, ptr %alg) #16, !dbg !5584
  call void @llvm.dbg.declare(metadata ptr %alg, metadata !5578, metadata !DIExpression()), !dbg !5585
  %0 = load ptr, ptr %name.addr, align 8, !dbg !5586
  %1 = load i32, ptr %type.addr, align 4, !dbg !5587
  %2 = load i32, ptr %mask.addr, align 4, !dbg !5588
  %call = call ptr @crypto_alg_mod_lookup(ptr noundef %0, i32 noundef %1, i32 noundef %2) #15, !dbg !5589
  store ptr %call, ptr %alg, align 8, !dbg !5585
  %3 = load ptr, ptr %alg, align 8, !dbg !5590
  %call1 = call zeroext i1 @IS_ERR(ptr noundef %3) #15, !dbg !5592
  br i1 %call1, label %if.end, label %if.then, !dbg !5593

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %alg, align 8, !dbg !5594
  call void @crypto_mod_put(ptr noundef %4) #15, !dbg !5596
  store i32 1, ptr %ret, align 4, !dbg !5597
  br label %if.end, !dbg !5598

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %ret, align 4, !dbg !5599
  call void @llvm.lifetime.end.p0(i64 8, ptr %alg) #16, !dbg !5600
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !5600
  ret i32 %5, !dbg !5601
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @crypto_req_done(ptr noundef %data, i32 noundef %err) #0 align 16 !dbg !5602 {
entry:
  %data.addr = alloca ptr, align 8
  %err.addr = alloca i32, align 4
  %wait = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5606, metadata !DIExpression()), !dbg !5614
  store i32 %err, ptr %err.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !5607, metadata !DIExpression()), !dbg !5615
  call void @llvm.lifetime.start.p0(i64 8, ptr %wait) #16, !dbg !5616
  call void @llvm.dbg.declare(metadata ptr %wait, metadata !5608, metadata !DIExpression()), !dbg !5617
  %0 = load ptr, ptr %data.addr, align 8, !dbg !5618
  store ptr %0, ptr %wait, align 8, !dbg !5617
  %1 = load i32, ptr %err.addr, align 4, !dbg !5619
  %cmp = icmp eq i32 %1, -115, !dbg !5621
  br i1 %cmp, label %if.then, label %if.end, !dbg !5622

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5623

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %err.addr, align 4, !dbg !5624
  %3 = load ptr, ptr %wait, align 8, !dbg !5625
  %err1 = getelementptr inbounds %struct.crypto_wait, ptr %3, i32 0, i32 1, !dbg !5626
  store i32 %2, ptr %err1, align 8, !dbg !5627
  %4 = load ptr, ptr %wait, align 8, !dbg !5628
  %completion = getelementptr inbounds %struct.crypto_wait, ptr %4, i32 0, i32 0, !dbg !5629
  call void @complete(ptr noundef %completion) #15, !dbg !5630
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5631
  br label %cleanup, !dbg !5631

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %wait) #16, !dbg !5631
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5631

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5632 dso_local void @complete(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @refcount_inc(ptr noundef %r) #3 align 16 !dbg !5633 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5637, metadata !DIExpression()), !dbg !5638
  %0 = load ptr, ptr %r.addr, align 8, !dbg !5639
  call void @__refcount_inc(ptr noundef %0, ptr noundef null) #15, !dbg !5640
  ret void, !dbg !5641
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_inc(ptr noundef %r, ptr noundef %oldp) #3 align 16 !dbg !5642 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5646, metadata !DIExpression()), !dbg !5648
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !5647, metadata !DIExpression()), !dbg !5649
  %0 = load ptr, ptr %r.addr, align 8, !dbg !5650
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !5651
  call void @__refcount_add(i32 noundef 1, ptr noundef %0, ptr noundef %1) #15, !dbg !5652
  ret void, !dbg !5653
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_add(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #3 align 16 !dbg !5654 {
entry:
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5658, metadata !DIExpression()), !dbg !5662
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5659, metadata !DIExpression()), !dbg !5663
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !5660, metadata !DIExpression()), !dbg !5664
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #16, !dbg !5665
  call void @llvm.dbg.declare(metadata ptr %old, metadata !5661, metadata !DIExpression()), !dbg !5666
  %0 = load i32, ptr %i.addr, align 4, !dbg !5667
  %1 = load ptr, ptr %r.addr, align 8, !dbg !5668
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !5669
  %call = call i32 @atomic_fetch_add_relaxed(i32 noundef %0, ptr noundef %refs) #15, !dbg !5670
  store i32 %call, ptr %old, align 4, !dbg !5666
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !5671
  %tobool = icmp ne ptr %2, null, !dbg !5671
  br i1 %tobool, label %if.then, label %if.end, !dbg !5673

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !5674
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !5675
  store i32 %3, ptr %4, align 4, !dbg !5676
  br label %if.end, !dbg !5677

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !5678
  %tobool1 = icmp ne i32 %5, 0, !dbg !5678
  %lnot = xor i1 %tobool1, true, !dbg !5678
  %lnot2 = xor i1 %lnot, true, !dbg !5678
  %lnot3 = xor i1 %lnot2, true, !dbg !5678
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !5678
  %conv = sext i32 %lnot.ext to i64, !dbg !5678
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5678
  %tobool4 = icmp ne i64 %expval, 0, !dbg !5678
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !5680

if.then5:                                         ; preds = %if.end
  %6 = load ptr, ptr %r.addr, align 8, !dbg !5681
  call void @refcount_warn_saturate(ptr noundef %6, i32 noundef 2) #15, !dbg !5682
  br label %if.end18, !dbg !5682

if.else:                                          ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !5683
  %cmp = icmp slt i32 %7, 0, !dbg !5683
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !5683

lor.rhs:                                          ; preds = %if.else
  %8 = load i32, ptr %old, align 4, !dbg !5683
  %9 = load i32, ptr %i.addr, align 4, !dbg !5683
  %add = add i32 %8, %9, !dbg !5683
  %cmp7 = icmp slt i32 %add, 0, !dbg !5683
  br label %lor.end, !dbg !5683

lor.end:                                          ; preds = %lor.rhs, %if.else
  %10 = phi i1 [ true, %if.else ], [ %cmp7, %lor.rhs ]
  %lnot9 = xor i1 %10, true, !dbg !5683
  %lnot11 = xor i1 %lnot9, true, !dbg !5683
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !5683
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !5683
  %expval14 = call i64 @llvm.expect.i64(i64 %conv13, i64 0), !dbg !5683
  %tobool15 = icmp ne i64 %expval14, 0, !dbg !5683
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !5685

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !5686
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 1) #15, !dbg !5687
  br label %if.end17, !dbg !5687

if.end17:                                         ; preds = %if.then16, %lor.end
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #16, !dbg !5688
  ret void, !dbg !5688
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #7 align 16 !dbg !5689 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5695, metadata !DIExpression()), !dbg !5697
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5696, metadata !DIExpression()), !dbg !5698
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5699
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #15, !dbg !5700
  %1 = load i32, ptr %i.addr, align 4, !dbg !5701
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5702
  %call = call i32 @raw_atomic_fetch_add_relaxed(i32 noundef %1, ptr noundef %2) #15, !dbg !5703
  ret i32 %call, !dbg !5704
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5705 dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #7 align 16 !dbg !5708 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5716, metadata !DIExpression()), !dbg !5718
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5717, metadata !DIExpression()), !dbg !5719
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5720
  %1 = load i64, ptr %size.addr, align 8, !dbg !5721
  %conv = trunc i64 %1 to i32, !dbg !5721
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #15, !dbg !5722
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5723
  %3 = load i64, ptr %size.addr, align 8, !dbg !5723
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #15, !dbg !5723
  ret void, !dbg !5724
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #7 align 16 !dbg !5725 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5728, metadata !DIExpression()), !dbg !5730
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5729, metadata !DIExpression()), !dbg !5731
  %0 = load i32, ptr %i.addr, align 4, !dbg !5732
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5733
  %call = call i32 @arch_atomic_fetch_add(i32 noundef %0, ptr noundef %1) #15, !dbg !5734
  ret i32 %call, !dbg !5735
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !5736 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5741, metadata !DIExpression()), !dbg !5743
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5742, metadata !DIExpression()), !dbg !5744
  ret i1 true, !dbg !5745
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !5746 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5751, metadata !DIExpression()), !dbg !5754
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5752, metadata !DIExpression()), !dbg !5755
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5753, metadata !DIExpression()), !dbg !5756
  ret void, !dbg !5757
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_add(i32 noundef %i, ptr noundef %v) #7 align 16 !dbg !5758 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5761, metadata !DIExpression()), !dbg !5765
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5762, metadata !DIExpression()), !dbg !5766
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #16, !dbg !5767
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !5763, metadata !DIExpression()), !dbg !5767
  %0 = load i32, ptr %i.addr, align 4, !dbg !5767
  store i32 %0, ptr %__ret, align 4, !dbg !5767
  %1 = load i32, ptr %__ret, align 4, !dbg !5767
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5767
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !5767
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #16, !dbg !5767, !srcloc !5768
  store i32 %3, ptr %__ret, align 4, !dbg !5767
  %4 = load i32, ptr %__ret, align 4, !dbg !5767
  store i32 %4, ptr %tmp, align 4, !dbg !5767
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #16, !dbg !5769
  %5 = load i32, ptr %tmp, align 4, !dbg !5767
  ret i32 %5, !dbg !5770
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #8 align 16 !dbg !5771 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5773, metadata !DIExpression()), !dbg !5778
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5774, metadata !DIExpression()), !dbg !5779
  %0 = load i64, ptr %size.addr, align 8, !dbg !5780
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5781
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !5782

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5783
  %tobool = icmp ne i64 %2, 0, !dbg !5783
  br i1 %tobool, label %if.then, label %if.end7, !dbg !5784

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #16, !dbg !5785
  call void @llvm.dbg.declare(metadata ptr %index, metadata !5775, metadata !DIExpression()), !dbg !5786
  %3 = load i64, ptr %size.addr, align 8, !dbg !5787
  %cmp = icmp ugt i64 %3, 8192, !dbg !5789
  br i1 %cmp, label %if.then1, label %if.end, !dbg !5790

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !5791
  %5 = load i32, ptr %flags.addr, align 4, !dbg !5792
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #17, !dbg !5793
  store ptr %call, ptr %retval, align 8, !dbg !5794
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5794

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !5795
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #15, !dbg !5795
  store i32 %call2, ptr %index, align 4, !dbg !5796
  %7 = load i32, ptr %flags.addr, align 4, !dbg !5797
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !5798
  %9 = ptrtoint ptr %8 to i64, !dbg !5798
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #15, !dbg !5799
  %idxprom = zext i32 %call3 to i64, !dbg !5800
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !5800
  %10 = load i32, ptr %index, align 4, !dbg !5801
  %idxprom4 = zext i32 %10 to i64, !dbg !5800
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !5800
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !5800
  %12 = load i32, ptr %flags.addr, align 4, !dbg !5802
  %13 = load i64, ptr %size.addr, align 8, !dbg !5803
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #19, !dbg !5804
  store ptr %call6, ptr %retval, align 8, !dbg !5805
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5805

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #16, !dbg !5806
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !5807
  %15 = load i32, ptr %flags.addr, align 4, !dbg !5808
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #17, !dbg !5809
  store ptr %call8, ptr %retval, align 8, !dbg !5810
  br label %return, !dbg !5810

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !5811
  ret ptr %16, !dbg !5811
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5812 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #7 align 16 !dbg !5813 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5817, metadata !DIExpression()), !dbg !5819
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !5818, metadata !DIExpression()), !dbg !5820
  %0 = load i64, ptr %size.addr, align 8, !dbg !5821
  %tobool = icmp ne i64 %0, 0, !dbg !5821
  br i1 %tobool, label %if.end, label %if.then, !dbg !5823

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5824
  br label %return, !dbg !5824

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !5825
  %cmp = icmp ule i64 %1, 8, !dbg !5827
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5828

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !5829
  br label %return, !dbg !5829

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !5830
  %cmp3 = icmp ugt i64 %2, 64, !dbg !5832
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !5833

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !5834
  %cmp4 = icmp ule i64 %3, 96, !dbg !5835
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5836

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !5837
  br label %return, !dbg !5837

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !5838
  %cmp7 = icmp ugt i64 %4, 128, !dbg !5840
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !5841

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !5842
  %cmp9 = icmp ule i64 %5, 192, !dbg !5843
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !5844

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !5845
  br label %return, !dbg !5845

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !5846
  %cmp12 = icmp ule i64 %6, 8, !dbg !5848
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !5849

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !5850
  br label %return, !dbg !5850

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !5851
  %cmp15 = icmp ule i64 %7, 16, !dbg !5853
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !5854

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !5855
  br label %return, !dbg !5855

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !5856
  %cmp18 = icmp ule i64 %8, 32, !dbg !5858
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !5859

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !5860
  br label %return, !dbg !5860

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !5861
  %cmp21 = icmp ule i64 %9, 64, !dbg !5863
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !5864

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !5865
  br label %return, !dbg !5865

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !5866
  %cmp24 = icmp ule i64 %10, 128, !dbg !5868
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !5869

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !5870
  br label %return, !dbg !5870

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !5871
  %cmp27 = icmp ule i64 %11, 256, !dbg !5873
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !5874

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !5875
  br label %return, !dbg !5875

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !5876
  %cmp30 = icmp ule i64 %12, 512, !dbg !5878
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !5879

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !5880
  br label %return, !dbg !5880

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !5881
  %cmp33 = icmp ule i64 %13, 1024, !dbg !5883
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !5884

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !5885
  br label %return, !dbg !5885

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !5886
  %cmp36 = icmp ule i64 %14, 2048, !dbg !5888
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !5889

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !5890
  br label %return, !dbg !5890

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !5891
  %cmp39 = icmp ule i64 %15, 4096, !dbg !5893
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !5894

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !5895
  br label %return, !dbg !5895

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !5896
  %cmp42 = icmp ule i64 %16, 8192, !dbg !5898
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !5899

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !5900
  br label %return, !dbg !5900

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !5901
  %cmp45 = icmp ule i64 %17, 16384, !dbg !5903
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !5904

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !5905
  br label %return, !dbg !5905

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !5906
  %cmp48 = icmp ule i64 %18, 32768, !dbg !5908
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !5909

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !5910
  br label %return, !dbg !5910

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !5911
  %cmp51 = icmp ule i64 %19, 65536, !dbg !5913
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !5914

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !5915
  br label %return, !dbg !5915

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !5916
  %cmp54 = icmp ule i64 %20, 131072, !dbg !5918
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !5919

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !5920
  br label %return, !dbg !5920

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !5921
  %cmp57 = icmp ule i64 %21, 262144, !dbg !5923
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !5924

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !5925
  br label %return, !dbg !5925

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !5926
  %cmp60 = icmp ule i64 %22, 524288, !dbg !5928
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !5929

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !5930
  br label %return, !dbg !5930

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !5931
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !5933
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !5934

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !5935
  br label %return, !dbg !5935

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !5936
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !5938
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !5939

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !5940
  br label %return, !dbg !5940

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !5941, !range !5943, !noundef !586
  %tobool69 = trunc i8 %25 to i1, !dbg !5941
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !5944

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !5945

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_231() #20, !dbg !5946, !srcloc !5949
  unreachable, !dbg !5946

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !5950

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !5951

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !5952

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !5954

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !5952

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 480, i32 0, i64 12) #16, !dbg !5956, !srcloc !5958
  br label %do.end75, !dbg !5956

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !5952

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !5959
  br label %return, !dbg !5959

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !5960
  ret i32 %26, !dbg !5960
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !5961 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #7 align 16 !dbg !5967 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5971, metadata !DIExpression()), !dbg !5973
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !5972, metadata !DIExpression()), !dbg !5974
  %0 = load i32, ptr %flags.addr, align 4, !dbg !5975
  %and = and i32 %0, 17, !dbg !5975
  %cmp = icmp eq i32 %and, 0, !dbg !5975
  %lnot = xor i1 %cmp, true, !dbg !5975
  %lnot1 = xor i1 %lnot, true, !dbg !5975
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5975
  %conv = sext i32 %lnot.ext to i64, !dbg !5975
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !5975
  %tobool = icmp ne i64 %expval, 0, !dbg !5975
  br i1 %tobool, label %if.then, label %if.end, !dbg !5977

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5978
  br label %return, !dbg !5978

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5979
  %and2 = and i32 %1, 1, !dbg !5981
  %tobool3 = icmp ne i32 %and2, 0, !dbg !5981
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5982

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !5983
  br label %return, !dbg !5983

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !5984
  br label %return, !dbg !5984

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !5986
  ret i32 %2, !dbg !5986
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5987 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #10

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !5988 dso_local void @__compiletime_assert_231() #12

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5989 dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #3 align 16 !dbg !5994 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5996, metadata !DIExpression()), !dbg !5997
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !5998
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #15, !dbg !6000
  br i1 %call, label %if.end, label %if.then, !dbg !6001

if.then:                                          ; preds = %entry
  br label %return, !dbg !6002

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !6003
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6004
  %2 = load ptr, ptr %prev, align 8, !dbg !6004
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !6005
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !6006
  %4 = load ptr, ptr %next, align 8, !dbg !6006
  call void @__list_del(ptr noundef %2, ptr noundef %4) #15, !dbg !6007
  br label %return, !dbg !6008

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !6008
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #3 align 16 !dbg !6009 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6013, metadata !DIExpression()), !dbg !6014
  ret i1 true, !dbg !6015
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !6016 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6020, metadata !DIExpression()), !dbg !6022
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6021, metadata !DIExpression()), !dbg !6023
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !6024
  %1 = load ptr, ptr %next.addr, align 8, !dbg !6025
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6026
  store ptr %0, ptr %prev1, align 8, !dbg !6027
  br label %do.body, !dbg !6028

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !6029

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !6031

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !6029

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !6033
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !6033
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !6033
  store volatile ptr %2, ptr %next4, align 8, !dbg !6033
  br label %do.end5, !dbg !6033

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !6029

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !6035
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @crypto_alg_lookup(ptr noundef %name, i32 noundef %type, i32 noundef %mask) #0 align 16 !dbg !6036 {
entry:
  %name.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %mask.addr = alloca i32, align 4
  %fips = alloca i32, align 4
  %alg = alloca ptr, align 8
  %test = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !6038, metadata !DIExpression()), !dbg !6045
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6039, metadata !DIExpression()), !dbg !6046
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !6040, metadata !DIExpression()), !dbg !6047
  call void @llvm.lifetime.start.p0(i64 4, ptr %fips) #16, !dbg !6048
  call void @llvm.dbg.declare(metadata ptr %fips, metadata !6041, metadata !DIExpression()), !dbg !6049
  store i32 131072, ptr %fips, align 4, !dbg !6049
  call void @llvm.lifetime.start.p0(i64 8, ptr %alg) #16, !dbg !6050
  call void @llvm.dbg.declare(metadata ptr %alg, metadata !6043, metadata !DIExpression()), !dbg !6051
  call void @llvm.lifetime.start.p0(i64 4, ptr %test) #16, !dbg !6052
  call void @llvm.dbg.declare(metadata ptr %test, metadata !6044, metadata !DIExpression()), !dbg !6053
  store i32 0, ptr %test, align 4, !dbg !6053
  %0 = load i32, ptr %type.addr, align 4, !dbg !6054
  %1 = load i32, ptr %mask.addr, align 4, !dbg !6056
  %or = or i32 %0, %1, !dbg !6057
  %and = and i32 %or, 1024, !dbg !6058
  %tobool = icmp ne i32 %and, 0, !dbg !6058
  br i1 %tobool, label %if.end, label %if.then, !dbg !6059

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %test, align 4, !dbg !6060
  %or1 = or i32 %2, 1024, !dbg !6060
  store i32 %or1, ptr %test, align 4, !dbg !6060
  br label %if.end, !dbg !6061

if.end:                                           ; preds = %if.then, %entry
  call void @down_read(ptr noundef @crypto_alg_sem) #15, !dbg !6062
  %3 = load ptr, ptr %name.addr, align 8, !dbg !6063
  %4 = load i32, ptr %type.addr, align 4, !dbg !6064
  %5 = load i32, ptr %test, align 4, !dbg !6065
  %or2 = or i32 %4, %5, !dbg !6066
  %and3 = and i32 %or2, -131073, !dbg !6067
  %6 = load i32, ptr %mask.addr, align 4, !dbg !6068
  %7 = load i32, ptr %test, align 4, !dbg !6069
  %or4 = or i32 %6, %7, !dbg !6070
  %and5 = and i32 %or4, -131073, !dbg !6071
  %call = call ptr @__crypto_alg_lookup(ptr noundef %3, i32 noundef %and3, i32 noundef %and5) #15, !dbg !6072
  store ptr %call, ptr %alg, align 8, !dbg !6073
  %8 = load ptr, ptr %alg, align 8, !dbg !6074
  %tobool6 = icmp ne ptr %8, null, !dbg !6074
  br i1 %tobool6, label %if.then7, label %if.else, !dbg !6076

if.then7:                                         ; preds = %if.end
  %9 = load i32, ptr %type.addr, align 4, !dbg !6077
  %10 = load i32, ptr %mask.addr, align 4, !dbg !6080
  %or8 = or i32 %9, %10, !dbg !6081
  %xor = xor i32 %or8, 131072, !dbg !6082
  %and9 = and i32 %xor, 131072, !dbg !6083
  %tobool10 = icmp ne i32 %and9, 0, !dbg !6083
  br i1 %tobool10, label %if.then11, label %if.end13, !dbg !6084

if.then11:                                        ; preds = %if.then7
  %11 = load i32, ptr %mask.addr, align 4, !dbg !6085
  %or12 = or i32 %11, 131072, !dbg !6085
  store i32 %or12, ptr %mask.addr, align 4, !dbg !6085
  br label %if.end13, !dbg !6086

if.end13:                                         ; preds = %if.then11, %if.then7
  %12 = load i32, ptr %mask.addr, align 4, !dbg !6087
  %and14 = and i32 %12, 131072, !dbg !6087
  store i32 %and14, ptr %mask.addr, align 4, !dbg !6087
  %13 = load ptr, ptr %alg, align 8, !dbg !6088
  %call15 = call i32 @crypto_is_larval(ptr noundef %13) #15, !dbg !6090
  %tobool16 = icmp ne i32 %call15, 0, !dbg !6090
  br i1 %tobool16, label %if.end22, label %land.lhs.true, !dbg !6091

land.lhs.true:                                    ; preds = %if.end13
  %14 = load i32, ptr %type.addr, align 4, !dbg !6092
  %15 = load ptr, ptr %alg, align 8, !dbg !6093
  %cra_flags = getelementptr inbounds %struct.crypto_alg, ptr %15, i32 0, i32 2, !dbg !6094
  %16 = load i32, ptr %cra_flags, align 8, !dbg !6094
  %xor17 = xor i32 %14, %16, !dbg !6095
  %17 = load i32, ptr %mask.addr, align 4, !dbg !6096
  %and18 = and i32 %xor17, %17, !dbg !6097
  %tobool19 = icmp ne i32 %and18, 0, !dbg !6097
  br i1 %tobool19, label %if.then20, label %if.end22, !dbg !6098

if.then20:                                        ; preds = %land.lhs.true
  %18 = load ptr, ptr %alg, align 8, !dbg !6099
  call void @crypto_mod_put(ptr noundef %18) #15, !dbg !6101
  %call21 = call ptr @ERR_PTR(i64 noundef -2) #15, !dbg !6102
  store ptr %call21, ptr %alg, align 8, !dbg !6103
  br label %if.end22, !dbg !6104

if.end22:                                         ; preds = %if.then20, %land.lhs.true, %if.end13
  br label %if.end34, !dbg !6105

if.else:                                          ; preds = %if.end
  %19 = load i32, ptr %test, align 4, !dbg !6106
  %tobool23 = icmp ne i32 %19, 0, !dbg !6106
  br i1 %tobool23, label %if.then24, label %if.end33, !dbg !6108

if.then24:                                        ; preds = %if.else
  %20 = load ptr, ptr %name.addr, align 8, !dbg !6109
  %21 = load i32, ptr %type.addr, align 4, !dbg !6111
  %22 = load i32, ptr %mask.addr, align 4, !dbg !6112
  %call25 = call ptr @__crypto_alg_lookup(ptr noundef %20, i32 noundef %21, i32 noundef %22) #15, !dbg !6113
  store ptr %call25, ptr %alg, align 8, !dbg !6114
  %23 = load ptr, ptr %alg, align 8, !dbg !6115
  %tobool26 = icmp ne ptr %23, null, !dbg !6115
  br i1 %tobool26, label %land.lhs.true27, label %if.end32, !dbg !6117

land.lhs.true27:                                  ; preds = %if.then24
  %24 = load ptr, ptr %alg, align 8, !dbg !6118
  %call28 = call i32 @crypto_is_larval(ptr noundef %24) #15, !dbg !6119
  %tobool29 = icmp ne i32 %call28, 0, !dbg !6119
  br i1 %tobool29, label %if.end32, label %if.then30, !dbg !6120

if.then30:                                        ; preds = %land.lhs.true27
  %25 = load ptr, ptr %alg, align 8, !dbg !6121
  call void @crypto_mod_put(ptr noundef %25) #15, !dbg !6123
  %call31 = call ptr @ERR_PTR(i64 noundef -80) #15, !dbg !6124
  store ptr %call31, ptr %alg, align 8, !dbg !6125
  br label %if.end32, !dbg !6126

if.end32:                                         ; preds = %if.then30, %land.lhs.true27, %if.then24
  br label %if.end33, !dbg !6127

if.end33:                                         ; preds = %if.end32, %if.else
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.end22
  call void @up_read(ptr noundef @crypto_alg_sem) #15, !dbg !6128
  %26 = load ptr, ptr %alg, align 8, !dbg !6129
  call void @llvm.lifetime.end.p0(i64 4, ptr %test) #16, !dbg !6130
  call void @llvm.lifetime.end.p0(i64 8, ptr %alg) #16, !dbg !6130
  call void @llvm.lifetime.end.p0(i64 4, ptr %fips) #16, !dbg !6130
  ret ptr %26, !dbg !6131
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @crypto_larval_add(ptr noundef %name, i32 noundef %type, i32 noundef %mask) #0 align 16 !dbg !6132 {
entry:
  %retval = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %mask.addr = alloca i32, align 4
  %alg = alloca ptr, align 8
  %larval = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !6134, metadata !DIExpression()), !dbg !6139
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6135, metadata !DIExpression()), !dbg !6140
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !6136, metadata !DIExpression()), !dbg !6141
  call void @llvm.lifetime.start.p0(i64 8, ptr %alg) #16, !dbg !6142
  call void @llvm.dbg.declare(metadata ptr %alg, metadata !6137, metadata !DIExpression()), !dbg !6143
  call void @llvm.lifetime.start.p0(i64 8, ptr %larval) #16, !dbg !6144
  call void @llvm.dbg.declare(metadata ptr %larval, metadata !6138, metadata !DIExpression()), !dbg !6145
  %0 = load ptr, ptr %name.addr, align 8, !dbg !6146
  %1 = load i32, ptr %type.addr, align 4, !dbg !6147
  %2 = load i32, ptr %mask.addr, align 4, !dbg !6148
  %call = call ptr @crypto_larval_alloc(ptr noundef %0, i32 noundef %1, i32 noundef %2) #15, !dbg !6149
  store ptr %call, ptr %larval, align 8, !dbg !6150
  %3 = load ptr, ptr %larval, align 8, !dbg !6151
  %call1 = call zeroext i1 @IS_ERR(ptr noundef %3) #15, !dbg !6153
  br i1 %call1, label %if.then, label %if.end, !dbg !6154

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %larval, align 8, !dbg !6155
  %call2 = call ptr @ERR_CAST(ptr noundef %4) #15, !dbg !6156
  store ptr %call2, ptr %retval, align 8, !dbg !6157
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6157

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %larval, align 8, !dbg !6158
  %alg3 = getelementptr inbounds %struct.crypto_larval, ptr %5, i32 0, i32 0, !dbg !6159
  %cra_refcnt = getelementptr inbounds %struct.crypto_alg, ptr %alg3, i32 0, i32 7, !dbg !6160
  call void @refcount_set(ptr noundef %cra_refcnt, i32 noundef 2) #15, !dbg !6161
  call void @down_write(ptr noundef @crypto_alg_sem) #15, !dbg !6162
  %6 = load ptr, ptr %name.addr, align 8, !dbg !6163
  %7 = load i32, ptr %type.addr, align 4, !dbg !6164
  %8 = load i32, ptr %mask.addr, align 4, !dbg !6165
  %call4 = call ptr @__crypto_alg_lookup(ptr noundef %6, i32 noundef %7, i32 noundef %8) #15, !dbg !6166
  store ptr %call4, ptr %alg, align 8, !dbg !6167
  %9 = load ptr, ptr %alg, align 8, !dbg !6168
  %tobool = icmp ne ptr %9, null, !dbg !6168
  br i1 %tobool, label %if.end7, label %if.then5, !dbg !6170

if.then5:                                         ; preds = %if.end
  %10 = load ptr, ptr %larval, align 8, !dbg !6171
  %alg6 = getelementptr inbounds %struct.crypto_larval, ptr %10, i32 0, i32 0, !dbg !6173
  store ptr %alg6, ptr %alg, align 8, !dbg !6174
  %11 = load ptr, ptr %alg, align 8, !dbg !6175
  %cra_list = getelementptr inbounds %struct.crypto_alg, ptr %11, i32 0, i32 0, !dbg !6176
  call void @list_add(ptr noundef %cra_list, ptr noundef @crypto_alg_list) #15, !dbg !6177
  br label %if.end7, !dbg !6178

if.end7:                                          ; preds = %if.then5, %if.end
  call void @up_write(ptr noundef @crypto_alg_sem) #15, !dbg !6179
  %12 = load ptr, ptr %alg, align 8, !dbg !6180
  %13 = load ptr, ptr %larval, align 8, !dbg !6182
  %alg8 = getelementptr inbounds %struct.crypto_larval, ptr %13, i32 0, i32 0, !dbg !6183
  %cmp = icmp ne ptr %12, %alg8, !dbg !6184
  br i1 %cmp, label %if.then9, label %if.end15, !dbg !6185

if.then9:                                         ; preds = %if.end7
  %14 = load ptr, ptr %larval, align 8, !dbg !6186
  call void @kfree(ptr noundef %14) #15, !dbg !6188
  %15 = load ptr, ptr %alg, align 8, !dbg !6189
  %call10 = call i32 @crypto_is_larval(ptr noundef %15) #15, !dbg !6191
  %tobool11 = icmp ne i32 %call10, 0, !dbg !6191
  br i1 %tobool11, label %if.then12, label %if.end14, !dbg !6192

if.then12:                                        ; preds = %if.then9
  %16 = load ptr, ptr %alg, align 8, !dbg !6193
  %call13 = call ptr @crypto_larval_wait(ptr noundef %16) #15, !dbg !6194
  store ptr %call13, ptr %alg, align 8, !dbg !6195
  br label %if.end14, !dbg !6196

if.end14:                                         ; preds = %if.then12, %if.then9
  br label %if.end15, !dbg !6197

if.end15:                                         ; preds = %if.end14, %if.end7
  %17 = load ptr, ptr %alg, align 8, !dbg !6198
  store ptr %17, ptr %retval, align 8, !dbg !6199
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6199

cleanup:                                          ; preds = %if.end15, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %larval) #16, !dbg !6200
  call void @llvm.lifetime.end.p0(i64 8, ptr %alg) #16, !dbg !6200
  %18 = load ptr, ptr %retval, align 8, !dbg !6200
  ret ptr %18, !dbg !6200
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6201 dso_local void @down_read(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__crypto_alg_lookup(ptr noundef %name, i32 noundef %type, i32 noundef %mask) #0 align 16 !dbg !6202 {
entry:
  %name.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %mask.addr = alloca i32, align 4
  %q = alloca ptr, align 8
  %alg = alloca ptr, align 8
  %best = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %exact = alloca i32, align 4
  %fuzzy = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr47 = alloca ptr, align 8
  %tmp49 = alloca ptr, align 8
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !6204, metadata !DIExpression()), !dbg !6219
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6205, metadata !DIExpression()), !dbg !6220
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !6206, metadata !DIExpression()), !dbg !6221
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #16, !dbg !6222
  call void @llvm.dbg.declare(metadata ptr %q, metadata !6207, metadata !DIExpression()), !dbg !6223
  call void @llvm.lifetime.start.p0(i64 8, ptr %alg) #16, !dbg !6222
  call void @llvm.dbg.declare(metadata ptr %alg, metadata !6208, metadata !DIExpression()), !dbg !6224
  store ptr null, ptr %alg, align 8, !dbg !6224
  call void @llvm.lifetime.start.p0(i64 4, ptr %best) #16, !dbg !6225
  call void @llvm.dbg.declare(metadata ptr %best, metadata !6209, metadata !DIExpression()), !dbg !6226
  store i32 -2, ptr %best, align 4, !dbg !6226
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !6227
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6210, metadata !DIExpression()), !dbg !6227
  %0 = load ptr, ptr @crypto_alg_list, align 8, !dbg !6227
  store ptr %0, ptr %__mptr, align 8, !dbg !6227
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6227
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !6227
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6227
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !6228
  %2 = load ptr, ptr %tmp, align 8, !dbg !6227
  store ptr %2, ptr %q, align 8, !dbg !6228
  br label %for.cond, !dbg !6228

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %q, align 8, !dbg !6229
  %cra_list = getelementptr inbounds %struct.crypto_alg, ptr %3, i32 0, i32 0, !dbg !6229
  %cmp = icmp eq ptr %cra_list, @crypto_alg_list, !dbg !6229
  %lnot = xor i1 %cmp, true, !dbg !6229
  br i1 %lnot, label %for.body, label %for.end, !dbg !6228

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %exact) #16, !dbg !6230
  call void @llvm.dbg.declare(metadata ptr %exact, metadata !6213, metadata !DIExpression()), !dbg !6231
  call void @llvm.lifetime.start.p0(i64 4, ptr %fuzzy) #16, !dbg !6230
  call void @llvm.dbg.declare(metadata ptr %fuzzy, metadata !6216, metadata !DIExpression()), !dbg !6232
  %4 = load ptr, ptr %q, align 8, !dbg !6233
  %call = call i32 @crypto_is_moribund(ptr noundef %4) #15, !dbg !6235
  %tobool = icmp ne i32 %call, 0, !dbg !6235
  br i1 %tobool, label %if.then, label %if.end, !dbg !6236

if.then:                                          ; preds = %for.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6237

if.end:                                           ; preds = %for.body
  %5 = load ptr, ptr %q, align 8, !dbg !6238
  %cra_flags = getelementptr inbounds %struct.crypto_alg, ptr %5, i32 0, i32 2, !dbg !6240
  %6 = load i32, ptr %cra_flags, align 8, !dbg !6240
  %7 = load i32, ptr %type.addr, align 4, !dbg !6241
  %xor = xor i32 %6, %7, !dbg !6242
  %8 = load i32, ptr %mask.addr, align 4, !dbg !6243
  %and = and i32 %xor, %8, !dbg !6244
  %tobool1 = icmp ne i32 %and, 0, !dbg !6244
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !6245

if.then2:                                         ; preds = %if.end
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6246

if.end3:                                          ; preds = %if.end
  %9 = load ptr, ptr %q, align 8, !dbg !6247
  %call4 = call i32 @crypto_is_larval(ptr noundef %9) #15, !dbg !6249
  %tobool5 = icmp ne i32 %call4, 0, !dbg !6249
  br i1 %tobool5, label %land.lhs.true, label %if.end12, !dbg !6250

land.lhs.true:                                    ; preds = %if.end3
  %10 = load ptr, ptr %q, align 8, !dbg !6251
  %call6 = call i32 @crypto_is_test_larval(ptr noundef %10) #15, !dbg !6252
  %tobool7 = icmp ne i32 %call6, 0, !dbg !6252
  br i1 %tobool7, label %if.end12, label %land.lhs.true8, !dbg !6253

land.lhs.true8:                                   ; preds = %land.lhs.true
  %11 = load ptr, ptr %q, align 8, !dbg !6254
  %mask9 = getelementptr inbounds %struct.crypto_larval, ptr %11, i32 0, i32 3, !dbg !6255
  %12 = load i32, ptr %mask9, align 8, !dbg !6255
  %13 = load i32, ptr %mask.addr, align 4, !dbg !6256
  %cmp10 = icmp ne i32 %12, %13, !dbg !6257
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !6258

if.then11:                                        ; preds = %land.lhs.true8
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6259

if.end12:                                         ; preds = %land.lhs.true8, %land.lhs.true, %if.end3
  %14 = load ptr, ptr %q, align 8, !dbg !6260
  %cra_driver_name = getelementptr inbounds %struct.crypto_alg, ptr %14, i32 0, i32 9, !dbg !6261
  %arraydecay = getelementptr inbounds [128 x i8], ptr %cra_driver_name, i64 0, i64 0, !dbg !6260
  %15 = load ptr, ptr %name.addr, align 8, !dbg !6262
  %call13 = call i32 @strcmp(ptr noundef %arraydecay, ptr noundef %15) #15, !dbg !6263
  %tobool14 = icmp ne i32 %call13, 0, !dbg !6264
  %lnot15 = xor i1 %tobool14, true, !dbg !6264
  %lnot.ext = zext i1 %lnot15 to i32, !dbg !6264
  store i32 %lnot.ext, ptr %exact, align 4, !dbg !6265
  %16 = load ptr, ptr %q, align 8, !dbg !6266
  %cra_name = getelementptr inbounds %struct.crypto_alg, ptr %16, i32 0, i32 8, !dbg !6267
  %arraydecay16 = getelementptr inbounds [128 x i8], ptr %cra_name, i64 0, i64 0, !dbg !6266
  %17 = load ptr, ptr %name.addr, align 8, !dbg !6268
  %call17 = call i32 @strcmp(ptr noundef %arraydecay16, ptr noundef %17) #15, !dbg !6269
  %tobool18 = icmp ne i32 %call17, 0, !dbg !6270
  %lnot19 = xor i1 %tobool18, true, !dbg !6270
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !6270
  store i32 %lnot.ext20, ptr %fuzzy, align 4, !dbg !6271
  %18 = load i32, ptr %exact, align 4, !dbg !6272
  %tobool21 = icmp ne i32 %18, 0, !dbg !6272
  br i1 %tobool21, label %if.end27, label %land.lhs.true22, !dbg !6274

land.lhs.true22:                                  ; preds = %if.end12
  %19 = load i32, ptr %fuzzy, align 4, !dbg !6275
  %tobool23 = icmp ne i32 %19, 0, !dbg !6275
  br i1 %tobool23, label %land.lhs.true24, label %if.then26, !dbg !6276

land.lhs.true24:                                  ; preds = %land.lhs.true22
  %20 = load ptr, ptr %q, align 8, !dbg !6277
  %cra_priority = getelementptr inbounds %struct.crypto_alg, ptr %20, i32 0, i32 6, !dbg !6278
  %21 = load i32, ptr %cra_priority, align 8, !dbg !6278
  %22 = load i32, ptr %best, align 4, !dbg !6279
  %cmp25 = icmp sgt i32 %21, %22, !dbg !6280
  br i1 %cmp25, label %if.end27, label %if.then26, !dbg !6281

if.then26:                                        ; preds = %land.lhs.true24, %land.lhs.true22
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6282

if.end27:                                         ; preds = %land.lhs.true24, %if.end12
  %23 = load ptr, ptr %q, align 8, !dbg !6283
  %call28 = call ptr @crypto_mod_get(ptr noundef %23) #15, !dbg !6283
  %tobool29 = icmp ne ptr %call28, null, !dbg !6283
  %lnot30 = xor i1 %tobool29, true, !dbg !6283
  %lnot32 = xor i1 %lnot30, true, !dbg !6283
  %lnot34 = xor i1 %lnot32, true, !dbg !6283
  %lnot.ext35 = zext i1 %lnot34 to i32, !dbg !6283
  %conv = sext i32 %lnot.ext35 to i64, !dbg !6283
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6283
  %tobool36 = icmp ne i64 %expval, 0, !dbg !6283
  br i1 %tobool36, label %if.then37, label %if.end38, !dbg !6285

if.then37:                                        ; preds = %if.end27
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6286

if.end38:                                         ; preds = %if.end27
  %24 = load ptr, ptr %q, align 8, !dbg !6287
  %cra_priority39 = getelementptr inbounds %struct.crypto_alg, ptr %24, i32 0, i32 6, !dbg !6288
  %25 = load i32, ptr %cra_priority39, align 8, !dbg !6288
  store i32 %25, ptr %best, align 4, !dbg !6289
  %26 = load ptr, ptr %alg, align 8, !dbg !6290
  %tobool40 = icmp ne ptr %26, null, !dbg !6290
  br i1 %tobool40, label %if.then41, label %if.end42, !dbg !6292

if.then41:                                        ; preds = %if.end38
  %27 = load ptr, ptr %alg, align 8, !dbg !6293
  call void @crypto_mod_put(ptr noundef %27) #15, !dbg !6294
  br label %if.end42, !dbg !6294

if.end42:                                         ; preds = %if.then41, %if.end38
  %28 = load ptr, ptr %q, align 8, !dbg !6295
  store ptr %28, ptr %alg, align 8, !dbg !6296
  %29 = load i32, ptr %exact, align 4, !dbg !6297
  %tobool43 = icmp ne i32 %29, 0, !dbg !6297
  br i1 %tobool43, label %if.then44, label %if.end45, !dbg !6299

if.then44:                                        ; preds = %if.end42
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6300

if.end45:                                         ; preds = %if.end42
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6301
  br label %cleanup, !dbg !6301

cleanup:                                          ; preds = %if.end45, %if.then44, %if.then37, %if.then26, %if.then11, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %fuzzy) #16, !dbg !6301
  call void @llvm.lifetime.end.p0(i64 4, ptr %exact) #16, !dbg !6301
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
    i32 2, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !6302

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr47) #16, !dbg !6303
  call void @llvm.dbg.declare(metadata ptr %__mptr47, metadata !6217, metadata !DIExpression()), !dbg !6303
  %30 = load ptr, ptr %q, align 8, !dbg !6303
  %cra_list48 = getelementptr inbounds %struct.crypto_alg, ptr %30, i32 0, i32 0, !dbg !6303
  %next = getelementptr inbounds %struct.list_head, ptr %cra_list48, i32 0, i32 0, !dbg !6303
  %31 = load ptr, ptr %next, align 8, !dbg !6303
  store ptr %31, ptr %__mptr47, align 8, !dbg !6303
  %32 = load ptr, ptr %__mptr47, align 8, !dbg !6303
  %add.ptr50 = getelementptr i8, ptr %32, i64 0, !dbg !6303
  store ptr %add.ptr50, ptr %tmp49, align 8, !dbg !6303
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr47) #16, !dbg !6229
  %33 = load ptr, ptr %tmp49, align 8, !dbg !6303
  store ptr %33, ptr %q, align 8, !dbg !6229
  br label %for.cond, !dbg !6229, !llvm.loop !6304

for.end:                                          ; preds = %cleanup, %for.cond
  %34 = load ptr, ptr %alg, align 8, !dbg !6307
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %best) #16, !dbg !6308
  call void @llvm.lifetime.end.p0(i64 8, ptr %alg) #16, !dbg !6308
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #16, !dbg !6308
  ret ptr %34, !dbg !6309

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6310 dso_local void @up_read(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crypto_is_moribund(ptr noundef %alg) #3 align 16 !dbg !6311 {
entry:
  %alg.addr = alloca ptr, align 8
  store ptr %alg, ptr %alg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %alg.addr, metadata !6313, metadata !DIExpression()), !dbg !6314
  %0 = load ptr, ptr %alg.addr, align 8, !dbg !6315
  %cra_flags = getelementptr inbounds %struct.crypto_alg, ptr %0, i32 0, i32 2, !dbg !6316
  %1 = load i32, ptr %cra_flags, align 8, !dbg !6316
  %and = and i32 %1, 96, !dbg !6317
  ret i32 %and, !dbg !6318
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crypto_is_test_larval(ptr noundef %larval) #3 align 16 !dbg !6319 {
entry:
  %larval.addr = alloca ptr, align 8
  store ptr %larval, ptr %larval.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %larval.addr, metadata !6323, metadata !DIExpression()), !dbg !6324
  %0 = load ptr, ptr %larval.addr, align 8, !dbg !6325
  %alg = getelementptr inbounds %struct.crypto_larval, ptr %0, i32 0, i32 0, !dbg !6326
  %cra_driver_name = getelementptr inbounds %struct.crypto_alg, ptr %alg, i32 0, i32 9, !dbg !6327
  %arrayidx = getelementptr [128 x i8], ptr %cra_driver_name, i64 0, i64 0, !dbg !6325
  %1 = load i8, ptr %arrayidx, align 8, !dbg !6325
  %conv = zext i8 %1 to i32, !dbg !6325
  ret i32 %conv, !dbg !6328
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6329 dso_local i32 @strcmp(ptr noundef, ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_CAST(ptr noundef %ptr) #3 align 16 !dbg !6332 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6336, metadata !DIExpression()), !dbg !6337
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !6338
  ret ptr %0, !dbg !6339
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add(ptr noundef %new, ptr noundef %head) #3 align 16 !dbg !6340 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6342, metadata !DIExpression()), !dbg !6344
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !6343, metadata !DIExpression()), !dbg !6345
  %0 = load ptr, ptr %new.addr, align 8, !dbg !6346
  %1 = load ptr, ptr %head.addr, align 8, !dbg !6347
  %2 = load ptr, ptr %head.addr, align 8, !dbg !6348
  %next = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 0, !dbg !6349
  %3 = load ptr, ptr %next, align 8, !dbg !6349
  call void @__list_add(ptr noundef %0, ptr noundef %1, ptr noundef %3) #15, !dbg !6350
  ret void, !dbg !6351
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !6352 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6356, metadata !DIExpression()), !dbg !6359
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6357, metadata !DIExpression()), !dbg !6360
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6358, metadata !DIExpression()), !dbg !6361
  %0 = load ptr, ptr %new.addr, align 8, !dbg !6362
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !6364
  %2 = load ptr, ptr %next.addr, align 8, !dbg !6365
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15, !dbg !6366
  br i1 %call, label %if.end, label %if.then, !dbg !6367

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !6368

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !6369
  %4 = load ptr, ptr %next.addr, align 8, !dbg !6370
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !6371
  store ptr %3, ptr %prev1, align 8, !dbg !6372
  %5 = load ptr, ptr %next.addr, align 8, !dbg !6373
  %6 = load ptr, ptr %new.addr, align 8, !dbg !6374
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !6375
  store ptr %5, ptr %next2, align 8, !dbg !6376
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !6377
  %8 = load ptr, ptr %new.addr, align 8, !dbg !6378
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !6379
  store ptr %7, ptr %prev3, align 8, !dbg !6380
  br label %do.body, !dbg !6381

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !6382

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !6384

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !6382

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !6386
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !6386
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !6386
  store volatile ptr %9, ptr %next6, align 8, !dbg !6386
  br label %do.end7, !dbg !6386

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !6382

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !6388
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !6389 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6393, metadata !DIExpression()), !dbg !6396
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6394, metadata !DIExpression()), !dbg !6397
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6395, metadata !DIExpression()), !dbg !6398
  ret i1 true, !dbg !6399
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @crypto_boot_test_finished() #3 align 16 !dbg !6400 {
entry:
  ret i1 true, !dbg !6401
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @crypto_start_test(ptr noundef %larval) #0 align 16 !dbg !6402 {
entry:
  %larval.addr = alloca ptr, align 8
  store ptr %larval, ptr %larval.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %larval.addr, metadata !6404, metadata !DIExpression()), !dbg !6405
  %0 = load ptr, ptr %larval.addr, align 8, !dbg !6406
  %call = call i32 @crypto_is_test_larval(ptr noundef %0) #15, !dbg !6408
  %tobool = icmp ne i32 %call, 0, !dbg !6408
  br i1 %tobool, label %if.end, label %if.then, !dbg !6409

if.then:                                          ; preds = %entry
  br label %return, !dbg !6410

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %larval.addr, align 8, !dbg !6411
  %test_started = getelementptr inbounds %struct.crypto_larval, ptr %1, i32 0, i32 4, !dbg !6413
  %2 = load i8, ptr %test_started, align 4, !dbg !6413, !range !5943, !noundef !586
  %tobool1 = trunc i8 %2 to i1, !dbg !6413
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !6414

if.then2:                                         ; preds = %if.end
  br label %return, !dbg !6415

if.end3:                                          ; preds = %if.end
  call void @down_write(ptr noundef @crypto_alg_sem) #15, !dbg !6416
  %3 = load ptr, ptr %larval.addr, align 8, !dbg !6417
  %test_started4 = getelementptr inbounds %struct.crypto_larval, ptr %3, i32 0, i32 4, !dbg !6419
  %4 = load i8, ptr %test_started4, align 4, !dbg !6419, !range !5943, !noundef !586
  %tobool5 = trunc i8 %4 to i1, !dbg !6419
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !6420

if.then6:                                         ; preds = %if.end3
  call void @up_write(ptr noundef @crypto_alg_sem) #15, !dbg !6421
  br label %return, !dbg !6423

if.end7:                                          ; preds = %if.end3
  %5 = load ptr, ptr %larval.addr, align 8, !dbg !6424
  %test_started8 = getelementptr inbounds %struct.crypto_larval, ptr %5, i32 0, i32 4, !dbg !6425
  store i8 1, ptr %test_started8, align 4, !dbg !6426
  call void @up_write(ptr noundef @crypto_alg_sem) #15, !dbg !6427
  %6 = load ptr, ptr %larval.addr, align 8, !dbg !6428
  call void @crypto_wait_for_test(ptr noundef %6) #15, !dbg !6429
  br label %return, !dbg !6430

return:                                           ; preds = %if.end7, %if.then6, %if.then2, %if.then
  ret void, !dbg !6430
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6431 dso_local i64 @wait_for_completion_killable_timeout(ptr noundef, i64 noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crypto_tfm_ctx_alignment() #3 align 16 !dbg !6434 {
entry:
  %tfm = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %tfm) #16, !dbg !6439
  call void @llvm.dbg.declare(metadata ptr %tfm, metadata !6438, metadata !DIExpression()), !dbg !6440
  call void @llvm.lifetime.end.p0(i64 8, ptr %tfm) #16, !dbg !6441
  ret i32 8, !dbg !6442
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crypto_cipher_ctxsize(ptr noundef %alg) #3 align 16 !dbg !6443 {
entry:
  %alg.addr = alloca ptr, align 8
  store ptr %alg, ptr %alg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %alg.addr, metadata !6445, metadata !DIExpression()), !dbg !6446
  %0 = load ptr, ptr %alg.addr, align 8, !dbg !6447
  %cra_ctxsize = getelementptr inbounds %struct.crypto_alg, ptr %0, i32 0, i32 4, !dbg !6448
  %1 = load i32, ptr %cra_ctxsize, align 8, !dbg !6448
  ret i32 %1, !dbg !6449
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crypto_compress_ctxsize(ptr noundef %alg) #3 align 16 !dbg !6450 {
entry:
  %alg.addr = alloca ptr, align 8
  store ptr %alg, ptr %alg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %alg.addr, metadata !6452, metadata !DIExpression()), !dbg !6453
  %0 = load ptr, ptr %alg.addr, align 8, !dbg !6454
  %cra_ctxsize = getelementptr inbounds %struct.crypto_alg, ptr %0, i32 0, i32 4, !dbg !6455
  %1 = load i32, ptr %cra_ctxsize, align 8, !dbg !6455
  ret i32 %1, !dbg !6456
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_set(ptr noundef %v, i32 noundef %i) #7 align 16 !dbg !6457 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6461, metadata !DIExpression()), !dbg !6463
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6462, metadata !DIExpression()), !dbg !6464
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6465
  call void @instrument_atomic_write(ptr noundef %0, i64 noundef 4) #15, !dbg !6466
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6467
  %2 = load i32, ptr %i.addr, align 4, !dbg !6468
  call void @raw_atomic_set(ptr noundef %1, i32 noundef %2) #15, !dbg !6469
  ret void, !dbg !6470
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #7 align 16 !dbg !6471 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6473, metadata !DIExpression()), !dbg !6475
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6474, metadata !DIExpression()), !dbg !6476
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6477
  %1 = load i64, ptr %size.addr, align 8, !dbg !6478
  %conv = trunc i64 %1 to i32, !dbg !6478
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #15, !dbg !6479
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6480
  %3 = load i64, ptr %size.addr, align 8, !dbg !6480
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #15, !dbg !6480
  ret void, !dbg !6481
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_set(ptr noundef %v, i32 noundef %i) #7 align 16 !dbg !6482 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6484, metadata !DIExpression()), !dbg !6486
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6485, metadata !DIExpression()), !dbg !6487
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6488
  %1 = load i32, ptr %i.addr, align 4, !dbg !6489
  call void @arch_atomic_set(ptr noundef %0, i32 noundef %1) #15, !dbg !6490
  ret void, !dbg !6491
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_set(ptr noundef %v, i32 noundef %i) #7 align 16 !dbg !6492 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6494, metadata !DIExpression()), !dbg !6496
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6495, metadata !DIExpression()), !dbg !6497
  br label %do.body, !dbg !6498

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %i.addr, align 4, !dbg !6499
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6499
  %counter = getelementptr inbounds %struct.atomic_t, ptr %1, i32 0, i32 0, !dbg !6499
  store volatile i32 %0, ptr %counter, align 4, !dbg !6499
  br label %do.end, !dbg !6499

do.end:                                           ; preds = %do.body
  ret void, !dbg !6501
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @task_sigpending(ptr noundef %p) #3 align 16 !dbg !6502 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6504, metadata !DIExpression()), !dbg !6505
  %0 = load ptr, ptr %p.addr, align 8, !dbg !6506
  %call = call i32 @test_tsk_thread_flag(ptr noundef %0, i32 noundef 2) #15, !dbg !6506
  %tobool = icmp ne i32 %call, 0, !dbg !6506
  %lnot = xor i1 %tobool, true, !dbg !6506
  %lnot1 = xor i1 %lnot, true, !dbg !6506
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6506
  %conv = sext i32 %lnot.ext to i64, !dbg !6506
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6506
  %conv2 = trunc i64 %expval to i32, !dbg !6506
  ret i32 %conv2, !dbg !6507
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__fatal_signal_pending(ptr noundef %p) #3 align 16 !dbg !6508 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6510, metadata !DIExpression()), !dbg !6511
  %0 = load ptr, ptr %p.addr, align 8, !dbg !6512
  %pending = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 109, !dbg !6512
  %signal = getelementptr inbounds %struct.sigpending, ptr %pending, i32 0, i32 1, !dbg !6512
  %call = call i32 @sigismember(ptr noundef %signal, i32 noundef 9) #15, !dbg !6512
  %tobool = icmp ne i32 %call, 0, !dbg !6512
  %lnot = xor i1 %tobool, true, !dbg !6512
  %lnot1 = xor i1 %lnot, true, !dbg !6512
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6512
  %conv = sext i32 %lnot.ext to i64, !dbg !6512
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6512
  %conv2 = trunc i64 %expval to i32, !dbg !6512
  ret i32 %conv2, !dbg !6513
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @test_tsk_thread_flag(ptr noundef %tsk, i32 noundef %flag) #3 align 16 !dbg !6514 {
entry:
  %tsk.addr = alloca ptr, align 8
  %flag.addr = alloca i32, align 4
  store ptr %tsk, ptr %tsk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tsk.addr, metadata !6518, metadata !DIExpression()), !dbg !6520
  store i32 %flag, ptr %flag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flag.addr, metadata !6519, metadata !DIExpression()), !dbg !6521
  %0 = load ptr, ptr %tsk.addr, align 8, !dbg !6522
  %thread_info = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 0, !dbg !6522
  %1 = load i32, ptr %flag.addr, align 4, !dbg !6523
  %call = call i32 @test_ti_thread_flag(ptr noundef %thread_info, i32 noundef %1) #15, !dbg !6524
  ret i32 %call, !dbg !6525
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @test_ti_thread_flag(ptr noundef %ti, i32 noundef %flag) #3 align 16 !dbg !6526 {
entry:
  %ti.addr = alloca ptr, align 8
  %flag.addr = alloca i32, align 4
  store ptr %ti, ptr %ti.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ti.addr, metadata !6532, metadata !DIExpression()), !dbg !6534
  store i32 %flag, ptr %flag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flag.addr, metadata !6533, metadata !DIExpression()), !dbg !6535
  %0 = load i32, ptr %flag.addr, align 4, !dbg !6536
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !6536
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !6536

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %ti.addr, align 8, !dbg !6536
  %flags = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 0, !dbg !6536
  %3 = ptrtoint ptr %flags to i64, !dbg !6536
  %cmp = icmp ne i64 %3, 0, !dbg !6536
  %conv = zext i1 %cmp to i32, !dbg !6536
  %4 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !6536
  br i1 %4, label %land.lhs.true1, label %cond.false, !dbg !6536

land.lhs.true1:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %ti.addr, align 8, !dbg !6536
  %flags2 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 0, !dbg !6536
  %6 = ptrtoint ptr %flags2 to i64, !dbg !6536
  %cmp3 = icmp ne i64 %6, 0, !dbg !6536
  br i1 %cmp3, label %land.lhs.true5, label %cond.false, !dbg !6536

land.lhs.true5:                                   ; preds = %land.lhs.true1
  %7 = load ptr, ptr %ti.addr, align 8, !dbg !6536
  %flags6 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 0, !dbg !6536
  %8 = load i64, ptr %flags6, align 8, !dbg !6536
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !6536
  br i1 %9, label %cond.true, label %cond.false, !dbg !6536

cond.true:                                        ; preds = %land.lhs.true5
  %10 = load i32, ptr %flag.addr, align 4, !dbg !6536
  %conv7 = sext i32 %10 to i64, !dbg !6536
  %11 = load ptr, ptr %ti.addr, align 8, !dbg !6536
  %flags8 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 0, !dbg !6536
  %call = call zeroext i1 @const_test_bit(i64 noundef %conv7, ptr noundef %flags8) #15, !dbg !6536
  %conv9 = zext i1 %call to i32, !dbg !6536
  br label %cond.end, !dbg !6536

cond.false:                                       ; preds = %land.lhs.true5, %land.lhs.true1, %land.lhs.true, %entry
  %12 = load i32, ptr %flag.addr, align 4, !dbg !6536
  %conv10 = sext i32 %12 to i64, !dbg !6536
  %13 = load ptr, ptr %ti.addr, align 8, !dbg !6536
  %flags11 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 0, !dbg !6536
  %call12 = call zeroext i1 @_test_bit(i64 noundef %conv10, ptr noundef %flags11) #15, !dbg !6536
  %conv13 = zext i1 %call12 to i32, !dbg !6536
  br label %cond.end, !dbg !6536

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv9, %cond.true ], [ %conv13, %cond.false ], !dbg !6536
  ret i32 %cond, !dbg !6537
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !6538 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6546, metadata !DIExpression()), !dbg !6551
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6547, metadata !DIExpression()), !dbg !6552
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #16, !dbg !6553
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6548, metadata !DIExpression()), !dbg !6554
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6555
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6556
  %div = udiv i64 %1, 64, !dbg !6556
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6557
  store ptr %add.ptr, ptr %p, align 8, !dbg !6554
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #16, !dbg !6558
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !6549, metadata !DIExpression()), !dbg !6559
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6560
  %rem = urem i64 %2, 64, !dbg !6560
  %shl = shl i64 1, %rem, !dbg !6560
  store i64 %shl, ptr %mask, align 8, !dbg !6559
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #16, !dbg !6561
  call void @llvm.dbg.declare(metadata ptr %val, metadata !6550, metadata !DIExpression()), !dbg !6562
  %3 = load ptr, ptr %p, align 8, !dbg !6563
  %4 = load i64, ptr %3, align 8, !dbg !6564
  store i64 %4, ptr %val, align 8, !dbg !6562
  %5 = load i64, ptr %val, align 8, !dbg !6565
  %6 = load i64, ptr %mask, align 8, !dbg !6566
  %and = and i64 %5, %6, !dbg !6567
  %tobool = icmp ne i64 %and, 0, !dbg !6568
  %lnot = xor i1 %tobool, true, !dbg !6568
  %lnot1 = xor i1 %lnot, true, !dbg !6569
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #16, !dbg !6570
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #16, !dbg !6570
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #16, !dbg !6570
  ret i1 %lnot1, !dbg !6571
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !6572 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6575, metadata !DIExpression()), !dbg !6577
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6576, metadata !DIExpression()), !dbg !6578
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6579
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6580
  %div = udiv i64 %1, 64, !dbg !6580
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6581
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #15, !dbg !6582
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6583
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6584
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #15, !dbg !6585
  ret i1 %call, !dbg !6586
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #7 align 16 !dbg !6587 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6589, metadata !DIExpression()), !dbg !6591
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6590, metadata !DIExpression()), !dbg !6592
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6593
  %1 = load i64, ptr %size.addr, align 8, !dbg !6594
  %conv = trunc i64 %1 to i32, !dbg !6594
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #15, !dbg !6595
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6596
  %3 = load i64, ptr %size.addr, align 8, !dbg !6596
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #15, !dbg !6596
  ret void, !dbg !6597
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !6598 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6601, metadata !DIExpression()), !dbg !6603
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6602, metadata !DIExpression()), !dbg !6604
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6605
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6606
  br i1 %1, label %cond.true, label %cond.false, !dbg !6606

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6607
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6608
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #15, !dbg !6609
  %conv = zext i1 %call to i32, !dbg !6609
  br label %cond.end, !dbg !6606

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !6610
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !6611
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #15, !dbg !6612
  %conv2 = zext i1 %call1 to i32, !dbg !6612
  br label %cond.end, !dbg !6606

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !6606
  %tobool = icmp ne i32 %cond, 0, !dbg !6606
  ret i1 %tobool, !dbg !6613
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !6614 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6616, metadata !DIExpression()), !dbg !6618
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6617, metadata !DIExpression()), !dbg !6619
  ret i1 true, !dbg !6620
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !6621 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6625, metadata !DIExpression()), !dbg !6627
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6626, metadata !DIExpression()), !dbg !6628
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6629
  %and = and i64 %0, 63, !dbg !6630
  %shl = shl i64 1, %and, !dbg !6631
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !6632
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6633
  %shr = ashr i64 %2, 6, !dbg !6634
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !6632
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !6632
  %and1 = and i64 %shl, %3, !dbg !6635
  %cmp = icmp ne i64 %and1, 0, !dbg !6636
  ret i1 %cmp, !dbg !6637
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !6638 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6640, metadata !DIExpression()), !dbg !6643
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6641, metadata !DIExpression()), !dbg !6644
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #16, !dbg !6645
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !6642, metadata !DIExpression()), !dbg !6646
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6647
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6648
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #16, !dbg !6649, !srcloc !6650
  %3 = icmp ult i8 %2, 2, !dbg !6649
  call void @llvm.assume(i1 %3), !dbg !6649
  store i8 %2, ptr %oldbit, align 1, !dbg !6649
  %4 = load i8, ptr %oldbit, align 1, !dbg !6651, !range !5943, !noundef !586
  %tobool = trunc i8 %4 to i1, !dbg !6651
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #16, !dbg !6652
  ret i1 %tobool, !dbg !6653
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @sigismember(ptr noundef %set, i32 noundef %_sig) #3 align 16 !dbg !6654 {
entry:
  %set.addr = alloca ptr, align 8
  %_sig.addr = alloca i32, align 4
  %sig = alloca i64, align 8
  store ptr %set, ptr %set.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !6659, metadata !DIExpression()), !dbg !6662
  store i32 %_sig, ptr %_sig.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %_sig.addr, metadata !6660, metadata !DIExpression()), !dbg !6663
  call void @llvm.lifetime.start.p0(i64 8, ptr %sig) #16, !dbg !6664
  call void @llvm.dbg.declare(metadata ptr %sig, metadata !6661, metadata !DIExpression()), !dbg !6665
  %0 = load i32, ptr %_sig.addr, align 4, !dbg !6666
  %sub = sub i32 %0, 1, !dbg !6667
  %conv = sext i32 %sub to i64, !dbg !6666
  store i64 %conv, ptr %sig, align 8, !dbg !6665
  %1 = load ptr, ptr %set.addr, align 8, !dbg !6668
  %sig1 = getelementptr inbounds %struct.sigset_t, ptr %1, i32 0, i32 0, !dbg !6670
  %arrayidx = getelementptr [1 x i64], ptr %sig1, i64 0, i64 0, !dbg !6668
  %2 = load i64, ptr %arrayidx, align 8, !dbg !6668
  %3 = load i64, ptr %sig, align 8, !dbg !6671
  %shr = lshr i64 %2, %3, !dbg !6672
  %and = and i64 1, %shr, !dbg !6673
  %conv2 = trunc i64 %and to i32, !dbg !6674
  call void @llvm.lifetime.end.p0(i64 8, ptr %sig) #16, !dbg !6675
  ret i32 %conv2, !dbg !6676
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc_node(i64 noundef %size, i32 noundef %flags, i32 noundef %node) #5 align 16 !dbg !6677 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %node.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6681, metadata !DIExpression()), !dbg !6684
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6682, metadata !DIExpression()), !dbg !6685
  store i32 %node, ptr %node.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !6683, metadata !DIExpression()), !dbg !6686
  %0 = load i64, ptr %size.addr, align 8, !dbg !6687
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6688
  %or = or i32 %1, 256, !dbg !6689
  %2 = load i32, ptr %node.addr, align 4, !dbg !6690
  %call = call noalias ptr @kmalloc_node(i64 noundef %0, i32 noundef %or, i32 noundef %2) #17, !dbg !6691
  ret ptr %call, !dbg !6692
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc_node(i64 noundef %size, i32 noundef %flags, i32 noundef %node) #8 align 16 !dbg !6693 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %node.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6695, metadata !DIExpression()), !dbg !6701
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6696, metadata !DIExpression()), !dbg !6702
  store i32 %node, ptr %node.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !6697, metadata !DIExpression()), !dbg !6703
  %0 = load i64, ptr %size.addr, align 8, !dbg !6704
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6705
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !6706

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6707
  %tobool = icmp ne i64 %2, 0, !dbg !6707
  br i1 %tobool, label %if.then, label %if.end7, !dbg !6708

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #16, !dbg !6709
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6698, metadata !DIExpression()), !dbg !6710
  %3 = load i64, ptr %size.addr, align 8, !dbg !6711
  %cmp = icmp ugt i64 %3, 8192, !dbg !6713
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6714

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !6715
  %5 = load i32, ptr %flags.addr, align 4, !dbg !6716
  %6 = load i32, ptr %node.addr, align 4, !dbg !6717
  %call = call noalias align 4096 ptr @kmalloc_large_node(i64 noundef %4, i32 noundef %5, i32 noundef %6) #17, !dbg !6718
  store ptr %call, ptr %retval, align 8, !dbg !6719
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6719

if.end:                                           ; preds = %if.then
  %7 = load i64, ptr %size.addr, align 8, !dbg !6720
  %call2 = call i32 @__kmalloc_index(i64 noundef %7, i1 noundef zeroext true) #15, !dbg !6720
  store i32 %call2, ptr %index, align 4, !dbg !6721
  %8 = load i32, ptr %flags.addr, align 4, !dbg !6722
  %9 = call ptr @llvm.returnaddress(i32 0), !dbg !6723
  %10 = ptrtoint ptr %9 to i64, !dbg !6723
  %call3 = call i32 @kmalloc_type(i32 noundef %8, i64 noundef %10) #15, !dbg !6724
  %idxprom = zext i32 %call3 to i64, !dbg !6725
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !6725
  %11 = load i32, ptr %index, align 4, !dbg !6726
  %idxprom4 = zext i32 %11 to i64, !dbg !6725
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !6725
  %12 = load ptr, ptr %arrayidx5, align 8, !dbg !6725
  %13 = load i32, ptr %flags.addr, align 4, !dbg !6727
  %14 = load i32, ptr %node.addr, align 4, !dbg !6728
  %15 = load i64, ptr %size.addr, align 8, !dbg !6729
  %call6 = call noalias align 8 ptr @kmalloc_node_trace(ptr noundef %12, i32 noundef %13, i32 noundef %14, i64 noundef %15) #21, !dbg !6730
  store ptr %call6, ptr %retval, align 8, !dbg !6731
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6731

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #16, !dbg !6732
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %16 = load i64, ptr %size.addr, align 8, !dbg !6733
  %17 = load i32, ptr %flags.addr, align 4, !dbg !6734
  %18 = load i32, ptr %node.addr, align 4, !dbg !6735
  %call8 = call noalias align 8 ptr @__kmalloc_node(i64 noundef %16, i32 noundef %17, i32 noundef %18) #17, !dbg !6736
  store ptr %call8, ptr %retval, align 8, !dbg !6737
  br label %return, !dbg !6737

return:                                           ; preds = %if.end7, %cleanup
  %19 = load ptr, ptr %retval, align 8, !dbg !6738
  ret ptr %19, !dbg !6738
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6739 dso_local noalias ptr @kmalloc_large_node(i64 noundef, i32 noundef, i32 noundef) #10

; Function Attrs: noredzone null_pointer_is_valid allocsize(3)
declare !dbg !6740 dso_local noalias ptr @kmalloc_node_trace(ptr noundef, i32 noundef, i32 noundef, i64 noundef) #14

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6743 dso_local noalias ptr @__kmalloc_node(i64 noundef, i32 noundef, i32 noundef) #10

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_dec_and_test(ptr noundef %r, ptr noundef %oldp) #3 align 16 !dbg !6744 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6748, metadata !DIExpression()), !dbg !6750
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !6749, metadata !DIExpression()), !dbg !6751
  %0 = load ptr, ptr %r.addr, align 8, !dbg !6752
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !6753
  %call = call zeroext i1 @__refcount_sub_and_test(i32 noundef 1, ptr noundef %0, ptr noundef %1) #15, !dbg !6754
  ret i1 %call, !dbg !6755
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_sub_and_test(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #3 align 16 !dbg !6756 {
entry:
  %retval = alloca i1, align 1
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6760, metadata !DIExpression()), !dbg !6764
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6761, metadata !DIExpression()), !dbg !6765
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !6762, metadata !DIExpression()), !dbg !6766
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #16, !dbg !6767
  call void @llvm.dbg.declare(metadata ptr %old, metadata !6763, metadata !DIExpression()), !dbg !6768
  %0 = load i32, ptr %i.addr, align 4, !dbg !6769
  %1 = load ptr, ptr %r.addr, align 8, !dbg !6770
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !6771
  %call = call i32 @atomic_fetch_sub_release(i32 noundef %0, ptr noundef %refs) #15, !dbg !6772
  store i32 %call, ptr %old, align 4, !dbg !6768
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !6773
  %tobool = icmp ne ptr %2, null, !dbg !6773
  br i1 %tobool, label %if.then, label %if.end, !dbg !6775

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !6776
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !6777
  store i32 %3, ptr %4, align 4, !dbg !6778
  br label %if.end, !dbg !6779

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !6780
  %6 = load i32, ptr %i.addr, align 4, !dbg !6782
  %cmp = icmp eq i32 %5, %6, !dbg !6783
  br i1 %cmp, label %if.then1, label %if.end11, !dbg !6784

if.then1:                                         ; preds = %if.end
  br label %do.body, !dbg !6785

do.body:                                          ; preds = %if.then1
  br label %do.body2, !dbg !6787

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !6789

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !6789

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !6787

do.body3:                                         ; preds = %do.end
  br label %do.body4, !dbg !6791

do.body4:                                         ; preds = %do.body3
  br label %do.cond5, !dbg !6793

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !6793

do.end6:                                          ; preds = %do.cond5
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !dbg !6791, !srcloc !6795
  br label %do.cond7, !dbg !6791

do.cond7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !6791

do.end8:                                          ; preds = %do.cond7
  br label %do.cond9, !dbg !6787

do.cond9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !6787

do.end10:                                         ; preds = %do.cond9
  store i1 true, ptr %retval, align 1, !dbg !6796
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6796

if.end11:                                         ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !6797
  %cmp12 = icmp slt i32 %7, 0, !dbg !6797
  br i1 %cmp12, label %lor.end, label %lor.rhs, !dbg !6797

lor.rhs:                                          ; preds = %if.end11
  %8 = load i32, ptr %old, align 4, !dbg !6797
  %9 = load i32, ptr %i.addr, align 4, !dbg !6797
  %sub = sub i32 %8, %9, !dbg !6797
  %cmp13 = icmp slt i32 %sub, 0, !dbg !6797
  br label %lor.end, !dbg !6797

lor.end:                                          ; preds = %lor.rhs, %if.end11
  %10 = phi i1 [ true, %if.end11 ], [ %cmp13, %lor.rhs ]
  %lnot = xor i1 %10, true, !dbg !6797
  %lnot14 = xor i1 %lnot, true, !dbg !6797
  %lnot.ext = zext i1 %lnot14 to i32, !dbg !6797
  %conv = sext i32 %lnot.ext to i64, !dbg !6797
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6797
  %tobool15 = icmp ne i64 %expval, 0, !dbg !6797
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !6799

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !6800
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 3) #15, !dbg !6801
  br label %if.end17, !dbg !6801

if.end17:                                         ; preds = %if.then16, %lor.end
  store i1 false, ptr %retval, align 1, !dbg !6802
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6802

cleanup:                                          ; preds = %if.end17, %do.end10
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #16, !dbg !6803
  %12 = load i1, ptr %retval, align 1, !dbg !6803
  ret i1 %12, !dbg !6803
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #7 align 16 !dbg !6804 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6806, metadata !DIExpression()), !dbg !6808
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6807, metadata !DIExpression()), !dbg !6809
  br label %do.body, !dbg !6810

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6811

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6813
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #15, !dbg !6814
  %1 = load i32, ptr %i.addr, align 4, !dbg !6815
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6816
  %call = call i32 @raw_atomic_fetch_sub_release(i32 noundef %1, ptr noundef %2) #15, !dbg !6817
  ret i32 %call, !dbg !6818
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #7 align 16 !dbg !6819 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6821, metadata !DIExpression()), !dbg !6823
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6822, metadata !DIExpression()), !dbg !6824
  %0 = load i32, ptr %i.addr, align 4, !dbg !6825
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6826
  %call = call i32 @arch_atomic_fetch_sub(i32 noundef %0, ptr noundef %1) #15, !dbg !6827
  ret i32 %call, !dbg !6828
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_sub(i32 noundef %i, ptr noundef %v) #7 align 16 !dbg !6829 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6831, metadata !DIExpression()), !dbg !6835
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6832, metadata !DIExpression()), !dbg !6836
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #16, !dbg !6837
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !6833, metadata !DIExpression()), !dbg !6837
  %0 = load i32, ptr %i.addr, align 4, !dbg !6837
  %sub = sub i32 0, %0, !dbg !6837
  store i32 %sub, ptr %__ret, align 4, !dbg !6837
  %1 = load i32, ptr %__ret, align 4, !dbg !6837
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6837
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !6837
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #16, !dbg !6837, !srcloc !6838
  store i32 %3, ptr %__ret, align 4, !dbg !6837
  %4 = load i32, ptr %__ret, align 4, !dbg !6837
  store i32 %4, ptr %tmp, align 4, !dbg !6837
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #16, !dbg !6839
  %5 = load i32, ptr %tmp, align 4, !dbg !6837
  ret i32 %5, !dbg !6840
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { noredzone null_pointer_is_valid allocsize(3) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { noredzone }
attributes #16 = { nounwind }
attributes #17 = { noredzone allocsize(0) }
attributes #18 = { nounwind memory(none) }
attributes #19 = { noredzone allocsize(2) }
attributes #20 = { noredzone noreturn }
attributes #21 = { noredzone allocsize(3) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4331, !4332, !4333, !4334, !4335, !4336, !4337, !4338}
!llvm.ident = !{!4339}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "crypto_alg_list", scope: !2, file: !3, line: 26, type: !149, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF crypto/.api.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22crypto/crypto\22 -D KBUILD_BASENAME=\22api\22 -D KBUILD_MODNAME=\22crypto\22 -D __KBUILD_MODNAME=kmod_crypto -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o crypto/api.ll crypto/api.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !116, globals: !4220, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "crypto/api.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fa279b49d9c37d4af01a18b064bc096c")
!4 = !{!5, !13, !18, !24, !29, !37, !53, !61, !67, !74, !81, !87, !93, !98, !106}
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
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !38, line: 1325, baseType: !7, size: 32, elements: !39)
!38 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!39 = !{!40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52}
!40 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!41 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!42 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!43 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!44 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!45 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!46 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!47 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!48 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!49 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!50 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!51 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!52 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !54, line: 68, baseType: !7, size: 32, elements: !55)
!54 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!55 = !{!56, !57, !58, !59, !60}
!56 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!57 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!58 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!59 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!60 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
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
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !88, line: 265, baseType: !7, size: 32, elements: !89)
!88 = !DIFile(filename: "./include/crypto/algapi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "325057b59e868d2e6f2a6b8e1bdd4f6b")
!89 = !{!90, !91, !92}
!90 = !DIEnumerator(name: "CRYPTO_MSG_ALG_REQUEST", value: 0)
!91 = !DIEnumerator(name: "CRYPTO_MSG_ALG_REGISTER", value: 1)
!92 = !DIEnumerator(name: "CRYPTO_MSG_ALG_LOADED", value: 2)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !94, line: 10, baseType: !7, size: 32, elements: !95)
!94 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!95 = !{!96, !97}
!96 = !DIEnumerator(name: "false", value: 0)
!97 = !DIEnumerator(name: "true", value: 1)
!98 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !99, line: 119, baseType: !7, size: 32, elements: !100)
!99 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!100 = !{!101, !102, !103, !104, !105}
!101 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0)
!102 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1)
!103 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2)
!104 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3)
!105 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4)
!106 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !107, line: 364, baseType: !7, size: 32, elements: !108)
!107 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!108 = !{!109, !110, !111, !112, !113, !114, !115}
!109 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!110 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!111 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!112 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!113 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!114 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!115 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!116 = !{!117, !118, !120, !363, !4204, !145, !4206, !4215, !349, !4217, !4119, !4218, !4219, !1006}
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !119, line: 154, baseType: !7)
!119 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_tfm", file: !122, line: 422, size: 256, elements: !123)
!122 = !DIFile(filename: "./include/linux/crypto.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cbfd5dd8032a2dca49778e0abbbe9ad8")
!123 = !{!124, !134, !139, !140, !144, !4203}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !121, file: !122, line: 423, baseType: !125, size: 32)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !99, line: 113, baseType: !126)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !99, line: 111, size: 32, elements: !127)
!127 = !{!128}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !126, file: !99, line: 112, baseType: !129, size: 32)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !119, line: 174, baseType: !130)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !119, line: 172, size: 32, elements: !131)
!131 = !{!132}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !130, file: !119, line: 173, baseType: !133, size: 32)
!133 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "crt_flags", scope: !121, file: !122, line: 425, baseType: !135, size: 32, offset: 32)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !136, line: 21, baseType: !137)
!136 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !138, line: 27, baseType: !7)
!138 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!139 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !121, file: !122, line: 427, baseType: !133, size: 32, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !121, file: !122, line: 429, baseType: !141, size: 64, offset: 128)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DISubroutineType(types: !143)
!143 = !{null, !120}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "__crt_alg", scope: !121, file: !122, line: 431, baseType: !145, size: 64, offset: 192)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_alg", file: !122, line: 343, size: 3072, align: 64, elements: !147)
!147 = !{!148, !154, !155, !156, !157, !158, !159, !160, !161, !166, !167, !4168, !4196, !4197, !4198, !4202}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "cra_list", scope: !146, file: !122, line: 344, baseType: !149, size: 128)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !119, line: 190, size: 128, elements: !150)
!150 = !{!151, !153}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !149, file: !119, line: 191, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !149, file: !119, line: 191, baseType: !152, size: 64, offset: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "cra_users", scope: !146, file: !122, line: 345, baseType: !149, size: 128, offset: 128)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "cra_flags", scope: !146, file: !122, line: 347, baseType: !135, size: 32, offset: 256)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "cra_blocksize", scope: !146, file: !122, line: 348, baseType: !7, size: 32, offset: 288)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "cra_ctxsize", scope: !146, file: !122, line: 349, baseType: !7, size: 32, offset: 320)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "cra_alignmask", scope: !146, file: !122, line: 350, baseType: !7, size: 32, offset: 352)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "cra_priority", scope: !146, file: !122, line: 352, baseType: !133, size: 32, offset: 384)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "cra_refcnt", scope: !146, file: !122, line: 353, baseType: !125, size: 32, offset: 416)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "cra_name", scope: !146, file: !122, line: 355, baseType: !162, size: 1024, offset: 448)
!162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 1024, elements: !164)
!163 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!164 = !{!165}
!165 = !DISubrange(count: 128)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "cra_driver_name", scope: !146, file: !122, line: 356, baseType: !162, size: 1024, offset: 1472)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "cra_type", scope: !146, file: !122, line: 358, baseType: !168, size: 64, offset: 2496)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !170)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_type", file: !88, line: 57, size: 512, elements: !171)
!171 = !{!172, !176, !180, !184, !191, !197, !4164, !4165, !4166, !4167}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "ctxsize", scope: !170, file: !88, line: 58, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DISubroutineType(types: !175)
!175 = !{!7, !145, !135, !135}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "extsize", scope: !170, file: !88, line: 59, baseType: !177, size: 64, offset: 64)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DISubroutineType(types: !179)
!179 = !{!7, !145}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "init_tfm", scope: !170, file: !88, line: 60, baseType: !181, size: 64, offset: 128)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DISubroutineType(types: !183)
!183 = !{!133, !120}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !170, file: !88, line: 61, baseType: !185, size: 64, offset: 192)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DISubroutineType(types: !187)
!187 = !{null, !188, !145}
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !190, line: 66, flags: DIFlagFwdDecl)
!190 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!191 = !DIDerivedType(tag: DW_TAG_member, name: "report", scope: !170, file: !88, line: 62, baseType: !192, size: 64, offset: 256)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DISubroutineType(types: !194)
!194 = !{!133, !195, !145}
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = !DICompositeType(tag: DW_TAG_structure_type, name: "sk_buff", file: !88, line: 55, flags: DIFlagFwdDecl)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !170, file: !88, line: 63, baseType: !198, size: 64, offset: 320)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DISubroutineType(types: !200)
!200 = !{null, !201}
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_instance", file: !88, line: 74, size: 3520, elements: !203)
!203 = !{!204, !205, !4142, !4161, !4162}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "alg", scope: !202, file: !88, line: 75, baseType: !146, size: 3072, align: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "tmpl", scope: !202, file: !88, line: 77, baseType: !206, size: 64, offset: 3072)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_template", file: !88, line: 91, size: 1344, elements: !208)
!208 = !{!209, !210, !220, !4134, !4141}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !207, file: !88, line: 92, baseType: !149, size: 128)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "instances", scope: !207, file: !88, line: 93, baseType: !211, size: 64, offset: 128)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !119, line: 194, size: 64, elements: !212)
!212 = !{!213}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !211, file: !119, line: 195, baseType: !214, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !119, line: 198, size: 128, elements: !216)
!216 = !{!217, !218}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !215, file: !119, line: 199, baseType: !214, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !215, file: !119, line: 199, baseType: !219, size: 64, offset: 64)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !207, file: !88, line: 94, baseType: !221, size: 64, offset: 192)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !223)
!223 = !{!224, !225, !226, !230, !3810, !3836, !3837, !3838, !3839, !3843, !3846, !3847, !3848, !3900, !3901, !3902, !3903, !3904, !3905, !3906, !3907, !3915, !3919, !3937, !3954, !3955, !3956, !3957, !3966, !3989, !3990, !3993, !3996, !3997, !3998, !3999, !4000, !4001, !4002, !4007, !4008, !4094, !4102, !4103, !4104, !4106, !4110, !4111, !4115, !4116, !4117, !4118, !4120, !4121, !4122, !4129, !4130, !4131, !4133}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !222, file: !6, line: 403, baseType: !5, size: 32)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !222, file: !6, line: 406, baseType: !149, size: 128, offset: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !222, file: !6, line: 409, baseType: !227, size: 448, offset: 192)
!227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 448, elements: !228)
!228 = !{!229}
!229 = !DISubrange(count: 56)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !222, file: !6, line: 417, baseType: !231, size: 768, offset: 640)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !232)
!232 = !{!233, !3804, !3805, !3806, !3809}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !231, file: !6, line: 46, baseType: !234, size: 512)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !235, line: 64, size: 512, elements: !236)
!235 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!236 = !{!237, !240, !241, !243, !326, !3691, !3794, !3799, !3800, !3801, !3802, !3803}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !234, file: !235, line: 65, baseType: !238, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !163)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !234, file: !235, line: 66, baseType: !149, size: 128, offset: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !234, file: !235, line: 67, baseType: !242, size: 64, offset: 192)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !234, file: !235, line: 68, baseType: !244, size: 64, offset: 256)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !235, line: 168, size: 768, elements: !246)
!246 = !{!247, !248, !285, !286}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !245, file: !235, line: 169, baseType: !149, size: 128)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !245, file: !235, line: 170, baseType: !249, size: 32, offset: 128)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !250, line: 29, baseType: !251)
!250 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !250, line: 17, size: 32, elements: !252)
!252 = !{!253}
!253 = !DIDerivedType(tag: DW_TAG_member, scope: !251, file: !250, line: 18, baseType: !254, size: 32)
!254 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !251, file: !250, line: 18, size: 32, elements: !255)
!255 = !{!256}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !254, file: !250, line: 19, baseType: !257, size: 32)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !258, line: 14, size: 32, elements: !259)
!258 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!259 = !{!260}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !257, file: !258, line: 15, baseType: !261, size: 32)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !262, line: 44, baseType: !263)
!262 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !262, line: 14, size: 32, elements: !264)
!264 = !{!265}
!265 = !DIDerivedType(tag: DW_TAG_member, scope: !263, file: !262, line: 15, baseType: !266, size: 32)
!266 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !263, file: !262, line: 15, size: 32, elements: !267)
!267 = !{!268, !269, !277}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !266, file: !262, line: 16, baseType: !129, size: 32)
!269 = !DIDerivedType(tag: DW_TAG_member, scope: !266, file: !262, line: 24, baseType: !270, size: 16)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !266, file: !262, line: 24, size: 16, elements: !271)
!271 = !{!272, !276}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !270, file: !262, line: 25, baseType: !273, size: 8)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !136, line: 17, baseType: !274)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !138, line: 21, baseType: !275)
!275 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !270, file: !262, line: 26, baseType: !273, size: 8, offset: 8)
!277 = !DIDerivedType(tag: DW_TAG_member, scope: !266, file: !262, line: 28, baseType: !278, size: 32)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !266, file: !262, line: 28, size: 32, elements: !279)
!279 = !{!280, !284}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !278, file: !262, line: 29, baseType: !281, size: 16)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !136, line: 19, baseType: !282)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !138, line: 24, baseType: !283)
!283 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !278, file: !262, line: 30, baseType: !281, size: 16, offset: 16)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !245, file: !235, line: 171, baseType: !234, size: 512, offset: 192)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !245, file: !235, line: 172, baseType: !287, size: 64, offset: 704)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !289)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !235, line: 133, size: 192, elements: !290)
!290 = !{!291, !298, !303}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !289, file: !235, line: 134, baseType: !292, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !293)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DISubroutineType(types: !295)
!295 = !{!133, !296}
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !234)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !289, file: !235, line: 135, baseType: !299, size: 64, offset: 64)
!299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !300)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DISubroutineType(types: !302)
!302 = !{!238, !296}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !289, file: !235, line: 136, baseType: !304, size: 64, offset: 128)
!304 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !305)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = !DISubroutineType(types: !307)
!307 = !{!133, !296, !308}
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !235, line: 125, size: 20736, elements: !310)
!310 = !{!311, !316, !320, !321, !325}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !309, file: !235, line: 126, baseType: !312, size: 192)
!312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !313, size: 192, elements: !314)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!314 = !{!315}
!315 = !DISubrange(count: 3)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !309, file: !235, line: 127, baseType: !317, size: 4096, offset: 192)
!317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !313, size: 4096, elements: !318)
!318 = !{!319}
!319 = !DISubrange(count: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !309, file: !235, line: 128, baseType: !133, size: 32, offset: 4288)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !309, file: !235, line: 129, baseType: !322, size: 16384, offset: 4320)
!322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 16384, elements: !323)
!323 = !{!324}
!324 = !DISubrange(count: 2048)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !309, file: !235, line: 130, baseType: !133, size: 32, offset: 20704)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !234, file: !235, line: 69, baseType: !327, size: 64, offset: 320)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !329)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !235, line: 116, size: 384, elements: !330)
!330 = !{!331, !335, !364, !3653, !3681, !3685}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !329, file: !235, line: 117, baseType: !332, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DISubroutineType(types: !334)
!334 = !{null, !242}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !329, file: !235, line: 118, baseType: !336, size: 64, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !338)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !339, line: 254, size: 128, elements: !340)
!339 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!340 = !{!341, !356}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !338, file: !339, line: 255, baseType: !342, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = !DISubroutineType(types: !344)
!344 = !{!345, !242, !350, !313}
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !119, line: 66, baseType: !346)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !347, line: 73, baseType: !348)
!347 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !347, line: 15, baseType: !349)
!349 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !339, line: 30, size: 128, elements: !352)
!352 = !{!353, !354}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !351, file: !339, line: 31, baseType: !238, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !351, file: !339, line: 32, baseType: !355, size: 16, offset: 64)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !119, line: 24, baseType: !283)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !338, file: !339, line: 256, baseType: !357, size: 64, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DISubroutineType(types: !359)
!359 = !{!345, !242, !350, !238, !360}
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !119, line: 61, baseType: !361)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !347, line: 72, baseType: !362)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !347, line: 16, baseType: !363)
!363 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !329, file: !235, line: 119, baseType: !365, size: 64, offset: 128)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !368)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !339, line: 84, size: 320, elements: !369)
!369 = !{!370, !371, !375, !3649, !3651}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !368, file: !339, line: 85, baseType: !238, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !368, file: !339, line: 86, baseType: !372, size: 64, offset: 64)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DISubroutineType(types: !374)
!374 = !{!355, !242, !350, !133}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !368, file: !339, line: 88, baseType: !376, size: 64, offset: 128)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DISubroutineType(types: !378)
!378 = !{!355, !242, !379, !133}
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !339, line: 175, size: 512, elements: !381)
!381 = !{!382, !383, !384, !385, !3640, !3644, !3645}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !380, file: !339, line: 176, baseType: !351, size: 128)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !380, file: !339, line: 177, baseType: !360, size: 64, offset: 128)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !380, file: !339, line: 178, baseType: !117, size: 64, offset: 192)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !380, file: !339, line: 179, baseType: !386, size: 64, offset: 256)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DISubroutineType(types: !388)
!388 = !{!389}
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !391)
!391 = !{!392, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3482, !3634, !3635, !3636, !3637, !3638, !3639}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !390, file: !14, line: 473, baseType: !393, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !395)
!395 = !{!396, !397, !398, !406, !407, !414, !415, !418, !419, !3413, !3414, !3415, !3416, !3417, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3457, !3460, !3461, !3462, !3471, !3472, !3473, !3474}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !394, file: !14, line: 642, baseType: !355, size: 16)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !394, file: !14, line: 643, baseType: !283, size: 16, offset: 16)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !394, file: !14, line: 644, baseType: !399, size: 32, offset: 32)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !400, line: 23, baseType: !401)
!400 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !400, line: 21, size: 32, elements: !402)
!402 = !{!403}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !401, file: !400, line: 22, baseType: !404, size: 32)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !119, line: 37, baseType: !405)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !347, line: 49, baseType: !7)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !394, file: !14, line: 645, baseType: !149, size: 128, offset: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !394, file: !14, line: 646, baseType: !408, size: 32, offset: 192)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !400, line: 28, baseType: !409)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !400, line: 26, size: 32, elements: !410)
!410 = !{!411}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !409, file: !400, line: 27, baseType: !412, size: 32)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !119, line: 38, baseType: !413)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !347, line: 50, baseType: !7)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !394, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !394, file: !14, line: 650, baseType: !416, size: 64, offset: 256)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !394, file: !14, line: 651, baseType: !416, size: 64, offset: 320)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !394, file: !14, line: 654, baseType: !420, size: 64, offset: 384)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !422)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !423)
!423 = !{!424, !3238, !3251, !3255, !3259, !3263, !3267, !3271, !3275, !3279, !3283, !3284, !3288, !3292, !3329, !3358, !3362, !3368, !3372, !3376, !3380, !3384, !3388, !3394, !3398}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !422, file: !14, line: 1967, baseType: !425, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DISubroutineType(types: !427)
!427 = !{!428, !393, !428, !7}
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !430, line: 82, size: 1536, elements: !431)
!430 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!431 = !{!432, !433, !443, !451, !452, !470, !471, !475, !488, !3221, !3222, !3223, !3224, !3230, !3231, !3232}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !429, file: !430, line: 84, baseType: !7, size: 32)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !429, file: !430, line: 85, baseType: !434, size: 32, offset: 32)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !435, line: 275, baseType: !436)
!435 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !435, line: 275, size: 32, elements: !437)
!437 = !{!438}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !436, file: !435, line: 275, baseType: !439, size: 32)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !435, line: 69, baseType: !440)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !435, line: 64, size: 32, elements: !441)
!441 = !{!442}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !440, file: !435, line: 65, baseType: !7, size: 32)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !429, file: !430, line: 86, baseType: !444, size: 128, offset: 64)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !445, line: 38, size: 128, elements: !446)
!445 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!446 = !{!447, !449}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !444, file: !445, line: 39, baseType: !448, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !444, file: !445, line: 39, baseType: !450, size: 64, offset: 64)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !429, file: !430, line: 87, baseType: !428, size: 64, offset: 192)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !429, file: !430, line: 88, baseType: !453, size: 128, offset: 256)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !430, line: 49, size: 128, elements: !454)
!454 = !{!455, !467}
!455 = !DIDerivedType(tag: DW_TAG_member, scope: !453, file: !430, line: 50, baseType: !456, size: 64)
!456 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !453, file: !430, line: 50, size: 64, elements: !457)
!457 = !{!458, !463}
!458 = !DIDerivedType(tag: DW_TAG_member, scope: !456, file: !430, line: 51, baseType: !459, size: 64)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !456, file: !430, line: 51, size: 64, elements: !460)
!460 = !{!461, !462}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !459, file: !430, line: 52, baseType: !135, size: 32)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !459, file: !430, line: 52, baseType: !135, size: 32, offset: 32)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !456, file: !430, line: 54, baseType: !464, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !136, line: 23, baseType: !465)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !138, line: 31, baseType: !466)
!466 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !453, file: !430, line: 56, baseType: !468, size: 64, offset: 64)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !275)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !429, file: !430, line: 89, baseType: !393, size: 64, offset: 384)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !429, file: !430, line: 91, baseType: !472, size: 256, offset: 448)
!472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !275, size: 256, elements: !473)
!473 = !{!474}
!474 = !DISubrange(count: 32)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !429, file: !430, line: 94, baseType: !476, size: 64, offset: 704)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !477, line: 25, size: 64, elements: !478)
!477 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!478 = !{!479}
!479 = !DIDerivedType(tag: DW_TAG_member, scope: !476, file: !477, line: 26, baseType: !480, size: 64)
!480 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !476, file: !477, line: 26, size: 64, elements: !481)
!481 = !{!482, !483}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !480, file: !477, line: 28, baseType: !465, size: 64, align: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, scope: !480, file: !477, line: 30, baseType: !484, size: 64)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !480, file: !477, line: 30, size: 64, elements: !485)
!485 = !{!486, !487}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !484, file: !477, line: 31, baseType: !249, size: 32)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !484, file: !477, line: 32, baseType: !133, size: 32, offset: 32)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !429, file: !430, line: 95, baseType: !489, size: 64, offset: 768)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !491)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !430, line: 128, size: 1024, align: 512, elements: !492)
!492 = !{!493, !497, !498, !505, !511, !515, !519, !523, !524, !528, !532, !3211, !3215}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !491, file: !430, line: 129, baseType: !494, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DISubroutineType(types: !496)
!496 = !{!133, !428, !7}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !491, file: !430, line: 130, baseType: !494, size: 64, offset: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !491, file: !430, line: 131, baseType: !499, size: 64, offset: 128)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DISubroutineType(types: !501)
!501 = !{!133, !502, !504}
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !429)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !491, file: !430, line: 132, baseType: !506, size: 64, offset: 192)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DISubroutineType(types: !508)
!508 = !{!133, !502, !7, !238, !509}
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !453)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !491, file: !430, line: 134, baseType: !512, size: 64, offset: 256)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DISubroutineType(types: !514)
!514 = !{!133, !502}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !491, file: !430, line: 135, baseType: !516, size: 64, offset: 320)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DISubroutineType(types: !518)
!518 = !{!133, !428}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !491, file: !430, line: 136, baseType: !520, size: 64, offset: 384)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DISubroutineType(types: !522)
!522 = !{null, !428}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !491, file: !430, line: 137, baseType: !520, size: 64, offset: 448)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !491, file: !430, line: 138, baseType: !525, size: 64, offset: 512)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DISubroutineType(types: !527)
!527 = !{null, !428, !393}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !491, file: !430, line: 139, baseType: !529, size: 64, offset: 576)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DISubroutineType(types: !531)
!531 = !{!313, !428, !313, !133}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !491, file: !430, line: 140, baseType: !533, size: 64, offset: 640)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DISubroutineType(types: !535)
!535 = !{!536, !3210}
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !538, line: 70, size: 256, elements: !539)
!538 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!539 = !{!540, !541, !3206, !3207}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !537, file: !538, line: 71, baseType: !428, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !537, file: !538, line: 72, baseType: !542, size: 64, offset: 64)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !544)
!544 = !{!545, !546, !549, !550, !551, !555, !595, !752, !792, !882, !886, !887, !888, !889, !890, !899, !900, !901, !902, !907, !911, !912, !915, !918, !921, !924, !925, !926, !967, !3137, !3138, !3139, !3140, !3141, !3142, !3145, !3147, !3154, !3155, !3156, !3157, !3158, !3173, !3174, !3175, !3176, !3177, !3180, !3181, !3182, !3197, !3198, !3199, !3200, !3201, !3202, !3203, !3204, !3205}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !543, file: !14, line: 1191, baseType: !149, size: 128)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !543, file: !14, line: 1192, baseType: !547, size: 32, offset: 128)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !119, line: 21, baseType: !548)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !119, line: 18, baseType: !135)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !543, file: !14, line: 1193, baseType: !275, size: 8, offset: 160)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !543, file: !14, line: 1194, baseType: !363, size: 64, offset: 192)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !543, file: !14, line: 1195, baseType: !552, size: 64, offset: 256)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !119, line: 52, baseType: !553)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !347, line: 88, baseType: !554)
!554 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !543, file: !14, line: 1196, baseType: !556, size: 64, offset: 320)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !558)
!558 = !{!559, !560, !561, !568, !572, !576, !580, !581, !582, !583, !587, !588, !589, !591, !592, !593, !594}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !557, file: !14, line: 2367, baseType: !238, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !557, file: !14, line: 2368, baseType: !133, size: 32, offset: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !557, file: !14, line: 2376, baseType: !562, size: 64, offset: 128)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DISubroutineType(types: !564)
!564 = !{!133, !565}
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !567, line: 32, flags: DIFlagFwdDecl)
!567 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!568 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !557, file: !14, line: 2377, baseType: !569, size: 64, offset: 192)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !571)
!571 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !557, file: !14, line: 2378, baseType: !573, size: 64, offset: 256)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = !DISubroutineType(types: !575)
!575 = !{!428, !556, !133, !238, !117}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !557, file: !14, line: 2380, baseType: !577, size: 64, offset: 320)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DISubroutineType(types: !579)
!579 = !{null, !542}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !557, file: !14, line: 2381, baseType: !221, size: 64, offset: 384)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !557, file: !14, line: 2382, baseType: !556, size: 64, offset: 448)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !557, file: !14, line: 2383, baseType: !211, size: 64, offset: 512)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !557, file: !14, line: 2385, baseType: !584, offset: 576)
!584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !585, line: 206, elements: !586)
!585 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!586 = !{}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !557, file: !14, line: 2386, baseType: !584, offset: 576)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !557, file: !14, line: 2387, baseType: !584, offset: 576)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !557, file: !14, line: 2388, baseType: !590, offset: 576)
!590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !584, elements: !314)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !557, file: !14, line: 2390, baseType: !584, offset: 576)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !557, file: !14, line: 2391, baseType: !584, offset: 576)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !557, file: !14, line: 2392, baseType: !584, offset: 576)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !557, file: !14, line: 2393, baseType: !584, offset: 576)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !543, file: !14, line: 1197, baseType: !596, size: 64, offset: 384)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !598)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !599)
!599 = !{!600, !604, !608, !609, !613, !619, !623, !624, !625, !629, !633, !637, !638, !639, !645, !650, !651, !655, !656, !657, !658, !662, !666, !735, !750, !751}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !598, file: !14, line: 2058, baseType: !601, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DISubroutineType(types: !603)
!603 = !{!393, !542}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !598, file: !14, line: 2059, baseType: !605, size: 64, offset: 64)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DISubroutineType(types: !607)
!607 = !{null, !393}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !598, file: !14, line: 2060, baseType: !605, size: 64, offset: 128)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !598, file: !14, line: 2062, baseType: !610, size: 64, offset: 192)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DISubroutineType(types: !612)
!612 = !{null, !393, !133}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !598, file: !14, line: 2063, baseType: !614, size: 64, offset: 256)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DISubroutineType(types: !616)
!616 = !{!133, !393, !617}
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !598, file: !14, line: 2064, baseType: !620, size: 64, offset: 320)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DISubroutineType(types: !622)
!622 = !{!133, !393}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !598, file: !14, line: 2065, baseType: !605, size: 64, offset: 384)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !598, file: !14, line: 2066, baseType: !577, size: 64, offset: 448)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !598, file: !14, line: 2067, baseType: !626, size: 64, offset: 512)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = !DISubroutineType(types: !628)
!628 = !{!133, !542, !133}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !598, file: !14, line: 2068, baseType: !630, size: 64, offset: 576)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DISubroutineType(types: !632)
!632 = !{!133, !542, !13}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !598, file: !14, line: 2069, baseType: !634, size: 64, offset: 640)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DISubroutineType(types: !636)
!636 = !{!133, !542}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !598, file: !14, line: 2070, baseType: !630, size: 64, offset: 704)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !598, file: !14, line: 2071, baseType: !634, size: 64, offset: 768)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !598, file: !14, line: 2072, baseType: !640, size: 64, offset: 832)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DISubroutineType(types: !642)
!642 = !{!133, !428, !643}
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !598, file: !14, line: 2073, baseType: !646, size: 64, offset: 896)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DISubroutineType(types: !648)
!648 = !{!133, !542, !649, !313}
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !598, file: !14, line: 2074, baseType: !577, size: 64, offset: 960)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !598, file: !14, line: 2076, baseType: !652, size: 64, offset: 1024)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DISubroutineType(types: !654)
!654 = !{!133, !188, !428}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !598, file: !14, line: 2077, baseType: !652, size: 64, offset: 1088)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !598, file: !14, line: 2078, baseType: !652, size: 64, offset: 1152)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !598, file: !14, line: 2079, baseType: !652, size: 64, offset: 1216)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !598, file: !14, line: 2081, baseType: !659, size: 64, offset: 1280)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DISubroutineType(types: !661)
!661 = !{!345, !542, !133, !313, !360, !552}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !598, file: !14, line: 2082, baseType: !663, size: 64, offset: 1344)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = !DISubroutineType(types: !665)
!665 = !{!345, !542, !133, !238, !360, !552}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !598, file: !14, line: 2083, baseType: !667, size: 64, offset: 1408)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DISubroutineType(types: !669)
!669 = !{!670, !393}
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !19, line: 296, size: 1664, elements: !673)
!673 = !{!674, !675, !676, !677, !678, !699, !700, !701, !702, !718, !719, !720}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !672, file: !19, line: 297, baseType: !215, size: 128)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !672, file: !19, line: 298, baseType: !149, size: 128, offset: 128)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !672, file: !19, line: 299, baseType: !149, size: 128, offset: 256)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !672, file: !19, line: 300, baseType: !149, size: 128, offset: 384)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !672, file: !19, line: 301, baseType: !679, size: 256, offset: 512)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !680, line: 66, size: 256, elements: !681)
!680 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!681 = !{!682, !691, !693, !698}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !679, file: !680, line: 67, baseType: !683, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !684, line: 13, baseType: !685)
!684 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!685 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !119, line: 181, baseType: !686)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !119, line: 179, size: 64, elements: !687)
!687 = !{!688}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !686, file: !119, line: 180, baseType: !689, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !136, line: 22, baseType: !690)
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !138, line: 30, baseType: !554)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !679, file: !680, line: 68, baseType: !692, size: 32, offset: 64)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !258, line: 23, baseType: !257)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !679, file: !680, line: 70, baseType: !694, size: 32, offset: 96)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !695, line: 15, size: 32, elements: !696)
!695 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!696 = !{!697}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !694, file: !695, line: 20, baseType: !129, size: 32)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !679, file: !680, line: 72, baseType: !149, size: 128, offset: 128)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !672, file: !19, line: 302, baseType: !249, size: 32, offset: 768)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !672, file: !19, line: 303, baseType: !129, size: 32, offset: 800)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !672, file: !19, line: 304, baseType: !542, size: 64, offset: 832)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !672, file: !19, line: 305, baseType: !703, size: 64, offset: 896)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !19, line: 68, size: 64, elements: !704)
!704 = !{!705, !717}
!705 = !DIDerivedType(tag: DW_TAG_member, scope: !703, file: !19, line: 69, baseType: !706, size: 32)
!706 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !703, file: !19, line: 69, size: 32, elements: !707)
!707 = !{!708, !709, !710}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !706, file: !19, line: 70, baseType: !399, size: 32)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !706, file: !19, line: 71, baseType: !408, size: 32)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !706, file: !19, line: 72, baseType: !711, size: 32)
!711 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !712, line: 24, baseType: !713)
!712 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !712, line: 22, size: 32, elements: !714)
!714 = !{!715}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !713, file: !712, line: 23, baseType: !716, size: 32)
!716 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !712, line: 20, baseType: !405)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !703, file: !19, line: 74, baseType: !18, size: 32, offset: 32)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !672, file: !19, line: 306, baseType: !552, size: 64, offset: 960)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !672, file: !19, line: 307, baseType: !363, size: 64, offset: 1024)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !672, file: !19, line: 308, baseType: !721, size: 576, offset: 1088)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !19, line: 205, size: 576, elements: !722)
!722 = !{!723, !725, !726, !727, !728, !729, !730, !731, !734}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !721, file: !19, line: 206, baseType: !724, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !19, line: 66, baseType: !554)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !721, file: !19, line: 207, baseType: !724, size: 64, offset: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !721, file: !19, line: 208, baseType: !724, size: 64, offset: 128)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !721, file: !19, line: 209, baseType: !724, size: 64, offset: 192)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !721, file: !19, line: 210, baseType: !724, size: 64, offset: 256)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !721, file: !19, line: 211, baseType: !724, size: 64, offset: 320)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !721, file: !19, line: 212, baseType: !724, size: 64, offset: 384)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !721, file: !19, line: 213, baseType: !732, size: 64, offset: 448)
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !733, line: 8, baseType: !690)
!733 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!734 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !721, file: !19, line: 214, baseType: !732, size: 64, offset: 512)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !598, file: !14, line: 2085, baseType: !736, size: 64, offset: 1472)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = !DISubroutineType(types: !738)
!738 = !{!349, !542, !739}
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !741, line: 15, size: 256, elements: !742)
!741 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!742 = !{!743, !744, !745, !746, !747}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !740, file: !741, line: 16, baseType: !118, size: 32)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !740, file: !741, line: 19, baseType: !133, size: 32, offset: 32)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !740, file: !741, line: 26, baseType: !363, size: 64, offset: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !740, file: !741, line: 33, baseType: !363, size: 64, offset: 128)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !740, file: !741, line: 36, baseType: !748, size: 64, offset: 192)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !38, line: 33, flags: DIFlagFwdDecl)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !598, file: !14, line: 2087, baseType: !736, size: 64, offset: 1536)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !598, file: !14, line: 2089, baseType: !577, size: 64, offset: 1600)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !543, file: !14, line: 1198, baseType: !753, size: 64, offset: 448)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !755)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !19, line: 324, size: 704, elements: !756)
!756 = !{!757, !761, !765, !769, !770, !771, !772, !773, !778, !783, !787}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !755, file: !19, line: 325, baseType: !758, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = !DISubroutineType(types: !760)
!760 = !{!133, !671}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !755, file: !19, line: 326, baseType: !762, size: 64, offset: 64)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DISubroutineType(types: !764)
!764 = !{!671, !542, !133}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !755, file: !19, line: 327, baseType: !766, size: 64, offset: 128)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = !DISubroutineType(types: !768)
!768 = !{null, !671}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !755, file: !19, line: 328, baseType: !758, size: 64, offset: 192)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !755, file: !19, line: 329, baseType: !758, size: 64, offset: 256)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !755, file: !19, line: 330, baseType: !758, size: 64, offset: 320)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !755, file: !19, line: 331, baseType: !626, size: 64, offset: 384)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !755, file: !19, line: 334, baseType: !774, size: 64, offset: 448)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = !DISubroutineType(types: !776)
!776 = !{!777, !393}
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !755, file: !19, line: 335, baseType: !779, size: 64, offset: 512)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DISubroutineType(types: !781)
!781 = !{!133, !393, !782}
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !755, file: !19, line: 337, baseType: !784, size: 64, offset: 576)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DISubroutineType(types: !786)
!786 = !{!133, !393, !777}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !755, file: !19, line: 339, baseType: !788, size: 64, offset: 640)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DISubroutineType(types: !790)
!790 = !{!133, !542, !791}
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !543, file: !14, line: 1199, baseType: !793, size: 64, offset: 512)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !795)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !19, line: 430, size: 704, elements: !796)
!796 = !{!797, !808, !809, !813, !814, !815, !830, !853, !857, !858, !881}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !795, file: !19, line: 431, baseType: !798, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DISubroutineType(types: !800)
!800 = !{!133, !542, !133, !133, !801}
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !803)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !804, line: 8, size: 128, elements: !805)
!804 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!805 = !{!806, !807}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !803, file: !804, line: 9, baseType: !536, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !803, file: !804, line: 10, baseType: !428, size: 64, offset: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !795, file: !19, line: 432, baseType: !626, size: 64, offset: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !795, file: !19, line: 433, baseType: !810, size: 64, offset: 128)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = !DISubroutineType(types: !812)
!812 = !{!133, !542, !7}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !795, file: !19, line: 434, baseType: !810, size: 64, offset: 192)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !795, file: !19, line: 435, baseType: !626, size: 64, offset: 256)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !795, file: !19, line: 436, baseType: !816, size: 64, offset: 320)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DISubroutineType(types: !818)
!818 = !{!133, !542, !133, !819}
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !19, line: 417, size: 256, elements: !821)
!821 = !{!822, !823, !824, !825, !826, !827, !828, !829}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !820, file: !19, line: 418, baseType: !133, size: 32)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !820, file: !19, line: 419, baseType: !7, size: 32, offset: 32)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !820, file: !19, line: 420, baseType: !7, size: 32, offset: 64)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !820, file: !19, line: 422, baseType: !7, size: 32, offset: 96)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !820, file: !19, line: 423, baseType: !7, size: 32, offset: 128)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !820, file: !19, line: 424, baseType: !7, size: 32, offset: 160)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !820, file: !19, line: 425, baseType: !7, size: 32, offset: 192)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !820, file: !19, line: 426, baseType: !7, size: 32, offset: 224)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !795, file: !19, line: 437, baseType: !831, size: 64, offset: 384)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DISubroutineType(types: !833)
!833 = !{!133, !542, !703, !834}
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !19, line: 345, size: 960, elements: !836)
!836 = !{!837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !835, file: !19, line: 346, baseType: !133, size: 32)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !835, file: !19, line: 347, baseType: !464, size: 64, offset: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !835, file: !19, line: 348, baseType: !464, size: 64, offset: 128)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !835, file: !19, line: 349, baseType: !464, size: 64, offset: 192)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !835, file: !19, line: 350, baseType: !464, size: 64, offset: 256)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !835, file: !19, line: 351, baseType: !464, size: 64, offset: 320)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !835, file: !19, line: 352, baseType: !464, size: 64, offset: 384)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !835, file: !19, line: 353, baseType: !689, size: 64, offset: 448)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !835, file: !19, line: 355, baseType: !689, size: 64, offset: 512)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !835, file: !19, line: 356, baseType: !133, size: 32, offset: 576)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !835, file: !19, line: 357, baseType: !133, size: 32, offset: 608)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !835, file: !19, line: 358, baseType: !464, size: 64, offset: 640)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !835, file: !19, line: 359, baseType: !464, size: 64, offset: 704)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !835, file: !19, line: 360, baseType: !464, size: 64, offset: 768)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !835, file: !19, line: 361, baseType: !689, size: 64, offset: 832)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !835, file: !19, line: 362, baseType: !133, size: 32, offset: 896)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !795, file: !19, line: 438, baseType: !854, size: 64, offset: 448)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DISubroutineType(types: !856)
!856 = !{!133, !542, !791, !834}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !795, file: !19, line: 440, baseType: !831, size: 64, offset: 512)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !795, file: !19, line: 441, baseType: !859, size: 64, offset: 576)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = !DISubroutineType(types: !861)
!861 = !{!133, !542, !862}
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !19, line: 411, size: 1408, elements: !864)
!864 = !{!865, !866}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !863, file: !19, line: 412, baseType: !7, size: 32)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !863, file: !19, line: 413, baseType: !867, size: 1344, offset: 64)
!867 = !DICompositeType(tag: DW_TAG_array_type, baseType: !868, size: 1344, elements: !314)
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !19, line: 397, size: 448, elements: !869)
!869 = !{!870, !871, !872, !873, !874, !875, !876, !877, !878, !880}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !868, file: !19, line: 398, baseType: !7, size: 32)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !868, file: !19, line: 399, baseType: !7, size: 32, offset: 32)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !868, file: !19, line: 401, baseType: !7, size: 32, offset: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !868, file: !19, line: 402, baseType: !7, size: 32, offset: 96)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !868, file: !19, line: 403, baseType: !7, size: 32, offset: 128)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !868, file: !19, line: 404, baseType: !7, size: 32, offset: 160)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !868, file: !19, line: 405, baseType: !7, size: 32, offset: 192)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !868, file: !19, line: 406, baseType: !466, size: 64, offset: 256)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !868, file: !19, line: 407, baseType: !879, size: 64, offset: 320)
!879 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !119, line: 132, baseType: !464)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !868, file: !19, line: 408, baseType: !879, size: 64, offset: 384)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !795, file: !19, line: 442, baseType: !810, size: 64, offset: 640)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !543, file: !14, line: 1200, baseType: !883, size: 64, offset: 576)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !885)
!885 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !543, file: !14, line: 1201, baseType: !363, size: 64, offset: 640)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !543, file: !14, line: 1202, baseType: !363, size: 64, offset: 704)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !543, file: !14, line: 1203, baseType: !363, size: 64, offset: 768)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !543, file: !14, line: 1204, baseType: !428, size: 64, offset: 832)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !543, file: !14, line: 1205, baseType: !891, size: 320, offset: 896)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !892, line: 48, size: 320, elements: !893)
!892 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!893 = !{!894, !895, !896, !897, !898}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !891, file: !892, line: 49, baseType: !683, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !891, file: !892, line: 55, baseType: !683, size: 64, offset: 64)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !891, file: !892, line: 57, baseType: !694, size: 32, offset: 128)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !891, file: !892, line: 59, baseType: !692, size: 32, offset: 160)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !891, file: !892, line: 60, baseType: !149, size: 128, offset: 192)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !543, file: !14, line: 1206, baseType: !133, size: 32, offset: 1216)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !543, file: !14, line: 1207, baseType: !129, size: 32, offset: 1248)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !543, file: !14, line: 1209, baseType: !117, size: 64, offset: 1280)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !543, file: !14, line: 1211, baseType: !903, size: 64, offset: 1344)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !906)
!906 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !543, file: !14, line: 1223, baseType: !908, size: 64, offset: 1408)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !445, line: 34, size: 64, elements: !909)
!909 = !{!910}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !908, file: !445, line: 35, baseType: !448, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !543, file: !14, line: 1224, baseType: !149, size: 128, offset: 1472)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !543, file: !14, line: 1225, baseType: !913, size: 64, offset: 1600)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !543, file: !14, line: 1226, baseType: !916, size: 64, offset: 1664)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !543, file: !14, line: 1227, baseType: !919, size: 64, offset: 1728)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !543, file: !14, line: 1228, baseType: !922, size: 64, offset: 1792)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !543, file: !14, line: 1229, baseType: !215, size: 128, offset: 1856)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !543, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !543, file: !14, line: 1231, baseType: !927, size: 2496, offset: 2048)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !19, line: 521, size: 2496, elements: !928)
!928 = !{!929, !930, !931, !933, !965}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !927, file: !19, line: 522, baseType: !7, size: 32)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !927, file: !19, line: 523, baseType: !891, size: 320, offset: 64)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !927, file: !19, line: 524, baseType: !932, size: 192, offset: 384)
!932 = !DICompositeType(tag: DW_TAG_array_type, baseType: !393, size: 192, elements: !314)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !927, file: !19, line: 525, baseType: !934, size: 1728, offset: 576)
!934 = !DICompositeType(tag: DW_TAG_array_type, baseType: !935, size: 1728, elements: !314)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !19, line: 222, size: 576, elements: !936)
!936 = !{!937, !957, !958, !959, !960, !961, !962, !963, !964}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !935, file: !19, line: 223, baseType: !938, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !19, line: 445, size: 256, elements: !940)
!940 = !{!941, !942, !955, !956}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !939, file: !19, line: 446, baseType: !133, size: 32)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !939, file: !19, line: 447, baseType: !943, size: 64, offset: 64)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !945)
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !19, line: 312, size: 512, elements: !946)
!946 = !{!947, !948, !949, !950, !951, !952, !953, !954}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !945, file: !19, line: 313, baseType: !626, size: 64)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !945, file: !19, line: 314, baseType: !626, size: 64, offset: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !945, file: !19, line: 315, baseType: !626, size: 64, offset: 128)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !945, file: !19, line: 316, baseType: !626, size: 64, offset: 192)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !945, file: !19, line: 317, baseType: !758, size: 64, offset: 256)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !945, file: !19, line: 318, baseType: !758, size: 64, offset: 320)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !945, file: !19, line: 319, baseType: !758, size: 64, offset: 384)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !945, file: !19, line: 320, baseType: !788, size: 64, offset: 448)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !939, file: !19, line: 448, baseType: !221, size: 64, offset: 128)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !939, file: !19, line: 449, baseType: !938, size: 64, offset: 192)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !935, file: !19, line: 224, baseType: !133, size: 32, offset: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !935, file: !19, line: 226, baseType: !149, size: 128, offset: 128)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !935, file: !19, line: 227, baseType: !363, size: 64, offset: 256)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !935, file: !19, line: 228, baseType: !7, size: 32, offset: 320)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !935, file: !19, line: 229, baseType: !7, size: 32, offset: 352)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !935, file: !19, line: 230, baseType: !724, size: 64, offset: 384)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !935, file: !19, line: 231, baseType: !724, size: 64, offset: 448)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !935, file: !19, line: 232, baseType: !117, size: 64, offset: 512)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !927, file: !19, line: 526, baseType: !966, size: 192, offset: 2304)
!966 = !DICompositeType(tag: DW_TAG_array_type, baseType: !943, size: 192, elements: !314)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !543, file: !14, line: 1233, baseType: !968, size: 2368, offset: 4544)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !969)
!969 = !{!970, !971, !972}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !968, file: !14, line: 1185, baseType: !283, size: 16)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !968, file: !14, line: 1186, baseType: !283, size: 16, offset: 16)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !968, file: !14, line: 1187, baseType: !973, size: 2304, offset: 64)
!973 = !DICompositeType(tag: DW_TAG_array_type, baseType: !974, size: 2304, elements: !314)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !975, line: 12, size: 768, elements: !976)
!975 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!976 = !{!977, !999, !1001, !3135, !3136}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !974, file: !975, line: 13, baseType: !978, size: 384)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !979, line: 17, size: 384, elements: !980)
!979 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!980 = !{!981, !982, !983, !990}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !978, file: !979, line: 18, baseType: !133, size: 32)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !978, file: !979, line: 19, baseType: !133, size: 32, offset: 32)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !978, file: !979, line: 20, baseType: !984, size: 192, offset: 64)
!984 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !985, line: 41, baseType: !986)
!985 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !985, line: 37, size: 192, elements: !987)
!987 = !{!988, !989}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !986, file: !985, line: 38, baseType: !249, size: 32)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !986, file: !985, line: 39, baseType: !149, size: 128, offset: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !978, file: !979, line: 22, baseType: !991, size: 128, align: 64, offset: 256)
!991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !119, line: 232, size: 128, align: 64, elements: !992)
!992 = !{!993, !995}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !991, file: !119, line: 233, baseType: !994, size: 64)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !991, file: !119, line: 234, baseType: !996, size: 64, offset: 64)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = !DISubroutineType(types: !998)
!998 = !{null, !994}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !974, file: !975, line: 14, baseType: !1000, size: 64, offset: 384)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !974, file: !975, line: 15, baseType: !1002, size: 64, offset: 448)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1003, line: 16, size: 64, elements: !1004)
!1003 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1004 = !{!1005}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1002, file: !1003, line: 17, baseType: !1006, size: 64)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !190, line: 746, size: 58368, elements: !1008)
!1008 = !{!1009, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1101, !1112, !1207, !1211, !1214, !1245, !1246, !1247, !1248, !1259, !1261, !1262, !1263, !1264, !1265, !1266, !1277, !1278, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1295, !1296, !1303, !1304, !2213, !2214, !2215, !2216, !2217, !2218, !2219, !2220, !2221, !2222, !2223, !2224, !2225, !2226, !2227, !2228, !2229, !2230, !2231, !2232, !2233, !2234, !2235, !2292, !2295, !2296, !2297, !2298, !2299, !2300, !2301, !2302, !2303, !2304, !2305, !2307, !2308, !2309, !2311, !2312, !2313, !2314, !2315, !2316, !2317, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2341, !2347, !2348, !2349, !2350, !2351, !2355, !2358, !2365, !2370, !2373, !2376, !2379, !2383, !2523, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559, !2560, !2563, !2564, !2565, !2574, !2582, !2583, !2584, !2585, !2586, !2591, !2592, !2593, !2596, !2597, !2600, !2603, !2606, !2614, !2617, !2618, !2704, !2705, !2706, !2707, !2708, !2714, !2715, !2716, !2717, !2720, !2721, !2724, !2727, !2728, !2731, !2732, !2733, !2736, !2737, !2738, !2739, !2740, !2741, !2754, !2755, !2756, !2757, !2758, !2759, !2760, !2761, !2762, !2773, !2774, !2780, !2783, !2784, !2785, !2786, !2787, !2788, !2789, !2792, !2864, !2866, !2867, !2868, !2869, !2870, !2882, !2898, !2899, !2900, !2901, !2902, !2903, !2904, !2905, !2906, !2907, !2908, !2912, !2913, !2914}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1007, file: !190, line: 752, baseType: !1010, size: 192)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1011, line: 56, size: 192, elements: !1012)
!1011 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1012 = !{!1013, !1014, !1015, !1016}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1010, file: !1011, line: 57, baseType: !363, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1010, file: !1011, line: 58, baseType: !363, size: 64, offset: 64)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1010, file: !1011, line: 59, baseType: !135, size: 32, offset: 128)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1010, file: !1011, line: 61, baseType: !135, size: 32, offset: 160)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1007, file: !190, line: 754, baseType: !7, size: 32, offset: 192)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1007, file: !190, line: 767, baseType: !117, size: 64, offset: 256)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1007, file: !190, line: 768, baseType: !125, size: 32, offset: 320)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1007, file: !190, line: 770, baseType: !7, size: 32, offset: 352)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1007, file: !190, line: 771, baseType: !7, size: 32, offset: 384)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1007, file: !190, line: 774, baseType: !133, size: 32, offset: 416)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1007, file: !190, line: 775, baseType: !1024, size: 128, offset: 448)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1025, line: 58, size: 128, elements: !1026)
!1025 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1026 = !{!1027, !1033, !1038, !1039}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1024, file: !1025, line: 59, baseType: !1028, size: 64)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1029, line: 60, size: 64, elements: !1030)
!1029 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1030 = !{!1031}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1028, file: !1029, line: 61, baseType: !1032, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, scope: !1024, file: !1025, line: 60, baseType: !1034, size: 32, offset: 64)
!1034 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1024, file: !1025, line: 60, size: 32, elements: !1035)
!1035 = !{!1036, !1037}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1034, file: !1025, line: 61, baseType: !7, size: 32)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1034, file: !1025, line: 62, baseType: !129, size: 32)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1024, file: !1025, line: 65, baseType: !281, size: 16, offset: 96)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1024, file: !1025, line: 65, baseType: !281, size: 16, offset: 112)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1007, file: !190, line: 776, baseType: !7, size: 32, offset: 576)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1007, file: !190, line: 777, baseType: !363, size: 64, offset: 640)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1007, file: !190, line: 778, baseType: !1006, size: 64, offset: 704)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1007, file: !190, line: 787, baseType: !133, size: 32, offset: 768)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1007, file: !190, line: 788, baseType: !133, size: 32, offset: 800)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1007, file: !190, line: 790, baseType: !133, size: 32, offset: 832)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1007, file: !190, line: 792, baseType: !133, size: 32, offset: 864)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1007, file: !190, line: 793, baseType: !133, size: 32, offset: 896)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1007, file: !190, line: 794, baseType: !133, size: 32, offset: 928)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1007, file: !190, line: 795, baseType: !7, size: 32, offset: 960)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1007, file: !190, line: 797, baseType: !1051, size: 2048, offset: 1024)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !190, line: 551, size: 2048, elements: !1052)
!1052 = !{!1053, !1058, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1080, !1083, !1084, !1085}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1051, file: !190, line: 553, baseType: !1054, size: 128)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !190, line: 411, size: 128, elements: !1055)
!1055 = !{!1056, !1057}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1054, file: !190, line: 412, baseType: !363, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1054, file: !190, line: 413, baseType: !135, size: 32, offset: 64)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1051, file: !190, line: 554, baseType: !1059, size: 192, align: 64, offset: 128)
!1059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !1060, line: 5, size: 192, align: 64, elements: !1061)
!1060 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!1061 = !{!1062, !1063, !1065}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !1059, file: !1060, line: 6, baseType: !363, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !1059, file: !1060, line: 7, baseType: !1064, size: 64, offset: 64)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !1059, file: !1060, line: 8, baseType: !1064, size: 64, offset: 128)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1051, file: !190, line: 555, baseType: !464, size: 64, offset: 320)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1051, file: !190, line: 556, baseType: !464, size: 64, offset: 384)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1051, file: !190, line: 558, baseType: !149, size: 128, offset: 448)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1051, file: !190, line: 559, baseType: !7, size: 32, offset: 576)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1051, file: !190, line: 561, baseType: !464, size: 64, offset: 640)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1051, file: !190, line: 562, baseType: !464, size: 64, offset: 704)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1051, file: !190, line: 563, baseType: !464, size: 64, offset: 768)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1051, file: !190, line: 564, baseType: !464, size: 64, offset: 832)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1051, file: !190, line: 565, baseType: !689, size: 64, offset: 896)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1051, file: !190, line: 566, baseType: !464, size: 64, offset: 960)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1051, file: !190, line: 568, baseType: !464, size: 64, offset: 1024)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1051, file: !190, line: 571, baseType: !133, size: 32, offset: 1088)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1051, file: !190, line: 572, baseType: !1079, size: 64, offset: 1152)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1051, file: !190, line: 574, baseType: !1081, size: 64, offset: 1216)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !190, line: 49, flags: DIFlagFwdDecl)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1051, file: !190, line: 576, baseType: !1081, size: 64, offset: 1280)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1051, file: !190, line: 578, baseType: !363, size: 64, offset: 1344)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1051, file: !190, line: 588, baseType: !1086, size: 512, align: 512, offset: 1536)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !190, line: 497, size: 512, align: 512, elements: !1087)
!1087 = !{!1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1086, file: !190, line: 498, baseType: !464, size: 64)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1086, file: !190, line: 499, baseType: !464, size: 64, offset: 64)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1086, file: !190, line: 500, baseType: !464, size: 64, offset: 128)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1086, file: !190, line: 501, baseType: !135, size: 32, offset: 192)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1086, file: !190, line: 502, baseType: !135, size: 32, offset: 224)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1086, file: !190, line: 503, baseType: !363, size: 64, offset: 256)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1086, file: !190, line: 504, baseType: !363, size: 64, offset: 320)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1086, file: !190, line: 505, baseType: !363, size: 64, offset: 384)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1086, file: !190, line: 506, baseType: !1097, size: 64, align: 64, offset: 448)
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !190, line: 445, size: 64, align: 64, elements: !1098)
!1098 = !{!1099, !1100}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1097, file: !190, line: 446, baseType: !7, size: 32)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1097, file: !190, line: 447, baseType: !7, size: 32, offset: 32)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1007, file: !190, line: 798, baseType: !1102, size: 384, offset: 3072)
!1102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !190, line: 592, size: 384, elements: !1103)
!1103 = !{!1104, !1105, !1106, !1107, !1108, !1109, !1110}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1102, file: !190, line: 593, baseType: !149, size: 128)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1102, file: !190, line: 594, baseType: !363, size: 64, offset: 128)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1102, file: !190, line: 595, baseType: !363, size: 64, offset: 192)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1102, file: !190, line: 596, baseType: !7, size: 32, offset: 256)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1102, file: !190, line: 597, baseType: !283, size: 16, offset: 288)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1102, file: !190, line: 598, baseType: !283, size: 16, offset: 304)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1102, file: !190, line: 600, baseType: !1111, size: 64, offset: 320)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1007, file: !190, line: 799, baseType: !1113, size: 1792, offset: 3456)
!1113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !190, line: 610, size: 1792, elements: !1114)
!1114 = !{!1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1204, !1205}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1113, file: !190, line: 611, baseType: !1059, size: 192, align: 64)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1113, file: !190, line: 618, baseType: !464, size: 64, offset: 192)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1113, file: !190, line: 619, baseType: !464, size: 64, offset: 256)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1113, file: !190, line: 620, baseType: !464, size: 64, offset: 320)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1113, file: !190, line: 621, baseType: !464, size: 64, offset: 384)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1113, file: !190, line: 622, baseType: !464, size: 64, offset: 448)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1113, file: !190, line: 629, baseType: !689, size: 64, offset: 512)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1113, file: !190, line: 630, baseType: !464, size: 64, offset: 576)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1113, file: !190, line: 631, baseType: !7, size: 32, offset: 640)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1113, file: !190, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1113, file: !190, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1113, file: !190, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1113, file: !190, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1113, file: !190, line: 662, baseType: !1129, size: 512, offset: 704)
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !25, line: 118, size: 512, elements: !1130)
!1130 = !{!1131, !1139, !1140, !1145, !1200, !1201, !1202, !1203}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1129, file: !25, line: 119, baseType: !1132, size: 256)
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1133, line: 9, size: 256, elements: !1134)
!1133 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1134 = !{!1135, !1136}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1132, file: !1133, line: 10, baseType: !1059, size: 192, align: 64)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1132, file: !1133, line: 11, baseType: !1137, size: 64, offset: 192)
!1137 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1138, line: 29, baseType: !689)
!1138 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1129, file: !25, line: 120, baseType: !1137, size: 64, offset: 256)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1129, file: !25, line: 121, baseType: !1141, size: 64, offset: 320)
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = !DISubroutineType(types: !1143)
!1143 = !{!24, !1144}
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1129, file: !25, line: 122, baseType: !1146, size: 64, offset: 384)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !25, line: 159, size: 512, align: 512, elements: !1148)
!1148 = !{!1149, !1174, !1175, !1178, !1183, !1184, !1195, !1199}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1147, file: !25, line: 160, baseType: !1150, size: 64)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !25, line: 215, size: 4608, align: 512, elements: !1152)
!1152 = !{!1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1151, file: !25, line: 216, baseType: !692, size: 32)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1151, file: !25, line: 217, baseType: !7, size: 32, offset: 32)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1151, file: !25, line: 218, baseType: !7, size: 32, offset: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1151, file: !25, line: 219, baseType: !7, size: 32, offset: 96)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1151, file: !25, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1151, file: !25, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1151, file: !25, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1151, file: !25, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1151, file: !25, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1151, file: !25, line: 226, baseType: !7, size: 32, offset: 160)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1151, file: !25, line: 227, baseType: !283, size: 16, offset: 192)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1151, file: !25, line: 228, baseType: !283, size: 16, offset: 208)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1151, file: !25, line: 229, baseType: !7, size: 32, offset: 224)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1151, file: !25, line: 235, baseType: !1137, size: 64, offset: 256)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1151, file: !25, line: 236, baseType: !1144, size: 64, offset: 320)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1151, file: !25, line: 237, baseType: !1137, size: 64, offset: 384)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1151, file: !25, line: 238, baseType: !1144, size: 64, offset: 448)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1151, file: !25, line: 239, baseType: !1171, size: 4096, align: 512, offset: 512)
!1171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1147, size: 4096, align: 512, elements: !1172)
!1172 = !{!1173}
!1173 = !DISubrange(count: 8)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1147, file: !25, line: 161, baseType: !7, size: 32, offset: 64)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1147, file: !25, line: 162, baseType: !1176, size: 32, offset: 96)
!1176 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !119, line: 32, baseType: !1177)
!1177 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !347, line: 96, baseType: !133)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1147, file: !25, line: 163, baseType: !1179, size: 32, offset: 128)
!1179 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !435, line: 274, baseType: !1180)
!1180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !435, line: 274, size: 32, elements: !1181)
!1181 = !{!1182}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1180, file: !435, line: 274, baseType: !439, size: 32)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1147, file: !25, line: 164, baseType: !1144, size: 64, offset: 192)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1147, file: !25, line: 165, baseType: !1185, size: 128, offset: 256)
!1185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1133, line: 14, size: 128, elements: !1186)
!1186 = !{!1187}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1185, file: !1133, line: 15, baseType: !1188, size: 128)
!1188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !1060, line: 26, size: 128, elements: !1189)
!1189 = !{!1190, !1194}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1188, file: !1060, line: 27, baseType: !1191, size: 64)
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !1060, line: 12, size: 64, elements: !1192)
!1192 = !{!1193}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1191, file: !1060, line: 13, baseType: !1064, size: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1188, file: !1060, line: 28, baseType: !1064, size: 64, offset: 64)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1147, file: !25, line: 166, baseType: !1196, size: 64, offset: 384)
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1197 = !DISubroutineType(types: !1198)
!1198 = !{!1137}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1147, file: !25, line: 167, baseType: !1137, size: 64, offset: 448)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1129, file: !25, line: 123, baseType: !273, size: 8, offset: 448)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1129, file: !25, line: 124, baseType: !273, size: 8, offset: 456)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1129, file: !25, line: 125, baseType: !273, size: 8, offset: 464)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1129, file: !25, line: 126, baseType: !273, size: 8, offset: 472)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1113, file: !190, line: 671, baseType: !1129, size: 512, offset: 1216)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1113, file: !190, line: 679, baseType: !1206, size: 64, offset: 1728)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1007, file: !190, line: 800, baseType: !1208, size: 64, offset: 5248)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1210)
!1210 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !190, line: 800, flags: DIFlagFwdDecl)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1007, file: !190, line: 809, baseType: !1212, size: 64, offset: 5312)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !190, line: 70, flags: DIFlagFwdDecl)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1007, file: !190, line: 825, baseType: !1215, size: 2048, align: 512, offset: 5632)
!1215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !190, line: 509, size: 2048, align: 512, elements: !1216)
!1216 = !{!1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1215, file: !190, line: 511, baseType: !464, size: 64)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1215, file: !190, line: 512, baseType: !464, size: 64, offset: 64)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1215, file: !190, line: 513, baseType: !464, size: 64, offset: 128)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1215, file: !190, line: 514, baseType: !464, size: 64, offset: 192)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1215, file: !190, line: 515, baseType: !464, size: 64, offset: 256)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1215, file: !190, line: 516, baseType: !464, size: 64, offset: 320)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1215, file: !190, line: 518, baseType: !464, size: 64, offset: 384)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1215, file: !190, line: 519, baseType: !464, size: 64, offset: 448)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1215, file: !190, line: 520, baseType: !689, size: 64, offset: 512)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1215, file: !190, line: 522, baseType: !464, size: 64, offset: 576)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1215, file: !190, line: 523, baseType: !464, size: 64, offset: 640)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1215, file: !190, line: 524, baseType: !689, size: 64, offset: 704)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1215, file: !190, line: 526, baseType: !689, size: 64, offset: 768)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1215, file: !190, line: 527, baseType: !464, size: 64, offset: 832)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1215, file: !190, line: 529, baseType: !464, size: 64, offset: 896)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1215, file: !190, line: 530, baseType: !464, size: 64, offset: 960)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1215, file: !190, line: 531, baseType: !464, size: 64, offset: 1024)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1215, file: !190, line: 532, baseType: !464, size: 64, offset: 1088)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1215, file: !190, line: 533, baseType: !464, size: 64, offset: 1152)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1215, file: !190, line: 535, baseType: !464, size: 64, offset: 1216)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1215, file: !190, line: 536, baseType: !464, size: 64, offset: 1280)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1215, file: !190, line: 537, baseType: !464, size: 64, offset: 1344)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1215, file: !190, line: 538, baseType: !464, size: 64, offset: 1408)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1215, file: !190, line: 539, baseType: !464, size: 64, offset: 1472)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1215, file: !190, line: 540, baseType: !464, size: 64, offset: 1536)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1215, file: !190, line: 541, baseType: !464, size: 64, offset: 1600)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1215, file: !190, line: 542, baseType: !464, size: 64, offset: 1664)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1215, file: !190, line: 543, baseType: !464, size: 64, offset: 1728)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1007, file: !190, line: 833, baseType: !7, size: 32, offset: 7680)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1007, file: !190, line: 836, baseType: !7, size: 32, offset: 7712)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1007, file: !190, line: 837, baseType: !133, size: 32, offset: 7744)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1007, file: !190, line: 838, baseType: !1249, size: 64, offset: 7808)
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1250 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1251)
!1251 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1252, line: 19, baseType: !1253)
!1252 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1252, line: 19, size: 64, elements: !1254)
!1254 = !{!1255}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1253, file: !1252, line: 19, baseType: !1256, size: 64)
!1256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, size: 64, elements: !1257)
!1257 = !{!1258}
!1258 = !DISubrange(count: 1)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1007, file: !190, line: 839, baseType: !1260, size: 64, offset: 7872)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1007, file: !190, line: 840, baseType: !1251, size: 64, offset: 7936)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1007, file: !190, line: 841, baseType: !117, size: 64, offset: 8000)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1007, file: !190, line: 843, baseType: !283, size: 16, offset: 8064)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1007, file: !190, line: 845, baseType: !283, size: 16, offset: 8080)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1007, file: !190, line: 848, baseType: !133, size: 32, offset: 8096)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1007, file: !190, line: 849, baseType: !1267, size: 32, offset: 8128)
!1267 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !190, line: 718, size: 32, elements: !1268)
!1268 = !{!1269, !1276}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1267, file: !190, line: 724, baseType: !1270, size: 32)
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1267, file: !190, line: 719, size: 32, elements: !1271)
!1271 = !{!1272, !1273, !1274, !1275}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1270, file: !190, line: 720, baseType: !273, size: 8)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1270, file: !190, line: 721, baseType: !273, size: 8, offset: 8)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1270, file: !190, line: 722, baseType: !273, size: 8, offset: 16)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1270, file: !190, line: 723, baseType: !273, size: 8, offset: 24)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1267, file: !190, line: 725, baseType: !135, size: 32)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1007, file: !190, line: 850, baseType: !149, size: 128, offset: 8192)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1007, file: !190, line: 851, baseType: !1279, size: 64, offset: 8320)
!1279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1280, size: 64)
!1280 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !190, line: 60, flags: DIFlagFwdDecl)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1007, file: !190, line: 855, baseType: !363, size: 64, offset: 8384)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1007, file: !190, line: 856, baseType: !273, size: 8, offset: 8448)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1007, file: !190, line: 857, baseType: !273, size: 8, offset: 8456)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1007, file: !190, line: 858, baseType: !133, size: 32, offset: 8480)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1007, file: !190, line: 859, baseType: !149, size: 128, offset: 8512)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1007, file: !190, line: 860, baseType: !133, size: 32, offset: 8640)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1007, file: !190, line: 861, baseType: !149, size: 128, offset: 8704)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1007, file: !190, line: 873, baseType: !1289, size: 256, offset: 8832)
!1289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !190, line: 376, size: 256, elements: !1290)
!1290 = !{!1291, !1292, !1293, !1294}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1289, file: !190, line: 381, baseType: !363, size: 64)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1289, file: !190, line: 384, baseType: !466, size: 64, offset: 64)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1289, file: !190, line: 389, baseType: !466, size: 64, offset: 128)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1289, file: !190, line: 392, baseType: !466, size: 64, offset: 192)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1007, file: !190, line: 875, baseType: !149, size: 128, offset: 9088)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1007, file: !190, line: 877, baseType: !1297, size: 320, offset: 9216)
!1297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1298, line: 86, size: 320, elements: !1299)
!1298 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1299 = !{!1300, !1301, !1302}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1297, file: !1298, line: 87, baseType: !133, size: 32)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1297, file: !1298, line: 88, baseType: !149, size: 128, offset: 64)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1297, file: !1298, line: 89, baseType: !149, size: 128, offset: 192)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1007, file: !190, line: 878, baseType: !1059, size: 192, align: 64, offset: 9536)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1007, file: !190, line: 881, baseType: !1305, size: 64, offset: 9728)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !38, line: 733, size: 10240, elements: !1307)
!1307 = !{!1308, !2211}
!1308 = !DIDerivedType(tag: DW_TAG_member, scope: !1306, file: !38, line: 734, baseType: !1309, size: 10240)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1306, file: !38, line: 734, size: 10240, elements: !1310)
!1310 = !{!1311, !1315, !1328, !2075, !2076, !2077, !2078, !2079, !2080, !2087, !2088, !2089, !2095, !2096, !2097, !2098, !2099, !2100, !2101, !2102, !2103, !2104, !2105, !2106, !2107, !2108, !2109, !2110, !2111, !2112, !2113, !2114, !2115, !2116, !2117, !2118, !2119, !2120, !2121, !2122, !2123, !2124, !2128, !2130, !2133, !2180, !2181, !2182, !2185, !2186, !2187, !2190, !2191, !2192, !2198, !2199}
!1311 = !DIDerivedType(tag: DW_TAG_member, scope: !1309, file: !38, line: 739, baseType: !1312, size: 512, align: 512)
!1312 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1309, file: !38, line: 739, size: 512, align: 512, elements: !1313)
!1313 = !{!1314}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1312, file: !38, line: 747, baseType: !129, size: 32)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1309, file: !38, line: 750, baseType: !1316, size: 128, offset: 512)
!1316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1317, line: 218, size: 128, elements: !1318)
!1317 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1318 = !{!1319, !1326, !1327}
!1319 = !DIDerivedType(tag: DW_TAG_member, scope: !1316, file: !1317, line: 219, baseType: !1320, size: 32)
!1320 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1316, file: !1317, line: 219, size: 32, elements: !1321)
!1321 = !{!1322, !1323}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1320, file: !1317, line: 220, baseType: !249, size: 32)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1320, file: !1317, line: 221, baseType: !1324)
!1324 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1317, line: 197, baseType: !1325)
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1317, line: 197, elements: !586)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1316, file: !1317, line: 223, baseType: !7, size: 32, offset: 32)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1316, file: !1317, line: 224, baseType: !117, size: 64, offset: 64)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1309, file: !38, line: 752, baseType: !1329, size: 64, offset: 640)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = !DISubroutineType(types: !1331)
!1331 = !{!363, !1332, !363, !363, !363, !363}
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !1334)
!1334 = !{!1335, !1341, !1342, !1344, !1345, !1346, !1347, !1348, !1400, !1595, !1604, !1605, !1606, !2065, !2066, !2067, !2068, !2070, !2071, !2074}
!1335 = !DIDerivedType(tag: DW_TAG_member, scope: !1333, file: !14, line: 995, baseType: !1336, size: 128)
!1336 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1333, file: !14, line: 995, size: 128, elements: !1337)
!1337 = !{!1338, !1339, !1340}
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1336, file: !14, line: 996, baseType: !1028, size: 64)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1336, file: !14, line: 997, baseType: !991, size: 128, align: 64)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1336, file: !14, line: 998, baseType: !7, size: 32)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1333, file: !14, line: 1005, baseType: !249, size: 32, offset: 128)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1333, file: !14, line: 1006, baseType: !1343, size: 32, offset: 160)
!1343 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !119, line: 156, baseType: !7)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1333, file: !14, line: 1007, baseType: !683, size: 64, offset: 192)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1333, file: !14, line: 1008, baseType: !679, size: 256, offset: 256)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1333, file: !14, line: 1009, baseType: !552, size: 64, offset: 512)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1333, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1333, file: !14, line: 1011, baseType: !1349, size: 256, offset: 640)
!1349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !1350)
!1350 = !{!1351, !1372, !1396, !1397, !1398, !1399}
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1349, file: !14, line: 949, baseType: !1352, size: 64)
!1352 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1353, line: 34, baseType: !1354)
!1353 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1354 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1353, line: 25, size: 64, elements: !1355)
!1355 = !{!1356}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1354, file: !1353, line: 26, baseType: !1357, size: 64)
!1357 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1358, line: 27, baseType: !1359)
!1358 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1358, line: 13, size: 64, elements: !1360)
!1360 = !{!1361, !1371}
!1361 = !DIDerivedType(tag: DW_TAG_member, scope: !1359, file: !1358, line: 14, baseType: !1362, size: 32)
!1362 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1359, file: !1358, line: 14, size: 32, elements: !1363)
!1363 = !{!1364, !1365}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1362, file: !1358, line: 15, baseType: !129, size: 32)
!1365 = !DIDerivedType(tag: DW_TAG_member, scope: !1362, file: !1358, line: 16, baseType: !1366, size: 32)
!1366 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1362, file: !1358, line: 16, size: 32, elements: !1367)
!1367 = !{!1368, !1369}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1366, file: !1358, line: 18, baseType: !273, size: 8)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1366, file: !1358, line: 19, baseType: !1370, size: 24, offset: 8)
!1370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !273, size: 24, elements: !314)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1359, file: !1358, line: 26, baseType: !261, size: 32, offset: 32)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1349, file: !14, line: 950, baseType: !1373, size: 64, offset: 64)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !30, line: 59, size: 768, elements: !1375)
!1375 = !{!1376, !1377, !1378, !1379, !1383, !1384, !1385, !1386}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1374, file: !30, line: 61, baseType: !125, size: 32)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1374, file: !30, line: 62, baseType: !7, size: 32, offset: 32)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1374, file: !30, line: 63, baseType: !249, size: 32, offset: 64)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1374, file: !30, line: 65, baseType: !1380, size: 256, offset: 128)
!1380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !211, size: 256, elements: !1381)
!1381 = !{!1382}
!1382 = !DISubrange(count: 4)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1374, file: !30, line: 66, baseType: !211, size: 64, offset: 384)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1374, file: !30, line: 68, baseType: !984, size: 192, offset: 448)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1374, file: !30, line: 69, baseType: !991, size: 128, align: 64, offset: 640)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1374, file: !30, line: 70, baseType: !1387, offset: 768)
!1387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1388, elements: !1394)
!1388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !30, line: 54, size: 128, elements: !1389)
!1389 = !{!1390, !1391}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1388, file: !30, line: 55, baseType: !133, size: 32)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1388, file: !30, line: 56, baseType: !1392, size: 64, offset: 64)
!1392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1393, size: 64)
!1393 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !30, line: 56, flags: DIFlagFwdDecl)
!1394 = !{!1395}
!1395 = !DISubrange(count: -1)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1349, file: !14, line: 951, baseType: !29, size: 32, offset: 128)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1349, file: !14, line: 952, baseType: !399, size: 32, offset: 160)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1349, file: !14, line: 952, baseType: !399, size: 32, offset: 192)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1349, file: !14, line: 953, baseType: !133, size: 32, offset: 224)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1333, file: !14, line: 1012, baseType: !1401, size: 64, offset: 896)
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64)
!1402 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1403)
!1403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1404, line: 110, size: 1472, elements: !1405)
!1404 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1405 = !{!1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1422, !1423, !1424, !1425, !1426, !1427, !1540, !1541, !1542, !1543, !1544, !1575, !1578, !1582, !1590}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1403, file: !1404, line: 111, baseType: !683, size: 64)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1403, file: !1404, line: 112, baseType: !399, size: 32, offset: 64)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1403, file: !1404, line: 113, baseType: !408, size: 32, offset: 96)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1403, file: !1404, line: 114, baseType: !399, size: 32, offset: 128)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1403, file: !1404, line: 115, baseType: !408, size: 32, offset: 160)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1403, file: !1404, line: 116, baseType: !399, size: 32, offset: 192)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1403, file: !1404, line: 117, baseType: !408, size: 32, offset: 224)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1403, file: !1404, line: 118, baseType: !399, size: 32, offset: 256)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1403, file: !1404, line: 119, baseType: !408, size: 32, offset: 288)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1403, file: !1404, line: 120, baseType: !7, size: 32, offset: 320)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1403, file: !1404, line: 121, baseType: !1417, size: 64, offset: 384)
!1417 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1418, line: 24, baseType: !1419)
!1418 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1419 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1418, line: 24, size: 64, elements: !1420)
!1420 = !{!1421}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1419, file: !1418, line: 24, baseType: !464, size: 64)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1403, file: !1404, line: 122, baseType: !1417, size: 64, offset: 448)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1403, file: !1404, line: 123, baseType: !1417, size: 64, offset: 512)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1403, file: !1404, line: 124, baseType: !1417, size: 64, offset: 576)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1403, file: !1404, line: 125, baseType: !1417, size: 64, offset: 640)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1403, file: !1404, line: 127, baseType: !275, size: 8, offset: 704)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1403, file: !1404, line: 129, baseType: !1428, size: 64, offset: 768)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1430, line: 195, size: 1728, elements: !1431)
!1430 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1431 = !{!1432, !1433, !1438, !1443, !1444, !1447, !1448, !1453, !1454, !1455, !1456, !1459, !1460, !1461, !1463, !1464, !1504, !1525}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1429, file: !1430, line: 196, baseType: !125, size: 32)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1429, file: !1430, line: 197, baseType: !1434, size: 32, offset: 32)
!1434 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1430, line: 28, baseType: !1435)
!1435 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !119, line: 104, baseType: !1436)
!1436 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !136, line: 20, baseType: !1437)
!1437 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !138, line: 26, baseType: !133)
!1438 = !DIDerivedType(tag: DW_TAG_member, scope: !1429, file: !1430, line: 198, baseType: !1439, size: 192, offset: 64)
!1439 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1429, file: !1430, line: 198, size: 192, elements: !1440)
!1440 = !{!1441, !1442}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1439, file: !1430, line: 199, baseType: !149, size: 128)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1439, file: !1430, line: 200, baseType: !1059, size: 192, align: 64)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1429, file: !1430, line: 205, baseType: !891, size: 320, offset: 256)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1429, file: !1430, line: 206, baseType: !1445, size: 64, offset: 576)
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1446, size: 64)
!1446 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1430, line: 206, flags: DIFlagFwdDecl)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1429, file: !1430, line: 207, baseType: !117, size: 64, offset: 640)
!1448 = !DIDerivedType(tag: DW_TAG_member, scope: !1429, file: !1430, line: 208, baseType: !1449, size: 64, offset: 704)
!1449 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1429, file: !1430, line: 208, size: 64, elements: !1450)
!1450 = !{!1451, !1452}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1449, file: !1430, line: 209, baseType: !732, size: 64)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1449, file: !1430, line: 210, baseType: !732, size: 64)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1429, file: !1430, line: 212, baseType: !732, size: 64, offset: 768)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1429, file: !1430, line: 213, baseType: !399, size: 32, offset: 832)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1429, file: !1430, line: 214, baseType: !408, size: 32, offset: 864)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1429, file: !1430, line: 215, baseType: !1457, size: 32, offset: 896)
!1457 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1430, line: 31, baseType: !1458)
!1458 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !119, line: 110, baseType: !135)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1429, file: !1430, line: 216, baseType: !283, size: 16, offset: 928)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1429, file: !1430, line: 217, baseType: !283, size: 16, offset: 944)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1429, file: !1430, line: 221, baseType: !1462, size: 16, offset: 960)
!1462 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1429, file: !1430, line: 228, baseType: !363, size: 64, offset: 1024)
!1464 = !DIDerivedType(tag: DW_TAG_member, scope: !1429, file: !1430, line: 245, baseType: !1465, size: 320, offset: 1088)
!1465 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1429, file: !1430, line: 245, size: 320, elements: !1466)
!1466 = !{!1467, !1496}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1465, file: !1430, line: 246, baseType: !1468, size: 320)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1430, line: 114, size: 320, elements: !1469)
!1469 = !{!1470, !1471, !1483, !1486, !1495}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1468, file: !1430, line: 116, baseType: !363, size: 64)
!1471 = !DIDerivedType(tag: DW_TAG_member, scope: !1468, file: !1430, line: 117, baseType: !1472, size: 64, offset: 64)
!1472 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1468, file: !1430, line: 117, size: 64, elements: !1473)
!1473 = !{!1474, !1482}
!1474 = !DIDerivedType(tag: DW_TAG_member, scope: !1472, file: !1430, line: 118, baseType: !1475, size: 64)
!1475 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1472, file: !1430, line: 118, size: 64, elements: !1476)
!1476 = !{!1477, !1478}
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1475, file: !1430, line: 120, baseType: !281, size: 16)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1475, file: !1430, line: 121, baseType: !1479, size: 48, offset: 16)
!1479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 48, elements: !1480)
!1480 = !{!1481}
!1481 = !DISubrange(count: 6)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1472, file: !1430, line: 127, baseType: !363, size: 64)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1468, file: !1430, line: 129, baseType: !1484, size: 64, offset: 128)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1430, line: 102, flags: DIFlagFwdDecl)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1468, file: !1430, line: 130, baseType: !1487, size: 64, offset: 192)
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1430, line: 108, size: 192, elements: !1489)
!1489 = !{!1490, !1491, !1492}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1488, file: !1430, line: 109, baseType: !991, size: 128, align: 64)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1488, file: !1430, line: 110, baseType: !125, size: 32, offset: 128)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1488, file: !1430, line: 111, baseType: !1493, size: 8, offset: 160)
!1493 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !119, line: 35, baseType: !1494)
!1494 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1468, file: !1430, line: 131, baseType: !238, size: 64, offset: 256)
!1496 = !DIDerivedType(tag: DW_TAG_member, scope: !1465, file: !1430, line: 247, baseType: !1497, size: 320)
!1497 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1465, file: !1430, line: 247, size: 320, elements: !1498)
!1498 = !{!1499, !1500, !1501, !1502, !1503}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1497, file: !1430, line: 248, baseType: !363, size: 64)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1497, file: !1430, line: 249, baseType: !363, size: 64, offset: 64)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1497, file: !1430, line: 250, baseType: !1484, size: 64, offset: 128)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1497, file: !1430, line: 251, baseType: !1487, size: 64, offset: 192)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1497, file: !1430, line: 252, baseType: !313, size: 64, offset: 256)
!1504 = !DIDerivedType(tag: DW_TAG_member, scope: !1429, file: !1430, line: 260, baseType: !1505, size: 256, offset: 1408)
!1505 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1429, file: !1430, line: 260, size: 256, elements: !1506)
!1506 = !{!1507, !1513}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1505, file: !1430, line: 261, baseType: !1508, size: 256)
!1508 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1430, line: 134, size: 256, elements: !1509)
!1509 = !{!1510, !1511}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1508, file: !1430, line: 135, baseType: !117, size: 64)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1508, file: !1430, line: 136, baseType: !1512, size: 256)
!1512 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 256, elements: !1381)
!1513 = !DIDerivedType(tag: DW_TAG_member, scope: !1505, file: !1430, line: 262, baseType: !1514, size: 256)
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1505, file: !1430, line: 262, size: 256, elements: !1515)
!1515 = !{!1516, !1517}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1514, file: !1430, line: 264, baseType: !149, size: 128)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1514, file: !1430, line: 265, baseType: !1518, size: 128, offset: 128)
!1518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1519, line: 22, size: 128, elements: !1520)
!1519 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1520 = !{!1521, !1524}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1518, file: !1519, line: 23, baseType: !1522, size: 64)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1519, line: 23, flags: DIFlagFwdDecl)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1518, file: !1519, line: 24, baseType: !363, size: 64, offset: 64)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1429, file: !1430, line: 280, baseType: !1526, size: 64, offset: 1664)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1430, line: 176, size: 192, elements: !1528)
!1528 = !{!1529, !1538, !1539}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1527, file: !1430, line: 177, baseType: !1530, size: 64)
!1530 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1430, line: 171, baseType: !1531)
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = !DISubroutineType(types: !1533)
!1533 = !{!133, !1428, !1534, !1536, !1428}
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1535 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1485)
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1508)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1527, file: !1430, line: 178, baseType: !1428, size: 64, offset: 64)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1527, file: !1430, line: 179, baseType: !1484, size: 64, offset: 128)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1403, file: !1404, line: 130, baseType: !1428, size: 64, offset: 832)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1403, file: !1404, line: 131, baseType: !1428, size: 64, offset: 896)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1403, file: !1404, line: 132, baseType: !1428, size: 64, offset: 960)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1403, file: !1404, line: 135, baseType: !117, size: 64, offset: 1024)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1403, file: !1404, line: 137, baseType: !1545, size: 64, offset: 1088)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1547, line: 14, size: 1088, elements: !1548)
!1547 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1548 = !{!1549, !1550, !1559, !1560, !1561, !1562, !1563, !1564}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1546, file: !1547, line: 15, baseType: !125, size: 32)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1546, file: !1547, line: 17, baseType: !1551, size: 320, offset: 64)
!1551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1552, line: 22, size: 320, elements: !1553)
!1552 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1553 = !{!1554, !1555, !1556, !1557}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1551, file: !1552, line: 23, baseType: !692, size: 32)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1551, file: !1552, line: 24, baseType: !689, size: 64, offset: 64)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1551, file: !1552, line: 26, baseType: !149, size: 128, offset: 128)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1551, file: !1552, line: 28, baseType: !1558, size: 64, offset: 256)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1546, file: !1547, line: 19, baseType: !363, size: 64, offset: 384)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1546, file: !1547, line: 20, baseType: !683, size: 64, offset: 448)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1546, file: !1547, line: 23, baseType: !215, size: 128, offset: 512)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1546, file: !1547, line: 24, baseType: !399, size: 32, offset: 640)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1546, file: !1547, line: 29, baseType: !683, size: 64, offset: 704)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1546, file: !1547, line: 36, baseType: !1565, size: 320, offset: 768)
!1565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1566, line: 15, size: 320, elements: !1567)
!1566 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1567 = !{!1568, !1569, !1570, !1571, !1572, !1573, !1574}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1565, file: !1566, line: 16, baseType: !692, size: 32)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1565, file: !1566, line: 18, baseType: !133, size: 32, offset: 32)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1565, file: !1566, line: 19, baseType: !133, size: 32, offset: 64)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1565, file: !1566, line: 20, baseType: !133, size: 32, offset: 96)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1565, file: !1566, line: 21, baseType: !133, size: 32, offset: 128)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1565, file: !1566, line: 22, baseType: !363, size: 64, offset: 192)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1565, file: !1566, line: 23, baseType: !363, size: 64, offset: 256)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1403, file: !1404, line: 138, baseType: !1576, size: 64, offset: 1152)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !38, line: 901, flags: DIFlagFwdDecl)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1403, file: !1404, line: 139, baseType: !1579, size: 64, offset: 1216)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1581, line: 16, flags: DIFlagFwdDecl)
!1581 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1403, file: !1404, line: 140, baseType: !1583, size: 64, offset: 1280)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1404, line: 25, size: 64, elements: !1585)
!1585 = !{!1586, !1587, !1588}
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1584, file: !1404, line: 26, baseType: !129, size: 32)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1584, file: !1404, line: 27, baseType: !133, size: 32, offset: 32)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1584, file: !1404, line: 28, baseType: !1589, offset: 64)
!1589 = !DICompositeType(tag: DW_TAG_array_type, baseType: !408, elements: !1394)
!1590 = !DIDerivedType(tag: DW_TAG_member, scope: !1403, file: !1404, line: 142, baseType: !1591, size: 128, offset: 1344)
!1591 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1403, file: !1404, line: 142, size: 128, elements: !1592)
!1592 = !{!1593, !1594}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1591, file: !1404, line: 143, baseType: !133, size: 32)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1591, file: !1404, line: 144, baseType: !991, size: 128, align: 64)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1333, file: !14, line: 1013, baseType: !1596, size: 256, offset: 960)
!1596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !1597)
!1597 = !{!1598, !1599, !1600, !1601, !1602, !1603}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1596, file: !14, line: 971, baseType: !363, size: 64)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1596, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1596, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1596, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1596, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1596, file: !14, line: 976, baseType: !552, size: 64, offset: 192)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1333, file: !14, line: 1014, baseType: !803, size: 128, offset: 1216)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1333, file: !14, line: 1015, baseType: !393, size: 64, offset: 1344)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1333, file: !14, line: 1016, baseType: !1607, size: 64, offset: 1408)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1609)
!1609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !1610)
!1610 = !{!1611, !1612, !1616, !1621, !1625, !1653, !1654, !1660, !1673, !1681, !1685, !1686, !1987, !1988, !1992, !1997, !1998, !2002, !2006, !2012, !2013, !2017, !2018, !2024, !2028, !2032, !2038, !2042, !2046, !2050, !2054, !2055, !2061}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1609, file: !14, line: 1915, baseType: !221, size: 64)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1609, file: !14, line: 1916, baseType: !1613, size: 64, offset: 64)
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1614 = !DISubroutineType(types: !1615)
!1615 = !{!552, !1332, !552, !133}
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1609, file: !14, line: 1917, baseType: !1617, size: 64, offset: 128)
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = !DISubroutineType(types: !1619)
!1619 = !{!345, !1332, !313, !360, !1620}
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1609, file: !14, line: 1918, baseType: !1622, size: 64, offset: 192)
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1623 = !DISubroutineType(types: !1624)
!1624 = !{!345, !1332, !238, !360, !1620}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1609, file: !14, line: 1919, baseType: !1626, size: 64, offset: 256)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = !DISubroutineType(types: !1628)
!1628 = !{!345, !1629, !1651}
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !1631)
!1631 = !{!1632, !1633, !1634, !1638, !1639, !1640, !1641}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1630, file: !14, line: 374, baseType: !1332, size: 64)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1630, file: !14, line: 375, baseType: !552, size: 64, offset: 64)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1630, file: !14, line: 376, baseType: !1635, size: 64, offset: 128)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DISubroutineType(types: !1637)
!1637 = !{null, !1629, !349}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1630, file: !14, line: 377, baseType: !117, size: 64, offset: 192)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1630, file: !14, line: 378, baseType: !133, size: 32, offset: 256)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1630, file: !14, line: 379, baseType: !281, size: 16, offset: 288)
!1641 = !DIDerivedType(tag: DW_TAG_member, scope: !1630, file: !14, line: 380, baseType: !1642, size: 64, offset: 320)
!1642 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1630, file: !14, line: 380, size: 64, elements: !1643)
!1643 = !{!1644, !1647}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1642, file: !14, line: 386, baseType: !1645, size: 64)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !14, line: 386, flags: DIFlagFwdDecl)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1642, file: !14, line: 395, baseType: !1648, size: 64)
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64)
!1649 = !DISubroutineType(types: !1650)
!1650 = !{!345, !117}
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !14, line: 69, flags: DIFlagFwdDecl)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1609, file: !14, line: 1920, baseType: !1626, size: 64, offset: 320)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1609, file: !14, line: 1921, baseType: !1655, size: 64, offset: 384)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = !DISubroutineType(types: !1657)
!1657 = !{!133, !1629, !1658, !7}
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !14, line: 53, flags: DIFlagFwdDecl)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1609, file: !14, line: 1923, baseType: !1661, size: 64, offset: 448)
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1662, size: 64)
!1662 = !DISubroutineType(types: !1663)
!1663 = !{!133, !1332, !1664}
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !1666)
!1666 = !{!1667, !1672}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1665, file: !14, line: 1859, baseType: !1668, size: 64)
!1668 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !1669)
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = !DISubroutineType(types: !1671)
!1671 = !{!1493, !1664, !238, !133, !552, !464, !7}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1665, file: !14, line: 1860, baseType: !552, size: 64, offset: 64)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1609, file: !14, line: 1924, baseType: !1674, size: 64, offset: 512)
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = !DISubroutineType(types: !1676)
!1676 = !{!1677, !1332, !1679}
!1677 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1678, line: 59, baseType: !7)
!1678 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64)
!1680 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !567, line: 31, flags: DIFlagFwdDecl)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1609, file: !14, line: 1925, baseType: !1682, size: 64, offset: 576)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = !DISubroutineType(types: !1684)
!1684 = !{!349, !1332, !7, !363}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1609, file: !14, line: 1926, baseType: !1682, size: 64, offset: 640)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1609, file: !14, line: 1927, baseType: !1687, size: 64, offset: 704)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1688 = !DISubroutineType(types: !1689)
!1689 = !{!133, !1332, !1690}
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !38, line: 625, size: 1344, elements: !1692)
!1692 = !{!1693, !1702, !1703, !1711, !1718, !1719, !1724, !1725, !1730, !1731, !1734, !1980, !1981, !1982, !1983, !1984, !1985}
!1693 = !DIDerivedType(tag: DW_TAG_member, scope: !1691, file: !38, line: 628, baseType: !1694, size: 128)
!1694 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1691, file: !38, line: 628, size: 128, elements: !1695)
!1695 = !{!1696, !1701}
!1696 = !DIDerivedType(tag: DW_TAG_member, scope: !1694, file: !38, line: 629, baseType: !1697, size: 128)
!1697 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1694, file: !38, line: 629, size: 128, elements: !1698)
!1698 = !{!1699, !1700}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1697, file: !38, line: 631, baseType: !363, size: 64)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1697, file: !38, line: 632, baseType: !363, size: 64, offset: 64)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1694, file: !38, line: 635, baseType: !991, size: 128, align: 64)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1691, file: !38, line: 639, baseType: !1305, size: 64, offset: 128)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1691, file: !38, line: 640, baseType: !1704, size: 64, offset: 192)
!1704 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1705, line: 297, baseType: !1706)
!1705 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1705, line: 297, size: 64, elements: !1707)
!1707 = !{!1708}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1706, file: !1705, line: 297, baseType: !1709, size: 64)
!1709 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1710, line: 19, baseType: !363)
!1710 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1711 = !DIDerivedType(tag: DW_TAG_member, scope: !1691, file: !38, line: 646, baseType: !1712, size: 64, offset: 256)
!1712 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1691, file: !38, line: 646, size: 64, elements: !1713)
!1713 = !{!1714, !1717}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1712, file: !38, line: 647, baseType: !1715, size: 64)
!1715 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1716)
!1716 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !38, line: 542, baseType: !363)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1712, file: !38, line: 648, baseType: !1716, size: 64)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1691, file: !38, line: 666, baseType: !133, size: 32, offset: 320)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1691, file: !38, line: 667, baseType: !1720, size: 64, offset: 384)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !38, line: 579, size: 320, elements: !1722)
!1722 = !{!1723}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1721, file: !38, line: 580, baseType: !891, size: 320)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1691, file: !38, line: 670, baseType: !1493, size: 8, offset: 448)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1691, file: !38, line: 681, baseType: !1726, size: 256, offset: 512)
!1726 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1691, file: !38, line: 678, size: 256, elements: !1727)
!1727 = !{!1728, !1729}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1726, file: !38, line: 679, baseType: !1059, size: 192, align: 64)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1726, file: !38, line: 680, baseType: !363, size: 64, offset: 192)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1691, file: !38, line: 689, baseType: !149, size: 128, offset: 768)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1691, file: !38, line: 691, baseType: !1732, size: 64, offset: 896)
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1733, size: 64)
!1733 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !38, line: 691, flags: DIFlagFwdDecl)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1691, file: !38, line: 694, baseType: !1735, size: 64, offset: 960)
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!1736 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1737)
!1737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1738, line: 563, size: 1024, elements: !1739)
!1738 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1739 = !{!1740, !1744, !1745, !1749, !1753, !1757, !1944, !1948, !1952, !1956, !1957, !1958, !1962, !1966, !1972, !1976}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1737, file: !1738, line: 564, baseType: !1741, size: 64)
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1742 = !DISubroutineType(types: !1743)
!1743 = !{null, !1690}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1737, file: !1738, line: 569, baseType: !1741, size: 64, offset: 64)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1737, file: !1738, line: 571, baseType: !1746, size: 64, offset: 128)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = !DISubroutineType(types: !1748)
!1748 = !{!133, !1690, !363}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1737, file: !1738, line: 572, baseType: !1750, size: 64, offset: 192)
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1751 = !DISubroutineType(types: !1752)
!1752 = !{!133, !1690}
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1737, file: !1738, line: 578, baseType: !1754, size: 64, offset: 256)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = !DISubroutineType(types: !1756)
!1756 = !{!133, !1690, !363, !363, !363}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1737, file: !1738, line: 580, baseType: !1758, size: 64, offset: 320)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1759 = !DISubroutineType(types: !1760)
!1760 = !{!1761, !1762}
!1761 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !38, line: 1184, baseType: !7)
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1738, line: 512, size: 896, elements: !1764)
!1764 = !{!1765, !1773, !1774, !1781, !1788, !1798, !1937, !1938, !1940, !1942}
!1765 = !DIDerivedType(tag: DW_TAG_member, scope: !1763, file: !1738, line: 513, baseType: !1766, size: 320)
!1766 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1763, file: !1738, line: 513, size: 320, elements: !1767)
!1767 = !{!1768, !1769, !1770, !1771, !1772}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1766, file: !1738, line: 514, baseType: !1690, size: 64)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1766, file: !1738, line: 515, baseType: !118, size: 32, offset: 64)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1766, file: !1738, line: 516, baseType: !363, size: 64, offset: 128)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1766, file: !1738, line: 517, baseType: !363, size: 64, offset: 192)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1766, file: !1738, line: 518, baseType: !363, size: 64, offset: 256)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1763, file: !1738, line: 520, baseType: !37, size: 32, offset: 320)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1763, file: !1738, line: 522, baseType: !1775, size: 64, offset: 384)
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1776, size: 64)
!1776 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1710, line: 22, baseType: !1777)
!1777 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1710, line: 22, size: 64, elements: !1778)
!1778 = !{!1779}
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1777, file: !1710, line: 22, baseType: !1780, size: 64)
!1780 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1710, line: 15, baseType: !363)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1763, file: !1738, line: 524, baseType: !1782, size: 64, offset: 448)
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64)
!1783 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1705, line: 372, baseType: !1784)
!1784 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1705, line: 372, size: 64, elements: !1785)
!1785 = !{!1786}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1784, file: !1705, line: 372, baseType: !1787, size: 64)
!1787 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1710, line: 16, baseType: !363)
!1788 = !DIDerivedType(tag: DW_TAG_member, scope: !1763, file: !1738, line: 527, baseType: !1789, size: 64, offset: 512)
!1789 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1763, file: !1738, line: 527, size: 64, elements: !1790)
!1790 = !{!1791, !1797}
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1789, file: !1738, line: 528, baseType: !1792, size: 64)
!1792 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1710, line: 21, baseType: !1793)
!1793 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1710, line: 21, size: 64, elements: !1794)
!1794 = !{!1795}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1793, file: !1710, line: 21, baseType: !1796, size: 64)
!1796 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1710, line: 14, baseType: !363)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1789, file: !1738, line: 529, baseType: !1776, size: 64)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1763, file: !1738, line: 534, baseType: !1799, size: 64, offset: 576)
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64)
!1800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !38, line: 74, size: 512, align: 128, elements: !1801)
!1801 = !{!1802, !1803, !1931, !1936}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1800, file: !38, line: 75, baseType: !363, size: 64)
!1803 = !DIDerivedType(tag: DW_TAG_member, scope: !1800, file: !38, line: 83, baseType: !1804, size: 320, offset: 64)
!1804 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1800, file: !38, line: 83, size: 320, elements: !1805)
!1805 = !{!1806, !1827, !1841, !1845, !1930}
!1806 = !DIDerivedType(tag: DW_TAG_member, scope: !1804, file: !38, line: 84, baseType: !1807, size: 320)
!1807 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1804, file: !38, line: 84, size: 320, elements: !1808)
!1808 = !{!1809, !1820, !1821, !1826}
!1809 = !DIDerivedType(tag: DW_TAG_member, scope: !1807, file: !38, line: 90, baseType: !1810, size: 128)
!1810 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1807, file: !38, line: 90, size: 128, elements: !1811)
!1811 = !{!1812, !1813, !1818, !1819}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1810, file: !38, line: 91, baseType: !149, size: 128)
!1813 = !DIDerivedType(tag: DW_TAG_member, scope: !1810, file: !38, line: 94, baseType: !1814, size: 128)
!1814 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1810, file: !38, line: 94, size: 128, elements: !1815)
!1815 = !{!1816, !1817}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1814, file: !38, line: 96, baseType: !117, size: 64)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1814, file: !38, line: 98, baseType: !7, size: 32, offset: 64)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1810, file: !38, line: 102, baseType: !149, size: 128)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1810, file: !38, line: 103, baseType: !149, size: 128)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1807, file: !38, line: 106, baseType: !389, size: 64, offset: 128)
!1821 = !DIDerivedType(tag: DW_TAG_member, scope: !1807, file: !38, line: 107, baseType: !1822, size: 64, offset: 192)
!1822 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1807, file: !38, line: 107, size: 64, elements: !1823)
!1823 = !{!1824, !1825}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1822, file: !38, line: 108, baseType: !363, size: 64)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1822, file: !38, line: 109, baseType: !363, size: 64)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1807, file: !38, line: 117, baseType: !363, size: 64, offset: 256)
!1827 = !DIDerivedType(tag: DW_TAG_member, scope: !1804, file: !38, line: 119, baseType: !1828, size: 320)
!1828 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1804, file: !38, line: 119, size: 320, elements: !1829)
!1829 = !{!1830, !1831, !1834, !1835, !1836}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1828, file: !38, line: 124, baseType: !363, size: 64)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1828, file: !38, line: 125, baseType: !1832, size: 64, offset: 64)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !38, line: 125, flags: DIFlagFwdDecl)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1828, file: !38, line: 126, baseType: !363, size: 64, offset: 128)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1828, file: !38, line: 127, baseType: !363, size: 64, offset: 192)
!1836 = !DIDerivedType(tag: DW_TAG_member, scope: !1828, file: !38, line: 128, baseType: !1837, size: 64, offset: 256)
!1837 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1828, file: !38, line: 128, size: 64, elements: !1838)
!1838 = !{!1839, !1840}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1837, file: !38, line: 133, baseType: !363, size: 64)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1837, file: !38, line: 138, baseType: !683, size: 64)
!1841 = !DIDerivedType(tag: DW_TAG_member, scope: !1804, file: !38, line: 141, baseType: !1842, size: 64)
!1842 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1804, file: !38, line: 141, size: 64, elements: !1843)
!1843 = !{!1844}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1842, file: !38, line: 142, baseType: !363, size: 64)
!1845 = !DIDerivedType(tag: DW_TAG_member, scope: !1804, file: !38, line: 144, baseType: !1846, size: 128)
!1846 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1804, file: !38, line: 144, size: 128, elements: !1847)
!1847 = !{!1848, !1929}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1846, file: !38, line: 146, baseType: !1849, size: 64)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !54, line: 126, size: 1216, elements: !1851)
!1851 = !{!1852, !1862, !1883, !1894, !1895, !1896, !1897, !1911, !1912, !1913}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1850, file: !54, line: 127, baseType: !1853, size: 384)
!1853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !54, line: 21, size: 384, elements: !1854)
!1854 = !{!1855, !1856, !1858, !1859, !1860, !1861}
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1853, file: !54, line: 22, baseType: !363, size: 64)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1853, file: !54, line: 23, baseType: !1857, size: 64, offset: 64)
!1857 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !363)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1853, file: !54, line: 24, baseType: !1857, size: 64, offset: 128)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1853, file: !54, line: 25, baseType: !363, size: 64, offset: 192)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1853, file: !54, line: 26, baseType: !363, size: 64, offset: 256)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1853, file: !54, line: 27, baseType: !363, size: 64, offset: 320)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1850, file: !54, line: 128, baseType: !1863, size: 128, offset: 384)
!1863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1864, line: 105, size: 128, elements: !1865)
!1864 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1865 = !{!1866, !1867}
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1863, file: !1864, line: 110, baseType: !363, size: 64)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1863, file: !1864, line: 118, baseType: !1868, size: 64, offset: 64)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1864, line: 95, size: 448, elements: !1870)
!1870 = !{!1871, !1872, !1878, !1879, !1880, !1881, !1882}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1869, file: !1864, line: 96, baseType: !683, size: 64)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1869, file: !1864, line: 97, baseType: !1873, size: 64, offset: 64)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1864, line: 60, baseType: !1875)
!1875 = !DISubroutineType(types: !1876)
!1876 = !{null, !1877}
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1863, size: 64)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1869, file: !1864, line: 98, baseType: !1873, size: 64, offset: 128)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1869, file: !1864, line: 99, baseType: !1493, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1869, file: !1864, line: 100, baseType: !1493, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1869, file: !1864, line: 101, baseType: !991, size: 128, align: 64, offset: 256)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1869, file: !1864, line: 102, baseType: !1877, size: 64, offset: 384)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1850, file: !54, line: 129, baseType: !1884, size: 256, offset: 512)
!1884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1885, line: 26, size: 256, elements: !1886)
!1885 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1886 = !{!1887, !1888}
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1884, file: !1885, line: 27, baseType: !7, size: 32)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1884, file: !1885, line: 28, baseType: !1889, size: 192, offset: 64)
!1889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1890, line: 43, size: 192, elements: !1891)
!1890 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1891 = !{!1892, !1893}
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1889, file: !1890, line: 44, baseType: !692, size: 32)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1889, file: !1890, line: 45, baseType: !149, size: 128, offset: 64)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1850, file: !54, line: 130, baseType: !53, size: 32, offset: 768)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1850, file: !54, line: 131, baseType: !7, size: 32, offset: 800)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1850, file: !54, line: 132, baseType: !363, size: 64, offset: 832)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1850, file: !54, line: 133, baseType: !1898, size: 64, offset: 896)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1900)
!1900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !54, line: 77, size: 192, elements: !1901)
!1901 = !{!1902, !1906, !1907}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1900, file: !54, line: 83, baseType: !1903, size: 64)
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1904 = !DISubroutineType(types: !1905)
!1905 = !{null, !1799}
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1900, file: !54, line: 89, baseType: !1758, size: 64, offset: 64)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1900, file: !54, line: 100, baseType: !1908, size: 64, offset: 128)
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = !DISubroutineType(types: !1910)
!1910 = !{!133, !1849, !363, !363, !133}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1850, file: !54, line: 134, baseType: !117, size: 64, offset: 960)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1850, file: !54, line: 135, baseType: !133, size: 32, offset: 1024)
!1913 = !DIDerivedType(tag: DW_TAG_member, scope: !1850, file: !54, line: 136, baseType: !1914, size: 128, offset: 1088)
!1914 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1850, file: !54, line: 136, size: 128, elements: !1915)
!1915 = !{!1916, !1922}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1914, file: !54, line: 137, baseType: !1917, size: 128)
!1917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1918, line: 6, size: 128, elements: !1919)
!1918 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1919 = !{!1920, !1921}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1917, file: !1918, line: 7, baseType: !464, size: 64)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1917, file: !1918, line: 8, baseType: !464, size: 64, offset: 64)
!1922 = !DIDerivedType(tag: DW_TAG_member, scope: !1914, file: !54, line: 138, baseType: !1923)
!1923 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1914, file: !54, line: 138, elements: !1924)
!1924 = !{!1925, !1927}
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1923, file: !54, line: 138, baseType: !1926)
!1926 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1923, file: !54, line: 138, elements: !586)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1923, file: !54, line: 138, baseType: !1928)
!1928 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1917, elements: !1394)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1846, file: !38, line: 147, baseType: !117, size: 64, offset: 64)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1804, file: !38, line: 161, baseType: !991, size: 128, align: 64)
!1931 = !DIDerivedType(tag: DW_TAG_member, scope: !1800, file: !38, line: 164, baseType: !1932, size: 32, offset: 384)
!1932 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1800, file: !38, line: 164, size: 32, elements: !1933)
!1933 = !{!1934, !1935}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1932, file: !38, line: 169, baseType: !129, size: 32)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1932, file: !38, line: 177, baseType: !7, size: 32)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1800, file: !38, line: 181, baseType: !129, size: 32, offset: 416)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1763, file: !1738, line: 535, baseType: !1799, size: 64, offset: 640)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1763, file: !1738, line: 541, baseType: !1939, size: 64, offset: 704)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1763, file: !1738, line: 545, baseType: !1941, size: 64, offset: 768)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1763, file: !1738, line: 549, baseType: !1943, size: 64, offset: 832)
!1943 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1705, line: 520, baseType: !1799)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1737, file: !1738, line: 581, baseType: !1945, size: 64, offset: 384)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = !DISubroutineType(types: !1947)
!1947 = !{!1761, !1762, !7}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1737, file: !1738, line: 582, baseType: !1949, size: 64, offset: 448)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = !DISubroutineType(types: !1951)
!1951 = !{!1761, !1762, !363, !363}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1737, file: !1738, line: 584, baseType: !1953, size: 64, offset: 512)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = !DISubroutineType(types: !1955)
!1955 = !{!363, !1690}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1737, file: !1738, line: 588, baseType: !1758, size: 64, offset: 576)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1737, file: !1738, line: 591, baseType: !1758, size: 64, offset: 640)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1737, file: !1738, line: 597, baseType: !1959, size: 64, offset: 704)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = !DISubroutineType(types: !1961)
!1961 = !{!133, !1690, !363, !117, !133, !133}
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1737, file: !1738, line: 603, baseType: !1963, size: 64, offset: 768)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = !DISubroutineType(types: !1965)
!1965 = !{!238, !1690}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1737, file: !1738, line: 613, baseType: !1967, size: 64, offset: 832)
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = !DISubroutineType(types: !1969)
!1969 = !{!133, !1690, !1970}
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1971 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !38, line: 717, flags: DIFlagFwdDecl)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1737, file: !1738, line: 625, baseType: !1973, size: 64, offset: 896)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = !DISubroutineType(types: !1975)
!1975 = !{!1970, !1690, !363}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1737, file: !1738, line: 633, baseType: !1977, size: 64, offset: 960)
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64)
!1978 = !DISubroutineType(types: !1979)
!1979 = !{!1799, !1690, !363}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1691, file: !38, line: 697, baseType: !363, size: 64, offset: 1024)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1691, file: !38, line: 699, baseType: !1332, size: 64, offset: 1088)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1691, file: !38, line: 700, baseType: !117, size: 64, offset: 1152)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1691, file: !38, line: 711, baseType: !683, size: 64, offset: 1216)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1691, file: !38, line: 717, baseType: !1970, size: 64, offset: 1280)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1691, file: !38, line: 722, baseType: !1986, offset: 1344)
!1986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !38, line: 570, elements: !586)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1609, file: !14, line: 1928, baseType: !363, size: 64, offset: 768)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1609, file: !14, line: 1929, baseType: !1989, size: 64, offset: 832)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = !DISubroutineType(types: !1991)
!1991 = !{!133, !393, !1332}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1609, file: !14, line: 1930, baseType: !1993, size: 64, offset: 896)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = !DISubroutineType(types: !1995)
!1995 = !{!133, !1332, !1996}
!1996 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !117)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1609, file: !14, line: 1931, baseType: !1989, size: 64, offset: 960)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1609, file: !14, line: 1932, baseType: !1999, size: 64, offset: 1024)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = !DISubroutineType(types: !2001)
!2001 = !{!133, !1332, !552, !552, !133}
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1609, file: !14, line: 1933, baseType: !2003, size: 64, offset: 1088)
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2004 = !DISubroutineType(types: !2005)
!2005 = !{!133, !133, !1332, !133}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1609, file: !14, line: 1934, baseType: !2007, size: 64, offset: 1152)
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2008, size: 64)
!2008 = !DISubroutineType(types: !2009)
!2009 = !{!133, !1332, !133, !2010}
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1609, file: !14, line: 1935, baseType: !1329, size: 64, offset: 1216)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1609, file: !14, line: 1936, baseType: !2014, size: 64, offset: 1280)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = !DISubroutineType(types: !2016)
!2016 = !{!133, !133}
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1609, file: !14, line: 1937, baseType: !2007, size: 64, offset: 1344)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1609, file: !14, line: 1938, baseType: !2019, size: 64, offset: 1408)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = !DISubroutineType(types: !2021)
!2021 = !{!345, !2022, !1332, !1620, !360, !7}
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!2023 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !190, line: 59, flags: DIFlagFwdDecl)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1609, file: !14, line: 1939, baseType: !2025, size: 64, offset: 1472)
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2026, size: 64)
!2026 = !DISubroutineType(types: !2027)
!2027 = !{!345, !1332, !1620, !2022, !360, !7}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1609, file: !14, line: 1940, baseType: !2029, size: 64, offset: 1536)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = !DISubroutineType(types: !2031)
!2031 = !{null, !1332}
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1609, file: !14, line: 1941, baseType: !2033, size: 64, offset: 1600)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = !DISubroutineType(types: !2035)
!2035 = !{!133, !1332, !133, !2036, !2037}
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1609, file: !14, line: 1942, baseType: !2039, size: 64, offset: 1664)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = !DISubroutineType(types: !2041)
!2041 = !{!349, !1332, !133, !552, !552}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1609, file: !14, line: 1944, baseType: !2043, size: 64, offset: 1728)
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!2044 = !DISubroutineType(types: !2045)
!2045 = !{null, !188, !1332}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1609, file: !14, line: 1948, baseType: !2047, size: 64, offset: 1792)
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2048 = !DISubroutineType(types: !2049)
!2049 = !{!345, !1332, !552, !1332, !552, !360, !7}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1609, file: !14, line: 1950, baseType: !2051, size: 64, offset: 1856)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = !DISubroutineType(types: !2053)
!2053 = !{!552, !1332, !552, !1332, !552, !552, !7}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1609, file: !14, line: 1953, baseType: !1999, size: 64, offset: 1920)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1609, file: !14, line: 1954, baseType: !2056, size: 64, offset: 1984)
!2056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2057, size: 64)
!2057 = !DISubroutineType(types: !2058)
!2058 = !{!133, !2059, !7}
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2060 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1609, file: !14, line: 1955, baseType: !2062, size: 64, offset: 2048)
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2063 = !DISubroutineType(types: !2064)
!2064 = !{!133, !2059, !1658, !7}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1333, file: !14, line: 1018, baseType: !464, size: 64, offset: 1472)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1333, file: !14, line: 1020, baseType: !117, size: 64, offset: 1536)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1333, file: !14, line: 1023, baseType: !117, size: 64, offset: 1600)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1333, file: !14, line: 1027, baseType: !2069, size: 64, offset: 1664)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1333, file: !14, line: 1029, baseType: !389, size: 64, offset: 1728)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1333, file: !14, line: 1030, baseType: !2072, size: 32, offset: 1792)
!2072 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2073, line: 8, baseType: !135)
!2073 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1333, file: !14, line: 1031, baseType: !2072, size: 32, offset: 1824)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1309, file: !38, line: 756, baseType: !363, size: 64, offset: 704)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1309, file: !38, line: 757, baseType: !363, size: 64, offset: 768)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1309, file: !38, line: 760, baseType: !363, size: 64, offset: 832)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1309, file: !38, line: 761, baseType: !363, size: 64, offset: 896)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1309, file: !38, line: 763, baseType: !363, size: 64, offset: 960)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1309, file: !38, line: 764, baseType: !2081, size: 64, offset: 1024)
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2082 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1705, line: 299, baseType: !2083)
!2083 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1705, line: 299, size: 64, elements: !2084)
!2084 = !{!2085}
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2083, file: !1705, line: 299, baseType: !2086, size: 64)
!2086 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1710, line: 18, baseType: !363)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1309, file: !38, line: 773, baseType: !129, size: 32, offset: 1088)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1309, file: !38, line: 785, baseType: !129, size: 32, offset: 1120)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1309, file: !38, line: 795, baseType: !2090, size: 64, offset: 1152)
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !38, line: 726, size: 128, elements: !2092)
!2092 = !{!2093, !2094}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2091, file: !38, line: 727, baseType: !464, size: 64)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2091, file: !38, line: 728, baseType: !133, size: 32, offset: 64)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1309, file: !38, line: 801, baseType: !363, size: 64, offset: 1216)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1309, file: !38, line: 804, baseType: !683, size: 64, offset: 1280)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1309, file: !38, line: 806, baseType: !133, size: 32, offset: 1344)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1309, file: !38, line: 808, baseType: !249, size: 32, offset: 1376)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1309, file: !38, line: 823, baseType: !891, size: 320, offset: 1408)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1309, file: !38, line: 825, baseType: !149, size: 128, offset: 1728)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1309, file: !38, line: 845, baseType: !133, size: 32, offset: 1856)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1309, file: !38, line: 849, baseType: !363, size: 64, offset: 1920)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1309, file: !38, line: 850, baseType: !363, size: 64, offset: 1984)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1309, file: !38, line: 852, baseType: !363, size: 64, offset: 2048)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1309, file: !38, line: 853, baseType: !363, size: 64, offset: 2112)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1309, file: !38, line: 854, baseType: !685, size: 64, offset: 2176)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1309, file: !38, line: 855, baseType: !363, size: 64, offset: 2240)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1309, file: !38, line: 856, baseType: !363, size: 64, offset: 2304)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1309, file: !38, line: 857, baseType: !363, size: 64, offset: 2368)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1309, file: !38, line: 858, baseType: !363, size: 64, offset: 2432)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1309, file: !38, line: 865, baseType: !439, size: 32, offset: 2496)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1309, file: !38, line: 867, baseType: !249, size: 32, offset: 2528)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1309, file: !38, line: 869, baseType: !363, size: 64, offset: 2560)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1309, file: !38, line: 869, baseType: !363, size: 64, offset: 2624)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1309, file: !38, line: 869, baseType: !363, size: 64, offset: 2688)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1309, file: !38, line: 869, baseType: !363, size: 64, offset: 2752)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1309, file: !38, line: 870, baseType: !363, size: 64, offset: 2816)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1309, file: !38, line: 870, baseType: !363, size: 64, offset: 2880)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1309, file: !38, line: 870, baseType: !363, size: 64, offset: 2944)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1309, file: !38, line: 871, baseType: !363, size: 64, offset: 3008)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1309, file: !38, line: 871, baseType: !363, size: 64, offset: 3072)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1309, file: !38, line: 871, baseType: !363, size: 64, offset: 3136)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1309, file: !38, line: 871, baseType: !363, size: 64, offset: 3200)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1309, file: !38, line: 873, baseType: !2125, size: 3328, offset: 3264)
!2125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, size: 3328, elements: !2126)
!2126 = !{!2127}
!2127 = !DISubrange(count: 52)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1309, file: !38, line: 875, baseType: !2129, size: 1280, offset: 6592)
!2129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1551, size: 1280, elements: !1381)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1309, file: !38, line: 877, baseType: !2131, size: 64, offset: 7872)
!2131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2132, size: 64)
!2132 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !38, line: 877, flags: DIFlagFwdDecl)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1309, file: !38, line: 880, baseType: !2134, size: 1088, offset: 7936)
!2134 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2135, line: 72, baseType: !2136)
!2135 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2136 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2135, line: 23, size: 1088, elements: !2137)
!2137 = !{!2138, !2139, !2140, !2141, !2142, !2145, !2146, !2147, !2148, !2175, !2176, !2177}
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2136, file: !2135, line: 28, baseType: !464, size: 64)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2136, file: !2135, line: 38, baseType: !685, size: 64, offset: 64)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2136, file: !2135, line: 40, baseType: !363, size: 64, offset: 128)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2136, file: !2135, line: 43, baseType: !891, size: 320, offset: 192)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2136, file: !2135, line: 44, baseType: !2143, size: 64, offset: 512)
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2144 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2135, line: 44, flags: DIFlagFwdDecl)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2136, file: !2135, line: 48, baseType: !363, size: 64, offset: 576)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2136, file: !2135, line: 59, baseType: !679, size: 256, offset: 640)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2136, file: !2135, line: 60, baseType: !117, size: 64, offset: 896)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2136, file: !2135, line: 61, baseType: !2149, size: 64, offset: 960)
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2151)
!2151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2152, line: 13, size: 1216, elements: !2153)
!2152 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2153 = !{!2154, !2155, !2156, !2157, !2158, !2159, !2160, !2163, !2164, !2165, !2166, !2167, !2168, !2169, !2170, !2171, !2172, !2173, !2174}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2151, file: !2152, line: 14, baseType: !117, size: 64)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2151, file: !2152, line: 15, baseType: !363, size: 64, offset: 64)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2151, file: !2152, line: 17, baseType: !363, size: 64, offset: 128)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2151, file: !2152, line: 17, baseType: !363, size: 64, offset: 192)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2151, file: !2152, line: 18, baseType: !363, size: 64, offset: 256)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2151, file: !2152, line: 18, baseType: !363, size: 64, offset: 320)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2151, file: !2152, line: 19, baseType: !2161, size: 64, offset: 384)
!2161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2162, size: 64)
!2162 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2151, file: !2152, line: 21, baseType: !349, size: 64, offset: 448)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2151, file: !2152, line: 23, baseType: !349, size: 64, offset: 512)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2151, file: !2152, line: 24, baseType: !349, size: 64, offset: 576)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2151, file: !2152, line: 25, baseType: !349, size: 64, offset: 640)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2151, file: !2152, line: 26, baseType: !349, size: 64, offset: 704)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2151, file: !2152, line: 27, baseType: !349, size: 64, offset: 768)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2151, file: !2152, line: 28, baseType: !349, size: 64, offset: 832)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2151, file: !2152, line: 29, baseType: !349, size: 64, offset: 896)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2151, file: !2152, line: 30, baseType: !349, size: 64, offset: 960)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2151, file: !2152, line: 31, baseType: !349, size: 64, offset: 1024)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2151, file: !2152, line: 32, baseType: !349, size: 64, offset: 1088)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2151, file: !2152, line: 33, baseType: !349, size: 64, offset: 1152)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2136, file: !2135, line: 63, baseType: !129, size: 32, offset: 1024)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2136, file: !2135, line: 69, baseType: !281, size: 16, offset: 1056)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2136, file: !2135, line: 70, baseType: !2178, size: 16, offset: 1072)
!2178 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !136, line: 18, baseType: !2179)
!2179 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !138, line: 23, baseType: !1462)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1309, file: !38, line: 882, baseType: !363, size: 64, offset: 9024)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1309, file: !38, line: 885, baseType: !249, size: 32, offset: 9088)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1309, file: !38, line: 886, baseType: !2183, size: 64, offset: 9152)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !38, line: 732, flags: DIFlagFwdDecl)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1309, file: !38, line: 901, baseType: !1576, size: 64, offset: 9216)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1309, file: !38, line: 904, baseType: !1332, size: 64, offset: 9280)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1309, file: !38, line: 906, baseType: !2188, size: 64, offset: 9344)
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64)
!2189 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !38, line: 906, flags: DIFlagFwdDecl)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1309, file: !38, line: 930, baseType: !129, size: 32, offset: 9408)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1309, file: !38, line: 933, baseType: !129, size: 32, offset: 9440)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1309, file: !38, line: 935, baseType: !2193, size: 64, offset: 9472)
!2193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !68, line: 103, size: 64, elements: !2194)
!2194 = !{!2195}
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2193, file: !68, line: 104, baseType: !2196, size: 64)
!2196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2197, size: 64)
!2197 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !68, line: 101, flags: DIFlagFwdDecl)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1309, file: !38, line: 940, baseType: !683, size: 64, offset: 9536)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1309, file: !38, line: 942, baseType: !2200, size: 256, offset: 9600)
!2200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2201, line: 98, size: 256, elements: !2202)
!2201 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!2202 = !{!2203, !2204, !2205}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2200, file: !2201, line: 99, baseType: !683, size: 64)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2200, file: !2201, line: 100, baseType: !149, size: 128, offset: 64)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2200, file: !2201, line: 101, baseType: !2206, size: 64, offset: 192)
!2206 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2201, line: 21, baseType: !2207)
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2208 = !DISubroutineType(types: !2209)
!2209 = !{null, !2210}
!2210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2200, size: 64)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1306, file: !38, line: 986, baseType: !2212, offset: 10240)
!2212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, elements: !1394)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1007, file: !190, line: 882, baseType: !1305, size: 64, offset: 9792)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1007, file: !190, line: 884, baseType: !133, size: 32, offset: 9856)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1007, file: !190, line: 885, baseType: !133, size: 32, offset: 9888)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1007, file: !190, line: 886, baseType: !133, size: 32, offset: 9920)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1007, file: !190, line: 888, baseType: !133, size: 32, offset: 9952)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1007, file: !190, line: 890, baseType: !363, size: 64, offset: 9984)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1007, file: !190, line: 893, baseType: !7, size: 32, offset: 10048)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1007, file: !190, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1007, file: !190, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1007, file: !190, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1007, file: !190, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1007, file: !190, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1007, file: !190, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1007, file: !190, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1007, file: !190, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1007, file: !190, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1007, file: !190, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1007, file: !190, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1007, file: !190, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1007, file: !190, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1007, file: !190, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1007, file: !190, line: 969, baseType: !363, size: 64, offset: 10176)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1007, file: !190, line: 971, baseType: !2236, size: 448, offset: 10240)
!2236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !62, line: 25, size: 448, elements: !2237)
!2237 = !{!2238, !2239, !2244}
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2236, file: !62, line: 26, baseType: !363, size: 64)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2236, file: !62, line: 27, baseType: !2240, size: 64, offset: 64)
!2240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2241, size: 64)
!2241 = !DISubroutineType(types: !2242)
!2242 = !{!349, !2243}
!2243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2236, size: 64)
!2244 = !DIDerivedType(tag: DW_TAG_member, scope: !2236, file: !62, line: 28, baseType: !2245, size: 320, offset: 128)
!2245 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2236, file: !62, line: 28, size: 320, elements: !2246)
!2246 = !{!2247, !2257, !2282}
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2245, file: !62, line: 37, baseType: !2248, size: 320)
!2248 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2245, file: !62, line: 30, size: 320, elements: !2249)
!2249 = !{!2250, !2252, !2253, !2254, !2255, !2256}
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2248, file: !62, line: 31, baseType: !2251, size: 64)
!2251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2248, file: !62, line: 32, baseType: !135, size: 32, offset: 64)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2248, file: !62, line: 33, baseType: !135, size: 32, offset: 96)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2248, file: !62, line: 34, baseType: !135, size: 32, offset: 128)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2248, file: !62, line: 35, baseType: !464, size: 64, offset: 192)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2248, file: !62, line: 36, baseType: !2251, size: 64, offset: 256)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2245, file: !62, line: 47, baseType: !2258, size: 192)
!2258 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2245, file: !62, line: 39, size: 192, elements: !2259)
!2259 = !{!2260, !2261, !2262, !2281}
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2258, file: !62, line: 40, baseType: !1176, size: 32)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2258, file: !62, line: 41, baseType: !61, size: 32, offset: 32)
!2262 = !DIDerivedType(tag: DW_TAG_member, scope: !2258, file: !62, line: 42, baseType: !2263, size: 64, offset: 64)
!2263 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2258, file: !62, line: 42, size: 64, elements: !2264)
!2264 = !{!2265, !2273}
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2263, file: !62, line: 43, baseType: !2266, size: 64)
!2266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2267, size: 64)
!2267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2268, line: 7, size: 128, elements: !2269)
!2268 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2269 = !{!2270, !2272}
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2267, file: !2268, line: 8, baseType: !2271, size: 64)
!2271 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !347, line: 93, baseType: !554)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2267, file: !2268, line: 9, baseType: !554, size: 64, offset: 64)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2263, file: !62, line: 44, baseType: !2274, size: 64)
!2274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2275, size: 64)
!2275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2276, line: 7, size: 64, elements: !2277)
!2276 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2277 = !{!2278, !2280}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2275, file: !2276, line: 8, baseType: !2279, size: 32)
!2279 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2276, line: 5, baseType: !1436)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2275, file: !2276, line: 9, baseType: !1436, size: 32, offset: 32)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2258, file: !62, line: 46, baseType: !464, size: 64, offset: 128)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2245, file: !62, line: 55, baseType: !2283, size: 256)
!2283 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2245, file: !62, line: 49, size: 256, elements: !2284)
!2284 = !{!2285, !2288, !2289, !2290, !2291}
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2283, file: !62, line: 50, baseType: !2286, size: 64)
!2286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2287, size: 64)
!2287 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !62, line: 14, flags: DIFlagFwdDecl)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2283, file: !62, line: 51, baseType: !133, size: 32, offset: 64)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2283, file: !62, line: 52, baseType: !133, size: 32, offset: 96)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2283, file: !62, line: 53, baseType: !363, size: 64, offset: 128)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2283, file: !62, line: 54, baseType: !363, size: 64, offset: 192)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1007, file: !190, line: 973, baseType: !2293, size: 32, offset: 10688)
!2293 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !119, line: 27, baseType: !2294)
!2294 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !347, line: 28, baseType: !133)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1007, file: !190, line: 974, baseType: !2293, size: 32, offset: 10720)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1007, file: !190, line: 978, baseType: !363, size: 64, offset: 10752)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1007, file: !190, line: 987, baseType: !1006, size: 64, offset: 10816)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1007, file: !190, line: 990, baseType: !1006, size: 64, offset: 10880)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1007, file: !190, line: 995, baseType: !149, size: 128, offset: 10944)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1007, file: !190, line: 996, baseType: !149, size: 128, offset: 11072)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1007, file: !190, line: 997, baseType: !1006, size: 64, offset: 11200)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1007, file: !190, line: 1005, baseType: !149, size: 128, offset: 11264)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1007, file: !190, line: 1006, baseType: !149, size: 128, offset: 11392)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1007, file: !190, line: 1009, baseType: !1373, size: 64, offset: 11520)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1007, file: !190, line: 1010, baseType: !2306, size: 512, offset: 11584)
!2306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 512, elements: !1381)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1007, file: !190, line: 1011, baseType: !149, size: 128, offset: 12096)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1007, file: !190, line: 1012, baseType: !149, size: 128, offset: 12224)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1007, file: !190, line: 1014, baseType: !2310, size: 64, offset: 12352)
!2310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1007, file: !190, line: 1017, baseType: !649, size: 64, offset: 12416)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1007, file: !190, line: 1020, baseType: !649, size: 64, offset: 12480)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1007, file: !190, line: 1023, baseType: !117, size: 64, offset: 12544)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1007, file: !190, line: 1025, baseType: !464, size: 64, offset: 12608)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1007, file: !190, line: 1026, baseType: !464, size: 64, offset: 12672)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1007, file: !190, line: 1031, baseType: !464, size: 64, offset: 12736)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1007, file: !190, line: 1032, baseType: !2318, size: 192, offset: 12800)
!2318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !190, line: 324, size: 192, elements: !2319)
!2319 = !{!2320, !2321, !2322}
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2318, file: !190, line: 326, baseType: !464, size: 64)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2318, file: !190, line: 327, baseType: !464, size: 64, offset: 64)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2318, file: !190, line: 328, baseType: !692, size: 32, offset: 128)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1007, file: !190, line: 1041, baseType: !363, size: 64, offset: 12992)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1007, file: !190, line: 1042, baseType: !363, size: 64, offset: 13056)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1007, file: !190, line: 1045, baseType: !464, size: 64, offset: 13120)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1007, file: !190, line: 1048, baseType: !464, size: 64, offset: 13184)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1007, file: !190, line: 1051, baseType: !363, size: 64, offset: 13248)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1007, file: !190, line: 1052, baseType: !363, size: 64, offset: 13312)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1007, file: !190, line: 1055, baseType: !2330, size: 640, offset: 13376)
!2330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2331, line: 132, size: 640, elements: !2332)
!2331 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2332 = !{!2333, !2339, !2340}
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2330, file: !2331, line: 133, baseType: !2334, size: 576)
!2334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2335, size: 576, elements: !314)
!2335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2331, line: 117, size: 192, elements: !2336)
!2336 = !{!2337, !2338}
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2335, file: !2331, line: 118, baseType: !464, size: 64)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2335, file: !2331, line: 119, baseType: !1185, size: 128, offset: 64)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2330, file: !2331, line: 134, baseType: !7, size: 32, offset: 576)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2330, file: !2331, line: 135, baseType: !7, size: 32, offset: 608)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1007, file: !190, line: 1058, baseType: !2342, size: 448, offset: 14016)
!2342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2331, line: 144, size: 448, elements: !2343)
!2343 = !{!2344, !2345, !2346}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2342, file: !2331, line: 145, baseType: !991, size: 128, align: 64)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2342, file: !2331, line: 146, baseType: !679, size: 256, offset: 128)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2342, file: !2331, line: 147, baseType: !7, size: 32, offset: 384)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1007, file: !190, line: 1064, baseType: !1401, size: 64, offset: 14464)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1007, file: !190, line: 1067, baseType: !1401, size: 64, offset: 14528)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1007, file: !190, line: 1070, baseType: !1401, size: 64, offset: 14592)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1007, file: !190, line: 1074, baseType: !1428, size: 64, offset: 14656)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1007, file: !190, line: 1084, baseType: !2352, size: 128, offset: 14720)
!2352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 128, elements: !2353)
!2353 = !{!2354}
!2354 = !DISubrange(count: 16)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1007, file: !190, line: 1086, baseType: !2356, size: 64, offset: 14848)
!2356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2357, size: 64)
!2357 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !190, line: 55, flags: DIFlagFwdDecl)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1007, file: !190, line: 1089, baseType: !2359, size: 64, offset: 14912)
!2359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2360, line: 12, size: 64, elements: !2361)
!2360 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2361 = !{!2362}
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2359, file: !2360, line: 13, baseType: !2363, size: 64)
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2364, size: 64)
!2364 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2360, line: 8, flags: DIFlagFwdDecl)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1007, file: !190, line: 1090, baseType: !2366, size: 128, offset: 14976)
!2366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2367, line: 13, size: 128, elements: !2368)
!2367 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2368 = !{!2369}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2366, file: !2367, line: 14, baseType: !149, size: 128)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1007, file: !190, line: 1097, baseType: !2371, size: 64, offset: 15104)
!2371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2372, size: 64)
!2372 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !190, line: 50, flags: DIFlagFwdDecl)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1007, file: !190, line: 1100, baseType: !2374, size: 64, offset: 15168)
!2374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2375, size: 64)
!2375 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !190, line: 1100, flags: DIFlagFwdDecl)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1007, file: !190, line: 1103, baseType: !2377, size: 64, offset: 15232)
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2378 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !190, line: 53, flags: DIFlagFwdDecl)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1007, file: !190, line: 1107, baseType: !2380, size: 64, offset: 15296)
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2381, size: 64)
!2381 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2382, line: 35, flags: DIFlagFwdDecl)
!2382 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1007, file: !190, line: 1110, baseType: !2384, size: 64, offset: 15360)
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2385, size: 64)
!2385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2386, line: 93, size: 8768, elements: !2387)
!2386 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2387 = !{!2388, !2389, !2390, !2391, !2392, !2393, !2394, !2395, !2405, !2406, !2407, !2408, !2409, !2410, !2411, !2423, !2424, !2425, !2426, !2427, !2428, !2429, !2437, !2446, !2447, !2449, !2450, !2451, !2454, !2460, !2461, !2462, !2463, !2464, !2465, !2466, !2467, !2468, !2469, !2470, !2471, !2472, !2473, !2474, !2475, !2476, !2477, !2478, !2479, !2480, !2481, !2492, !2493, !2500, !2510, !2513, !2514, !2517, !2518, !2519, !2520, !2521, !2522}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2385, file: !2386, line: 94, baseType: !125, size: 32)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2385, file: !2386, line: 95, baseType: !129, size: 32, offset: 32)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2385, file: !2386, line: 96, baseType: !133, size: 32, offset: 64)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2385, file: !2386, line: 97, baseType: !133, size: 32, offset: 96)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2385, file: !2386, line: 98, baseType: !149, size: 128, offset: 128)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2385, file: !2386, line: 100, baseType: !984, size: 192, offset: 256)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2385, file: !2386, line: 103, baseType: !1006, size: 64, offset: 448)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2385, file: !2386, line: 106, baseType: !2396, size: 192, offset: 512)
!2396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1581, line: 32, size: 192, elements: !2397)
!2397 = !{!2398, !2399}
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2396, file: !1581, line: 33, baseType: !149, size: 128)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2396, file: !1581, line: 34, baseType: !2400, size: 64, offset: 128)
!2400 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2401, line: 25, baseType: !2402)
!2401 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2402 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2401, line: 23, size: 64, elements: !2403)
!2403 = !{!2404}
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2402, file: !2401, line: 24, baseType: !1256, size: 64)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2385, file: !2386, line: 109, baseType: !211, size: 64, offset: 704)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2385, file: !2386, line: 112, baseType: !133, size: 32, offset: 768)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2385, file: !2386, line: 114, baseType: !133, size: 32, offset: 800)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2385, file: !2386, line: 115, baseType: !1006, size: 64, offset: 832)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2385, file: !2386, line: 118, baseType: !133, size: 32, offset: 896)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2385, file: !2386, line: 119, baseType: !7, size: 32, offset: 928)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2385, file: !2386, line: 121, baseType: !2412, size: 64, offset: 960)
!2412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2413, size: 64)
!2413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2386, line: 80, size: 448, elements: !2414)
!2414 = !{!2415, !2416, !2422}
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2413, file: !2386, line: 81, baseType: !129, size: 32)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2413, file: !2386, line: 82, baseType: !2417, size: 128, offset: 64)
!2417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2386, line: 75, size: 128, elements: !2418)
!2418 = !{!2419, !2420}
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2417, file: !2386, line: 76, baseType: !1006, size: 64)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2417, file: !2386, line: 77, baseType: !2421, size: 64, offset: 64)
!2421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2417, size: 64)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2413, file: !2386, line: 83, baseType: !1884, size: 256, offset: 192)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2385, file: !2386, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2385, file: !2386, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2385, file: !2386, line: 138, baseType: !7, size: 32, offset: 1056)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2385, file: !2386, line: 139, baseType: !149, size: 128, offset: 1088)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2385, file: !2386, line: 142, baseType: !1129, size: 512, offset: 1216)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2385, file: !2386, line: 143, baseType: !1137, size: 64, offset: 1728)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2385, file: !2386, line: 150, baseType: !2430, size: 256, offset: 1792)
!2430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2431, size: 256, elements: !2435)
!2431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2386, line: 38, size: 128, elements: !2432)
!2432 = !{!2433, !2434}
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2431, file: !2386, line: 39, baseType: !464, size: 64)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2431, file: !2386, line: 40, baseType: !464, size: 64, offset: 64)
!2435 = !{!2436}
!2436 = !DISubrange(count: 2)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2385, file: !2386, line: 156, baseType: !2438, size: 192, offset: 2048)
!2438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2386, line: 66, size: 192, elements: !2439)
!2439 = !{!2440}
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2438, file: !2386, line: 67, baseType: !2441, size: 192)
!2441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2386, line: 47, size: 192, elements: !2442)
!2442 = !{!2443, !2444, !2445}
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2441, file: !2386, line: 48, baseType: !685, size: 64)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2441, file: !2386, line: 49, baseType: !685, size: 64, offset: 64)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2441, file: !2386, line: 50, baseType: !685, size: 64, offset: 128)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2385, file: !2386, line: 160, baseType: !2330, size: 640, offset: 2240)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2385, file: !2386, line: 163, baseType: !2448, size: 256, offset: 2880)
!2448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1373, size: 256, elements: !1381)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2385, file: !2386, line: 169, baseType: !1373, size: 64, offset: 3136)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2385, file: !2386, line: 172, baseType: !133, size: 32, offset: 3200)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2385, file: !2386, line: 174, baseType: !2452, size: 64, offset: 3264)
!2452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2453, size: 64)
!2453 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2386, line: 174, flags: DIFlagFwdDecl)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2385, file: !2386, line: 185, baseType: !2455, size: 64, offset: 3328)
!2455 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !435, line: 860, baseType: !2456)
!2456 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !435, line: 853, size: 64, elements: !2457)
!2457 = !{!2458, !2459}
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2456, file: !435, line: 858, baseType: !434, size: 32)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2456, file: !435, line: 859, baseType: !249, size: 32, offset: 32)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2385, file: !2386, line: 186, baseType: !464, size: 64, offset: 3392)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2385, file: !2386, line: 186, baseType: !464, size: 64, offset: 3456)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2385, file: !2386, line: 186, baseType: !464, size: 64, offset: 3520)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2385, file: !2386, line: 186, baseType: !464, size: 64, offset: 3584)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2385, file: !2386, line: 187, baseType: !464, size: 64, offset: 3648)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2385, file: !2386, line: 188, baseType: !464, size: 64, offset: 3712)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2385, file: !2386, line: 189, baseType: !2318, size: 192, offset: 3776)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2385, file: !2386, line: 190, baseType: !363, size: 64, offset: 3968)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2385, file: !2386, line: 190, baseType: !363, size: 64, offset: 4032)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2385, file: !2386, line: 190, baseType: !363, size: 64, offset: 4096)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2385, file: !2386, line: 190, baseType: !363, size: 64, offset: 4160)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2385, file: !2386, line: 191, baseType: !363, size: 64, offset: 4224)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2385, file: !2386, line: 191, baseType: !363, size: 64, offset: 4288)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2385, file: !2386, line: 191, baseType: !363, size: 64, offset: 4352)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2385, file: !2386, line: 191, baseType: !363, size: 64, offset: 4416)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2385, file: !2386, line: 192, baseType: !363, size: 64, offset: 4480)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2385, file: !2386, line: 192, baseType: !363, size: 64, offset: 4544)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2385, file: !2386, line: 192, baseType: !363, size: 64, offset: 4608)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2385, file: !2386, line: 192, baseType: !363, size: 64, offset: 4672)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2385, file: !2386, line: 193, baseType: !363, size: 64, offset: 4736)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2385, file: !2386, line: 193, baseType: !363, size: 64, offset: 4800)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2385, file: !2386, line: 194, baseType: !2482, size: 448, offset: 4864)
!2482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2483, line: 12, size: 448, elements: !2484)
!2483 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2484 = !{!2485, !2486, !2487, !2488, !2489, !2490, !2491}
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2482, file: !2483, line: 15, baseType: !464, size: 64)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2482, file: !2483, line: 17, baseType: !464, size: 64, offset: 64)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2482, file: !2483, line: 19, baseType: !464, size: 64, offset: 128)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2482, file: !2483, line: 21, baseType: !464, size: 64, offset: 192)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2482, file: !2483, line: 29, baseType: !464, size: 64, offset: 256)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2482, file: !2483, line: 35, baseType: !464, size: 64, offset: 320)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2482, file: !2483, line: 44, baseType: !464, size: 64, offset: 384)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2385, file: !2386, line: 202, baseType: !466, size: 64, offset: 5312)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2385, file: !2386, line: 213, baseType: !2494, size: 2048, offset: 5376)
!2494 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2495, size: 2048, elements: !2353)
!2495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2496, line: 43, size: 128, elements: !2497)
!2496 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2497 = !{!2498, !2499}
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2495, file: !2496, line: 44, baseType: !362, size: 64)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2495, file: !2496, line: 45, baseType: !362, size: 64, offset: 64)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2385, file: !2386, line: 216, baseType: !2501, size: 448, offset: 7424)
!2501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2386, line: 30, size: 448, elements: !2502)
!2502 = !{!2503, !2504, !2505, !2506, !2507, !2508, !2509}
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2501, file: !2386, line: 31, baseType: !133, size: 32)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2501, file: !2386, line: 32, baseType: !349, size: 64, offset: 64)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2501, file: !2386, line: 33, baseType: !363, size: 64, offset: 128)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2501, file: !2386, line: 34, baseType: !464, size: 64, offset: 192)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2501, file: !2386, line: 34, baseType: !464, size: 64, offset: 256)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2501, file: !2386, line: 35, baseType: !363, size: 64, offset: 320)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2501, file: !2386, line: 35, baseType: !363, size: 64, offset: 384)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2385, file: !2386, line: 219, baseType: !2511, size: 64, offset: 7872)
!2511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2512, size: 64)
!2512 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2386, line: 219, flags: DIFlagFwdDecl)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2385, file: !2386, line: 222, baseType: !7, size: 32, offset: 7936)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2385, file: !2386, line: 223, baseType: !2515, size: 64, offset: 8000)
!2515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2516, size: 64)
!2516 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2386, line: 223, flags: DIFlagFwdDecl)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2385, file: !2386, line: 230, baseType: !1493, size: 8, offset: 8064)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2385, file: !2386, line: 231, baseType: !1462, size: 16, offset: 8080)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2385, file: !2386, line: 232, baseType: !1462, size: 16, offset: 8096)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2385, file: !2386, line: 234, baseType: !1305, size: 64, offset: 8128)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2385, file: !2386, line: 237, baseType: !679, size: 256, offset: 8192)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2385, file: !2386, line: 243, baseType: !891, size: 320, offset: 8448)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1007, file: !190, line: 1111, baseType: !2524, size: 64, offset: 15424)
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2525, size: 64)
!2525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2386, line: 20, size: 16640, elements: !2526)
!2526 = !{!2527, !2528, !2529, !2530}
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2525, file: !2386, line: 21, baseType: !249, size: 32)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2525, file: !2386, line: 22, baseType: !125, size: 32, offset: 32)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2525, file: !2386, line: 23, baseType: !984, size: 192, offset: 64)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2525, file: !2386, line: 24, baseType: !2531, size: 16384, offset: 256)
!2531 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2532, size: 16384, elements: !318)
!2532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1581, line: 51, size: 256, elements: !2533)
!2533 = !{!2534}
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2532, file: !1581, line: 52, baseType: !2535, size: 256)
!2535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1581, line: 37, size: 256, elements: !2536)
!2536 = !{!2537, !2544, !2545, !2551}
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2535, file: !1581, line: 39, baseType: !2538, size: 64)
!2538 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2539, line: 83, baseType: !2540)
!2539 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2541, size: 64)
!2541 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2539, line: 82, baseType: !2542)
!2542 = !DISubroutineType(types: !2543)
!2543 = !{null, !133}
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2535, file: !1581, line: 40, baseType: !363, size: 64, offset: 64)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2535, file: !1581, line: 46, baseType: !2546, size: 64, offset: 128)
!2546 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2539, line: 86, baseType: !2547)
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2548, size: 64)
!2548 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2539, line: 85, baseType: !2549)
!2549 = !DISubroutineType(types: !2550)
!2550 = !{null}
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2535, file: !1581, line: 48, baseType: !2400, size: 64, offset: 192)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1007, file: !190, line: 1112, baseType: !2400, size: 64, offset: 15488)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1007, file: !190, line: 1113, baseType: !2400, size: 64, offset: 15552)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1007, file: !190, line: 1115, baseType: !2400, size: 64, offset: 15616)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1007, file: !190, line: 1116, baseType: !2396, size: 192, offset: 15680)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1007, file: !190, line: 1117, baseType: !363, size: 64, offset: 15872)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1007, file: !190, line: 1118, baseType: !360, size: 64, offset: 15936)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1007, file: !190, line: 1119, baseType: !7, size: 32, offset: 16000)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1007, file: !190, line: 1121, baseType: !994, size: 64, offset: 16064)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1007, file: !190, line: 1125, baseType: !2561, size: 64, offset: 16128)
!2561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2562, size: 64)
!2562 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !190, line: 43, flags: DIFlagFwdDecl)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1007, file: !190, line: 1127, baseType: !399, size: 32, offset: 16192)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1007, file: !190, line: 1128, baseType: !7, size: 32, offset: 16224)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1007, file: !190, line: 1130, baseType: !2566, size: 128, offset: 16256)
!2566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2567, line: 37, size: 128, elements: !2568)
!2567 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2568 = !{!2569, !2570, !2571}
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2566, file: !2567, line: 38, baseType: !133, size: 32)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2566, file: !2567, line: 39, baseType: !129, size: 32, offset: 32)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2566, file: !2567, line: 40, baseType: !2572, size: 64, offset: 64)
!2572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2573, size: 64)
!2573 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2567, line: 24, flags: DIFlagFwdDecl)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1007, file: !190, line: 1131, baseType: !2575, size: 256, offset: 16384)
!2575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2576, line: 12, size: 256, elements: !2577)
!2576 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2577 = !{!2578, !2579, !2580, !2581}
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2575, file: !2576, line: 13, baseType: !313, size: 64)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2575, file: !2576, line: 14, baseType: !363, size: 64, offset: 64)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2575, file: !2576, line: 15, baseType: !363, size: 64, offset: 128)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2575, file: !2576, line: 16, baseType: !1493, size: 8, offset: 192)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1007, file: !190, line: 1134, baseType: !464, size: 64, offset: 16640)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1007, file: !190, line: 1135, baseType: !464, size: 64, offset: 16704)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1007, file: !190, line: 1138, baseType: !249, size: 32, offset: 16768)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1007, file: !190, line: 1141, baseType: !692, size: 32, offset: 16800)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1007, file: !190, line: 1143, baseType: !2587, size: 64, offset: 16832)
!2587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !190, line: 735, size: 64, elements: !2588)
!2588 = !{!2589}
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2587, file: !190, line: 736, baseType: !2590, size: 64)
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2587, size: 64)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1007, file: !190, line: 1147, baseType: !1188, size: 128, offset: 16896)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1007, file: !190, line: 1149, baseType: !1006, size: 64, offset: 17024)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1007, file: !190, line: 1151, baseType: !2594, size: 64, offset: 17088)
!2594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2595, size: 64)
!2595 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !190, line: 1151, flags: DIFlagFwdDecl)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1007, file: !190, line: 1188, baseType: !117, size: 64, offset: 17152)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1007, file: !190, line: 1191, baseType: !2598, size: 64, offset: 17216)
!2598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2599, size: 64)
!2599 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !190, line: 44, flags: DIFlagFwdDecl)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1007, file: !190, line: 1194, baseType: !2601, size: 64, offset: 17280)
!2601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2602, size: 64)
!2602 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !190, line: 45, flags: DIFlagFwdDecl)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1007, file: !190, line: 1197, baseType: !2604, size: 64, offset: 17344)
!2604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2605, size: 64)
!2605 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !190, line: 61, flags: DIFlagFwdDecl)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1007, file: !190, line: 1199, baseType: !2607, size: 64, offset: 17408)
!2607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2608, size: 64)
!2608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2609, line: 99, size: 128, elements: !2610)
!2609 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2610 = !{!2611, !2612, !2613}
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2608, file: !2609, line: 100, baseType: !683, size: 64)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2608, file: !2609, line: 101, baseType: !129, size: 32, offset: 64)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2608, file: !2609, line: 103, baseType: !283, size: 16, offset: 96)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1007, file: !190, line: 1202, baseType: !2615, size: 64, offset: 17472)
!2615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2616, size: 64)
!2616 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !190, line: 48, flags: DIFlagFwdDecl)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1007, file: !190, line: 1205, baseType: !363, size: 64, offset: 17536)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1007, file: !190, line: 1206, baseType: !2619, size: 64, offset: 17600)
!2619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2620, size: 64)
!2620 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1581, line: 14, baseType: !2621)
!2621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1581, line: 12, size: 384, elements: !2622)
!2622 = !{!2623}
!2623 = !DIDerivedType(tag: DW_TAG_member, scope: !2621, file: !1581, line: 13, baseType: !2624, size: 384)
!2624 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2621, file: !1581, line: 13, size: 384, elements: !2625)
!2625 = !{!2626, !2627, !2628, !2629}
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2624, file: !1581, line: 13, baseType: !133, size: 32)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2624, file: !1581, line: 13, baseType: !133, size: 32, offset: 32)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2624, file: !1581, line: 13, baseType: !133, size: 32, offset: 64)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2624, file: !1581, line: 13, baseType: !2630, size: 256, offset: 128)
!2630 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2631, line: 37, size: 256, elements: !2632)
!2631 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2632 = !{!2633, !2638, !2651, !2657, !2666, !2693, !2698}
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2630, file: !2631, line: 42, baseType: !2634, size: 64)
!2634 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2630, file: !2631, line: 39, size: 64, elements: !2635)
!2635 = !{!2636, !2637}
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2634, file: !2631, line: 40, baseType: !2294, size: 32)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2634, file: !2631, line: 41, baseType: !405, size: 32, offset: 32)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2630, file: !2631, line: 50, baseType: !2639, size: 192)
!2639 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2630, file: !2631, line: 45, size: 192, elements: !2640)
!2640 = !{!2641, !2643, !2644, !2650}
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2639, file: !2631, line: 46, baseType: !2642, size: 32)
!2642 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !347, line: 95, baseType: !133)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2639, file: !2631, line: 47, baseType: !133, size: 32, offset: 32)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2639, file: !2631, line: 48, baseType: !2645, size: 64, offset: 64)
!2645 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2631, line: 11, baseType: !2646)
!2646 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2631, line: 8, size: 64, elements: !2647)
!2647 = !{!2648, !2649}
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2646, file: !2631, line: 9, baseType: !133, size: 32)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2646, file: !2631, line: 10, baseType: !117, size: 64)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2639, file: !2631, line: 49, baseType: !133, size: 32, offset: 128)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2630, file: !2631, line: 57, baseType: !2652, size: 128)
!2652 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2630, file: !2631, line: 53, size: 128, elements: !2653)
!2653 = !{!2654, !2655, !2656}
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2652, file: !2631, line: 54, baseType: !2294, size: 32)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2652, file: !2631, line: 55, baseType: !405, size: 32, offset: 32)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2652, file: !2631, line: 56, baseType: !2645, size: 64, offset: 64)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2630, file: !2631, line: 66, baseType: !2658, size: 256)
!2658 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2630, file: !2631, line: 60, size: 256, elements: !2659)
!2659 = !{!2660, !2661, !2662, !2663, !2665}
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2658, file: !2631, line: 61, baseType: !2294, size: 32)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2658, file: !2631, line: 62, baseType: !405, size: 32, offset: 32)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2658, file: !2631, line: 63, baseType: !133, size: 32, offset: 64)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2658, file: !2631, line: 64, baseType: !2664, size: 64, offset: 128)
!2664 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !347, line: 94, baseType: !348)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2658, file: !2631, line: 65, baseType: !2664, size: 64, offset: 192)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2630, file: !2631, line: 105, baseType: !2667, size: 256)
!2667 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2630, file: !2631, line: 69, size: 256, elements: !2668)
!2668 = !{!2669, !2670}
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2667, file: !2631, line: 70, baseType: !117, size: 64)
!2670 = !DIDerivedType(tag: DW_TAG_member, scope: !2667, file: !2631, line: 79, baseType: !2671, size: 192, offset: 64)
!2671 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2667, file: !2631, line: 79, size: 192, elements: !2672)
!2672 = !{!2673, !2674, !2675, !2682, !2687}
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2671, file: !2631, line: 81, baseType: !133, size: 32)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2671, file: !2631, line: 86, baseType: !1462, size: 16)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2671, file: !2631, line: 92, baseType: !2676, size: 192)
!2676 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2671, file: !2631, line: 88, size: 192, elements: !2677)
!2677 = !{!2678, !2680, !2681}
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2676, file: !2631, line: 89, baseType: !2679, size: 64)
!2679 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 64, elements: !1172)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2676, file: !2631, line: 90, baseType: !117, size: 64, offset: 64)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2676, file: !2631, line: 91, baseType: !117, size: 64, offset: 128)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2671, file: !2631, line: 97, baseType: !2683, size: 96)
!2683 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2671, file: !2631, line: 94, size: 96, elements: !2684)
!2684 = !{!2685, !2686}
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2683, file: !2631, line: 95, baseType: !2679, size: 64)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2683, file: !2631, line: 96, baseType: !137, size: 32, offset: 64)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2671, file: !2631, line: 103, baseType: !2688, size: 128)
!2688 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2671, file: !2631, line: 99, size: 128, elements: !2689)
!2689 = !{!2690, !2691, !2692}
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2688, file: !2631, line: 100, baseType: !363, size: 64)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2688, file: !2631, line: 101, baseType: !137, size: 32, offset: 64)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2688, file: !2631, line: 102, baseType: !137, size: 32, offset: 96)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2630, file: !2631, line: 111, baseType: !2694, size: 128)
!2694 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2630, file: !2631, line: 108, size: 128, elements: !2695)
!2695 = !{!2696, !2697}
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2694, file: !2631, line: 109, baseType: !349, size: 64)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2694, file: !2631, line: 110, baseType: !133, size: 32, offset: 64)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2630, file: !2631, line: 118, baseType: !2699, size: 128)
!2699 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2630, file: !2631, line: 114, size: 128, elements: !2700)
!2700 = !{!2701, !2702, !2703}
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2699, file: !2631, line: 115, baseType: !117, size: 64)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2699, file: !2631, line: 116, baseType: !133, size: 32, offset: 64)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2699, file: !2631, line: 117, baseType: !7, size: 32, offset: 96)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1007, file: !190, line: 1208, baseType: !2482, size: 448, offset: 17664)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1007, file: !190, line: 1215, baseType: !464, size: 64, offset: 18112)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1007, file: !190, line: 1217, baseType: !464, size: 64, offset: 18176)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1007, file: !190, line: 1219, baseType: !464, size: 64, offset: 18240)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1007, file: !190, line: 1223, baseType: !2709, size: 64, offset: 18304)
!2709 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2710, line: 99, baseType: !2711)
!2710 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2711 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2710, line: 99, size: 64, elements: !2712)
!2712 = !{!2713}
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2711, file: !2710, line: 99, baseType: !1256, size: 64)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1007, file: !190, line: 1225, baseType: !434, size: 32, offset: 18368)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1007, file: !190, line: 1226, baseType: !133, size: 32, offset: 18400)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1007, file: !190, line: 1227, baseType: !133, size: 32, offset: 18432)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1007, file: !190, line: 1231, baseType: !2718, size: 64, offset: 18496)
!2718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2719, size: 64)
!2719 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !190, line: 1231, flags: DIFlagFwdDecl)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1007, file: !190, line: 1233, baseType: !149, size: 128, offset: 18560)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1007, file: !190, line: 1240, baseType: !2722, size: 64, offset: 18688)
!2722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2723, size: 64)
!2723 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !190, line: 62, flags: DIFlagFwdDecl)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1007, file: !190, line: 1242, baseType: !2725, size: 64, offset: 18752)
!2725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2726, size: 64)
!2726 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !190, line: 1242, flags: DIFlagFwdDecl)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1007, file: !190, line: 1244, baseType: !149, size: 128, offset: 18816)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1007, file: !190, line: 1245, baseType: !2729, size: 64, offset: 18944)
!2729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2730, size: 64)
!2730 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !190, line: 51, flags: DIFlagFwdDecl)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1007, file: !190, line: 1246, baseType: !679, size: 256, offset: 19008)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1007, file: !190, line: 1247, baseType: !7, size: 32, offset: 19264)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1007, file: !190, line: 1250, baseType: !2734, size: 64, offset: 19328)
!2734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2735, size: 64)
!2735 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !190, line: 57, flags: DIFlagFwdDecl)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1007, file: !190, line: 1251, baseType: !679, size: 256, offset: 19392)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1007, file: !190, line: 1252, baseType: !149, size: 128, offset: 19648)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1007, file: !190, line: 1259, baseType: !1970, size: 64, offset: 19776)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1007, file: !190, line: 1260, baseType: !1462, size: 16, offset: 19840)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1007, file: !190, line: 1261, baseType: !1462, size: 16, offset: 19856)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1007, file: !190, line: 1314, baseType: !2742, size: 64, offset: 19904)
!2742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2743, size: 64)
!2743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2744, line: 62, size: 256, align: 256, elements: !2745)
!2744 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2745 = !{!2746, !2747, !2748, !2749, !2750, !2751, !2752}
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2743, file: !2744, line: 75, baseType: !137, size: 32)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2743, file: !2744, line: 90, baseType: !137, size: 32, offset: 32)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2743, file: !2744, line: 112, baseType: !465, size: 64, offset: 64)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2743, file: !2744, line: 132, baseType: !137, size: 32, offset: 128)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2743, file: !2744, line: 140, baseType: !137, size: 32, offset: 160)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2743, file: !2744, line: 149, baseType: !137, size: 32, offset: 192)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2743, file: !2744, line: 154, baseType: !2753, offset: 224)
!2753 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, elements: !1394)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1007, file: !190, line: 1315, baseType: !135, size: 32, offset: 19968)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1007, file: !190, line: 1316, baseType: !135, size: 32, offset: 20000)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1007, file: !190, line: 1321, baseType: !363, size: 64, offset: 20032)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1007, file: !190, line: 1325, baseType: !133, size: 32, offset: 20096)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1007, file: !190, line: 1326, baseType: !133, size: 32, offset: 20128)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1007, file: !190, line: 1327, baseType: !133, size: 32, offset: 20160)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1007, file: !190, line: 1328, baseType: !133, size: 32, offset: 20192)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1007, file: !190, line: 1329, baseType: !991, size: 128, align: 64, offset: 20224)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1007, file: !190, line: 1332, baseType: !2763, size: 128, offset: 20352)
!2763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2764, line: 51, size: 128, elements: !2765)
!2764 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2765 = !{!2766, !2771, !2772}
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2763, file: !2764, line: 60, baseType: !2767, size: 64)
!2767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2768, line: 7, size: 64, elements: !2769)
!2768 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2769 = !{!2770}
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2767, file: !2768, line: 12, baseType: !1253, size: 64)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2763, file: !2764, line: 63, baseType: !1493, size: 8, offset: 64)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2763, file: !2764, line: 70, baseType: !1493, size: 8, offset: 72)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1007, file: !190, line: 1335, baseType: !2022, size: 64, offset: 20480)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1007, file: !190, line: 1337, baseType: !2775, size: 128, offset: 20544)
!2775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2764, line: 39, size: 128, elements: !2776)
!2776 = !{!2777, !2778, !2779}
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2775, file: !2764, line: 40, baseType: !1799, size: 64)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2775, file: !2764, line: 42, baseType: !137, size: 32, offset: 64)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2775, file: !2764, line: 43, baseType: !137, size: 32, offset: 96)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1007, file: !190, line: 1340, baseType: !2781, size: 64, offset: 20672)
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2782, size: 64)
!2782 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !190, line: 69, flags: DIFlagFwdDecl)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1007, file: !190, line: 1351, baseType: !133, size: 32, offset: 20736)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1007, file: !190, line: 1352, baseType: !133, size: 32, offset: 20768)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1007, file: !190, line: 1354, baseType: !363, size: 64, offset: 20800)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1007, file: !190, line: 1364, baseType: !464, size: 64, offset: 20864)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1007, file: !190, line: 1365, baseType: !464, size: 64, offset: 20928)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1007, file: !190, line: 1412, baseType: !363, size: 64, offset: 20992)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1007, file: !190, line: 1453, baseType: !2790, size: 64, offset: 21056)
!2790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2791, size: 64)
!2791 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !190, line: 1453, flags: DIFlagFwdDecl)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1007, file: !190, line: 1457, baseType: !2793, size: 64, offset: 21120)
!2793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2794, size: 64)
!2794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !68, line: 61, size: 576, elements: !2795)
!2795 = !{!2796, !2797, !2816, !2819, !2820, !2853, !2863}
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2794, file: !68, line: 62, baseType: !67, size: 32)
!2797 = !DIDerivedType(tag: DW_TAG_member, scope: !2794, file: !68, line: 64, baseType: !2798, size: 192, offset: 64)
!2798 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2794, file: !68, line: 64, size: 192, elements: !2799)
!2799 = !{!2800, !2811}
!2800 = !DIDerivedType(tag: DW_TAG_member, scope: !2798, file: !68, line: 65, baseType: !2801, size: 192)
!2801 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2798, file: !68, line: 65, size: 192, elements: !2802)
!2802 = !{!2803, !2810}
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2801, file: !68, line: 66, baseType: !2804, size: 128)
!2804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2805, line: 50, size: 128, elements: !2806)
!2805 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2806 = !{!2807, !2808, !2809}
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2804, file: !2805, line: 52, baseType: !363, size: 64)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2804, file: !2805, line: 54, baseType: !7, size: 32, offset: 64)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2804, file: !2805, line: 55, baseType: !7, size: 32, offset: 96)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2801, file: !68, line: 67, baseType: !363, size: 64, offset: 128)
!2811 = !DIDerivedType(tag: DW_TAG_member, scope: !2798, file: !68, line: 70, baseType: !2812, size: 192)
!2812 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2798, file: !68, line: 70, size: 192, elements: !2813)
!2813 = !{!2814, !2815}
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2812, file: !68, line: 71, baseType: !991, size: 128, align: 64)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2812, file: !68, line: 72, baseType: !363, size: 64, offset: 128)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2794, file: !68, line: 76, baseType: !2817, size: 64, offset: 256)
!2817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2818, size: 64)
!2818 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !68, line: 76, flags: DIFlagFwdDecl)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2794, file: !68, line: 77, baseType: !363, size: 64, offset: 320)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2794, file: !68, line: 79, baseType: !2821, size: 64, offset: 384)
!2821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64)
!2822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2805, line: 25, size: 256, elements: !2823)
!2823 = !{!2824, !2830, !2834}
!2824 = !DIDerivedType(tag: DW_TAG_member, scope: !2822, file: !2805, line: 26, baseType: !2825, size: 128)
!2825 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2822, file: !2805, line: 26, size: 128, elements: !2826)
!2826 = !{!2827, !2829}
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2825, file: !2805, line: 27, baseType: !2828, size: 128)
!2828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !273, size: 128, elements: !2353)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2825, file: !2805, line: 28, baseType: !2828, size: 128)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2822, file: !2805, line: 31, baseType: !2831, size: 64, offset: 128)
!2831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2832, size: 64)
!2832 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2833)
!2833 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2805, line: 23, flags: DIFlagFwdDecl)
!2834 = !DIDerivedType(tag: DW_TAG_member, scope: !2822, file: !2805, line: 33, baseType: !2835, size: 64, offset: 192)
!2835 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2822, file: !2805, line: 33, size: 64, elements: !2836)
!2836 = !{!2837, !2843, !2848}
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2835, file: !2805, line: 38, baseType: !2838, size: 64)
!2838 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2835, file: !2805, line: 34, size: 64, elements: !2839)
!2839 = !{!2840, !2841, !2842}
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2838, file: !2805, line: 35, baseType: !1436, size: 32)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2838, file: !2805, line: 36, baseType: !273, size: 8, offset: 32)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2838, file: !2805, line: 37, baseType: !273, size: 8, offset: 40)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2835, file: !2805, line: 42, baseType: !2844, size: 16)
!2844 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2835, file: !2805, line: 39, size: 16, elements: !2845)
!2845 = !{!2846, !2847}
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2844, file: !2805, line: 40, baseType: !273, size: 8)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2844, file: !2805, line: 41, baseType: !273, size: 8, offset: 8)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2835, file: !2805, line: 46, baseType: !2849, size: 16)
!2849 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2835, file: !2805, line: 43, size: 16, elements: !2850)
!2850 = !{!2851, !2852}
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2849, file: !2805, line: 44, baseType: !273, size: 8)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2849, file: !2805, line: 45, baseType: !273, size: 8, offset: 8)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2794, file: !68, line: 81, baseType: !2854, size: 64, offset: 448)
!2854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2855, size: 64)
!2855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !68, line: 85, size: 384, elements: !2856)
!2856 = !{!2857, !2858, !2859, !2860, !2861, !2862}
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2855, file: !68, line: 86, baseType: !2817, size: 64)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2855, file: !68, line: 87, baseType: !363, size: 64, offset: 64)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2855, file: !68, line: 88, baseType: !363, size: 64, offset: 128)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2855, file: !68, line: 89, baseType: !363, size: 64, offset: 192)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2855, file: !68, line: 90, baseType: !1493, size: 8, offset: 256)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2855, file: !68, line: 92, baseType: !2854, size: 64, offset: 320)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2794, file: !68, line: 82, baseType: !7, size: 32, offset: 512)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1007, file: !190, line: 1463, baseType: !2865, offset: 21184)
!2865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !190, line: 739, elements: !586)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1007, file: !190, line: 1470, baseType: !991, size: 128, align: 64, offset: 21184)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1007, file: !190, line: 1471, baseType: !125, size: 32, offset: 21312)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1007, file: !190, line: 1472, baseType: !133, size: 32, offset: 21344)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1007, file: !190, line: 1474, baseType: !1006, size: 64, offset: 21376)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1007, file: !190, line: 1475, baseType: !2871, size: 320, offset: 21440)
!2871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2872, line: 11, size: 320, elements: !2873)
!2872 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2873 = !{!2874, !2875, !2876, !2881}
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2871, file: !2872, line: 16, baseType: !215, size: 128)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2871, file: !2872, line: 17, baseType: !363, size: 64, offset: 128)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2871, file: !2872, line: 18, baseType: !2877, size: 64, offset: 192)
!2877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2878, size: 64)
!2878 = !DISubroutineType(types: !2879)
!2879 = !{null, !2880}
!2880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2871, size: 64)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2871, file: !2872, line: 19, baseType: !135, size: 32, offset: 256)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1007, file: !190, line: 1478, baseType: !2883, size: 64, offset: 21760)
!2883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2884, size: 64)
!2884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2885, line: 49, size: 512, elements: !2886)
!2885 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!2886 = !{!2887, !2888, !2889, !2890, !2891, !2893, !2894, !2895, !2897}
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2884, file: !2885, line: 50, baseType: !2883, size: 64)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2884, file: !2885, line: 51, baseType: !117, size: 64, offset: 64)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2884, file: !2885, line: 52, baseType: !363, size: 64, offset: 128)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2884, file: !2885, line: 53, baseType: !363, size: 64, offset: 192)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2884, file: !2885, line: 54, baseType: !2892, size: 64, offset: 256)
!2892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !2884, file: !2885, line: 56, baseType: !7, size: 32, offset: 320)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2884, file: !2885, line: 58, baseType: !7, size: 32, offset: 352)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2884, file: !2885, line: 59, baseType: !2896, size: 64, offset: 384)
!2896 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !119, line: 159, baseType: !464)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2884, file: !2885, line: 60, baseType: !2161, size: 64, offset: 448)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1007, file: !190, line: 1482, baseType: !125, size: 32, offset: 21824)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1007, file: !190, line: 1489, baseType: !117, size: 64, offset: 21888)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1007, file: !190, line: 1504, baseType: !117, size: 64, offset: 21952)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1007, file: !190, line: 1505, baseType: !465, size: 64, offset: 22016)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1007, file: !190, line: 1506, baseType: !464, size: 64, offset: 22080)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1007, file: !190, line: 1507, baseType: !465, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1007, file: !190, line: 1508, baseType: !465, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1007, file: !190, line: 1509, baseType: !465, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1007, file: !190, line: 1510, baseType: !991, size: 128, align: 64, offset: 22208)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1007, file: !190, line: 1511, baseType: !133, size: 32, offset: 22336)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1007, file: !190, line: 1515, baseType: !2909, size: 64, offset: 22400)
!2909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1029, line: 56, size: 64, elements: !2910)
!2910 = !{!2911}
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2909, file: !1029, line: 57, baseType: !1032, size: 64)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1007, file: !190, line: 1518, baseType: !2909, size: 64, offset: 22464)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1007, file: !190, line: 1528, baseType: !991, size: 128, align: 64, offset: 22528)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1007, file: !190, line: 1552, baseType: !2915, size: 35328, offset: 23040)
!2915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2916, line: 430, size: 35328, elements: !2917)
!2916 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!2917 = !{!2918, !2936, !2937, !2938, !2939, !2940, !2941, !2942, !2943, !2947, !2948, !2949, !2950, !2951, !2952, !2955, !2956, !2957, !2958}
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2915, file: !2916, line: 432, baseType: !2919, size: 192)
!2919 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2920, size: 192, elements: !314)
!2920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2921, line: 16, size: 64, elements: !2922)
!2921 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!2922 = !{!2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2935}
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2920, file: !2921, line: 17, baseType: !281, size: 16)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2920, file: !2921, line: 18, baseType: !281, size: 16, offset: 16)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2920, file: !2921, line: 19, baseType: !281, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2920, file: !2921, line: 19, baseType: !281, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2920, file: !2921, line: 19, baseType: !281, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2920, file: !2921, line: 19, baseType: !281, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2920, file: !2921, line: 19, baseType: !281, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2920, file: !2921, line: 20, baseType: !281, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2920, file: !2921, line: 20, baseType: !281, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2920, file: !2921, line: 20, baseType: !281, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2920, file: !2921, line: 20, baseType: !281, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2920, file: !2921, line: 20, baseType: !281, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2920, file: !2921, line: 20, baseType: !281, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2915, file: !2916, line: 436, baseType: !363, size: 64, offset: 192)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2915, file: !2916, line: 440, baseType: !283, size: 16, offset: 256)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2915, file: !2916, line: 441, baseType: !283, size: 16, offset: 272)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2915, file: !2916, line: 442, baseType: !283, size: 16, offset: 288)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2915, file: !2916, line: 443, baseType: !283, size: 16, offset: 304)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2915, file: !2916, line: 447, baseType: !363, size: 64, offset: 320)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2915, file: !2916, line: 448, baseType: !363, size: 64, offset: 384)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2915, file: !2916, line: 459, baseType: !2944, size: 256, offset: 448)
!2944 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2945, size: 256, elements: !1381)
!2945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2946, size: 64)
!2946 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2916, line: 428, flags: DIFlagFwdDecl)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2915, file: !2916, line: 461, baseType: !363, size: 64, offset: 704)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2915, file: !2916, line: 463, baseType: !363, size: 64, offset: 768)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2915, file: !2916, line: 465, baseType: !363, size: 64, offset: 832)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2915, file: !2916, line: 466, baseType: !363, size: 64, offset: 896)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2915, file: !2916, line: 467, baseType: !363, size: 64, offset: 960)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2915, file: !2916, line: 473, baseType: !2953, size: 64, offset: 1024)
!2953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2954, size: 64)
!2954 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2916, line: 10, flags: DIFlagFwdDecl)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2915, file: !2916, line: 480, baseType: !363, size: 64, offset: 1088)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !2915, file: !2916, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !2915, file: !2916, line: 491, baseType: !135, size: 32, offset: 1184)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2915, file: !2916, line: 501, baseType: !2959, size: 33792, offset: 1536)
!2959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2960, line: 448, size: 33792, elements: !2961)
!2960 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!2961 = !{!2962, !2963, !2964, !3126, !3127, !3133, !3134}
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2959, file: !2960, line: 461, baseType: !7, size: 32)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2959, file: !2960, line: 468, baseType: !363, size: 64, offset: 64)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !2959, file: !2960, line: 476, baseType: !2965, size: 64, offset: 128)
!2965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2966, size: 64)
!2966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !2960, line: 356, size: 33280, align: 512, elements: !2967)
!2967 = !{!2968, !2969, !2970, !2971, !2972, !2973, !2974, !2975, !2976, !2977}
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2966, file: !2960, line: 358, baseType: !7, size: 32)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !2966, file: !2960, line: 361, baseType: !7, size: 32, offset: 32)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2966, file: !2960, line: 364, baseType: !464, size: 64, offset: 64)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !2966, file: !2960, line: 367, baseType: !464, size: 64, offset: 128)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !2966, file: !2960, line: 370, baseType: !464, size: 64, offset: 192)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !2966, file: !2960, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !2966, file: !2960, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !2966, file: !2960, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !2966, file: !2960, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2966, file: !2960, line: 397, baseType: !2978, size: 32768, offset: 512)
!2978 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2960, line: 348, size: 32768, elements: !2979)
!2979 = !{!2980, !2995, !3032, !3109, !3122}
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2978, file: !2960, line: 349, baseType: !2981, size: 896)
!2981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2960, line: 12, size: 896, elements: !2982)
!2982 = !{!2983, !2984, !2985, !2986, !2987, !2988, !2989, !2990, !2994}
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2981, file: !2960, line: 13, baseType: !135, size: 32)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2981, file: !2960, line: 14, baseType: !135, size: 32, offset: 32)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2981, file: !2960, line: 15, baseType: !135, size: 32, offset: 64)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2981, file: !2960, line: 16, baseType: !135, size: 32, offset: 96)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2981, file: !2960, line: 17, baseType: !135, size: 32, offset: 128)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2981, file: !2960, line: 18, baseType: !135, size: 32, offset: 160)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2981, file: !2960, line: 19, baseType: !135, size: 32, offset: 192)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2981, file: !2960, line: 22, baseType: !2991, size: 640, offset: 224)
!2991 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 640, elements: !2992)
!2992 = !{!2993}
!2993 = !DISubrange(count: 20)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2981, file: !2960, line: 25, baseType: !135, size: 32, offset: 864)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2978, file: !2960, line: 350, baseType: !2996, size: 4096, align: 128)
!2996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2960, line: 34, size: 4096, align: 128, elements: !2997)
!2997 = !{!2998, !2999, !3000, !3001, !3002, !3017, !3018, !3019, !3021, !3023, !3027}
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2996, file: !2960, line: 35, baseType: !281, size: 16)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2996, file: !2960, line: 36, baseType: !281, size: 16, offset: 16)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2996, file: !2960, line: 37, baseType: !281, size: 16, offset: 32)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2996, file: !2960, line: 38, baseType: !281, size: 16, offset: 48)
!3002 = !DIDerivedType(tag: DW_TAG_member, scope: !2996, file: !2960, line: 39, baseType: !3003, size: 128, offset: 64)
!3003 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2996, file: !2960, line: 39, size: 128, elements: !3004)
!3004 = !{!3005, !3010}
!3005 = !DIDerivedType(tag: DW_TAG_member, scope: !3003, file: !2960, line: 40, baseType: !3006, size: 128)
!3006 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3003, file: !2960, line: 40, size: 128, elements: !3007)
!3007 = !{!3008, !3009}
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3006, file: !2960, line: 41, baseType: !464, size: 64)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3006, file: !2960, line: 42, baseType: !464, size: 64, offset: 64)
!3010 = !DIDerivedType(tag: DW_TAG_member, scope: !3003, file: !2960, line: 44, baseType: !3011, size: 128)
!3011 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3003, file: !2960, line: 44, size: 128, elements: !3012)
!3012 = !{!3013, !3014, !3015, !3016}
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3011, file: !2960, line: 45, baseType: !135, size: 32)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3011, file: !2960, line: 46, baseType: !135, size: 32, offset: 32)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3011, file: !2960, line: 47, baseType: !135, size: 32, offset: 64)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3011, file: !2960, line: 48, baseType: !135, size: 32, offset: 96)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2996, file: !2960, line: 51, baseType: !135, size: 32, offset: 192)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2996, file: !2960, line: 52, baseType: !135, size: 32, offset: 224)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2996, file: !2960, line: 55, baseType: !3020, size: 1024, offset: 256)
!3020 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 1024, elements: !473)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2996, file: !2960, line: 58, baseType: !3022, size: 2048, offset: 1280)
!3022 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 2048, elements: !318)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2996, file: !2960, line: 60, baseType: !3024, size: 384, offset: 3328)
!3024 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 384, elements: !3025)
!3025 = !{!3026}
!3026 = !DISubrange(count: 12)
!3027 = !DIDerivedType(tag: DW_TAG_member, scope: !2996, file: !2960, line: 62, baseType: !3028, size: 384, offset: 3712)
!3028 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2996, file: !2960, line: 62, size: 384, elements: !3029)
!3029 = !{!3030, !3031}
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3028, file: !2960, line: 63, baseType: !3024, size: 384)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3028, file: !2960, line: 64, baseType: !3024, size: 384)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2978, file: !2960, line: 351, baseType: !3033, size: 1088)
!3033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2960, line: 79, size: 1088, elements: !3034)
!3034 = !{!3035, !3036, !3037, !3038, !3039, !3040, !3041, !3042, !3043, !3044, !3045, !3046, !3047, !3048, !3049, !3108}
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3033, file: !2960, line: 80, baseType: !135, size: 32)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3033, file: !2960, line: 81, baseType: !135, size: 32, offset: 32)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3033, file: !2960, line: 82, baseType: !135, size: 32, offset: 64)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3033, file: !2960, line: 83, baseType: !135, size: 32, offset: 96)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3033, file: !2960, line: 84, baseType: !135, size: 32, offset: 128)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3033, file: !2960, line: 85, baseType: !135, size: 32, offset: 160)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3033, file: !2960, line: 86, baseType: !135, size: 32, offset: 192)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3033, file: !2960, line: 88, baseType: !2991, size: 640, offset: 224)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3033, file: !2960, line: 89, baseType: !273, size: 8, offset: 864)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3033, file: !2960, line: 90, baseType: !273, size: 8, offset: 872)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3033, file: !2960, line: 91, baseType: !273, size: 8, offset: 880)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3033, file: !2960, line: 92, baseType: !273, size: 8, offset: 888)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3033, file: !2960, line: 93, baseType: !273, size: 8, offset: 896)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3033, file: !2960, line: 94, baseType: !273, size: 8, offset: 904)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3033, file: !2960, line: 95, baseType: !3050, size: 64, offset: 960)
!3050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3051, size: 64)
!3051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3052, line: 11, size: 128, elements: !3053)
!3052 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3053 = !{!3054, !3055}
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3051, file: !3052, line: 12, baseType: !349, size: 64)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3051, file: !3052, line: 13, baseType: !3056, size: 64, offset: 64)
!3056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3057, size: 64)
!3057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3058, line: 103, size: 1344, elements: !3059)
!3058 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3059 = !{!3060, !3061, !3062, !3063, !3064, !3065, !3066, !3067, !3068, !3069, !3070, !3071, !3072, !3073, !3074, !3075, !3076, !3077, !3088, !3089, !3090}
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3057, file: !3058, line: 109, baseType: !363, size: 64)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3057, file: !3058, line: 110, baseType: !363, size: 64, offset: 64)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3057, file: !3058, line: 111, baseType: !363, size: 64, offset: 128)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3057, file: !3058, line: 112, baseType: !363, size: 64, offset: 192)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3057, file: !3058, line: 113, baseType: !363, size: 64, offset: 256)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3057, file: !3058, line: 114, baseType: !363, size: 64, offset: 320)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3057, file: !3058, line: 117, baseType: !363, size: 64, offset: 384)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3057, file: !3058, line: 118, baseType: !363, size: 64, offset: 448)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3057, file: !3058, line: 119, baseType: !363, size: 64, offset: 512)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3057, file: !3058, line: 120, baseType: !363, size: 64, offset: 576)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3057, file: !3058, line: 121, baseType: !363, size: 64, offset: 640)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3057, file: !3058, line: 122, baseType: !363, size: 64, offset: 704)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3057, file: !3058, line: 123, baseType: !363, size: 64, offset: 768)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3057, file: !3058, line: 124, baseType: !363, size: 64, offset: 832)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3057, file: !3058, line: 125, baseType: !363, size: 64, offset: 896)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3057, file: !3058, line: 139, baseType: !363, size: 64, offset: 960)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3057, file: !3058, line: 142, baseType: !363, size: 64, offset: 1024)
!3077 = !DIDerivedType(tag: DW_TAG_member, scope: !3057, file: !3058, line: 144, baseType: !3078, size: 64, offset: 1088)
!3078 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3057, file: !3058, line: 144, size: 64, elements: !3079)
!3079 = !{!3080, !3081, !3082}
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3078, file: !3058, line: 146, baseType: !281, size: 16)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3078, file: !3058, line: 148, baseType: !464, size: 64)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3078, file: !3058, line: 150, baseType: !3083, size: 64)
!3083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3058, line: 59, size: 64, elements: !3084)
!3084 = !{!3085, !3086, !3087}
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3083, file: !3058, line: 61, baseType: !464, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3083, file: !3058, line: 63, baseType: !464, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3083, file: !3058, line: 65, baseType: !464, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3057, file: !3058, line: 153, baseType: !363, size: 64, offset: 1152)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3057, file: !3058, line: 154, baseType: !363, size: 64, offset: 1216)
!3090 = !DIDerivedType(tag: DW_TAG_member, scope: !3057, file: !3058, line: 156, baseType: !3091, size: 64, offset: 1280)
!3091 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3057, file: !3058, line: 156, size: 64, elements: !3092)
!3092 = !{!3093, !3094, !3095}
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3091, file: !3058, line: 158, baseType: !281, size: 16)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3091, file: !3058, line: 160, baseType: !464, size: 64)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3091, file: !3058, line: 162, baseType: !3096, size: 64)
!3096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3058, line: 69, size: 64, elements: !3097)
!3097 = !{!3098, !3099, !3100, !3101, !3102, !3103, !3104, !3105, !3106, !3107}
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3096, file: !3058, line: 71, baseType: !464, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3096, file: !3058, line: 73, baseType: !464, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3096, file: !3058, line: 75, baseType: !464, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3096, file: !3058, line: 77, baseType: !464, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3096, file: !3058, line: 80, baseType: !464, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3096, file: !3058, line: 83, baseType: !464, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3096, file: !3058, line: 86, baseType: !464, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3096, file: !3058, line: 88, baseType: !464, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3096, file: !3058, line: 93, baseType: !464, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3096, file: !3058, line: 100, baseType: !464, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3033, file: !2960, line: 96, baseType: !135, size: 32, offset: 1024)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2978, file: !2960, line: 352, baseType: !3110, size: 4608, align: 512)
!3110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2960, line: 333, size: 4608, align: 512, elements: !3111)
!3111 = !{!3112, !3113, !3120}
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3110, file: !2960, line: 334, baseType: !2996, size: 4096, align: 128)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3110, file: !2960, line: 335, baseType: !3114, size: 512, offset: 4096)
!3114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2960, line: 312, size: 512, elements: !3115)
!3115 = !{!3116, !3117, !3118}
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3114, file: !2960, line: 313, baseType: !464, size: 64)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3114, file: !2960, line: 314, baseType: !464, size: 64, offset: 64)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3114, file: !2960, line: 315, baseType: !3119, size: 384, offset: 128)
!3119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !464, size: 384, elements: !1480)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3110, file: !2960, line: 336, baseType: !3121, offset: 4608)
!3121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !273, elements: !1394)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2978, file: !2960, line: 353, baseType: !3123, size: 32768)
!3123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !273, size: 32768, elements: !3124)
!3124 = !{!3125}
!3125 = !DISubrange(count: 4096)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !2959, file: !2960, line: 484, baseType: !2965, size: 64, offset: 192)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2959, file: !2960, line: 491, baseType: !3128, size: 128, offset: 256)
!3128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !2960, line: 404, size: 128, elements: !3129)
!3129 = !{!3130, !3131, !3132}
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3128, file: !2960, line: 424, baseType: !464, size: 64)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3128, file: !2960, line: 432, baseType: !7, size: 32, offset: 64)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3128, file: !2960, line: 440, baseType: !7, size: 32, offset: 96)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !2959, file: !2960, line: 498, baseType: !3128, size: 128, offset: 384)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !2959, file: !2960, line: 508, baseType: !2966, size: 33280, align: 512, offset: 512)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !974, file: !975, line: 16, baseType: !984, size: 192, offset: 512)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !974, file: !975, line: 17, baseType: !129, size: 32, offset: 704)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !543, file: !14, line: 1240, baseType: !117, size: 64, offset: 6912)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !543, file: !14, line: 1243, baseType: !135, size: 32, offset: 6976)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !543, file: !14, line: 1245, baseType: !732, size: 64, offset: 7040)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !543, file: !14, line: 1246, baseType: !732, size: 64, offset: 7104)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !543, file: !14, line: 1248, baseType: !137, size: 32, offset: 7168)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !543, file: !14, line: 1249, baseType: !3143, size: 64, offset: 7232)
!3143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3144, size: 64)
!3144 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !543, file: !14, line: 1252, baseType: !3146, size: 256, offset: 7296)
!3146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 256, elements: !473)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !543, file: !14, line: 1253, baseType: !3148, size: 128, offset: 7552)
!3148 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3149, line: 21, baseType: !3150)
!3149 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3150 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3149, line: 19, size: 128, elements: !3151)
!3151 = !{!3152}
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3150, file: !3149, line: 20, baseType: !3153, size: 128)
!3153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !274, size: 128, elements: !2353)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !543, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !543, file: !14, line: 1261, baseType: !679, size: 256, offset: 7744)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !543, file: !14, line: 1267, baseType: !238, size: 64, offset: 8000)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !543, file: !14, line: 1269, baseType: !489, size: 64, offset: 8064)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !543, file: !14, line: 1271, baseType: !3159, size: 448, offset: 8128)
!3159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !741, line: 63, size: 448, elements: !3160)
!3160 = !{!3161, !3166, !3167, !3168, !3169, !3170, !3171}
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3159, file: !741, line: 64, baseType: !3162, size: 64)
!3162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3163, size: 64)
!3163 = !DISubroutineType(types: !3164)
!3164 = !{!363, !3165, !739}
!3165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3159, size: 64)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3159, file: !741, line: 66, baseType: !3162, size: 64, offset: 64)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3159, file: !741, line: 69, baseType: !349, size: 64, offset: 128)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3159, file: !741, line: 70, baseType: !133, size: 32, offset: 192)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3159, file: !741, line: 71, baseType: !7, size: 32, offset: 224)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3159, file: !741, line: 74, baseType: !149, size: 128, offset: 256)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3159, file: !741, line: 85, baseType: !3172, size: 64, offset: 384)
!3172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !543, file: !14, line: 1274, baseType: !683, size: 64, offset: 8576)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !543, file: !14, line: 1280, baseType: !683, size: 64, offset: 8640)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !543, file: !14, line: 1283, baseType: !133, size: 32, offset: 8704)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !543, file: !14, line: 1286, baseType: !2072, size: 32, offset: 8736)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !543, file: !14, line: 1289, baseType: !3178, size: 64, offset: 8768)
!3178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3179, size: 64)
!3179 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2201, line: 18, flags: DIFlagFwdDecl)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !543, file: !14, line: 1290, baseType: !211, size: 64, offset: 8832)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !543, file: !14, line: 1297, baseType: !1576, size: 64, offset: 8896)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !543, file: !14, line: 1304, baseType: !3183, size: 64, offset: 8960)
!3183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3184, line: 49, size: 64, elements: !3185)
!3184 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3185 = !{!3186}
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3183, file: !3184, line: 50, baseType: !3187, size: 64)
!3187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3188, size: 64)
!3188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3184, line: 41, size: 512, align: 512, elements: !3189)
!3189 = !{!3190, !3191, !3196}
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3188, file: !3184, line: 43, baseType: !249, size: 32)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3188, file: !3184, line: 45, baseType: !3192, size: 192, offset: 64)
!3192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3184, line: 29, size: 192, elements: !3193)
!3193 = !{!3194, !3195}
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3192, file: !3184, line: 30, baseType: !149, size: 128)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3192, file: !3184, line: 32, baseType: !349, size: 64, offset: 128)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3188, file: !3184, line: 46, baseType: !349, size: 64, offset: 256)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !543, file: !14, line: 1305, baseType: !3183, size: 64, offset: 9024)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !543, file: !14, line: 1306, baseType: !991, size: 128, align: 64, offset: 9088)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !543, file: !14, line: 1307, baseType: !2200, size: 256, offset: 9216)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !543, file: !14, line: 1309, baseType: !679, size: 256, offset: 9472)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !543, file: !14, line: 1314, baseType: !133, size: 32, offset: 9728)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !543, file: !14, line: 1317, baseType: !249, size: 32, align: 512, offset: 10240)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !543, file: !14, line: 1318, baseType: !149, size: 128, offset: 10304)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !543, file: !14, line: 1320, baseType: !249, size: 32, offset: 10432)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !543, file: !14, line: 1321, baseType: !149, size: 128, offset: 10496)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !537, file: !538, line: 73, baseType: !133, size: 32, offset: 128)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !537, file: !538, line: 74, baseType: !3208, size: 64, offset: 192)
!3208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3209, size: 64)
!3209 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1418, line: 42, flags: DIFlagFwdDecl)
!3210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !491, file: !430, line: 141, baseType: !3212, size: 64, offset: 704)
!3212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3213, size: 64)
!3213 = !DISubroutineType(types: !3214)
!3214 = !{!133, !801, !1493}
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !491, file: !430, line: 142, baseType: !3216, size: 64, offset: 768)
!3216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3217, size: 64)
!3217 = !DISubroutineType(types: !3218)
!3218 = !{!428, !428, !3219}
!3219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3220, size: 64)
!3220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !394)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !429, file: !430, line: 96, baseType: !542, size: 64, offset: 832)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !429, file: !430, line: 97, baseType: !363, size: 64, offset: 896)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !429, file: !430, line: 98, baseType: !117, size: 64, offset: 960)
!3224 = !DIDerivedType(tag: DW_TAG_member, scope: !429, file: !430, line: 100, baseType: !3225, size: 128, offset: 1024)
!3225 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !429, file: !430, line: 100, size: 128, elements: !3226)
!3226 = !{!3227, !3228}
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3225, file: !430, line: 101, baseType: !149, size: 128)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3225, file: !430, line: 102, baseType: !3229, size: 64)
!3229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !429, file: !430, line: 104, baseType: !149, size: 128, offset: 1152)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !429, file: !430, line: 105, baseType: !149, size: 128, offset: 1280)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !429, file: !430, line: 113, baseType: !3233, size: 128, offset: 1408)
!3233 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !429, file: !430, line: 109, size: 128, elements: !3234)
!3234 = !{!3235, !3236, !3237}
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3233, file: !430, line: 110, baseType: !215, size: 128)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3233, file: !430, line: 111, baseType: !444, size: 128)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3233, file: !430, line: 112, baseType: !991, size: 128, align: 64)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !422, file: !14, line: 1968, baseType: !3239, size: 64, offset: 64)
!3239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3240, size: 64)
!3240 = !DISubroutineType(types: !3241)
!3241 = !{!238, !428, !393, !3242}
!3242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3243, size: 64)
!3243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3244, line: 10, size: 128, elements: !3245)
!3244 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3245 = !{!3246, !3250}
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3243, file: !3244, line: 11, baseType: !3247, size: 64)
!3247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3248, size: 64)
!3248 = !DISubroutineType(types: !3249)
!3249 = !{null, !117}
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3243, file: !3244, line: 12, baseType: !117, size: 64, offset: 64)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !422, file: !14, line: 1969, baseType: !3252, size: 64, offset: 128)
!3252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3253, size: 64)
!3253 = !DISubroutineType(types: !3254)
!3254 = !{!133, !3208, !393, !133}
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !422, file: !14, line: 1970, baseType: !3256, size: 64, offset: 192)
!3256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3257, size: 64)
!3257 = !DISubroutineType(types: !3258)
!3258 = !{!416, !393, !133, !1493}
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !422, file: !14, line: 1972, baseType: !3260, size: 64, offset: 256)
!3260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3261, size: 64)
!3261 = !DISubroutineType(types: !3262)
!3262 = !{!133, !428, !313, !133}
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !422, file: !14, line: 1974, baseType: !3264, size: 64, offset: 320)
!3264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3265, size: 64)
!3265 = !DISubroutineType(types: !3266)
!3266 = !{!133, !3208, !393, !428, !355, !1493}
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !422, file: !14, line: 1976, baseType: !3268, size: 64, offset: 384)
!3268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3269, size: 64)
!3269 = !DISubroutineType(types: !3270)
!3270 = !{!133, !428, !393, !428}
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !422, file: !14, line: 1977, baseType: !3272, size: 64, offset: 448)
!3272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3273, size: 64)
!3273 = !DISubroutineType(types: !3274)
!3274 = !{!133, !393, !428}
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !422, file: !14, line: 1978, baseType: !3276, size: 64, offset: 512)
!3276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3277, size: 64)
!3277 = !DISubroutineType(types: !3278)
!3278 = !{!133, !3208, !393, !428, !238}
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !422, file: !14, line: 1980, baseType: !3280, size: 64, offset: 576)
!3280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3281, size: 64)
!3281 = !DISubroutineType(types: !3282)
!3282 = !{!133, !3208, !393, !428, !355}
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !422, file: !14, line: 1982, baseType: !3272, size: 64, offset: 640)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !422, file: !14, line: 1983, baseType: !3285, size: 64, offset: 704)
!3285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3286, size: 64)
!3286 = !DISubroutineType(types: !3287)
!3287 = !{!133, !3208, !393, !428, !355, !547}
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !422, file: !14, line: 1985, baseType: !3289, size: 64, offset: 768)
!3289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3290, size: 64)
!3290 = !DISubroutineType(types: !3291)
!3291 = !{!133, !3208, !393, !428, !393, !428, !7}
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !422, file: !14, line: 1987, baseType: !3293, size: 64, offset: 832)
!3293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3294, size: 64)
!3294 = !DISubroutineType(types: !3295)
!3295 = !{!133, !3208, !428, !3296}
!3296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3297, size: 64)
!3297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !3298)
!3298 = !{!3299, !3300, !3301, !3311, !3320, !3321, !3326, !3327, !3328}
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3297, file: !14, line: 227, baseType: !7, size: 32)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3297, file: !14, line: 228, baseType: !355, size: 16, offset: 32)
!3301 = !DIDerivedType(tag: DW_TAG_member, scope: !3297, file: !14, line: 241, baseType: !3302, size: 32, offset: 64)
!3302 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3297, file: !14, line: 241, size: 32, elements: !3303)
!3303 = !{!3304, !3305}
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3302, file: !14, line: 242, baseType: !399, size: 32)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3302, file: !14, line: 243, baseType: !3306, size: 32)
!3306 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3307, line: 16, baseType: !3308)
!3307 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3308 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3307, line: 14, size: 32, elements: !3309)
!3309 = !{!3310}
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3308, file: !3307, line: 15, baseType: !404, size: 32)
!3311 = !DIDerivedType(tag: DW_TAG_member, scope: !3297, file: !14, line: 245, baseType: !3312, size: 32, offset: 96)
!3312 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3297, file: !14, line: 245, size: 32, elements: !3313)
!3313 = !{!3314, !3315}
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3312, file: !14, line: 246, baseType: !408, size: 32)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3312, file: !14, line: 247, baseType: !3316, size: 32)
!3316 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3307, line: 20, baseType: !3317)
!3317 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3307, line: 18, size: 32, elements: !3318)
!3318 = !{!3319}
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3317, file: !3307, line: 19, baseType: !412, size: 32)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3297, file: !14, line: 249, baseType: !552, size: 64, offset: 128)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3297, file: !14, line: 250, baseType: !3322, size: 128, offset: 192)
!3322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !733, line: 13, size: 128, elements: !3323)
!3323 = !{!3324, !3325}
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3322, file: !733, line: 14, baseType: !732, size: 64)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3322, file: !733, line: 15, baseType: !349, size: 64, offset: 64)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3297, file: !14, line: 251, baseType: !3322, size: 128, offset: 320)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3297, file: !14, line: 252, baseType: !3322, size: 128, offset: 448)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3297, file: !14, line: 259, baseType: !1332, size: 64, offset: 576)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !422, file: !14, line: 1988, baseType: !3330, size: 64, offset: 896)
!3330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3331, size: 64)
!3331 = !DISubroutineType(types: !3332)
!3332 = !{!133, !3208, !801, !3333, !135, !7}
!3333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3334, size: 64)
!3334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3335, line: 22, size: 1280, elements: !3336)
!3335 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3336 = !{!3337, !3338, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357}
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3334, file: !3335, line: 23, baseType: !135, size: 32)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3334, file: !3335, line: 24, baseType: !355, size: 16, offset: 32)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3334, file: !3335, line: 25, baseType: !7, size: 32, offset: 64)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3334, file: !3335, line: 26, baseType: !1458, size: 32, offset: 96)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3334, file: !3335, line: 27, baseType: !464, size: 64, offset: 128)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3334, file: !3335, line: 28, baseType: !464, size: 64, offset: 192)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3334, file: !3335, line: 41, baseType: !464, size: 64, offset: 256)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3334, file: !3335, line: 42, baseType: !547, size: 32, offset: 320)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3334, file: !3335, line: 43, baseType: !547, size: 32, offset: 352)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3334, file: !3335, line: 44, baseType: !399, size: 32, offset: 384)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3334, file: !3335, line: 45, baseType: !408, size: 32, offset: 416)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3334, file: !3335, line: 46, baseType: !552, size: 64, offset: 448)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3334, file: !3335, line: 47, baseType: !3322, size: 128, offset: 512)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3334, file: !3335, line: 48, baseType: !3322, size: 128, offset: 640)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3334, file: !3335, line: 49, baseType: !3322, size: 128, offset: 768)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3334, file: !3335, line: 50, baseType: !3322, size: 128, offset: 896)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3334, file: !3335, line: 51, baseType: !464, size: 64, offset: 1024)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3334, file: !3335, line: 52, baseType: !464, size: 64, offset: 1088)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3334, file: !3335, line: 53, baseType: !135, size: 32, offset: 1152)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3334, file: !3335, line: 54, baseType: !135, size: 32, offset: 1184)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3334, file: !3335, line: 55, baseType: !464, size: 64, offset: 1216)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !422, file: !14, line: 1990, baseType: !3359, size: 64, offset: 960)
!3359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3360, size: 64)
!3360 = !DISubroutineType(types: !3361)
!3361 = !{!345, !428, !313, !360}
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !422, file: !14, line: 1991, baseType: !3363, size: 64, offset: 1024)
!3363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3364, size: 64)
!3364 = !DISubroutineType(types: !3365)
!3365 = !{!133, !393, !3366, !464, !464}
!3366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3367, size: 64)
!3367 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !422, file: !14, line: 1993, baseType: !3369, size: 64, offset: 1088)
!3369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3370, size: 64)
!3370 = !DISubroutineType(types: !3371)
!3371 = !{!133, !393, !133}
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !422, file: !14, line: 1994, baseType: !3373, size: 64, offset: 1152)
!3373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3374, size: 64)
!3374 = !DISubroutineType(types: !3375)
!3375 = !{!133, !393, !428, !1332, !7, !355}
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !422, file: !14, line: 1997, baseType: !3377, size: 64, offset: 1216)
!3377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3378, size: 64)
!3378 = !DISubroutineType(types: !3379)
!3379 = !{!133, !3208, !393, !1332, !355}
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !422, file: !14, line: 1999, baseType: !3381, size: 64, offset: 1280)
!3381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3382, size: 64)
!3382 = !DISubroutineType(types: !3383)
!3383 = !{!416, !3208, !428, !133}
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !422, file: !14, line: 2001, baseType: !3385, size: 64, offset: 1344)
!3385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3386, size: 64)
!3386 = !DISubroutineType(types: !3387)
!3387 = !{!133, !3208, !428, !416, !133}
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !422, file: !14, line: 2003, baseType: !3389, size: 64, offset: 1408)
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3390, size: 64)
!3390 = !DISubroutineType(types: !3391)
!3391 = !{!133, !3208, !428, !3392}
!3392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3393, size: 64)
!3393 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !422, file: !14, line: 2005, baseType: !3395, size: 64, offset: 1472)
!3395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3396, size: 64)
!3396 = !DISubroutineType(types: !3397)
!3397 = !{!133, !428, !3392}
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !422, file: !14, line: 2006, baseType: !3399, size: 64, offset: 1536)
!3399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3400, size: 64)
!3400 = !DISubroutineType(types: !3401)
!3401 = !{!3402, !393}
!3402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3403, size: 64)
!3403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !3404)
!3404 = !{!3405, !3412}
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3403, file: !14, line: 3193, baseType: !3406, size: 128)
!3406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3407, line: 296, size: 128, elements: !3408)
!3407 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3408 = !{!3409, !3410, !3411}
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3406, file: !3407, line: 297, baseType: !249, size: 32)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3406, file: !3407, line: 299, baseType: !118, size: 32, offset: 32)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3406, file: !3407, line: 300, baseType: !117, size: 64, offset: 64)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3403, file: !14, line: 3194, baseType: !135, size: 32, offset: 128)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !394, file: !14, line: 655, baseType: !542, size: 64, offset: 448)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !394, file: !14, line: 656, baseType: !389, size: 64, offset: 512)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !394, file: !14, line: 659, baseType: !117, size: 64, offset: 576)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !394, file: !14, line: 663, baseType: !363, size: 64, offset: 640)
!3417 = !DIDerivedType(tag: DW_TAG_member, scope: !394, file: !14, line: 671, baseType: !3418, size: 32, offset: 704)
!3418 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !394, file: !14, line: 671, size: 32, elements: !3419)
!3419 = !{!3420, !3422}
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3418, file: !14, line: 672, baseType: !3421, size: 32)
!3421 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3418, file: !14, line: 673, baseType: !7, size: 32)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !394, file: !14, line: 675, baseType: !547, size: 32, offset: 736)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !394, file: !14, line: 676, baseType: !552, size: 64, offset: 768)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !394, file: !14, line: 677, baseType: !3322, size: 128, offset: 832)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !394, file: !14, line: 678, baseType: !3322, size: 128, offset: 960)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !394, file: !14, line: 679, baseType: !3322, size: 128, offset: 1088)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !394, file: !14, line: 680, baseType: !249, size: 32, offset: 1216)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !394, file: !14, line: 681, baseType: !283, size: 16, offset: 1248)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !394, file: !14, line: 682, baseType: !273, size: 8, offset: 1264)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !394, file: !14, line: 683, baseType: !273, size: 8, offset: 1272)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !394, file: !14, line: 684, baseType: !879, size: 64, offset: 1280)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !394, file: !14, line: 691, baseType: !363, size: 64, offset: 1344)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !394, file: !14, line: 692, baseType: !891, size: 320, offset: 1408)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !394, file: !14, line: 694, baseType: !363, size: 64, offset: 1728)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !394, file: !14, line: 695, baseType: !363, size: 64, offset: 1792)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !394, file: !14, line: 697, baseType: !215, size: 128, offset: 1856)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !394, file: !14, line: 698, baseType: !149, size: 128, offset: 1984)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !394, file: !14, line: 707, baseType: !149, size: 128, offset: 2112)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !394, file: !14, line: 708, baseType: !149, size: 128, offset: 2240)
!3441 = !DIDerivedType(tag: DW_TAG_member, scope: !394, file: !14, line: 709, baseType: !3442, size: 128, offset: 2368)
!3442 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !394, file: !14, line: 709, size: 128, elements: !3443)
!3443 = !{!3444, !3445}
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3442, file: !14, line: 710, baseType: !211, size: 64)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3442, file: !14, line: 711, baseType: !991, size: 128, align: 64)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !394, file: !14, line: 713, baseType: !685, size: 64, offset: 2496)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !394, file: !14, line: 714, baseType: !685, size: 64, offset: 2560)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !394, file: !14, line: 715, baseType: !129, size: 32, offset: 2624)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !394, file: !14, line: 716, baseType: !129, size: 32, offset: 2656)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !394, file: !14, line: 717, baseType: !129, size: 32, offset: 2688)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !394, file: !14, line: 719, baseType: !129, size: 32, offset: 2720)
!3452 = !DIDerivedType(tag: DW_TAG_member, scope: !394, file: !14, line: 721, baseType: !3453, size: 64, offset: 2752)
!3453 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !394, file: !14, line: 721, size: 64, elements: !3454)
!3454 = !{!3455, !3456}
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3453, file: !14, line: 722, baseType: !1607, size: 64)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3453, file: !14, line: 723, baseType: !605, size: 64)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !394, file: !14, line: 725, baseType: !3458, size: 64, offset: 2816)
!3458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3459, size: 64)
!3459 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !394, file: !14, line: 726, baseType: !390, size: 1536, align: 64, offset: 2880)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !394, file: !14, line: 727, baseType: !149, size: 128, offset: 4416)
!3462 = !DIDerivedType(tag: DW_TAG_member, scope: !394, file: !14, line: 728, baseType: !3463, size: 64, offset: 4544)
!3463 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !394, file: !14, line: 728, size: 64, elements: !3464)
!3464 = !{!3465, !3466, !3469, !3470}
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3463, file: !14, line: 729, baseType: !2022, size: 64)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3463, file: !14, line: 730, baseType: !3467, size: 64)
!3467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3468, size: 64)
!3468 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !14, line: 730, flags: DIFlagFwdDecl)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3463, file: !14, line: 731, baseType: !313, size: 64)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3463, file: !14, line: 732, baseType: !7, size: 32)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !394, file: !14, line: 735, baseType: !137, size: 32, offset: 4608)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !394, file: !14, line: 738, baseType: !137, size: 32, offset: 4640)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !394, file: !14, line: 739, baseType: !3143, size: 64, offset: 4672)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !394, file: !14, line: 750, baseType: !117, size: 64, offset: 4736)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !390, file: !14, line: 474, baseType: !3406, size: 128, offset: 64)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !390, file: !14, line: 475, baseType: !891, size: 320, offset: 192)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !390, file: !14, line: 476, baseType: !118, size: 32, offset: 512)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !390, file: !14, line: 477, baseType: !129, size: 32, offset: 544)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !390, file: !14, line: 482, baseType: !1188, size: 128, offset: 576)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !390, file: !14, line: 483, baseType: !363, size: 64, offset: 704)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !390, file: !14, line: 484, baseType: !363, size: 64, offset: 768)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !390, file: !14, line: 485, baseType: !3483, size: 64, offset: 832)
!3483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3484, size: 64)
!3484 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3485)
!3485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !3486)
!3486 = !{!3487, !3491, !3561, !3565, !3569, !3575, !3579, !3583, !3588, !3592, !3596, !3600, !3601, !3605, !3609, !3613, !3618, !3622, !3629, !3630}
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3485, file: !14, line: 405, baseType: !3488, size: 64)
!3488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3489, size: 64)
!3489 = !DISubroutineType(types: !3490)
!3490 = !{!133, !1799, !617}
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3485, file: !14, line: 406, baseType: !3492, size: 64, offset: 64)
!3492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3493, size: 64)
!3493 = !DISubroutineType(types: !3494)
!3494 = !{!133, !1332, !3495}
!3495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3496, size: 64)
!3496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !38, line: 293, size: 1536, elements: !3497)
!3497 = !{!3498, !3528, !3542}
!3498 = !DIDerivedType(tag: DW_TAG_member, scope: !3496, file: !38, line: 295, baseType: !3499, size: 512)
!3499 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3496, file: !38, line: 295, size: 512, elements: !3500)
!3500 = !{!3501, !3527}
!3501 = !DIDerivedType(tag: DW_TAG_member, scope: !3499, file: !38, line: 296, baseType: !3502, size: 448)
!3502 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3499, file: !38, line: 296, size: 448, elements: !3503)
!3503 = !{!3504, !3505, !3514, !3515, !3516, !3525, !3526}
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3502, file: !38, line: 298, baseType: !363, size: 64)
!3505 = !DIDerivedType(tag: DW_TAG_member, scope: !3502, file: !38, line: 299, baseType: !3506, size: 128, offset: 64)
!3506 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3502, file: !38, line: 299, size: 128, elements: !3507)
!3507 = !{!3508, !3509}
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3506, file: !38, line: 300, baseType: !149, size: 128)
!3509 = !DIDerivedType(tag: DW_TAG_member, scope: !3506, file: !38, line: 302, baseType: !3510, size: 128)
!3510 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3506, file: !38, line: 302, size: 128, elements: !3511)
!3511 = !{!3512, !3513}
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3510, file: !38, line: 303, baseType: !117, size: 64)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3510, file: !38, line: 305, baseType: !7, size: 32, offset: 64)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3502, file: !38, line: 310, baseType: !389, size: 64, offset: 192)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3502, file: !38, line: 311, baseType: !363, size: 64, offset: 256)
!3516 = !DIDerivedType(tag: DW_TAG_member, scope: !3502, file: !38, line: 312, baseType: !3517, size: 64, offset: 320)
!3517 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3502, file: !38, line: 312, size: 64, elements: !3518)
!3518 = !{!3519, !3520}
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3517, file: !38, line: 313, baseType: !117, size: 64)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3517, file: !38, line: 314, baseType: !3521, size: 64)
!3521 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !38, line: 257, baseType: !3522)
!3522 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !38, line: 255, size: 64, elements: !3523)
!3523 = !{!3524}
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3522, file: !38, line: 256, baseType: !363, size: 64)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3502, file: !38, line: 316, baseType: !129, size: 32, offset: 384)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3502, file: !38, line: 317, baseType: !129, size: 32, offset: 416)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3499, file: !38, line: 323, baseType: !1800, size: 512, align: 128)
!3528 = !DIDerivedType(tag: DW_TAG_member, scope: !3496, file: !38, line: 325, baseType: !3529, size: 512, offset: 512)
!3529 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3496, file: !38, line: 325, size: 512, elements: !3530)
!3530 = !{!3531, !3541}
!3531 = !DIDerivedType(tag: DW_TAG_member, scope: !3529, file: !38, line: 326, baseType: !3532, size: 320)
!3532 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3529, file: !38, line: 326, size: 320, elements: !3533)
!3533 = !{!3534, !3535, !3536, !3537, !3538, !3539, !3540}
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3532, file: !38, line: 327, baseType: !363, size: 64)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3532, file: !38, line: 328, baseType: !363, size: 64, offset: 64)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3532, file: !38, line: 329, baseType: !363, size: 64, offset: 128)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3532, file: !38, line: 331, baseType: !129, size: 32, offset: 192)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3532, file: !38, line: 332, baseType: !129, size: 32, offset: 224)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3532, file: !38, line: 333, baseType: !129, size: 32, offset: 256)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3532, file: !38, line: 335, baseType: !7, size: 32, offset: 288)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3529, file: !38, line: 339, baseType: !1800, size: 512, align: 128)
!3542 = !DIDerivedType(tag: DW_TAG_member, scope: !3496, file: !38, line: 341, baseType: !3543, size: 512, offset: 1024)
!3543 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3496, file: !38, line: 341, size: 512, elements: !3544)
!3544 = !{!3545, !3554, !3560}
!3545 = !DIDerivedType(tag: DW_TAG_member, scope: !3543, file: !38, line: 342, baseType: !3546, size: 384)
!3546 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3543, file: !38, line: 342, size: 384, elements: !3547)
!3547 = !{!3548, !3549, !3550, !3551, !3552, !3553}
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3546, file: !38, line: 343, baseType: !363, size: 64)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3546, file: !38, line: 344, baseType: !363, size: 64, offset: 64)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3546, file: !38, line: 346, baseType: !117, size: 64, offset: 128)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3546, file: !38, line: 347, baseType: !117, size: 64, offset: 192)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3546, file: !38, line: 348, baseType: !117, size: 64, offset: 256)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3546, file: !38, line: 349, baseType: !117, size: 64, offset: 320)
!3554 = !DIDerivedType(tag: DW_TAG_member, scope: !3543, file: !38, line: 352, baseType: !3555, size: 256)
!3555 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3543, file: !38, line: 352, size: 256, elements: !3556)
!3556 = !{!3557, !3558, !3559}
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3555, file: !38, line: 353, baseType: !363, size: 64)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3555, file: !38, line: 354, baseType: !363, size: 64, offset: 64)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3555, file: !38, line: 356, baseType: !149, size: 128, offset: 128)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3543, file: !38, line: 359, baseType: !1800, size: 512, align: 128)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3485, file: !14, line: 409, baseType: !3562, size: 64, offset: 128)
!3562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3563, size: 64)
!3563 = !DISubroutineType(types: !3564)
!3564 = !{!133, !389, !617}
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3485, file: !14, line: 412, baseType: !3566, size: 64, offset: 192)
!3566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3567, size: 64)
!3567 = !DISubroutineType(types: !3568)
!3568 = !{!1493, !389, !3495}
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3485, file: !14, line: 414, baseType: !3570, size: 64, offset: 256)
!3570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3571, size: 64)
!3571 = !DISubroutineType(types: !3572)
!3572 = !{null, !3573}
!3573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3574, size: 64)
!3574 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !14, line: 310, flags: DIFlagFwdDecl)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3485, file: !14, line: 416, baseType: !3576, size: 64, offset: 320)
!3576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3577, size: 64)
!3577 = !DISubroutineType(types: !3578)
!3578 = !{!133, !1332, !389, !552, !7, !2892, !2037}
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3485, file: !14, line: 419, baseType: !3580, size: 64, offset: 384)
!3580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3581, size: 64)
!3581 = !DISubroutineType(types: !3582)
!3582 = !{!133, !1332, !389, !552, !7, !7, !1799, !117}
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3485, file: !14, line: 424, baseType: !3584, size: 64, offset: 448)
!3584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3585, size: 64)
!3585 = !DISubroutineType(types: !3586)
!3586 = !{!3587, !389, !3587}
!3587 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !119, line: 131, baseType: !464)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3485, file: !14, line: 425, baseType: !3589, size: 64, offset: 512)
!3589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3590, size: 64)
!3590 = !DISubroutineType(types: !3591)
!3591 = !{null, !3495, !360, !360}
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3485, file: !14, line: 426, baseType: !3593, size: 64, offset: 576)
!3593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3594, size: 64)
!3594 = !DISubroutineType(types: !3595)
!3595 = !{!1493, !3495, !118}
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3485, file: !14, line: 427, baseType: !3597, size: 64, offset: 640)
!3597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3598, size: 64)
!3598 = !DISubroutineType(types: !3599)
!3599 = !{null, !3495}
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3485, file: !14, line: 428, baseType: !1626, size: 64, offset: 704)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3485, file: !14, line: 433, baseType: !3602, size: 64, offset: 768)
!3602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3603, size: 64)
!3603 = !DISubroutineType(types: !3604)
!3604 = !{!133, !389, !3495, !3495, !74}
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3485, file: !14, line: 435, baseType: !3606, size: 64, offset: 832)
!3606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3607, size: 64)
!3607 = !DISubroutineType(types: !3608)
!3608 = !{!133, !3495}
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3485, file: !14, line: 436, baseType: !3610, size: 64, offset: 896)
!3610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3611, size: 64)
!3611 = !DISubroutineType(types: !3612)
!3612 = !{!1493, !3495, !360, !360}
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3485, file: !14, line: 438, baseType: !3614, size: 64, offset: 960)
!3614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3615, size: 64)
!3615 = !DISubroutineType(types: !3616)
!3616 = !{null, !3495, !3617, !3617}
!3617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3485, file: !14, line: 439, baseType: !3619, size: 64, offset: 1024)
!3619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3620, size: 64)
!3620 = !DISubroutineType(types: !3621)
!3621 = !{!133, !389, !1799}
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3485, file: !14, line: 442, baseType: !3623, size: 64, offset: 1088)
!3623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3624, size: 64)
!3624 = !DISubroutineType(types: !3625)
!3625 = !{!133, !3626, !1332, !3628}
!3626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3627, size: 64)
!3627 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!3628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3587, size: 64)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3485, file: !14, line: 444, baseType: !2029, size: 64, offset: 1152)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3485, file: !14, line: 445, baseType: !3631, size: 64, offset: 1216)
!3631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3632, size: 64)
!3632 = !DISubroutineType(types: !3633)
!3633 = !{!133, !1629, !1651}
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !390, file: !14, line: 486, baseType: !363, size: 64, offset: 896)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !390, file: !14, line: 487, baseType: !891, size: 320, offset: 960)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !390, file: !14, line: 488, baseType: !2072, size: 32, offset: 1280)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !390, file: !14, line: 489, baseType: !249, size: 32, offset: 1312)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !390, file: !14, line: 490, baseType: !149, size: 128, offset: 1344)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !390, file: !14, line: 491, baseType: !117, size: 64, offset: 1472)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !380, file: !339, line: 180, baseType: !3641, size: 64, offset: 320)
!3641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3642, size: 64)
!3642 = !DISubroutineType(types: !3643)
!3643 = !{!345, !1332, !242, !379, !313, !552, !360}
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !380, file: !339, line: 182, baseType: !3641, size: 64, offset: 384)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !380, file: !339, line: 184, baseType: !3646, size: 64, offset: 448)
!3646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3647, size: 64)
!3647 = !DISubroutineType(types: !3648)
!3648 = !{!133, !1332, !242, !379, !1690}
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !368, file: !339, line: 90, baseType: !3650, size: 64, offset: 192)
!3650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !368, file: !339, line: 91, baseType: !3652, size: 64, offset: 256)
!3652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !329, file: !235, line: 120, baseType: !3654, size: 64, offset: 192)
!3654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3655, size: 64)
!3655 = !DISubroutineType(types: !3656)
!3656 = !{!3657, !296}
!3657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3658, size: 64)
!3658 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3659)
!3659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !82, line: 39, size: 384, elements: !3660)
!3660 = !{!3661, !3662, !3666, !3670, !3676, !3680}
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3659, file: !82, line: 40, baseType: !81, size: 32)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3659, file: !82, line: 41, baseType: !3663, size: 64, offset: 64)
!3663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3664, size: 64)
!3664 = !DISubroutineType(types: !3665)
!3665 = !{!1493}
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3659, file: !82, line: 42, baseType: !3667, size: 64, offset: 128)
!3667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3668, size: 64)
!3668 = !DISubroutineType(types: !3669)
!3669 = !{!117}
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3659, file: !82, line: 43, baseType: !3671, size: 64, offset: 192)
!3671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3672, size: 64)
!3672 = !DISubroutineType(types: !3673)
!3673 = !{!2161, !3674}
!3674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3675, size: 64)
!3675 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !82, line: 19, flags: DIFlagFwdDecl)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3659, file: !82, line: 44, baseType: !3677, size: 64, offset: 256)
!3677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3678, size: 64)
!3678 = !DISubroutineType(types: !3679)
!3679 = !{!2161}
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3659, file: !82, line: 45, baseType: !3247, size: 64, offset: 320)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !329, file: !235, line: 121, baseType: !3682, size: 64, offset: 256)
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3683, size: 64)
!3683 = !DISubroutineType(types: !3684)
!3684 = !{!2161, !296}
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !329, file: !235, line: 122, baseType: !3686, size: 64, offset: 320)
!3686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3687, size: 64)
!3687 = !DISubroutineType(types: !3688)
!3688 = !{null, !296, !3689, !3690}
!3689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!3690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !234, file: !235, line: 70, baseType: !3692, size: 64, offset: 384)
!3692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3693, size: 64)
!3693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !567, line: 190, size: 1152, elements: !3694)
!3694 = !{!3695, !3696, !3697, !3698, !3699, !3700, !3701, !3702, !3786, !3787, !3788, !3789, !3790, !3793}
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3693, file: !567, line: 191, baseType: !129, size: 32)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3693, file: !567, line: 192, baseType: !129, size: 32, offset: 32)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3693, file: !567, line: 202, baseType: !3692, size: 64, offset: 64)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3693, file: !567, line: 203, baseType: !238, size: 64, offset: 128)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3693, file: !567, line: 205, baseType: !1059, size: 192, align: 64, offset: 192)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3693, file: !567, line: 207, baseType: !2161, size: 64, offset: 384)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3693, file: !567, line: 208, baseType: !7, size: 32, offset: 448)
!3702 = !DIDerivedType(tag: DW_TAG_member, scope: !3693, file: !567, line: 209, baseType: !3703, size: 256, offset: 512)
!3703 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3693, file: !567, line: 209, size: 256, elements: !3704)
!3704 = !{!3705, !3714, !3718}
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3703, file: !567, line: 210, baseType: !3706, size: 256)
!3706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !567, line: 153, size: 256, elements: !3707)
!3707 = !{!3708, !3709, !3710, !3713}
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3706, file: !567, line: 154, baseType: !363, size: 64)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3706, file: !567, line: 156, baseType: !1191, size: 64, offset: 64)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3706, file: !567, line: 162, baseType: !3711, size: 64, offset: 128)
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3712, size: 64)
!3712 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !567, line: 162, flags: DIFlagFwdDecl)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !3706, file: !567, line: 167, baseType: !363, size: 64, offset: 192)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3703, file: !567, line: 211, baseType: !3715, size: 64)
!3715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !567, line: 170, size: 64, elements: !3716)
!3716 = !{!3717}
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3715, file: !567, line: 171, baseType: !3692, size: 64)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3703, file: !567, line: 212, baseType: !3719, size: 256)
!3719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !567, line: 174, size: 256, elements: !3720)
!3720 = !{!3721, !3781, !3784, !3785}
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3719, file: !567, line: 175, baseType: !3722, size: 64)
!3722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3723, size: 64)
!3723 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3724)
!3724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !567, line: 271, size: 768, elements: !3725)
!3725 = !{!3726, !3746, !3750, !3754, !3758, !3762, !3766, !3770, !3771, !3772, !3773, !3777}
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3724, file: !567, line: 276, baseType: !3727, size: 64)
!3727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3728, size: 64)
!3728 = !DISubroutineType(types: !3729)
!3729 = !{!133, !3730}
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3731, size: 64)
!3731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !567, line: 251, size: 1216, elements: !3732)
!3732 = !{!3733, !3734, !3735, !3736, !3737, !3738, !3739, !3740, !3741, !3742, !3743, !3744, !3745}
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3731, file: !567, line: 253, baseType: !3692, size: 64)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3731, file: !567, line: 254, baseType: !1332, size: 64, offset: 64)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3731, file: !567, line: 255, baseType: !188, size: 64, offset: 128)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3731, file: !567, line: 256, baseType: !117, size: 64, offset: 192)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3731, file: !567, line: 259, baseType: !679, size: 256, offset: 256)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3731, file: !567, line: 260, baseType: !679, size: 256, offset: 512)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3731, file: !567, line: 261, baseType: !133, size: 32, offset: 768)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3731, file: !567, line: 262, baseType: !149, size: 128, offset: 832)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3731, file: !567, line: 263, baseType: !313, size: 64, offset: 960)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3731, file: !567, line: 265, baseType: !360, size: 64, offset: 1024)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3731, file: !567, line: 266, baseType: !1493, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3731, file: !567, line: 267, baseType: !1493, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3731, file: !567, line: 268, baseType: !1735, size: 64, offset: 1152)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3724, file: !567, line: 277, baseType: !3747, size: 64, offset: 64)
!3747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3748, size: 64)
!3748 = !DISubroutineType(types: !3749)
!3749 = !{null, !3730}
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3724, file: !567, line: 290, baseType: !3751, size: 64, offset: 128)
!3751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3752, size: 64)
!3752 = !DISubroutineType(types: !3753)
!3753 = !{!133, !188, !117}
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3724, file: !567, line: 292, baseType: !3755, size: 64, offset: 192)
!3755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3756, size: 64)
!3756 = !DISubroutineType(types: !3757)
!3757 = !{!117, !188, !1620}
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3724, file: !567, line: 293, baseType: !3759, size: 64, offset: 256)
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3760, size: 64)
!3760 = !DISubroutineType(types: !3761)
!3761 = !{!117, !188, !117, !1620}
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3724, file: !567, line: 294, baseType: !3763, size: 64, offset: 320)
!3763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3764, size: 64)
!3764 = !DISubroutineType(types: !3765)
!3765 = !{null, !188, !117}
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3724, file: !567, line: 296, baseType: !3767, size: 64, offset: 384)
!3767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3768, size: 64)
!3768 = !DISubroutineType(types: !3769)
!3769 = !{!345, !3730, !313, !360, !552}
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3724, file: !567, line: 306, baseType: !360, size: 64, offset: 448)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3724, file: !567, line: 313, baseType: !1493, size: 8, offset: 512)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3724, file: !567, line: 314, baseType: !3767, size: 64, offset: 576)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3724, file: !567, line: 317, baseType: !3774, size: 64, offset: 640)
!3774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3775, size: 64)
!3775 = !DISubroutineType(types: !3776)
!3776 = !{!1677, !3730, !1679}
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3724, file: !567, line: 320, baseType: !3778, size: 64, offset: 704)
!3778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3779, size: 64)
!3779 = !DISubroutineType(types: !3780)
!3780 = !{!133, !3730, !1690}
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3719, file: !567, line: 176, baseType: !3782, size: 64, offset: 64)
!3782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3783, size: 64)
!3783 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !567, line: 35, flags: DIFlagFwdDecl)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3719, file: !567, line: 177, baseType: !552, size: 64, offset: 128)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3719, file: !567, line: 178, baseType: !3692, size: 64, offset: 192)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3693, file: !567, line: 215, baseType: !117, size: 64, offset: 768)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3693, file: !567, line: 221, baseType: !464, size: 64, offset: 832)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3693, file: !567, line: 223, baseType: !283, size: 16, offset: 896)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3693, file: !567, line: 224, baseType: !355, size: 16, offset: 912)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3693, file: !567, line: 225, baseType: !3791, size: 64, offset: 960)
!3791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3792, size: 64)
!3792 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !567, line: 36, flags: DIFlagFwdDecl)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3693, file: !567, line: 227, baseType: !991, size: 128, align: 64, offset: 1024)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !234, file: !235, line: 71, baseType: !3795, size: 32, offset: 448)
!3795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3796, line: 19, size: 32, elements: !3797)
!3796 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!3797 = !{!3798}
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3795, file: !3796, line: 20, baseType: !125, size: 32)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !234, file: !235, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !234, file: !235, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !234, file: !235, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !234, file: !235, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !234, file: !235, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !231, file: !6, line: 47, baseType: !221, size: 64, offset: 512)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !231, file: !6, line: 48, baseType: !242, size: 64, offset: 576)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !231, file: !6, line: 49, baseType: !3807, size: 64, offset: 640)
!3807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3808, size: 64)
!3808 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !231, file: !6, line: 50, baseType: !2310, size: 64, offset: 704)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !222, file: !6, line: 418, baseType: !3811, size: 64, offset: 1408)
!3811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3812, size: 64)
!3812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !3813)
!3813 = !{!3814, !3815, !3820, !3824, !3828, !3832}
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3812, file: !6, line: 54, baseType: !351, size: 128)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3812, file: !6, line: 55, baseType: !3816, size: 64, offset: 128)
!3816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3817, size: 64)
!3817 = !DISubroutineType(types: !3818)
!3818 = !{!345, !3811, !3819, !313}
!3819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3812, file: !6, line: 57, baseType: !3821, size: 64, offset: 192)
!3821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3822, size: 64)
!3822 = !DISubroutineType(types: !3823)
!3823 = !{!345, !3811, !3819, !238, !360}
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !3812, file: !6, line: 59, baseType: !3825, size: 64, offset: 256)
!3825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3826, size: 64)
!3826 = !DISubroutineType(types: !3827)
!3827 = !{null, !221, !238}
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !3812, file: !6, line: 60, baseType: !3829, size: 64, offset: 320)
!3829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3830, size: 64)
!3830 = !DISubroutineType(types: !3831)
!3831 = !{!133, !221}
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3812, file: !6, line: 61, baseType: !3833, size: 64, offset: 384)
!3833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3834, size: 64)
!3834 = !DISubroutineType(types: !3835)
!3835 = !{null, !221}
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !222, file: !6, line: 419, baseType: !238, size: 64, offset: 1472)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !222, file: !6, line: 420, baseType: !238, size: 64, offset: 1536)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !222, file: !6, line: 421, baseType: !242, size: 64, offset: 1600)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !222, file: !6, line: 424, baseType: !3840, size: 64, offset: 1664)
!3840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3841, size: 64)
!3841 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3842)
!3842 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !222, file: !6, line: 425, baseType: !3844, size: 64, offset: 1728)
!3844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3845, size: 64)
!3845 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1436)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !222, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !222, file: !6, line: 435, baseType: !679, size: 256, offset: 1856)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !222, file: !6, line: 437, baseType: !3849, size: 64, offset: 2112)
!3849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3850, size: 64)
!3850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !3851, line: 69, size: 320, elements: !3852)
!3851 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!3852 = !{!3853, !3854, !3855, !3872, !3874, !3878, !3879}
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3850, file: !3851, line: 70, baseType: !238, size: 64)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3850, file: !3851, line: 71, baseType: !221, size: 64, offset: 64)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3850, file: !3851, line: 72, baseType: !3856, size: 64, offset: 128)
!3856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3857, size: 64)
!3857 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3858)
!3858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !3851, line: 47, size: 256, elements: !3859)
!3859 = !{!3860, !3861, !3867, !3871}
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3858, file: !3851, line: 49, baseType: !7, size: 32)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !3858, file: !3851, line: 51, baseType: !3862, size: 64, offset: 64)
!3862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3863, size: 64)
!3863 = !DISubroutineType(types: !3864)
!3864 = !{!133, !238, !3865}
!3865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3866, size: 64)
!3866 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3850)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3858, file: !3851, line: 53, baseType: !3868, size: 64, offset: 128)
!3868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3869, size: 64)
!3869 = !DISubroutineType(types: !3870)
!3870 = !{!133, !313, !3865}
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3858, file: !3851, line: 55, baseType: !3247, size: 64, offset: 192)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3850, file: !3851, line: 73, baseType: !3873, size: 16, offset: 192)
!3873 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !281)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3850, file: !3851, line: 74, baseType: !3875, size: 8, offset: 208)
!3875 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !136, line: 16, baseType: !3876)
!3876 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !138, line: 20, baseType: !3877)
!3877 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3850, file: !3851, line: 75, baseType: !273, size: 8, offset: 216)
!3879 = !DIDerivedType(tag: DW_TAG_member, scope: !3850, file: !3851, line: 76, baseType: !3880, size: 64, offset: 256)
!3880 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3850, file: !3851, line: 76, size: 64, elements: !3881)
!3881 = !{!3882, !3883, !3890}
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3880, file: !3851, line: 77, baseType: !117, size: 64)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !3880, file: !3851, line: 78, baseType: !3884, size: 64)
!3884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3885, size: 64)
!3885 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3886)
!3886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !3851, line: 86, size: 128, elements: !3887)
!3887 = !{!3888, !3889}
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !3886, file: !3851, line: 87, baseType: !7, size: 32)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3886, file: !3851, line: 88, baseType: !313, size: 64, offset: 64)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !3880, file: !3851, line: 79, baseType: !3891, size: 64)
!3891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3892, size: 64)
!3892 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3893)
!3893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !3851, line: 92, size: 256, elements: !3894)
!3894 = !{!3895, !3896, !3897, !3898, !3899}
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3893, file: !3851, line: 94, baseType: !7, size: 32)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !3893, file: !3851, line: 95, baseType: !7, size: 32, offset: 32)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3893, file: !3851, line: 96, baseType: !1000, size: 64, offset: 64)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3893, file: !3851, line: 97, baseType: !3856, size: 64, offset: 128)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !3893, file: !3851, line: 98, baseType: !117, size: 64, offset: 192)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !222, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !222, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !222, file: !6, line: 442, baseType: !3840, size: 64, offset: 2240)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !222, file: !6, line: 443, baseType: !3844, size: 64, offset: 2304)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !222, file: !6, line: 444, baseType: !1493, size: 8, offset: 2368)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !222, file: !6, line: 451, baseType: !1493, size: 8, offset: 2376)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !222, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !222, file: !6, line: 455, baseType: !3908, size: 64, offset: 2432)
!3908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3909, size: 64)
!3909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !3910, line: 23, size: 96, elements: !3911)
!3910 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!3911 = !{!3912, !3913, !3914}
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3909, file: !3910, line: 24, baseType: !133, size: 32)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !3909, file: !3910, line: 24, baseType: !133, size: 32, offset: 32)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3909, file: !3910, line: 24, baseType: !133, size: 32, offset: 64)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !222, file: !6, line: 458, baseType: !3916, size: 64, offset: 2496)
!3916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3917, size: 64)
!3917 = !DISubroutineType(types: !3918)
!3918 = !{!133}
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !222, file: !6, line: 460, baseType: !3920, size: 4032, align: 512, offset: 2560)
!3920 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3921, size: 4032, elements: !3935)
!3921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !3922)
!3922 = !{!3923, !3924, !3925}
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !3921, file: !6, line: 363, baseType: !117, size: 64)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3921, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !3921, file: !6, line: 367, baseType: !3926, size: 448, offset: 128)
!3926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !3927)
!3927 = !{!3928, !3929}
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3926, file: !6, line: 320, baseType: !221, size: 64)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3926, file: !6, line: 321, baseType: !3930, size: 384, offset: 64)
!3930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !3931, line: 40, size: 384, elements: !3932)
!3931 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!3932 = !{!3933}
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3930, file: !3931, line: 41, baseType: !3934, size: 384, align: 64)
!3934 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1059, size: 384, align: 64, elements: !2435)
!3935 = !{!3936}
!3936 = !DISubrange(count: 7)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !222, file: !6, line: 463, baseType: !3938, size: 192, offset: 6592)
!3938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !3939, line: 8, size: 192, elements: !3940)
!3939 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!3940 = !{!3941, !3942, !3943}
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !3938, file: !3939, line: 10, baseType: !7, size: 32)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !3938, file: !3939, line: 11, baseType: !649, size: 64, offset: 64)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !3938, file: !3939, line: 12, baseType: !3944, size: 64, offset: 128)
!3944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3945, size: 64)
!3945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !3946, line: 59, size: 48, elements: !3947)
!3946 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!3947 = !{!3948, !3949, !3950, !3951, !3952, !3953}
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !3945, file: !3946, line: 60, baseType: !2178, size: 16)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !3945, file: !3946, line: 61, baseType: !2178, size: 16, offset: 16)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !3945, file: !3946, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !3945, file: !3946, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3945, file: !3946, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3945, file: !3946, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !222, file: !6, line: 465, baseType: !363, size: 64, offset: 6784)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !222, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !222, file: !6, line: 470, baseType: !149, size: 128, offset: 6912)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !222, file: !6, line: 471, baseType: !3958, size: 64, offset: 7040)
!3958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3959, size: 64)
!3959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !3960, line: 33, size: 96, elements: !3961)
!3960 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!3961 = !{!3962, !3963, !3964, !3965}
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !3959, file: !3960, line: 37, baseType: !133, size: 32)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !3959, file: !3960, line: 43, baseType: !133, size: 32, offset: 32)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !3959, file: !3960, line: 45, baseType: !283, size: 16, offset: 64)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3959, file: !3960, line: 47, baseType: !283, size: 16, offset: 80)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !222, file: !6, line: 476, baseType: !3967, size: 64, offset: 7104)
!3967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3968, size: 64)
!3968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !3969)
!3969 = !{!3970, !3986, !3987, !3988}
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !3968, file: !6, line: 379, baseType: !3971, size: 64)
!3971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3972, size: 64)
!3972 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !3973, line: 204, baseType: !3974)
!3973 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!3974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !3973, line: 197, size: 192, elements: !3975)
!3975 = !{!3976, !3978, !3979, !3980, !3982, !3984}
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !3974, file: !3973, line: 198, baseType: !3977, size: 32)
!3977 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !3973, line: 21, baseType: !137)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !3974, file: !3973, line: 199, baseType: !275, size: 8, offset: 32)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !3974, file: !3973, line: 200, baseType: !275, size: 8, offset: 40)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !3974, file: !3973, line: 201, baseType: !3981, size: 16, offset: 48)
!3981 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !3973, line: 17, baseType: !282)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !3974, file: !3973, line: 202, baseType: !3983, size: 64, offset: 64)
!3983 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !3973, line: 16, baseType: !465)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !3974, file: !3973, line: 203, baseType: !3985, size: 64, offset: 128)
!3985 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !3973, line: 22, baseType: !465)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !3968, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !3968, file: !6, line: 381, baseType: !313, size: 64, offset: 128)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !3968, file: !6, line: 382, baseType: !313, size: 64, offset: 192)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !222, file: !6, line: 477, baseType: !3968, size: 256, offset: 7168)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !222, file: !6, line: 480, baseType: !3991, size: 64, offset: 7424)
!3991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3992, size: 64)
!3992 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !222, file: !6, line: 483, baseType: !3994, size: 64, offset: 7488)
!3994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3995, size: 64)
!3995 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !222, file: !6, line: 488, baseType: !313, size: 64, offset: 7552)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !222, file: !6, line: 492, baseType: !117, size: 64, offset: 7616)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !222, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !222, file: !6, line: 495, baseType: !117, size: 64, offset: 7744)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !222, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !222, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !222, file: !6, line: 500, baseType: !4003, size: 64, offset: 7872)
!4003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4004, size: 64)
!4004 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !4005, line: 45, baseType: !4006)
!4005 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!4006 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !133)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !222, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !222, file: !6, line: 504, baseType: !4009, size: 64, offset: 8000)
!4009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4010, size: 64)
!4010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4011, size: 64)
!4011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !4012, line: 96, size: 192, elements: !4013)
!4012 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!4013 = !{!4014, !4015, !4058, !4060}
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !4011, file: !4012, line: 97, baseType: !7, size: 32)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !4011, file: !4012, line: 98, baseType: !4016, size: 64, offset: 64)
!4016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4017, size: 64)
!4017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !4012, line: 24, size: 3072, elements: !4018)
!4018 = !{!4019, !4021, !4022, !4023, !4024, !4038, !4039, !4040, !4041, !4042, !4043, !4044, !4055, !4056, !4057}
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !4017, file: !4012, line: 26, baseType: !4020, size: 128)
!4020 = !DICompositeType(tag: DW_TAG_array_type, baseType: !683, size: 128, elements: !2435)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !4017, file: !4012, line: 27, baseType: !4020, size: 128, offset: 128)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !4017, file: !4012, line: 28, baseType: !133, size: 32, offset: 256)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4017, file: !4012, line: 31, baseType: !249, size: 32, align: 512, offset: 512)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !4017, file: !4012, line: 32, baseType: !4025, size: 960, offset: 576)
!4025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !4026, line: 206, size: 960, elements: !4027)
!4026 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!4027 = !{!4028, !4029, !4032, !4034, !4035, !4037}
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4025, file: !4026, line: 207, baseType: !994, size: 64)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !4025, file: !4026, line: 208, baseType: !4030, size: 256, offset: 64)
!4030 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4031, size: 256, elements: !1381)
!4031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !4025, file: !4026, line: 209, baseType: !4033, size: 256, offset: 320)
!4033 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, size: 256, elements: !1381)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4025, file: !4026, line: 213, baseType: !349, size: 64, offset: 576)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !4025, file: !4026, line: 215, baseType: !4036, size: 256, offset: 640)
!4036 = !DICompositeType(tag: DW_TAG_array_type, baseType: !349, size: 256, elements: !1381)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4025, file: !4026, line: 216, baseType: !273, size: 8, offset: 896)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !4017, file: !4012, line: 33, baseType: !363, size: 64, offset: 1536)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4017, file: !4012, line: 34, baseType: !363, size: 64, offset: 1600)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !4017, file: !4012, line: 35, baseType: !1493, size: 8, offset: 1664)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !4017, file: !4012, line: 36, baseType: !2871, size: 320, offset: 1728)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4017, file: !4012, line: 37, baseType: !2200, size: 256, offset: 2048)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !4017, file: !4012, line: 38, baseType: !991, size: 128, align: 64, offset: 2304)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !4017, file: !4012, line: 39, baseType: !4045, size: 64, offset: 2432)
!4045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4046, size: 64)
!4046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !4012, line: 49, size: 768, elements: !4047)
!4047 = !{!4048, !4049, !4050, !4051, !4052, !4053, !4054}
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4046, file: !4012, line: 50, baseType: !249, size: 32)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !4046, file: !4012, line: 51, baseType: !4033, size: 256, offset: 64)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !4046, file: !4012, line: 53, baseType: !4033, size: 256, offset: 320)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4046, file: !4012, line: 54, baseType: !363, size: 64, offset: 576)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !4046, file: !4012, line: 55, baseType: !4045, size: 64, offset: 640)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !4046, file: !4012, line: 56, baseType: !133, size: 32, offset: 704)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !4046, file: !4012, line: 57, baseType: !133, size: 32, offset: 736)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !4017, file: !4012, line: 40, baseType: !363, size: 64, offset: 2496)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4017, file: !4012, line: 42, baseType: !133, size: 32, offset: 2560)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !4017, file: !4012, line: 43, baseType: !4010, size: 64, offset: 2624)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !4011, file: !4012, line: 99, baseType: !4059, offset: 128)
!4059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !585, line: 211, elements: !586)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !4011, file: !4012, line: 100, baseType: !4061, size: 64, offset: 128)
!4061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4062, size: 64)
!4062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !4012, line: 63, size: 3008, elements: !4063)
!4063 = !{!4064, !4065, !4067, !4068, !4069, !4070, !4071, !4072, !4073, !4074, !4075, !4076, !4077, !4078, !4079, !4080, !4081, !4082, !4083, !4084, !4085, !4086, !4093}
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4062, file: !4012, line: 64, baseType: !4045, size: 64)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4062, file: !4012, line: 65, baseType: !4066, size: 192, offset: 64)
!4066 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4045, size: 192, elements: !314)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !4062, file: !4012, line: 67, baseType: !133, size: 32, offset: 256)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !4062, file: !4012, line: 68, baseType: !679, size: 256, offset: 320)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4062, file: !4012, line: 69, baseType: !249, size: 32, offset: 576)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !4062, file: !4012, line: 70, baseType: !679, size: 256, offset: 640)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !4062, file: !4012, line: 71, baseType: !363, size: 64, offset: 896)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !4062, file: !4012, line: 72, baseType: !363, size: 64, offset: 960)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4062, file: !4012, line: 73, baseType: !363, size: 64, offset: 1024)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !4062, file: !4012, line: 74, baseType: !363, size: 64, offset: 1088)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !4062, file: !4012, line: 75, baseType: !363, size: 64, offset: 1152)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !4062, file: !4012, line: 76, baseType: !363, size: 64, offset: 1216)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !4062, file: !4012, line: 77, baseType: !363, size: 64, offset: 1280)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !4062, file: !4012, line: 78, baseType: !363, size: 64, offset: 1344)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !4062, file: !4012, line: 79, baseType: !1493, size: 8, offset: 1408)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !4062, file: !4012, line: 80, baseType: !363, size: 64, offset: 1472)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !4062, file: !4012, line: 81, baseType: !679, size: 256, offset: 1536)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !4062, file: !4012, line: 82, baseType: !1884, size: 256, offset: 1792)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !4062, file: !4012, line: 84, baseType: !129, size: 32, offset: 2048)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !4062, file: !4012, line: 87, baseType: !363, size: 64, offset: 2112)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !4062, file: !4012, line: 88, baseType: !363, size: 64, offset: 2176)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4062, file: !4012, line: 89, baseType: !4087, size: 704, offset: 2240)
!4087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !2201, line: 111, size: 704, elements: !4088)
!4088 = !{!4089, !4090, !4091, !4092}
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4087, file: !2201, line: 112, baseType: !2200, size: 256)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4087, file: !2201, line: 113, baseType: !2871, size: 320, offset: 256)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4087, file: !2201, line: 116, baseType: !3178, size: 64, offset: 576)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4087, file: !2201, line: 117, baseType: !133, size: 32, offset: 640)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !4062, file: !4012, line: 90, baseType: !4010, size: 64, offset: 2944)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !222, file: !6, line: 515, baseType: !4095, size: 64, offset: 8064)
!4095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4096, size: 64)
!4096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !4097, line: 117, size: 128, elements: !4098)
!4097 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!4098 = !{!4099, !4100, !4101}
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !4096, file: !4097, line: 118, baseType: !1436, size: 32)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !4096, file: !4097, line: 119, baseType: !1436, size: 32, offset: 32)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4096, file: !4097, line: 120, baseType: !349, size: 64, offset: 64)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !222, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !222, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !222, file: !6, line: 520, baseType: !4105, size: 64, offset: 8192)
!4105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !222, file: !6, line: 523, baseType: !4107, size: 64, offset: 8256)
!4107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4108, size: 64)
!4108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4109, size: 64)
!4109 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !222, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !222, file: !6, line: 525, baseType: !4112, size: 64, offset: 8384)
!4112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4113, size: 64)
!4113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4114, size: 64)
!4114 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !222, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !222, file: !6, line: 533, baseType: !117, size: 64, offset: 8512)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !222, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !222, file: !6, line: 535, baseType: !4119, size: 64, offset: 8640)
!4119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !222, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !222, file: !6, line: 539, baseType: !133, size: 32, offset: 8736)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !222, file: !6, line: 540, baseType: !4123, size: 64, offset: 8768)
!4123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4124, size: 64)
!4124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !4125, line: 32, size: 64, elements: !4126)
!4125 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!4126 = !{!4127, !4128}
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4124, file: !4125, line: 33, baseType: !1436, size: 32)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4124, file: !4125, line: 34, baseType: !1436, size: 32, offset: 32)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !222, file: !6, line: 563, baseType: !149, size: 128, offset: 8832)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !222, file: !6, line: 565, baseType: !149, size: 128, offset: 8960)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !222, file: !6, line: 568, baseType: !4132, size: 64, offset: 9088)
!4132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2549, size: 64)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !222, file: !6, line: 570, baseType: !129, size: 32, offset: 9152)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !207, file: !88, line: 96, baseType: !4135, size: 64, offset: 256)
!4135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4136, size: 64)
!4136 = !DISubroutineType(types: !4137)
!4137 = !{!133, !206, !4138}
!4138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4139, size: 64)
!4139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4140, size: 64)
!4140 = !DICompositeType(tag: DW_TAG_structure_type, name: "rtattr", file: !88, line: 52, flags: DIFlagFwdDecl)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !207, file: !88, line: 98, baseType: !162, size: 1024, offset: 320)
!4142 = !DIDerivedType(tag: DW_TAG_member, scope: !202, file: !88, line: 79, baseType: !4143, size: 128, offset: 3136)
!4143 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !202, file: !88, line: 79, size: 128, elements: !4144)
!4144 = !{!4145, !4146}
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4143, file: !88, line: 81, baseType: !215, size: 128)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "spawns", scope: !4143, file: !88, line: 83, baseType: !4147, size: 64)
!4147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4148, size: 64)
!4148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_spawn", file: !88, line: 101, size: 384, elements: !4149)
!4149 = !{!4150, !4151, !4152, !4157, !4158, !4159, !4160}
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4148, file: !88, line: 102, baseType: !149, size: 128)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "alg", scope: !4148, file: !88, line: 103, baseType: !145, size: 64, offset: 128)
!4152 = !DIDerivedType(tag: DW_TAG_member, scope: !4148, file: !88, line: 104, baseType: !4153, size: 64, offset: 192)
!4153 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4148, file: !88, line: 104, size: 64, elements: !4154)
!4154 = !{!4155, !4156}
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "inst", scope: !4153, file: !88, line: 106, baseType: !201, size: 64)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4153, file: !88, line: 108, baseType: !4147, size: 64)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "frontend", scope: !4148, file: !88, line: 110, baseType: !168, size: 64, offset: 256)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !4148, file: !88, line: 111, baseType: !135, size: 32, offset: 320)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !4148, file: !88, line: 112, baseType: !1493, size: 8, offset: 352)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !4148, file: !88, line: 113, baseType: !1493, size: 8, offset: 360)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "free_work", scope: !202, file: !88, line: 86, baseType: !2200, size: 256, offset: 3264)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "__ctx", scope: !202, file: !88, line: 88, baseType: !4163, align: 64, offset: 3520)
!4163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, elements: !1394)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !170, file: !88, line: 68, baseType: !7, size: 32, offset: 384)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "maskclear", scope: !170, file: !88, line: 69, baseType: !7, size: 32, offset: 416)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "maskset", scope: !170, file: !88, line: 70, baseType: !7, size: 32, offset: 448)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "tfmsize", scope: !170, file: !88, line: 71, baseType: !7, size: 32, offset: 480)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "cra_u", scope: !146, file: !122, line: 363, baseType: !4169, size: 256, offset: 2560)
!4169 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !146, file: !122, line: 360, size: 256, elements: !4170)
!4170 = !{!4171, !4188}
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "cipher", scope: !4169, file: !122, line: 361, baseType: !4172, size: 256)
!4172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cipher_alg", file: !122, line: 235, size: 256, elements: !4173)
!4173 = !{!4174, !4175, !4176, !4182, !4187}
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "cia_min_keysize", scope: !4172, file: !122, line: 236, baseType: !7, size: 32)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "cia_max_keysize", scope: !4172, file: !122, line: 237, baseType: !7, size: 32, offset: 32)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "cia_setkey", scope: !4172, file: !122, line: 238, baseType: !4177, size: 64, offset: 64)
!4177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4178, size: 64)
!4178 = !DISubroutineType(types: !4179)
!4179 = !{!133, !120, !4180, !7}
!4180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4181, size: 64)
!4181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !273)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "cia_encrypt", scope: !4172, file: !122, line: 240, baseType: !4183, size: 64, offset: 128)
!4183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4184, size: 64)
!4184 = !DISubroutineType(types: !4185)
!4185 = !{null, !120, !4186, !4180}
!4186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "cia_decrypt", scope: !4172, file: !122, line: 241, baseType: !4183, size: 64, offset: 192)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "compress", scope: !4169, file: !122, line: 362, baseType: !4189, size: 128)
!4189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compress_alg", file: !122, line: 255, size: 128, elements: !4190)
!4190 = !{!4191, !4195}
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "coa_compress", scope: !4189, file: !122, line: 256, baseType: !4192, size: 64)
!4192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4193, size: 64)
!4193 = !DISubroutineType(types: !4194)
!4194 = !{!133, !120, !4180, !7, !4186, !1000}
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "coa_decompress", scope: !4189, file: !122, line: 258, baseType: !4192, size: 64, offset: 64)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "cra_init", scope: !146, file: !122, line: 365, baseType: !181, size: 64, offset: 2816)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "cra_exit", scope: !146, file: !122, line: 366, baseType: !141, size: 64, offset: 2880)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "cra_destroy", scope: !146, file: !122, line: 367, baseType: !4199, size: 64, offset: 2944)
!4199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4200, size: 64)
!4200 = !DISubroutineType(types: !4201)
!4201 = !{null, !145}
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "cra_module", scope: !146, file: !122, line: 369, baseType: !221, size: 64, offset: 3008)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "__crt_ctx", scope: !121, file: !122, line: 433, baseType: !4163, align: 64, offset: 256)
!4204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4205, size: 64)
!4205 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !152)
!4206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4207, size: 64)
!4207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_larval", file: !4208, line: 30, size: 3456, elements: !4209)
!4208 = !DIFile(filename: "crypto/internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "30af55952b42d6d15a944aa564f21699")
!4209 = !{!4210, !4211, !4212, !4213, !4214}
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "alg", scope: !4207, file: !4208, line: 31, baseType: !146, size: 3072, align: 64)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "adult", scope: !4207, file: !4208, line: 32, baseType: !145, size: 64, offset: 3072)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4207, file: !4208, line: 33, baseType: !1884, size: 256, offset: 3136)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !4207, file: !4208, line: 34, baseType: !135, size: 32, offset: 3392)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "test_started", scope: !4207, file: !4208, line: 35, baseType: !1493, size: 8, offset: 3424)
!4215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4216, size: 64)
!4216 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !133)
!4217 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !119, line: 42, baseType: !363)
!4218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!4219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!4220 = !{!0, !4221, !4223, !4225, !4227, !4244, !4246, !4248, !4250, !4252, !4254, !4259, !4261, !4266, !4268, !4270, !4272, !4274, !4276, !4278, !4280, !4282, !4284, !4286, !4288, !4290, !4292, !4297, !4302, !4307, !4312, !4319, !4324, !4326}
!4221 = !DIGlobalVariableExpression(var: !4222, expr: !DIExpression())
!4222 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_crypto_alg_list287", scope: !2, file: !3, line: 27, type: !117, isLocal: true, isDefinition: true)
!4223 = !DIGlobalVariableExpression(var: !4224, expr: !DIExpression())
!4224 = distinct !DIGlobalVariable(name: "crypto_alg_sem", scope: !2, file: !3, line: 28, type: !891, isLocal: false, isDefinition: true)
!4225 = !DIGlobalVariableExpression(var: !4226, expr: !DIExpression())
!4226 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_crypto_alg_sem288", scope: !2, file: !3, line: 29, type: !117, isLocal: true, isDefinition: true)
!4227 = !DIGlobalVariableExpression(var: !4228, expr: !DIExpression())
!4228 = distinct !DIGlobalVariable(name: "crypto_chain", scope: !2, file: !3, line: 31, type: !4229, isLocal: false, isDefinition: true)
!4229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blocking_notifier_head", file: !4230, line: 65, size: 384, elements: !4231)
!4230 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64ed342c7a5ca8998efd49f7b2982228")
!4231 = !{!4232, !4233}
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "rwsem", scope: !4229, file: !4230, line: 66, baseType: !891, size: 320)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4229, file: !4230, line: 67, baseType: !4234, size: 64, offset: 320)
!4234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4235, size: 64)
!4235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !4230, line: 54, size: 192, elements: !4236)
!4236 = !{!4237, !4242, !4243}
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !4235, file: !4230, line: 55, baseType: !4238, size: 64)
!4238 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !4230, line: 51, baseType: !4239)
!4239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4240, size: 64)
!4240 = !DISubroutineType(types: !4241)
!4241 = !{!133, !4234, !363, !117}
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4235, file: !4230, line: 56, baseType: !4234, size: 64, offset: 64)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !4235, file: !4230, line: 57, baseType: !133, size: 32, offset: 128)
!4244 = !DIGlobalVariableExpression(var: !4245, expr: !DIExpression())
!4245 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_crypto_chain289", scope: !2, file: !3, line: 32, type: !117, isLocal: true, isDefinition: true)
!4246 = !DIGlobalVariableExpression(var: !4247, expr: !DIExpression())
!4247 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_crypto_mod_get290", scope: !2, file: !3, line: 45, type: !117, isLocal: true, isDefinition: true)
!4248 = !DIGlobalVariableExpression(var: !4249, expr: !DIExpression())
!4249 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_crypto_mod_put291", scope: !2, file: !3, line: 54, type: !117, isLocal: true, isDefinition: true)
!4250 = !DIGlobalVariableExpression(var: !4251, expr: !DIExpression())
!4251 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_crypto_larval_alloc292", scope: !2, file: !3, line: 124, type: !117, isLocal: true, isDefinition: true)
!4252 = !DIGlobalVariableExpression(var: !4253, expr: !DIExpression())
!4253 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_crypto_larval_kill293", scope: !2, file: !3, line: 165, type: !117, isLocal: true, isDefinition: true)
!4254 = !DIGlobalVariableExpression(var: !4255, expr: !DIExpression())
!4255 = distinct !DIGlobalVariable(scope: null, file: !3, line: 172, type: !4256, isLocal: true, isDefinition: true)
!4256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 104, elements: !4257)
!4257 = !{!4258}
!4258 = !DISubrange(count: 13)
!4259 = !DIGlobalVariableExpression(var: !4260, expr: !DIExpression())
!4260 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_crypto_wait_for_test294", scope: !2, file: !3, line: 180, type: !117, isLocal: true, isDefinition: true)
!4261 = !DIGlobalVariableExpression(var: !4262, expr: !DIExpression())
!4262 = distinct !DIGlobalVariable(scope: null, file: !3, line: 307, type: !4263, isLocal: true, isDefinition: true)
!4263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 80, elements: !4264)
!4264 = !{!4265}
!4265 = !DISubrange(count: 10)
!4266 = !DIGlobalVariableExpression(var: !4267, expr: !DIExpression())
!4267 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_crypto_probing_notify295", scope: !2, file: !3, line: 313, type: !117, isLocal: true, isDefinition: true)
!4268 = !DIGlobalVariableExpression(var: !4269, expr: !DIExpression())
!4269 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_crypto_alg_mod_lookup296", scope: !2, file: !3, line: 346, type: !117, isLocal: true, isDefinition: true)
!4270 = !DIGlobalVariableExpression(var: !4271, expr: !DIExpression())
!4271 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_crypto_shoot_alg297", scope: !2, file: !3, line: 387, type: !117, isLocal: true, isDefinition: true)
!4272 = !DIGlobalVariableExpression(var: !4273, expr: !DIExpression())
!4273 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___crypto_alloc_tfmgfp298", scope: !2, file: !3, line: 419, type: !117, isLocal: true, isDefinition: true)
!4274 = !DIGlobalVariableExpression(var: !4275, expr: !DIExpression())
!4275 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___crypto_alloc_tfm299", scope: !2, file: !3, line: 426, type: !117, isLocal: true, isDefinition: true)
!4276 = !DIGlobalVariableExpression(var: !4277, expr: !DIExpression())
!4277 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_crypto_alloc_base300", scope: !2, file: !3, line: 482, type: !117, isLocal: true, isDefinition: true)
!4278 = !DIGlobalVariableExpression(var: !4279, expr: !DIExpression())
!4279 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_crypto_create_tfm_node301", scope: !2, file: !3, line: 541, type: !117, isLocal: true, isDefinition: true)
!4280 = !DIGlobalVariableExpression(var: !4281, expr: !DIExpression())
!4281 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_crypto_clone_tfm302", scope: !2, file: !3, line: 567, type: !117, isLocal: true, isDefinition: true)
!4282 = !DIGlobalVariableExpression(var: !4283, expr: !DIExpression())
!4283 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_crypto_find_alg303", scope: !2, file: !3, line: 582, type: !117, isLocal: true, isDefinition: true)
!4284 = !DIGlobalVariableExpression(var: !4285, expr: !DIExpression())
!4285 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_crypto_alloc_tfm_node304", scope: !2, file: !3, line: 641, type: !117, isLocal: true, isDefinition: true)
!4286 = !DIGlobalVariableExpression(var: !4287, expr: !DIExpression())
!4287 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_crypto_destroy_tfm305", scope: !2, file: !3, line: 668, type: !117, isLocal: true, isDefinition: true)
!4288 = !DIGlobalVariableExpression(var: !4289, expr: !DIExpression())
!4289 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_crypto_has_alg306", scope: !2, file: !3, line: 682, type: !117, isLocal: true, isDefinition: true)
!4290 = !DIGlobalVariableExpression(var: !4291, expr: !DIExpression())
!4291 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_crypto_req_done307", scope: !2, file: !3, line: 694, type: !117, isLocal: true, isDefinition: true)
!4292 = !DIGlobalVariableExpression(var: !4293, expr: !DIExpression())
!4293 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description308", scope: !2, file: !3, line: 696, type: !4294, isLocal: true, isDefinition: true, align: 8)
!4294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 336, elements: !4295)
!4295 = !{!4296}
!4296 = !DISubrange(count: 42)
!4297 = !DIGlobalVariableExpression(var: !4298, expr: !DIExpression())
!4298 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file309", scope: !2, file: !3, line: 697, type: !4299, isLocal: true, isDefinition: true, align: 8)
!4299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 208, elements: !4300)
!4300 = !{!4301}
!4301 = !DISubrange(count: 26)
!4302 = !DIGlobalVariableExpression(var: !4303, expr: !DIExpression())
!4303 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license310", scope: !2, file: !3, line: 697, type: !4304, isLocal: true, isDefinition: true, align: 8)
!4304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 152, elements: !4305)
!4305 = !{!4306}
!4306 = !DISubrange(count: 19)
!4307 = !DIGlobalVariableExpression(var: !4308, expr: !DIExpression())
!4308 = distinct !DIGlobalVariable(scope: null, file: !107, line: 480, type: !4309, isLocal: true, isDefinition: true)
!4309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 168, elements: !4310)
!4310 = !{!4311}
!4311 = !DISubrange(count: 21)
!4312 = !DIGlobalVariableExpression(var: !4313, expr: !DIExpression())
!4313 = distinct !DIGlobalVariable(name: "__key", scope: !4314, file: !1885, line: 87, type: !584, isLocal: true, isDefinition: true)
!4314 = distinct !DISubprogram(name: "init_completion", scope: !1885, file: !1885, line: 84, type: !4315, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4317)
!4315 = !DISubroutineType(types: !4316)
!4316 = !{null, !2310}
!4317 = !{!4318}
!4318 = !DILocalVariable(name: "x", arg: 1, scope: !4314, file: !1885, line: 84, type: !2310)
!4319 = !DIGlobalVariableExpression(var: !4320, expr: !DIExpression())
!4320 = distinct !DIGlobalVariable(scope: null, file: !1885, line: 87, type: !4321, isLocal: true, isDefinition: true)
!4321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 72, elements: !4322)
!4322 = !{!4323}
!4323 = !DISubrange(count: 9)
!4324 = !DIGlobalVariableExpression(var: !4325, expr: !DIExpression())
!4325 = distinct !DIGlobalVariable(scope: null, file: !3, line: 284, type: !4263, isLocal: true, isDefinition: true)
!4326 = !DIGlobalVariableExpression(var: !4327, expr: !DIExpression())
!4327 = distinct !DIGlobalVariable(scope: null, file: !3, line: 288, type: !4328, isLocal: true, isDefinition: true)
!4328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 112, elements: !4329)
!4329 = !{!4330}
!4330 = !DISubrange(count: 14)
!4331 = !{i32 7, !"Dwarf Version", i32 5}
!4332 = !{i32 2, !"Debug Info Version", i32 3}
!4333 = !{i32 1, !"wchar_size", i32 2}
!4334 = !{i32 8, !"cf-protection-branch", i32 1}
!4335 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4336 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4337 = !{i32 1, !"Code Model", i32 2}
!4338 = !{i32 1, !"override-stack-alignment", i32 8}
!4339 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4340 = distinct !DISubprogram(name: "crypto_mod_get", scope: !3, file: !3, line: 41, type: !4341, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4343)
!4341 = !DISubroutineType(types: !4342)
!4342 = !{!145, !145}
!4343 = !{!4344}
!4344 = !DILocalVariable(name: "alg", arg: 1, scope: !4340, file: !3, line: 41, type: !145)
!4345 = !DILocation(line: 41, column: 54, scope: !4340)
!4346 = !DILocation(line: 43, column: 24, scope: !4340)
!4347 = !DILocation(line: 43, column: 29, scope: !4340)
!4348 = !DILocation(line: 43, column: 9, scope: !4340)
!4349 = !DILocation(line: 43, column: 58, scope: !4340)
!4350 = !DILocation(line: 43, column: 43, scope: !4340)
!4351 = !DILocation(line: 43, column: 2, scope: !4340)
!4352 = !DISubprogram(name: "try_module_get", scope: !6, file: !6, line: 696, type: !4353, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4353 = !DISubroutineType(types: !4354)
!4354 = !{!1493, !221}
!4355 = distinct !DISubprogram(name: "crypto_alg_get", scope: !4208, file: !4208, line: 161, type: !4341, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4356)
!4356 = !{!4357}
!4357 = !DILocalVariable(name: "alg", arg: 1, scope: !4355, file: !4208, line: 161, type: !145)
!4358 = !DILocation(line: 161, column: 68, scope: !4355)
!4359 = !DILocation(line: 163, column: 16, scope: !4355)
!4360 = !DILocation(line: 163, column: 21, scope: !4355)
!4361 = !DILocation(line: 163, column: 2, scope: !4355)
!4362 = !DILocation(line: 164, column: 9, scope: !4355)
!4363 = !DILocation(line: 164, column: 2, scope: !4355)
!4364 = distinct !DISubprogram(name: "crypto_mod_put", scope: !3, file: !3, line: 47, type: !4200, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4365)
!4365 = !{!4366, !4367}
!4366 = !DILocalVariable(name: "alg", arg: 1, scope: !4364, file: !3, line: 47, type: !145)
!4367 = !DILocalVariable(name: "module", scope: !4364, file: !3, line: 49, type: !221)
!4368 = !DILocation(line: 47, column: 40, scope: !4364)
!4369 = !DILocation(line: 49, column: 2, scope: !4364)
!4370 = !DILocation(line: 49, column: 17, scope: !4364)
!4371 = !DILocation(line: 49, column: 26, scope: !4364)
!4372 = !DILocation(line: 49, column: 31, scope: !4364)
!4373 = !DILocation(line: 51, column: 17, scope: !4364)
!4374 = !DILocation(line: 51, column: 2, scope: !4364)
!4375 = !DILocation(line: 52, column: 13, scope: !4364)
!4376 = !DILocation(line: 52, column: 2, scope: !4364)
!4377 = !DILocation(line: 53, column: 1, scope: !4364)
!4378 = distinct !DISubprogram(name: "crypto_alg_put", scope: !4208, file: !4208, line: 167, type: !4200, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4379)
!4379 = !{!4380}
!4380 = !DILocalVariable(name: "alg", arg: 1, scope: !4378, file: !4208, line: 167, type: !145)
!4381 = !DILocation(line: 167, column: 54, scope: !4378)
!4382 = !DILocation(line: 169, column: 29, scope: !4383)
!4383 = distinct !DILexicalBlock(scope: !4378, file: !4208, line: 169, column: 6)
!4384 = !DILocation(line: 169, column: 34, scope: !4383)
!4385 = !DILocation(line: 169, column: 6, scope: !4383)
!4386 = !DILocation(line: 169, column: 46, scope: !4383)
!4387 = !DILocation(line: 169, column: 49, scope: !4383)
!4388 = !DILocation(line: 169, column: 54, scope: !4383)
!4389 = !DILocation(line: 169, column: 6, scope: !4378)
!4390 = !DILocation(line: 170, column: 3, scope: !4383)
!4391 = !DILocation(line: 170, column: 8, scope: !4383)
!4392 = !DILocation(line: 170, column: 20, scope: !4383)
!4393 = !DILocation(line: 171, column: 1, scope: !4378)
!4394 = !DISubprogram(name: "module_put", scope: !6, file: !6, line: 706, type: !3834, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4395 = distinct !DISubprogram(name: "crypto_larval_alloc", scope: !3, file: !3, line: 106, type: !4396, scopeLine: 107, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4398)
!4396 = !DISubroutineType(types: !4397)
!4397 = !{!4206, !238, !135, !135}
!4398 = !{!4399, !4400, !4401, !4402}
!4399 = !DILocalVariable(name: "name", arg: 1, scope: !4395, file: !3, line: 106, type: !238)
!4400 = !DILocalVariable(name: "type", arg: 2, scope: !4395, file: !3, line: 106, type: !135)
!4401 = !DILocalVariable(name: "mask", arg: 3, scope: !4395, file: !3, line: 106, type: !135)
!4402 = !DILocalVariable(name: "larval", scope: !4395, file: !3, line: 108, type: !4206)
!4403 = !DILocation(line: 106, column: 55, scope: !4395)
!4404 = !DILocation(line: 106, column: 65, scope: !4395)
!4405 = !DILocation(line: 106, column: 75, scope: !4395)
!4406 = !DILocation(line: 108, column: 2, scope: !4395)
!4407 = !DILocation(line: 108, column: 24, scope: !4395)
!4408 = !DILocation(line: 110, column: 11, scope: !4395)
!4409 = !DILocation(line: 110, column: 9, scope: !4395)
!4410 = !DILocation(line: 111, column: 7, scope: !4411)
!4411 = distinct !DILexicalBlock(scope: !4395, file: !3, line: 111, column: 6)
!4412 = !DILocation(line: 111, column: 6, scope: !4395)
!4413 = !DILocation(line: 112, column: 10, scope: !4411)
!4414 = !DILocation(line: 112, column: 3, scope: !4411)
!4415 = !DILocation(line: 114, column: 17, scope: !4395)
!4416 = !DILocation(line: 114, column: 2, scope: !4395)
!4417 = !DILocation(line: 114, column: 10, scope: !4395)
!4418 = !DILocation(line: 114, column: 15, scope: !4395)
!4419 = !DILocation(line: 115, column: 46, scope: !4395)
!4420 = !DILocation(line: 115, column: 44, scope: !4395)
!4421 = !DILocation(line: 115, column: 2, scope: !4395)
!4422 = !DILocation(line: 115, column: 10, scope: !4395)
!4423 = !DILocation(line: 115, column: 14, scope: !4395)
!4424 = !DILocation(line: 115, column: 24, scope: !4395)
!4425 = !DILocation(line: 116, column: 2, scope: !4395)
!4426 = !DILocation(line: 116, column: 10, scope: !4395)
!4427 = !DILocation(line: 116, column: 14, scope: !4395)
!4428 = !DILocation(line: 116, column: 27, scope: !4395)
!4429 = !DILocation(line: 117, column: 2, scope: !4395)
!4430 = !DILocation(line: 117, column: 10, scope: !4395)
!4431 = !DILocation(line: 117, column: 14, scope: !4395)
!4432 = !DILocation(line: 117, column: 26, scope: !4395)
!4433 = !DILocation(line: 119, column: 10, scope: !4395)
!4434 = !DILocation(line: 119, column: 18, scope: !4395)
!4435 = !DILocation(line: 119, column: 22, scope: !4395)
!4436 = !DILocation(line: 119, column: 32, scope: !4395)
!4437 = !DILocation(line: 119, column: 2, scope: !4395)
!4438 = !DILocation(line: 120, column: 19, scope: !4395)
!4439 = !DILocation(line: 120, column: 27, scope: !4395)
!4440 = !DILocation(line: 120, column: 2, scope: !4395)
!4441 = !DILocation(line: 122, column: 9, scope: !4395)
!4442 = !DILocation(line: 122, column: 2, scope: !4395)
!4443 = !DILocation(line: 123, column: 1, scope: !4395)
!4444 = distinct !DISubprogram(name: "kzalloc", scope: !107, file: !107, line: 719, type: !4445, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4447)
!4445 = !DISubroutineType(types: !4446)
!4446 = !{!117, !360, !118}
!4447 = !{!4448, !4449}
!4448 = !DILocalVariable(name: "size", arg: 1, scope: !4444, file: !107, line: 719, type: !360)
!4449 = !DILocalVariable(name: "flags", arg: 2, scope: !4444, file: !107, line: 719, type: !118)
!4450 = !DILocation(line: 719, column: 52, scope: !4444)
!4451 = !DILocation(line: 719, column: 64, scope: !4444)
!4452 = !DILocation(line: 721, column: 17, scope: !4444)
!4453 = !DILocation(line: 721, column: 23, scope: !4444)
!4454 = !DILocation(line: 721, column: 29, scope: !4444)
!4455 = !DILocation(line: 721, column: 9, scope: !4444)
!4456 = !DILocation(line: 721, column: 2, scope: !4444)
!4457 = distinct !DISubprogram(name: "ERR_PTR", scope: !4458, file: !4458, line: 39, type: !4459, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4461)
!4458 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!4459 = !DISubroutineType(types: !4460)
!4460 = !{!117, !349}
!4461 = !{!4462}
!4462 = !DILocalVariable(name: "error", arg: 1, scope: !4457, file: !4458, line: 39, type: !349)
!4463 = !DILocation(line: 39, column: 48, scope: !4457)
!4464 = !DILocation(line: 41, column: 18, scope: !4457)
!4465 = !DILocation(line: 41, column: 9, scope: !4457)
!4466 = !DILocation(line: 41, column: 2, scope: !4457)
!4467 = distinct !DISubprogram(name: "crypto_larval_destroy", scope: !3, file: !3, line: 96, type: !4200, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4468)
!4468 = !{!4469, !4470}
!4469 = !DILocalVariable(name: "alg", arg: 1, scope: !4467, file: !3, line: 96, type: !145)
!4470 = !DILocalVariable(name: "larval", scope: !4467, file: !3, line: 98, type: !4206)
!4471 = !DILocation(line: 96, column: 54, scope: !4467)
!4472 = !DILocation(line: 98, column: 2, scope: !4467)
!4473 = !DILocation(line: 98, column: 24, scope: !4467)
!4474 = !DILocation(line: 98, column: 41, scope: !4467)
!4475 = !DILocation(line: 100, column: 2, scope: !4467)
!4476 = !DILocation(line: 100, column: 2, scope: !4477)
!4477 = distinct !DILexicalBlock(scope: !4478, file: !3, line: 100, column: 2)
!4478 = distinct !DILexicalBlock(scope: !4467, file: !3, line: 100, column: 2)
!4479 = !DILocation(line: 100, column: 2, scope: !4478)
!4480 = !DILocation(line: 100, column: 2, scope: !4481)
!4481 = distinct !DILexicalBlock(scope: !4477, file: !3, line: 100, column: 2)
!4482 = !DILocation(line: 100, column: 2, scope: !4483)
!4483 = distinct !DILexicalBlock(scope: !4481, file: !3, line: 100, column: 2)
!4484 = !DILocation(line: 100, column: 2, scope: !4485)
!4485 = distinct !DILexicalBlock(scope: !4481, file: !3, line: 100, column: 2)
!4486 = !{i64 2154347987, i64 2154348016, i64 2154348062, i64 2154348120, i64 2154348174, i64 2154348228, i64 2154348283, i64 2154348314}
!4487 = !DILocation(line: 101, column: 22, scope: !4488)
!4488 = distinct !DILexicalBlock(scope: !4467, file: !3, line: 101, column: 6)
!4489 = !DILocation(line: 101, column: 30, scope: !4488)
!4490 = !DILocation(line: 101, column: 7, scope: !4488)
!4491 = !DILocation(line: 101, column: 6, scope: !4467)
!4492 = !DILocation(line: 102, column: 18, scope: !4488)
!4493 = !DILocation(line: 102, column: 26, scope: !4488)
!4494 = !DILocation(line: 102, column: 3, scope: !4488)
!4495 = !DILocation(line: 103, column: 8, scope: !4467)
!4496 = !DILocation(line: 103, column: 2, scope: !4467)
!4497 = !DILocation(line: 104, column: 1, scope: !4467)
!4498 = !DISubprogram(name: "strscpy", scope: !4499, file: !4499, line: 72, type: !4500, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4499 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!4500 = !DISubroutineType(types: !4501)
!4501 = !{!345, !313, !238, !360}
!4502 = !DILocation(line: 84, column: 55, scope: !4314)
!4503 = !DILocation(line: 86, column: 2, scope: !4314)
!4504 = !DILocation(line: 86, column: 5, scope: !4314)
!4505 = !DILocation(line: 86, column: 10, scope: !4314)
!4506 = !DILocation(line: 87, column: 2, scope: !4314)
!4507 = !DILocation(line: 87, column: 2, scope: !4508)
!4508 = distinct !DILexicalBlock(scope: !4314, file: !1885, line: 87, column: 2)
!4509 = !DILocation(line: 88, column: 1, scope: !4314)
!4510 = distinct !DISubprogram(name: "crypto_larval_kill", scope: !3, file: !3, line: 155, type: !4200, scopeLine: 156, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4511)
!4511 = !{!4512, !4513}
!4512 = !DILocalVariable(name: "alg", arg: 1, scope: !4510, file: !3, line: 155, type: !145)
!4513 = !DILocalVariable(name: "larval", scope: !4510, file: !3, line: 157, type: !4206)
!4514 = !DILocation(line: 155, column: 44, scope: !4510)
!4515 = !DILocation(line: 157, column: 2, scope: !4510)
!4516 = !DILocation(line: 157, column: 24, scope: !4510)
!4517 = !DILocation(line: 157, column: 41, scope: !4510)
!4518 = !DILocation(line: 159, column: 2, scope: !4510)
!4519 = !DILocation(line: 160, column: 12, scope: !4510)
!4520 = !DILocation(line: 160, column: 17, scope: !4510)
!4521 = !DILocation(line: 160, column: 2, scope: !4510)
!4522 = !DILocation(line: 161, column: 2, scope: !4510)
!4523 = !DILocation(line: 162, column: 16, scope: !4510)
!4524 = !DILocation(line: 162, column: 24, scope: !4510)
!4525 = !DILocation(line: 162, column: 2, scope: !4510)
!4526 = !DILocation(line: 163, column: 17, scope: !4510)
!4527 = !DILocation(line: 163, column: 2, scope: !4510)
!4528 = !DILocation(line: 164, column: 1, scope: !4510)
!4529 = !DISubprogram(name: "down_write", scope: !892, file: !892, line: 187, type: !4530, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4530 = !DISubroutineType(types: !4531)
!4531 = !{null, !4532}
!4532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!4533 = distinct !DISubprogram(name: "list_del", scope: !4534, file: !4534, line: 227, type: !4535, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4537)
!4534 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!4535 = !DISubroutineType(types: !4536)
!4536 = !{null, !152}
!4537 = !{!4538}
!4538 = !DILocalVariable(name: "entry", arg: 1, scope: !4533, file: !4534, line: 227, type: !152)
!4539 = !DILocation(line: 227, column: 47, scope: !4533)
!4540 = !DILocation(line: 229, column: 19, scope: !4533)
!4541 = !DILocation(line: 229, column: 2, scope: !4533)
!4542 = !DILocation(line: 230, column: 2, scope: !4533)
!4543 = !DILocation(line: 230, column: 9, scope: !4533)
!4544 = !DILocation(line: 230, column: 14, scope: !4533)
!4545 = !DILocation(line: 231, column: 2, scope: !4533)
!4546 = !DILocation(line: 231, column: 9, scope: !4533)
!4547 = !DILocation(line: 231, column: 14, scope: !4533)
!4548 = !DILocation(line: 232, column: 1, scope: !4533)
!4549 = !DISubprogram(name: "up_write", scope: !892, file: !892, line: 203, type: !4530, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4550 = !DISubprogram(name: "complete_all", scope: !1885, file: !1885, line: 120, type: !4315, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4551 = distinct !DISubprogram(name: "crypto_wait_for_test", scope: !3, file: !3, line: 167, type: !4552, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4554)
!4552 = !DISubroutineType(types: !4553)
!4553 = !{null, !4206}
!4554 = !{!4555, !4556, !4557, !4560, !4563, !4565, !4568}
!4555 = !DILocalVariable(name: "larval", arg: 1, scope: !4551, file: !3, line: 167, type: !4206)
!4556 = !DILocalVariable(name: "err", scope: !4551, file: !3, line: 169, type: !133)
!4557 = !DILocalVariable(name: "__ret_warn_on", scope: !4558, file: !3, line: 172, type: !133)
!4558 = distinct !DILexicalBlock(scope: !4559, file: !3, line: 172, column: 6)
!4559 = distinct !DILexicalBlock(scope: !4551, file: !3, line: 172, column: 6)
!4560 = !DILocalVariable(name: "__flags", scope: !4561, file: !3, line: 172, type: !133)
!4561 = distinct !DILexicalBlock(scope: !4562, file: !3, line: 172, column: 6)
!4562 = distinct !DILexicalBlock(scope: !4558, file: !3, line: 172, column: 6)
!4563 = !DILocalVariable(name: "__ret_warn_on", scope: !4564, file: !3, line: 176, type: !133)
!4564 = distinct !DILexicalBlock(scope: !4551, file: !3, line: 176, column: 2)
!4565 = !DILocalVariable(name: "__flags", scope: !4566, file: !3, line: 176, type: !133)
!4566 = distinct !DILexicalBlock(scope: !4567, file: !3, line: 176, column: 2)
!4567 = distinct !DILexicalBlock(scope: !4564, file: !3, line: 176, column: 2)
!4568 = !DILabel(scope: !4551, name: "out", file: !3, line: 177)
!4569 = !DILocation(line: 167, column: 49, scope: !4551)
!4570 = !DILocation(line: 169, column: 2, scope: !4551)
!4571 = !DILocation(line: 169, column: 6, scope: !4551)
!4572 = !DILocation(line: 171, column: 55, scope: !4551)
!4573 = !DILocation(line: 171, column: 63, scope: !4551)
!4574 = !DILocation(line: 171, column: 8, scope: !4551)
!4575 = !DILocation(line: 171, column: 6, scope: !4551)
!4576 = !DILocation(line: 172, column: 6, scope: !4558)
!4577 = !DILocation(line: 172, column: 6, scope: !4562)
!4578 = !DILocation(line: 172, column: 6, scope: !4561)
!4579 = !DILocation(line: 172, column: 6, scope: !4580)
!4580 = distinct !DILexicalBlock(scope: !4561, file: !3, line: 172, column: 6)
!4581 = !DILocation(line: 172, column: 6, scope: !4582)
!4582 = distinct !DILexicalBlock(scope: !4561, file: !3, line: 172, column: 6)
!4583 = !{i64 2154357215, i64 2154357244, i64 2154357290, i64 2154357348, i64 2154357402, i64 2154357456, i64 2154357511, i64 2154357542, i64 2154357850, i64 2154357856, i64 2154357903, i64 2154357926, i64 2154357952}
!4584 = !DILocation(line: 172, column: 6, scope: !4585)
!4585 = distinct !DILexicalBlock(scope: !4561, file: !3, line: 172, column: 6)
!4586 = !DILocation(line: 172, column: 6, scope: !4559)
!4587 = !DILocation(line: 172, column: 6, scope: !4551)
!4588 = !DILocation(line: 173, column: 3, scope: !4559)
!4589 = !DILocation(line: 175, column: 38, scope: !4551)
!4590 = !DILocation(line: 175, column: 46, scope: !4551)
!4591 = !DILocation(line: 175, column: 8, scope: !4551)
!4592 = !DILocation(line: 175, column: 6, scope: !4551)
!4593 = !DILocation(line: 176, column: 2, scope: !4564)
!4594 = !DILocation(line: 176, column: 2, scope: !4567)
!4595 = !DILocation(line: 176, column: 2, scope: !4566)
!4596 = !DILocation(line: 176, column: 2, scope: !4597)
!4597 = distinct !DILexicalBlock(scope: !4566, file: !3, line: 176, column: 2)
!4598 = !DILocation(line: 176, column: 2, scope: !4599)
!4599 = distinct !DILexicalBlock(scope: !4566, file: !3, line: 176, column: 2)
!4600 = !{i64 2154358694, i64 2154358723, i64 2154358769, i64 2154358827, i64 2154358881, i64 2154358935, i64 2154358990, i64 2154359021, i64 2154359329, i64 2154359335, i64 2154359382, i64 2154359405, i64 2154359431}
!4601 = !DILocation(line: 176, column: 2, scope: !4602)
!4602 = distinct !DILexicalBlock(scope: !4566, file: !3, line: 176, column: 2)
!4603 = !DILocation(line: 176, column: 2, scope: !4551)
!4604 = !DILocation(line: 177, column: 1, scope: !4551)
!4605 = !DILocation(line: 178, column: 22, scope: !4551)
!4606 = !DILocation(line: 178, column: 30, scope: !4551)
!4607 = !DILocation(line: 178, column: 2, scope: !4551)
!4608 = !DILocation(line: 179, column: 1, scope: !4551)
!4609 = distinct !DISubprogram(name: "crypto_probing_notify", scope: !3, file: !3, line: 301, type: !4610, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4612)
!4610 = !DISubroutineType(types: !4611)
!4611 = !{!133, !363, !117}
!4612 = !{!4613, !4614, !4615}
!4613 = !DILocalVariable(name: "val", arg: 1, scope: !4609, file: !3, line: 301, type: !363)
!4614 = !DILocalVariable(name: "v", arg: 2, scope: !4609, file: !3, line: 301, type: !117)
!4615 = !DILocalVariable(name: "ok", scope: !4609, file: !3, line: 303, type: !133)
!4616 = !DILocation(line: 301, column: 41, scope: !4609)
!4617 = !DILocation(line: 301, column: 52, scope: !4609)
!4618 = !DILocation(line: 303, column: 2, scope: !4609)
!4619 = !DILocation(line: 303, column: 6, scope: !4609)
!4620 = !DILocation(line: 305, column: 51, scope: !4609)
!4621 = !DILocation(line: 305, column: 56, scope: !4609)
!4622 = !DILocation(line: 305, column: 7, scope: !4609)
!4623 = !DILocation(line: 305, column: 5, scope: !4609)
!4624 = !DILocation(line: 306, column: 6, scope: !4625)
!4625 = distinct !DILexicalBlock(scope: !4609, file: !3, line: 306, column: 6)
!4626 = !DILocation(line: 306, column: 9, scope: !4625)
!4627 = !DILocation(line: 306, column: 6, scope: !4609)
!4628 = !DILocation(line: 307, column: 3, scope: !4629)
!4629 = distinct !DILexicalBlock(scope: !4625, file: !3, line: 306, column: 25)
!4630 = !DILocation(line: 308, column: 52, scope: !4629)
!4631 = !DILocation(line: 308, column: 57, scope: !4629)
!4632 = !DILocation(line: 308, column: 8, scope: !4629)
!4633 = !DILocation(line: 308, column: 6, scope: !4629)
!4634 = !DILocation(line: 309, column: 2, scope: !4629)
!4635 = !DILocation(line: 311, column: 9, scope: !4609)
!4636 = !DILocation(line: 312, column: 1, scope: !4609)
!4637 = !DILocation(line: 311, column: 2, scope: !4609)
!4638 = !DISubprogram(name: "wait_for_completion_killable", scope: !1885, file: !1885, line: 105, type: !4639, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4639 = !DISubroutineType(types: !4640)
!4640 = !{!133, !2310}
!4641 = !DISubprogram(name: "blocking_notifier_call_chain", scope: !4230, file: !4230, line: 171, type: !4642, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4642 = !DISubroutineType(types: !4643)
!4643 = !{!133, !4644, !363, !117}
!4644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4229, size: 64)
!4645 = !DISubprogram(name: "__request_module", scope: !4646, file: !4646, line: 24, type: !4647, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4646 = !DIFile(filename: "./include/linux/kmod.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6022a92e643474d91bec12d05ea4184")
!4647 = !DISubroutineType(types: !4648)
!4648 = !{!133, !1493, !238, null}
!4649 = distinct !DISubprogram(name: "crypto_alg_mod_lookup", scope: !3, file: !3, line: 315, type: !4650, scopeLine: 316, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4652)
!4650 = !DISubroutineType(types: !4651)
!4651 = !{!145, !238, !135, !135}
!4652 = !{!4653, !4654, !4655, !4656, !4657, !4658}
!4653 = !DILocalVariable(name: "name", arg: 1, scope: !4649, file: !3, line: 315, type: !238)
!4654 = !DILocalVariable(name: "type", arg: 2, scope: !4649, file: !3, line: 315, type: !135)
!4655 = !DILocalVariable(name: "mask", arg: 3, scope: !4649, file: !3, line: 315, type: !135)
!4656 = !DILocalVariable(name: "alg", scope: !4649, file: !3, line: 317, type: !145)
!4657 = !DILocalVariable(name: "larval", scope: !4649, file: !3, line: 318, type: !145)
!4658 = !DILocalVariable(name: "ok", scope: !4649, file: !3, line: 319, type: !133)
!4659 = !DILocation(line: 315, column: 54, scope: !4649)
!4660 = !DILocation(line: 315, column: 64, scope: !4649)
!4661 = !DILocation(line: 315, column: 74, scope: !4649)
!4662 = !DILocation(line: 317, column: 2, scope: !4649)
!4663 = !DILocation(line: 317, column: 21, scope: !4649)
!4664 = !DILocation(line: 318, column: 2, scope: !4649)
!4665 = !DILocation(line: 318, column: 21, scope: !4649)
!4666 = !DILocation(line: 319, column: 2, scope: !4649)
!4667 = !DILocation(line: 319, column: 6, scope: !4649)
!4668 = !DILocation(line: 328, column: 9, scope: !4669)
!4669 = distinct !DILexicalBlock(scope: !4649, file: !3, line: 328, column: 6)
!4670 = !DILocation(line: 328, column: 16, scope: !4669)
!4671 = !DILocation(line: 328, column: 14, scope: !4669)
!4672 = !DILocation(line: 328, column: 22, scope: !4669)
!4673 = !DILocation(line: 328, column: 6, scope: !4649)
!4674 = !DILocation(line: 329, column: 8, scope: !4669)
!4675 = !DILocation(line: 329, column: 3, scope: !4669)
!4676 = !DILocation(line: 331, column: 32, scope: !4649)
!4677 = !DILocation(line: 331, column: 38, scope: !4649)
!4678 = !DILocation(line: 331, column: 44, scope: !4649)
!4679 = !DILocation(line: 331, column: 11, scope: !4649)
!4680 = !DILocation(line: 331, column: 9, scope: !4649)
!4681 = !DILocation(line: 332, column: 13, scope: !4682)
!4682 = distinct !DILexicalBlock(scope: !4649, file: !3, line: 332, column: 6)
!4683 = !DILocation(line: 332, column: 6, scope: !4682)
!4684 = !DILocation(line: 332, column: 21, scope: !4682)
!4685 = !DILocation(line: 332, column: 42, scope: !4682)
!4686 = !DILocation(line: 332, column: 25, scope: !4682)
!4687 = !DILocation(line: 332, column: 6, scope: !4649)
!4688 = !DILocation(line: 333, column: 10, scope: !4682)
!4689 = !DILocation(line: 333, column: 3, scope: !4682)
!4690 = !DILocation(line: 335, column: 53, scope: !4649)
!4691 = !DILocation(line: 335, column: 7, scope: !4649)
!4692 = !DILocation(line: 335, column: 5, scope: !4649)
!4693 = !DILocation(line: 337, column: 6, scope: !4694)
!4694 = distinct !DILexicalBlock(scope: !4649, file: !3, line: 337, column: 6)
!4695 = !DILocation(line: 337, column: 9, scope: !4694)
!4696 = !DILocation(line: 337, column: 6, scope: !4649)
!4697 = !DILocation(line: 338, column: 28, scope: !4694)
!4698 = !DILocation(line: 338, column: 9, scope: !4694)
!4699 = !DILocation(line: 338, column: 7, scope: !4694)
!4700 = !DILocation(line: 338, column: 3, scope: !4694)
!4701 = !DILocation(line: 340, column: 18, scope: !4702)
!4702 = distinct !DILexicalBlock(scope: !4694, file: !3, line: 339, column: 7)
!4703 = !DILocation(line: 340, column: 3, scope: !4702)
!4704 = !DILocation(line: 341, column: 9, scope: !4702)
!4705 = !DILocation(line: 341, column: 7, scope: !4702)
!4706 = !DILocation(line: 343, column: 21, scope: !4649)
!4707 = !DILocation(line: 343, column: 2, scope: !4649)
!4708 = !DILocation(line: 344, column: 9, scope: !4649)
!4709 = !DILocation(line: 344, column: 2, scope: !4649)
!4710 = !DILocation(line: 345, column: 1, scope: !4649)
!4711 = distinct !DISubprogram(name: "crypto_larval_lookup", scope: !3, file: !3, line: 271, type: !4650, scopeLine: 273, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4712)
!4712 = !{!4713, !4714, !4715, !4716}
!4713 = !DILocalVariable(name: "name", arg: 1, scope: !4711, file: !3, line: 271, type: !238)
!4714 = !DILocalVariable(name: "type", arg: 2, scope: !4711, file: !3, line: 271, type: !135)
!4715 = !DILocalVariable(name: "mask", arg: 3, scope: !4711, file: !3, line: 272, type: !135)
!4716 = !DILocalVariable(name: "alg", scope: !4711, file: !3, line: 274, type: !145)
!4717 = !DILocation(line: 271, column: 60, scope: !4711)
!4718 = !DILocation(line: 271, column: 70, scope: !4711)
!4719 = !DILocation(line: 272, column: 17, scope: !4711)
!4720 = !DILocation(line: 274, column: 2, scope: !4711)
!4721 = !DILocation(line: 274, column: 21, scope: !4711)
!4722 = !DILocation(line: 276, column: 7, scope: !4723)
!4723 = distinct !DILexicalBlock(scope: !4711, file: !3, line: 276, column: 6)
!4724 = !DILocation(line: 276, column: 6, scope: !4711)
!4725 = !DILocation(line: 277, column: 10, scope: !4723)
!4726 = !DILocation(line: 277, column: 3, scope: !4723)
!4727 = !DILocation(line: 279, column: 7, scope: !4711)
!4728 = !DILocation(line: 280, column: 7, scope: !4711)
!4729 = !DILocation(line: 282, column: 26, scope: !4711)
!4730 = !DILocation(line: 282, column: 32, scope: !4711)
!4731 = !DILocation(line: 282, column: 38, scope: !4711)
!4732 = !DILocation(line: 282, column: 8, scope: !4711)
!4733 = !DILocation(line: 282, column: 6, scope: !4711)
!4734 = !DILocation(line: 283, column: 7, scope: !4735)
!4735 = distinct !DILexicalBlock(scope: !4711, file: !3, line: 283, column: 6)
!4736 = !DILocation(line: 283, column: 11, scope: !4735)
!4737 = !DILocation(line: 283, column: 16, scope: !4735)
!4738 = !DILocation(line: 283, column: 21, scope: !4735)
!4739 = !DILocation(line: 283, column: 6, scope: !4711)
!4740 = !DILocation(line: 284, column: 3, scope: !4741)
!4741 = distinct !DILexicalBlock(scope: !4735, file: !3, line: 283, column: 39)
!4742 = !DILocation(line: 286, column: 10, scope: !4743)
!4743 = distinct !DILexicalBlock(scope: !4741, file: !3, line: 286, column: 7)
!4744 = !DILocation(line: 286, column: 15, scope: !4743)
!4745 = !DILocation(line: 286, column: 45, scope: !4743)
!4746 = !DILocation(line: 286, column: 43, scope: !4743)
!4747 = !DILocation(line: 286, column: 50, scope: !4743)
!4748 = !DILocation(line: 286, column: 7, scope: !4741)
!4749 = !DILocation(line: 288, column: 4, scope: !4743)
!4750 = !DILocation(line: 290, column: 27, scope: !4741)
!4751 = !DILocation(line: 290, column: 33, scope: !4741)
!4752 = !DILocation(line: 290, column: 39, scope: !4741)
!4753 = !DILocation(line: 290, column: 9, scope: !4741)
!4754 = !DILocation(line: 290, column: 7, scope: !4741)
!4755 = !DILocation(line: 291, column: 2, scope: !4741)
!4756 = !DILocation(line: 293, column: 22, scope: !4757)
!4757 = distinct !DILexicalBlock(scope: !4711, file: !3, line: 293, column: 6)
!4758 = !DILocation(line: 293, column: 7, scope: !4757)
!4759 = !DILocation(line: 293, column: 27, scope: !4757)
!4760 = !DILocation(line: 293, column: 47, scope: !4757)
!4761 = !DILocation(line: 293, column: 30, scope: !4757)
!4762 = !DILocation(line: 293, column: 6, scope: !4711)
!4763 = !DILocation(line: 294, column: 28, scope: !4757)
!4764 = !DILocation(line: 294, column: 9, scope: !4757)
!4765 = !DILocation(line: 294, column: 7, scope: !4757)
!4766 = !DILocation(line: 294, column: 3, scope: !4757)
!4767 = !DILocation(line: 295, column: 12, scope: !4768)
!4768 = distinct !DILexicalBlock(scope: !4757, file: !3, line: 295, column: 11)
!4769 = !DILocation(line: 295, column: 11, scope: !4757)
!4770 = !DILocation(line: 296, column: 27, scope: !4768)
!4771 = !DILocation(line: 296, column: 33, scope: !4768)
!4772 = !DILocation(line: 296, column: 39, scope: !4768)
!4773 = !DILocation(line: 296, column: 9, scope: !4768)
!4774 = !DILocation(line: 296, column: 7, scope: !4768)
!4775 = !DILocation(line: 296, column: 3, scope: !4768)
!4776 = !DILocation(line: 298, column: 9, scope: !4711)
!4777 = !DILocation(line: 298, column: 2, scope: !4711)
!4778 = !DILocation(line: 299, column: 1, scope: !4711)
!4779 = distinct !DISubprogram(name: "IS_ERR", scope: !4458, file: !4458, line: 59, type: !4780, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4782)
!4780 = !DISubroutineType(types: !4781)
!4781 = !{!1493, !2161}
!4782 = !{!4783}
!4783 = !DILocalVariable(name: "ptr", arg: 1, scope: !4779, file: !4458, line: 59, type: !2161)
!4784 = !DILocation(line: 59, column: 60, scope: !4779)
!4785 = !DILocation(line: 61, column: 9, scope: !4779)
!4786 = !DILocation(line: 61, column: 2, scope: !4779)
!4787 = distinct !DISubprogram(name: "crypto_is_larval", scope: !4208, file: !4208, line: 183, type: !4788, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4790)
!4788 = !DISubroutineType(types: !4789)
!4789 = !{!133, !145}
!4790 = !{!4791}
!4791 = !DILocalVariable(name: "alg", arg: 1, scope: !4787, file: !4208, line: 183, type: !145)
!4792 = !DILocation(line: 183, column: 55, scope: !4787)
!4793 = !DILocation(line: 185, column: 9, scope: !4787)
!4794 = !DILocation(line: 185, column: 14, scope: !4787)
!4795 = !DILocation(line: 185, column: 24, scope: !4787)
!4796 = !DILocation(line: 185, column: 2, scope: !4787)
!4797 = distinct !DISubprogram(name: "crypto_larval_wait", scope: !3, file: !3, line: 202, type: !4341, scopeLine: 203, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4798)
!4798 = !{!4799, !4800, !4801}
!4799 = !DILocalVariable(name: "alg", arg: 1, scope: !4797, file: !3, line: 202, type: !145)
!4800 = !DILocalVariable(name: "larval", scope: !4797, file: !3, line: 204, type: !4206)
!4801 = !DILocalVariable(name: "timeout", scope: !4797, file: !3, line: 205, type: !349)
!4802 = !DILocation(line: 202, column: 65, scope: !4797)
!4803 = !DILocation(line: 204, column: 2, scope: !4797)
!4804 = !DILocation(line: 204, column: 24, scope: !4797)
!4805 = !DILocation(line: 204, column: 41, scope: !4797)
!4806 = !DILocation(line: 205, column: 2, scope: !4797)
!4807 = !DILocation(line: 205, column: 7, scope: !4797)
!4808 = !DILocation(line: 207, column: 7, scope: !4809)
!4809 = distinct !DILexicalBlock(scope: !4797, file: !3, line: 207, column: 6)
!4810 = !DILocation(line: 207, column: 6, scope: !4797)
!4811 = !DILocation(line: 208, column: 21, scope: !4809)
!4812 = !DILocation(line: 208, column: 3, scope: !4809)
!4813 = !DILocation(line: 211, column: 4, scope: !4797)
!4814 = !DILocation(line: 211, column: 12, scope: !4797)
!4815 = !DILocation(line: 210, column: 12, scope: !4797)
!4816 = !DILocation(line: 210, column: 10, scope: !4797)
!4817 = !DILocation(line: 213, column: 8, scope: !4797)
!4818 = !DILocation(line: 213, column: 16, scope: !4797)
!4819 = !DILocation(line: 213, column: 6, scope: !4797)
!4820 = !DILocation(line: 214, column: 6, scope: !4821)
!4821 = distinct !DILexicalBlock(scope: !4797, file: !3, line: 214, column: 6)
!4822 = !DILocation(line: 214, column: 14, scope: !4821)
!4823 = !DILocation(line: 214, column: 6, scope: !4797)
!4824 = !DILocation(line: 215, column: 9, scope: !4821)
!4825 = !DILocation(line: 215, column: 7, scope: !4821)
!4826 = !DILocation(line: 215, column: 3, scope: !4821)
!4827 = !DILocation(line: 216, column: 12, scope: !4828)
!4828 = distinct !DILexicalBlock(scope: !4821, file: !3, line: 216, column: 11)
!4829 = !DILocation(line: 216, column: 11, scope: !4821)
!4830 = !DILocation(line: 217, column: 9, scope: !4828)
!4831 = !DILocation(line: 217, column: 7, scope: !4828)
!4832 = !DILocation(line: 217, column: 3, scope: !4828)
!4833 = !DILocation(line: 218, column: 12, scope: !4834)
!4834 = distinct !DILexicalBlock(scope: !4828, file: !3, line: 218, column: 11)
!4835 = !DILocation(line: 218, column: 11, scope: !4828)
!4836 = !DILocation(line: 219, column: 9, scope: !4834)
!4837 = !DILocation(line: 219, column: 7, scope: !4834)
!4838 = !DILocation(line: 219, column: 3, scope: !4834)
!4839 = !DILocation(line: 220, column: 18, scope: !4840)
!4840 = distinct !DILexicalBlock(scope: !4834, file: !3, line: 220, column: 11)
!4841 = !DILocation(line: 220, column: 11, scope: !4840)
!4842 = !DILocation(line: 220, column: 11, scope: !4834)
!4843 = !DILocation(line: 222, column: 33, scope: !4844)
!4844 = distinct !DILexicalBlock(scope: !4840, file: !3, line: 222, column: 11)
!4845 = !DILocation(line: 222, column: 11, scope: !4844)
!4846 = !DILocation(line: 222, column: 41, scope: !4844)
!4847 = !DILocation(line: 223, column: 6, scope: !4844)
!4848 = !DILocation(line: 223, column: 11, scope: !4844)
!4849 = !DILocation(line: 223, column: 21, scope: !4844)
!4850 = !DILocation(line: 222, column: 11, scope: !4840)
!4851 = !DILocation(line: 224, column: 9, scope: !4844)
!4852 = !DILocation(line: 224, column: 7, scope: !4844)
!4853 = !DILocation(line: 224, column: 3, scope: !4844)
!4854 = !DILocation(line: 225, column: 11, scope: !4855)
!4855 = distinct !DILexicalBlock(scope: !4844, file: !3, line: 225, column: 11)
!4856 = !DILocation(line: 225, column: 16, scope: !4855)
!4857 = !DILocation(line: 225, column: 26, scope: !4855)
!4858 = !DILocation(line: 225, column: 11, scope: !4844)
!4859 = !DILocation(line: 226, column: 9, scope: !4855)
!4860 = !DILocation(line: 226, column: 7, scope: !4855)
!4861 = !DILocation(line: 226, column: 3, scope: !4855)
!4862 = !DILocation(line: 227, column: 27, scope: !4863)
!4863 = distinct !DILexicalBlock(scope: !4855, file: !3, line: 227, column: 11)
!4864 = !DILocation(line: 227, column: 12, scope: !4863)
!4865 = !DILocation(line: 227, column: 11, scope: !4855)
!4866 = !DILocation(line: 228, column: 9, scope: !4863)
!4867 = !DILocation(line: 228, column: 7, scope: !4863)
!4868 = !DILocation(line: 228, column: 3, scope: !4863)
!4869 = !DILocation(line: 229, column: 18, scope: !4797)
!4870 = !DILocation(line: 229, column: 26, scope: !4797)
!4871 = !DILocation(line: 229, column: 2, scope: !4797)
!4872 = !DILocation(line: 231, column: 9, scope: !4797)
!4873 = !DILocation(line: 232, column: 1, scope: !4797)
!4874 = !DILocation(line: 231, column: 2, scope: !4797)
!4875 = distinct !DISubprogram(name: "crypto_shoot_alg", scope: !3, file: !3, line: 381, type: !4200, scopeLine: 382, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4876)
!4876 = !{!4877}
!4877 = !DILocalVariable(name: "alg", arg: 1, scope: !4875, file: !3, line: 381, type: !145)
!4878 = !DILocation(line: 381, column: 42, scope: !4875)
!4879 = !DILocation(line: 383, column: 2, scope: !4875)
!4880 = !DILocation(line: 384, column: 2, scope: !4875)
!4881 = !DILocation(line: 384, column: 7, scope: !4875)
!4882 = !DILocation(line: 384, column: 17, scope: !4875)
!4883 = !DILocation(line: 385, column: 2, scope: !4875)
!4884 = !DILocation(line: 386, column: 1, scope: !4875)
!4885 = distinct !DISubprogram(name: "__crypto_alloc_tfmgfp", scope: !3, file: !3, line: 389, type: !4886, scopeLine: 391, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4888)
!4886 = !DISubroutineType(types: !4887)
!4887 = !{!120, !145, !135, !135, !118}
!4888 = !{!4889, !4890, !4891, !4892, !4893, !4894, !4895, !4896, !4897, !4898}
!4889 = !DILocalVariable(name: "alg", arg: 1, scope: !4885, file: !3, line: 389, type: !145)
!4890 = !DILocalVariable(name: "type", arg: 2, scope: !4885, file: !3, line: 389, type: !135)
!4891 = !DILocalVariable(name: "mask", arg: 3, scope: !4885, file: !3, line: 390, type: !135)
!4892 = !DILocalVariable(name: "gfp", arg: 4, scope: !4885, file: !3, line: 390, type: !118)
!4893 = !DILocalVariable(name: "tfm", scope: !4885, file: !3, line: 392, type: !120)
!4894 = !DILocalVariable(name: "tfm_size", scope: !4885, file: !3, line: 393, type: !7)
!4895 = !DILocalVariable(name: "err", scope: !4885, file: !3, line: 394, type: !133)
!4896 = !DILabel(scope: !4885, name: "cra_init_failed", file: !3, line: 409)
!4897 = !DILabel(scope: !4885, name: "out_err", file: !3, line: 414)
!4898 = !DILabel(scope: !4885, name: "out", file: !3, line: 416)
!4899 = !DILocation(line: 389, column: 61, scope: !4885)
!4900 = !DILocation(line: 389, column: 70, scope: !4885)
!4901 = !DILocation(line: 390, column: 11, scope: !4885)
!4902 = !DILocation(line: 390, column: 23, scope: !4885)
!4903 = !DILocation(line: 392, column: 2, scope: !4885)
!4904 = !DILocation(line: 392, column: 21, scope: !4885)
!4905 = !DILocation(line: 393, column: 2, scope: !4885)
!4906 = !DILocation(line: 393, column: 15, scope: !4885)
!4907 = !DILocation(line: 394, column: 2, scope: !4885)
!4908 = !DILocation(line: 394, column: 6, scope: !4885)
!4909 = !DILocation(line: 396, column: 43, scope: !4885)
!4910 = !DILocation(line: 396, column: 48, scope: !4885)
!4911 = !DILocation(line: 396, column: 54, scope: !4885)
!4912 = !DILocation(line: 396, column: 28, scope: !4885)
!4913 = !DILocation(line: 396, column: 26, scope: !4885)
!4914 = !DILocation(line: 396, column: 13, scope: !4885)
!4915 = !DILocation(line: 396, column: 11, scope: !4885)
!4916 = !DILocation(line: 397, column: 16, scope: !4885)
!4917 = !DILocation(line: 397, column: 26, scope: !4885)
!4918 = !DILocation(line: 397, column: 8, scope: !4885)
!4919 = !DILocation(line: 397, column: 6, scope: !4885)
!4920 = !DILocation(line: 398, column: 6, scope: !4921)
!4921 = distinct !DILexicalBlock(scope: !4885, file: !3, line: 398, column: 6)
!4922 = !DILocation(line: 398, column: 10, scope: !4921)
!4923 = !DILocation(line: 398, column: 6, scope: !4885)
!4924 = !DILocation(line: 399, column: 3, scope: !4921)
!4925 = !DILocation(line: 401, column: 19, scope: !4885)
!4926 = !DILocation(line: 401, column: 2, scope: !4885)
!4927 = !DILocation(line: 401, column: 7, scope: !4885)
!4928 = !DILocation(line: 401, column: 17, scope: !4885)
!4929 = !DILocation(line: 402, column: 16, scope: !4885)
!4930 = !DILocation(line: 402, column: 21, scope: !4885)
!4931 = !DILocation(line: 402, column: 2, scope: !4885)
!4932 = !DILocation(line: 404, column: 7, scope: !4933)
!4933 = distinct !DILexicalBlock(scope: !4885, file: !3, line: 404, column: 6)
!4934 = !DILocation(line: 404, column: 12, scope: !4933)
!4935 = !DILocation(line: 404, column: 17, scope: !4933)
!4936 = !DILocation(line: 404, column: 20, scope: !4933)
!4937 = !DILocation(line: 404, column: 25, scope: !4933)
!4938 = !DILocation(line: 404, column: 34, scope: !4933)
!4939 = !DILocation(line: 404, column: 44, scope: !4933)
!4940 = !DILocation(line: 404, column: 49, scope: !4933)
!4941 = !DILocation(line: 404, column: 58, scope: !4933)
!4942 = !DILocation(line: 404, column: 42, scope: !4933)
!4943 = !DILocation(line: 404, column: 6, scope: !4885)
!4944 = !DILocation(line: 405, column: 3, scope: !4933)
!4945 = !DILocation(line: 407, column: 2, scope: !4885)
!4946 = !DILocation(line: 409, column: 1, scope: !4885)
!4947 = !DILocation(line: 410, column: 18, scope: !4885)
!4948 = !DILocation(line: 410, column: 2, scope: !4885)
!4949 = !DILocation(line: 411, column: 6, scope: !4950)
!4950 = distinct !DILexicalBlock(scope: !4885, file: !3, line: 411, column: 6)
!4951 = !DILocation(line: 411, column: 10, scope: !4950)
!4952 = !DILocation(line: 411, column: 6, scope: !4885)
!4953 = !DILocation(line: 412, column: 20, scope: !4950)
!4954 = !DILocation(line: 412, column: 3, scope: !4950)
!4955 = !DILocation(line: 413, column: 8, scope: !4885)
!4956 = !DILocation(line: 413, column: 2, scope: !4885)
!4957 = !DILocation(line: 414, column: 1, scope: !4885)
!4958 = !DILocation(line: 415, column: 16, scope: !4885)
!4959 = !DILocation(line: 415, column: 8, scope: !4885)
!4960 = !DILocation(line: 415, column: 6, scope: !4885)
!4961 = !DILocation(line: 415, column: 2, scope: !4885)
!4962 = !DILocation(line: 416, column: 1, scope: !4885)
!4963 = !DILocation(line: 417, column: 9, scope: !4885)
!4964 = !DILocation(line: 418, column: 1, scope: !4885)
!4965 = !DILocation(line: 417, column: 2, scope: !4885)
!4966 = distinct !DISubprogram(name: "crypto_ctxsize", scope: !3, file: !3, line: 356, type: !174, scopeLine: 357, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4967)
!4967 = !{!4968, !4969, !4970, !4971, !4972}
!4968 = !DILocalVariable(name: "alg", arg: 1, scope: !4966, file: !3, line: 356, type: !145)
!4969 = !DILocalVariable(name: "type", arg: 2, scope: !4966, file: !3, line: 356, type: !135)
!4970 = !DILocalVariable(name: "mask", arg: 3, scope: !4966, file: !3, line: 356, type: !135)
!4971 = !DILocalVariable(name: "type_obj", scope: !4966, file: !3, line: 358, type: !168)
!4972 = !DILocalVariable(name: "len", scope: !4966, file: !3, line: 359, type: !7)
!4973 = !DILocation(line: 356, column: 55, scope: !4966)
!4974 = !DILocation(line: 356, column: 64, scope: !4966)
!4975 = !DILocation(line: 356, column: 74, scope: !4966)
!4976 = !DILocation(line: 358, column: 2, scope: !4966)
!4977 = !DILocation(line: 358, column: 28, scope: !4966)
!4978 = !DILocation(line: 358, column: 39, scope: !4966)
!4979 = !DILocation(line: 358, column: 44, scope: !4966)
!4980 = !DILocation(line: 359, column: 2, scope: !4966)
!4981 = !DILocation(line: 359, column: 15, scope: !4966)
!4982 = !DILocation(line: 361, column: 8, scope: !4966)
!4983 = !DILocation(line: 361, column: 13, scope: !4966)
!4984 = !DILocation(line: 361, column: 31, scope: !4966)
!4985 = !DILocation(line: 361, column: 58, scope: !4966)
!4986 = !DILocation(line: 361, column: 29, scope: !4966)
!4987 = !DILocation(line: 361, column: 27, scope: !4966)
!4988 = !DILocation(line: 361, column: 6, scope: !4966)
!4989 = !DILocation(line: 362, column: 6, scope: !4990)
!4990 = distinct !DILexicalBlock(scope: !4966, file: !3, line: 362, column: 6)
!4991 = !DILocation(line: 362, column: 6, scope: !4966)
!4992 = !DILocation(line: 363, column: 10, scope: !4990)
!4993 = !DILocation(line: 363, column: 16, scope: !4990)
!4994 = !DILocation(line: 363, column: 26, scope: !4990)
!4995 = !DILocation(line: 363, column: 34, scope: !4990)
!4996 = !DILocation(line: 363, column: 39, scope: !4990)
!4997 = !DILocation(line: 363, column: 45, scope: !4990)
!4998 = !DILocation(line: 363, column: 14, scope: !4990)
!4999 = !DILocation(line: 363, column: 3, scope: !4990)
!5000 = !DILocation(line: 365, column: 10, scope: !4966)
!5001 = !DILocation(line: 365, column: 15, scope: !4966)
!5002 = !DILocation(line: 365, column: 25, scope: !4966)
!5003 = !DILocation(line: 365, column: 2, scope: !4966)
!5004 = !DILocation(line: 367, column: 3, scope: !5005)
!5005 = distinct !DILexicalBlock(scope: !4966, file: !3, line: 365, column: 49)
!5006 = !DILocation(line: 367, column: 3, scope: !5007)
!5007 = distinct !DILexicalBlock(scope: !5005, file: !3, line: 367, column: 3)
!5008 = !DILocation(line: 367, column: 3, scope: !5009)
!5009 = distinct !DILexicalBlock(scope: !5007, file: !3, line: 367, column: 3)
!5010 = !DILocation(line: 367, column: 3, scope: !5011)
!5011 = distinct !DILexicalBlock(scope: !5007, file: !3, line: 367, column: 3)
!5012 = !{i64 2154365912, i64 2154365941, i64 2154365987, i64 2154366045, i64 2154366099, i64 2154366153, i64 2154366208, i64 2154366239}
!5013 = !DILocation(line: 370, column: 32, scope: !5005)
!5014 = !DILocation(line: 370, column: 10, scope: !5005)
!5015 = !DILocation(line: 370, column: 7, scope: !5005)
!5016 = !DILocation(line: 371, column: 3, scope: !5005)
!5017 = !DILocation(line: 374, column: 34, scope: !5005)
!5018 = !DILocation(line: 374, column: 10, scope: !5005)
!5019 = !DILocation(line: 374, column: 7, scope: !5005)
!5020 = !DILocation(line: 375, column: 3, scope: !5005)
!5021 = !DILocation(line: 378, column: 9, scope: !4966)
!5022 = !DILocation(line: 378, column: 2, scope: !4966)
!5023 = !DILocation(line: 379, column: 1, scope: !4966)
!5024 = distinct !DISubprogram(name: "refcount_set", scope: !99, file: !99, line: 134, type: !5025, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5028)
!5025 = !DISubroutineType(types: !5026)
!5026 = !{null, !5027, !133}
!5027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!5028 = !{!5029, !5030}
!5029 = !DILocalVariable(name: "r", arg: 1, scope: !5024, file: !99, line: 134, type: !5027)
!5030 = !DILocalVariable(name: "n", arg: 2, scope: !5024, file: !99, line: 134, type: !133)
!5031 = !DILocation(line: 134, column: 45, scope: !5024)
!5032 = !DILocation(line: 134, column: 52, scope: !5024)
!5033 = !DILocation(line: 136, column: 14, scope: !5024)
!5034 = !DILocation(line: 136, column: 17, scope: !5024)
!5035 = !DILocation(line: 136, column: 23, scope: !5024)
!5036 = !DILocation(line: 136, column: 2, scope: !5024)
!5037 = !DILocation(line: 137, column: 1, scope: !5024)
!5038 = distinct !DISubprogram(name: "crypto_exit_ops", scope: !3, file: !3, line: 348, type: !142, scopeLine: 349, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5039)
!5039 = !{!5040, !5041}
!5040 = !DILocalVariable(name: "tfm", arg: 1, scope: !5038, file: !3, line: 348, type: !120)
!5041 = !DILocalVariable(name: "type", scope: !5038, file: !3, line: 350, type: !168)
!5042 = !DILocation(line: 348, column: 48, scope: !5038)
!5043 = !DILocation(line: 350, column: 2, scope: !5038)
!5044 = !DILocation(line: 350, column: 28, scope: !5038)
!5045 = !DILocation(line: 350, column: 35, scope: !5038)
!5046 = !DILocation(line: 350, column: 40, scope: !5038)
!5047 = !DILocation(line: 350, column: 51, scope: !5038)
!5048 = !DILocation(line: 352, column: 6, scope: !5049)
!5049 = distinct !DILexicalBlock(scope: !5038, file: !3, line: 352, column: 6)
!5050 = !DILocation(line: 352, column: 11, scope: !5049)
!5051 = !DILocation(line: 352, column: 14, scope: !5049)
!5052 = !DILocation(line: 352, column: 19, scope: !5049)
!5053 = !DILocation(line: 352, column: 6, scope: !5038)
!5054 = !DILocation(line: 353, column: 3, scope: !5049)
!5055 = !DILocation(line: 353, column: 8, scope: !5049)
!5056 = !DILocation(line: 353, column: 13, scope: !5049)
!5057 = !DILocation(line: 354, column: 1, scope: !5038)
!5058 = !DISubprogram(name: "kfree", scope: !107, file: !107, line: 227, type: !5059, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5059 = !DISubroutineType(types: !5060)
!5060 = !{null, !2161}
!5061 = distinct !DISubprogram(name: "__crypto_alloc_tfm", scope: !3, file: !3, line: 421, type: !5062, scopeLine: 423, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5064)
!5062 = !DISubroutineType(types: !5063)
!5063 = !{!120, !145, !135, !135}
!5064 = !{!5065, !5066, !5067}
!5065 = !DILocalVariable(name: "alg", arg: 1, scope: !5061, file: !3, line: 421, type: !145)
!5066 = !DILocalVariable(name: "type", arg: 2, scope: !5061, file: !3, line: 421, type: !135)
!5067 = !DILocalVariable(name: "mask", arg: 3, scope: !5061, file: !3, line: 422, type: !135)
!5068 = !DILocation(line: 421, column: 58, scope: !5061)
!5069 = !DILocation(line: 421, column: 67, scope: !5061)
!5070 = !DILocation(line: 422, column: 15, scope: !5061)
!5071 = !DILocation(line: 424, column: 31, scope: !5061)
!5072 = !DILocation(line: 424, column: 36, scope: !5061)
!5073 = !DILocation(line: 424, column: 42, scope: !5061)
!5074 = !DILocation(line: 424, column: 9, scope: !5061)
!5075 = !DILocation(line: 424, column: 2, scope: !5061)
!5076 = distinct !DISubprogram(name: "crypto_alloc_base", scope: !3, file: !3, line: 450, type: !5077, scopeLine: 451, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5079)
!5077 = !DISubroutineType(types: !5078)
!5078 = !{!120, !238, !135, !135}
!5079 = !{!5080, !5081, !5082, !5083, !5084, !5085, !5089}
!5080 = !DILocalVariable(name: "alg_name", arg: 1, scope: !5076, file: !3, line: 450, type: !238)
!5081 = !DILocalVariable(name: "type", arg: 2, scope: !5076, file: !3, line: 450, type: !135)
!5082 = !DILocalVariable(name: "mask", arg: 3, scope: !5076, file: !3, line: 450, type: !135)
!5083 = !DILocalVariable(name: "tfm", scope: !5076, file: !3, line: 452, type: !120)
!5084 = !DILocalVariable(name: "err", scope: !5076, file: !3, line: 453, type: !133)
!5085 = !DILocalVariable(name: "alg", scope: !5086, file: !3, line: 456, type: !145)
!5086 = distinct !DILexicalBlock(scope: !5087, file: !3, line: 455, column: 11)
!5087 = distinct !DILexicalBlock(scope: !5088, file: !3, line: 455, column: 2)
!5088 = distinct !DILexicalBlock(scope: !5076, file: !3, line: 455, column: 2)
!5089 = !DILabel(scope: !5086, name: "err", file: !3, line: 471)
!5090 = !DILocation(line: 450, column: 50, scope: !5076)
!5091 = !DILocation(line: 450, column: 64, scope: !5076)
!5092 = !DILocation(line: 450, column: 74, scope: !5076)
!5093 = !DILocation(line: 452, column: 2, scope: !5076)
!5094 = !DILocation(line: 452, column: 21, scope: !5076)
!5095 = !DILocation(line: 453, column: 2, scope: !5076)
!5096 = !DILocation(line: 453, column: 6, scope: !5076)
!5097 = !DILocation(line: 455, column: 2, scope: !5076)
!5098 = !DILocation(line: 456, column: 3, scope: !5086)
!5099 = !DILocation(line: 456, column: 22, scope: !5086)
!5100 = !DILocation(line: 458, column: 31, scope: !5086)
!5101 = !DILocation(line: 458, column: 41, scope: !5086)
!5102 = !DILocation(line: 458, column: 47, scope: !5086)
!5103 = !DILocation(line: 458, column: 9, scope: !5086)
!5104 = !DILocation(line: 458, column: 7, scope: !5086)
!5105 = !DILocation(line: 459, column: 14, scope: !5106)
!5106 = distinct !DILexicalBlock(scope: !5086, file: !3, line: 459, column: 7)
!5107 = !DILocation(line: 459, column: 7, scope: !5106)
!5108 = !DILocation(line: 459, column: 7, scope: !5086)
!5109 = !DILocation(line: 460, column: 18, scope: !5110)
!5110 = distinct !DILexicalBlock(scope: !5106, file: !3, line: 459, column: 20)
!5111 = !DILocation(line: 460, column: 10, scope: !5110)
!5112 = !DILocation(line: 460, column: 8, scope: !5110)
!5113 = !DILocation(line: 461, column: 4, scope: !5110)
!5114 = !DILocation(line: 464, column: 28, scope: !5086)
!5115 = !DILocation(line: 464, column: 33, scope: !5086)
!5116 = !DILocation(line: 464, column: 39, scope: !5086)
!5117 = !DILocation(line: 464, column: 9, scope: !5086)
!5118 = !DILocation(line: 464, column: 7, scope: !5086)
!5119 = !DILocation(line: 465, column: 15, scope: !5120)
!5120 = distinct !DILexicalBlock(scope: !5086, file: !3, line: 465, column: 7)
!5121 = !DILocation(line: 465, column: 8, scope: !5120)
!5122 = !DILocation(line: 465, column: 7, scope: !5086)
!5123 = !DILocation(line: 466, column: 11, scope: !5120)
!5124 = !DILocation(line: 466, column: 4, scope: !5120)
!5125 = !DILocation(line: 468, column: 18, scope: !5086)
!5126 = !DILocation(line: 468, column: 3, scope: !5086)
!5127 = !DILocation(line: 469, column: 17, scope: !5086)
!5128 = !DILocation(line: 469, column: 9, scope: !5086)
!5129 = !DILocation(line: 469, column: 7, scope: !5086)
!5130 = !DILocation(line: 469, column: 3, scope: !5086)
!5131 = !DILocation(line: 471, column: 1, scope: !5086)
!5132 = !DILocation(line: 472, column: 7, scope: !5133)
!5133 = distinct !DILexicalBlock(scope: !5086, file: !3, line: 472, column: 7)
!5134 = !DILocation(line: 472, column: 11, scope: !5133)
!5135 = !DILocation(line: 472, column: 7, scope: !5086)
!5136 = !DILocation(line: 473, column: 4, scope: !5133)
!5137 = !DILocation(line: 474, column: 28, scope: !5138)
!5138 = distinct !DILexicalBlock(scope: !5086, file: !3, line: 474, column: 7)
!5139 = !DILocation(line: 474, column: 7, scope: !5138)
!5140 = !DILocation(line: 474, column: 7, scope: !5086)
!5141 = !DILocation(line: 475, column: 8, scope: !5142)
!5142 = distinct !DILexicalBlock(scope: !5138, file: !3, line: 474, column: 38)
!5143 = !DILocation(line: 476, column: 4, scope: !5142)
!5144 = !DILocation(line: 478, column: 2, scope: !5087)
!5145 = !DILocation(line: 455, column: 2, scope: !5087)
!5146 = distinct !{!5146, !5147, !5148, !5149}
!5147 = !DILocation(line: 455, column: 2, scope: !5088)
!5148 = !DILocation(line: 478, column: 2, scope: !5088)
!5149 = !{!"llvm.loop.unroll.disable"}
!5150 = !DILocation(line: 480, column: 17, scope: !5076)
!5151 = !DILocation(line: 480, column: 9, scope: !5076)
!5152 = !DILocation(line: 480, column: 2, scope: !5076)
!5153 = !DILocation(line: 481, column: 1, scope: !5076)
!5154 = distinct !DISubprogram(name: "PTR_ERR", scope: !4458, file: !4458, line: 49, type: !5155, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5157)
!5155 = !DISubroutineType(types: !5156)
!5156 = !{!349, !2161}
!5157 = !{!5158}
!5158 = !DILocalVariable(name: "ptr", arg: 1, scope: !5154, file: !4458, line: 49, type: !2161)
!5159 = !DILocation(line: 49, column: 61, scope: !5154)
!5160 = !DILocation(line: 51, column: 16, scope: !5154)
!5161 = !DILocation(line: 51, column: 9, scope: !5154)
!5162 = !DILocation(line: 51, column: 2, scope: !5154)
!5163 = distinct !DISubprogram(name: "fatal_signal_pending", scope: !2386, file: !2386, line: 409, type: !5164, scopeLine: 410, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5166)
!5164 = !DISubroutineType(types: !5165)
!5165 = !{!133, !1006}
!5166 = !{!5167}
!5167 = !DILocalVariable(name: "p", arg: 1, scope: !5163, file: !2386, line: 409, type: !1006)
!5168 = !DILocation(line: 409, column: 60, scope: !5163)
!5169 = !DILocation(line: 411, column: 25, scope: !5163)
!5170 = !DILocation(line: 411, column: 9, scope: !5163)
!5171 = !DILocation(line: 411, column: 28, scope: !5163)
!5172 = !DILocation(line: 411, column: 54, scope: !5163)
!5173 = !DILocation(line: 411, column: 31, scope: !5163)
!5174 = !DILocation(line: 0, scope: !5163)
!5175 = !DILocation(line: 411, column: 2, scope: !5163)
!5176 = distinct !DISubprogram(name: "get_current", scope: !5177, file: !5177, line: 39, type: !5178, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5180)
!5177 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!5178 = !DISubroutineType(types: !5179)
!5179 = !{!1006}
!5180 = !{!5181, !5183, !5185}
!5181 = !DILocalVariable(name: "pscr_ret__", scope: !5182, file: !5177, line: 41, type: !1006)
!5182 = distinct !DILexicalBlock(scope: !5176, file: !5177, line: 41, column: 9)
!5183 = !DILocalVariable(name: "__vpp_verify", scope: !5184, file: !5177, line: 41, type: !2161)
!5184 = distinct !DILexicalBlock(scope: !5182, file: !5177, line: 41, column: 9)
!5185 = !DILocalVariable(name: "pfo_val__", scope: !5186, file: !5177, line: 41, type: !464)
!5186 = distinct !DILexicalBlock(scope: !5182, file: !5177, line: 41, column: 9)
!5187 = !DILocation(line: 41, column: 9, scope: !5182)
!5188 = !DILocation(line: 41, column: 9, scope: !5184)
!5189 = !DILocation(line: 41, column: 9, scope: !5186)
!5190 = !{i64 2148407209}
!5191 = !DILocation(line: 41, column: 9, scope: !5176)
!5192 = !DILocation(line: 41, column: 2, scope: !5176)
!5193 = distinct !DISubprogram(name: "crypto_create_tfm_node", scope: !3, file: !3, line: 508, type: !5194, scopeLine: 511, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5196)
!5194 = !DISubroutineType(types: !5195)
!5195 = !{!117, !145, !168, !133}
!5196 = !{!5197, !5198, !5199, !5200, !5201, !5202, !5203, !5204, !5205}
!5197 = !DILocalVariable(name: "alg", arg: 1, scope: !5193, file: !3, line: 508, type: !145)
!5198 = !DILocalVariable(name: "frontend", arg: 2, scope: !5193, file: !3, line: 509, type: !168)
!5199 = !DILocalVariable(name: "node", arg: 3, scope: !5193, file: !3, line: 510, type: !133)
!5200 = !DILocalVariable(name: "tfm", scope: !5193, file: !3, line: 512, type: !120)
!5201 = !DILocalVariable(name: "mem", scope: !5193, file: !3, line: 513, type: !313)
!5202 = !DILocalVariable(name: "err", scope: !5193, file: !3, line: 514, type: !133)
!5203 = !DILabel(scope: !5193, name: "cra_init_failed", file: !3, line: 531)
!5204 = !DILabel(scope: !5193, name: "out_free_tfm", file: !3, line: 533)
!5205 = !DILabel(scope: !5193, name: "out", file: !3, line: 538)
!5206 = !DILocation(line: 508, column: 49, scope: !5193)
!5207 = !DILocation(line: 509, column: 35, scope: !5193)
!5208 = !DILocation(line: 510, column: 13, scope: !5193)
!5209 = !DILocation(line: 512, column: 2, scope: !5193)
!5210 = !DILocation(line: 512, column: 21, scope: !5193)
!5211 = !DILocation(line: 513, column: 2, scope: !5193)
!5212 = !DILocation(line: 513, column: 8, scope: !5193)
!5213 = !DILocation(line: 514, column: 2, scope: !5193)
!5214 = !DILocation(line: 514, column: 6, scope: !5193)
!5215 = !DILocation(line: 516, column: 28, scope: !5193)
!5216 = !DILocation(line: 516, column: 33, scope: !5193)
!5217 = !DILocation(line: 516, column: 43, scope: !5193)
!5218 = !DILocation(line: 516, column: 8, scope: !5193)
!5219 = !DILocation(line: 516, column: 6, scope: !5193)
!5220 = !DILocation(line: 517, column: 13, scope: !5221)
!5221 = distinct !DILexicalBlock(scope: !5193, file: !3, line: 517, column: 6)
!5222 = !DILocation(line: 517, column: 6, scope: !5221)
!5223 = !DILocation(line: 517, column: 6, scope: !5193)
!5224 = !DILocation(line: 518, column: 3, scope: !5221)
!5225 = !DILocation(line: 520, column: 30, scope: !5193)
!5226 = !DILocation(line: 520, column: 36, scope: !5193)
!5227 = !DILocation(line: 520, column: 46, scope: !5193)
!5228 = !DILocation(line: 520, column: 34, scope: !5193)
!5229 = !DILocation(line: 520, column: 6, scope: !5193)
!5230 = !DILocation(line: 522, column: 8, scope: !5193)
!5231 = !DILocation(line: 522, column: 18, scope: !5193)
!5232 = !DILocation(line: 522, column: 27, scope: !5193)
!5233 = !DILocation(line: 522, column: 6, scope: !5193)
!5234 = !DILocation(line: 523, column: 6, scope: !5235)
!5235 = distinct !DILexicalBlock(scope: !5193, file: !3, line: 523, column: 6)
!5236 = !DILocation(line: 523, column: 6, scope: !5193)
!5237 = !DILocation(line: 524, column: 3, scope: !5235)
!5238 = !DILocation(line: 526, column: 7, scope: !5239)
!5239 = distinct !DILexicalBlock(scope: !5193, file: !3, line: 526, column: 6)
!5240 = !DILocation(line: 526, column: 12, scope: !5239)
!5241 = !DILocation(line: 526, column: 17, scope: !5239)
!5242 = !DILocation(line: 526, column: 20, scope: !5239)
!5243 = !DILocation(line: 526, column: 25, scope: !5239)
!5244 = !DILocation(line: 526, column: 34, scope: !5239)
!5245 = !DILocation(line: 526, column: 44, scope: !5239)
!5246 = !DILocation(line: 526, column: 49, scope: !5239)
!5247 = !DILocation(line: 526, column: 58, scope: !5239)
!5248 = !DILocation(line: 526, column: 42, scope: !5239)
!5249 = !DILocation(line: 526, column: 6, scope: !5193)
!5250 = !DILocation(line: 527, column: 3, scope: !5239)
!5251 = !DILocation(line: 529, column: 2, scope: !5193)
!5252 = !DILocation(line: 531, column: 1, scope: !5193)
!5253 = !DILocation(line: 532, column: 18, scope: !5193)
!5254 = !DILocation(line: 532, column: 2, scope: !5193)
!5255 = !DILocation(line: 533, column: 1, scope: !5193)
!5256 = !DILocation(line: 534, column: 6, scope: !5257)
!5257 = distinct !DILexicalBlock(scope: !5193, file: !3, line: 534, column: 6)
!5258 = !DILocation(line: 534, column: 10, scope: !5257)
!5259 = !DILocation(line: 534, column: 6, scope: !5193)
!5260 = !DILocation(line: 535, column: 20, scope: !5257)
!5261 = !DILocation(line: 535, column: 3, scope: !5257)
!5262 = !DILocation(line: 536, column: 8, scope: !5193)
!5263 = !DILocation(line: 536, column: 2, scope: !5193)
!5264 = !DILocation(line: 537, column: 16, scope: !5193)
!5265 = !DILocation(line: 537, column: 8, scope: !5193)
!5266 = !DILocation(line: 537, column: 6, scope: !5193)
!5267 = !DILocation(line: 537, column: 2, scope: !5193)
!5268 = !DILocation(line: 538, column: 1, scope: !5193)
!5269 = !DILocation(line: 539, column: 9, scope: !5193)
!5270 = !DILocation(line: 540, column: 1, scope: !5193)
!5271 = !DILocation(line: 539, column: 2, scope: !5193)
!5272 = distinct !DISubprogram(name: "crypto_alloc_tfmmem", scope: !3, file: !3, line: 484, type: !5273, scopeLine: 487, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5275)
!5273 = !DISubroutineType(types: !5274)
!5274 = !{!117, !145, !168, !133, !118}
!5275 = !{!5276, !5277, !5278, !5279, !5280, !5281, !5282, !5283}
!5276 = !DILocalVariable(name: "alg", arg: 1, scope: !5272, file: !3, line: 484, type: !145)
!5277 = !DILocalVariable(name: "frontend", arg: 2, scope: !5272, file: !3, line: 485, type: !168)
!5278 = !DILocalVariable(name: "node", arg: 3, scope: !5272, file: !3, line: 485, type: !133)
!5279 = !DILocalVariable(name: "gfp", arg: 4, scope: !5272, file: !3, line: 486, type: !118)
!5280 = !DILocalVariable(name: "tfm", scope: !5272, file: !3, line: 488, type: !120)
!5281 = !DILocalVariable(name: "tfmsize", scope: !5272, file: !3, line: 489, type: !7)
!5282 = !DILocalVariable(name: "total", scope: !5272, file: !3, line: 490, type: !7)
!5283 = !DILocalVariable(name: "mem", scope: !5272, file: !3, line: 491, type: !313)
!5284 = !DILocation(line: 484, column: 53, scope: !5272)
!5285 = !DILocation(line: 485, column: 32, scope: !5272)
!5286 = !DILocation(line: 485, column: 46, scope: !5272)
!5287 = !DILocation(line: 486, column: 12, scope: !5272)
!5288 = !DILocation(line: 488, column: 2, scope: !5272)
!5289 = !DILocation(line: 488, column: 21, scope: !5272)
!5290 = !DILocation(line: 489, column: 2, scope: !5272)
!5291 = !DILocation(line: 489, column: 15, scope: !5272)
!5292 = !DILocation(line: 490, column: 2, scope: !5272)
!5293 = !DILocation(line: 490, column: 15, scope: !5272)
!5294 = !DILocation(line: 491, column: 2, scope: !5272)
!5295 = !DILocation(line: 491, column: 8, scope: !5272)
!5296 = !DILocation(line: 493, column: 12, scope: !5272)
!5297 = !DILocation(line: 493, column: 22, scope: !5272)
!5298 = !DILocation(line: 493, column: 10, scope: !5272)
!5299 = !DILocation(line: 494, column: 10, scope: !5272)
!5300 = !DILocation(line: 494, column: 18, scope: !5272)
!5301 = !DILocation(line: 494, column: 35, scope: !5272)
!5302 = !DILocation(line: 494, column: 45, scope: !5272)
!5303 = !DILocation(line: 494, column: 53, scope: !5272)
!5304 = !DILocation(line: 494, column: 33, scope: !5272)
!5305 = !DILocation(line: 494, column: 8, scope: !5272)
!5306 = !DILocation(line: 496, column: 21, scope: !5272)
!5307 = !DILocation(line: 496, column: 28, scope: !5272)
!5308 = !DILocation(line: 496, column: 33, scope: !5272)
!5309 = !DILocation(line: 496, column: 8, scope: !5272)
!5310 = !DILocation(line: 496, column: 6, scope: !5272)
!5311 = !DILocation(line: 497, column: 6, scope: !5312)
!5312 = distinct !DILexicalBlock(scope: !5272, file: !3, line: 497, column: 6)
!5313 = !DILocation(line: 497, column: 10, scope: !5312)
!5314 = !DILocation(line: 497, column: 6, scope: !5272)
!5315 = !DILocation(line: 498, column: 10, scope: !5312)
!5316 = !DILocation(line: 498, column: 3, scope: !5312)
!5317 = !DILocation(line: 500, column: 30, scope: !5272)
!5318 = !DILocation(line: 500, column: 36, scope: !5272)
!5319 = !DILocation(line: 500, column: 34, scope: !5272)
!5320 = !DILocation(line: 500, column: 6, scope: !5272)
!5321 = !DILocation(line: 501, column: 19, scope: !5272)
!5322 = !DILocation(line: 501, column: 2, scope: !5272)
!5323 = !DILocation(line: 501, column: 7, scope: !5272)
!5324 = !DILocation(line: 501, column: 17, scope: !5272)
!5325 = !DILocation(line: 502, column: 14, scope: !5272)
!5326 = !DILocation(line: 502, column: 2, scope: !5272)
!5327 = !DILocation(line: 502, column: 7, scope: !5272)
!5328 = !DILocation(line: 502, column: 12, scope: !5272)
!5329 = !DILocation(line: 503, column: 16, scope: !5272)
!5330 = !DILocation(line: 503, column: 21, scope: !5272)
!5331 = !DILocation(line: 503, column: 2, scope: !5272)
!5332 = !DILocation(line: 505, column: 9, scope: !5272)
!5333 = !DILocation(line: 505, column: 2, scope: !5272)
!5334 = !DILocation(line: 506, column: 1, scope: !5272)
!5335 = distinct !DISubprogram(name: "crypto_clone_tfm", scope: !3, file: !3, line: 543, type: !5336, scopeLine: 545, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5338)
!5336 = !DISubroutineType(types: !5337)
!5337 = !{!117, !168, !120}
!5338 = !{!5339, !5340, !5341, !5342, !5343, !5344}
!5339 = !DILocalVariable(name: "frontend", arg: 1, scope: !5335, file: !3, line: 543, type: !168)
!5340 = !DILocalVariable(name: "otfm", arg: 2, scope: !5335, file: !3, line: 544, type: !120)
!5341 = !DILocalVariable(name: "alg", scope: !5335, file: !3, line: 546, type: !145)
!5342 = !DILocalVariable(name: "tfm", scope: !5335, file: !3, line: 547, type: !120)
!5343 = !DILocalVariable(name: "mem", scope: !5335, file: !3, line: 548, type: !313)
!5344 = !DILabel(scope: !5335, name: "out", file: !3, line: 564)
!5345 = !DILocation(line: 543, column: 50, scope: !5335)
!5346 = !DILocation(line: 544, column: 29, scope: !5335)
!5347 = !DILocation(line: 546, column: 2, scope: !5335)
!5348 = !DILocation(line: 546, column: 21, scope: !5335)
!5349 = !DILocation(line: 546, column: 27, scope: !5335)
!5350 = !DILocation(line: 546, column: 33, scope: !5335)
!5351 = !DILocation(line: 547, column: 2, scope: !5335)
!5352 = !DILocation(line: 547, column: 21, scope: !5335)
!5353 = !DILocation(line: 548, column: 2, scope: !5335)
!5354 = !DILocation(line: 548, column: 8, scope: !5335)
!5355 = !DILocation(line: 550, column: 8, scope: !5335)
!5356 = !DILocation(line: 550, column: 6, scope: !5335)
!5357 = !DILocation(line: 551, column: 6, scope: !5358)
!5358 = distinct !DILexicalBlock(scope: !5335, file: !3, line: 551, column: 6)
!5359 = !DILocation(line: 551, column: 6, scope: !5335)
!5360 = !DILocation(line: 552, column: 3, scope: !5358)
!5361 = !DILocation(line: 554, column: 28, scope: !5335)
!5362 = !DILocation(line: 554, column: 33, scope: !5335)
!5363 = !DILocation(line: 554, column: 43, scope: !5335)
!5364 = !DILocation(line: 554, column: 49, scope: !5335)
!5365 = !DILocation(line: 554, column: 8, scope: !5335)
!5366 = !DILocation(line: 554, column: 6, scope: !5335)
!5367 = !DILocation(line: 555, column: 13, scope: !5368)
!5368 = distinct !DILexicalBlock(scope: !5335, file: !3, line: 555, column: 6)
!5369 = !DILocation(line: 555, column: 6, scope: !5368)
!5370 = !DILocation(line: 555, column: 6, scope: !5335)
!5371 = !DILocation(line: 556, column: 18, scope: !5372)
!5372 = distinct !DILexicalBlock(scope: !5368, file: !3, line: 555, column: 19)
!5373 = !DILocation(line: 556, column: 3, scope: !5372)
!5374 = !DILocation(line: 557, column: 3, scope: !5372)
!5375 = !DILocation(line: 560, column: 30, scope: !5335)
!5376 = !DILocation(line: 560, column: 36, scope: !5335)
!5377 = !DILocation(line: 560, column: 46, scope: !5335)
!5378 = !DILocation(line: 560, column: 34, scope: !5335)
!5379 = !DILocation(line: 560, column: 6, scope: !5335)
!5380 = !DILocation(line: 561, column: 19, scope: !5335)
!5381 = !DILocation(line: 561, column: 25, scope: !5335)
!5382 = !DILocation(line: 561, column: 2, scope: !5335)
!5383 = !DILocation(line: 561, column: 7, scope: !5335)
!5384 = !DILocation(line: 561, column: 17, scope: !5335)
!5385 = !DILocation(line: 562, column: 14, scope: !5335)
!5386 = !DILocation(line: 562, column: 20, scope: !5335)
!5387 = !DILocation(line: 562, column: 2, scope: !5335)
!5388 = !DILocation(line: 562, column: 7, scope: !5335)
!5389 = !DILocation(line: 562, column: 12, scope: !5335)
!5390 = !DILocation(line: 564, column: 1, scope: !5335)
!5391 = !DILocation(line: 565, column: 9, scope: !5335)
!5392 = !DILocation(line: 566, column: 1, scope: !5335)
!5393 = !DILocation(line: 565, column: 2, scope: !5335)
!5394 = distinct !DISubprogram(name: "crypto_find_alg", scope: !3, file: !3, line: 569, type: !5395, scopeLine: 572, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5397)
!5395 = !DISubroutineType(types: !5396)
!5396 = !{!145, !238, !168, !135, !135}
!5397 = !{!5398, !5399, !5400, !5401}
!5398 = !DILocalVariable(name: "alg_name", arg: 1, scope: !5394, file: !3, line: 569, type: !238)
!5399 = !DILocalVariable(name: "frontend", arg: 2, scope: !5394, file: !3, line: 570, type: !168)
!5400 = !DILocalVariable(name: "type", arg: 3, scope: !5394, file: !3, line: 571, type: !135)
!5401 = !DILocalVariable(name: "mask", arg: 4, scope: !5394, file: !3, line: 571, type: !135)
!5402 = !DILocation(line: 569, column: 48, scope: !5394)
!5403 = !DILocation(line: 570, column: 34, scope: !5394)
!5404 = !DILocation(line: 571, column: 12, scope: !5394)
!5405 = !DILocation(line: 571, column: 22, scope: !5394)
!5406 = !DILocation(line: 573, column: 6, scope: !5407)
!5407 = distinct !DILexicalBlock(scope: !5394, file: !3, line: 573, column: 6)
!5408 = !DILocation(line: 573, column: 6, scope: !5394)
!5409 = !DILocation(line: 574, column: 11, scope: !5410)
!5410 = distinct !DILexicalBlock(scope: !5407, file: !3, line: 573, column: 16)
!5411 = !DILocation(line: 574, column: 21, scope: !5410)
!5412 = !DILocation(line: 574, column: 8, scope: !5410)
!5413 = !DILocation(line: 575, column: 11, scope: !5410)
!5414 = !DILocation(line: 575, column: 21, scope: !5410)
!5415 = !DILocation(line: 575, column: 8, scope: !5410)
!5416 = !DILocation(line: 576, column: 11, scope: !5410)
!5417 = !DILocation(line: 576, column: 21, scope: !5410)
!5418 = !DILocation(line: 576, column: 8, scope: !5410)
!5419 = !DILocation(line: 577, column: 11, scope: !5410)
!5420 = !DILocation(line: 577, column: 21, scope: !5410)
!5421 = !DILocation(line: 577, column: 8, scope: !5410)
!5422 = !DILocation(line: 578, column: 2, scope: !5410)
!5423 = !DILocation(line: 580, column: 31, scope: !5394)
!5424 = !DILocation(line: 580, column: 41, scope: !5394)
!5425 = !DILocation(line: 580, column: 47, scope: !5394)
!5426 = !DILocation(line: 580, column: 9, scope: !5394)
!5427 = !DILocation(line: 580, column: 2, scope: !5394)
!5428 = distinct !DISubprogram(name: "crypto_alloc_tfm_node", scope: !3, file: !3, line: 607, type: !5429, scopeLine: 610, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5431)
!5429 = !DISubroutineType(types: !5430)
!5430 = !{!117, !238, !168, !135, !135, !133}
!5431 = !{!5432, !5433, !5434, !5435, !5436, !5437, !5438, !5439, !5443}
!5432 = !DILocalVariable(name: "alg_name", arg: 1, scope: !5428, file: !3, line: 607, type: !238)
!5433 = !DILocalVariable(name: "frontend", arg: 2, scope: !5428, file: !3, line: 608, type: !168)
!5434 = !DILocalVariable(name: "type", arg: 3, scope: !5428, file: !3, line: 608, type: !135)
!5435 = !DILocalVariable(name: "mask", arg: 4, scope: !5428, file: !3, line: 608, type: !135)
!5436 = !DILocalVariable(name: "node", arg: 5, scope: !5428, file: !3, line: 609, type: !133)
!5437 = !DILocalVariable(name: "tfm", scope: !5428, file: !3, line: 611, type: !117)
!5438 = !DILocalVariable(name: "err", scope: !5428, file: !3, line: 612, type: !133)
!5439 = !DILocalVariable(name: "alg", scope: !5440, file: !3, line: 615, type: !145)
!5440 = distinct !DILexicalBlock(scope: !5441, file: !3, line: 614, column: 11)
!5441 = distinct !DILexicalBlock(scope: !5442, file: !3, line: 614, column: 2)
!5442 = distinct !DILexicalBlock(scope: !5428, file: !3, line: 614, column: 2)
!5443 = !DILabel(scope: !5440, name: "err", file: !3, line: 630)
!5444 = !DILocation(line: 607, column: 41, scope: !5428)
!5445 = !DILocation(line: 608, column: 36, scope: !5428)
!5446 = !DILocation(line: 608, column: 50, scope: !5428)
!5447 = !DILocation(line: 608, column: 60, scope: !5428)
!5448 = !DILocation(line: 609, column: 14, scope: !5428)
!5449 = !DILocation(line: 611, column: 2, scope: !5428)
!5450 = !DILocation(line: 611, column: 8, scope: !5428)
!5451 = !DILocation(line: 612, column: 2, scope: !5428)
!5452 = !DILocation(line: 612, column: 6, scope: !5428)
!5453 = !DILocation(line: 614, column: 2, scope: !5428)
!5454 = !DILocation(line: 615, column: 3, scope: !5440)
!5455 = !DILocation(line: 615, column: 22, scope: !5440)
!5456 = !DILocation(line: 617, column: 25, scope: !5440)
!5457 = !DILocation(line: 617, column: 35, scope: !5440)
!5458 = !DILocation(line: 617, column: 45, scope: !5440)
!5459 = !DILocation(line: 617, column: 51, scope: !5440)
!5460 = !DILocation(line: 617, column: 9, scope: !5440)
!5461 = !DILocation(line: 617, column: 7, scope: !5440)
!5462 = !DILocation(line: 618, column: 14, scope: !5463)
!5463 = distinct !DILexicalBlock(scope: !5440, file: !3, line: 618, column: 7)
!5464 = !DILocation(line: 618, column: 7, scope: !5463)
!5465 = !DILocation(line: 618, column: 7, scope: !5440)
!5466 = !DILocation(line: 619, column: 18, scope: !5467)
!5467 = distinct !DILexicalBlock(scope: !5463, file: !3, line: 618, column: 20)
!5468 = !DILocation(line: 619, column: 10, scope: !5467)
!5469 = !DILocation(line: 619, column: 8, scope: !5467)
!5470 = !DILocation(line: 620, column: 4, scope: !5467)
!5471 = !DILocation(line: 623, column: 32, scope: !5440)
!5472 = !DILocation(line: 623, column: 37, scope: !5440)
!5473 = !DILocation(line: 623, column: 47, scope: !5440)
!5474 = !DILocation(line: 623, column: 9, scope: !5440)
!5475 = !DILocation(line: 623, column: 7, scope: !5440)
!5476 = !DILocation(line: 624, column: 15, scope: !5477)
!5477 = distinct !DILexicalBlock(scope: !5440, file: !3, line: 624, column: 7)
!5478 = !DILocation(line: 624, column: 8, scope: !5477)
!5479 = !DILocation(line: 624, column: 7, scope: !5440)
!5480 = !DILocation(line: 625, column: 11, scope: !5477)
!5481 = !DILocation(line: 625, column: 4, scope: !5477)
!5482 = !DILocation(line: 627, column: 18, scope: !5440)
!5483 = !DILocation(line: 627, column: 3, scope: !5440)
!5484 = !DILocation(line: 628, column: 17, scope: !5440)
!5485 = !DILocation(line: 628, column: 9, scope: !5440)
!5486 = !DILocation(line: 628, column: 7, scope: !5440)
!5487 = !DILocation(line: 628, column: 3, scope: !5440)
!5488 = !DILocation(line: 630, column: 1, scope: !5440)
!5489 = !DILocation(line: 631, column: 7, scope: !5490)
!5490 = distinct !DILexicalBlock(scope: !5440, file: !3, line: 631, column: 7)
!5491 = !DILocation(line: 631, column: 11, scope: !5490)
!5492 = !DILocation(line: 631, column: 7, scope: !5440)
!5493 = !DILocation(line: 632, column: 4, scope: !5490)
!5494 = !DILocation(line: 633, column: 28, scope: !5495)
!5495 = distinct !DILexicalBlock(scope: !5440, file: !3, line: 633, column: 7)
!5496 = !DILocation(line: 633, column: 7, scope: !5495)
!5497 = !DILocation(line: 633, column: 7, scope: !5440)
!5498 = !DILocation(line: 634, column: 8, scope: !5499)
!5499 = distinct !DILexicalBlock(scope: !5495, file: !3, line: 633, column: 38)
!5500 = !DILocation(line: 635, column: 4, scope: !5499)
!5501 = !DILocation(line: 637, column: 2, scope: !5441)
!5502 = !DILocation(line: 614, column: 2, scope: !5441)
!5503 = distinct !{!5503, !5504, !5505, !5149}
!5504 = !DILocation(line: 614, column: 2, scope: !5442)
!5505 = !DILocation(line: 637, column: 2, scope: !5442)
!5506 = !DILocation(line: 639, column: 17, scope: !5428)
!5507 = !DILocation(line: 639, column: 9, scope: !5428)
!5508 = !DILocation(line: 639, column: 2, scope: !5428)
!5509 = !DILocation(line: 640, column: 1, scope: !5428)
!5510 = distinct !DISubprogram(name: "crypto_destroy_tfm", scope: !3, file: !3, line: 651, type: !5511, scopeLine: 652, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5513)
!5511 = !DISubroutineType(types: !5512)
!5512 = !{null, !117, !120}
!5513 = !{!5514, !5515, !5516}
!5514 = !DILocalVariable(name: "mem", arg: 1, scope: !5510, file: !3, line: 651, type: !117)
!5515 = !DILocalVariable(name: "tfm", arg: 2, scope: !5510, file: !3, line: 651, type: !120)
!5516 = !DILocalVariable(name: "alg", scope: !5510, file: !3, line: 653, type: !145)
!5517 = !DILocation(line: 651, column: 31, scope: !5510)
!5518 = !DILocation(line: 651, column: 55, scope: !5510)
!5519 = !DILocation(line: 653, column: 2, scope: !5510)
!5520 = !DILocation(line: 653, column: 21, scope: !5510)
!5521 = !DILocation(line: 655, column: 21, scope: !5522)
!5522 = distinct !DILexicalBlock(scope: !5510, file: !3, line: 655, column: 6)
!5523 = !DILocation(line: 655, column: 6, scope: !5522)
!5524 = !DILocation(line: 655, column: 6, scope: !5510)
!5525 = !DILocation(line: 656, column: 3, scope: !5522)
!5526 = !DILocation(line: 658, column: 30, scope: !5527)
!5527 = distinct !DILexicalBlock(scope: !5510, file: !3, line: 658, column: 6)
!5528 = !DILocation(line: 658, column: 35, scope: !5527)
!5529 = !DILocation(line: 658, column: 7, scope: !5527)
!5530 = !DILocation(line: 658, column: 6, scope: !5510)
!5531 = !DILocation(line: 659, column: 3, scope: !5527)
!5532 = !DILocation(line: 660, column: 8, scope: !5510)
!5533 = !DILocation(line: 660, column: 13, scope: !5510)
!5534 = !DILocation(line: 660, column: 6, scope: !5510)
!5535 = !DILocation(line: 662, column: 7, scope: !5536)
!5536 = distinct !DILexicalBlock(scope: !5510, file: !3, line: 662, column: 6)
!5537 = !DILocation(line: 662, column: 12, scope: !5536)
!5538 = !DILocation(line: 662, column: 17, scope: !5536)
!5539 = !DILocation(line: 662, column: 20, scope: !5536)
!5540 = !DILocation(line: 662, column: 25, scope: !5536)
!5541 = !DILocation(line: 662, column: 6, scope: !5510)
!5542 = !DILocation(line: 663, column: 3, scope: !5536)
!5543 = !DILocation(line: 663, column: 8, scope: !5536)
!5544 = !DILocation(line: 663, column: 17, scope: !5536)
!5545 = !DILocation(line: 664, column: 18, scope: !5510)
!5546 = !DILocation(line: 664, column: 2, scope: !5510)
!5547 = !DILocation(line: 665, column: 17, scope: !5510)
!5548 = !DILocation(line: 665, column: 2, scope: !5510)
!5549 = !DILocation(line: 666, column: 18, scope: !5510)
!5550 = !DILocation(line: 666, column: 2, scope: !5510)
!5551 = !DILocation(line: 667, column: 1, scope: !5510)
!5552 = distinct !DISubprogram(name: "IS_ERR_OR_NULL", scope: !4458, file: !4458, line: 70, type: !4780, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5553)
!5553 = !{!5554}
!5554 = !DILocalVariable(name: "ptr", arg: 1, scope: !5552, file: !4458, line: 70, type: !2161)
!5555 = !DILocation(line: 70, column: 68, scope: !5552)
!5556 = !DILocation(line: 72, column: 9, scope: !5552)
!5557 = !DILocation(line: 72, column: 24, scope: !5552)
!5558 = !DILocation(line: 72, column: 27, scope: !5552)
!5559 = !DILocation(line: 72, column: 2, scope: !5552)
!5560 = distinct !DISubprogram(name: "refcount_dec_and_test", scope: !99, file: !99, line: 331, type: !5561, scopeLine: 332, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5563)
!5561 = !DISubroutineType(types: !5562)
!5562 = !{!1493, !5027}
!5563 = !{!5564}
!5564 = !DILocalVariable(name: "r", arg: 1, scope: !5560, file: !99, line: 331, type: !5027)
!5565 = !DILocation(line: 331, column: 67, scope: !5560)
!5566 = !DILocation(line: 333, column: 33, scope: !5560)
!5567 = !DILocation(line: 333, column: 9, scope: !5560)
!5568 = !DILocation(line: 333, column: 2, scope: !5560)
!5569 = !DISubprogram(name: "kfree_sensitive", scope: !107, file: !107, line: 228, type: !5059, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5570 = distinct !DISubprogram(name: "crypto_has_alg", scope: !3, file: !3, line: 670, type: !5571, scopeLine: 671, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5573)
!5571 = !DISubroutineType(types: !5572)
!5572 = !{!133, !238, !135, !135}
!5573 = !{!5574, !5575, !5576, !5577, !5578}
!5574 = !DILocalVariable(name: "name", arg: 1, scope: !5570, file: !3, line: 670, type: !238)
!5575 = !DILocalVariable(name: "type", arg: 2, scope: !5570, file: !3, line: 670, type: !135)
!5576 = !DILocalVariable(name: "mask", arg: 3, scope: !5570, file: !3, line: 670, type: !135)
!5577 = !DILocalVariable(name: "ret", scope: !5570, file: !3, line: 672, type: !133)
!5578 = !DILocalVariable(name: "alg", scope: !5570, file: !3, line: 673, type: !145)
!5579 = !DILocation(line: 670, column: 32, scope: !5570)
!5580 = !DILocation(line: 670, column: 42, scope: !5570)
!5581 = !DILocation(line: 670, column: 52, scope: !5570)
!5582 = !DILocation(line: 672, column: 2, scope: !5570)
!5583 = !DILocation(line: 672, column: 6, scope: !5570)
!5584 = !DILocation(line: 673, column: 2, scope: !5570)
!5585 = !DILocation(line: 673, column: 21, scope: !5570)
!5586 = !DILocation(line: 673, column: 49, scope: !5570)
!5587 = !DILocation(line: 673, column: 55, scope: !5570)
!5588 = !DILocation(line: 673, column: 61, scope: !5570)
!5589 = !DILocation(line: 673, column: 27, scope: !5570)
!5590 = !DILocation(line: 675, column: 14, scope: !5591)
!5591 = distinct !DILexicalBlock(scope: !5570, file: !3, line: 675, column: 6)
!5592 = !DILocation(line: 675, column: 7, scope: !5591)
!5593 = !DILocation(line: 675, column: 6, scope: !5570)
!5594 = !DILocation(line: 676, column: 18, scope: !5595)
!5595 = distinct !DILexicalBlock(scope: !5591, file: !3, line: 675, column: 20)
!5596 = !DILocation(line: 676, column: 3, scope: !5595)
!5597 = !DILocation(line: 677, column: 7, scope: !5595)
!5598 = !DILocation(line: 678, column: 2, scope: !5595)
!5599 = !DILocation(line: 680, column: 9, scope: !5570)
!5600 = !DILocation(line: 681, column: 1, scope: !5570)
!5601 = !DILocation(line: 680, column: 2, scope: !5570)
!5602 = distinct !DISubprogram(name: "crypto_req_done", scope: !3, file: !3, line: 684, type: !5603, scopeLine: 685, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5605)
!5603 = !DISubroutineType(types: !5604)
!5604 = !{null, !117, !133}
!5605 = !{!5606, !5607, !5608}
!5606 = !DILocalVariable(name: "data", arg: 1, scope: !5602, file: !3, line: 684, type: !117)
!5607 = !DILocalVariable(name: "err", arg: 2, scope: !5602, file: !3, line: 684, type: !133)
!5608 = !DILocalVariable(name: "wait", scope: !5602, file: !3, line: 686, type: !5609)
!5609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5610, size: 64)
!5610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_wait", file: !122, line: 375, size: 320, elements: !5611)
!5611 = !{!5612, !5613}
!5612 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !5610, file: !122, line: 376, baseType: !1884, size: 256)
!5613 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !5610, file: !122, line: 377, baseType: !133, size: 32, offset: 256)
!5614 = !DILocation(line: 684, column: 28, scope: !5602)
!5615 = !DILocation(line: 684, column: 38, scope: !5602)
!5616 = !DILocation(line: 686, column: 2, scope: !5602)
!5617 = !DILocation(line: 686, column: 22, scope: !5602)
!5618 = !DILocation(line: 686, column: 29, scope: !5602)
!5619 = !DILocation(line: 688, column: 6, scope: !5620)
!5620 = distinct !DILexicalBlock(scope: !5602, file: !3, line: 688, column: 6)
!5621 = !DILocation(line: 688, column: 10, scope: !5620)
!5622 = !DILocation(line: 688, column: 6, scope: !5602)
!5623 = !DILocation(line: 689, column: 3, scope: !5620)
!5624 = !DILocation(line: 691, column: 14, scope: !5602)
!5625 = !DILocation(line: 691, column: 2, scope: !5602)
!5626 = !DILocation(line: 691, column: 8, scope: !5602)
!5627 = !DILocation(line: 691, column: 12, scope: !5602)
!5628 = !DILocation(line: 692, column: 12, scope: !5602)
!5629 = !DILocation(line: 692, column: 18, scope: !5602)
!5630 = !DILocation(line: 692, column: 2, scope: !5602)
!5631 = !DILocation(line: 693, column: 1, scope: !5602)
!5632 = !DISubprogram(name: "complete", scope: !1885, file: !1885, line: 118, type: !4315, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5633 = distinct !DISubprogram(name: "refcount_inc", scope: !99, file: !99, line: 265, type: !5634, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5636)
!5634 = !DISubroutineType(types: !5635)
!5635 = !{null, !5027}
!5636 = !{!5637}
!5637 = !DILocalVariable(name: "r", arg: 1, scope: !5633, file: !99, line: 265, type: !5027)
!5638 = !DILocation(line: 265, column: 45, scope: !5633)
!5639 = !DILocation(line: 267, column: 17, scope: !5633)
!5640 = !DILocation(line: 267, column: 2, scope: !5633)
!5641 = !DILocation(line: 268, column: 1, scope: !5633)
!5642 = distinct !DISubprogram(name: "__refcount_inc", scope: !99, file: !99, line: 248, type: !5643, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5645)
!5643 = !DISubroutineType(types: !5644)
!5644 = !{null, !5027, !649}
!5645 = !{!5646, !5647}
!5646 = !DILocalVariable(name: "r", arg: 1, scope: !5642, file: !99, line: 248, type: !5027)
!5647 = !DILocalVariable(name: "oldp", arg: 2, scope: !5642, file: !99, line: 248, type: !649)
!5648 = !DILocation(line: 248, column: 47, scope: !5642)
!5649 = !DILocation(line: 248, column: 55, scope: !5642)
!5650 = !DILocation(line: 250, column: 20, scope: !5642)
!5651 = !DILocation(line: 250, column: 23, scope: !5642)
!5652 = !DILocation(line: 250, column: 2, scope: !5642)
!5653 = !DILocation(line: 251, column: 1, scope: !5642)
!5654 = distinct !DISubprogram(name: "__refcount_add", scope: !99, file: !99, line: 191, type: !5655, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5657)
!5655 = !DISubroutineType(types: !5656)
!5656 = !{null, !133, !5027, !649}
!5657 = !{!5658, !5659, !5660, !5661}
!5658 = !DILocalVariable(name: "i", arg: 1, scope: !5654, file: !99, line: 191, type: !133)
!5659 = !DILocalVariable(name: "r", arg: 2, scope: !5654, file: !99, line: 191, type: !5027)
!5660 = !DILocalVariable(name: "oldp", arg: 3, scope: !5654, file: !99, line: 191, type: !649)
!5661 = !DILocalVariable(name: "old", scope: !5654, file: !99, line: 193, type: !133)
!5662 = !DILocation(line: 191, column: 39, scope: !5654)
!5663 = !DILocation(line: 191, column: 54, scope: !5654)
!5664 = !DILocation(line: 191, column: 62, scope: !5654)
!5665 = !DILocation(line: 193, column: 2, scope: !5654)
!5666 = !DILocation(line: 193, column: 6, scope: !5654)
!5667 = !DILocation(line: 193, column: 37, scope: !5654)
!5668 = !DILocation(line: 193, column: 41, scope: !5654)
!5669 = !DILocation(line: 193, column: 44, scope: !5654)
!5670 = !DILocation(line: 193, column: 12, scope: !5654)
!5671 = !DILocation(line: 195, column: 6, scope: !5672)
!5672 = distinct !DILexicalBlock(scope: !5654, file: !99, line: 195, column: 6)
!5673 = !DILocation(line: 195, column: 6, scope: !5654)
!5674 = !DILocation(line: 196, column: 11, scope: !5672)
!5675 = !DILocation(line: 196, column: 4, scope: !5672)
!5676 = !DILocation(line: 196, column: 9, scope: !5672)
!5677 = !DILocation(line: 196, column: 3, scope: !5672)
!5678 = !DILocation(line: 198, column: 6, scope: !5679)
!5679 = distinct !DILexicalBlock(scope: !5654, file: !99, line: 198, column: 6)
!5680 = !DILocation(line: 198, column: 6, scope: !5654)
!5681 = !DILocation(line: 199, column: 26, scope: !5679)
!5682 = !DILocation(line: 199, column: 3, scope: !5679)
!5683 = !DILocation(line: 200, column: 11, scope: !5684)
!5684 = distinct !DILexicalBlock(scope: !5679, file: !99, line: 200, column: 11)
!5685 = !DILocation(line: 200, column: 11, scope: !5679)
!5686 = !DILocation(line: 201, column: 26, scope: !5684)
!5687 = !DILocation(line: 201, column: 3, scope: !5684)
!5688 = !DILocation(line: 202, column: 1, scope: !5654)
!5689 = distinct !DISubprogram(name: "atomic_fetch_add_relaxed", scope: !5690, file: !5690, line: 250, type: !5691, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5694)
!5690 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!5691 = !DISubroutineType(types: !5692)
!5692 = !{!133, !133, !5693}
!5693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!5694 = !{!5695, !5696}
!5695 = !DILocalVariable(name: "i", arg: 1, scope: !5689, file: !5690, line: 250, type: !133)
!5696 = !DILocalVariable(name: "v", arg: 2, scope: !5689, file: !5690, line: 250, type: !5693)
!5697 = !DILocation(line: 250, column: 30, scope: !5689)
!5698 = !DILocation(line: 250, column: 43, scope: !5689)
!5699 = !DILocation(line: 252, column: 31, scope: !5689)
!5700 = !DILocation(line: 252, column: 2, scope: !5689)
!5701 = !DILocation(line: 253, column: 38, scope: !5689)
!5702 = !DILocation(line: 253, column: 41, scope: !5689)
!5703 = !DILocation(line: 253, column: 9, scope: !5689)
!5704 = !DILocation(line: 253, column: 2, scope: !5689)
!5705 = !DISubprogram(name: "refcount_warn_saturate", scope: !99, file: !99, line: 127, type: !5706, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5706 = !DISubroutineType(types: !5707)
!5707 = !{null, !5027, !98}
!5708 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !5709, file: !5709, line: 94, type: !5710, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5715)
!5709 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!5710 = !DISubroutineType(types: !5711)
!5711 = !{null, !5712, !360}
!5712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5713, size: 64)
!5713 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5714)
!5714 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5715 = !{!5716, !5717}
!5716 = !DILocalVariable(name: "v", arg: 1, scope: !5708, file: !5709, line: 94, type: !5712)
!5717 = !DILocalVariable(name: "size", arg: 2, scope: !5708, file: !5709, line: 94, type: !360)
!5718 = !DILocation(line: 94, column: 79, scope: !5708)
!5719 = !DILocation(line: 94, column: 89, scope: !5708)
!5720 = !DILocation(line: 96, column: 20, scope: !5708)
!5721 = !DILocation(line: 96, column: 23, scope: !5708)
!5722 = !DILocation(line: 96, column: 2, scope: !5708)
!5723 = !DILocation(line: 97, column: 2, scope: !5708)
!5724 = !DILocation(line: 98, column: 1, scope: !5708)
!5725 = distinct !DISubprogram(name: "raw_atomic_fetch_add_relaxed", scope: !5726, file: !5726, line: 731, type: !5691, scopeLine: 732, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5727)
!5726 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!5727 = !{!5728, !5729}
!5728 = !DILocalVariable(name: "i", arg: 1, scope: !5725, file: !5726, line: 731, type: !133)
!5729 = !DILocalVariable(name: "v", arg: 2, scope: !5725, file: !5726, line: 731, type: !5693)
!5730 = !DILocation(line: 731, column: 34, scope: !5725)
!5731 = !DILocation(line: 731, column: 47, scope: !5725)
!5732 = !DILocation(line: 736, column: 31, scope: !5725)
!5733 = !DILocation(line: 736, column: 34, scope: !5725)
!5734 = !DILocation(line: 736, column: 9, scope: !5725)
!5735 = !DILocation(line: 736, column: 2, scope: !5725)
!5736 = distinct !DISubprogram(name: "kasan_check_write", scope: !5737, file: !5737, line: 44, type: !5738, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5740)
!5737 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!5738 = !DISubroutineType(types: !5739)
!5739 = !{!1493, !5712, !7}
!5740 = !{!5741, !5742}
!5741 = !DILocalVariable(name: "p", arg: 1, scope: !5736, file: !5737, line: 44, type: !5712)
!5742 = !DILocalVariable(name: "size", arg: 2, scope: !5736, file: !5737, line: 44, type: !7)
!5743 = !DILocation(line: 44, column: 59, scope: !5736)
!5744 = !DILocation(line: 44, column: 75, scope: !5736)
!5745 = !DILocation(line: 46, column: 2, scope: !5736)
!5746 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5747, file: !5747, line: 229, type: !5748, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5750)
!5747 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!5748 = !DISubroutineType(types: !5749)
!5749 = !{null, !5712, !360, !133}
!5750 = !{!5751, !5752, !5753}
!5751 = !DILocalVariable(name: "ptr", arg: 1, scope: !5746, file: !5747, line: 229, type: !5712)
!5752 = !DILocalVariable(name: "size", arg: 2, scope: !5746, file: !5747, line: 229, type: !360)
!5753 = !DILocalVariable(name: "type", arg: 3, scope: !5746, file: !5747, line: 230, type: !133)
!5754 = !DILocation(line: 229, column: 60, scope: !5746)
!5755 = !DILocation(line: 229, column: 72, scope: !5746)
!5756 = !DILocation(line: 230, column: 15, scope: !5746)
!5757 = !DILocation(line: 230, column: 23, scope: !5746)
!5758 = distinct !DISubprogram(name: "arch_atomic_fetch_add", scope: !5759, file: !5759, line: 95, type: !5691, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5760)
!5759 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!5760 = !{!5761, !5762, !5763}
!5761 = !DILocalVariable(name: "i", arg: 1, scope: !5758, file: !5759, line: 95, type: !133)
!5762 = !DILocalVariable(name: "v", arg: 2, scope: !5758, file: !5759, line: 95, type: !5693)
!5763 = !DILocalVariable(name: "__ret", scope: !5764, file: !5759, line: 97, type: !133)
!5764 = distinct !DILexicalBlock(scope: !5758, file: !5759, line: 97, column: 9)
!5765 = !DILocation(line: 95, column: 54, scope: !5758)
!5766 = !DILocation(line: 95, column: 67, scope: !5758)
!5767 = !DILocation(line: 97, column: 9, scope: !5764)
!5768 = !{i64 2148921828, i64 2148921867, i64 2148921888, i64 2148921925, i64 2148921948, i64 2148921957}
!5769 = !DILocation(line: 97, column: 9, scope: !5758)
!5770 = !DILocation(line: 97, column: 2, scope: !5758)
!5771 = distinct !DISubprogram(name: "kmalloc", scope: !107, file: !107, line: 591, type: !4445, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5772)
!5772 = !{!5773, !5774, !5775}
!5773 = !DILocalVariable(name: "size", arg: 1, scope: !5771, file: !107, line: 591, type: !360)
!5774 = !DILocalVariable(name: "flags", arg: 2, scope: !5771, file: !107, line: 591, type: !118)
!5775 = !DILocalVariable(name: "index", scope: !5776, file: !107, line: 594, type: !7)
!5776 = distinct !DILexicalBlock(scope: !5777, file: !107, line: 593, column: 42)
!5777 = distinct !DILexicalBlock(scope: !5771, file: !107, line: 593, column: 6)
!5778 = !DILocation(line: 591, column: 61, scope: !5771)
!5779 = !DILocation(line: 591, column: 73, scope: !5771)
!5780 = !DILocation(line: 593, column: 27, scope: !5777)
!5781 = !DILocation(line: 593, column: 6, scope: !5777)
!5782 = !DILocation(line: 593, column: 33, scope: !5777)
!5783 = !DILocation(line: 593, column: 36, scope: !5777)
!5784 = !DILocation(line: 593, column: 6, scope: !5771)
!5785 = !DILocation(line: 594, column: 3, scope: !5776)
!5786 = !DILocation(line: 594, column: 16, scope: !5776)
!5787 = !DILocation(line: 596, column: 7, scope: !5788)
!5788 = distinct !DILexicalBlock(scope: !5776, file: !107, line: 596, column: 7)
!5789 = !DILocation(line: 596, column: 12, scope: !5788)
!5790 = !DILocation(line: 596, column: 7, scope: !5776)
!5791 = !DILocation(line: 597, column: 25, scope: !5788)
!5792 = !DILocation(line: 597, column: 31, scope: !5788)
!5793 = !DILocation(line: 597, column: 11, scope: !5788)
!5794 = !DILocation(line: 597, column: 4, scope: !5788)
!5795 = !DILocation(line: 599, column: 11, scope: !5776)
!5796 = !DILocation(line: 599, column: 9, scope: !5776)
!5797 = !DILocation(line: 601, column: 33, scope: !5776)
!5798 = !DILocation(line: 601, column: 40, scope: !5776)
!5799 = !DILocation(line: 601, column: 20, scope: !5776)
!5800 = !DILocation(line: 601, column: 5, scope: !5776)
!5801 = !DILocation(line: 601, column: 51, scope: !5776)
!5802 = !DILocation(line: 602, column: 5, scope: !5776)
!5803 = !DILocation(line: 602, column: 12, scope: !5776)
!5804 = !DILocation(line: 600, column: 10, scope: !5776)
!5805 = !DILocation(line: 600, column: 3, scope: !5776)
!5806 = !DILocation(line: 603, column: 2, scope: !5777)
!5807 = !DILocation(line: 604, column: 19, scope: !5771)
!5808 = !DILocation(line: 604, column: 25, scope: !5771)
!5809 = !DILocation(line: 604, column: 9, scope: !5771)
!5810 = !DILocation(line: 604, column: 2, scope: !5771)
!5811 = !DILocation(line: 605, column: 1, scope: !5771)
!5812 = !DISubprogram(name: "kmalloc_large", scope: !107, file: !107, line: 531, type: !4445, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5813 = distinct !DISubprogram(name: "__kmalloc_index", scope: !107, file: !107, line: 444, type: !5814, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5816)
!5814 = !DISubroutineType(types: !5815)
!5815 = !{!7, !360, !1493}
!5816 = !{!5817, !5818}
!5817 = !DILocalVariable(name: "size", arg: 1, scope: !5813, file: !107, line: 444, type: !360)
!5818 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !5813, file: !107, line: 445, type: !1493)
!5819 = !DILocation(line: 444, column: 60, scope: !5813)
!5820 = !DILocation(line: 445, column: 16, scope: !5813)
!5821 = !DILocation(line: 447, column: 7, scope: !5822)
!5822 = distinct !DILexicalBlock(scope: !5813, file: !107, line: 447, column: 6)
!5823 = !DILocation(line: 447, column: 6, scope: !5813)
!5824 = !DILocation(line: 448, column: 3, scope: !5822)
!5825 = !DILocation(line: 450, column: 6, scope: !5826)
!5826 = distinct !DILexicalBlock(scope: !5813, file: !107, line: 450, column: 6)
!5827 = !DILocation(line: 450, column: 11, scope: !5826)
!5828 = !DILocation(line: 450, column: 6, scope: !5813)
!5829 = !DILocation(line: 451, column: 3, scope: !5826)
!5830 = !DILocation(line: 453, column: 32, scope: !5831)
!5831 = distinct !DILexicalBlock(scope: !5813, file: !107, line: 453, column: 6)
!5832 = !DILocation(line: 453, column: 37, scope: !5831)
!5833 = !DILocation(line: 453, column: 42, scope: !5831)
!5834 = !DILocation(line: 453, column: 45, scope: !5831)
!5835 = !DILocation(line: 453, column: 50, scope: !5831)
!5836 = !DILocation(line: 453, column: 6, scope: !5813)
!5837 = !DILocation(line: 454, column: 3, scope: !5831)
!5838 = !DILocation(line: 455, column: 32, scope: !5839)
!5839 = distinct !DILexicalBlock(scope: !5813, file: !107, line: 455, column: 6)
!5840 = !DILocation(line: 455, column: 37, scope: !5839)
!5841 = !DILocation(line: 455, column: 43, scope: !5839)
!5842 = !DILocation(line: 455, column: 46, scope: !5839)
!5843 = !DILocation(line: 455, column: 51, scope: !5839)
!5844 = !DILocation(line: 455, column: 6, scope: !5813)
!5845 = !DILocation(line: 456, column: 3, scope: !5839)
!5846 = !DILocation(line: 457, column: 6, scope: !5847)
!5847 = distinct !DILexicalBlock(scope: !5813, file: !107, line: 457, column: 6)
!5848 = !DILocation(line: 457, column: 11, scope: !5847)
!5849 = !DILocation(line: 457, column: 6, scope: !5813)
!5850 = !DILocation(line: 457, column: 26, scope: !5847)
!5851 = !DILocation(line: 458, column: 6, scope: !5852)
!5852 = distinct !DILexicalBlock(scope: !5813, file: !107, line: 458, column: 6)
!5853 = !DILocation(line: 458, column: 11, scope: !5852)
!5854 = !DILocation(line: 458, column: 6, scope: !5813)
!5855 = !DILocation(line: 458, column: 26, scope: !5852)
!5856 = !DILocation(line: 459, column: 6, scope: !5857)
!5857 = distinct !DILexicalBlock(scope: !5813, file: !107, line: 459, column: 6)
!5858 = !DILocation(line: 459, column: 11, scope: !5857)
!5859 = !DILocation(line: 459, column: 6, scope: !5813)
!5860 = !DILocation(line: 459, column: 26, scope: !5857)
!5861 = !DILocation(line: 460, column: 6, scope: !5862)
!5862 = distinct !DILexicalBlock(scope: !5813, file: !107, line: 460, column: 6)
!5863 = !DILocation(line: 460, column: 11, scope: !5862)
!5864 = !DILocation(line: 460, column: 6, scope: !5813)
!5865 = !DILocation(line: 460, column: 26, scope: !5862)
!5866 = !DILocation(line: 461, column: 6, scope: !5867)
!5867 = distinct !DILexicalBlock(scope: !5813, file: !107, line: 461, column: 6)
!5868 = !DILocation(line: 461, column: 11, scope: !5867)
!5869 = !DILocation(line: 461, column: 6, scope: !5813)
!5870 = !DILocation(line: 461, column: 26, scope: !5867)
!5871 = !DILocation(line: 462, column: 6, scope: !5872)
!5872 = distinct !DILexicalBlock(scope: !5813, file: !107, line: 462, column: 6)
!5873 = !DILocation(line: 462, column: 11, scope: !5872)
!5874 = !DILocation(line: 462, column: 6, scope: !5813)
!5875 = !DILocation(line: 462, column: 26, scope: !5872)
!5876 = !DILocation(line: 463, column: 6, scope: !5877)
!5877 = distinct !DILexicalBlock(scope: !5813, file: !107, line: 463, column: 6)
!5878 = !DILocation(line: 463, column: 11, scope: !5877)
!5879 = !DILocation(line: 463, column: 6, scope: !5813)
!5880 = !DILocation(line: 463, column: 26, scope: !5877)
!5881 = !DILocation(line: 464, column: 6, scope: !5882)
!5882 = distinct !DILexicalBlock(scope: !5813, file: !107, line: 464, column: 6)
!5883 = !DILocation(line: 464, column: 11, scope: !5882)
!5884 = !DILocation(line: 464, column: 6, scope: !5813)
!5885 = !DILocation(line: 464, column: 26, scope: !5882)
!5886 = !DILocation(line: 465, column: 6, scope: !5887)
!5887 = distinct !DILexicalBlock(scope: !5813, file: !107, line: 465, column: 6)
!5888 = !DILocation(line: 465, column: 11, scope: !5887)
!5889 = !DILocation(line: 465, column: 6, scope: !5813)
!5890 = !DILocation(line: 465, column: 26, scope: !5887)
!5891 = !DILocation(line: 466, column: 6, scope: !5892)
!5892 = distinct !DILexicalBlock(scope: !5813, file: !107, line: 466, column: 6)
!5893 = !DILocation(line: 466, column: 11, scope: !5892)
!5894 = !DILocation(line: 466, column: 6, scope: !5813)
!5895 = !DILocation(line: 466, column: 26, scope: !5892)
!5896 = !DILocation(line: 467, column: 6, scope: !5897)
!5897 = distinct !DILexicalBlock(scope: !5813, file: !107, line: 467, column: 6)
!5898 = !DILocation(line: 467, column: 11, scope: !5897)
!5899 = !DILocation(line: 467, column: 6, scope: !5813)
!5900 = !DILocation(line: 467, column: 26, scope: !5897)
!5901 = !DILocation(line: 468, column: 6, scope: !5902)
!5902 = distinct !DILexicalBlock(scope: !5813, file: !107, line: 468, column: 6)
!5903 = !DILocation(line: 468, column: 11, scope: !5902)
!5904 = !DILocation(line: 468, column: 6, scope: !5813)
!5905 = !DILocation(line: 468, column: 26, scope: !5902)
!5906 = !DILocation(line: 469, column: 6, scope: !5907)
!5907 = distinct !DILexicalBlock(scope: !5813, file: !107, line: 469, column: 6)
!5908 = !DILocation(line: 469, column: 11, scope: !5907)
!5909 = !DILocation(line: 469, column: 6, scope: !5813)
!5910 = !DILocation(line: 469, column: 26, scope: !5907)
!5911 = !DILocation(line: 470, column: 6, scope: !5912)
!5912 = distinct !DILexicalBlock(scope: !5813, file: !107, line: 470, column: 6)
!5913 = !DILocation(line: 470, column: 11, scope: !5912)
!5914 = !DILocation(line: 470, column: 6, scope: !5813)
!5915 = !DILocation(line: 470, column: 26, scope: !5912)
!5916 = !DILocation(line: 471, column: 6, scope: !5917)
!5917 = distinct !DILexicalBlock(scope: !5813, file: !107, line: 471, column: 6)
!5918 = !DILocation(line: 471, column: 11, scope: !5917)
!5919 = !DILocation(line: 471, column: 6, scope: !5813)
!5920 = !DILocation(line: 471, column: 26, scope: !5917)
!5921 = !DILocation(line: 472, column: 6, scope: !5922)
!5922 = distinct !DILexicalBlock(scope: !5813, file: !107, line: 472, column: 6)
!5923 = !DILocation(line: 472, column: 11, scope: !5922)
!5924 = !DILocation(line: 472, column: 6, scope: !5813)
!5925 = !DILocation(line: 472, column: 26, scope: !5922)
!5926 = !DILocation(line: 473, column: 6, scope: !5927)
!5927 = distinct !DILexicalBlock(scope: !5813, file: !107, line: 473, column: 6)
!5928 = !DILocation(line: 473, column: 11, scope: !5927)
!5929 = !DILocation(line: 473, column: 6, scope: !5813)
!5930 = !DILocation(line: 473, column: 26, scope: !5927)
!5931 = !DILocation(line: 474, column: 6, scope: !5932)
!5932 = distinct !DILexicalBlock(scope: !5813, file: !107, line: 474, column: 6)
!5933 = !DILocation(line: 474, column: 11, scope: !5932)
!5934 = !DILocation(line: 474, column: 6, scope: !5813)
!5935 = !DILocation(line: 474, column: 27, scope: !5932)
!5936 = !DILocation(line: 475, column: 6, scope: !5937)
!5937 = distinct !DILexicalBlock(scope: !5813, file: !107, line: 475, column: 6)
!5938 = !DILocation(line: 475, column: 11, scope: !5937)
!5939 = !DILocation(line: 475, column: 6, scope: !5813)
!5940 = !DILocation(line: 475, column: 32, scope: !5937)
!5941 = !DILocation(line: 477, column: 50, scope: !5942)
!5942 = distinct !DILexicalBlock(scope: !5813, file: !107, line: 477, column: 6)
!5943 = !{i8 0, i8 2}
!5944 = !DILocation(line: 477, column: 6, scope: !5813)
!5945 = !DILocation(line: 478, column: 3, scope: !5942)
!5946 = !DILocation(line: 478, column: 3, scope: !5947)
!5947 = distinct !DILexicalBlock(scope: !5948, file: !107, line: 478, column: 3)
!5948 = distinct !DILexicalBlock(scope: !5942, file: !107, line: 478, column: 3)
!5949 = !{i32 -2141829141}
!5950 = !DILocation(line: 478, column: 3, scope: !5948)
!5951 = !DILocation(line: 480, column: 3, scope: !5942)
!5952 = !DILocation(line: 480, column: 3, scope: !5953)
!5953 = distinct !DILexicalBlock(scope: !5942, file: !107, line: 480, column: 3)
!5954 = !DILocation(line: 480, column: 3, scope: !5955)
!5955 = distinct !DILexicalBlock(scope: !5953, file: !107, line: 480, column: 3)
!5956 = !DILocation(line: 480, column: 3, scope: !5957)
!5957 = distinct !DILexicalBlock(scope: !5953, file: !107, line: 480, column: 3)
!5958 = !{i64 2153138358, i64 2153138387, i64 2153138433, i64 2153138491, i64 2153138545, i64 2153138599, i64 2153138654, i64 2153138685}
!5959 = !DILocation(line: 483, column: 2, scope: !5813)
!5960 = !DILocation(line: 484, column: 1, scope: !5813)
!5961 = !DISubprogram(name: "kmalloc_trace", scope: !107, file: !107, line: 525, type: !5962, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5962 = !DISubroutineType(types: !5963)
!5963 = !{!117, !5964, !118, !360}
!5964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5965, size: 64)
!5965 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !5966, line: 325, flags: DIFlagFwdDecl)
!5966 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!5967 = distinct !DISubprogram(name: "kmalloc_type", scope: !107, file: !107, line: 401, type: !5968, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5970)
!5968 = !DISubroutineType(types: !5969)
!5969 = !{!106, !118, !363}
!5970 = !{!5971, !5972}
!5971 = !DILocalVariable(name: "flags", arg: 1, scope: !5967, file: !107, line: 401, type: !118)
!5972 = !DILocalVariable(name: "caller", arg: 2, scope: !5967, file: !107, line: 401, type: !363)
!5973 = !DILocation(line: 401, column: 67, scope: !5967)
!5974 = !DILocation(line: 401, column: 88, scope: !5967)
!5975 = !DILocation(line: 407, column: 6, scope: !5976)
!5976 = distinct !DILexicalBlock(scope: !5967, file: !107, line: 407, column: 6)
!5977 = !DILocation(line: 407, column: 6, scope: !5967)
!5978 = !DILocation(line: 413, column: 3, scope: !5976)
!5979 = !DILocation(line: 423, column: 38, scope: !5980)
!5980 = distinct !DILexicalBlock(scope: !5967, file: !107, line: 423, column: 6)
!5981 = !DILocation(line: 423, column: 44, scope: !5980)
!5982 = !DILocation(line: 423, column: 6, scope: !5967)
!5983 = !DILocation(line: 424, column: 3, scope: !5980)
!5984 = !DILocation(line: 426, column: 3, scope: !5985)
!5985 = distinct !DILexicalBlock(scope: !5967, file: !107, line: 425, column: 6)
!5986 = !DILocation(line: 429, column: 1, scope: !5967)
!5987 = !DISubprogram(name: "__kmalloc", scope: !107, file: !107, line: 488, type: !4445, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5988 = !DISubprogram(name: "__compiletime_assert_231", scope: !107, file: !107, line: 478, type: !2549, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!5989 = !DISubprogram(name: "__init_swait_queue_head", scope: !1890, file: !1890, line: 69, type: !5990, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5990 = !DISubroutineType(types: !5991)
!5991 = !{null, !5992, !238, !5993}
!5992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!5993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!5994 = distinct !DISubprogram(name: "__list_del_entry", scope: !4534, file: !4534, line: 213, type: !4535, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5995)
!5995 = !{!5996}
!5996 = !DILocalVariable(name: "entry", arg: 1, scope: !5994, file: !4534, line: 213, type: !152)
!5997 = !DILocation(line: 213, column: 55, scope: !5994)
!5998 = !DILocation(line: 215, column: 30, scope: !5999)
!5999 = distinct !DILexicalBlock(scope: !5994, file: !4534, line: 215, column: 6)
!6000 = !DILocation(line: 215, column: 7, scope: !5999)
!6001 = !DILocation(line: 215, column: 6, scope: !5994)
!6002 = !DILocation(line: 216, column: 3, scope: !5999)
!6003 = !DILocation(line: 218, column: 13, scope: !5994)
!6004 = !DILocation(line: 218, column: 20, scope: !5994)
!6005 = !DILocation(line: 218, column: 26, scope: !5994)
!6006 = !DILocation(line: 218, column: 33, scope: !5994)
!6007 = !DILocation(line: 218, column: 2, scope: !5994)
!6008 = !DILocation(line: 219, column: 1, scope: !5994)
!6009 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !4534, file: !4534, line: 134, type: !6010, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6012)
!6010 = !DISubroutineType(types: !6011)
!6011 = !{!1493, !152}
!6012 = !{!6013}
!6013 = !DILocalVariable(name: "entry", arg: 1, scope: !6009, file: !4534, line: 134, type: !152)
!6014 = !DILocation(line: 134, column: 61, scope: !6009)
!6015 = !DILocation(line: 136, column: 2, scope: !6009)
!6016 = distinct !DISubprogram(name: "__list_del", scope: !4534, file: !4534, line: 193, type: !6017, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6019)
!6017 = !DISubroutineType(types: !6018)
!6018 = !{null, !152, !152}
!6019 = !{!6020, !6021}
!6020 = !DILocalVariable(name: "prev", arg: 1, scope: !6016, file: !4534, line: 193, type: !152)
!6021 = !DILocalVariable(name: "next", arg: 2, scope: !6016, file: !4534, line: 193, type: !152)
!6022 = !DILocation(line: 193, column: 50, scope: !6016)
!6023 = !DILocation(line: 193, column: 75, scope: !6016)
!6024 = !DILocation(line: 195, column: 15, scope: !6016)
!6025 = !DILocation(line: 195, column: 2, scope: !6016)
!6026 = !DILocation(line: 195, column: 8, scope: !6016)
!6027 = !DILocation(line: 195, column: 13, scope: !6016)
!6028 = !DILocation(line: 196, column: 2, scope: !6016)
!6029 = !DILocation(line: 196, column: 2, scope: !6030)
!6030 = distinct !DILexicalBlock(scope: !6016, file: !4534, line: 196, column: 2)
!6031 = !DILocation(line: 196, column: 2, scope: !6032)
!6032 = distinct !DILexicalBlock(scope: !6030, file: !4534, line: 196, column: 2)
!6033 = !DILocation(line: 196, column: 2, scope: !6034)
!6034 = distinct !DILexicalBlock(scope: !6030, file: !4534, line: 196, column: 2)
!6035 = !DILocation(line: 197, column: 1, scope: !6016)
!6036 = distinct !DISubprogram(name: "crypto_alg_lookup", scope: !3, file: !3, line: 234, type: !4650, scopeLine: 236, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6037)
!6037 = !{!6038, !6039, !6040, !6041, !6043, !6044}
!6038 = !DILocalVariable(name: "name", arg: 1, scope: !6036, file: !3, line: 234, type: !238)
!6039 = !DILocalVariable(name: "type", arg: 2, scope: !6036, file: !3, line: 234, type: !135)
!6040 = !DILocalVariable(name: "mask", arg: 3, scope: !6036, file: !3, line: 235, type: !135)
!6041 = !DILocalVariable(name: "fips", scope: !6036, file: !3, line: 237, type: !6042)
!6042 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !135)
!6043 = !DILocalVariable(name: "alg", scope: !6036, file: !3, line: 238, type: !145)
!6044 = !DILocalVariable(name: "test", scope: !6036, file: !3, line: 239, type: !135)
!6045 = !DILocation(line: 234, column: 57, scope: !6036)
!6046 = !DILocation(line: 234, column: 67, scope: !6036)
!6047 = !DILocation(line: 235, column: 14, scope: !6036)
!6048 = !DILocation(line: 237, column: 2, scope: !6036)
!6049 = !DILocation(line: 237, column: 12, scope: !6036)
!6050 = !DILocation(line: 238, column: 2, scope: !6036)
!6051 = !DILocation(line: 238, column: 21, scope: !6036)
!6052 = !DILocation(line: 239, column: 2, scope: !6036)
!6053 = !DILocation(line: 239, column: 6, scope: !6036)
!6054 = !DILocation(line: 241, column: 9, scope: !6055)
!6055 = distinct !DILexicalBlock(scope: !6036, file: !3, line: 241, column: 6)
!6056 = !DILocation(line: 241, column: 16, scope: !6055)
!6057 = !DILocation(line: 241, column: 14, scope: !6055)
!6058 = !DILocation(line: 241, column: 22, scope: !6055)
!6059 = !DILocation(line: 241, column: 6, scope: !6036)
!6060 = !DILocation(line: 242, column: 8, scope: !6055)
!6061 = !DILocation(line: 242, column: 3, scope: !6055)
!6062 = !DILocation(line: 244, column: 2, scope: !6036)
!6063 = !DILocation(line: 245, column: 28, scope: !6036)
!6064 = !DILocation(line: 245, column: 35, scope: !6036)
!6065 = !DILocation(line: 245, column: 42, scope: !6036)
!6066 = !DILocation(line: 245, column: 40, scope: !6036)
!6067 = !DILocation(line: 245, column: 48, scope: !6036)
!6068 = !DILocation(line: 246, column: 8, scope: !6036)
!6069 = !DILocation(line: 246, column: 15, scope: !6036)
!6070 = !DILocation(line: 246, column: 13, scope: !6036)
!6071 = !DILocation(line: 246, column: 21, scope: !6036)
!6072 = !DILocation(line: 245, column: 8, scope: !6036)
!6073 = !DILocation(line: 245, column: 6, scope: !6036)
!6074 = !DILocation(line: 247, column: 6, scope: !6075)
!6075 = distinct !DILexicalBlock(scope: !6036, file: !3, line: 247, column: 6)
!6076 = !DILocation(line: 247, column: 6, scope: !6036)
!6077 = !DILocation(line: 248, column: 9, scope: !6078)
!6078 = distinct !DILexicalBlock(scope: !6079, file: !3, line: 248, column: 7)
!6079 = distinct !DILexicalBlock(scope: !6075, file: !3, line: 247, column: 11)
!6080 = !DILocation(line: 248, column: 16, scope: !6078)
!6081 = !DILocation(line: 248, column: 14, scope: !6078)
!6082 = !DILocation(line: 248, column: 22, scope: !6078)
!6083 = !DILocation(line: 248, column: 30, scope: !6078)
!6084 = !DILocation(line: 248, column: 7, scope: !6079)
!6085 = !DILocation(line: 249, column: 9, scope: !6078)
!6086 = !DILocation(line: 249, column: 4, scope: !6078)
!6087 = !DILocation(line: 250, column: 8, scope: !6079)
!6088 = !DILocation(line: 252, column: 25, scope: !6089)
!6089 = distinct !DILexicalBlock(scope: !6079, file: !3, line: 252, column: 7)
!6090 = !DILocation(line: 252, column: 8, scope: !6089)
!6091 = !DILocation(line: 252, column: 30, scope: !6089)
!6092 = !DILocation(line: 253, column: 9, scope: !6089)
!6093 = !DILocation(line: 253, column: 16, scope: !6089)
!6094 = !DILocation(line: 253, column: 21, scope: !6089)
!6095 = !DILocation(line: 253, column: 14, scope: !6089)
!6096 = !DILocation(line: 253, column: 34, scope: !6089)
!6097 = !DILocation(line: 253, column: 32, scope: !6089)
!6098 = !DILocation(line: 252, column: 7, scope: !6079)
!6099 = !DILocation(line: 255, column: 19, scope: !6100)
!6100 = distinct !DILexicalBlock(scope: !6089, file: !3, line: 253, column: 41)
!6101 = !DILocation(line: 255, column: 4, scope: !6100)
!6102 = !DILocation(line: 256, column: 10, scope: !6100)
!6103 = !DILocation(line: 256, column: 8, scope: !6100)
!6104 = !DILocation(line: 257, column: 3, scope: !6100)
!6105 = !DILocation(line: 258, column: 2, scope: !6079)
!6106 = !DILocation(line: 258, column: 13, scope: !6107)
!6107 = distinct !DILexicalBlock(scope: !6075, file: !3, line: 258, column: 13)
!6108 = !DILocation(line: 258, column: 13, scope: !6075)
!6109 = !DILocation(line: 259, column: 29, scope: !6110)
!6110 = distinct !DILexicalBlock(scope: !6107, file: !3, line: 258, column: 19)
!6111 = !DILocation(line: 259, column: 35, scope: !6110)
!6112 = !DILocation(line: 259, column: 41, scope: !6110)
!6113 = !DILocation(line: 259, column: 9, scope: !6110)
!6114 = !DILocation(line: 259, column: 7, scope: !6110)
!6115 = !DILocation(line: 260, column: 7, scope: !6116)
!6116 = distinct !DILexicalBlock(scope: !6110, file: !3, line: 260, column: 7)
!6117 = !DILocation(line: 260, column: 11, scope: !6116)
!6118 = !DILocation(line: 260, column: 32, scope: !6116)
!6119 = !DILocation(line: 260, column: 15, scope: !6116)
!6120 = !DILocation(line: 260, column: 7, scope: !6110)
!6121 = !DILocation(line: 262, column: 19, scope: !6122)
!6122 = distinct !DILexicalBlock(scope: !6116, file: !3, line: 260, column: 38)
!6123 = !DILocation(line: 262, column: 4, scope: !6122)
!6124 = !DILocation(line: 263, column: 10, scope: !6122)
!6125 = !DILocation(line: 263, column: 8, scope: !6122)
!6126 = !DILocation(line: 264, column: 3, scope: !6122)
!6127 = !DILocation(line: 265, column: 2, scope: !6110)
!6128 = !DILocation(line: 266, column: 2, scope: !6036)
!6129 = !DILocation(line: 268, column: 9, scope: !6036)
!6130 = !DILocation(line: 269, column: 1, scope: !6036)
!6131 = !DILocation(line: 268, column: 2, scope: !6036)
!6132 = distinct !DISubprogram(name: "crypto_larval_add", scope: !3, file: !3, line: 126, type: !4650, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6133)
!6133 = !{!6134, !6135, !6136, !6137, !6138}
!6134 = !DILocalVariable(name: "name", arg: 1, scope: !6132, file: !3, line: 126, type: !238)
!6135 = !DILocalVariable(name: "type", arg: 2, scope: !6132, file: !3, line: 126, type: !135)
!6136 = !DILocalVariable(name: "mask", arg: 3, scope: !6132, file: !3, line: 127, type: !135)
!6137 = !DILocalVariable(name: "alg", scope: !6132, file: !3, line: 129, type: !145)
!6138 = !DILocalVariable(name: "larval", scope: !6132, file: !3, line: 130, type: !4206)
!6139 = !DILocation(line: 126, column: 57, scope: !6132)
!6140 = !DILocation(line: 126, column: 67, scope: !6132)
!6141 = !DILocation(line: 127, column: 14, scope: !6132)
!6142 = !DILocation(line: 129, column: 2, scope: !6132)
!6143 = !DILocation(line: 129, column: 21, scope: !6132)
!6144 = !DILocation(line: 130, column: 2, scope: !6132)
!6145 = !DILocation(line: 130, column: 24, scope: !6132)
!6146 = !DILocation(line: 132, column: 31, scope: !6132)
!6147 = !DILocation(line: 132, column: 37, scope: !6132)
!6148 = !DILocation(line: 132, column: 43, scope: !6132)
!6149 = !DILocation(line: 132, column: 11, scope: !6132)
!6150 = !DILocation(line: 132, column: 9, scope: !6132)
!6151 = !DILocation(line: 133, column: 13, scope: !6152)
!6152 = distinct !DILexicalBlock(scope: !6132, file: !3, line: 133, column: 6)
!6153 = !DILocation(line: 133, column: 6, scope: !6152)
!6154 = !DILocation(line: 133, column: 6, scope: !6132)
!6155 = !DILocation(line: 134, column: 19, scope: !6152)
!6156 = !DILocation(line: 134, column: 10, scope: !6152)
!6157 = !DILocation(line: 134, column: 3, scope: !6152)
!6158 = !DILocation(line: 136, column: 16, scope: !6132)
!6159 = !DILocation(line: 136, column: 24, scope: !6132)
!6160 = !DILocation(line: 136, column: 28, scope: !6132)
!6161 = !DILocation(line: 136, column: 2, scope: !6132)
!6162 = !DILocation(line: 138, column: 2, scope: !6132)
!6163 = !DILocation(line: 139, column: 28, scope: !6132)
!6164 = !DILocation(line: 139, column: 34, scope: !6132)
!6165 = !DILocation(line: 139, column: 40, scope: !6132)
!6166 = !DILocation(line: 139, column: 8, scope: !6132)
!6167 = !DILocation(line: 139, column: 6, scope: !6132)
!6168 = !DILocation(line: 140, column: 7, scope: !6169)
!6169 = distinct !DILexicalBlock(scope: !6132, file: !3, line: 140, column: 6)
!6170 = !DILocation(line: 140, column: 6, scope: !6132)
!6171 = !DILocation(line: 141, column: 10, scope: !6172)
!6172 = distinct !DILexicalBlock(scope: !6169, file: !3, line: 140, column: 12)
!6173 = !DILocation(line: 141, column: 18, scope: !6172)
!6174 = !DILocation(line: 141, column: 7, scope: !6172)
!6175 = !DILocation(line: 142, column: 13, scope: !6172)
!6176 = !DILocation(line: 142, column: 18, scope: !6172)
!6177 = !DILocation(line: 142, column: 3, scope: !6172)
!6178 = !DILocation(line: 143, column: 2, scope: !6172)
!6179 = !DILocation(line: 144, column: 2, scope: !6132)
!6180 = !DILocation(line: 146, column: 6, scope: !6181)
!6181 = distinct !DILexicalBlock(scope: !6132, file: !3, line: 146, column: 6)
!6182 = !DILocation(line: 146, column: 14, scope: !6181)
!6183 = !DILocation(line: 146, column: 22, scope: !6181)
!6184 = !DILocation(line: 146, column: 10, scope: !6181)
!6185 = !DILocation(line: 146, column: 6, scope: !6132)
!6186 = !DILocation(line: 147, column: 9, scope: !6187)
!6187 = distinct !DILexicalBlock(scope: !6181, file: !3, line: 146, column: 27)
!6188 = !DILocation(line: 147, column: 3, scope: !6187)
!6189 = !DILocation(line: 148, column: 24, scope: !6190)
!6190 = distinct !DILexicalBlock(scope: !6187, file: !3, line: 148, column: 7)
!6191 = !DILocation(line: 148, column: 7, scope: !6190)
!6192 = !DILocation(line: 148, column: 7, scope: !6187)
!6193 = !DILocation(line: 149, column: 29, scope: !6190)
!6194 = !DILocation(line: 149, column: 10, scope: !6190)
!6195 = !DILocation(line: 149, column: 8, scope: !6190)
!6196 = !DILocation(line: 149, column: 4, scope: !6190)
!6197 = !DILocation(line: 150, column: 2, scope: !6187)
!6198 = !DILocation(line: 152, column: 9, scope: !6132)
!6199 = !DILocation(line: 152, column: 2, scope: !6132)
!6200 = !DILocation(line: 153, column: 1, scope: !6132)
!6201 = !DISubprogram(name: "down_read", scope: !892, file: !892, line: 175, type: !4530, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6202 = distinct !DISubprogram(name: "__crypto_alg_lookup", scope: !3, file: !3, line: 56, type: !4650, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6203)
!6203 = !{!6204, !6205, !6206, !6207, !6208, !6209, !6210, !6213, !6216, !6217}
!6204 = !DILocalVariable(name: "name", arg: 1, scope: !6202, file: !3, line: 56, type: !238)
!6205 = !DILocalVariable(name: "type", arg: 2, scope: !6202, file: !3, line: 56, type: !135)
!6206 = !DILocalVariable(name: "mask", arg: 3, scope: !6202, file: !3, line: 57, type: !135)
!6207 = !DILocalVariable(name: "q", scope: !6202, file: !3, line: 59, type: !145)
!6208 = !DILocalVariable(name: "alg", scope: !6202, file: !3, line: 59, type: !145)
!6209 = !DILocalVariable(name: "best", scope: !6202, file: !3, line: 60, type: !133)
!6210 = !DILocalVariable(name: "__mptr", scope: !6211, file: !3, line: 62, type: !117)
!6211 = distinct !DILexicalBlock(scope: !6212, file: !3, line: 62, column: 2)
!6212 = distinct !DILexicalBlock(scope: !6202, file: !3, line: 62, column: 2)
!6213 = !DILocalVariable(name: "exact", scope: !6214, file: !3, line: 63, type: !133)
!6214 = distinct !DILexicalBlock(scope: !6215, file: !3, line: 62, column: 53)
!6215 = distinct !DILexicalBlock(scope: !6212, file: !3, line: 62, column: 2)
!6216 = !DILocalVariable(name: "fuzzy", scope: !6214, file: !3, line: 63, type: !133)
!6217 = !DILocalVariable(name: "__mptr", scope: !6218, file: !3, line: 62, type: !117)
!6218 = distinct !DILexicalBlock(scope: !6215, file: !3, line: 62, column: 2)
!6219 = !DILocation(line: 56, column: 59, scope: !6202)
!6220 = !DILocation(line: 56, column: 69, scope: !6202)
!6221 = !DILocation(line: 57, column: 16, scope: !6202)
!6222 = !DILocation(line: 59, column: 2, scope: !6202)
!6223 = !DILocation(line: 59, column: 21, scope: !6202)
!6224 = !DILocation(line: 59, column: 25, scope: !6202)
!6225 = !DILocation(line: 60, column: 2, scope: !6202)
!6226 = !DILocation(line: 60, column: 6, scope: !6202)
!6227 = !DILocation(line: 62, column: 2, scope: !6211)
!6228 = !DILocation(line: 62, column: 2, scope: !6212)
!6229 = !DILocation(line: 62, column: 2, scope: !6215)
!6230 = !DILocation(line: 63, column: 3, scope: !6214)
!6231 = !DILocation(line: 63, column: 7, scope: !6214)
!6232 = !DILocation(line: 63, column: 14, scope: !6214)
!6233 = !DILocation(line: 65, column: 26, scope: !6234)
!6234 = distinct !DILexicalBlock(scope: !6214, file: !3, line: 65, column: 7)
!6235 = !DILocation(line: 65, column: 7, scope: !6234)
!6236 = !DILocation(line: 65, column: 7, scope: !6214)
!6237 = !DILocation(line: 66, column: 4, scope: !6234)
!6238 = !DILocation(line: 68, column: 8, scope: !6239)
!6239 = distinct !DILexicalBlock(scope: !6214, file: !3, line: 68, column: 7)
!6240 = !DILocation(line: 68, column: 11, scope: !6239)
!6241 = !DILocation(line: 68, column: 23, scope: !6239)
!6242 = !DILocation(line: 68, column: 21, scope: !6239)
!6243 = !DILocation(line: 68, column: 31, scope: !6239)
!6244 = !DILocation(line: 68, column: 29, scope: !6239)
!6245 = !DILocation(line: 68, column: 7, scope: !6214)
!6246 = !DILocation(line: 69, column: 4, scope: !6239)
!6247 = !DILocation(line: 71, column: 24, scope: !6248)
!6248 = distinct !DILexicalBlock(scope: !6214, file: !3, line: 71, column: 7)
!6249 = !DILocation(line: 71, column: 7, scope: !6248)
!6250 = !DILocation(line: 71, column: 27, scope: !6248)
!6251 = !DILocation(line: 72, column: 54, scope: !6248)
!6252 = !DILocation(line: 72, column: 8, scope: !6248)
!6253 = !DILocation(line: 72, column: 57, scope: !6248)
!6254 = !DILocation(line: 73, column: 32, scope: !6248)
!6255 = !DILocation(line: 73, column: 36, scope: !6248)
!6256 = !DILocation(line: 73, column: 44, scope: !6248)
!6257 = !DILocation(line: 73, column: 41, scope: !6248)
!6258 = !DILocation(line: 71, column: 7, scope: !6214)
!6259 = !DILocation(line: 74, column: 4, scope: !6248)
!6260 = !DILocation(line: 76, column: 19, scope: !6214)
!6261 = !DILocation(line: 76, column: 22, scope: !6214)
!6262 = !DILocation(line: 76, column: 39, scope: !6214)
!6263 = !DILocation(line: 76, column: 12, scope: !6214)
!6264 = !DILocation(line: 76, column: 11, scope: !6214)
!6265 = !DILocation(line: 76, column: 9, scope: !6214)
!6266 = !DILocation(line: 77, column: 19, scope: !6214)
!6267 = !DILocation(line: 77, column: 22, scope: !6214)
!6268 = !DILocation(line: 77, column: 32, scope: !6214)
!6269 = !DILocation(line: 77, column: 12, scope: !6214)
!6270 = !DILocation(line: 77, column: 11, scope: !6214)
!6271 = !DILocation(line: 77, column: 9, scope: !6214)
!6272 = !DILocation(line: 78, column: 8, scope: !6273)
!6273 = distinct !DILexicalBlock(scope: !6214, file: !3, line: 78, column: 7)
!6274 = !DILocation(line: 78, column: 14, scope: !6273)
!6275 = !DILocation(line: 78, column: 19, scope: !6273)
!6276 = !DILocation(line: 78, column: 25, scope: !6273)
!6277 = !DILocation(line: 78, column: 28, scope: !6273)
!6278 = !DILocation(line: 78, column: 31, scope: !6273)
!6279 = !DILocation(line: 78, column: 46, scope: !6273)
!6280 = !DILocation(line: 78, column: 44, scope: !6273)
!6281 = !DILocation(line: 78, column: 7, scope: !6214)
!6282 = !DILocation(line: 79, column: 4, scope: !6273)
!6283 = !DILocation(line: 81, column: 7, scope: !6284)
!6284 = distinct !DILexicalBlock(scope: !6214, file: !3, line: 81, column: 7)
!6285 = !DILocation(line: 81, column: 7, scope: !6214)
!6286 = !DILocation(line: 82, column: 4, scope: !6284)
!6287 = !DILocation(line: 84, column: 10, scope: !6214)
!6288 = !DILocation(line: 84, column: 13, scope: !6214)
!6289 = !DILocation(line: 84, column: 8, scope: !6214)
!6290 = !DILocation(line: 85, column: 7, scope: !6291)
!6291 = distinct !DILexicalBlock(scope: !6214, file: !3, line: 85, column: 7)
!6292 = !DILocation(line: 85, column: 7, scope: !6214)
!6293 = !DILocation(line: 86, column: 19, scope: !6291)
!6294 = !DILocation(line: 86, column: 4, scope: !6291)
!6295 = !DILocation(line: 87, column: 9, scope: !6214)
!6296 = !DILocation(line: 87, column: 7, scope: !6214)
!6297 = !DILocation(line: 89, column: 7, scope: !6298)
!6298 = distinct !DILexicalBlock(scope: !6214, file: !3, line: 89, column: 7)
!6299 = !DILocation(line: 89, column: 7, scope: !6214)
!6300 = !DILocation(line: 90, column: 4, scope: !6298)
!6301 = !DILocation(line: 91, column: 2, scope: !6215)
!6302 = !DILocation(line: 91, column: 2, scope: !6214)
!6303 = !DILocation(line: 62, column: 2, scope: !6218)
!6304 = distinct !{!6304, !6228, !6305, !6306, !5149}
!6305 = !DILocation(line: 91, column: 2, scope: !6212)
!6306 = !{!"llvm.loop.mustprogress"}
!6307 = !DILocation(line: 93, column: 9, scope: !6202)
!6308 = !DILocation(line: 94, column: 1, scope: !6202)
!6309 = !DILocation(line: 93, column: 2, scope: !6202)
!6310 = !DISubprogram(name: "up_read", scope: !892, file: !892, line: 198, type: !4530, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6311 = distinct !DISubprogram(name: "crypto_is_moribund", scope: !4208, file: !4208, line: 193, type: !4788, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6312)
!6312 = !{!6313}
!6313 = !DILocalVariable(name: "alg", arg: 1, scope: !6311, file: !4208, line: 193, type: !145)
!6314 = !DILocation(line: 193, column: 57, scope: !6311)
!6315 = !DILocation(line: 195, column: 9, scope: !6311)
!6316 = !DILocation(line: 195, column: 14, scope: !6311)
!6317 = !DILocation(line: 195, column: 24, scope: !6311)
!6318 = !DILocation(line: 195, column: 2, scope: !6311)
!6319 = distinct !DISubprogram(name: "crypto_is_test_larval", scope: !4208, file: !4208, line: 209, type: !6320, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6322)
!6320 = !DISubroutineType(types: !6321)
!6321 = !{!133, !4206}
!6322 = !{!6323}
!6323 = !DILocalVariable(name: "larval", arg: 1, scope: !6319, file: !4208, line: 209, type: !4206)
!6324 = !DILocation(line: 209, column: 63, scope: !6319)
!6325 = !DILocation(line: 211, column: 9, scope: !6319)
!6326 = !DILocation(line: 211, column: 17, scope: !6319)
!6327 = !DILocation(line: 211, column: 21, scope: !6319)
!6328 = !DILocation(line: 211, column: 2, scope: !6319)
!6329 = !DISubprogram(name: "strcmp", scope: !4499, file: !4499, line: 88, type: !6330, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6330 = !DISubroutineType(types: !6331)
!6331 = !{!133, !238, !238}
!6332 = distinct !DISubprogram(name: "ERR_CAST", scope: !4458, file: !4458, line: 82, type: !6333, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6335)
!6333 = !DISubroutineType(types: !6334)
!6334 = !{!117, !2161}
!6335 = !{!6336}
!6336 = !DILocalVariable(name: "ptr", arg: 1, scope: !6332, file: !4458, line: 82, type: !2161)
!6337 = !DILocation(line: 82, column: 64, scope: !6332)
!6338 = !DILocation(line: 85, column: 18, scope: !6332)
!6339 = !DILocation(line: 85, column: 2, scope: !6332)
!6340 = distinct !DISubprogram(name: "list_add", scope: !4534, file: !4534, line: 167, type: !6017, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6341)
!6341 = !{!6342, !6343}
!6342 = !DILocalVariable(name: "new", arg: 1, scope: !6340, file: !4534, line: 167, type: !152)
!6343 = !DILocalVariable(name: "head", arg: 2, scope: !6340, file: !4534, line: 167, type: !152)
!6344 = !DILocation(line: 167, column: 47, scope: !6340)
!6345 = !DILocation(line: 167, column: 70, scope: !6340)
!6346 = !DILocation(line: 169, column: 13, scope: !6340)
!6347 = !DILocation(line: 169, column: 18, scope: !6340)
!6348 = !DILocation(line: 169, column: 24, scope: !6340)
!6349 = !DILocation(line: 169, column: 30, scope: !6340)
!6350 = !DILocation(line: 169, column: 2, scope: !6340)
!6351 = !DILocation(line: 170, column: 1, scope: !6340)
!6352 = distinct !DISubprogram(name: "__list_add", scope: !4534, file: !4534, line: 146, type: !6353, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6355)
!6353 = !DISubroutineType(types: !6354)
!6354 = !{null, !152, !152, !152}
!6355 = !{!6356, !6357, !6358}
!6356 = !DILocalVariable(name: "new", arg: 1, scope: !6352, file: !4534, line: 146, type: !152)
!6357 = !DILocalVariable(name: "prev", arg: 2, scope: !6352, file: !4534, line: 147, type: !152)
!6358 = !DILocalVariable(name: "next", arg: 3, scope: !6352, file: !4534, line: 148, type: !152)
!6359 = !DILocation(line: 146, column: 49, scope: !6352)
!6360 = !DILocation(line: 147, column: 28, scope: !6352)
!6361 = !DILocation(line: 148, column: 28, scope: !6352)
!6362 = !DILocation(line: 150, column: 24, scope: !6363)
!6363 = distinct !DILexicalBlock(scope: !6352, file: !4534, line: 150, column: 6)
!6364 = !DILocation(line: 150, column: 29, scope: !6363)
!6365 = !DILocation(line: 150, column: 35, scope: !6363)
!6366 = !DILocation(line: 150, column: 7, scope: !6363)
!6367 = !DILocation(line: 150, column: 6, scope: !6352)
!6368 = !DILocation(line: 151, column: 3, scope: !6363)
!6369 = !DILocation(line: 153, column: 15, scope: !6352)
!6370 = !DILocation(line: 153, column: 2, scope: !6352)
!6371 = !DILocation(line: 153, column: 8, scope: !6352)
!6372 = !DILocation(line: 153, column: 13, scope: !6352)
!6373 = !DILocation(line: 154, column: 14, scope: !6352)
!6374 = !DILocation(line: 154, column: 2, scope: !6352)
!6375 = !DILocation(line: 154, column: 7, scope: !6352)
!6376 = !DILocation(line: 154, column: 12, scope: !6352)
!6377 = !DILocation(line: 155, column: 14, scope: !6352)
!6378 = !DILocation(line: 155, column: 2, scope: !6352)
!6379 = !DILocation(line: 155, column: 7, scope: !6352)
!6380 = !DILocation(line: 155, column: 12, scope: !6352)
!6381 = !DILocation(line: 156, column: 2, scope: !6352)
!6382 = !DILocation(line: 156, column: 2, scope: !6383)
!6383 = distinct !DILexicalBlock(scope: !6352, file: !4534, line: 156, column: 2)
!6384 = !DILocation(line: 156, column: 2, scope: !6385)
!6385 = distinct !DILexicalBlock(scope: !6383, file: !4534, line: 156, column: 2)
!6386 = !DILocation(line: 156, column: 2, scope: !6387)
!6387 = distinct !DILexicalBlock(scope: !6383, file: !4534, line: 156, column: 2)
!6388 = !DILocation(line: 157, column: 1, scope: !6352)
!6389 = distinct !DISubprogram(name: "__list_add_valid", scope: !4534, file: !4534, line: 128, type: !6390, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6392)
!6390 = !DISubroutineType(types: !6391)
!6391 = !{!1493, !152, !152, !152}
!6392 = !{!6393, !6394, !6395}
!6393 = !DILocalVariable(name: "new", arg: 1, scope: !6389, file: !4534, line: 128, type: !152)
!6394 = !DILocalVariable(name: "prev", arg: 2, scope: !6389, file: !4534, line: 129, type: !152)
!6395 = !DILocalVariable(name: "next", arg: 3, scope: !6389, file: !4534, line: 130, type: !152)
!6396 = !DILocation(line: 128, column: 55, scope: !6389)
!6397 = !DILocation(line: 129, column: 23, scope: !6389)
!6398 = !DILocation(line: 130, column: 23, scope: !6389)
!6399 = !DILocation(line: 132, column: 2, scope: !6389)
!6400 = distinct !DISubprogram(name: "crypto_boot_test_finished", scope: !4208, file: !4208, line: 70, type: !3664, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6401 = !DILocation(line: 72, column: 2, scope: !6400)
!6402 = distinct !DISubprogram(name: "crypto_start_test", scope: !3, file: !3, line: 182, type: !4552, scopeLine: 183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6403)
!6403 = !{!6404}
!6404 = !DILocalVariable(name: "larval", arg: 1, scope: !6402, file: !3, line: 182, type: !4206)
!6405 = !DILocation(line: 182, column: 53, scope: !6402)
!6406 = !DILocation(line: 184, column: 29, scope: !6407)
!6407 = distinct !DILexicalBlock(scope: !6402, file: !3, line: 184, column: 6)
!6408 = !DILocation(line: 184, column: 7, scope: !6407)
!6409 = !DILocation(line: 184, column: 6, scope: !6402)
!6410 = !DILocation(line: 185, column: 3, scope: !6407)
!6411 = !DILocation(line: 187, column: 6, scope: !6412)
!6412 = distinct !DILexicalBlock(scope: !6402, file: !3, line: 187, column: 6)
!6413 = !DILocation(line: 187, column: 14, scope: !6412)
!6414 = !DILocation(line: 187, column: 6, scope: !6402)
!6415 = !DILocation(line: 188, column: 3, scope: !6412)
!6416 = !DILocation(line: 190, column: 2, scope: !6402)
!6417 = !DILocation(line: 191, column: 6, scope: !6418)
!6418 = distinct !DILexicalBlock(scope: !6402, file: !3, line: 191, column: 6)
!6419 = !DILocation(line: 191, column: 14, scope: !6418)
!6420 = !DILocation(line: 191, column: 6, scope: !6402)
!6421 = !DILocation(line: 192, column: 3, scope: !6422)
!6422 = distinct !DILexicalBlock(scope: !6418, file: !3, line: 191, column: 28)
!6423 = !DILocation(line: 193, column: 3, scope: !6422)
!6424 = !DILocation(line: 196, column: 2, scope: !6402)
!6425 = !DILocation(line: 196, column: 10, scope: !6402)
!6426 = !DILocation(line: 196, column: 23, scope: !6402)
!6427 = !DILocation(line: 197, column: 2, scope: !6402)
!6428 = !DILocation(line: 199, column: 23, scope: !6402)
!6429 = !DILocation(line: 199, column: 2, scope: !6402)
!6430 = !DILocation(line: 200, column: 1, scope: !6402)
!6431 = !DISubprogram(name: "wait_for_completion_killable_timeout", scope: !1885, file: !1885, line: 113, type: !6432, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6432 = !DISubroutineType(types: !6433)
!6433 = !{!349, !2310, !363}
!6434 = distinct !DISubprogram(name: "crypto_tfm_ctx_alignment", scope: !122, file: !122, line: 490, type: !6435, scopeLine: 491, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6437)
!6435 = !DISubroutineType(types: !6436)
!6436 = !{!7}
!6437 = !{!6438}
!6438 = !DILocalVariable(name: "tfm", scope: !6434, file: !122, line: 492, type: !120)
!6439 = !DILocation(line: 492, column: 2, scope: !6434)
!6440 = !DILocation(line: 492, column: 21, scope: !6434)
!6441 = !DILocation(line: 494, column: 1, scope: !6434)
!6442 = !DILocation(line: 493, column: 2, scope: !6434)
!6443 = distinct !DISubprogram(name: "crypto_cipher_ctxsize", scope: !4208, file: !4208, line: 99, type: !178, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6444)
!6444 = !{!6445}
!6445 = !DILocalVariable(name: "alg", arg: 1, scope: !6443, file: !4208, line: 99, type: !145)
!6446 = !DILocation(line: 99, column: 69, scope: !6443)
!6447 = !DILocation(line: 101, column: 9, scope: !6443)
!6448 = !DILocation(line: 101, column: 14, scope: !6443)
!6449 = !DILocation(line: 101, column: 2, scope: !6443)
!6450 = distinct !DISubprogram(name: "crypto_compress_ctxsize", scope: !4208, file: !4208, line: 104, type: !178, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6451)
!6451 = !{!6452}
!6452 = !DILocalVariable(name: "alg", arg: 1, scope: !6450, file: !4208, line: 104, type: !145)
!6453 = !DILocation(line: 104, column: 71, scope: !6450)
!6454 = !DILocation(line: 106, column: 9, scope: !6450)
!6455 = !DILocation(line: 106, column: 14, scope: !6450)
!6456 = !DILocation(line: 106, column: 2, scope: !6450)
!6457 = distinct !DISubprogram(name: "atomic_set", scope: !5690, file: !5690, line: 65, type: !6458, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6460)
!6458 = !DISubroutineType(types: !6459)
!6459 = !{null, !5693, !133}
!6460 = !{!6461, !6462}
!6461 = !DILocalVariable(name: "v", arg: 1, scope: !6457, file: !5690, line: 65, type: !5693)
!6462 = !DILocalVariable(name: "i", arg: 2, scope: !6457, file: !5690, line: 65, type: !133)
!6463 = !DILocation(line: 65, column: 22, scope: !6457)
!6464 = !DILocation(line: 65, column: 29, scope: !6457)
!6465 = !DILocation(line: 67, column: 26, scope: !6457)
!6466 = !DILocation(line: 67, column: 2, scope: !6457)
!6467 = !DILocation(line: 68, column: 17, scope: !6457)
!6468 = !DILocation(line: 68, column: 20, scope: !6457)
!6469 = !DILocation(line: 68, column: 2, scope: !6457)
!6470 = !DILocation(line: 69, column: 1, scope: !6457)
!6471 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !5709, file: !5709, line: 80, type: !5710, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6472)
!6472 = !{!6473, !6474}
!6473 = !DILocalVariable(name: "v", arg: 1, scope: !6471, file: !5709, line: 80, type: !5712)
!6474 = !DILocalVariable(name: "size", arg: 2, scope: !6471, file: !5709, line: 80, type: !360)
!6475 = !DILocation(line: 80, column: 74, scope: !6471)
!6476 = !DILocation(line: 80, column: 84, scope: !6471)
!6477 = !DILocation(line: 82, column: 20, scope: !6471)
!6478 = !DILocation(line: 82, column: 23, scope: !6471)
!6479 = !DILocation(line: 82, column: 2, scope: !6471)
!6480 = !DILocation(line: 83, column: 2, scope: !6471)
!6481 = !DILocation(line: 84, column: 1, scope: !6471)
!6482 = distinct !DISubprogram(name: "raw_atomic_set", scope: !5726, file: !5726, line: 488, type: !6458, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6483)
!6483 = !{!6484, !6485}
!6484 = !DILocalVariable(name: "v", arg: 1, scope: !6482, file: !5726, line: 488, type: !5693)
!6485 = !DILocalVariable(name: "i", arg: 2, scope: !6482, file: !5726, line: 488, type: !133)
!6486 = !DILocation(line: 488, column: 26, scope: !6482)
!6487 = !DILocation(line: 488, column: 33, scope: !6482)
!6488 = !DILocation(line: 490, column: 18, scope: !6482)
!6489 = !DILocation(line: 490, column: 21, scope: !6482)
!6490 = !DILocation(line: 490, column: 2, scope: !6482)
!6491 = !DILocation(line: 491, column: 1, scope: !6482)
!6492 = distinct !DISubprogram(name: "arch_atomic_set", scope: !5759, file: !5759, line: 26, type: !6458, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6493)
!6493 = !{!6494, !6495}
!6494 = !DILocalVariable(name: "v", arg: 1, scope: !6492, file: !5759, line: 26, type: !5693)
!6495 = !DILocalVariable(name: "i", arg: 2, scope: !6492, file: !5759, line: 26, type: !133)
!6496 = !DILocation(line: 26, column: 55, scope: !6492)
!6497 = !DILocation(line: 26, column: 62, scope: !6492)
!6498 = !DILocation(line: 28, column: 2, scope: !6492)
!6499 = !DILocation(line: 28, column: 2, scope: !6500)
!6500 = distinct !DILexicalBlock(scope: !6492, file: !5759, line: 28, column: 2)
!6501 = !DILocation(line: 29, column: 1, scope: !6492)
!6502 = distinct !DISubprogram(name: "task_sigpending", scope: !2386, file: !2386, line: 387, type: !5164, scopeLine: 388, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6503)
!6503 = !{!6504}
!6504 = !DILocalVariable(name: "p", arg: 1, scope: !6502, file: !2386, line: 387, type: !1006)
!6505 = !DILocation(line: 387, column: 55, scope: !6502)
!6506 = !DILocation(line: 389, column: 9, scope: !6502)
!6507 = !DILocation(line: 389, column: 2, scope: !6502)
!6508 = distinct !DISubprogram(name: "__fatal_signal_pending", scope: !2386, file: !2386, line: 404, type: !5164, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6509)
!6509 = !{!6510}
!6510 = !DILocalVariable(name: "p", arg: 1, scope: !6508, file: !2386, line: 404, type: !1006)
!6511 = !DILocation(line: 404, column: 62, scope: !6508)
!6512 = !DILocation(line: 406, column: 9, scope: !6508)
!6513 = !DILocation(line: 406, column: 2, scope: !6508)
!6514 = distinct !DISubprogram(name: "test_tsk_thread_flag", scope: !190, file: !190, line: 2066, type: !6515, scopeLine: 2067, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6517)
!6515 = !DISubroutineType(types: !6516)
!6516 = !{!133, !1006, !133}
!6517 = !{!6518, !6519}
!6518 = !DILocalVariable(name: "tsk", arg: 1, scope: !6514, file: !190, line: 2066, type: !1006)
!6519 = !DILocalVariable(name: "flag", arg: 2, scope: !6514, file: !190, line: 2066, type: !133)
!6520 = !DILocation(line: 2066, column: 60, scope: !6514)
!6521 = !DILocation(line: 2066, column: 69, scope: !6514)
!6522 = !DILocation(line: 2068, column: 29, scope: !6514)
!6523 = !DILocation(line: 2068, column: 52, scope: !6514)
!6524 = !DILocation(line: 2068, column: 9, scope: !6514)
!6525 = !DILocation(line: 2068, column: 2, scope: !6514)
!6526 = distinct !DISubprogram(name: "test_ti_thread_flag", scope: !6527, file: !6527, line: 116, type: !6528, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6531)
!6527 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!6528 = !DISubroutineType(types: !6529)
!6529 = !{!133, !6530, !133}
!6530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!6531 = !{!6532, !6533}
!6532 = !DILocalVariable(name: "ti", arg: 1, scope: !6526, file: !6527, line: 116, type: !6530)
!6533 = !DILocalVariable(name: "flag", arg: 2, scope: !6526, file: !6527, line: 116, type: !133)
!6534 = !DILocation(line: 116, column: 59, scope: !6526)
!6535 = !DILocation(line: 116, column: 67, scope: !6526)
!6536 = !DILocation(line: 118, column: 9, scope: !6526)
!6537 = !DILocation(line: 118, column: 2, scope: !6526)
!6538 = distinct !DISubprogram(name: "const_test_bit", scope: !6539, file: !6539, line: 166, type: !6540, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6545)
!6539 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!6540 = !DISubroutineType(types: !6541)
!6541 = !{!1493, !363, !6542}
!6542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6543, size: 64)
!6543 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6544)
!6544 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !363)
!6545 = !{!6546, !6547, !6548, !6549, !6550}
!6546 = !DILocalVariable(name: "nr", arg: 1, scope: !6538, file: !6539, line: 166, type: !363)
!6547 = !DILocalVariable(name: "addr", arg: 2, scope: !6538, file: !6539, line: 166, type: !6542)
!6548 = !DILocalVariable(name: "p", scope: !6538, file: !6539, line: 168, type: !4218)
!6549 = !DILocalVariable(name: "mask", scope: !6538, file: !6539, line: 169, type: !363)
!6550 = !DILocalVariable(name: "val", scope: !6538, file: !6539, line: 170, type: !363)
!6551 = !DILocation(line: 166, column: 30, scope: !6538)
!6552 = !DILocation(line: 166, column: 64, scope: !6538)
!6553 = !DILocation(line: 168, column: 2, scope: !6538)
!6554 = !DILocation(line: 168, column: 23, scope: !6538)
!6555 = !DILocation(line: 168, column: 50, scope: !6538)
!6556 = !DILocation(line: 168, column: 57, scope: !6538)
!6557 = !DILocation(line: 168, column: 55, scope: !6538)
!6558 = !DILocation(line: 169, column: 2, scope: !6538)
!6559 = !DILocation(line: 169, column: 16, scope: !6538)
!6560 = !DILocation(line: 169, column: 23, scope: !6538)
!6561 = !DILocation(line: 170, column: 2, scope: !6538)
!6562 = !DILocation(line: 170, column: 16, scope: !6538)
!6563 = !DILocation(line: 170, column: 23, scope: !6538)
!6564 = !DILocation(line: 170, column: 22, scope: !6538)
!6565 = !DILocation(line: 172, column: 12, scope: !6538)
!6566 = !DILocation(line: 172, column: 18, scope: !6538)
!6567 = !DILocation(line: 172, column: 16, scope: !6538)
!6568 = !DILocation(line: 172, column: 10, scope: !6538)
!6569 = !DILocation(line: 172, column: 9, scope: !6538)
!6570 = !DILocation(line: 173, column: 1, scope: !6538)
!6571 = !DILocation(line: 172, column: 2, scope: !6538)
!6572 = distinct !DISubprogram(name: "_test_bit", scope: !6573, file: !6573, line: 139, type: !6540, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6574)
!6573 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!6574 = !{!6575, !6576}
!6575 = !DILocalVariable(name: "nr", arg: 1, scope: !6572, file: !6573, line: 139, type: !363)
!6576 = !DILocalVariable(name: "addr", arg: 2, scope: !6572, file: !6573, line: 139, type: !6542)
!6577 = !DILocation(line: 139, column: 25, scope: !6572)
!6578 = !DILocation(line: 139, column: 59, scope: !6572)
!6579 = !DILocation(line: 141, column: 25, scope: !6572)
!6580 = !DILocation(line: 141, column: 32, scope: !6572)
!6581 = !DILocation(line: 141, column: 30, scope: !6572)
!6582 = !DILocation(line: 141, column: 2, scope: !6572)
!6583 = !DILocation(line: 142, column: 23, scope: !6572)
!6584 = !DILocation(line: 142, column: 27, scope: !6572)
!6585 = !DILocation(line: 142, column: 9, scope: !6572)
!6586 = !DILocation(line: 142, column: 2, scope: !6572)
!6587 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !5709, file: !5709, line: 66, type: !5710, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6588)
!6588 = !{!6589, !6590}
!6589 = !DILocalVariable(name: "v", arg: 1, scope: !6587, file: !5709, line: 66, type: !5712)
!6590 = !DILocalVariable(name: "size", arg: 2, scope: !6587, file: !5709, line: 66, type: !360)
!6591 = !DILocation(line: 66, column: 73, scope: !6587)
!6592 = !DILocation(line: 66, column: 83, scope: !6587)
!6593 = !DILocation(line: 68, column: 19, scope: !6587)
!6594 = !DILocation(line: 68, column: 22, scope: !6587)
!6595 = !DILocation(line: 68, column: 2, scope: !6587)
!6596 = !DILocation(line: 69, column: 2, scope: !6587)
!6597 = !DILocation(line: 70, column: 1, scope: !6587)
!6598 = distinct !DISubprogram(name: "arch_test_bit", scope: !6599, file: !6599, line: 237, type: !6540, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6600)
!6599 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!6600 = !{!6601, !6602}
!6601 = !DILocalVariable(name: "nr", arg: 1, scope: !6598, file: !6599, line: 237, type: !363)
!6602 = !DILocalVariable(name: "addr", arg: 2, scope: !6598, file: !6599, line: 237, type: !6542)
!6603 = !DILocation(line: 237, column: 29, scope: !6598)
!6604 = !DILocation(line: 237, column: 63, scope: !6598)
!6605 = !DILocation(line: 239, column: 30, scope: !6598)
!6606 = !DILocation(line: 239, column: 9, scope: !6598)
!6607 = !DILocation(line: 239, column: 54, scope: !6598)
!6608 = !DILocation(line: 239, column: 58, scope: !6598)
!6609 = !DILocation(line: 239, column: 36, scope: !6598)
!6610 = !DILocation(line: 240, column: 26, scope: !6598)
!6611 = !DILocation(line: 240, column: 30, scope: !6598)
!6612 = !DILocation(line: 240, column: 8, scope: !6598)
!6613 = !DILocation(line: 239, column: 2, scope: !6598)
!6614 = distinct !DISubprogram(name: "kasan_check_read", scope: !5737, file: !5737, line: 40, type: !5738, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6615)
!6615 = !{!6616, !6617}
!6616 = !DILocalVariable(name: "p", arg: 1, scope: !6614, file: !5737, line: 40, type: !5712)
!6617 = !DILocalVariable(name: "size", arg: 2, scope: !6614, file: !5737, line: 40, type: !7)
!6618 = !DILocation(line: 40, column: 58, scope: !6614)
!6619 = !DILocation(line: 40, column: 74, scope: !6614)
!6620 = !DILocation(line: 42, column: 2, scope: !6614)
!6621 = distinct !DISubprogram(name: "constant_test_bit", scope: !6599, file: !6599, line: 204, type: !6622, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6624)
!6622 = !DISubroutineType(types: !6623)
!6623 = !{!1493, !349, !6542}
!6624 = !{!6625, !6626}
!6625 = !DILocalVariable(name: "nr", arg: 1, scope: !6621, file: !6599, line: 204, type: !349)
!6626 = !DILocalVariable(name: "addr", arg: 2, scope: !6621, file: !6599, line: 204, type: !6542)
!6627 = !DILocation(line: 204, column: 52, scope: !6621)
!6628 = !DILocation(line: 204, column: 86, scope: !6621)
!6629 = !DILocation(line: 206, column: 19, scope: !6621)
!6630 = !DILocation(line: 206, column: 22, scope: !6621)
!6631 = !DILocation(line: 206, column: 15, scope: !6621)
!6632 = !DILocation(line: 207, column: 4, scope: !6621)
!6633 = !DILocation(line: 207, column: 9, scope: !6621)
!6634 = !DILocation(line: 207, column: 12, scope: !6621)
!6635 = !DILocation(line: 206, column: 44, scope: !6621)
!6636 = !DILocation(line: 207, column: 37, scope: !6621)
!6637 = !DILocation(line: 206, column: 2, scope: !6621)
!6638 = distinct !DISubprogram(name: "variable_test_bit", scope: !6599, file: !6599, line: 224, type: !6622, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6639)
!6639 = !{!6640, !6641, !6642}
!6640 = !DILocalVariable(name: "nr", arg: 1, scope: !6638, file: !6599, line: 224, type: !349)
!6641 = !DILocalVariable(name: "addr", arg: 2, scope: !6638, file: !6599, line: 224, type: !6542)
!6642 = !DILocalVariable(name: "oldbit", scope: !6638, file: !6599, line: 226, type: !1493)
!6643 = !DILocation(line: 224, column: 52, scope: !6638)
!6644 = !DILocation(line: 224, column: 86, scope: !6638)
!6645 = !DILocation(line: 226, column: 2, scope: !6638)
!6646 = !DILocation(line: 226, column: 7, scope: !6638)
!6647 = !DILocation(line: 231, column: 33, scope: !6638)
!6648 = !DILocation(line: 231, column: 46, scope: !6638)
!6649 = !DILocation(line: 228, column: 2, scope: !6638)
!6650 = !{i64 2147848517, i64 2147848591}
!6651 = !DILocation(line: 233, column: 9, scope: !6638)
!6652 = !DILocation(line: 234, column: 1, scope: !6638)
!6653 = !DILocation(line: 233, column: 2, scope: !6638)
!6654 = distinct !DISubprogram(name: "sigismember", scope: !5966, file: !5966, line: 82, type: !6655, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6658)
!6655 = !DISubroutineType(types: !6656)
!6656 = !{!133, !6657, !133}
!6657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2400, size: 64)
!6658 = !{!6659, !6660, !6661}
!6659 = !DILocalVariable(name: "set", arg: 1, scope: !6654, file: !5966, line: 82, type: !6657)
!6660 = !DILocalVariable(name: "_sig", arg: 2, scope: !6654, file: !5966, line: 82, type: !133)
!6661 = !DILocalVariable(name: "sig", scope: !6654, file: !5966, line: 84, type: !363)
!6662 = !DILocation(line: 82, column: 41, scope: !6654)
!6663 = !DILocation(line: 82, column: 50, scope: !6654)
!6664 = !DILocation(line: 84, column: 2, scope: !6654)
!6665 = !DILocation(line: 84, column: 16, scope: !6654)
!6666 = !DILocation(line: 84, column: 22, scope: !6654)
!6667 = !DILocation(line: 84, column: 27, scope: !6654)
!6668 = !DILocation(line: 86, column: 15, scope: !6669)
!6669 = distinct !DILexicalBlock(scope: !6654, file: !5966, line: 85, column: 6)
!6670 = !DILocation(line: 86, column: 20, scope: !6669)
!6671 = !DILocation(line: 86, column: 30, scope: !6669)
!6672 = !DILocation(line: 86, column: 27, scope: !6669)
!6673 = !DILocation(line: 86, column: 12, scope: !6669)
!6674 = !DILocation(line: 86, column: 10, scope: !6669)
!6675 = !DILocation(line: 89, column: 1, scope: !6654)
!6676 = !DILocation(line: 86, column: 3, scope: !6669)
!6677 = distinct !DISubprogram(name: "kzalloc_node", scope: !107, file: !107, line: 730, type: !6678, scopeLine: 731, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6680)
!6678 = !DISubroutineType(types: !6679)
!6679 = !{!117, !360, !118, !133}
!6680 = !{!6681, !6682, !6683}
!6681 = !DILocalVariable(name: "size", arg: 1, scope: !6677, file: !107, line: 730, type: !360)
!6682 = !DILocalVariable(name: "flags", arg: 2, scope: !6677, file: !107, line: 730, type: !118)
!6683 = !DILocalVariable(name: "node", arg: 3, scope: !6677, file: !107, line: 730, type: !133)
!6684 = !DILocation(line: 730, column: 57, scope: !6677)
!6685 = !DILocation(line: 730, column: 69, scope: !6677)
!6686 = !DILocation(line: 730, column: 80, scope: !6677)
!6687 = !DILocation(line: 732, column: 22, scope: !6677)
!6688 = !DILocation(line: 732, column: 28, scope: !6677)
!6689 = !DILocation(line: 732, column: 34, scope: !6677)
!6690 = !DILocation(line: 732, column: 48, scope: !6677)
!6691 = !DILocation(line: 732, column: 9, scope: !6677)
!6692 = !DILocation(line: 732, column: 2, scope: !6677)
!6693 = distinct !DISubprogram(name: "kmalloc_node", scope: !107, file: !107, line: 607, type: !6678, scopeLine: 608, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6694)
!6694 = !{!6695, !6696, !6697, !6698}
!6695 = !DILocalVariable(name: "size", arg: 1, scope: !6693, file: !107, line: 607, type: !360)
!6696 = !DILocalVariable(name: "flags", arg: 2, scope: !6693, file: !107, line: 607, type: !118)
!6697 = !DILocalVariable(name: "node", arg: 3, scope: !6693, file: !107, line: 607, type: !133)
!6698 = !DILocalVariable(name: "index", scope: !6699, file: !107, line: 610, type: !7)
!6699 = distinct !DILexicalBlock(scope: !6700, file: !107, line: 609, column: 42)
!6700 = distinct !DILexicalBlock(scope: !6693, file: !107, line: 609, column: 6)
!6701 = !DILocation(line: 607, column: 66, scope: !6693)
!6702 = !DILocation(line: 607, column: 78, scope: !6693)
!6703 = !DILocation(line: 607, column: 89, scope: !6693)
!6704 = !DILocation(line: 609, column: 27, scope: !6700)
!6705 = !DILocation(line: 609, column: 6, scope: !6700)
!6706 = !DILocation(line: 609, column: 33, scope: !6700)
!6707 = !DILocation(line: 609, column: 36, scope: !6700)
!6708 = !DILocation(line: 609, column: 6, scope: !6693)
!6709 = !DILocation(line: 610, column: 3, scope: !6699)
!6710 = !DILocation(line: 610, column: 16, scope: !6699)
!6711 = !DILocation(line: 612, column: 7, scope: !6712)
!6712 = distinct !DILexicalBlock(scope: !6699, file: !107, line: 612, column: 7)
!6713 = !DILocation(line: 612, column: 12, scope: !6712)
!6714 = !DILocation(line: 612, column: 7, scope: !6699)
!6715 = !DILocation(line: 613, column: 30, scope: !6712)
!6716 = !DILocation(line: 613, column: 36, scope: !6712)
!6717 = !DILocation(line: 613, column: 43, scope: !6712)
!6718 = !DILocation(line: 613, column: 11, scope: !6712)
!6719 = !DILocation(line: 613, column: 4, scope: !6712)
!6720 = !DILocation(line: 615, column: 11, scope: !6699)
!6721 = !DILocation(line: 615, column: 9, scope: !6699)
!6722 = !DILocation(line: 617, column: 33, scope: !6699)
!6723 = !DILocation(line: 617, column: 40, scope: !6699)
!6724 = !DILocation(line: 617, column: 20, scope: !6699)
!6725 = !DILocation(line: 617, column: 5, scope: !6699)
!6726 = !DILocation(line: 617, column: 51, scope: !6699)
!6727 = !DILocation(line: 618, column: 5, scope: !6699)
!6728 = !DILocation(line: 618, column: 12, scope: !6699)
!6729 = !DILocation(line: 618, column: 18, scope: !6699)
!6730 = !DILocation(line: 616, column: 10, scope: !6699)
!6731 = !DILocation(line: 616, column: 3, scope: !6699)
!6732 = !DILocation(line: 619, column: 2, scope: !6700)
!6733 = !DILocation(line: 620, column: 24, scope: !6693)
!6734 = !DILocation(line: 620, column: 30, scope: !6693)
!6735 = !DILocation(line: 620, column: 37, scope: !6693)
!6736 = !DILocation(line: 620, column: 9, scope: !6693)
!6737 = !DILocation(line: 620, column: 2, scope: !6693)
!6738 = !DILocation(line: 621, column: 1, scope: !6693)
!6739 = !DISubprogram(name: "kmalloc_large_node", scope: !107, file: !107, line: 534, type: !6678, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6740 = !DISubprogram(name: "kmalloc_node_trace", scope: !107, file: !107, line: 528, type: !6741, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6741 = !DISubroutineType(types: !6742)
!6742 = !{!117, !5964, !118, !133, !360}
!6743 = !DISubprogram(name: "__kmalloc_node", scope: !107, file: !107, line: 520, type: !6678, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6744 = distinct !DISubprogram(name: "__refcount_dec_and_test", scope: !99, file: !99, line: 313, type: !6745, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6747)
!6745 = !DISubroutineType(types: !6746)
!6746 = !{!1493, !5027, !649}
!6747 = !{!6748, !6749}
!6748 = !DILocalVariable(name: "r", arg: 1, scope: !6744, file: !99, line: 313, type: !5027)
!6749 = !DILocalVariable(name: "oldp", arg: 2, scope: !6744, file: !99, line: 313, type: !649)
!6750 = !DILocation(line: 313, column: 69, scope: !6744)
!6751 = !DILocation(line: 313, column: 77, scope: !6744)
!6752 = !DILocation(line: 315, column: 36, scope: !6744)
!6753 = !DILocation(line: 315, column: 39, scope: !6744)
!6754 = !DILocation(line: 315, column: 9, scope: !6744)
!6755 = !DILocation(line: 315, column: 2, scope: !6744)
!6756 = distinct !DISubprogram(name: "__refcount_sub_and_test", scope: !99, file: !99, line: 270, type: !6757, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6759)
!6757 = !DISubroutineType(types: !6758)
!6758 = !{!1493, !133, !5027, !649}
!6759 = !{!6760, !6761, !6762, !6763}
!6760 = !DILocalVariable(name: "i", arg: 1, scope: !6756, file: !99, line: 270, type: !133)
!6761 = !DILocalVariable(name: "r", arg: 2, scope: !6756, file: !99, line: 270, type: !5027)
!6762 = !DILocalVariable(name: "oldp", arg: 3, scope: !6756, file: !99, line: 270, type: !649)
!6763 = !DILocalVariable(name: "old", scope: !6756, file: !99, line: 272, type: !133)
!6764 = !DILocation(line: 270, column: 61, scope: !6756)
!6765 = !DILocation(line: 270, column: 76, scope: !6756)
!6766 = !DILocation(line: 270, column: 84, scope: !6756)
!6767 = !DILocation(line: 272, column: 2, scope: !6756)
!6768 = !DILocation(line: 272, column: 6, scope: !6756)
!6769 = !DILocation(line: 272, column: 37, scope: !6756)
!6770 = !DILocation(line: 272, column: 41, scope: !6756)
!6771 = !DILocation(line: 272, column: 44, scope: !6756)
!6772 = !DILocation(line: 272, column: 12, scope: !6756)
!6773 = !DILocation(line: 274, column: 6, scope: !6774)
!6774 = distinct !DILexicalBlock(scope: !6756, file: !99, line: 274, column: 6)
!6775 = !DILocation(line: 274, column: 6, scope: !6756)
!6776 = !DILocation(line: 275, column: 11, scope: !6774)
!6777 = !DILocation(line: 275, column: 4, scope: !6774)
!6778 = !DILocation(line: 275, column: 9, scope: !6774)
!6779 = !DILocation(line: 275, column: 3, scope: !6774)
!6780 = !DILocation(line: 277, column: 6, scope: !6781)
!6781 = distinct !DILexicalBlock(scope: !6756, file: !99, line: 277, column: 6)
!6782 = !DILocation(line: 277, column: 13, scope: !6781)
!6783 = !DILocation(line: 277, column: 10, scope: !6781)
!6784 = !DILocation(line: 277, column: 6, scope: !6756)
!6785 = !DILocation(line: 278, column: 3, scope: !6786)
!6786 = distinct !DILexicalBlock(scope: !6781, file: !99, line: 277, column: 16)
!6787 = !DILocation(line: 278, column: 3, scope: !6788)
!6788 = distinct !DILexicalBlock(scope: !6786, file: !99, line: 278, column: 3)
!6789 = !DILocation(line: 278, column: 3, scope: !6790)
!6790 = distinct !DILexicalBlock(scope: !6788, file: !99, line: 278, column: 3)
!6791 = !DILocation(line: 278, column: 3, scope: !6792)
!6792 = distinct !DILexicalBlock(scope: !6788, file: !99, line: 278, column: 3)
!6793 = !DILocation(line: 278, column: 3, scope: !6794)
!6794 = distinct !DILexicalBlock(scope: !6792, file: !99, line: 278, column: 3)
!6795 = !{i64 2150214526}
!6796 = !DILocation(line: 279, column: 3, scope: !6786)
!6797 = !DILocation(line: 282, column: 6, scope: !6798)
!6798 = distinct !DILexicalBlock(scope: !6756, file: !99, line: 282, column: 6)
!6799 = !DILocation(line: 282, column: 6, scope: !6756)
!6800 = !DILocation(line: 283, column: 26, scope: !6798)
!6801 = !DILocation(line: 283, column: 3, scope: !6798)
!6802 = !DILocation(line: 285, column: 2, scope: !6756)
!6803 = !DILocation(line: 286, column: 1, scope: !6756)
!6804 = distinct !DISubprogram(name: "atomic_fetch_sub_release", scope: !5690, file: !5690, line: 397, type: !5691, scopeLine: 398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6805)
!6805 = !{!6806, !6807}
!6806 = !DILocalVariable(name: "i", arg: 1, scope: !6804, file: !5690, line: 397, type: !133)
!6807 = !DILocalVariable(name: "v", arg: 2, scope: !6804, file: !5690, line: 397, type: !5693)
!6808 = !DILocation(line: 397, column: 30, scope: !6804)
!6809 = !DILocation(line: 397, column: 43, scope: !6804)
!6810 = !DILocation(line: 399, column: 2, scope: !6804)
!6811 = !DILocation(line: 399, column: 2, scope: !6812)
!6812 = distinct !DILexicalBlock(scope: !6804, file: !5690, line: 399, column: 2)
!6813 = !DILocation(line: 400, column: 31, scope: !6804)
!6814 = !DILocation(line: 400, column: 2, scope: !6804)
!6815 = !DILocation(line: 401, column: 38, scope: !6804)
!6816 = !DILocation(line: 401, column: 41, scope: !6804)
!6817 = !DILocation(line: 401, column: 9, scope: !6804)
!6818 = !DILocation(line: 401, column: 2, scope: !6804)
!6819 = distinct !DISubprogram(name: "raw_atomic_fetch_sub_release", scope: !5726, file: !5726, line: 928, type: !5691, scopeLine: 929, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6820)
!6820 = !{!6821, !6822}
!6821 = !DILocalVariable(name: "i", arg: 1, scope: !6819, file: !5726, line: 928, type: !133)
!6822 = !DILocalVariable(name: "v", arg: 2, scope: !6819, file: !5726, line: 928, type: !5693)
!6823 = !DILocation(line: 928, column: 34, scope: !6819)
!6824 = !DILocation(line: 928, column: 47, scope: !6819)
!6825 = !DILocation(line: 936, column: 31, scope: !6819)
!6826 = !DILocation(line: 936, column: 34, scope: !6819)
!6827 = !DILocation(line: 936, column: 9, scope: !6819)
!6828 = !DILocation(line: 936, column: 2, scope: !6819)
!6829 = distinct !DISubprogram(name: "arch_atomic_fetch_sub", scope: !5759, file: !5759, line: 101, type: !5691, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6830)
!6830 = !{!6831, !6832, !6833}
!6831 = !DILocalVariable(name: "i", arg: 1, scope: !6829, file: !5759, line: 101, type: !133)
!6832 = !DILocalVariable(name: "v", arg: 2, scope: !6829, file: !5759, line: 101, type: !5693)
!6833 = !DILocalVariable(name: "__ret", scope: !6834, file: !5759, line: 103, type: !133)
!6834 = distinct !DILexicalBlock(scope: !6829, file: !5759, line: 103, column: 9)
!6835 = !DILocation(line: 101, column: 54, scope: !6829)
!6836 = !DILocation(line: 101, column: 67, scope: !6829)
!6837 = !DILocation(line: 103, column: 9, scope: !6834)
!6838 = !{i64 2148924013, i64 2148924052, i64 2148924073, i64 2148924110, i64 2148924133, i64 2148924142}
!6839 = !DILocation(line: 103, column: 9, scope: !6829)
!6840 = !DILocation(line: 103, column: 2, scope: !6829)
