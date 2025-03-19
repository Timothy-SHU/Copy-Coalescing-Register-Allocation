; ModuleID = 'mm/maccess.c'
source_filename = "mm/maccess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_copy_from_kernel_nofault: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad copy_from_kernel_nofault ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_copy_from_user_nofault: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad copy_from_user_nofault ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_copy_to_user_nofault: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad copy_to_user_nofault ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___copy_overflow: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __copy_overflow ; .previous"

%struct.pcpu_hot = type { %union.anon.13 }
%union.anon.13 = type { %struct.anon.14, [16 x i8] }
%struct.anon.14 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.__large_struct = type { [100 x i64] }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i64, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, ptr, [32 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, %union.rcu_special, %struct.list_head, ptr, i64, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i16, i64, %struct.restart_block, i32, i32, i64, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, ptr, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, %struct.task_io_accounting, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.mutex, i32, ptr, %struct.mutex, %struct.list_head, ptr, i16, i16, ptr, i32, i32, i64, i32, i32, i32, i32, %struct.callback_head, %struct.tlbflush_unmap_batch, ptr, %struct.page_frag, ptr, i32, i32, i64, i64, i64, i64, ptr, ptr, %struct.kmap_ctrl, %struct.callback_head, %struct.refcount_struct, i32, ptr, %struct.timer_list, ptr, %struct.refcount_struct, ptr, ptr, i64, i64, i64, %struct.callback_head, i32, %struct.llist_head, %struct.llist_head, %struct.callback_head, [48 x i8], %struct.thread_struct }
%struct.thread_info = type { i64, i64, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon, i16, i16 }
%struct.llist_node = type { ptr }
%union.anon = type { i32 }
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
%struct.restart_block = type { i64, ptr, %union.anon.0 }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.qspinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.atomic_t }
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

@__UNIQUE_ID___addressable_copy_from_kernel_nofault337 = internal global ptr @copy_from_kernel_nofault, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_copy_from_user_nofault338 = internal global ptr @copy_from_user_nofault, section ".discard.addressable", align 8, !dbg !5159
@__UNIQUE_ID___addressable_copy_to_user_nofault339 = internal global ptr @copy_to_user_nofault, section ".discard.addressable", align 8, !dbg !5161
@.str = private unnamed_addr constant [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", align 1, !dbg !5163
@.str.1 = private unnamed_addr constant [13 x i8] c"mm/maccess.c\00", align 1, !dbg !5168
@__UNIQUE_ID___addressable___copy_overflow340 = internal global ptr @__copy_overflow, section ".discard.addressable", align 8, !dbg !5173
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID___addressable_copy_from_kernel_nofault337, ptr @__UNIQUE_ID___addressable_copy_from_user_nofault338, ptr @__UNIQUE_ID___addressable_copy_to_user_nofault339, ptr @__UNIQUE_ID___addressable___copy_overflow340], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden zeroext i1 @copy_from_kernel_nofault_allowed(ptr noundef %unsafe_src, i64 noundef %size) #0 align 16 !dbg !5185 {
entry:
  %unsafe_src.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %unsafe_src, ptr %unsafe_src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %unsafe_src.addr, metadata !5189, metadata !DIExpression()), !dbg !5191
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5190, metadata !DIExpression()), !dbg !5192
  ret i1 true, !dbg !5193
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @copy_from_kernel_nofault(ptr noundef %dst, ptr noundef %src, i64 noundef %size) #0 align 16 !dbg !5194 {
entry:
  %retval = alloca i64, align 8
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %align = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__tmp = alloca i64, align 8
  %tmp = alloca i64, align 8
  %__tmp13 = alloca i64, align 8
  %tmp14 = alloca i32, align 4
  %__tmp33 = alloca i64, align 8
  %tmp35 = alloca i16, align 2
  %x_u8__ = alloca i8, align 1
  %__tmp51 = alloca i64, align 8
  %tmp53 = alloca i8, align 1
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !5198, metadata !DIExpression()), !dbg !5223
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !5199, metadata !DIExpression()), !dbg !5224
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5200, metadata !DIExpression()), !dbg !5225
  call void @llvm.lifetime.start.p0(i64 8, ptr %align) #10, !dbg !5226
  call void @llvm.dbg.declare(metadata ptr %align, metadata !5201, metadata !DIExpression()), !dbg !5227
  store i64 0, ptr %align, align 8, !dbg !5227
  %0 = load ptr, ptr %src.addr, align 8, !dbg !5228
  %1 = load i64, ptr %size.addr, align 8, !dbg !5230
  %call = call zeroext i1 @copy_from_kernel_nofault_allowed(ptr noundef %0, i64 noundef %1) #11, !dbg !5231
  br i1 %call, label %if.end, label %if.then, !dbg !5232

if.then:                                          ; preds = %entry
  store i64 -34, ptr %retval, align 8, !dbg !5233
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5233

if.end:                                           ; preds = %entry
  call void @pagefault_disable() #11, !dbg !5234
  %2 = load i64, ptr %align, align 8, !dbg !5235
  %and = and i64 %2, 7, !dbg !5236
  %tobool = icmp ne i64 %and, 0, !dbg !5236
  br i1 %tobool, label %if.end3, label %if.then1, !dbg !5237

if.then1:                                         ; preds = %if.end
  br label %while.cond, !dbg !5238

while.cond:                                       ; preds = %do.end, %if.then1
  %3 = load i64, ptr %size.addr, align 8, !dbg !5238
  %cmp = icmp uge i64 %3, 8, !dbg !5238
  br i1 %cmp, label %while.body, label %while.end, !dbg !5238

while.body:                                       ; preds = %while.cond
  br label %do.body, !dbg !5239

do.body:                                          ; preds = %while.body
  %4 = load ptr, ptr %dst.addr, align 8, !dbg !5240
  %5 = load ptr, ptr %src.addr, align 8, !dbg !5240
  %6 = callbr i64 asm sideeffect "\0A1:\09movq $1,$0\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "=r,*m,!i,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(%struct.__large_struct) %5) #10
          to label %asm.fallthrough [label %Efault.split], !dbg !5240, !srcloc !5241

asm.fallthrough:                                  ; preds = %do.body
  store i64 %6, ptr %4, align 8, !dbg !5240
  call void @llvm.lifetime.start.p0(i64 8, ptr %__tmp) #10, !dbg !5242
  call void @llvm.dbg.declare(metadata ptr %__tmp, metadata !5202, metadata !DIExpression()), !dbg !5242
  %7 = load ptr, ptr %dst.addr, align 8, !dbg !5242
  %8 = load i64, ptr %7, align 8, !dbg !5242
  store i64 %8, ptr %__tmp, align 8, !dbg !5242
  call void @kmsan_unpoison_memory(ptr noundef %__tmp, i64 noundef 8) #11, !dbg !5242
  %9 = load i64, ptr %__tmp, align 8, !dbg !5242
  %10 = load ptr, ptr %dst.addr, align 8, !dbg !5242
  store i64 %9, ptr %10, align 8, !dbg !5242
  store i64 %9, ptr %tmp, align 8, !dbg !5242
  call void @llvm.lifetime.end.p0(i64 8, ptr %__tmp) #10, !dbg !5240
  %11 = load i64, ptr %tmp, align 8, !dbg !5242
  br label %do.cond, !dbg !5240

do.cond:                                          ; preds = %asm.fallthrough
  br label %do.end, !dbg !5240

do.end:                                           ; preds = %do.cond
  %12 = load ptr, ptr %dst.addr, align 8, !dbg !5239
  %add.ptr = getelementptr i8, ptr %12, i64 8, !dbg !5239
  store ptr %add.ptr, ptr %dst.addr, align 8, !dbg !5239
  %13 = load ptr, ptr %src.addr, align 8, !dbg !5239
  %add.ptr2 = getelementptr i8, ptr %13, i64 8, !dbg !5239
  store ptr %add.ptr2, ptr %src.addr, align 8, !dbg !5239
  %14 = load i64, ptr %size.addr, align 8, !dbg !5239
  %sub = sub i64 %14, 8, !dbg !5239
  store i64 %sub, ptr %size.addr, align 8, !dbg !5239
  br label %while.cond, !dbg !5238, !llvm.loop !5243

Efault.split:                                     ; preds = %do.body
  store i64 %6, ptr %4, align 8, !dbg !5240
  br label %Efault, !dbg !5240

while.end:                                        ; preds = %while.cond
  br label %if.end3, !dbg !5238

if.end3:                                          ; preds = %while.end, %if.end
  %15 = load i64, ptr %align, align 8, !dbg !5246
  %and4 = and i64 %15, 3, !dbg !5247
  %tobool5 = icmp ne i64 %and4, 0, !dbg !5247
  br i1 %tobool5, label %if.end22, label %if.then6, !dbg !5248

if.then6:                                         ; preds = %if.end3
  br label %while.cond7, !dbg !5249

while.cond7:                                      ; preds = %do.end17, %if.then6
  %16 = load i64, ptr %size.addr, align 8, !dbg !5249
  %cmp8 = icmp uge i64 %16, 4, !dbg !5249
  br i1 %cmp8, label %while.body9, label %while.end21, !dbg !5249

while.body9:                                      ; preds = %while.cond7
  br label %do.body10, !dbg !5250

do.body10:                                        ; preds = %while.body9
  %17 = load ptr, ptr %dst.addr, align 8, !dbg !5251
  %18 = load ptr, ptr %src.addr, align 8, !dbg !5251
  %19 = callbr i32 asm sideeffect "\0A1:\09movl $1,$0\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "=r,*m,!i,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(%struct.__large_struct) %18) #10
          to label %asm.fallthrough11 [label %Efault.split12], !dbg !5251, !srcloc !5252

asm.fallthrough11:                                ; preds = %do.body10
  store i32 %19, ptr %17, align 4, !dbg !5251
  call void @llvm.lifetime.start.p0(i64 8, ptr %__tmp13) #10, !dbg !5253
  call void @llvm.dbg.declare(metadata ptr %__tmp13, metadata !5207, metadata !DIExpression()), !dbg !5253
  %20 = load ptr, ptr %dst.addr, align 8, !dbg !5253
  %21 = load i32, ptr %20, align 4, !dbg !5253
  %conv = zext i32 %21 to i64, !dbg !5253
  store i64 %conv, ptr %__tmp13, align 8, !dbg !5253
  call void @kmsan_unpoison_memory(ptr noundef %__tmp13, i64 noundef 8) #11, !dbg !5253
  %22 = load i64, ptr %__tmp13, align 8, !dbg !5253
  %conv15 = trunc i64 %22 to i32, !dbg !5253
  %23 = load ptr, ptr %dst.addr, align 8, !dbg !5253
  store i32 %conv15, ptr %23, align 4, !dbg !5253
  store i32 %conv15, ptr %tmp14, align 4, !dbg !5253
  call void @llvm.lifetime.end.p0(i64 8, ptr %__tmp13) #10, !dbg !5251
  %24 = load i32, ptr %tmp14, align 4, !dbg !5253
  br label %do.cond16, !dbg !5251

do.cond16:                                        ; preds = %asm.fallthrough11
  br label %do.end17, !dbg !5251

do.end17:                                         ; preds = %do.cond16
  %25 = load ptr, ptr %dst.addr, align 8, !dbg !5250
  %add.ptr18 = getelementptr i8, ptr %25, i64 4, !dbg !5250
  store ptr %add.ptr18, ptr %dst.addr, align 8, !dbg !5250
  %26 = load ptr, ptr %src.addr, align 8, !dbg !5250
  %add.ptr19 = getelementptr i8, ptr %26, i64 4, !dbg !5250
  store ptr %add.ptr19, ptr %src.addr, align 8, !dbg !5250
  %27 = load i64, ptr %size.addr, align 8, !dbg !5250
  %sub20 = sub i64 %27, 4, !dbg !5250
  store i64 %sub20, ptr %size.addr, align 8, !dbg !5250
  br label %while.cond7, !dbg !5249, !llvm.loop !5254

Efault.split12:                                   ; preds = %do.body10
  store i32 %19, ptr %17, align 4, !dbg !5251
  br label %Efault, !dbg !5251

while.end21:                                      ; preds = %while.cond7
  br label %if.end22, !dbg !5249

if.end22:                                         ; preds = %while.end21, %if.end3
  %28 = load i64, ptr %align, align 8, !dbg !5255
  %and23 = and i64 %28, 1, !dbg !5256
  %tobool24 = icmp ne i64 %and23, 0, !dbg !5256
  br i1 %tobool24, label %if.end43, label %if.then25, !dbg !5257

if.then25:                                        ; preds = %if.end22
  br label %while.cond26, !dbg !5258

while.cond26:                                     ; preds = %do.end38, %if.then25
  %29 = load i64, ptr %size.addr, align 8, !dbg !5258
  %cmp27 = icmp uge i64 %29, 2, !dbg !5258
  br i1 %cmp27, label %while.body29, label %while.end42, !dbg !5258

while.body29:                                     ; preds = %while.cond26
  br label %do.body30, !dbg !5259

do.body30:                                        ; preds = %while.body29
  %30 = load ptr, ptr %dst.addr, align 8, !dbg !5260
  %31 = load ptr, ptr %src.addr, align 8, !dbg !5260
  %32 = callbr i16 asm sideeffect "\0A1:\09movw $1,$0\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "=r,*m,!i,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(%struct.__large_struct) %31) #10
          to label %asm.fallthrough31 [label %Efault.split32], !dbg !5260, !srcloc !5261

asm.fallthrough31:                                ; preds = %do.body30
  store i16 %32, ptr %30, align 2, !dbg !5260
  call void @llvm.lifetime.start.p0(i64 8, ptr %__tmp33) #10, !dbg !5262
  call void @llvm.dbg.declare(metadata ptr %__tmp33, metadata !5212, metadata !DIExpression()), !dbg !5262
  %33 = load ptr, ptr %dst.addr, align 8, !dbg !5262
  %34 = load i16, ptr %33, align 2, !dbg !5262
  %conv34 = zext i16 %34 to i64, !dbg !5262
  store i64 %conv34, ptr %__tmp33, align 8, !dbg !5262
  call void @kmsan_unpoison_memory(ptr noundef %__tmp33, i64 noundef 8) #11, !dbg !5262
  %35 = load i64, ptr %__tmp33, align 8, !dbg !5262
  %conv36 = trunc i64 %35 to i16, !dbg !5262
  %36 = load ptr, ptr %dst.addr, align 8, !dbg !5262
  store i16 %conv36, ptr %36, align 2, !dbg !5262
  store i16 %conv36, ptr %tmp35, align 2, !dbg !5262
  call void @llvm.lifetime.end.p0(i64 8, ptr %__tmp33) #10, !dbg !5260
  %37 = load i16, ptr %tmp35, align 2, !dbg !5262
  br label %do.cond37, !dbg !5260

do.cond37:                                        ; preds = %asm.fallthrough31
  br label %do.end38, !dbg !5260

do.end38:                                         ; preds = %do.cond37
  %38 = load ptr, ptr %dst.addr, align 8, !dbg !5259
  %add.ptr39 = getelementptr i8, ptr %38, i64 2, !dbg !5259
  store ptr %add.ptr39, ptr %dst.addr, align 8, !dbg !5259
  %39 = load ptr, ptr %src.addr, align 8, !dbg !5259
  %add.ptr40 = getelementptr i8, ptr %39, i64 2, !dbg !5259
  store ptr %add.ptr40, ptr %src.addr, align 8, !dbg !5259
  %40 = load i64, ptr %size.addr, align 8, !dbg !5259
  %sub41 = sub i64 %40, 2, !dbg !5259
  store i64 %sub41, ptr %size.addr, align 8, !dbg !5259
  br label %while.cond26, !dbg !5258, !llvm.loop !5263

Efault.split32:                                   ; preds = %do.body30
  store i16 %32, ptr %30, align 2, !dbg !5260
  br label %Efault, !dbg !5260

while.end42:                                      ; preds = %while.cond26
  br label %if.end43, !dbg !5258

if.end43:                                         ; preds = %while.end42, %if.end22
  br label %while.cond44, !dbg !5264

while.cond44:                                     ; preds = %do.end56, %if.end43
  %41 = load i64, ptr %size.addr, align 8, !dbg !5264
  %cmp45 = icmp uge i64 %41, 1, !dbg !5264
  br i1 %cmp45, label %while.body47, label %while.end60, !dbg !5264

while.body47:                                     ; preds = %while.cond44
  br label %do.body48, !dbg !5265

do.body48:                                        ; preds = %while.body47
  call void @llvm.lifetime.start.p0(i64 1, ptr %x_u8__) #10, !dbg !5266
  call void @llvm.dbg.declare(metadata ptr %x_u8__, metadata !5217, metadata !DIExpression()), !dbg !5266
  %42 = load ptr, ptr %src.addr, align 8, !dbg !5266
  %43 = callbr i8 asm sideeffect "\0A1:\09movb $1,$0\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "=q,*m,!i,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(%struct.__large_struct) %42) #10
          to label %asm.fallthrough49 [label %Efault.split50], !dbg !5266, !srcloc !5267

asm.fallthrough49:                                ; preds = %do.body48
  store i8 %43, ptr %x_u8__, align 1, !dbg !5266
  %44 = load i8, ptr %x_u8__, align 1, !dbg !5266
  %45 = load ptr, ptr %dst.addr, align 8, !dbg !5266
  store i8 %44, ptr %45, align 1, !dbg !5266
  call void @llvm.lifetime.end.p0(i64 1, ptr %x_u8__) #10, !dbg !5266
  call void @llvm.lifetime.start.p0(i64 8, ptr %__tmp51) #10, !dbg !5268
  call void @llvm.dbg.declare(metadata ptr %__tmp51, metadata !5220, metadata !DIExpression()), !dbg !5268
  %46 = load ptr, ptr %dst.addr, align 8, !dbg !5268
  %47 = load i8, ptr %46, align 1, !dbg !5268
  %conv52 = zext i8 %47 to i64, !dbg !5268
  store i64 %conv52, ptr %__tmp51, align 8, !dbg !5268
  call void @kmsan_unpoison_memory(ptr noundef %__tmp51, i64 noundef 8) #11, !dbg !5268
  %48 = load i64, ptr %__tmp51, align 8, !dbg !5268
  %conv54 = trunc i64 %48 to i8, !dbg !5268
  %49 = load ptr, ptr %dst.addr, align 8, !dbg !5268
  store i8 %conv54, ptr %49, align 1, !dbg !5268
  store i8 %conv54, ptr %tmp53, align 1, !dbg !5268
  call void @llvm.lifetime.end.p0(i64 8, ptr %__tmp51) #10, !dbg !5266
  %50 = load i8, ptr %tmp53, align 1, !dbg !5268
  br label %do.cond55, !dbg !5266

do.cond55:                                        ; preds = %asm.fallthrough49
  br label %do.end56, !dbg !5266

do.end56:                                         ; preds = %do.cond55
  %51 = load ptr, ptr %dst.addr, align 8, !dbg !5265
  %add.ptr57 = getelementptr i8, ptr %51, i64 1, !dbg !5265
  store ptr %add.ptr57, ptr %dst.addr, align 8, !dbg !5265
  %52 = load ptr, ptr %src.addr, align 8, !dbg !5265
  %add.ptr58 = getelementptr i8, ptr %52, i64 1, !dbg !5265
  store ptr %add.ptr58, ptr %src.addr, align 8, !dbg !5265
  %53 = load i64, ptr %size.addr, align 8, !dbg !5265
  %sub59 = sub i64 %53, 1, !dbg !5265
  store i64 %sub59, ptr %size.addr, align 8, !dbg !5265
  br label %while.cond44, !dbg !5264, !llvm.loop !5269

Efault.split50:                                   ; preds = %do.body48
  store i8 %43, ptr %x_u8__, align 1, !dbg !5266
  br label %Efault, !dbg !5266

while.end60:                                      ; preds = %while.cond44
  call void @pagefault_enable() #11, !dbg !5270
  store i64 0, ptr %retval, align 8, !dbg !5271
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5271

Efault:                                           ; preds = %Efault.split50, %Efault.split32, %Efault.split12, %Efault.split
  call void @llvm.dbg.label(metadata !5222), !dbg !5272
  call void @pagefault_enable() #11, !dbg !5273
  store i64 -14, ptr %retval, align 8, !dbg !5274
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5274

cleanup:                                          ; preds = %Efault, %while.end60, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %align) #10, !dbg !5275
  %54 = load i64, ptr %retval, align 8, !dbg !5275
  ret i64 %54, !dbg !5275
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pagefault_disable() #3 align 16 !dbg !5276 {
entry:
  call void @pagefault_disabled_inc() #11, !dbg !5278
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !5279, !srcloc !5280
  ret void, !dbg !5281
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kmsan_unpoison_memory(ptr noundef %address, i64 noundef %size) #3 align 16 !dbg !5282 {
entry:
  %address.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !5287, metadata !DIExpression()), !dbg !5289
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5288, metadata !DIExpression()), !dbg !5290
  ret void, !dbg !5291
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pagefault_enable() #3 align 16 !dbg !5292 {
entry:
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !5293, !srcloc !5294
  call void @pagefault_disabled_dec() #11, !dbg !5295
  ret void, !dbg !5296
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @copy_to_kernel_nofault(ptr noundef %dst, ptr noundef %src, i64 noundef %size) #0 align 16 !dbg !5297 {
entry:
  %retval = alloca i64, align 8
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %align = alloca i64, align 8
  %__x = alloca i64, align 8
  %__ptr = alloca ptr, align 8
  %__x9 = alloca i32, align 4
  %__ptr10 = alloca ptr, align 8
  %__x26 = alloca i16, align 2
  %__ptr27 = alloca ptr, align 8
  %__x40 = alloca i8, align 1
  %__ptr41 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !5299, metadata !DIExpression()), !dbg !5323
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !5300, metadata !DIExpression()), !dbg !5324
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5301, metadata !DIExpression()), !dbg !5325
  call void @llvm.lifetime.start.p0(i64 8, ptr %align) #10, !dbg !5326
  call void @llvm.dbg.declare(metadata ptr %align, metadata !5302, metadata !DIExpression()), !dbg !5327
  store i64 0, ptr %align, align 8, !dbg !5327
  call void @pagefault_disable() #11, !dbg !5328
  %0 = load i64, ptr %align, align 8, !dbg !5329
  %and = and i64 %0, 7, !dbg !5330
  %tobool = icmp ne i64 %and, 0, !dbg !5330
  br i1 %tobool, label %if.end, label %if.then, !dbg !5331

if.then:                                          ; preds = %entry
  br label %while.cond, !dbg !5332

while.cond:                                       ; preds = %do.end, %if.then
  %1 = load i64, ptr %size.addr, align 8, !dbg !5332
  %cmp = icmp uge i64 %1, 8, !dbg !5332
  br i1 %cmp, label %while.body, label %while.end, !dbg !5332

while.body:                                       ; preds = %while.cond
  br label %do.body, !dbg !5333

do.body:                                          ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__x) #10, !dbg !5334
  call void @llvm.dbg.declare(metadata ptr %__x, metadata !5303, metadata !DIExpression()), !dbg !5334
  %2 = load ptr, ptr %src.addr, align 8, !dbg !5334
  %3 = load i64, ptr %2, align 8, !dbg !5334
  store i64 %3, ptr %__x, align 8, !dbg !5334
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #10, !dbg !5334
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !5307, metadata !DIExpression()), !dbg !5334
  %4 = load ptr, ptr %dst.addr, align 8, !dbg !5334
  store ptr %4, ptr %__ptr, align 8, !dbg !5334
  %5 = load i64, ptr %__x, align 8, !dbg !5334
  %6 = load ptr, ptr %__ptr, align 8, !dbg !5334
  callbr void asm sideeffect "\0A1:\09movq $0,$1\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "er,*m,!i,~{dirflag},~{fpsr},~{flags}"(i64 %5, ptr elementtype(%struct.__large_struct) %6) #10
          to label %asm.fallthrough [label %Efault], !dbg !5334, !srcloc !5335

asm.fallthrough:                                  ; preds = %do.body
  %7 = load ptr, ptr %__ptr, align 8, !dbg !5336
  call void @kmsan_copy_to_user(ptr noundef %7, ptr noundef %__x, i64 noundef 8, i64 noundef 0) #11, !dbg !5336
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #10, !dbg !5333
  call void @llvm.lifetime.end.p0(i64 8, ptr %__x) #10, !dbg !5333
  br label %do.cond, !dbg !5334

do.cond:                                          ; preds = %asm.fallthrough
  br label %do.end, !dbg !5334

do.end:                                           ; preds = %do.cond
  %8 = load ptr, ptr %dst.addr, align 8, !dbg !5333
  %add.ptr = getelementptr i8, ptr %8, i64 8, !dbg !5333
  store ptr %add.ptr, ptr %dst.addr, align 8, !dbg !5333
  %9 = load ptr, ptr %src.addr, align 8, !dbg !5333
  %add.ptr1 = getelementptr i8, ptr %9, i64 8, !dbg !5333
  store ptr %add.ptr1, ptr %src.addr, align 8, !dbg !5333
  %10 = load i64, ptr %size.addr, align 8, !dbg !5333
  %sub = sub i64 %10, 8, !dbg !5333
  store i64 %sub, ptr %size.addr, align 8, !dbg !5333
  br label %while.cond, !dbg !5332, !llvm.loop !5338

while.end:                                        ; preds = %while.cond
  br label %if.end, !dbg !5332

if.end:                                           ; preds = %while.end, %entry
  %11 = load i64, ptr %align, align 8, !dbg !5339
  %and2 = and i64 %11, 3, !dbg !5340
  %tobool3 = icmp ne i64 %and2, 0, !dbg !5340
  br i1 %tobool3, label %if.end18, label %if.then4, !dbg !5341

if.then4:                                         ; preds = %if.end
  br label %while.cond5, !dbg !5342

while.cond5:                                      ; preds = %do.end13, %if.then4
  %12 = load i64, ptr %size.addr, align 8, !dbg !5342
  %cmp6 = icmp uge i64 %12, 4, !dbg !5342
  br i1 %cmp6, label %while.body7, label %while.end17, !dbg !5342

while.body7:                                      ; preds = %while.cond5
  br label %do.body8, !dbg !5343

do.body8:                                         ; preds = %while.body7
  call void @llvm.lifetime.start.p0(i64 4, ptr %__x9) #10, !dbg !5344
  call void @llvm.dbg.declare(metadata ptr %__x9, metadata !5308, metadata !DIExpression()), !dbg !5344
  %13 = load ptr, ptr %src.addr, align 8, !dbg !5344
  %14 = load i32, ptr %13, align 4, !dbg !5344
  store i32 %14, ptr %__x9, align 4, !dbg !5344
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr10) #10, !dbg !5344
  call void @llvm.dbg.declare(metadata ptr %__ptr10, metadata !5312, metadata !DIExpression()), !dbg !5344
  %15 = load ptr, ptr %dst.addr, align 8, !dbg !5344
  store ptr %15, ptr %__ptr10, align 8, !dbg !5344
  %16 = load i32, ptr %__x9, align 4, !dbg !5344
  %17 = load ptr, ptr %__ptr10, align 8, !dbg !5344
  callbr void asm sideeffect "\0A1:\09movl $0,$1\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "ir,*m,!i,~{dirflag},~{fpsr},~{flags}"(i32 %16, ptr elementtype(%struct.__large_struct) %17) #10
          to label %asm.fallthrough11 [label %Efault], !dbg !5344, !srcloc !5345

asm.fallthrough11:                                ; preds = %do.body8
  %18 = load ptr, ptr %__ptr10, align 8, !dbg !5346
  call void @kmsan_copy_to_user(ptr noundef %18, ptr noundef %__x9, i64 noundef 4, i64 noundef 0) #11, !dbg !5346
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr10) #10, !dbg !5343
  call void @llvm.lifetime.end.p0(i64 4, ptr %__x9) #10, !dbg !5343
  br label %do.cond12, !dbg !5344

do.cond12:                                        ; preds = %asm.fallthrough11
  br label %do.end13, !dbg !5344

do.end13:                                         ; preds = %do.cond12
  %19 = load ptr, ptr %dst.addr, align 8, !dbg !5343
  %add.ptr14 = getelementptr i8, ptr %19, i64 4, !dbg !5343
  store ptr %add.ptr14, ptr %dst.addr, align 8, !dbg !5343
  %20 = load ptr, ptr %src.addr, align 8, !dbg !5343
  %add.ptr15 = getelementptr i8, ptr %20, i64 4, !dbg !5343
  store ptr %add.ptr15, ptr %src.addr, align 8, !dbg !5343
  %21 = load i64, ptr %size.addr, align 8, !dbg !5343
  %sub16 = sub i64 %21, 4, !dbg !5343
  store i64 %sub16, ptr %size.addr, align 8, !dbg !5343
  br label %while.cond5, !dbg !5342, !llvm.loop !5348

while.end17:                                      ; preds = %while.cond5
  br label %if.end18, !dbg !5342

if.end18:                                         ; preds = %while.end17, %if.end
  %22 = load i64, ptr %align, align 8, !dbg !5349
  %and19 = and i64 %22, 1, !dbg !5350
  %tobool20 = icmp ne i64 %and19, 0, !dbg !5350
  br i1 %tobool20, label %if.end35, label %if.then21, !dbg !5351

if.then21:                                        ; preds = %if.end18
  br label %while.cond22, !dbg !5352

while.cond22:                                     ; preds = %do.end30, %if.then21
  %23 = load i64, ptr %size.addr, align 8, !dbg !5352
  %cmp23 = icmp uge i64 %23, 2, !dbg !5352
  br i1 %cmp23, label %while.body24, label %while.end34, !dbg !5352

while.body24:                                     ; preds = %while.cond22
  br label %do.body25, !dbg !5353

do.body25:                                        ; preds = %while.body24
  call void @llvm.lifetime.start.p0(i64 2, ptr %__x26) #10, !dbg !5354
  call void @llvm.dbg.declare(metadata ptr %__x26, metadata !5313, metadata !DIExpression()), !dbg !5354
  %24 = load ptr, ptr %src.addr, align 8, !dbg !5354
  %25 = load i16, ptr %24, align 2, !dbg !5354
  store i16 %25, ptr %__x26, align 2, !dbg !5354
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr27) #10, !dbg !5354
  call void @llvm.dbg.declare(metadata ptr %__ptr27, metadata !5317, metadata !DIExpression()), !dbg !5354
  %26 = load ptr, ptr %dst.addr, align 8, !dbg !5354
  store ptr %26, ptr %__ptr27, align 8, !dbg !5354
  %27 = load i16, ptr %__x26, align 2, !dbg !5354
  %28 = load ptr, ptr %__ptr27, align 8, !dbg !5354
  callbr void asm sideeffect "\0A1:\09movw $0,$1\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "ir,*m,!i,~{dirflag},~{fpsr},~{flags}"(i16 %27, ptr elementtype(%struct.__large_struct) %28) #10
          to label %asm.fallthrough28 [label %Efault], !dbg !5354, !srcloc !5355

asm.fallthrough28:                                ; preds = %do.body25
  %29 = load ptr, ptr %__ptr27, align 8, !dbg !5356
  call void @kmsan_copy_to_user(ptr noundef %29, ptr noundef %__x26, i64 noundef 2, i64 noundef 0) #11, !dbg !5356
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr27) #10, !dbg !5353
  call void @llvm.lifetime.end.p0(i64 2, ptr %__x26) #10, !dbg !5353
  br label %do.cond29, !dbg !5354

do.cond29:                                        ; preds = %asm.fallthrough28
  br label %do.end30, !dbg !5354

do.end30:                                         ; preds = %do.cond29
  %30 = load ptr, ptr %dst.addr, align 8, !dbg !5353
  %add.ptr31 = getelementptr i8, ptr %30, i64 2, !dbg !5353
  store ptr %add.ptr31, ptr %dst.addr, align 8, !dbg !5353
  %31 = load ptr, ptr %src.addr, align 8, !dbg !5353
  %add.ptr32 = getelementptr i8, ptr %31, i64 2, !dbg !5353
  store ptr %add.ptr32, ptr %src.addr, align 8, !dbg !5353
  %32 = load i64, ptr %size.addr, align 8, !dbg !5353
  %sub33 = sub i64 %32, 2, !dbg !5353
  store i64 %sub33, ptr %size.addr, align 8, !dbg !5353
  br label %while.cond22, !dbg !5352, !llvm.loop !5358

while.end34:                                      ; preds = %while.cond22
  br label %if.end35, !dbg !5352

if.end35:                                         ; preds = %while.end34, %if.end18
  br label %while.cond36, !dbg !5359

while.cond36:                                     ; preds = %do.end44, %if.end35
  %33 = load i64, ptr %size.addr, align 8, !dbg !5359
  %cmp37 = icmp uge i64 %33, 1, !dbg !5359
  br i1 %cmp37, label %while.body38, label %while.end48, !dbg !5359

while.body38:                                     ; preds = %while.cond36
  br label %do.body39, !dbg !5360

do.body39:                                        ; preds = %while.body38
  call void @llvm.lifetime.start.p0(i64 1, ptr %__x40) #10, !dbg !5361
  call void @llvm.dbg.declare(metadata ptr %__x40, metadata !5318, metadata !DIExpression()), !dbg !5361
  %34 = load ptr, ptr %src.addr, align 8, !dbg !5361
  %35 = load i8, ptr %34, align 1, !dbg !5361
  store i8 %35, ptr %__x40, align 1, !dbg !5361
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr41) #10, !dbg !5361
  call void @llvm.dbg.declare(metadata ptr %__ptr41, metadata !5321, metadata !DIExpression()), !dbg !5361
  %36 = load ptr, ptr %dst.addr, align 8, !dbg !5361
  store ptr %36, ptr %__ptr41, align 8, !dbg !5361
  %37 = load i8, ptr %__x40, align 1, !dbg !5361
  %38 = load ptr, ptr %__ptr41, align 8, !dbg !5361
  callbr void asm sideeffect "\0A1:\09movb $0,$1\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "iq,*m,!i,~{dirflag},~{fpsr},~{flags}"(i8 %37, ptr elementtype(%struct.__large_struct) %38) #10
          to label %asm.fallthrough42 [label %Efault], !dbg !5361, !srcloc !5362

asm.fallthrough42:                                ; preds = %do.body39
  %39 = load ptr, ptr %__ptr41, align 8, !dbg !5363
  call void @kmsan_copy_to_user(ptr noundef %39, ptr noundef %__x40, i64 noundef 1, i64 noundef 0) #11, !dbg !5363
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr41) #10, !dbg !5360
  call void @llvm.lifetime.end.p0(i64 1, ptr %__x40) #10, !dbg !5360
  br label %do.cond43, !dbg !5361

do.cond43:                                        ; preds = %asm.fallthrough42
  br label %do.end44, !dbg !5361

do.end44:                                         ; preds = %do.cond43
  %40 = load ptr, ptr %dst.addr, align 8, !dbg !5360
  %add.ptr45 = getelementptr i8, ptr %40, i64 1, !dbg !5360
  store ptr %add.ptr45, ptr %dst.addr, align 8, !dbg !5360
  %41 = load ptr, ptr %src.addr, align 8, !dbg !5360
  %add.ptr46 = getelementptr i8, ptr %41, i64 1, !dbg !5360
  store ptr %add.ptr46, ptr %src.addr, align 8, !dbg !5360
  %42 = load i64, ptr %size.addr, align 8, !dbg !5360
  %sub47 = sub i64 %42, 1, !dbg !5360
  store i64 %sub47, ptr %size.addr, align 8, !dbg !5360
  br label %while.cond36, !dbg !5359, !llvm.loop !5365

while.end48:                                      ; preds = %while.cond36
  call void @pagefault_enable() #11, !dbg !5366
  store i64 0, ptr %retval, align 8, !dbg !5367
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5367

Efault:                                           ; preds = %do.body39, %do.body25, %do.body8, %do.body
  call void @llvm.dbg.label(metadata !5322), !dbg !5368
  call void @pagefault_enable() #11, !dbg !5369
  store i64 -14, ptr %retval, align 8, !dbg !5370
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5370

cleanup:                                          ; preds = %Efault, %while.end48
  call void @llvm.lifetime.end.p0(i64 8, ptr %align) #10, !dbg !5371
  %43 = load i64, ptr %retval, align 8, !dbg !5371
  ret i64 %43, !dbg !5371
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kmsan_copy_to_user(ptr noundef %to, ptr noundef %from, i64 noundef %to_copy, i64 noundef %left) #3 align 16 !dbg !5372 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %to_copy.addr = alloca i64, align 8
  %left.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !5376, metadata !DIExpression()), !dbg !5380
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !5377, metadata !DIExpression()), !dbg !5381
  store i64 %to_copy, ptr %to_copy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to_copy.addr, metadata !5378, metadata !DIExpression()), !dbg !5382
  store i64 %left, ptr %left.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %left.addr, metadata !5379, metadata !DIExpression()), !dbg !5383
  ret void, !dbg !5384
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @strncpy_from_kernel_nofault(ptr noundef %dst, ptr noundef %unsafe_addr, i64 noundef %count) #0 align 16 !dbg !5385 {
entry:
  %retval = alloca i64, align 8
  %dst.addr = alloca ptr, align 8
  %unsafe_addr.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %src = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %x_u8__ = alloca i8, align 1
  %__tmp = alloca i64, align 8
  %tmp = alloca i8, align 1
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !5389, metadata !DIExpression()), !dbg !5399
  store ptr %unsafe_addr, ptr %unsafe_addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %unsafe_addr.addr, metadata !5390, metadata !DIExpression()), !dbg !5400
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5391, metadata !DIExpression()), !dbg !5401
  call void @llvm.lifetime.start.p0(i64 8, ptr %src) #10, !dbg !5402
  call void @llvm.dbg.declare(metadata ptr %src, metadata !5392, metadata !DIExpression()), !dbg !5403
  %0 = load ptr, ptr %unsafe_addr.addr, align 8, !dbg !5404
  store ptr %0, ptr %src, align 8, !dbg !5403
  %1 = load i64, ptr %count.addr, align 8, !dbg !5405
  %cmp = icmp sle i64 %1, 0, !dbg !5405
  %lnot = xor i1 %cmp, true, !dbg !5405
  %lnot1 = xor i1 %lnot, true, !dbg !5405
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5405
  %conv = sext i32 %lnot.ext to i64, !dbg !5405
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5405
  %tobool = icmp ne i64 %expval, 0, !dbg !5405
  br i1 %tobool, label %if.then, label %if.end, !dbg !5407

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !5408
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5408

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %unsafe_addr.addr, align 8, !dbg !5409
  %3 = load i64, ptr %count.addr, align 8, !dbg !5411
  %call = call zeroext i1 @copy_from_kernel_nofault_allowed(ptr noundef %2, i64 noundef %3) #11, !dbg !5412
  br i1 %call, label %if.end3, label %if.then2, !dbg !5413

if.then2:                                         ; preds = %if.end
  store i64 -34, ptr %retval, align 8, !dbg !5414
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5414

if.end3:                                          ; preds = %if.end
  call void @pagefault_disable() #11, !dbg !5415
  br label %do.body, !dbg !5416

do.body:                                          ; preds = %land.end, %if.end3
  br label %do.body4, !dbg !5417

do.body4:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 1, ptr %x_u8__) #10, !dbg !5418
  call void @llvm.dbg.declare(metadata ptr %x_u8__, metadata !5393, metadata !DIExpression()), !dbg !5418
  %4 = load ptr, ptr %src, align 8, !dbg !5418
  %5 = callbr i8 asm sideeffect "\0A1:\09movb $1,$0\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "=q,*m,!i,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(%struct.__large_struct) %4) #10
          to label %asm.fallthrough [label %Efault.split], !dbg !5418, !srcloc !5419

asm.fallthrough:                                  ; preds = %do.body4
  store i8 %5, ptr %x_u8__, align 1, !dbg !5418
  %6 = load i8, ptr %x_u8__, align 1, !dbg !5418
  %7 = load ptr, ptr %dst.addr, align 8, !dbg !5418
  store i8 %6, ptr %7, align 1, !dbg !5418
  call void @llvm.lifetime.end.p0(i64 1, ptr %x_u8__) #10, !dbg !5418
  call void @llvm.lifetime.start.p0(i64 8, ptr %__tmp) #10, !dbg !5420
  call void @llvm.dbg.declare(metadata ptr %__tmp, metadata !5396, metadata !DIExpression()), !dbg !5420
  %8 = load ptr, ptr %dst.addr, align 8, !dbg !5420
  %9 = load i8, ptr %8, align 1, !dbg !5420
  %conv5 = zext i8 %9 to i64, !dbg !5420
  store i64 %conv5, ptr %__tmp, align 8, !dbg !5420
  call void @kmsan_unpoison_memory(ptr noundef %__tmp, i64 noundef 8) #11, !dbg !5420
  %10 = load i64, ptr %__tmp, align 8, !dbg !5420
  %conv6 = trunc i64 %10 to i8, !dbg !5420
  %11 = load ptr, ptr %dst.addr, align 8, !dbg !5420
  store i8 %conv6, ptr %11, align 1, !dbg !5420
  store i8 %conv6, ptr %tmp, align 1, !dbg !5420
  call void @llvm.lifetime.end.p0(i64 8, ptr %__tmp) #10, !dbg !5418
  %12 = load i8, ptr %tmp, align 1, !dbg !5420
  br label %do.cond, !dbg !5418

do.cond:                                          ; preds = %asm.fallthrough
  br label %do.end, !dbg !5418

do.end:                                           ; preds = %do.cond
  %13 = load ptr, ptr %dst.addr, align 8, !dbg !5421
  %incdec.ptr = getelementptr i8, ptr %13, i32 1, !dbg !5421
  store ptr %incdec.ptr, ptr %dst.addr, align 8, !dbg !5421
  %14 = load ptr, ptr %src, align 8, !dbg !5422
  %incdec.ptr7 = getelementptr i8, ptr %14, i32 1, !dbg !5422
  store ptr %incdec.ptr7, ptr %src, align 8, !dbg !5422
  br label %do.cond8, !dbg !5423

do.cond8:                                         ; preds = %do.end
  %15 = load ptr, ptr %dst.addr, align 8, !dbg !5424
  %arrayidx = getelementptr i8, ptr %15, i64 -1, !dbg !5424
  %16 = load i8, ptr %arrayidx, align 1, !dbg !5424
  %conv9 = zext i8 %16 to i32, !dbg !5424
  %tobool10 = icmp ne i32 %conv9, 0, !dbg !5424
  br i1 %tobool10, label %land.rhs, label %land.end, !dbg !5425

land.rhs:                                         ; preds = %do.cond8
  %17 = load ptr, ptr %src, align 8, !dbg !5426
  %18 = load ptr, ptr %unsafe_addr.addr, align 8, !dbg !5427
  %sub.ptr.lhs.cast = ptrtoint ptr %17 to i64, !dbg !5428
  %sub.ptr.rhs.cast = ptrtoint ptr %18 to i64, !dbg !5428
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !5428
  %19 = load i64, ptr %count.addr, align 8, !dbg !5429
  %cmp11 = icmp slt i64 %sub.ptr.sub, %19, !dbg !5430
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond8
  %20 = phi i1 [ false, %do.cond8 ], [ %cmp11, %land.rhs ], !dbg !5431
  br i1 %20, label %do.body, label %do.end13, !dbg !5423, !llvm.loop !5432

do.end13:                                         ; preds = %land.end
  call void @pagefault_enable() #11, !dbg !5434
  %21 = load ptr, ptr %dst.addr, align 8, !dbg !5435
  %arrayidx14 = getelementptr i8, ptr %21, i64 -1, !dbg !5435
  store i8 0, ptr %arrayidx14, align 1, !dbg !5436
  %22 = load ptr, ptr %src, align 8, !dbg !5437
  %23 = load ptr, ptr %unsafe_addr.addr, align 8, !dbg !5438
  %sub.ptr.lhs.cast15 = ptrtoint ptr %22 to i64, !dbg !5439
  %sub.ptr.rhs.cast16 = ptrtoint ptr %23 to i64, !dbg !5439
  %sub.ptr.sub17 = sub i64 %sub.ptr.lhs.cast15, %sub.ptr.rhs.cast16, !dbg !5439
  store i64 %sub.ptr.sub17, ptr %retval, align 8, !dbg !5440
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5440

Efault.split:                                     ; preds = %do.body4
  store i8 %5, ptr %x_u8__, align 1, !dbg !5418
  br label %Efault, !dbg !5418

Efault:                                           ; preds = %Efault.split
  call void @llvm.dbg.label(metadata !5398), !dbg !5441
  call void @pagefault_enable() #11, !dbg !5442
  %24 = load ptr, ptr %dst.addr, align 8, !dbg !5443
  %arrayidx18 = getelementptr i8, ptr %24, i64 0, !dbg !5443
  store i8 0, ptr %arrayidx18, align 1, !dbg !5444
  store i64 -14, ptr %retval, align 8, !dbg !5445
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5445

cleanup:                                          ; preds = %Efault, %do.end13, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %src) #10, !dbg !5446
  %25 = load i64, ptr %retval, align 8, !dbg !5446
  ret i64 %25, !dbg !5446
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @copy_from_user_nofault(ptr noundef %dst, ptr noundef %src, i64 noundef %size) #0 align 16 !dbg !5447 {
entry:
  %retval = alloca i64, align 8
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %ret = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !5449, metadata !DIExpression()), !dbg !5453
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !5450, metadata !DIExpression()), !dbg !5454
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5451, metadata !DIExpression()), !dbg !5455
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #10, !dbg !5456
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5452, metadata !DIExpression()), !dbg !5457
  store i64 -14, ptr %ret, align 8, !dbg !5457
  %0 = load ptr, ptr %src.addr, align 8, !dbg !5458
  %1 = load i64, ptr %size.addr, align 8, !dbg !5460
  %call = call zeroext i1 @__access_ok(ptr noundef %0, i64 noundef %1) #11, !dbg !5461
  br i1 %call, label %if.end, label %if.then, !dbg !5462

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %ret, align 8, !dbg !5463
  store i64 %2, ptr %retval, align 8, !dbg !5464
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5464

if.end:                                           ; preds = %entry
  %call1 = call zeroext i1 @nmi_uaccess_okay() #11, !dbg !5465
  br i1 %call1, label %if.end3, label %if.then2, !dbg !5467

if.then2:                                         ; preds = %if.end
  %3 = load i64, ptr %ret, align 8, !dbg !5468
  store i64 %3, ptr %retval, align 8, !dbg !5469
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5469

if.end3:                                          ; preds = %if.end
  call void @pagefault_disable() #11, !dbg !5470
  %4 = load ptr, ptr %dst.addr, align 8, !dbg !5471
  %5 = load ptr, ptr %src.addr, align 8, !dbg !5472
  %6 = load i64, ptr %size.addr, align 8, !dbg !5473
  %call4 = call i64 @__copy_from_user_inatomic(ptr noundef %4, ptr noundef %5, i64 noundef %6) #11, !dbg !5474
  store i64 %call4, ptr %ret, align 8, !dbg !5475
  call void @pagefault_enable() #11, !dbg !5476
  %7 = load i64, ptr %ret, align 8, !dbg !5477
  %tobool = icmp ne i64 %7, 0, !dbg !5477
  br i1 %tobool, label %if.then5, label %if.end6, !dbg !5479

if.then5:                                         ; preds = %if.end3
  store i64 -14, ptr %retval, align 8, !dbg !5480
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5480

if.end6:                                          ; preds = %if.end3
  store i64 0, ptr %retval, align 8, !dbg !5481
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5481

cleanup:                                          ; preds = %if.end6, %if.then5, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #10, !dbg !5482
  %8 = load i64, ptr %retval, align 8, !dbg !5482
  ret i64 %8, !dbg !5482
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__access_ok(ptr noundef %ptr, i64 noundef %size) #3 align 16 !dbg !5483 {
entry:
  %retval = alloca i1, align 1
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %sum = alloca i64, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5488, metadata !DIExpression()), !dbg !5493
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5489, metadata !DIExpression()), !dbg !5494
  %0 = load i64, ptr %size.addr, align 8, !dbg !5495
  %cmp = icmp ule i64 %0, 4096, !dbg !5496
  %conv = zext i1 %cmp to i32, !dbg !5496
  %1 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !5497
  br i1 %1, label %land.lhs.true, label %if.else, !dbg !5498

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5499
  %cmp1 = icmp ule i64 %2, 4096, !dbg !5500
  br i1 %cmp1, label %if.then, label %if.else, !dbg !5501

if.then:                                          ; preds = %land.lhs.true
  %3 = load ptr, ptr %ptr.addr, align 8, !dbg !5502
  %4 = ptrtoint ptr %3 to i64, !dbg !5502
  %cmp3 = icmp sge i64 %4, 0, !dbg !5502
  store i1 %cmp3, ptr %retval, align 1, !dbg !5504
  br label %return, !dbg !5504

if.else:                                          ; preds = %land.lhs.true, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %sum) #10, !dbg !5505
  call void @llvm.dbg.declare(metadata ptr %sum, metadata !5490, metadata !DIExpression()), !dbg !5506
  %5 = load i64, ptr %size.addr, align 8, !dbg !5507
  %6 = load ptr, ptr %ptr.addr, align 8, !dbg !5508
  %7 = ptrtoint ptr %6 to i64, !dbg !5509
  %add = add i64 %5, %7, !dbg !5510
  store i64 %add, ptr %sum, align 8, !dbg !5506
  %8 = load i64, ptr %sum, align 8, !dbg !5511
  %cmp5 = icmp sge i64 %8, 0, !dbg !5511
  br i1 %cmp5, label %land.rhs, label %land.end, !dbg !5512

land.rhs:                                         ; preds = %if.else
  %9 = load i64, ptr %sum, align 8, !dbg !5513
  %10 = load ptr, ptr %ptr.addr, align 8, !dbg !5514
  %11 = ptrtoint ptr %10 to i64, !dbg !5515
  %cmp7 = icmp uge i64 %9, %11, !dbg !5516
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.else
  %12 = phi i1 [ false, %if.else ], [ %cmp7, %land.rhs ], !dbg !5517
  store i1 %12, ptr %retval, align 1, !dbg !5518
  call void @llvm.lifetime.end.p0(i64 8, ptr %sum) #10, !dbg !5519
  br label %return

return:                                           ; preds = %land.end, %if.then
  %13 = load i1, ptr %retval, align 1, !dbg !5520
  ret i1 %13, !dbg !5520
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5521 dso_local zeroext i1 @nmi_uaccess_okay() #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__copy_from_user_inatomic(ptr noundef %to, ptr noundef %from, i64 noundef %n) #6 align 16 !dbg !5523 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %res = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !5527, metadata !DIExpression()), !dbg !5531
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !5528, metadata !DIExpression()), !dbg !5532
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5529, metadata !DIExpression()), !dbg !5533
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #10, !dbg !5534
  call void @llvm.dbg.declare(metadata ptr %res, metadata !5530, metadata !DIExpression()), !dbg !5535
  %0 = load ptr, ptr %to.addr, align 8, !dbg !5536
  %1 = load ptr, ptr %from.addr, align 8, !dbg !5537
  %2 = load i64, ptr %n.addr, align 8, !dbg !5538
  call void @instrument_copy_from_user_before(ptr noundef %0, ptr noundef %1, i64 noundef %2) #11, !dbg !5539
  %3 = load ptr, ptr %to.addr, align 8, !dbg !5540
  %4 = load i64, ptr %n.addr, align 8, !dbg !5541
  call void @check_object_size(ptr noundef %3, i64 noundef %4, i1 noundef zeroext false) #11, !dbg !5542
  %5 = load ptr, ptr %to.addr, align 8, !dbg !5543
  %6 = load ptr, ptr %from.addr, align 8, !dbg !5544
  %7 = load i64, ptr %n.addr, align 8, !dbg !5545
  %call = call i64 @raw_copy_from_user(ptr noundef %5, ptr noundef %6, i64 noundef %7) #11, !dbg !5546
  store i64 %call, ptr %res, align 8, !dbg !5547
  %8 = load ptr, ptr %to.addr, align 8, !dbg !5548
  %9 = load ptr, ptr %from.addr, align 8, !dbg !5549
  %10 = load i64, ptr %n.addr, align 8, !dbg !5550
  %11 = load i64, ptr %res, align 8, !dbg !5551
  call void @instrument_copy_from_user_after(ptr noundef %8, ptr noundef %9, i64 noundef %10, i64 noundef %11) #11, !dbg !5552
  %12 = load i64, ptr %res, align 8, !dbg !5553
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #10, !dbg !5554
  ret i64 %12, !dbg !5555
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @copy_to_user_nofault(ptr noundef %dst, ptr noundef %src, i64 noundef %size) #0 align 16 !dbg !5556 {
entry:
  %retval = alloca i64, align 8
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %ret = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !5558, metadata !DIExpression()), !dbg !5562
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !5559, metadata !DIExpression()), !dbg !5563
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5560, metadata !DIExpression()), !dbg !5564
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #10, !dbg !5565
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5561, metadata !DIExpression()), !dbg !5566
  store i64 -14, ptr %ret, align 8, !dbg !5566
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !5567
  %1 = load i64, ptr %size.addr, align 8, !dbg !5567
  %call = call zeroext i1 @__access_ok(ptr noundef %0, i64 noundef %1) #11, !dbg !5567
  %lnot = xor i1 %call, true, !dbg !5567
  %lnot1 = xor i1 %lnot, true, !dbg !5567
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5567
  %conv = sext i32 %lnot.ext to i64, !dbg !5567
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !5567
  %tobool = icmp ne i64 %expval, 0, !dbg !5567
  br i1 %tobool, label %if.then, label %if.end, !dbg !5569

if.then:                                          ; preds = %entry
  call void @pagefault_disable() #11, !dbg !5570
  %2 = load ptr, ptr %dst.addr, align 8, !dbg !5572
  %3 = load ptr, ptr %src.addr, align 8, !dbg !5573
  %4 = load i64, ptr %size.addr, align 8, !dbg !5574
  %call2 = call i64 @__copy_to_user_inatomic(ptr noundef %2, ptr noundef %3, i64 noundef %4) #11, !dbg !5575
  store i64 %call2, ptr %ret, align 8, !dbg !5576
  call void @pagefault_enable() #11, !dbg !5577
  br label %if.end, !dbg !5578

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %ret, align 8, !dbg !5579
  %tobool3 = icmp ne i64 %5, 0, !dbg !5579
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5581

if.then4:                                         ; preds = %if.end
  store i64 -14, ptr %retval, align 8, !dbg !5582
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5582

if.end5:                                          ; preds = %if.end
  store i64 0, ptr %retval, align 8, !dbg !5583
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5583

cleanup:                                          ; preds = %if.end5, %if.then4
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #10, !dbg !5584
  %6 = load i64, ptr %retval, align 8, !dbg !5584
  ret i64 %6, !dbg !5584
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__copy_to_user_inatomic(ptr noundef %to, ptr noundef %from, i64 noundef %n) #6 align 16 !dbg !5585 {
entry:
  %retval = alloca i64, align 8
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !5587, metadata !DIExpression()), !dbg !5590
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !5588, metadata !DIExpression()), !dbg !5591
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5589, metadata !DIExpression()), !dbg !5592
  %call = call zeroext i1 @should_fail_usercopy() #11, !dbg !5593
  br i1 %call, label %if.then, label %if.end, !dbg !5595

if.then:                                          ; preds = %entry
  %0 = load i64, ptr %n.addr, align 8, !dbg !5596
  store i64 %0, ptr %retval, align 8, !dbg !5597
  br label %return, !dbg !5597

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %to.addr, align 8, !dbg !5598
  %2 = load ptr, ptr %from.addr, align 8, !dbg !5599
  %3 = load i64, ptr %n.addr, align 8, !dbg !5600
  call void @instrument_copy_to_user(ptr noundef %1, ptr noundef %2, i64 noundef %3) #11, !dbg !5601
  %4 = load ptr, ptr %from.addr, align 8, !dbg !5602
  %5 = load i64, ptr %n.addr, align 8, !dbg !5603
  call void @check_object_size(ptr noundef %4, i64 noundef %5, i1 noundef zeroext true) #11, !dbg !5604
  %6 = load ptr, ptr %to.addr, align 8, !dbg !5605
  %7 = load ptr, ptr %from.addr, align 8, !dbg !5606
  %8 = load i64, ptr %n.addr, align 8, !dbg !5607
  %call1 = call i64 @raw_copy_to_user(ptr noundef %6, ptr noundef %7, i64 noundef %8) #11, !dbg !5608
  store i64 %call1, ptr %retval, align 8, !dbg !5609
  br label %return, !dbg !5609

return:                                           ; preds = %if.end, %if.then
  %9 = load i64, ptr %retval, align 8, !dbg !5610
  ret i64 %9, !dbg !5610
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @strncpy_from_user_nofault(ptr noundef %dst, ptr noundef %unsafe_addr, i64 noundef %count) #0 align 16 !dbg !5611 {
entry:
  %retval = alloca i64, align 8
  %dst.addr = alloca ptr, align 8
  %unsafe_addr.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %ret = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !5613, metadata !DIExpression()), !dbg !5617
  store ptr %unsafe_addr, ptr %unsafe_addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %unsafe_addr.addr, metadata !5614, metadata !DIExpression()), !dbg !5618
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5615, metadata !DIExpression()), !dbg !5619
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #10, !dbg !5620
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5616, metadata !DIExpression()), !dbg !5621
  %0 = load i64, ptr %count.addr, align 8, !dbg !5622
  %cmp = icmp sle i64 %0, 0, !dbg !5622
  %lnot = xor i1 %cmp, true, !dbg !5622
  %lnot1 = xor i1 %lnot, true, !dbg !5622
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5622
  %conv = sext i32 %lnot.ext to i64, !dbg !5622
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5622
  %tobool = icmp ne i64 %expval, 0, !dbg !5622
  br i1 %tobool, label %if.then, label %if.end, !dbg !5624

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !5625
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5625

if.end:                                           ; preds = %entry
  call void @pagefault_disable() #11, !dbg !5626
  %1 = load ptr, ptr %dst.addr, align 8, !dbg !5627
  %2 = load ptr, ptr %unsafe_addr.addr, align 8, !dbg !5628
  %3 = load i64, ptr %count.addr, align 8, !dbg !5629
  %call = call i64 @strncpy_from_user(ptr noundef %1, ptr noundef %2, i64 noundef %3) #11, !dbg !5630
  store i64 %call, ptr %ret, align 8, !dbg !5631
  call void @pagefault_enable() #11, !dbg !5632
  %4 = load i64, ptr %ret, align 8, !dbg !5633
  %5 = load i64, ptr %count.addr, align 8, !dbg !5635
  %cmp2 = icmp sge i64 %4, %5, !dbg !5636
  br i1 %cmp2, label %if.then4, label %if.else, !dbg !5637

if.then4:                                         ; preds = %if.end
  %6 = load i64, ptr %count.addr, align 8, !dbg !5638
  store i64 %6, ptr %ret, align 8, !dbg !5640
  %7 = load ptr, ptr %dst.addr, align 8, !dbg !5641
  %8 = load i64, ptr %ret, align 8, !dbg !5642
  %sub = sub i64 %8, 1, !dbg !5643
  %arrayidx = getelementptr i8, ptr %7, i64 %sub, !dbg !5641
  store i8 0, ptr %arrayidx, align 1, !dbg !5644
  br label %if.end9, !dbg !5645

if.else:                                          ; preds = %if.end
  %9 = load i64, ptr %ret, align 8, !dbg !5646
  %cmp5 = icmp sgt i64 %9, 0, !dbg !5648
  br i1 %cmp5, label %if.then7, label %if.end8, !dbg !5649

if.then7:                                         ; preds = %if.else
  %10 = load i64, ptr %ret, align 8, !dbg !5650
  %inc = add i64 %10, 1, !dbg !5650
  store i64 %inc, ptr %ret, align 8, !dbg !5650
  br label %if.end8, !dbg !5652

if.end8:                                          ; preds = %if.then7, %if.else
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %if.then4
  %11 = load i64, ptr %ret, align 8, !dbg !5653
  store i64 %11, ptr %retval, align 8, !dbg !5654
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5654

cleanup:                                          ; preds = %if.end9, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #10, !dbg !5655
  %12 = load i64, ptr %retval, align 8, !dbg !5655
  ret i64 %12, !dbg !5655
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5656 dso_local i64 @strncpy_from_user(ptr noundef, ptr noundef, i64 noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @strnlen_user_nofault(ptr noundef %unsafe_addr, i64 noundef %count) #0 align 16 !dbg !5659 {
entry:
  %unsafe_addr.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  store ptr %unsafe_addr, ptr %unsafe_addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %unsafe_addr.addr, metadata !5663, metadata !DIExpression()), !dbg !5666
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5664, metadata !DIExpression()), !dbg !5667
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !5668
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5665, metadata !DIExpression()), !dbg !5669
  call void @pagefault_disable() #11, !dbg !5670
  %0 = load ptr, ptr %unsafe_addr.addr, align 8, !dbg !5671
  %1 = load i64, ptr %count.addr, align 8, !dbg !5672
  %call = call i64 @strnlen_user(ptr noundef %0, i64 noundef %1) #11, !dbg !5673
  %conv = trunc i64 %call to i32, !dbg !5673
  store i32 %conv, ptr %ret, align 4, !dbg !5674
  call void @pagefault_enable() #11, !dbg !5675
  %2 = load i32, ptr %ret, align 4, !dbg !5676
  %conv1 = sext i32 %2 to i64, !dbg !5676
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !5677
  ret i64 %conv1, !dbg !5678
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5679 dso_local i64 @strnlen_user(ptr noundef, i64 noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__copy_overflow(i32 noundef %size, i64 noundef %count) #0 align 16 !dbg !5682 {
entry:
  %size.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5686, metadata !DIExpression()), !dbg !5694
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5687, metadata !DIExpression()), !dbg !5695
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !5696
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5688, metadata !DIExpression()), !dbg !5696
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !5696
  %0 = load i32, ptr %__ret_warn_on, align 4, !dbg !5697
  %tobool = icmp ne i32 %0, 0, !dbg !5697
  %lnot = xor i1 %tobool, true, !dbg !5697
  %lnot1 = xor i1 %lnot, true, !dbg !5697
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5697
  %conv = sext i32 %lnot.ext to i64, !dbg !5697
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5697
  %tobool2 = icmp ne i64 %expval, 0, !dbg !5697
  br i1 %tobool2, label %if.then, label %if.end, !dbg !5696

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5697

do.body:                                          ; preds = %if.then
  br label %do.body3, !dbg !5698

do.body3:                                         ; preds = %do.body
  br label %do.cond, !dbg !5699

do.cond:                                          ; preds = %do.body3
  br label %do.end, !dbg !5699

do.end:                                           ; preds = %do.cond
  %1 = load i32, ptr %size.addr, align 4, !dbg !5698
  %2 = load i64, ptr %count.addr, align 8, !dbg !5698
  call void (ptr, ...) @__warn_printk(ptr noundef @.str, i32 noundef %1, i64 noundef %2) #11, !dbg !5698
  br label %do.body4, !dbg !5698

do.body4:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #10, !dbg !5701
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5690, metadata !DIExpression()), !dbg !5701
  store i32 2313, ptr %__flags, align 4, !dbg !5701
  br label %do.body5, !dbg !5701

do.body5:                                         ; preds = %do.body4
  br label %do.cond6, !dbg !5702

do.cond6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !5702

do.end7:                                          ; preds = %do.cond6
  br label %do.body8, !dbg !5701

do.body8:                                         ; preds = %do.end7
  %3 = load i32, ptr %__flags, align 4, !dbg !5704
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 228, i32 %3, i64 12) #10, !dbg !5704, !srcloc !5706
  br label %do.cond9, !dbg !5704

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !5704

do.end10:                                         ; preds = %do.cond9
  br label %do.body11, !dbg !5701

do.body11:                                        ; preds = %do.end10
  br label %do.cond12, !dbg !5707

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !5707

do.end13:                                         ; preds = %do.cond12
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #10, !dbg !5698
  br label %do.cond14, !dbg !5701

do.cond14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !5701

do.end15:                                         ; preds = %do.cond14
  br label %do.body16, !dbg !5698

do.body16:                                        ; preds = %do.end15
  br label %do.cond17, !dbg !5709

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !5709

do.end18:                                         ; preds = %do.cond17
  br label %do.cond19, !dbg !5698

do.cond19:                                        ; preds = %do.end18
  br label %do.end20, !dbg !5698

do.end20:                                         ; preds = %do.cond19
  br label %if.end, !dbg !5698

if.end:                                           ; preds = %do.end20, %entry
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !5696
  %tobool21 = icmp ne i32 %4, 0, !dbg !5696
  %lnot22 = xor i1 %tobool21, true, !dbg !5696
  %lnot24 = xor i1 %lnot22, true, !dbg !5696
  %lnot.ext25 = zext i1 %lnot24 to i32, !dbg !5696
  %conv26 = sext i32 %lnot.ext25 to i64, !dbg !5696
  %expval27 = call i64 @llvm.expect.i64(i64 %conv26, i64 0), !dbg !5696
  store i64 %expval27, ptr %tmp, align 8, !dbg !5697
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !5711
  %5 = load i64, ptr %tmp, align 8, !dbg !5696
  ret void, !dbg !5712
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5713 dso_local void @__warn_printk(ptr noundef, ...) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pagefault_disabled_inc() #6 align 16 !dbg !5716 {
entry:
  %call = call ptr @get_current() #11, !dbg !5717
  %pagefault_disabled = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 181, !dbg !5718
  %0 = load i32, ptr %pagefault_disabled, align 4, !dbg !5719
  %inc = add i32 %0, 1, !dbg !5719
  store i32 %inc, ptr %pagefault_disabled, align 4, !dbg !5719
  ret void, !dbg !5720
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #6 align 16 !dbg !5721 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #10, !dbg !5732
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !5726, metadata !DIExpression()), !dbg !5732
  br label %do.body, !dbg !5732

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #10, !dbg !5733
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5728, metadata !DIExpression()), !dbg !5733
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5733
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !5733
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #10, !dbg !5732
  br label %do.cond, !dbg !5733

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5733

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #10, !dbg !5734
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !5730, metadata !DIExpression()), !dbg !5734
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #12, !dbg !5734, !srcloc !5735
  store i64 %1, ptr %pfo_val__, align 8, !dbg !5734
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !5734
  %3 = inttoptr i64 %2 to ptr, !dbg !5734
  store ptr %3, ptr %tmp, align 8, !dbg !5734
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #10, !dbg !5732
  %4 = load ptr, ptr %tmp, align 8, !dbg !5734
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !5732
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !5732
  store ptr %5, ptr %tmp1, align 8, !dbg !5732
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #10, !dbg !5736
  %6 = load ptr, ptr %tmp1, align 8, !dbg !5732
  ret ptr %6, !dbg !5737
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pagefault_disabled_dec() #6 align 16 !dbg !5738 {
entry:
  %call = call ptr @get_current() #11, !dbg !5739
  %pagefault_disabled = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 181, !dbg !5740
  %0 = load i32, ptr %pagefault_disabled, align 4, !dbg !5741
  %dec = add i32 %0, -1, !dbg !5741
  store i32 %dec, ptr %pagefault_disabled, align 4, !dbg !5741
  ret void, !dbg !5742
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_copy_from_user_before(ptr noundef %to, ptr noundef %from, i64 noundef %n) #6 align 16 !dbg !5743 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !5748, metadata !DIExpression()), !dbg !5751
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !5749, metadata !DIExpression()), !dbg !5752
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5750, metadata !DIExpression()), !dbg !5753
  %0 = load ptr, ptr %to.addr, align 8, !dbg !5754
  %1 = load i64, ptr %n.addr, align 8, !dbg !5755
  %conv = trunc i64 %1 to i32, !dbg !5755
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #11, !dbg !5756
  %2 = load ptr, ptr %to.addr, align 8, !dbg !5757
  %3 = load i64, ptr %n.addr, align 8, !dbg !5757
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 1) #11, !dbg !5757
  ret void, !dbg !5758
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @check_object_size(ptr noundef %ptr, i64 noundef %n, i1 noundef zeroext %to_user) #3 align 16 !dbg !5759 {
entry:
  %ptr.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5764, metadata !DIExpression()), !dbg !5767
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5765, metadata !DIExpression()), !dbg !5768
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, ptr %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %to_user.addr, metadata !5766, metadata !DIExpression()), !dbg !5769
  ret void, !dbg !5770
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_copy_from_user(ptr noundef %dst, ptr noundef %src, i64 noundef %size) #6 align 16 !dbg !5771 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !5773, metadata !DIExpression()), !dbg !5776
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !5774, metadata !DIExpression()), !dbg !5777
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5775, metadata !DIExpression()), !dbg !5778
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !5779
  %1 = load ptr, ptr %src.addr, align 8, !dbg !5780
  %2 = load i64, ptr %size.addr, align 8, !dbg !5781
  %call = call i64 @copy_user_generic(ptr noundef %0, ptr noundef %1, i64 noundef %2) #11, !dbg !5782
  ret i64 %call, !dbg !5783
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_copy_from_user_after(ptr noundef %to, ptr noundef %from, i64 noundef %n, i64 noundef %left) #6 align 16 !dbg !5784 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %left.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !5788, metadata !DIExpression()), !dbg !5792
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !5789, metadata !DIExpression()), !dbg !5793
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5790, metadata !DIExpression()), !dbg !5794
  store i64 %left, ptr %left.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %left.addr, metadata !5791, metadata !DIExpression()), !dbg !5795
  %0 = load ptr, ptr %to.addr, align 8, !dbg !5796
  %1 = load i64, ptr %n.addr, align 8, !dbg !5797
  %2 = load i64, ptr %left.addr, align 8, !dbg !5798
  %sub = sub i64 %1, %2, !dbg !5799
  call void @kmsan_unpoison_memory(ptr noundef %0, i64 noundef %sub) #11, !dbg !5800
  ret void, !dbg !5801
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !5802 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5810, metadata !DIExpression()), !dbg !5812
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5811, metadata !DIExpression()), !dbg !5813
  ret i1 true, !dbg !5814
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !5815 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5820, metadata !DIExpression()), !dbg !5823
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5821, metadata !DIExpression()), !dbg !5824
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5822, metadata !DIExpression()), !dbg !5825
  ret void, !dbg !5826
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_user_generic(ptr noundef %to, ptr noundef %from, i64 noundef %len) #6 align 16 !dbg !5827 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !5829, metadata !DIExpression()), !dbg !5832
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !5830, metadata !DIExpression()), !dbg !5833
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !5831, metadata !DIExpression()), !dbg !5834
  call void @stac() #11, !dbg !5835
  %0 = load i64, ptr %len.addr, align 8, !dbg !5836
  %1 = load ptr, ptr %to.addr, align 8, !dbg !5836
  %2 = load ptr, ptr %from.addr, align 8, !dbg !5836
  %3 = call i64 @llvm.read_register.i64(metadata !5175), !dbg !5836
  %4 = call { i64, ptr, ptr, i64 } asm sideeffect "1:\0A\09# ALT: oldnstr\0A661:\0A\09rep movsb\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte (((1 << 0) << 16) $| ((18*32+ 4)))\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09call rep_movs_alternative\0A6651:\0A.popsection\0A2:\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 3 \0A .popsection\0A", "={cx},={di},={si},={rsp},0,1,2,{rsp},~{memory},~{rax},~{dirflag},~{fpsr},~{flags}"(i64 %0, ptr %1, ptr %2, i64 %3) #10, !dbg !5836, !srcloc !5837
  %asmresult = extractvalue { i64, ptr, ptr, i64 } %4, 0, !dbg !5836
  %asmresult1 = extractvalue { i64, ptr, ptr, i64 } %4, 1, !dbg !5836
  %asmresult2 = extractvalue { i64, ptr, ptr, i64 } %4, 2, !dbg !5836
  %asmresult3 = extractvalue { i64, ptr, ptr, i64 } %4, 3, !dbg !5836
  store i64 %asmresult, ptr %len.addr, align 8, !dbg !5836
  store ptr %asmresult1, ptr %to.addr, align 8, !dbg !5836
  store ptr %asmresult2, ptr %from.addr, align 8, !dbg !5836
  call void @llvm.write_register.i64(metadata !5175, i64 %asmresult3), !dbg !5836
  call void @clac() #11, !dbg !5838
  %5 = load i64, ptr %len.addr, align 8, !dbg !5839
  ret i64 %5, !dbg !5840
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @stac() #6 align 16 !dbg !5841 {
entry:
  call void asm sideeffect "# ALT: oldnstr\0A661:\0A\09\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 9*32+20)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09.byte 0x0f,0x01,0xcb\0A6651:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !5843, !srcloc !5844
  ret void, !dbg !5845
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #8

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clac() #6 align 16 !dbg !5846 {
entry:
  call void asm sideeffect "# ALT: oldnstr\0A661:\0A\09\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 9*32+20)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09.byte 0x0f,0x01,0xca\0A6651:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !5847, !srcloc !5848
  ret void, !dbg !5849
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @should_fail_usercopy() #3 align 16 !dbg !5850 {
entry:
  ret i1 false, !dbg !5852
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_copy_to_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #6 align 16 !dbg !5853 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !5857, metadata !DIExpression()), !dbg !5860
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !5858, metadata !DIExpression()), !dbg !5861
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5859, metadata !DIExpression()), !dbg !5862
  %0 = load ptr, ptr %from.addr, align 8, !dbg !5863
  %1 = load i64, ptr %n.addr, align 8, !dbg !5864
  %conv = trunc i64 %1 to i32, !dbg !5864
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #11, !dbg !5865
  %2 = load ptr, ptr %from.addr, align 8, !dbg !5866
  %3 = load i64, ptr %n.addr, align 8, !dbg !5866
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 0) #11, !dbg !5866
  %4 = load ptr, ptr %to.addr, align 8, !dbg !5867
  %5 = load ptr, ptr %from.addr, align 8, !dbg !5868
  %6 = load i64, ptr %n.addr, align 8, !dbg !5869
  call void @kmsan_copy_to_user(ptr noundef %4, ptr noundef %5, i64 noundef %6, i64 noundef 0) #11, !dbg !5870
  ret void, !dbg !5871
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_copy_to_user(ptr noundef %dst, ptr noundef %src, i64 noundef %size) #6 align 16 !dbg !5872 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !5874, metadata !DIExpression()), !dbg !5877
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !5875, metadata !DIExpression()), !dbg !5878
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5876, metadata !DIExpression()), !dbg !5879
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !5880
  %1 = load ptr, ptr %src.addr, align 8, !dbg !5881
  %2 = load i64, ptr %size.addr, align 8, !dbg !5882
  %call = call i64 @copy_user_generic(ptr noundef %0, ptr noundef %1, i64 noundef %2) #11, !dbg !5883
  ret i64 %call, !dbg !5884
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !5885 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5887, metadata !DIExpression()), !dbg !5889
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5888, metadata !DIExpression()), !dbg !5890
  ret i1 true, !dbg !5891
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #9 = { nocallback nounwind }
attributes #10 = { nounwind }
attributes #11 = { noredzone }
attributes #12 = { nounwind memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!5175}
!llvm.module.flags = !{!5176, !5177, !5178, !5179, !5180, !5181, !5182, !5183}
!llvm.ident = !{!5184}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_copy_from_kernel_nofault337", scope: !2, file: !3, line: 48, type: !33, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF mm/.maccess.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22mm/maccess\22 -D KBUILD_BASENAME=\22maccess\22 -D KBUILD_MODNAME=\22maccess\22 -D __KBUILD_MODNAME=kmod_maccess -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o mm/maccess.ll mm/maccess.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !258, globals: !5158, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "mm/maccess.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6891dd5a593d0e778ab794bd0a3d7543")
!4 = !{!5, !11, !16, !24, !120, !127, !135, !151, !156, !163, !169, !176, !184, !191, !197, !206, !211, !216, !222, !227, !233, !245, !251}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !12, line: 65, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!13 = !{!14, !15}
!14 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!15 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !17, line: 9, baseType: !7, size: 32, elements: !18)
!17 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!18 = !{!19, !20, !21, !22, !23}
!19 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!20 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!21 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!22 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!23 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !26, file: !25, line: 147, baseType: !7, size: 32, elements: !117)
!25 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !25, line: 135, size: 512, elements: !27)
!27 = !{!28, !32, !34, !36, !40, !41, !57, !115, !116}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !26, file: !25, line: 136, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!31 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !26, file: !25, line: 137, baseType: !33, size: 64, offset: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !26, file: !25, line: 138, baseType: !35, size: 32, offset: 128)
!35 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !26, file: !25, line: 139, baseType: !37, size: 16, offset: 160)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !38, line: 24, baseType: !39)
!38 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!39 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !26, file: !25, line: 150, baseType: !24, size: 32, offset: 192)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !26, file: !25, line: 151, baseType: !42, size: 64, offset: 256)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !25, line: 64, baseType: !44)
!44 = !DISubroutineType(types: !45)
!45 = !{!35, !46, !35, !33, !47, !53}
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !38, line: 61, baseType: !49)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !50, line: 72, baseType: !51)
!50 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !50, line: 16, baseType: !52)
!52 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !38, line: 52, baseType: !55)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !50, line: 88, baseType: !56)
!56 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !26, file: !25, line: 152, baseType: !58, size: 64, offset: 320)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !25, line: 117, size: 256, elements: !60)
!60 = !{!61, !66}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !59, file: !25, line: 118, baseType: !62, size: 32)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !38, line: 174, baseType: !63)
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !38, line: 172, size: 32, elements: !64)
!64 = !{!65}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !63, file: !38, line: 173, baseType: !35, size: 32)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !59, file: !25, line: 119, baseType: !67, size: 192, offset: 64)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !68, line: 41, baseType: !69)
!68 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !68, line: 37, size: 192, elements: !70)
!70 = !{!71, !109}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !69, file: !68, line: 38, baseType: !72, size: 32)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !73, line: 29, baseType: !74)
!73 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !73, line: 17, size: 32, elements: !75)
!75 = !{!76}
!76 = !DIDerivedType(tag: DW_TAG_member, scope: !74, file: !73, line: 18, baseType: !77, size: 32)
!77 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !74, file: !73, line: 18, size: 32, elements: !78)
!78 = !{!79}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !77, file: !73, line: 19, baseType: !80, size: 32)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !81, line: 14, size: 32, elements: !82)
!81 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!82 = !{!83}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !80, file: !81, line: 15, baseType: !84, size: 32)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !85, line: 44, baseType: !86)
!85 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !85, line: 14, size: 32, elements: !87)
!87 = !{!88}
!88 = !DIDerivedType(tag: DW_TAG_member, scope: !86, file: !85, line: 15, baseType: !89, size: 32)
!89 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !86, file: !85, line: 15, size: 32, elements: !90)
!90 = !{!91, !92, !102}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !89, file: !85, line: 16, baseType: !62, size: 32)
!92 = !DIDerivedType(tag: DW_TAG_member, scope: !89, file: !85, line: 24, baseType: !93, size: 16)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !89, file: !85, line: 24, size: 16, elements: !94)
!94 = !{!95, !101}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !93, file: !85, line: 25, baseType: !96, size: 8)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !97, line: 17, baseType: !98)
!97 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !99, line: 21, baseType: !100)
!99 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!100 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !93, file: !85, line: 26, baseType: !96, size: 8, offset: 8)
!102 = !DIDerivedType(tag: DW_TAG_member, scope: !89, file: !85, line: 28, baseType: !103, size: 32)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !89, file: !85, line: 28, size: 32, elements: !104)
!104 = !{!105, !108}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !103, file: !85, line: 29, baseType: !106, size: 16)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !97, line: 19, baseType: !107)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !99, line: 24, baseType: !39)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !103, file: !85, line: 30, baseType: !106, size: 16, offset: 16)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !69, file: !68, line: 39, baseType: !110, size: 128, offset: 64)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !38, line: 190, size: 128, elements: !111)
!111 = !{!112, !114}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !110, file: !38, line: 191, baseType: !113, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !110, file: !38, line: 191, baseType: !113, size: 64, offset: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !26, file: !25, line: 153, baseType: !33, size: 64, offset: 384)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !26, file: !25, line: 154, baseType: !33, size: 64, offset: 448)
!117 = !{!118, !119}
!118 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!119 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!120 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !121, line: 312, baseType: !7, size: 32, elements: !122)
!121 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!122 = !{!123, !124, !125, !126}
!123 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!124 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!125 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!126 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!127 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !128, line: 68, baseType: !7, size: 32, elements: !129)
!128 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!129 = !{!130, !131, !132, !133, !134}
!130 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!131 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!132 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!133 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!134 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!135 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !136, line: 1325, baseType: !7, size: 32, elements: !137)
!136 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!137 = !{!138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150}
!138 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!139 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!140 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!141 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!142 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!143 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!144 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!145 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!146 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!147 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!148 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!149 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!150 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!151 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "writeback_sync_modes", file: !152, line: 32, baseType: !7, size: 32, elements: !153)
!152 = !DIFile(filename: "./include/linux/writeback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "529df0d846991cd3030ee9505d2aaa60")
!153 = !{!154, !155}
!154 = !DIEnumerator(name: "WB_SYNC_NONE", value: 0)
!155 = !DIEnumerator(name: "WB_SYNC_ALL", value: 1)
!156 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !157, line: 15, baseType: !7, size: 32, elements: !158)
!157 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!158 = !{!159, !160, !161, !162}
!159 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!160 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!161 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!162 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!163 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !164, line: 45, baseType: !7, size: 32, elements: !165)
!164 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!165 = !{!166, !167, !168}
!166 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!167 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!168 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!169 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !170, line: 487, baseType: !7, size: 32, elements: !171)
!170 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!171 = !{!172, !173, !174, !175}
!172 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!173 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!174 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!175 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!176 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !177, line: 620, baseType: !7, size: 32, elements: !178)
!177 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!178 = !{!179, !180, !181, !182, !183}
!179 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!180 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!181 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!182 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!183 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!184 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !177, line: 597, baseType: !35, size: 32, elements: !185)
!185 = !{!186, !187, !188, !189, !190}
!186 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!187 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!188 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!189 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!190 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!191 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !192, line: 26, baseType: !7, size: 32, elements: !193)
!192 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!193 = !{!194, !195, !196}
!194 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!195 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!196 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!197 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !170, line: 547, baseType: !7, size: 32, elements: !198)
!198 = !{!199, !200, !201, !202, !203, !204, !205}
!199 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!200 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!201 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!202 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!203 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!204 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!205 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!206 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !170, line: 564, baseType: !7, size: 32, elements: !207)
!207 = !{!208, !209, !210}
!208 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!209 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!210 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!211 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !170, line: 577, baseType: !7, size: 32, elements: !212)
!212 = !{!213, !214, !215}
!213 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!214 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!215 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!216 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !170, line: 503, baseType: !7, size: 32, elements: !217)
!217 = !{!218, !219, !220, !221}
!218 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!219 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!220 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!221 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!222 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !223, line: 2052, baseType: !7, size: 32, elements: !224)
!223 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!224 = !{!225, !226}
!225 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!226 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!227 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !228, line: 54, baseType: !7, size: 32, elements: !229)
!228 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!229 = !{!230, !231, !232}
!230 = !DIEnumerator(name: "USRQUOTA", value: 0)
!231 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!232 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!233 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "wb_reason", file: !234, line: 44, baseType: !7, size: 32, elements: !235)
!234 = !DIFile(filename: "./include/linux/backing-dev-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48876dd2050c245a6230a2e03c4bc3c9")
!235 = !{!236, !237, !238, !239, !240, !241, !242, !243, !244}
!236 = !DIEnumerator(name: "WB_REASON_BACKGROUND", value: 0)
!237 = !DIEnumerator(name: "WB_REASON_VMSCAN", value: 1)
!238 = !DIEnumerator(name: "WB_REASON_SYNC", value: 2)
!239 = !DIEnumerator(name: "WB_REASON_PERIODIC", value: 3)
!240 = !DIEnumerator(name: "WB_REASON_LAPTOP_TIMER", value: 4)
!241 = !DIEnumerator(name: "WB_REASON_FS_FREE_SPACE", value: 5)
!242 = !DIEnumerator(name: "WB_REASON_FORKER_THREAD", value: 6)
!243 = !DIEnumerator(name: "WB_REASON_FOREIGN_FLUSH", value: 7)
!244 = !DIEnumerator(name: "WB_REASON_MAX", value: 8)
!245 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !246, line: 16, baseType: !7, size: 32, elements: !247)
!246 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!247 = !{!248, !249, !250}
!248 = !DIEnumerator(name: "TT_NONE", value: 0)
!249 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!250 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!251 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !252, line: 51, baseType: !7, size: 32, elements: !253)
!252 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!253 = !{!254, !255, !256, !257}
!254 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!255 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!256 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!257 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!258 = !{!259, !263, !260, !271, !274, !275, !33, !276, !277, !52, !1069}
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !97, line: 23, baseType: !261)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !99, line: 31, baseType: !262)
!262 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__large_struct", file: !265, line: 471, size: 6400, elements: !266)
!265 = !DIFile(filename: "./arch/x86/include/asm/uaccess.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b103a53a1960df693128e0148737f8c5")
!266 = !{!267}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !264, file: !265, line: 471, baseType: !268, size: 6400)
!268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 6400, elements: !269)
!269 = !{!270}
!270 = !DISubrange(count: 100)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !97, line: 21, baseType: !273)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !99, line: 27, baseType: !7)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !279, line: 746, size: 58368, elements: !280)
!279 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!280 = !{!281, !289, !290, !291, !297, !298, !299, !300, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !380, !391, !492, !496, !499, !530, !531, !532, !533, !544, !546, !547, !548, !549, !550, !551, !562, !563, !566, !567, !568, !569, !570, !571, !572, !573, !580, !581, !588, !589, !3925, !3926, !3927, !3928, !3929, !3930, !3931, !3932, !3933, !3934, !3935, !3936, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945, !3946, !3947, !4003, !4006, !4007, !4008, !4009, !4010, !4011, !4012, !4013, !4014, !4015, !4016, !4018, !4019, !4020, !4021, !4022, !4023, !4024, !4025, !4026, !4027, !4033, !4034, !4035, !4036, !4037, !4038, !4039, !4051, !4057, !4058, !4059, !4060, !4061, !4063, !4066, !4073, !4078, !4081, !4084, !4087, !4379, !4577, !4604, !4605, !4606, !4607, !4608, !4609, !4610, !4611, !4612, !4615, !4616, !4617, !4626, !4634, !4635, !4636, !4637, !4638, !4643, !4644, !4645, !4648, !4649, !4652, !4655, !4660, !4667, !4670, !4671, !4757, !4758, !4759, !4760, !4761, !4767, !4768, !4769, !4770, !4771, !4772, !4775, !4778, !4779, !4782, !4783, !4784, !4787, !4788, !4789, !4790, !4791, !4792, !4805, !4806, !4807, !4808, !4809, !4810, !4811, !4812, !4813, !4824, !4825, !4831, !4834, !4835, !4836, !4837, !4838, !4839, !4840, !4841, !4913, !4915, !4916, !4917, !4918, !4919, !4920, !4923, !4924, !4925, !4926, !4927, !4928, !4929, !4930, !4931, !4932, !4933, !4937, !4938, !4939}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !278, file: !279, line: 752, baseType: !282, size: 192)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !283, line: 56, size: 192, elements: !284)
!283 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!284 = !{!285, !286, !287, !288}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !282, file: !283, line: 57, baseType: !52, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !282, file: !283, line: 58, baseType: !52, size: 64, offset: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !282, file: !283, line: 59, baseType: !272, size: 32, offset: 128)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !282, file: !283, line: 61, baseType: !272, size: 32, offset: 160)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !278, file: !279, line: 754, baseType: !7, size: 32, offset: 192)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !278, file: !279, line: 767, baseType: !33, size: 64, offset: 256)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !278, file: !279, line: 768, baseType: !292, size: 32, offset: 320)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !293, line: 113, baseType: !294)
!293 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !293, line: 111, size: 32, elements: !295)
!295 = !{!296}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !294, file: !293, line: 112, baseType: !62, size: 32)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !278, file: !279, line: 770, baseType: !7, size: 32, offset: 352)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !278, file: !279, line: 771, baseType: !7, size: 32, offset: 384)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !278, file: !279, line: 774, baseType: !35, size: 32, offset: 416)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !278, file: !279, line: 775, baseType: !301, size: 128, offset: 448)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !302, line: 58, size: 128, elements: !303)
!302 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!303 = !{!304, !310, !315, !316}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !301, file: !302, line: 59, baseType: !305, size: 64)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !306, line: 60, size: 64, elements: !307)
!306 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!307 = !{!308}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !305, file: !306, line: 61, baseType: !309, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, scope: !301, file: !302, line: 60, baseType: !311, size: 32, offset: 64)
!311 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !301, file: !302, line: 60, size: 32, elements: !312)
!312 = !{!313, !314}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !311, file: !302, line: 61, baseType: !7, size: 32)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !311, file: !302, line: 62, baseType: !62, size: 32)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !301, file: !302, line: 65, baseType: !106, size: 16, offset: 96)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !301, file: !302, line: 65, baseType: !106, size: 16, offset: 112)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !278, file: !279, line: 776, baseType: !7, size: 32, offset: 576)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !278, file: !279, line: 777, baseType: !52, size: 64, offset: 640)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !278, file: !279, line: 778, baseType: !277, size: 64, offset: 704)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !278, file: !279, line: 787, baseType: !35, size: 32, offset: 768)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !278, file: !279, line: 788, baseType: !35, size: 32, offset: 800)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !278, file: !279, line: 790, baseType: !35, size: 32, offset: 832)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !278, file: !279, line: 792, baseType: !35, size: 32, offset: 864)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !278, file: !279, line: 793, baseType: !35, size: 32, offset: 896)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !278, file: !279, line: 794, baseType: !35, size: 32, offset: 928)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !278, file: !279, line: 795, baseType: !7, size: 32, offset: 960)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !278, file: !279, line: 797, baseType: !328, size: 2048, offset: 1024)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !279, line: 551, size: 2048, elements: !329)
!329 = !{!330, !335, !343, !344, !345, !346, !347, !348, !349, !350, !351, !354, !355, !356, !357, !359, !362, !363, !364}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !328, file: !279, line: 553, baseType: !331, size: 128)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !279, line: 411, size: 128, elements: !332)
!332 = !{!333, !334}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !331, file: !279, line: 412, baseType: !52, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !331, file: !279, line: 413, baseType: !272, size: 32, offset: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !328, file: !279, line: 554, baseType: !336, size: 192, align: 64, offset: 128)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !337, line: 5, size: 192, align: 64, elements: !338)
!337 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!338 = !{!339, !340, !342}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !336, file: !337, line: 6, baseType: !52, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !336, file: !337, line: 7, baseType: !341, size: 64, offset: 64)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !336, file: !337, line: 8, baseType: !341, size: 64, offset: 128)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !328, file: !279, line: 555, baseType: !260, size: 64, offset: 320)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !328, file: !279, line: 556, baseType: !260, size: 64, offset: 384)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !328, file: !279, line: 558, baseType: !110, size: 128, offset: 448)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !328, file: !279, line: 559, baseType: !7, size: 32, offset: 576)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !328, file: !279, line: 561, baseType: !260, size: 64, offset: 640)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !328, file: !279, line: 562, baseType: !260, size: 64, offset: 704)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !328, file: !279, line: 563, baseType: !260, size: 64, offset: 768)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !328, file: !279, line: 564, baseType: !260, size: 64, offset: 832)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !328, file: !279, line: 565, baseType: !352, size: 64, offset: 896)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !97, line: 22, baseType: !353)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !99, line: 30, baseType: !56)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !328, file: !279, line: 566, baseType: !260, size: 64, offset: 960)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !328, file: !279, line: 568, baseType: !260, size: 64, offset: 1024)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !328, file: !279, line: 571, baseType: !35, size: 32, offset: 1088)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !328, file: !279, line: 572, baseType: !358, size: 64, offset: 1152)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !328, file: !279, line: 574, baseType: !360, size: 64, offset: 1216)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !279, line: 49, flags: DIFlagFwdDecl)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !328, file: !279, line: 576, baseType: !360, size: 64, offset: 1280)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !328, file: !279, line: 578, baseType: !52, size: 64, offset: 1344)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !328, file: !279, line: 588, baseType: !365, size: 512, align: 512, offset: 1536)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !279, line: 497, size: 512, align: 512, elements: !366)
!366 = !{!367, !368, !369, !370, !371, !372, !373, !374, !375}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !365, file: !279, line: 498, baseType: !260, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !365, file: !279, line: 499, baseType: !260, size: 64, offset: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !365, file: !279, line: 500, baseType: !260, size: 64, offset: 128)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !365, file: !279, line: 501, baseType: !272, size: 32, offset: 192)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !365, file: !279, line: 502, baseType: !272, size: 32, offset: 224)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !365, file: !279, line: 503, baseType: !52, size: 64, offset: 256)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !365, file: !279, line: 504, baseType: !52, size: 64, offset: 320)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !365, file: !279, line: 505, baseType: !52, size: 64, offset: 384)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !365, file: !279, line: 506, baseType: !376, size: 64, align: 64, offset: 448)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !279, line: 445, size: 64, align: 64, elements: !377)
!377 = !{!378, !379}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !376, file: !279, line: 446, baseType: !7, size: 32)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !376, file: !279, line: 447, baseType: !7, size: 32, offset: 32)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !278, file: !279, line: 798, baseType: !381, size: 384, offset: 3072)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !279, line: 592, size: 384, elements: !382)
!382 = !{!383, !384, !385, !386, !387, !388, !389}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !381, file: !279, line: 593, baseType: !110, size: 128)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !381, file: !279, line: 594, baseType: !52, size: 64, offset: 128)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !381, file: !279, line: 595, baseType: !52, size: 64, offset: 192)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !381, file: !279, line: 596, baseType: !7, size: 32, offset: 256)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !381, file: !279, line: 597, baseType: !39, size: 16, offset: 288)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !381, file: !279, line: 598, baseType: !39, size: 16, offset: 304)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !381, file: !279, line: 600, baseType: !390, size: 64, offset: 320)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !278, file: !279, line: 799, baseType: !392, size: 1792, offset: 3456)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !279, line: 610, size: 1792, elements: !393)
!393 = !{!394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !489, !490}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !392, file: !279, line: 611, baseType: !336, size: 192, align: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !392, file: !279, line: 618, baseType: !260, size: 64, offset: 192)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !392, file: !279, line: 619, baseType: !260, size: 64, offset: 256)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !392, file: !279, line: 620, baseType: !260, size: 64, offset: 320)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !392, file: !279, line: 621, baseType: !260, size: 64, offset: 384)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !392, file: !279, line: 622, baseType: !260, size: 64, offset: 448)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !392, file: !279, line: 629, baseType: !352, size: 64, offset: 512)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !392, file: !279, line: 630, baseType: !260, size: 64, offset: 576)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !392, file: !279, line: 631, baseType: !7, size: 32, offset: 640)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !392, file: !279, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !392, file: !279, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !392, file: !279, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !392, file: !279, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !392, file: !279, line: 662, baseType: !408, size: 512, offset: 704)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !12, line: 118, size: 512, elements: !409)
!409 = !{!410, !418, !419, !424, !485, !486, !487, !488}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !408, file: !12, line: 119, baseType: !411, size: 256)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !412, line: 9, size: 256, elements: !413)
!412 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!413 = !{!414, !415}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !411, file: !412, line: 10, baseType: !336, size: 192, align: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !411, file: !412, line: 11, baseType: !416, size: 64, offset: 192)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !417, line: 29, baseType: !352)
!417 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!418 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !408, file: !12, line: 120, baseType: !416, size: 64, offset: 256)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !408, file: !12, line: 121, baseType: !420, size: 64, offset: 320)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DISubroutineType(types: !422)
!422 = !{!11, !423}
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !408, file: !12, line: 122, baseType: !425, size: 64, offset: 384)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !12, line: 159, size: 512, align: 512, elements: !427)
!427 = !{!428, !454, !455, !458, !468, !469, !480, !484}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !426, file: !12, line: 160, baseType: !429, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !12, line: 215, size: 4608, align: 512, elements: !431)
!431 = !{!432, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !430, file: !12, line: 216, baseType: !433, size: 32)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !81, line: 23, baseType: !80)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !430, file: !12, line: 217, baseType: !7, size: 32, offset: 32)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !430, file: !12, line: 218, baseType: !7, size: 32, offset: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !430, file: !12, line: 219, baseType: !7, size: 32, offset: 96)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !430, file: !12, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !430, file: !12, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !430, file: !12, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !430, file: !12, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !430, file: !12, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !430, file: !12, line: 226, baseType: !7, size: 32, offset: 160)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !430, file: !12, line: 227, baseType: !39, size: 16, offset: 192)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !430, file: !12, line: 228, baseType: !39, size: 16, offset: 208)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !430, file: !12, line: 229, baseType: !7, size: 32, offset: 224)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !430, file: !12, line: 235, baseType: !416, size: 64, offset: 256)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !430, file: !12, line: 236, baseType: !423, size: 64, offset: 320)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !430, file: !12, line: 237, baseType: !416, size: 64, offset: 384)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !430, file: !12, line: 238, baseType: !423, size: 64, offset: 448)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !430, file: !12, line: 239, baseType: !451, size: 4096, align: 512, offset: 512)
!451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !426, size: 4096, align: 512, elements: !452)
!452 = !{!453}
!453 = !DISubrange(count: 8)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !426, file: !12, line: 161, baseType: !7, size: 32, offset: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !426, file: !12, line: 162, baseType: !456, size: 32, offset: 96)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !38, line: 32, baseType: !457)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !50, line: 96, baseType: !35)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !426, file: !12, line: 163, baseType: !459, size: 32, offset: 128)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !460, line: 274, baseType: !461)
!460 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !460, line: 274, size: 32, elements: !462)
!462 = !{!463}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !461, file: !460, line: 274, baseType: !464, size: 32)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !460, line: 69, baseType: !465)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !460, line: 64, size: 32, elements: !466)
!466 = !{!467}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !465, file: !460, line: 65, baseType: !7, size: 32)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !426, file: !12, line: 164, baseType: !423, size: 64, offset: 192)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !426, file: !12, line: 165, baseType: !470, size: 128, offset: 256)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !412, line: 14, size: 128, elements: !471)
!471 = !{!472}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !470, file: !412, line: 15, baseType: !473, size: 128)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !337, line: 26, size: 128, elements: !474)
!474 = !{!475, !479}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !473, file: !337, line: 27, baseType: !476, size: 64)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !337, line: 12, size: 64, elements: !477)
!477 = !{!478}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !476, file: !337, line: 13, baseType: !341, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !473, file: !337, line: 28, baseType: !341, size: 64, offset: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !426, file: !12, line: 166, baseType: !481, size: 64, offset: 384)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DISubroutineType(types: !483)
!483 = !{!416}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !426, file: !12, line: 167, baseType: !416, size: 64, offset: 448)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !408, file: !12, line: 123, baseType: !96, size: 8, offset: 448)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !408, file: !12, line: 124, baseType: !96, size: 8, offset: 456)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !408, file: !12, line: 125, baseType: !96, size: 8, offset: 464)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !408, file: !12, line: 126, baseType: !96, size: 8, offset: 472)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !392, file: !279, line: 671, baseType: !408, size: 512, offset: 1216)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !392, file: !279, line: 679, baseType: !491, size: 64, offset: 1728)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !278, file: !279, line: 800, baseType: !493, size: 64, offset: 5248)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !495)
!495 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !279, line: 800, flags: DIFlagFwdDecl)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !278, file: !279, line: 809, baseType: !497, size: 64, offset: 5312)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !279, line: 70, flags: DIFlagFwdDecl)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !278, file: !279, line: 825, baseType: !500, size: 2048, align: 512, offset: 5632)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !279, line: 509, size: 2048, align: 512, elements: !501)
!501 = !{!502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !500, file: !279, line: 511, baseType: !260, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !500, file: !279, line: 512, baseType: !260, size: 64, offset: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !500, file: !279, line: 513, baseType: !260, size: 64, offset: 128)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !500, file: !279, line: 514, baseType: !260, size: 64, offset: 192)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !500, file: !279, line: 515, baseType: !260, size: 64, offset: 256)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !500, file: !279, line: 516, baseType: !260, size: 64, offset: 320)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !500, file: !279, line: 518, baseType: !260, size: 64, offset: 384)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !500, file: !279, line: 519, baseType: !260, size: 64, offset: 448)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !500, file: !279, line: 520, baseType: !352, size: 64, offset: 512)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !500, file: !279, line: 522, baseType: !260, size: 64, offset: 576)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !500, file: !279, line: 523, baseType: !260, size: 64, offset: 640)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !500, file: !279, line: 524, baseType: !352, size: 64, offset: 704)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !500, file: !279, line: 526, baseType: !352, size: 64, offset: 768)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !500, file: !279, line: 527, baseType: !260, size: 64, offset: 832)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !500, file: !279, line: 529, baseType: !260, size: 64, offset: 896)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !500, file: !279, line: 530, baseType: !260, size: 64, offset: 960)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !500, file: !279, line: 531, baseType: !260, size: 64, offset: 1024)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !500, file: !279, line: 532, baseType: !260, size: 64, offset: 1088)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !500, file: !279, line: 533, baseType: !260, size: 64, offset: 1152)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !500, file: !279, line: 535, baseType: !260, size: 64, offset: 1216)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !500, file: !279, line: 536, baseType: !260, size: 64, offset: 1280)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !500, file: !279, line: 537, baseType: !260, size: 64, offset: 1344)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !500, file: !279, line: 538, baseType: !260, size: 64, offset: 1408)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !500, file: !279, line: 539, baseType: !260, size: 64, offset: 1472)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !500, file: !279, line: 540, baseType: !260, size: 64, offset: 1536)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !500, file: !279, line: 541, baseType: !260, size: 64, offset: 1600)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !500, file: !279, line: 542, baseType: !260, size: 64, offset: 1664)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !500, file: !279, line: 543, baseType: !260, size: 64, offset: 1728)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !278, file: !279, line: 833, baseType: !7, size: 32, offset: 7680)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !278, file: !279, line: 836, baseType: !7, size: 32, offset: 7712)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !278, file: !279, line: 837, baseType: !35, size: 32, offset: 7744)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !278, file: !279, line: 838, baseType: !534, size: 64, offset: 7808)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !536)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !537, line: 19, baseType: !538)
!537 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !537, line: 19, size: 64, elements: !539)
!539 = !{!540}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !538, file: !537, line: 19, baseType: !541, size: 64)
!541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 64, elements: !542)
!542 = !{!543}
!543 = !DISubrange(count: 1)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !278, file: !279, line: 839, baseType: !545, size: 64, offset: 7872)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !278, file: !279, line: 840, baseType: !536, size: 64, offset: 7936)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !278, file: !279, line: 841, baseType: !33, size: 64, offset: 8000)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !278, file: !279, line: 843, baseType: !39, size: 16, offset: 8064)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !278, file: !279, line: 845, baseType: !39, size: 16, offset: 8080)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !278, file: !279, line: 848, baseType: !35, size: 32, offset: 8096)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !278, file: !279, line: 849, baseType: !552, size: 32, offset: 8128)
!552 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !279, line: 718, size: 32, elements: !553)
!553 = !{!554, !561}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !552, file: !279, line: 724, baseType: !555, size: 32)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !552, file: !279, line: 719, size: 32, elements: !556)
!556 = !{!557, !558, !559, !560}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !555, file: !279, line: 720, baseType: !96, size: 8)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !555, file: !279, line: 721, baseType: !96, size: 8, offset: 8)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !555, file: !279, line: 722, baseType: !96, size: 8, offset: 16)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !555, file: !279, line: 723, baseType: !96, size: 8, offset: 24)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !552, file: !279, line: 725, baseType: !272, size: 32)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !278, file: !279, line: 850, baseType: !110, size: 128, offset: 8192)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !278, file: !279, line: 851, baseType: !564, size: 64, offset: 8320)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !279, line: 60, flags: DIFlagFwdDecl)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !278, file: !279, line: 855, baseType: !52, size: 64, offset: 8384)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !278, file: !279, line: 856, baseType: !96, size: 8, offset: 8448)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !278, file: !279, line: 857, baseType: !96, size: 8, offset: 8456)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !278, file: !279, line: 858, baseType: !35, size: 32, offset: 8480)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !278, file: !279, line: 859, baseType: !110, size: 128, offset: 8512)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !278, file: !279, line: 860, baseType: !35, size: 32, offset: 8640)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !278, file: !279, line: 861, baseType: !110, size: 128, offset: 8704)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !278, file: !279, line: 873, baseType: !574, size: 256, offset: 8832)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !279, line: 376, size: 256, elements: !575)
!575 = !{!576, !577, !578, !579}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !574, file: !279, line: 381, baseType: !52, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !574, file: !279, line: 384, baseType: !262, size: 64, offset: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !574, file: !279, line: 389, baseType: !262, size: 64, offset: 128)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !574, file: !279, line: 392, baseType: !262, size: 64, offset: 192)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !278, file: !279, line: 875, baseType: !110, size: 128, offset: 9088)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !278, file: !279, line: 877, baseType: !582, size: 320, offset: 9216)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !583, line: 86, size: 320, elements: !584)
!583 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!584 = !{!585, !586, !587}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !582, file: !583, line: 87, baseType: !35, size: 32)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !582, file: !583, line: 88, baseType: !110, size: 128, offset: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !582, file: !583, line: 89, baseType: !110, size: 128, offset: 192)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !278, file: !279, line: 878, baseType: !336, size: 192, align: 64, offset: 9536)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !278, file: !279, line: 881, baseType: !590, size: 64, offset: 9728)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !136, line: 733, size: 10240, elements: !592)
!592 = !{!593, !3923}
!593 = !DIDerivedType(tag: DW_TAG_member, scope: !591, file: !136, line: 734, baseType: !594, size: 10240)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !591, file: !136, line: 734, size: 10240, elements: !595)
!595 = !{!596, !600, !614, !3803, !3804, !3805, !3806, !3807, !3808, !3815, !3816, !3817, !3823, !3824, !3825, !3826, !3827, !3828, !3829, !3830, !3831, !3832, !3833, !3834, !3835, !3836, !3837, !3838, !3839, !3840, !3841, !3842, !3843, !3844, !3845, !3846, !3847, !3848, !3849, !3850, !3851, !3852, !3856, !3857, !3860, !3903, !3904, !3905, !3908, !3909, !3910, !3913, !3914, !3915, !3921, !3922}
!596 = !DIDerivedType(tag: DW_TAG_member, scope: !594, file: !136, line: 739, baseType: !597, size: 512, align: 512)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !594, file: !136, line: 739, size: 512, align: 512, elements: !598)
!598 = !{!599}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !597, file: !136, line: 747, baseType: !62, size: 32)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !594, file: !136, line: 750, baseType: !601, size: 128, offset: 512)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !602, line: 218, size: 128, elements: !603)
!602 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!603 = !{!604, !612, !613}
!604 = !DIDerivedType(tag: DW_TAG_member, scope: !601, file: !602, line: 219, baseType: !605, size: 32)
!605 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !601, file: !602, line: 219, size: 32, elements: !606)
!606 = !{!607, !608}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !605, file: !602, line: 220, baseType: !72, size: 32)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !605, file: !602, line: 221, baseType: !609)
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !602, line: 197, baseType: !610)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !602, line: 197, elements: !611)
!611 = !{}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !601, file: !602, line: 223, baseType: !7, size: 32, offset: 32)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !601, file: !602, line: 224, baseType: !33, size: 64, offset: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !594, file: !136, line: 752, baseType: !615, size: 64, offset: 640)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = !DISubroutineType(types: !617)
!617 = !{!52, !618, !52, !52, !52, !52}
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !223, line: 994, size: 1856, align: 64, elements: !620)
!620 = !{!621, !635, !636, !638, !645, !657, !658, !659, !729, !1086, !1095, !3793, !3794, !3795, !3796, !3797, !3798, !3800, !3801, !3802}
!621 = !DIDerivedType(tag: DW_TAG_member, scope: !619, file: !223, line: 995, baseType: !622, size: 128)
!622 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !619, file: !223, line: 995, size: 128, elements: !623)
!623 = !{!624, !625, !634}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !622, file: !223, line: 996, baseType: !305, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !622, file: !223, line: 997, baseType: !626, size: 128, align: 64)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !38, line: 232, size: 128, align: 64, elements: !627)
!627 = !{!628, !630}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !626, file: !38, line: 233, baseType: !629, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !626, file: !38, line: 234, baseType: !631, size: 64, offset: 64)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DISubroutineType(types: !633)
!633 = !{null, !629}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !622, file: !223, line: 998, baseType: !7, size: 32)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !619, file: !223, line: 1005, baseType: !72, size: 32, offset: 128)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !619, file: !223, line: 1006, baseType: !637, size: 32, offset: 160)
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !38, line: 156, baseType: !7)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !619, file: !223, line: 1007, baseType: !639, size: 64, offset: 192)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !640, line: 13, baseType: !641)
!640 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !38, line: 181, baseType: !642)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !38, line: 179, size: 64, elements: !643)
!643 = !{!644}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !642, file: !38, line: 180, baseType: !352, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !619, file: !223, line: 1008, baseType: !646, size: 256, offset: 256)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !647, line: 66, size: 256, elements: !648)
!647 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!648 = !{!649, !650, !651, !656}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !646, file: !647, line: 67, baseType: !639, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !646, file: !647, line: 68, baseType: !433, size: 32, offset: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !646, file: !647, line: 70, baseType: !652, size: 32, offset: 96)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !653, line: 15, size: 32, elements: !654)
!653 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!654 = !{!655}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !652, file: !653, line: 20, baseType: !62, size: 32)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !646, file: !647, line: 72, baseType: !110, size: 128, offset: 128)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !619, file: !223, line: 1009, baseType: !54, size: 64, offset: 512)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !619, file: !223, line: 1010, baseType: !7, size: 32, offset: 576)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !619, file: !223, line: 1011, baseType: !660, size: 256, offset: 640)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !223, line: 948, size: 256, elements: !661)
!661 = !{!662, !685, !718, !719, !727, !728}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !660, file: !223, line: 949, baseType: !663, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !664, line: 34, baseType: !665)
!664 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !664, line: 25, size: 64, elements: !666)
!666 = !{!667}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !665, file: !664, line: 26, baseType: !668, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !669, line: 27, baseType: !670)
!669 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !669, line: 13, size: 64, elements: !671)
!671 = !{!672, !684}
!672 = !DIDerivedType(tag: DW_TAG_member, scope: !670, file: !669, line: 14, baseType: !673, size: 32)
!673 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !670, file: !669, line: 14, size: 32, elements: !674)
!674 = !{!675, !676}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !673, file: !669, line: 15, baseType: !62, size: 32)
!676 = !DIDerivedType(tag: DW_TAG_member, scope: !673, file: !669, line: 16, baseType: !677, size: 32)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !673, file: !669, line: 16, size: 32, elements: !678)
!678 = !{!679, !680}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !677, file: !669, line: 18, baseType: !96, size: 8)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !677, file: !669, line: 19, baseType: !681, size: 24, offset: 8)
!681 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 24, elements: !682)
!682 = !{!683}
!683 = !DISubrange(count: 3)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !670, file: !669, line: 26, baseType: !84, size: 32, offset: 32)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !660, file: !223, line: 950, baseType: !686, size: 64, offset: 64)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !17, line: 59, size: 768, elements: !688)
!688 = !{!689, !690, !691, !692, !705, !706, !707, !708}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !687, file: !17, line: 61, baseType: !292, size: 32)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !687, file: !17, line: 62, baseType: !7, size: 32, offset: 32)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !687, file: !17, line: 63, baseType: !72, size: 32, offset: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !687, file: !17, line: 65, baseType: !693, size: 256, offset: 128)
!693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !694, size: 256, elements: !703)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !38, line: 194, size: 64, elements: !695)
!695 = !{!696}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !694, file: !38, line: 195, baseType: !697, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !38, line: 198, size: 128, elements: !699)
!699 = !{!700, !701}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !698, file: !38, line: 199, baseType: !697, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !698, file: !38, line: 199, baseType: !702, size: 64, offset: 64)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!703 = !{!704}
!704 = !DISubrange(count: 4)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !687, file: !17, line: 66, baseType: !694, size: 64, offset: 384)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !687, file: !17, line: 68, baseType: !67, size: 192, offset: 448)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !687, file: !17, line: 69, baseType: !626, size: 128, align: 64, offset: 640)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !687, file: !17, line: 70, baseType: !709, offset: 768)
!709 = !DICompositeType(tag: DW_TAG_array_type, baseType: !710, elements: !716)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !17, line: 54, size: 128, elements: !711)
!711 = !{!712, !713}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !710, file: !17, line: 55, baseType: !35, size: 32)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !710, file: !17, line: 56, baseType: !714, size: 64, offset: 64)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !17, line: 56, flags: DIFlagFwdDecl)
!716 = !{!717}
!717 = !DISubrange(count: -1)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !660, file: !223, line: 951, baseType: !16, size: 32, offset: 128)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !660, file: !223, line: 952, baseType: !720, size: 32, offset: 160)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !721, line: 23, baseType: !722)
!721 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !721, line: 21, size: 32, elements: !723)
!723 = !{!724}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !722, file: !721, line: 22, baseType: !725, size: 32)
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !38, line: 37, baseType: !726)
!726 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !50, line: 49, baseType: !7)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !660, file: !223, line: 952, baseType: !720, size: 32, offset: 192)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !660, file: !223, line: 953, baseType: !35, size: 32, offset: 224)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !619, file: !223, line: 1012, baseType: !730, size: 64, offset: 896)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !732)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !733, line: 110, size: 1472, elements: !734)
!733 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!734 = !{!735, !736, !737, !744, !745, !746, !747, !748, !749, !750, !751, !757, !758, !759, !760, !761, !762, !886, !887, !888, !889, !890, !921, !1072, !1073, !1081}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !732, file: !733, line: 111, baseType: !639, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !732, file: !733, line: 112, baseType: !720, size: 32, offset: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !732, file: !733, line: 113, baseType: !738, size: 32, offset: 96)
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !721, line: 28, baseType: !739)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !721, line: 26, size: 32, elements: !740)
!740 = !{!741}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !739, file: !721, line: 27, baseType: !742, size: 32)
!742 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !38, line: 38, baseType: !743)
!743 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !50, line: 50, baseType: !7)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !732, file: !733, line: 114, baseType: !720, size: 32, offset: 128)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !732, file: !733, line: 115, baseType: !738, size: 32, offset: 160)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !732, file: !733, line: 116, baseType: !720, size: 32, offset: 192)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !732, file: !733, line: 117, baseType: !738, size: 32, offset: 224)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !732, file: !733, line: 118, baseType: !720, size: 32, offset: 256)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !732, file: !733, line: 119, baseType: !738, size: 32, offset: 288)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !732, file: !733, line: 120, baseType: !7, size: 32, offset: 320)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !732, file: !733, line: 121, baseType: !752, size: 64, offset: 384)
!752 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !753, line: 24, baseType: !754)
!753 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !753, line: 24, size: 64, elements: !755)
!755 = !{!756}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !754, file: !753, line: 24, baseType: !260, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !732, file: !733, line: 122, baseType: !752, size: 64, offset: 448)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !732, file: !733, line: 123, baseType: !752, size: 64, offset: 512)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !732, file: !733, line: 124, baseType: !752, size: 64, offset: 576)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !732, file: !733, line: 125, baseType: !752, size: 64, offset: 640)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !732, file: !733, line: 127, baseType: !100, size: 8, offset: 704)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !732, file: !733, line: 129, baseType: !763, size: 64, offset: 768)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !765, line: 195, size: 1728, elements: !766)
!765 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!766 = !{!767, !768, !773, !778, !787, !790, !791, !798, !799, !800, !801, !804, !805, !806, !808, !809, !850, !871}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !764, file: !765, line: 196, baseType: !292, size: 32)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !764, file: !765, line: 197, baseType: !769, size: 32, offset: 32)
!769 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !765, line: 28, baseType: !770)
!770 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !38, line: 104, baseType: !771)
!771 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !97, line: 20, baseType: !772)
!772 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !99, line: 26, baseType: !35)
!773 = !DIDerivedType(tag: DW_TAG_member, scope: !764, file: !765, line: 198, baseType: !774, size: 192, offset: 64)
!774 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !764, file: !765, line: 198, size: 192, elements: !775)
!775 = !{!776, !777}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !774, file: !765, line: 199, baseType: !110, size: 128)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !774, file: !765, line: 200, baseType: !336, size: 192, align: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !764, file: !765, line: 205, baseType: !779, size: 320, offset: 256)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !780, line: 48, size: 320, elements: !781)
!780 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!781 = !{!782, !783, !784, !785, !786}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !779, file: !780, line: 49, baseType: !639, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !779, file: !780, line: 55, baseType: !639, size: 64, offset: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !779, file: !780, line: 57, baseType: !652, size: 32, offset: 128)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !779, file: !780, line: 59, baseType: !433, size: 32, offset: 160)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !779, file: !780, line: 60, baseType: !110, size: 128, offset: 192)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !764, file: !765, line: 206, baseType: !788, size: 64, offset: 576)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !765, line: 206, flags: DIFlagFwdDecl)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !764, file: !765, line: 207, baseType: !33, size: 64, offset: 640)
!791 = !DIDerivedType(tag: DW_TAG_member, scope: !764, file: !765, line: 208, baseType: !792, size: 64, offset: 704)
!792 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !764, file: !765, line: 208, size: 64, elements: !793)
!793 = !{!794, !797}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !792, file: !765, line: 209, baseType: !795, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !796, line: 8, baseType: !353)
!796 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!797 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !792, file: !765, line: 210, baseType: !795, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !764, file: !765, line: 212, baseType: !795, size: 64, offset: 768)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !764, file: !765, line: 213, baseType: !720, size: 32, offset: 832)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !764, file: !765, line: 214, baseType: !738, size: 32, offset: 864)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !764, file: !765, line: 215, baseType: !802, size: 32, offset: 896)
!802 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !765, line: 31, baseType: !803)
!803 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !38, line: 110, baseType: !272)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !764, file: !765, line: 216, baseType: !39, size: 16, offset: 928)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !764, file: !765, line: 217, baseType: !39, size: 16, offset: 944)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !764, file: !765, line: 221, baseType: !807, size: 16, offset: 960)
!807 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !764, file: !765, line: 228, baseType: !52, size: 64, offset: 1024)
!809 = !DIDerivedType(tag: DW_TAG_member, scope: !764, file: !765, line: 245, baseType: !810, size: 320, offset: 1088)
!810 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !764, file: !765, line: 245, size: 320, elements: !811)
!811 = !{!812, !841}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !810, file: !765, line: 246, baseType: !813, size: 320)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !765, line: 114, size: 320, elements: !814)
!814 = !{!815, !816, !828, !831, !840}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !813, file: !765, line: 116, baseType: !52, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_member, scope: !813, file: !765, line: 117, baseType: !817, size: 64, offset: 64)
!817 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !813, file: !765, line: 117, size: 64, elements: !818)
!818 = !{!819, !827}
!819 = !DIDerivedType(tag: DW_TAG_member, scope: !817, file: !765, line: 118, baseType: !820, size: 64)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !817, file: !765, line: 118, size: 64, elements: !821)
!821 = !{!822, !823}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !820, file: !765, line: 120, baseType: !106, size: 16)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !820, file: !765, line: 121, baseType: !824, size: 48, offset: 16)
!824 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 48, elements: !825)
!825 = !{!826}
!826 = !DISubrange(count: 6)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !817, file: !765, line: 127, baseType: !52, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !813, file: !765, line: 129, baseType: !829, size: 64, offset: 128)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !765, line: 102, flags: DIFlagFwdDecl)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !813, file: !765, line: 130, baseType: !832, size: 64, offset: 192)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !765, line: 108, size: 192, elements: !834)
!834 = !{!835, !836, !837}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !833, file: !765, line: 109, baseType: !626, size: 128, align: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !833, file: !765, line: 110, baseType: !292, size: 32, offset: 128)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !833, file: !765, line: 111, baseType: !838, size: 8, offset: 160)
!838 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !38, line: 35, baseType: !839)
!839 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !813, file: !765, line: 131, baseType: !29, size: 64, offset: 256)
!841 = !DIDerivedType(tag: DW_TAG_member, scope: !810, file: !765, line: 247, baseType: !842, size: 320)
!842 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !810, file: !765, line: 247, size: 320, elements: !843)
!843 = !{!844, !845, !846, !847, !848}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !842, file: !765, line: 248, baseType: !52, size: 64)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !842, file: !765, line: 249, baseType: !52, size: 64, offset: 64)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !842, file: !765, line: 250, baseType: !829, size: 64, offset: 128)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !842, file: !765, line: 251, baseType: !832, size: 64, offset: 192)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !842, file: !765, line: 252, baseType: !849, size: 64, offset: 256)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_member, scope: !764, file: !765, line: 260, baseType: !851, size: 256, offset: 1408)
!851 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !764, file: !765, line: 260, size: 256, elements: !852)
!852 = !{!853, !859}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !851, file: !765, line: 261, baseType: !854, size: 256)
!854 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !765, line: 134, size: 256, elements: !855)
!855 = !{!856, !857}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !854, file: !765, line: 135, baseType: !33, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !854, file: !765, line: 136, baseType: !858, size: 256)
!858 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 256, elements: !703)
!859 = !DIDerivedType(tag: DW_TAG_member, scope: !851, file: !765, line: 262, baseType: !860, size: 256)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !851, file: !765, line: 262, size: 256, elements: !861)
!861 = !{!862, !863}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !860, file: !765, line: 264, baseType: !110, size: 128)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !860, file: !765, line: 265, baseType: !864, size: 128, offset: 128)
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !865, line: 22, size: 128, elements: !866)
!865 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!866 = !{!867, !870}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !864, file: !865, line: 23, baseType: !868, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !865, line: 23, flags: DIFlagFwdDecl)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !864, file: !865, line: 24, baseType: !52, size: 64, offset: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !764, file: !765, line: 280, baseType: !872, size: 64, offset: 1664)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !765, line: 176, size: 192, elements: !874)
!874 = !{!875, !884, !885}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !873, file: !765, line: 177, baseType: !876, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !765, line: 171, baseType: !877)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = !DISubroutineType(types: !879)
!879 = !{!35, !763, !880, !882, !763}
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !830)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !854)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !873, file: !765, line: 178, baseType: !763, size: 64, offset: 64)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !873, file: !765, line: 179, baseType: !829, size: 64, offset: 128)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !732, file: !733, line: 130, baseType: !763, size: 64, offset: 832)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !732, file: !733, line: 131, baseType: !763, size: 64, offset: 896)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !732, file: !733, line: 132, baseType: !763, size: 64, offset: 960)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !732, file: !733, line: 135, baseType: !33, size: 64, offset: 1024)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !732, file: !733, line: 137, baseType: !891, size: 64, offset: 1088)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !893, line: 14, size: 1088, elements: !894)
!893 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!894 = !{!895, !896, !905, !906, !907, !908, !909, !910}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !892, file: !893, line: 15, baseType: !292, size: 32)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !892, file: !893, line: 17, baseType: !897, size: 320, offset: 64)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !898, line: 22, size: 320, elements: !899)
!898 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!899 = !{!900, !901, !902, !903}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !897, file: !898, line: 23, baseType: !433, size: 32)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !897, file: !898, line: 24, baseType: !352, size: 64, offset: 64)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !897, file: !898, line: 26, baseType: !110, size: 128, offset: 128)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !897, file: !898, line: 28, baseType: !904, size: 64, offset: 256)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !892, file: !893, line: 19, baseType: !52, size: 64, offset: 384)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !892, file: !893, line: 20, baseType: !639, size: 64, offset: 448)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !892, file: !893, line: 23, baseType: !698, size: 128, offset: 512)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !892, file: !893, line: 24, baseType: !720, size: 32, offset: 640)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !892, file: !893, line: 29, baseType: !639, size: 64, offset: 704)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !892, file: !893, line: 36, baseType: !911, size: 320, offset: 768)
!911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !912, line: 15, size: 320, elements: !913)
!912 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!913 = !{!914, !915, !916, !917, !918, !919, !920}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !911, file: !912, line: 16, baseType: !433, size: 32)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !911, file: !912, line: 18, baseType: !35, size: 32, offset: 32)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !911, file: !912, line: 19, baseType: !35, size: 32, offset: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !911, file: !912, line: 20, baseType: !35, size: 32, offset: 96)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !911, file: !912, line: 21, baseType: !35, size: 32, offset: 128)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !911, file: !912, line: 22, baseType: !52, size: 64, offset: 192)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !911, file: !912, line: 23, baseType: !52, size: 64, offset: 256)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !732, file: !733, line: 138, baseType: !922, size: 64, offset: 1152)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !924, line: 68, size: 4800, elements: !925)
!924 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!925 = !{!926, !948, !949, !950, !951, !952, !953, !954, !965, !966, !967, !968, !969, !970, !982, !1052, !1053, !1067, !1070}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !923, file: !924, line: 69, baseType: !927, size: 576)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !924, line: 23, size: 576, elements: !928)
!928 = !{!929, !930}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !927, file: !924, line: 24, baseType: !272, size: 32)
!930 = !DIDerivedType(tag: DW_TAG_member, scope: !927, file: !924, line: 25, baseType: !931, size: 512, offset: 64)
!931 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !927, file: !924, line: 25, size: 512, elements: !932)
!932 = !{!933, !942}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !931, file: !924, line: 26, baseType: !934, size: 480)
!934 = !DICompositeType(tag: DW_TAG_array_type, baseType: !935, size: 480, elements: !940)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !924, line: 17, size: 96, elements: !936)
!936 = !{!937, !938, !939}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !935, file: !924, line: 18, baseType: !272, size: 32)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !935, file: !924, line: 19, baseType: !272, size: 32, offset: 32)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !935, file: !924, line: 20, baseType: !272, size: 32, offset: 64)
!940 = !{!941}
!941 = !DISubrange(count: 5)
!942 = !DIDerivedType(tag: DW_TAG_member, scope: !931, file: !924, line: 27, baseType: !943, size: 128)
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !931, file: !924, line: 27, size: 128, elements: !944)
!944 = !{!945, !947}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !943, file: !924, line: 28, baseType: !946, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !943, file: !924, line: 29, baseType: !946, size: 64, offset: 64)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !923, file: !924, line: 70, baseType: !927, size: 576, offset: 576)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !923, file: !924, line: 71, baseType: !927, size: 576, offset: 1152)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !923, file: !924, line: 72, baseType: !922, size: 64, offset: 1728)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !923, file: !924, line: 73, baseType: !35, size: 32, offset: 1792)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !923, file: !924, line: 74, baseType: !720, size: 32, offset: 1824)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !923, file: !924, line: 75, baseType: !738, size: 32, offset: 1856)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !923, file: !924, line: 76, baseType: !955, size: 192, offset: 1920)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !956, line: 9, size: 192, elements: !957)
!956 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!957 = !{!958, !959, !963, !964}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !955, file: !956, line: 10, baseType: !639, size: 64)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !955, file: !956, line: 11, baseType: !960, size: 64, offset: 64)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !962)
!962 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !956, line: 7, flags: DIFlagFwdDecl)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !955, file: !956, line: 12, baseType: !7, size: 32, offset: 128)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !955, file: !956, line: 13, baseType: !292, size: 32, offset: 160)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !923, file: !924, line: 77, baseType: !52, size: 64, offset: 2112)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !923, file: !924, line: 80, baseType: !838, size: 8, offset: 2176)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !923, file: !924, line: 88, baseType: !110, size: 128, offset: 2240)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !923, file: !924, line: 89, baseType: !763, size: 64, offset: 2368)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !923, file: !924, line: 90, baseType: !779, size: 320, offset: 2432)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !923, file: !924, line: 97, baseType: !971, size: 256, offset: 2752)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !972, line: 98, size: 256, elements: !973)
!972 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!973 = !{!974, !975, !976}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !971, file: !972, line: 99, baseType: !639, size: 64)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !971, file: !972, line: 100, baseType: !110, size: 128, offset: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !971, file: !972, line: 101, baseType: !977, size: 64, offset: 192)
!977 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !972, line: 21, baseType: !978)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = !DISubroutineType(types: !980)
!980 = !{null, !981}
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !923, file: !924, line: 99, baseType: !983, size: 768, offset: 3008)
!983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !25, line: 199, size: 768, elements: !984)
!984 = !{!985, !990}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !983, file: !25, line: 200, baseType: !986, size: 64)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = !DISubroutineType(types: !988)
!988 = !{!35, !989}
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !983, file: !25, line: 201, baseType: !991, size: 704, offset: 64)
!991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !25, line: 193, size: 704, elements: !992)
!992 = !{!993, !1051}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !991, file: !25, line: 195, baseType: !994, size: 640)
!994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !25, line: 173, size: 640, elements: !995)
!995 = !{!996, !1008, !1020, !1021, !1041, !1042, !1044, !1050}
!996 = !DIDerivedType(tag: DW_TAG_member, scope: !994, file: !25, line: 174, baseType: !997, size: 192)
!997 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !994, file: !25, line: 174, size: 192, elements: !998)
!998 = !{!999, !1007}
!999 = !DIDerivedType(tag: DW_TAG_member, scope: !997, file: !25, line: 175, baseType: !1000, size: 192)
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !997, file: !25, line: 175, size: 192, elements: !1001)
!1001 = !{!1002, !1003, !1004, !1005, !1006}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !1000, file: !25, line: 176, baseType: !46, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !1000, file: !25, line: 177, baseType: !35, size: 32, offset: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1000, file: !25, line: 178, baseType: !35, size: 32, offset: 96)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1000, file: !25, line: 179, baseType: !35, size: 32, offset: 128)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !1000, file: !25, line: 180, baseType: !35, size: 32, offset: 160)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !997, file: !25, line: 182, baseType: !626, size: 128, align: 64)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !994, file: !25, line: 184, baseType: !1009, size: 64, offset: 192)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1011, line: 26, size: 256, elements: !1012)
!1011 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1012 = !{!1013, !1014}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1010, file: !1011, line: 27, baseType: !7, size: 32)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1010, file: !1011, line: 28, baseType: !1015, size: 192, offset: 64)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1016, line: 43, size: 192, elements: !1017)
!1016 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1017 = !{!1018, !1019}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1015, file: !1016, line: 44, baseType: !433, size: 32)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1015, file: !1016, line: 45, baseType: !110, size: 128, offset: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !994, file: !25, line: 185, baseType: !46, size: 64, offset: 256)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !994, file: !25, line: 186, baseType: !1022, size: 64, offset: 320)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !25, line: 204, size: 960, elements: !1024)
!1024 = !{!1025, !1026, !1030, !1037}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !1023, file: !25, line: 205, baseType: !983, size: 768)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1023, file: !25, line: 206, baseType: !1027, size: 64, offset: 768)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = !DISubroutineType(types: !1029)
!1029 = !{!989, !1022}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !1023, file: !25, line: 207, baseType: !1031, size: 64, offset: 832)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DISubroutineType(types: !1033)
!1033 = !{null, !1034, !1035, !1036}
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !1023, file: !25, line: 209, baseType: !1038, size: 64, offset: 896)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = !DISubroutineType(types: !1040)
!1040 = !{!35, !1034, !46}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !994, file: !25, line: 187, baseType: !989, size: 64, offset: 384)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !994, file: !25, line: 188, baseType: !1043, size: 64, offset: 448)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !994, file: !25, line: 189, baseType: !1045, size: 64, offset: 512)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !25, line: 157, size: 256, elements: !1047)
!1047 = !{!1048, !1049}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1046, file: !25, line: 158, baseType: !336, size: 192, align: 64)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1046, file: !25, line: 159, baseType: !1034, size: 64, offset: 192)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !994, file: !25, line: 190, baseType: !694, size: 64, offset: 576)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !991, file: !25, line: 196, baseType: !476, size: 64, offset: 640)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !923, file: !924, line: 100, baseType: !1034, size: 64, offset: 3776)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !923, file: !924, line: 102, baseType: !1054, size: 64, offset: 3840)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !924, line: 107, size: 1152, elements: !1056)
!1056 = !{!1057, !1058, !1059, !1060, !1061, !1065}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1055, file: !924, line: 108, baseType: !698, size: 128)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1055, file: !924, line: 109, baseType: !922, size: 64, offset: 128)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1055, file: !924, line: 110, baseType: !720, size: 32, offset: 192)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1055, file: !924, line: 111, baseType: !62, size: 32, offset: 224)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !1055, file: !924, line: 112, baseType: !1062, size: 640, offset: 256)
!1062 = !DICompositeType(tag: DW_TAG_array_type, baseType: !639, size: 640, elements: !1063)
!1063 = !{!1064}
!1064 = !DISubrange(count: 10)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !1055, file: !924, line: 113, baseType: !1066, size: 256, offset: 896)
!1066 = !DICompositeType(tag: DW_TAG_array_type, baseType: !639, size: 256, elements: !703)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !923, file: !924, line: 103, baseType: !1068, size: 640, offset: 3904)
!1068 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1069, size: 640, elements: !1063)
!1069 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !923, file: !924, line: 104, baseType: !1071, size: 256, offset: 4544)
!1071 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1069, size: 256, elements: !703)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !732, file: !733, line: 139, baseType: !1054, size: 64, offset: 1216)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !732, file: !733, line: 140, baseType: !1074, size: 64, offset: 1280)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !733, line: 25, size: 64, elements: !1076)
!1076 = !{!1077, !1078, !1079}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1075, file: !733, line: 26, baseType: !62, size: 32)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1075, file: !733, line: 27, baseType: !35, size: 32, offset: 32)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1075, file: !733, line: 28, baseType: !1080, offset: 64)
!1080 = !DICompositeType(tag: DW_TAG_array_type, baseType: !738, elements: !716)
!1081 = !DIDerivedType(tag: DW_TAG_member, scope: !732, file: !733, line: 142, baseType: !1082, size: 128, offset: 1344)
!1082 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !732, file: !733, line: 142, size: 128, elements: !1083)
!1083 = !{!1084, !1085}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1082, file: !733, line: 143, baseType: !35, size: 32)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1082, file: !733, line: 144, baseType: !626, size: 128, align: 64)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !619, file: !223, line: 1013, baseType: !1087, size: 256, offset: 960)
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !223, line: 970, size: 256, elements: !1088)
!1088 = !{!1089, !1090, !1091, !1092, !1093, !1094}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1087, file: !223, line: 971, baseType: !52, size: 64)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1087, file: !223, line: 972, baseType: !7, size: 32, offset: 64)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1087, file: !223, line: 973, baseType: !7, size: 32, offset: 96)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1087, file: !223, line: 974, baseType: !7, size: 32, offset: 128)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1087, file: !223, line: 975, baseType: !7, size: 32, offset: 160)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1087, file: !223, line: 976, baseType: !54, size: 64, offset: 192)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !619, file: !223, line: 1014, baseType: !1096, size: 128, offset: 1216)
!1096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1097, line: 8, size: 128, elements: !1098)
!1097 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1098 = !{!1099, !3792}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1096, file: !1097, line: 9, baseType: !1100, size: 64)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !1102, line: 70, size: 256, elements: !1103)
!1102 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!1103 = !{!1104, !3789, !3790, !3791}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !1101, file: !1102, line: 71, baseType: !1105, size: 64)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !1107, line: 82, size: 1536, elements: !1108)
!1107 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!1108 = !{!1109, !1110, !1115, !1123, !1124, !1139, !3756, !3758, !3771, !3772, !3773, !3774, !3775, !3781, !3782, !3783}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !1106, file: !1107, line: 84, baseType: !7, size: 32)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !1106, file: !1107, line: 85, baseType: !1111, size: 32, offset: 32)
!1111 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !460, line: 275, baseType: !1112)
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !460, line: 275, size: 32, elements: !1113)
!1113 = !{!1114}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1112, file: !460, line: 275, baseType: !464, size: 32)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1106, file: !1107, line: 86, baseType: !1116, size: 128, offset: 64)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !1117, line: 38, size: 128, elements: !1118)
!1117 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!1118 = !{!1119, !1121}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1116, file: !1117, line: 39, baseType: !1120, size: 64)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1116, file: !1117, line: 39, baseType: !1122, size: 64, offset: 64)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !1106, file: !1107, line: 87, baseType: !1105, size: 64, offset: 192)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !1106, file: !1107, line: 88, baseType: !1125, size: 128, offset: 256)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !1107, line: 49, size: 128, elements: !1126)
!1126 = !{!1127, !1136}
!1127 = !DIDerivedType(tag: DW_TAG_member, scope: !1125, file: !1107, line: 50, baseType: !1128, size: 64)
!1128 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1125, file: !1107, line: 50, size: 64, elements: !1129)
!1129 = !{!1130, !1135}
!1130 = !DIDerivedType(tag: DW_TAG_member, scope: !1128, file: !1107, line: 51, baseType: !1131, size: 64)
!1131 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1128, file: !1107, line: 51, size: 64, elements: !1132)
!1132 = !{!1133, !1134}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1131, file: !1107, line: 52, baseType: !272, size: 32)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1131, file: !1107, line: 52, baseType: !272, size: 32, offset: 32)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !1128, file: !1107, line: 54, baseType: !260, size: 64)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1125, file: !1107, line: 56, baseType: !1137, size: 64, offset: 64)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !1106, file: !1107, line: 89, baseType: !1140, size: 64, offset: 384)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !223, line: 641, size: 4800, elements: !1142)
!1142 = !{!1143, !1144, !1145, !1146, !1147, !1148, !1149, !1152, !1153, !1347, !3570, !3571, !3572, !3573, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3738, !3741, !3742, !3743, !3752, !3753, !3754, !3755}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !1141, file: !223, line: 642, baseType: !37, size: 16)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !1141, file: !223, line: 643, baseType: !39, size: 16, offset: 16)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !1141, file: !223, line: 644, baseType: !720, size: 32, offset: 32)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !1141, file: !223, line: 645, baseType: !110, size: 128, offset: 64)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !1141, file: !223, line: 646, baseType: !738, size: 32, offset: 192)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1141, file: !223, line: 647, baseType: !7, size: 32, offset: 224)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !1141, file: !223, line: 650, baseType: !1150, size: 64, offset: 256)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !223, line: 607, flags: DIFlagFwdDecl)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !1141, file: !223, line: 651, baseType: !1150, size: 64, offset: 320)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !1141, file: !223, line: 654, baseType: !1154, size: 64, offset: 384)
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1156)
!1156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !223, line: 1966, size: 2048, align: 512, elements: !1157)
!1157 = !{!1158, !1162, !1175, !1181, !1185, !1189, !1193, !1197, !1201, !1205, !1209, !1210, !1216, !1220, !1257, !1288, !1295, !1301, !1305, !1309, !1313, !1317, !1321, !1327, !1331}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1156, file: !223, line: 1967, baseType: !1159, size: 64)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{!1105, !1140, !1105, !7}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !1156, file: !223, line: 1968, baseType: !1163, size: 64, offset: 64)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = !DISubroutineType(types: !1165)
!1165 = !{!29, !1105, !1140, !1166}
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !1168, line: 10, size: 128, elements: !1169)
!1168 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!1169 = !{!1170, !1174}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1167, file: !1168, line: 11, baseType: !1171, size: 64)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = !DISubroutineType(types: !1173)
!1173 = !{null, !33}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1167, file: !1168, line: 12, baseType: !33, size: 64, offset: 64)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !1156, file: !223, line: 1969, baseType: !1176, size: 64, offset: 128)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{!35, !1179, !1140, !35}
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !753, line: 42, flags: DIFlagFwdDecl)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !1156, file: !223, line: 1970, baseType: !1182, size: 64, offset: 192)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DISubroutineType(types: !1184)
!1184 = !{!1150, !1140, !35, !838}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !1156, file: !223, line: 1972, baseType: !1186, size: 64, offset: 256)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = !DISubroutineType(types: !1188)
!1188 = !{!35, !1105, !849, !35}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !1156, file: !223, line: 1974, baseType: !1190, size: 64, offset: 320)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DISubroutineType(types: !1192)
!1192 = !{!35, !1179, !1140, !1105, !37, !838}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1156, file: !223, line: 1976, baseType: !1194, size: 64, offset: 384)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = !DISubroutineType(types: !1196)
!1196 = !{!35, !1105, !1140, !1105}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !1156, file: !223, line: 1977, baseType: !1198, size: 64, offset: 448)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = !DISubroutineType(types: !1200)
!1200 = !{!35, !1140, !1105}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1156, file: !223, line: 1978, baseType: !1202, size: 64, offset: 512)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1203 = !DISubroutineType(types: !1204)
!1204 = !{!35, !1179, !1140, !1105, !29}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1156, file: !223, line: 1980, baseType: !1206, size: 64, offset: 576)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = !DISubroutineType(types: !1208)
!1208 = !{!35, !1179, !1140, !1105, !37}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1156, file: !223, line: 1982, baseType: !1198, size: 64, offset: 640)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !1156, file: !223, line: 1983, baseType: !1211, size: 64, offset: 704)
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = !DISubroutineType(types: !1213)
!1213 = !{!35, !1179, !1140, !1105, !37, !1214}
!1214 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !38, line: 21, baseType: !1215)
!1215 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !38, line: 18, baseType: !272)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1156, file: !223, line: 1985, baseType: !1217, size: 64, offset: 768)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = !DISubroutineType(types: !1219)
!1219 = !{!35, !1179, !1140, !1105, !1140, !1105, !7}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !1156, file: !223, line: 1987, baseType: !1221, size: 64, offset: 832)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = !DISubroutineType(types: !1223)
!1223 = !{!35, !1179, !1105, !1224}
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !223, line: 226, size: 640, elements: !1226)
!1226 = !{!1227, !1228, !1229, !1239, !1248, !1249, !1254, !1255, !1256}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1225, file: !223, line: 227, baseType: !7, size: 32)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1225, file: !223, line: 228, baseType: !37, size: 16, offset: 32)
!1229 = !DIDerivedType(tag: DW_TAG_member, scope: !1225, file: !223, line: 241, baseType: !1230, size: 32, offset: 64)
!1230 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1225, file: !223, line: 241, size: 32, elements: !1231)
!1231 = !{!1232, !1233}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1230, file: !223, line: 242, baseType: !720, size: 32)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !1230, file: !223, line: 243, baseType: !1234, size: 32)
!1234 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !1235, line: 16, baseType: !1236)
!1235 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!1236 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1235, line: 14, size: 32, elements: !1237)
!1237 = !{!1238}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1236, file: !1235, line: 15, baseType: !725, size: 32)
!1239 = !DIDerivedType(tag: DW_TAG_member, scope: !1225, file: !223, line: 245, baseType: !1240, size: 32, offset: 96)
!1240 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1225, file: !223, line: 245, size: 32, elements: !1241)
!1241 = !{!1242, !1243}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1240, file: !223, line: 246, baseType: !738, size: 32)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !1240, file: !223, line: 247, baseType: !1244, size: 32)
!1244 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !1235, line: 20, baseType: !1245)
!1245 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1235, line: 18, size: 32, elements: !1246)
!1246 = !{!1247}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1245, file: !1235, line: 19, baseType: !742, size: 32)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1225, file: !223, line: 249, baseType: !54, size: 64, offset: 128)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1225, file: !223, line: 250, baseType: !1250, size: 128, offset: 192)
!1250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !796, line: 13, size: 128, elements: !1251)
!1251 = !{!1252, !1253}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1250, file: !796, line: 14, baseType: !795, size: 64)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1250, file: !796, line: 15, baseType: !1069, size: 64, offset: 64)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1225, file: !223, line: 251, baseType: !1250, size: 128, offset: 320)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1225, file: !223, line: 252, baseType: !1250, size: 128, offset: 448)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1225, file: !223, line: 259, baseType: !618, size: 64, offset: 576)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !1156, file: !223, line: 1988, baseType: !1258, size: 64, offset: 896)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = !DISubroutineType(types: !1260)
!1260 = !{!35, !1179, !1261, !1263, !272, !7}
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1096)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1265, line: 22, size: 1280, elements: !1266)
!1265 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1266 = !{!1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1264, file: !1265, line: 23, baseType: !272, size: 32)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1264, file: !1265, line: 24, baseType: !37, size: 16, offset: 32)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1264, file: !1265, line: 25, baseType: !7, size: 32, offset: 64)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1264, file: !1265, line: 26, baseType: !803, size: 32, offset: 96)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1264, file: !1265, line: 27, baseType: !260, size: 64, offset: 128)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1264, file: !1265, line: 28, baseType: !260, size: 64, offset: 192)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1264, file: !1265, line: 41, baseType: !260, size: 64, offset: 256)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1264, file: !1265, line: 42, baseType: !1214, size: 32, offset: 320)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1264, file: !1265, line: 43, baseType: !1214, size: 32, offset: 352)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1264, file: !1265, line: 44, baseType: !720, size: 32, offset: 384)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1264, file: !1265, line: 45, baseType: !738, size: 32, offset: 416)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1264, file: !1265, line: 46, baseType: !54, size: 64, offset: 448)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1264, file: !1265, line: 47, baseType: !1250, size: 128, offset: 512)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1264, file: !1265, line: 48, baseType: !1250, size: 128, offset: 640)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1264, file: !1265, line: 49, baseType: !1250, size: 128, offset: 768)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1264, file: !1265, line: 50, baseType: !1250, size: 128, offset: 896)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1264, file: !1265, line: 51, baseType: !260, size: 64, offset: 1024)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1264, file: !1265, line: 52, baseType: !260, size: 64, offset: 1088)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1264, file: !1265, line: 53, baseType: !272, size: 32, offset: 1152)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1264, file: !1265, line: 54, baseType: !272, size: 32, offset: 1184)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1264, file: !1265, line: 55, baseType: !260, size: 64, offset: 1216)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !1156, file: !223, line: 1990, baseType: !1289, size: 64, offset: 960)
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1290 = !DISubroutineType(types: !1291)
!1291 = !{!1292, !1105, !849, !48}
!1292 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !38, line: 66, baseType: !1293)
!1293 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !50, line: 73, baseType: !1294)
!1294 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !50, line: 15, baseType: !1069)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !1156, file: !223, line: 1991, baseType: !1296, size: 64, offset: 1024)
!1296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1297, size: 64)
!1297 = !DISubroutineType(types: !1298)
!1298 = !{!35, !1140, !1299, !260, !260}
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !223, line: 55, flags: DIFlagFwdDecl)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !1156, file: !223, line: 1993, baseType: !1302, size: 64, offset: 1088)
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1303 = !DISubroutineType(types: !1304)
!1304 = !{!35, !1140, !35}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !1156, file: !223, line: 1994, baseType: !1306, size: 64, offset: 1152)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = !DISubroutineType(types: !1308)
!1308 = !{!35, !1140, !1105, !618, !7, !37}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !1156, file: !223, line: 1997, baseType: !1310, size: 64, offset: 1216)
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!1311 = !DISubroutineType(types: !1312)
!1312 = !{!35, !1179, !1140, !618, !37}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !1156, file: !223, line: 1999, baseType: !1314, size: 64, offset: 1280)
!1314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1315, size: 64)
!1315 = !DISubroutineType(types: !1316)
!1316 = !{!1150, !1179, !1105, !35}
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !1156, file: !223, line: 2001, baseType: !1318, size: 64, offset: 1344)
!1318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1319, size: 64)
!1319 = !DISubroutineType(types: !1320)
!1320 = !{!35, !1179, !1105, !1150, !35}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !1156, file: !223, line: 2003, baseType: !1322, size: 64, offset: 1408)
!1322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1323, size: 64)
!1323 = !DISubroutineType(types: !1324)
!1324 = !{!35, !1179, !1105, !1325}
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1326 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !223, line: 76, flags: DIFlagFwdDecl)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !1156, file: !223, line: 2005, baseType: !1328, size: 64, offset: 1472)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1329 = !DISubroutineType(types: !1330)
!1330 = !{!35, !1105, !1325}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !1156, file: !223, line: 2006, baseType: !1332, size: 64, offset: 1536)
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = !DISubroutineType(types: !1334)
!1334 = !{!1335, !1140}
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1336, size: 64)
!1336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !223, line: 3192, size: 192, elements: !1337)
!1337 = !{!1338, !1346}
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1336, file: !223, line: 3193, baseType: !1339, size: 128)
!1339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1340, line: 296, size: 128, elements: !1341)
!1340 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1341 = !{!1342, !1343, !1345}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1339, file: !1340, line: 297, baseType: !72, size: 32)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1339, file: !1340, line: 299, baseType: !1344, size: 32, offset: 32)
!1344 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !38, line: 154, baseType: !7)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1339, file: !1340, line: 300, baseType: !33, size: 64, offset: 64)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1336, file: !223, line: 3194, baseType: !272, size: 32, offset: 128)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !1141, file: !223, line: 655, baseType: !1348, size: 64, offset: 448)
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !223, line: 1190, size: 10752, elements: !1350)
!1350 = !{!1351, !1352, !1353, !1354, !1355, !1356, !3029, !3161, !3201, !3284, !3288, !3289, !3290, !3291, !3292, !3293, !3294, !3295, !3296, !3301, !3305, !3306, !3307, !3310, !3369, !3372, !3373, !3374, !3415, !3441, !3442, !3443, !3444, !3445, !3446, !3449, !3453, !3462, !3463, !3464, !3465, !3524, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569}
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1349, file: !223, line: 1191, baseType: !110, size: 128)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1349, file: !223, line: 1192, baseType: !1214, size: 32, offset: 128)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1349, file: !223, line: 1193, baseType: !100, size: 8, offset: 160)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1349, file: !223, line: 1194, baseType: !52, size: 64, offset: 192)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1349, file: !223, line: 1195, baseType: !54, size: 64, offset: 256)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1349, file: !223, line: 1196, baseType: !1357, size: 64, offset: 320)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !223, line: 2366, size: 576, elements: !1359)
!1359 = !{!1360, !1361, !1362, !1368, !1372, !1376, !1380, !3017, !3018, !3019, !3021, !3022, !3023, !3025, !3026, !3027, !3028}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1358, file: !223, line: 2367, baseType: !29, size: 64)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1358, file: !223, line: 2368, baseType: !35, size: 32, offset: 64)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1358, file: !223, line: 2376, baseType: !1363, size: 64, offset: 128)
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1364 = !DISubroutineType(types: !1365)
!1365 = !{!35, !1366}
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !1102, line: 21, flags: DIFlagFwdDecl)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1358, file: !223, line: 2377, baseType: !1369, size: 64, offset: 192)
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1371)
!1371 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !223, line: 75, flags: DIFlagFwdDecl)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1358, file: !223, line: 2378, baseType: !1373, size: 64, offset: 256)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = !DISubroutineType(types: !1375)
!1375 = !{!1105, !1357, !35, !29, !33}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1358, file: !223, line: 2380, baseType: !1377, size: 64, offset: 320)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = !DISubroutineType(types: !1379)
!1379 = !{null, !1348}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1358, file: !223, line: 2381, baseType: !1381, size: 64, offset: 384)
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !121, line: 402, size: 9216, align: 512, elements: !1383)
!1383 = !{!1384, !1385, !1386, !1390, !2685, !2711, !2712, !2713, !2714, !2718, !2721, !2722, !2723, !2774, !2775, !2776, !2777, !2778, !2779, !2780, !2781, !2789, !2793, !2813, !2833, !2834, !2835, !2836, !2845, !2868, !2869, !2872, !2875, !2876, !2877, !2878, !2879, !2880, !2881, !2886, !2887, !2975, !2983, !2984, !2985, !2987, !2991, !2992, !2996, !2997, !2998, !2999, !3001, !3002, !3003, !3010, !3011, !3012, !3016}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1382, file: !121, line: 403, baseType: !120, size: 32)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1382, file: !121, line: 406, baseType: !110, size: 128, offset: 64)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1382, file: !121, line: 409, baseType: !1387, size: 448, offset: 192)
!1387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 448, elements: !1388)
!1388 = !{!1389}
!1389 = !DISubrange(count: 56)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1382, file: !121, line: 417, baseType: !1391, size: 768, offset: 640)
!1391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !121, line: 45, size: 768, elements: !1392)
!1392 = !{!1393, !2679, !2680, !2681, !2684}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1391, file: !121, line: 46, baseType: !1394, size: 512)
!1394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1395, line: 64, size: 512, elements: !1396)
!1395 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1396 = !{!1397, !1398, !1399, !1401, !1445, !2535, !2669, !2674, !2675, !2676, !2677, !2678}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1394, file: !1395, line: 65, baseType: !29, size: 64)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1394, file: !1395, line: 66, baseType: !110, size: 128, offset: 64)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1394, file: !1395, line: 67, baseType: !1400, size: 64, offset: 192)
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1394, size: 64)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1394, file: !1395, line: 68, baseType: !1402, size: 64, offset: 256)
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1395, line: 168, size: 768, elements: !1404)
!1404 = !{!1405, !1406, !1407, !1408}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1403, file: !1395, line: 169, baseType: !110, size: 128)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1403, file: !1395, line: 170, baseType: !72, size: 32, offset: 128)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1403, file: !1395, line: 171, baseType: !1394, size: 512, offset: 192)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1403, file: !1395, line: 172, baseType: !1409, size: 64, offset: 704)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1411)
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1395, line: 133, size: 192, elements: !1412)
!1412 = !{!1413, !1420, !1425}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1411, file: !1395, line: 134, baseType: !1414, size: 64)
!1414 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1415)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = !DISubroutineType(types: !1417)
!1417 = !{!35, !1418}
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1419 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1394)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1411, file: !1395, line: 135, baseType: !1421, size: 64, offset: 64)
!1421 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1422)
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = !DISubroutineType(types: !1424)
!1424 = !{!29, !1418}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1411, file: !1395, line: 136, baseType: !1426, size: 64, offset: 128)
!1426 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1427)
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!1428 = !DISubroutineType(types: !1429)
!1429 = !{!35, !1418, !1430}
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!1431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1395, line: 125, size: 20736, elements: !1432)
!1432 = !{!1433, !1435, !1439, !1440, !1444}
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1431, file: !1395, line: 126, baseType: !1434, size: 192)
!1434 = !DICompositeType(tag: DW_TAG_array_type, baseType: !849, size: 192, elements: !682)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1431, file: !1395, line: 127, baseType: !1436, size: 4096, offset: 192)
!1436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !849, size: 4096, elements: !1437)
!1437 = !{!1438}
!1438 = !DISubrange(count: 64)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1431, file: !1395, line: 128, baseType: !35, size: 32, offset: 4288)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1431, file: !1395, line: 129, baseType: !1441, size: 16384, offset: 4320)
!1441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 16384, elements: !1442)
!1442 = !{!1443}
!1443 = !DISubrange(count: 2048)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1431, file: !1395, line: 130, baseType: !35, size: 32, offset: 20704)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1394, file: !1395, line: 69, baseType: !1446, size: 64, offset: 320)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1447 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1448)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1395, line: 116, size: 384, elements: !1449)
!1449 = !{!1450, !1454, !1473, !2523, !2527, !2531}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1448, file: !1395, line: 117, baseType: !1451, size: 64)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = !DISubroutineType(types: !1453)
!1453 = !{null, !1400}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1448, file: !1395, line: 118, baseType: !1455, size: 64, offset: 64)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1457)
!1457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1458, line: 254, size: 128, elements: !1459)
!1458 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1459 = !{!1460, !1469}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1457, file: !1458, line: 255, baseType: !1461, size: 64)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = !DISubroutineType(types: !1463)
!1463 = !{!1292, !1400, !1464, !849}
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1458, line: 30, size: 128, elements: !1466)
!1466 = !{!1467, !1468}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1465, file: !1458, line: 31, baseType: !29, size: 64)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1465, file: !1458, line: 32, baseType: !37, size: 16, offset: 64)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1457, file: !1458, line: 256, baseType: !1470, size: 64, offset: 64)
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1471 = !DISubroutineType(types: !1472)
!1472 = !{!1292, !1400, !1464, !29, !48}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1448, file: !1395, line: 119, baseType: !1474, size: 64, offset: 128)
!1474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1475, size: 64)
!1475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64)
!1476 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1477)
!1477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1458, line: 84, size: 320, elements: !1478)
!1478 = !{!1479, !1480, !1484, !2519, !2521}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1477, file: !1458, line: 85, baseType: !29, size: 64)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1477, file: !1458, line: 86, baseType: !1481, size: 64, offset: 64)
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1482, size: 64)
!1482 = !DISubroutineType(types: !1483)
!1483 = !{!37, !1400, !1464, !35}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1477, file: !1458, line: 88, baseType: !1485, size: 64, offset: 128)
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!1486 = !DISubroutineType(types: !1487)
!1487 = !{!37, !1400, !1488, !35}
!1488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1489, size: 64)
!1489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1458, line: 175, size: 512, elements: !1490)
!1490 = !{!1491, !1492, !1493, !1494, !2510, !2514, !2515}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1489, file: !1458, line: 176, baseType: !1465, size: 128)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1489, file: !1458, line: 177, baseType: !48, size: 64, offset: 128)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1489, file: !1458, line: 178, baseType: !33, size: 64, offset: 192)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1489, file: !1458, line: 179, baseType: !1495, size: 64, offset: 256)
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = !DISubroutineType(types: !1497)
!1497 = !{!1498}
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!1499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !223, line: 472, size: 1536, align: 64, elements: !1500)
!1500 = !{!1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !2502, !2503, !2504, !2507, !2508, !2509}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1499, file: !223, line: 473, baseType: !1140, size: 64)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1499, file: !223, line: 474, baseType: !1339, size: 128, offset: 64)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1499, file: !223, line: 475, baseType: !779, size: 320, offset: 192)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1499, file: !223, line: 476, baseType: !1344, size: 32, offset: 512)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1499, file: !223, line: 477, baseType: !62, size: 32, offset: 544)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1499, file: !223, line: 482, baseType: !473, size: 128, offset: 576)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1499, file: !223, line: 483, baseType: !52, size: 64, offset: 704)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1499, file: !223, line: 484, baseType: !52, size: 64, offset: 768)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1499, file: !223, line: 485, baseType: !1510, size: 64, offset: 832)
!1510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1511, size: 64)
!1511 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1512)
!1512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !223, line: 404, size: 1280, elements: !1513)
!1513 = !{!1514, !1825, !1895, !1899, !1903, !1920, !1926, !1930, !1935, !1939, !1943, !1947, !1991, !1995, !1999, !2003, !2008, !2012, !2494, !2498}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1512, file: !223, line: 405, baseType: !1515, size: 64)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1516 = !DISubroutineType(types: !1517)
!1517 = !{!35, !1518, !1805}
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !136, line: 74, size: 512, align: 128, elements: !1520)
!1520 = !{!1521, !1522, !1799, !1804}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1519, file: !136, line: 75, baseType: !52, size: 64)
!1522 = !DIDerivedType(tag: DW_TAG_member, scope: !1519, file: !136, line: 83, baseType: !1523, size: 320, offset: 64)
!1523 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1519, file: !136, line: 83, size: 320, elements: !1524)
!1524 = !{!1525, !1546, !1560, !1564, !1798}
!1525 = !DIDerivedType(tag: DW_TAG_member, scope: !1523, file: !136, line: 84, baseType: !1526, size: 320)
!1526 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1523, file: !136, line: 84, size: 320, elements: !1527)
!1527 = !{!1528, !1539, !1540, !1545}
!1528 = !DIDerivedType(tag: DW_TAG_member, scope: !1526, file: !136, line: 90, baseType: !1529, size: 128)
!1529 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1526, file: !136, line: 90, size: 128, elements: !1530)
!1530 = !{!1531, !1532, !1537, !1538}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1529, file: !136, line: 91, baseType: !110, size: 128)
!1532 = !DIDerivedType(tag: DW_TAG_member, scope: !1529, file: !136, line: 94, baseType: !1533, size: 128)
!1533 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1529, file: !136, line: 94, size: 128, elements: !1534)
!1534 = !{!1535, !1536}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1533, file: !136, line: 96, baseType: !33, size: 64)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1533, file: !136, line: 98, baseType: !7, size: 32, offset: 64)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1529, file: !136, line: 102, baseType: !110, size: 128)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1529, file: !136, line: 103, baseType: !110, size: 128)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1526, file: !136, line: 106, baseType: !1498, size: 64, offset: 128)
!1540 = !DIDerivedType(tag: DW_TAG_member, scope: !1526, file: !136, line: 107, baseType: !1541, size: 64, offset: 192)
!1541 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1526, file: !136, line: 107, size: 64, elements: !1542)
!1542 = !{!1543, !1544}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1541, file: !136, line: 108, baseType: !52, size: 64)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1541, file: !136, line: 109, baseType: !52, size: 64)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1526, file: !136, line: 117, baseType: !52, size: 64, offset: 256)
!1546 = !DIDerivedType(tag: DW_TAG_member, scope: !1523, file: !136, line: 119, baseType: !1547, size: 320)
!1547 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1523, file: !136, line: 119, size: 320, elements: !1548)
!1548 = !{!1549, !1550, !1553, !1554, !1555}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1547, file: !136, line: 124, baseType: !52, size: 64)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1547, file: !136, line: 125, baseType: !1551, size: 64, offset: 64)
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1552 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !136, line: 125, flags: DIFlagFwdDecl)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1547, file: !136, line: 126, baseType: !52, size: 64, offset: 128)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1547, file: !136, line: 127, baseType: !52, size: 64, offset: 192)
!1555 = !DIDerivedType(tag: DW_TAG_member, scope: !1547, file: !136, line: 128, baseType: !1556, size: 64, offset: 256)
!1556 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1547, file: !136, line: 128, size: 64, elements: !1557)
!1557 = !{!1558, !1559}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1556, file: !136, line: 133, baseType: !52, size: 64)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1556, file: !136, line: 138, baseType: !639, size: 64)
!1560 = !DIDerivedType(tag: DW_TAG_member, scope: !1523, file: !136, line: 141, baseType: !1561, size: 64)
!1561 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1523, file: !136, line: 141, size: 64, elements: !1562)
!1562 = !{!1563}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1561, file: !136, line: 142, baseType: !52, size: 64)
!1564 = !DIDerivedType(tag: DW_TAG_member, scope: !1523, file: !136, line: 144, baseType: !1565, size: 128)
!1565 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1523, file: !136, line: 144, size: 128, elements: !1566)
!1566 = !{!1567, !1797}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1565, file: !136, line: 146, baseType: !1568, size: 64)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !128, line: 126, size: 1216, elements: !1570)
!1570 = !{!1571, !1581, !1602, !1603, !1604, !1605, !1606, !1779, !1780, !1781}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1569, file: !128, line: 127, baseType: !1572, size: 384)
!1572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !128, line: 21, size: 384, elements: !1573)
!1573 = !{!1574, !1575, !1577, !1578, !1579, !1580}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1572, file: !128, line: 22, baseType: !52, size: 64)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1572, file: !128, line: 23, baseType: !1576, size: 64, offset: 64)
!1576 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1572, file: !128, line: 24, baseType: !1576, size: 64, offset: 128)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1572, file: !128, line: 25, baseType: !52, size: 64, offset: 192)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1572, file: !128, line: 26, baseType: !52, size: 64, offset: 256)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1572, file: !128, line: 27, baseType: !52, size: 64, offset: 320)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1569, file: !128, line: 128, baseType: !1582, size: 128, offset: 384)
!1582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1583, line: 105, size: 128, elements: !1584)
!1583 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1584 = !{!1585, !1586}
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1582, file: !1583, line: 110, baseType: !52, size: 64)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1582, file: !1583, line: 118, baseType: !1587, size: 64, offset: 64)
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1583, line: 95, size: 448, elements: !1589)
!1589 = !{!1590, !1591, !1597, !1598, !1599, !1600, !1601}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1588, file: !1583, line: 96, baseType: !639, size: 64)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1588, file: !1583, line: 97, baseType: !1592, size: 64, offset: 64)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1583, line: 60, baseType: !1594)
!1594 = !DISubroutineType(types: !1595)
!1595 = !{null, !1596}
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1588, file: !1583, line: 98, baseType: !1592, size: 64, offset: 128)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1588, file: !1583, line: 99, baseType: !838, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1588, file: !1583, line: 100, baseType: !838, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1588, file: !1583, line: 101, baseType: !626, size: 128, align: 64, offset: 256)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1588, file: !1583, line: 102, baseType: !1596, size: 64, offset: 384)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1569, file: !128, line: 129, baseType: !1010, size: 256, offset: 512)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1569, file: !128, line: 130, baseType: !127, size: 32, offset: 768)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1569, file: !128, line: 131, baseType: !7, size: 32, offset: 800)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1569, file: !128, line: 132, baseType: !52, size: 64, offset: 832)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1569, file: !128, line: 133, baseType: !1607, size: 64, offset: 896)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1609)
!1609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !128, line: 77, size: 192, elements: !1610)
!1610 = !{!1611, !1615, !1775}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1609, file: !128, line: 83, baseType: !1612, size: 64)
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = !DISubroutineType(types: !1614)
!1614 = !{null, !1518}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1609, file: !128, line: 89, baseType: !1616, size: 64, offset: 64)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = !DISubroutineType(types: !1618)
!1618 = !{!1619, !1620}
!1619 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !136, line: 1184, baseType: !7)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1622, line: 512, size: 896, elements: !1623)
!1622 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1623 = !{!1624, !1742, !1743, !1750, !1757, !1767, !1768, !1769, !1771, !1773}
!1624 = !DIDerivedType(tag: DW_TAG_member, scope: !1621, file: !1622, line: 513, baseType: !1625, size: 320)
!1625 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1621, file: !1622, line: 513, size: 320, elements: !1626)
!1626 = !{!1627, !1738, !1739, !1740, !1741}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1625, file: !1622, line: 514, baseType: !1628, size: 64)
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !136, line: 625, size: 1344, elements: !1630)
!1630 = !{!1631, !1640, !1641, !1649, !1656, !1657, !1662, !1663, !1668, !1669, !1672, !1731, !1732, !1733, !1734, !1735, !1736}
!1631 = !DIDerivedType(tag: DW_TAG_member, scope: !1629, file: !136, line: 628, baseType: !1632, size: 128)
!1632 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1629, file: !136, line: 628, size: 128, elements: !1633)
!1633 = !{!1634, !1639}
!1634 = !DIDerivedType(tag: DW_TAG_member, scope: !1632, file: !136, line: 629, baseType: !1635, size: 128)
!1635 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1632, file: !136, line: 629, size: 128, elements: !1636)
!1636 = !{!1637, !1638}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1635, file: !136, line: 631, baseType: !52, size: 64)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1635, file: !136, line: 632, baseType: !52, size: 64, offset: 64)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1632, file: !136, line: 635, baseType: !626, size: 128, align: 64)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1629, file: !136, line: 639, baseType: !590, size: 64, offset: 128)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1629, file: !136, line: 640, baseType: !1642, size: 64, offset: 192)
!1642 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1643, line: 297, baseType: !1644)
!1643 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1643, line: 297, size: 64, elements: !1645)
!1645 = !{!1646}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1644, file: !1643, line: 297, baseType: !1647, size: 64)
!1647 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1648, line: 19, baseType: !52)
!1648 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1649 = !DIDerivedType(tag: DW_TAG_member, scope: !1629, file: !136, line: 646, baseType: !1650, size: 64, offset: 256)
!1650 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1629, file: !136, line: 646, size: 64, elements: !1651)
!1651 = !{!1652, !1655}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1650, file: !136, line: 647, baseType: !1653, size: 64)
!1653 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1654)
!1654 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !136, line: 542, baseType: !52)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1650, file: !136, line: 648, baseType: !1654, size: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1629, file: !136, line: 666, baseType: !35, size: 32, offset: 320)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1629, file: !136, line: 667, baseType: !1658, size: 64, offset: 384)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !136, line: 579, size: 320, elements: !1660)
!1660 = !{!1661}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1659, file: !136, line: 580, baseType: !779, size: 320)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1629, file: !136, line: 670, baseType: !838, size: 8, offset: 448)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1629, file: !136, line: 681, baseType: !1664, size: 256, offset: 512)
!1664 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1629, file: !136, line: 678, size: 256, elements: !1665)
!1665 = !{!1666, !1667}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1664, file: !136, line: 679, baseType: !336, size: 192, align: 64)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1664, file: !136, line: 680, baseType: !52, size: 64, offset: 192)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1629, file: !136, line: 689, baseType: !110, size: 128, offset: 768)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1629, file: !136, line: 691, baseType: !1670, size: 64, offset: 896)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !136, line: 691, flags: DIFlagFwdDecl)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1629, file: !136, line: 694, baseType: !1673, size: 64, offset: 960)
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1675)
!1675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1622, line: 563, size: 1024, elements: !1676)
!1676 = !{!1677, !1681, !1682, !1686, !1690, !1694, !1695, !1699, !1703, !1707, !1708, !1709, !1713, !1717, !1723, !1727}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1675, file: !1622, line: 564, baseType: !1678, size: 64)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = !DISubroutineType(types: !1680)
!1680 = !{null, !1628}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1675, file: !1622, line: 569, baseType: !1678, size: 64, offset: 64)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1675, file: !1622, line: 571, baseType: !1683, size: 64, offset: 128)
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1684 = !DISubroutineType(types: !1685)
!1685 = !{!35, !1628, !52}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1675, file: !1622, line: 572, baseType: !1687, size: 64, offset: 192)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1688 = !DISubroutineType(types: !1689)
!1689 = !{!35, !1628}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1675, file: !1622, line: 578, baseType: !1691, size: 64, offset: 256)
!1691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1692, size: 64)
!1692 = !DISubroutineType(types: !1693)
!1693 = !{!35, !1628, !52, !52, !52}
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1675, file: !1622, line: 580, baseType: !1616, size: 64, offset: 320)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1675, file: !1622, line: 581, baseType: !1696, size: 64, offset: 384)
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1697, size: 64)
!1697 = !DISubroutineType(types: !1698)
!1698 = !{!1619, !1620, !7}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1675, file: !1622, line: 582, baseType: !1700, size: 64, offset: 448)
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1701, size: 64)
!1701 = !DISubroutineType(types: !1702)
!1702 = !{!1619, !1620, !52, !52}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1675, file: !1622, line: 584, baseType: !1704, size: 64, offset: 512)
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64)
!1705 = !DISubroutineType(types: !1706)
!1706 = !{!52, !1628}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1675, file: !1622, line: 588, baseType: !1616, size: 64, offset: 576)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1675, file: !1622, line: 591, baseType: !1616, size: 64, offset: 640)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1675, file: !1622, line: 597, baseType: !1710, size: 64, offset: 704)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = !DISubroutineType(types: !1712)
!1712 = !{!35, !1628, !52, !33, !35, !35}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1675, file: !1622, line: 603, baseType: !1714, size: 64, offset: 768)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = !DISubroutineType(types: !1716)
!1716 = !{!29, !1628}
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1675, file: !1622, line: 613, baseType: !1718, size: 64, offset: 832)
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = !DISubroutineType(types: !1720)
!1720 = !{!35, !1628, !1721}
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !136, line: 717, flags: DIFlagFwdDecl)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1675, file: !1622, line: 625, baseType: !1724, size: 64, offset: 896)
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64)
!1725 = !DISubroutineType(types: !1726)
!1726 = !{!1721, !1628, !52}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1675, file: !1622, line: 633, baseType: !1728, size: 64, offset: 960)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = !DISubroutineType(types: !1730)
!1730 = !{!1518, !1628, !52}
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1629, file: !136, line: 697, baseType: !52, size: 64, offset: 1024)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1629, file: !136, line: 699, baseType: !618, size: 64, offset: 1088)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1629, file: !136, line: 700, baseType: !33, size: 64, offset: 1152)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1629, file: !136, line: 711, baseType: !639, size: 64, offset: 1216)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1629, file: !136, line: 717, baseType: !1721, size: 64, offset: 1280)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1629, file: !136, line: 722, baseType: !1737, offset: 1344)
!1737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !136, line: 570, elements: !611)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1625, file: !1622, line: 515, baseType: !1344, size: 32, offset: 64)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1625, file: !1622, line: 516, baseType: !52, size: 64, offset: 128)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1625, file: !1622, line: 517, baseType: !52, size: 64, offset: 192)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1625, file: !1622, line: 518, baseType: !52, size: 64, offset: 256)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1621, file: !1622, line: 520, baseType: !135, size: 32, offset: 320)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1621, file: !1622, line: 522, baseType: !1744, size: 64, offset: 384)
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1745 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1648, line: 22, baseType: !1746)
!1746 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1648, line: 22, size: 64, elements: !1747)
!1747 = !{!1748}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1746, file: !1648, line: 22, baseType: !1749, size: 64)
!1749 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1648, line: 15, baseType: !52)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1621, file: !1622, line: 524, baseType: !1751, size: 64, offset: 448)
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1752 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1643, line: 372, baseType: !1753)
!1753 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1643, line: 372, size: 64, elements: !1754)
!1754 = !{!1755}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1753, file: !1643, line: 372, baseType: !1756, size: 64)
!1756 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1648, line: 16, baseType: !52)
!1757 = !DIDerivedType(tag: DW_TAG_member, scope: !1621, file: !1622, line: 527, baseType: !1758, size: 64, offset: 512)
!1758 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1621, file: !1622, line: 527, size: 64, elements: !1759)
!1759 = !{!1760, !1766}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1758, file: !1622, line: 528, baseType: !1761, size: 64)
!1761 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1648, line: 21, baseType: !1762)
!1762 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1648, line: 21, size: 64, elements: !1763)
!1763 = !{!1764}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1762, file: !1648, line: 21, baseType: !1765, size: 64)
!1765 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1648, line: 14, baseType: !52)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1758, file: !1622, line: 529, baseType: !1745, size: 64)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1621, file: !1622, line: 534, baseType: !1518, size: 64, offset: 576)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1621, file: !1622, line: 535, baseType: !1518, size: 64, offset: 640)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1621, file: !1622, line: 541, baseType: !1770, size: 64, offset: 704)
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1621, file: !1622, line: 545, baseType: !1772, size: 64, offset: 768)
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1621, file: !1622, line: 549, baseType: !1774, size: 64, offset: 832)
!1774 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1643, line: 520, baseType: !1518)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1609, file: !128, line: 100, baseType: !1776, size: 64, offset: 128)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1777 = !DISubroutineType(types: !1778)
!1778 = !{!35, !1568, !52, !52, !35}
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1569, file: !128, line: 134, baseType: !33, size: 64, offset: 960)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1569, file: !128, line: 135, baseType: !35, size: 32, offset: 1024)
!1781 = !DIDerivedType(tag: DW_TAG_member, scope: !1569, file: !128, line: 136, baseType: !1782, size: 128, offset: 1088)
!1782 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1569, file: !128, line: 136, size: 128, elements: !1783)
!1783 = !{!1784, !1790}
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1782, file: !128, line: 137, baseType: !1785, size: 128)
!1785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1786, line: 6, size: 128, elements: !1787)
!1786 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1787 = !{!1788, !1789}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1785, file: !1786, line: 7, baseType: !260, size: 64)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1785, file: !1786, line: 8, baseType: !260, size: 64, offset: 64)
!1790 = !DIDerivedType(tag: DW_TAG_member, scope: !1782, file: !128, line: 138, baseType: !1791)
!1791 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1782, file: !128, line: 138, elements: !1792)
!1792 = !{!1793, !1795}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1791, file: !128, line: 138, baseType: !1794)
!1794 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1791, file: !128, line: 138, elements: !611)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1791, file: !128, line: 138, baseType: !1796)
!1796 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1785, elements: !716)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1565, file: !136, line: 147, baseType: !33, size: 64, offset: 64)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1523, file: !136, line: 161, baseType: !626, size: 128, align: 64)
!1799 = !DIDerivedType(tag: DW_TAG_member, scope: !1519, file: !136, line: 164, baseType: !1800, size: 32, offset: 384)
!1800 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1519, file: !136, line: 164, size: 32, elements: !1801)
!1801 = !{!1802, !1803}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1800, file: !136, line: 169, baseType: !62, size: 32)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1800, file: !136, line: 177, baseType: !7, size: 32)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1519, file: !136, line: 181, baseType: !62, size: 32, offset: 416)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !152, line: 42, size: 384, elements: !1807)
!1807 = !{!1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_write", scope: !1806, file: !152, line: 43, baseType: !1069, size: 64)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "pages_skipped", scope: !1806, file: !152, line: 45, baseType: !1069, size: 64, offset: 64)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "range_start", scope: !1806, file: !152, line: 52, baseType: !54, size: 64, offset: 128)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "range_end", scope: !1806, file: !152, line: 53, baseType: !54, size: 64, offset: 192)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "sync_mode", scope: !1806, file: !152, line: 55, baseType: !151, size: 32, offset: 256)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "for_kupdate", scope: !1806, file: !152, line: 57, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "for_background", scope: !1806, file: !152, line: 58, baseType: !7, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "tagged_writepages", scope: !1806, file: !152, line: 59, baseType: !7, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "for_reclaim", scope: !1806, file: !152, line: 60, baseType: !7, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "range_cyclic", scope: !1806, file: !152, line: 61, baseType: !7, size: 1, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "for_sync", scope: !1806, file: !152, line: 62, baseType: !7, size: 1, offset: 293, flags: DIFlagBitField, extraData: i64 288)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "unpinned_fscache_wb", scope: !1806, file: !152, line: 63, baseType: !7, size: 1, offset: 294, flags: DIFlagBitField, extraData: i64 288)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_owner", scope: !1806, file: !152, line: 71, baseType: !7, size: 1, offset: 295, flags: DIFlagBitField, extraData: i64 288)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "swap_plug", scope: !1806, file: !152, line: 78, baseType: !1822, size: 64, offset: 320)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1824 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_iocb", file: !152, line: 78, flags: DIFlagFwdDecl)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1512, file: !223, line: 406, baseType: !1826, size: 64, offset: 64)
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1827, size: 64)
!1827 = !DISubroutineType(types: !1828)
!1828 = !{!35, !618, !1829}
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !136, line: 293, size: 1536, elements: !1831)
!1831 = !{!1832, !1862, !1876}
!1832 = !DIDerivedType(tag: DW_TAG_member, scope: !1830, file: !136, line: 295, baseType: !1833, size: 512)
!1833 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1830, file: !136, line: 295, size: 512, elements: !1834)
!1834 = !{!1835, !1861}
!1835 = !DIDerivedType(tag: DW_TAG_member, scope: !1833, file: !136, line: 296, baseType: !1836, size: 448)
!1836 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1833, file: !136, line: 296, size: 448, elements: !1837)
!1837 = !{!1838, !1839, !1848, !1849, !1850, !1859, !1860}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1836, file: !136, line: 298, baseType: !52, size: 64)
!1839 = !DIDerivedType(tag: DW_TAG_member, scope: !1836, file: !136, line: 299, baseType: !1840, size: 128, offset: 64)
!1840 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1836, file: !136, line: 299, size: 128, elements: !1841)
!1841 = !{!1842, !1843}
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1840, file: !136, line: 300, baseType: !110, size: 128)
!1843 = !DIDerivedType(tag: DW_TAG_member, scope: !1840, file: !136, line: 302, baseType: !1844, size: 128)
!1844 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1840, file: !136, line: 302, size: 128, elements: !1845)
!1845 = !{!1846, !1847}
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1844, file: !136, line: 303, baseType: !33, size: 64)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1844, file: !136, line: 305, baseType: !7, size: 32, offset: 64)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1836, file: !136, line: 310, baseType: !1498, size: 64, offset: 192)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1836, file: !136, line: 311, baseType: !52, size: 64, offset: 256)
!1850 = !DIDerivedType(tag: DW_TAG_member, scope: !1836, file: !136, line: 312, baseType: !1851, size: 64, offset: 320)
!1851 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1836, file: !136, line: 312, size: 64, elements: !1852)
!1852 = !{!1853, !1854}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1851, file: !136, line: 313, baseType: !33, size: 64)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1851, file: !136, line: 314, baseType: !1855, size: 64)
!1855 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !136, line: 257, baseType: !1856)
!1856 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !136, line: 255, size: 64, elements: !1857)
!1857 = !{!1858}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1856, file: !136, line: 256, baseType: !52, size: 64)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1836, file: !136, line: 316, baseType: !62, size: 32, offset: 384)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1836, file: !136, line: 317, baseType: !62, size: 32, offset: 416)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1833, file: !136, line: 323, baseType: !1519, size: 512, align: 128)
!1862 = !DIDerivedType(tag: DW_TAG_member, scope: !1830, file: !136, line: 325, baseType: !1863, size: 512, offset: 512)
!1863 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1830, file: !136, line: 325, size: 512, elements: !1864)
!1864 = !{!1865, !1875}
!1865 = !DIDerivedType(tag: DW_TAG_member, scope: !1863, file: !136, line: 326, baseType: !1866, size: 320)
!1866 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1863, file: !136, line: 326, size: 320, elements: !1867)
!1867 = !{!1868, !1869, !1870, !1871, !1872, !1873, !1874}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1866, file: !136, line: 327, baseType: !52, size: 64)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1866, file: !136, line: 328, baseType: !52, size: 64, offset: 64)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1866, file: !136, line: 329, baseType: !52, size: 64, offset: 128)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1866, file: !136, line: 331, baseType: !62, size: 32, offset: 192)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1866, file: !136, line: 332, baseType: !62, size: 32, offset: 224)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1866, file: !136, line: 333, baseType: !62, size: 32, offset: 256)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1866, file: !136, line: 335, baseType: !7, size: 32, offset: 288)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1863, file: !136, line: 339, baseType: !1519, size: 512, align: 128)
!1876 = !DIDerivedType(tag: DW_TAG_member, scope: !1830, file: !136, line: 341, baseType: !1877, size: 512, offset: 1024)
!1877 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1830, file: !136, line: 341, size: 512, elements: !1878)
!1878 = !{!1879, !1888, !1894}
!1879 = !DIDerivedType(tag: DW_TAG_member, scope: !1877, file: !136, line: 342, baseType: !1880, size: 384)
!1880 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1877, file: !136, line: 342, size: 384, elements: !1881)
!1881 = !{!1882, !1883, !1884, !1885, !1886, !1887}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1880, file: !136, line: 343, baseType: !52, size: 64)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1880, file: !136, line: 344, baseType: !52, size: 64, offset: 64)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1880, file: !136, line: 346, baseType: !33, size: 64, offset: 128)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1880, file: !136, line: 347, baseType: !33, size: 64, offset: 192)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1880, file: !136, line: 348, baseType: !33, size: 64, offset: 256)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1880, file: !136, line: 349, baseType: !33, size: 64, offset: 320)
!1888 = !DIDerivedType(tag: DW_TAG_member, scope: !1877, file: !136, line: 352, baseType: !1889, size: 256)
!1889 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1877, file: !136, line: 352, size: 256, elements: !1890)
!1890 = !{!1891, !1892, !1893}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1889, file: !136, line: 353, baseType: !52, size: 64)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1889, file: !136, line: 354, baseType: !52, size: 64, offset: 64)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1889, file: !136, line: 356, baseType: !110, size: 128, offset: 128)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1877, file: !136, line: 359, baseType: !1519, size: 512, align: 128)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1512, file: !223, line: 409, baseType: !1896, size: 64, offset: 128)
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1897 = !DISubroutineType(types: !1898)
!1898 = !{!35, !1498, !1805}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1512, file: !223, line: 412, baseType: !1900, size: 64, offset: 192)
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1901 = !DISubroutineType(types: !1902)
!1902 = !{!838, !1498, !1829}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1512, file: !223, line: 414, baseType: !1904, size: 64, offset: 256)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = !DISubroutineType(types: !1906)
!1906 = !{null, !1907}
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !1909, line: 1276, size: 448, elements: !1910)
!1909 = !DIFile(filename: "./include/linux/pagemap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "76aa51d60be898371b0ef39d034a0ec4")
!1910 = !{!1911, !1912, !1913, !1915, !1916, !1917, !1918, !1919}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1908, file: !1909, line: 1277, baseType: !618, size: 64)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1908, file: !1909, line: 1278, baseType: !1498, size: 64, offset: 64)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "ra", scope: !1908, file: !1909, line: 1279, baseType: !1914, size: 64, offset: 128)
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "_index", scope: !1908, file: !1909, line: 1281, baseType: !52, size: 64, offset: 192)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages", scope: !1908, file: !1909, line: 1282, baseType: !7, size: 32, offset: 256)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "_batch_count", scope: !1908, file: !1909, line: 1283, baseType: !7, size: 32, offset: 288)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "_workingset", scope: !1908, file: !1909, line: 1284, baseType: !838, size: 8, offset: 320)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "_pflags", scope: !1908, file: !1909, line: 1285, baseType: !52, size: 64, offset: 384)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1512, file: !223, line: 416, baseType: !1921, size: 64, offset: 320)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DISubroutineType(types: !1923)
!1923 = !{!35, !618, !1498, !54, !7, !1924, !1925}
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1512, file: !223, line: 419, baseType: !1927, size: 64, offset: 384)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = !DISubroutineType(types: !1929)
!1929 = !{!35, !618, !1498, !54, !7, !7, !1518, !33}
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1512, file: !223, line: 424, baseType: !1931, size: 64, offset: 448)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = !DISubroutineType(types: !1933)
!1933 = !{!1934, !1498, !1934}
!1934 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !38, line: 131, baseType: !260)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1512, file: !223, line: 425, baseType: !1936, size: 64, offset: 512)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = !DISubroutineType(types: !1938)
!1938 = !{null, !1829, !48, !48}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1512, file: !223, line: 426, baseType: !1940, size: 64, offset: 576)
!1940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1941, size: 64)
!1941 = !DISubroutineType(types: !1942)
!1942 = !{!838, !1829, !1344}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1512, file: !223, line: 427, baseType: !1944, size: 64, offset: 640)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = !DISubroutineType(types: !1946)
!1946 = !{null, !1829}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1512, file: !223, line: 428, baseType: !1948, size: 64, offset: 704)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = !DISubroutineType(types: !1950)
!1950 = !{!1292, !1951, !1989}
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !223, line: 373, size: 384, elements: !1953)
!1953 = !{!1954, !1955, !1956, !1960, !1961, !1962, !1963}
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1952, file: !223, line: 374, baseType: !618, size: 64)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1952, file: !223, line: 375, baseType: !54, size: 64, offset: 64)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1952, file: !223, line: 376, baseType: !1957, size: 64, offset: 128)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = !DISubroutineType(types: !1959)
!1959 = !{null, !1951, !1069}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1952, file: !223, line: 377, baseType: !33, size: 64, offset: 192)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1952, file: !223, line: 378, baseType: !35, size: 32, offset: 256)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1952, file: !223, line: 379, baseType: !106, size: 16, offset: 288)
!1963 = !DIDerivedType(tag: DW_TAG_member, scope: !1952, file: !223, line: 380, baseType: !1964, size: 64, offset: 320)
!1964 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1952, file: !223, line: 380, size: 64, elements: !1965)
!1965 = !{!1966, !1985}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1964, file: !223, line: 386, baseType: !1967, size: 64)
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !1909, line: 998, size: 448, elements: !1969)
!1969 = !{!1970, !1971, !1972}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "folio", scope: !1968, file: !1909, line: 999, baseType: !1829, size: 64)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !1968, file: !1909, line: 1000, baseType: !35, size: 32, offset: 64)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1968, file: !1909, line: 1001, baseType: !1973, size: 320, offset: 128)
!1973 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !68, line: 14, baseType: !1974)
!1974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !68, line: 30, size: 320, elements: !1975)
!1975 = !{!1976, !1977, !1978, !1984}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1974, file: !68, line: 31, baseType: !7, size: 32)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1974, file: !68, line: 32, baseType: !33, size: 64, offset: 64)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1974, file: !68, line: 33, baseType: !1979, size: 64, offset: 128)
!1979 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !68, line: 16, baseType: !1980)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = !DISubroutineType(types: !1982)
!1982 = !{!35, !1983, !7, !35, !33}
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1974, file: !68, line: 34, baseType: !110, size: 128, offset: 192)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1964, file: !223, line: 395, baseType: !1986, size: 64)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = !DISubroutineType(types: !1988)
!1988 = !{!1292, !33}
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !223, line: 69, flags: DIFlagFwdDecl)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1512, file: !223, line: 433, baseType: !1992, size: 64, offset: 768)
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!1993 = !DISubroutineType(types: !1994)
!1994 = !{!35, !1498, !1829, !1829, !156}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1512, file: !223, line: 435, baseType: !1996, size: 64, offset: 832)
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{!35, !1829}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1512, file: !223, line: 436, baseType: !2000, size: 64, offset: 896)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = !DISubroutineType(types: !2002)
!2002 = !{!838, !1829, !48, !48}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1512, file: !223, line: 438, baseType: !2004, size: 64, offset: 960)
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2005 = !DISubroutineType(types: !2006)
!2006 = !{null, !1829, !2007, !2007}
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1512, file: !223, line: 439, baseType: !2009, size: 64, offset: 1024)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = !DISubroutineType(types: !2011)
!2011 = !{!35, !1498, !1518}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1512, file: !223, line: 442, baseType: !2013, size: 64, offset: 1088)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = !DISubroutineType(types: !2015)
!2015 = !{!35, !2016, !618, !2493}
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !2018, line: 282, size: 2176, elements: !2019)
!2018 = !DIFile(filename: "./include/linux/swap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b48f968c4d3c1313a5ba7451c8be5b79")
!2019 = !{!2020, !2021, !2022, !2023, !2024, !2026, !2027, !2029, !2036, !2041, !2042, !2043, !2044, !2045, !2046, !2047, !2049, !2055, !2056, !2484, !2485, !2486, !2487, !2488, !2489, !2490, !2491}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !2017, file: !2018, line: 283, baseType: !1582, size: 128)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2017, file: !2018, line: 284, baseType: !52, size: 64, offset: 128)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2017, file: !2018, line: 285, baseType: !807, size: 16, offset: 192)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2017, file: !2018, line: 286, baseType: !582, size: 320, offset: 256)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2017, file: !2018, line: 287, baseType: !2025, size: 8, offset: 576)
!2025 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2017, file: !2018, line: 288, baseType: !7, size: 32, offset: 608)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "swap_map", scope: !2017, file: !2018, line: 289, baseType: !2028, size: 64, offset: 640)
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_info", scope: !2017, file: !2018, line: 290, baseType: !2030, size: 64, offset: 704)
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64)
!2031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_cluster_info", file: !2018, line: 250, size: 64, elements: !2032)
!2032 = !{!2033, !2034, !2035}
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2031, file: !2018, line: 251, baseType: !72, size: 32)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2031, file: !2018, line: 257, baseType: !7, size: 24, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2031, file: !2018, line: 258, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "free_clusters", scope: !2017, file: !2018, line: 291, baseType: !2037, size: 128, offset: 768)
!2037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_cluster_list", file: !2018, line: 274, size: 128, elements: !2038)
!2038 = !{!2039, !2040}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2037, file: !2018, line: 275, baseType: !2031, size: 64)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !2037, file: !2018, line: 276, baseType: !2031, size: 64, offset: 64)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "lowest_bit", scope: !2017, file: !2018, line: 292, baseType: !7, size: 32, offset: 896)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "highest_bit", scope: !2017, file: !2018, line: 293, baseType: !7, size: 32, offset: 928)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2017, file: !2018, line: 294, baseType: !7, size: 32, offset: 960)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "inuse_pages", scope: !2017, file: !2018, line: 295, baseType: !7, size: 32, offset: 992)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_next", scope: !2017, file: !2018, line: 296, baseType: !7, size: 32, offset: 1024)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_nr", scope: !2017, file: !2018, line: 297, baseType: !7, size: 32, offset: 1056)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_next_cpu", scope: !2017, file: !2018, line: 298, baseType: !2048, size: 64, offset: 1088)
!2048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_cluster", scope: !2017, file: !2018, line: 299, baseType: !2050, size: 64, offset: 1152)
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_cluster", file: !2018, line: 269, size: 96, elements: !2052)
!2052 = !{!2053, !2054}
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2051, file: !2018, line: 270, baseType: !2031, size: 64)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2051, file: !2018, line: 271, baseType: !7, size: 32, offset: 64)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "swap_extent_root", scope: !2017, file: !2018, line: 300, baseType: !476, size: 64, offset: 1216)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !2017, file: !2018, line: 301, baseType: !2057, size: 64, offset: 1280)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !2059, line: 40, size: 7424, elements: !2060)
!2059 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b57ddd3a65e6bb0d967309f2bec65a56")
!2060 = !{!2061, !2062, !2063, !2066, !2070, !2073, !2074, !2075, !2076, !2077, !2078, !2079, !2080, !2081, !2082, !2083, !2084, !2088, !2089, !2090, !2091, !2092, !2093, !2094, !2097, !2098}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "bd_start_sect", scope: !2058, file: !2059, line: 41, baseType: !1934, size: 64)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "bd_nr_sectors", scope: !2058, file: !2059, line: 42, baseType: !1934, size: 64, offset: 64)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !2058, file: !2059, line: 43, baseType: !2064, size: 64, offset: 128)
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !279, line: 1453, flags: DIFlagFwdDecl)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "bd_queue", scope: !2058, file: !2059, line: 44, baseType: !2067, size: 64, offset: 192)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2069, line: 74, flags: DIFlagFwdDecl)
!2069 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stats", scope: !2058, file: !2059, line: 45, baseType: !2071, size: 64, offset: 256)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !2059, line: 45, flags: DIFlagFwdDecl)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stamp", scope: !2058, file: !2059, line: 46, baseType: !52, size: 64, offset: 320)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "bd_read_only", scope: !2058, file: !2059, line: 47, baseType: !838, size: 8, offset: 384)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !2058, file: !2059, line: 48, baseType: !96, size: 8, offset: 392)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !2058, file: !2059, line: 49, baseType: !838, size: 8, offset: 400)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "bd_has_submit_bio", scope: !2058, file: !2059, line: 50, baseType: !838, size: 8, offset: 408)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !2058, file: !2059, line: 51, baseType: !1214, size: 32, offset: 416)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !2058, file: !2059, line: 52, baseType: !62, size: 32, offset: 448)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !2058, file: !2059, line: 53, baseType: !72, size: 32, offset: 480)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !2058, file: !2059, line: 54, baseType: !1140, size: 64, offset: 512)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !2058, file: !2059, line: 55, baseType: !33, size: 64, offset: 576)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !2058, file: !2059, line: 56, baseType: !33, size: 64, offset: 640)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_ops", scope: !2058, file: !2059, line: 57, baseType: !2085, size: 64, offset: 704)
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2086, size: 64)
!2086 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2087)
!2087 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_holder_ops", file: !2059, line: 57, flags: DIFlagFwdDecl)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_lock", scope: !2058, file: !2059, line: 58, baseType: !646, size: 256, offset: 768)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !2058, file: !2059, line: 60, baseType: !35, size: 32, offset: 1024)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !2058, file: !2059, line: 61, baseType: !35, size: 32, offset: 1056)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_dir", scope: !2058, file: !2059, line: 62, baseType: !1400, size: 64, offset: 1088)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !2058, file: !2059, line: 65, baseType: !646, size: 256, offset: 1152)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_sb", scope: !2058, file: !2059, line: 66, baseType: !1348, size: 64, offset: 1408)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "bd_meta_info", scope: !2058, file: !2059, line: 68, baseType: !2095, size: 64, offset: 1472)
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !2059, line: 68, flags: DIFlagFwdDecl)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "bd_ro_warned", scope: !2058, file: !2059, line: 72, baseType: !838, size: 8, offset: 1536)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "bd_device", scope: !2058, file: !2059, line: 77, baseType: !2099, size: 5824, offset: 1600)
!2099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !170, line: 705, size: 5824, elements: !2100)
!2100 = !{!2101, !2102, !2104, !2107, !2108, !2161, !2231, !2232, !2233, !2234, !2235, !2242, !2345, !2358, !2368, !2372, !2373, !2374, !2375, !2379, !2386, !2387, !2390, !2393, !2397, !2400, !2401, !2402, !2403, !2404, !2405, !2461, !2462, !2463, !2466, !2469, !2478, !2479, !2480, !2481, !2482, !2483}
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2099, file: !170, line: 706, baseType: !1394, size: 512)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2099, file: !170, line: 707, baseType: !2103, size: 64, offset: 512)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2099, file: !170, line: 709, baseType: !2105, size: 64, offset: 576)
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2106, size: 64)
!2106 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !170, line: 37, flags: DIFlagFwdDecl)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2099, file: !170, line: 711, baseType: !29, size: 64, offset: 640)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2099, file: !170, line: 712, baseType: !2109, size: 64, offset: 704)
!2109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2110, size: 64)
!2110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2111)
!2111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !170, line: 89, size: 384, elements: !2112)
!2112 = !{!2113, !2114, !2115, !2121, !2126, !2130}
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2111, file: !170, line: 90, baseType: !29, size: 64)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2111, file: !170, line: 91, baseType: !1474, size: 64, offset: 64)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2111, file: !170, line: 92, baseType: !2116, size: 64, offset: 128)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = !DISubroutineType(types: !2118)
!2118 = !{!35, !2119, !1430}
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2099)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2111, file: !170, line: 93, baseType: !2122, size: 64, offset: 192)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = !DISubroutineType(types: !2124)
!2124 = !{!849, !2119, !2125, !1035, !1036}
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2111, file: !170, line: 95, baseType: !2127, size: 64, offset: 256)
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2128 = !DISubroutineType(types: !2129)
!2129 = !{null, !2103}
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2111, file: !170, line: 97, baseType: !2131, size: 64, offset: 320)
!2131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2132, size: 64)
!2132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2133)
!2133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !177, line: 286, size: 1472, elements: !2134)
!2134 = !{!2135, !2139, !2140, !2141, !2142, !2143, !2144, !2145, !2146, !2147, !2148, !2149, !2150, !2151, !2152, !2153, !2154, !2155, !2156, !2157, !2158, !2159, !2160}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2133, file: !177, line: 287, baseType: !2136, size: 64)
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2137, size: 64)
!2137 = !DISubroutineType(types: !2138)
!2138 = !{!35, !2103}
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2133, file: !177, line: 288, baseType: !2127, size: 64, offset: 64)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2133, file: !177, line: 289, baseType: !2136, size: 64, offset: 128)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2133, file: !177, line: 290, baseType: !2136, size: 64, offset: 192)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2133, file: !177, line: 291, baseType: !2136, size: 64, offset: 256)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2133, file: !177, line: 292, baseType: !2136, size: 64, offset: 320)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2133, file: !177, line: 293, baseType: !2136, size: 64, offset: 384)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2133, file: !177, line: 294, baseType: !2136, size: 64, offset: 448)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2133, file: !177, line: 295, baseType: !2136, size: 64, offset: 512)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2133, file: !177, line: 296, baseType: !2136, size: 64, offset: 576)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2133, file: !177, line: 297, baseType: !2136, size: 64, offset: 640)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2133, file: !177, line: 298, baseType: !2136, size: 64, offset: 704)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2133, file: !177, line: 299, baseType: !2136, size: 64, offset: 768)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2133, file: !177, line: 300, baseType: !2136, size: 64, offset: 832)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2133, file: !177, line: 301, baseType: !2136, size: 64, offset: 896)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2133, file: !177, line: 302, baseType: !2136, size: 64, offset: 960)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2133, file: !177, line: 303, baseType: !2136, size: 64, offset: 1024)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2133, file: !177, line: 304, baseType: !2136, size: 64, offset: 1088)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2133, file: !177, line: 305, baseType: !2136, size: 64, offset: 1152)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2133, file: !177, line: 306, baseType: !2136, size: 64, offset: 1216)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2133, file: !177, line: 307, baseType: !2136, size: 64, offset: 1280)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2133, file: !177, line: 308, baseType: !2136, size: 64, offset: 1344)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2133, file: !177, line: 309, baseType: !2136, size: 64, offset: 1408)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2099, file: !170, line: 714, baseType: !2162, size: 64, offset: 768)
!2162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2163, size: 64)
!2163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2164)
!2164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2165, line: 80, size: 1344, elements: !2166)
!2165 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!2166 = !{!2167, !2168, !2169, !2170, !2171, !2172, !2213, !2214, !2215, !2216, !2217, !2218, !2219, !2220, !2221, !2222, !2223, !2224, !2225, !2226, !2230}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2164, file: !2165, line: 81, baseType: !29, size: 64)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2164, file: !2165, line: 82, baseType: !29, size: 64, offset: 64)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2164, file: !2165, line: 83, baseType: !1474, size: 64, offset: 128)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2164, file: !2165, line: 84, baseType: !1474, size: 64, offset: 192)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2164, file: !2165, line: 85, baseType: !1474, size: 64, offset: 256)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2164, file: !2165, line: 87, baseType: !2173, size: 64, offset: 320)
!2173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2174, size: 64)
!2174 = !DISubroutineType(types: !2175)
!2175 = !{!35, !2103, !2176}
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2177, size: 64)
!2177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !164, line: 96, size: 1152, elements: !2178)
!2178 = !{!2179, !2180, !2181, !2182, !2183, !2184, !2185, !2189, !2193, !2194, !2195, !2196, !2197, !2205, !2206, !2207, !2208, !2209, !2210}
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2177, file: !164, line: 97, baseType: !29, size: 64)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2177, file: !164, line: 98, baseType: !2162, size: 64, offset: 64)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2177, file: !164, line: 100, baseType: !1381, size: 64, offset: 128)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2177, file: !164, line: 101, baseType: !29, size: 64, offset: 192)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2177, file: !164, line: 103, baseType: !838, size: 8, offset: 256)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2177, file: !164, line: 104, baseType: !163, size: 32, offset: 288)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2177, file: !164, line: 106, baseType: !2186, size: 64, offset: 320)
!2186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2187, size: 64)
!2187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2188)
!2188 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !164, line: 106, flags: DIFlagFwdDecl)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2177, file: !164, line: 107, baseType: !2190, size: 64, offset: 384)
!2190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2191, size: 64)
!2191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2192)
!2192 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !164, line: 107, flags: DIFlagFwdDecl)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2177, file: !164, line: 109, baseType: !2136, size: 64, offset: 448)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2177, file: !164, line: 110, baseType: !2127, size: 64, offset: 512)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2177, file: !164, line: 111, baseType: !2136, size: 64, offset: 576)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2177, file: !164, line: 112, baseType: !2127, size: 64, offset: 640)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2177, file: !164, line: 113, baseType: !2198, size: 64, offset: 704)
!2198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2199, size: 64)
!2199 = !DISubroutineType(types: !2200)
!2200 = !{!35, !2103, !2201}
!2201 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !177, line: 60, baseType: !2202)
!2202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !177, line: 58, size: 32, elements: !2203)
!2203 = !{!2204}
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2202, file: !177, line: 59, baseType: !35, size: 32)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2177, file: !164, line: 114, baseType: !2136, size: 64, offset: 768)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2177, file: !164, line: 115, baseType: !1474, size: 64, offset: 832)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2177, file: !164, line: 116, baseType: !1474, size: 64, offset: 896)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2177, file: !164, line: 118, baseType: !2131, size: 64, offset: 960)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2177, file: !164, line: 119, baseType: !2127, size: 64, offset: 1024)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2177, file: !164, line: 121, baseType: !2211, size: 64, offset: 1088)
!2211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2212, size: 64)
!2212 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !164, line: 121, flags: DIFlagFwdDecl)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2164, file: !2165, line: 88, baseType: !2116, size: 64, offset: 384)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2164, file: !2165, line: 89, baseType: !2136, size: 64, offset: 448)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2164, file: !2165, line: 90, baseType: !2127, size: 64, offset: 512)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2164, file: !2165, line: 91, baseType: !2127, size: 64, offset: 576)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2164, file: !2165, line: 92, baseType: !2127, size: 64, offset: 640)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2164, file: !2165, line: 94, baseType: !2136, size: 64, offset: 704)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2164, file: !2165, line: 95, baseType: !2136, size: 64, offset: 768)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2164, file: !2165, line: 97, baseType: !2198, size: 64, offset: 832)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2164, file: !2165, line: 98, baseType: !2136, size: 64, offset: 896)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2164, file: !2165, line: 100, baseType: !2136, size: 64, offset: 960)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2164, file: !2165, line: 102, baseType: !2136, size: 64, offset: 1024)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !2164, file: !2165, line: 103, baseType: !2127, size: 64, offset: 1088)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2164, file: !2165, line: 105, baseType: !2131, size: 64, offset: 1152)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2164, file: !2165, line: 107, baseType: !2227, size: 64, offset: 1216)
!2227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2228, size: 64)
!2228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2229)
!2229 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2165, line: 107, flags: DIFlagFwdDecl)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2164, file: !2165, line: 109, baseType: !838, size: 8, offset: 1280)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2099, file: !170, line: 715, baseType: !2176, size: 64, offset: 832)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2099, file: !170, line: 717, baseType: !33, size: 64, offset: 896)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2099, file: !170, line: 719, baseType: !33, size: 64, offset: 960)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2099, file: !170, line: 721, baseType: !646, size: 256, offset: 1024)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2099, file: !170, line: 725, baseType: !2236, size: 448, offset: 1280)
!2236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !170, line: 517, size: 448, elements: !2237)
!2237 = !{!2238, !2239, !2240, !2241}
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2236, file: !170, line: 518, baseType: !110, size: 128)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2236, file: !170, line: 519, baseType: !110, size: 128, offset: 128)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !2236, file: !170, line: 520, baseType: !110, size: 128, offset: 256)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2236, file: !170, line: 521, baseType: !169, size: 32, offset: 384)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2099, file: !170, line: 726, baseType: !2243, size: 2496, offset: 1728)
!2243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !177, line: 663, size: 2496, elements: !2244)
!2244 = !{!2245, !2246, !2247, !2248, !2249, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2260, !2298, !2299, !2300, !2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2309, !2310, !2311, !2312, !2313, !2314, !2315, !2316, !2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2332, !2338, !2342}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !2243, file: !177, line: 664, baseType: !2201, size: 32)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !2243, file: !177, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !2243, file: !177, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !2243, file: !177, line: 667, baseType: !838, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !2243, file: !177, line: 668, baseType: !838, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !2243, file: !177, line: 669, baseType: !838, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !2243, file: !177, line: 670, baseType: !838, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !2243, file: !177, line: 671, baseType: !838, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !2243, file: !177, line: 672, baseType: !838, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2243, file: !177, line: 673, baseType: !838, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !2243, file: !177, line: 674, baseType: !838, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !2243, file: !177, line: 675, baseType: !272, size: 32, offset: 64)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2243, file: !177, line: 676, baseType: !72, size: 32, offset: 96)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2243, file: !177, line: 678, baseType: !110, size: 128, offset: 128)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !2243, file: !177, line: 679, baseType: !1010, size: 256, offset: 256)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2243, file: !177, line: 680, baseType: !2261, size: 64, offset: 512)
!2261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2262, size: 64)
!2262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !2263, line: 43, size: 1536, elements: !2264)
!2263 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!2264 = !{!2265, !2266, !2267, !2268, !2269, !2272, !2284, !2285, !2286, !2287, !2288, !2289, !2290, !2291, !2292, !2293, !2294, !2295, !2296, !2297}
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2262, file: !2263, line: 44, baseType: !29, size: 64)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2262, file: !2263, line: 45, baseType: !35, size: 32, offset: 64)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2262, file: !2263, line: 46, baseType: !110, size: 128, offset: 128)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2262, file: !2263, line: 47, baseType: !72, size: 32, offset: 256)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2262, file: !2263, line: 48, baseType: !2270, size: 64, offset: 320)
!2270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2271, size: 64)
!2271 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !177, line: 629, flags: DIFlagFwdDecl)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2262, file: !2263, line: 49, baseType: !2273, size: 320, offset: 384)
!2273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2274, line: 11, size: 320, elements: !2275)
!2274 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2275 = !{!2276, !2277, !2278, !2283}
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2273, file: !2274, line: 16, baseType: !698, size: 128)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2273, file: !2274, line: 17, baseType: !52, size: 64, offset: 128)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2273, file: !2274, line: 18, baseType: !2279, size: 64, offset: 192)
!2279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2280, size: 64)
!2280 = !DISubroutineType(types: !2281)
!2281 = !{null, !2282}
!2282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2273, size: 64)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2273, file: !2274, line: 19, baseType: !272, size: 32, offset: 256)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2262, file: !2263, line: 50, baseType: !52, size: 64, offset: 704)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !2262, file: !2263, line: 51, baseType: !416, size: 64, offset: 768)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !2262, file: !2263, line: 52, baseType: !416, size: 64, offset: 832)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !2262, file: !2263, line: 53, baseType: !416, size: 64, offset: 896)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !2262, file: !2263, line: 54, baseType: !416, size: 64, offset: 960)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !2262, file: !2263, line: 55, baseType: !416, size: 64, offset: 1024)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !2262, file: !2263, line: 56, baseType: !52, size: 64, offset: 1088)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !2262, file: !2263, line: 57, baseType: !52, size: 64, offset: 1152)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !2262, file: !2263, line: 58, baseType: !52, size: 64, offset: 1216)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !2262, file: !2263, line: 59, baseType: !52, size: 64, offset: 1280)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !2262, file: !2263, line: 60, baseType: !52, size: 64, offset: 1344)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2262, file: !2263, line: 61, baseType: !2103, size: 64, offset: 1408)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2262, file: !2263, line: 62, baseType: !838, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !2262, file: !2263, line: 63, baseType: !838, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !2243, file: !177, line: 681, baseType: !838, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !2243, file: !177, line: 682, baseType: !838, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !2243, file: !177, line: 683, baseType: !838, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !2243, file: !177, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !2243, file: !177, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !2243, file: !177, line: 690, baseType: !408, size: 512, offset: 640)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2243, file: !177, line: 691, baseType: !260, size: 64, offset: 1152)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2243, file: !177, line: 692, baseType: !971, size: 256, offset: 1216)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !2243, file: !177, line: 693, baseType: !67, size: 192, offset: 1472)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2243, file: !177, line: 694, baseType: !2270, size: 64, offset: 1664)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !2243, file: !177, line: 695, baseType: !62, size: 32, offset: 1728)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2243, file: !177, line: 696, baseType: !62, size: 32, offset: 1760)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !2243, file: !177, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !2243, file: !177, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !2243, file: !177, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !2243, file: !177, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !2243, file: !177, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !2243, file: !177, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !2243, file: !177, line: 703, baseType: !838, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !2243, file: !177, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !2243, file: !177, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !2243, file: !177, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !2243, file: !177, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !2243, file: !177, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !2243, file: !177, line: 709, baseType: !7, size: 32, offset: 1824)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2243, file: !177, line: 710, baseType: !176, size: 32, offset: 1856)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !2243, file: !177, line: 711, baseType: !184, size: 32, offset: 1888)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !2243, file: !177, line: 712, baseType: !184, size: 32, offset: 1920)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !2243, file: !177, line: 713, baseType: !35, size: 32, offset: 1952)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !2243, file: !177, line: 714, baseType: !35, size: 32, offset: 1984)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !2243, file: !177, line: 715, baseType: !260, size: 64, offset: 2048)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !2243, file: !177, line: 716, baseType: !260, size: 64, offset: 2112)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !2243, file: !177, line: 717, baseType: !260, size: 64, offset: 2176)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !2243, file: !177, line: 718, baseType: !260, size: 64, offset: 2240)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !2243, file: !177, line: 720, baseType: !2333, size: 64, offset: 2304)
!2333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2334, size: 64)
!2334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !177, line: 632, size: 64, elements: !2335)
!2335 = !{!2336, !2337}
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2334, file: !177, line: 633, baseType: !72, size: 32)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2334, file: !177, line: 634, baseType: !7, size: 32, offset: 32)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !2243, file: !177, line: 721, baseType: !2339, size: 64, offset: 2368)
!2339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2340, size: 64)
!2340 = !DISubroutineType(types: !2341)
!2341 = !{null, !2103, !771}
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !2243, file: !177, line: 722, baseType: !2343, size: 64, offset: 2432)
!2343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2344, size: 64)
!2344 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !177, line: 722, flags: DIFlagFwdDecl)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2099, file: !170, line: 727, baseType: !2346, size: 64, offset: 4224)
!2346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2347, size: 64)
!2347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !177, line: 742, size: 1792, elements: !2348)
!2348 = !{!2349, !2350, !2351, !2355, !2356, !2357}
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2347, file: !177, line: 743, baseType: !2133, size: 1472)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2347, file: !177, line: 744, baseType: !2136, size: 64, offset: 1472)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2347, file: !177, line: 745, baseType: !2352, size: 64, offset: 1536)
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 64)
!2353 = !DISubroutineType(types: !2354)
!2354 = !{null, !2103, !838}
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2347, file: !177, line: 746, baseType: !2136, size: 64, offset: 1600)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2347, file: !177, line: 747, baseType: !2127, size: 64, offset: 1664)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !2347, file: !177, line: 748, baseType: !2127, size: 64, offset: 1728)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !2099, file: !170, line: 736, baseType: !2359, size: 128, offset: 4288)
!2359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !170, line: 529, size: 128, elements: !2360)
!2360 = !{!2361, !2365}
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !2359, file: !170, line: 531, baseType: !2362, size: 64)
!2362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2363, size: 64)
!2363 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !2364, line: 13, flags: DIFlagFwdDecl)
!2364 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2359, file: !170, line: 532, baseType: !2366, size: 64, offset: 64)
!2366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2367, size: 64)
!2367 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !170, line: 49, flags: DIFlagFwdDecl)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !2099, file: !170, line: 738, baseType: !2369, size: 64, offset: 4416)
!2369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2370, size: 64)
!2370 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2371)
!2371 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !170, line: 738, flags: DIFlagFwdDecl)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2099, file: !170, line: 740, baseType: !259, size: 64, offset: 4480)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2099, file: !170, line: 741, baseType: !260, size: 64, offset: 4544)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !2099, file: !170, line: 746, baseType: !260, size: 64, offset: 4608)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !2099, file: !170, line: 747, baseType: !2376, size: 64, offset: 4672)
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2377, size: 64)
!2377 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2378)
!2378 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !170, line: 747, flags: DIFlagFwdDecl)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2099, file: !170, line: 749, baseType: !2380, size: 64, offset: 4736)
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2381, size: 64)
!2381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !170, line: 428, size: 128, elements: !2382)
!2382 = !{!2383, !2384, !2385}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2381, file: !170, line: 433, baseType: !7, size: 32)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !2381, file: !170, line: 434, baseType: !7, size: 32, offset: 32)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2381, file: !170, line: 435, baseType: !52, size: 64, offset: 64)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2099, file: !170, line: 751, baseType: !110, size: 128, offset: 4800)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !2099, file: !170, line: 762, baseType: !2388, size: 64, offset: 4928)
!2388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2389, size: 64)
!2389 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !170, line: 762, flags: DIFlagFwdDecl)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2099, file: !170, line: 770, baseType: !2391, offset: 4992)
!2391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2392, line: 5, elements: !611)
!2392 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2099, file: !170, line: 772, baseType: !2394, size: 64, offset: 4992)
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2395, size: 64)
!2395 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !2396, line: 18, flags: DIFlagFwdDecl)
!2396 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2099, file: !170, line: 773, baseType: !2398, size: 64, offset: 5056)
!2398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2399, size: 64)
!2399 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2165, line: 22, flags: DIFlagFwdDecl)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !2099, file: !170, line: 776, baseType: !35, size: 32, offset: 5120)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2099, file: !170, line: 778, baseType: !1214, size: 32, offset: 5152)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2099, file: !170, line: 779, baseType: !272, size: 32, offset: 5184)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2099, file: !170, line: 781, baseType: !72, size: 32, offset: 5216)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2099, file: !170, line: 782, baseType: !110, size: 128, offset: 5248)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2099, file: !170, line: 784, baseType: !2406, size: 64, offset: 5376)
!2406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2407, size: 64)
!2407 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2408)
!2408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2409, line: 52, size: 768, elements: !2410)
!2409 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!2410 = !{!2411, !2412, !2413, !2414, !2415, !2419, !2423, !2424, !2425, !2452, !2456, !2460}
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2408, file: !2409, line: 53, baseType: !29, size: 64)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2408, file: !2409, line: 55, baseType: !1474, size: 64, offset: 64)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2408, file: !2409, line: 56, baseType: !1474, size: 64, offset: 128)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2408, file: !2409, line: 58, baseType: !2116, size: 64, offset: 192)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2408, file: !2409, line: 59, baseType: !2416, size: 64, offset: 256)
!2416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2417, size: 64)
!2417 = !DISubroutineType(types: !2418)
!2418 = !{!849, !2119, !2125}
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2408, file: !2409, line: 61, baseType: !2420, size: 64, offset: 320)
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2421, size: 64)
!2421 = !DISubroutineType(types: !2422)
!2422 = !{null, !2406}
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2408, file: !2409, line: 62, baseType: !2127, size: 64, offset: 384)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2408, file: !2409, line: 64, baseType: !2136, size: 64, offset: 448)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2408, file: !2409, line: 66, baseType: !2426, size: 64, offset: 512)
!2426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2427, size: 64)
!2427 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2428)
!2428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !192, line: 39, size: 384, elements: !2429)
!2429 = !{!2430, !2431, !2435, !2439, !2447, !2451}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2428, file: !192, line: 40, baseType: !191, size: 32)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2428, file: !192, line: 41, baseType: !2432, size: 64, offset: 64)
!2432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2433, size: 64)
!2433 = !DISubroutineType(types: !2434)
!2434 = !{!838}
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2428, file: !192, line: 42, baseType: !2436, size: 64, offset: 128)
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2437, size: 64)
!2437 = !DISubroutineType(types: !2438)
!2438 = !{!33}
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2428, file: !192, line: 43, baseType: !2440, size: 64, offset: 192)
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2441 = !DISubroutineType(types: !2442)
!2442 = !{!2443, !2445}
!2443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2444, size: 64)
!2444 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2446, size: 64)
!2446 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !192, line: 19, flags: DIFlagFwdDecl)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2428, file: !192, line: 44, baseType: !2448, size: 64, offset: 256)
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2449, size: 64)
!2449 = !DISubroutineType(types: !2450)
!2450 = !{!2443}
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2428, file: !192, line: 45, baseType: !1171, size: 64, offset: 320)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2408, file: !2409, line: 67, baseType: !2453, size: 64, offset: 576)
!2453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2454, size: 64)
!2454 = !DISubroutineType(types: !2455)
!2455 = !{!2443, !2119}
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2408, file: !2409, line: 69, baseType: !2457, size: 64, offset: 640)
!2457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2458, size: 64)
!2458 = !DISubroutineType(types: !2459)
!2459 = !{null, !2119, !1035, !1036}
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2408, file: !2409, line: 71, baseType: !2131, size: 64, offset: 704)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2099, file: !170, line: 785, baseType: !1474, size: 64, offset: 5440)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2099, file: !170, line: 787, baseType: !2127, size: 64, offset: 5504)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2099, file: !170, line: 788, baseType: !2464, size: 64, offset: 5568)
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64)
!2465 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !170, line: 46, flags: DIFlagFwdDecl)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !2099, file: !170, line: 789, baseType: !2467, size: 64, offset: 5632)
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2468 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !170, line: 48, flags: DIFlagFwdDecl)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !2099, file: !170, line: 791, baseType: !2470, size: 64, offset: 5696)
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2471, size: 64)
!2471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !170, line: 597, size: 128, elements: !2472)
!2472 = !{!2473, !2474, !2475, !2476, !2477}
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !2471, file: !170, line: 598, baseType: !197, size: 32)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !2471, file: !170, line: 599, baseType: !206, size: 32, offset: 32)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !2471, file: !170, line: 600, baseType: !211, size: 32, offset: 64)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !2471, file: !170, line: 601, baseType: !838, size: 8, offset: 96)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !2471, file: !170, line: 602, baseType: !838, size: 8, offset: 104)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2099, file: !170, line: 793, baseType: !216, size: 32, offset: 5760)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !2099, file: !170, line: 795, baseType: !838, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2099, file: !170, line: 796, baseType: !838, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2099, file: !170, line: 797, baseType: !838, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !2099, file: !170, line: 798, baseType: !838, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !2099, file: !170, line: 799, baseType: !838, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "swap_file", scope: !2017, file: !2018, line: 302, baseType: !618, size: 64, offset: 1344)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "old_block_size", scope: !2017, file: !2018, line: 303, baseType: !7, size: 32, offset: 1408)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !2017, file: !2018, line: 304, baseType: !1010, size: 256, offset: 1472)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2017, file: !2018, line: 305, baseType: !72, size: 32, offset: 1728)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "cont_lock", scope: !2017, file: !2018, line: 318, baseType: !72, size: 32, offset: 1760)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "discard_work", scope: !2017, file: !2018, line: 322, baseType: !971, size: 256, offset: 1792)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "discard_clusters", scope: !2017, file: !2018, line: 323, baseType: !2037, size: 128, offset: 2048)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "avail_lists", scope: !2017, file: !2018, line: 324, baseType: !2492, offset: 2176)
!2492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !582, elements: !716)
!2493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1512, file: !223, line: 444, baseType: !2495, size: 64, offset: 1152)
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2496 = !DISubroutineType(types: !2497)
!2497 = !{null, !618}
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1512, file: !223, line: 445, baseType: !2499, size: 64, offset: 1216)
!2499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2500, size: 64)
!2500 = !DISubroutineType(types: !2501)
!2501 = !{!35, !1951, !1989}
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1499, file: !223, line: 486, baseType: !52, size: 64, offset: 896)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1499, file: !223, line: 487, baseType: !779, size: 320, offset: 960)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1499, file: !223, line: 488, baseType: !2505, size: 32, offset: 1280)
!2505 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2506, line: 8, baseType: !272)
!2506 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1499, file: !223, line: 489, baseType: !72, size: 32, offset: 1312)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1499, file: !223, line: 490, baseType: !110, size: 128, offset: 1344)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1499, file: !223, line: 491, baseType: !33, size: 64, offset: 1472)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1489, file: !1458, line: 180, baseType: !2511, size: 64, offset: 320)
!2511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2512, size: 64)
!2512 = !DISubroutineType(types: !2513)
!2513 = !{!1292, !618, !1400, !1488, !849, !54, !48}
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1489, file: !1458, line: 182, baseType: !2511, size: 64, offset: 384)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1489, file: !1458, line: 184, baseType: !2516, size: 64, offset: 448)
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2517, size: 64)
!2517 = !DISubroutineType(types: !2518)
!2518 = !{!35, !618, !1400, !1488, !1628}
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1477, file: !1458, line: 90, baseType: !2520, size: 64, offset: 192)
!2520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1477, file: !1458, line: 91, baseType: !2522, size: 64, offset: 256)
!2522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1448, file: !1395, line: 120, baseType: !2524, size: 64, offset: 192)
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2525, size: 64)
!2525 = !DISubroutineType(types: !2526)
!2526 = !{!2426, !1418}
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1448, file: !1395, line: 121, baseType: !2528, size: 64, offset: 256)
!2528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2529, size: 64)
!2529 = !DISubroutineType(types: !2530)
!2530 = !{!2443, !1418}
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1448, file: !1395, line: 122, baseType: !2532, size: 64, offset: 320)
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!2533 = !DISubroutineType(types: !2534)
!2534 = !{null, !1418, !1035, !1036}
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1394, file: !1395, line: 70, baseType: !2536, size: 64, offset: 384)
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2537, size: 64)
!2537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !2538, line: 190, size: 1152, elements: !2539)
!2538 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!2539 = !{!2540, !2541, !2542, !2543, !2544, !2545, !2546, !2547, !2661, !2662, !2663, !2664, !2665, !2668}
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2537, file: !2538, line: 191, baseType: !62, size: 32)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2537, file: !2538, line: 192, baseType: !62, size: 32, offset: 32)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2537, file: !2538, line: 202, baseType: !2536, size: 64, offset: 64)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2537, file: !2538, line: 203, baseType: !29, size: 64, offset: 128)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2537, file: !2538, line: 205, baseType: !336, size: 192, align: 64, offset: 192)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2537, file: !2538, line: 207, baseType: !2443, size: 64, offset: 384)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2537, file: !2538, line: 208, baseType: !7, size: 32, offset: 448)
!2547 = !DIDerivedType(tag: DW_TAG_member, scope: !2537, file: !2538, line: 209, baseType: !2548, size: 256, offset: 512)
!2548 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2537, file: !2538, line: 209, size: 256, elements: !2549)
!2549 = !{!2550, !2559, !2563}
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2548, file: !2538, line: 210, baseType: !2551, size: 256)
!2551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !2538, line: 153, size: 256, elements: !2552)
!2552 = !{!2553, !2554, !2555, !2558}
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !2551, file: !2538, line: 154, baseType: !52, size: 64)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2551, file: !2538, line: 156, baseType: !476, size: 64, offset: 64)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2551, file: !2538, line: 162, baseType: !2556, size: 64, offset: 128)
!2556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2557, size: 64)
!2557 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !2538, line: 162, flags: DIFlagFwdDecl)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !2551, file: !2538, line: 167, baseType: !52, size: 64, offset: 192)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2548, file: !2538, line: 211, baseType: !2560, size: 64)
!2560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !2538, line: 170, size: 64, elements: !2561)
!2561 = !{!2562}
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2560, file: !2538, line: 171, baseType: !2536, size: 64)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2548, file: !2538, line: 212, baseType: !2564, size: 256)
!2564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !2538, line: 174, size: 256, elements: !2565)
!2565 = !{!2566, !2656, !2659, !2660}
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2564, file: !2538, line: 175, baseType: !2567, size: 64)
!2567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2568, size: 64)
!2568 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2569)
!2569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !2538, line: 271, size: 768, elements: !2570)
!2570 = !{!2571, !2629, !2633, !2634, !2635, !2636, !2637, !2641, !2642, !2643, !2644, !2652}
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2569, file: !2538, line: 276, baseType: !2572, size: 64)
!2572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2573, size: 64)
!2573 = !DISubroutineType(types: !2574)
!2574 = !{!35, !2575}
!2575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2576, size: 64)
!2576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !2538, line: 251, size: 1216, elements: !2577)
!2577 = !{!2578, !2579, !2580, !2619, !2620, !2621, !2622, !2623, !2624, !2625, !2626, !2627, !2628}
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2576, file: !2538, line: 253, baseType: !2536, size: 64)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2576, file: !2538, line: 254, baseType: !618, size: 64, offset: 64)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2576, file: !2538, line: 255, baseType: !2581, size: 64, offset: 128)
!2581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2582, size: 64)
!2582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !2583, line: 17, size: 960, elements: !2584)
!2583 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!2584 = !{!2585, !2586, !2587, !2588, !2589, !2590, !2591, !2592, !2593, !2614, !2615, !2618}
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2582, file: !2583, line: 18, baseType: !849, size: 64)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2582, file: !2583, line: 19, baseType: !48, size: 64, offset: 64)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !2582, file: !2583, line: 20, baseType: !48, size: 64, offset: 128)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2582, file: !2583, line: 21, baseType: !48, size: 64, offset: 192)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !2582, file: !2583, line: 22, baseType: !48, size: 64, offset: 256)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2582, file: !2583, line: 23, baseType: !54, size: 64, offset: 320)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !2582, file: !2583, line: 24, baseType: !54, size: 64, offset: 384)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2582, file: !2583, line: 25, baseType: !646, size: 256, offset: 448)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !2582, file: !2583, line: 26, baseType: !2594, size: 64, offset: 704)
!2594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2595, size: 64)
!2595 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2596)
!2596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !2583, line: 32, size: 256, elements: !2597)
!2597 = !{!2598, !2602, !2606, !2610}
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2596, file: !2583, line: 33, baseType: !2599, size: 64)
!2599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2600, size: 64)
!2600 = !DISubroutineType(types: !2601)
!2601 = !{!33, !2581, !53}
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2596, file: !2583, line: 34, baseType: !2603, size: 64, offset: 64)
!2603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2604, size: 64)
!2604 = !DISubroutineType(types: !2605)
!2605 = !{null, !2581, !33}
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2596, file: !2583, line: 35, baseType: !2607, size: 64, offset: 128)
!2607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2608, size: 64)
!2608 = !DISubroutineType(types: !2609)
!2609 = !{!33, !2581, !33, !53}
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2596, file: !2583, line: 36, baseType: !2611, size: 64, offset: 192)
!2611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2612, size: 64)
!2612 = !DISubroutineType(types: !2613)
!2613 = !{!35, !2581, !33}
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !2582, file: !2583, line: 27, baseType: !35, size: 32, offset: 768)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2582, file: !2583, line: 28, baseType: !2616, size: 64, offset: 832)
!2616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2617, size: 64)
!2617 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !619)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2582, file: !2583, line: 29, baseType: !33, size: 64, offset: 896)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2576, file: !2538, line: 256, baseType: !33, size: 64, offset: 192)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2576, file: !2538, line: 259, baseType: !646, size: 256, offset: 256)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2576, file: !2538, line: 260, baseType: !646, size: 256, offset: 512)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2576, file: !2538, line: 261, baseType: !35, size: 32, offset: 768)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2576, file: !2538, line: 262, baseType: !110, size: 128, offset: 832)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2576, file: !2538, line: 263, baseType: !849, size: 64, offset: 960)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2576, file: !2538, line: 265, baseType: !48, size: 64, offset: 1024)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2576, file: !2538, line: 266, baseType: !838, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2576, file: !2538, line: 267, baseType: !838, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2576, file: !2538, line: 268, baseType: !1673, size: 64, offset: 1152)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2569, file: !2538, line: 277, baseType: !2630, size: 64, offset: 64)
!2630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2631, size: 64)
!2631 = !DISubroutineType(types: !2632)
!2632 = !{null, !2575}
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2569, file: !2538, line: 290, baseType: !2611, size: 64, offset: 128)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2569, file: !2538, line: 292, baseType: !2599, size: 64, offset: 192)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2569, file: !2538, line: 293, baseType: !2607, size: 64, offset: 256)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2569, file: !2538, line: 294, baseType: !2603, size: 64, offset: 320)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2569, file: !2538, line: 296, baseType: !2638, size: 64, offset: 384)
!2638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2639, size: 64)
!2639 = !DISubroutineType(types: !2640)
!2640 = !{!1292, !2575, !849, !48, !54}
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2569, file: !2538, line: 306, baseType: !48, size: 64, offset: 448)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2569, file: !2538, line: 313, baseType: !838, size: 8, offset: 512)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2569, file: !2538, line: 314, baseType: !2638, size: 64, offset: 576)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2569, file: !2538, line: 317, baseType: !2645, size: 64, offset: 640)
!2645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2646, size: 64)
!2646 = !DISubroutineType(types: !2647)
!2647 = !{!2648, !2575, !2650}
!2648 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2649, line: 59, baseType: !7)
!2649 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2651, size: 64)
!2651 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !223, line: 61, flags: DIFlagFwdDecl)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2569, file: !2538, line: 320, baseType: !2653, size: 64, offset: 704)
!2653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2654, size: 64)
!2654 = !DISubroutineType(types: !2655)
!2655 = !{!35, !2575, !1628}
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2564, file: !2538, line: 176, baseType: !2657, size: 64, offset: 64)
!2657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2658, size: 64)
!2658 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !2538, line: 35, flags: DIFlagFwdDecl)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2564, file: !2538, line: 177, baseType: !54, size: 64, offset: 128)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2564, file: !2538, line: 178, baseType: !2536, size: 64, offset: 192)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2537, file: !2538, line: 215, baseType: !33, size: 64, offset: 768)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2537, file: !2538, line: 221, baseType: !260, size: 64, offset: 832)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2537, file: !2538, line: 223, baseType: !39, size: 16, offset: 896)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2537, file: !2538, line: 224, baseType: !37, size: 16, offset: 912)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2537, file: !2538, line: 225, baseType: !2666, size: 64, offset: 960)
!2666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2667, size: 64)
!2667 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !2538, line: 36, flags: DIFlagFwdDecl)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2537, file: !2538, line: 227, baseType: !626, size: 128, align: 64, offset: 1024)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1394, file: !1395, line: 71, baseType: !2670, size: 32, offset: 448)
!2670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2671, line: 19, size: 32, elements: !2672)
!2671 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2672 = !{!2673}
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2670, file: !2671, line: 20, baseType: !292, size: 32)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1394, file: !1395, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1394, file: !1395, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1394, file: !1395, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1394, file: !1395, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1394, file: !1395, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1391, file: !121, line: 47, baseType: !1381, size: 64, offset: 512)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1391, file: !121, line: 48, baseType: !1400, size: 64, offset: 576)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1391, file: !121, line: 49, baseType: !2682, size: 64, offset: 640)
!2682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2683, size: 64)
!2683 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !121, line: 49, flags: DIFlagFwdDecl)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1391, file: !121, line: 50, baseType: !1009, size: 64, offset: 704)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1382, file: !121, line: 418, baseType: !2686, size: 64, offset: 1408)
!2686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2687, size: 64)
!2687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !121, line: 53, size: 448, elements: !2688)
!2688 = !{!2689, !2690, !2695, !2699, !2703, !2707}
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2687, file: !121, line: 54, baseType: !1465, size: 128)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2687, file: !121, line: 55, baseType: !2691, size: 64, offset: 128)
!2691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2692, size: 64)
!2692 = !DISubroutineType(types: !2693)
!2693 = !{!1292, !2686, !2694, !849}
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2687, file: !121, line: 57, baseType: !2696, size: 64, offset: 192)
!2696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2697, size: 64)
!2697 = !DISubroutineType(types: !2698)
!2698 = !{!1292, !2686, !2694, !29, !48}
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2687, file: !121, line: 59, baseType: !2700, size: 64, offset: 256)
!2700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2701, size: 64)
!2701 = !DISubroutineType(types: !2702)
!2702 = !{null, !1381, !29}
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !2687, file: !121, line: 60, baseType: !2704, size: 64, offset: 320)
!2704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2705, size: 64)
!2705 = !DISubroutineType(types: !2706)
!2706 = !{!35, !1381}
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2687, file: !121, line: 61, baseType: !2708, size: 64, offset: 384)
!2708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2709, size: 64)
!2709 = !DISubroutineType(types: !2710)
!2710 = !{null, !1381}
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1382, file: !121, line: 419, baseType: !29, size: 64, offset: 1472)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1382, file: !121, line: 420, baseType: !29, size: 64, offset: 1536)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1382, file: !121, line: 421, baseType: !1400, size: 64, offset: 1600)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1382, file: !121, line: 424, baseType: !2715, size: 64, offset: 1664)
!2715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2716, size: 64)
!2716 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2717)
!2717 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !121, line: 424, flags: DIFlagFwdDecl)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1382, file: !121, line: 425, baseType: !2719, size: 64, offset: 1728)
!2719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2720, size: 64)
!2720 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !771)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1382, file: !121, line: 426, baseType: !7, size: 32, offset: 1792)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1382, file: !121, line: 435, baseType: !646, size: 256, offset: 1856)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1382, file: !121, line: 437, baseType: !2724, size: 64, offset: 2112)
!2724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2725, size: 64)
!2725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2726, line: 69, size: 320, elements: !2727)
!2726 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2727 = !{!2728, !2729, !2730, !2747, !2749, !2752, !2753}
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2725, file: !2726, line: 70, baseType: !29, size: 64)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2725, file: !2726, line: 71, baseType: !1381, size: 64, offset: 64)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2725, file: !2726, line: 72, baseType: !2731, size: 64, offset: 128)
!2731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2732, size: 64)
!2732 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2733)
!2733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2726, line: 47, size: 256, elements: !2734)
!2734 = !{!2735, !2736, !2742, !2746}
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2733, file: !2726, line: 49, baseType: !7, size: 32)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2733, file: !2726, line: 51, baseType: !2737, size: 64, offset: 64)
!2737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2738, size: 64)
!2738 = !DISubroutineType(types: !2739)
!2739 = !{!35, !29, !2740}
!2740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2741, size: 64)
!2741 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2725)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2733, file: !2726, line: 53, baseType: !2743, size: 64, offset: 128)
!2743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2744, size: 64)
!2744 = !DISubroutineType(types: !2745)
!2745 = !{!35, !849, !2740}
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2733, file: !2726, line: 55, baseType: !1171, size: 64, offset: 192)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2725, file: !2726, line: 73, baseType: !2748, size: 16, offset: 192)
!2748 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !106)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2725, file: !2726, line: 74, baseType: !2750, size: 8, offset: 208)
!2750 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !97, line: 16, baseType: !2751)
!2751 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !99, line: 20, baseType: !2025)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2725, file: !2726, line: 75, baseType: !96, size: 8, offset: 216)
!2753 = !DIDerivedType(tag: DW_TAG_member, scope: !2725, file: !2726, line: 76, baseType: !2754, size: 64, offset: 256)
!2754 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2725, file: !2726, line: 76, size: 64, elements: !2755)
!2755 = !{!2756, !2757, !2764}
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2754, file: !2726, line: 77, baseType: !33, size: 64)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2754, file: !2726, line: 78, baseType: !2758, size: 64)
!2758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2759, size: 64)
!2759 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2760)
!2760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2726, line: 86, size: 128, elements: !2761)
!2761 = !{!2762, !2763}
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2760, file: !2726, line: 87, baseType: !7, size: 32)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2760, file: !2726, line: 88, baseType: !849, size: 64, offset: 64)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2754, file: !2726, line: 79, baseType: !2765, size: 64)
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2766 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2767)
!2767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2726, line: 92, size: 256, elements: !2768)
!2768 = !{!2769, !2770, !2771, !2772, !2773}
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2767, file: !2726, line: 94, baseType: !7, size: 32)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2767, file: !2726, line: 95, baseType: !7, size: 32, offset: 32)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2767, file: !2726, line: 96, baseType: !2048, size: 64, offset: 64)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2767, file: !2726, line: 97, baseType: !2731, size: 64, offset: 128)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2767, file: !2726, line: 98, baseType: !33, size: 64, offset: 192)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1382, file: !121, line: 438, baseType: !7, size: 32, offset: 2176)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1382, file: !121, line: 441, baseType: !7, size: 32, offset: 2208)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1382, file: !121, line: 442, baseType: !2715, size: 64, offset: 2240)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1382, file: !121, line: 443, baseType: !2719, size: 64, offset: 2304)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1382, file: !121, line: 444, baseType: !838, size: 8, offset: 2368)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1382, file: !121, line: 451, baseType: !838, size: 8, offset: 2376)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1382, file: !121, line: 454, baseType: !7, size: 32, offset: 2400)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1382, file: !121, line: 455, baseType: !2782, size: 64, offset: 2432)
!2782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2783, size: 64)
!2783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2784, line: 23, size: 96, elements: !2785)
!2784 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2785 = !{!2786, !2787, !2788}
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2783, file: !2784, line: 24, baseType: !35, size: 32)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2783, file: !2784, line: 24, baseType: !35, size: 32, offset: 32)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2783, file: !2784, line: 24, baseType: !35, size: 32, offset: 64)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1382, file: !121, line: 458, baseType: !2790, size: 64, offset: 2496)
!2790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2791, size: 64)
!2791 = !DISubroutineType(types: !2792)
!2792 = !{!35}
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1382, file: !121, line: 460, baseType: !2794, size: 4032, align: 512, offset: 2560)
!2794 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2795, size: 4032, elements: !2811)
!2795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !121, line: 362, size: 576, elements: !2796)
!2796 = !{!2797, !2798, !2799}
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2795, file: !121, line: 363, baseType: !33, size: 64)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2795, file: !121, line: 364, baseType: !7, size: 32, offset: 64)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2795, file: !121, line: 367, baseType: !2800, size: 448, offset: 128)
!2800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !121, line: 319, size: 448, elements: !2801)
!2801 = !{!2802, !2803}
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2800, file: !121, line: 320, baseType: !1381, size: 64)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2800, file: !121, line: 321, baseType: !2804, size: 384, offset: 64)
!2804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2805, line: 40, size: 384, elements: !2806)
!2805 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2806 = !{!2807}
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2804, file: !2805, line: 41, baseType: !2808, size: 384, align: 64)
!2808 = !DICompositeType(tag: DW_TAG_array_type, baseType: !336, size: 384, align: 64, elements: !2809)
!2809 = !{!2810}
!2810 = !DISubrange(count: 2)
!2811 = !{!2812}
!2812 = !DISubrange(count: 7)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1382, file: !121, line: 463, baseType: !2814, size: 192, offset: 6592)
!2814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2815, line: 8, size: 192, elements: !2816)
!2815 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2816 = !{!2817, !2818, !2820}
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2814, file: !2815, line: 10, baseType: !7, size: 32)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2814, file: !2815, line: 11, baseType: !2819, size: 64, offset: 64)
!2819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2814, file: !2815, line: 12, baseType: !2821, size: 64, offset: 128)
!2821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64)
!2822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2823, line: 59, size: 48, elements: !2824)
!2823 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2824 = !{!2825, !2828, !2829, !2830, !2831, !2832}
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2822, file: !2823, line: 60, baseType: !2826, size: 16)
!2826 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !97, line: 18, baseType: !2827)
!2827 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !99, line: 23, baseType: !807)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2822, file: !2823, line: 61, baseType: !2826, size: 16, offset: 16)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2822, file: !2823, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2822, file: !2823, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2822, file: !2823, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2822, file: !2823, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1382, file: !121, line: 465, baseType: !52, size: 64, offset: 6784)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1382, file: !121, line: 469, baseType: !7, size: 32, offset: 6848)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1382, file: !121, line: 470, baseType: !110, size: 128, offset: 6912)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1382, file: !121, line: 471, baseType: !2837, size: 64, offset: 7040)
!2837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2838, size: 64)
!2838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2839, line: 33, size: 96, elements: !2840)
!2839 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2840 = !{!2841, !2842, !2843, !2844}
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2838, file: !2839, line: 37, baseType: !35, size: 32)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2838, file: !2839, line: 43, baseType: !35, size: 32, offset: 32)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2838, file: !2839, line: 45, baseType: !39, size: 16, offset: 64)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2838, file: !2839, line: 47, baseType: !39, size: 16, offset: 80)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1382, file: !121, line: 476, baseType: !2846, size: 64, offset: 7104)
!2846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2847, size: 64)
!2847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !121, line: 378, size: 256, elements: !2848)
!2848 = !{!2849, !2865, !2866, !2867}
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2847, file: !121, line: 379, baseType: !2850, size: 64)
!2850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2851, size: 64)
!2851 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2852, line: 204, baseType: !2853)
!2852 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2852, line: 197, size: 192, elements: !2854)
!2854 = !{!2855, !2857, !2858, !2859, !2861, !2863}
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2853, file: !2852, line: 198, baseType: !2856, size: 32)
!2856 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2852, line: 21, baseType: !273)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2853, file: !2852, line: 199, baseType: !100, size: 8, offset: 32)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2853, file: !2852, line: 200, baseType: !100, size: 8, offset: 40)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2853, file: !2852, line: 201, baseType: !2860, size: 16, offset: 48)
!2860 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2852, line: 17, baseType: !107)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2853, file: !2852, line: 202, baseType: !2862, size: 64, offset: 64)
!2862 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2852, line: 16, baseType: !261)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2853, file: !2852, line: 203, baseType: !2864, size: 64, offset: 128)
!2864 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2852, line: 22, baseType: !261)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2847, file: !121, line: 380, baseType: !7, size: 32, offset: 64)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2847, file: !121, line: 381, baseType: !849, size: 64, offset: 128)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2847, file: !121, line: 382, baseType: !849, size: 64, offset: 192)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1382, file: !121, line: 477, baseType: !2847, size: 256, offset: 7168)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1382, file: !121, line: 480, baseType: !2870, size: 64, offset: 7424)
!2870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2871, size: 64)
!2871 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !121, line: 480, flags: DIFlagFwdDecl)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1382, file: !121, line: 483, baseType: !2873, size: 64, offset: 7488)
!2873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2874, size: 64)
!2874 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !121, line: 483, flags: DIFlagFwdDecl)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1382, file: !121, line: 488, baseType: !849, size: 64, offset: 7552)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1382, file: !121, line: 492, baseType: !33, size: 64, offset: 7616)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1382, file: !121, line: 493, baseType: !7, size: 32, offset: 7680)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1382, file: !121, line: 495, baseType: !33, size: 64, offset: 7744)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1382, file: !121, line: 496, baseType: !7, size: 32, offset: 7808)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1382, file: !121, line: 499, baseType: !7, size: 32, offset: 7840)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1382, file: !121, line: 500, baseType: !2882, size: 64, offset: 7872)
!2882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2883, size: 64)
!2883 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2884, line: 45, baseType: !2885)
!2884 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2885 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1382, file: !121, line: 503, baseType: !7, size: 32, offset: 7936)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1382, file: !121, line: 504, baseType: !2888, size: 64, offset: 8000)
!2888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2889, size: 64)
!2889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2890, size: 64)
!2890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2891, line: 96, size: 192, elements: !2892)
!2891 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2892 = !{!2893, !2894, !2936, !2939}
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2890, file: !2891, line: 97, baseType: !7, size: 32)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2890, file: !2891, line: 98, baseType: !2895, size: 64, offset: 64)
!2895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2896, size: 64)
!2896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2891, line: 24, size: 3072, elements: !2897)
!2897 = !{!2898, !2900, !2901, !2902, !2903, !2916, !2917, !2918, !2919, !2920, !2921, !2922, !2933, !2934, !2935}
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2896, file: !2891, line: 26, baseType: !2899, size: 128)
!2899 = !DICompositeType(tag: DW_TAG_array_type, baseType: !639, size: 128, elements: !2809)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2896, file: !2891, line: 27, baseType: !2899, size: 128, offset: 128)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2896, file: !2891, line: 28, baseType: !35, size: 32, offset: 256)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2896, file: !2891, line: 31, baseType: !72, size: 32, align: 512, offset: 512)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2896, file: !2891, line: 32, baseType: !2904, size: 960, offset: 576)
!2904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2905, line: 206, size: 960, elements: !2906)
!2905 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2906 = !{!2907, !2908, !2911, !2913, !2914, !2915}
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2904, file: !2905, line: 207, baseType: !629, size: 64)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2904, file: !2905, line: 208, baseType: !2909, size: 256, offset: 64)
!2909 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2910, size: 256, elements: !703)
!2910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2904, file: !2905, line: 209, baseType: !2912, size: 256, offset: 320)
!2912 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 256, elements: !703)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2904, file: !2905, line: 213, baseType: !1069, size: 64, offset: 576)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2904, file: !2905, line: 215, baseType: !1071, size: 256, offset: 640)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2904, file: !2905, line: 216, baseType: !96, size: 8, offset: 896)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2896, file: !2891, line: 33, baseType: !52, size: 64, offset: 1536)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2896, file: !2891, line: 34, baseType: !52, size: 64, offset: 1600)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2896, file: !2891, line: 35, baseType: !838, size: 8, offset: 1664)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2896, file: !2891, line: 36, baseType: !2273, size: 320, offset: 1728)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2896, file: !2891, line: 37, baseType: !971, size: 256, offset: 2048)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2896, file: !2891, line: 38, baseType: !626, size: 128, align: 64, offset: 2304)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2896, file: !2891, line: 39, baseType: !2923, size: 64, offset: 2432)
!2923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2924, size: 64)
!2924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2891, line: 49, size: 768, elements: !2925)
!2925 = !{!2926, !2927, !2928, !2929, !2930, !2931, !2932}
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2924, file: !2891, line: 50, baseType: !72, size: 32)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2924, file: !2891, line: 51, baseType: !2912, size: 256, offset: 64)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2924, file: !2891, line: 53, baseType: !2912, size: 256, offset: 320)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2924, file: !2891, line: 54, baseType: !52, size: 64, offset: 576)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2924, file: !2891, line: 55, baseType: !2923, size: 64, offset: 640)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2924, file: !2891, line: 56, baseType: !35, size: 32, offset: 704)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2924, file: !2891, line: 57, baseType: !35, size: 32, offset: 736)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2896, file: !2891, line: 40, baseType: !52, size: 64, offset: 2496)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2896, file: !2891, line: 42, baseType: !35, size: 32, offset: 2560)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2896, file: !2891, line: 43, baseType: !2889, size: 64, offset: 2624)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2890, file: !2891, line: 99, baseType: !2937, offset: 128)
!2937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2938, line: 211, elements: !611)
!2938 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2890, file: !2891, line: 100, baseType: !2940, size: 64, offset: 128)
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2941, size: 64)
!2941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2891, line: 63, size: 3008, elements: !2942)
!2942 = !{!2943, !2944, !2946, !2947, !2948, !2949, !2950, !2951, !2952, !2953, !2954, !2955, !2956, !2957, !2958, !2959, !2960, !2961, !2962, !2963, !2964, !2965, !2974}
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2941, file: !2891, line: 64, baseType: !2923, size: 64)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2941, file: !2891, line: 65, baseType: !2945, size: 192, offset: 64)
!2945 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2923, size: 192, elements: !682)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2941, file: !2891, line: 67, baseType: !35, size: 32, offset: 256)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2941, file: !2891, line: 68, baseType: !646, size: 256, offset: 320)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2941, file: !2891, line: 69, baseType: !72, size: 32, offset: 576)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2941, file: !2891, line: 70, baseType: !646, size: 256, offset: 640)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2941, file: !2891, line: 71, baseType: !52, size: 64, offset: 896)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2941, file: !2891, line: 72, baseType: !52, size: 64, offset: 960)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2941, file: !2891, line: 73, baseType: !52, size: 64, offset: 1024)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2941, file: !2891, line: 74, baseType: !52, size: 64, offset: 1088)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2941, file: !2891, line: 75, baseType: !52, size: 64, offset: 1152)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2941, file: !2891, line: 76, baseType: !52, size: 64, offset: 1216)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2941, file: !2891, line: 77, baseType: !52, size: 64, offset: 1280)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2941, file: !2891, line: 78, baseType: !52, size: 64, offset: 1344)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2941, file: !2891, line: 79, baseType: !838, size: 8, offset: 1408)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2941, file: !2891, line: 80, baseType: !52, size: 64, offset: 1472)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2941, file: !2891, line: 81, baseType: !646, size: 256, offset: 1536)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2941, file: !2891, line: 82, baseType: !1010, size: 256, offset: 1792)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2941, file: !2891, line: 84, baseType: !62, size: 32, offset: 2048)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2941, file: !2891, line: 87, baseType: !52, size: 64, offset: 2112)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2941, file: !2891, line: 88, baseType: !52, size: 64, offset: 2176)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2941, file: !2891, line: 89, baseType: !2966, size: 704, offset: 2240)
!2966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !972, line: 111, size: 704, elements: !2967)
!2967 = !{!2968, !2969, !2970, !2973}
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2966, file: !972, line: 112, baseType: !971, size: 256)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2966, file: !972, line: 113, baseType: !2273, size: 320, offset: 256)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2966, file: !972, line: 116, baseType: !2971, size: 64, offset: 576)
!2971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2972, size: 64)
!2972 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !972, line: 18, flags: DIFlagFwdDecl)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2966, file: !972, line: 117, baseType: !35, size: 32, offset: 640)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2941, file: !2891, line: 90, baseType: !2889, size: 64, offset: 2944)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1382, file: !121, line: 515, baseType: !2976, size: 64, offset: 8064)
!2976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2977, size: 64)
!2977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2978, line: 117, size: 128, elements: !2979)
!2978 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2979 = !{!2980, !2981, !2982}
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2977, file: !2978, line: 118, baseType: !771, size: 32)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2977, file: !2978, line: 119, baseType: !771, size: 32, offset: 32)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2977, file: !2978, line: 120, baseType: !1069, size: 64, offset: 64)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1382, file: !121, line: 516, baseType: !7, size: 32, offset: 8128)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1382, file: !121, line: 519, baseType: !7, size: 32, offset: 8160)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1382, file: !121, line: 520, baseType: !2986, size: 64, offset: 8192)
!2986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1382, file: !121, line: 523, baseType: !2988, size: 64, offset: 8256)
!2988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2989, size: 64)
!2989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2990, size: 64)
!2990 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !121, line: 523, flags: DIFlagFwdDecl)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1382, file: !121, line: 524, baseType: !7, size: 32, offset: 8320)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1382, file: !121, line: 525, baseType: !2993, size: 64, offset: 8384)
!2993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2994, size: 64)
!2994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2995, size: 64)
!2995 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !121, line: 525, flags: DIFlagFwdDecl)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1382, file: !121, line: 526, baseType: !7, size: 32, offset: 8448)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1382, file: !121, line: 533, baseType: !33, size: 64, offset: 8512)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1382, file: !121, line: 534, baseType: !7, size: 32, offset: 8576)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1382, file: !121, line: 535, baseType: !3000, size: 64, offset: 8640)
!3000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1382, file: !121, line: 536, baseType: !7, size: 32, offset: 8704)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1382, file: !121, line: 539, baseType: !35, size: 32, offset: 8736)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1382, file: !121, line: 540, baseType: !3004, size: 64, offset: 8768)
!3004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3005, size: 64)
!3005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !3006, line: 32, size: 64, elements: !3007)
!3006 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!3007 = !{!3008, !3009}
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3005, file: !3006, line: 33, baseType: !771, size: 32)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3005, file: !3006, line: 34, baseType: !771, size: 32, offset: 32)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1382, file: !121, line: 563, baseType: !110, size: 128, offset: 8832)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1382, file: !121, line: 565, baseType: !110, size: 128, offset: 8960)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1382, file: !121, line: 568, baseType: !3013, size: 64, offset: 9088)
!3013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3014, size: 64)
!3014 = !DISubroutineType(types: !3015)
!3015 = !{null}
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1382, file: !121, line: 570, baseType: !62, size: 32, offset: 9152)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1358, file: !223, line: 2382, baseType: !1357, size: 64, offset: 448)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1358, file: !223, line: 2383, baseType: !694, size: 64, offset: 512)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1358, file: !223, line: 2385, baseType: !3020, offset: 576)
!3020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2938, line: 206, elements: !611)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1358, file: !223, line: 2386, baseType: !3020, offset: 576)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1358, file: !223, line: 2387, baseType: !3020, offset: 576)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1358, file: !223, line: 2388, baseType: !3024, offset: 576)
!3024 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3020, elements: !682)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1358, file: !223, line: 2390, baseType: !3020, offset: 576)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1358, file: !223, line: 2391, baseType: !3020, offset: 576)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1358, file: !223, line: 2392, baseType: !3020, offset: 576)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1358, file: !223, line: 2393, baseType: !3020, offset: 576)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1349, file: !223, line: 1197, baseType: !3030, size: 64, offset: 384)
!3030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3031, size: 64)
!3031 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3032)
!3032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !223, line: 2057, size: 1664, elements: !3033)
!3033 = !{!3034, !3038, !3042, !3043, !3047, !3051, !3055, !3056, !3057, !3061, !3065, !3069, !3070, !3071, !3077, !3081, !3082, !3086, !3087, !3088, !3089, !3093, !3097, !3144, !3159, !3160}
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !3032, file: !223, line: 2058, baseType: !3035, size: 64)
!3035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3036, size: 64)
!3036 = !DISubroutineType(types: !3037)
!3037 = !{!1140, !1348}
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !3032, file: !223, line: 2059, baseType: !3039, size: 64, offset: 64)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3040 = !DISubroutineType(types: !3041)
!3041 = !{null, !1140}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3032, file: !223, line: 2060, baseType: !3039, size: 64, offset: 128)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !3032, file: !223, line: 2062, baseType: !3044, size: 64, offset: 192)
!3044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3045, size: 64)
!3045 = !DISubroutineType(types: !3046)
!3046 = !{null, !1140, !35}
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !3032, file: !223, line: 2063, baseType: !3048, size: 64, offset: 256)
!3048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3049, size: 64)
!3049 = !DISubroutineType(types: !3050)
!3050 = !{!35, !1140, !1805}
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !3032, file: !223, line: 2064, baseType: !3052, size: 64, offset: 320)
!3052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3053, size: 64)
!3053 = !DISubroutineType(types: !3054)
!3054 = !{!35, !1140}
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !3032, file: !223, line: 2065, baseType: !3039, size: 64, offset: 384)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !3032, file: !223, line: 2066, baseType: !1377, size: 64, offset: 448)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !3032, file: !223, line: 2067, baseType: !3058, size: 64, offset: 512)
!3058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3059, size: 64)
!3059 = !DISubroutineType(types: !3060)
!3060 = !{!35, !1348, !35}
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !3032, file: !223, line: 2068, baseType: !3062, size: 64, offset: 576)
!3062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3063, size: 64)
!3063 = !DISubroutineType(types: !3064)
!3064 = !{!35, !1348, !222}
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !3032, file: !223, line: 2069, baseType: !3066, size: 64, offset: 640)
!3066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3067, size: 64)
!3067 = !DISubroutineType(types: !3068)
!3068 = !{!35, !1348}
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !3032, file: !223, line: 2070, baseType: !3062, size: 64, offset: 704)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !3032, file: !223, line: 2071, baseType: !3066, size: 64, offset: 768)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !3032, file: !223, line: 2072, baseType: !3072, size: 64, offset: 832)
!3072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3073, size: 64)
!3073 = !DISubroutineType(types: !3074)
!3074 = !{!35, !1105, !3075}
!3075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3076, size: 64)
!3076 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !223, line: 62, flags: DIFlagFwdDecl)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !3032, file: !223, line: 2073, baseType: !3078, size: 64, offset: 896)
!3078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3079, size: 64)
!3079 = !DISubroutineType(types: !3080)
!3080 = !{!35, !1348, !2819, !849}
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !3032, file: !223, line: 2074, baseType: !1377, size: 64, offset: 960)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3032, file: !223, line: 2076, baseType: !3083, size: 64, offset: 1024)
!3083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3084, size: 64)
!3084 = !DISubroutineType(types: !3085)
!3085 = !{!35, !2581, !1105}
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !3032, file: !223, line: 2077, baseType: !3083, size: 64, offset: 1088)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3032, file: !223, line: 2078, baseType: !3083, size: 64, offset: 1152)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !3032, file: !223, line: 2079, baseType: !3083, size: 64, offset: 1216)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !3032, file: !223, line: 2081, baseType: !3090, size: 64, offset: 1280)
!3090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3091, size: 64)
!3091 = !DISubroutineType(types: !3092)
!3092 = !{!1292, !1348, !35, !849, !48, !54}
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !3032, file: !223, line: 2082, baseType: !3094, size: 64, offset: 1344)
!3094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3095, size: 64)
!3095 = !DISubroutineType(types: !3096)
!3096 = !{!1292, !1348, !35, !29, !48, !54}
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !3032, file: !223, line: 2083, baseType: !3098, size: 64, offset: 1408)
!3098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3099, size: 64)
!3099 = !DISubroutineType(types: !3100)
!3100 = !{!3101, !1140}
!3101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3102, size: 64)
!3102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3103, size: 64)
!3103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !228, line: 296, size: 1664, elements: !3104)
!3104 = !{!3105, !3106, !3107, !3108, !3109, !3110, !3111, !3112, !3113, !3129, !3130, !3131}
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !3103, file: !228, line: 297, baseType: !698, size: 128)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !3103, file: !228, line: 298, baseType: !110, size: 128, offset: 128)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !3103, file: !228, line: 299, baseType: !110, size: 128, offset: 256)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !3103, file: !228, line: 300, baseType: !110, size: 128, offset: 384)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !3103, file: !228, line: 301, baseType: !646, size: 256, offset: 512)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !3103, file: !228, line: 302, baseType: !72, size: 32, offset: 768)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !3103, file: !228, line: 303, baseType: !62, size: 32, offset: 800)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !3103, file: !228, line: 304, baseType: !1348, size: 64, offset: 832)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !3103, file: !228, line: 305, baseType: !3114, size: 64, offset: 896)
!3114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !228, line: 68, size: 64, elements: !3115)
!3115 = !{!3116, !3128}
!3116 = !DIDerivedType(tag: DW_TAG_member, scope: !3114, file: !228, line: 69, baseType: !3117, size: 32)
!3117 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3114, file: !228, line: 69, size: 32, elements: !3118)
!3118 = !{!3119, !3120, !3121}
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3117, file: !228, line: 70, baseType: !720, size: 32)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3117, file: !228, line: 71, baseType: !738, size: 32)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !3117, file: !228, line: 72, baseType: !3122, size: 32)
!3122 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !3123, line: 24, baseType: !3124)
!3123 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!3124 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3123, line: 22, size: 32, elements: !3125)
!3125 = !{!3126}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3124, file: !3123, line: 23, baseType: !3127, size: 32)
!3127 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !3123, line: 20, baseType: !726)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3114, file: !228, line: 74, baseType: !227, size: 32, offset: 32)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !3103, file: !228, line: 306, baseType: !54, size: 64, offset: 960)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !3103, file: !228, line: 307, baseType: !52, size: 64, offset: 1024)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !3103, file: !228, line: 308, baseType: !3132, size: 576, offset: 1088)
!3132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !228, line: 205, size: 576, elements: !3133)
!3133 = !{!3134, !3136, !3137, !3138, !3139, !3140, !3141, !3142, !3143}
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !3132, file: !228, line: 206, baseType: !3135, size: 64)
!3135 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !228, line: 66, baseType: !56)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !3132, file: !228, line: 207, baseType: !3135, size: 64, offset: 64)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !3132, file: !228, line: 208, baseType: !3135, size: 64, offset: 128)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !3132, file: !228, line: 209, baseType: !3135, size: 64, offset: 192)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !3132, file: !228, line: 210, baseType: !3135, size: 64, offset: 256)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !3132, file: !228, line: 211, baseType: !3135, size: 64, offset: 320)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !3132, file: !228, line: 212, baseType: !3135, size: 64, offset: 384)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !3132, file: !228, line: 213, baseType: !795, size: 64, offset: 448)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !3132, file: !228, line: 214, baseType: !795, size: 64, offset: 512)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !3032, file: !223, line: 2085, baseType: !3145, size: 64, offset: 1472)
!3145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3146, size: 64)
!3146 = !DISubroutineType(types: !3147)
!3147 = !{!1069, !1348, !3148}
!3148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3149, size: 64)
!3149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !3150, line: 15, size: 256, elements: !3151)
!3150 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!3151 = !{!3152, !3153, !3154, !3155, !3156}
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !3149, file: !3150, line: 16, baseType: !1344, size: 32)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !3149, file: !3150, line: 19, baseType: !35, size: 32, offset: 32)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !3149, file: !3150, line: 26, baseType: !52, size: 64, offset: 64)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !3149, file: !3150, line: 33, baseType: !52, size: 64, offset: 128)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !3149, file: !3150, line: 36, baseType: !3157, size: 64, offset: 192)
!3157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3158, size: 64)
!3158 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !136, line: 33, flags: DIFlagFwdDecl)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !3032, file: !223, line: 2087, baseType: !3145, size: 64, offset: 1536)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3032, file: !223, line: 2089, baseType: !1377, size: 64, offset: 1600)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1349, file: !223, line: 1198, baseType: !3162, size: 64, offset: 448)
!3162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3163, size: 64)
!3163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3164)
!3164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !228, line: 324, size: 704, elements: !3165)
!3165 = !{!3166, !3170, !3174, !3178, !3179, !3180, !3181, !3182, !3187, !3192, !3196}
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !3164, file: !228, line: 325, baseType: !3167, size: 64)
!3167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3168, size: 64)
!3168 = !DISubroutineType(types: !3169)
!3169 = !{!35, !3102}
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !3164, file: !228, line: 326, baseType: !3171, size: 64, offset: 64)
!3171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3172, size: 64)
!3172 = !DISubroutineType(types: !3173)
!3173 = !{!3102, !1348, !35}
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !3164, file: !228, line: 327, baseType: !3175, size: 64, offset: 128)
!3175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3176, size: 64)
!3176 = !DISubroutineType(types: !3177)
!3177 = !{null, !3102}
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !3164, file: !228, line: 328, baseType: !3167, size: 64, offset: 192)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !3164, file: !228, line: 329, baseType: !3167, size: 64, offset: 256)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !3164, file: !228, line: 330, baseType: !3167, size: 64, offset: 320)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !3164, file: !228, line: 331, baseType: !3058, size: 64, offset: 384)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !3164, file: !228, line: 334, baseType: !3183, size: 64, offset: 448)
!3183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3184, size: 64)
!3184 = !DISubroutineType(types: !3185)
!3185 = !{!3186, !1140}
!3186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3135, size: 64)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !3164, file: !228, line: 335, baseType: !3188, size: 64, offset: 512)
!3188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3189, size: 64)
!3189 = !DISubroutineType(types: !3190)
!3190 = !{!35, !1140, !3191}
!3191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3122, size: 64)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !3164, file: !228, line: 337, baseType: !3193, size: 64, offset: 576)
!3193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3194, size: 64)
!3194 = !DISubroutineType(types: !3195)
!3195 = !{!35, !1140, !3186}
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3164, file: !228, line: 339, baseType: !3197, size: 64, offset: 640)
!3197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3198, size: 64)
!3198 = !DISubroutineType(types: !3199)
!3199 = !{!35, !1348, !3200}
!3200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3114, size: 64)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1349, file: !223, line: 1199, baseType: !3202, size: 64, offset: 512)
!3202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3203, size: 64)
!3203 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3204)
!3204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !228, line: 430, size: 704, elements: !3205)
!3205 = !{!3206, !3210, !3211, !3215, !3216, !3217, !3232, !3255, !3259, !3260, !3283}
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !3204, file: !228, line: 431, baseType: !3207, size: 64)
!3207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3208, size: 64)
!3208 = !DISubroutineType(types: !3209)
!3209 = !{!35, !1348, !35, !35, !1261}
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !3204, file: !228, line: 432, baseType: !3058, size: 64, offset: 64)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !3204, file: !228, line: 433, baseType: !3212, size: 64, offset: 128)
!3212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3213, size: 64)
!3213 = !DISubroutineType(types: !3214)
!3214 = !{!35, !1348, !7}
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !3204, file: !228, line: 434, baseType: !3212, size: 64, offset: 192)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !3204, file: !228, line: 435, baseType: !3058, size: 64, offset: 256)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !3204, file: !228, line: 436, baseType: !3218, size: 64, offset: 320)
!3218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3219, size: 64)
!3219 = !DISubroutineType(types: !3220)
!3220 = !{!35, !1348, !35, !3221}
!3221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3222, size: 64)
!3222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !228, line: 417, size: 256, elements: !3223)
!3223 = !{!3224, !3225, !3226, !3227, !3228, !3229, !3230, !3231}
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !3222, file: !228, line: 418, baseType: !35, size: 32)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !3222, file: !228, line: 419, baseType: !7, size: 32, offset: 32)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !3222, file: !228, line: 420, baseType: !7, size: 32, offset: 64)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !3222, file: !228, line: 422, baseType: !7, size: 32, offset: 96)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !3222, file: !228, line: 423, baseType: !7, size: 32, offset: 128)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !3222, file: !228, line: 424, baseType: !7, size: 32, offset: 160)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !3222, file: !228, line: 425, baseType: !7, size: 32, offset: 192)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !3222, file: !228, line: 426, baseType: !7, size: 32, offset: 224)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !3204, file: !228, line: 437, baseType: !3233, size: 64, offset: 384)
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3234, size: 64)
!3234 = !DISubroutineType(types: !3235)
!3235 = !{!35, !1348, !3114, !3236}
!3236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3237, size: 64)
!3237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !228, line: 345, size: 960, elements: !3238)
!3238 = !{!3239, !3240, !3241, !3242, !3243, !3244, !3245, !3246, !3247, !3248, !3249, !3250, !3251, !3252, !3253, !3254}
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !3237, file: !228, line: 346, baseType: !35, size: 32)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !3237, file: !228, line: 347, baseType: !260, size: 64, offset: 64)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !3237, file: !228, line: 348, baseType: !260, size: 64, offset: 128)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !3237, file: !228, line: 349, baseType: !260, size: 64, offset: 192)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !3237, file: !228, line: 350, baseType: !260, size: 64, offset: 256)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !3237, file: !228, line: 351, baseType: !260, size: 64, offset: 320)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !3237, file: !228, line: 352, baseType: !260, size: 64, offset: 384)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !3237, file: !228, line: 353, baseType: !352, size: 64, offset: 448)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !3237, file: !228, line: 355, baseType: !352, size: 64, offset: 512)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !3237, file: !228, line: 356, baseType: !35, size: 32, offset: 576)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !3237, file: !228, line: 357, baseType: !35, size: 32, offset: 608)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !3237, file: !228, line: 358, baseType: !260, size: 64, offset: 640)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !3237, file: !228, line: 359, baseType: !260, size: 64, offset: 704)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !3237, file: !228, line: 360, baseType: !260, size: 64, offset: 768)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !3237, file: !228, line: 361, baseType: !352, size: 64, offset: 832)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !3237, file: !228, line: 362, baseType: !35, size: 32, offset: 896)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !3204, file: !228, line: 438, baseType: !3256, size: 64, offset: 448)
!3256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3257, size: 64)
!3257 = !DISubroutineType(types: !3258)
!3258 = !{!35, !1348, !3200, !3236}
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !3204, file: !228, line: 440, baseType: !3233, size: 64, offset: 512)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !3204, file: !228, line: 441, baseType: !3261, size: 64, offset: 576)
!3261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3262, size: 64)
!3262 = !DISubroutineType(types: !3263)
!3263 = !{!35, !1348, !3264}
!3264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3265, size: 64)
!3265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !228, line: 411, size: 1408, elements: !3266)
!3266 = !{!3267, !3268}
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !3265, file: !228, line: 412, baseType: !7, size: 32)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !3265, file: !228, line: 413, baseType: !3269, size: 1344, offset: 64)
!3269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3270, size: 1344, elements: !682)
!3270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !228, line: 397, size: 448, elements: !3271)
!3271 = !{!3272, !3273, !3274, !3275, !3276, !3277, !3278, !3279, !3280, !3282}
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3270, file: !228, line: 398, baseType: !7, size: 32)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !3270, file: !228, line: 399, baseType: !7, size: 32, offset: 32)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !3270, file: !228, line: 401, baseType: !7, size: 32, offset: 64)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !3270, file: !228, line: 402, baseType: !7, size: 32, offset: 96)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !3270, file: !228, line: 403, baseType: !7, size: 32, offset: 128)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !3270, file: !228, line: 404, baseType: !7, size: 32, offset: 160)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !3270, file: !228, line: 405, baseType: !7, size: 32, offset: 192)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3270, file: !228, line: 406, baseType: !262, size: 64, offset: 256)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3270, file: !228, line: 407, baseType: !3281, size: 64, offset: 320)
!3281 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !38, line: 132, baseType: !260)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !3270, file: !228, line: 408, baseType: !3281, size: 64, offset: 384)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !3204, file: !228, line: 442, baseType: !3212, size: 64, offset: 640)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1349, file: !223, line: 1200, baseType: !3285, size: 64, offset: 576)
!3285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3286, size: 64)
!3286 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3287)
!3287 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !223, line: 54, flags: DIFlagFwdDecl)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1349, file: !223, line: 1201, baseType: !52, size: 64, offset: 640)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1349, file: !223, line: 1202, baseType: !52, size: 64, offset: 704)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1349, file: !223, line: 1203, baseType: !52, size: 64, offset: 768)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1349, file: !223, line: 1204, baseType: !1105, size: 64, offset: 832)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1349, file: !223, line: 1205, baseType: !779, size: 320, offset: 896)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1349, file: !223, line: 1206, baseType: !35, size: 32, offset: 1216)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1349, file: !223, line: 1207, baseType: !62, size: 32, offset: 1248)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1349, file: !223, line: 1209, baseType: !33, size: 64, offset: 1280)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1349, file: !223, line: 1211, baseType: !3297, size: 64, offset: 1344)
!3297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3298, size: 64)
!3298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3299, size: 64)
!3299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3300)
!3300 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !223, line: 1211, flags: DIFlagFwdDecl)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1349, file: !223, line: 1223, baseType: !3302, size: 64, offset: 1408)
!3302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !1117, line: 34, size: 64, elements: !3303)
!3303 = !{!3304}
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3302, file: !1117, line: 35, baseType: !1120, size: 64)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1349, file: !223, line: 1224, baseType: !110, size: 128, offset: 1472)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1349, file: !223, line: 1225, baseType: !2057, size: 64, offset: 1600)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1349, file: !223, line: 1226, baseType: !3308, size: 64, offset: 1664)
!3308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3309, size: 64)
!3309 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !223, line: 1226, flags: DIFlagFwdDecl)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1349, file: !223, line: 1227, baseType: !3311, size: 64, offset: 1728)
!3311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3312, size: 64)
!3312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !234, line: 163, size: 6848, elements: !3313)
!3313 = !{!3314, !3315, !3316, !3317, !3318, !3319, !3320, !3321, !3322, !3323, !3324, !3325, !3326, !3361, !3362, !3363, !3364, !3366, !3367, !3368}
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3312, file: !234, line: 164, baseType: !260, size: 64)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3312, file: !234, line: 165, baseType: !336, size: 192, align: 64, offset: 64)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_list", scope: !3312, file: !234, line: 166, baseType: !110, size: 128, offset: 256)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3312, file: !234, line: 167, baseType: !52, size: 64, offset: 384)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "io_pages", scope: !3312, file: !234, line: 168, baseType: !52, size: 64, offset: 448)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !3312, file: !234, line: 170, baseType: !2670, size: 32, offset: 512)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !3312, file: !234, line: 171, baseType: !7, size: 32, offset: 544)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "min_ratio", scope: !3312, file: !234, line: 172, baseType: !7, size: 32, offset: 576)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "max_ratio", scope: !3312, file: !234, line: 173, baseType: !7, size: 32, offset: 608)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "max_prop_frac", scope: !3312, file: !234, line: 173, baseType: !7, size: 32, offset: 640)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "tot_write_bandwidth", scope: !3312, file: !234, line: 179, baseType: !639, size: 64, offset: 704)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "last_bdp_sleep", scope: !3312, file: !234, line: 184, baseType: !52, size: 64, offset: 768)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "wb", scope: !3312, file: !234, line: 186, baseType: !3327, size: 4672, offset: 832)
!3327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdi_writeback", file: !234, line: 105, size: 4672, elements: !3328)
!3328 = !{!3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336, !3337, !3338, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3354, !3355, !3356, !3357, !3358, !3359, !3360}
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !3327, file: !234, line: 106, baseType: !3311, size: 64)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3327, file: !234, line: 108, baseType: !52, size: 64, offset: 64)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "last_old_flush", scope: !3327, file: !234, line: 109, baseType: !52, size: 64, offset: 128)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty", scope: !3327, file: !234, line: 111, baseType: !110, size: 128, offset: 192)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "b_io", scope: !3327, file: !234, line: 112, baseType: !110, size: 128, offset: 320)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "b_more_io", scope: !3327, file: !234, line: 113, baseType: !110, size: 128, offset: 448)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty_time", scope: !3327, file: !234, line: 114, baseType: !110, size: 128, offset: 576)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !3327, file: !234, line: 115, baseType: !72, size: 32, offset: 704)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_inodes", scope: !3327, file: !234, line: 117, baseType: !62, size: 32, offset: 736)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !3327, file: !234, line: 118, baseType: !3339, size: 1280, offset: 768)
!3339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !897, size: 1280, elements: !703)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "bw_time_stamp", scope: !3327, file: !234, line: 120, baseType: !52, size: 64, offset: 2048)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_stamp", scope: !3327, file: !234, line: 121, baseType: !52, size: 64, offset: 2112)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "written_stamp", scope: !3327, file: !234, line: 122, baseType: !52, size: 64, offset: 2176)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "write_bandwidth", scope: !3327, file: !234, line: 123, baseType: !52, size: 64, offset: 2240)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "avg_write_bandwidth", scope: !3327, file: !234, line: 124, baseType: !52, size: 64, offset: 2304)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_ratelimit", scope: !3327, file: !234, line: 132, baseType: !52, size: 64, offset: 2368)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "balanced_dirty_ratelimit", scope: !3327, file: !234, line: 133, baseType: !52, size: 64, offset: 2432)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "completions", scope: !3327, file: !234, line: 135, baseType: !3348, size: 384, offset: 2496)
!3348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fprop_local_percpu", file: !3349, line: 76, size: 384, elements: !3350)
!3349 = !DIFile(filename: "./include/linux/flex_proportions.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a71374c9cbe54a4b0f3b6bbea75a8cfc")
!3350 = !{!3351, !3352, !3353}
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !3348, file: !3349, line: 78, baseType: !897, size: 320)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !3348, file: !3349, line: 80, baseType: !7, size: 32, offset: 320)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3348, file: !3349, line: 81, baseType: !433, size: 32, offset: 352)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_exceeded", scope: !3327, file: !234, line: 136, baseType: !35, size: 32, offset: 2880)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "start_all_reason", scope: !3327, file: !234, line: 137, baseType: !233, size: 32, offset: 2912)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "work_lock", scope: !3327, file: !234, line: 139, baseType: !72, size: 32, offset: 2944)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "work_list", scope: !3327, file: !234, line: 140, baseType: !110, size: 128, offset: 3008)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "dwork", scope: !3327, file: !234, line: 141, baseType: !2966, size: 704, offset: 3136)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "bw_dwork", scope: !3327, file: !234, line: 142, baseType: !2966, size: 704, offset: 3840)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_node", scope: !3327, file: !234, line: 144, baseType: !110, size: 128, offset: 4544)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "wb_list", scope: !3312, file: !234, line: 187, baseType: !110, size: 128, offset: 5504)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "wb_waitq", scope: !3312, file: !234, line: 193, baseType: !67, size: 192, offset: 5632)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3312, file: !234, line: 195, baseType: !2103, size: 64, offset: 5824)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3312, file: !234, line: 196, baseType: !3365, size: 512, offset: 5888)
!3365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 512, elements: !1437)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3312, file: !234, line: 197, baseType: !2103, size: 64, offset: 6400)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "laptop_mode_wb_timer", scope: !3312, file: !234, line: 199, baseType: !2273, size: 320, offset: 6464)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "debug_dir", scope: !3312, file: !234, line: 202, baseType: !1105, size: 64, offset: 6784)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1349, file: !223, line: 1228, baseType: !3370, size: 64, offset: 1792)
!3370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3371, size: 64)
!3371 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !223, line: 1228, flags: DIFlagFwdDecl)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1349, file: !223, line: 1229, baseType: !698, size: 128, offset: 1856)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1349, file: !223, line: 1230, baseType: !7, size: 32, offset: 1984)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1349, file: !223, line: 1231, baseType: !3375, size: 2496, offset: 2048)
!3375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !228, line: 521, size: 2496, elements: !3376)
!3376 = !{!3377, !3378, !3379, !3381, !3413}
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3375, file: !228, line: 522, baseType: !7, size: 32)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3375, file: !228, line: 523, baseType: !779, size: 320, offset: 64)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3375, file: !228, line: 524, baseType: !3380, size: 192, offset: 384)
!3380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1140, size: 192, elements: !682)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3375, file: !228, line: 525, baseType: !3382, size: 1728, offset: 576)
!3382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3383, size: 1728, elements: !682)
!3383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !228, line: 222, size: 576, elements: !3384)
!3384 = !{!3385, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412}
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3383, file: !228, line: 223, baseType: !3386, size: 64)
!3386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3387, size: 64)
!3387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !228, line: 445, size: 256, elements: !3388)
!3388 = !{!3389, !3390, !3403, !3404}
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3387, file: !228, line: 446, baseType: !35, size: 32)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3387, file: !228, line: 447, baseType: !3391, size: 64, offset: 64)
!3391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3392, size: 64)
!3392 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3393)
!3393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !228, line: 312, size: 512, elements: !3394)
!3394 = !{!3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402}
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3393, file: !228, line: 313, baseType: !3058, size: 64)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3393, file: !228, line: 314, baseType: !3058, size: 64, offset: 64)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3393, file: !228, line: 315, baseType: !3058, size: 64, offset: 128)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3393, file: !228, line: 316, baseType: !3058, size: 64, offset: 192)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3393, file: !228, line: 317, baseType: !3167, size: 64, offset: 256)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3393, file: !228, line: 318, baseType: !3167, size: 64, offset: 320)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3393, file: !228, line: 319, baseType: !3167, size: 64, offset: 384)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3393, file: !228, line: 320, baseType: !3197, size: 64, offset: 448)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3387, file: !228, line: 448, baseType: !1381, size: 64, offset: 128)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3387, file: !228, line: 449, baseType: !3386, size: 64, offset: 192)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3383, file: !228, line: 224, baseType: !35, size: 32, offset: 64)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3383, file: !228, line: 226, baseType: !110, size: 128, offset: 128)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3383, file: !228, line: 227, baseType: !52, size: 64, offset: 256)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3383, file: !228, line: 228, baseType: !7, size: 32, offset: 320)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3383, file: !228, line: 229, baseType: !7, size: 32, offset: 352)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3383, file: !228, line: 230, baseType: !3135, size: 64, offset: 384)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3383, file: !228, line: 231, baseType: !3135, size: 64, offset: 448)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3383, file: !228, line: 232, baseType: !33, size: 64, offset: 512)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3375, file: !228, line: 526, baseType: !3414, size: 192, offset: 2304)
!3414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3391, size: 192, elements: !682)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1349, file: !223, line: 1233, baseType: !3416, size: 2368, offset: 4544)
!3416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !223, line: 1184, size: 2368, elements: !3417)
!3417 = !{!3418, !3419, !3420}
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3416, file: !223, line: 1185, baseType: !39, size: 16)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !3416, file: !223, line: 1186, baseType: !39, size: 16, offset: 16)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3416, file: !223, line: 1187, baseType: !3421, size: 2304, offset: 64)
!3421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3422, size: 2304, elements: !682)
!3422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3423, line: 12, size: 768, elements: !3424)
!3423 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!3424 = !{!3425, !3433, !3434, !3439, !3440}
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3422, file: !3423, line: 13, baseType: !3426, size: 384)
!3426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3427, line: 17, size: 384, elements: !3428)
!3427 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!3428 = !{!3429, !3430, !3431, !3432}
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3426, file: !3427, line: 18, baseType: !35, size: 32)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3426, file: !3427, line: 19, baseType: !35, size: 32, offset: 32)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3426, file: !3427, line: 20, baseType: !67, size: 192, offset: 64)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3426, file: !3427, line: 22, baseType: !626, size: 128, align: 64, offset: 256)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3422, file: !3423, line: 14, baseType: !2048, size: 64, offset: 384)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3422, file: !3423, line: 15, baseType: !3435, size: 64, offset: 448)
!3435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3436, line: 16, size: 64, elements: !3437)
!3436 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3437 = !{!3438}
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3435, file: !3436, line: 17, baseType: !277, size: 64)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3422, file: !3423, line: 16, baseType: !67, size: 192, offset: 512)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3422, file: !3423, line: 17, baseType: !62, size: 32, offset: 704)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1349, file: !223, line: 1240, baseType: !33, size: 64, offset: 6912)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1349, file: !223, line: 1243, baseType: !272, size: 32, offset: 6976)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1349, file: !223, line: 1245, baseType: !795, size: 64, offset: 7040)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1349, file: !223, line: 1246, baseType: !795, size: 64, offset: 7104)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1349, file: !223, line: 1248, baseType: !273, size: 32, offset: 7168)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1349, file: !223, line: 1249, baseType: !3447, size: 64, offset: 7232)
!3447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3448, size: 64)
!3448 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !223, line: 634, flags: DIFlagFwdDecl)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1349, file: !223, line: 1252, baseType: !3450, size: 256, offset: 7296)
!3450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 256, elements: !3451)
!3451 = !{!3452}
!3452 = !DISubrange(count: 32)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1349, file: !223, line: 1253, baseType: !3454, size: 128, offset: 7552)
!3454 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3455, line: 21, baseType: !3456)
!3455 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3456 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3455, line: 19, size: 128, elements: !3457)
!3457 = !{!3458}
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3456, file: !3455, line: 20, baseType: !3459, size: 128)
!3459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 128, elements: !3460)
!3460 = !{!3461}
!3461 = !DISubrange(count: 16)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1349, file: !223, line: 1255, baseType: !7, size: 32, offset: 7680)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1349, file: !223, line: 1261, baseType: !646, size: 256, offset: 7744)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1349, file: !223, line: 1267, baseType: !29, size: 64, offset: 8000)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1349, file: !223, line: 1269, baseType: !3466, size: 64, offset: 8064)
!3466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3467, size: 64)
!3467 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3468)
!3468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !1107, line: 128, size: 1024, align: 512, elements: !3469)
!3469 = !{!3470, !3474, !3475, !3482, !3488, !3492, !3496, !3500, !3501, !3505, !3509, !3514, !3518}
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !3468, file: !1107, line: 129, baseType: !3471, size: 64)
!3471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3472, size: 64)
!3472 = !DISubroutineType(types: !3473)
!3473 = !{!35, !1105, !7}
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !3468, file: !1107, line: 130, baseType: !3471, size: 64, offset: 64)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !3468, file: !1107, line: 131, baseType: !3476, size: 64, offset: 128)
!3476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3477, size: 64)
!3477 = !DISubroutineType(types: !3478)
!3478 = !{!35, !3479, !3481}
!3479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3480, size: 64)
!3480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1106)
!3481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !3468, file: !1107, line: 132, baseType: !3483, size: 64, offset: 192)
!3483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3484, size: 64)
!3484 = !DISubroutineType(types: !3485)
!3485 = !{!35, !3479, !7, !29, !3486}
!3486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3487, size: 64)
!3487 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1125)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !3468, file: !1107, line: 134, baseType: !3489, size: 64, offset: 256)
!3489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3490, size: 64)
!3490 = !DISubroutineType(types: !3491)
!3491 = !{!35, !3479}
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !3468, file: !1107, line: 135, baseType: !3493, size: 64, offset: 320)
!3493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3494, size: 64)
!3494 = !DISubroutineType(types: !3495)
!3495 = !{!35, !1105}
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !3468, file: !1107, line: 136, baseType: !3497, size: 64, offset: 384)
!3497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3498, size: 64)
!3498 = !DISubroutineType(types: !3499)
!3499 = !{null, !1105}
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !3468, file: !1107, line: 137, baseType: !3497, size: 64, offset: 448)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !3468, file: !1107, line: 138, baseType: !3502, size: 64, offset: 512)
!3502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3503, size: 64)
!3503 = !DISubroutineType(types: !3504)
!3504 = !{null, !1105, !1140}
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !3468, file: !1107, line: 139, baseType: !3506, size: 64, offset: 576)
!3506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3507, size: 64)
!3507 = !DISubroutineType(types: !3508)
!3508 = !{!849, !1105, !849, !35}
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !3468, file: !1107, line: 140, baseType: !3510, size: 64, offset: 640)
!3510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3511, size: 64)
!3511 = !DISubroutineType(types: !3512)
!3512 = !{!1100, !3513}
!3513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !3468, file: !1107, line: 141, baseType: !3515, size: 64, offset: 704)
!3515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3516, size: 64)
!3516 = !DISubroutineType(types: !3517)
!3517 = !{!35, !1261, !838}
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !3468, file: !1107, line: 142, baseType: !3519, size: 64, offset: 768)
!3519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3520, size: 64)
!3520 = !DISubroutineType(types: !3521)
!3521 = !{!1105, !1105, !3522}
!3522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3523, size: 64)
!3523 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1141)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1349, file: !223, line: 1271, baseType: !3525, size: 448, offset: 8128)
!3525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !3150, line: 63, size: 448, elements: !3526)
!3526 = !{!3527, !3532, !3533, !3534, !3535, !3536, !3537}
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3525, file: !3150, line: 64, baseType: !3528, size: 64)
!3528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3529, size: 64)
!3529 = !DISubroutineType(types: !3530)
!3530 = !{!52, !3531, !3148}
!3531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3525, size: 64)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3525, file: !3150, line: 66, baseType: !3528, size: 64, offset: 64)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3525, file: !3150, line: 69, baseType: !1069, size: 64, offset: 128)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3525, file: !3150, line: 70, baseType: !35, size: 32, offset: 192)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3525, file: !3150, line: 71, baseType: !7, size: 32, offset: 224)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3525, file: !3150, line: 74, baseType: !110, size: 128, offset: 256)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3525, file: !3150, line: 85, baseType: !3538, size: 64, offset: 384)
!3538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1349, file: !223, line: 1274, baseType: !639, size: 64, offset: 8576)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1349, file: !223, line: 1280, baseType: !639, size: 64, offset: 8640)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1349, file: !223, line: 1283, baseType: !35, size: 32, offset: 8704)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1349, file: !223, line: 1286, baseType: !2505, size: 32, offset: 8736)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1349, file: !223, line: 1289, baseType: !2971, size: 64, offset: 8768)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1349, file: !223, line: 1290, baseType: !694, size: 64, offset: 8832)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1349, file: !223, line: 1297, baseType: !922, size: 64, offset: 8896)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1349, file: !223, line: 1304, baseType: !3547, size: 64, offset: 8960)
!3547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3548, line: 49, size: 64, elements: !3549)
!3548 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3549 = !{!3550}
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3547, file: !3548, line: 50, baseType: !3551, size: 64)
!3551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3552, size: 64)
!3552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3548, line: 41, size: 512, align: 512, elements: !3553)
!3553 = !{!3554, !3555, !3560}
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3552, file: !3548, line: 43, baseType: !72, size: 32)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3552, file: !3548, line: 45, baseType: !3556, size: 192, offset: 64)
!3556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3548, line: 29, size: 192, elements: !3557)
!3557 = !{!3558, !3559}
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3556, file: !3548, line: 30, baseType: !110, size: 128)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3556, file: !3548, line: 32, baseType: !1069, size: 64, offset: 128)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3552, file: !3548, line: 46, baseType: !1069, size: 64, offset: 256)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1349, file: !223, line: 1305, baseType: !3547, size: 64, offset: 9024)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1349, file: !223, line: 1306, baseType: !626, size: 128, align: 64, offset: 9088)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1349, file: !223, line: 1307, baseType: !971, size: 256, offset: 9216)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1349, file: !223, line: 1309, baseType: !646, size: 256, offset: 9472)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1349, file: !223, line: 1314, baseType: !35, size: 32, offset: 9728)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1349, file: !223, line: 1317, baseType: !72, size: 32, align: 512, offset: 10240)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1349, file: !223, line: 1318, baseType: !110, size: 128, offset: 10304)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1349, file: !223, line: 1320, baseType: !72, size: 32, offset: 10432)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1349, file: !223, line: 1321, baseType: !110, size: 128, offset: 10496)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !1141, file: !223, line: 656, baseType: !1498, size: 64, offset: 512)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !1141, file: !223, line: 659, baseType: !33, size: 64, offset: 576)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !1141, file: !223, line: 663, baseType: !52, size: 64, offset: 640)
!3573 = !DIDerivedType(tag: DW_TAG_member, scope: !1141, file: !223, line: 671, baseType: !3574, size: 32, offset: 704)
!3574 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1141, file: !223, line: 671, size: 32, elements: !3575)
!3575 = !{!3576, !3578}
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3574, file: !223, line: 672, baseType: !3577, size: 32)
!3577 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3574, file: !223, line: 673, baseType: !7, size: 32)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !1141, file: !223, line: 675, baseType: !1214, size: 32, offset: 736)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1141, file: !223, line: 676, baseType: !54, size: 64, offset: 768)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !1141, file: !223, line: 677, baseType: !1250, size: 128, offset: 832)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !1141, file: !223, line: 678, baseType: !1250, size: 128, offset: 960)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !1141, file: !223, line: 679, baseType: !1250, size: 128, offset: 1088)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !1141, file: !223, line: 680, baseType: !72, size: 32, offset: 1216)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !1141, file: !223, line: 681, baseType: !39, size: 16, offset: 1248)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !1141, file: !223, line: 682, baseType: !96, size: 8, offset: 1264)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !1141, file: !223, line: 683, baseType: !96, size: 8, offset: 1272)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !1141, file: !223, line: 684, baseType: !3281, size: 64, offset: 1280)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !1141, file: !223, line: 691, baseType: !52, size: 64, offset: 1344)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !1141, file: !223, line: 692, baseType: !779, size: 320, offset: 1408)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !1141, file: !223, line: 694, baseType: !52, size: 64, offset: 1728)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !1141, file: !223, line: 695, baseType: !52, size: 64, offset: 1792)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !1141, file: !223, line: 697, baseType: !698, size: 128, offset: 1856)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !1141, file: !223, line: 698, baseType: !110, size: 128, offset: 1984)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !1141, file: !223, line: 707, baseType: !110, size: 128, offset: 2112)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !1141, file: !223, line: 708, baseType: !110, size: 128, offset: 2240)
!3597 = !DIDerivedType(tag: DW_TAG_member, scope: !1141, file: !223, line: 709, baseType: !3598, size: 128, offset: 2368)
!3598 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1141, file: !223, line: 709, size: 128, elements: !3599)
!3599 = !{!3600, !3601}
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3598, file: !223, line: 710, baseType: !694, size: 64)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3598, file: !223, line: 711, baseType: !626, size: 128, align: 64)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !1141, file: !223, line: 713, baseType: !641, size: 64, offset: 2496)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !1141, file: !223, line: 714, baseType: !641, size: 64, offset: 2560)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !1141, file: !223, line: 715, baseType: !62, size: 32, offset: 2624)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !1141, file: !223, line: 716, baseType: !62, size: 32, offset: 2656)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !1141, file: !223, line: 717, baseType: !62, size: 32, offset: 2688)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !1141, file: !223, line: 719, baseType: !62, size: 32, offset: 2720)
!3608 = !DIDerivedType(tag: DW_TAG_member, scope: !1141, file: !223, line: 721, baseType: !3609, size: 64, offset: 2752)
!3609 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1141, file: !223, line: 721, size: 64, elements: !3610)
!3610 = !{!3611, !3737}
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3609, file: !223, line: 722, baseType: !3612, size: 64)
!3612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3613, size: 64)
!3613 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3614)
!3614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !223, line: 1914, size: 2112, elements: !3615)
!3615 = !{!3616, !3617, !3621, !3625, !3629, !3630, !3631, !3637, !3650, !3654, !3658, !3659, !3663, !3664, !3668, !3673, !3674, !3678, !3682, !3688, !3689, !3693, !3694, !3700, !3704, !3705, !3710, !3714, !3718, !3722, !3726, !3727, !3733}
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3614, file: !223, line: 1915, baseType: !1381, size: 64)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3614, file: !223, line: 1916, baseType: !3618, size: 64, offset: 64)
!3618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3619, size: 64)
!3619 = !DISubroutineType(types: !3620)
!3620 = !{!54, !618, !54, !35}
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3614, file: !223, line: 1917, baseType: !3622, size: 64, offset: 128)
!3622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3623, size: 64)
!3623 = !DISubroutineType(types: !3624)
!3624 = !{!1292, !618, !849, !48, !53}
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3614, file: !223, line: 1918, baseType: !3626, size: 64, offset: 192)
!3626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3627, size: 64)
!3627 = !DISubroutineType(types: !3628)
!3628 = !{!1292, !618, !29, !48, !53}
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3614, file: !223, line: 1919, baseType: !1948, size: 64, offset: 256)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3614, file: !223, line: 1920, baseType: !1948, size: 64, offset: 320)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3614, file: !223, line: 1921, baseType: !3632, size: 64, offset: 384)
!3632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3633, size: 64)
!3633 = !DISubroutineType(types: !3634)
!3634 = !{!35, !1951, !3635, !7}
!3635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3636, size: 64)
!3636 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !223, line: 53, flags: DIFlagFwdDecl)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3614, file: !223, line: 1923, baseType: !3638, size: 64, offset: 448)
!3638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3639, size: 64)
!3639 = !DISubroutineType(types: !3640)
!3640 = !{!35, !618, !3641}
!3641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3642, size: 64)
!3642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !223, line: 1858, size: 128, elements: !3643)
!3643 = !{!3644, !3649}
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3642, file: !223, line: 1859, baseType: !3645, size: 64)
!3645 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !223, line: 1855, baseType: !3646)
!3646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3647, size: 64)
!3647 = !DISubroutineType(types: !3648)
!3648 = !{!838, !3641, !29, !35, !54, !260, !7}
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3642, file: !223, line: 1860, baseType: !54, size: 64, offset: 64)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3614, file: !223, line: 1924, baseType: !3651, size: 64, offset: 512)
!3651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3652, size: 64)
!3652 = !DISubroutineType(types: !3653)
!3653 = !{!2648, !618, !2650}
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3614, file: !223, line: 1925, baseType: !3655, size: 64, offset: 576)
!3655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3656, size: 64)
!3656 = !DISubroutineType(types: !3657)
!3657 = !{!1069, !618, !7, !52}
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3614, file: !223, line: 1926, baseType: !3655, size: 64, offset: 640)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3614, file: !223, line: 1927, baseType: !3660, size: 64, offset: 704)
!3660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3661, size: 64)
!3661 = !DISubroutineType(types: !3662)
!3662 = !{!35, !618, !1628}
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3614, file: !223, line: 1928, baseType: !52, size: 64, offset: 768)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3614, file: !223, line: 1929, baseType: !3665, size: 64, offset: 832)
!3665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3666, size: 64)
!3666 = !DISubroutineType(types: !3667)
!3667 = !{!35, !1140, !618}
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3614, file: !223, line: 1930, baseType: !3669, size: 64, offset: 896)
!3669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3670, size: 64)
!3670 = !DISubroutineType(types: !3671)
!3671 = !{!35, !618, !3672}
!3672 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !223, line: 1061, baseType: !33)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3614, file: !223, line: 1931, baseType: !3665, size: 64, offset: 960)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3614, file: !223, line: 1932, baseType: !3675, size: 64, offset: 1024)
!3675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3676, size: 64)
!3676 = !DISubroutineType(types: !3677)
!3677 = !{!35, !618, !54, !54, !35}
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3614, file: !223, line: 1933, baseType: !3679, size: 64, offset: 1088)
!3679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3680, size: 64)
!3680 = !DISubroutineType(types: !3681)
!3681 = !{!35, !35, !618, !35}
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3614, file: !223, line: 1934, baseType: !3683, size: 64, offset: 1152)
!3683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3684, size: 64)
!3684 = !DISubroutineType(types: !3685)
!3685 = !{!35, !618, !35, !3686}
!3686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3687, size: 64)
!3687 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !223, line: 1063, flags: DIFlagFwdDecl)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3614, file: !223, line: 1935, baseType: !615, size: 64, offset: 1216)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3614, file: !223, line: 1936, baseType: !3690, size: 64, offset: 1280)
!3690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3691, size: 64)
!3691 = !DISubroutineType(types: !3692)
!3692 = !{!35, !35}
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3614, file: !223, line: 1937, baseType: !3683, size: 64, offset: 1344)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3614, file: !223, line: 1938, baseType: !3695, size: 64, offset: 1408)
!3695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3696, size: 64)
!3696 = !DISubroutineType(types: !3697)
!3697 = !{!1292, !3698, !618, !53, !48, !7}
!3698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3699, size: 64)
!3699 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !279, line: 59, flags: DIFlagFwdDecl)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3614, file: !223, line: 1939, baseType: !3701, size: 64, offset: 1472)
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3702, size: 64)
!3702 = !DISubroutineType(types: !3703)
!3703 = !{!1292, !618, !53, !3698, !48, !7}
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !3614, file: !223, line: 1940, baseType: !2495, size: 64, offset: 1536)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3614, file: !223, line: 1941, baseType: !3706, size: 64, offset: 1600)
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3707, size: 64)
!3707 = !DISubroutineType(types: !3708)
!3708 = !{!35, !618, !35, !3709, !1925}
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3686, size: 64)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3614, file: !223, line: 1942, baseType: !3711, size: 64, offset: 1664)
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3712, size: 64)
!3712 = !DISubroutineType(types: !3713)
!3713 = !{!1069, !618, !35, !54, !54}
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3614, file: !223, line: 1944, baseType: !3715, size: 64, offset: 1728)
!3715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3716, size: 64)
!3716 = !DISubroutineType(types: !3717)
!3717 = !{null, !2581, !618}
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3614, file: !223, line: 1948, baseType: !3719, size: 64, offset: 1792)
!3719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3720, size: 64)
!3720 = !DISubroutineType(types: !3721)
!3721 = !{!1292, !618, !54, !618, !54, !48, !7}
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3614, file: !223, line: 1950, baseType: !3723, size: 64, offset: 1856)
!3723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3724, size: 64)
!3724 = !DISubroutineType(types: !3725)
!3725 = !{!54, !618, !54, !618, !54, !54, !7}
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3614, file: !223, line: 1953, baseType: !3675, size: 64, offset: 1920)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !3614, file: !223, line: 1954, baseType: !3728, size: 64, offset: 1984)
!3728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3729, size: 64)
!3729 = !DISubroutineType(types: !3730)
!3730 = !{!35, !3731, !7}
!3731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3732, size: 64)
!3732 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !223, line: 1911, flags: DIFlagFwdDecl)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !3614, file: !223, line: 1955, baseType: !3734, size: 64, offset: 2048)
!3734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3735, size: 64)
!3735 = !DISubroutineType(types: !3736)
!3736 = !{!35, !3731, !3635, !7}
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3609, file: !223, line: 723, baseType: !3039, size: 64)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !1141, file: !223, line: 725, baseType: !3739, size: 64, offset: 2816)
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3740 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !223, line: 725, flags: DIFlagFwdDecl)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !1141, file: !223, line: 726, baseType: !1499, size: 1536, align: 64, offset: 2880)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !1141, file: !223, line: 727, baseType: !110, size: 128, offset: 4416)
!3743 = !DIDerivedType(tag: DW_TAG_member, scope: !1141, file: !223, line: 728, baseType: !3744, size: 64, offset: 4544)
!3744 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1141, file: !223, line: 728, size: 64, elements: !3745)
!3745 = !{!3746, !3747, !3750, !3751}
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3744, file: !223, line: 729, baseType: !3698, size: 64)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3744, file: !223, line: 730, baseType: !3748, size: 64)
!3748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3749, size: 64)
!3749 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !223, line: 730, flags: DIFlagFwdDecl)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3744, file: !223, line: 731, baseType: !849, size: 64)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3744, file: !223, line: 732, baseType: !7, size: 32)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !1141, file: !223, line: 735, baseType: !273, size: 32, offset: 4608)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !1141, file: !223, line: 738, baseType: !273, size: 32, offset: 4640)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !1141, file: !223, line: 739, baseType: !3447, size: 64, offset: 4672)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !1141, file: !223, line: 750, baseType: !33, size: 64, offset: 4736)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !1106, file: !1107, line: 91, baseType: !3757, size: 256, offset: 448)
!3757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 256, elements: !3451)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !1106, file: !1107, line: 94, baseType: !3759, size: 64, offset: 704)
!3759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3760, line: 25, size: 64, elements: !3761)
!3760 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!3761 = !{!3762}
!3762 = !DIDerivedType(tag: DW_TAG_member, scope: !3759, file: !3760, line: 26, baseType: !3763, size: 64)
!3763 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3759, file: !3760, line: 26, size: 64, elements: !3764)
!3764 = !{!3765, !3766}
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !3763, file: !3760, line: 28, baseType: !261, size: 64, align: 64)
!3766 = !DIDerivedType(tag: DW_TAG_member, scope: !3763, file: !3760, line: 30, baseType: !3767, size: 64)
!3767 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3763, file: !3760, line: 30, size: 64, elements: !3768)
!3768 = !{!3769, !3770}
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3767, file: !3760, line: 31, baseType: !72, size: 32)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3767, file: !3760, line: 32, baseType: !35, size: 32, offset: 32)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !1106, file: !1107, line: 95, baseType: !3466, size: 64, offset: 768)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !1106, file: !1107, line: 96, baseType: !1348, size: 64, offset: 832)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !1106, file: !1107, line: 97, baseType: !52, size: 64, offset: 896)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !1106, file: !1107, line: 98, baseType: !33, size: 64, offset: 960)
!3775 = !DIDerivedType(tag: DW_TAG_member, scope: !1106, file: !1107, line: 100, baseType: !3776, size: 128, offset: 1024)
!3776 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1106, file: !1107, line: 100, size: 128, elements: !3777)
!3777 = !{!3778, !3779}
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3776, file: !1107, line: 101, baseType: !110, size: 128)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3776, file: !1107, line: 102, baseType: !3780, size: 64)
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !1106, file: !1107, line: 104, baseType: !110, size: 128, offset: 1152)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !1106, file: !1107, line: 105, baseType: !110, size: 128, offset: 1280)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !1106, file: !1107, line: 113, baseType: !3784, size: 128, offset: 1408)
!3784 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1106, file: !1107, line: 109, size: 128, elements: !3785)
!3785 = !{!3786, !3787, !3788}
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3784, file: !1107, line: 110, baseType: !698, size: 128)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3784, file: !1107, line: 111, baseType: !1116, size: 128)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3784, file: !1107, line: 112, baseType: !626, size: 128, align: 64)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !1101, file: !1102, line: 72, baseType: !1348, size: 64, offset: 64)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !1101, file: !1102, line: 73, baseType: !35, size: 32, offset: 128)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !1101, file: !1102, line: 74, baseType: !1179, size: 64, offset: 192)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1096, file: !1097, line: 10, baseType: !1105, size: 64, offset: 64)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !619, file: !223, line: 1015, baseType: !1140, size: 64, offset: 1344)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !619, file: !223, line: 1016, baseType: !3612, size: 64, offset: 1408)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !619, file: !223, line: 1018, baseType: !260, size: 64, offset: 1472)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !619, file: !223, line: 1020, baseType: !33, size: 64, offset: 1536)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !619, file: !223, line: 1023, baseType: !33, size: 64, offset: 1600)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !619, file: !223, line: 1027, baseType: !3799, size: 64, offset: 1664)
!3799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !619, file: !223, line: 1029, baseType: !1498, size: 64, offset: 1728)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !619, file: !223, line: 1030, baseType: !2505, size: 32, offset: 1792)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !619, file: !223, line: 1031, baseType: !2505, size: 32, offset: 1824)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !594, file: !136, line: 756, baseType: !52, size: 64, offset: 704)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !594, file: !136, line: 757, baseType: !52, size: 64, offset: 768)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !594, file: !136, line: 760, baseType: !52, size: 64, offset: 832)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !594, file: !136, line: 761, baseType: !52, size: 64, offset: 896)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !594, file: !136, line: 763, baseType: !52, size: 64, offset: 960)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !594, file: !136, line: 764, baseType: !3809, size: 64, offset: 1024)
!3809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3810, size: 64)
!3810 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1643, line: 299, baseType: !3811)
!3811 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1643, line: 299, size: 64, elements: !3812)
!3812 = !{!3813}
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !3811, file: !1643, line: 299, baseType: !3814, size: 64)
!3814 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1648, line: 18, baseType: !52)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !594, file: !136, line: 773, baseType: !62, size: 32, offset: 1088)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !594, file: !136, line: 785, baseType: !62, size: 32, offset: 1120)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !594, file: !136, line: 795, baseType: !3818, size: 64, offset: 1152)
!3818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3819, size: 64)
!3819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !136, line: 726, size: 128, elements: !3820)
!3820 = !{!3821, !3822}
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3819, file: !136, line: 727, baseType: !260, size: 64)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !3819, file: !136, line: 728, baseType: !35, size: 32, offset: 64)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !594, file: !136, line: 801, baseType: !52, size: 64, offset: 1216)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !594, file: !136, line: 804, baseType: !639, size: 64, offset: 1280)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !594, file: !136, line: 806, baseType: !35, size: 32, offset: 1344)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !594, file: !136, line: 808, baseType: !72, size: 32, offset: 1376)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !594, file: !136, line: 823, baseType: !779, size: 320, offset: 1408)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !594, file: !136, line: 825, baseType: !110, size: 128, offset: 1728)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !594, file: !136, line: 845, baseType: !35, size: 32, offset: 1856)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !594, file: !136, line: 849, baseType: !52, size: 64, offset: 1920)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !594, file: !136, line: 850, baseType: !52, size: 64, offset: 1984)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !594, file: !136, line: 852, baseType: !52, size: 64, offset: 2048)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !594, file: !136, line: 853, baseType: !52, size: 64, offset: 2112)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !594, file: !136, line: 854, baseType: !641, size: 64, offset: 2176)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !594, file: !136, line: 855, baseType: !52, size: 64, offset: 2240)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !594, file: !136, line: 856, baseType: !52, size: 64, offset: 2304)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !594, file: !136, line: 857, baseType: !52, size: 64, offset: 2368)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !594, file: !136, line: 858, baseType: !52, size: 64, offset: 2432)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !594, file: !136, line: 865, baseType: !464, size: 32, offset: 2496)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !594, file: !136, line: 867, baseType: !72, size: 32, offset: 2528)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !594, file: !136, line: 869, baseType: !52, size: 64, offset: 2560)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !594, file: !136, line: 869, baseType: !52, size: 64, offset: 2624)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !594, file: !136, line: 869, baseType: !52, size: 64, offset: 2688)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !594, file: !136, line: 869, baseType: !52, size: 64, offset: 2752)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !594, file: !136, line: 870, baseType: !52, size: 64, offset: 2816)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !594, file: !136, line: 870, baseType: !52, size: 64, offset: 2880)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !594, file: !136, line: 870, baseType: !52, size: 64, offset: 2944)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !594, file: !136, line: 871, baseType: !52, size: 64, offset: 3008)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !594, file: !136, line: 871, baseType: !52, size: 64, offset: 3072)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !594, file: !136, line: 871, baseType: !52, size: 64, offset: 3136)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !594, file: !136, line: 871, baseType: !52, size: 64, offset: 3200)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !594, file: !136, line: 873, baseType: !3853, size: 3328, offset: 3264)
!3853 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 3328, elements: !3854)
!3854 = !{!3855}
!3855 = !DISubrange(count: 52)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !594, file: !136, line: 875, baseType: !3339, size: 1280, offset: 6592)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !594, file: !136, line: 877, baseType: !3858, size: 64, offset: 7872)
!3858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3859, size: 64)
!3859 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !136, line: 877, flags: DIFlagFwdDecl)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !594, file: !136, line: 880, baseType: !3861, size: 1088, offset: 7936)
!3861 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !3862, line: 72, baseType: !3863)
!3862 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!3863 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3862, line: 23, size: 1088, elements: !3864)
!3864 = !{!3865, !3866, !3867, !3868, !3869, !3872, !3873, !3874, !3875, !3900, !3901, !3902}
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !3863, file: !3862, line: 28, baseType: !260, size: 64)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !3863, file: !3862, line: 38, baseType: !641, size: 64, offset: 64)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !3863, file: !3862, line: 40, baseType: !52, size: 64, offset: 128)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !3863, file: !3862, line: 43, baseType: !779, size: 320, offset: 192)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !3863, file: !3862, line: 44, baseType: !3870, size: 64, offset: 512)
!3870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3871, size: 64)
!3871 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !3862, line: 44, flags: DIFlagFwdDecl)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3863, file: !3862, line: 48, baseType: !52, size: 64, offset: 576)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3863, file: !3862, line: 59, baseType: !646, size: 256, offset: 640)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !3863, file: !3862, line: 60, baseType: !33, size: 64, offset: 896)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !3863, file: !3862, line: 61, baseType: !3876, size: 64, offset: 960)
!3876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3877, size: 64)
!3877 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3878)
!3878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !3879, line: 13, size: 1216, elements: !3880)
!3879 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!3880 = !{!3881, !3882, !3883, !3884, !3885, !3886, !3887, !3888, !3889, !3890, !3891, !3892, !3893, !3894, !3895, !3896, !3897, !3898, !3899}
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3878, file: !3879, line: 14, baseType: !33, size: 64)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3878, file: !3879, line: 15, baseType: !52, size: 64, offset: 64)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !3878, file: !3879, line: 17, baseType: !52, size: 64, offset: 128)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !3878, file: !3879, line: 17, baseType: !52, size: 64, offset: 192)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !3878, file: !3879, line: 18, baseType: !52, size: 64, offset: 256)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !3878, file: !3879, line: 18, baseType: !52, size: 64, offset: 320)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !3878, file: !3879, line: 19, baseType: !2443, size: 64, offset: 384)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !3878, file: !3879, line: 21, baseType: !1069, size: 64, offset: 448)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !3878, file: !3879, line: 23, baseType: !1069, size: 64, offset: 512)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !3878, file: !3879, line: 24, baseType: !1069, size: 64, offset: 576)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !3878, file: !3879, line: 25, baseType: !1069, size: 64, offset: 640)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !3878, file: !3879, line: 26, baseType: !1069, size: 64, offset: 704)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !3878, file: !3879, line: 27, baseType: !1069, size: 64, offset: 768)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !3878, file: !3879, line: 28, baseType: !1069, size: 64, offset: 832)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !3878, file: !3879, line: 29, baseType: !1069, size: 64, offset: 896)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !3878, file: !3879, line: 30, baseType: !1069, size: 64, offset: 960)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !3878, file: !3879, line: 31, baseType: !1069, size: 64, offset: 1024)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !3878, file: !3879, line: 32, baseType: !1069, size: 64, offset: 1088)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !3878, file: !3879, line: 33, baseType: !1069, size: 64, offset: 1152)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !3863, file: !3862, line: 63, baseType: !62, size: 32, offset: 1024)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !3863, file: !3862, line: 69, baseType: !106, size: 16, offset: 1056)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !3863, file: !3862, line: 70, baseType: !2826, size: 16, offset: 1072)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !594, file: !136, line: 882, baseType: !52, size: 64, offset: 9024)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !594, file: !136, line: 885, baseType: !72, size: 32, offset: 9088)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !594, file: !136, line: 886, baseType: !3906, size: 64, offset: 9152)
!3906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3907, size: 64)
!3907 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !136, line: 732, flags: DIFlagFwdDecl)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !594, file: !136, line: 901, baseType: !922, size: 64, offset: 9216)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !594, file: !136, line: 904, baseType: !618, size: 64, offset: 9280)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !594, file: !136, line: 906, baseType: !3911, size: 64, offset: 9344)
!3911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3912, size: 64)
!3912 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !136, line: 906, flags: DIFlagFwdDecl)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !594, file: !136, line: 930, baseType: !62, size: 32, offset: 9408)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !594, file: !136, line: 933, baseType: !62, size: 32, offset: 9440)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !594, file: !136, line: 935, baseType: !3916, size: 64, offset: 9472)
!3916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !252, line: 103, size: 64, elements: !3917)
!3917 = !{!3918}
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !3916, file: !252, line: 104, baseType: !3919, size: 64)
!3919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3920, size: 64)
!3920 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !252, line: 101, flags: DIFlagFwdDecl)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !594, file: !136, line: 940, baseType: !639, size: 64, offset: 9536)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !594, file: !136, line: 942, baseType: !971, size: 256, offset: 9600)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !591, file: !136, line: 986, baseType: !3924, offset: 10240)
!3924 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, elements: !716)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !278, file: !279, line: 882, baseType: !590, size: 64, offset: 9792)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !278, file: !279, line: 884, baseType: !35, size: 32, offset: 9856)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !278, file: !279, line: 885, baseType: !35, size: 32, offset: 9888)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !278, file: !279, line: 886, baseType: !35, size: 32, offset: 9920)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !278, file: !279, line: 888, baseType: !35, size: 32, offset: 9952)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !278, file: !279, line: 890, baseType: !52, size: 64, offset: 9984)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !278, file: !279, line: 893, baseType: !7, size: 32, offset: 10048)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !278, file: !279, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !278, file: !279, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !278, file: !279, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !278, file: !279, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !278, file: !279, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !278, file: !279, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !278, file: !279, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !278, file: !279, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !278, file: !279, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !278, file: !279, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !278, file: !279, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !278, file: !279, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !278, file: !279, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !278, file: !279, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !278, file: !279, line: 969, baseType: !52, size: 64, offset: 10176)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !278, file: !279, line: 971, baseType: !3948, size: 448, offset: 10240)
!3948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !246, line: 25, size: 448, elements: !3949)
!3949 = !{!3950, !3951, !3956}
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3948, file: !246, line: 26, baseType: !52, size: 64)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3948, file: !246, line: 27, baseType: !3952, size: 64, offset: 64)
!3952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3953, size: 64)
!3953 = !DISubroutineType(types: !3954)
!3954 = !{!1069, !3955}
!3955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3948, size: 64)
!3956 = !DIDerivedType(tag: DW_TAG_member, scope: !3948, file: !246, line: 28, baseType: !3957, size: 320, offset: 128)
!3957 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3948, file: !246, line: 28, size: 320, elements: !3958)
!3958 = !{!3959, !3968, !3993}
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3957, file: !246, line: 37, baseType: !3960, size: 320)
!3960 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3957, file: !246, line: 30, size: 320, elements: !3961)
!3961 = !{!3962, !3963, !3964, !3965, !3966, !3967}
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3960, file: !246, line: 31, baseType: !271, size: 64)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3960, file: !246, line: 32, baseType: !272, size: 32, offset: 64)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3960, file: !246, line: 33, baseType: !272, size: 32, offset: 96)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3960, file: !246, line: 34, baseType: !272, size: 32, offset: 128)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3960, file: !246, line: 35, baseType: !260, size: 64, offset: 192)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3960, file: !246, line: 36, baseType: !271, size: 64, offset: 256)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3957, file: !246, line: 47, baseType: !3969, size: 192)
!3969 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3957, file: !246, line: 39, size: 192, elements: !3970)
!3970 = !{!3971, !3972, !3973, !3992}
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3969, file: !246, line: 40, baseType: !456, size: 32)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3969, file: !246, line: 41, baseType: !245, size: 32, offset: 32)
!3973 = !DIDerivedType(tag: DW_TAG_member, scope: !3969, file: !246, line: 42, baseType: !3974, size: 64, offset: 64)
!3974 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3969, file: !246, line: 42, size: 64, elements: !3975)
!3975 = !{!3976, !3984}
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3974, file: !246, line: 43, baseType: !3977, size: 64)
!3977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3978, size: 64)
!3978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3979, line: 7, size: 128, elements: !3980)
!3979 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3980 = !{!3981, !3983}
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3978, file: !3979, line: 8, baseType: !3982, size: 64)
!3982 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !50, line: 93, baseType: !56)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3978, file: !3979, line: 9, baseType: !56, size: 64, offset: 64)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3974, file: !246, line: 44, baseType: !3985, size: 64)
!3985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3986, size: 64)
!3986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3987, line: 7, size: 64, elements: !3988)
!3987 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3988 = !{!3989, !3991}
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3986, file: !3987, line: 8, baseType: !3990, size: 32)
!3990 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3987, line: 5, baseType: !771)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3986, file: !3987, line: 9, baseType: !771, size: 32, offset: 32)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3969, file: !246, line: 46, baseType: !260, size: 64, offset: 128)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3957, file: !246, line: 55, baseType: !3994, size: 256)
!3994 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3957, file: !246, line: 49, size: 256, elements: !3995)
!3995 = !{!3996, !3999, !4000, !4001, !4002}
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3994, file: !246, line: 50, baseType: !3997, size: 64)
!3997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3998, size: 64)
!3998 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !246, line: 14, flags: DIFlagFwdDecl)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3994, file: !246, line: 51, baseType: !35, size: 32, offset: 64)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3994, file: !246, line: 52, baseType: !35, size: 32, offset: 96)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3994, file: !246, line: 53, baseType: !52, size: 64, offset: 128)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3994, file: !246, line: 54, baseType: !52, size: 64, offset: 192)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !278, file: !279, line: 973, baseType: !4004, size: 32, offset: 10688)
!4004 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !38, line: 27, baseType: !4005)
!4005 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !50, line: 28, baseType: !35)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !278, file: !279, line: 974, baseType: !4004, size: 32, offset: 10720)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !278, file: !279, line: 978, baseType: !52, size: 64, offset: 10752)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !278, file: !279, line: 987, baseType: !277, size: 64, offset: 10816)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !278, file: !279, line: 990, baseType: !277, size: 64, offset: 10880)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !278, file: !279, line: 995, baseType: !110, size: 128, offset: 10944)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !278, file: !279, line: 996, baseType: !110, size: 128, offset: 11072)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !278, file: !279, line: 997, baseType: !277, size: 64, offset: 11200)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !278, file: !279, line: 1005, baseType: !110, size: 128, offset: 11264)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !278, file: !279, line: 1006, baseType: !110, size: 128, offset: 11392)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !278, file: !279, line: 1009, baseType: !686, size: 64, offset: 11520)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !278, file: !279, line: 1010, baseType: !4017, size: 512, offset: 11584)
!4017 = !DICompositeType(tag: DW_TAG_array_type, baseType: !698, size: 512, elements: !703)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !278, file: !279, line: 1011, baseType: !110, size: 128, offset: 12096)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !278, file: !279, line: 1012, baseType: !110, size: 128, offset: 12224)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !278, file: !279, line: 1014, baseType: !1009, size: 64, offset: 12352)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !278, file: !279, line: 1017, baseType: !2819, size: 64, offset: 12416)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !278, file: !279, line: 1020, baseType: !2819, size: 64, offset: 12480)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !278, file: !279, line: 1023, baseType: !33, size: 64, offset: 12544)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !278, file: !279, line: 1025, baseType: !260, size: 64, offset: 12608)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !278, file: !279, line: 1026, baseType: !260, size: 64, offset: 12672)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !278, file: !279, line: 1031, baseType: !260, size: 64, offset: 12736)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !278, file: !279, line: 1032, baseType: !4028, size: 192, offset: 12800)
!4028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !279, line: 324, size: 192, elements: !4029)
!4029 = !{!4030, !4031, !4032}
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4028, file: !279, line: 326, baseType: !260, size: 64)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4028, file: !279, line: 327, baseType: !260, size: 64, offset: 64)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4028, file: !279, line: 328, baseType: !433, size: 32, offset: 128)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !278, file: !279, line: 1041, baseType: !52, size: 64, offset: 12992)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !278, file: !279, line: 1042, baseType: !52, size: 64, offset: 13056)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !278, file: !279, line: 1045, baseType: !260, size: 64, offset: 13120)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !278, file: !279, line: 1048, baseType: !260, size: 64, offset: 13184)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !278, file: !279, line: 1051, baseType: !52, size: 64, offset: 13248)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !278, file: !279, line: 1052, baseType: !52, size: 64, offset: 13312)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !278, file: !279, line: 1055, baseType: !4040, size: 640, offset: 13376)
!4040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !4041, line: 132, size: 640, elements: !4042)
!4041 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!4042 = !{!4043, !4049, !4050}
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !4040, file: !4041, line: 133, baseType: !4044, size: 576)
!4044 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4045, size: 576, elements: !682)
!4045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !4041, line: 117, size: 192, elements: !4046)
!4046 = !{!4047, !4048}
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !4045, file: !4041, line: 118, baseType: !260, size: 64)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !4045, file: !4041, line: 119, baseType: !470, size: 128, offset: 64)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !4040, file: !4041, line: 134, baseType: !7, size: 32, offset: 576)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !4040, file: !4041, line: 135, baseType: !7, size: 32, offset: 608)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !278, file: !279, line: 1058, baseType: !4052, size: 448, offset: 14016)
!4052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !4041, line: 144, size: 448, elements: !4053)
!4053 = !{!4054, !4055, !4056}
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4052, file: !4041, line: 145, baseType: !626, size: 128, align: 64)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4052, file: !4041, line: 146, baseType: !646, size: 256, offset: 128)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !4052, file: !4041, line: 147, baseType: !7, size: 32, offset: 384)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !278, file: !279, line: 1064, baseType: !730, size: 64, offset: 14464)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !278, file: !279, line: 1067, baseType: !730, size: 64, offset: 14528)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !278, file: !279, line: 1070, baseType: !730, size: 64, offset: 14592)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !278, file: !279, line: 1074, baseType: !763, size: 64, offset: 14656)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !278, file: !279, line: 1084, baseType: !4062, size: 128, offset: 14720)
!4062 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 128, elements: !3460)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !278, file: !279, line: 1086, baseType: !4064, size: 64, offset: 14848)
!4064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4065, size: 64)
!4065 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !279, line: 55, flags: DIFlagFwdDecl)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !278, file: !279, line: 1089, baseType: !4067, size: 64, offset: 14912)
!4067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !4068, line: 12, size: 64, elements: !4069)
!4068 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!4069 = !{!4070}
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !4067, file: !4068, line: 13, baseType: !4071, size: 64)
!4071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4072, size: 64)
!4072 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !4068, line: 8, flags: DIFlagFwdDecl)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !278, file: !279, line: 1090, baseType: !4074, size: 128, offset: 14976)
!4074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !4075, line: 13, size: 128, elements: !4076)
!4075 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!4076 = !{!4077}
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !4074, file: !4075, line: 14, baseType: !110, size: 128)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !278, file: !279, line: 1097, baseType: !4079, size: 64, offset: 15104)
!4079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4080, size: 64)
!4080 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !279, line: 50, flags: DIFlagFwdDecl)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !278, file: !279, line: 1100, baseType: !4082, size: 64, offset: 15168)
!4082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4083, size: 64)
!4083 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !279, line: 1100, flags: DIFlagFwdDecl)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !278, file: !279, line: 1103, baseType: !4085, size: 64, offset: 15232)
!4085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4086, size: 64)
!4086 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !279, line: 53, flags: DIFlagFwdDecl)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !278, file: !279, line: 1107, baseType: !4088, size: 64, offset: 15296)
!4088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4089, size: 64)
!4089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !4090, line: 31, size: 576, elements: !4091)
!4090 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!4091 = !{!4092, !4093, !4096, !4099, !4102, !4103, !4106, !4109, !4110}
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4089, file: !4090, line: 32, baseType: !292, size: 32)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !4089, file: !4090, line: 33, baseType: !4094, size: 64, offset: 64)
!4094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4095, size: 64)
!4095 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !4090, line: 9, flags: DIFlagFwdDecl)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !4089, file: !4090, line: 34, baseType: !4097, size: 64, offset: 128)
!4097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4098, size: 64)
!4098 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !4090, line: 10, flags: DIFlagFwdDecl)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !4089, file: !4090, line: 35, baseType: !4100, size: 64, offset: 192)
!4100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4101, size: 64)
!4101 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !4090, line: 8, flags: DIFlagFwdDecl)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !4089, file: !4090, line: 36, baseType: !714, size: 64, offset: 256)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !4089, file: !4090, line: 37, baseType: !4104, size: 64, offset: 320)
!4104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4105, size: 64)
!4105 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !765, line: 34, flags: DIFlagFwdDecl)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !4089, file: !4090, line: 38, baseType: !4107, size: 64, offset: 384)
!4107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4108, size: 64)
!4108 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !4090, line: 38, flags: DIFlagFwdDecl)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !4089, file: !4090, line: 39, baseType: !4107, size: 64, offset: 448)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !4089, file: !4090, line: 40, baseType: !4111, size: 64, offset: 512)
!4111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4112, size: 64)
!4112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !4113, line: 771, size: 384, elements: !4114)
!4113 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97aaa852548eda64085953d0d92854db")
!4114 = !{!4115, !4116, !4117, !4118}
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4112, file: !4113, line: 772, baseType: !955, size: 192)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !4112, file: !4113, line: 773, baseType: !922, size: 64, offset: 192)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !4112, file: !4113, line: 774, baseType: !1054, size: 64, offset: 256)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !4112, file: !4113, line: 775, baseType: !4119, size: 64, offset: 320)
!4119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4120, size: 64)
!4120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !4121, line: 209, size: 4736, elements: !4122)
!4121 = !DIFile(filename: "./include/linux/cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdd4e53e0d7da49aa5e005884486de6")
!4122 = !{!4123, !4358, !4359, !4360, !4361, !4362, !4363, !4364, !4365, !4366, !4367, !4368, !4369, !4370, !4371, !4372, !4373, !4374, !4375, !4376, !4377, !4378}
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !4120, file: !4121, line: 215, baseType: !4124, size: 896)
!4124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4125, size: 896, elements: !4182)
!4125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4126, size: 64)
!4126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys_state", file: !4121, line: 152, size: 1600, elements: !4127)
!4127 = !{!4128, !4233, !4342, !4343, !4344, !4345, !4346, !4347, !4348, !4349, !4350, !4351, !4357}
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !4126, file: !4121, line: 154, baseType: !4129, size: 64)
!4129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4130, size: 64)
!4130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup", file: !4121, line: 389, size: 7872, elements: !4131)
!4131 = !{!4132, !4133, !4134, !4135, !4136, !4137, !4138, !4139, !4140, !4141, !4142, !4143, !4144, !4145, !4151, !4152, !4156, !4157, !4158, !4159, !4160, !4161, !4179, !4180, !4184, !4185, !4186, !4208, !4209, !4210, !4211, !4212, !4213, !4214, !4215, !4216, !4220, !4223, !4224, !4231}
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4130, file: !4121, line: 391, baseType: !4126, size: 1600)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4130, file: !4121, line: 393, baseType: !52, size: 64, offset: 1600)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4130, file: !4121, line: 401, baseType: !35, size: 32, offset: 1664)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !4130, file: !4121, line: 404, baseType: !35, size: 32, offset: 1696)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "nr_descendants", scope: !4130, file: !4121, line: 417, baseType: !35, size: 32, offset: 1728)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dying_descendants", scope: !4130, file: !4121, line: 418, baseType: !35, size: 32, offset: 1760)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "max_descendants", scope: !4130, file: !4121, line: 419, baseType: !35, size: 32, offset: 1792)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_csets", scope: !4130, file: !4121, line: 432, baseType: !35, size: 32, offset: 1824)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_domain_children", scope: !4130, file: !4121, line: 433, baseType: !35, size: 32, offset: 1856)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_threaded_children", scope: !4130, file: !4121, line: 434, baseType: !35, size: 32, offset: 1888)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threaded_children", scope: !4130, file: !4121, line: 436, baseType: !35, size: 32, offset: 1920)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "kill_seq", scope: !4130, file: !4121, line: 439, baseType: !7, size: 32, offset: 1952)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4130, file: !4121, line: 441, baseType: !2536, size: 64, offset: 1984)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "procs_file", scope: !4130, file: !4121, line: 442, baseType: !4146, size: 448, offset: 2048)
!4146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_file", file: !4121, line: 138, size: 448, elements: !4147)
!4147 = !{!4148, !4149, !4150}
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4146, file: !4121, line: 140, baseType: !2536, size: 64)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "notified_at", scope: !4146, file: !4121, line: 141, baseType: !52, size: 64, offset: 64)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "notify_timer", scope: !4146, file: !4121, line: 142, baseType: !2273, size: 320, offset: 128)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !4130, file: !4121, line: 443, baseType: !4146, size: 448, offset: 2496)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "psi_files", scope: !4130, file: !4121, line: 446, baseType: !4153, offset: 2944)
!4153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4146, elements: !4154)
!4154 = !{!4155}
!4155 = !DISubrange(count: 0)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_control", scope: !4130, file: !4121, line: 455, baseType: !106, size: 16, offset: 2944)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_ss_mask", scope: !4130, file: !4121, line: 456, baseType: !106, size: 16, offset: 2960)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_control", scope: !4130, file: !4121, line: 457, baseType: !106, size: 16, offset: 2976)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_ss_mask", scope: !4130, file: !4121, line: 458, baseType: !106, size: 16, offset: 2992)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !4130, file: !4121, line: 461, baseType: !4124, size: 896, offset: 3008)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4130, file: !4121, line: 463, baseType: !4162, size: 64, offset: 3904)
!4162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4163, size: 64)
!4163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_root", file: !4121, line: 537, size: 41664, elements: !4164)
!4164 = !{!4165, !4166, !4167, !4168, !4169, !4170, !4171, !4172, !4173, !4174, !4178}
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "kf_root", scope: !4163, file: !4121, line: 538, baseType: !2556, size: 64)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_mask", scope: !4163, file: !4121, line: 541, baseType: !7, size: 32, offset: 64)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy_id", scope: !4163, file: !4121, line: 544, baseType: !35, size: 32, offset: 96)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "root_list", scope: !4163, file: !4121, line: 547, baseType: !110, size: 128, offset: 128)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4163, file: !4121, line: 548, baseType: !626, size: 128, align: 64, offset: 256)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !4163, file: !4121, line: 555, baseType: !4130, size: 7872, offset: 384)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_ancestor_storage", scope: !4163, file: !4121, line: 558, baseType: !4129, size: 64, offset: 8256)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgrps", scope: !4163, file: !4121, line: 561, baseType: !62, size: 32, offset: 8320)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4163, file: !4121, line: 564, baseType: !7, size: 32, offset: 8352)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_path", scope: !4163, file: !4121, line: 567, baseType: !4175, size: 32768, offset: 8384)
!4175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 32768, elements: !4176)
!4176 = !{!4177}
!4177 = !DISubrange(count: 4096)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4163, file: !4121, line: 570, baseType: !3365, size: 512, offset: 41152)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "cset_links", scope: !4130, file: !4121, line: 469, baseType: !110, size: 128, offset: 3968)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "e_csets", scope: !4130, file: !4121, line: 478, baseType: !4181, size: 1792, offset: 4096)
!4181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 1792, elements: !4182)
!4182 = !{!4183}
!4183 = !DISubrange(count: 14)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cgrp", scope: !4130, file: !4121, line: 487, baseType: !4129, size: 64, offset: 5888)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "old_dom_cgrp", scope: !4130, file: !4121, line: 488, baseType: !4129, size: 64, offset: 5952)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_cpu", scope: !4130, file: !4121, line: 491, baseType: !4187, size: 64, offset: 6016)
!4187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4188, size: 64)
!4188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_rstat_cpu", file: !4121, line: 327, size: 896, elements: !4189)
!4189 = !{!4190, !4193, !4203, !4204, !4205, !4206, !4207}
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "bsync", scope: !4188, file: !4121, line: 332, baseType: !4191)
!4191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !4192, line: 64, elements: !611)
!4192 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !4188, file: !4121, line: 333, baseType: !4194, size: 192)
!4194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_base_stat", file: !4121, line: 299, size: 192, elements: !4195)
!4195 = !{!4196}
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "cputime", scope: !4194, file: !4121, line: 300, baseType: !4197, size: 192)
!4197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime", file: !4198, line: 17, size: 192, elements: !4199)
!4198 = !DIFile(filename: "./include/linux/sched/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b17de761385ab6ff6e0b9d14b072923b")
!4199 = !{!4200, !4201, !4202}
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4197, file: !4198, line: 18, baseType: !260, size: 64)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4197, file: !4198, line: 19, baseType: !260, size: 64, offset: 64)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !4197, file: !4198, line: 20, baseType: !262, size: 64, offset: 128)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !4188, file: !4121, line: 339, baseType: !4194, size: 192, offset: 192)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_bstat", scope: !4188, file: !4121, line: 347, baseType: !4194, size: 192, offset: 384)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "last_subtree_bstat", scope: !4188, file: !4121, line: 353, baseType: !4194, size: 192, offset: 576)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "updated_children", scope: !4188, file: !4121, line: 366, baseType: !4129, size: 64, offset: 768)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "updated_next", scope: !4188, file: !4121, line: 367, baseType: !4129, size: 64, offset: 832)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_list", scope: !4130, file: !4121, line: 492, baseType: !110, size: 128, offset: 6080)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !4130, file: !4121, line: 495, baseType: !4194, size: 192, offset: 6208)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !4130, file: !4121, line: 496, baseType: !4194, size: 192, offset: 6400)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !4130, file: !4121, line: 497, baseType: !4028, size: 192, offset: 6592)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "pidlists", scope: !4130, file: !4121, line: 503, baseType: !110, size: 128, offset: 6784)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "pidlist_mutex", scope: !4130, file: !4121, line: 504, baseType: !646, size: 256, offset: 6912)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "offline_waitq", scope: !4130, file: !4121, line: 507, baseType: !67, size: 192, offset: 7168)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_work", scope: !4130, file: !4121, line: 510, baseType: !971, size: 256, offset: 7360)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !4130, file: !4121, line: 513, baseType: !4217, size: 64, offset: 7616)
!4217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4218, size: 64)
!4218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psi_group", file: !4219, line: 214, elements: !611)
!4219 = !DIFile(filename: "./include/linux/psi_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3153bfbcc4370f75208e4d12aca55f1")
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !4130, file: !4121, line: 516, baseType: !4221, offset: 7680)
!4221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_bpf", file: !4222, line: 76, elements: !611)
!4222 = !DIFile(filename: "./include/linux/bpf-cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cdb48335f2a87696923f57fec8235c0")
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_count", scope: !4130, file: !4121, line: 519, baseType: !62, size: 32, offset: 7680)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "freezer", scope: !4130, file: !4121, line: 522, baseType: !4225, size: 128, offset: 7712)
!4225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_freezer_state", file: !4121, line: 370, size: 128, elements: !4226)
!4226 = !{!4227, !4228, !4229, !4230}
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4225, file: !4121, line: 372, baseType: !838, size: 8)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "e_freeze", scope: !4225, file: !4121, line: 375, baseType: !35, size: 32, offset: 32)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_descendants", scope: !4225, file: !4121, line: 380, baseType: !35, size: 32, offset: 64)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_tasks", scope: !4225, file: !4121, line: 386, baseType: !35, size: 32, offset: 96)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "ancestors", scope: !4130, file: !4121, line: 529, baseType: !4232, offset: 7872)
!4232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4129, elements: !716)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4126, file: !4121, line: 157, baseType: !4234, size: 64, offset: 64)
!4234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4235, size: 64)
!4235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys", file: !4121, line: 669, size: 1984, elements: !4236)
!4236 = !{!4237, !4241, !4245, !4249, !4250, !4251, !4252, !4256, !4260, !4261, !4267, !4271, !4272, !4273, !4277, !4281, !4285, !4286, !4287, !4288, !4289, !4290, !4291, !4292, !4293, !4294, !4295, !4302, !4303, !4340, !4341}
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "css_alloc", scope: !4235, file: !4121, line: 670, baseType: !4238, size: 64)
!4238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4239, size: 64)
!4239 = !DISubroutineType(types: !4240)
!4240 = !{!4125, !4125}
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "css_online", scope: !4235, file: !4121, line: 671, baseType: !4242, size: 64, offset: 64)
!4242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4243, size: 64)
!4243 = !DISubroutineType(types: !4244)
!4244 = !{!35, !4125}
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "css_offline", scope: !4235, file: !4121, line: 672, baseType: !4246, size: 64, offset: 128)
!4246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4247, size: 64)
!4247 = !DISubroutineType(types: !4248)
!4248 = !{null, !4125}
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "css_released", scope: !4235, file: !4121, line: 673, baseType: !4246, size: 64, offset: 192)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "css_free", scope: !4235, file: !4121, line: 674, baseType: !4246, size: 64, offset: 256)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "css_reset", scope: !4235, file: !4121, line: 675, baseType: !4246, size: 64, offset: 320)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "css_rstat_flush", scope: !4235, file: !4121, line: 676, baseType: !4253, size: 64, offset: 384)
!4253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4254, size: 64)
!4254 = !DISubroutineType(types: !4255)
!4255 = !{null, !4125, !35}
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "css_extra_stat_show", scope: !4235, file: !4121, line: 677, baseType: !4257, size: 64, offset: 448)
!4257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4258, size: 64)
!4258 = !DISubroutineType(types: !4259)
!4259 = !{!35, !2581, !4125}
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "css_local_stat_show", scope: !4235, file: !4121, line: 679, baseType: !4257, size: 64, offset: 512)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "can_attach", scope: !4235, file: !4121, line: 682, baseType: !4262, size: 64, offset: 576)
!4262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4263, size: 64)
!4263 = !DISubroutineType(types: !4264)
!4264 = !{!35, !4265}
!4265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4266, size: 64)
!4266 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_taskset", file: !4121, line: 30, flags: DIFlagFwdDecl)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_attach", scope: !4235, file: !4121, line: 683, baseType: !4268, size: 64, offset: 640)
!4268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4269, size: 64)
!4269 = !DISubroutineType(types: !4270)
!4270 = !{null, !4265}
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !4235, file: !4121, line: 684, baseType: !4268, size: 64, offset: 704)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "post_attach", scope: !4235, file: !4121, line: 685, baseType: !3013, size: 64, offset: 768)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "can_fork", scope: !4235, file: !4121, line: 686, baseType: !4274, size: 64, offset: 832)
!4274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4275, size: 64)
!4275 = !DISubroutineType(types: !4276)
!4276 = !{!35, !277, !4119}
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_fork", scope: !4235, file: !4121, line: 688, baseType: !4278, size: 64, offset: 896)
!4278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4279, size: 64)
!4279 = !DISubroutineType(types: !4280)
!4280 = !{null, !277, !4119}
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "fork", scope: !4235, file: !4121, line: 689, baseType: !4282, size: 64, offset: 960)
!4282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4283, size: 64)
!4283 = !DISubroutineType(types: !4284)
!4284 = !{null, !277}
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !4235, file: !4121, line: 690, baseType: !4282, size: 64, offset: 1024)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4235, file: !4121, line: 691, baseType: !4282, size: 64, offset: 1088)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !4235, file: !4121, line: 692, baseType: !4246, size: 64, offset: 1152)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4235, file: !4121, line: 694, baseType: !838, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_on_dfl", scope: !4235, file: !4121, line: 707, baseType: !838, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !4235, file: !4121, line: 719, baseType: !838, size: 1, offset: 1218, flags: DIFlagBitField, extraData: i64 1216)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4235, file: !4121, line: 722, baseType: !35, size: 32, offset: 1248)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4235, file: !4121, line: 723, baseType: !29, size: 64, offset: 1280)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_name", scope: !4235, file: !4121, line: 726, baseType: !29, size: 64, offset: 1344)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4235, file: !4121, line: 729, baseType: !4162, size: 64, offset: 1408)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "css_idr", scope: !4235, file: !4121, line: 732, baseType: !4296, size: 192, offset: 1472)
!4296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !4297, line: 19, size: 192, elements: !4298)
!4297 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!4298 = !{!4299, !4300, !4301}
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !4296, file: !4297, line: 20, baseType: !1339, size: 128)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !4296, file: !4297, line: 21, baseType: !7, size: 32, offset: 128)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !4296, file: !4297, line: 22, baseType: !7, size: 32, offset: 160)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "cfts", scope: !4235, file: !4121, line: 738, baseType: !110, size: 128, offset: 1664)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cftypes", scope: !4235, file: !4121, line: 744, baseType: !4304, size: 64, offset: 1792)
!4304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4305, size: 64)
!4305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cftype", file: !4121, line: 580, size: 1728, elements: !4306)
!4306 = !{!4307, !4308, !4309, !4310, !4311, !4312, !4313, !4314, !4316, !4317, !4318, !4322, !4326, !4327, !4328, !4329, !4330, !4334, !4338, !4339}
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4305, file: !4121, line: 586, baseType: !3365, size: 512)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4305, file: !4121, line: 587, baseType: !52, size: 64, offset: 512)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !4305, file: !4121, line: 593, baseType: !48, size: 64, offset: 576)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4305, file: !4121, line: 596, baseType: !7, size: 32, offset: 640)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "file_offset", scope: !4305, file: !4121, line: 604, baseType: !7, size: 32, offset: 672)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4305, file: !4121, line: 610, baseType: !4234, size: 64, offset: 704)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4305, file: !4121, line: 611, baseType: !110, size: 128, offset: 768)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "kf_ops", scope: !4305, file: !4121, line: 612, baseType: !4315, size: 64, offset: 896)
!4315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4305, file: !4121, line: 614, baseType: !2572, size: 64, offset: 960)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4305, file: !4121, line: 615, baseType: !2630, size: 64, offset: 1024)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "read_u64", scope: !4305, file: !4121, line: 621, baseType: !4319, size: 64, offset: 1088)
!4319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4320, size: 64)
!4320 = !DISubroutineType(types: !4321)
!4321 = !{!260, !4125, !4304}
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "read_s64", scope: !4305, file: !4121, line: 625, baseType: !4323, size: 64, offset: 1152)
!4323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4324, size: 64)
!4324 = !DISubroutineType(types: !4325)
!4325 = !{!352, !4125, !4304}
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4305, file: !4121, line: 628, baseType: !2611, size: 64, offset: 1216)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4305, file: !4121, line: 631, baseType: !2599, size: 64, offset: 1280)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4305, file: !4121, line: 632, baseType: !2607, size: 64, offset: 1344)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4305, file: !4121, line: 633, baseType: !2603, size: 64, offset: 1408)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "write_u64", scope: !4305, file: !4121, line: 640, baseType: !4331, size: 64, offset: 1472)
!4331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4332, size: 64)
!4332 = !DISubroutineType(types: !4333)
!4333 = !{!35, !4125, !4304, !260}
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "write_s64", scope: !4305, file: !4121, line: 645, baseType: !4335, size: 64, offset: 1536)
!4335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4336, size: 64)
!4336 = !DISubroutineType(types: !4337)
!4337 = !{!35, !4125, !4304, !352}
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4305, file: !4121, line: 654, baseType: !2638, size: 64, offset: 1600)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4305, file: !4121, line: 657, baseType: !2645, size: 64, offset: 1664)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cftypes", scope: !4235, file: !4121, line: 745, baseType: !4304, size: 64, offset: 1856)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "depends_on", scope: !4235, file: !4121, line: 754, baseType: !7, size: 32, offset: 1920)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !4126, file: !4121, line: 160, baseType: !1582, size: 128, offset: 128)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4126, file: !4121, line: 163, baseType: !110, size: 128, offset: 256)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4126, file: !4121, line: 164, baseType: !110, size: 128, offset: 384)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_node", scope: !4126, file: !4121, line: 167, baseType: !110, size: 128, offset: 512)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4126, file: !4121, line: 173, baseType: !35, size: 32, offset: 640)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4126, file: !4121, line: 175, baseType: !7, size: 32, offset: 672)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "serial_nr", scope: !4126, file: !4121, line: 183, baseType: !260, size: 64, offset: 704)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "online_cnt", scope: !4126, file: !4121, line: 189, baseType: !62, size: 32, offset: 768)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !4126, file: !4121, line: 192, baseType: !971, size: 256, offset: 832)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_rwork", scope: !4126, file: !4121, line: 193, baseType: !4352, size: 448, offset: 1088)
!4352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !972, line: 120, size: 448, elements: !4353)
!4353 = !{!4354, !4355, !4356}
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4352, file: !972, line: 121, baseType: !971, size: 256)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4352, file: !972, line: 122, baseType: !626, size: 128, align: 64, offset: 256)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4352, file: !972, line: 125, baseType: !2971, size: 64, offset: 384)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4126, file: !4121, line: 199, baseType: !4125, size: 64, offset: 1536)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4120, file: !4121, line: 218, baseType: !292, size: 32, offset: 896)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cset", scope: !4120, file: !4121, line: 226, baseType: !4119, size: 64, offset: 960)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cgrp", scope: !4120, file: !4121, line: 229, baseType: !4129, size: 64, offset: 1024)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !4120, file: !4121, line: 232, baseType: !35, size: 32, offset: 1088)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !4120, file: !4121, line: 241, baseType: !110, size: 128, offset: 1152)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "mg_tasks", scope: !4120, file: !4121, line: 242, baseType: !110, size: 128, offset: 1280)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "dying_tasks", scope: !4120, file: !4121, line: 243, baseType: !110, size: 128, offset: 1408)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "task_iters", scope: !4120, file: !4121, line: 246, baseType: !110, size: 128, offset: 1536)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "e_cset_node", scope: !4120, file: !4121, line: 255, baseType: !4181, size: 1792, offset: 1664)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets", scope: !4120, file: !4121, line: 258, baseType: !110, size: 128, offset: 3456)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets_node", scope: !4120, file: !4121, line: 259, baseType: !110, size: 128, offset: 3584)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !4120, file: !4121, line: 265, baseType: !698, size: 128, offset: 3712)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_links", scope: !4120, file: !4121, line: 271, baseType: !110, size: 128, offset: 3840)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_preload_node", scope: !4120, file: !4121, line: 277, baseType: !110, size: 128, offset: 3968)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_preload_node", scope: !4120, file: !4121, line: 278, baseType: !110, size: 128, offset: 4096)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "mg_node", scope: !4120, file: !4121, line: 279, baseType: !110, size: 128, offset: 4224)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_cgrp", scope: !4120, file: !4121, line: 288, baseType: !4129, size: 64, offset: 4352)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cgrp", scope: !4120, file: !4121, line: 289, baseType: !4129, size: 64, offset: 4416)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cset", scope: !4120, file: !4121, line: 290, baseType: !4119, size: 64, offset: 4480)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !4120, file: !4121, line: 293, baseType: !838, size: 8, offset: 4544)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !4120, file: !4121, line: 296, baseType: !626, size: 128, align: 64, offset: 4608)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !278, file: !279, line: 1110, baseType: !4380, size: 64, offset: 15360)
!4380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4381, size: 64)
!4381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !4382, line: 93, size: 8768, elements: !4383)
!4382 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!4383 = !{!4384, !4385, !4386, !4387, !4388, !4389, !4390, !4391, !4402, !4403, !4404, !4405, !4406, !4407, !4408, !4420, !4421, !4422, !4423, !4424, !4425, !4426, !4432, !4441, !4442, !4444, !4445, !4446, !4449, !4455, !4456, !4457, !4458, !4459, !4460, !4461, !4462, !4463, !4464, !4465, !4466, !4467, !4468, !4469, !4470, !4471, !4472, !4473, !4474, !4475, !4476, !4487, !4488, !4495, !4505, !4567, !4568, !4571, !4572, !4573, !4574, !4575, !4576}
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !4381, file: !4382, line: 94, baseType: !292, size: 32)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !4381, file: !4382, line: 95, baseType: !62, size: 32, offset: 32)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !4381, file: !4382, line: 96, baseType: !35, size: 32, offset: 64)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !4381, file: !4382, line: 97, baseType: !35, size: 32, offset: 96)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !4381, file: !4382, line: 98, baseType: !110, size: 128, offset: 128)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !4381, file: !4382, line: 100, baseType: !67, size: 192, offset: 256)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !4381, file: !4382, line: 103, baseType: !277, size: 64, offset: 448)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !4381, file: !4382, line: 106, baseType: !4392, size: 192, offset: 512)
!4392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !4393, line: 32, size: 192, elements: !4394)
!4393 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!4394 = !{!4395, !4396}
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4392, file: !4393, line: 33, baseType: !110, size: 128)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !4392, file: !4393, line: 34, baseType: !4397, size: 64, offset: 128)
!4397 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !4398, line: 25, baseType: !4399)
!4398 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!4399 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4398, line: 23, size: 64, elements: !4400)
!4400 = !{!4401}
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !4399, file: !4398, line: 24, baseType: !541, size: 64)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !4381, file: !4382, line: 109, baseType: !694, size: 64, offset: 704)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !4381, file: !4382, line: 112, baseType: !35, size: 32, offset: 768)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !4381, file: !4382, line: 114, baseType: !35, size: 32, offset: 800)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !4381, file: !4382, line: 115, baseType: !277, size: 64, offset: 832)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !4381, file: !4382, line: 118, baseType: !35, size: 32, offset: 896)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4381, file: !4382, line: 119, baseType: !7, size: 32, offset: 928)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !4381, file: !4382, line: 121, baseType: !4409, size: 64, offset: 960)
!4409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4410, size: 64)
!4410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !4382, line: 80, size: 448, elements: !4411)
!4411 = !{!4412, !4413, !4419}
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !4410, file: !4382, line: 81, baseType: !62, size: 32)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !4410, file: !4382, line: 82, baseType: !4414, size: 128, offset: 64)
!4414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !4382, line: 75, size: 128, elements: !4415)
!4415 = !{!4416, !4417}
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4414, file: !4382, line: 76, baseType: !277, size: 64)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4414, file: !4382, line: 77, baseType: !4418, size: 64, offset: 64)
!4418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4414, size: 64)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !4410, file: !4382, line: 83, baseType: !1010, size: 256, offset: 192)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !4381, file: !4382, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !4381, file: !4382, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !4381, file: !4382, line: 138, baseType: !7, size: 32, offset: 1056)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !4381, file: !4382, line: 139, baseType: !110, size: 128, offset: 1088)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !4381, file: !4382, line: 142, baseType: !408, size: 512, offset: 1216)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !4381, file: !4382, line: 143, baseType: !416, size: 64, offset: 1728)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !4381, file: !4382, line: 150, baseType: !4427, size: 256, offset: 1792)
!4427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4428, size: 256, elements: !2809)
!4428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !4382, line: 38, size: 128, elements: !4429)
!4429 = !{!4430, !4431}
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !4428, file: !4382, line: 39, baseType: !260, size: 64)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !4428, file: !4382, line: 40, baseType: !260, size: 64, offset: 64)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !4381, file: !4382, line: 156, baseType: !4433, size: 192, offset: 2048)
!4433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !4382, line: 66, size: 192, elements: !4434)
!4434 = !{!4435}
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !4433, file: !4382, line: 67, baseType: !4436, size: 192)
!4436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !4382, line: 47, size: 192, elements: !4437)
!4437 = !{!4438, !4439, !4440}
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4436, file: !4382, line: 48, baseType: !641, size: 64)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4436, file: !4382, line: 49, baseType: !641, size: 64, offset: 64)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !4436, file: !4382, line: 50, baseType: !641, size: 64, offset: 128)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !4381, file: !4382, line: 160, baseType: !4040, size: 640, offset: 2240)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !4381, file: !4382, line: 163, baseType: !4443, size: 256, offset: 2880)
!4443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !686, size: 256, elements: !703)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !4381, file: !4382, line: 169, baseType: !686, size: 64, offset: 3136)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !4381, file: !4382, line: 172, baseType: !35, size: 32, offset: 3200)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !4381, file: !4382, line: 174, baseType: !4447, size: 64, offset: 3264)
!4447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4448, size: 64)
!4448 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !4382, line: 174, flags: DIFlagFwdDecl)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !4381, file: !4382, line: 185, baseType: !4450, size: 64, offset: 3328)
!4450 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !460, line: 860, baseType: !4451)
!4451 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !460, line: 853, size: 64, elements: !4452)
!4452 = !{!4453, !4454}
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !4451, file: !460, line: 858, baseType: !1111, size: 32)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4451, file: !460, line: 859, baseType: !72, size: 32, offset: 32)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4381, file: !4382, line: 186, baseType: !260, size: 64, offset: 3392)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4381, file: !4382, line: 186, baseType: !260, size: 64, offset: 3456)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !4381, file: !4382, line: 186, baseType: !260, size: 64, offset: 3520)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !4381, file: !4382, line: 186, baseType: !260, size: 64, offset: 3584)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !4381, file: !4382, line: 187, baseType: !260, size: 64, offset: 3648)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !4381, file: !4382, line: 188, baseType: !260, size: 64, offset: 3712)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !4381, file: !4382, line: 189, baseType: !4028, size: 192, offset: 3776)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !4381, file: !4382, line: 190, baseType: !52, size: 64, offset: 3968)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !4381, file: !4382, line: 190, baseType: !52, size: 64, offset: 4032)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !4381, file: !4382, line: 190, baseType: !52, size: 64, offset: 4096)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !4381, file: !4382, line: 190, baseType: !52, size: 64, offset: 4160)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !4381, file: !4382, line: 191, baseType: !52, size: 64, offset: 4224)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !4381, file: !4382, line: 191, baseType: !52, size: 64, offset: 4288)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !4381, file: !4382, line: 191, baseType: !52, size: 64, offset: 4352)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !4381, file: !4382, line: 191, baseType: !52, size: 64, offset: 4416)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !4381, file: !4382, line: 192, baseType: !52, size: 64, offset: 4480)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !4381, file: !4382, line: 192, baseType: !52, size: 64, offset: 4544)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !4381, file: !4382, line: 192, baseType: !52, size: 64, offset: 4608)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !4381, file: !4382, line: 192, baseType: !52, size: 64, offset: 4672)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !4381, file: !4382, line: 193, baseType: !52, size: 64, offset: 4736)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !4381, file: !4382, line: 193, baseType: !52, size: 64, offset: 4800)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !4381, file: !4382, line: 194, baseType: !4477, size: 448, offset: 4864)
!4477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !4478, line: 12, size: 448, elements: !4479)
!4478 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!4479 = !{!4480, !4481, !4482, !4483, !4484, !4485, !4486}
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !4477, file: !4478, line: 15, baseType: !260, size: 64)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !4477, file: !4478, line: 17, baseType: !260, size: 64, offset: 64)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !4477, file: !4478, line: 19, baseType: !260, size: 64, offset: 128)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !4477, file: !4478, line: 21, baseType: !260, size: 64, offset: 192)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !4477, file: !4478, line: 29, baseType: !260, size: 64, offset: 256)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !4477, file: !4478, line: 35, baseType: !260, size: 64, offset: 320)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !4477, file: !4478, line: 44, baseType: !260, size: 64, offset: 384)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !4381, file: !4382, line: 202, baseType: !262, size: 64, offset: 5312)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !4381, file: !4382, line: 213, baseType: !4489, size: 2048, offset: 5376)
!4489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4490, size: 2048, elements: !3460)
!4490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !4491, line: 43, size: 128, elements: !4492)
!4491 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!4492 = !{!4493, !4494}
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !4490, file: !4491, line: 44, baseType: !51, size: 64)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !4490, file: !4491, line: 45, baseType: !51, size: 64, offset: 64)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !4381, file: !4382, line: 216, baseType: !4496, size: 448, offset: 7424)
!4496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !4382, line: 30, size: 448, elements: !4497)
!4497 = !{!4498, !4499, !4500, !4501, !4502, !4503, !4504}
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !4496, file: !4382, line: 31, baseType: !35, size: 32)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !4496, file: !4382, line: 32, baseType: !1069, size: 64, offset: 64)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !4496, file: !4382, line: 33, baseType: !52, size: 64, offset: 128)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !4496, file: !4382, line: 34, baseType: !260, size: 64, offset: 192)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !4496, file: !4382, line: 34, baseType: !260, size: 64, offset: 256)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !4496, file: !4382, line: 35, baseType: !52, size: 64, offset: 320)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !4496, file: !4382, line: 35, baseType: !52, size: 64, offset: 384)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !4381, file: !4382, line: 219, baseType: !4506, size: 64, offset: 7872)
!4506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4507, size: 64)
!4507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !4508, line: 41, size: 3456, elements: !4509)
!4508 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!4509 = !{!4510, !4511, !4512, !4513, !4514, !4515, !4516, !4517, !4518, !4519, !4520, !4521, !4522, !4523, !4524, !4526, !4527, !4528, !4529, !4530, !4531, !4532, !4533, !4534, !4535, !4536, !4537, !4538, !4539, !4540, !4541, !4542, !4543, !4544, !4545, !4546, !4547, !4548, !4549, !4550, !4551, !4552, !4553, !4554, !4555, !4556, !4557, !4558, !4559, !4560, !4561, !4562, !4563, !4564, !4565, !4566}
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4507, file: !4508, line: 47, baseType: !107, size: 16)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !4507, file: !4508, line: 48, baseType: !273, size: 32, offset: 32)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !4507, file: !4508, line: 54, baseType: !98, size: 8, offset: 64)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !4507, file: !4508, line: 55, baseType: !98, size: 8, offset: 72)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !4507, file: !4508, line: 73, baseType: !261, size: 64, align: 64, offset: 128)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !4507, file: !4508, line: 74, baseType: !261, size: 64, offset: 192)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !4507, file: !4508, line: 81, baseType: !261, size: 64, offset: 256)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !4507, file: !4508, line: 82, baseType: !261, size: 64, offset: 320)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !4507, file: !4508, line: 85, baseType: !261, size: 64, offset: 384)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !4507, file: !4508, line: 86, baseType: !261, size: 64, offset: 448)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !4507, file: !4508, line: 94, baseType: !261, size: 64, offset: 512)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !4507, file: !4508, line: 102, baseType: !261, size: 64, offset: 576)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !4507, file: !4508, line: 107, baseType: !3450, size: 256, offset: 640)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !4507, file: !4508, line: 108, baseType: !98, size: 8, align: 64, offset: 896)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !4507, file: !4508, line: 110, baseType: !4525, size: 24, offset: 904)
!4525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 24, elements: !682)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !4507, file: !4508, line: 111, baseType: !273, size: 32, align: 64, offset: 960)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !4507, file: !4508, line: 113, baseType: !273, size: 32, offset: 992)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !4507, file: !4508, line: 114, baseType: !273, size: 32, offset: 1024)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !4507, file: !4508, line: 115, baseType: !273, size: 32, offset: 1056)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !4507, file: !4508, line: 117, baseType: !273, size: 32, offset: 1088)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !4507, file: !4508, line: 118, baseType: !261, size: 64, align: 64, offset: 1152)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !4507, file: !4508, line: 120, baseType: !261, size: 64, offset: 1216)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !4507, file: !4508, line: 121, baseType: !261, size: 64, offset: 1280)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !4507, file: !4508, line: 122, baseType: !261, size: 64, offset: 1344)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !4507, file: !4508, line: 123, baseType: !261, size: 64, offset: 1408)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !4507, file: !4508, line: 133, baseType: !261, size: 64, offset: 1472)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !4507, file: !4508, line: 137, baseType: !261, size: 64, offset: 1536)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !4507, file: !4508, line: 142, baseType: !261, size: 64, offset: 1600)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !4507, file: !4508, line: 143, baseType: !261, size: 64, offset: 1664)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !4507, file: !4508, line: 146, baseType: !261, size: 64, offset: 1728)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !4507, file: !4508, line: 147, baseType: !261, size: 64, offset: 1792)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !4507, file: !4508, line: 148, baseType: !261, size: 64, offset: 1856)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !4507, file: !4508, line: 149, baseType: !261, size: 64, offset: 1920)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !4507, file: !4508, line: 154, baseType: !261, size: 64, offset: 1984)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !4507, file: !4508, line: 155, baseType: !261, size: 64, offset: 2048)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !4507, file: !4508, line: 156, baseType: !261, size: 64, offset: 2112)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !4507, file: !4508, line: 158, baseType: !261, size: 64, offset: 2176)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !4507, file: !4508, line: 159, baseType: !261, size: 64, offset: 2240)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !4507, file: !4508, line: 162, baseType: !261, size: 64, offset: 2304)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !4507, file: !4508, line: 163, baseType: !261, size: 64, offset: 2368)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !4507, file: !4508, line: 164, baseType: !261, size: 64, offset: 2432)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !4507, file: !4508, line: 167, baseType: !261, size: 64, offset: 2496)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !4507, file: !4508, line: 168, baseType: !261, size: 64, offset: 2560)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !4507, file: !4508, line: 171, baseType: !261, size: 64, offset: 2624)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !4507, file: !4508, line: 172, baseType: !261, size: 64, offset: 2688)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !4507, file: !4508, line: 175, baseType: !261, size: 64, offset: 2752)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !4507, file: !4508, line: 178, baseType: !261, size: 64, offset: 2816)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !4507, file: !4508, line: 179, baseType: !261, size: 64, offset: 2880)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !4507, file: !4508, line: 182, baseType: !273, size: 32, offset: 2944)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !4507, file: !4508, line: 186, baseType: !261, size: 64, align: 64, offset: 3008)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !4507, file: !4508, line: 194, baseType: !261, size: 64, offset: 3072)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !4507, file: !4508, line: 195, baseType: !261, size: 64, offset: 3136)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !4507, file: !4508, line: 199, baseType: !261, size: 64, offset: 3200)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !4507, file: !4508, line: 200, baseType: !261, size: 64, offset: 3264)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !4507, file: !4508, line: 203, baseType: !261, size: 64, offset: 3328)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !4507, file: !4508, line: 204, baseType: !261, size: 64, offset: 3392)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !4381, file: !4382, line: 222, baseType: !7, size: 32, offset: 7936)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !4381, file: !4382, line: 223, baseType: !4569, size: 64, offset: 8000)
!4569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4570, size: 64)
!4570 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !4382, line: 223, flags: DIFlagFwdDecl)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !4381, file: !4382, line: 230, baseType: !838, size: 8, offset: 8064)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !4381, file: !4382, line: 231, baseType: !807, size: 16, offset: 8080)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !4381, file: !4382, line: 232, baseType: !807, size: 16, offset: 8096)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !4381, file: !4382, line: 234, baseType: !590, size: 64, offset: 8128)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !4381, file: !4382, line: 237, baseType: !646, size: 256, offset: 8192)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !4381, file: !4382, line: 243, baseType: !779, size: 320, offset: 8448)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !278, file: !279, line: 1111, baseType: !4578, size: 64, offset: 15424)
!4578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4579, size: 64)
!4579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !4382, line: 20, size: 16640, elements: !4580)
!4580 = !{!4581, !4582, !4583, !4584}
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !4579, file: !4382, line: 21, baseType: !72, size: 32)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4579, file: !4382, line: 22, baseType: !292, size: 32, offset: 32)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !4579, file: !4382, line: 23, baseType: !67, size: 192, offset: 64)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !4579, file: !4382, line: 24, baseType: !4585, size: 16384, offset: 256)
!4585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4586, size: 16384, elements: !1437)
!4586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !4393, line: 51, size: 256, elements: !4587)
!4587 = !{!4588}
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !4586, file: !4393, line: 52, baseType: !4589, size: 256)
!4589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !4393, line: 37, size: 256, elements: !4590)
!4590 = !{!4591, !4598, !4599, !4603}
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !4589, file: !4393, line: 39, baseType: !4592, size: 64)
!4592 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !4593, line: 83, baseType: !4594)
!4593 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!4594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4595, size: 64)
!4595 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !4593, line: 82, baseType: !4596)
!4596 = !DISubroutineType(types: !4597)
!4597 = !{null, !35}
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !4589, file: !4393, line: 40, baseType: !52, size: 64, offset: 64)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !4589, file: !4393, line: 46, baseType: !4600, size: 64, offset: 128)
!4600 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !4593, line: 86, baseType: !4601)
!4601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4602, size: 64)
!4602 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !4593, line: 85, baseType: !3014)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !4589, file: !4393, line: 48, baseType: !4397, size: 64, offset: 192)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !278, file: !279, line: 1112, baseType: !4397, size: 64, offset: 15488)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !278, file: !279, line: 1113, baseType: !4397, size: 64, offset: 15552)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !278, file: !279, line: 1115, baseType: !4397, size: 64, offset: 15616)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !278, file: !279, line: 1116, baseType: !4392, size: 192, offset: 15680)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !278, file: !279, line: 1117, baseType: !52, size: 64, offset: 15872)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !278, file: !279, line: 1118, baseType: !48, size: 64, offset: 15936)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !278, file: !279, line: 1119, baseType: !7, size: 32, offset: 16000)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !278, file: !279, line: 1121, baseType: !629, size: 64, offset: 16064)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !278, file: !279, line: 1125, baseType: !4613, size: 64, offset: 16128)
!4613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4614, size: 64)
!4614 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !279, line: 43, flags: DIFlagFwdDecl)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !278, file: !279, line: 1127, baseType: !720, size: 32, offset: 16192)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !278, file: !279, line: 1128, baseType: !7, size: 32, offset: 16224)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !278, file: !279, line: 1130, baseType: !4618, size: 128, offset: 16256)
!4618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !4619, line: 37, size: 128, elements: !4620)
!4619 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!4620 = !{!4621, !4622, !4623}
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4618, file: !4619, line: 38, baseType: !35, size: 32)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !4618, file: !4619, line: 39, baseType: !62, size: 32, offset: 32)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4618, file: !4619, line: 40, baseType: !4624, size: 64, offset: 64)
!4624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4625, size: 64)
!4625 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !4619, line: 24, flags: DIFlagFwdDecl)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !278, file: !279, line: 1131, baseType: !4627, size: 256, offset: 16384)
!4627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !4628, line: 12, size: 256, elements: !4629)
!4628 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!4629 = !{!4630, !4631, !4632, !4633}
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !4627, file: !4628, line: 13, baseType: !849, size: 64)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4627, file: !4628, line: 14, baseType: !52, size: 64, offset: 64)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4627, file: !4628, line: 15, baseType: !52, size: 64, offset: 128)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !4627, file: !4628, line: 16, baseType: !838, size: 8, offset: 192)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !278, file: !279, line: 1134, baseType: !260, size: 64, offset: 16640)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !278, file: !279, line: 1135, baseType: !260, size: 64, offset: 16704)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !278, file: !279, line: 1138, baseType: !72, size: 32, offset: 16768)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !278, file: !279, line: 1141, baseType: !433, size: 32, offset: 16800)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !278, file: !279, line: 1143, baseType: !4639, size: 64, offset: 16832)
!4639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !279, line: 735, size: 64, elements: !4640)
!4640 = !{!4641}
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4639, file: !279, line: 736, baseType: !4642, size: 64)
!4642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4639, size: 64)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !278, file: !279, line: 1147, baseType: !473, size: 128, offset: 16896)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !278, file: !279, line: 1149, baseType: !277, size: 64, offset: 17024)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !278, file: !279, line: 1151, baseType: !4646, size: 64, offset: 17088)
!4646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4647, size: 64)
!4647 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !279, line: 1151, flags: DIFlagFwdDecl)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !278, file: !279, line: 1188, baseType: !33, size: 64, offset: 17152)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !278, file: !279, line: 1191, baseType: !4650, size: 64, offset: 17216)
!4650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4651, size: 64)
!4651 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !279, line: 44, flags: DIFlagFwdDecl)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !278, file: !279, line: 1194, baseType: !4653, size: 64, offset: 17280)
!4653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4654, size: 64)
!4654 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !279, line: 45, flags: DIFlagFwdDecl)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !278, file: !279, line: 1197, baseType: !4656, size: 64, offset: 17344)
!4656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4657, size: 64)
!4657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !2018, line: 155, size: 64, elements: !4658)
!4658 = !{!4659}
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "reclaimed", scope: !4657, file: !2018, line: 157, baseType: !52, size: 64)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !278, file: !279, line: 1199, baseType: !4661, size: 64, offset: 17408)
!4661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4662, size: 64)
!4662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2069, line: 99, size: 128, elements: !4663)
!4663 = !{!4664, !4665, !4666}
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4662, file: !2069, line: 100, baseType: !639, size: 64)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !4662, file: !2069, line: 101, baseType: !62, size: 32, offset: 64)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !4662, file: !2069, line: 103, baseType: !39, size: 16, offset: 96)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !278, file: !279, line: 1202, baseType: !4668, size: 64, offset: 17472)
!4668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4669, size: 64)
!4669 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !279, line: 48, flags: DIFlagFwdDecl)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !278, file: !279, line: 1205, baseType: !52, size: 64, offset: 17536)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !278, file: !279, line: 1206, baseType: !4672, size: 64, offset: 17600)
!4672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4673, size: 64)
!4673 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !4393, line: 14, baseType: !4674)
!4674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !4393, line: 12, size: 384, elements: !4675)
!4675 = !{!4676}
!4676 = !DIDerivedType(tag: DW_TAG_member, scope: !4674, file: !4393, line: 13, baseType: !4677, size: 384)
!4677 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4674, file: !4393, line: 13, size: 384, elements: !4678)
!4678 = !{!4679, !4680, !4681, !4682}
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !4677, file: !4393, line: 13, baseType: !35, size: 32)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !4677, file: !4393, line: 13, baseType: !35, size: 32, offset: 32)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !4677, file: !4393, line: 13, baseType: !35, size: 32, offset: 64)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !4677, file: !4393, line: 13, baseType: !4683, size: 256, offset: 128)
!4683 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !4684, line: 37, size: 256, elements: !4685)
!4684 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!4685 = !{!4686, !4691, !4704, !4710, !4719, !4746, !4751}
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !4683, file: !4684, line: 42, baseType: !4687, size: 64)
!4687 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4683, file: !4684, line: 39, size: 64, elements: !4688)
!4688 = !{!4689, !4690}
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4687, file: !4684, line: 40, baseType: !4005, size: 32)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4687, file: !4684, line: 41, baseType: !726, size: 32, offset: 32)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !4683, file: !4684, line: 50, baseType: !4692, size: 192)
!4692 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4683, file: !4684, line: 45, size: 192, elements: !4693)
!4693 = !{!4694, !4696, !4697, !4703}
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !4692, file: !4684, line: 46, baseType: !4695, size: 32)
!4695 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !50, line: 95, baseType: !35)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !4692, file: !4684, line: 47, baseType: !35, size: 32, offset: 32)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4692, file: !4684, line: 48, baseType: !4698, size: 64, offset: 64)
!4698 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !4684, line: 11, baseType: !4699)
!4699 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !4684, line: 8, size: 64, elements: !4700)
!4700 = !{!4701, !4702}
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !4699, file: !4684, line: 9, baseType: !35, size: 32)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !4699, file: !4684, line: 10, baseType: !33, size: 64)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !4692, file: !4684, line: 49, baseType: !35, size: 32, offset: 128)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !4683, file: !4684, line: 57, baseType: !4705, size: 128)
!4705 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4683, file: !4684, line: 53, size: 128, elements: !4706)
!4706 = !{!4707, !4708, !4709}
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4705, file: !4684, line: 54, baseType: !4005, size: 32)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4705, file: !4684, line: 55, baseType: !726, size: 32, offset: 32)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4705, file: !4684, line: 56, baseType: !4698, size: 64, offset: 64)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !4683, file: !4684, line: 66, baseType: !4711, size: 256)
!4711 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4683, file: !4684, line: 60, size: 256, elements: !4712)
!4712 = !{!4713, !4714, !4715, !4716, !4718}
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4711, file: !4684, line: 61, baseType: !4005, size: 32)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4711, file: !4684, line: 62, baseType: !726, size: 32, offset: 32)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !4711, file: !4684, line: 63, baseType: !35, size: 32, offset: 64)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !4711, file: !4684, line: 64, baseType: !4717, size: 64, offset: 128)
!4717 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !50, line: 94, baseType: !1294)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !4711, file: !4684, line: 65, baseType: !4717, size: 64, offset: 192)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !4683, file: !4684, line: 105, baseType: !4720, size: 256)
!4720 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4683, file: !4684, line: 69, size: 256, elements: !4721)
!4721 = !{!4722, !4723}
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !4720, file: !4684, line: 70, baseType: !33, size: 64)
!4723 = !DIDerivedType(tag: DW_TAG_member, scope: !4720, file: !4684, line: 79, baseType: !4724, size: 192, offset: 64)
!4724 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4720, file: !4684, line: 79, size: 192, elements: !4725)
!4725 = !{!4726, !4727, !4728, !4735, !4740}
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !4724, file: !4684, line: 81, baseType: !35, size: 32)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !4724, file: !4684, line: 86, baseType: !807, size: 16)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !4724, file: !4684, line: 92, baseType: !4729, size: 192)
!4729 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4724, file: !4684, line: 88, size: 192, elements: !4730)
!4730 = !{!4731, !4733, !4734}
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !4729, file: !4684, line: 89, baseType: !4732, size: 64)
!4732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 64, elements: !452)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !4729, file: !4684, line: 90, baseType: !33, size: 64, offset: 64)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !4729, file: !4684, line: 91, baseType: !33, size: 64, offset: 128)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !4724, file: !4684, line: 97, baseType: !4736, size: 96)
!4736 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4724, file: !4684, line: 94, size: 96, elements: !4737)
!4737 = !{!4738, !4739}
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !4736, file: !4684, line: 95, baseType: !4732, size: 64)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !4736, file: !4684, line: 96, baseType: !273, size: 32, offset: 64)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !4724, file: !4684, line: 103, baseType: !4741, size: 128)
!4741 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4724, file: !4684, line: 99, size: 128, elements: !4742)
!4742 = !{!4743, !4744, !4745}
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !4741, file: !4684, line: 100, baseType: !52, size: 64)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !4741, file: !4684, line: 101, baseType: !273, size: 32, offset: 64)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4741, file: !4684, line: 102, baseType: !273, size: 32, offset: 96)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !4683, file: !4684, line: 111, baseType: !4747, size: 128)
!4747 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4683, file: !4684, line: 108, size: 128, elements: !4748)
!4748 = !{!4749, !4750}
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !4747, file: !4684, line: 109, baseType: !1069, size: 64)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !4747, file: !4684, line: 110, baseType: !35, size: 32, offset: 64)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !4683, file: !4684, line: 118, baseType: !4752, size: 128)
!4752 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4683, file: !4684, line: 114, size: 128, elements: !4753)
!4753 = !{!4754, !4755, !4756}
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !4752, file: !4684, line: 115, baseType: !33, size: 64)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !4752, file: !4684, line: 116, baseType: !35, size: 32, offset: 64)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !4752, file: !4684, line: 117, baseType: !7, size: 32, offset: 96)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !278, file: !279, line: 1208, baseType: !4477, size: 448, offset: 17664)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !278, file: !279, line: 1215, baseType: !260, size: 64, offset: 18112)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !278, file: !279, line: 1217, baseType: !260, size: 64, offset: 18176)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !278, file: !279, line: 1219, baseType: !260, size: 64, offset: 18240)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !278, file: !279, line: 1223, baseType: !4762, size: 64, offset: 18304)
!4762 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !4763, line: 99, baseType: !4764)
!4763 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!4764 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4763, line: 99, size: 64, elements: !4765)
!4765 = !{!4766}
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !4764, file: !4763, line: 99, baseType: !541, size: 64)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !278, file: !279, line: 1225, baseType: !1111, size: 32, offset: 18368)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !278, file: !279, line: 1226, baseType: !35, size: 32, offset: 18400)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !278, file: !279, line: 1227, baseType: !35, size: 32, offset: 18432)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !278, file: !279, line: 1231, baseType: !4119, size: 64, offset: 18496)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !278, file: !279, line: 1233, baseType: !110, size: 128, offset: 18560)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !278, file: !279, line: 1240, baseType: !4773, size: 64, offset: 18688)
!4773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4774, size: 64)
!4774 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !279, line: 62, flags: DIFlagFwdDecl)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !278, file: !279, line: 1242, baseType: !4776, size: 64, offset: 18752)
!4776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4777, size: 64)
!4777 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !279, line: 1242, flags: DIFlagFwdDecl)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !278, file: !279, line: 1244, baseType: !110, size: 128, offset: 18816)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !278, file: !279, line: 1245, baseType: !4780, size: 64, offset: 18944)
!4780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4781, size: 64)
!4781 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !279, line: 51, flags: DIFlagFwdDecl)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !278, file: !279, line: 1246, baseType: !646, size: 256, offset: 19008)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !278, file: !279, line: 1247, baseType: !7, size: 32, offset: 19264)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !278, file: !279, line: 1250, baseType: !4785, size: 64, offset: 19328)
!4785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4786, size: 64)
!4786 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !279, line: 57, flags: DIFlagFwdDecl)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !278, file: !279, line: 1251, baseType: !646, size: 256, offset: 19392)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !278, file: !279, line: 1252, baseType: !110, size: 128, offset: 19648)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !278, file: !279, line: 1259, baseType: !1721, size: 64, offset: 19776)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !278, file: !279, line: 1260, baseType: !807, size: 16, offset: 19840)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !278, file: !279, line: 1261, baseType: !807, size: 16, offset: 19856)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !278, file: !279, line: 1314, baseType: !4793, size: 64, offset: 19904)
!4793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4794, size: 64)
!4794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !4795, line: 62, size: 256, align: 256, elements: !4796)
!4795 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!4796 = !{!4797, !4798, !4799, !4800, !4801, !4802, !4803}
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !4794, file: !4795, line: 75, baseType: !273, size: 32)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !4794, file: !4795, line: 90, baseType: !273, size: 32, offset: 32)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !4794, file: !4795, line: 112, baseType: !261, size: 64, offset: 64)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4794, file: !4795, line: 132, baseType: !273, size: 32, offset: 128)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !4794, file: !4795, line: 140, baseType: !273, size: 32, offset: 160)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !4794, file: !4795, line: 149, baseType: !273, size: 32, offset: 192)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4794, file: !4795, line: 154, baseType: !4804, offset: 224)
!4804 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, elements: !716)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !278, file: !279, line: 1315, baseType: !272, size: 32, offset: 19968)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !278, file: !279, line: 1316, baseType: !272, size: 32, offset: 20000)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !278, file: !279, line: 1321, baseType: !52, size: 64, offset: 20032)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !278, file: !279, line: 1325, baseType: !35, size: 32, offset: 20096)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !278, file: !279, line: 1326, baseType: !35, size: 32, offset: 20128)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !278, file: !279, line: 1327, baseType: !35, size: 32, offset: 20160)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !278, file: !279, line: 1328, baseType: !35, size: 32, offset: 20192)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !278, file: !279, line: 1329, baseType: !626, size: 128, align: 64, offset: 20224)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !278, file: !279, line: 1332, baseType: !4814, size: 128, offset: 20352)
!4814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !4815, line: 51, size: 128, elements: !4816)
!4815 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!4816 = !{!4817, !4822, !4823}
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !4814, file: !4815, line: 60, baseType: !4818, size: 64)
!4818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !4819, line: 7, size: 64, elements: !4820)
!4819 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!4820 = !{!4821}
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !4818, file: !4819, line: 12, baseType: !538, size: 64)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !4814, file: !4815, line: 63, baseType: !838, size: 8, offset: 64)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !4814, file: !4815, line: 70, baseType: !838, size: 8, offset: 72)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !278, file: !279, line: 1335, baseType: !3698, size: 64, offset: 20480)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !278, file: !279, line: 1337, baseType: !4826, size: 128, offset: 20544)
!4826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !4815, line: 39, size: 128, elements: !4827)
!4827 = !{!4828, !4829, !4830}
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4826, file: !4815, line: 40, baseType: !1518, size: 64)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4826, file: !4815, line: 42, baseType: !273, size: 32, offset: 64)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4826, file: !4815, line: 43, baseType: !273, size: 32, offset: 96)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !278, file: !279, line: 1340, baseType: !4832, size: 64, offset: 20672)
!4832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4833, size: 64)
!4833 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !279, line: 69, flags: DIFlagFwdDecl)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !278, file: !279, line: 1351, baseType: !35, size: 32, offset: 20736)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !278, file: !279, line: 1352, baseType: !35, size: 32, offset: 20768)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !278, file: !279, line: 1354, baseType: !52, size: 64, offset: 20800)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !278, file: !279, line: 1364, baseType: !260, size: 64, offset: 20864)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !278, file: !279, line: 1365, baseType: !260, size: 64, offset: 20928)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !278, file: !279, line: 1412, baseType: !52, size: 64, offset: 20992)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !278, file: !279, line: 1453, baseType: !2064, size: 64, offset: 21056)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !278, file: !279, line: 1457, baseType: !4842, size: 64, offset: 21120)
!4842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4843, size: 64)
!4843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !252, line: 61, size: 576, elements: !4844)
!4844 = !{!4845, !4846, !4865, !4868, !4869, !4902, !4912}
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4843, file: !252, line: 62, baseType: !251, size: 32)
!4846 = !DIDerivedType(tag: DW_TAG_member, scope: !4843, file: !252, line: 64, baseType: !4847, size: 192, offset: 64)
!4847 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4843, file: !252, line: 64, size: 192, elements: !4848)
!4848 = !{!4849, !4860}
!4849 = !DIDerivedType(tag: DW_TAG_member, scope: !4847, file: !252, line: 65, baseType: !4850, size: 192)
!4850 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4847, file: !252, line: 65, size: 192, elements: !4851)
!4851 = !{!4852, !4859}
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !4850, file: !252, line: 66, baseType: !4853, size: 128)
!4853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !4854, line: 50, size: 128, elements: !4855)
!4854 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!4855 = !{!4856, !4857, !4858}
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !4853, file: !4854, line: 52, baseType: !52, size: 64)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !4853, file: !4854, line: 54, baseType: !7, size: 32, offset: 64)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !4853, file: !4854, line: 55, baseType: !7, size: 32, offset: 96)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !4850, file: !252, line: 67, baseType: !52, size: 64, offset: 128)
!4860 = !DIDerivedType(tag: DW_TAG_member, scope: !4847, file: !252, line: 70, baseType: !4861, size: 192)
!4861 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4847, file: !252, line: 70, size: 192, elements: !4862)
!4862 = !{!4863, !4864}
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !4861, file: !252, line: 71, baseType: !626, size: 128, align: 64)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !4861, file: !252, line: 72, baseType: !52, size: 64, offset: 128)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !4843, file: !252, line: 76, baseType: !4866, size: 64, offset: 256)
!4866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4867, size: 64)
!4867 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !252, line: 76, flags: DIFlagFwdDecl)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !4843, file: !252, line: 77, baseType: !52, size: 64, offset: 320)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !4843, file: !252, line: 79, baseType: !4870, size: 64, offset: 384)
!4870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4871, size: 64)
!4871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !4854, line: 25, size: 256, elements: !4872)
!4872 = !{!4873, !4879, !4883}
!4873 = !DIDerivedType(tag: DW_TAG_member, scope: !4871, file: !4854, line: 26, baseType: !4874, size: 128)
!4874 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4871, file: !4854, line: 26, size: 128, elements: !4875)
!4875 = !{!4876, !4878}
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4874, file: !4854, line: 27, baseType: !4877, size: 128)
!4877 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 128, elements: !3460)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !4874, file: !4854, line: 28, baseType: !4877, size: 128)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4871, file: !4854, line: 31, baseType: !4880, size: 64, offset: 128)
!4880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4881, size: 64)
!4881 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4882)
!4882 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !4854, line: 23, flags: DIFlagFwdDecl)
!4883 = !DIDerivedType(tag: DW_TAG_member, scope: !4871, file: !4854, line: 33, baseType: !4884, size: 64, offset: 192)
!4884 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4871, file: !4854, line: 33, size: 64, elements: !4885)
!4885 = !{!4886, !4892, !4897}
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !4884, file: !4854, line: 38, baseType: !4887, size: 64)
!4887 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4884, file: !4854, line: 34, size: 64, elements: !4888)
!4888 = !{!4889, !4890, !4891}
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !4887, file: !4854, line: 35, baseType: !771, size: 32)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4887, file: !4854, line: 36, baseType: !96, size: 8, offset: 32)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !4887, file: !4854, line: 37, baseType: !96, size: 8, offset: 40)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !4884, file: !4854, line: 42, baseType: !4893, size: 16)
!4893 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4884, file: !4854, line: 39, size: 16, elements: !4894)
!4894 = !{!4895, !4896}
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !4893, file: !4854, line: 40, baseType: !96, size: 8)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4893, file: !4854, line: 41, baseType: !96, size: 8, offset: 8)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !4884, file: !4854, line: 46, baseType: !4898, size: 16)
!4898 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4884, file: !4854, line: 43, size: 16, elements: !4899)
!4899 = !{!4900, !4901}
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !4898, file: !4854, line: 44, baseType: !96, size: 8)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4898, file: !4854, line: 45, baseType: !96, size: 8, offset: 8)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !4843, file: !252, line: 81, baseType: !4903, size: 64, offset: 448)
!4903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4904, size: 64)
!4904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !252, line: 85, size: 384, elements: !4905)
!4905 = !{!4906, !4907, !4908, !4909, !4910, !4911}
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !4904, file: !252, line: 86, baseType: !4866, size: 64)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4904, file: !252, line: 87, baseType: !52, size: 64, offset: 64)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !4904, file: !252, line: 88, baseType: !52, size: 64, offset: 128)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !4904, file: !252, line: 89, baseType: !52, size: 64, offset: 192)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !4904, file: !252, line: 90, baseType: !838, size: 8, offset: 256)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4904, file: !252, line: 92, baseType: !4903, size: 64, offset: 320)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4843, file: !252, line: 82, baseType: !7, size: 32, offset: 512)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !278, file: !279, line: 1463, baseType: !4914, offset: 21184)
!4914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !279, line: 739, elements: !611)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !278, file: !279, line: 1470, baseType: !626, size: 128, align: 64, offset: 21184)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !278, file: !279, line: 1471, baseType: !292, size: 32, offset: 21312)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !278, file: !279, line: 1472, baseType: !35, size: 32, offset: 21344)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !278, file: !279, line: 1474, baseType: !277, size: 64, offset: 21376)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !278, file: !279, line: 1475, baseType: !2273, size: 320, offset: 21440)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !278, file: !279, line: 1478, baseType: !4921, size: 64, offset: 21760)
!4921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4922, size: 64)
!4922 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !279, line: 1478, flags: DIFlagFwdDecl)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !278, file: !279, line: 1482, baseType: !292, size: 32, offset: 21824)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !278, file: !279, line: 1489, baseType: !33, size: 64, offset: 21888)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !278, file: !279, line: 1504, baseType: !33, size: 64, offset: 21952)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !278, file: !279, line: 1505, baseType: !261, size: 64, offset: 22016)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !278, file: !279, line: 1506, baseType: !260, size: 64, offset: 22080)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !278, file: !279, line: 1507, baseType: !261, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !278, file: !279, line: 1508, baseType: !261, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !278, file: !279, line: 1509, baseType: !261, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !278, file: !279, line: 1510, baseType: !626, size: 128, align: 64, offset: 22208)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !278, file: !279, line: 1511, baseType: !35, size: 32, offset: 22336)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !278, file: !279, line: 1515, baseType: !4934, size: 64, offset: 22400)
!4934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !306, line: 56, size: 64, elements: !4935)
!4935 = !{!4936}
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4934, file: !306, line: 57, baseType: !309, size: 64)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !278, file: !279, line: 1518, baseType: !4934, size: 64, offset: 22464)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !278, file: !279, line: 1528, baseType: !626, size: 128, align: 64, offset: 22528)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !278, file: !279, line: 1552, baseType: !4940, size: 35328, offset: 23040)
!4940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !4941, line: 430, size: 35328, elements: !4942)
!4941 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!4942 = !{!4943, !4961, !4962, !4963, !4964, !4965, !4966, !4967, !4968, !4972, !4973, !4974, !4975, !4976, !4977, !4980, !4981, !4982, !4983}
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !4940, file: !4941, line: 432, baseType: !4944, size: 192)
!4944 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4945, size: 192, elements: !682)
!4945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !4946, line: 16, size: 64, elements: !4947)
!4946 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!4947 = !{!4948, !4949, !4950, !4951, !4952, !4953, !4954, !4955, !4956, !4957, !4958, !4959, !4960}
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !4945, file: !4946, line: 17, baseType: !106, size: 16)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !4945, file: !4946, line: 18, baseType: !106, size: 16, offset: 16)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !4945, file: !4946, line: 19, baseType: !106, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4945, file: !4946, line: 19, baseType: !106, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !4945, file: !4946, line: 19, baseType: !106, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !4945, file: !4946, line: 19, baseType: !106, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4945, file: !4946, line: 19, baseType: !106, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !4945, file: !4946, line: 20, baseType: !106, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !4945, file: !4946, line: 20, baseType: !106, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !4945, file: !4946, line: 20, baseType: !106, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !4945, file: !4946, line: 20, baseType: !106, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !4945, file: !4946, line: 20, baseType: !106, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !4945, file: !4946, line: 20, baseType: !106, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4940, file: !4941, line: 436, baseType: !52, size: 64, offset: 192)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !4940, file: !4941, line: 440, baseType: !39, size: 16, offset: 256)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !4940, file: !4941, line: 441, baseType: !39, size: 16, offset: 272)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !4940, file: !4941, line: 442, baseType: !39, size: 16, offset: 288)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !4940, file: !4941, line: 443, baseType: !39, size: 16, offset: 304)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !4940, file: !4941, line: 447, baseType: !52, size: 64, offset: 320)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !4940, file: !4941, line: 448, baseType: !52, size: 64, offset: 384)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !4940, file: !4941, line: 459, baseType: !4969, size: 256, offset: 448)
!4969 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4970, size: 256, elements: !703)
!4970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4971, size: 64)
!4971 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !4941, line: 428, flags: DIFlagFwdDecl)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !4940, file: !4941, line: 461, baseType: !52, size: 64, offset: 704)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !4940, file: !4941, line: 463, baseType: !52, size: 64, offset: 768)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !4940, file: !4941, line: 465, baseType: !52, size: 64, offset: 832)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !4940, file: !4941, line: 466, baseType: !52, size: 64, offset: 896)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !4940, file: !4941, line: 467, baseType: !52, size: 64, offset: 960)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !4940, file: !4941, line: 473, baseType: !4978, size: 64, offset: 1024)
!4978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4979, size: 64)
!4979 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !4941, line: 10, flags: DIFlagFwdDecl)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !4940, file: !4941, line: 480, baseType: !52, size: 64, offset: 1088)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !4940, file: !4941, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !4940, file: !4941, line: 491, baseType: !272, size: 32, offset: 1184)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !4940, file: !4941, line: 501, baseType: !4984, size: 33792, offset: 1536)
!4984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !4985, line: 448, size: 33792, elements: !4986)
!4985 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!4986 = !{!4987, !4988, !4989, !5149, !5150, !5156, !5157}
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4984, file: !4985, line: 461, baseType: !7, size: 32)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !4984, file: !4985, line: 468, baseType: !52, size: 64, offset: 64)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !4984, file: !4985, line: 476, baseType: !4990, size: 64, offset: 128)
!4990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4991, size: 64)
!4991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !4985, line: 356, size: 33280, align: 512, elements: !4992)
!4992 = !{!4993, !4994, !4995, !4996, !4997, !4998, !4999, !5000, !5001, !5002}
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4991, file: !4985, line: 358, baseType: !7, size: 32)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !4991, file: !4985, line: 361, baseType: !7, size: 32, offset: 32)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4991, file: !4985, line: 364, baseType: !260, size: 64, offset: 64)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !4991, file: !4985, line: 367, baseType: !260, size: 64, offset: 128)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !4991, file: !4985, line: 370, baseType: !260, size: 64, offset: 192)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !4991, file: !4985, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !4991, file: !4985, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !4991, file: !4985, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !4991, file: !4985, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4991, file: !4985, line: 397, baseType: !5003, size: 32768, offset: 512)
!5003 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !4985, line: 348, size: 32768, elements: !5004)
!5004 = !{!5005, !5020, !5057, !5134, !5147}
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !5003, file: !4985, line: 349, baseType: !5006, size: 896)
!5006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !4985, line: 12, size: 896, elements: !5007)
!5007 = !{!5008, !5009, !5010, !5011, !5012, !5013, !5014, !5015, !5019}
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5006, file: !4985, line: 13, baseType: !272, size: 32)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5006, file: !4985, line: 14, baseType: !272, size: 32, offset: 32)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5006, file: !4985, line: 15, baseType: !272, size: 32, offset: 64)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5006, file: !4985, line: 16, baseType: !272, size: 32, offset: 96)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5006, file: !4985, line: 17, baseType: !272, size: 32, offset: 128)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5006, file: !4985, line: 18, baseType: !272, size: 32, offset: 160)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5006, file: !4985, line: 19, baseType: !272, size: 32, offset: 192)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5006, file: !4985, line: 22, baseType: !5016, size: 640, offset: 224)
!5016 = !DICompositeType(tag: DW_TAG_array_type, baseType: !272, size: 640, elements: !5017)
!5017 = !{!5018}
!5018 = !DISubrange(count: 20)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5006, file: !4985, line: 25, baseType: !272, size: 32, offset: 864)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !5003, file: !4985, line: 350, baseType: !5021, size: 4096, align: 128)
!5021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !4985, line: 34, size: 4096, align: 128, elements: !5022)
!5022 = !{!5023, !5024, !5025, !5026, !5027, !5042, !5043, !5044, !5046, !5048, !5052}
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5021, file: !4985, line: 35, baseType: !106, size: 16)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5021, file: !4985, line: 36, baseType: !106, size: 16, offset: 16)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5021, file: !4985, line: 37, baseType: !106, size: 16, offset: 32)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !5021, file: !4985, line: 38, baseType: !106, size: 16, offset: 48)
!5027 = !DIDerivedType(tag: DW_TAG_member, scope: !5021, file: !4985, line: 39, baseType: !5028, size: 128, offset: 64)
!5028 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5021, file: !4985, line: 39, size: 128, elements: !5029)
!5029 = !{!5030, !5035}
!5030 = !DIDerivedType(tag: DW_TAG_member, scope: !5028, file: !4985, line: 40, baseType: !5031, size: 128)
!5031 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5028, file: !4985, line: 40, size: 128, elements: !5032)
!5032 = !{!5033, !5034}
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !5031, file: !4985, line: 41, baseType: !260, size: 64)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !5031, file: !4985, line: 42, baseType: !260, size: 64, offset: 64)
!5035 = !DIDerivedType(tag: DW_TAG_member, scope: !5028, file: !4985, line: 44, baseType: !5036, size: 128)
!5036 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5028, file: !4985, line: 44, size: 128, elements: !5037)
!5037 = !{!5038, !5039, !5040, !5041}
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5036, file: !4985, line: 45, baseType: !272, size: 32)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5036, file: !4985, line: 46, baseType: !272, size: 32, offset: 32)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5036, file: !4985, line: 47, baseType: !272, size: 32, offset: 64)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5036, file: !4985, line: 48, baseType: !272, size: 32, offset: 96)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !5021, file: !4985, line: 51, baseType: !272, size: 32, offset: 192)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !5021, file: !4985, line: 52, baseType: !272, size: 32, offset: 224)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5021, file: !4985, line: 55, baseType: !5045, size: 1024, offset: 256)
!5045 = !DICompositeType(tag: DW_TAG_array_type, baseType: !272, size: 1024, elements: !3451)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !5021, file: !4985, line: 58, baseType: !5047, size: 2048, offset: 1280)
!5047 = !DICompositeType(tag: DW_TAG_array_type, baseType: !272, size: 2048, elements: !1437)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !5021, file: !4985, line: 60, baseType: !5049, size: 384, offset: 3328)
!5049 = !DICompositeType(tag: DW_TAG_array_type, baseType: !272, size: 384, elements: !5050)
!5050 = !{!5051}
!5051 = !DISubrange(count: 12)
!5052 = !DIDerivedType(tag: DW_TAG_member, scope: !5021, file: !4985, line: 62, baseType: !5053, size: 384, offset: 3712)
!5053 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5021, file: !4985, line: 62, size: 384, elements: !5054)
!5054 = !{!5055, !5056}
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !5053, file: !4985, line: 63, baseType: !5049, size: 384)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !5053, file: !4985, line: 64, baseType: !5049, size: 384)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !5003, file: !4985, line: 351, baseType: !5058, size: 1088)
!5058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !4985, line: 79, size: 1088, elements: !5059)
!5059 = !{!5060, !5061, !5062, !5063, !5064, !5065, !5066, !5067, !5068, !5069, !5070, !5071, !5072, !5073, !5074, !5133}
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5058, file: !4985, line: 80, baseType: !272, size: 32)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5058, file: !4985, line: 81, baseType: !272, size: 32, offset: 32)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5058, file: !4985, line: 82, baseType: !272, size: 32, offset: 64)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5058, file: !4985, line: 83, baseType: !272, size: 32, offset: 96)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5058, file: !4985, line: 84, baseType: !272, size: 32, offset: 128)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5058, file: !4985, line: 85, baseType: !272, size: 32, offset: 160)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5058, file: !4985, line: 86, baseType: !272, size: 32, offset: 192)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5058, file: !4985, line: 88, baseType: !5016, size: 640, offset: 224)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !5058, file: !4985, line: 89, baseType: !96, size: 8, offset: 864)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !5058, file: !4985, line: 90, baseType: !96, size: 8, offset: 872)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !5058, file: !4985, line: 91, baseType: !96, size: 8, offset: 880)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !5058, file: !4985, line: 92, baseType: !96, size: 8, offset: 888)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !5058, file: !4985, line: 93, baseType: !96, size: 8, offset: 896)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !5058, file: !4985, line: 94, baseType: !96, size: 8, offset: 904)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5058, file: !4985, line: 95, baseType: !5075, size: 64, offset: 960)
!5075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5076, size: 64)
!5076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !5077, line: 11, size: 128, elements: !5078)
!5077 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!5078 = !{!5079, !5080}
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !5076, file: !5077, line: 12, baseType: !1069, size: 64)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5076, file: !5077, line: 13, baseType: !5081, size: 64, offset: 64)
!5081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5082, size: 64)
!5082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !5083, line: 103, size: 1344, elements: !5084)
!5083 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!5084 = !{!5085, !5086, !5087, !5088, !5089, !5090, !5091, !5092, !5093, !5094, !5095, !5096, !5097, !5098, !5099, !5100, !5101, !5102, !5113, !5114, !5115}
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !5082, file: !5083, line: 109, baseType: !52, size: 64)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !5082, file: !5083, line: 110, baseType: !52, size: 64, offset: 64)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !5082, file: !5083, line: 111, baseType: !52, size: 64, offset: 128)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !5082, file: !5083, line: 112, baseType: !52, size: 64, offset: 192)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !5082, file: !5083, line: 113, baseType: !52, size: 64, offset: 256)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !5082, file: !5083, line: 114, baseType: !52, size: 64, offset: 320)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !5082, file: !5083, line: 117, baseType: !52, size: 64, offset: 384)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !5082, file: !5083, line: 118, baseType: !52, size: 64, offset: 448)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !5082, file: !5083, line: 119, baseType: !52, size: 64, offset: 512)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !5082, file: !5083, line: 120, baseType: !52, size: 64, offset: 576)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !5082, file: !5083, line: 121, baseType: !52, size: 64, offset: 640)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !5082, file: !5083, line: 122, baseType: !52, size: 64, offset: 704)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !5082, file: !5083, line: 123, baseType: !52, size: 64, offset: 768)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !5082, file: !5083, line: 124, baseType: !52, size: 64, offset: 832)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !5082, file: !5083, line: 125, baseType: !52, size: 64, offset: 896)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !5082, file: !5083, line: 139, baseType: !52, size: 64, offset: 960)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !5082, file: !5083, line: 142, baseType: !52, size: 64, offset: 1024)
!5102 = !DIDerivedType(tag: DW_TAG_member, scope: !5082, file: !5083, line: 144, baseType: !5103, size: 64, offset: 1088)
!5103 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5082, file: !5083, line: 144, size: 64, elements: !5104)
!5104 = !{!5105, !5106, !5107}
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !5103, file: !5083, line: 146, baseType: !106, size: 16)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !5103, file: !5083, line: 148, baseType: !260, size: 64)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !5103, file: !5083, line: 150, baseType: !5108, size: 64)
!5108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !5083, line: 59, size: 64, elements: !5109)
!5109 = !{!5110, !5111, !5112}
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !5108, file: !5083, line: 61, baseType: !260, size: 16, flags: DIFlagBitField, extraData: i64 0)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !5108, file: !5083, line: 63, baseType: !260, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !5108, file: !5083, line: 65, baseType: !260, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5082, file: !5083, line: 153, baseType: !52, size: 64, offset: 1152)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !5082, file: !5083, line: 154, baseType: !52, size: 64, offset: 1216)
!5115 = !DIDerivedType(tag: DW_TAG_member, scope: !5082, file: !5083, line: 156, baseType: !5116, size: 64, offset: 1280)
!5116 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5082, file: !5083, line: 156, size: 64, elements: !5117)
!5117 = !{!5118, !5119, !5120}
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !5116, file: !5083, line: 158, baseType: !106, size: 16)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !5116, file: !5083, line: 160, baseType: !260, size: 64)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !5116, file: !5083, line: 162, baseType: !5121, size: 64)
!5121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !5083, line: 69, size: 64, elements: !5122)
!5122 = !{!5123, !5124, !5125, !5126, !5127, !5128, !5129, !5130, !5131, !5132}
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !5121, file: !5083, line: 71, baseType: !260, size: 16, flags: DIFlagBitField, extraData: i64 0)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !5121, file: !5083, line: 73, baseType: !260, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !5121, file: !5083, line: 75, baseType: !260, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !5121, file: !5083, line: 77, baseType: !260, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !5121, file: !5083, line: 80, baseType: !260, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5121, file: !5083, line: 83, baseType: !260, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !5121, file: !5083, line: 86, baseType: !260, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !5121, file: !5083, line: 88, baseType: !260, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !5121, file: !5083, line: 93, baseType: !260, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !5121, file: !5083, line: 100, baseType: !260, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !5058, file: !4985, line: 96, baseType: !272, size: 32, offset: 1024)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !5003, file: !4985, line: 352, baseType: !5135, size: 4608, align: 512)
!5135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !4985, line: 333, size: 4608, align: 512, elements: !5136)
!5136 = !{!5137, !5138, !5145}
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !5135, file: !4985, line: 334, baseType: !5021, size: 4096, align: 128)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !5135, file: !4985, line: 335, baseType: !5139, size: 512, offset: 4096)
!5139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !4985, line: 312, size: 512, elements: !5140)
!5140 = !{!5141, !5142, !5143}
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5139, file: !4985, line: 313, baseType: !260, size: 64)
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !5139, file: !4985, line: 314, baseType: !260, size: 64, offset: 64)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5139, file: !4985, line: 315, baseType: !5144, size: 384, offset: 128)
!5144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 384, elements: !825)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !5135, file: !4985, line: 336, baseType: !5146, offset: 4608)
!5146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, elements: !716)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !5003, file: !4985, line: 353, baseType: !5148, size: 32768)
!5148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 32768, elements: !4176)
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !4984, file: !4985, line: 484, baseType: !4990, size: 64, offset: 192)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4984, file: !4985, line: 491, baseType: !5151, size: 128, offset: 256)
!5151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !4985, line: 404, size: 128, elements: !5152)
!5152 = !{!5153, !5154, !5155}
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !5151, file: !4985, line: 424, baseType: !260, size: 64)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !5151, file: !4985, line: 432, baseType: !7, size: 32, offset: 64)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !5151, file: !4985, line: 440, baseType: !7, size: 32, offset: 96)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !4984, file: !4985, line: 498, baseType: !5151, size: 128, offset: 384)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !4984, file: !4985, line: 508, baseType: !4991, size: 33280, align: 512, offset: 512)
!5158 = !{!0, !5159, !5161, !5163, !5168, !5173}
!5159 = !DIGlobalVariableExpression(var: !5160, expr: !DIExpression())
!5160 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_copy_from_user_nofault338", scope: !2, file: !3, line: 132, type: !33, isLocal: true, isDefinition: true)
!5161 = !DIGlobalVariableExpression(var: !5162, expr: !DIExpression())
!5162 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_copy_to_user_nofault339", scope: !2, file: !3, line: 157, type: !33, isLocal: true, isDefinition: true)
!5163 = !DIGlobalVariableExpression(var: !5164, expr: !DIExpression())
!5164 = distinct !DIGlobalVariable(scope: null, file: !3, line: 228, type: !5165, isLocal: true, isDefinition: true)
!5165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 304, elements: !5166)
!5166 = !{!5167}
!5167 = !DISubrange(count: 38)
!5168 = !DIGlobalVariableExpression(var: !5169, expr: !DIExpression())
!5169 = distinct !DIGlobalVariable(scope: null, file: !3, line: 228, type: !5170, isLocal: true, isDefinition: true)
!5170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 104, elements: !5171)
!5171 = !{!5172}
!5172 = !DISubrange(count: 13)
!5173 = !DIGlobalVariableExpression(var: !5174, expr: !DIExpression())
!5174 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___copy_overflow340", scope: !2, file: !3, line: 230, type: !33, isLocal: true, isDefinition: true)
!5175 = !{!"rsp"}
!5176 = !{i32 7, !"Dwarf Version", i32 5}
!5177 = !{i32 2, !"Debug Info Version", i32 3}
!5178 = !{i32 1, !"wchar_size", i32 2}
!5179 = !{i32 8, !"cf-protection-branch", i32 1}
!5180 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5181 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5182 = !{i32 1, !"Code Model", i32 2}
!5183 = !{i32 1, !"override-stack-alignment", i32 8}
!5184 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5185 = distinct !DISubprogram(name: "copy_from_kernel_nofault_allowed", scope: !3, file: !3, line: 10, type: !5186, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5188)
!5186 = !DISubroutineType(types: !5187)
!5187 = !{!838, !2443, !48}
!5188 = !{!5189, !5190}
!5189 = !DILocalVariable(name: "unsafe_src", arg: 1, scope: !5185, file: !3, line: 10, type: !2443)
!5190 = !DILocalVariable(name: "size", arg: 2, scope: !5185, file: !3, line: 11, type: !48)
!5191 = !DILocation(line: 10, column: 58, scope: !5185)
!5192 = !DILocation(line: 11, column: 10, scope: !5185)
!5193 = !DILocation(line: 13, column: 2, scope: !5185)
!5194 = distinct !DISubprogram(name: "copy_from_kernel_nofault", scope: !3, file: !3, line: 24, type: !5195, scopeLine: 25, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5197)
!5195 = !DISubroutineType(types: !5196)
!5196 = !{!1069, !33, !2443, !48}
!5197 = !{!5198, !5199, !5200, !5201, !5202, !5207, !5212, !5217, !5220, !5222}
!5198 = !DILocalVariable(name: "dst", arg: 1, scope: !5194, file: !3, line: 24, type: !33)
!5199 = !DILocalVariable(name: "src", arg: 2, scope: !5194, file: !3, line: 24, type: !2443)
!5200 = !DILocalVariable(name: "size", arg: 3, scope: !5194, file: !3, line: 24, type: !48)
!5201 = !DILocalVariable(name: "align", scope: !5194, file: !3, line: 26, type: !52)
!5202 = !DILocalVariable(name: "__tmp", scope: !5203, file: !3, line: 36, type: !260)
!5203 = distinct !DILexicalBlock(scope: !5204, file: !3, line: 36, column: 3)
!5204 = distinct !DILexicalBlock(scope: !5205, file: !3, line: 36, column: 3)
!5205 = distinct !DILexicalBlock(scope: !5206, file: !3, line: 36, column: 3)
!5206 = distinct !DILexicalBlock(scope: !5194, file: !3, line: 35, column: 6)
!5207 = !DILocalVariable(name: "__tmp", scope: !5208, file: !3, line: 38, type: !260)
!5208 = distinct !DILexicalBlock(scope: !5209, file: !3, line: 38, column: 3)
!5209 = distinct !DILexicalBlock(scope: !5210, file: !3, line: 38, column: 3)
!5210 = distinct !DILexicalBlock(scope: !5211, file: !3, line: 38, column: 3)
!5211 = distinct !DILexicalBlock(scope: !5194, file: !3, line: 37, column: 6)
!5212 = !DILocalVariable(name: "__tmp", scope: !5213, file: !3, line: 40, type: !260)
!5213 = distinct !DILexicalBlock(scope: !5214, file: !3, line: 40, column: 3)
!5214 = distinct !DILexicalBlock(scope: !5215, file: !3, line: 40, column: 3)
!5215 = distinct !DILexicalBlock(scope: !5216, file: !3, line: 40, column: 3)
!5216 = distinct !DILexicalBlock(scope: !5194, file: !3, line: 39, column: 6)
!5217 = !DILocalVariable(name: "x_u8__", scope: !5218, file: !3, line: 41, type: !100)
!5218 = distinct !DILexicalBlock(scope: !5219, file: !3, line: 41, column: 2)
!5219 = distinct !DILexicalBlock(scope: !5194, file: !3, line: 41, column: 2)
!5220 = !DILocalVariable(name: "__tmp", scope: !5221, file: !3, line: 41, type: !260)
!5221 = distinct !DILexicalBlock(scope: !5218, file: !3, line: 41, column: 2)
!5222 = !DILabel(scope: !5194, name: "Efault", file: !3, line: 44)
!5223 = !DILocation(line: 24, column: 37, scope: !5194)
!5224 = !DILocation(line: 24, column: 54, scope: !5194)
!5225 = !DILocation(line: 24, column: 66, scope: !5194)
!5226 = !DILocation(line: 26, column: 2, scope: !5194)
!5227 = !DILocation(line: 26, column: 16, scope: !5194)
!5228 = !DILocation(line: 31, column: 40, scope: !5229)
!5229 = distinct !DILexicalBlock(scope: !5194, file: !3, line: 31, column: 6)
!5230 = !DILocation(line: 31, column: 45, scope: !5229)
!5231 = !DILocation(line: 31, column: 7, scope: !5229)
!5232 = !DILocation(line: 31, column: 6, scope: !5194)
!5233 = !DILocation(line: 32, column: 3, scope: !5229)
!5234 = !DILocation(line: 34, column: 2, scope: !5194)
!5235 = !DILocation(line: 35, column: 8, scope: !5206)
!5236 = !DILocation(line: 35, column: 14, scope: !5206)
!5237 = !DILocation(line: 35, column: 6, scope: !5194)
!5238 = !DILocation(line: 36, column: 3, scope: !5206)
!5239 = !DILocation(line: 36, column: 3, scope: !5205)
!5240 = !DILocation(line: 36, column: 3, scope: !5204)
!5241 = !{i64 2155129172, i64 2155129192, i64 2155129228, i64 2155129272, i64 2155129295, i64 2155129327, i64 2155129360, i64 2155129385}
!5242 = !DILocation(line: 36, column: 3, scope: !5203)
!5243 = distinct !{!5243, !5238, !5238, !5244, !5245}
!5244 = !{!"llvm.loop.mustprogress"}
!5245 = !{!"llvm.loop.unroll.disable"}
!5246 = !DILocation(line: 37, column: 8, scope: !5211)
!5247 = !DILocation(line: 37, column: 14, scope: !5211)
!5248 = !DILocation(line: 37, column: 6, scope: !5194)
!5249 = !DILocation(line: 38, column: 3, scope: !5211)
!5250 = !DILocation(line: 38, column: 3, scope: !5210)
!5251 = !DILocation(line: 38, column: 3, scope: !5209)
!5252 = !{i64 2155133483, i64 2155133503, i64 2155133539, i64 2155133583, i64 2155133606, i64 2155133638, i64 2155133671, i64 2155133696}
!5253 = !DILocation(line: 38, column: 3, scope: !5208)
!5254 = distinct !{!5254, !5249, !5249, !5244, !5245}
!5255 = !DILocation(line: 39, column: 8, scope: !5216)
!5256 = !DILocation(line: 39, column: 14, scope: !5216)
!5257 = !DILocation(line: 39, column: 6, scope: !5194)
!5258 = !DILocation(line: 40, column: 3, scope: !5216)
!5259 = !DILocation(line: 40, column: 3, scope: !5215)
!5260 = !DILocation(line: 40, column: 3, scope: !5214)
!5261 = !{i64 2155137877, i64 2155137897, i64 2155137933, i64 2155137977, i64 2155138000, i64 2155138032, i64 2155138065, i64 2155138090}
!5262 = !DILocation(line: 40, column: 3, scope: !5213)
!5263 = distinct !{!5263, !5258, !5258, !5244, !5245}
!5264 = !DILocation(line: 41, column: 2, scope: !5194)
!5265 = !DILocation(line: 41, column: 2, scope: !5219)
!5266 = !DILocation(line: 41, column: 2, scope: !5218)
!5267 = !{i64 2155142261, i64 2155142281, i64 2155142317, i64 2155142361, i64 2155142384, i64 2155142416, i64 2155142449, i64 2155142474}
!5268 = !DILocation(line: 41, column: 2, scope: !5221)
!5269 = distinct !{!5269, !5264, !5264, !5244, !5245}
!5270 = !DILocation(line: 42, column: 2, scope: !5194)
!5271 = !DILocation(line: 43, column: 2, scope: !5194)
!5272 = !DILocation(line: 44, column: 1, scope: !5194)
!5273 = !DILocation(line: 45, column: 2, scope: !5194)
!5274 = !DILocation(line: 46, column: 2, scope: !5194)
!5275 = !DILocation(line: 47, column: 1, scope: !5194)
!5276 = distinct !DISubprogram(name: "pagefault_disable", scope: !5277, file: !5277, line: 225, type: !3014, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5277 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c6a99e19cfced98603230c2c71e2e3e")
!5278 = !DILocation(line: 227, column: 2, scope: !5276)
!5279 = !DILocation(line: 232, column: 2, scope: !5276)
!5280 = !{i64 2153337755}
!5281 = !DILocation(line: 233, column: 1, scope: !5276)
!5282 = distinct !DISubprogram(name: "kmsan_unpoison_memory", scope: !5283, file: !5283, line: 70, type: !5284, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5286)
!5283 = !DIFile(filename: "./include/linux/kmsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cfeb6fcb47441b7815b086def457771")
!5284 = !DISubroutineType(types: !5285)
!5285 = !{null, !2443, !48}
!5286 = !{!5287, !5288}
!5287 = !DILocalVariable(name: "address", arg: 1, scope: !5282, file: !5283, line: 70, type: !2443)
!5288 = !DILocalVariable(name: "size", arg: 2, scope: !5282, file: !5283, line: 70, type: !48)
!5289 = !DILocation(line: 70, column: 54, scope: !5282)
!5290 = !DILocation(line: 70, column: 70, scope: !5282)
!5291 = !DILocation(line: 72, column: 1, scope: !5282)
!5292 = distinct !DISubprogram(name: "pagefault_enable", scope: !5277, file: !5277, line: 235, type: !3014, scopeLine: 236, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5293 = !DILocation(line: 241, column: 2, scope: !5292)
!5294 = !{i64 2153337958}
!5295 = !DILocation(line: 242, column: 2, scope: !5292)
!5296 = !DILocation(line: 243, column: 1, scope: !5292)
!5297 = distinct !DISubprogram(name: "copy_to_kernel_nofault", scope: !3, file: !3, line: 58, type: !5195, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5298)
!5298 = !{!5299, !5300, !5301, !5302, !5303, !5307, !5308, !5312, !5313, !5317, !5318, !5321, !5322}
!5299 = !DILocalVariable(name: "dst", arg: 1, scope: !5297, file: !3, line: 58, type: !33)
!5300 = !DILocalVariable(name: "src", arg: 2, scope: !5297, file: !3, line: 58, type: !2443)
!5301 = !DILocalVariable(name: "size", arg: 3, scope: !5297, file: !3, line: 58, type: !48)
!5302 = !DILocalVariable(name: "align", scope: !5297, file: !3, line: 60, type: !52)
!5303 = !DILocalVariable(name: "__x", scope: !5304, file: !3, line: 67, type: !260)
!5304 = distinct !DILexicalBlock(scope: !5305, file: !3, line: 67, column: 3)
!5305 = distinct !DILexicalBlock(scope: !5306, file: !3, line: 67, column: 3)
!5306 = distinct !DILexicalBlock(scope: !5297, file: !3, line: 66, column: 6)
!5307 = !DILocalVariable(name: "__ptr", scope: !5304, file: !3, line: 67, type: !259)
!5308 = !DILocalVariable(name: "__x", scope: !5309, file: !3, line: 69, type: !272)
!5309 = distinct !DILexicalBlock(scope: !5310, file: !3, line: 69, column: 3)
!5310 = distinct !DILexicalBlock(scope: !5311, file: !3, line: 69, column: 3)
!5311 = distinct !DILexicalBlock(scope: !5297, file: !3, line: 68, column: 6)
!5312 = !DILocalVariable(name: "__ptr", scope: !5309, file: !3, line: 69, type: !271)
!5313 = !DILocalVariable(name: "__x", scope: !5314, file: !3, line: 71, type: !106)
!5314 = distinct !DILexicalBlock(scope: !5315, file: !3, line: 71, column: 3)
!5315 = distinct !DILexicalBlock(scope: !5316, file: !3, line: 71, column: 3)
!5316 = distinct !DILexicalBlock(scope: !5297, file: !3, line: 70, column: 6)
!5317 = !DILocalVariable(name: "__ptr", scope: !5314, file: !3, line: 71, type: !274)
!5318 = !DILocalVariable(name: "__x", scope: !5319, file: !3, line: 72, type: !96)
!5319 = distinct !DILexicalBlock(scope: !5320, file: !3, line: 72, column: 2)
!5320 = distinct !DILexicalBlock(scope: !5297, file: !3, line: 72, column: 2)
!5321 = !DILocalVariable(name: "__ptr", scope: !5319, file: !3, line: 72, type: !275)
!5322 = !DILabel(scope: !5297, name: "Efault", file: !3, line: 75)
!5323 = !DILocation(line: 58, column: 35, scope: !5297)
!5324 = !DILocation(line: 58, column: 52, scope: !5297)
!5325 = !DILocation(line: 58, column: 64, scope: !5297)
!5326 = !DILocation(line: 60, column: 2, scope: !5297)
!5327 = !DILocation(line: 60, column: 16, scope: !5297)
!5328 = !DILocation(line: 65, column: 2, scope: !5297)
!5329 = !DILocation(line: 66, column: 8, scope: !5306)
!5330 = !DILocation(line: 66, column: 14, scope: !5306)
!5331 = !DILocation(line: 66, column: 6, scope: !5297)
!5332 = !DILocation(line: 67, column: 3, scope: !5306)
!5333 = !DILocation(line: 67, column: 3, scope: !5305)
!5334 = !DILocation(line: 67, column: 3, scope: !5304)
!5335 = !{i64 2155151084, i64 2155151100, i64 2155151289, i64 2155151333, i64 2155151356, i64 2155151389, i64 2155151420, i64 2155151459}
!5336 = !DILocation(line: 67, column: 3, scope: !5337)
!5337 = distinct !DILexicalBlock(scope: !5304, file: !3, line: 67, column: 3)
!5338 = distinct !{!5338, !5332, !5332, !5244, !5245}
!5339 = !DILocation(line: 68, column: 8, scope: !5311)
!5340 = !DILocation(line: 68, column: 14, scope: !5311)
!5341 = !DILocation(line: 68, column: 6, scope: !5297)
!5342 = !DILocation(line: 69, column: 3, scope: !5311)
!5343 = !DILocation(line: 69, column: 3, scope: !5310)
!5344 = !DILocation(line: 69, column: 3, scope: !5309)
!5345 = !{i64 2155153822, i64 2155153838, i64 2155154027, i64 2155154071, i64 2155154094, i64 2155154127, i64 2155154158, i64 2155154197}
!5346 = !DILocation(line: 69, column: 3, scope: !5347)
!5347 = distinct !DILexicalBlock(scope: !5309, file: !3, line: 69, column: 3)
!5348 = distinct !{!5348, !5342, !5342, !5244, !5245}
!5349 = !DILocation(line: 70, column: 8, scope: !5316)
!5350 = !DILocation(line: 70, column: 14, scope: !5316)
!5351 = !DILocation(line: 70, column: 6, scope: !5297)
!5352 = !DILocation(line: 71, column: 3, scope: !5316)
!5353 = !DILocation(line: 71, column: 3, scope: !5315)
!5354 = !DILocation(line: 71, column: 3, scope: !5314)
!5355 = !{i64 2155156619, i64 2155156635, i64 2155156824, i64 2155156868, i64 2155156891, i64 2155156924, i64 2155156955, i64 2155156994}
!5356 = !DILocation(line: 71, column: 3, scope: !5357)
!5357 = distinct !DILexicalBlock(scope: !5314, file: !3, line: 71, column: 3)
!5358 = distinct !{!5358, !5352, !5352, !5244, !5245}
!5359 = !DILocation(line: 72, column: 2, scope: !5297)
!5360 = !DILocation(line: 72, column: 2, scope: !5320)
!5361 = !DILocation(line: 72, column: 2, scope: !5319)
!5362 = !{i64 2155159402, i64 2155159418, i64 2155159607, i64 2155159651, i64 2155159674, i64 2155159707, i64 2155159738, i64 2155159777}
!5363 = !DILocation(line: 72, column: 2, scope: !5364)
!5364 = distinct !DILexicalBlock(scope: !5319, file: !3, line: 72, column: 2)
!5365 = distinct !{!5365, !5359, !5359, !5244, !5245}
!5366 = !DILocation(line: 73, column: 2, scope: !5297)
!5367 = !DILocation(line: 74, column: 2, scope: !5297)
!5368 = !DILocation(line: 75, column: 1, scope: !5297)
!5369 = !DILocation(line: 76, column: 2, scope: !5297)
!5370 = !DILocation(line: 77, column: 2, scope: !5297)
!5371 = !DILocation(line: 78, column: 1, scope: !5297)
!5372 = distinct !DISubprogram(name: "kmsan_copy_to_user", scope: !5283, file: !5283, line: 76, type: !5373, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5375)
!5373 = !DISubroutineType(types: !5374)
!5374 = !{null, !33, !2443, !48, !48}
!5375 = !{!5376, !5377, !5378, !5379}
!5376 = !DILocalVariable(name: "to", arg: 1, scope: !5372, file: !5283, line: 76, type: !33)
!5377 = !DILocalVariable(name: "from", arg: 2, scope: !5372, file: !5283, line: 76, type: !2443)
!5378 = !DILocalVariable(name: "to_copy", arg: 3, scope: !5372, file: !5283, line: 77, type: !48)
!5379 = !DILocalVariable(name: "left", arg: 4, scope: !5372, file: !5283, line: 77, type: !48)
!5380 = !DILocation(line: 76, column: 52, scope: !5372)
!5381 = !DILocation(line: 76, column: 68, scope: !5372)
!5382 = !DILocation(line: 77, column: 18, scope: !5372)
!5383 = !DILocation(line: 77, column: 34, scope: !5372)
!5384 = !DILocation(line: 79, column: 1, scope: !5372)
!5385 = distinct !DISubprogram(name: "strncpy_from_kernel_nofault", scope: !3, file: !3, line: 80, type: !5386, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5388)
!5386 = !DISubroutineType(types: !5387)
!5387 = !{!1069, !849, !2443, !1069}
!5388 = !{!5389, !5390, !5391, !5392, !5393, !5396, !5398}
!5389 = !DILocalVariable(name: "dst", arg: 1, scope: !5385, file: !3, line: 80, type: !849)
!5390 = !DILocalVariable(name: "unsafe_addr", arg: 2, scope: !5385, file: !3, line: 80, type: !2443)
!5391 = !DILocalVariable(name: "count", arg: 3, scope: !5385, file: !3, line: 80, type: !1069)
!5392 = !DILocalVariable(name: "src", scope: !5385, file: !3, line: 82, type: !2443)
!5393 = !DILocalVariable(name: "x_u8__", scope: !5394, file: !3, line: 91, type: !100)
!5394 = distinct !DILexicalBlock(scope: !5395, file: !3, line: 91, column: 3)
!5395 = distinct !DILexicalBlock(scope: !5385, file: !3, line: 90, column: 5)
!5396 = !DILocalVariable(name: "__tmp", scope: !5397, file: !3, line: 91, type: !260)
!5397 = distinct !DILexicalBlock(scope: !5394, file: !3, line: 91, column: 3)
!5398 = !DILabel(scope: !5385, name: "Efault", file: !3, line: 99)
!5399 = !DILocation(line: 80, column: 40, scope: !5385)
!5400 = !DILocation(line: 80, column: 57, scope: !5385)
!5401 = !DILocation(line: 80, column: 75, scope: !5385)
!5402 = !DILocation(line: 82, column: 2, scope: !5385)
!5403 = !DILocation(line: 82, column: 14, scope: !5385)
!5404 = !DILocation(line: 82, column: 20, scope: !5385)
!5405 = !DILocation(line: 84, column: 6, scope: !5406)
!5406 = distinct !DILexicalBlock(scope: !5385, file: !3, line: 84, column: 6)
!5407 = !DILocation(line: 84, column: 6, scope: !5385)
!5408 = !DILocation(line: 85, column: 3, scope: !5406)
!5409 = !DILocation(line: 86, column: 40, scope: !5410)
!5410 = distinct !DILexicalBlock(scope: !5385, file: !3, line: 86, column: 6)
!5411 = !DILocation(line: 86, column: 53, scope: !5410)
!5412 = !DILocation(line: 86, column: 7, scope: !5410)
!5413 = !DILocation(line: 86, column: 6, scope: !5385)
!5414 = !DILocation(line: 87, column: 3, scope: !5410)
!5415 = !DILocation(line: 89, column: 2, scope: !5385)
!5416 = !DILocation(line: 90, column: 2, scope: !5385)
!5417 = !DILocation(line: 91, column: 3, scope: !5395)
!5418 = !DILocation(line: 91, column: 3, scope: !5394)
!5419 = !{i64 2155163148, i64 2155163168, i64 2155163204, i64 2155163248, i64 2155163271, i64 2155163303, i64 2155163336, i64 2155163361}
!5420 = !DILocation(line: 91, column: 3, scope: !5397)
!5421 = !DILocation(line: 92, column: 6, scope: !5395)
!5422 = !DILocation(line: 93, column: 6, scope: !5395)
!5423 = !DILocation(line: 94, column: 2, scope: !5395)
!5424 = !DILocation(line: 94, column: 11, scope: !5385)
!5425 = !DILocation(line: 94, column: 19, scope: !5385)
!5426 = !DILocation(line: 94, column: 22, scope: !5385)
!5427 = !DILocation(line: 94, column: 28, scope: !5385)
!5428 = !DILocation(line: 94, column: 26, scope: !5385)
!5429 = !DILocation(line: 94, column: 42, scope: !5385)
!5430 = !DILocation(line: 94, column: 40, scope: !5385)
!5431 = !DILocation(line: 0, scope: !5385)
!5432 = distinct !{!5432, !5416, !5433, !5244, !5245}
!5433 = !DILocation(line: 94, column: 47, scope: !5385)
!5434 = !DILocation(line: 95, column: 2, scope: !5385)
!5435 = !DILocation(line: 97, column: 2, scope: !5385)
!5436 = !DILocation(line: 97, column: 10, scope: !5385)
!5437 = !DILocation(line: 98, column: 9, scope: !5385)
!5438 = !DILocation(line: 98, column: 15, scope: !5385)
!5439 = !DILocation(line: 98, column: 13, scope: !5385)
!5440 = !DILocation(line: 98, column: 2, scope: !5385)
!5441 = !DILocation(line: 99, column: 1, scope: !5385)
!5442 = !DILocation(line: 100, column: 2, scope: !5385)
!5443 = !DILocation(line: 101, column: 2, scope: !5385)
!5444 = !DILocation(line: 101, column: 9, scope: !5385)
!5445 = !DILocation(line: 102, column: 2, scope: !5385)
!5446 = !DILocation(line: 103, column: 1, scope: !5385)
!5447 = distinct !DISubprogram(name: "copy_from_user_nofault", scope: !3, file: !3, line: 114, type: !5195, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5448)
!5448 = !{!5449, !5450, !5451, !5452}
!5449 = !DILocalVariable(name: "dst", arg: 1, scope: !5447, file: !3, line: 114, type: !33)
!5450 = !DILocalVariable(name: "src", arg: 2, scope: !5447, file: !3, line: 114, type: !2443)
!5451 = !DILocalVariable(name: "size", arg: 3, scope: !5447, file: !3, line: 114, type: !48)
!5452 = !DILocalVariable(name: "ret", scope: !5447, file: !3, line: 116, type: !1069)
!5453 = !DILocation(line: 114, column: 35, scope: !5447)
!5454 = !DILocation(line: 114, column: 59, scope: !5447)
!5455 = !DILocation(line: 114, column: 71, scope: !5447)
!5456 = !DILocation(line: 116, column: 2, scope: !5447)
!5457 = !DILocation(line: 116, column: 7, scope: !5447)
!5458 = !DILocation(line: 118, column: 19, scope: !5459)
!5459 = distinct !DILexicalBlock(scope: !5447, file: !3, line: 118, column: 6)
!5460 = !DILocation(line: 118, column: 24, scope: !5459)
!5461 = !DILocation(line: 118, column: 7, scope: !5459)
!5462 = !DILocation(line: 118, column: 6, scope: !5447)
!5463 = !DILocation(line: 119, column: 10, scope: !5459)
!5464 = !DILocation(line: 119, column: 3, scope: !5459)
!5465 = !DILocation(line: 121, column: 7, scope: !5466)
!5466 = distinct !DILexicalBlock(scope: !5447, file: !3, line: 121, column: 6)
!5467 = !DILocation(line: 121, column: 6, scope: !5447)
!5468 = !DILocation(line: 122, column: 10, scope: !5466)
!5469 = !DILocation(line: 122, column: 3, scope: !5466)
!5470 = !DILocation(line: 124, column: 2, scope: !5447)
!5471 = !DILocation(line: 125, column: 34, scope: !5447)
!5472 = !DILocation(line: 125, column: 39, scope: !5447)
!5473 = !DILocation(line: 125, column: 44, scope: !5447)
!5474 = !DILocation(line: 125, column: 8, scope: !5447)
!5475 = !DILocation(line: 125, column: 6, scope: !5447)
!5476 = !DILocation(line: 126, column: 2, scope: !5447)
!5477 = !DILocation(line: 128, column: 6, scope: !5478)
!5478 = distinct !DILexicalBlock(scope: !5447, file: !3, line: 128, column: 6)
!5479 = !DILocation(line: 128, column: 6, scope: !5447)
!5480 = !DILocation(line: 129, column: 3, scope: !5478)
!5481 = !DILocation(line: 130, column: 2, scope: !5447)
!5482 = !DILocation(line: 131, column: 1, scope: !5447)
!5483 = distinct !DISubprogram(name: "__access_ok", scope: !5484, file: !5484, line: 85, type: !5485, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5487)
!5484 = !DIFile(filename: "./arch/x86/include/asm/uaccess_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c63bf78a3e0eae48ab190f2bbecab5d")
!5485 = !DISubroutineType(types: !5486)
!5486 = !{!838, !2443, !52}
!5487 = !{!5488, !5489, !5490}
!5488 = !DILocalVariable(name: "ptr", arg: 1, scope: !5483, file: !5484, line: 85, type: !2443)
!5489 = !DILocalVariable(name: "size", arg: 2, scope: !5483, file: !5484, line: 85, type: !52)
!5490 = !DILocalVariable(name: "sum", scope: !5491, file: !5484, line: 90, type: !52)
!5491 = distinct !DILexicalBlock(scope: !5492, file: !5484, line: 89, column: 9)
!5492 = distinct !DILexicalBlock(scope: !5483, file: !5484, line: 87, column: 6)
!5493 = !DILocation(line: 85, column: 51, scope: !5483)
!5494 = !DILocation(line: 85, column: 70, scope: !5483)
!5495 = !DILocation(line: 87, column: 27, scope: !5492)
!5496 = !DILocation(line: 87, column: 32, scope: !5492)
!5497 = !DILocation(line: 87, column: 6, scope: !5492)
!5498 = !DILocation(line: 87, column: 46, scope: !5492)
!5499 = !DILocation(line: 87, column: 49, scope: !5492)
!5500 = !DILocation(line: 87, column: 54, scope: !5492)
!5501 = !DILocation(line: 87, column: 6, scope: !5483)
!5502 = !DILocation(line: 88, column: 10, scope: !5503)
!5503 = distinct !DILexicalBlock(scope: !5492, file: !5484, line: 87, column: 68)
!5504 = !DILocation(line: 88, column: 3, scope: !5503)
!5505 = !DILocation(line: 90, column: 3, scope: !5491)
!5506 = !DILocation(line: 90, column: 17, scope: !5491)
!5507 = !DILocation(line: 90, column: 23, scope: !5491)
!5508 = !DILocation(line: 90, column: 45, scope: !5491)
!5509 = !DILocation(line: 90, column: 30, scope: !5491)
!5510 = !DILocation(line: 90, column: 28, scope: !5491)
!5511 = !DILocation(line: 91, column: 10, scope: !5491)
!5512 = !DILocation(line: 91, column: 34, scope: !5491)
!5513 = !DILocation(line: 91, column: 37, scope: !5491)
!5514 = !DILocation(line: 91, column: 59, scope: !5491)
!5515 = !DILocation(line: 91, column: 44, scope: !5491)
!5516 = !DILocation(line: 91, column: 41, scope: !5491)
!5517 = !DILocation(line: 0, scope: !5491)
!5518 = !DILocation(line: 91, column: 3, scope: !5491)
!5519 = !DILocation(line: 92, column: 2, scope: !5492)
!5520 = !DILocation(line: 93, column: 1, scope: !5483)
!5521 = !DISubprogram(name: "nmi_uaccess_okay", scope: !5522, file: !5522, line: 174, type: !2433, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5522 = !DIFile(filename: "./arch/x86/include/asm/tlbflush.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "855d4064bc03d0e3d0f10fca91c7b33f")
!5523 = distinct !DISubprogram(name: "__copy_from_user_inatomic", scope: !5277, file: !5277, line: 81, type: !5524, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5526)
!5524 = !DISubroutineType(types: !5525)
!5525 = !{!52, !33, !2443, !52}
!5526 = !{!5527, !5528, !5529, !5530}
!5527 = !DILocalVariable(name: "to", arg: 1, scope: !5523, file: !5277, line: 81, type: !33)
!5528 = !DILocalVariable(name: "from", arg: 2, scope: !5523, file: !5277, line: 81, type: !2443)
!5529 = !DILocalVariable(name: "n", arg: 3, scope: !5523, file: !5277, line: 81, type: !52)
!5530 = !DILocalVariable(name: "res", scope: !5523, file: !5277, line: 83, type: !52)
!5531 = !DILocation(line: 81, column: 33, scope: !5523)
!5532 = !DILocation(line: 81, column: 56, scope: !5523)
!5533 = !DILocation(line: 81, column: 76, scope: !5523)
!5534 = !DILocation(line: 83, column: 2, scope: !5523)
!5535 = !DILocation(line: 83, column: 16, scope: !5523)
!5536 = !DILocation(line: 85, column: 35, scope: !5523)
!5537 = !DILocation(line: 85, column: 39, scope: !5523)
!5538 = !DILocation(line: 85, column: 45, scope: !5523)
!5539 = !DILocation(line: 85, column: 2, scope: !5523)
!5540 = !DILocation(line: 86, column: 20, scope: !5523)
!5541 = !DILocation(line: 86, column: 24, scope: !5523)
!5542 = !DILocation(line: 86, column: 2, scope: !5523)
!5543 = !DILocation(line: 87, column: 27, scope: !5523)
!5544 = !DILocation(line: 87, column: 31, scope: !5523)
!5545 = !DILocation(line: 87, column: 37, scope: !5523)
!5546 = !DILocation(line: 87, column: 8, scope: !5523)
!5547 = !DILocation(line: 87, column: 6, scope: !5523)
!5548 = !DILocation(line: 88, column: 34, scope: !5523)
!5549 = !DILocation(line: 88, column: 38, scope: !5523)
!5550 = !DILocation(line: 88, column: 44, scope: !5523)
!5551 = !DILocation(line: 88, column: 47, scope: !5523)
!5552 = !DILocation(line: 88, column: 2, scope: !5523)
!5553 = !DILocation(line: 89, column: 9, scope: !5523)
!5554 = !DILocation(line: 90, column: 1, scope: !5523)
!5555 = !DILocation(line: 89, column: 2, scope: !5523)
!5556 = distinct !DISubprogram(name: "copy_to_user_nofault", scope: !3, file: !3, line: 143, type: !5195, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5557)
!5557 = !{!5558, !5559, !5560, !5561}
!5558 = !DILocalVariable(name: "dst", arg: 1, scope: !5556, file: !3, line: 143, type: !33)
!5559 = !DILocalVariable(name: "src", arg: 2, scope: !5556, file: !3, line: 143, type: !2443)
!5560 = !DILocalVariable(name: "size", arg: 3, scope: !5556, file: !3, line: 143, type: !48)
!5561 = !DILocalVariable(name: "ret", scope: !5556, file: !3, line: 145, type: !1069)
!5562 = !DILocation(line: 143, column: 40, scope: !5556)
!5563 = !DILocation(line: 143, column: 57, scope: !5556)
!5564 = !DILocation(line: 143, column: 69, scope: !5556)
!5565 = !DILocation(line: 145, column: 2, scope: !5556)
!5566 = !DILocation(line: 145, column: 7, scope: !5556)
!5567 = !DILocation(line: 147, column: 6, scope: !5568)
!5568 = distinct !DILexicalBlock(scope: !5556, file: !3, line: 147, column: 6)
!5569 = !DILocation(line: 147, column: 6, scope: !5556)
!5570 = !DILocation(line: 148, column: 3, scope: !5571)
!5571 = distinct !DILexicalBlock(scope: !5568, file: !3, line: 147, column: 28)
!5572 = !DILocation(line: 149, column: 33, scope: !5571)
!5573 = !DILocation(line: 149, column: 38, scope: !5571)
!5574 = !DILocation(line: 149, column: 43, scope: !5571)
!5575 = !DILocation(line: 149, column: 9, scope: !5571)
!5576 = !DILocation(line: 149, column: 7, scope: !5571)
!5577 = !DILocation(line: 150, column: 3, scope: !5571)
!5578 = !DILocation(line: 151, column: 2, scope: !5571)
!5579 = !DILocation(line: 153, column: 6, scope: !5580)
!5580 = distinct !DILexicalBlock(scope: !5556, file: !3, line: 153, column: 6)
!5581 = !DILocation(line: 153, column: 6, scope: !5556)
!5582 = !DILocation(line: 154, column: 3, scope: !5580)
!5583 = !DILocation(line: 155, column: 2, scope: !5556)
!5584 = !DILocation(line: 156, column: 1, scope: !5556)
!5585 = distinct !DISubprogram(name: "__copy_to_user_inatomic", scope: !5277, file: !5277, line: 121, type: !5524, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5586)
!5586 = !{!5587, !5588, !5589}
!5587 = !DILocalVariable(name: "to", arg: 1, scope: !5585, file: !5277, line: 121, type: !33)
!5588 = !DILocalVariable(name: "from", arg: 2, scope: !5585, file: !5277, line: 121, type: !2443)
!5589 = !DILocalVariable(name: "n", arg: 3, scope: !5585, file: !5277, line: 121, type: !52)
!5590 = !DILocation(line: 121, column: 38, scope: !5585)
!5591 = !DILocation(line: 121, column: 54, scope: !5585)
!5592 = !DILocation(line: 121, column: 74, scope: !5585)
!5593 = !DILocation(line: 123, column: 6, scope: !5594)
!5594 = distinct !DILexicalBlock(scope: !5585, file: !5277, line: 123, column: 6)
!5595 = !DILocation(line: 123, column: 6, scope: !5585)
!5596 = !DILocation(line: 124, column: 10, scope: !5594)
!5597 = !DILocation(line: 124, column: 3, scope: !5594)
!5598 = !DILocation(line: 125, column: 26, scope: !5585)
!5599 = !DILocation(line: 125, column: 30, scope: !5585)
!5600 = !DILocation(line: 125, column: 36, scope: !5585)
!5601 = !DILocation(line: 125, column: 2, scope: !5585)
!5602 = !DILocation(line: 126, column: 20, scope: !5585)
!5603 = !DILocation(line: 126, column: 26, scope: !5585)
!5604 = !DILocation(line: 126, column: 2, scope: !5585)
!5605 = !DILocation(line: 127, column: 26, scope: !5585)
!5606 = !DILocation(line: 127, column: 30, scope: !5585)
!5607 = !DILocation(line: 127, column: 36, scope: !5585)
!5608 = !DILocation(line: 127, column: 9, scope: !5585)
!5609 = !DILocation(line: 127, column: 2, scope: !5585)
!5610 = !DILocation(line: 128, column: 1, scope: !5585)
!5611 = distinct !DISubprogram(name: "strncpy_from_user_nofault", scope: !3, file: !3, line: 177, type: !5386, scopeLine: 179, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5612)
!5612 = !{!5613, !5614, !5615, !5616}
!5613 = !DILocalVariable(name: "dst", arg: 1, scope: !5611, file: !3, line: 177, type: !849)
!5614 = !DILocalVariable(name: "unsafe_addr", arg: 2, scope: !5611, file: !3, line: 177, type: !2443)
!5615 = !DILocalVariable(name: "count", arg: 3, scope: !5611, file: !3, line: 178, type: !1069)
!5616 = !DILocalVariable(name: "ret", scope: !5611, file: !3, line: 180, type: !1069)
!5617 = !DILocation(line: 177, column: 38, scope: !5611)
!5618 = !DILocation(line: 177, column: 62, scope: !5611)
!5619 = !DILocation(line: 178, column: 15, scope: !5611)
!5620 = !DILocation(line: 180, column: 2, scope: !5611)
!5621 = !DILocation(line: 180, column: 7, scope: !5611)
!5622 = !DILocation(line: 182, column: 6, scope: !5623)
!5623 = distinct !DILexicalBlock(scope: !5611, file: !3, line: 182, column: 6)
!5624 = !DILocation(line: 182, column: 6, scope: !5611)
!5625 = !DILocation(line: 183, column: 3, scope: !5623)
!5626 = !DILocation(line: 185, column: 2, scope: !5611)
!5627 = !DILocation(line: 186, column: 26, scope: !5611)
!5628 = !DILocation(line: 186, column: 31, scope: !5611)
!5629 = !DILocation(line: 186, column: 44, scope: !5611)
!5630 = !DILocation(line: 186, column: 8, scope: !5611)
!5631 = !DILocation(line: 186, column: 6, scope: !5611)
!5632 = !DILocation(line: 187, column: 2, scope: !5611)
!5633 = !DILocation(line: 189, column: 6, scope: !5634)
!5634 = distinct !DILexicalBlock(scope: !5611, file: !3, line: 189, column: 6)
!5635 = !DILocation(line: 189, column: 13, scope: !5634)
!5636 = !DILocation(line: 189, column: 10, scope: !5634)
!5637 = !DILocation(line: 189, column: 6, scope: !5611)
!5638 = !DILocation(line: 190, column: 9, scope: !5639)
!5639 = distinct !DILexicalBlock(scope: !5634, file: !3, line: 189, column: 20)
!5640 = !DILocation(line: 190, column: 7, scope: !5639)
!5641 = !DILocation(line: 191, column: 3, scope: !5639)
!5642 = !DILocation(line: 191, column: 7, scope: !5639)
!5643 = !DILocation(line: 191, column: 11, scope: !5639)
!5644 = !DILocation(line: 191, column: 16, scope: !5639)
!5645 = !DILocation(line: 192, column: 2, scope: !5639)
!5646 = !DILocation(line: 192, column: 13, scope: !5647)
!5647 = distinct !DILexicalBlock(scope: !5634, file: !3, line: 192, column: 13)
!5648 = !DILocation(line: 192, column: 17, scope: !5647)
!5649 = !DILocation(line: 192, column: 13, scope: !5634)
!5650 = !DILocation(line: 193, column: 6, scope: !5651)
!5651 = distinct !DILexicalBlock(scope: !5647, file: !3, line: 192, column: 22)
!5652 = !DILocation(line: 194, column: 2, scope: !5651)
!5653 = !DILocation(line: 196, column: 9, scope: !5611)
!5654 = !DILocation(line: 196, column: 2, scope: !5611)
!5655 = !DILocation(line: 197, column: 1, scope: !5611)
!5656 = !DISubprogram(name: "strncpy_from_user", scope: !265, file: !265, line: 489, type: !5657, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5657 = !DISubroutineType(types: !5658)
!5658 = !{!1069, !849, !29, !1069}
!5659 = distinct !DISubprogram(name: "strnlen_user_nofault", scope: !3, file: !3, line: 215, type: !5660, scopeLine: 216, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5662)
!5660 = !DISubroutineType(types: !5661)
!5661 = !{!1069, !2443, !1069}
!5662 = !{!5663, !5664, !5665}
!5663 = !DILocalVariable(name: "unsafe_addr", arg: 1, scope: !5659, file: !3, line: 215, type: !2443)
!5664 = !DILocalVariable(name: "count", arg: 2, scope: !5659, file: !3, line: 215, type: !1069)
!5665 = !DILocalVariable(name: "ret", scope: !5659, file: !3, line: 217, type: !35)
!5666 = !DILocation(line: 215, column: 46, scope: !5659)
!5667 = !DILocation(line: 215, column: 64, scope: !5659)
!5668 = !DILocation(line: 217, column: 2, scope: !5659)
!5669 = !DILocation(line: 217, column: 6, scope: !5659)
!5670 = !DILocation(line: 219, column: 2, scope: !5659)
!5671 = !DILocation(line: 220, column: 21, scope: !5659)
!5672 = !DILocation(line: 220, column: 34, scope: !5659)
!5673 = !DILocation(line: 220, column: 8, scope: !5659)
!5674 = !DILocation(line: 220, column: 6, scope: !5659)
!5675 = !DILocation(line: 221, column: 2, scope: !5659)
!5676 = !DILocation(line: 223, column: 9, scope: !5659)
!5677 = !DILocation(line: 224, column: 1, scope: !5659)
!5678 = !DILocation(line: 223, column: 2, scope: !5659)
!5679 = !DISubprogram(name: "strnlen_user", scope: !265, file: !265, line: 491, type: !5680, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5680 = !DISubroutineType(types: !5681)
!5681 = !{!1069, !29, !1069}
!5682 = distinct !DISubprogram(name: "__copy_overflow", scope: !3, file: !3, line: 226, type: !5683, scopeLine: 227, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5685)
!5683 = !DISubroutineType(types: !5684)
!5684 = !{null, !35, !52}
!5685 = !{!5686, !5687, !5688, !5690}
!5686 = !DILocalVariable(name: "size", arg: 1, scope: !5682, file: !3, line: 226, type: !35)
!5687 = !DILocalVariable(name: "count", arg: 2, scope: !5682, file: !3, line: 226, type: !52)
!5688 = !DILocalVariable(name: "__ret_warn_on", scope: !5689, file: !3, line: 228, type: !35)
!5689 = distinct !DILexicalBlock(scope: !5682, file: !3, line: 228, column: 2)
!5690 = !DILocalVariable(name: "__flags", scope: !5691, file: !3, line: 228, type: !35)
!5691 = distinct !DILexicalBlock(scope: !5692, file: !3, line: 228, column: 2)
!5692 = distinct !DILexicalBlock(scope: !5693, file: !3, line: 228, column: 2)
!5693 = distinct !DILexicalBlock(scope: !5689, file: !3, line: 228, column: 2)
!5694 = !DILocation(line: 226, column: 26, scope: !5682)
!5695 = !DILocation(line: 226, column: 46, scope: !5682)
!5696 = !DILocation(line: 228, column: 2, scope: !5689)
!5697 = !DILocation(line: 228, column: 2, scope: !5693)
!5698 = !DILocation(line: 228, column: 2, scope: !5692)
!5699 = !DILocation(line: 228, column: 2, scope: !5700)
!5700 = distinct !DILexicalBlock(scope: !5692, file: !3, line: 228, column: 2)
!5701 = !DILocation(line: 228, column: 2, scope: !5691)
!5702 = !DILocation(line: 228, column: 2, scope: !5703)
!5703 = distinct !DILexicalBlock(scope: !5691, file: !3, line: 228, column: 2)
!5704 = !DILocation(line: 228, column: 2, scope: !5705)
!5705 = distinct !DILexicalBlock(scope: !5691, file: !3, line: 228, column: 2)
!5706 = !{i64 2155171601, i64 2155171630, i64 2155171676, i64 2155171734, i64 2155171788, i64 2155171842, i64 2155171897, i64 2155171928, i64 2155172236, i64 2155172242, i64 2155172289, i64 2155172312, i64 2155172338}
!5707 = !DILocation(line: 228, column: 2, scope: !5708)
!5708 = distinct !DILexicalBlock(scope: !5691, file: !3, line: 228, column: 2)
!5709 = !DILocation(line: 228, column: 2, scope: !5710)
!5710 = distinct !DILexicalBlock(scope: !5692, file: !3, line: 228, column: 2)
!5711 = !DILocation(line: 228, column: 2, scope: !5682)
!5712 = !DILocation(line: 229, column: 1, scope: !5682)
!5713 = !DISubprogram(name: "__warn_printk", scope: !2839, file: !2839, line: 93, type: !5714, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5714 = !DISubroutineType(types: !5715)
!5715 = !{null, !29, null}
!5716 = distinct !DISubprogram(name: "pagefault_disabled_inc", scope: !5277, file: !5277, line: 208, type: !3014, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5717 = !DILocation(line: 210, column: 2, scope: !5716)
!5718 = !DILocation(line: 210, column: 11, scope: !5716)
!5719 = !DILocation(line: 210, column: 29, scope: !5716)
!5720 = !DILocation(line: 211, column: 1, scope: !5716)
!5721 = distinct !DISubprogram(name: "get_current", scope: !5722, file: !5722, line: 39, type: !5723, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5725)
!5722 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!5723 = !DISubroutineType(types: !5724)
!5724 = !{!277}
!5725 = !{!5726, !5728, !5730}
!5726 = !DILocalVariable(name: "pscr_ret__", scope: !5727, file: !5722, line: 41, type: !277)
!5727 = distinct !DILexicalBlock(scope: !5721, file: !5722, line: 41, column: 9)
!5728 = !DILocalVariable(name: "__vpp_verify", scope: !5729, file: !5722, line: 41, type: !2443)
!5729 = distinct !DILexicalBlock(scope: !5727, file: !5722, line: 41, column: 9)
!5730 = !DILocalVariable(name: "pfo_val__", scope: !5731, file: !5722, line: 41, type: !260)
!5731 = distinct !DILexicalBlock(scope: !5727, file: !5722, line: 41, column: 9)
!5732 = !DILocation(line: 41, column: 9, scope: !5727)
!5733 = !DILocation(line: 41, column: 9, scope: !5729)
!5734 = !DILocation(line: 41, column: 9, scope: !5731)
!5735 = !{i64 2148510771}
!5736 = !DILocation(line: 41, column: 9, scope: !5721)
!5737 = !DILocation(line: 41, column: 2, scope: !5721)
!5738 = distinct !DISubprogram(name: "pagefault_disabled_dec", scope: !5277, file: !5277, line: 213, type: !3014, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5739 = !DILocation(line: 215, column: 2, scope: !5738)
!5740 = !DILocation(line: 215, column: 11, scope: !5738)
!5741 = !DILocation(line: 215, column: 29, scope: !5738)
!5742 = !DILocation(line: 216, column: 1, scope: !5738)
!5743 = distinct !DISubprogram(name: "instrument_copy_from_user_before", scope: !5744, file: !5744, line: 127, type: !5745, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5747)
!5744 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!5745 = !DISubroutineType(types: !5746)
!5746 = !{null, !2443, !2443, !52}
!5747 = !{!5748, !5749, !5750}
!5748 = !DILocalVariable(name: "to", arg: 1, scope: !5743, file: !5744, line: 127, type: !2443)
!5749 = !DILocalVariable(name: "from", arg: 2, scope: !5743, file: !5744, line: 127, type: !2443)
!5750 = !DILocalVariable(name: "n", arg: 3, scope: !5743, file: !5744, line: 127, type: !52)
!5751 = !DILocation(line: 127, column: 46, scope: !5743)
!5752 = !DILocation(line: 127, column: 69, scope: !5743)
!5753 = !DILocation(line: 127, column: 89, scope: !5743)
!5754 = !DILocation(line: 129, column: 20, scope: !5743)
!5755 = !DILocation(line: 129, column: 24, scope: !5743)
!5756 = !DILocation(line: 129, column: 2, scope: !5743)
!5757 = !DILocation(line: 130, column: 2, scope: !5743)
!5758 = !DILocation(line: 131, column: 1, scope: !5743)
!5759 = distinct !DISubprogram(name: "check_object_size", scope: !5760, file: !5760, line: 218, type: !5761, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5763)
!5760 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!5761 = !DISubroutineType(types: !5762)
!5762 = !{null, !2443, !52, !838}
!5763 = !{!5764, !5765, !5766}
!5764 = !DILocalVariable(name: "ptr", arg: 1, scope: !5759, file: !5760, line: 218, type: !2443)
!5765 = !DILocalVariable(name: "n", arg: 2, scope: !5759, file: !5760, line: 218, type: !52)
!5766 = !DILocalVariable(name: "to_user", arg: 3, scope: !5759, file: !5760, line: 219, type: !838)
!5767 = !DILocation(line: 218, column: 50, scope: !5759)
!5768 = !DILocation(line: 218, column: 69, scope: !5759)
!5769 = !DILocation(line: 219, column: 15, scope: !5759)
!5770 = !DILocation(line: 220, column: 3, scope: !5759)
!5771 = distinct !DISubprogram(name: "raw_copy_from_user", scope: !5484, file: !5484, line: 125, type: !5524, scopeLine: 126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5772)
!5772 = !{!5773, !5774, !5775}
!5773 = !DILocalVariable(name: "dst", arg: 1, scope: !5771, file: !5484, line: 125, type: !33)
!5774 = !DILocalVariable(name: "src", arg: 2, scope: !5771, file: !5484, line: 125, type: !2443)
!5775 = !DILocalVariable(name: "size", arg: 3, scope: !5771, file: !5484, line: 125, type: !52)
!5776 = !DILocation(line: 125, column: 26, scope: !5771)
!5777 = !DILocation(line: 125, column: 50, scope: !5771)
!5778 = !DILocation(line: 125, column: 69, scope: !5771)
!5779 = !DILocation(line: 127, column: 27, scope: !5771)
!5780 = !DILocation(line: 127, column: 48, scope: !5771)
!5781 = !DILocation(line: 127, column: 53, scope: !5771)
!5782 = !DILocation(line: 127, column: 9, scope: !5771)
!5783 = !DILocation(line: 127, column: 2, scope: !5771)
!5784 = distinct !DISubprogram(name: "instrument_copy_from_user_after", scope: !5744, file: !5744, line: 144, type: !5785, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5787)
!5785 = !DISubroutineType(types: !5786)
!5786 = !{null, !2443, !2443, !52, !52}
!5787 = !{!5788, !5789, !5790, !5791}
!5788 = !DILocalVariable(name: "to", arg: 1, scope: !5784, file: !5744, line: 144, type: !2443)
!5789 = !DILocalVariable(name: "from", arg: 2, scope: !5784, file: !5744, line: 144, type: !2443)
!5790 = !DILocalVariable(name: "n", arg: 3, scope: !5784, file: !5744, line: 145, type: !52)
!5791 = !DILocalVariable(name: "left", arg: 4, scope: !5784, file: !5744, line: 145, type: !52)
!5792 = !DILocation(line: 144, column: 45, scope: !5784)
!5793 = !DILocation(line: 144, column: 68, scope: !5784)
!5794 = !DILocation(line: 145, column: 19, scope: !5784)
!5795 = !DILocation(line: 145, column: 36, scope: !5784)
!5796 = !DILocation(line: 147, column: 24, scope: !5784)
!5797 = !DILocation(line: 147, column: 28, scope: !5784)
!5798 = !DILocation(line: 147, column: 32, scope: !5784)
!5799 = !DILocation(line: 147, column: 30, scope: !5784)
!5800 = !DILocation(line: 147, column: 2, scope: !5784)
!5801 = !DILocation(line: 148, column: 1, scope: !5784)
!5802 = distinct !DISubprogram(name: "kasan_check_write", scope: !5803, file: !5803, line: 44, type: !5804, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5809)
!5803 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!5804 = !DISubroutineType(types: !5805)
!5805 = !{!838, !5806, !7}
!5806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5807, size: 64)
!5807 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5808)
!5808 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5809 = !{!5810, !5811}
!5810 = !DILocalVariable(name: "p", arg: 1, scope: !5802, file: !5803, line: 44, type: !5806)
!5811 = !DILocalVariable(name: "size", arg: 2, scope: !5802, file: !5803, line: 44, type: !7)
!5812 = !DILocation(line: 44, column: 59, scope: !5802)
!5813 = !DILocation(line: 44, column: 75, scope: !5802)
!5814 = !DILocation(line: 46, column: 2, scope: !5802)
!5815 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5816, file: !5816, line: 229, type: !5817, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5819)
!5816 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!5817 = !DISubroutineType(types: !5818)
!5818 = !{null, !5806, !48, !35}
!5819 = !{!5820, !5821, !5822}
!5820 = !DILocalVariable(name: "ptr", arg: 1, scope: !5815, file: !5816, line: 229, type: !5806)
!5821 = !DILocalVariable(name: "size", arg: 2, scope: !5815, file: !5816, line: 229, type: !48)
!5822 = !DILocalVariable(name: "type", arg: 3, scope: !5815, file: !5816, line: 230, type: !35)
!5823 = !DILocation(line: 229, column: 60, scope: !5815)
!5824 = !DILocation(line: 229, column: 72, scope: !5815)
!5825 = !DILocation(line: 230, column: 15, scope: !5815)
!5826 = !DILocation(line: 230, column: 23, scope: !5815)
!5827 = distinct !DISubprogram(name: "copy_user_generic", scope: !5484, file: !5484, line: 105, type: !5524, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5828)
!5828 = !{!5829, !5830, !5831}
!5829 = !DILocalVariable(name: "to", arg: 1, scope: !5827, file: !5484, line: 105, type: !33)
!5830 = !DILocalVariable(name: "from", arg: 2, scope: !5827, file: !5484, line: 105, type: !2443)
!5831 = !DILocalVariable(name: "len", arg: 3, scope: !5827, file: !5484, line: 105, type: !52)
!5832 = !DILocation(line: 105, column: 25, scope: !5827)
!5833 = !DILocation(line: 105, column: 41, scope: !5827)
!5834 = !DILocation(line: 105, column: 61, scope: !5827)
!5835 = !DILocation(line: 107, column: 2, scope: !5827)
!5836 = !DILocation(line: 112, column: 2, scope: !5827)
!5837 = !{i64 5840422, i64 5840427, i64 2153327117, i64 2153327123, i64 2153327139, i64 2153327155, i64 2153327182, i64 2153327505, i64 2153326716, i64 2153327511, i64 2153327559, i64 2153327623, i64 2153327687, i64 2153327744, i64 2153326797, i64 2153326822, i64 2153328028, i64 2153328169, i64 2153328089, i64 2153328183, i64 2153326914, i64 5840524, i64 2153328248, i64 2153328292, i64 2153328315, i64 2153328348, i64 2153328379, i64 2153328418}
!5838 = !DILocation(line: 120, column: 2, scope: !5827)
!5839 = !DILocation(line: 121, column: 9, scope: !5827)
!5840 = !DILocation(line: 121, column: 2, scope: !5827)
!5841 = distinct !DISubprogram(name: "stac", scope: !5842, file: !5842, line: 36, type: !3014, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5842 = !DIFile(filename: "./arch/x86/include/asm/smap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f3f8be6e1b47df7f19894949839b589")
!5843 = !DILocation(line: 39, column: 2, scope: !5841)
!5844 = !{i64 2153241745, i64 2153241773, i64 2153241779, i64 2153241795, i64 2153241811, i64 2153241838, i64 2153242152, i64 2153241495, i64 2153242158, i64 2153242206, i64 2153242270, i64 2153242334, i64 2153242391, i64 2153241576, i64 2153241601, i64 2153242598, i64 2153242734, i64 2153242659, i64 2153242748, i64 2153241693}
!5845 = !DILocation(line: 40, column: 1, scope: !5841)
!5846 = distinct !DISubprogram(name: "clac", scope: !5842, file: !5842, line: 30, type: !3014, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5847 = !DILocation(line: 33, column: 2, scope: !5846)
!5848 = !{i64 2153240078, i64 2153240106, i64 2153240112, i64 2153240128, i64 2153240144, i64 2153240171, i64 2153240485, i64 2153239828, i64 2153240491, i64 2153240539, i64 2153240603, i64 2153240667, i64 2153240724, i64 2153239909, i64 2153239934, i64 2153240931, i64 2153241067, i64 2153240992, i64 2153241081, i64 2153240026}
!5849 = !DILocation(line: 34, column: 1, scope: !5846)
!5850 = distinct !DISubprogram(name: "should_fail_usercopy", scope: !5851, file: !5851, line: 18, type: !2433, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5851 = !DIFile(filename: "./include/linux/fault-inject-usercopy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3c50bc45f7dd45d85340e9f2bf0c47d5")
!5852 = !DILocation(line: 18, column: 49, scope: !5850)
!5853 = distinct !DISubprogram(name: "instrument_copy_to_user", scope: !5744, file: !5744, line: 110, type: !5854, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5856)
!5854 = !DISubroutineType(types: !5855)
!5855 = !{null, !33, !2443, !52}
!5856 = !{!5857, !5858, !5859}
!5857 = !DILocalVariable(name: "to", arg: 1, scope: !5853, file: !5744, line: 110, type: !33)
!5858 = !DILocalVariable(name: "from", arg: 2, scope: !5853, file: !5744, line: 110, type: !2443)
!5859 = !DILocalVariable(name: "n", arg: 3, scope: !5853, file: !5744, line: 110, type: !52)
!5860 = !DILocation(line: 110, column: 38, scope: !5853)
!5861 = !DILocation(line: 110, column: 54, scope: !5853)
!5862 = !DILocation(line: 110, column: 74, scope: !5853)
!5863 = !DILocation(line: 112, column: 19, scope: !5853)
!5864 = !DILocation(line: 112, column: 25, scope: !5853)
!5865 = !DILocation(line: 112, column: 2, scope: !5853)
!5866 = !DILocation(line: 113, column: 2, scope: !5853)
!5867 = !DILocation(line: 114, column: 21, scope: !5853)
!5868 = !DILocation(line: 114, column: 25, scope: !5853)
!5869 = !DILocation(line: 114, column: 31, scope: !5853)
!5870 = !DILocation(line: 114, column: 2, scope: !5853)
!5871 = !DILocation(line: 115, column: 1, scope: !5853)
!5872 = distinct !DISubprogram(name: "raw_copy_to_user", scope: !5484, file: !5484, line: 131, type: !5524, scopeLine: 132, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5873)
!5873 = !{!5874, !5875, !5876}
!5874 = !DILocalVariable(name: "dst", arg: 1, scope: !5872, file: !5484, line: 131, type: !33)
!5875 = !DILocalVariable(name: "src", arg: 2, scope: !5872, file: !5484, line: 131, type: !2443)
!5876 = !DILocalVariable(name: "size", arg: 3, scope: !5872, file: !5484, line: 131, type: !52)
!5877 = !DILocation(line: 131, column: 31, scope: !5872)
!5878 = !DILocation(line: 131, column: 48, scope: !5872)
!5879 = !DILocation(line: 131, column: 67, scope: !5872)
!5880 = !DILocation(line: 133, column: 43, scope: !5872)
!5881 = !DILocation(line: 133, column: 48, scope: !5872)
!5882 = !DILocation(line: 133, column: 53, scope: !5872)
!5883 = !DILocation(line: 133, column: 9, scope: !5872)
!5884 = !DILocation(line: 133, column: 2, scope: !5872)
!5885 = distinct !DISubprogram(name: "kasan_check_read", scope: !5803, file: !5803, line: 40, type: !5804, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5886)
!5886 = !{!5887, !5888}
!5887 = !DILocalVariable(name: "p", arg: 1, scope: !5885, file: !5803, line: 40, type: !5806)
!5888 = !DILocalVariable(name: "size", arg: 2, scope: !5885, file: !5803, line: 40, type: !7)
!5889 = !DILocation(line: 40, column: 58, scope: !5885)
!5890 = !DILocation(line: 40, column: 74, scope: !5885)
!5891 = !DILocation(line: 42, column: 2, scope: !5885)
