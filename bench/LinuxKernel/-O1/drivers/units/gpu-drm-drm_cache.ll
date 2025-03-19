; ModuleID = 'drivers/gpu/drm/drm_cache.c'
source_filename = "drivers/gpu/drm/drm_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_clflush_pages: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_clflush_pages ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_clflush_sg: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_clflush_sg ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_clflush_virt_range: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_clflush_virt_range ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_need_swiotlb: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_need_swiotlb ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_memcpy_from_wc: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_memcpy_from_wc ; .previous"

%struct.cpuinfo_x86 = type { %union.anon.13, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.15, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon.13 = type { i32 }
%union.anon.15 = type { i64, [88 x i8] }
%struct.resource = type { i64, i64, ptr, i64, i64, ptr, ptr, ptr }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.16 }
%struct.atomic_t = type { i32 }
%union.anon.16 = type { i64 }
%struct.pcpu_hot = type { %union.anon.18 }
%union.anon.18 = type { %struct.anon.19, [16 x i8] }
%struct.anon.19 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.static_call_key = type { ptr, %union.anon.20 }
%union.anon.20 = type { i64 }
%struct.sg_page_iter = type { ptr, i32, i32, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.page = type { i64, %union.anon.21, %union.anon.30, %struct.atomic_t, [8 x i8] }
%union.anon.21 = type { %struct.anon.22 }
%struct.anon.22 = type { %union.anon.23, ptr, %union.anon.25, i64 }
%union.anon.23 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.anon.25 = type { i64 }
%union.anon.30 = type { %struct.atomic_t }
%struct.iosys_map = type { %union.anon.17, i8 }
%union.anon.17 = type { ptr }
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
%struct.scatterlist = type { i64, i32, i32, i64, i32, i32 }

@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@.str = private unnamed_addr constant [37 x i8] c"\013Timed out waiting for cache flush\0A\00", align 1, !dbg !0
@__UNIQUE_ID___addressable_drm_clflush_pages305 = internal global ptr @drm_clflush_pages, section ".discard.addressable", align 8, !dbg !7
@__UNIQUE_ID___addressable_drm_clflush_sg306 = internal global ptr @drm_clflush_sg, section ".discard.addressable", align 8, !dbg !3419
@__UNIQUE_ID___addressable_drm_clflush_virt_range307 = internal global ptr @drm_clflush_virt_range, section ".discard.addressable", align 8, !dbg !3421
@iomem_resource = external dso_local global %struct.resource, align 8
@__UNIQUE_ID___addressable_drm_need_swiotlb310 = internal global ptr @drm_need_swiotlb, section ".discard.addressable", align 8, !dbg !3423
@.str.1 = private unnamed_addr constant [28 x i8] c"drivers/gpu/drm/drm_cache.c\00", align 1, !dbg !3425
@has_movntdqa = internal global %struct.static_key_false zeroinitializer, align 8, !dbg !3440
@__UNIQUE_ID___addressable_drm_memcpy_from_wc311 = internal global ptr @drm_memcpy_from_wc, section ".discard.addressable", align 8, !dbg !3430
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@vmemmap_base = external dso_local global i64, align 8
@page_offset_base = external dso_local global i64, align 8
@__kunmap_atomic.__UNIQUE_ID___addressable___SCK__preempt_schedule277 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8, !dbg !3432
@__SCK__preempt_schedule = external dso_local global %struct.static_call_key, align 8
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID___addressable_drm_clflush_pages305, ptr @__UNIQUE_ID___addressable_drm_clflush_sg306, ptr @__UNIQUE_ID___addressable_drm_clflush_virt_range307, ptr @__UNIQUE_ID___addressable_drm_need_swiotlb310, ptr @__UNIQUE_ID___addressable_drm_memcpy_from_wc311, ptr @__kunmap_atomic.__UNIQUE_ID___addressable___SCK__preempt_schedule277], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @drm_clflush_pages(ptr noundef %pages, i64 noundef %num_pages) #0 align 16 !dbg !3473 {
entry:
  %pages.addr = alloca ptr, align 8
  %num_pages.addr = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %pages, ptr %pages.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pages.addr, metadata !3477, metadata !DIExpression()), !dbg !3479
  store i64 %num_pages, ptr %num_pages.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %num_pages.addr, metadata !3478, metadata !DIExpression()), !dbg !3480
  br i1 false, label %cond.true, label %cond.false2, !dbg !3481

cond.true:                                        ; preds = %entry
  br i1 false, label %cond.true1, label %cond.false, !dbg !3482

cond.true1:                                       ; preds = %cond.true
  br i1 true, label %if.then, label %if.end, !dbg !3482

cond.false:                                       ; preds = %cond.true
  %call = call zeroext i1 @arch_test_bit(i64 noundef 19, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #13, !dbg !3482
  br i1 %call, label %if.then, label %if.end, !dbg !3482

cond.false2:                                      ; preds = %entry
  %call3 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 19) #13, !dbg !3482
  br i1 %call3, label %if.then, label %if.end, !dbg !3481

if.then:                                          ; preds = %cond.false2, %cond.false, %cond.true1
  %0 = load ptr, ptr %pages.addr, align 8, !dbg !3484
  %1 = load i64, ptr %num_pages.addr, align 8, !dbg !3486
  call void @drm_cache_flush_clflush(ptr noundef %0, i64 noundef %1) #13, !dbg !3487
  br label %if.end7, !dbg !3488

if.end:                                           ; preds = %cond.false2, %cond.false, %cond.true1
  %call4 = call i32 @wbinvd_on_all_cpus() #13, !dbg !3489
  %tobool = icmp ne i32 %call4, 0, !dbg !3489
  br i1 %tobool, label %if.then5, label %if.end7, !dbg !3491

if.then5:                                         ; preds = %if.end
  br label %do.body, !dbg !3492

do.body:                                          ; preds = %if.then5
  br label %do.end, !dbg !3494

do.end:                                           ; preds = %do.body
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef @.str) #14, !dbg !3492
  store i32 %call6, ptr %tmp, align 4, !dbg !3494
  %2 = load i32, ptr %tmp, align 4, !dbg !3492
  br label %if.end7, !dbg !3496

if.end7:                                          ; preds = %if.then, %do.end, %if.end
  ret void, !dbg !3497
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #2 align 16 !dbg !3498 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3506, metadata !DIExpression()), !dbg !3508
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3507, metadata !DIExpression()), !dbg !3509
  %0 = load i64, ptr %nr.addr, align 8, !dbg !3510
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3511
  br i1 %1, label %cond.true, label %cond.false, !dbg !3511

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !3512
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !3513
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #13, !dbg !3514
  %conv = zext i1 %call to i32, !dbg !3514
  br label %cond.end, !dbg !3511

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !3515
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !3516
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #13, !dbg !3517
  %conv2 = zext i1 %call1 to i32, !dbg !3517
  br label %cond.end, !dbg !3511

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !3511
  %tobool = icmp ne i32 %cond, 0, !dbg !3511
  ret i1 %tobool, !dbg !3518
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_static_cpu_has(i16 noundef zeroext %bit) #2 align 16 !dbg !3519 {
entry:
  %retval = alloca i1, align 1
  %bit.addr = alloca i16, align 2
  store i16 %bit, ptr %bit.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %bit.addr, metadata !3524, metadata !DIExpression()), !dbg !3527
  %0 = load i16, ptr %bit.addr, align 2, !dbg !3528
  %1 = load i16, ptr %bit.addr, align 2, !dbg !3529
  %conv = zext i16 %1 to i32, !dbg !3529
  %and = and i32 %conv, 7, !dbg !3530
  %shl = shl i32 1, %and, !dbg !3531
  %2 = load i16, ptr %bit.addr, align 2, !dbg !3532
  %conv1 = zext i16 %2 to i32, !dbg !3532
  %shr = ashr i32 %conv1, 3, !dbg !3533
  %idxprom = sext i32 %shr to i64, !dbg !3534
  %arrayidx = getelementptr i8, ptr getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10), i64 %idxprom, !dbg !3534
  callbr void asm sideeffect "# ALT: oldinstr2\0A661:\0A\09jmp 6f\0A662:\0A# ALT: padding2\0A.skip -((((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)) > 0) * (((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)), 0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 3*32+21)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A .long 661b - .\0A .long 6642f - .\0A .4byte ${0:c}\0A .byte 663b-661b\0A .byte 6652f-6642f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09jmp ${4:l}\0A6651:\0A# ALT: replacement 2\0A6642:\0A\09\0A6652:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A testb $1,${2:P} (% rip)\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 %0, i32 %shl, ptr %arrayidx) #15
          to label %asm.fallthrough [label %t_yes, label %t_no], !dbg !3535, !srcloc !3536

asm.fallthrough:                                  ; preds = %entry
  br label %t_yes, !dbg !3535

t_yes:                                            ; preds = %asm.fallthrough, %entry
  call void @llvm.dbg.label(metadata !3525), !dbg !3537
  store i1 true, ptr %retval, align 1, !dbg !3538
  br label %return, !dbg !3538

t_no:                                             ; preds = %entry
  call void @llvm.dbg.label(metadata !3526), !dbg !3539
  store i1 false, ptr %retval, align 1, !dbg !3540
  br label %return, !dbg !3540

return:                                           ; preds = %t_no, %t_yes
  %3 = load i1, ptr %retval, align 1, !dbg !3541
  ret i1 %3, !dbg !3541
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @drm_cache_flush_clflush(ptr noundef %pages, i64 noundef %num_pages) #0 align 16 !dbg !3542 {
entry:
  %pages.addr = alloca ptr, align 8
  %num_pages.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store ptr %pages, ptr %pages.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pages.addr, metadata !3544, metadata !DIExpression()), !dbg !3547
  store i64 %num_pages, ptr %num_pages.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %num_pages.addr, metadata !3545, metadata !DIExpression()), !dbg !3548
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #15, !dbg !3549
  call void @llvm.dbg.declare(metadata ptr %i, metadata !3546, metadata !DIExpression()), !dbg !3550
  br label %do.body, !dbg !3551

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !3552

do.body1:                                         ; preds = %do.body
  br label %do.cond, !dbg !3554

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !3554

do.end:                                           ; preds = %do.cond
  call void asm sideeffect "mfence", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !3552, !srcloc !3556
  br label %do.cond2, !dbg !3552

do.cond2:                                         ; preds = %do.end
  br label %do.end3, !dbg !3552

do.end3:                                          ; preds = %do.cond2
  store i64 0, ptr %i, align 8, !dbg !3557
  br label %for.cond, !dbg !3559

for.cond:                                         ; preds = %for.inc, %do.end3
  %0 = load i64, ptr %i, align 8, !dbg !3560
  %1 = load i64, ptr %num_pages.addr, align 8, !dbg !3562
  %cmp = icmp ult i64 %0, %1, !dbg !3563
  br i1 %cmp, label %for.body, label %for.end, !dbg !3564

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %pages.addr, align 8, !dbg !3565
  %incdec.ptr = getelementptr ptr, ptr %2, i32 1, !dbg !3565
  store ptr %incdec.ptr, ptr %pages.addr, align 8, !dbg !3565
  %3 = load ptr, ptr %2, align 8, !dbg !3566
  call void @drm_clflush_page(ptr noundef %3) #13, !dbg !3567
  br label %for.inc, !dbg !3567

for.inc:                                          ; preds = %for.body
  %4 = load i64, ptr %i, align 8, !dbg !3568
  %inc = add i64 %4, 1, !dbg !3568
  store i64 %inc, ptr %i, align 8, !dbg !3568
  br label %for.cond, !dbg !3569, !llvm.loop !3570

for.end:                                          ; preds = %for.cond
  br label %do.body4, !dbg !3574

do.body4:                                         ; preds = %for.end
  br label %do.body5, !dbg !3575

do.body5:                                         ; preds = %do.body4
  br label %do.cond6, !dbg !3577

do.cond6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !3577

do.end7:                                          ; preds = %do.cond6
  call void asm sideeffect "mfence", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !3575, !srcloc !3579
  br label %do.cond8, !dbg !3575

do.cond8:                                         ; preds = %do.end7
  br label %do.end9, !dbg !3575

do.end9:                                          ; preds = %do.cond8
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #15, !dbg !3580
  ret void, !dbg !3580
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3581 dso_local i32 @wbinvd_on_all_cpus() #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !3585 dso_local i32 @_printk(ptr noundef, ...) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @drm_clflush_sg(ptr noundef %st) #0 align 16 !dbg !3589 {
entry:
  %st.addr = alloca ptr, align 8
  %sg_iter = alloca %struct.sg_page_iter, align 8
  %tmp = alloca i32, align 4
  store ptr %st, ptr %st.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %st.addr, metadata !3610, metadata !DIExpression()), !dbg !3620
  br i1 false, label %cond.true, label %cond.false2, !dbg !3621

cond.true:                                        ; preds = %entry
  br i1 false, label %cond.true1, label %cond.false, !dbg !3622

cond.true1:                                       ; preds = %cond.true
  br i1 true, label %if.then, label %if.end, !dbg !3622

cond.false:                                       ; preds = %cond.true
  %call = call zeroext i1 @arch_test_bit(i64 noundef 19, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #13, !dbg !3622
  br i1 %call, label %if.then, label %if.end, !dbg !3622

cond.false2:                                      ; preds = %entry
  %call3 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 19) #13, !dbg !3622
  br i1 %call3, label %if.then, label %if.end, !dbg !3621

if.then:                                          ; preds = %cond.false2, %cond.false, %cond.true1
  call void @llvm.lifetime.start.p0(i64 24, ptr %sg_iter) #15, !dbg !3623
  call void @llvm.dbg.declare(metadata ptr %sg_iter, metadata !3611, metadata !DIExpression()), !dbg !3624
  br label %do.body, !dbg !3625

do.body:                                          ; preds = %if.then
  br label %do.body4, !dbg !3626

do.body4:                                         ; preds = %do.body
  br label %do.cond, !dbg !3628

do.cond:                                          ; preds = %do.body4
  br label %do.end, !dbg !3628

do.end:                                           ; preds = %do.cond
  call void asm sideeffect "mfence", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !3626, !srcloc !3630
  br label %do.cond5, !dbg !3626

do.cond5:                                         ; preds = %do.end
  br label %do.end6, !dbg !3626

do.end6:                                          ; preds = %do.cond5
  %0 = load ptr, ptr %st.addr, align 8, !dbg !3631
  %sgl = getelementptr inbounds %struct.sg_table, ptr %0, i32 0, i32 0, !dbg !3631
  %1 = load ptr, ptr %sgl, align 8, !dbg !3631
  %2 = load ptr, ptr %st.addr, align 8, !dbg !3631
  %orig_nents = getelementptr inbounds %struct.sg_table, ptr %2, i32 0, i32 2, !dbg !3631
  %3 = load i32, ptr %orig_nents, align 4, !dbg !3631
  call void @__sg_page_iter_start(ptr noundef %sg_iter, ptr noundef %1, i32 noundef %3, i64 noundef 0) #13, !dbg !3631
  br label %for.cond, !dbg !3631

for.cond:                                         ; preds = %for.body, %do.end6
  %call7 = call zeroext i1 @__sg_page_iter_next(ptr noundef %sg_iter) #13, !dbg !3633
  br i1 %call7, label %for.body, label %for.end, !dbg !3631

for.body:                                         ; preds = %for.cond
  %call8 = call ptr @sg_page_iter_page(ptr noundef %sg_iter) #13, !dbg !3635
  call void @drm_clflush_page(ptr noundef %call8) #13, !dbg !3636
  br label %for.cond, !dbg !3633, !llvm.loop !3637

for.end:                                          ; preds = %for.cond
  br label %do.body9, !dbg !3639

do.body9:                                         ; preds = %for.end
  br label %do.body10, !dbg !3640

do.body10:                                        ; preds = %do.body9
  br label %do.cond11, !dbg !3642

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !3642

do.end12:                                         ; preds = %do.cond11
  call void asm sideeffect "mfence", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !3640, !srcloc !3644
  br label %do.cond13, !dbg !3640

do.cond13:                                        ; preds = %do.end12
  br label %do.end14, !dbg !3640

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.end.p0(i64 24, ptr %sg_iter) #15, !dbg !3645
  br label %if.end21

if.end:                                           ; preds = %cond.false2, %cond.false, %cond.true1
  %call15 = call i32 @wbinvd_on_all_cpus() #13, !dbg !3646
  %tobool = icmp ne i32 %call15, 0, !dbg !3646
  br i1 %tobool, label %if.then16, label %if.end21, !dbg !3648

if.then16:                                        ; preds = %if.end
  br label %do.body17, !dbg !3649

do.body17:                                        ; preds = %if.then16
  br label %do.end19, !dbg !3651

do.end19:                                         ; preds = %do.body17
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef @.str) #14, !dbg !3649
  store i32 %call20, ptr %tmp, align 4, !dbg !3651
  %4 = load i32, ptr %tmp, align 4, !dbg !3649
  br label %if.end21, !dbg !3653

if.end21:                                         ; preds = %do.end14, %do.end19, %if.end
  ret void, !dbg !3654
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3655 dso_local void @__sg_page_iter_start(ptr noundef, ptr noundef, i32 noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3659 dso_local zeroext i1 @__sg_page_iter_next(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @drm_clflush_page(ptr noundef %page) #0 align 16 !dbg !3662 {
entry:
  %page.addr = alloca ptr, align 8
  %page_virtual = alloca ptr, align 8
  %i = alloca i32, align 4
  %size = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !3664, metadata !DIExpression()), !dbg !3671
  call void @llvm.lifetime.start.p0(i64 8, ptr %page_virtual) #15, !dbg !3672
  call void @llvm.dbg.declare(metadata ptr %page_virtual, metadata !3665, metadata !DIExpression()), !dbg !3673
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !3674
  call void @llvm.dbg.declare(metadata ptr %i, metadata !3668, metadata !DIExpression()), !dbg !3675
  call void @llvm.lifetime.start.p0(i64 4, ptr %size) #15, !dbg !3676
  call void @llvm.dbg.declare(metadata ptr %size, metadata !3669, metadata !DIExpression()), !dbg !3677
  %0 = load i16, ptr getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 24), align 2, !dbg !3678
  %conv = zext i16 %0 to i32, !dbg !3679
  store i32 %conv, ptr %size, align 4, !dbg !3677
  %1 = load ptr, ptr %page.addr, align 8, !dbg !3680
  %cmp = icmp eq ptr %1, null, !dbg !3680
  %lnot = xor i1 %cmp, true, !dbg !3680
  %lnot2 = xor i1 %lnot, true, !dbg !3680
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !3680
  %conv3 = sext i32 %lnot.ext to i64, !dbg !3680
  %expval = call i64 @llvm.expect.i64(i64 %conv3, i64 0), !dbg !3680
  %tobool = icmp ne i64 %expval, 0, !dbg !3680
  br i1 %tobool, label %if.then, label %if.end, !dbg !3682

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3683

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %page.addr, align 8, !dbg !3684
  %call = call ptr @kmap_atomic(ptr noundef %2) #13, !dbg !3685
  store ptr %call, ptr %page_virtual, align 8, !dbg !3686
  store i32 0, ptr %i, align 4, !dbg !3687
  br label %for.cond, !dbg !3689

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, ptr %i, align 4, !dbg !3690
  %conv4 = zext i32 %3 to i64, !dbg !3690
  %cmp5 = icmp ult i64 %conv4, 4096, !dbg !3692
  br i1 %cmp5, label %for.body, label %for.end, !dbg !3693

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %page_virtual, align 8, !dbg !3694
  %5 = load i32, ptr %i, align 4, !dbg !3695
  %idx.ext = zext i32 %5 to i64, !dbg !3696
  %add.ptr = getelementptr i8, ptr %4, i64 %idx.ext, !dbg !3696
  call void @clflushopt(ptr noundef %add.ptr) #13, !dbg !3697
  br label %for.inc, !dbg !3697

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %size, align 4, !dbg !3698
  %7 = load i32, ptr %i, align 4, !dbg !3699
  %add = add i32 %7, %6, !dbg !3699
  store i32 %add, ptr %i, align 4, !dbg !3699
  br label %for.cond, !dbg !3700, !llvm.loop !3701

for.end:                                          ; preds = %for.cond
  br label %do.body, !dbg !3703

do.body:                                          ; preds = %for.end
  br label %do.body7, !dbg !3704

do.body7:                                         ; preds = %do.body
  br label %do.cond, !dbg !3706

do.cond:                                          ; preds = %do.body7
  br label %do.end, !dbg !3706

do.end:                                           ; preds = %do.cond
  %8 = load ptr, ptr %page_virtual, align 8, !dbg !3704
  call void @__kunmap_atomic(ptr noundef %8) #13, !dbg !3704
  br label %do.cond8, !dbg !3704

do.cond8:                                         ; preds = %do.end
  br label %do.end9, !dbg !3704

do.end9:                                          ; preds = %do.cond8
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3708
  br label %cleanup, !dbg !3708

cleanup:                                          ; preds = %do.end9, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %size) #15, !dbg !3708
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !3708
  call void @llvm.lifetime.end.p0(i64 8, ptr %page_virtual) #15, !dbg !3708
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !3708

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @sg_page_iter_page(ptr noundef %piter) #6 align 16 !dbg !3709 {
entry:
  %piter.addr = alloca ptr, align 8
  store ptr %piter, ptr %piter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %piter.addr, metadata !3713, metadata !DIExpression()), !dbg !3714
  %0 = load ptr, ptr %piter.addr, align 8, !dbg !3715
  %sg = getelementptr inbounds %struct.sg_page_iter, ptr %0, i32 0, i32 0, !dbg !3715
  %1 = load ptr, ptr %sg, align 8, !dbg !3715
  %call = call ptr @sg_page(ptr noundef %1) #13, !dbg !3715
  %2 = load ptr, ptr %piter.addr, align 8, !dbg !3715
  %sg_pgoffset = getelementptr inbounds %struct.sg_page_iter, ptr %2, i32 0, i32 1, !dbg !3715
  %3 = load i32, ptr %sg_pgoffset, align 8, !dbg !3715
  %idx.ext = zext i32 %3 to i64, !dbg !3715
  %add.ptr = getelementptr %struct.page, ptr %call, i64 %idx.ext, !dbg !3715
  ret ptr %add.ptr, !dbg !3716
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @drm_clflush_virt_range(ptr noundef %addr, i64 noundef %length) #0 align 16 !dbg !3717 {
entry:
  %addr.addr = alloca ptr, align 8
  %length.addr = alloca i64, align 8
  %size = alloca i32, align 4
  %end = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3721, metadata !DIExpression()), !dbg !3727
  store i64 %length, ptr %length.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %length.addr, metadata !3722, metadata !DIExpression()), !dbg !3728
  br i1 false, label %cond.true, label %cond.false2, !dbg !3729

cond.true:                                        ; preds = %entry
  br i1 false, label %cond.true1, label %cond.false, !dbg !3730

cond.true1:                                       ; preds = %cond.true
  br i1 true, label %if.then, label %if.end, !dbg !3730

cond.false:                                       ; preds = %cond.true
  %call = call zeroext i1 @arch_test_bit(i64 noundef 19, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #13, !dbg !3730
  br i1 %call, label %if.then, label %if.end, !dbg !3730

cond.false2:                                      ; preds = %entry
  %call3 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 19) #13, !dbg !3730
  br i1 %call3, label %if.then, label %if.end, !dbg !3729

if.then:                                          ; preds = %cond.false2, %cond.false, %cond.true1
  call void @llvm.lifetime.start.p0(i64 4, ptr %size) #15, !dbg !3731
  call void @llvm.dbg.declare(metadata ptr %size, metadata !3723, metadata !DIExpression()), !dbg !3732
  %0 = load i16, ptr getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 24), align 2, !dbg !3733
  %conv = zext i16 %0 to i32, !dbg !3734
  store i32 %conv, ptr %size, align 4, !dbg !3732
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #15, !dbg !3735
  call void @llvm.dbg.declare(metadata ptr %end, metadata !3726, metadata !DIExpression()), !dbg !3736
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !3737
  %2 = load i64, ptr %length.addr, align 8, !dbg !3738
  %add.ptr = getelementptr i8, ptr %1, i64 %2, !dbg !3739
  store ptr %add.ptr, ptr %end, align 8, !dbg !3736
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !3740
  %4 = ptrtoint ptr %3 to i64, !dbg !3741
  %5 = load i32, ptr %size, align 4, !dbg !3742
  %sub = sub i32 0, %5, !dbg !3743
  %conv4 = sext i32 %sub to i64, !dbg !3743
  %and = and i64 %4, %conv4, !dbg !3744
  %6 = inttoptr i64 %and to ptr, !dbg !3745
  store ptr %6, ptr %addr.addr, align 8, !dbg !3746
  br label %do.body, !dbg !3747

do.body:                                          ; preds = %if.then
  br label %do.body5, !dbg !3748

do.body5:                                         ; preds = %do.body
  br label %do.cond, !dbg !3750

do.cond:                                          ; preds = %do.body5
  br label %do.end, !dbg !3750

do.end:                                           ; preds = %do.cond
  call void asm sideeffect "mfence", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !3748, !srcloc !3752
  br label %do.cond6, !dbg !3748

do.cond6:                                         ; preds = %do.end
  br label %do.end7, !dbg !3748

do.end7:                                          ; preds = %do.cond6
  br label %for.cond, !dbg !3753

for.cond:                                         ; preds = %for.inc, %do.end7
  %7 = load ptr, ptr %addr.addr, align 8, !dbg !3754
  %8 = load ptr, ptr %end, align 8, !dbg !3757
  %cmp = icmp ult ptr %7, %8, !dbg !3758
  br i1 %cmp, label %for.body, label %for.end, !dbg !3759

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %addr.addr, align 8, !dbg !3760
  call void @clflushopt(ptr noundef %9) #13, !dbg !3761
  br label %for.inc, !dbg !3761

for.inc:                                          ; preds = %for.body
  %10 = load i32, ptr %size, align 4, !dbg !3762
  %11 = load ptr, ptr %addr.addr, align 8, !dbg !3763
  %idx.ext = sext i32 %10 to i64, !dbg !3763
  %add.ptr9 = getelementptr i8, ptr %11, i64 %idx.ext, !dbg !3763
  store ptr %add.ptr9, ptr %addr.addr, align 8, !dbg !3763
  br label %for.cond, !dbg !3764, !llvm.loop !3765

for.end:                                          ; preds = %for.cond
  %12 = load ptr, ptr %end, align 8, !dbg !3767
  %add.ptr10 = getelementptr i8, ptr %12, i64 -1, !dbg !3768
  call void @clflushopt(ptr noundef %add.ptr10) #13, !dbg !3769
  br label %do.body11, !dbg !3770

do.body11:                                        ; preds = %for.end
  br label %do.body12, !dbg !3771

do.body12:                                        ; preds = %do.body11
  br label %do.cond13, !dbg !3773

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !3773

do.end14:                                         ; preds = %do.cond13
  call void asm sideeffect "mfence", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !3771, !srcloc !3775
  br label %do.cond15, !dbg !3771

do.cond15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !3771

do.end16:                                         ; preds = %do.cond15
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #15, !dbg !3776
  call void @llvm.lifetime.end.p0(i64 4, ptr %size) #15, !dbg !3776
  br label %if.end23

if.end:                                           ; preds = %cond.false2, %cond.false, %cond.true1
  %call17 = call i32 @wbinvd_on_all_cpus() #13, !dbg !3777
  %tobool = icmp ne i32 %call17, 0, !dbg !3777
  br i1 %tobool, label %if.then18, label %if.end23, !dbg !3779

if.then18:                                        ; preds = %if.end
  br label %do.body19, !dbg !3780

do.body19:                                        ; preds = %if.then18
  br label %do.end21, !dbg !3782

do.end21:                                         ; preds = %do.body19
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef @.str) #14, !dbg !3780
  store i32 %call22, ptr %tmp, align 4, !dbg !3782
  %13 = load i32, ptr %tmp, align 4, !dbg !3780
  br label %if.end23, !dbg !3784

if.end23:                                         ; preds = %do.end16, %do.end21, %if.end
  ret void, !dbg !3785
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clflushopt(ptr noundef %__p) #6 align 16 !dbg !3786 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__p.addr, metadata !3793, metadata !DIExpression()), !dbg !3794
  %0 = load ptr, ptr %__p.addr, align 8, !dbg !3795
  call void asm sideeffect "# ALT: oldnstr\0A661:\0A\09.byte 0x3e; clflush ${0:P}\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 9*32+23)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09.byte 0x66; clflush ${0:P}\0A6651:\0A.popsection\0A", "=*m,i,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %0, i32 0, ptr elementtype(i8) %0) #15, !dbg !3795, !srcloc !3796
  ret void, !dbg !3797
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @drm_need_swiotlb(i32 noundef %dma_bits) #0 align 16 !dbg !3798 {
entry:
  %retval = alloca i1, align 1
  %dma_bits.addr = alloca i32, align 4
  %tmp = alloca ptr, align 8
  %max_iomem = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__UNIQUE_ID___x308 = alloca i64, align 8
  %__UNIQUE_ID___y309 = alloca i64, align 8
  %tmp1 = alloca i64, align 8
  store i32 %dma_bits, ptr %dma_bits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dma_bits.addr, metadata !3802, metadata !DIExpression()), !dbg !3823
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #15, !dbg !3824
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !3803, metadata !DIExpression()), !dbg !3825
  call void @llvm.lifetime.start.p0(i64 8, ptr %max_iomem) #15, !dbg !3826
  call void @llvm.dbg.declare(metadata ptr %max_iomem, metadata !3817, metadata !DIExpression()), !dbg !3827
  store i64 0, ptr %max_iomem, align 8, !dbg !3827
  %call = call zeroext i1 @cc_platform_has(i32 noundef 0) #13, !dbg !3828
  br i1 %call, label %if.then, label %if.end, !dbg !3830

if.then:                                          ; preds = %entry
  store i1 true, ptr %retval, align 1, !dbg !3831
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3831

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr getelementptr inbounds (%struct.resource, ptr @iomem_resource, i32 0, i32 7), align 8, !dbg !3832
  store ptr %0, ptr %tmp, align 8, !dbg !3833
  br label %for.cond, !dbg !3834

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load ptr, ptr %tmp, align 8, !dbg !3835
  %tobool = icmp ne ptr %1, null, !dbg !3836
  br i1 %tobool, label %for.body, label %for.end, !dbg !3836

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x308) #15, !dbg !3837
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x308, metadata !3818, metadata !DIExpression()), !dbg !3837
  %2 = load i64, ptr %max_iomem, align 8, !dbg !3837
  store i64 %2, ptr %__UNIQUE_ID___x308, align 8, !dbg !3837
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y309) #15, !dbg !3837
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y309, metadata !3822, metadata !DIExpression()), !dbg !3837
  %3 = load ptr, ptr %tmp, align 8, !dbg !3837
  %end = getelementptr inbounds %struct.resource, ptr %3, i32 0, i32 1, !dbg !3837
  %4 = load i64, ptr %end, align 8, !dbg !3837
  store i64 %4, ptr %__UNIQUE_ID___y309, align 8, !dbg !3837
  %5 = load i64, ptr %__UNIQUE_ID___x308, align 8, !dbg !3837
  %6 = load i64, ptr %__UNIQUE_ID___y309, align 8, !dbg !3837
  %cmp = icmp ugt i64 %5, %6, !dbg !3837
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !3837

cond.true:                                        ; preds = %for.body
  %7 = load i64, ptr %__UNIQUE_ID___x308, align 8, !dbg !3837
  br label %cond.end, !dbg !3837

cond.false:                                       ; preds = %for.body
  %8 = load i64, ptr %__UNIQUE_ID___y309, align 8, !dbg !3837
  br label %cond.end, !dbg !3837

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %7, %cond.true ], [ %8, %cond.false ], !dbg !3837
  store i64 %cond, ptr %tmp1, align 8, !dbg !3837
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y309) #15, !dbg !3838
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x308) #15, !dbg !3838
  %9 = load i64, ptr %tmp1, align 8, !dbg !3837
  store i64 %9, ptr %max_iomem, align 8, !dbg !3839
  br label %for.inc, !dbg !3840

for.inc:                                          ; preds = %cond.end
  %10 = load ptr, ptr %tmp, align 8, !dbg !3841
  %sibling = getelementptr inbounds %struct.resource, ptr %10, i32 0, i32 6, !dbg !3842
  %11 = load ptr, ptr %sibling, align 8, !dbg !3842
  store ptr %11, ptr %tmp, align 8, !dbg !3843
  br label %for.cond, !dbg !3844, !llvm.loop !3845

for.end:                                          ; preds = %for.cond
  %12 = load i64, ptr %max_iomem, align 8, !dbg !3847
  %13 = load i32, ptr %dma_bits.addr, align 4, !dbg !3848
  %sh_prom = zext i32 %13 to i64, !dbg !3849
  %shl = shl i64 1, %sh_prom, !dbg !3849
  %cmp2 = icmp ugt i64 %12, %shl, !dbg !3850
  store i1 %cmp2, ptr %retval, align 1, !dbg !3851
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3851

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %max_iomem) #15, !dbg !3852
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #15, !dbg !3852
  %14 = load i1, ptr %retval, align 1, !dbg !3852
  ret i1 %14, !dbg !3852
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cc_platform_has(i32 noundef %attr) #6 align 16 !dbg !3853 {
entry:
  %attr.addr = alloca i32, align 4
  store i32 %attr, ptr %attr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !3857, metadata !DIExpression()), !dbg !3858
  ret i1 false, !dbg !3859
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @drm_memcpy_from_wc(ptr noundef %dst, ptr noundef %src, i64 noundef %len) #0 align 16 !dbg !3860 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %branch = alloca i8, align 1
  %tmp31 = alloca i64, align 8
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !3876, metadata !DIExpression()), !dbg !3888
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !3877, metadata !DIExpression()), !dbg !3889
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !3878, metadata !DIExpression()), !dbg !3890
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !3891
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !3879, metadata !DIExpression()), !dbg !3891
  %call = call i32 @preempt_count() #13, !dbg !3891
  %conv = sext i32 %call to i64, !dbg !3891
  %and = and i64 %conv, 16776960, !dbg !3891
  %tobool = icmp ne i64 %and, 0, !dbg !3891
  %lnot = xor i1 %tobool, true, !dbg !3891
  %lnot1 = xor i1 %lnot, true, !dbg !3891
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3891
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !3891
  %0 = load i32, ptr %__ret_warn_on, align 4, !dbg !3892
  %tobool2 = icmp ne i32 %0, 0, !dbg !3892
  %lnot3 = xor i1 %tobool2, true, !dbg !3892
  %lnot5 = xor i1 %lnot3, true, !dbg !3892
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !3892
  %conv7 = sext i32 %lnot.ext6 to i64, !dbg !3892
  %expval = call i64 @llvm.expect.i64(i64 %conv7, i64 0), !dbg !3892
  %tobool8 = icmp ne i64 %expval, 0, !dbg !3892
  br i1 %tobool8, label %if.then, label %if.end, !dbg !3891

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !3892

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #15, !dbg !3893
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !3882, metadata !DIExpression()), !dbg !3893
  store i32 2305, ptr %__flags, align 4, !dbg !3893
  br label %do.body9, !dbg !3893

do.body9:                                         ; preds = %do.body
  br label %do.cond, !dbg !3894

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !3894

do.end:                                           ; preds = %do.cond
  br label %do.body10, !dbg !3893

do.body10:                                        ; preds = %do.end
  %1 = load i32, ptr %__flags, align 4, !dbg !3896
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 309, i32 %1, i64 12) #15, !dbg !3896, !srcloc !3898
  br label %do.cond11, !dbg !3896

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !3896

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !3893

do.body13:                                        ; preds = %do.end12
  br label %do.cond14, !dbg !3899

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !3899

do.end15:                                         ; preds = %do.cond14
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #15, !dbg !3892
  br label %do.cond16, !dbg !3893

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !3893

do.end17:                                         ; preds = %do.cond16
  br label %if.end, !dbg !3893

if.end:                                           ; preds = %do.end17, %entry
  %2 = load i32, ptr %__ret_warn_on, align 4, !dbg !3891
  %tobool18 = icmp ne i32 %2, 0, !dbg !3891
  %lnot19 = xor i1 %tobool18, true, !dbg !3891
  %lnot21 = xor i1 %lnot19, true, !dbg !3891
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !3891
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !3891
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0), !dbg !3891
  store i64 %expval24, ptr %tmp, align 8, !dbg !3892
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !3901
  %3 = load i64, ptr %tmp, align 8, !dbg !3891
  %tobool25 = icmp ne i64 %3, 0, !dbg !3901
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !3902

if.then26:                                        ; preds = %if.end
  %4 = load ptr, ptr %dst.addr, align 8, !dbg !3903
  %5 = load ptr, ptr %src.addr, align 8, !dbg !3905
  %6 = load i64, ptr %len.addr, align 8, !dbg !3906
  call void @memcpy_fallback(ptr noundef %4, ptr noundef %5, i64 noundef %6) #13, !dbg !3907
  br label %return, !dbg !3908

if.end27:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr %branch) #15, !dbg !3909
  call void @llvm.dbg.declare(metadata ptr %branch, metadata !3885, metadata !DIExpression()), !dbg !3909
  %call28 = call zeroext i1 @arch_static_branch_jump(ptr noundef @has_movntdqa, i1 noundef zeroext true) #13, !dbg !3910
  %lnot29 = xor i1 %call28, true, !dbg !3910
  %frombool = zext i1 %lnot29 to i8, !dbg !3910
  store i8 %frombool, ptr %branch, align 1, !dbg !3910
  %7 = load i8, ptr %branch, align 1, !dbg !3909, !range !3913, !noundef !494
  %tobool32 = trunc i8 %7 to i1, !dbg !3909
  %lnot33 = xor i1 %tobool32, true, !dbg !3909
  %lnot35 = xor i1 %lnot33, true, !dbg !3909
  %lnot.ext36 = zext i1 %lnot35 to i32, !dbg !3909
  %conv37 = sext i32 %lnot.ext36 to i64, !dbg !3909
  %expval38 = call i64 @llvm.expect.i64(i64 %conv37, i64 1), !dbg !3909
  store i64 %expval38, ptr %tmp31, align 8, !dbg !3914
  call void @llvm.lifetime.end.p0(i64 1, ptr %branch) #15, !dbg !3915
  %8 = load i64, ptr %tmp31, align 8, !dbg !3909
  %tobool39 = icmp ne i64 %8, 0, !dbg !3915
  br i1 %tobool39, label %if.then40, label %if.end50, !dbg !3916

if.then40:                                        ; preds = %if.end27
  %9 = load ptr, ptr %dst.addr, align 8, !dbg !3917
  %is_iomem = getelementptr inbounds %struct.iosys_map, ptr %9, i32 0, i32 1, !dbg !3919
  %10 = load i8, ptr %is_iomem, align 8, !dbg !3919, !range !3913, !noundef !494
  %tobool41 = trunc i8 %10 to i1, !dbg !3919
  br i1 %tobool41, label %cond.true, label %cond.false, !dbg !3917

cond.true:                                        ; preds = %if.then40
  %11 = load ptr, ptr %dst.addr, align 8, !dbg !3920
  %12 = getelementptr inbounds %struct.iosys_map, ptr %11, i32 0, i32 0, !dbg !3921
  %13 = load ptr, ptr %12, align 8, !dbg !3921
  br label %cond.end, !dbg !3917

cond.false:                                       ; preds = %if.then40
  %14 = load ptr, ptr %dst.addr, align 8, !dbg !3922
  %15 = getelementptr inbounds %struct.iosys_map, ptr %14, i32 0, i32 0, !dbg !3923
  %16 = load ptr, ptr %15, align 8, !dbg !3923
  br label %cond.end, !dbg !3917

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %13, %cond.true ], [ %16, %cond.false ], !dbg !3917
  %17 = load ptr, ptr %src.addr, align 8, !dbg !3924
  %is_iomem43 = getelementptr inbounds %struct.iosys_map, ptr %17, i32 0, i32 1, !dbg !3925
  %18 = load i8, ptr %is_iomem43, align 8, !dbg !3925, !range !3913, !noundef !494
  %tobool44 = trunc i8 %18 to i1, !dbg !3925
  br i1 %tobool44, label %cond.true46, label %cond.false47, !dbg !3924

cond.true46:                                      ; preds = %cond.end
  %19 = load ptr, ptr %src.addr, align 8, !dbg !3926
  %20 = getelementptr inbounds %struct.iosys_map, ptr %19, i32 0, i32 0, !dbg !3927
  %21 = load ptr, ptr %20, align 8, !dbg !3927
  br label %cond.end48, !dbg !3924

cond.false47:                                     ; preds = %cond.end
  %22 = load ptr, ptr %src.addr, align 8, !dbg !3928
  %23 = getelementptr inbounds %struct.iosys_map, ptr %22, i32 0, i32 0, !dbg !3929
  %24 = load ptr, ptr %23, align 8, !dbg !3929
  br label %cond.end48, !dbg !3924

cond.end48:                                       ; preds = %cond.false47, %cond.true46
  %cond49 = phi ptr [ %21, %cond.true46 ], [ %24, %cond.false47 ], !dbg !3924
  %25 = load i64, ptr %len.addr, align 8, !dbg !3930
  call void @__drm_memcpy_from_wc(ptr noundef %cond, ptr noundef %cond49, i64 noundef %25) #13, !dbg !3931
  br label %return, !dbg !3932

if.end50:                                         ; preds = %if.end27
  %26 = load ptr, ptr %dst.addr, align 8, !dbg !3933
  %27 = load ptr, ptr %src.addr, align 8, !dbg !3934
  %28 = load i64, ptr %len.addr, align 8, !dbg !3935
  call void @memcpy_fallback(ptr noundef %26, ptr noundef %27, i64 noundef %28) #13, !dbg !3936
  br label %return, !dbg !3937

return:                                           ; preds = %if.end50, %cond.end48, %if.then26
  ret void, !dbg !3937
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @preempt_count() #2 align 16 !dbg !3938 {
entry:
  %pfo_val__ = alloca i32, align 4
  %tmp = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #15, !dbg !3943
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !3941, metadata !DIExpression()), !dbg !3943
  %0 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.19, ptr @pcpu_hot, i32 0, i32 1)) #16, !dbg !3943, !srcloc !3944
  store i32 %0, ptr %pfo_val__, align 4, !dbg !3943
  %1 = load i32, ptr %pfo_val__, align 4, !dbg !3943
  %conv = zext i32 %1 to i64, !dbg !3943
  %conv1 = trunc i64 %conv to i32, !dbg !3943
  store i32 %conv1, ptr %tmp, align 4, !dbg !3943
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #15, !dbg !3945
  %2 = load i32, ptr %tmp, align 4, !dbg !3943
  %and = and i32 %2, 2147483647, !dbg !3946
  ret i32 %and, !dbg !3947
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @memcpy_fallback(ptr noundef %dst, ptr noundef %src, i64 noundef %len) #0 align 16 !dbg !3948 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %bounce = alloca [128 x i8], align 16
  %_src = alloca ptr, align 8
  %_dst = alloca ptr, align 8
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !3950, metadata !DIExpression()), !dbg !3963
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !3951, metadata !DIExpression()), !dbg !3964
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !3952, metadata !DIExpression()), !dbg !3965
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !3966
  %is_iomem = getelementptr inbounds %struct.iosys_map, ptr %0, i32 0, i32 1, !dbg !3967
  %1 = load i8, ptr %is_iomem, align 8, !dbg !3967, !range !3913, !noundef !494
  %tobool = trunc i8 %1 to i1, !dbg !3967
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !3968

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %src.addr, align 8, !dbg !3969
  %is_iomem1 = getelementptr inbounds %struct.iosys_map, ptr %2, i32 0, i32 1, !dbg !3970
  %3 = load i8, ptr %is_iomem1, align 8, !dbg !3970, !range !3913, !noundef !494
  %tobool2 = trunc i8 %3 to i1, !dbg !3970
  br i1 %tobool2, label %if.else, label %if.then, !dbg !3971

if.then:                                          ; preds = %land.lhs.true
  %4 = load ptr, ptr %dst.addr, align 8, !dbg !3972
  %5 = getelementptr inbounds %struct.iosys_map, ptr %4, i32 0, i32 0, !dbg !3974
  %6 = load ptr, ptr %5, align 8, !dbg !3974
  %7 = load ptr, ptr %src.addr, align 8, !dbg !3975
  %8 = getelementptr inbounds %struct.iosys_map, ptr %7, i32 0, i32 0, !dbg !3976
  %9 = load ptr, ptr %8, align 8, !dbg !3976
  %10 = load i64, ptr %len.addr, align 8, !dbg !3977
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %6, ptr align 1 %9, i64 %10, i1 false), !dbg !3978
  br label %if.end19, !dbg !3979

if.else:                                          ; preds = %land.lhs.true, %entry
  %11 = load ptr, ptr %src.addr, align 8, !dbg !3980
  %is_iomem3 = getelementptr inbounds %struct.iosys_map, ptr %11, i32 0, i32 1, !dbg !3981
  %12 = load i8, ptr %is_iomem3, align 8, !dbg !3981, !range !3913, !noundef !494
  %tobool4 = trunc i8 %12 to i1, !dbg !3981
  br i1 %tobool4, label %if.else6, label %if.then5, !dbg !3982

if.then5:                                         ; preds = %if.else
  %13 = load ptr, ptr %dst.addr, align 8, !dbg !3983
  %14 = load ptr, ptr %src.addr, align 8, !dbg !3985
  %15 = getelementptr inbounds %struct.iosys_map, ptr %14, i32 0, i32 0, !dbg !3986
  %16 = load ptr, ptr %15, align 8, !dbg !3986
  %17 = load i64, ptr %len.addr, align 8, !dbg !3987
  call void @iosys_map_memcpy_to(ptr noundef %13, i64 noundef 0, ptr noundef %16, i64 noundef %17) #13, !dbg !3988
  br label %if.end18, !dbg !3989

if.else6:                                         ; preds = %if.else
  %18 = load ptr, ptr %dst.addr, align 8, !dbg !3990
  %is_iomem7 = getelementptr inbounds %struct.iosys_map, ptr %18, i32 0, i32 1, !dbg !3991
  %19 = load i8, ptr %is_iomem7, align 8, !dbg !3991, !range !3913, !noundef !494
  %tobool8 = trunc i8 %19 to i1, !dbg !3991
  br i1 %tobool8, label %if.else10, label %if.then9, !dbg !3992

if.then9:                                         ; preds = %if.else6
  %20 = load ptr, ptr %dst.addr, align 8, !dbg !3993
  %21 = getelementptr inbounds %struct.iosys_map, ptr %20, i32 0, i32 0, !dbg !3995
  %22 = load ptr, ptr %21, align 8, !dbg !3995
  %23 = load ptr, ptr %src.addr, align 8, !dbg !3996
  %24 = getelementptr inbounds %struct.iosys_map, ptr %23, i32 0, i32 0, !dbg !3997
  %25 = load ptr, ptr %24, align 8, !dbg !3997
  %26 = load i64, ptr %len.addr, align 8, !dbg !3998
  call void @memcpy_fromio(ptr noundef %22, ptr noundef %25, i64 noundef %26) #13, !dbg !3999
  br label %if.end17, !dbg !4000

if.else10:                                        ; preds = %if.else6
  call void @llvm.lifetime.start.p0(i64 128, ptr %bounce) #15, !dbg !4001
  call void @llvm.dbg.declare(metadata ptr %bounce, metadata !3953, metadata !DIExpression()), !dbg !4002
  call void @llvm.lifetime.start.p0(i64 8, ptr %_src) #15, !dbg !4003
  call void @llvm.dbg.declare(metadata ptr %_src, metadata !3961, metadata !DIExpression()), !dbg !4004
  %27 = load ptr, ptr %src.addr, align 8, !dbg !4005
  %28 = getelementptr inbounds %struct.iosys_map, ptr %27, i32 0, i32 0, !dbg !4006
  %29 = load ptr, ptr %28, align 8, !dbg !4006
  store ptr %29, ptr %_src, align 8, !dbg !4004
  call void @llvm.lifetime.start.p0(i64 8, ptr %_dst) #15, !dbg !4007
  call void @llvm.dbg.declare(metadata ptr %_dst, metadata !3962, metadata !DIExpression()), !dbg !4008
  %30 = load ptr, ptr %dst.addr, align 8, !dbg !4009
  %31 = getelementptr inbounds %struct.iosys_map, ptr %30, i32 0, i32 0, !dbg !4010
  %32 = load ptr, ptr %31, align 8, !dbg !4010
  store ptr %32, ptr %_dst, align 8, !dbg !4008
  br label %while.cond, !dbg !4011

while.cond:                                       ; preds = %while.body, %if.else10
  %33 = load i64, ptr %len.addr, align 8, !dbg !4012
  %cmp = icmp uge i64 %33, 128, !dbg !4013
  br i1 %cmp, label %while.body, label %while.end, !dbg !4011

while.body:                                       ; preds = %while.cond
  %arraydecay = getelementptr inbounds [128 x i8], ptr %bounce, i64 0, i64 0, !dbg !4014
  %34 = load ptr, ptr %_src, align 8, !dbg !4016
  call void @memcpy_fromio(ptr noundef %arraydecay, ptr noundef %34, i64 noundef 128) #13, !dbg !4017
  %35 = load ptr, ptr %_dst, align 8, !dbg !4018
  %arraydecay11 = getelementptr inbounds [128 x i8], ptr %bounce, i64 0, i64 0, !dbg !4019
  call void @memcpy_toio(ptr noundef %35, ptr noundef %arraydecay11, i64 noundef 128) #13, !dbg !4020
  %36 = load ptr, ptr %_src, align 8, !dbg !4021
  %add.ptr = getelementptr i8, ptr %36, i64 128, !dbg !4021
  store ptr %add.ptr, ptr %_src, align 8, !dbg !4021
  %37 = load ptr, ptr %_dst, align 8, !dbg !4022
  %add.ptr12 = getelementptr i8, ptr %37, i64 128, !dbg !4022
  store ptr %add.ptr12, ptr %_dst, align 8, !dbg !4022
  %38 = load i64, ptr %len.addr, align 8, !dbg !4023
  %sub = sub i64 %38, 128, !dbg !4023
  store i64 %sub, ptr %len.addr, align 8, !dbg !4023
  br label %while.cond, !dbg !4011, !llvm.loop !4024

while.end:                                        ; preds = %while.cond
  %39 = load i64, ptr %len.addr, align 8, !dbg !4026
  %tobool13 = icmp ne i64 %39, 0, !dbg !4026
  br i1 %tobool13, label %if.then14, label %if.end, !dbg !4028

if.then14:                                        ; preds = %while.end
  %arraydecay15 = getelementptr inbounds [128 x i8], ptr %bounce, i64 0, i64 0, !dbg !4029
  %40 = load ptr, ptr %_src, align 8, !dbg !4031
  call void @memcpy_fromio(ptr noundef %arraydecay15, ptr noundef %40, i64 noundef 128) #13, !dbg !4032
  %41 = load ptr, ptr %_dst, align 8, !dbg !4033
  %arraydecay16 = getelementptr inbounds [128 x i8], ptr %bounce, i64 0, i64 0, !dbg !4034
  call void @memcpy_toio(ptr noundef %41, ptr noundef %arraydecay16, i64 noundef 128) #13, !dbg !4035
  br label %if.end, !dbg !4036

if.end:                                           ; preds = %if.then14, %while.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %_dst) #15, !dbg !4037
  call void @llvm.lifetime.end.p0(i64 8, ptr %_src) #15, !dbg !4037
  call void @llvm.lifetime.end.p0(i64 128, ptr %bounce) #15, !dbg !4037
  br label %if.end17

if.end17:                                         ; preds = %if.end, %if.then9
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then5
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.then
  ret void, !dbg !4038
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch_jump(ptr noundef %key, i1 noundef zeroext %branch) #2 align 16 !dbg !4039 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !4047, metadata !DIExpression()), !dbg !4050
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !4048, metadata !DIExpression()), !dbg !4051
  %0 = load ptr, ptr %key.addr, align 8, !dbg !4052
  %1 = load i8, ptr %branch.addr, align 1, !dbg !4053, !range !3913, !noundef !494
  %tobool = trunc i8 %1 to i1, !dbg !4053
  callbr void asm sideeffect "1:jmp ${2:l}\0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i1 %tobool) #15
          to label %asm.fallthrough [label %l_yes], !dbg !4054, !srcloc !4055

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !4056
  br label %return, !dbg !4056

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !4049), !dbg !4057
  store i1 true, ptr %retval, align 1, !dbg !4058
  br label %return, !dbg !4058

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !4059
  ret i1 %2, !dbg !4059
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__drm_memcpy_from_wc(ptr noundef %dst, ptr noundef %src, i64 noundef %len) #0 align 16 !dbg !4060 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !4064, metadata !DIExpression()), !dbg !4067
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !4065, metadata !DIExpression()), !dbg !4068
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !4066, metadata !DIExpression()), !dbg !4069
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !4070
  %1 = ptrtoint ptr %0 to i64, !dbg !4070
  %2 = load ptr, ptr %src.addr, align 8, !dbg !4070
  %3 = ptrtoint ptr %2 to i64, !dbg !4070
  %or = or i64 %1, %3, !dbg !4070
  %4 = load i64, ptr %len.addr, align 8, !dbg !4070
  %or1 = or i64 %or, %4, !dbg !4070
  %and = and i64 %or1, 15, !dbg !4070
  %tobool = icmp ne i64 %and, 0, !dbg !4070
  %lnot = xor i1 %tobool, true, !dbg !4070
  %lnot2 = xor i1 %lnot, true, !dbg !4070
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4070
  %conv = sext i32 %lnot.ext to i64, !dbg !4070
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4070
  %tobool3 = icmp ne i64 %expval, 0, !dbg !4070
  br i1 %tobool3, label %if.then, label %if.else, !dbg !4072

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %dst.addr, align 8, !dbg !4073
  %6 = load ptr, ptr %src.addr, align 8, !dbg !4074
  %7 = load i64, ptr %len.addr, align 8, !dbg !4075
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %5, ptr align 1 %6, i64 %7, i1 false), !dbg !4076
  br label %if.end13, !dbg !4076

if.else:                                          ; preds = %entry
  %8 = load i64, ptr %len.addr, align 8, !dbg !4077
  %tobool4 = icmp ne i64 %8, 0, !dbg !4077
  %lnot5 = xor i1 %tobool4, true, !dbg !4077
  %lnot7 = xor i1 %lnot5, true, !dbg !4077
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !4077
  %conv9 = sext i32 %lnot.ext8 to i64, !dbg !4077
  %expval10 = call i64 @llvm.expect.i64(i64 %conv9, i64 1), !dbg !4077
  %tobool11 = icmp ne i64 %expval10, 0, !dbg !4077
  br i1 %tobool11, label %if.then12, label %if.end, !dbg !4079

if.then12:                                        ; preds = %if.else
  %9 = load ptr, ptr %dst.addr, align 8, !dbg !4080
  %10 = load ptr, ptr %src.addr, align 8, !dbg !4081
  %11 = load i64, ptr %len.addr, align 8, !dbg !4082
  %shr = lshr i64 %11, 4, !dbg !4083
  call void @__memcpy_ntdqa(ptr noundef %9, ptr noundef %10, i64 noundef %shr) #13, !dbg !4084
  br label %if.end, !dbg !4084

if.end:                                           ; preds = %if.then12, %if.else
  br label %if.end13

if.end13:                                         ; preds = %if.end, %if.then
  ret void, !dbg !4085
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @drm_memcpy_init_early() #0 align 16 !dbg !4086 {
entry:
  br i1 false, label %cond.true, label %cond.false2, !dbg !4087

cond.true:                                        ; preds = %entry
  br i1 false, label %cond.true1, label %cond.false, !dbg !4089

cond.true1:                                       ; preds = %cond.true
  br i1 true, label %land.lhs.true, label %if.end, !dbg !4089

cond.false:                                       ; preds = %cond.true
  %call = call zeroext i1 @arch_test_bit(i64 noundef 147, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #13, !dbg !4089
  br i1 %call, label %land.lhs.true, label %if.end, !dbg !4089

cond.false2:                                      ; preds = %entry
  %call3 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 147) #13, !dbg !4089
  br i1 %call3, label %land.lhs.true, label %if.end, !dbg !4087

land.lhs.true:                                    ; preds = %cond.false2, %cond.false, %cond.true1
  br i1 false, label %cond.true4, label %cond.false5, !dbg !4090

cond.true4:                                       ; preds = %land.lhs.true
  br i1 true, label %if.end, label %if.then, !dbg !4091

cond.false5:                                      ; preds = %land.lhs.true
  %call6 = call zeroext i1 @arch_test_bit(i64 noundef 159, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #13, !dbg !4091
  br i1 %call6, label %if.end, label %if.then, !dbg !4090

if.then:                                          ; preds = %cond.false5, %cond.true4
  call void @static_key_enable(ptr noundef @has_movntdqa) #13, !dbg !4092
  br label %if.end, !dbg !4092

if.end:                                           ; preds = %if.then, %cond.false5, %cond.true4, %cond.false2, %cond.false, %cond.true1
  ret void, !dbg !4093
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4094 dso_local void @static_key_enable(ptr noundef) #3

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #2 align 16 !dbg !4097 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4101, metadata !DIExpression()), !dbg !4103
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4102, metadata !DIExpression()), !dbg !4104
  %0 = load i64, ptr %nr.addr, align 8, !dbg !4105
  %and = and i64 %0, 63, !dbg !4106
  %shl = shl i64 1, %and, !dbg !4107
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !4108
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4109
  %shr = ashr i64 %2, 6, !dbg !4110
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !4108
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !4108
  %and1 = and i64 %shl, %3, !dbg !4111
  %cmp = icmp ne i64 %and1, 0, !dbg !4112
  ret i1 %cmp, !dbg !4113
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #2 align 16 !dbg !4114 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4116, metadata !DIExpression()), !dbg !4119
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4117, metadata !DIExpression()), !dbg !4120
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #15, !dbg !4121
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !4118, metadata !DIExpression()), !dbg !4122
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4123
  %1 = load i64, ptr %nr.addr, align 8, !dbg !4124
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #15, !dbg !4125, !srcloc !4126
  %3 = icmp ult i8 %2, 2, !dbg !4125
  call void @llvm.assume(i1 %3), !dbg !4125
  store i8 %2, ptr %oldbit, align 1, !dbg !4125
  %4 = load i8, ptr %oldbit, align 1, !dbg !4127, !range !3913, !noundef !494
  %tobool = trunc i8 %4 to i1, !dbg !4127
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #15, !dbg !4128
  ret i1 %tobool, !dbg !4129
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kmap_atomic(ptr noundef %page) #6 align 16 !dbg !4130 {
entry:
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !4134, metadata !DIExpression()), !dbg !4135
  br label %do.body, !dbg !4136

do.body:                                          ; preds = %entry
  call void @__preempt_count_add(i32 noundef 1) #13, !dbg !4138
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !4138, !srcloc !4140
  br label %do.end, !dbg !4138

do.end:                                           ; preds = %do.body
  call void @pagefault_disable() #13, !dbg !4141
  %0 = load ptr, ptr %page.addr, align 8, !dbg !4142
  %call = call ptr @lowmem_page_address(ptr noundef %0) #13, !dbg !4142
  ret ptr %call, !dbg !4143
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__kunmap_atomic(ptr noundef %addr) #6 align 16 !dbg !3434 {
entry:
  %addr.addr = alloca ptr, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3439, metadata !DIExpression()), !dbg !4144
  call void @pagefault_enable() #13, !dbg !4145
  br label %do.body, !dbg !4146

do.body:                                          ; preds = %entry
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !4148, !srcloc !4150
  %call = call zeroext i1 @__preempt_count_dec_and_test() #13, !dbg !4151
  %lnot = xor i1 %call, true, !dbg !4151
  %lnot1 = xor i1 %lnot, true, !dbg !4151
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4151
  %conv = sext i32 %lnot.ext to i64, !dbg !4151
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4151
  %tobool = icmp ne i64 %expval, 0, !dbg !4151
  br i1 %tobool, label %if.then, label %if.end, !dbg !4148

if.then:                                          ; preds = %do.body
  br label %do.body2, !dbg !4151

do.body2:                                         ; preds = %if.then
  %0 = call i64 @llvm.read_register.i64(metadata !3463), !dbg !4153
  %1 = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %0) #15, !dbg !4153, !srcloc !4155
  call void @llvm.write_register.i64(metadata !3463, i64 %1), !dbg !4153
  br label %do.end, !dbg !4153

do.end:                                           ; preds = %do.body2
  br label %if.end, !dbg !4153

if.end:                                           ; preds = %do.end, %do.body
  br label %do.end3, !dbg !4148

do.end3:                                          ; preds = %if.end
  ret void, !dbg !4156
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__preempt_count_add(i32 noundef %val) #2 align 16 !dbg !4157 {
entry:
  %val.addr = alloca i32, align 4
  %pao_ID__ = alloca i32, align 4
  %pto_val__ = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !4159, metadata !DIExpression()), !dbg !4166
  br label %do.body, !dbg !4167

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #15, !dbg !4168
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !4160, metadata !DIExpression()), !dbg !4168
  %0 = load i32, ptr %val.addr, align 4, !dbg !4168
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !4168
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !4168

land.lhs.true:                                    ; preds = %do.body
  %2 = load i32, ptr %val.addr, align 4, !dbg !4168
  %cmp = icmp eq i32 %2, 1, !dbg !4168
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !4168

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load i32, ptr %val.addr, align 4, !dbg !4168
  %cmp1 = icmp eq i32 %3, -1, !dbg !4168
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !4168

cond.true:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %4 = load i32, ptr %val.addr, align 4, !dbg !4168
  br label %cond.end, !dbg !4168

cond.false:                                       ; preds = %lor.lhs.false, %do.body
  br label %cond.end, !dbg !4168

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ 0, %cond.false ], !dbg !4168
  store i32 %cond, ptr %pao_ID__, align 4, !dbg !4168
  %5 = load i32, ptr %pao_ID__, align 4, !dbg !4169
  %cmp2 = icmp eq i32 %5, 1, !dbg !4169
  br i1 %cmp2, label %if.then, label %if.else, !dbg !4168

if.then:                                          ; preds = %cond.end
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.19, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.19, ptr @pcpu_hot, i32 0, i32 1)) #15, !dbg !4170, !srcloc !4172
  br label %if.end8, !dbg !4169

if.else:                                          ; preds = %cond.end
  %6 = load i32, ptr %pao_ID__, align 4, !dbg !4173
  %cmp3 = icmp eq i32 %6, -1, !dbg !4173
  br i1 %cmp3, label %if.then4, label %if.else5, !dbg !4169

if.then4:                                         ; preds = %if.else
  call void asm "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.19, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.19, ptr @pcpu_hot, i32 0, i32 1)) #15, !dbg !4174, !srcloc !4176
  br label %if.end, !dbg !4173

if.else5:                                         ; preds = %if.else
  br label %do.body6, !dbg !4173

do.body6:                                         ; preds = %if.else5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pto_val__) #15, !dbg !4177
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !4162, metadata !DIExpression()), !dbg !4177
  %7 = load i32, ptr %val.addr, align 4, !dbg !4177
  %conv = sext i32 %7 to i64, !dbg !4177
  %and = and i64 %conv, 4294967295, !dbg !4177
  %conv7 = trunc i64 %and to i32, !dbg !4177
  store i32 %conv7, ptr %pto_val__, align 4, !dbg !4177
  %8 = load i32, ptr %pto_val__, align 4, !dbg !4177
  call void asm "addl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.19, ptr @pcpu_hot, i32 0, i32 1), i32 %8, ptr elementtype(i32) getelementptr inbounds (%struct.anon.19, ptr @pcpu_hot, i32 0, i32 1)) #15, !dbg !4177, !srcloc !4178
  call void @llvm.lifetime.end.p0(i64 4, ptr %pto_val__) #15, !dbg !4173
  br label %do.cond, !dbg !4177

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !4177

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #15, !dbg !4167
  br label %do.end10, !dbg !4168

do.end10:                                         ; preds = %if.end8
  ret void, !dbg !4179
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pagefault_disable() #6 align 16 !dbg !4180 {
entry:
  call void @pagefault_disabled_inc() #13, !dbg !4182
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !4183, !srcloc !4184
  ret void, !dbg !4185
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @lowmem_page_address(ptr noundef %page) #2 align 16 !dbg !4186 {
entry:
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !4192, metadata !DIExpression()), !dbg !4193
  %0 = load ptr, ptr %page.addr, align 8, !dbg !4194
  %1 = load i64, ptr @vmemmap_base, align 8, !dbg !4194
  %2 = inttoptr i64 %1 to ptr, !dbg !4194
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64, !dbg !4194
  %sub.ptr.rhs.cast = ptrtoint ptr %2 to i64, !dbg !4194
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !4194
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 64, !dbg !4194
  %shl = shl i64 %sub.ptr.div, 12, !dbg !4194
  %3 = load i64, ptr @page_offset_base, align 8, !dbg !4194
  %add = add i64 %shl, %3, !dbg !4194
  %4 = inttoptr i64 %add to ptr, !dbg !4194
  ret ptr %4, !dbg !4195
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pagefault_disabled_inc() #2 align 16 !dbg !4196 {
entry:
  %call = call ptr @get_current() #13, !dbg !4197
  %pagefault_disabled = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 181, !dbg !4198
  %0 = load i32, ptr %pagefault_disabled, align 4, !dbg !4199
  %inc = add i32 %0, 1, !dbg !4199
  store i32 %inc, ptr %pagefault_disabled, align 4, !dbg !4199
  ret void, !dbg !4200
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #2 align 16 !dbg !4201 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #15, !dbg !4212
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !4206, metadata !DIExpression()), !dbg !4212
  br label %do.body, !dbg !4212

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #15, !dbg !4213
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4208, metadata !DIExpression()), !dbg !4213
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4213
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !4213
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #15, !dbg !4212
  br label %do.cond, !dbg !4213

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4213

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #15, !dbg !4214
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !4210, metadata !DIExpression()), !dbg !4214
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #17, !dbg !4214, !srcloc !4215
  store i64 %1, ptr %pfo_val__, align 8, !dbg !4214
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !4214
  %3 = inttoptr i64 %2 to ptr, !dbg !4214
  store ptr %3, ptr %tmp, align 8, !dbg !4214
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #15, !dbg !4212
  %4 = load ptr, ptr %tmp, align 8, !dbg !4214
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !4212
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !4212
  store ptr %5, ptr %tmp1, align 8, !dbg !4212
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #15, !dbg !4216
  %6 = load ptr, ptr %tmp1, align 8, !dbg !4212
  ret ptr %6, !dbg !4217
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pagefault_enable() #6 align 16 !dbg !4218 {
entry:
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !4219, !srcloc !4220
  call void @pagefault_disabled_dec() #13, !dbg !4221
  ret void, !dbg !4222
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__preempt_count_dec_and_test() #2 align 16 !dbg !4223 {
entry:
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #15, !dbg !4229
  call void @llvm.dbg.declare(metadata ptr %c, metadata !4227, metadata !DIExpression()), !dbg !4229
  %0 = call i8 asm sideeffect "decl %gs:$0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.19, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.19, ptr @pcpu_hot, i32 0, i32 1)) #15, !dbg !4229, !srcloc !4230
  %1 = icmp ult i8 %0, 2, !dbg !4229
  call void @llvm.assume(i1 %1), !dbg !4229
  store i8 %0, ptr %c, align 1, !dbg !4229
  %2 = load i8, ptr %c, align 1, !dbg !4229, !range !3913, !noundef !494
  %tobool = trunc i8 %2 to i1, !dbg !4229
  %frombool = zext i1 %tobool to i8, !dbg !4229
  store i8 %frombool, ptr %tmp, align 1, !dbg !4229
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #15, !dbg !4231
  %3 = load i8, ptr %tmp, align 1, !dbg !4229, !range !3913, !noundef !494
  %tobool1 = trunc i8 %3 to i1, !dbg !4229
  ret i1 %tobool1, !dbg !4232
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #10

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pagefault_disabled_dec() #2 align 16 !dbg !4233 {
entry:
  %call = call ptr @get_current() #13, !dbg !4234
  %pagefault_disabled = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 181, !dbg !4235
  %0 = load i32, ptr %pagefault_disabled, align 4, !dbg !4236
  %dec = add i32 %0, -1, !dbg !4236
  store i32 %dec, ptr %pagefault_disabled, align 4, !dbg !4236
  ret void, !dbg !4237
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @sg_page(ptr noundef %sg) #6 align 16 !dbg !4238 {
entry:
  %sg.addr = alloca ptr, align 8
  store ptr %sg, ptr %sg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sg.addr, metadata !4242, metadata !DIExpression()), !dbg !4243
  %0 = load ptr, ptr %sg.addr, align 8, !dbg !4244
  %page_link = getelementptr inbounds %struct.scatterlist, ptr %0, i32 0, i32 0, !dbg !4245
  %1 = load i64, ptr %page_link, align 8, !dbg !4245
  %and = and i64 %1, -4, !dbg !4246
  %2 = inttoptr i64 %and to ptr, !dbg !4247
  ret ptr %2, !dbg !4248
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @iosys_map_memcpy_to(ptr noundef %dst, i64 noundef %dst_offset, ptr noundef %src, i64 noundef %len) #6 align 16 !dbg !4249 {
entry:
  %dst.addr = alloca ptr, align 8
  %dst_offset.addr = alloca i64, align 8
  %src.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !4253, metadata !DIExpression()), !dbg !4257
  store i64 %dst_offset, ptr %dst_offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst_offset.addr, metadata !4254, metadata !DIExpression()), !dbg !4258
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !4255, metadata !DIExpression()), !dbg !4259
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !4256, metadata !DIExpression()), !dbg !4260
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !4261
  %is_iomem = getelementptr inbounds %struct.iosys_map, ptr %0, i32 0, i32 1, !dbg !4263
  %1 = load i8, ptr %is_iomem, align 8, !dbg !4263, !range !3913, !noundef !494
  %tobool = trunc i8 %1 to i1, !dbg !4263
  br i1 %tobool, label %if.then, label %if.else, !dbg !4264

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dst.addr, align 8, !dbg !4265
  %3 = getelementptr inbounds %struct.iosys_map, ptr %2, i32 0, i32 0, !dbg !4266
  %4 = load ptr, ptr %3, align 8, !dbg !4266
  %5 = load i64, ptr %dst_offset.addr, align 8, !dbg !4267
  %add.ptr = getelementptr i8, ptr %4, i64 %5, !dbg !4268
  %6 = load ptr, ptr %src.addr, align 8, !dbg !4269
  %7 = load i64, ptr %len.addr, align 8, !dbg !4270
  call void @memcpy_toio(ptr noundef %add.ptr, ptr noundef %6, i64 noundef %7) #13, !dbg !4271
  br label %if.end, !dbg !4271

if.else:                                          ; preds = %entry
  %8 = load ptr, ptr %dst.addr, align 8, !dbg !4272
  %9 = getelementptr inbounds %struct.iosys_map, ptr %8, i32 0, i32 0, !dbg !4273
  %10 = load ptr, ptr %9, align 8, !dbg !4273
  %11 = load i64, ptr %dst_offset.addr, align 8, !dbg !4274
  %add.ptr1 = getelementptr i8, ptr %10, i64 %11, !dbg !4275
  %12 = load ptr, ptr %src.addr, align 8, !dbg !4276
  %13 = load i64, ptr %len.addr, align 8, !dbg !4277
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr1, ptr align 1 %12, i64 %13, i1 false), !dbg !4278
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !4279
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4280 dso_local void @memcpy_fromio(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4286 dso_local void @memcpy_toio(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__memcpy_ntdqa(ptr noundef %dst, ptr noundef %src, i64 noundef %len) #0 align 16 !dbg !4289 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !4291, metadata !DIExpression()), !dbg !4294
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !4292, metadata !DIExpression()), !dbg !4295
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !4293, metadata !DIExpression()), !dbg !4296
  call void @kernel_fpu_begin() #13, !dbg !4297
  br label %while.cond, !dbg !4298

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, ptr %len.addr, align 8, !dbg !4299
  %cmp = icmp uge i64 %0, 4, !dbg !4300
  br i1 %cmp, label %while.body, label %while.end, !dbg !4298

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %src.addr, align 8, !dbg !4301
  %2 = load ptr, ptr %dst.addr, align 8, !dbg !4303
  call void asm sideeffect "movntdqa\09($0), %xmm0\0Amovntdqa 16($0), %xmm1\0Amovntdqa 32($0), %xmm2\0Amovntdqa 48($0), %xmm3\0Amovaps %xmm0,   ($1)\0Amovaps %xmm1, 16($1)\0Amovaps %xmm2, 32($1)\0Amovaps %xmm3, 48($1)\0A", "r,r,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %1, ptr %2) #15, !dbg !4304, !srcloc !4305
  %3 = load ptr, ptr %src.addr, align 8, !dbg !4306
  %add.ptr = getelementptr i8, ptr %3, i64 64, !dbg !4306
  store ptr %add.ptr, ptr %src.addr, align 8, !dbg !4306
  %4 = load ptr, ptr %dst.addr, align 8, !dbg !4307
  %add.ptr1 = getelementptr i8, ptr %4, i64 64, !dbg !4307
  store ptr %add.ptr1, ptr %dst.addr, align 8, !dbg !4307
  %5 = load i64, ptr %len.addr, align 8, !dbg !4308
  %sub = sub i64 %5, 4, !dbg !4308
  store i64 %sub, ptr %len.addr, align 8, !dbg !4308
  br label %while.cond, !dbg !4298, !llvm.loop !4309

while.end:                                        ; preds = %while.cond
  br label %while.cond2, !dbg !4311

while.cond2:                                      ; preds = %while.body3, %while.end
  %6 = load i64, ptr %len.addr, align 8, !dbg !4312
  %dec = add i64 %6, -1, !dbg !4312
  store i64 %dec, ptr %len.addr, align 8, !dbg !4312
  %tobool = icmp ne i64 %6, 0, !dbg !4311
  br i1 %tobool, label %while.body3, label %while.end6, !dbg !4311

while.body3:                                      ; preds = %while.cond2
  %7 = load ptr, ptr %src.addr, align 8, !dbg !4313
  %8 = load ptr, ptr %dst.addr, align 8, !dbg !4315
  call void asm sideeffect "movntdqa ($0), %xmm0\0Amovaps %xmm0, ($1)\0A", "r,r,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %7, ptr %8) #15, !dbg !4316, !srcloc !4317
  %9 = load ptr, ptr %src.addr, align 8, !dbg !4318
  %add.ptr4 = getelementptr i8, ptr %9, i64 16, !dbg !4318
  store ptr %add.ptr4, ptr %src.addr, align 8, !dbg !4318
  %10 = load ptr, ptr %dst.addr, align 8, !dbg !4319
  %add.ptr5 = getelementptr i8, ptr %10, i64 16, !dbg !4319
  store ptr %add.ptr5, ptr %dst.addr, align 8, !dbg !4319
  br label %while.cond2, !dbg !4311, !llvm.loop !4320

while.end6:                                       ; preds = %while.cond2
  call void @kernel_fpu_end() #13, !dbg !4322
  ret void, !dbg !4323
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kernel_fpu_begin() #6 align 16 !dbg !4324 {
entry:
  call void @kernel_fpu_begin_mask(i32 noundef 2) #13, !dbg !4326
  ret void, !dbg !4327
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4328 dso_local void @kernel_fpu_end() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4329 dso_local void @kernel_fpu_begin_mask(i32 noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #11 = { nocallback nounwind }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { noredzone }
attributes #14 = { cold noredzone }
attributes #15 = { nounwind }
attributes #16 = { nounwind memory(read) }
attributes #17 = { nounwind memory(none) }

!llvm.dbg.cu = !{!9}
!llvm.named.register.rsp = !{!3463}
!llvm.module.flags = !{!3464, !3465, !3466, !3467, !3468, !3469, !3470, !3471}
!llvm.ident = !{!3472}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 97, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/gpu/drm/drm_cache.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a1aadbdc17e3f3e19e8a7ff583f85deb")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 37)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_clflush_pages305", scope: !9, file: !2, line: 118, type: !99, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/gpu/drm/.drm_cache.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/gpu/drm/drm\22 -D KBUILD_BASENAME=\22drm_cache\22 -D KBUILD_MODNAME=\22drm\22 -D __KBUILD_MODNAME=kmod_drm -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/gpu/drm/drm_cache.ll drivers/gpu/drm/drm_cache.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !10, retainedTypes: !95, globals: !3418, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11, !17, !23, !28, !36, !52, !58, !65, !72, !80, !90}
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !12, line: 2052, baseType: !13, size: 32, elements: !14)
!12 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !{!15, !16}
!15 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!16 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !18, line: 54, baseType: !13, size: 32, elements: !19)
!18 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!19 = !{!20, !21, !22}
!20 = !DIEnumerator(name: "USRQUOTA", value: 0)
!21 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!22 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !24, line: 65, baseType: !13, size: 32, elements: !25)
!24 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!25 = !{!26, !27}
!26 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!27 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !29, line: 9, baseType: !13, size: 32, elements: !30)
!29 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!30 = !{!31, !32, !33, !34, !35}
!31 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!32 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!33 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!34 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!35 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !37, line: 1325, baseType: !13, size: 32, elements: !38)
!37 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!38 = !{!39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51}
!39 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!40 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!41 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!42 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!43 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!44 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!45 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!46 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!47 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!48 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!49 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!50 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!51 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!52 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !53, line: 16, baseType: !13, size: 32, elements: !54)
!53 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!54 = !{!55, !56, !57}
!55 = !DIEnumerator(name: "TT_NONE", value: 0)
!56 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!57 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!58 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !59, line: 51, baseType: !13, size: 32, elements: !60)
!59 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!60 = !{!61, !62, !63, !64}
!61 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!62 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!63 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!64 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!65 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !66, line: 15, baseType: !13, size: 32, elements: !67)
!66 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!67 = !{!68, !69, !70, !71}
!68 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!69 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!70 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!71 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !73, line: 68, baseType: !13, size: 32, elements: !74)
!73 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!74 = !{!75, !76, !77, !78, !79}
!75 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!76 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!77 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!78 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!79 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cc_attr", file: !81, line: 22, baseType: !13, size: 32, elements: !82)
!81 = !DIFile(filename: "./include/linux/cc_platform.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ec881fca7f8cde0abb6c64a9f159f14b")
!82 = !{!83, !84, !85, !86, !87, !88, !89}
!83 = !DIEnumerator(name: "CC_ATTR_MEM_ENCRYPT", value: 0)
!84 = !DIEnumerator(name: "CC_ATTR_HOST_MEM_ENCRYPT", value: 1)
!85 = !DIEnumerator(name: "CC_ATTR_GUEST_MEM_ENCRYPT", value: 2)
!86 = !DIEnumerator(name: "CC_ATTR_GUEST_STATE_ENCRYPT", value: 3)
!87 = !DIEnumerator(name: "CC_ATTR_GUEST_UNROLL_STRING_IO", value: 4)
!88 = !DIEnumerator(name: "CC_ATTR_GUEST_SEV_SNP", value: 5)
!89 = !DIEnumerator(name: "CC_ATTR_HOTPLUG_DISABLED", value: 6)
!90 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !91, line: 10, baseType: !13, size: 32, elements: !92)
!91 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!92 = !{!93, !94}
!93 = !DIEnumerator(name: "false", value: 0)
!94 = !DIEnumerator(name: "true", value: 1)
!95 = !{!96, !97, !99, !98, !100, !105, !107, !109, !111, !112, !3177, !1677, !3416}
!96 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !101, line: 23, baseType: !102)
!101 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !103, line: 31, baseType: !104)
!103 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!104 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !101, line: 21, baseType: !110)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !103, line: 27, baseType: !13)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !114, line: 746, size: 58368, elements: !115)
!114 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!115 = !{!116, !124, !125, !126, !137, !138, !139, !140, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !229, !240, !367, !371, !374, !405, !406, !407, !408, !419, !421, !422, !423, !424, !425, !426, !437, !438, !441, !442, !443, !444, !445, !446, !447, !448, !455, !456, !463, !464, !2496, !2497, !2498, !2499, !2500, !2501, !2502, !2503, !2504, !2505, !2506, !2507, !2508, !2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516, !2517, !2518, !2575, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588, !2590, !2591, !2592, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2606, !2607, !2608, !2609, !2610, !2611, !2612, !2624, !2630, !2631, !2632, !2633, !2634, !2636, !2639, !2646, !2651, !2654, !2657, !2660, !2663, !2803, !2834, !2835, !2836, !2837, !2838, !2839, !2840, !2841, !2842, !2845, !2846, !2847, !2856, !2864, !2865, !2866, !2867, !2868, !2873, !2874, !2875, !2878, !2879, !2882, !2885, !2888, !2896, !2899, !2900, !2986, !2987, !2988, !2989, !2990, !2996, !2997, !2998, !2999, !3002, !3003, !3006, !3009, !3010, !3013, !3014, !3015, !3018, !3019, !3020, !3021, !3022, !3023, !3036, !3037, !3038, !3039, !3040, !3041, !3042, !3043, !3044, !3055, !3056, !3062, !3065, !3066, !3067, !3068, !3069, !3070, !3071, !3074, !3146, !3148, !3149, !3150, !3151, !3152, !3164, !3179, !3180, !3181, !3182, !3183, !3184, !3185, !3186, !3187, !3188, !3189, !3193, !3194, !3195}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !113, file: !114, line: 752, baseType: !117, size: 192)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !118, line: 56, size: 192, elements: !119)
!118 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!119 = !{!120, !121, !122, !123}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !117, file: !118, line: 57, baseType: !98, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !117, file: !118, line: 58, baseType: !98, size: 64, offset: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !117, file: !118, line: 59, baseType: !109, size: 32, offset: 128)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !117, file: !118, line: 61, baseType: !109, size: 32, offset: 160)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !113, file: !114, line: 754, baseType: !13, size: 32, offset: 192)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !113, file: !114, line: 767, baseType: !99, size: 64, offset: 256)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !113, file: !114, line: 768, baseType: !127, size: 32, offset: 320)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !128, line: 113, baseType: !129)
!128 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !128, line: 111, size: 32, elements: !130)
!130 = !{!131}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !129, file: !128, line: 112, baseType: !132, size: 32)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !133, line: 174, baseType: !134)
!133 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !133, line: 172, size: 32, elements: !135)
!135 = !{!136}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !134, file: !133, line: 173, baseType: !96, size: 32)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !113, file: !114, line: 770, baseType: !13, size: 32, offset: 352)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !113, file: !114, line: 771, baseType: !13, size: 32, offset: 384)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !113, file: !114, line: 774, baseType: !96, size: 32, offset: 416)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !113, file: !114, line: 775, baseType: !141, size: 128, offset: 448)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !142, line: 58, size: 128, elements: !143)
!142 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!143 = !{!144, !150, !155, !159}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !141, file: !142, line: 59, baseType: !145, size: 64)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !146, line: 60, size: 64, elements: !147)
!146 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!147 = !{!148}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !145, file: !146, line: 61, baseType: !149, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, scope: !141, file: !142, line: 60, baseType: !151, size: 32, offset: 64)
!151 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !141, file: !142, line: 60, size: 32, elements: !152)
!152 = !{!153, !154}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !151, file: !142, line: 61, baseType: !13, size: 32)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !151, file: !142, line: 62, baseType: !132, size: 32)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !141, file: !142, line: 65, baseType: !156, size: 16, offset: 96)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !101, line: 19, baseType: !157)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !103, line: 24, baseType: !158)
!158 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !141, file: !142, line: 65, baseType: !156, size: 16, offset: 112)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !113, file: !114, line: 776, baseType: !13, size: 32, offset: 576)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !113, file: !114, line: 777, baseType: !98, size: 64, offset: 640)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !113, file: !114, line: 778, baseType: !112, size: 64, offset: 704)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !113, file: !114, line: 787, baseType: !96, size: 32, offset: 768)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !113, file: !114, line: 788, baseType: !96, size: 32, offset: 800)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !113, file: !114, line: 790, baseType: !96, size: 32, offset: 832)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !113, file: !114, line: 792, baseType: !96, size: 32, offset: 864)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !113, file: !114, line: 793, baseType: !96, size: 32, offset: 896)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !113, file: !114, line: 794, baseType: !96, size: 32, offset: 928)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !113, file: !114, line: 795, baseType: !13, size: 32, offset: 960)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !113, file: !114, line: 797, baseType: !171, size: 2048, offset: 1024)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !114, line: 551, size: 2048, elements: !172)
!172 = !{!173, !178, !186, !187, !188, !194, !195, !196, !197, !198, !199, !203, !204, !205, !206, !208, !211, !212, !213}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !171, file: !114, line: 553, baseType: !174, size: 128)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !114, line: 411, size: 128, elements: !175)
!175 = !{!176, !177}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !174, file: !114, line: 412, baseType: !98, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !174, file: !114, line: 413, baseType: !109, size: 32, offset: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !171, file: !114, line: 554, baseType: !179, size: 192, align: 64, offset: 128)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !180, line: 5, size: 192, align: 64, elements: !181)
!180 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!181 = !{!182, !183, !185}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !179, file: !180, line: 6, baseType: !98, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !179, file: !180, line: 7, baseType: !184, size: 64, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !179, file: !180, line: 8, baseType: !184, size: 64, offset: 128)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !171, file: !114, line: 555, baseType: !100, size: 64, offset: 320)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !171, file: !114, line: 556, baseType: !100, size: 64, offset: 384)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !171, file: !114, line: 558, baseType: !189, size: 128, offset: 448)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !133, line: 190, size: 128, elements: !190)
!190 = !{!191, !193}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !189, file: !133, line: 191, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !189, file: !133, line: 191, baseType: !192, size: 64, offset: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !171, file: !114, line: 559, baseType: !13, size: 32, offset: 576)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !171, file: !114, line: 561, baseType: !100, size: 64, offset: 640)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !171, file: !114, line: 562, baseType: !100, size: 64, offset: 704)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !171, file: !114, line: 563, baseType: !100, size: 64, offset: 768)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !171, file: !114, line: 564, baseType: !100, size: 64, offset: 832)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !171, file: !114, line: 565, baseType: !200, size: 64, offset: 896)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !101, line: 22, baseType: !201)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !103, line: 30, baseType: !202)
!202 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !171, file: !114, line: 566, baseType: !100, size: 64, offset: 960)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !171, file: !114, line: 568, baseType: !100, size: 64, offset: 1024)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !171, file: !114, line: 571, baseType: !96, size: 32, offset: 1088)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !171, file: !114, line: 572, baseType: !207, size: 64, offset: 1152)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !171, file: !114, line: 574, baseType: !209, size: 64, offset: 1216)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !114, line: 49, flags: DIFlagFwdDecl)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !171, file: !114, line: 576, baseType: !209, size: 64, offset: 1280)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !171, file: !114, line: 578, baseType: !98, size: 64, offset: 1344)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !171, file: !114, line: 588, baseType: !214, size: 512, align: 512, offset: 1536)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !114, line: 497, size: 512, align: 512, elements: !215)
!215 = !{!216, !217, !218, !219, !220, !221, !222, !223, !224}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !214, file: !114, line: 498, baseType: !100, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !214, file: !114, line: 499, baseType: !100, size: 64, offset: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !214, file: !114, line: 500, baseType: !100, size: 64, offset: 128)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !214, file: !114, line: 501, baseType: !109, size: 32, offset: 192)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !214, file: !114, line: 502, baseType: !109, size: 32, offset: 224)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !214, file: !114, line: 503, baseType: !98, size: 64, offset: 256)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !214, file: !114, line: 504, baseType: !98, size: 64, offset: 320)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !214, file: !114, line: 505, baseType: !98, size: 64, offset: 384)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !214, file: !114, line: 506, baseType: !225, size: 64, align: 64, offset: 448)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !114, line: 445, size: 64, align: 64, elements: !226)
!226 = !{!227, !228}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !225, file: !114, line: 446, baseType: !13, size: 32)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !225, file: !114, line: 447, baseType: !13, size: 32, offset: 32)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !113, file: !114, line: 798, baseType: !230, size: 384, offset: 3072)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !114, line: 592, size: 384, elements: !231)
!231 = !{!232, !233, !234, !235, !236, !237, !238}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !230, file: !114, line: 593, baseType: !189, size: 128)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !230, file: !114, line: 594, baseType: !98, size: 64, offset: 128)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !230, file: !114, line: 595, baseType: !98, size: 64, offset: 192)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !230, file: !114, line: 596, baseType: !13, size: 32, offset: 256)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !230, file: !114, line: 597, baseType: !158, size: 16, offset: 288)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !230, file: !114, line: 598, baseType: !158, size: 16, offset: 304)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !230, file: !114, line: 600, baseType: !239, size: 64, offset: 320)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !113, file: !114, line: 799, baseType: !241, size: 1792, offset: 3456)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !114, line: 610, size: 1792, elements: !242)
!242 = !{!243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !364, !365}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !241, file: !114, line: 611, baseType: !179, size: 192, align: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !241, file: !114, line: 618, baseType: !100, size: 64, offset: 192)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !241, file: !114, line: 619, baseType: !100, size: 64, offset: 256)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !241, file: !114, line: 620, baseType: !100, size: 64, offset: 320)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !241, file: !114, line: 621, baseType: !100, size: 64, offset: 384)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !241, file: !114, line: 622, baseType: !100, size: 64, offset: 448)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !241, file: !114, line: 629, baseType: !200, size: 64, offset: 512)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !241, file: !114, line: 630, baseType: !100, size: 64, offset: 576)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !241, file: !114, line: 631, baseType: !13, size: 32, offset: 640)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !241, file: !114, line: 653, baseType: !13, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !241, file: !114, line: 654, baseType: !13, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !241, file: !114, line: 655, baseType: !13, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !241, file: !114, line: 656, baseType: !13, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !241, file: !114, line: 662, baseType: !257, size: 512, offset: 704)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !24, line: 118, size: 512, elements: !258)
!258 = !{!259, !267, !268, !273, !360, !361, !362, !363}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !257, file: !24, line: 119, baseType: !260, size: 256)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !261, line: 9, size: 256, elements: !262)
!261 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!262 = !{!263, !264}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !260, file: !261, line: 10, baseType: !179, size: 192, align: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !260, file: !261, line: 11, baseType: !265, size: 64, offset: 192)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !266, line: 29, baseType: !200)
!266 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!267 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !257, file: !24, line: 120, baseType: !265, size: 64, offset: 256)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !257, file: !24, line: 121, baseType: !269, size: 64, offset: 320)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DISubroutineType(types: !271)
!271 = !{!23, !272}
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !257, file: !24, line: 122, baseType: !274, size: 64, offset: 384)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !24, line: 159, size: 512, align: 512, elements: !276)
!276 = !{!277, !328, !329, !333, !343, !344, !355, !359}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !275, file: !24, line: 160, baseType: !278, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !24, line: 215, size: 4608, align: 512, elements: !280)
!280 = !{!281, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !279, file: !24, line: 216, baseType: !282, size: 32)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !283, line: 23, baseType: !284)
!283 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !283, line: 14, size: 32, elements: !285)
!285 = !{!286}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !284, file: !283, line: 15, baseType: !287, size: 32)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !288, line: 44, baseType: !289)
!288 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !288, line: 14, size: 32, elements: !290)
!290 = !{!291}
!291 = !DIDerivedType(tag: DW_TAG_member, scope: !289, file: !288, line: 15, baseType: !292, size: 32)
!292 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !289, file: !288, line: 15, size: 32, elements: !293)
!293 = !{!294, !295, !303}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !292, file: !288, line: 16, baseType: !132, size: 32)
!295 = !DIDerivedType(tag: DW_TAG_member, scope: !292, file: !288, line: 24, baseType: !296, size: 16)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !292, file: !288, line: 24, size: 16, elements: !297)
!297 = !{!298, !302}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !296, file: !288, line: 25, baseType: !299, size: 8)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !101, line: 17, baseType: !300)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !103, line: 21, baseType: !301)
!301 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !296, file: !288, line: 26, baseType: !299, size: 8, offset: 8)
!303 = !DIDerivedType(tag: DW_TAG_member, scope: !292, file: !288, line: 28, baseType: !304, size: 32)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !292, file: !288, line: 28, size: 32, elements: !305)
!305 = !{!306, !307}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !304, file: !288, line: 29, baseType: !156, size: 16)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !304, file: !288, line: 30, baseType: !156, size: 16, offset: 16)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !279, file: !24, line: 217, baseType: !13, size: 32, offset: 32)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !279, file: !24, line: 218, baseType: !13, size: 32, offset: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !279, file: !24, line: 219, baseType: !13, size: 32, offset: 96)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !279, file: !24, line: 220, baseType: !13, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !279, file: !24, line: 221, baseType: !13, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !279, file: !24, line: 222, baseType: !13, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !279, file: !24, line: 223, baseType: !13, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !279, file: !24, line: 224, baseType: !13, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !279, file: !24, line: 226, baseType: !13, size: 32, offset: 160)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !279, file: !24, line: 227, baseType: !158, size: 16, offset: 192)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !279, file: !24, line: 228, baseType: !158, size: 16, offset: 208)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !279, file: !24, line: 229, baseType: !13, size: 32, offset: 224)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !279, file: !24, line: 235, baseType: !265, size: 64, offset: 256)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !279, file: !24, line: 236, baseType: !272, size: 64, offset: 320)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !279, file: !24, line: 237, baseType: !265, size: 64, offset: 384)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !279, file: !24, line: 238, baseType: !272, size: 64, offset: 448)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !279, file: !24, line: 239, baseType: !325, size: 4096, align: 512, offset: 512)
!325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !275, size: 4096, align: 512, elements: !326)
!326 = !{!327}
!327 = !DISubrange(count: 8)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !275, file: !24, line: 161, baseType: !13, size: 32, offset: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !275, file: !24, line: 162, baseType: !330, size: 32, offset: 96)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !133, line: 32, baseType: !331)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !332, line: 96, baseType: !96)
!332 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!333 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !275, file: !24, line: 163, baseType: !334, size: 32, offset: 128)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !335, line: 274, baseType: !336)
!335 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !335, line: 274, size: 32, elements: !337)
!337 = !{!338}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !336, file: !335, line: 274, baseType: !339, size: 32)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !335, line: 69, baseType: !340)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !335, line: 64, size: 32, elements: !341)
!341 = !{!342}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !340, file: !335, line: 65, baseType: !13, size: 32)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !275, file: !24, line: 164, baseType: !272, size: 64, offset: 192)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !275, file: !24, line: 165, baseType: !345, size: 128, offset: 256)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !261, line: 14, size: 128, elements: !346)
!346 = !{!347}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !345, file: !261, line: 15, baseType: !348, size: 128)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !180, line: 26, size: 128, elements: !349)
!349 = !{!350, !354}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !348, file: !180, line: 27, baseType: !351, size: 64)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !180, line: 12, size: 64, elements: !352)
!352 = !{!353}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !351, file: !180, line: 13, baseType: !184, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !348, file: !180, line: 28, baseType: !184, size: 64, offset: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !275, file: !24, line: 166, baseType: !356, size: 64, offset: 384)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DISubroutineType(types: !358)
!358 = !{!265}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !275, file: !24, line: 167, baseType: !265, size: 64, offset: 448)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !257, file: !24, line: 123, baseType: !299, size: 8, offset: 448)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !257, file: !24, line: 124, baseType: !299, size: 8, offset: 456)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !257, file: !24, line: 125, baseType: !299, size: 8, offset: 464)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !257, file: !24, line: 126, baseType: !299, size: 8, offset: 472)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !241, file: !114, line: 671, baseType: !257, size: 512, offset: 1216)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !241, file: !114, line: 679, baseType: !366, size: 64, offset: 1728)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !113, file: !114, line: 800, baseType: !368, size: 64, offset: 5248)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !370)
!370 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !114, line: 800, flags: DIFlagFwdDecl)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !113, file: !114, line: 809, baseType: !372, size: 64, offset: 5312)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !114, line: 70, flags: DIFlagFwdDecl)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !113, file: !114, line: 825, baseType: !375, size: 2048, align: 512, offset: 5632)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !114, line: 509, size: 2048, align: 512, elements: !376)
!376 = !{!377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !375, file: !114, line: 511, baseType: !100, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !375, file: !114, line: 512, baseType: !100, size: 64, offset: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !375, file: !114, line: 513, baseType: !100, size: 64, offset: 128)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !375, file: !114, line: 514, baseType: !100, size: 64, offset: 192)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !375, file: !114, line: 515, baseType: !100, size: 64, offset: 256)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !375, file: !114, line: 516, baseType: !100, size: 64, offset: 320)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !375, file: !114, line: 518, baseType: !100, size: 64, offset: 384)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !375, file: !114, line: 519, baseType: !100, size: 64, offset: 448)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !375, file: !114, line: 520, baseType: !200, size: 64, offset: 512)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !375, file: !114, line: 522, baseType: !100, size: 64, offset: 576)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !375, file: !114, line: 523, baseType: !100, size: 64, offset: 640)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !375, file: !114, line: 524, baseType: !200, size: 64, offset: 704)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !375, file: !114, line: 526, baseType: !200, size: 64, offset: 768)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !375, file: !114, line: 527, baseType: !100, size: 64, offset: 832)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !375, file: !114, line: 529, baseType: !100, size: 64, offset: 896)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !375, file: !114, line: 530, baseType: !100, size: 64, offset: 960)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !375, file: !114, line: 531, baseType: !100, size: 64, offset: 1024)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !375, file: !114, line: 532, baseType: !100, size: 64, offset: 1088)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !375, file: !114, line: 533, baseType: !100, size: 64, offset: 1152)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !375, file: !114, line: 535, baseType: !100, size: 64, offset: 1216)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !375, file: !114, line: 536, baseType: !100, size: 64, offset: 1280)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !375, file: !114, line: 537, baseType: !100, size: 64, offset: 1344)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !375, file: !114, line: 538, baseType: !100, size: 64, offset: 1408)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !375, file: !114, line: 539, baseType: !100, size: 64, offset: 1472)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !375, file: !114, line: 540, baseType: !100, size: 64, offset: 1536)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !375, file: !114, line: 541, baseType: !100, size: 64, offset: 1600)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !375, file: !114, line: 542, baseType: !100, size: 64, offset: 1664)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !375, file: !114, line: 543, baseType: !100, size: 64, offset: 1728)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !113, file: !114, line: 833, baseType: !13, size: 32, offset: 7680)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !113, file: !114, line: 836, baseType: !13, size: 32, offset: 7712)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !113, file: !114, line: 837, baseType: !96, size: 32, offset: 7744)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !113, file: !114, line: 838, baseType: !409, size: 64, offset: 7808)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !411)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !412, line: 19, baseType: !413)
!412 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !412, line: 19, size: 64, elements: !414)
!414 = !{!415}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !413, file: !412, line: 19, baseType: !416, size: 64)
!416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 64, elements: !417)
!417 = !{!418}
!418 = !DISubrange(count: 1)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !113, file: !114, line: 839, baseType: !420, size: 64, offset: 7872)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !113, file: !114, line: 840, baseType: !411, size: 64, offset: 7936)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !113, file: !114, line: 841, baseType: !99, size: 64, offset: 8000)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !113, file: !114, line: 843, baseType: !158, size: 16, offset: 8064)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !113, file: !114, line: 845, baseType: !158, size: 16, offset: 8080)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !113, file: !114, line: 848, baseType: !96, size: 32, offset: 8096)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !113, file: !114, line: 849, baseType: !427, size: 32, offset: 8128)
!427 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !114, line: 718, size: 32, elements: !428)
!428 = !{!429, !436}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !427, file: !114, line: 724, baseType: !430, size: 32)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !427, file: !114, line: 719, size: 32, elements: !431)
!431 = !{!432, !433, !434, !435}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !430, file: !114, line: 720, baseType: !299, size: 8)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !430, file: !114, line: 721, baseType: !299, size: 8, offset: 8)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !430, file: !114, line: 722, baseType: !299, size: 8, offset: 16)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !430, file: !114, line: 723, baseType: !299, size: 8, offset: 24)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !427, file: !114, line: 725, baseType: !109, size: 32)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !113, file: !114, line: 850, baseType: !189, size: 128, offset: 8192)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !113, file: !114, line: 851, baseType: !439, size: 64, offset: 8320)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !114, line: 60, flags: DIFlagFwdDecl)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !113, file: !114, line: 855, baseType: !98, size: 64, offset: 8384)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !113, file: !114, line: 856, baseType: !299, size: 8, offset: 8448)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !113, file: !114, line: 857, baseType: !299, size: 8, offset: 8456)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !113, file: !114, line: 858, baseType: !96, size: 32, offset: 8480)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !113, file: !114, line: 859, baseType: !189, size: 128, offset: 8512)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !113, file: !114, line: 860, baseType: !96, size: 32, offset: 8640)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !113, file: !114, line: 861, baseType: !189, size: 128, offset: 8704)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !113, file: !114, line: 873, baseType: !449, size: 256, offset: 8832)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !114, line: 376, size: 256, elements: !450)
!450 = !{!451, !452, !453, !454}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !449, file: !114, line: 381, baseType: !98, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !449, file: !114, line: 384, baseType: !104, size: 64, offset: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !449, file: !114, line: 389, baseType: !104, size: 64, offset: 128)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !449, file: !114, line: 392, baseType: !104, size: 64, offset: 192)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !113, file: !114, line: 875, baseType: !189, size: 128, offset: 9088)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !113, file: !114, line: 877, baseType: !457, size: 320, offset: 9216)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !458, line: 86, size: 320, elements: !459)
!458 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!459 = !{!460, !461, !462}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !457, file: !458, line: 87, baseType: !96, size: 32)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !457, file: !458, line: 88, baseType: !189, size: 128, offset: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !457, file: !458, line: 89, baseType: !189, size: 128, offset: 192)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !113, file: !114, line: 878, baseType: !179, size: 192, align: 64, offset: 9536)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !113, file: !114, line: 881, baseType: !465, size: 64, offset: 9728)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !37, line: 733, size: 10240, elements: !467)
!467 = !{!468, !2494}
!468 = !DIDerivedType(tag: DW_TAG_member, scope: !466, file: !37, line: 734, baseType: !469, size: 10240)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !466, file: !37, line: 734, size: 10240, elements: !470)
!470 = !{!471, !475, !497, !2392, !2393, !2394, !2395, !2396, !2397, !2404, !2405, !2406, !2412, !2413, !2414, !2415, !2416, !2417, !2418, !2419, !2420, !2421, !2422, !2423, !2424, !2425, !2426, !2427, !2428, !2429, !2430, !2431, !2432, !2433, !2434, !2435, !2436, !2437, !2438, !2439, !2440, !2441, !2445, !2447, !2450, !2474, !2475, !2476, !2479, !2480, !2481, !2484, !2485, !2486, !2492, !2493}
!471 = !DIDerivedType(tag: DW_TAG_member, scope: !469, file: !37, line: 739, baseType: !472, size: 512, align: 512)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !469, file: !37, line: 739, size: 512, align: 512, elements: !473)
!473 = !{!474}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !472, file: !37, line: 747, baseType: !132, size: 32)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !469, file: !37, line: 750, baseType: !476, size: 128, offset: 512)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !477, line: 218, size: 128, elements: !478)
!477 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!478 = !{!479, !495, !496}
!479 = !DIDerivedType(tag: DW_TAG_member, scope: !476, file: !477, line: 219, baseType: !480, size: 32)
!480 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !476, file: !477, line: 219, size: 32, elements: !481)
!481 = !{!482, !491}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !480, file: !477, line: 220, baseType: !483, size: 32)
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !484, line: 29, baseType: !485)
!484 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !484, line: 17, size: 32, elements: !486)
!486 = !{!487}
!487 = !DIDerivedType(tag: DW_TAG_member, scope: !485, file: !484, line: 18, baseType: !488, size: 32)
!488 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !485, file: !484, line: 18, size: 32, elements: !489)
!489 = !{!490}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !488, file: !484, line: 19, baseType: !284, size: 32)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !480, file: !477, line: 221, baseType: !492)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !477, line: 197, baseType: !493)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !477, line: 197, elements: !494)
!494 = !{}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !476, file: !477, line: 223, baseType: !13, size: 32, offset: 32)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !476, file: !477, line: 224, baseType: !99, size: 64, offset: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !469, file: !37, line: 752, baseType: !498, size: 64, offset: 640)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DISubroutineType(types: !500)
!500 = !{!98, !501, !98, !98, !98, !98}
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !12, line: 994, size: 1856, align: 64, elements: !503)
!503 = !{!504, !518, !519, !521, !528, !540, !543, !544, !620, !832, !841, !2382, !2383, !2384, !2385, !2386, !2387, !2389, !2390, !2391}
!504 = !DIDerivedType(tag: DW_TAG_member, scope: !502, file: !12, line: 995, baseType: !505, size: 128)
!505 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !502, file: !12, line: 995, size: 128, elements: !506)
!506 = !{!507, !508, !517}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !505, file: !12, line: 996, baseType: !145, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !505, file: !12, line: 997, baseType: !509, size: 128, align: 64)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !133, line: 232, size: 128, align: 64, elements: !510)
!510 = !{!511, !513}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !509, file: !133, line: 233, baseType: !512, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !509, file: !133, line: 234, baseType: !514, size: 64, offset: 64)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DISubroutineType(types: !516)
!516 = !{null, !512}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !505, file: !12, line: 998, baseType: !13, size: 32)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !502, file: !12, line: 1005, baseType: !483, size: 32, offset: 128)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !502, file: !12, line: 1006, baseType: !520, size: 32, offset: 160)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !133, line: 156, baseType: !13)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !502, file: !12, line: 1007, baseType: !522, size: 64, offset: 192)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !523, line: 13, baseType: !524)
!523 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !133, line: 181, baseType: !525)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !133, line: 179, size: 64, elements: !526)
!526 = !{!527}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !525, file: !133, line: 180, baseType: !200, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !502, file: !12, line: 1008, baseType: !529, size: 256, offset: 256)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !530, line: 66, size: 256, elements: !531)
!530 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!531 = !{!532, !533, !534, !539}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !529, file: !530, line: 67, baseType: !522, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !529, file: !530, line: 68, baseType: !282, size: 32, offset: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !529, file: !530, line: 70, baseType: !535, size: 32, offset: 96)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !536, line: 15, size: 32, elements: !537)
!536 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!537 = !{!538}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !535, file: !536, line: 20, baseType: !132, size: 32)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !529, file: !530, line: 72, baseType: !189, size: 128, offset: 128)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !502, file: !12, line: 1009, baseType: !541, size: 64, offset: 512)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !133, line: 52, baseType: !542)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !332, line: 88, baseType: !202)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !502, file: !12, line: 1010, baseType: !13, size: 32, offset: 576)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !502, file: !12, line: 1011, baseType: !545, size: 256, offset: 640)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !12, line: 948, size: 256, elements: !546)
!546 = !{!547, !570, !609, !610, !618, !619}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !545, file: !12, line: 949, baseType: !548, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !549, line: 34, baseType: !550)
!549 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !549, line: 25, size: 64, elements: !551)
!551 = !{!552}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !550, file: !549, line: 26, baseType: !553, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !554, line: 27, baseType: !555)
!554 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !554, line: 13, size: 64, elements: !556)
!556 = !{!557, !569}
!557 = !DIDerivedType(tag: DW_TAG_member, scope: !555, file: !554, line: 14, baseType: !558, size: 32)
!558 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !555, file: !554, line: 14, size: 32, elements: !559)
!559 = !{!560, !561}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !558, file: !554, line: 15, baseType: !132, size: 32)
!561 = !DIDerivedType(tag: DW_TAG_member, scope: !558, file: !554, line: 16, baseType: !562, size: 32)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !558, file: !554, line: 16, size: 32, elements: !563)
!563 = !{!564, !565}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !562, file: !554, line: 18, baseType: !299, size: 8)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !562, file: !554, line: 19, baseType: !566, size: 24, offset: 8)
!566 = !DICompositeType(tag: DW_TAG_array_type, baseType: !299, size: 24, elements: !567)
!567 = !{!568}
!568 = !DISubrange(count: 3)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !555, file: !554, line: 26, baseType: !287, size: 32, offset: 32)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !545, file: !12, line: 950, baseType: !571, size: 64, offset: 64)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !29, line: 59, size: 768, elements: !573)
!573 = !{!574, !575, !576, !577, !590, !591, !598, !599}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !572, file: !29, line: 61, baseType: !127, size: 32)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !572, file: !29, line: 62, baseType: !13, size: 32, offset: 32)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !572, file: !29, line: 63, baseType: !483, size: 32, offset: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !572, file: !29, line: 65, baseType: !578, size: 256, offset: 128)
!578 = !DICompositeType(tag: DW_TAG_array_type, baseType: !579, size: 256, elements: !588)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !133, line: 194, size: 64, elements: !580)
!580 = !{!581}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !579, file: !133, line: 195, baseType: !582, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !133, line: 198, size: 128, elements: !584)
!584 = !{!585, !586}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !583, file: !133, line: 199, baseType: !582, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !583, file: !133, line: 199, baseType: !587, size: 64, offset: 64)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!588 = !{!589}
!589 = !DISubrange(count: 4)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !572, file: !29, line: 66, baseType: !579, size: 64, offset: 384)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !572, file: !29, line: 68, baseType: !592, size: 192, offset: 448)
!592 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !593, line: 41, baseType: !594)
!593 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !593, line: 37, size: 192, elements: !595)
!595 = !{!596, !597}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !594, file: !593, line: 38, baseType: !483, size: 32)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !594, file: !593, line: 39, baseType: !189, size: 128, offset: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !572, file: !29, line: 69, baseType: !509, size: 128, align: 64, offset: 640)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !572, file: !29, line: 70, baseType: !600, offset: 768)
!600 = !DICompositeType(tag: DW_TAG_array_type, baseType: !601, elements: !607)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !29, line: 54, size: 128, elements: !602)
!602 = !{!603, !604}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !601, file: !29, line: 55, baseType: !96, size: 32)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !601, file: !29, line: 56, baseType: !605, size: 64, offset: 64)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !29, line: 56, flags: DIFlagFwdDecl)
!607 = !{!608}
!608 = !DISubrange(count: -1)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !545, file: !12, line: 951, baseType: !28, size: 32, offset: 128)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !545, file: !12, line: 952, baseType: !611, size: 32, offset: 160)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !612, line: 23, baseType: !613)
!612 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !612, line: 21, size: 32, elements: !614)
!614 = !{!615}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !613, file: !612, line: 22, baseType: !616, size: 32)
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !133, line: 37, baseType: !617)
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !332, line: 49, baseType: !13)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !545, file: !12, line: 952, baseType: !611, size: 32, offset: 192)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !545, file: !12, line: 953, baseType: !96, size: 32, offset: 224)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !502, file: !12, line: 1012, baseType: !621, size: 64, offset: 896)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !623)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !624, line: 110, size: 1472, elements: !625)
!624 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!625 = !{!626, !627, !628, !635, !636, !637, !638, !639, !640, !641, !642, !648, !649, !650, !651, !652, !653, !777, !778, !779, !780, !781, !812, !815, !819, !827}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !623, file: !624, line: 111, baseType: !522, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !623, file: !624, line: 112, baseType: !611, size: 32, offset: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !623, file: !624, line: 113, baseType: !629, size: 32, offset: 96)
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !612, line: 28, baseType: !630)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !612, line: 26, size: 32, elements: !631)
!631 = !{!632}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !630, file: !612, line: 27, baseType: !633, size: 32)
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !133, line: 38, baseType: !634)
!634 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !332, line: 50, baseType: !13)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !623, file: !624, line: 114, baseType: !611, size: 32, offset: 128)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !623, file: !624, line: 115, baseType: !629, size: 32, offset: 160)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !623, file: !624, line: 116, baseType: !611, size: 32, offset: 192)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !623, file: !624, line: 117, baseType: !629, size: 32, offset: 224)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !623, file: !624, line: 118, baseType: !611, size: 32, offset: 256)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !623, file: !624, line: 119, baseType: !629, size: 32, offset: 288)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !623, file: !624, line: 120, baseType: !13, size: 32, offset: 320)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !623, file: !624, line: 121, baseType: !643, size: 64, offset: 384)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !644, line: 24, baseType: !645)
!644 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !644, line: 24, size: 64, elements: !646)
!646 = !{!647}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !645, file: !644, line: 24, baseType: !100, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !623, file: !624, line: 122, baseType: !643, size: 64, offset: 448)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !623, file: !624, line: 123, baseType: !643, size: 64, offset: 512)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !623, file: !624, line: 124, baseType: !643, size: 64, offset: 576)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !623, file: !624, line: 125, baseType: !643, size: 64, offset: 640)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !623, file: !624, line: 127, baseType: !301, size: 8, offset: 704)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !623, file: !624, line: 129, baseType: !654, size: 64, offset: 768)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !656, line: 195, size: 1728, elements: !657)
!656 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!657 = !{!658, !659, !664, !669, !678, !681, !682, !689, !690, !691, !692, !695, !696, !697, !699, !700, !741, !762}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !655, file: !656, line: 196, baseType: !127, size: 32)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !655, file: !656, line: 197, baseType: !660, size: 32, offset: 32)
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !656, line: 28, baseType: !661)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !133, line: 104, baseType: !662)
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !101, line: 20, baseType: !663)
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !103, line: 26, baseType: !96)
!664 = !DIDerivedType(tag: DW_TAG_member, scope: !655, file: !656, line: 198, baseType: !665, size: 192, offset: 64)
!665 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !655, file: !656, line: 198, size: 192, elements: !666)
!666 = !{!667, !668}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !665, file: !656, line: 199, baseType: !189, size: 128)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !665, file: !656, line: 200, baseType: !179, size: 192, align: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !655, file: !656, line: 205, baseType: !670, size: 320, offset: 256)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !671, line: 48, size: 320, elements: !672)
!671 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!672 = !{!673, !674, !675, !676, !677}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !670, file: !671, line: 49, baseType: !522, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !670, file: !671, line: 55, baseType: !522, size: 64, offset: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !670, file: !671, line: 57, baseType: !535, size: 32, offset: 128)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !670, file: !671, line: 59, baseType: !282, size: 32, offset: 160)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !670, file: !671, line: 60, baseType: !189, size: 128, offset: 192)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !655, file: !656, line: 206, baseType: !679, size: 64, offset: 576)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !656, line: 206, flags: DIFlagFwdDecl)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !655, file: !656, line: 207, baseType: !99, size: 64, offset: 640)
!682 = !DIDerivedType(tag: DW_TAG_member, scope: !655, file: !656, line: 208, baseType: !683, size: 64, offset: 704)
!683 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !655, file: !656, line: 208, size: 64, elements: !684)
!684 = !{!685, !688}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !683, file: !656, line: 209, baseType: !686, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !687, line: 8, baseType: !201)
!687 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!688 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !683, file: !656, line: 210, baseType: !686, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !655, file: !656, line: 212, baseType: !686, size: 64, offset: 768)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !655, file: !656, line: 213, baseType: !611, size: 32, offset: 832)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !655, file: !656, line: 214, baseType: !629, size: 32, offset: 864)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !655, file: !656, line: 215, baseType: !693, size: 32, offset: 896)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !656, line: 31, baseType: !694)
!694 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !133, line: 110, baseType: !109)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !655, file: !656, line: 216, baseType: !158, size: 16, offset: 928)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !655, file: !656, line: 217, baseType: !158, size: 16, offset: 944)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !655, file: !656, line: 221, baseType: !698, size: 16, offset: 960)
!698 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !655, file: !656, line: 228, baseType: !98, size: 64, offset: 1024)
!700 = !DIDerivedType(tag: DW_TAG_member, scope: !655, file: !656, line: 245, baseType: !701, size: 320, offset: 1088)
!701 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !655, file: !656, line: 245, size: 320, elements: !702)
!702 = !{!703, !732}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !701, file: !656, line: 246, baseType: !704, size: 320)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !656, line: 114, size: 320, elements: !705)
!705 = !{!706, !707, !719, !722, !731}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !704, file: !656, line: 116, baseType: !98, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, scope: !704, file: !656, line: 117, baseType: !708, size: 64, offset: 64)
!708 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !704, file: !656, line: 117, size: 64, elements: !709)
!709 = !{!710, !718}
!710 = !DIDerivedType(tag: DW_TAG_member, scope: !708, file: !656, line: 118, baseType: !711, size: 64)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !708, file: !656, line: 118, size: 64, elements: !712)
!712 = !{!713, !714}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !711, file: !656, line: 120, baseType: !156, size: 16)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !711, file: !656, line: 121, baseType: !715, size: 48, offset: 16)
!715 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !716)
!716 = !{!717}
!717 = !DISubrange(count: 6)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !708, file: !656, line: 127, baseType: !98, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !704, file: !656, line: 129, baseType: !720, size: 64, offset: 128)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !656, line: 102, flags: DIFlagFwdDecl)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !704, file: !656, line: 130, baseType: !723, size: 64, offset: 192)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !656, line: 108, size: 192, elements: !725)
!725 = !{!726, !727, !728}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !724, file: !656, line: 109, baseType: !509, size: 128, align: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !724, file: !656, line: 110, baseType: !127, size: 32, offset: 128)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !724, file: !656, line: 111, baseType: !729, size: 8, offset: 160)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !133, line: 35, baseType: !730)
!730 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !704, file: !656, line: 131, baseType: !107, size: 64, offset: 256)
!732 = !DIDerivedType(tag: DW_TAG_member, scope: !701, file: !656, line: 247, baseType: !733, size: 320)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !701, file: !656, line: 247, size: 320, elements: !734)
!734 = !{!735, !736, !737, !738, !739}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !733, file: !656, line: 248, baseType: !98, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !733, file: !656, line: 249, baseType: !98, size: 64, offset: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !733, file: !656, line: 250, baseType: !720, size: 64, offset: 128)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !733, file: !656, line: 251, baseType: !723, size: 64, offset: 192)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !733, file: !656, line: 252, baseType: !740, size: 64, offset: 256)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, scope: !655, file: !656, line: 260, baseType: !742, size: 256, offset: 1408)
!742 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !655, file: !656, line: 260, size: 256, elements: !743)
!743 = !{!744, !750}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !742, file: !656, line: 261, baseType: !745, size: 256)
!745 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !656, line: 134, size: 256, elements: !746)
!746 = !{!747, !748}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !745, file: !656, line: 135, baseType: !99, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !745, file: !656, line: 136, baseType: !749, size: 256)
!749 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 256, elements: !588)
!750 = !DIDerivedType(tag: DW_TAG_member, scope: !742, file: !656, line: 262, baseType: !751, size: 256)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !742, file: !656, line: 262, size: 256, elements: !752)
!752 = !{!753, !754}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !751, file: !656, line: 264, baseType: !189, size: 128)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !751, file: !656, line: 265, baseType: !755, size: 128, offset: 128)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !756, line: 22, size: 128, elements: !757)
!756 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!757 = !{!758, !761}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !755, file: !756, line: 23, baseType: !759, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !756, line: 23, flags: DIFlagFwdDecl)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !755, file: !756, line: 24, baseType: !98, size: 64, offset: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !655, file: !656, line: 280, baseType: !763, size: 64, offset: 1664)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !656, line: 176, size: 192, elements: !765)
!765 = !{!766, !775, !776}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !764, file: !656, line: 177, baseType: !767, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !656, line: 171, baseType: !768)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DISubroutineType(types: !770)
!770 = !{!96, !654, !771, !773, !654}
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !721)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !745)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !764, file: !656, line: 178, baseType: !654, size: 64, offset: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !764, file: !656, line: 179, baseType: !720, size: 64, offset: 128)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !623, file: !624, line: 130, baseType: !654, size: 64, offset: 832)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !623, file: !624, line: 131, baseType: !654, size: 64, offset: 896)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !623, file: !624, line: 132, baseType: !654, size: 64, offset: 960)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !623, file: !624, line: 135, baseType: !99, size: 64, offset: 1024)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !623, file: !624, line: 137, baseType: !782, size: 64, offset: 1088)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !784, line: 14, size: 1088, elements: !785)
!784 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!785 = !{!786, !787, !796, !797, !798, !799, !800, !801}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !783, file: !784, line: 15, baseType: !127, size: 32)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !783, file: !784, line: 17, baseType: !788, size: 320, offset: 64)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !789, line: 22, size: 320, elements: !790)
!789 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!790 = !{!791, !792, !793, !794}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !788, file: !789, line: 23, baseType: !282, size: 32)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !788, file: !789, line: 24, baseType: !200, size: 64, offset: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !788, file: !789, line: 26, baseType: !189, size: 128, offset: 128)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !788, file: !789, line: 28, baseType: !795, size: 64, offset: 256)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !783, file: !784, line: 19, baseType: !98, size: 64, offset: 384)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !783, file: !784, line: 20, baseType: !522, size: 64, offset: 448)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !783, file: !784, line: 23, baseType: !583, size: 128, offset: 512)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !783, file: !784, line: 24, baseType: !611, size: 32, offset: 640)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !783, file: !784, line: 29, baseType: !522, size: 64, offset: 704)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !783, file: !784, line: 36, baseType: !802, size: 320, offset: 768)
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !803, line: 15, size: 320, elements: !804)
!803 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!804 = !{!805, !806, !807, !808, !809, !810, !811}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !802, file: !803, line: 16, baseType: !282, size: 32)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !802, file: !803, line: 18, baseType: !96, size: 32, offset: 32)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !802, file: !803, line: 19, baseType: !96, size: 32, offset: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !802, file: !803, line: 20, baseType: !96, size: 32, offset: 96)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !802, file: !803, line: 21, baseType: !96, size: 32, offset: 128)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !802, file: !803, line: 22, baseType: !98, size: 64, offset: 192)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !802, file: !803, line: 23, baseType: !98, size: 64, offset: 256)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !623, file: !624, line: 138, baseType: !813, size: 64, offset: 1152)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !612, line: 18, flags: DIFlagFwdDecl)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !623, file: !624, line: 139, baseType: !816, size: 64, offset: 1216)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !818, line: 16, flags: DIFlagFwdDecl)
!818 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!819 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !623, file: !624, line: 140, baseType: !820, size: 64, offset: 1280)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !624, line: 25, size: 64, elements: !822)
!822 = !{!823, !824, !825}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !821, file: !624, line: 26, baseType: !132, size: 32)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !821, file: !624, line: 27, baseType: !96, size: 32, offset: 32)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !821, file: !624, line: 28, baseType: !826, offset: 64)
!826 = !DICompositeType(tag: DW_TAG_array_type, baseType: !629, elements: !607)
!827 = !DIDerivedType(tag: DW_TAG_member, scope: !623, file: !624, line: 142, baseType: !828, size: 128, offset: 1344)
!828 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !623, file: !624, line: 142, size: 128, elements: !829)
!829 = !{!830, !831}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !828, file: !624, line: 143, baseType: !96, size: 32)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !828, file: !624, line: 144, baseType: !509, size: 128, align: 64)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !502, file: !12, line: 1013, baseType: !833, size: 256, offset: 960)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !12, line: 970, size: 256, elements: !834)
!834 = !{!835, !836, !837, !838, !839, !840}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !833, file: !12, line: 971, baseType: !98, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !833, file: !12, line: 972, baseType: !13, size: 32, offset: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !833, file: !12, line: 973, baseType: !13, size: 32, offset: 96)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !833, file: !12, line: 974, baseType: !13, size: 32, offset: 128)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !833, file: !12, line: 975, baseType: !13, size: 32, offset: 160)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !833, file: !12, line: 976, baseType: !541, size: 64, offset: 192)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !502, file: !12, line: 1014, baseType: !842, size: 128, offset: 1216)
!842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !843, line: 8, size: 128, elements: !844)
!843 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!844 = !{!845, !2381}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !842, file: !843, line: 9, baseType: !846, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !848, line: 70, size: 256, elements: !849)
!848 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!849 = !{!850, !2378, !2379, !2380}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !847, file: !848, line: 71, baseType: !851, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !853, line: 82, size: 1536, elements: !854)
!853 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!854 = !{!855, !856, !861, !869, !870, !885, !2345, !2347, !2360, !2361, !2362, !2363, !2364, !2370, !2371, !2372}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !852, file: !853, line: 84, baseType: !13, size: 32)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !852, file: !853, line: 85, baseType: !857, size: 32, offset: 32)
!857 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !335, line: 275, baseType: !858)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !335, line: 275, size: 32, elements: !859)
!859 = !{!860}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !858, file: !335, line: 275, baseType: !339, size: 32)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !852, file: !853, line: 86, baseType: !862, size: 128, offset: 64)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !863, line: 38, size: 128, elements: !864)
!863 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!864 = !{!865, !867}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !862, file: !863, line: 39, baseType: !866, size: 64)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !862, file: !863, line: 39, baseType: !868, size: 64, offset: 64)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !852, file: !853, line: 87, baseType: !851, size: 64, offset: 192)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !852, file: !853, line: 88, baseType: !871, size: 128, offset: 256)
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !853, line: 49, size: 128, elements: !872)
!872 = !{!873, !882}
!873 = !DIDerivedType(tag: DW_TAG_member, scope: !871, file: !853, line: 50, baseType: !874, size: 64)
!874 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !871, file: !853, line: 50, size: 64, elements: !875)
!875 = !{!876, !881}
!876 = !DIDerivedType(tag: DW_TAG_member, scope: !874, file: !853, line: 51, baseType: !877, size: 64)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !874, file: !853, line: 51, size: 64, elements: !878)
!878 = !{!879, !880}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !877, file: !853, line: 52, baseType: !109, size: 32)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !877, file: !853, line: 52, baseType: !109, size: 32, offset: 32)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !874, file: !853, line: 54, baseType: !100, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !871, file: !853, line: 56, baseType: !883, size: 64, offset: 64)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !301)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !852, file: !853, line: 89, baseType: !886, size: 64, offset: 384)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !12, line: 641, size: 4800, elements: !888)
!888 = !{!889, !891, !892, !893, !894, !895, !896, !899, !900, !1098, !1656, !2155, !2156, !2157, !2163, !2164, !2165, !2166, !2167, !2168, !2169, !2170, !2171, !2172, !2173, !2174, !2175, !2176, !2177, !2178, !2179, !2180, !2181, !2186, !2187, !2188, !2189, !2190, !2191, !2192, !2327, !2330, !2331, !2332, !2341, !2342, !2343, !2344}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !887, file: !12, line: 642, baseType: !890, size: 16)
!890 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !133, line: 24, baseType: !158)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !887, file: !12, line: 643, baseType: !158, size: 16, offset: 16)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !887, file: !12, line: 644, baseType: !611, size: 32, offset: 32)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !887, file: !12, line: 645, baseType: !189, size: 128, offset: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !887, file: !12, line: 646, baseType: !629, size: 32, offset: 192)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !887, file: !12, line: 647, baseType: !13, size: 32, offset: 224)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !887, file: !12, line: 650, baseType: !897, size: 64, offset: 256)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !12, line: 607, flags: DIFlagFwdDecl)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !887, file: !12, line: 651, baseType: !897, size: 64, offset: 320)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !887, file: !12, line: 654, baseType: !901, size: 64, offset: 384)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !903)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !12, line: 1966, size: 2048, align: 512, elements: !904)
!904 = !{!905, !909, !922, !928, !932, !936, !940, !944, !948, !952, !956, !957, !963, !967, !1005, !1036, !1046, !1052, !1056, !1060, !1064, !1068, !1072, !1078, !1082}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !903, file: !12, line: 1967, baseType: !906, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = !DISubroutineType(types: !908)
!908 = !{!851, !886, !851, !13}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !903, file: !12, line: 1968, baseType: !910, size: 64, offset: 64)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = !DISubroutineType(types: !912)
!912 = !{!107, !851, !886, !913}
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !915, line: 10, size: 128, elements: !916)
!915 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!916 = !{!917, !921}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !914, file: !915, line: 11, baseType: !918, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DISubroutineType(types: !920)
!920 = !{null, !99}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !914, file: !915, line: 12, baseType: !99, size: 64, offset: 64)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !903, file: !12, line: 1969, baseType: !923, size: 64, offset: 128)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = !DISubroutineType(types: !925)
!925 = !{!96, !926, !886, !96}
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !644, line: 42, flags: DIFlagFwdDecl)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !903, file: !12, line: 1970, baseType: !929, size: 64, offset: 192)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = !DISubroutineType(types: !931)
!931 = !{!897, !886, !96, !729}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !903, file: !12, line: 1972, baseType: !933, size: 64, offset: 256)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = !DISubroutineType(types: !935)
!935 = !{!96, !851, !740, !96}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !903, file: !12, line: 1974, baseType: !937, size: 64, offset: 320)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = !DISubroutineType(types: !939)
!939 = !{!96, !926, !886, !851, !890, !729}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !903, file: !12, line: 1976, baseType: !941, size: 64, offset: 384)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DISubroutineType(types: !943)
!943 = !{!96, !851, !886, !851}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !903, file: !12, line: 1977, baseType: !945, size: 64, offset: 448)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DISubroutineType(types: !947)
!947 = !{!96, !886, !851}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !903, file: !12, line: 1978, baseType: !949, size: 64, offset: 512)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = !DISubroutineType(types: !951)
!951 = !{!96, !926, !886, !851, !107}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !903, file: !12, line: 1980, baseType: !953, size: 64, offset: 576)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = !DISubroutineType(types: !955)
!955 = !{!96, !926, !886, !851, !890}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !903, file: !12, line: 1982, baseType: !945, size: 64, offset: 640)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !903, file: !12, line: 1983, baseType: !958, size: 64, offset: 704)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DISubroutineType(types: !960)
!960 = !{!96, !926, !886, !851, !890, !961}
!961 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !133, line: 21, baseType: !962)
!962 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !133, line: 18, baseType: !109)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !903, file: !12, line: 1985, baseType: !964, size: 64, offset: 768)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = !DISubroutineType(types: !966)
!966 = !{!96, !926, !886, !851, !886, !851, !13}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !903, file: !12, line: 1987, baseType: !968, size: 64, offset: 832)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!969 = !DISubroutineType(types: !970)
!970 = !{!96, !926, !851, !971}
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !12, line: 226, size: 640, elements: !973)
!973 = !{!974, !975, !976, !986, !995, !996, !1002, !1003, !1004}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !972, file: !12, line: 227, baseType: !13, size: 32)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !972, file: !12, line: 228, baseType: !890, size: 16, offset: 32)
!976 = !DIDerivedType(tag: DW_TAG_member, scope: !972, file: !12, line: 241, baseType: !977, size: 32, offset: 64)
!977 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !972, file: !12, line: 241, size: 32, elements: !978)
!978 = !{!979, !980}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !977, file: !12, line: 242, baseType: !611, size: 32)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !977, file: !12, line: 243, baseType: !981, size: 32)
!981 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !982, line: 16, baseType: !983)
!982 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!983 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !982, line: 14, size: 32, elements: !984)
!984 = !{!985}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !983, file: !982, line: 15, baseType: !616, size: 32)
!986 = !DIDerivedType(tag: DW_TAG_member, scope: !972, file: !12, line: 245, baseType: !987, size: 32, offset: 96)
!987 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !972, file: !12, line: 245, size: 32, elements: !988)
!988 = !{!989, !990}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !987, file: !12, line: 246, baseType: !629, size: 32)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !987, file: !12, line: 247, baseType: !991, size: 32)
!991 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !982, line: 20, baseType: !992)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !982, line: 18, size: 32, elements: !993)
!993 = !{!994}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !992, file: !982, line: 19, baseType: !633, size: 32)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !972, file: !12, line: 249, baseType: !541, size: 64, offset: 128)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !972, file: !12, line: 250, baseType: !997, size: 128, offset: 192)
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !687, line: 13, size: 128, elements: !998)
!998 = !{!999, !1000}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !997, file: !687, line: 14, baseType: !686, size: 64)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !997, file: !687, line: 15, baseType: !1001, size: 64, offset: 64)
!1001 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !972, file: !12, line: 251, baseType: !997, size: 128, offset: 320)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !972, file: !12, line: 252, baseType: !997, size: 128, offset: 448)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !972, file: !12, line: 259, baseType: !501, size: 64, offset: 576)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !903, file: !12, line: 1988, baseType: !1006, size: 64, offset: 896)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = !DISubroutineType(types: !1008)
!1008 = !{!96, !926, !1009, !1011, !109, !13}
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !842)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1013, line: 22, size: 1280, elements: !1014)
!1013 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1014 = !{!1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1012, file: !1013, line: 23, baseType: !109, size: 32)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1012, file: !1013, line: 24, baseType: !890, size: 16, offset: 32)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1012, file: !1013, line: 25, baseType: !13, size: 32, offset: 64)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1012, file: !1013, line: 26, baseType: !694, size: 32, offset: 96)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1012, file: !1013, line: 27, baseType: !100, size: 64, offset: 128)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1012, file: !1013, line: 28, baseType: !100, size: 64, offset: 192)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1012, file: !1013, line: 41, baseType: !100, size: 64, offset: 256)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1012, file: !1013, line: 42, baseType: !961, size: 32, offset: 320)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1012, file: !1013, line: 43, baseType: !961, size: 32, offset: 352)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1012, file: !1013, line: 44, baseType: !611, size: 32, offset: 384)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1012, file: !1013, line: 45, baseType: !629, size: 32, offset: 416)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1012, file: !1013, line: 46, baseType: !541, size: 64, offset: 448)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1012, file: !1013, line: 47, baseType: !997, size: 128, offset: 512)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1012, file: !1013, line: 48, baseType: !997, size: 128, offset: 640)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1012, file: !1013, line: 49, baseType: !997, size: 128, offset: 768)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1012, file: !1013, line: 50, baseType: !997, size: 128, offset: 896)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1012, file: !1013, line: 51, baseType: !100, size: 64, offset: 1024)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1012, file: !1013, line: 52, baseType: !100, size: 64, offset: 1088)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1012, file: !1013, line: 53, baseType: !109, size: 32, offset: 1152)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1012, file: !1013, line: 54, baseType: !109, size: 32, offset: 1184)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1012, file: !1013, line: 55, baseType: !100, size: 64, offset: 1216)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !903, file: !12, line: 1990, baseType: !1037, size: 64, offset: 960)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = !DISubroutineType(types: !1039)
!1039 = !{!1040, !851, !740, !1043}
!1040 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !133, line: 66, baseType: !1041)
!1041 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !332, line: 73, baseType: !1042)
!1042 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !332, line: 15, baseType: !1001)
!1043 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !133, line: 61, baseType: !1044)
!1044 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !332, line: 72, baseType: !1045)
!1045 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !332, line: 16, baseType: !98)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !903, file: !12, line: 1991, baseType: !1047, size: 64, offset: 1024)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{!96, !886, !1050, !100, !100}
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !12, line: 55, flags: DIFlagFwdDecl)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !903, file: !12, line: 1993, baseType: !1053, size: 64, offset: 1088)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = !DISubroutineType(types: !1055)
!1055 = !{!96, !886, !96}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !903, file: !12, line: 1994, baseType: !1057, size: 64, offset: 1152)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DISubroutineType(types: !1059)
!1059 = !{!96, !886, !851, !501, !13, !890}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !903, file: !12, line: 1997, baseType: !1061, size: 64, offset: 1216)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{!96, !926, !886, !501, !890}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !903, file: !12, line: 1999, baseType: !1065, size: 64, offset: 1280)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = !DISubroutineType(types: !1067)
!1067 = !{!897, !926, !851, !96}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !903, file: !12, line: 2001, baseType: !1069, size: 64, offset: 1344)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = !DISubroutineType(types: !1071)
!1071 = !{!96, !926, !851, !897, !96}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !903, file: !12, line: 2003, baseType: !1073, size: 64, offset: 1408)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1074 = !DISubroutineType(types: !1075)
!1075 = !{!96, !926, !851, !1076}
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !12, line: 76, flags: DIFlagFwdDecl)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !903, file: !12, line: 2005, baseType: !1079, size: 64, offset: 1472)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DISubroutineType(types: !1081)
!1081 = !{!96, !851, !1076}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !903, file: !12, line: 2006, baseType: !1083, size: 64, offset: 1536)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = !DISubroutineType(types: !1085)
!1085 = !{!1086, !886}
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !12, line: 3192, size: 192, elements: !1088)
!1088 = !{!1089, !1097}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1087, file: !12, line: 3193, baseType: !1090, size: 128)
!1090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1091, line: 296, size: 128, elements: !1092)
!1091 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1092 = !{!1093, !1094, !1096}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1090, file: !1091, line: 297, baseType: !483, size: 32)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1090, file: !1091, line: 299, baseType: !1095, size: 32, offset: 32)
!1095 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !133, line: 154, baseType: !13)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1090, file: !1091, line: 300, baseType: !99, size: 64, offset: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1087, file: !12, line: 3194, baseType: !109, size: 32, offset: 128)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !887, file: !12, line: 655, baseType: !1099, size: 64, offset: 448)
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !12, line: 1190, size: 10752, elements: !1101)
!1101 = !{!1102, !1103, !1104, !1105, !1106, !1107, !1148, !1285, !1325, !1408, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1425, !1429, !1430, !1433, !1436, !1439, !1442, !1443, !1444, !1485, !1512, !1513, !1514, !1515, !1516, !1517, !1520, !1524, !1533, !1534, !1535, !1536, !1595, !1610, !1611, !1612, !1613, !1616, !1620, !1621, !1622, !1637, !1638, !1639, !1650, !1651, !1652, !1653, !1654, !1655}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1100, file: !12, line: 1191, baseType: !189, size: 128)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1100, file: !12, line: 1192, baseType: !961, size: 32, offset: 128)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1100, file: !12, line: 1193, baseType: !301, size: 8, offset: 160)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1100, file: !12, line: 1194, baseType: !98, size: 64, offset: 192)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1100, file: !12, line: 1195, baseType: !541, size: 64, offset: 256)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1100, file: !12, line: 1196, baseType: !1108, size: 64, offset: 320)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !12, line: 2366, size: 576, elements: !1110)
!1110 = !{!1111, !1112, !1113, !1119, !1123, !1127, !1131, !1135, !1136, !1137, !1140, !1141, !1142, !1144, !1145, !1146, !1147}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1109, file: !12, line: 2367, baseType: !107, size: 64)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1109, file: !12, line: 2368, baseType: !96, size: 32, offset: 64)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1109, file: !12, line: 2376, baseType: !1114, size: 64, offset: 128)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = !DISubroutineType(types: !1116)
!1116 = !{!96, !1117}
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !848, line: 21, flags: DIFlagFwdDecl)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1109, file: !12, line: 2377, baseType: !1120, size: 64, offset: 192)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1122)
!1122 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !12, line: 75, flags: DIFlagFwdDecl)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1109, file: !12, line: 2378, baseType: !1124, size: 64, offset: 256)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = !DISubroutineType(types: !1126)
!1126 = !{!851, !1108, !96, !107, !99}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1109, file: !12, line: 2380, baseType: !1128, size: 64, offset: 320)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = !DISubroutineType(types: !1130)
!1130 = !{null, !1099}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1109, file: !12, line: 2381, baseType: !1132, size: 64, offset: 384)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1134, line: 103, flags: DIFlagFwdDecl)
!1134 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ec86911224c4b764298f6e976616738c")
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1109, file: !12, line: 2382, baseType: !1108, size: 64, offset: 448)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1109, file: !12, line: 2383, baseType: !579, size: 64, offset: 512)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1109, file: !12, line: 2385, baseType: !1138, offset: 576)
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1139, line: 206, elements: !494)
!1139 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1109, file: !12, line: 2386, baseType: !1138, offset: 576)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1109, file: !12, line: 2387, baseType: !1138, offset: 576)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1109, file: !12, line: 2388, baseType: !1143, offset: 576)
!1143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1138, elements: !567)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1109, file: !12, line: 2390, baseType: !1138, offset: 576)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1109, file: !12, line: 2391, baseType: !1138, offset: 576)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1109, file: !12, line: 2392, baseType: !1138, offset: 576)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1109, file: !12, line: 2393, baseType: !1138, offset: 576)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1100, file: !12, line: 1197, baseType: !1149, size: 64, offset: 384)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1151)
!1151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !12, line: 2057, size: 1664, elements: !1152)
!1152 = !{!1153, !1157, !1161, !1162, !1166, !1172, !1176, !1177, !1178, !1182, !1186, !1190, !1191, !1192, !1198, !1203, !1204, !1210, !1211, !1212, !1213, !1217, !1221, !1268, !1283, !1284}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1151, file: !12, line: 2058, baseType: !1154, size: 64)
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1155 = !DISubroutineType(types: !1156)
!1156 = !{!886, !1099}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1151, file: !12, line: 2059, baseType: !1158, size: 64, offset: 64)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = !DISubroutineType(types: !1160)
!1160 = !{null, !886}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1151, file: !12, line: 2060, baseType: !1158, size: 64, offset: 128)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1151, file: !12, line: 2062, baseType: !1163, size: 64, offset: 192)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = !DISubroutineType(types: !1165)
!1165 = !{null, !886, !96}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1151, file: !12, line: 2063, baseType: !1167, size: 64, offset: 256)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = !DISubroutineType(types: !1169)
!1169 = !{!96, !886, !1170}
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !12, line: 309, flags: DIFlagFwdDecl)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1151, file: !12, line: 2064, baseType: !1173, size: 64, offset: 320)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = !DISubroutineType(types: !1175)
!1175 = !{!96, !886}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1151, file: !12, line: 2065, baseType: !1158, size: 64, offset: 384)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1151, file: !12, line: 2066, baseType: !1128, size: 64, offset: 448)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1151, file: !12, line: 2067, baseType: !1179, size: 64, offset: 512)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{!96, !1099, !96}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1151, file: !12, line: 2068, baseType: !1183, size: 64, offset: 576)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1184 = !DISubroutineType(types: !1185)
!1185 = !{!96, !1099, !11}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1151, file: !12, line: 2069, baseType: !1187, size: 64, offset: 640)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = !DISubroutineType(types: !1189)
!1189 = !{!96, !1099}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1151, file: !12, line: 2070, baseType: !1183, size: 64, offset: 704)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1151, file: !12, line: 2071, baseType: !1187, size: 64, offset: 768)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1151, file: !12, line: 2072, baseType: !1193, size: 64, offset: 832)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1194 = !DISubroutineType(types: !1195)
!1195 = !{!96, !851, !1196}
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1197 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !12, line: 62, flags: DIFlagFwdDecl)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1151, file: !12, line: 2073, baseType: !1199, size: 64, offset: 896)
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1200 = !DISubroutineType(types: !1201)
!1201 = !{!96, !1099, !1202, !740}
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1151, file: !12, line: 2074, baseType: !1128, size: 64, offset: 960)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1151, file: !12, line: 2076, baseType: !1205, size: 64, offset: 1024)
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = !DISubroutineType(types: !1207)
!1207 = !{!96, !1208, !851}
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !114, line: 66, flags: DIFlagFwdDecl)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1151, file: !12, line: 2077, baseType: !1205, size: 64, offset: 1088)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1151, file: !12, line: 2078, baseType: !1205, size: 64, offset: 1152)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1151, file: !12, line: 2079, baseType: !1205, size: 64, offset: 1216)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1151, file: !12, line: 2081, baseType: !1214, size: 64, offset: 1280)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1215 = !DISubroutineType(types: !1216)
!1216 = !{!1040, !1099, !96, !740, !1043, !541}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1151, file: !12, line: 2082, baseType: !1218, size: 64, offset: 1344)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1219 = !DISubroutineType(types: !1220)
!1220 = !{!1040, !1099, !96, !107, !1043, !541}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1151, file: !12, line: 2083, baseType: !1222, size: 64, offset: 1408)
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = !DISubroutineType(types: !1224)
!1224 = !{!1225, !886}
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !18, line: 296, size: 1664, elements: !1228)
!1228 = !{!1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1253, !1254, !1255}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1227, file: !18, line: 297, baseType: !583, size: 128)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1227, file: !18, line: 298, baseType: !189, size: 128, offset: 128)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1227, file: !18, line: 299, baseType: !189, size: 128, offset: 256)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1227, file: !18, line: 300, baseType: !189, size: 128, offset: 384)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1227, file: !18, line: 301, baseType: !529, size: 256, offset: 512)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1227, file: !18, line: 302, baseType: !483, size: 32, offset: 768)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1227, file: !18, line: 303, baseType: !132, size: 32, offset: 800)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1227, file: !18, line: 304, baseType: !1099, size: 64, offset: 832)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1227, file: !18, line: 305, baseType: !1238, size: 64, offset: 896)
!1238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !18, line: 68, size: 64, elements: !1239)
!1239 = !{!1240, !1252}
!1240 = !DIDerivedType(tag: DW_TAG_member, scope: !1238, file: !18, line: 69, baseType: !1241, size: 32)
!1241 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1238, file: !18, line: 69, size: 32, elements: !1242)
!1242 = !{!1243, !1244, !1245}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1241, file: !18, line: 70, baseType: !611, size: 32)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1241, file: !18, line: 71, baseType: !629, size: 32)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1241, file: !18, line: 72, baseType: !1246, size: 32)
!1246 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1247, line: 24, baseType: !1248)
!1247 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1247, line: 22, size: 32, elements: !1249)
!1249 = !{!1250}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1248, file: !1247, line: 23, baseType: !1251, size: 32)
!1251 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1247, line: 20, baseType: !617)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1238, file: !18, line: 74, baseType: !17, size: 32, offset: 32)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1227, file: !18, line: 306, baseType: !541, size: 64, offset: 960)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1227, file: !18, line: 307, baseType: !98, size: 64, offset: 1024)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1227, file: !18, line: 308, baseType: !1256, size: 576, offset: 1088)
!1256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !18, line: 205, size: 576, elements: !1257)
!1257 = !{!1258, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1256, file: !18, line: 206, baseType: !1259, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !18, line: 66, baseType: !202)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1256, file: !18, line: 207, baseType: !1259, size: 64, offset: 64)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1256, file: !18, line: 208, baseType: !1259, size: 64, offset: 128)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1256, file: !18, line: 209, baseType: !1259, size: 64, offset: 192)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1256, file: !18, line: 210, baseType: !1259, size: 64, offset: 256)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1256, file: !18, line: 211, baseType: !1259, size: 64, offset: 320)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1256, file: !18, line: 212, baseType: !1259, size: 64, offset: 384)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1256, file: !18, line: 213, baseType: !686, size: 64, offset: 448)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1256, file: !18, line: 214, baseType: !686, size: 64, offset: 512)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1151, file: !12, line: 2085, baseType: !1269, size: 64, offset: 1472)
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1270 = !DISubroutineType(types: !1271)
!1271 = !{!1001, !1099, !1272}
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1274, line: 15, size: 256, elements: !1275)
!1274 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1275 = !{!1276, !1277, !1278, !1279, !1280}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1273, file: !1274, line: 16, baseType: !1095, size: 32)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1273, file: !1274, line: 19, baseType: !96, size: 32, offset: 32)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1273, file: !1274, line: 26, baseType: !98, size: 64, offset: 64)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1273, file: !1274, line: 33, baseType: !98, size: 64, offset: 128)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1273, file: !1274, line: 36, baseType: !1281, size: 64, offset: 192)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !1274, line: 36, flags: DIFlagFwdDecl)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1151, file: !12, line: 2087, baseType: !1269, size: 64, offset: 1536)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1151, file: !12, line: 2089, baseType: !1128, size: 64, offset: 1600)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1100, file: !12, line: 1198, baseType: !1286, size: 64, offset: 448)
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!1287 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1288)
!1288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !18, line: 324, size: 704, elements: !1289)
!1289 = !{!1290, !1294, !1298, !1302, !1303, !1304, !1305, !1306, !1311, !1316, !1320}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1288, file: !18, line: 325, baseType: !1291, size: 64)
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1292 = !DISubroutineType(types: !1293)
!1293 = !{!96, !1226}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1288, file: !18, line: 326, baseType: !1295, size: 64, offset: 64)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = !DISubroutineType(types: !1297)
!1297 = !{!1226, !1099, !96}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1288, file: !18, line: 327, baseType: !1299, size: 64, offset: 128)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = !DISubroutineType(types: !1301)
!1301 = !{null, !1226}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1288, file: !18, line: 328, baseType: !1291, size: 64, offset: 192)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1288, file: !18, line: 329, baseType: !1291, size: 64, offset: 256)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1288, file: !18, line: 330, baseType: !1291, size: 64, offset: 320)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1288, file: !18, line: 331, baseType: !1179, size: 64, offset: 384)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1288, file: !18, line: 334, baseType: !1307, size: 64, offset: 448)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = !DISubroutineType(types: !1309)
!1309 = !{!1310, !886}
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1288, file: !18, line: 335, baseType: !1312, size: 64, offset: 512)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = !DISubroutineType(types: !1314)
!1314 = !{!96, !886, !1315}
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1288, file: !18, line: 337, baseType: !1317, size: 64, offset: 576)
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = !DISubroutineType(types: !1319)
!1319 = !{!96, !886, !1310}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1288, file: !18, line: 339, baseType: !1321, size: 64, offset: 640)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = !DISubroutineType(types: !1323)
!1323 = !{!96, !1099, !1324}
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1100, file: !12, line: 1199, baseType: !1326, size: 64, offset: 512)
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1327, size: 64)
!1327 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1328)
!1328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !18, line: 430, size: 704, elements: !1329)
!1329 = !{!1330, !1334, !1335, !1339, !1340, !1341, !1356, !1379, !1383, !1384, !1407}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1328, file: !18, line: 431, baseType: !1331, size: 64)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = !DISubroutineType(types: !1333)
!1333 = !{!96, !1099, !96, !96, !1009}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1328, file: !18, line: 432, baseType: !1179, size: 64, offset: 64)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1328, file: !18, line: 433, baseType: !1336, size: 64, offset: 128)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = !DISubroutineType(types: !1338)
!1338 = !{!96, !1099, !13}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1328, file: !18, line: 434, baseType: !1336, size: 64, offset: 192)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1328, file: !18, line: 435, baseType: !1179, size: 64, offset: 256)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1328, file: !18, line: 436, baseType: !1342, size: 64, offset: 320)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1343 = !DISubroutineType(types: !1344)
!1344 = !{!96, !1099, !96, !1345}
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !18, line: 417, size: 256, elements: !1347)
!1347 = !{!1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1346, file: !18, line: 418, baseType: !96, size: 32)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1346, file: !18, line: 419, baseType: !13, size: 32, offset: 32)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1346, file: !18, line: 420, baseType: !13, size: 32, offset: 64)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1346, file: !18, line: 422, baseType: !13, size: 32, offset: 96)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1346, file: !18, line: 423, baseType: !13, size: 32, offset: 128)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1346, file: !18, line: 424, baseType: !13, size: 32, offset: 160)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1346, file: !18, line: 425, baseType: !13, size: 32, offset: 192)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1346, file: !18, line: 426, baseType: !13, size: 32, offset: 224)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1328, file: !18, line: 437, baseType: !1357, size: 64, offset: 384)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1358 = !DISubroutineType(types: !1359)
!1359 = !{!96, !1099, !1238, !1360}
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !18, line: 345, size: 960, elements: !1362)
!1362 = !{!1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1361, file: !18, line: 346, baseType: !96, size: 32)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1361, file: !18, line: 347, baseType: !100, size: 64, offset: 64)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1361, file: !18, line: 348, baseType: !100, size: 64, offset: 128)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1361, file: !18, line: 349, baseType: !100, size: 64, offset: 192)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1361, file: !18, line: 350, baseType: !100, size: 64, offset: 256)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1361, file: !18, line: 351, baseType: !100, size: 64, offset: 320)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1361, file: !18, line: 352, baseType: !100, size: 64, offset: 384)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1361, file: !18, line: 353, baseType: !200, size: 64, offset: 448)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1361, file: !18, line: 355, baseType: !200, size: 64, offset: 512)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1361, file: !18, line: 356, baseType: !96, size: 32, offset: 576)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1361, file: !18, line: 357, baseType: !96, size: 32, offset: 608)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1361, file: !18, line: 358, baseType: !100, size: 64, offset: 640)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1361, file: !18, line: 359, baseType: !100, size: 64, offset: 704)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1361, file: !18, line: 360, baseType: !100, size: 64, offset: 768)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1361, file: !18, line: 361, baseType: !200, size: 64, offset: 832)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1361, file: !18, line: 362, baseType: !96, size: 32, offset: 896)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1328, file: !18, line: 438, baseType: !1380, size: 64, offset: 448)
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1381 = !DISubroutineType(types: !1382)
!1382 = !{!96, !1099, !1324, !1360}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1328, file: !18, line: 440, baseType: !1357, size: 64, offset: 512)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1328, file: !18, line: 441, baseType: !1385, size: 64, offset: 576)
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1386 = !DISubroutineType(types: !1387)
!1387 = !{!96, !1099, !1388}
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !18, line: 411, size: 1408, elements: !1390)
!1390 = !{!1391, !1392}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1389, file: !18, line: 412, baseType: !13, size: 32)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1389, file: !18, line: 413, baseType: !1393, size: 1344, offset: 64)
!1393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1394, size: 1344, elements: !567)
!1394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !18, line: 397, size: 448, elements: !1395)
!1395 = !{!1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1406}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1394, file: !18, line: 398, baseType: !13, size: 32)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1394, file: !18, line: 399, baseType: !13, size: 32, offset: 32)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1394, file: !18, line: 401, baseType: !13, size: 32, offset: 64)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1394, file: !18, line: 402, baseType: !13, size: 32, offset: 96)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1394, file: !18, line: 403, baseType: !13, size: 32, offset: 128)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1394, file: !18, line: 404, baseType: !13, size: 32, offset: 160)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1394, file: !18, line: 405, baseType: !13, size: 32, offset: 192)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1394, file: !18, line: 406, baseType: !104, size: 64, offset: 256)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1394, file: !18, line: 407, baseType: !1405, size: 64, offset: 320)
!1405 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !133, line: 132, baseType: !100)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1394, file: !18, line: 408, baseType: !1405, size: 64, offset: 384)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1328, file: !18, line: 442, baseType: !1336, size: 64, offset: 640)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1100, file: !12, line: 1200, baseType: !1409, size: 64, offset: 576)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1411)
!1411 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !12, line: 54, flags: DIFlagFwdDecl)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1100, file: !12, line: 1201, baseType: !98, size: 64, offset: 640)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1100, file: !12, line: 1202, baseType: !98, size: 64, offset: 704)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1100, file: !12, line: 1203, baseType: !98, size: 64, offset: 768)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1100, file: !12, line: 1204, baseType: !851, size: 64, offset: 832)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1100, file: !12, line: 1205, baseType: !670, size: 320, offset: 896)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1100, file: !12, line: 1206, baseType: !96, size: 32, offset: 1216)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1100, file: !12, line: 1207, baseType: !132, size: 32, offset: 1248)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1100, file: !12, line: 1209, baseType: !99, size: 64, offset: 1280)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1100, file: !12, line: 1211, baseType: !1421, size: 64, offset: 1344)
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1424)
!1424 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !12, line: 1211, flags: DIFlagFwdDecl)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1100, file: !12, line: 1223, baseType: !1426, size: 64, offset: 1408)
!1426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !863, line: 34, size: 64, elements: !1427)
!1427 = !{!1428}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1426, file: !863, line: 35, baseType: !866, size: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1100, file: !12, line: 1224, baseType: !189, size: 128, offset: 1472)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1100, file: !12, line: 1225, baseType: !1431, size: 64, offset: 1600)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !12, line: 1225, flags: DIFlagFwdDecl)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1100, file: !12, line: 1226, baseType: !1434, size: 64, offset: 1664)
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!1435 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !12, line: 1226, flags: DIFlagFwdDecl)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1100, file: !12, line: 1227, baseType: !1437, size: 64, offset: 1728)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !12, line: 50, flags: DIFlagFwdDecl)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1100, file: !12, line: 1228, baseType: !1440, size: 64, offset: 1792)
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1441 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !12, line: 1228, flags: DIFlagFwdDecl)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1100, file: !12, line: 1229, baseType: !583, size: 128, offset: 1856)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1100, file: !12, line: 1230, baseType: !13, size: 32, offset: 1984)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1100, file: !12, line: 1231, baseType: !1445, size: 2496, offset: 2048)
!1445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !18, line: 521, size: 2496, elements: !1446)
!1446 = !{!1447, !1448, !1449, !1451, !1483}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1445, file: !18, line: 522, baseType: !13, size: 32)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1445, file: !18, line: 523, baseType: !670, size: 320, offset: 64)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1445, file: !18, line: 524, baseType: !1450, size: 192, offset: 384)
!1450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !886, size: 192, elements: !567)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1445, file: !18, line: 525, baseType: !1452, size: 1728, offset: 576)
!1452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1453, size: 1728, elements: !567)
!1453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !18, line: 222, size: 576, elements: !1454)
!1454 = !{!1455, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1453, file: !18, line: 223, baseType: !1456, size: 64)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !18, line: 445, size: 256, elements: !1458)
!1458 = !{!1459, !1460, !1473, !1474}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1457, file: !18, line: 446, baseType: !96, size: 32)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1457, file: !18, line: 447, baseType: !1461, size: 64, offset: 64)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1463)
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !18, line: 312, size: 512, elements: !1464)
!1464 = !{!1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1463, file: !18, line: 313, baseType: !1179, size: 64)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1463, file: !18, line: 314, baseType: !1179, size: 64, offset: 64)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1463, file: !18, line: 315, baseType: !1179, size: 64, offset: 128)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1463, file: !18, line: 316, baseType: !1179, size: 64, offset: 192)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1463, file: !18, line: 317, baseType: !1291, size: 64, offset: 256)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1463, file: !18, line: 318, baseType: !1291, size: 64, offset: 320)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1463, file: !18, line: 319, baseType: !1291, size: 64, offset: 384)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1463, file: !18, line: 320, baseType: !1321, size: 64, offset: 448)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1457, file: !18, line: 448, baseType: !1132, size: 64, offset: 128)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1457, file: !18, line: 449, baseType: !1456, size: 64, offset: 192)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1453, file: !18, line: 224, baseType: !96, size: 32, offset: 64)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1453, file: !18, line: 226, baseType: !189, size: 128, offset: 128)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1453, file: !18, line: 227, baseType: !98, size: 64, offset: 256)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1453, file: !18, line: 228, baseType: !13, size: 32, offset: 320)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1453, file: !18, line: 229, baseType: !13, size: 32, offset: 352)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1453, file: !18, line: 230, baseType: !1259, size: 64, offset: 384)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1453, file: !18, line: 231, baseType: !1259, size: 64, offset: 448)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1453, file: !18, line: 232, baseType: !99, size: 64, offset: 512)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1445, file: !18, line: 526, baseType: !1484, size: 192, offset: 2304)
!1484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1461, size: 192, elements: !567)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1100, file: !12, line: 1233, baseType: !1486, size: 2368, offset: 4544)
!1486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !12, line: 1184, size: 2368, elements: !1487)
!1487 = !{!1488, !1489, !1490}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1486, file: !12, line: 1185, baseType: !158, size: 16)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1486, file: !12, line: 1186, baseType: !158, size: 16, offset: 16)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1486, file: !12, line: 1187, baseType: !1491, size: 2304, offset: 64)
!1491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1492, size: 2304, elements: !567)
!1492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1493, line: 12, size: 768, elements: !1494)
!1493 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1494 = !{!1495, !1503, !1505, !1510, !1511}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1492, file: !1493, line: 13, baseType: !1496, size: 384)
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1497, line: 17, size: 384, elements: !1498)
!1497 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1498 = !{!1499, !1500, !1501, !1502}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1496, file: !1497, line: 18, baseType: !96, size: 32)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1496, file: !1497, line: 19, baseType: !96, size: 32, offset: 32)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1496, file: !1497, line: 20, baseType: !592, size: 192, offset: 64)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1496, file: !1497, line: 22, baseType: !509, size: 128, align: 64, offset: 256)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1492, file: !1493, line: 14, baseType: !1504, size: 64, offset: 384)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1492, file: !1493, line: 15, baseType: !1506, size: 64, offset: 448)
!1506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1507, line: 16, size: 64, elements: !1508)
!1507 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1508 = !{!1509}
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1506, file: !1507, line: 17, baseType: !112, size: 64)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1492, file: !1493, line: 16, baseType: !592, size: 192, offset: 512)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1492, file: !1493, line: 17, baseType: !132, size: 32, offset: 704)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1100, file: !12, line: 1240, baseType: !99, size: 64, offset: 6912)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1100, file: !12, line: 1243, baseType: !109, size: 32, offset: 6976)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1100, file: !12, line: 1245, baseType: !686, size: 64, offset: 7040)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1100, file: !12, line: 1246, baseType: !686, size: 64, offset: 7104)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1100, file: !12, line: 1248, baseType: !110, size: 32, offset: 7168)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1100, file: !12, line: 1249, baseType: !1518, size: 64, offset: 7232)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !12, line: 634, flags: DIFlagFwdDecl)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1100, file: !12, line: 1252, baseType: !1521, size: 256, offset: 7296)
!1521 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !1522)
!1522 = !{!1523}
!1523 = !DISubrange(count: 32)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1100, file: !12, line: 1253, baseType: !1525, size: 128, offset: 7552)
!1525 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !1526, line: 21, baseType: !1527)
!1526 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!1527 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1526, line: 19, size: 128, elements: !1528)
!1528 = !{!1529}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1527, file: !1526, line: 20, baseType: !1530, size: 128)
!1530 = !DICompositeType(tag: DW_TAG_array_type, baseType: !300, size: 128, elements: !1531)
!1531 = !{!1532}
!1532 = !DISubrange(count: 16)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1100, file: !12, line: 1255, baseType: !13, size: 32, offset: 7680)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1100, file: !12, line: 1261, baseType: !529, size: 256, offset: 7744)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1100, file: !12, line: 1267, baseType: !107, size: 64, offset: 8000)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1100, file: !12, line: 1269, baseType: !1537, size: 64, offset: 8064)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1539)
!1539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !853, line: 128, size: 1024, align: 512, elements: !1540)
!1540 = !{!1541, !1545, !1546, !1553, !1559, !1563, !1567, !1571, !1572, !1576, !1580, !1585, !1589}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !1539, file: !853, line: 129, baseType: !1542, size: 64)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = !DISubroutineType(types: !1544)
!1544 = !{!96, !851, !13}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !1539, file: !853, line: 130, baseType: !1542, size: 64, offset: 64)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1539, file: !853, line: 131, baseType: !1547, size: 64, offset: 128)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = !DISubroutineType(types: !1549)
!1549 = !{!96, !1550, !1552}
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !852)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !1539, file: !853, line: 132, baseType: !1554, size: 64, offset: 192)
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1555, size: 64)
!1555 = !DISubroutineType(types: !1556)
!1556 = !{!96, !1550, !13, !107, !1557}
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1558 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !871)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !1539, file: !853, line: 134, baseType: !1560, size: 64, offset: 256)
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1561, size: 64)
!1561 = !DISubroutineType(types: !1562)
!1562 = !{!96, !1550}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !1539, file: !853, line: 135, baseType: !1564, size: 64, offset: 320)
!1564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1565, size: 64)
!1565 = !DISubroutineType(types: !1566)
!1566 = !{!96, !851}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !1539, file: !853, line: 136, baseType: !1568, size: 64, offset: 384)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = !DISubroutineType(types: !1570)
!1570 = !{null, !851}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !1539, file: !853, line: 137, baseType: !1568, size: 64, offset: 448)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !1539, file: !853, line: 138, baseType: !1573, size: 64, offset: 512)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = !DISubroutineType(types: !1575)
!1575 = !{null, !851, !886}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !1539, file: !853, line: 139, baseType: !1577, size: 64, offset: 576)
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1578 = !DISubroutineType(types: !1579)
!1579 = !{!740, !851, !740, !96}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !1539, file: !853, line: 140, baseType: !1581, size: 64, offset: 640)
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = !DISubroutineType(types: !1583)
!1583 = !{!846, !1584}
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !1539, file: !853, line: 141, baseType: !1586, size: 64, offset: 704)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DISubroutineType(types: !1588)
!1588 = !{!96, !1009, !729}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !1539, file: !853, line: 142, baseType: !1590, size: 64, offset: 768)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = !DISubroutineType(types: !1592)
!1592 = !{!851, !851, !1593}
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !887)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1100, file: !12, line: 1271, baseType: !1596, size: 448, offset: 8128)
!1596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1274, line: 63, size: 448, elements: !1597)
!1597 = !{!1598, !1603, !1604, !1605, !1606, !1607, !1608}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !1596, file: !1274, line: 64, baseType: !1599, size: 64)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = !DISubroutineType(types: !1601)
!1601 = !{!98, !1602, !1272}
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !1596, file: !1274, line: 66, baseType: !1599, size: 64, offset: 64)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !1596, file: !1274, line: 69, baseType: !1001, size: 64, offset: 128)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !1596, file: !1274, line: 70, baseType: !96, size: 32, offset: 192)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1596, file: !1274, line: 71, baseType: !13, size: 32, offset: 224)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1596, file: !1274, line: 74, baseType: !189, size: 128, offset: 256)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !1596, file: !1274, line: 85, baseType: !1609, size: 64, offset: 384)
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1100, file: !12, line: 1274, baseType: !522, size: 64, offset: 8576)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1100, file: !12, line: 1280, baseType: !522, size: 64, offset: 8640)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1100, file: !12, line: 1283, baseType: !96, size: 32, offset: 8704)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1100, file: !12, line: 1286, baseType: !1614, size: 32, offset: 8736)
!1614 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1615, line: 8, baseType: !109)
!1615 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1100, file: !12, line: 1289, baseType: !1617, size: 64, offset: 8768)
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1619, line: 18, flags: DIFlagFwdDecl)
!1619 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1100, file: !12, line: 1290, baseType: !579, size: 64, offset: 8832)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1100, file: !12, line: 1297, baseType: !813, size: 64, offset: 8896)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1100, file: !12, line: 1304, baseType: !1623, size: 64, offset: 8960)
!1623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !1624, line: 49, size: 64, elements: !1625)
!1624 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!1625 = !{!1626}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1623, file: !1624, line: 50, baseType: !1627, size: 64)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !1624, line: 41, size: 512, align: 512, elements: !1629)
!1629 = !{!1630, !1631, !1636}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1628, file: !1624, line: 43, baseType: !483, size: 32)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1628, file: !1624, line: 45, baseType: !1632, size: 192, offset: 64)
!1632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !1624, line: 29, size: 192, elements: !1633)
!1633 = !{!1634, !1635}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1632, file: !1624, line: 30, baseType: !189, size: 128)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !1632, file: !1624, line: 32, baseType: !1001, size: 64, offset: 128)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !1628, file: !1624, line: 46, baseType: !1001, size: 64, offset: 256)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1100, file: !12, line: 1305, baseType: !1623, size: 64, offset: 9024)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1100, file: !12, line: 1306, baseType: !509, size: 128, align: 64, offset: 9088)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1100, file: !12, line: 1307, baseType: !1640, size: 256, offset: 9216)
!1640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1619, line: 98, size: 256, elements: !1641)
!1641 = !{!1642, !1643, !1644}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1640, file: !1619, line: 99, baseType: !522, size: 64)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1640, file: !1619, line: 100, baseType: !189, size: 128, offset: 64)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1640, file: !1619, line: 101, baseType: !1645, size: 64, offset: 192)
!1645 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1619, line: 21, baseType: !1646)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = !DISubroutineType(types: !1648)
!1648 = !{null, !1649}
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1100, file: !12, line: 1309, baseType: !529, size: 256, offset: 9472)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1100, file: !12, line: 1314, baseType: !96, size: 32, offset: 9728)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1100, file: !12, line: 1317, baseType: !483, size: 32, align: 512, offset: 10240)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1100, file: !12, line: 1318, baseType: !189, size: 128, offset: 10304)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1100, file: !12, line: 1320, baseType: !483, size: 32, offset: 10432)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1100, file: !12, line: 1321, baseType: !189, size: 128, offset: 10496)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !887, file: !12, line: 656, baseType: !1657, size: 64, offset: 512)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !12, line: 472, size: 1536, align: 64, elements: !1659)
!1659 = !{!1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !2149, !2150, !2151, !2152, !2153, !2154}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1658, file: !12, line: 473, baseType: !886, size: 64)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1658, file: !12, line: 474, baseType: !1090, size: 128, offset: 64)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1658, file: !12, line: 475, baseType: !670, size: 320, offset: 192)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1658, file: !12, line: 476, baseType: !1095, size: 32, offset: 512)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1658, file: !12, line: 477, baseType: !132, size: 32, offset: 544)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1658, file: !12, line: 482, baseType: !348, size: 128, offset: 576)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1658, file: !12, line: 483, baseType: !98, size: 64, offset: 704)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1658, file: !12, line: 484, baseType: !98, size: 64, offset: 768)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1658, file: !12, line: 485, baseType: !1669, size: 64, offset: 832)
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1671)
!1671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !12, line: 404, size: 1280, elements: !1672)
!1672 = !{!1673, !1974, !2044, !2048, !2052, !2058, !2064, !2068, !2073, !2077, !2081, !2085, !2113, !2117, !2121, !2125, !2130, !2134, !2141, !2145}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1671, file: !12, line: 405, baseType: !1674, size: 64)
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = !DISubroutineType(types: !1676)
!1676 = !{!96, !1677, !1170}
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !37, line: 74, size: 512, align: 128, elements: !1679)
!1679 = !{!1680, !1681, !1968, !1973}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1678, file: !37, line: 75, baseType: !98, size: 64)
!1681 = !DIDerivedType(tag: DW_TAG_member, scope: !1678, file: !37, line: 83, baseType: !1682, size: 320, offset: 64)
!1682 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1678, file: !37, line: 83, size: 320, elements: !1683)
!1683 = !{!1684, !1705, !1719, !1723, !1967}
!1684 = !DIDerivedType(tag: DW_TAG_member, scope: !1682, file: !37, line: 84, baseType: !1685, size: 320)
!1685 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1682, file: !37, line: 84, size: 320, elements: !1686)
!1686 = !{!1687, !1698, !1699, !1704}
!1687 = !DIDerivedType(tag: DW_TAG_member, scope: !1685, file: !37, line: 90, baseType: !1688, size: 128)
!1688 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1685, file: !37, line: 90, size: 128, elements: !1689)
!1689 = !{!1690, !1691, !1696, !1697}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1688, file: !37, line: 91, baseType: !189, size: 128)
!1691 = !DIDerivedType(tag: DW_TAG_member, scope: !1688, file: !37, line: 94, baseType: !1692, size: 128)
!1692 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1688, file: !37, line: 94, size: 128, elements: !1693)
!1693 = !{!1694, !1695}
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1692, file: !37, line: 96, baseType: !99, size: 64)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1692, file: !37, line: 98, baseType: !13, size: 32, offset: 64)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1688, file: !37, line: 102, baseType: !189, size: 128)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1688, file: !37, line: 103, baseType: !189, size: 128)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1685, file: !37, line: 106, baseType: !1657, size: 64, offset: 128)
!1699 = !DIDerivedType(tag: DW_TAG_member, scope: !1685, file: !37, line: 107, baseType: !1700, size: 64, offset: 192)
!1700 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1685, file: !37, line: 107, size: 64, elements: !1701)
!1701 = !{!1702, !1703}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1700, file: !37, line: 108, baseType: !98, size: 64)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1700, file: !37, line: 109, baseType: !98, size: 64)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1685, file: !37, line: 117, baseType: !98, size: 64, offset: 256)
!1705 = !DIDerivedType(tag: DW_TAG_member, scope: !1682, file: !37, line: 119, baseType: !1706, size: 320)
!1706 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1682, file: !37, line: 119, size: 320, elements: !1707)
!1707 = !{!1708, !1709, !1712, !1713, !1714}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1706, file: !37, line: 124, baseType: !98, size: 64)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1706, file: !37, line: 125, baseType: !1710, size: 64, offset: 64)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !37, line: 125, flags: DIFlagFwdDecl)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1706, file: !37, line: 126, baseType: !98, size: 64, offset: 128)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1706, file: !37, line: 127, baseType: !98, size: 64, offset: 192)
!1714 = !DIDerivedType(tag: DW_TAG_member, scope: !1706, file: !37, line: 128, baseType: !1715, size: 64, offset: 256)
!1715 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1706, file: !37, line: 128, size: 64, elements: !1716)
!1716 = !{!1717, !1718}
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1715, file: !37, line: 133, baseType: !98, size: 64)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1715, file: !37, line: 138, baseType: !522, size: 64)
!1719 = !DIDerivedType(tag: DW_TAG_member, scope: !1682, file: !37, line: 141, baseType: !1720, size: 64)
!1720 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1682, file: !37, line: 141, size: 64, elements: !1721)
!1721 = !{!1722}
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1720, file: !37, line: 142, baseType: !98, size: 64)
!1723 = !DIDerivedType(tag: DW_TAG_member, scope: !1682, file: !37, line: 144, baseType: !1724, size: 128)
!1724 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1682, file: !37, line: 144, size: 128, elements: !1725)
!1725 = !{!1726, !1966}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1724, file: !37, line: 146, baseType: !1727, size: 64)
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !73, line: 126, size: 1216, elements: !1729)
!1729 = !{!1730, !1740, !1761, !1772, !1773, !1774, !1775, !1948, !1949, !1950}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1728, file: !73, line: 127, baseType: !1731, size: 384)
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !73, line: 21, size: 384, elements: !1732)
!1732 = !{!1733, !1734, !1736, !1737, !1738, !1739}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1731, file: !73, line: 22, baseType: !98, size: 64)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1731, file: !73, line: 23, baseType: !1735, size: 64, offset: 64)
!1735 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !98)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1731, file: !73, line: 24, baseType: !1735, size: 64, offset: 128)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1731, file: !73, line: 25, baseType: !98, size: 64, offset: 192)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1731, file: !73, line: 26, baseType: !98, size: 64, offset: 256)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1731, file: !73, line: 27, baseType: !98, size: 64, offset: 320)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1728, file: !73, line: 128, baseType: !1741, size: 128, offset: 384)
!1741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1742, line: 105, size: 128, elements: !1743)
!1742 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1743 = !{!1744, !1745}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1741, file: !1742, line: 110, baseType: !98, size: 64)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1741, file: !1742, line: 118, baseType: !1746, size: 64, offset: 64)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1742, line: 95, size: 448, elements: !1748)
!1748 = !{!1749, !1750, !1756, !1757, !1758, !1759, !1760}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1747, file: !1742, line: 96, baseType: !522, size: 64)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1747, file: !1742, line: 97, baseType: !1751, size: 64, offset: 64)
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1752 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1742, line: 60, baseType: !1753)
!1753 = !DISubroutineType(types: !1754)
!1754 = !{null, !1755}
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1747, file: !1742, line: 98, baseType: !1751, size: 64, offset: 128)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1747, file: !1742, line: 99, baseType: !729, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1747, file: !1742, line: 100, baseType: !729, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1747, file: !1742, line: 101, baseType: !509, size: 128, align: 64, offset: 256)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1747, file: !1742, line: 102, baseType: !1755, size: 64, offset: 384)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1728, file: !73, line: 129, baseType: !1762, size: 256, offset: 512)
!1762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1763, line: 26, size: 256, elements: !1764)
!1763 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1764 = !{!1765, !1766}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1762, file: !1763, line: 27, baseType: !13, size: 32)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1762, file: !1763, line: 28, baseType: !1767, size: 192, offset: 64)
!1767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1768, line: 43, size: 192, elements: !1769)
!1768 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1769 = !{!1770, !1771}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1767, file: !1768, line: 44, baseType: !282, size: 32)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1767, file: !1768, line: 45, baseType: !189, size: 128, offset: 64)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1728, file: !73, line: 130, baseType: !72, size: 32, offset: 768)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1728, file: !73, line: 131, baseType: !13, size: 32, offset: 800)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1728, file: !73, line: 132, baseType: !98, size: 64, offset: 832)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1728, file: !73, line: 133, baseType: !1776, size: 64, offset: 896)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1777 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1778)
!1778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !73, line: 77, size: 192, elements: !1779)
!1779 = !{!1780, !1784, !1944}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1778, file: !73, line: 83, baseType: !1781, size: 64)
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1782, size: 64)
!1782 = !DISubroutineType(types: !1783)
!1783 = !{null, !1677}
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1778, file: !73, line: 89, baseType: !1785, size: 64, offset: 64)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = !DISubroutineType(types: !1787)
!1787 = !{!1788, !1789}
!1788 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !37, line: 1184, baseType: !13)
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1791, line: 512, size: 896, elements: !1792)
!1791 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1792 = !{!1793, !1911, !1912, !1919, !1926, !1936, !1937, !1938, !1940, !1942}
!1793 = !DIDerivedType(tag: DW_TAG_member, scope: !1790, file: !1791, line: 513, baseType: !1794, size: 320)
!1794 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1790, file: !1791, line: 513, size: 320, elements: !1795)
!1795 = !{!1796, !1907, !1908, !1909, !1910}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1794, file: !1791, line: 514, baseType: !1797, size: 64)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !37, line: 625, size: 1344, elements: !1799)
!1799 = !{!1800, !1809, !1810, !1818, !1825, !1826, !1831, !1832, !1837, !1838, !1841, !1900, !1901, !1902, !1903, !1904, !1905}
!1800 = !DIDerivedType(tag: DW_TAG_member, scope: !1798, file: !37, line: 628, baseType: !1801, size: 128)
!1801 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1798, file: !37, line: 628, size: 128, elements: !1802)
!1802 = !{!1803, !1808}
!1803 = !DIDerivedType(tag: DW_TAG_member, scope: !1801, file: !37, line: 629, baseType: !1804, size: 128)
!1804 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1801, file: !37, line: 629, size: 128, elements: !1805)
!1805 = !{!1806, !1807}
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1804, file: !37, line: 631, baseType: !98, size: 64)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1804, file: !37, line: 632, baseType: !98, size: 64, offset: 64)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1801, file: !37, line: 635, baseType: !509, size: 128, align: 64)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1798, file: !37, line: 639, baseType: !465, size: 64, offset: 128)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1798, file: !37, line: 640, baseType: !1811, size: 64, offset: 192)
!1811 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1812, line: 297, baseType: !1813)
!1812 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1812, line: 297, size: 64, elements: !1814)
!1814 = !{!1815}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1813, file: !1812, line: 297, baseType: !1816, size: 64)
!1816 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1817, line: 19, baseType: !98)
!1817 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1818 = !DIDerivedType(tag: DW_TAG_member, scope: !1798, file: !37, line: 646, baseType: !1819, size: 64, offset: 256)
!1819 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1798, file: !37, line: 646, size: 64, elements: !1820)
!1820 = !{!1821, !1824}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1819, file: !37, line: 647, baseType: !1822, size: 64)
!1822 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1823)
!1823 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !37, line: 542, baseType: !98)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1819, file: !37, line: 648, baseType: !1823, size: 64)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1798, file: !37, line: 666, baseType: !96, size: 32, offset: 320)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1798, file: !37, line: 667, baseType: !1827, size: 64, offset: 384)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !37, line: 579, size: 320, elements: !1829)
!1829 = !{!1830}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1828, file: !37, line: 580, baseType: !670, size: 320)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1798, file: !37, line: 670, baseType: !729, size: 8, offset: 448)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1798, file: !37, line: 681, baseType: !1833, size: 256, offset: 512)
!1833 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1798, file: !37, line: 678, size: 256, elements: !1834)
!1834 = !{!1835, !1836}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1833, file: !37, line: 679, baseType: !179, size: 192, align: 64)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1833, file: !37, line: 680, baseType: !98, size: 64, offset: 192)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1798, file: !37, line: 689, baseType: !189, size: 128, offset: 768)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1798, file: !37, line: 691, baseType: !1839, size: 64, offset: 896)
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1840, size: 64)
!1840 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !37, line: 691, flags: DIFlagFwdDecl)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1798, file: !37, line: 694, baseType: !1842, size: 64, offset: 960)
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1843 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1844)
!1844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1791, line: 563, size: 1024, elements: !1845)
!1845 = !{!1846, !1850, !1851, !1855, !1859, !1863, !1864, !1868, !1872, !1876, !1877, !1878, !1882, !1886, !1892, !1896}
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1844, file: !1791, line: 564, baseType: !1847, size: 64)
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1848, size: 64)
!1848 = !DISubroutineType(types: !1849)
!1849 = !{null, !1797}
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1844, file: !1791, line: 569, baseType: !1847, size: 64, offset: 64)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1844, file: !1791, line: 571, baseType: !1852, size: 64, offset: 128)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = !DISubroutineType(types: !1854)
!1854 = !{!96, !1797, !98}
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1844, file: !1791, line: 572, baseType: !1856, size: 64, offset: 192)
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1857 = !DISubroutineType(types: !1858)
!1858 = !{!96, !1797}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1844, file: !1791, line: 578, baseType: !1860, size: 64, offset: 256)
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = !DISubroutineType(types: !1862)
!1862 = !{!96, !1797, !98, !98, !98}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1844, file: !1791, line: 580, baseType: !1785, size: 64, offset: 320)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1844, file: !1791, line: 581, baseType: !1865, size: 64, offset: 384)
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1866 = !DISubroutineType(types: !1867)
!1867 = !{!1788, !1789, !13}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1844, file: !1791, line: 582, baseType: !1869, size: 64, offset: 448)
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1870 = !DISubroutineType(types: !1871)
!1871 = !{!1788, !1789, !98, !98}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1844, file: !1791, line: 584, baseType: !1873, size: 64, offset: 512)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = !DISubroutineType(types: !1875)
!1875 = !{!98, !1797}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1844, file: !1791, line: 588, baseType: !1785, size: 64, offset: 576)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1844, file: !1791, line: 591, baseType: !1785, size: 64, offset: 640)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1844, file: !1791, line: 597, baseType: !1879, size: 64, offset: 704)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1880 = !DISubroutineType(types: !1881)
!1881 = !{!96, !1797, !98, !99, !96, !96}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1844, file: !1791, line: 603, baseType: !1883, size: 64, offset: 768)
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = !DISubroutineType(types: !1885)
!1885 = !{!107, !1797}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1844, file: !1791, line: 613, baseType: !1887, size: 64, offset: 832)
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1888 = !DISubroutineType(types: !1889)
!1889 = !{!96, !1797, !1890}
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !37, line: 717, flags: DIFlagFwdDecl)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1844, file: !1791, line: 625, baseType: !1893, size: 64, offset: 896)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = !DISubroutineType(types: !1895)
!1895 = !{!1890, !1797, !98}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1844, file: !1791, line: 633, baseType: !1897, size: 64, offset: 960)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = !DISubroutineType(types: !1899)
!1899 = !{!1677, !1797, !98}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1798, file: !37, line: 697, baseType: !98, size: 64, offset: 1024)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1798, file: !37, line: 699, baseType: !501, size: 64, offset: 1088)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1798, file: !37, line: 700, baseType: !99, size: 64, offset: 1152)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1798, file: !37, line: 711, baseType: !522, size: 64, offset: 1216)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1798, file: !37, line: 717, baseType: !1890, size: 64, offset: 1280)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1798, file: !37, line: 722, baseType: !1906, offset: 1344)
!1906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !37, line: 570, elements: !494)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1794, file: !1791, line: 515, baseType: !1095, size: 32, offset: 64)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1794, file: !1791, line: 516, baseType: !98, size: 64, offset: 128)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1794, file: !1791, line: 517, baseType: !98, size: 64, offset: 192)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1794, file: !1791, line: 518, baseType: !98, size: 64, offset: 256)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1790, file: !1791, line: 520, baseType: !36, size: 32, offset: 320)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1790, file: !1791, line: 522, baseType: !1913, size: 64, offset: 384)
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1914 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1817, line: 22, baseType: !1915)
!1915 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1817, line: 22, size: 64, elements: !1916)
!1916 = !{!1917}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1915, file: !1817, line: 22, baseType: !1918, size: 64)
!1918 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1817, line: 15, baseType: !98)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1790, file: !1791, line: 524, baseType: !1920, size: 64, offset: 448)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1812, line: 372, baseType: !1922)
!1922 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1812, line: 372, size: 64, elements: !1923)
!1923 = !{!1924}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1922, file: !1812, line: 372, baseType: !1925, size: 64)
!1925 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1817, line: 16, baseType: !98)
!1926 = !DIDerivedType(tag: DW_TAG_member, scope: !1790, file: !1791, line: 527, baseType: !1927, size: 64, offset: 512)
!1927 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1790, file: !1791, line: 527, size: 64, elements: !1928)
!1928 = !{!1929, !1935}
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1927, file: !1791, line: 528, baseType: !1930, size: 64)
!1930 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1817, line: 21, baseType: !1931)
!1931 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1817, line: 21, size: 64, elements: !1932)
!1932 = !{!1933}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1931, file: !1817, line: 21, baseType: !1934, size: 64)
!1934 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1817, line: 14, baseType: !98)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1927, file: !1791, line: 529, baseType: !1914, size: 64)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1790, file: !1791, line: 534, baseType: !1677, size: 64, offset: 576)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1790, file: !1791, line: 535, baseType: !1677, size: 64, offset: 640)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1790, file: !1791, line: 541, baseType: !1939, size: 64, offset: 704)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1790, file: !1791, line: 545, baseType: !1941, size: 64, offset: 768)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1790, file: !1791, line: 549, baseType: !1943, size: 64, offset: 832)
!1943 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1812, line: 520, baseType: !1677)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1778, file: !73, line: 100, baseType: !1945, size: 64, offset: 128)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = !DISubroutineType(types: !1947)
!1947 = !{!96, !1727, !98, !98, !96}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1728, file: !73, line: 134, baseType: !99, size: 64, offset: 960)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1728, file: !73, line: 135, baseType: !96, size: 32, offset: 1024)
!1950 = !DIDerivedType(tag: DW_TAG_member, scope: !1728, file: !73, line: 136, baseType: !1951, size: 128, offset: 1088)
!1951 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1728, file: !73, line: 136, size: 128, elements: !1952)
!1952 = !{!1953, !1959}
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1951, file: !73, line: 137, baseType: !1954, size: 128)
!1954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1955, line: 6, size: 128, elements: !1956)
!1955 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1956 = !{!1957, !1958}
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1954, file: !1955, line: 7, baseType: !100, size: 64)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1954, file: !1955, line: 8, baseType: !100, size: 64, offset: 64)
!1959 = !DIDerivedType(tag: DW_TAG_member, scope: !1951, file: !73, line: 138, baseType: !1960)
!1960 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1951, file: !73, line: 138, elements: !1961)
!1961 = !{!1962, !1964}
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1960, file: !73, line: 138, baseType: !1963)
!1963 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1960, file: !73, line: 138, elements: !494)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1960, file: !73, line: 138, baseType: !1965)
!1965 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1954, elements: !607)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1724, file: !37, line: 147, baseType: !99, size: 64, offset: 64)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1682, file: !37, line: 161, baseType: !509, size: 128, align: 64)
!1968 = !DIDerivedType(tag: DW_TAG_member, scope: !1678, file: !37, line: 164, baseType: !1969, size: 32, offset: 384)
!1969 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1678, file: !37, line: 164, size: 32, elements: !1970)
!1970 = !{!1971, !1972}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1969, file: !37, line: 169, baseType: !132, size: 32)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1969, file: !37, line: 177, baseType: !13, size: 32)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1678, file: !37, line: 181, baseType: !132, size: 32, offset: 416)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1671, file: !12, line: 406, baseType: !1975, size: 64, offset: 64)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = !DISubroutineType(types: !1977)
!1977 = !{!96, !501, !1978}
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !37, line: 293, size: 1536, elements: !1980)
!1980 = !{!1981, !2011, !2025}
!1981 = !DIDerivedType(tag: DW_TAG_member, scope: !1979, file: !37, line: 295, baseType: !1982, size: 512)
!1982 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1979, file: !37, line: 295, size: 512, elements: !1983)
!1983 = !{!1984, !2010}
!1984 = !DIDerivedType(tag: DW_TAG_member, scope: !1982, file: !37, line: 296, baseType: !1985, size: 448)
!1985 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1982, file: !37, line: 296, size: 448, elements: !1986)
!1986 = !{!1987, !1988, !1997, !1998, !1999, !2008, !2009}
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1985, file: !37, line: 298, baseType: !98, size: 64)
!1988 = !DIDerivedType(tag: DW_TAG_member, scope: !1985, file: !37, line: 299, baseType: !1989, size: 128, offset: 64)
!1989 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1985, file: !37, line: 299, size: 128, elements: !1990)
!1990 = !{!1991, !1992}
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1989, file: !37, line: 300, baseType: !189, size: 128)
!1992 = !DIDerivedType(tag: DW_TAG_member, scope: !1989, file: !37, line: 302, baseType: !1993, size: 128)
!1993 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1989, file: !37, line: 302, size: 128, elements: !1994)
!1994 = !{!1995, !1996}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1993, file: !37, line: 303, baseType: !99, size: 64)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1993, file: !37, line: 305, baseType: !13, size: 32, offset: 64)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1985, file: !37, line: 310, baseType: !1657, size: 64, offset: 192)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1985, file: !37, line: 311, baseType: !98, size: 64, offset: 256)
!1999 = !DIDerivedType(tag: DW_TAG_member, scope: !1985, file: !37, line: 312, baseType: !2000, size: 64, offset: 320)
!2000 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1985, file: !37, line: 312, size: 64, elements: !2001)
!2001 = !{!2002, !2003}
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2000, file: !37, line: 313, baseType: !99, size: 64)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !2000, file: !37, line: 314, baseType: !2004, size: 64)
!2004 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !37, line: 257, baseType: !2005)
!2005 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !37, line: 255, size: 64, elements: !2006)
!2006 = !{!2007}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2005, file: !37, line: 256, baseType: !98, size: 64)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1985, file: !37, line: 316, baseType: !132, size: 32, offset: 384)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1985, file: !37, line: 317, baseType: !132, size: 32, offset: 416)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1982, file: !37, line: 323, baseType: !1678, size: 512, align: 128)
!2011 = !DIDerivedType(tag: DW_TAG_member, scope: !1979, file: !37, line: 325, baseType: !2012, size: 512, offset: 512)
!2012 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1979, file: !37, line: 325, size: 512, elements: !2013)
!2013 = !{!2014, !2024}
!2014 = !DIDerivedType(tag: DW_TAG_member, scope: !2012, file: !37, line: 326, baseType: !2015, size: 320)
!2015 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2012, file: !37, line: 326, size: 320, elements: !2016)
!2016 = !{!2017, !2018, !2019, !2020, !2021, !2022, !2023}
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !2015, file: !37, line: 327, baseType: !98, size: 64)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !2015, file: !37, line: 328, baseType: !98, size: 64, offset: 64)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !2015, file: !37, line: 329, baseType: !98, size: 64, offset: 128)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !2015, file: !37, line: 331, baseType: !132, size: 32, offset: 192)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !2015, file: !37, line: 332, baseType: !132, size: 32, offset: 224)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !2015, file: !37, line: 333, baseType: !132, size: 32, offset: 256)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !2015, file: !37, line: 335, baseType: !13, size: 32, offset: 288)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !2012, file: !37, line: 339, baseType: !1678, size: 512, align: 128)
!2025 = !DIDerivedType(tag: DW_TAG_member, scope: !1979, file: !37, line: 341, baseType: !2026, size: 512, offset: 1024)
!2026 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1979, file: !37, line: 341, size: 512, elements: !2027)
!2027 = !{!2028, !2037, !2043}
!2028 = !DIDerivedType(tag: DW_TAG_member, scope: !2026, file: !37, line: 342, baseType: !2029, size: 384)
!2029 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2026, file: !37, line: 342, size: 384, elements: !2030)
!2030 = !{!2031, !2032, !2033, !2034, !2035, !2036}
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !2029, file: !37, line: 343, baseType: !98, size: 64)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !2029, file: !37, line: 344, baseType: !98, size: 64, offset: 64)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !2029, file: !37, line: 346, baseType: !99, size: 64, offset: 128)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !2029, file: !37, line: 347, baseType: !99, size: 64, offset: 192)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !2029, file: !37, line: 348, baseType: !99, size: 64, offset: 256)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !2029, file: !37, line: 349, baseType: !99, size: 64, offset: 320)
!2037 = !DIDerivedType(tag: DW_TAG_member, scope: !2026, file: !37, line: 352, baseType: !2038, size: 256)
!2038 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2026, file: !37, line: 352, size: 256, elements: !2039)
!2039 = !{!2040, !2041, !2042}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !2038, file: !37, line: 353, baseType: !98, size: 64)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !2038, file: !37, line: 354, baseType: !98, size: 64, offset: 64)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !2038, file: !37, line: 356, baseType: !189, size: 128, offset: 128)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !2026, file: !37, line: 359, baseType: !1678, size: 512, align: 128)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1671, file: !12, line: 409, baseType: !2045, size: 64, offset: 128)
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2046, size: 64)
!2046 = !DISubroutineType(types: !2047)
!2047 = !{!96, !1657, !1170}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1671, file: !12, line: 412, baseType: !2049, size: 64, offset: 192)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = !DISubroutineType(types: !2051)
!2051 = !{!729, !1657, !1978}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1671, file: !12, line: 414, baseType: !2053, size: 64, offset: 256)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = !DISubroutineType(types: !2055)
!2055 = !{null, !2056}
!2056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2057, size: 64)
!2057 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !12, line: 310, flags: DIFlagFwdDecl)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1671, file: !12, line: 416, baseType: !2059, size: 64, offset: 320)
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2060 = !DISubroutineType(types: !2061)
!2061 = !{!96, !501, !1657, !541, !13, !2062, !2063}
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!2063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1671, file: !12, line: 419, baseType: !2065, size: 64, offset: 384)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = !DISubroutineType(types: !2067)
!2067 = !{!96, !501, !1657, !541, !13, !13, !1677, !99}
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1671, file: !12, line: 424, baseType: !2069, size: 64, offset: 448)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = !DISubroutineType(types: !2071)
!2071 = !{!2072, !1657, !2072}
!2072 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !133, line: 131, baseType: !100)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1671, file: !12, line: 425, baseType: !2074, size: 64, offset: 512)
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2075, size: 64)
!2075 = !DISubroutineType(types: !2076)
!2076 = !{null, !1978, !1043, !1043}
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1671, file: !12, line: 426, baseType: !2078, size: 64, offset: 576)
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2079 = !DISubroutineType(types: !2080)
!2080 = !{!729, !1978, !1095}
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1671, file: !12, line: 427, baseType: !2082, size: 64, offset: 640)
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!2083 = !DISubroutineType(types: !2084)
!2084 = !{null, !1978}
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1671, file: !12, line: 428, baseType: !2086, size: 64, offset: 704)
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = !DISubroutineType(types: !2088)
!2088 = !{!1040, !2089, !2111}
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !12, line: 373, size: 384, elements: !2091)
!2091 = !{!2092, !2093, !2094, !2098, !2099, !2100, !2101}
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2090, file: !12, line: 374, baseType: !501, size: 64)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2090, file: !12, line: 375, baseType: !541, size: 64, offset: 64)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2090, file: !12, line: 376, baseType: !2095, size: 64, offset: 128)
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = !DISubroutineType(types: !2097)
!2097 = !{null, !2089, !1001}
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2090, file: !12, line: 377, baseType: !99, size: 64, offset: 192)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2090, file: !12, line: 378, baseType: !96, size: 32, offset: 256)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2090, file: !12, line: 379, baseType: !156, size: 16, offset: 288)
!2101 = !DIDerivedType(tag: DW_TAG_member, scope: !2090, file: !12, line: 380, baseType: !2102, size: 64, offset: 320)
!2102 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2090, file: !12, line: 380, size: 64, elements: !2103)
!2103 = !{!2104, !2107}
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2102, file: !12, line: 386, baseType: !2105, size: 64)
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2106, size: 64)
!2106 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !12, line: 386, flags: DIFlagFwdDecl)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2102, file: !12, line: 395, baseType: !2108, size: 64)
!2108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2109, size: 64)
!2109 = !DISubroutineType(types: !2110)
!2110 = !{!1040, !99}
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !12, line: 69, flags: DIFlagFwdDecl)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1671, file: !12, line: 433, baseType: !2114, size: 64, offset: 768)
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2115 = !DISubroutineType(types: !2116)
!2116 = !{!96, !1657, !1978, !1978, !65}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1671, file: !12, line: 435, baseType: !2118, size: 64, offset: 832)
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2119, size: 64)
!2119 = !DISubroutineType(types: !2120)
!2120 = !{!96, !1978}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1671, file: !12, line: 436, baseType: !2122, size: 64, offset: 896)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = !DISubroutineType(types: !2124)
!2124 = !{!729, !1978, !1043, !1043}
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1671, file: !12, line: 438, baseType: !2126, size: 64, offset: 960)
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2127 = !DISubroutineType(types: !2128)
!2128 = !{null, !1978, !2129, !2129}
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1671, file: !12, line: 439, baseType: !2131, size: 64, offset: 1024)
!2131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2132, size: 64)
!2132 = !DISubroutineType(types: !2133)
!2133 = !{!96, !1657, !1677}
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1671, file: !12, line: 442, baseType: !2135, size: 64, offset: 1088)
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2136 = !DISubroutineType(types: !2137)
!2137 = !{!96, !2138, !501, !2140}
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !12, line: 66, flags: DIFlagFwdDecl)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1671, file: !12, line: 444, baseType: !2142, size: 64, offset: 1152)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = !DISubroutineType(types: !2144)
!2144 = !{null, !501}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1671, file: !12, line: 445, baseType: !2146, size: 64, offset: 1216)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = !DISubroutineType(types: !2148)
!2148 = !{!96, !2089, !2111}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1658, file: !12, line: 486, baseType: !98, size: 64, offset: 896)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1658, file: !12, line: 487, baseType: !670, size: 320, offset: 960)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1658, file: !12, line: 488, baseType: !1614, size: 32, offset: 1280)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1658, file: !12, line: 489, baseType: !483, size: 32, offset: 1312)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1658, file: !12, line: 490, baseType: !189, size: 128, offset: 1344)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1658, file: !12, line: 491, baseType: !99, size: 64, offset: 1472)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !887, file: !12, line: 659, baseType: !99, size: 64, offset: 576)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !887, file: !12, line: 663, baseType: !98, size: 64, offset: 640)
!2157 = !DIDerivedType(tag: DW_TAG_member, scope: !887, file: !12, line: 671, baseType: !2158, size: 32, offset: 704)
!2158 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !887, file: !12, line: 671, size: 32, elements: !2159)
!2159 = !{!2160, !2162}
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2158, file: !12, line: 672, baseType: !2161, size: 32)
!2161 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2158, file: !12, line: 673, baseType: !13, size: 32)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !887, file: !12, line: 675, baseType: !961, size: 32, offset: 736)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !887, file: !12, line: 676, baseType: !541, size: 64, offset: 768)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !887, file: !12, line: 677, baseType: !997, size: 128, offset: 832)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !887, file: !12, line: 678, baseType: !997, size: 128, offset: 960)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !887, file: !12, line: 679, baseType: !997, size: 128, offset: 1088)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !887, file: !12, line: 680, baseType: !483, size: 32, offset: 1216)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !887, file: !12, line: 681, baseType: !158, size: 16, offset: 1248)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !887, file: !12, line: 682, baseType: !299, size: 8, offset: 1264)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !887, file: !12, line: 683, baseType: !299, size: 8, offset: 1272)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !887, file: !12, line: 684, baseType: !1405, size: 64, offset: 1280)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !887, file: !12, line: 691, baseType: !98, size: 64, offset: 1344)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !887, file: !12, line: 692, baseType: !670, size: 320, offset: 1408)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !887, file: !12, line: 694, baseType: !98, size: 64, offset: 1728)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !887, file: !12, line: 695, baseType: !98, size: 64, offset: 1792)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !887, file: !12, line: 697, baseType: !583, size: 128, offset: 1856)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !887, file: !12, line: 698, baseType: !189, size: 128, offset: 1984)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !887, file: !12, line: 707, baseType: !189, size: 128, offset: 2112)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !887, file: !12, line: 708, baseType: !189, size: 128, offset: 2240)
!2181 = !DIDerivedType(tag: DW_TAG_member, scope: !887, file: !12, line: 709, baseType: !2182, size: 128, offset: 2368)
!2182 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !887, file: !12, line: 709, size: 128, elements: !2183)
!2183 = !{!2184, !2185}
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2182, file: !12, line: 710, baseType: !579, size: 64)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2182, file: !12, line: 711, baseType: !509, size: 128, align: 64)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !887, file: !12, line: 713, baseType: !524, size: 64, offset: 2496)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !887, file: !12, line: 714, baseType: !524, size: 64, offset: 2560)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !887, file: !12, line: 715, baseType: !132, size: 32, offset: 2624)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !887, file: !12, line: 716, baseType: !132, size: 32, offset: 2656)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !887, file: !12, line: 717, baseType: !132, size: 32, offset: 2688)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !887, file: !12, line: 719, baseType: !132, size: 32, offset: 2720)
!2192 = !DIDerivedType(tag: DW_TAG_member, scope: !887, file: !12, line: 721, baseType: !2193, size: 64, offset: 2752)
!2193 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !887, file: !12, line: 721, size: 64, elements: !2194)
!2194 = !{!2195, !2326}
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2193, file: !12, line: 722, baseType: !2196, size: 64)
!2196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2197, size: 64)
!2197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2198)
!2198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !12, line: 1914, size: 2112, elements: !2199)
!2199 = !{!2200, !2201, !2205, !2210, !2214, !2215, !2216, !2222, !2235, !2243, !2247, !2248, !2252, !2253, !2257, !2262, !2263, !2267, !2271, !2277, !2278, !2282, !2283, !2289, !2293, !2294, !2299, !2303, !2307, !2311, !2315, !2316, !2322}
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2198, file: !12, line: 1915, baseType: !1132, size: 64)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2198, file: !12, line: 1916, baseType: !2202, size: 64, offset: 64)
!2202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2203, size: 64)
!2203 = !DISubroutineType(types: !2204)
!2204 = !{!541, !501, !541, !96}
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2198, file: !12, line: 1917, baseType: !2206, size: 64, offset: 128)
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2207, size: 64)
!2207 = !DISubroutineType(types: !2208)
!2208 = !{!1040, !501, !740, !1043, !2209}
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2198, file: !12, line: 1918, baseType: !2211, size: 64, offset: 192)
!2211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2212, size: 64)
!2212 = !DISubroutineType(types: !2213)
!2213 = !{!1040, !501, !107, !1043, !2209}
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2198, file: !12, line: 1919, baseType: !2086, size: 64, offset: 256)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2198, file: !12, line: 1920, baseType: !2086, size: 64, offset: 320)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2198, file: !12, line: 1921, baseType: !2217, size: 64, offset: 384)
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64)
!2218 = !DISubroutineType(types: !2219)
!2219 = !{!96, !2089, !2220, !13}
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2221, size: 64)
!2221 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !12, line: 53, flags: DIFlagFwdDecl)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2198, file: !12, line: 1923, baseType: !2223, size: 64, offset: 448)
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2224, size: 64)
!2224 = !DISubroutineType(types: !2225)
!2225 = !{!96, !501, !2226}
!2226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2227, size: 64)
!2227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !12, line: 1858, size: 128, elements: !2228)
!2228 = !{!2229, !2234}
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2227, file: !12, line: 1859, baseType: !2230, size: 64)
!2230 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !12, line: 1855, baseType: !2231)
!2231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2232, size: 64)
!2232 = !DISubroutineType(types: !2233)
!2233 = !{!729, !2226, !107, !96, !541, !100, !13}
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2227, file: !12, line: 1860, baseType: !541, size: 64, offset: 64)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2198, file: !12, line: 1924, baseType: !2236, size: 64, offset: 512)
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2237, size: 64)
!2237 = !DISubroutineType(types: !2238)
!2238 = !{!2239, !501, !2241}
!2239 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2240, line: 59, baseType: !13)
!2240 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2242, size: 64)
!2242 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !12, line: 61, flags: DIFlagFwdDecl)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2198, file: !12, line: 1925, baseType: !2244, size: 64, offset: 576)
!2244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2245, size: 64)
!2245 = !DISubroutineType(types: !2246)
!2246 = !{!1001, !501, !13, !98}
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2198, file: !12, line: 1926, baseType: !2244, size: 64, offset: 640)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2198, file: !12, line: 1927, baseType: !2249, size: 64, offset: 704)
!2249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2250, size: 64)
!2250 = !DISubroutineType(types: !2251)
!2251 = !{!96, !501, !1797}
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2198, file: !12, line: 1928, baseType: !98, size: 64, offset: 768)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2198, file: !12, line: 1929, baseType: !2254, size: 64, offset: 832)
!2254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2255, size: 64)
!2255 = !DISubroutineType(types: !2256)
!2256 = !{!96, !886, !501}
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2198, file: !12, line: 1930, baseType: !2258, size: 64, offset: 896)
!2258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2259, size: 64)
!2259 = !DISubroutineType(types: !2260)
!2260 = !{!96, !501, !2261}
!2261 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !12, line: 1061, baseType: !99)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2198, file: !12, line: 1931, baseType: !2254, size: 64, offset: 960)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2198, file: !12, line: 1932, baseType: !2264, size: 64, offset: 1024)
!2264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2265, size: 64)
!2265 = !DISubroutineType(types: !2266)
!2266 = !{!96, !501, !541, !541, !96}
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2198, file: !12, line: 1933, baseType: !2268, size: 64, offset: 1088)
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2269, size: 64)
!2269 = !DISubroutineType(types: !2270)
!2270 = !{!96, !96, !501, !96}
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2198, file: !12, line: 1934, baseType: !2272, size: 64, offset: 1152)
!2272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2273, size: 64)
!2273 = !DISubroutineType(types: !2274)
!2274 = !{!96, !501, !96, !2275}
!2275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2276, size: 64)
!2276 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !12, line: 1063, flags: DIFlagFwdDecl)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2198, file: !12, line: 1935, baseType: !498, size: 64, offset: 1216)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2198, file: !12, line: 1936, baseType: !2279, size: 64, offset: 1280)
!2279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2280, size: 64)
!2280 = !DISubroutineType(types: !2281)
!2281 = !{!96, !96}
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2198, file: !12, line: 1937, baseType: !2272, size: 64, offset: 1344)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2198, file: !12, line: 1938, baseType: !2284, size: 64, offset: 1408)
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2285, size: 64)
!2285 = !DISubroutineType(types: !2286)
!2286 = !{!1040, !2287, !501, !2209, !1043, !13}
!2287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2288, size: 64)
!2288 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !114, line: 59, flags: DIFlagFwdDecl)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2198, file: !12, line: 1939, baseType: !2290, size: 64, offset: 1472)
!2290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2291, size: 64)
!2291 = !DISubroutineType(types: !2292)
!2292 = !{!1040, !501, !2209, !2287, !1043, !13}
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !2198, file: !12, line: 1940, baseType: !2142, size: 64, offset: 1536)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2198, file: !12, line: 1941, baseType: !2295, size: 64, offset: 1600)
!2295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2296, size: 64)
!2296 = !DISubroutineType(types: !2297)
!2297 = !{!96, !501, !96, !2298, !2063}
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2275, size: 64)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2198, file: !12, line: 1942, baseType: !2300, size: 64, offset: 1664)
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2301 = !DISubroutineType(types: !2302)
!2302 = !{!1001, !501, !96, !541, !541}
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2198, file: !12, line: 1944, baseType: !2304, size: 64, offset: 1728)
!2304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2305, size: 64)
!2305 = !DISubroutineType(types: !2306)
!2306 = !{null, !1208, !501}
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2198, file: !12, line: 1948, baseType: !2308, size: 64, offset: 1792)
!2308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2309, size: 64)
!2309 = !DISubroutineType(types: !2310)
!2310 = !{!1040, !501, !541, !501, !541, !1043, !13}
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2198, file: !12, line: 1950, baseType: !2312, size: 64, offset: 1856)
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2313, size: 64)
!2313 = !DISubroutineType(types: !2314)
!2314 = !{!541, !501, !541, !501, !541, !541, !13}
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2198, file: !12, line: 1953, baseType: !2264, size: 64, offset: 1920)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !2198, file: !12, line: 1954, baseType: !2317, size: 64, offset: 1984)
!2317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2318, size: 64)
!2318 = !DISubroutineType(types: !2319)
!2319 = !{!96, !2320, !13}
!2320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2321, size: 64)
!2321 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !12, line: 1911, flags: DIFlagFwdDecl)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !2198, file: !12, line: 1955, baseType: !2323, size: 64, offset: 2048)
!2323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2324, size: 64)
!2324 = !DISubroutineType(types: !2325)
!2325 = !{!96, !2320, !2220, !13}
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2193, file: !12, line: 723, baseType: !1158, size: 64)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !887, file: !12, line: 725, baseType: !2328, size: 64, offset: 2816)
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2329, size: 64)
!2329 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !12, line: 725, flags: DIFlagFwdDecl)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !887, file: !12, line: 726, baseType: !1658, size: 1536, align: 64, offset: 2880)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !887, file: !12, line: 727, baseType: !189, size: 128, offset: 4416)
!2332 = !DIDerivedType(tag: DW_TAG_member, scope: !887, file: !12, line: 728, baseType: !2333, size: 64, offset: 4544)
!2333 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !887, file: !12, line: 728, size: 64, elements: !2334)
!2334 = !{!2335, !2336, !2339, !2340}
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2333, file: !12, line: 729, baseType: !2287, size: 64)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2333, file: !12, line: 730, baseType: !2337, size: 64)
!2337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2338, size: 64)
!2338 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !12, line: 730, flags: DIFlagFwdDecl)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2333, file: !12, line: 731, baseType: !740, size: 64)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2333, file: !12, line: 732, baseType: !13, size: 32)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !887, file: !12, line: 735, baseType: !110, size: 32, offset: 4608)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !887, file: !12, line: 738, baseType: !110, size: 32, offset: 4640)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !887, file: !12, line: 739, baseType: !1518, size: 64, offset: 4672)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !887, file: !12, line: 750, baseType: !99, size: 64, offset: 4736)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !852, file: !853, line: 91, baseType: !2346, size: 256, offset: 448)
!2346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !301, size: 256, elements: !1522)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !852, file: !853, line: 94, baseType: !2348, size: 64, offset: 704)
!2348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !2349, line: 25, size: 64, elements: !2350)
!2349 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!2350 = !{!2351}
!2351 = !DIDerivedType(tag: DW_TAG_member, scope: !2348, file: !2349, line: 26, baseType: !2352, size: 64)
!2352 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2348, file: !2349, line: 26, size: 64, elements: !2353)
!2353 = !{!2354, !2355}
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !2352, file: !2349, line: 28, baseType: !102, size: 64, align: 64)
!2355 = !DIDerivedType(tag: DW_TAG_member, scope: !2352, file: !2349, line: 30, baseType: !2356, size: 64)
!2356 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2352, file: !2349, line: 30, size: 64, elements: !2357)
!2357 = !{!2358, !2359}
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2356, file: !2349, line: 31, baseType: !483, size: 32)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2356, file: !2349, line: 32, baseType: !96, size: 32, offset: 32)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !852, file: !853, line: 95, baseType: !1537, size: 64, offset: 768)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !852, file: !853, line: 96, baseType: !1099, size: 64, offset: 832)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !852, file: !853, line: 97, baseType: !98, size: 64, offset: 896)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !852, file: !853, line: 98, baseType: !99, size: 64, offset: 960)
!2364 = !DIDerivedType(tag: DW_TAG_member, scope: !852, file: !853, line: 100, baseType: !2365, size: 128, offset: 1024)
!2365 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !852, file: !853, line: 100, size: 128, elements: !2366)
!2366 = !{!2367, !2368}
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2365, file: !853, line: 101, baseType: !189, size: 128)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2365, file: !853, line: 102, baseType: !2369, size: 64)
!2369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !852, file: !853, line: 104, baseType: !189, size: 128, offset: 1152)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !852, file: !853, line: 105, baseType: !189, size: 128, offset: 1280)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !852, file: !853, line: 113, baseType: !2373, size: 128, offset: 1408)
!2373 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !852, file: !853, line: 109, size: 128, elements: !2374)
!2374 = !{!2375, !2376, !2377}
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2373, file: !853, line: 110, baseType: !583, size: 128)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2373, file: !853, line: 111, baseType: !862, size: 128)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2373, file: !853, line: 112, baseType: !509, size: 128, align: 64)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !847, file: !848, line: 72, baseType: !1099, size: 64, offset: 64)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !847, file: !848, line: 73, baseType: !96, size: 32, offset: 128)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !847, file: !848, line: 74, baseType: !926, size: 64, offset: 192)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !842, file: !843, line: 10, baseType: !851, size: 64, offset: 64)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !502, file: !12, line: 1015, baseType: !886, size: 64, offset: 1344)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !502, file: !12, line: 1016, baseType: !2196, size: 64, offset: 1408)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !502, file: !12, line: 1018, baseType: !100, size: 64, offset: 1472)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !502, file: !12, line: 1020, baseType: !99, size: 64, offset: 1536)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !502, file: !12, line: 1023, baseType: !99, size: 64, offset: 1600)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !502, file: !12, line: 1027, baseType: !2388, size: 64, offset: 1664)
!2388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !502, file: !12, line: 1029, baseType: !1657, size: 64, offset: 1728)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !502, file: !12, line: 1030, baseType: !1614, size: 32, offset: 1792)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !502, file: !12, line: 1031, baseType: !1614, size: 32, offset: 1824)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !469, file: !37, line: 756, baseType: !98, size: 64, offset: 704)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !469, file: !37, line: 757, baseType: !98, size: 64, offset: 768)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !469, file: !37, line: 760, baseType: !98, size: 64, offset: 832)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !469, file: !37, line: 761, baseType: !98, size: 64, offset: 896)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !469, file: !37, line: 763, baseType: !98, size: 64, offset: 960)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !469, file: !37, line: 764, baseType: !2398, size: 64, offset: 1024)
!2398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2399, size: 64)
!2399 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1812, line: 299, baseType: !2400)
!2400 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1812, line: 299, size: 64, elements: !2401)
!2401 = !{!2402}
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2400, file: !1812, line: 299, baseType: !2403, size: 64)
!2403 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1817, line: 18, baseType: !98)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !469, file: !37, line: 773, baseType: !132, size: 32, offset: 1088)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !469, file: !37, line: 785, baseType: !132, size: 32, offset: 1120)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !469, file: !37, line: 795, baseType: !2407, size: 64, offset: 1152)
!2407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2408, size: 64)
!2408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !37, line: 726, size: 128, elements: !2409)
!2409 = !{!2410, !2411}
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2408, file: !37, line: 727, baseType: !100, size: 64)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2408, file: !37, line: 728, baseType: !96, size: 32, offset: 64)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !469, file: !37, line: 801, baseType: !98, size: 64, offset: 1216)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !469, file: !37, line: 804, baseType: !522, size: 64, offset: 1280)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !469, file: !37, line: 806, baseType: !96, size: 32, offset: 1344)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !469, file: !37, line: 808, baseType: !483, size: 32, offset: 1376)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !469, file: !37, line: 823, baseType: !670, size: 320, offset: 1408)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !469, file: !37, line: 825, baseType: !189, size: 128, offset: 1728)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !469, file: !37, line: 845, baseType: !96, size: 32, offset: 1856)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !469, file: !37, line: 849, baseType: !98, size: 64, offset: 1920)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !469, file: !37, line: 850, baseType: !98, size: 64, offset: 1984)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !469, file: !37, line: 852, baseType: !98, size: 64, offset: 2048)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !469, file: !37, line: 853, baseType: !98, size: 64, offset: 2112)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !469, file: !37, line: 854, baseType: !524, size: 64, offset: 2176)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !469, file: !37, line: 855, baseType: !98, size: 64, offset: 2240)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !469, file: !37, line: 856, baseType: !98, size: 64, offset: 2304)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !469, file: !37, line: 857, baseType: !98, size: 64, offset: 2368)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !469, file: !37, line: 858, baseType: !98, size: 64, offset: 2432)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !469, file: !37, line: 865, baseType: !339, size: 32, offset: 2496)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !469, file: !37, line: 867, baseType: !483, size: 32, offset: 2528)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !469, file: !37, line: 869, baseType: !98, size: 64, offset: 2560)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !469, file: !37, line: 869, baseType: !98, size: 64, offset: 2624)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !469, file: !37, line: 869, baseType: !98, size: 64, offset: 2688)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !469, file: !37, line: 869, baseType: !98, size: 64, offset: 2752)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !469, file: !37, line: 870, baseType: !98, size: 64, offset: 2816)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !469, file: !37, line: 870, baseType: !98, size: 64, offset: 2880)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !469, file: !37, line: 870, baseType: !98, size: 64, offset: 2944)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !469, file: !37, line: 871, baseType: !98, size: 64, offset: 3008)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !469, file: !37, line: 871, baseType: !98, size: 64, offset: 3072)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !469, file: !37, line: 871, baseType: !98, size: 64, offset: 3136)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !469, file: !37, line: 871, baseType: !98, size: 64, offset: 3200)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !469, file: !37, line: 873, baseType: !2442, size: 3328, offset: 3264)
!2442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 3328, elements: !2443)
!2443 = !{!2444}
!2444 = !DISubrange(count: 52)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !469, file: !37, line: 875, baseType: !2446, size: 1280, offset: 6592)
!2446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !788, size: 1280, elements: !588)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !469, file: !37, line: 877, baseType: !2448, size: 64, offset: 7872)
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2449, size: 64)
!2449 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !37, line: 877, flags: DIFlagFwdDecl)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !469, file: !37, line: 880, baseType: !2451, size: 1088, offset: 7936)
!2451 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2452, line: 72, baseType: !2453)
!2452 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2453 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2452, line: 23, size: 1088, elements: !2454)
!2454 = !{!2455, !2456, !2457, !2458, !2459, !2462, !2463, !2464, !2465, !2469, !2470, !2471}
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2453, file: !2452, line: 28, baseType: !100, size: 64)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2453, file: !2452, line: 38, baseType: !524, size: 64, offset: 64)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2453, file: !2452, line: 40, baseType: !98, size: 64, offset: 128)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2453, file: !2452, line: 43, baseType: !670, size: 320, offset: 192)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2453, file: !2452, line: 44, baseType: !2460, size: 64, offset: 512)
!2460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2461, size: 64)
!2461 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2452, line: 44, flags: DIFlagFwdDecl)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2453, file: !2452, line: 48, baseType: !98, size: 64, offset: 576)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2453, file: !2452, line: 59, baseType: !529, size: 256, offset: 640)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2453, file: !2452, line: 60, baseType: !99, size: 64, offset: 896)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2453, file: !2452, line: 61, baseType: !2466, size: 64, offset: 960)
!2466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2467, size: 64)
!2467 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2468)
!2468 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2452, line: 61, flags: DIFlagFwdDecl)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2453, file: !2452, line: 63, baseType: !132, size: 32, offset: 1024)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2453, file: !2452, line: 69, baseType: !156, size: 16, offset: 1056)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2453, file: !2452, line: 70, baseType: !2472, size: 16, offset: 1072)
!2472 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !101, line: 18, baseType: !2473)
!2473 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !103, line: 23, baseType: !698)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !469, file: !37, line: 882, baseType: !98, size: 64, offset: 9024)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !469, file: !37, line: 885, baseType: !483, size: 32, offset: 9088)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !469, file: !37, line: 886, baseType: !2477, size: 64, offset: 9152)
!2477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2478, size: 64)
!2478 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !37, line: 732, flags: DIFlagFwdDecl)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !469, file: !37, line: 901, baseType: !813, size: 64, offset: 9216)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !469, file: !37, line: 904, baseType: !501, size: 64, offset: 9280)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !469, file: !37, line: 906, baseType: !2482, size: 64, offset: 9344)
!2482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2483, size: 64)
!2483 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !37, line: 906, flags: DIFlagFwdDecl)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !469, file: !37, line: 930, baseType: !132, size: 32, offset: 9408)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !469, file: !37, line: 933, baseType: !132, size: 32, offset: 9440)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !469, file: !37, line: 935, baseType: !2487, size: 64, offset: 9472)
!2487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !59, line: 103, size: 64, elements: !2488)
!2488 = !{!2489}
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2487, file: !59, line: 104, baseType: !2490, size: 64)
!2490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2491, size: 64)
!2491 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !59, line: 101, flags: DIFlagFwdDecl)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !469, file: !37, line: 940, baseType: !522, size: 64, offset: 9536)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !469, file: !37, line: 942, baseType: !1640, size: 256, offset: 9600)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !466, file: !37, line: 986, baseType: !2495, offset: 10240)
!2495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, elements: !607)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !113, file: !114, line: 882, baseType: !465, size: 64, offset: 9792)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !113, file: !114, line: 884, baseType: !96, size: 32, offset: 9856)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !113, file: !114, line: 885, baseType: !96, size: 32, offset: 9888)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !113, file: !114, line: 886, baseType: !96, size: 32, offset: 9920)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !113, file: !114, line: 888, baseType: !96, size: 32, offset: 9952)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !113, file: !114, line: 890, baseType: !98, size: 64, offset: 9984)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !113, file: !114, line: 893, baseType: !13, size: 32, offset: 10048)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !113, file: !114, line: 896, baseType: !13, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !113, file: !114, line: 897, baseType: !13, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !113, file: !114, line: 898, baseType: !13, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !113, file: !114, line: 899, baseType: !13, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !113, file: !114, line: 919, baseType: !13, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !113, file: !114, line: 922, baseType: !13, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !113, file: !114, line: 923, baseType: !13, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !113, file: !114, line: 925, baseType: !13, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !113, file: !114, line: 939, baseType: !13, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !113, file: !114, line: 941, baseType: !13, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !113, file: !114, line: 944, baseType: !13, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !113, file: !114, line: 956, baseType: !13, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !113, file: !114, line: 962, baseType: !13, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !113, file: !114, line: 966, baseType: !13, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !113, file: !114, line: 969, baseType: !98, size: 64, offset: 10176)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !113, file: !114, line: 971, baseType: !2519, size: 448, offset: 10240)
!2519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !53, line: 25, size: 448, elements: !2520)
!2520 = !{!2521, !2522, !2527}
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2519, file: !53, line: 26, baseType: !98, size: 64)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2519, file: !53, line: 27, baseType: !2523, size: 64, offset: 64)
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!2524 = !DISubroutineType(types: !2525)
!2525 = !{!1001, !2526}
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2519, size: 64)
!2527 = !DIDerivedType(tag: DW_TAG_member, scope: !2519, file: !53, line: 28, baseType: !2528, size: 320, offset: 128)
!2528 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2519, file: !53, line: 28, size: 320, elements: !2529)
!2529 = !{!2530, !2540, !2565}
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2528, file: !53, line: 37, baseType: !2531, size: 320)
!2531 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2528, file: !53, line: 30, size: 320, elements: !2532)
!2532 = !{!2533, !2535, !2536, !2537, !2538, !2539}
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2531, file: !53, line: 31, baseType: !2534, size: 64)
!2534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2531, file: !53, line: 32, baseType: !109, size: 32, offset: 64)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2531, file: !53, line: 33, baseType: !109, size: 32, offset: 96)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2531, file: !53, line: 34, baseType: !109, size: 32, offset: 128)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2531, file: !53, line: 35, baseType: !100, size: 64, offset: 192)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2531, file: !53, line: 36, baseType: !2534, size: 64, offset: 256)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2528, file: !53, line: 47, baseType: !2541, size: 192)
!2541 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2528, file: !53, line: 39, size: 192, elements: !2542)
!2542 = !{!2543, !2544, !2545, !2564}
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2541, file: !53, line: 40, baseType: !330, size: 32)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2541, file: !53, line: 41, baseType: !52, size: 32, offset: 32)
!2545 = !DIDerivedType(tag: DW_TAG_member, scope: !2541, file: !53, line: 42, baseType: !2546, size: 64, offset: 64)
!2546 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2541, file: !53, line: 42, size: 64, elements: !2547)
!2547 = !{!2548, !2556}
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2546, file: !53, line: 43, baseType: !2549, size: 64)
!2549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2550, size: 64)
!2550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2551, line: 7, size: 128, elements: !2552)
!2551 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2552 = !{!2553, !2555}
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2550, file: !2551, line: 8, baseType: !2554, size: 64)
!2554 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !332, line: 93, baseType: !202)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2550, file: !2551, line: 9, baseType: !202, size: 64, offset: 64)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2546, file: !53, line: 44, baseType: !2557, size: 64)
!2557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2558, size: 64)
!2558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2559, line: 7, size: 64, elements: !2560)
!2559 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2560 = !{!2561, !2563}
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2558, file: !2559, line: 8, baseType: !2562, size: 32)
!2562 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2559, line: 5, baseType: !662)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2558, file: !2559, line: 9, baseType: !662, size: 32, offset: 32)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2541, file: !53, line: 46, baseType: !100, size: 64, offset: 128)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2528, file: !53, line: 55, baseType: !2566, size: 256)
!2566 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2528, file: !53, line: 49, size: 256, elements: !2567)
!2567 = !{!2568, !2571, !2572, !2573, !2574}
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2566, file: !53, line: 50, baseType: !2569, size: 64)
!2569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2570, size: 64)
!2570 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !53, line: 14, flags: DIFlagFwdDecl)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2566, file: !53, line: 51, baseType: !96, size: 32, offset: 64)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2566, file: !53, line: 52, baseType: !96, size: 32, offset: 96)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2566, file: !53, line: 53, baseType: !98, size: 64, offset: 128)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2566, file: !53, line: 54, baseType: !98, size: 64, offset: 192)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !113, file: !114, line: 973, baseType: !2576, size: 32, offset: 10688)
!2576 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !133, line: 27, baseType: !2577)
!2577 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !332, line: 28, baseType: !96)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !113, file: !114, line: 974, baseType: !2576, size: 32, offset: 10720)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !113, file: !114, line: 978, baseType: !98, size: 64, offset: 10752)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !113, file: !114, line: 987, baseType: !112, size: 64, offset: 10816)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !113, file: !114, line: 990, baseType: !112, size: 64, offset: 10880)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !113, file: !114, line: 995, baseType: !189, size: 128, offset: 10944)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !113, file: !114, line: 996, baseType: !189, size: 128, offset: 11072)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !113, file: !114, line: 997, baseType: !112, size: 64, offset: 11200)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !113, file: !114, line: 1005, baseType: !189, size: 128, offset: 11264)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !113, file: !114, line: 1006, baseType: !189, size: 128, offset: 11392)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !113, file: !114, line: 1009, baseType: !571, size: 64, offset: 11520)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !113, file: !114, line: 1010, baseType: !2589, size: 512, offset: 11584)
!2589 = !DICompositeType(tag: DW_TAG_array_type, baseType: !583, size: 512, elements: !588)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !113, file: !114, line: 1011, baseType: !189, size: 128, offset: 12096)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !113, file: !114, line: 1012, baseType: !189, size: 128, offset: 12224)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !113, file: !114, line: 1014, baseType: !2593, size: 64, offset: 12352)
!2593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !113, file: !114, line: 1017, baseType: !1202, size: 64, offset: 12416)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !113, file: !114, line: 1020, baseType: !1202, size: 64, offset: 12480)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !113, file: !114, line: 1023, baseType: !99, size: 64, offset: 12544)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !113, file: !114, line: 1025, baseType: !100, size: 64, offset: 12608)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !113, file: !114, line: 1026, baseType: !100, size: 64, offset: 12672)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !113, file: !114, line: 1031, baseType: !100, size: 64, offset: 12736)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !113, file: !114, line: 1032, baseType: !2601, size: 192, offset: 12800)
!2601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !114, line: 324, size: 192, elements: !2602)
!2602 = !{!2603, !2604, !2605}
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2601, file: !114, line: 326, baseType: !100, size: 64)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2601, file: !114, line: 327, baseType: !100, size: 64, offset: 64)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2601, file: !114, line: 328, baseType: !282, size: 32, offset: 128)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !113, file: !114, line: 1041, baseType: !98, size: 64, offset: 12992)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !113, file: !114, line: 1042, baseType: !98, size: 64, offset: 13056)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !113, file: !114, line: 1045, baseType: !100, size: 64, offset: 13120)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !113, file: !114, line: 1048, baseType: !100, size: 64, offset: 13184)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !113, file: !114, line: 1051, baseType: !98, size: 64, offset: 13248)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !113, file: !114, line: 1052, baseType: !98, size: 64, offset: 13312)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !113, file: !114, line: 1055, baseType: !2613, size: 640, offset: 13376)
!2613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2614, line: 132, size: 640, elements: !2615)
!2614 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2615 = !{!2616, !2622, !2623}
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2613, file: !2614, line: 133, baseType: !2617, size: 576)
!2617 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2618, size: 576, elements: !567)
!2618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2614, line: 117, size: 192, elements: !2619)
!2619 = !{!2620, !2621}
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2618, file: !2614, line: 118, baseType: !100, size: 64)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2618, file: !2614, line: 119, baseType: !345, size: 128, offset: 64)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2613, file: !2614, line: 134, baseType: !13, size: 32, offset: 576)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2613, file: !2614, line: 135, baseType: !13, size: 32, offset: 608)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !113, file: !114, line: 1058, baseType: !2625, size: 448, offset: 14016)
!2625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2614, line: 144, size: 448, elements: !2626)
!2626 = !{!2627, !2628, !2629}
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2625, file: !2614, line: 145, baseType: !509, size: 128, align: 64)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2625, file: !2614, line: 146, baseType: !529, size: 256, offset: 128)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2625, file: !2614, line: 147, baseType: !13, size: 32, offset: 384)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !113, file: !114, line: 1064, baseType: !621, size: 64, offset: 14464)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !113, file: !114, line: 1067, baseType: !621, size: 64, offset: 14528)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !113, file: !114, line: 1070, baseType: !621, size: 64, offset: 14592)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !113, file: !114, line: 1074, baseType: !654, size: 64, offset: 14656)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !113, file: !114, line: 1084, baseType: !2635, size: 128, offset: 14720)
!2635 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !1531)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !113, file: !114, line: 1086, baseType: !2637, size: 64, offset: 14848)
!2637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2638, size: 64)
!2638 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !114, line: 55, flags: DIFlagFwdDecl)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !113, file: !114, line: 1089, baseType: !2640, size: 64, offset: 14912)
!2640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2641, line: 12, size: 64, elements: !2642)
!2641 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2642 = !{!2643}
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2640, file: !2641, line: 13, baseType: !2644, size: 64)
!2644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2645, size: 64)
!2645 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2641, line: 8, flags: DIFlagFwdDecl)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !113, file: !114, line: 1090, baseType: !2647, size: 128, offset: 14976)
!2647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2648, line: 13, size: 128, elements: !2649)
!2648 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2649 = !{!2650}
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2647, file: !2648, line: 14, baseType: !189, size: 128)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !113, file: !114, line: 1097, baseType: !2652, size: 64, offset: 15104)
!2652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2653, size: 64)
!2653 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !114, line: 50, flags: DIFlagFwdDecl)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !113, file: !114, line: 1100, baseType: !2655, size: 64, offset: 15168)
!2655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2656, size: 64)
!2656 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !114, line: 1100, flags: DIFlagFwdDecl)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !113, file: !114, line: 1103, baseType: !2658, size: 64, offset: 15232)
!2658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2659, size: 64)
!2659 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !114, line: 53, flags: DIFlagFwdDecl)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !113, file: !114, line: 1107, baseType: !2661, size: 64, offset: 15296)
!2661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2662, size: 64)
!2662 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !114, line: 56, flags: DIFlagFwdDecl)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !113, file: !114, line: 1110, baseType: !2664, size: 64, offset: 15360)
!2664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2665, size: 64)
!2665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2666, line: 93, size: 8768, elements: !2667)
!2666 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2667 = !{!2668, !2669, !2670, !2671, !2672, !2673, !2674, !2675, !2685, !2686, !2687, !2688, !2689, !2690, !2691, !2703, !2704, !2705, !2706, !2707, !2708, !2709, !2717, !2726, !2727, !2729, !2730, !2731, !2734, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2747, !2748, !2749, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2757, !2758, !2759, !2760, !2761, !2772, !2773, !2780, !2790, !2793, !2794, !2797, !2798, !2799, !2800, !2801, !2802}
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2665, file: !2666, line: 94, baseType: !127, size: 32)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2665, file: !2666, line: 95, baseType: !132, size: 32, offset: 32)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2665, file: !2666, line: 96, baseType: !96, size: 32, offset: 64)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2665, file: !2666, line: 97, baseType: !96, size: 32, offset: 96)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2665, file: !2666, line: 98, baseType: !189, size: 128, offset: 128)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2665, file: !2666, line: 100, baseType: !592, size: 192, offset: 256)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2665, file: !2666, line: 103, baseType: !112, size: 64, offset: 448)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2665, file: !2666, line: 106, baseType: !2676, size: 192, offset: 512)
!2676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !818, line: 32, size: 192, elements: !2677)
!2677 = !{!2678, !2679}
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2676, file: !818, line: 33, baseType: !189, size: 128)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2676, file: !818, line: 34, baseType: !2680, size: 64, offset: 128)
!2680 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2681, line: 25, baseType: !2682)
!2681 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2682 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2681, line: 23, size: 64, elements: !2683)
!2683 = !{!2684}
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2682, file: !2681, line: 24, baseType: !416, size: 64)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2665, file: !2666, line: 109, baseType: !579, size: 64, offset: 704)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2665, file: !2666, line: 112, baseType: !96, size: 32, offset: 768)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2665, file: !2666, line: 114, baseType: !96, size: 32, offset: 800)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2665, file: !2666, line: 115, baseType: !112, size: 64, offset: 832)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2665, file: !2666, line: 118, baseType: !96, size: 32, offset: 896)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2665, file: !2666, line: 119, baseType: !13, size: 32, offset: 928)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2665, file: !2666, line: 121, baseType: !2692, size: 64, offset: 960)
!2692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2693, size: 64)
!2693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2666, line: 80, size: 448, elements: !2694)
!2694 = !{!2695, !2696, !2702}
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2693, file: !2666, line: 81, baseType: !132, size: 32)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2693, file: !2666, line: 82, baseType: !2697, size: 128, offset: 64)
!2697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2666, line: 75, size: 128, elements: !2698)
!2698 = !{!2699, !2700}
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2697, file: !2666, line: 76, baseType: !112, size: 64)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2697, file: !2666, line: 77, baseType: !2701, size: 64, offset: 64)
!2701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2697, size: 64)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2693, file: !2666, line: 83, baseType: !1762, size: 256, offset: 192)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2665, file: !2666, line: 132, baseType: !13, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2665, file: !2666, line: 133, baseType: !13, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2665, file: !2666, line: 138, baseType: !13, size: 32, offset: 1056)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2665, file: !2666, line: 139, baseType: !189, size: 128, offset: 1088)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2665, file: !2666, line: 142, baseType: !257, size: 512, offset: 1216)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2665, file: !2666, line: 143, baseType: !265, size: 64, offset: 1728)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2665, file: !2666, line: 150, baseType: !2710, size: 256, offset: 1792)
!2710 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2711, size: 256, elements: !2715)
!2711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2666, line: 38, size: 128, elements: !2712)
!2712 = !{!2713, !2714}
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2711, file: !2666, line: 39, baseType: !100, size: 64)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2711, file: !2666, line: 40, baseType: !100, size: 64, offset: 64)
!2715 = !{!2716}
!2716 = !DISubrange(count: 2)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2665, file: !2666, line: 156, baseType: !2718, size: 192, offset: 2048)
!2718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2666, line: 66, size: 192, elements: !2719)
!2719 = !{!2720}
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2718, file: !2666, line: 67, baseType: !2721, size: 192)
!2721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2666, line: 47, size: 192, elements: !2722)
!2722 = !{!2723, !2724, !2725}
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2721, file: !2666, line: 48, baseType: !524, size: 64)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2721, file: !2666, line: 49, baseType: !524, size: 64, offset: 64)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2721, file: !2666, line: 50, baseType: !524, size: 64, offset: 128)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2665, file: !2666, line: 160, baseType: !2613, size: 640, offset: 2240)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2665, file: !2666, line: 163, baseType: !2728, size: 256, offset: 2880)
!2728 = !DICompositeType(tag: DW_TAG_array_type, baseType: !571, size: 256, elements: !588)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2665, file: !2666, line: 169, baseType: !571, size: 64, offset: 3136)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2665, file: !2666, line: 172, baseType: !96, size: 32, offset: 3200)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2665, file: !2666, line: 174, baseType: !2732, size: 64, offset: 3264)
!2732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2733, size: 64)
!2733 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2666, line: 174, flags: DIFlagFwdDecl)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2665, file: !2666, line: 185, baseType: !2735, size: 64, offset: 3328)
!2735 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !335, line: 860, baseType: !2736)
!2736 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !335, line: 853, size: 64, elements: !2737)
!2737 = !{!2738, !2739}
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2736, file: !335, line: 858, baseType: !857, size: 32)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2736, file: !335, line: 859, baseType: !483, size: 32, offset: 32)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2665, file: !2666, line: 186, baseType: !100, size: 64, offset: 3392)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2665, file: !2666, line: 186, baseType: !100, size: 64, offset: 3456)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2665, file: !2666, line: 186, baseType: !100, size: 64, offset: 3520)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2665, file: !2666, line: 186, baseType: !100, size: 64, offset: 3584)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2665, file: !2666, line: 187, baseType: !100, size: 64, offset: 3648)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2665, file: !2666, line: 188, baseType: !100, size: 64, offset: 3712)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2665, file: !2666, line: 189, baseType: !2601, size: 192, offset: 3776)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2665, file: !2666, line: 190, baseType: !98, size: 64, offset: 3968)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2665, file: !2666, line: 190, baseType: !98, size: 64, offset: 4032)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2665, file: !2666, line: 190, baseType: !98, size: 64, offset: 4096)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2665, file: !2666, line: 190, baseType: !98, size: 64, offset: 4160)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2665, file: !2666, line: 191, baseType: !98, size: 64, offset: 4224)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2665, file: !2666, line: 191, baseType: !98, size: 64, offset: 4288)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2665, file: !2666, line: 191, baseType: !98, size: 64, offset: 4352)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2665, file: !2666, line: 191, baseType: !98, size: 64, offset: 4416)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2665, file: !2666, line: 192, baseType: !98, size: 64, offset: 4480)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2665, file: !2666, line: 192, baseType: !98, size: 64, offset: 4544)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2665, file: !2666, line: 192, baseType: !98, size: 64, offset: 4608)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2665, file: !2666, line: 192, baseType: !98, size: 64, offset: 4672)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2665, file: !2666, line: 193, baseType: !98, size: 64, offset: 4736)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2665, file: !2666, line: 193, baseType: !98, size: 64, offset: 4800)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2665, file: !2666, line: 194, baseType: !2762, size: 448, offset: 4864)
!2762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2763, line: 12, size: 448, elements: !2764)
!2763 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2764 = !{!2765, !2766, !2767, !2768, !2769, !2770, !2771}
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2762, file: !2763, line: 15, baseType: !100, size: 64)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2762, file: !2763, line: 17, baseType: !100, size: 64, offset: 64)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2762, file: !2763, line: 19, baseType: !100, size: 64, offset: 128)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2762, file: !2763, line: 21, baseType: !100, size: 64, offset: 192)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2762, file: !2763, line: 29, baseType: !100, size: 64, offset: 256)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2762, file: !2763, line: 35, baseType: !100, size: 64, offset: 320)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2762, file: !2763, line: 44, baseType: !100, size: 64, offset: 384)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2665, file: !2666, line: 202, baseType: !104, size: 64, offset: 5312)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2665, file: !2666, line: 213, baseType: !2774, size: 2048, offset: 5376)
!2774 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2775, size: 2048, elements: !1531)
!2775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2776, line: 43, size: 128, elements: !2777)
!2776 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2777 = !{!2778, !2779}
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2775, file: !2776, line: 44, baseType: !1045, size: 64)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2775, file: !2776, line: 45, baseType: !1045, size: 64, offset: 64)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2665, file: !2666, line: 216, baseType: !2781, size: 448, offset: 7424)
!2781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2666, line: 30, size: 448, elements: !2782)
!2782 = !{!2783, !2784, !2785, !2786, !2787, !2788, !2789}
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2781, file: !2666, line: 31, baseType: !96, size: 32)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2781, file: !2666, line: 32, baseType: !1001, size: 64, offset: 64)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2781, file: !2666, line: 33, baseType: !98, size: 64, offset: 128)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2781, file: !2666, line: 34, baseType: !100, size: 64, offset: 192)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2781, file: !2666, line: 34, baseType: !100, size: 64, offset: 256)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2781, file: !2666, line: 35, baseType: !98, size: 64, offset: 320)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2781, file: !2666, line: 35, baseType: !98, size: 64, offset: 384)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2665, file: !2666, line: 219, baseType: !2791, size: 64, offset: 7872)
!2791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2792, size: 64)
!2792 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2666, line: 219, flags: DIFlagFwdDecl)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2665, file: !2666, line: 222, baseType: !13, size: 32, offset: 7936)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2665, file: !2666, line: 223, baseType: !2795, size: 64, offset: 8000)
!2795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2796, size: 64)
!2796 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2666, line: 223, flags: DIFlagFwdDecl)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2665, file: !2666, line: 230, baseType: !729, size: 8, offset: 8064)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2665, file: !2666, line: 231, baseType: !698, size: 16, offset: 8080)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2665, file: !2666, line: 232, baseType: !698, size: 16, offset: 8096)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2665, file: !2666, line: 234, baseType: !465, size: 64, offset: 8128)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2665, file: !2666, line: 237, baseType: !529, size: 256, offset: 8192)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2665, file: !2666, line: 243, baseType: !670, size: 320, offset: 8448)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !113, file: !114, line: 1111, baseType: !2804, size: 64, offset: 15424)
!2804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2805, size: 64)
!2805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2666, line: 20, size: 16640, elements: !2806)
!2806 = !{!2807, !2808, !2809, !2810}
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2805, file: !2666, line: 21, baseType: !483, size: 32)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2805, file: !2666, line: 22, baseType: !127, size: 32, offset: 32)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2805, file: !2666, line: 23, baseType: !592, size: 192, offset: 64)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2805, file: !2666, line: 24, baseType: !2811, size: 16384, offset: 256)
!2811 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2812, size: 16384, elements: !2832)
!2812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !818, line: 51, size: 256, elements: !2813)
!2813 = !{!2814}
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2812, file: !818, line: 52, baseType: !2815, size: 256)
!2815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !818, line: 37, size: 256, elements: !2816)
!2816 = !{!2817, !2824, !2825, !2831}
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2815, file: !818, line: 39, baseType: !2818, size: 64)
!2818 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2819, line: 83, baseType: !2820)
!2819 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2821, size: 64)
!2821 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2819, line: 82, baseType: !2822)
!2822 = !DISubroutineType(types: !2823)
!2823 = !{null, !96}
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2815, file: !818, line: 40, baseType: !98, size: 64, offset: 64)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2815, file: !818, line: 46, baseType: !2826, size: 64, offset: 128)
!2826 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2819, line: 86, baseType: !2827)
!2827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2828, size: 64)
!2828 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2819, line: 85, baseType: !2829)
!2829 = !DISubroutineType(types: !2830)
!2830 = !{null}
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2815, file: !818, line: 48, baseType: !2680, size: 64, offset: 192)
!2832 = !{!2833}
!2833 = !DISubrange(count: 64)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !113, file: !114, line: 1112, baseType: !2680, size: 64, offset: 15488)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !113, file: !114, line: 1113, baseType: !2680, size: 64, offset: 15552)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !113, file: !114, line: 1115, baseType: !2680, size: 64, offset: 15616)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !113, file: !114, line: 1116, baseType: !2676, size: 192, offset: 15680)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !113, file: !114, line: 1117, baseType: !98, size: 64, offset: 15872)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !113, file: !114, line: 1118, baseType: !1043, size: 64, offset: 15936)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !113, file: !114, line: 1119, baseType: !13, size: 32, offset: 16000)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !113, file: !114, line: 1121, baseType: !512, size: 64, offset: 16064)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !113, file: !114, line: 1125, baseType: !2843, size: 64, offset: 16128)
!2843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2844, size: 64)
!2844 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !114, line: 43, flags: DIFlagFwdDecl)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !113, file: !114, line: 1127, baseType: !611, size: 32, offset: 16192)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !113, file: !114, line: 1128, baseType: !13, size: 32, offset: 16224)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !113, file: !114, line: 1130, baseType: !2848, size: 128, offset: 16256)
!2848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2849, line: 37, size: 128, elements: !2850)
!2849 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2850 = !{!2851, !2852, !2853}
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2848, file: !2849, line: 38, baseType: !96, size: 32)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2848, file: !2849, line: 39, baseType: !132, size: 32, offset: 32)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2848, file: !2849, line: 40, baseType: !2854, size: 64, offset: 64)
!2854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2855, size: 64)
!2855 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2849, line: 24, flags: DIFlagFwdDecl)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !113, file: !114, line: 1131, baseType: !2857, size: 256, offset: 16384)
!2857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2858, line: 12, size: 256, elements: !2859)
!2858 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2859 = !{!2860, !2861, !2862, !2863}
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2857, file: !2858, line: 13, baseType: !740, size: 64)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2857, file: !2858, line: 14, baseType: !98, size: 64, offset: 64)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2857, file: !2858, line: 15, baseType: !98, size: 64, offset: 128)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2857, file: !2858, line: 16, baseType: !729, size: 8, offset: 192)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !113, file: !114, line: 1134, baseType: !100, size: 64, offset: 16640)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !113, file: !114, line: 1135, baseType: !100, size: 64, offset: 16704)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !113, file: !114, line: 1138, baseType: !483, size: 32, offset: 16768)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !113, file: !114, line: 1141, baseType: !282, size: 32, offset: 16800)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !113, file: !114, line: 1143, baseType: !2869, size: 64, offset: 16832)
!2869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !114, line: 735, size: 64, elements: !2870)
!2870 = !{!2871}
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2869, file: !114, line: 736, baseType: !2872, size: 64)
!2872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2869, size: 64)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !113, file: !114, line: 1147, baseType: !348, size: 128, offset: 16896)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !113, file: !114, line: 1149, baseType: !112, size: 64, offset: 17024)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !113, file: !114, line: 1151, baseType: !2876, size: 64, offset: 17088)
!2876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2877, size: 64)
!2877 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !114, line: 1151, flags: DIFlagFwdDecl)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !113, file: !114, line: 1188, baseType: !99, size: 64, offset: 17152)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !113, file: !114, line: 1191, baseType: !2880, size: 64, offset: 17216)
!2880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2881, size: 64)
!2881 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !114, line: 44, flags: DIFlagFwdDecl)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !113, file: !114, line: 1194, baseType: !2883, size: 64, offset: 17280)
!2883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2884, size: 64)
!2884 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !114, line: 45, flags: DIFlagFwdDecl)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !113, file: !114, line: 1197, baseType: !2886, size: 64, offset: 17344)
!2886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2887, size: 64)
!2887 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !114, line: 61, flags: DIFlagFwdDecl)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !113, file: !114, line: 1199, baseType: !2889, size: 64, offset: 17408)
!2889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2890, size: 64)
!2890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2891, line: 99, size: 128, elements: !2892)
!2891 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2892 = !{!2893, !2894, !2895}
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2890, file: !2891, line: 100, baseType: !522, size: 64)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2890, file: !2891, line: 101, baseType: !132, size: 32, offset: 64)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2890, file: !2891, line: 103, baseType: !158, size: 16, offset: 96)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !113, file: !114, line: 1202, baseType: !2897, size: 64, offset: 17472)
!2897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2898, size: 64)
!2898 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !114, line: 48, flags: DIFlagFwdDecl)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !113, file: !114, line: 1205, baseType: !98, size: 64, offset: 17536)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !113, file: !114, line: 1206, baseType: !2901, size: 64, offset: 17600)
!2901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2902, size: 64)
!2902 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !818, line: 14, baseType: !2903)
!2903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !818, line: 12, size: 384, elements: !2904)
!2904 = !{!2905}
!2905 = !DIDerivedType(tag: DW_TAG_member, scope: !2903, file: !818, line: 13, baseType: !2906, size: 384)
!2906 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2903, file: !818, line: 13, size: 384, elements: !2907)
!2907 = !{!2908, !2909, !2910, !2911}
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2906, file: !818, line: 13, baseType: !96, size: 32)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2906, file: !818, line: 13, baseType: !96, size: 32, offset: 32)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2906, file: !818, line: 13, baseType: !96, size: 32, offset: 64)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2906, file: !818, line: 13, baseType: !2912, size: 256, offset: 128)
!2912 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2913, line: 37, size: 256, elements: !2914)
!2913 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2914 = !{!2915, !2920, !2933, !2939, !2948, !2975, !2980}
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2912, file: !2913, line: 42, baseType: !2916, size: 64)
!2916 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2912, file: !2913, line: 39, size: 64, elements: !2917)
!2917 = !{!2918, !2919}
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2916, file: !2913, line: 40, baseType: !2577, size: 32)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2916, file: !2913, line: 41, baseType: !617, size: 32, offset: 32)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2912, file: !2913, line: 50, baseType: !2921, size: 192)
!2921 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2912, file: !2913, line: 45, size: 192, elements: !2922)
!2922 = !{!2923, !2925, !2926, !2932}
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2921, file: !2913, line: 46, baseType: !2924, size: 32)
!2924 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !332, line: 95, baseType: !96)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2921, file: !2913, line: 47, baseType: !96, size: 32, offset: 32)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2921, file: !2913, line: 48, baseType: !2927, size: 64, offset: 64)
!2927 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2913, line: 11, baseType: !2928)
!2928 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2913, line: 8, size: 64, elements: !2929)
!2929 = !{!2930, !2931}
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2928, file: !2913, line: 9, baseType: !96, size: 32)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2928, file: !2913, line: 10, baseType: !99, size: 64)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2921, file: !2913, line: 49, baseType: !96, size: 32, offset: 128)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2912, file: !2913, line: 57, baseType: !2934, size: 128)
!2934 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2912, file: !2913, line: 53, size: 128, elements: !2935)
!2935 = !{!2936, !2937, !2938}
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2934, file: !2913, line: 54, baseType: !2577, size: 32)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2934, file: !2913, line: 55, baseType: !617, size: 32, offset: 32)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2934, file: !2913, line: 56, baseType: !2927, size: 64, offset: 64)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2912, file: !2913, line: 66, baseType: !2940, size: 256)
!2940 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2912, file: !2913, line: 60, size: 256, elements: !2941)
!2941 = !{!2942, !2943, !2944, !2945, !2947}
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2940, file: !2913, line: 61, baseType: !2577, size: 32)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2940, file: !2913, line: 62, baseType: !617, size: 32, offset: 32)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2940, file: !2913, line: 63, baseType: !96, size: 32, offset: 64)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2940, file: !2913, line: 64, baseType: !2946, size: 64, offset: 128)
!2946 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !332, line: 94, baseType: !1042)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2940, file: !2913, line: 65, baseType: !2946, size: 64, offset: 192)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2912, file: !2913, line: 105, baseType: !2949, size: 256)
!2949 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2912, file: !2913, line: 69, size: 256, elements: !2950)
!2950 = !{!2951, !2952}
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2949, file: !2913, line: 70, baseType: !99, size: 64)
!2952 = !DIDerivedType(tag: DW_TAG_member, scope: !2949, file: !2913, line: 79, baseType: !2953, size: 192, offset: 64)
!2953 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2949, file: !2913, line: 79, size: 192, elements: !2954)
!2954 = !{!2955, !2956, !2957, !2964, !2969}
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2953, file: !2913, line: 81, baseType: !96, size: 32)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2953, file: !2913, line: 86, baseType: !698, size: 16)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2953, file: !2913, line: 92, baseType: !2958, size: 192)
!2958 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2953, file: !2913, line: 88, size: 192, elements: !2959)
!2959 = !{!2960, !2962, !2963}
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2958, file: !2913, line: 89, baseType: !2961, size: 64)
!2961 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !326)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2958, file: !2913, line: 90, baseType: !99, size: 64, offset: 64)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2958, file: !2913, line: 91, baseType: !99, size: 64, offset: 128)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2953, file: !2913, line: 97, baseType: !2965, size: 96)
!2965 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2953, file: !2913, line: 94, size: 96, elements: !2966)
!2966 = !{!2967, !2968}
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2965, file: !2913, line: 95, baseType: !2961, size: 64)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2965, file: !2913, line: 96, baseType: !110, size: 32, offset: 64)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2953, file: !2913, line: 103, baseType: !2970, size: 128)
!2970 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2953, file: !2913, line: 99, size: 128, elements: !2971)
!2971 = !{!2972, !2973, !2974}
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2970, file: !2913, line: 100, baseType: !98, size: 64)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2970, file: !2913, line: 101, baseType: !110, size: 32, offset: 64)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2970, file: !2913, line: 102, baseType: !110, size: 32, offset: 96)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2912, file: !2913, line: 111, baseType: !2976, size: 128)
!2976 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2912, file: !2913, line: 108, size: 128, elements: !2977)
!2977 = !{!2978, !2979}
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2976, file: !2913, line: 109, baseType: !1001, size: 64)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2976, file: !2913, line: 110, baseType: !96, size: 32, offset: 64)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2912, file: !2913, line: 118, baseType: !2981, size: 128)
!2981 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2912, file: !2913, line: 114, size: 128, elements: !2982)
!2982 = !{!2983, !2984, !2985}
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2981, file: !2913, line: 115, baseType: !99, size: 64)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2981, file: !2913, line: 116, baseType: !96, size: 32, offset: 64)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2981, file: !2913, line: 117, baseType: !13, size: 32, offset: 96)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !113, file: !114, line: 1208, baseType: !2762, size: 448, offset: 17664)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !113, file: !114, line: 1215, baseType: !100, size: 64, offset: 18112)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !113, file: !114, line: 1217, baseType: !100, size: 64, offset: 18176)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !113, file: !114, line: 1219, baseType: !100, size: 64, offset: 18240)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !113, file: !114, line: 1223, baseType: !2991, size: 64, offset: 18304)
!2991 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2992, line: 99, baseType: !2993)
!2992 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2993 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2992, line: 99, size: 64, elements: !2994)
!2994 = !{!2995}
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2993, file: !2992, line: 99, baseType: !416, size: 64)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !113, file: !114, line: 1225, baseType: !857, size: 32, offset: 18368)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !113, file: !114, line: 1226, baseType: !96, size: 32, offset: 18400)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !113, file: !114, line: 1227, baseType: !96, size: 32, offset: 18432)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !113, file: !114, line: 1231, baseType: !3000, size: 64, offset: 18496)
!3000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3001, size: 64)
!3001 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !114, line: 1231, flags: DIFlagFwdDecl)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !113, file: !114, line: 1233, baseType: !189, size: 128, offset: 18560)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !113, file: !114, line: 1240, baseType: !3004, size: 64, offset: 18688)
!3004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3005, size: 64)
!3005 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !114, line: 62, flags: DIFlagFwdDecl)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !113, file: !114, line: 1242, baseType: !3007, size: 64, offset: 18752)
!3007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3008, size: 64)
!3008 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !114, line: 1242, flags: DIFlagFwdDecl)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !113, file: !114, line: 1244, baseType: !189, size: 128, offset: 18816)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !113, file: !114, line: 1245, baseType: !3011, size: 64, offset: 18944)
!3011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3012, size: 64)
!3012 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !114, line: 51, flags: DIFlagFwdDecl)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !113, file: !114, line: 1246, baseType: !529, size: 256, offset: 19008)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !113, file: !114, line: 1247, baseType: !13, size: 32, offset: 19264)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !113, file: !114, line: 1250, baseType: !3016, size: 64, offset: 19328)
!3016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3017, size: 64)
!3017 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !114, line: 57, flags: DIFlagFwdDecl)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !113, file: !114, line: 1251, baseType: !529, size: 256, offset: 19392)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !113, file: !114, line: 1252, baseType: !189, size: 128, offset: 19648)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !113, file: !114, line: 1259, baseType: !1890, size: 64, offset: 19776)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !113, file: !114, line: 1260, baseType: !698, size: 16, offset: 19840)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !113, file: !114, line: 1261, baseType: !698, size: 16, offset: 19856)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !113, file: !114, line: 1314, baseType: !3024, size: 64, offset: 19904)
!3024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3025, size: 64)
!3025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3026, line: 62, size: 256, align: 256, elements: !3027)
!3026 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3027 = !{!3028, !3029, !3030, !3031, !3032, !3033, !3034}
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3025, file: !3026, line: 75, baseType: !110, size: 32)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3025, file: !3026, line: 90, baseType: !110, size: 32, offset: 32)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3025, file: !3026, line: 112, baseType: !102, size: 64, offset: 64)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3025, file: !3026, line: 132, baseType: !110, size: 32, offset: 128)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3025, file: !3026, line: 140, baseType: !110, size: 32, offset: 160)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3025, file: !3026, line: 149, baseType: !110, size: 32, offset: 192)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3025, file: !3026, line: 154, baseType: !3035, offset: 224)
!3035 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !607)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !113, file: !114, line: 1315, baseType: !109, size: 32, offset: 19968)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !113, file: !114, line: 1316, baseType: !109, size: 32, offset: 20000)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !113, file: !114, line: 1321, baseType: !98, size: 64, offset: 20032)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !113, file: !114, line: 1325, baseType: !96, size: 32, offset: 20096)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !113, file: !114, line: 1326, baseType: !96, size: 32, offset: 20128)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !113, file: !114, line: 1327, baseType: !96, size: 32, offset: 20160)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !113, file: !114, line: 1328, baseType: !96, size: 32, offset: 20192)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !113, file: !114, line: 1329, baseType: !509, size: 128, align: 64, offset: 20224)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !113, file: !114, line: 1332, baseType: !3045, size: 128, offset: 20352)
!3045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3046, line: 51, size: 128, elements: !3047)
!3046 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3047 = !{!3048, !3053, !3054}
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3045, file: !3046, line: 60, baseType: !3049, size: 64)
!3049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3050, line: 7, size: 64, elements: !3051)
!3050 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3051 = !{!3052}
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3049, file: !3050, line: 12, baseType: !413, size: 64)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3045, file: !3046, line: 63, baseType: !729, size: 8, offset: 64)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3045, file: !3046, line: 70, baseType: !729, size: 8, offset: 72)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !113, file: !114, line: 1335, baseType: !2287, size: 64, offset: 20480)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !113, file: !114, line: 1337, baseType: !3057, size: 128, offset: 20544)
!3057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3046, line: 39, size: 128, elements: !3058)
!3058 = !{!3059, !3060, !3061}
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3057, file: !3046, line: 40, baseType: !1677, size: 64)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3057, file: !3046, line: 42, baseType: !110, size: 32, offset: 64)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3057, file: !3046, line: 43, baseType: !110, size: 32, offset: 96)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !113, file: !114, line: 1340, baseType: !3063, size: 64, offset: 20672)
!3063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3064, size: 64)
!3064 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !114, line: 69, flags: DIFlagFwdDecl)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !113, file: !114, line: 1351, baseType: !96, size: 32, offset: 20736)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !113, file: !114, line: 1352, baseType: !96, size: 32, offset: 20768)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !113, file: !114, line: 1354, baseType: !98, size: 64, offset: 20800)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !113, file: !114, line: 1364, baseType: !100, size: 64, offset: 20864)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !113, file: !114, line: 1365, baseType: !100, size: 64, offset: 20928)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !113, file: !114, line: 1412, baseType: !98, size: 64, offset: 20992)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !113, file: !114, line: 1453, baseType: !3072, size: 64, offset: 21056)
!3072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3073, size: 64)
!3073 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !114, line: 1453, flags: DIFlagFwdDecl)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !113, file: !114, line: 1457, baseType: !3075, size: 64, offset: 21120)
!3075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3076, size: 64)
!3076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !59, line: 61, size: 576, elements: !3077)
!3077 = !{!3078, !3079, !3098, !3101, !3102, !3135, !3145}
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3076, file: !59, line: 62, baseType: !58, size: 32)
!3079 = !DIDerivedType(tag: DW_TAG_member, scope: !3076, file: !59, line: 64, baseType: !3080, size: 192, offset: 64)
!3080 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3076, file: !59, line: 64, size: 192, elements: !3081)
!3081 = !{!3082, !3093}
!3082 = !DIDerivedType(tag: DW_TAG_member, scope: !3080, file: !59, line: 65, baseType: !3083, size: 192)
!3083 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3080, file: !59, line: 65, size: 192, elements: !3084)
!3084 = !{!3085, !3092}
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3083, file: !59, line: 66, baseType: !3086, size: 128)
!3086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3087, line: 50, size: 128, elements: !3088)
!3087 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3088 = !{!3089, !3090, !3091}
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3086, file: !3087, line: 52, baseType: !98, size: 64)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3086, file: !3087, line: 54, baseType: !13, size: 32, offset: 64)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3086, file: !3087, line: 55, baseType: !13, size: 32, offset: 96)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3083, file: !59, line: 67, baseType: !98, size: 64, offset: 128)
!3093 = !DIDerivedType(tag: DW_TAG_member, scope: !3080, file: !59, line: 70, baseType: !3094, size: 192)
!3094 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3080, file: !59, line: 70, size: 192, elements: !3095)
!3095 = !{!3096, !3097}
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3094, file: !59, line: 71, baseType: !509, size: 128, align: 64)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3094, file: !59, line: 72, baseType: !98, size: 64, offset: 128)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3076, file: !59, line: 76, baseType: !3099, size: 64, offset: 256)
!3099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3100, size: 64)
!3100 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !59, line: 76, flags: DIFlagFwdDecl)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3076, file: !59, line: 77, baseType: !98, size: 64, offset: 320)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3076, file: !59, line: 79, baseType: !3103, size: 64, offset: 384)
!3103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3104, size: 64)
!3104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3087, line: 25, size: 256, elements: !3105)
!3105 = !{!3106, !3112, !3116}
!3106 = !DIDerivedType(tag: DW_TAG_member, scope: !3104, file: !3087, line: 26, baseType: !3107, size: 128)
!3107 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3104, file: !3087, line: 26, size: 128, elements: !3108)
!3108 = !{!3109, !3111}
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3107, file: !3087, line: 27, baseType: !3110, size: 128)
!3110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !299, size: 128, elements: !1531)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3107, file: !3087, line: 28, baseType: !3110, size: 128)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3104, file: !3087, line: 31, baseType: !3113, size: 64, offset: 128)
!3113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3114, size: 64)
!3114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3115)
!3115 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3087, line: 23, flags: DIFlagFwdDecl)
!3116 = !DIDerivedType(tag: DW_TAG_member, scope: !3104, file: !3087, line: 33, baseType: !3117, size: 64, offset: 192)
!3117 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3104, file: !3087, line: 33, size: 64, elements: !3118)
!3118 = !{!3119, !3125, !3130}
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3117, file: !3087, line: 38, baseType: !3120, size: 64)
!3120 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3117, file: !3087, line: 34, size: 64, elements: !3121)
!3121 = !{!3122, !3123, !3124}
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3120, file: !3087, line: 35, baseType: !662, size: 32)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3120, file: !3087, line: 36, baseType: !299, size: 8, offset: 32)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3120, file: !3087, line: 37, baseType: !299, size: 8, offset: 40)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3117, file: !3087, line: 42, baseType: !3126, size: 16)
!3126 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3117, file: !3087, line: 39, size: 16, elements: !3127)
!3127 = !{!3128, !3129}
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3126, file: !3087, line: 40, baseType: !299, size: 8)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3126, file: !3087, line: 41, baseType: !299, size: 8, offset: 8)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3117, file: !3087, line: 46, baseType: !3131, size: 16)
!3131 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3117, file: !3087, line: 43, size: 16, elements: !3132)
!3132 = !{!3133, !3134}
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3131, file: !3087, line: 44, baseType: !299, size: 8)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3131, file: !3087, line: 45, baseType: !299, size: 8, offset: 8)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3076, file: !59, line: 81, baseType: !3136, size: 64, offset: 448)
!3136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3137, size: 64)
!3137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !59, line: 85, size: 384, elements: !3138)
!3138 = !{!3139, !3140, !3141, !3142, !3143, !3144}
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3137, file: !59, line: 86, baseType: !3099, size: 64)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3137, file: !59, line: 87, baseType: !98, size: 64, offset: 64)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3137, file: !59, line: 88, baseType: !98, size: 64, offset: 128)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3137, file: !59, line: 89, baseType: !98, size: 64, offset: 192)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3137, file: !59, line: 90, baseType: !729, size: 8, offset: 256)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3137, file: !59, line: 92, baseType: !3136, size: 64, offset: 320)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3076, file: !59, line: 82, baseType: !13, size: 32, offset: 512)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !113, file: !114, line: 1463, baseType: !3147, offset: 21184)
!3147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !114, line: 739, elements: !494)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !113, file: !114, line: 1470, baseType: !509, size: 128, align: 64, offset: 21184)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !113, file: !114, line: 1471, baseType: !127, size: 32, offset: 21312)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !113, file: !114, line: 1472, baseType: !96, size: 32, offset: 21344)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !113, file: !114, line: 1474, baseType: !112, size: 64, offset: 21376)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !113, file: !114, line: 1475, baseType: !3153, size: 320, offset: 21440)
!3153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3154, line: 11, size: 320, elements: !3155)
!3154 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!3155 = !{!3156, !3157, !3158, !3163}
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3153, file: !3154, line: 16, baseType: !583, size: 128)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3153, file: !3154, line: 17, baseType: !98, size: 64, offset: 128)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3153, file: !3154, line: 18, baseType: !3159, size: 64, offset: 192)
!3159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3160, size: 64)
!3160 = !DISubroutineType(types: !3161)
!3161 = !{null, !3162}
!3162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3153, size: 64)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3153, file: !3154, line: 19, baseType: !109, size: 32, offset: 256)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !113, file: !114, line: 1478, baseType: !3165, size: 64, offset: 21760)
!3165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3166, size: 64)
!3166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3167, line: 49, size: 512, elements: !3168)
!3167 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!3168 = !{!3169, !3170, !3171, !3172, !3173, !3174, !3175, !3176, !3178}
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3166, file: !3167, line: 50, baseType: !3165, size: 64)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3166, file: !3167, line: 51, baseType: !99, size: 64, offset: 64)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3166, file: !3167, line: 52, baseType: !98, size: 64, offset: 128)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3166, file: !3167, line: 53, baseType: !98, size: 64, offset: 192)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3166, file: !3167, line: 54, baseType: !2062, size: 64, offset: 256)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3166, file: !3167, line: 56, baseType: !13, size: 32, offset: 320)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3166, file: !3167, line: 58, baseType: !13, size: 32, offset: 352)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3166, file: !3167, line: 59, baseType: !3177, size: 64, offset: 384)
!3177 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !133, line: 159, baseType: !100)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3166, file: !3167, line: 60, baseType: !105, size: 64, offset: 448)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !113, file: !114, line: 1482, baseType: !127, size: 32, offset: 21824)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !113, file: !114, line: 1489, baseType: !99, size: 64, offset: 21888)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !113, file: !114, line: 1504, baseType: !99, size: 64, offset: 21952)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !113, file: !114, line: 1505, baseType: !102, size: 64, offset: 22016)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !113, file: !114, line: 1506, baseType: !100, size: 64, offset: 22080)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !113, file: !114, line: 1507, baseType: !102, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !113, file: !114, line: 1508, baseType: !102, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !113, file: !114, line: 1509, baseType: !102, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !113, file: !114, line: 1510, baseType: !509, size: 128, align: 64, offset: 22208)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !113, file: !114, line: 1511, baseType: !96, size: 32, offset: 22336)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !113, file: !114, line: 1515, baseType: !3190, size: 64, offset: 22400)
!3190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !146, line: 56, size: 64, elements: !3191)
!3191 = !{!3192}
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3190, file: !146, line: 57, baseType: !149, size: 64)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !113, file: !114, line: 1518, baseType: !3190, size: 64, offset: 22464)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !113, file: !114, line: 1528, baseType: !509, size: 128, align: 64, offset: 22528)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !113, file: !114, line: 1552, baseType: !3196, size: 35328, offset: 23040)
!3196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3197, line: 430, size: 35328, elements: !3198)
!3197 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3198 = !{!3199, !3217, !3218, !3219, !3220, !3221, !3222, !3223, !3224, !3228, !3229, !3230, !3231, !3232, !3233, !3236, !3237, !3238, !3239}
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3196, file: !3197, line: 432, baseType: !3200, size: 192)
!3200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3201, size: 192, elements: !567)
!3201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3202, line: 16, size: 64, elements: !3203)
!3202 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3203 = !{!3204, !3205, !3206, !3207, !3208, !3209, !3210, !3211, !3212, !3213, !3214, !3215, !3216}
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3201, file: !3202, line: 17, baseType: !156, size: 16)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3201, file: !3202, line: 18, baseType: !156, size: 16, offset: 16)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3201, file: !3202, line: 19, baseType: !156, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3201, file: !3202, line: 19, baseType: !156, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3201, file: !3202, line: 19, baseType: !156, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3201, file: !3202, line: 19, baseType: !156, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3201, file: !3202, line: 19, baseType: !156, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3201, file: !3202, line: 20, baseType: !156, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3201, file: !3202, line: 20, baseType: !156, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3201, file: !3202, line: 20, baseType: !156, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3201, file: !3202, line: 20, baseType: !156, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3201, file: !3202, line: 20, baseType: !156, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3201, file: !3202, line: 20, baseType: !156, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3196, file: !3197, line: 436, baseType: !98, size: 64, offset: 192)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3196, file: !3197, line: 440, baseType: !158, size: 16, offset: 256)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3196, file: !3197, line: 441, baseType: !158, size: 16, offset: 272)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3196, file: !3197, line: 442, baseType: !158, size: 16, offset: 288)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3196, file: !3197, line: 443, baseType: !158, size: 16, offset: 304)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3196, file: !3197, line: 447, baseType: !98, size: 64, offset: 320)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3196, file: !3197, line: 448, baseType: !98, size: 64, offset: 384)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3196, file: !3197, line: 459, baseType: !3225, size: 256, offset: 448)
!3225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3226, size: 256, elements: !588)
!3226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3227, size: 64)
!3227 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3197, line: 428, flags: DIFlagFwdDecl)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3196, file: !3197, line: 461, baseType: !98, size: 64, offset: 704)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3196, file: !3197, line: 463, baseType: !98, size: 64, offset: 768)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3196, file: !3197, line: 465, baseType: !98, size: 64, offset: 832)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3196, file: !3197, line: 466, baseType: !98, size: 64, offset: 896)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3196, file: !3197, line: 467, baseType: !98, size: 64, offset: 960)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3196, file: !3197, line: 473, baseType: !3234, size: 64, offset: 1024)
!3234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3235, size: 64)
!3235 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3197, line: 10, flags: DIFlagFwdDecl)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3196, file: !3197, line: 480, baseType: !98, size: 64, offset: 1088)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3196, file: !3197, line: 482, baseType: !13, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3196, file: !3197, line: 491, baseType: !109, size: 32, offset: 1184)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3196, file: !3197, line: 501, baseType: !3240, size: 33792, offset: 1536)
!3240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3241, line: 448, size: 33792, elements: !3242)
!3241 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3242 = !{!3243, !3244, !3245, !3407, !3408, !3414, !3415}
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3240, file: !3241, line: 461, baseType: !13, size: 32)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3240, file: !3241, line: 468, baseType: !98, size: 64, offset: 64)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3240, file: !3241, line: 476, baseType: !3246, size: 64, offset: 128)
!3246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3247, size: 64)
!3247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3241, line: 356, size: 33280, align: 512, elements: !3248)
!3248 = !{!3249, !3250, !3251, !3252, !3253, !3254, !3255, !3256, !3257, !3258}
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3247, file: !3241, line: 358, baseType: !13, size: 32)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3247, file: !3241, line: 361, baseType: !13, size: 32, offset: 32)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3247, file: !3241, line: 364, baseType: !100, size: 64, offset: 64)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3247, file: !3241, line: 367, baseType: !100, size: 64, offset: 128)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3247, file: !3241, line: 370, baseType: !100, size: 64, offset: 192)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3247, file: !3241, line: 373, baseType: !13, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3247, file: !3241, line: 376, baseType: !13, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3247, file: !3241, line: 391, baseType: !13, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3247, file: !3241, line: 394, baseType: !13, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3247, file: !3241, line: 397, baseType: !3259, size: 32768, offset: 512)
!3259 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3241, line: 348, size: 32768, elements: !3260)
!3260 = !{!3261, !3276, !3313, !3390, !3403}
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3259, file: !3241, line: 349, baseType: !3262, size: 896)
!3262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3241, line: 12, size: 896, elements: !3263)
!3263 = !{!3264, !3265, !3266, !3267, !3268, !3269, !3270, !3271, !3275}
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3262, file: !3241, line: 13, baseType: !109, size: 32)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3262, file: !3241, line: 14, baseType: !109, size: 32, offset: 32)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3262, file: !3241, line: 15, baseType: !109, size: 32, offset: 64)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3262, file: !3241, line: 16, baseType: !109, size: 32, offset: 96)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3262, file: !3241, line: 17, baseType: !109, size: 32, offset: 128)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3262, file: !3241, line: 18, baseType: !109, size: 32, offset: 160)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3262, file: !3241, line: 19, baseType: !109, size: 32, offset: 192)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3262, file: !3241, line: 22, baseType: !3272, size: 640, offset: 224)
!3272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 640, elements: !3273)
!3273 = !{!3274}
!3274 = !DISubrange(count: 20)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3262, file: !3241, line: 25, baseType: !109, size: 32, offset: 864)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3259, file: !3241, line: 350, baseType: !3277, size: 4096, align: 128)
!3277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3241, line: 34, size: 4096, align: 128, elements: !3278)
!3278 = !{!3279, !3280, !3281, !3282, !3283, !3298, !3299, !3300, !3302, !3304, !3308}
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3277, file: !3241, line: 35, baseType: !156, size: 16)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3277, file: !3241, line: 36, baseType: !156, size: 16, offset: 16)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3277, file: !3241, line: 37, baseType: !156, size: 16, offset: 32)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3277, file: !3241, line: 38, baseType: !156, size: 16, offset: 48)
!3283 = !DIDerivedType(tag: DW_TAG_member, scope: !3277, file: !3241, line: 39, baseType: !3284, size: 128, offset: 64)
!3284 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3277, file: !3241, line: 39, size: 128, elements: !3285)
!3285 = !{!3286, !3291}
!3286 = !DIDerivedType(tag: DW_TAG_member, scope: !3284, file: !3241, line: 40, baseType: !3287, size: 128)
!3287 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3284, file: !3241, line: 40, size: 128, elements: !3288)
!3288 = !{!3289, !3290}
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3287, file: !3241, line: 41, baseType: !100, size: 64)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3287, file: !3241, line: 42, baseType: !100, size: 64, offset: 64)
!3291 = !DIDerivedType(tag: DW_TAG_member, scope: !3284, file: !3241, line: 44, baseType: !3292, size: 128)
!3292 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3284, file: !3241, line: 44, size: 128, elements: !3293)
!3293 = !{!3294, !3295, !3296, !3297}
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3292, file: !3241, line: 45, baseType: !109, size: 32)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3292, file: !3241, line: 46, baseType: !109, size: 32, offset: 32)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3292, file: !3241, line: 47, baseType: !109, size: 32, offset: 64)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3292, file: !3241, line: 48, baseType: !109, size: 32, offset: 96)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3277, file: !3241, line: 51, baseType: !109, size: 32, offset: 192)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3277, file: !3241, line: 52, baseType: !109, size: 32, offset: 224)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3277, file: !3241, line: 55, baseType: !3301, size: 1024, offset: 256)
!3301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 1024, elements: !1522)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3277, file: !3241, line: 58, baseType: !3303, size: 2048, offset: 1280)
!3303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 2048, elements: !2832)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3277, file: !3241, line: 60, baseType: !3305, size: 384, offset: 3328)
!3305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 384, elements: !3306)
!3306 = !{!3307}
!3307 = !DISubrange(count: 12)
!3308 = !DIDerivedType(tag: DW_TAG_member, scope: !3277, file: !3241, line: 62, baseType: !3309, size: 384, offset: 3712)
!3309 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3277, file: !3241, line: 62, size: 384, elements: !3310)
!3310 = !{!3311, !3312}
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3309, file: !3241, line: 63, baseType: !3305, size: 384)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3309, file: !3241, line: 64, baseType: !3305, size: 384)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3259, file: !3241, line: 351, baseType: !3314, size: 1088)
!3314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3241, line: 79, size: 1088, elements: !3315)
!3315 = !{!3316, !3317, !3318, !3319, !3320, !3321, !3322, !3323, !3324, !3325, !3326, !3327, !3328, !3329, !3330, !3389}
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3314, file: !3241, line: 80, baseType: !109, size: 32)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3314, file: !3241, line: 81, baseType: !109, size: 32, offset: 32)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3314, file: !3241, line: 82, baseType: !109, size: 32, offset: 64)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3314, file: !3241, line: 83, baseType: !109, size: 32, offset: 96)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3314, file: !3241, line: 84, baseType: !109, size: 32, offset: 128)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3314, file: !3241, line: 85, baseType: !109, size: 32, offset: 160)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3314, file: !3241, line: 86, baseType: !109, size: 32, offset: 192)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3314, file: !3241, line: 88, baseType: !3272, size: 640, offset: 224)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3314, file: !3241, line: 89, baseType: !299, size: 8, offset: 864)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3314, file: !3241, line: 90, baseType: !299, size: 8, offset: 872)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3314, file: !3241, line: 91, baseType: !299, size: 8, offset: 880)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3314, file: !3241, line: 92, baseType: !299, size: 8, offset: 888)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3314, file: !3241, line: 93, baseType: !299, size: 8, offset: 896)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3314, file: !3241, line: 94, baseType: !299, size: 8, offset: 904)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3314, file: !3241, line: 95, baseType: !3331, size: 64, offset: 960)
!3331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3332, size: 64)
!3332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3333, line: 11, size: 128, elements: !3334)
!3333 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3334 = !{!3335, !3336}
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3332, file: !3333, line: 12, baseType: !1001, size: 64)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3332, file: !3333, line: 13, baseType: !3337, size: 64, offset: 64)
!3337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3338, size: 64)
!3338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3339, line: 103, size: 1344, elements: !3340)
!3339 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3340 = !{!3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3369, !3370, !3371}
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3338, file: !3339, line: 109, baseType: !98, size: 64)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3338, file: !3339, line: 110, baseType: !98, size: 64, offset: 64)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3338, file: !3339, line: 111, baseType: !98, size: 64, offset: 128)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3338, file: !3339, line: 112, baseType: !98, size: 64, offset: 192)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3338, file: !3339, line: 113, baseType: !98, size: 64, offset: 256)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3338, file: !3339, line: 114, baseType: !98, size: 64, offset: 320)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3338, file: !3339, line: 117, baseType: !98, size: 64, offset: 384)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3338, file: !3339, line: 118, baseType: !98, size: 64, offset: 448)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3338, file: !3339, line: 119, baseType: !98, size: 64, offset: 512)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3338, file: !3339, line: 120, baseType: !98, size: 64, offset: 576)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3338, file: !3339, line: 121, baseType: !98, size: 64, offset: 640)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3338, file: !3339, line: 122, baseType: !98, size: 64, offset: 704)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3338, file: !3339, line: 123, baseType: !98, size: 64, offset: 768)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3338, file: !3339, line: 124, baseType: !98, size: 64, offset: 832)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3338, file: !3339, line: 125, baseType: !98, size: 64, offset: 896)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3338, file: !3339, line: 139, baseType: !98, size: 64, offset: 960)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3338, file: !3339, line: 142, baseType: !98, size: 64, offset: 1024)
!3358 = !DIDerivedType(tag: DW_TAG_member, scope: !3338, file: !3339, line: 144, baseType: !3359, size: 64, offset: 1088)
!3359 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3338, file: !3339, line: 144, size: 64, elements: !3360)
!3360 = !{!3361, !3362, !3363}
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3359, file: !3339, line: 146, baseType: !156, size: 16)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3359, file: !3339, line: 148, baseType: !100, size: 64)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3359, file: !3339, line: 150, baseType: !3364, size: 64)
!3364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3339, line: 59, size: 64, elements: !3365)
!3365 = !{!3366, !3367, !3368}
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3364, file: !3339, line: 61, baseType: !100, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3364, file: !3339, line: 63, baseType: !100, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3364, file: !3339, line: 65, baseType: !100, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3338, file: !3339, line: 153, baseType: !98, size: 64, offset: 1152)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3338, file: !3339, line: 154, baseType: !98, size: 64, offset: 1216)
!3371 = !DIDerivedType(tag: DW_TAG_member, scope: !3338, file: !3339, line: 156, baseType: !3372, size: 64, offset: 1280)
!3372 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3338, file: !3339, line: 156, size: 64, elements: !3373)
!3373 = !{!3374, !3375, !3376}
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3372, file: !3339, line: 158, baseType: !156, size: 16)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3372, file: !3339, line: 160, baseType: !100, size: 64)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3372, file: !3339, line: 162, baseType: !3377, size: 64)
!3377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3339, line: 69, size: 64, elements: !3378)
!3378 = !{!3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388}
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3377, file: !3339, line: 71, baseType: !100, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3377, file: !3339, line: 73, baseType: !100, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3377, file: !3339, line: 75, baseType: !100, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3377, file: !3339, line: 77, baseType: !100, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3377, file: !3339, line: 80, baseType: !100, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3377, file: !3339, line: 83, baseType: !100, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3377, file: !3339, line: 86, baseType: !100, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3377, file: !3339, line: 88, baseType: !100, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3377, file: !3339, line: 93, baseType: !100, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3377, file: !3339, line: 100, baseType: !100, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3314, file: !3241, line: 96, baseType: !109, size: 32, offset: 1024)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3259, file: !3241, line: 352, baseType: !3391, size: 4608, align: 512)
!3391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3241, line: 333, size: 4608, align: 512, elements: !3392)
!3392 = !{!3393, !3394, !3401}
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3391, file: !3241, line: 334, baseType: !3277, size: 4096, align: 128)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3391, file: !3241, line: 335, baseType: !3395, size: 512, offset: 4096)
!3395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3241, line: 312, size: 512, elements: !3396)
!3396 = !{!3397, !3398, !3399}
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3395, file: !3241, line: 313, baseType: !100, size: 64)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3395, file: !3241, line: 314, baseType: !100, size: 64, offset: 64)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3395, file: !3241, line: 315, baseType: !3400, size: 384, offset: 128)
!3400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 384, elements: !716)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3391, file: !3241, line: 336, baseType: !3402, offset: 4608)
!3402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !299, elements: !607)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3259, file: !3241, line: 353, baseType: !3404, size: 32768)
!3404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !299, size: 32768, elements: !3405)
!3405 = !{!3406}
!3406 = !DISubrange(count: 4096)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3240, file: !3241, line: 484, baseType: !3246, size: 64, offset: 192)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3240, file: !3241, line: 491, baseType: !3409, size: 128, offset: 256)
!3409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3241, line: 404, size: 128, elements: !3410)
!3410 = !{!3411, !3412, !3413}
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3409, file: !3241, line: 424, baseType: !100, size: 64)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3409, file: !3241, line: 432, baseType: !13, size: 32, offset: 64)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3409, file: !3241, line: 440, baseType: !13, size: 32, offset: 96)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3240, file: !3241, line: 498, baseType: !3409, size: 128, offset: 384)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3240, file: !3241, line: 508, baseType: !3247, size: 33280, align: 512, offset: 512)
!3416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3417, size: 64)
!3417 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !4)
!3418 = !{!0, !7, !3419, !3421, !3423, !3425, !3430, !3432, !3440}
!3419 = !DIGlobalVariableExpression(var: !3420, expr: !DIExpression())
!3420 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_clflush_sg306", scope: !9, file: !2, line: 148, type: !99, isLocal: true, isDefinition: true)
!3421 = !DIGlobalVariableExpression(var: !3422, expr: !DIExpression())
!3422 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_clflush_virt_range307", scope: !9, file: !2, line: 181, type: !99, isLocal: true, isDefinition: true)
!3423 = !DIGlobalVariableExpression(var: !3424, expr: !DIExpression())
!3424 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_need_swiotlb310", scope: !9, file: !2, line: 212, type: !99, isLocal: true, isDefinition: true)
!3425 = !DIGlobalVariableExpression(var: !3426, expr: !DIExpression())
!3426 = distinct !DIGlobalVariable(scope: null, file: !2, line: 309, type: !3427, isLocal: true, isDefinition: true)
!3427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !3428)
!3428 = !{!3429}
!3429 = !DISubrange(count: 28)
!3430 = !DIGlobalVariableExpression(var: !3431, expr: !DIExpression())
!3431 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_memcpy_from_wc311", scope: !9, file: !2, line: 327, type: !99, isLocal: true, isDefinition: true)
!3432 = !DIGlobalVariableExpression(var: !3433, expr: !DIExpression())
!3433 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule277", scope: !3434, file: !3435, line: 239, type: !99, isLocal: true, isDefinition: true)
!3434 = distinct !DISubprogram(name: "__kunmap_atomic", scope: !3435, file: !3435, line: 230, type: !3436, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3438)
!3435 = !DIFile(filename: "./include/linux/highmem-internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ae7838583c7018843a11d0e374eeb3")
!3436 = !DISubroutineType(types: !3437)
!3437 = !{null, !105}
!3438 = !{!3439}
!3439 = !DILocalVariable(name: "addr", arg: 1, scope: !3434, file: !3435, line: 230, type: !105)
!3440 = !DIGlobalVariableExpression(var: !3441, expr: !DIExpression())
!3441 = distinct !DIGlobalVariable(name: "has_movntdqa", scope: !9, file: !2, line: 250, type: !3442, isLocal: true, isDefinition: true)
!3442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_false", file: !3443, line: 363, size: 128, elements: !3444)
!3443 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!3444 = !{!3445}
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3442, file: !3443, line: 364, baseType: !3446, size: 128)
!3446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !3443, line: 85, size: 128, elements: !3447)
!3447 = !{!3448, !3449}
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !3446, file: !3443, line: 86, baseType: !132, size: 32)
!3449 = !DIDerivedType(tag: DW_TAG_member, scope: !3446, file: !3443, line: 101, baseType: !3450, size: 64, offset: 64)
!3450 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3446, file: !3443, line: 101, size: 64, elements: !3451)
!3451 = !{!3452, !3453, !3460}
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3450, file: !3443, line: 102, baseType: !98, size: 64)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !3450, file: !3443, line: 103, baseType: !3454, size: 64)
!3454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3455, size: 64)
!3455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !3443, line: 117, size: 128, elements: !3456)
!3456 = !{!3457, !3458, !3459}
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !3455, file: !3443, line: 118, baseType: !662, size: 32)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !3455, file: !3443, line: 119, baseType: !662, size: 32, offset: 32)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3455, file: !3443, line: 120, baseType: !1001, size: 64, offset: 64)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3450, file: !3443, line: 104, baseType: !3461, size: 64)
!3461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3462, size: 64)
!3462 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !3443, line: 104, flags: DIFlagFwdDecl)
!3463 = !{!"rsp"}
!3464 = !{i32 7, !"Dwarf Version", i32 5}
!3465 = !{i32 2, !"Debug Info Version", i32 3}
!3466 = !{i32 1, !"wchar_size", i32 2}
!3467 = !{i32 8, !"cf-protection-branch", i32 1}
!3468 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3469 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!3470 = !{i32 1, !"Code Model", i32 2}
!3471 = !{i32 1, !"override-stack-alignment", i32 8}
!3472 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!3473 = distinct !DISubprogram(name: "drm_clflush_pages", scope: !2, file: !2, line: 87, type: !3474, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3476)
!3474 = !DISubroutineType(types: !3475)
!3475 = !{null, !2062, !98}
!3476 = !{!3477, !3478}
!3477 = !DILocalVariable(name: "pages", arg: 1, scope: !3473, file: !2, line: 87, type: !2062)
!3478 = !DILocalVariable(name: "num_pages", arg: 2, scope: !3473, file: !2, line: 87, type: !98)
!3479 = !DILocation(line: 87, column: 32, scope: !3473)
!3480 = !DILocation(line: 87, column: 55, scope: !3473)
!3481 = !DILocation(line: 91, column: 6, scope: !3473)
!3482 = !DILocation(line: 91, column: 6, scope: !3483)
!3483 = distinct !DILexicalBlock(scope: !3473, file: !2, line: 91, column: 6)
!3484 = !DILocation(line: 92, column: 27, scope: !3485)
!3485 = distinct !DILexicalBlock(scope: !3483, file: !2, line: 91, column: 43)
!3486 = !DILocation(line: 92, column: 34, scope: !3485)
!3487 = !DILocation(line: 92, column: 3, scope: !3485)
!3488 = !DILocation(line: 93, column: 3, scope: !3485)
!3489 = !DILocation(line: 96, column: 6, scope: !3490)
!3490 = distinct !DILexicalBlock(scope: !3473, file: !2, line: 96, column: 6)
!3491 = !DILocation(line: 96, column: 6, scope: !3473)
!3492 = !DILocation(line: 97, column: 3, scope: !3493)
!3493 = distinct !DILexicalBlock(scope: !3490, file: !2, line: 97, column: 3)
!3494 = !DILocation(line: 97, column: 3, scope: !3495)
!3495 = distinct !DILexicalBlock(scope: !3493, file: !2, line: 97, column: 3)
!3496 = !DILocation(line: 97, column: 3, scope: !3490)
!3497 = !DILocation(line: 117, column: 1, scope: !3473)
!3498 = distinct !DISubprogram(name: "arch_test_bit", scope: !3499, file: !3499, line: 237, type: !3500, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3505)
!3499 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!3500 = !DISubroutineType(types: !3501)
!3501 = !{!729, !98, !3502}
!3502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3503, size: 64)
!3503 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3504)
!3504 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !98)
!3505 = !{!3506, !3507}
!3506 = !DILocalVariable(name: "nr", arg: 1, scope: !3498, file: !3499, line: 237, type: !98)
!3507 = !DILocalVariable(name: "addr", arg: 2, scope: !3498, file: !3499, line: 237, type: !3502)
!3508 = !DILocation(line: 237, column: 29, scope: !3498)
!3509 = !DILocation(line: 237, column: 63, scope: !3498)
!3510 = !DILocation(line: 239, column: 30, scope: !3498)
!3511 = !DILocation(line: 239, column: 9, scope: !3498)
!3512 = !DILocation(line: 239, column: 54, scope: !3498)
!3513 = !DILocation(line: 239, column: 58, scope: !3498)
!3514 = !DILocation(line: 239, column: 36, scope: !3498)
!3515 = !DILocation(line: 240, column: 26, scope: !3498)
!3516 = !DILocation(line: 240, column: 30, scope: !3498)
!3517 = !DILocation(line: 240, column: 8, scope: !3498)
!3518 = !DILocation(line: 239, column: 2, scope: !3498)
!3519 = distinct !DISubprogram(name: "_static_cpu_has", scope: !3520, file: !3520, line: 173, type: !3521, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3523)
!3520 = !DIFile(filename: "./arch/x86/include/asm/cpufeature.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "90439827e3f106d11a8d96ab90603ff3")
!3521 = !DISubroutineType(types: !3522)
!3522 = !{!729, !156}
!3523 = !{!3524, !3525, !3526}
!3524 = !DILocalVariable(name: "bit", arg: 1, scope: !3519, file: !3520, line: 173, type: !156)
!3525 = !DILabel(scope: !3519, name: "t_yes", file: !3520, line: 187)
!3526 = !DILabel(scope: !3519, name: "t_no", file: !3520, line: 189)
!3527 = !DILocation(line: 173, column: 49, scope: !3519)
!3528 = !DILocation(line: 183, column: 24, scope: !3519)
!3529 = !DILocation(line: 184, column: 30, scope: !3519)
!3530 = !DILocation(line: 184, column: 34, scope: !3519)
!3531 = !DILocation(line: 184, column: 26, scope: !3519)
!3532 = !DILocation(line: 185, column: 70, scope: !3519)
!3533 = !DILocation(line: 185, column: 74, scope: !3519)
!3534 = !DILocation(line: 185, column: 25, scope: !3519)
!3535 = !DILocation(line: 175, column: 2, scope: !3519)
!3536 = !{i64 2149618049, i64 2149618082, i64 2149618088, i64 2149618104, i64 2149618123, i64 2149618154, i64 2149619107, i64 2149617696, i64 2149619113, i64 2149619161, i64 2149619225, i64 2149619289, i64 2149619346, i64 2149619553, i64 2149619601, i64 2149619665, i64 2149619729, i64 2149619786, i64 2149617814, i64 2149617839, i64 2149619996, i64 2149620124, i64 2149620057, i64 2149620138, i64 2149620152, i64 2149620268, i64 2149620213, i64 2149620282, i64 2149617973, i64 1081645, i64 1081685, i64 1081694, i64 1081744, i64 1081765, i64 1081785}
!3537 = !DILocation(line: 187, column: 1, scope: !3519)
!3538 = !DILocation(line: 188, column: 2, scope: !3519)
!3539 = !DILocation(line: 189, column: 1, scope: !3519)
!3540 = !DILocation(line: 190, column: 2, scope: !3519)
!3541 = !DILocation(line: 191, column: 1, scope: !3519)
!3542 = distinct !DISubprogram(name: "drm_cache_flush_clflush", scope: !2, file: !2, line: 66, type: !3474, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3543)
!3543 = !{!3544, !3545, !3546}
!3544 = !DILocalVariable(name: "pages", arg: 1, scope: !3542, file: !2, line: 66, type: !2062)
!3545 = !DILocalVariable(name: "num_pages", arg: 2, scope: !3542, file: !2, line: 67, type: !98)
!3546 = !DILocalVariable(name: "i", scope: !3542, file: !2, line: 69, type: !98)
!3547 = !DILocation(line: 66, column: 50, scope: !3542)
!3548 = !DILocation(line: 67, column: 23, scope: !3542)
!3549 = !DILocation(line: 69, column: 2, scope: !3542)
!3550 = !DILocation(line: 69, column: 16, scope: !3542)
!3551 = !DILocation(line: 71, column: 2, scope: !3542)
!3552 = !DILocation(line: 71, column: 2, scope: !3553)
!3553 = distinct !DILexicalBlock(scope: !3542, file: !2, line: 71, column: 2)
!3554 = !DILocation(line: 71, column: 2, scope: !3555)
!3555 = distinct !DILexicalBlock(scope: !3553, file: !2, line: 71, column: 2)
!3556 = !{i64 2154211902}
!3557 = !DILocation(line: 72, column: 9, scope: !3558)
!3558 = distinct !DILexicalBlock(scope: !3542, file: !2, line: 72, column: 2)
!3559 = !DILocation(line: 72, column: 7, scope: !3558)
!3560 = !DILocation(line: 72, column: 14, scope: !3561)
!3561 = distinct !DILexicalBlock(scope: !3558, file: !2, line: 72, column: 2)
!3562 = !DILocation(line: 72, column: 18, scope: !3561)
!3563 = !DILocation(line: 72, column: 16, scope: !3561)
!3564 = !DILocation(line: 72, column: 2, scope: !3558)
!3565 = !DILocation(line: 73, column: 26, scope: !3561)
!3566 = !DILocation(line: 73, column: 20, scope: !3561)
!3567 = !DILocation(line: 73, column: 3, scope: !3561)
!3568 = !DILocation(line: 72, column: 30, scope: !3561)
!3569 = !DILocation(line: 72, column: 2, scope: !3561)
!3570 = distinct !{!3570, !3564, !3571, !3572, !3573}
!3571 = !DILocation(line: 73, column: 28, scope: !3558)
!3572 = !{!"llvm.loop.mustprogress"}
!3573 = !{!"llvm.loop.unroll.disable"}
!3574 = !DILocation(line: 74, column: 2, scope: !3542)
!3575 = !DILocation(line: 74, column: 2, scope: !3576)
!3576 = distinct !DILexicalBlock(scope: !3542, file: !2, line: 74, column: 2)
!3577 = !DILocation(line: 74, column: 2, scope: !3578)
!3578 = distinct !DILexicalBlock(scope: !3576, file: !2, line: 74, column: 2)
!3579 = !{i64 2154211990}
!3580 = !DILocation(line: 75, column: 1, scope: !3542)
!3581 = !DISubprogram(name: "wbinvd_on_all_cpus", scope: !3582, file: !3582, line: 124, type: !3583, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3582 = !DIFile(filename: "./arch/x86/include/asm/smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9466013197f61ce2fbb2e675d22e6f5")
!3583 = !DISubroutineType(types: !3584)
!3584 = !{!96}
!3585 = !DISubprogram(name: "_printk", scope: !3586, file: !3586, line: 153, type: !3587, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3586 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!3587 = !DISubroutineType(types: !3588)
!3588 = !{!96, !107, null}
!3589 = distinct !DISubprogram(name: "drm_clflush_sg", scope: !2, file: !2, line: 128, type: !3590, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3609)
!3590 = !DISubroutineType(types: !3591)
!3591 = !{null, !3592}
!3592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3593, size: 64)
!3593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sg_table", file: !3594, line: 39, size: 128, elements: !3595)
!3594 = !DIFile(filename: "./include/linux/scatterlist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc5d709d01f4c0a80a46fc78d63fc593")
!3595 = !{!3596, !3607, !3608}
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "sgl", scope: !3593, file: !3594, line: 40, baseType: !3597, size: 64)
!3597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3598, size: 64)
!3598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scatterlist", file: !3594, line: 11, size: 256, elements: !3599)
!3599 = !{!3600, !3601, !3602, !3603, !3605, !3606}
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "page_link", scope: !3598, file: !3594, line: 12, baseType: !98, size: 64)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3598, file: !3594, line: 13, baseType: !13, size: 32, offset: 64)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3598, file: !3594, line: 14, baseType: !13, size: 32, offset: 96)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "dma_address", scope: !3598, file: !3594, line: 15, baseType: !3604, size: 64, offset: 128)
!3604 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !133, line: 149, baseType: !100)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "dma_length", scope: !3598, file: !3594, line: 17, baseType: !13, size: 32, offset: 192)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "dma_flags", scope: !3598, file: !3594, line: 20, baseType: !13, size: 32, offset: 224)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "nents", scope: !3593, file: !3594, line: 41, baseType: !13, size: 32, offset: 64)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "orig_nents", scope: !3593, file: !3594, line: 42, baseType: !13, size: 32, offset: 96)
!3609 = !{!3610, !3611}
!3610 = !DILocalVariable(name: "st", arg: 1, scope: !3589, file: !2, line: 128, type: !3592)
!3611 = !DILocalVariable(name: "sg_iter", scope: !3612, file: !2, line: 132, type: !3614)
!3612 = distinct !DILexicalBlock(scope: !3613, file: !2, line: 131, column: 43)
!3613 = distinct !DILexicalBlock(scope: !3589, file: !2, line: 131, column: 6)
!3614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sg_page_iter", file: !3594, line: 550, size: 192, elements: !3615)
!3615 = !{!3616, !3617, !3618, !3619}
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "sg", scope: !3614, file: !3594, line: 551, baseType: !3597, size: 64)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "sg_pgoffset", scope: !3614, file: !3594, line: 552, baseType: !13, size: 32, offset: 64)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "__nents", scope: !3614, file: !3594, line: 555, baseType: !13, size: 32, offset: 96)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "__pg_advance", scope: !3614, file: !3594, line: 556, baseType: !96, size: 32, offset: 128)
!3620 = !DILocation(line: 128, column: 33, scope: !3589)
!3621 = !DILocation(line: 131, column: 6, scope: !3589)
!3622 = !DILocation(line: 131, column: 6, scope: !3613)
!3623 = !DILocation(line: 132, column: 3, scope: !3612)
!3624 = !DILocation(line: 132, column: 23, scope: !3612)
!3625 = !DILocation(line: 134, column: 3, scope: !3612)
!3626 = !DILocation(line: 134, column: 3, scope: !3627)
!3627 = distinct !DILexicalBlock(scope: !3612, file: !2, line: 134, column: 3)
!3628 = !DILocation(line: 134, column: 3, scope: !3629)
!3629 = distinct !DILexicalBlock(scope: !3627, file: !2, line: 134, column: 3)
!3630 = !{i64 2154236058}
!3631 = !DILocation(line: 135, column: 3, scope: !3632)
!3632 = distinct !DILexicalBlock(scope: !3612, file: !2, line: 135, column: 3)
!3633 = !DILocation(line: 135, column: 3, scope: !3634)
!3634 = distinct !DILexicalBlock(scope: !3632, file: !2, line: 135, column: 3)
!3635 = !DILocation(line: 136, column: 21, scope: !3634)
!3636 = !DILocation(line: 136, column: 4, scope: !3634)
!3637 = distinct !{!3637, !3631, !3638, !3572, !3573}
!3638 = !DILocation(line: 136, column: 48, scope: !3632)
!3639 = !DILocation(line: 137, column: 3, scope: !3612)
!3640 = !DILocation(line: 137, column: 3, scope: !3641)
!3641 = distinct !DILexicalBlock(scope: !3612, file: !2, line: 137, column: 3)
!3642 = !DILocation(line: 137, column: 3, scope: !3643)
!3643 = distinct !DILexicalBlock(scope: !3641, file: !2, line: 137, column: 3)
!3644 = !{i64 2154236383}
!3645 = !DILocation(line: 140, column: 2, scope: !3613)
!3646 = !DILocation(line: 142, column: 6, scope: !3647)
!3647 = distinct !DILexicalBlock(scope: !3589, file: !2, line: 142, column: 6)
!3648 = !DILocation(line: 142, column: 6, scope: !3589)
!3649 = !DILocation(line: 143, column: 3, scope: !3650)
!3650 = distinct !DILexicalBlock(scope: !3647, file: !2, line: 143, column: 3)
!3651 = !DILocation(line: 143, column: 3, scope: !3652)
!3652 = distinct !DILexicalBlock(scope: !3650, file: !2, line: 143, column: 3)
!3653 = !DILocation(line: 143, column: 3, scope: !3647)
!3654 = !DILocation(line: 147, column: 1, scope: !3589)
!3655 = !DISubprogram(name: "__sg_page_iter_start", scope: !3594, file: !3594, line: 573, type: !3656, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3656 = !DISubroutineType(types: !3657)
!3657 = !{null, !3658, !3597, !13, !98}
!3658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3614, size: 64)
!3659 = !DISubprogram(name: "__sg_page_iter_next", scope: !3594, file: !3594, line: 571, type: !3660, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3660 = !DISubroutineType(types: !3661)
!3661 = !{!729, !3658}
!3662 = distinct !DISubprogram(name: "drm_clflush_page", scope: !2, file: !2, line: 51, type: !1782, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3663)
!3663 = !{!3664, !3665, !3668, !3669}
!3664 = !DILocalVariable(name: "page", arg: 1, scope: !3662, file: !2, line: 51, type: !1677)
!3665 = !DILocalVariable(name: "page_virtual", scope: !3662, file: !2, line: 53, type: !3666)
!3666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3667, size: 64)
!3667 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !133, line: 108, baseType: !299)
!3668 = !DILocalVariable(name: "i", scope: !3662, file: !2, line: 54, type: !13)
!3669 = !DILocalVariable(name: "size", scope: !3662, file: !2, line: 55, type: !3670)
!3670 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!3671 = !DILocation(line: 51, column: 31, scope: !3662)
!3672 = !DILocation(line: 53, column: 2, scope: !3662)
!3673 = !DILocation(line: 53, column: 11, scope: !3662)
!3674 = !DILocation(line: 54, column: 2, scope: !3662)
!3675 = !DILocation(line: 54, column: 15, scope: !3662)
!3676 = !DILocation(line: 55, column: 2, scope: !3662)
!3677 = !DILocation(line: 55, column: 12, scope: !3662)
!3678 = !DILocation(line: 55, column: 33, scope: !3662)
!3679 = !DILocation(line: 55, column: 19, scope: !3662)
!3680 = !DILocation(line: 57, column: 6, scope: !3681)
!3681 = distinct !DILexicalBlock(scope: !3662, file: !2, line: 57, column: 6)
!3682 = !DILocation(line: 57, column: 6, scope: !3662)
!3683 = !DILocation(line: 58, column: 3, scope: !3681)
!3684 = !DILocation(line: 60, column: 29, scope: !3662)
!3685 = !DILocation(line: 60, column: 17, scope: !3662)
!3686 = !DILocation(line: 60, column: 15, scope: !3662)
!3687 = !DILocation(line: 61, column: 9, scope: !3688)
!3688 = distinct !DILexicalBlock(scope: !3662, file: !2, line: 61, column: 2)
!3689 = !DILocation(line: 61, column: 7, scope: !3688)
!3690 = !DILocation(line: 61, column: 14, scope: !3691)
!3691 = distinct !DILexicalBlock(scope: !3688, file: !2, line: 61, column: 2)
!3692 = !DILocation(line: 61, column: 16, scope: !3691)
!3693 = !DILocation(line: 61, column: 2, scope: !3688)
!3694 = !DILocation(line: 62, column: 14, scope: !3691)
!3695 = !DILocation(line: 62, column: 29, scope: !3691)
!3696 = !DILocation(line: 62, column: 27, scope: !3691)
!3697 = !DILocation(line: 62, column: 3, scope: !3691)
!3698 = !DILocation(line: 61, column: 34, scope: !3691)
!3699 = !DILocation(line: 61, column: 31, scope: !3691)
!3700 = !DILocation(line: 61, column: 2, scope: !3691)
!3701 = distinct !{!3701, !3693, !3702, !3572, !3573}
!3702 = !DILocation(line: 62, column: 30, scope: !3688)
!3703 = !DILocation(line: 63, column: 2, scope: !3662)
!3704 = !DILocation(line: 63, column: 2, scope: !3705)
!3705 = distinct !DILexicalBlock(scope: !3662, file: !2, line: 63, column: 2)
!3706 = !DILocation(line: 63, column: 2, scope: !3707)
!3707 = distinct !DILexicalBlock(scope: !3705, file: !2, line: 63, column: 2)
!3708 = !DILocation(line: 64, column: 1, scope: !3662)
!3709 = distinct !DISubprogram(name: "sg_page_iter_page", scope: !3594, file: !3594, line: 580, type: !3710, scopeLine: 581, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3712)
!3710 = !DISubroutineType(types: !3711)
!3711 = !{!1677, !3658}
!3712 = !{!3713}
!3713 = !DILocalVariable(name: "piter", arg: 1, scope: !3709, file: !3594, line: 580, type: !3658)
!3714 = !DILocation(line: 580, column: 67, scope: !3709)
!3715 = !DILocation(line: 582, column: 9, scope: !3709)
!3716 = !DILocation(line: 582, column: 2, scope: !3709)
!3717 = distinct !DISubprogram(name: "drm_clflush_virt_range", scope: !2, file: !2, line: 159, type: !3718, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3720)
!3718 = !DISubroutineType(types: !3719)
!3719 = !{null, !99, !98}
!3720 = !{!3721, !3722, !3723, !3726}
!3721 = !DILocalVariable(name: "addr", arg: 1, scope: !3717, file: !2, line: 159, type: !99)
!3722 = !DILocalVariable(name: "length", arg: 2, scope: !3717, file: !2, line: 159, type: !98)
!3723 = !DILocalVariable(name: "size", scope: !3724, file: !2, line: 163, type: !3670)
!3724 = distinct !DILexicalBlock(scope: !3725, file: !2, line: 162, column: 43)
!3725 = distinct !DILexicalBlock(scope: !3717, file: !2, line: 162, column: 6)
!3726 = !DILocalVariable(name: "end", scope: !3724, file: !2, line: 164, type: !99)
!3727 = !DILocation(line: 159, column: 30, scope: !3717)
!3728 = !DILocation(line: 159, column: 50, scope: !3717)
!3729 = !DILocation(line: 162, column: 6, scope: !3717)
!3730 = !DILocation(line: 162, column: 6, scope: !3725)
!3731 = !DILocation(line: 163, column: 3, scope: !3724)
!3732 = !DILocation(line: 163, column: 13, scope: !3724)
!3733 = !DILocation(line: 163, column: 34, scope: !3724)
!3734 = !DILocation(line: 163, column: 20, scope: !3724)
!3735 = !DILocation(line: 164, column: 3, scope: !3724)
!3736 = !DILocation(line: 164, column: 9, scope: !3724)
!3737 = !DILocation(line: 164, column: 15, scope: !3724)
!3738 = !DILocation(line: 164, column: 22, scope: !3724)
!3739 = !DILocation(line: 164, column: 20, scope: !3724)
!3740 = !DILocation(line: 166, column: 35, scope: !3724)
!3741 = !DILocation(line: 166, column: 20, scope: !3724)
!3742 = !DILocation(line: 166, column: 44, scope: !3724)
!3743 = !DILocation(line: 166, column: 43, scope: !3724)
!3744 = !DILocation(line: 166, column: 41, scope: !3724)
!3745 = !DILocation(line: 166, column: 10, scope: !3724)
!3746 = !DILocation(line: 166, column: 8, scope: !3724)
!3747 = !DILocation(line: 167, column: 3, scope: !3724)
!3748 = !DILocation(line: 167, column: 3, scope: !3749)
!3749 = distinct !DILexicalBlock(scope: !3724, file: !2, line: 167, column: 3)
!3750 = !DILocation(line: 167, column: 3, scope: !3751)
!3751 = distinct !DILexicalBlock(scope: !3749, file: !2, line: 167, column: 3)
!3752 = !{i64 2154253559}
!3753 = !DILocation(line: 168, column: 3, scope: !3724)
!3754 = !DILocation(line: 168, column: 10, scope: !3755)
!3755 = distinct !DILexicalBlock(scope: !3756, file: !2, line: 168, column: 3)
!3756 = distinct !DILexicalBlock(scope: !3724, file: !2, line: 168, column: 3)
!3757 = !DILocation(line: 168, column: 17, scope: !3755)
!3758 = !DILocation(line: 168, column: 15, scope: !3755)
!3759 = !DILocation(line: 168, column: 3, scope: !3756)
!3760 = !DILocation(line: 169, column: 15, scope: !3755)
!3761 = !DILocation(line: 169, column: 4, scope: !3755)
!3762 = !DILocation(line: 168, column: 30, scope: !3755)
!3763 = !DILocation(line: 168, column: 27, scope: !3755)
!3764 = !DILocation(line: 168, column: 3, scope: !3755)
!3765 = distinct !{!3765, !3759, !3766, !3572, !3573}
!3766 = !DILocation(line: 169, column: 19, scope: !3756)
!3767 = !DILocation(line: 170, column: 14, scope: !3724)
!3768 = !DILocation(line: 170, column: 18, scope: !3724)
!3769 = !DILocation(line: 170, column: 3, scope: !3724)
!3770 = !DILocation(line: 171, column: 3, scope: !3724)
!3771 = !DILocation(line: 171, column: 3, scope: !3772)
!3772 = distinct !DILexicalBlock(scope: !3724, file: !2, line: 171, column: 3)
!3773 = !DILocation(line: 171, column: 3, scope: !3774)
!3774 = distinct !DILexicalBlock(scope: !3772, file: !2, line: 171, column: 3)
!3775 = !{i64 2154253647}
!3776 = !DILocation(line: 173, column: 2, scope: !3725)
!3777 = !DILocation(line: 175, column: 6, scope: !3778)
!3778 = distinct !DILexicalBlock(scope: !3717, file: !2, line: 175, column: 6)
!3779 = !DILocation(line: 175, column: 6, scope: !3717)
!3780 = !DILocation(line: 176, column: 3, scope: !3781)
!3781 = distinct !DILexicalBlock(scope: !3778, file: !2, line: 176, column: 3)
!3782 = !DILocation(line: 176, column: 3, scope: !3783)
!3783 = distinct !DILexicalBlock(scope: !3781, file: !2, line: 176, column: 3)
!3784 = !DILocation(line: 176, column: 3, scope: !3778)
!3785 = !DILocation(line: 180, column: 1, scope: !3717)
!3786 = distinct !DISubprogram(name: "clflushopt", scope: !3787, file: !3787, line: 183, type: !3788, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3792)
!3787 = !DIFile(filename: "./arch/x86/include/asm/special_insns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5112175c4157449df0ef45eea72943c3")
!3788 = !DISubroutineType(types: !3789)
!3789 = !{null, !3790}
!3790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3791, size: 64)
!3791 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!3792 = !{!3793}
!3793 = !DILocalVariable(name: "__p", arg: 1, scope: !3786, file: !3787, line: 183, type: !3790)
!3794 = !DILocation(line: 183, column: 46, scope: !3786)
!3795 = !DILocation(line: 185, column: 2, scope: !3786)
!3796 = !{i64 2149564975, i64 2149565003, i64 2149565009, i64 2149565025, i64 2149565041, i64 2149565068, i64 2149565405, i64 2149564699, i64 2149565411, i64 2149565459, i64 2149565523, i64 2149565587, i64 2149565644, i64 2149564780, i64 2149564805, i64 2149565851, i64 2149565990, i64 2149565912, i64 2149566004, i64 2149564897}
!3797 = !DILocation(line: 189, column: 1, scope: !3786)
!3798 = distinct !DISubprogram(name: "drm_need_swiotlb", scope: !2, file: !2, line: 183, type: !3799, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3801)
!3799 = !DISubroutineType(types: !3800)
!3800 = !{!729, !96}
!3801 = !{!3802, !3803, !3817, !3818, !3822}
!3802 = !DILocalVariable(name: "dma_bits", arg: 1, scope: !3798, file: !2, line: 183, type: !96)
!3803 = !DILocalVariable(name: "tmp", scope: !3798, file: !2, line: 185, type: !3804)
!3804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3805, size: 64)
!3805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !3806, line: 21, size: 512, elements: !3807)
!3806 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28f44e500f5926227d9214b96bdcc01a")
!3807 = !{!3808, !3810, !3811, !3812, !3813, !3814, !3815, !3816}
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3805, file: !3806, line: 22, baseType: !3809, size: 64)
!3809 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !133, line: 164, baseType: !3177)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3805, file: !3806, line: 23, baseType: !3809, size: 64, offset: 64)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3805, file: !3806, line: 24, baseType: !107, size: 64, offset: 128)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3805, file: !3806, line: 25, baseType: !98, size: 64, offset: 192)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3805, file: !3806, line: 26, baseType: !98, size: 64, offset: 256)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3805, file: !3806, line: 27, baseType: !3804, size: 64, offset: 320)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3805, file: !3806, line: 27, baseType: !3804, size: 64, offset: 384)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3805, file: !3806, line: 27, baseType: !3804, size: 64, offset: 448)
!3817 = !DILocalVariable(name: "max_iomem", scope: !3798, file: !2, line: 186, type: !3809)
!3818 = !DILocalVariable(name: "__UNIQUE_ID___x308", scope: !3819, file: !2, line: 208, type: !3809)
!3819 = distinct !DILexicalBlock(scope: !3820, file: !2, line: 208, column: 15)
!3820 = distinct !DILexicalBlock(scope: !3821, file: !2, line: 207, column: 2)
!3821 = distinct !DILexicalBlock(scope: !3798, file: !2, line: 207, column: 2)
!3822 = !DILocalVariable(name: "__UNIQUE_ID___y309", scope: !3819, file: !2, line: 208, type: !3809)
!3823 = !DILocation(line: 183, column: 27, scope: !3798)
!3824 = !DILocation(line: 185, column: 2, scope: !3798)
!3825 = !DILocation(line: 185, column: 19, scope: !3798)
!3826 = !DILocation(line: 186, column: 2, scope: !3798)
!3827 = !DILocation(line: 186, column: 18, scope: !3798)
!3828 = !DILocation(line: 204, column: 6, scope: !3829)
!3829 = distinct !DILexicalBlock(scope: !3798, file: !2, line: 204, column: 6)
!3830 = !DILocation(line: 204, column: 6, scope: !3798)
!3831 = !DILocation(line: 205, column: 3, scope: !3829)
!3832 = !DILocation(line: 207, column: 28, scope: !3821)
!3833 = !DILocation(line: 207, column: 11, scope: !3821)
!3834 = !DILocation(line: 207, column: 7, scope: !3821)
!3835 = !DILocation(line: 207, column: 35, scope: !3820)
!3836 = !DILocation(line: 207, column: 2, scope: !3821)
!3837 = !DILocation(line: 208, column: 15, scope: !3819)
!3838 = !DILocation(line: 208, column: 15, scope: !3820)
!3839 = !DILocation(line: 208, column: 13, scope: !3820)
!3840 = !DILocation(line: 208, column: 3, scope: !3820)
!3841 = !DILocation(line: 207, column: 46, scope: !3820)
!3842 = !DILocation(line: 207, column: 51, scope: !3820)
!3843 = !DILocation(line: 207, column: 44, scope: !3820)
!3844 = !DILocation(line: 207, column: 2, scope: !3820)
!3845 = distinct !{!3845, !3836, !3846, !3572, !3573}
!3846 = !DILocation(line: 208, column: 15, scope: !3821)
!3847 = !DILocation(line: 210, column: 9, scope: !3798)
!3848 = !DILocation(line: 210, column: 32, scope: !3798)
!3849 = !DILocation(line: 210, column: 29, scope: !3798)
!3850 = !DILocation(line: 210, column: 19, scope: !3798)
!3851 = !DILocation(line: 210, column: 2, scope: !3798)
!3852 = !DILocation(line: 211, column: 1, scope: !3798)
!3853 = distinct !DISubprogram(name: "cc_platform_has", scope: !81, file: !81, line: 113, type: !3854, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3856)
!3854 = !DISubroutineType(types: !3855)
!3855 = !{!729, !80}
!3856 = !{!3857}
!3857 = !DILocalVariable(name: "attr", arg: 1, scope: !3853, file: !81, line: 113, type: !80)
!3858 = !DILocation(line: 113, column: 49, scope: !3853)
!3859 = !DILocation(line: 113, column: 57, scope: !3853)
!3860 = distinct !DISubprogram(name: "drm_memcpy_from_wc", scope: !2, file: !2, line: 305, type: !3861, scopeLine: 308, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3875)
!3861 = !DISubroutineType(types: !3862)
!3862 = !{null, !3863, !3873, !98}
!3863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3864, size: 64)
!3864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iosys_map", file: !3865, line: 109, size: 128, elements: !3866)
!3865 = !DIFile(filename: "./include/linux/iosys-map.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c97d7374529d1c22dbeacc3bfd30605")
!3866 = !{!3867, !3872}
!3867 = !DIDerivedType(tag: DW_TAG_member, scope: !3864, file: !3865, line: 110, baseType: !3868, size: 64)
!3868 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3864, file: !3865, line: 110, size: 64, elements: !3869)
!3869 = !{!3870, !3871}
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr_iomem", scope: !3868, file: !3865, line: 111, baseType: !99, size: 64)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3868, file: !3865, line: 112, baseType: !99, size: 64)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "is_iomem", scope: !3864, file: !3865, line: 114, baseType: !729, size: 8, offset: 64)
!3873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3874, size: 64)
!3874 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3864)
!3875 = !{!3876, !3877, !3878, !3879, !3882, !3885}
!3876 = !DILocalVariable(name: "dst", arg: 1, scope: !3860, file: !2, line: 305, type: !3863)
!3877 = !DILocalVariable(name: "src", arg: 2, scope: !3860, file: !2, line: 306, type: !3873)
!3878 = !DILocalVariable(name: "len", arg: 3, scope: !3860, file: !2, line: 307, type: !98)
!3879 = !DILocalVariable(name: "__ret_warn_on", scope: !3880, file: !2, line: 309, type: !96)
!3880 = distinct !DILexicalBlock(scope: !3881, file: !2, line: 309, column: 6)
!3881 = distinct !DILexicalBlock(scope: !3860, file: !2, line: 309, column: 6)
!3882 = !DILocalVariable(name: "__flags", scope: !3883, file: !2, line: 309, type: !96)
!3883 = distinct !DILexicalBlock(scope: !3884, file: !2, line: 309, column: 6)
!3884 = distinct !DILexicalBlock(scope: !3880, file: !2, line: 309, column: 6)
!3885 = !DILocalVariable(name: "branch", scope: !3886, file: !2, line: 314, type: !729)
!3886 = distinct !DILexicalBlock(scope: !3887, file: !2, line: 314, column: 6)
!3887 = distinct !DILexicalBlock(scope: !3860, file: !2, line: 314, column: 6)
!3888 = !DILocation(line: 305, column: 43, scope: !3860)
!3889 = !DILocation(line: 306, column: 28, scope: !3860)
!3890 = !DILocation(line: 307, column: 18, scope: !3860)
!3891 = !DILocation(line: 309, column: 6, scope: !3880)
!3892 = !DILocation(line: 309, column: 6, scope: !3884)
!3893 = !DILocation(line: 309, column: 6, scope: !3883)
!3894 = !DILocation(line: 309, column: 6, scope: !3895)
!3895 = distinct !DILexicalBlock(scope: !3883, file: !2, line: 309, column: 6)
!3896 = !DILocation(line: 309, column: 6, scope: !3897)
!3897 = distinct !DILexicalBlock(scope: !3883, file: !2, line: 309, column: 6)
!3898 = !{i64 2154267408, i64 2154267437, i64 2154267483, i64 2154267541, i64 2154267595, i64 2154267649, i64 2154267704, i64 2154267735, i64 2154268043, i64 2154268049, i64 2154268096, i64 2154268119, i64 2154268145}
!3899 = !DILocation(line: 309, column: 6, scope: !3900)
!3900 = distinct !DILexicalBlock(scope: !3883, file: !2, line: 309, column: 6)
!3901 = !DILocation(line: 309, column: 6, scope: !3881)
!3902 = !DILocation(line: 309, column: 6, scope: !3860)
!3903 = !DILocation(line: 310, column: 19, scope: !3904)
!3904 = distinct !DILexicalBlock(scope: !3881, file: !2, line: 309, column: 31)
!3905 = !DILocation(line: 310, column: 24, scope: !3904)
!3906 = !DILocation(line: 310, column: 29, scope: !3904)
!3907 = !DILocation(line: 310, column: 3, scope: !3904)
!3908 = !DILocation(line: 311, column: 3, scope: !3904)
!3909 = !DILocation(line: 314, column: 6, scope: !3886)
!3910 = !DILocation(line: 314, column: 6, scope: !3911)
!3911 = distinct !DILexicalBlock(scope: !3912, file: !2, line: 314, column: 6)
!3912 = distinct !DILexicalBlock(scope: !3886, file: !2, line: 314, column: 6)
!3913 = !{i8 0, i8 2}
!3914 = !DILocation(line: 314, column: 6, scope: !3912)
!3915 = !DILocation(line: 314, column: 6, scope: !3887)
!3916 = !DILocation(line: 314, column: 6, scope: !3860)
!3917 = !DILocation(line: 315, column: 24, scope: !3918)
!3918 = distinct !DILexicalBlock(scope: !3887, file: !2, line: 314, column: 43)
!3919 = !DILocation(line: 315, column: 29, scope: !3918)
!3920 = !DILocation(line: 316, column: 26, scope: !3918)
!3921 = !DILocation(line: 316, column: 31, scope: !3918)
!3922 = !DILocation(line: 317, column: 10, scope: !3918)
!3923 = !DILocation(line: 317, column: 15, scope: !3918)
!3924 = !DILocation(line: 318, column: 10, scope: !3918)
!3925 = !DILocation(line: 318, column: 15, scope: !3918)
!3926 = !DILocation(line: 319, column: 32, scope: !3918)
!3927 = !DILocation(line: 319, column: 37, scope: !3918)
!3928 = !DILocation(line: 320, column: 10, scope: !3918)
!3929 = !DILocation(line: 320, column: 15, scope: !3918)
!3930 = !DILocation(line: 321, column: 10, scope: !3918)
!3931 = !DILocation(line: 315, column: 3, scope: !3918)
!3932 = !DILocation(line: 322, column: 3, scope: !3918)
!3933 = !DILocation(line: 325, column: 18, scope: !3860)
!3934 = !DILocation(line: 325, column: 23, scope: !3860)
!3935 = !DILocation(line: 325, column: 28, scope: !3860)
!3936 = !DILocation(line: 325, column: 2, scope: !3860)
!3937 = !DILocation(line: 326, column: 1, scope: !3860)
!3938 = distinct !DISubprogram(name: "preempt_count", scope: !3939, file: !3939, line: 25, type: !3583, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3940)
!3939 = !DIFile(filename: "./arch/x86/include/asm/preempt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c59ac00d2282d4900ffdc8c32baa9bbc")
!3940 = !{!3941}
!3941 = !DILocalVariable(name: "pfo_val__", scope: !3942, file: !3939, line: 27, type: !109)
!3942 = distinct !DILexicalBlock(scope: !3938, file: !3939, line: 27, column: 9)
!3943 = !DILocation(line: 27, column: 9, scope: !3942)
!3944 = !{i64 2149629173}
!3945 = !DILocation(line: 27, column: 9, scope: !3938)
!3946 = !DILocation(line: 27, column: 48, scope: !3938)
!3947 = !DILocation(line: 27, column: 2, scope: !3938)
!3948 = distinct !DISubprogram(name: "memcpy_fallback", scope: !2, file: !2, line: 214, type: !3861, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3949)
!3949 = !{!3950, !3951, !3952, !3953, !3961, !3962}
!3950 = !DILocalVariable(name: "dst", arg: 1, scope: !3948, file: !2, line: 214, type: !3863)
!3951 = !DILocalVariable(name: "src", arg: 2, scope: !3948, file: !2, line: 215, type: !3873)
!3952 = !DILocalVariable(name: "len", arg: 3, scope: !3948, file: !2, line: 216, type: !98)
!3953 = !DILocalVariable(name: "bounce", scope: !3954, file: !2, line: 230, type: !3958)
!3954 = distinct !DILexicalBlock(scope: !3955, file: !2, line: 224, column: 9)
!3955 = distinct !DILexicalBlock(scope: !3956, file: !2, line: 222, column: 13)
!3956 = distinct !DILexicalBlock(scope: !3957, file: !2, line: 220, column: 13)
!3957 = distinct !DILexicalBlock(scope: !3948, file: !2, line: 218, column: 6)
!3958 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1024, elements: !3959)
!3959 = !{!3960}
!3960 = !DISubrange(count: 128)
!3961 = !DILocalVariable(name: "_src", scope: !3954, file: !2, line: 231, type: !99)
!3962 = !DILocalVariable(name: "_dst", scope: !3954, file: !2, line: 232, type: !99)
!3963 = !DILocation(line: 214, column: 47, scope: !3948)
!3964 = !DILocation(line: 215, column: 32, scope: !3948)
!3965 = !DILocation(line: 216, column: 22, scope: !3948)
!3966 = !DILocation(line: 218, column: 7, scope: !3957)
!3967 = !DILocation(line: 218, column: 12, scope: !3957)
!3968 = !DILocation(line: 218, column: 21, scope: !3957)
!3969 = !DILocation(line: 218, column: 25, scope: !3957)
!3970 = !DILocation(line: 218, column: 30, scope: !3957)
!3971 = !DILocation(line: 218, column: 6, scope: !3948)
!3972 = !DILocation(line: 219, column: 10, scope: !3973)
!3973 = distinct !DILexicalBlock(scope: !3957, file: !2, line: 218, column: 40)
!3974 = !DILocation(line: 219, column: 15, scope: !3973)
!3975 = !DILocation(line: 219, column: 22, scope: !3973)
!3976 = !DILocation(line: 219, column: 27, scope: !3973)
!3977 = !DILocation(line: 219, column: 34, scope: !3973)
!3978 = !DILocation(line: 219, column: 3, scope: !3973)
!3979 = !DILocation(line: 220, column: 2, scope: !3973)
!3980 = !DILocation(line: 220, column: 14, scope: !3956)
!3981 = !DILocation(line: 220, column: 19, scope: !3956)
!3982 = !DILocation(line: 220, column: 13, scope: !3957)
!3983 = !DILocation(line: 221, column: 23, scope: !3984)
!3984 = distinct !DILexicalBlock(scope: !3956, file: !2, line: 220, column: 29)
!3985 = !DILocation(line: 221, column: 31, scope: !3984)
!3986 = !DILocation(line: 221, column: 36, scope: !3984)
!3987 = !DILocation(line: 221, column: 43, scope: !3984)
!3988 = !DILocation(line: 221, column: 3, scope: !3984)
!3989 = !DILocation(line: 222, column: 2, scope: !3984)
!3990 = !DILocation(line: 222, column: 14, scope: !3955)
!3991 = !DILocation(line: 222, column: 19, scope: !3955)
!3992 = !DILocation(line: 222, column: 13, scope: !3956)
!3993 = !DILocation(line: 223, column: 17, scope: !3994)
!3994 = distinct !DILexicalBlock(scope: !3955, file: !2, line: 222, column: 29)
!3995 = !DILocation(line: 223, column: 22, scope: !3994)
!3996 = !DILocation(line: 223, column: 29, scope: !3994)
!3997 = !DILocation(line: 223, column: 34, scope: !3994)
!3998 = !DILocation(line: 223, column: 47, scope: !3994)
!3999 = !DILocation(line: 223, column: 3, scope: !3994)
!4000 = !DILocation(line: 224, column: 2, scope: !3994)
!4001 = !DILocation(line: 230, column: 3, scope: !3954)
!4002 = !DILocation(line: 230, column: 8, scope: !3954)
!4003 = !DILocation(line: 231, column: 3, scope: !3954)
!4004 = !DILocation(line: 231, column: 17, scope: !3954)
!4005 = !DILocation(line: 231, column: 24, scope: !3954)
!4006 = !DILocation(line: 231, column: 29, scope: !3954)
!4007 = !DILocation(line: 232, column: 3, scope: !3954)
!4008 = !DILocation(line: 232, column: 17, scope: !3954)
!4009 = !DILocation(line: 232, column: 24, scope: !3954)
!4010 = !DILocation(line: 232, column: 29, scope: !3954)
!4011 = !DILocation(line: 234, column: 3, scope: !3954)
!4012 = !DILocation(line: 234, column: 10, scope: !3954)
!4013 = !DILocation(line: 234, column: 14, scope: !3954)
!4014 = !DILocation(line: 235, column: 18, scope: !4015)
!4015 = distinct !DILexicalBlock(scope: !3954, file: !2, line: 234, column: 37)
!4016 = !DILocation(line: 235, column: 26, scope: !4015)
!4017 = !DILocation(line: 235, column: 4, scope: !4015)
!4018 = !DILocation(line: 236, column: 16, scope: !4015)
!4019 = !DILocation(line: 236, column: 22, scope: !4015)
!4020 = !DILocation(line: 236, column: 4, scope: !4015)
!4021 = !DILocation(line: 237, column: 9, scope: !4015)
!4022 = !DILocation(line: 238, column: 9, scope: !4015)
!4023 = !DILocation(line: 239, column: 8, scope: !4015)
!4024 = distinct !{!4024, !4011, !4025, !3572, !3573}
!4025 = !DILocation(line: 240, column: 3, scope: !3954)
!4026 = !DILocation(line: 241, column: 7, scope: !4027)
!4027 = distinct !DILexicalBlock(scope: !3954, file: !2, line: 241, column: 7)
!4028 = !DILocation(line: 241, column: 7, scope: !3954)
!4029 = !DILocation(line: 242, column: 18, scope: !4030)
!4030 = distinct !DILexicalBlock(scope: !4027, file: !2, line: 241, column: 12)
!4031 = !DILocation(line: 242, column: 26, scope: !4030)
!4032 = !DILocation(line: 242, column: 4, scope: !4030)
!4033 = !DILocation(line: 243, column: 16, scope: !4030)
!4034 = !DILocation(line: 243, column: 22, scope: !4030)
!4035 = !DILocation(line: 243, column: 4, scope: !4030)
!4036 = !DILocation(line: 244, column: 3, scope: !4030)
!4037 = !DILocation(line: 245, column: 2, scope: !3955)
!4038 = !DILocation(line: 246, column: 1, scope: !3948)
!4039 = distinct !DISubprogram(name: "arch_static_branch_jump", scope: !4040, file: !4040, line: 53, type: !4041, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4046)
!4040 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!4041 = !DISubroutineType(types: !4042)
!4042 = !{!729, !4043, !4045}
!4043 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4044)
!4044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3446, size: 64)
!4045 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !729)
!4046 = !{!4047, !4048, !4049}
!4047 = !DILocalVariable(name: "key", arg: 1, scope: !4039, file: !4040, line: 53, type: !4043)
!4048 = !DILocalVariable(name: "branch", arg: 2, scope: !4039, file: !4040, line: 53, type: !4045)
!4049 = !DILabel(scope: !4039, name: "l_yes", file: !4040, line: 61)
!4050 = !DILocation(line: 53, column: 79, scope: !4039)
!4051 = !DILocation(line: 53, column: 95, scope: !4039)
!4052 = !DILocation(line: 58, column: 13, scope: !4039)
!4053 = !DILocation(line: 58, column: 24, scope: !4039)
!4054 = !DILocation(line: 55, column: 2, scope: !4039)
!4055 = !{i64 1231814, i64 1231837, i64 2148716584, i64 2148716605, i64 2148716631, i64 2148716664, i64 2148716698, i64 2148716722}
!4056 = !DILocation(line: 60, column: 2, scope: !4039)
!4057 = !DILocation(line: 61, column: 1, scope: !4039)
!4058 = !DILocation(line: 62, column: 2, scope: !4039)
!4059 = !DILocation(line: 63, column: 1, scope: !4039)
!4060 = distinct !DISubprogram(name: "__drm_memcpy_from_wc", scope: !2, file: !2, line: 287, type: !4061, scopeLine: 288, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4063)
!4061 = !DISubroutineType(types: !4062)
!4062 = !{null, !99, !105, !98}
!4063 = !{!4064, !4065, !4066}
!4064 = !DILocalVariable(name: "dst", arg: 1, scope: !4060, file: !2, line: 287, type: !99)
!4065 = !DILocalVariable(name: "src", arg: 2, scope: !4060, file: !2, line: 287, type: !105)
!4066 = !DILocalVariable(name: "len", arg: 3, scope: !4060, file: !2, line: 287, type: !98)
!4067 = !DILocation(line: 287, column: 40, scope: !4060)
!4068 = !DILocation(line: 287, column: 57, scope: !4060)
!4069 = !DILocation(line: 287, column: 76, scope: !4060)
!4070 = !DILocation(line: 289, column: 6, scope: !4071)
!4071 = distinct !DILexicalBlock(scope: !4060, file: !2, line: 289, column: 6)
!4072 = !DILocation(line: 289, column: 6, scope: !4060)
!4073 = !DILocation(line: 290, column: 10, scope: !4071)
!4074 = !DILocation(line: 290, column: 15, scope: !4071)
!4075 = !DILocation(line: 290, column: 20, scope: !4071)
!4076 = !DILocation(line: 290, column: 3, scope: !4071)
!4077 = !DILocation(line: 291, column: 11, scope: !4078)
!4078 = distinct !DILexicalBlock(scope: !4071, file: !2, line: 291, column: 11)
!4079 = !DILocation(line: 291, column: 11, scope: !4071)
!4080 = !DILocation(line: 292, column: 18, scope: !4078)
!4081 = !DILocation(line: 292, column: 23, scope: !4078)
!4082 = !DILocation(line: 292, column: 28, scope: !4078)
!4083 = !DILocation(line: 292, column: 32, scope: !4078)
!4084 = !DILocation(line: 292, column: 3, scope: !4078)
!4085 = !DILocation(line: 293, column: 1, scope: !4060)
!4086 = distinct !DISubprogram(name: "drm_memcpy_init_early", scope: !2, file: !2, line: 332, type: !2829, scopeLine: 333, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!4087 = !DILocation(line: 338, column: 41, scope: !4088)
!4088 = distinct !DILexicalBlock(scope: !4086, file: !2, line: 338, column: 6)
!4089 = !DILocation(line: 338, column: 6, scope: !4088)
!4090 = !DILocation(line: 338, column: 6, scope: !4086)
!4091 = !DILocation(line: 339, column: 7, scope: !4088)
!4092 = !DILocation(line: 340, column: 3, scope: !4088)
!4093 = !DILocation(line: 341, column: 1, scope: !4086)
!4094 = !DISubprogram(name: "static_key_enable", scope: !3443, file: !3443, line: 233, type: !4095, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4095 = !DISubroutineType(types: !4096)
!4096 = !{null, !4044}
!4097 = distinct !DISubprogram(name: "constant_test_bit", scope: !3499, file: !3499, line: 204, type: !4098, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4100)
!4098 = !DISubroutineType(types: !4099)
!4099 = !{!729, !1001, !3502}
!4100 = !{!4101, !4102}
!4101 = !DILocalVariable(name: "nr", arg: 1, scope: !4097, file: !3499, line: 204, type: !1001)
!4102 = !DILocalVariable(name: "addr", arg: 2, scope: !4097, file: !3499, line: 204, type: !3502)
!4103 = !DILocation(line: 204, column: 52, scope: !4097)
!4104 = !DILocation(line: 204, column: 86, scope: !4097)
!4105 = !DILocation(line: 206, column: 19, scope: !4097)
!4106 = !DILocation(line: 206, column: 22, scope: !4097)
!4107 = !DILocation(line: 206, column: 15, scope: !4097)
!4108 = !DILocation(line: 207, column: 4, scope: !4097)
!4109 = !DILocation(line: 207, column: 9, scope: !4097)
!4110 = !DILocation(line: 207, column: 12, scope: !4097)
!4111 = !DILocation(line: 206, column: 44, scope: !4097)
!4112 = !DILocation(line: 207, column: 37, scope: !4097)
!4113 = !DILocation(line: 206, column: 2, scope: !4097)
!4114 = distinct !DISubprogram(name: "variable_test_bit", scope: !3499, file: !3499, line: 224, type: !4098, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4115)
!4115 = !{!4116, !4117, !4118}
!4116 = !DILocalVariable(name: "nr", arg: 1, scope: !4114, file: !3499, line: 224, type: !1001)
!4117 = !DILocalVariable(name: "addr", arg: 2, scope: !4114, file: !3499, line: 224, type: !3502)
!4118 = !DILocalVariable(name: "oldbit", scope: !4114, file: !3499, line: 226, type: !729)
!4119 = !DILocation(line: 224, column: 52, scope: !4114)
!4120 = !DILocation(line: 224, column: 86, scope: !4114)
!4121 = !DILocation(line: 226, column: 2, scope: !4114)
!4122 = !DILocation(line: 226, column: 7, scope: !4114)
!4123 = !DILocation(line: 231, column: 33, scope: !4114)
!4124 = !DILocation(line: 231, column: 46, scope: !4114)
!4125 = !DILocation(line: 228, column: 2, scope: !4114)
!4126 = !{i64 2148158048, i64 2148158122}
!4127 = !DILocation(line: 233, column: 9, scope: !4114)
!4128 = !DILocation(line: 234, column: 1, scope: !4114)
!4129 = !DILocation(line: 233, column: 2, scope: !4114)
!4130 = distinct !DISubprogram(name: "kmap_atomic", scope: !3435, file: !3435, line: 210, type: !4131, scopeLine: 211, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4133)
!4131 = !DISubroutineType(types: !4132)
!4132 = !{!99, !1677}
!4133 = !{!4134}
!4134 = !DILocalVariable(name: "page", arg: 1, scope: !4130, file: !3435, line: 210, type: !1677)
!4135 = !DILocation(line: 210, column: 46, scope: !4130)
!4136 = !DILocation(line: 215, column: 3, scope: !4137)
!4137 = distinct !DILexicalBlock(scope: !4130, file: !3435, line: 212, column: 6)
!4138 = !DILocation(line: 215, column: 3, scope: !4139)
!4139 = distinct !DILexicalBlock(scope: !4137, file: !3435, line: 215, column: 3)
!4140 = !{i64 2153961513}
!4141 = !DILocation(line: 216, column: 2, scope: !4130)
!4142 = !DILocation(line: 217, column: 9, scope: !4130)
!4143 = !DILocation(line: 217, column: 2, scope: !4130)
!4144 = !DILocation(line: 230, column: 48, scope: !3434)
!4145 = !DILocation(line: 235, column: 2, scope: !3434)
!4146 = !DILocation(line: 239, column: 3, scope: !4147)
!4147 = distinct !DILexicalBlock(scope: !3434, file: !3435, line: 236, column: 6)
!4148 = !DILocation(line: 239, column: 3, scope: !4149)
!4149 = distinct !DILexicalBlock(scope: !4147, file: !3435, line: 239, column: 3)
!4150 = !{i64 2153963039}
!4151 = !DILocation(line: 239, column: 3, scope: !4152)
!4152 = distinct !DILexicalBlock(scope: !4149, file: !3435, line: 239, column: 3)
!4153 = !DILocation(line: 239, column: 3, scope: !4154)
!4154 = distinct !DILexicalBlock(scope: !4152, file: !3435, line: 239, column: 3)
!4155 = !{i64 2153963221}
!4156 = !DILocation(line: 240, column: 1, scope: !3434)
!4157 = distinct !DISubprogram(name: "__preempt_count_add", scope: !3939, file: !3939, line: 78, type: !2822, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4158)
!4158 = !{!4159, !4160, !4162}
!4159 = !DILocalVariable(name: "val", arg: 1, scope: !4157, file: !3939, line: 78, type: !96)
!4160 = !DILocalVariable(name: "pao_ID__", scope: !4161, file: !3939, line: 80, type: !3670)
!4161 = distinct !DILexicalBlock(scope: !4157, file: !3939, line: 80, column: 2)
!4162 = !DILocalVariable(name: "pto_val__", scope: !4163, file: !3939, line: 80, type: !109)
!4163 = distinct !DILexicalBlock(scope: !4164, file: !3939, line: 80, column: 2)
!4164 = distinct !DILexicalBlock(scope: !4165, file: !3939, line: 80, column: 2)
!4165 = distinct !DILexicalBlock(scope: !4161, file: !3939, line: 80, column: 2)
!4166 = !DILocation(line: 78, column: 53, scope: !4157)
!4167 = !DILocation(line: 80, column: 2, scope: !4157)
!4168 = !DILocation(line: 80, column: 2, scope: !4161)
!4169 = !DILocation(line: 80, column: 2, scope: !4165)
!4170 = !DILocation(line: 80, column: 2, scope: !4171)
!4171 = distinct !DILexicalBlock(scope: !4165, file: !3939, line: 80, column: 2)
!4172 = !{i64 2149639138}
!4173 = !DILocation(line: 80, column: 2, scope: !4164)
!4174 = !DILocation(line: 80, column: 2, scope: !4175)
!4175 = distinct !DILexicalBlock(scope: !4164, file: !3939, line: 80, column: 2)
!4176 = !{i64 2149639433}
!4177 = !DILocation(line: 80, column: 2, scope: !4163)
!4178 = !{i64 2149640138}
!4179 = !DILocation(line: 81, column: 1, scope: !4157)
!4180 = distinct !DISubprogram(name: "pagefault_disable", scope: !4181, file: !4181, line: 225, type: !2829, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!4181 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c6a99e19cfced98603230c2c71e2e3e")
!4182 = !DILocation(line: 227, column: 2, scope: !4180)
!4183 = !DILocation(line: 232, column: 2, scope: !4180)
!4184 = !{i64 2152897009}
!4185 = !DILocation(line: 233, column: 1, scope: !4180)
!4186 = distinct !DISubprogram(name: "lowmem_page_address", scope: !1791, file: !1791, line: 2176, type: !4187, scopeLine: 2177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4191)
!4187 = !DISubroutineType(types: !4188)
!4188 = !{!99, !4189}
!4189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4190, size: 64)
!4190 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1678)
!4191 = !{!4192}
!4192 = !DILocalVariable(name: "page", arg: 1, scope: !4186, file: !1791, line: 2176, type: !4189)
!4193 = !DILocation(line: 2176, column: 69, scope: !4186)
!4194 = !DILocation(line: 2178, column: 9, scope: !4186)
!4195 = !DILocation(line: 2178, column: 2, scope: !4186)
!4196 = distinct !DISubprogram(name: "pagefault_disabled_inc", scope: !4181, file: !4181, line: 208, type: !2829, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!4197 = !DILocation(line: 210, column: 2, scope: !4196)
!4198 = !DILocation(line: 210, column: 11, scope: !4196)
!4199 = !DILocation(line: 210, column: 29, scope: !4196)
!4200 = !DILocation(line: 211, column: 1, scope: !4196)
!4201 = distinct !DISubprogram(name: "get_current", scope: !4202, file: !4202, line: 39, type: !4203, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4205)
!4202 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!4203 = !DISubroutineType(types: !4204)
!4204 = !{!112}
!4205 = !{!4206, !4208, !4210}
!4206 = !DILocalVariable(name: "pscr_ret__", scope: !4207, file: !4202, line: 41, type: !112)
!4207 = distinct !DILexicalBlock(scope: !4201, file: !4202, line: 41, column: 9)
!4208 = !DILocalVariable(name: "__vpp_verify", scope: !4209, file: !4202, line: 41, type: !105)
!4209 = distinct !DILexicalBlock(scope: !4207, file: !4202, line: 41, column: 9)
!4210 = !DILocalVariable(name: "pfo_val__", scope: !4211, file: !4202, line: 41, type: !100)
!4211 = distinct !DILexicalBlock(scope: !4207, file: !4202, line: 41, column: 9)
!4212 = !DILocation(line: 41, column: 9, scope: !4207)
!4213 = !DILocation(line: 41, column: 9, scope: !4209)
!4214 = !DILocation(line: 41, column: 9, scope: !4211)
!4215 = !{i64 2148454932}
!4216 = !DILocation(line: 41, column: 9, scope: !4201)
!4217 = !DILocation(line: 41, column: 2, scope: !4201)
!4218 = distinct !DISubprogram(name: "pagefault_enable", scope: !4181, file: !4181, line: 235, type: !2829, scopeLine: 236, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!4219 = !DILocation(line: 241, column: 2, scope: !4218)
!4220 = !{i64 2152897212}
!4221 = !DILocation(line: 242, column: 2, scope: !4218)
!4222 = !DILocation(line: 243, column: 1, scope: !4218)
!4223 = distinct !DISubprogram(name: "__preempt_count_dec_and_test", scope: !3939, file: !3939, line: 93, type: !4224, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4226)
!4224 = !DISubroutineType(types: !4225)
!4225 = !{!729}
!4226 = !{!4227}
!4227 = !DILocalVariable(name: "c", scope: !4228, file: !3939, line: 95, type: !729)
!4228 = distinct !DILexicalBlock(scope: !4223, file: !3939, line: 95, column: 9)
!4229 = !DILocation(line: 95, column: 9, scope: !4228)
!4230 = !{i64 2149643494, i64 2149643587}
!4231 = !DILocation(line: 95, column: 9, scope: !4223)
!4232 = !DILocation(line: 95, column: 2, scope: !4223)
!4233 = distinct !DISubprogram(name: "pagefault_disabled_dec", scope: !4181, file: !4181, line: 213, type: !2829, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!4234 = !DILocation(line: 215, column: 2, scope: !4233)
!4235 = !DILocation(line: 215, column: 11, scope: !4233)
!4236 = !DILocation(line: 215, column: 29, scope: !4233)
!4237 = !DILocation(line: 216, column: 1, scope: !4233)
!4238 = distinct !DISubprogram(name: "sg_page", scope: !3594, file: !3594, line: 168, type: !4239, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4241)
!4239 = !DISubroutineType(types: !4240)
!4240 = !{!1677, !3597}
!4241 = !{!4242}
!4242 = !DILocalVariable(name: "sg", arg: 1, scope: !4238, file: !3594, line: 168, type: !3597)
!4243 = !DILocation(line: 168, column: 56, scope: !4238)
!4244 = !DILocation(line: 173, column: 26, scope: !4238)
!4245 = !DILocation(line: 173, column: 31, scope: !4238)
!4246 = !DILocation(line: 173, column: 41, scope: !4238)
!4247 = !DILocation(line: 173, column: 9, scope: !4238)
!4248 = !DILocation(line: 173, column: 2, scope: !4238)
!4249 = distinct !DISubprogram(name: "iosys_map_memcpy_to", scope: !3865, file: !3865, line: 286, type: !4250, scopeLine: 288, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4252)
!4250 = !DISubroutineType(types: !4251)
!4251 = !{null, !3863, !1043, !105, !1043}
!4252 = !{!4253, !4254, !4255, !4256}
!4253 = !DILocalVariable(name: "dst", arg: 1, scope: !4249, file: !3865, line: 286, type: !3863)
!4254 = !DILocalVariable(name: "dst_offset", arg: 2, scope: !4249, file: !3865, line: 286, type: !1043)
!4255 = !DILocalVariable(name: "src", arg: 3, scope: !4249, file: !3865, line: 287, type: !105)
!4256 = !DILocalVariable(name: "len", arg: 4, scope: !4249, file: !3865, line: 287, type: !1043)
!4257 = !DILocation(line: 286, column: 58, scope: !4249)
!4258 = !DILocation(line: 286, column: 70, scope: !4249)
!4259 = !DILocation(line: 287, column: 24, scope: !4249)
!4260 = !DILocation(line: 287, column: 36, scope: !4249)
!4261 = !DILocation(line: 289, column: 6, scope: !4262)
!4262 = distinct !DILexicalBlock(scope: !4249, file: !3865, line: 289, column: 6)
!4263 = !DILocation(line: 289, column: 11, scope: !4262)
!4264 = !DILocation(line: 289, column: 6, scope: !4249)
!4265 = !DILocation(line: 290, column: 15, scope: !4262)
!4266 = !DILocation(line: 290, column: 20, scope: !4262)
!4267 = !DILocation(line: 290, column: 34, scope: !4262)
!4268 = !DILocation(line: 290, column: 32, scope: !4262)
!4269 = !DILocation(line: 290, column: 46, scope: !4262)
!4270 = !DILocation(line: 290, column: 51, scope: !4262)
!4271 = !DILocation(line: 290, column: 3, scope: !4262)
!4272 = !DILocation(line: 292, column: 10, scope: !4262)
!4273 = !DILocation(line: 292, column: 15, scope: !4262)
!4274 = !DILocation(line: 292, column: 23, scope: !4262)
!4275 = !DILocation(line: 292, column: 21, scope: !4262)
!4276 = !DILocation(line: 292, column: 35, scope: !4262)
!4277 = !DILocation(line: 292, column: 40, scope: !4262)
!4278 = !DILocation(line: 292, column: 3, scope: !4262)
!4279 = !DILocation(line: 293, column: 1, scope: !4249)
!4280 = !DISubprogram(name: "memcpy_fromio", scope: !4281, file: !4281, line: 204, type: !4282, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4281 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61486da85b514d445321f8c21ee9eef4")
!4282 = !DISubroutineType(types: !4283)
!4283 = !{null, !99, !4284, !1043}
!4284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4285, size: 64)
!4285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3791)
!4286 = !DISubprogram(name: "memcpy_toio", scope: !4281, file: !4281, line: 205, type: !4287, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4287 = !DISubroutineType(types: !4288)
!4288 = !{null, !3790, !105, !1043}
!4289 = distinct !DISubprogram(name: "__memcpy_ntdqa", scope: !2, file: !2, line: 252, type: !4061, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4290)
!4290 = !{!4291, !4292, !4293}
!4291 = !DILocalVariable(name: "dst", arg: 1, scope: !4289, file: !2, line: 252, type: !99)
!4292 = !DILocalVariable(name: "src", arg: 2, scope: !4289, file: !2, line: 252, type: !105)
!4293 = !DILocalVariable(name: "len", arg: 3, scope: !4289, file: !2, line: 252, type: !98)
!4294 = !DILocation(line: 252, column: 34, scope: !4289)
!4295 = !DILocation(line: 252, column: 51, scope: !4289)
!4296 = !DILocation(line: 252, column: 70, scope: !4289)
!4297 = !DILocation(line: 254, column: 2, scope: !4289)
!4298 = !DILocation(line: 256, column: 2, scope: !4289)
!4299 = !DILocation(line: 256, column: 9, scope: !4289)
!4300 = !DILocation(line: 256, column: 13, scope: !4289)
!4301 = !DILocation(line: 265, column: 15, scope: !4302)
!4302 = distinct !DILexicalBlock(scope: !4289, file: !2, line: 256, column: 19)
!4303 = !DILocation(line: 265, column: 26, scope: !4302)
!4304 = !DILocation(line: 257, column: 3, scope: !4302)
!4305 = !{i64 7319, i64 7352, i64 7386, i64 7420, i64 7454, i64 7486, i64 7518, i64 7550}
!4306 = !DILocation(line: 266, column: 7, scope: !4302)
!4307 = !DILocation(line: 267, column: 7, scope: !4302)
!4308 = !DILocation(line: 268, column: 7, scope: !4302)
!4309 = distinct !{!4309, !4298, !4310, !3572, !3573}
!4310 = !DILocation(line: 269, column: 2, scope: !4289)
!4311 = !DILocation(line: 270, column: 2, scope: !4289)
!4312 = !DILocation(line: 270, column: 12, scope: !4289)
!4313 = !DILocation(line: 273, column: 15, scope: !4314)
!4314 = distinct !DILexicalBlock(scope: !4289, file: !2, line: 270, column: 16)
!4315 = !DILocation(line: 273, column: 26, scope: !4314)
!4316 = !DILocation(line: 271, column: 3, scope: !4314)
!4317 = !{i64 7682, i64 7715}
!4318 = !DILocation(line: 274, column: 7, scope: !4314)
!4319 = !DILocation(line: 275, column: 7, scope: !4314)
!4320 = distinct !{!4320, !4311, !4321, !3572, !3573}
!4321 = !DILocation(line: 276, column: 2, scope: !4289)
!4322 = !DILocation(line: 278, column: 2, scope: !4289)
!4323 = !DILocation(line: 279, column: 1, scope: !4289)
!4324 = distinct !DISubprogram(name: "kernel_fpu_begin", scope: !4325, file: !4325, line: 35, type: !2829, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!4325 = !DIFile(filename: "./arch/x86/include/asm/fpu/api.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "69298eced5ce9b488888ff68abf966e3")
!4326 = !DILocation(line: 42, column: 2, scope: !4324)
!4327 = !DILocation(line: 50, column: 1, scope: !4324)
!4328 = !DISubprogram(name: "kernel_fpu_end", scope: !4325, file: !4325, line: 30, type: !2829, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4329 = !DISubprogram(name: "kernel_fpu_begin_mask", scope: !4325, file: !4325, line: 29, type: !4330, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4330 = !DISubroutineType(types: !4331)
!4331 = !{null, !13}
