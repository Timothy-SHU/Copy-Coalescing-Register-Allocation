; ModuleID = 'mm/ptdump.c'
source_filename = "mm/ptdump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_walk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.16 }
%struct.atomic_t = type { i32 }
%union.anon.16 = type { i64 }
%struct.ptdump_state = type { ptr, ptr, ptr }
%struct.ptdump_range = type { i64, i64 }
%struct.mm_struct = type { %struct.anon.13, [0 x i64] }
%struct.anon.13 = type { %struct.anon.14, %struct.maple_tree, ptr, i64, i64, i64, i64, i64, ptr, %struct.atomic_t, %struct.atomic_t, ptr, i64, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [52 x i64], [4 x %struct.percpu_counter], ptr, %struct.mm_context_t, i64, %struct.spinlock, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, %struct.uprobes_state, %struct.atomic64_t, %struct.work_struct, [48 x i8] }
%struct.anon.14 = type { %struct.atomic_t, [60 x i8] }
%struct.maple_tree = type { %union.anon.15, i32, ptr }
%union.anon.15 = type { %struct.spinlock }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.seqcount = type { i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.mm_context_t = type { i64, %struct.atomic64_t, i64, %struct.rw_semaphore, ptr, i64, %struct.mutex, ptr, ptr, %struct.atomic_t, i16, i16 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.uprobes_state = type { ptr }
%struct.atomic64_t = type { i64 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.pgd_t = type { i64 }
%struct.mm_walk = type { ptr, ptr, ptr, ptr, i32, i8, ptr }
%struct.p4d_t = type { i64 }
%struct.pud_t = type { i64 }
%struct.pmd_t = type { i64 }
%struct.pte_t = type { i64 }

@ptdump_ops = internal constant %struct.mm_walk_ops { ptr @ptdump_pgd_entry, ptr @ptdump_p4d_entry, ptr @ptdump_pud_entry, ptr @ptdump_pmd_entry, ptr @ptdump_pte_entry, ptr @ptdump_hole, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 8, !dbg !0
@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 8
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 8
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @ptdump_walk_pgd(ptr noundef %st, ptr noundef %mm, ptr noundef %pgd) #0 align 16 !dbg !3482 {
entry:
  %st.addr = alloca ptr, align 8
  %mm.addr = alloca ptr, align 8
  %pgd.addr = alloca ptr, align 8
  %range = alloca ptr, align 8
  store ptr %st, ptr %st.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %st.addr, metadata !3505, metadata !DIExpression()), !dbg !3509
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !3506, metadata !DIExpression()), !dbg !3510
  store ptr %pgd, ptr %pgd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pgd.addr, metadata !3507, metadata !DIExpression()), !dbg !3511
  call void @llvm.lifetime.start.p0(i64 8, ptr %range) #7, !dbg !3512
  call void @llvm.dbg.declare(metadata ptr %range, metadata !3508, metadata !DIExpression()), !dbg !3513
  %0 = load ptr, ptr %st.addr, align 8, !dbg !3514
  %range1 = getelementptr inbounds %struct.ptdump_state, ptr %0, i32 0, i32 2, !dbg !3515
  %1 = load ptr, ptr %range1, align 8, !dbg !3515
  store ptr %1, ptr %range, align 8, !dbg !3513
  %2 = load ptr, ptr %mm.addr, align 8, !dbg !3516
  call void @mmap_write_lock(ptr noundef %2) #8, !dbg !3517
  br label %while.cond, !dbg !3518

while.cond:                                       ; preds = %while.body, %entry
  %3 = load ptr, ptr %range, align 8, !dbg !3519
  %start = getelementptr inbounds %struct.ptdump_range, ptr %3, i32 0, i32 0, !dbg !3520
  %4 = load i64, ptr %start, align 8, !dbg !3520
  %5 = load ptr, ptr %range, align 8, !dbg !3521
  %end = getelementptr inbounds %struct.ptdump_range, ptr %5, i32 0, i32 1, !dbg !3522
  %6 = load i64, ptr %end, align 8, !dbg !3522
  %cmp = icmp ne i64 %4, %6, !dbg !3523
  br i1 %cmp, label %while.body, label %while.end, !dbg !3518

while.body:                                       ; preds = %while.cond
  %7 = load ptr, ptr %mm.addr, align 8, !dbg !3524
  %8 = load ptr, ptr %range, align 8, !dbg !3526
  %start2 = getelementptr inbounds %struct.ptdump_range, ptr %8, i32 0, i32 0, !dbg !3527
  %9 = load i64, ptr %start2, align 8, !dbg !3527
  %10 = load ptr, ptr %range, align 8, !dbg !3528
  %end3 = getelementptr inbounds %struct.ptdump_range, ptr %10, i32 0, i32 1, !dbg !3529
  %11 = load i64, ptr %end3, align 8, !dbg !3529
  %12 = load ptr, ptr %pgd.addr, align 8, !dbg !3530
  %13 = load ptr, ptr %st.addr, align 8, !dbg !3531
  %call = call i32 @walk_page_range_novma(ptr noundef %7, i64 noundef %9, i64 noundef %11, ptr noundef @ptdump_ops, ptr noundef %12, ptr noundef %13) #8, !dbg !3532
  %14 = load ptr, ptr %range, align 8, !dbg !3533
  %incdec.ptr = getelementptr %struct.ptdump_range, ptr %14, i32 1, !dbg !3533
  store ptr %incdec.ptr, ptr %range, align 8, !dbg !3533
  br label %while.cond, !dbg !3518, !llvm.loop !3534

while.end:                                        ; preds = %while.cond
  %15 = load ptr, ptr %mm.addr, align 8, !dbg !3538
  call void @mmap_write_unlock(ptr noundef %15) #8, !dbg !3539
  %16 = load ptr, ptr %st.addr, align 8, !dbg !3540
  %note_page = getelementptr inbounds %struct.ptdump_state, ptr %16, i32 0, i32 0, !dbg !3541
  %17 = load ptr, ptr %note_page, align 8, !dbg !3541
  %18 = load ptr, ptr %st.addr, align 8, !dbg !3542
  call void %17(ptr noundef %18, i64 noundef 0, i32 noundef -1, i64 noundef 0) #8, !dbg !3540
  call void @llvm.lifetime.end.p0(i64 8, ptr %range) #7, !dbg !3543
  ret void, !dbg !3543
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mmap_write_lock(ptr noundef %mm) #3 align 16 !dbg !3544 {
entry:
  %mm.addr = alloca ptr, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !3549, metadata !DIExpression()), !dbg !3550
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !3551
  call void @__mmap_lock_trace_start_locking(ptr noundef %0, i1 noundef zeroext true) #8, !dbg !3552
  %1 = load ptr, ptr %mm.addr, align 8, !dbg !3553
  %2 = getelementptr inbounds %struct.mm_struct, ptr %1, i32 0, i32 0, !dbg !3554
  %mmap_lock = getelementptr inbounds %struct.anon.13, ptr %2, i32 0, i32 16, !dbg !3554
  call void @down_write(ptr noundef %mmap_lock) #8, !dbg !3555
  %3 = load ptr, ptr %mm.addr, align 8, !dbg !3556
  call void @__mmap_lock_trace_acquire_returned(ptr noundef %3, i1 noundef zeroext true, i1 noundef zeroext true) #8, !dbg !3557
  ret void, !dbg !3558
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3559 dso_local i32 @walk_page_range_novma(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mmap_write_unlock(ptr noundef %mm) #3 align 16 !dbg !3562 {
entry:
  %mm.addr = alloca ptr, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !3564, metadata !DIExpression()), !dbg !3565
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !3566
  call void @__mmap_lock_trace_released(ptr noundef %0, i1 noundef zeroext true) #8, !dbg !3567
  %1 = load ptr, ptr %mm.addr, align 8, !dbg !3568
  call void @vma_end_write_all(ptr noundef %1) #8, !dbg !3569
  %2 = load ptr, ptr %mm.addr, align 8, !dbg !3570
  %3 = getelementptr inbounds %struct.mm_struct, ptr %2, i32 0, i32 0, !dbg !3571
  %mmap_lock = getelementptr inbounds %struct.anon.13, ptr %3, i32 0, i32 16, !dbg !3571
  call void @up_write(ptr noundef %mmap_lock) #8, !dbg !3572
  ret void, !dbg !3573
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__mmap_lock_trace_start_locking(ptr noundef %mm, i1 noundef zeroext %write) #3 align 16 !dbg !3574 {
entry:
  %mm.addr = alloca ptr, align 8
  %write.addr = alloca i8, align 1
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !3578, metadata !DIExpression()), !dbg !3580
  %frombool = zext i1 %write to i8
  store i8 %frombool, ptr %write.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %write.addr, metadata !3579, metadata !DIExpression()), !dbg !3581
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1)) #8, !dbg !3582
  br i1 %call, label %if.then, label %if.end, !dbg !3584

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !3585
  %1 = load i8, ptr %write.addr, align 1, !dbg !3586, !range !3587, !noundef !221
  %tobool = trunc i8 %1 to i1, !dbg !3586
  call void @__mmap_lock_do_trace_start_locking(ptr noundef %0, i1 noundef zeroext %tobool) #8, !dbg !3588
  br label %if.end, !dbg !3588

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !3589
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3590 dso_local void @down_write(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__mmap_lock_trace_acquire_returned(ptr noundef %mm, i1 noundef zeroext %write, i1 noundef zeroext %success) #3 align 16 !dbg !3594 {
entry:
  %mm.addr = alloca ptr, align 8
  %write.addr = alloca i8, align 1
  %success.addr = alloca i8, align 1
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !3598, metadata !DIExpression()), !dbg !3601
  %frombool = zext i1 %write to i8
  store i8 %frombool, ptr %write.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %write.addr, metadata !3599, metadata !DIExpression()), !dbg !3602
  %frombool1 = zext i1 %success to i8
  store i8 %frombool1, ptr %success.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %success.addr, metadata !3600, metadata !DIExpression()), !dbg !3603
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1)) #8, !dbg !3604
  br i1 %call, label %if.then, label %if.end, !dbg !3606

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !3607
  %1 = load i8, ptr %write.addr, align 1, !dbg !3608, !range !3587, !noundef !221
  %tobool = trunc i8 %1 to i1, !dbg !3608
  %2 = load i8, ptr %success.addr, align 1, !dbg !3609, !range !3587, !noundef !221
  %tobool2 = trunc i8 %2 to i1, !dbg !3609
  call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %0, i1 noundef zeroext %tobool, i1 noundef zeroext %tobool2) #8, !dbg !3610
  br label %if.end, !dbg !3610

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !3611
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @static_key_false(ptr noundef %key) #5 align 16 !dbg !3612 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !3635, metadata !DIExpression()), !dbg !3636
  %0 = load ptr, ptr %key.addr, align 8, !dbg !3637
  %call = call zeroext i1 @arch_static_branch(ptr noundef %0, i1 noundef zeroext false) #8, !dbg !3638
  ret i1 %call, !dbg !3639
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3640 dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #5 align 16 !dbg !3641 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !3646, metadata !DIExpression()), !dbg !3649
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !3647, metadata !DIExpression()), !dbg !3650
  %0 = load ptr, ptr %key.addr, align 8, !dbg !3651
  %1 = load i8, ptr %branch.addr, align 1, !dbg !3652, !range !3587, !noundef !221
  %tobool = trunc i8 %1 to i1, !dbg !3652
  %conv = zext i1 %tobool to i32, !dbg !3652
  %or = or i32 2, %conv, !dbg !3653
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #7
          to label %asm.fallthrough [label %l_yes], !dbg !3654, !srcloc !3655

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !3656
  br label %return, !dbg !3656

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !3648), !dbg !3657
  store i1 true, ptr %retval, align 1, !dbg !3658
  br label %return, !dbg !3658

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !3659
  ret i1 %2, !dbg !3659
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3660 dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ptdump_pgd_entry(ptr noundef %pgd, i64 noundef %addr, i64 noundef %next, ptr noundef %walk) #0 align 16 !dbg !3661 {
entry:
  %pgd.addr = alloca ptr, align 8
  %addr.addr = alloca i64, align 8
  %next.addr = alloca i64, align 8
  %walk.addr = alloca ptr, align 8
  %st = alloca ptr, align 8
  %val = alloca %struct.pgd_t, align 8
  store ptr %pgd, ptr %pgd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pgd.addr, metadata !3663, metadata !DIExpression()), !dbg !3669
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3664, metadata !DIExpression()), !dbg !3670
  store i64 %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !3665, metadata !DIExpression()), !dbg !3671
  store ptr %walk, ptr %walk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk.addr, metadata !3666, metadata !DIExpression()), !dbg !3672
  call void @llvm.lifetime.start.p0(i64 8, ptr %st) #7, !dbg !3673
  call void @llvm.dbg.declare(metadata ptr %st, metadata !3667, metadata !DIExpression()), !dbg !3674
  %0 = load ptr, ptr %walk.addr, align 8, !dbg !3675
  %private = getelementptr inbounds %struct.mm_walk, ptr %0, i32 0, i32 6, !dbg !3676
  %1 = load ptr, ptr %private, align 8, !dbg !3676
  store ptr %1, ptr %st, align 8, !dbg !3674
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #7, !dbg !3677
  call void @llvm.dbg.declare(metadata ptr %val, metadata !3668, metadata !DIExpression()), !dbg !3678
  br label %do.body, !dbg !3679

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !3681

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3681

do.end:                                           ; preds = %do.cond
  %2 = load ptr, ptr %pgd.addr, align 8, !dbg !3679
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %val, ptr align 8 %2, i64 8, i1 true), !dbg !3679
  %3 = load ptr, ptr %st, align 8, !dbg !3683
  %effective_prot = getelementptr inbounds %struct.ptdump_state, ptr %3, i32 0, i32 1, !dbg !3685
  %4 = load ptr, ptr %effective_prot, align 8, !dbg !3685
  %tobool = icmp ne ptr %4, null, !dbg !3683
  br i1 %tobool, label %if.then, label %if.end, !dbg !3686

if.then:                                          ; preds = %do.end
  %5 = load ptr, ptr %st, align 8, !dbg !3687
  %effective_prot1 = getelementptr inbounds %struct.ptdump_state, ptr %5, i32 0, i32 1, !dbg !3688
  %6 = load ptr, ptr %effective_prot1, align 8, !dbg !3688
  %7 = load ptr, ptr %st, align 8, !dbg !3689
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %val, i32 0, i32 0, !dbg !3690
  %8 = load i64, ptr %coerce.dive, align 8, !dbg !3690
  %call = call i64 @native_pgd_val(i64 %8) #8, !dbg !3690
  call void %6(ptr noundef %7, i32 noundef 0, i64 noundef %call) #8, !dbg !3687
  br label %if.end, !dbg !3687

if.end:                                           ; preds = %if.then, %do.end
  %coerce.dive2 = getelementptr inbounds %struct.pgd_t, ptr %val, i32 0, i32 0, !dbg !3691
  %9 = load i64, ptr %coerce.dive2, align 8, !dbg !3691
  %call3 = call i32 @pgd_large(i64 %9) #8, !dbg !3691
  %tobool4 = icmp ne i32 %call3, 0, !dbg !3691
  br i1 %tobool4, label %if.then5, label %if.end8, !dbg !3693

if.then5:                                         ; preds = %if.end
  %10 = load ptr, ptr %st, align 8, !dbg !3694
  %note_page = getelementptr inbounds %struct.ptdump_state, ptr %10, i32 0, i32 0, !dbg !3696
  %11 = load ptr, ptr %note_page, align 8, !dbg !3696
  %12 = load ptr, ptr %st, align 8, !dbg !3697
  %13 = load i64, ptr %addr.addr, align 8, !dbg !3698
  %coerce.dive6 = getelementptr inbounds %struct.pgd_t, ptr %val, i32 0, i32 0, !dbg !3699
  %14 = load i64, ptr %coerce.dive6, align 8, !dbg !3699
  %call7 = call i64 @native_pgd_val(i64 %14) #8, !dbg !3699
  call void %11(ptr noundef %12, i64 noundef %13, i32 noundef 0, i64 noundef %call7) #8, !dbg !3694
  %15 = load ptr, ptr %walk.addr, align 8, !dbg !3700
  %action = getelementptr inbounds %struct.mm_walk, ptr %15, i32 0, i32 4, !dbg !3701
  store i32 1, ptr %action, align 8, !dbg !3702
  br label %if.end8, !dbg !3703

if.end8:                                          ; preds = %if.then5, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #7, !dbg !3704
  call void @llvm.lifetime.end.p0(i64 8, ptr %st) #7, !dbg !3704
  ret i32 0, !dbg !3705
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ptdump_p4d_entry(ptr noundef %p4d, i64 noundef %addr, i64 noundef %next, ptr noundef %walk) #0 align 16 !dbg !3706 {
entry:
  %p4d.addr = alloca ptr, align 8
  %addr.addr = alloca i64, align 8
  %next.addr = alloca i64, align 8
  %walk.addr = alloca ptr, align 8
  %st = alloca ptr, align 8
  %val = alloca %struct.p4d_t, align 8
  store ptr %p4d, ptr %p4d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p4d.addr, metadata !3708, metadata !DIExpression()), !dbg !3714
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3709, metadata !DIExpression()), !dbg !3715
  store i64 %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !3710, metadata !DIExpression()), !dbg !3716
  store ptr %walk, ptr %walk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk.addr, metadata !3711, metadata !DIExpression()), !dbg !3717
  call void @llvm.lifetime.start.p0(i64 8, ptr %st) #7, !dbg !3718
  call void @llvm.dbg.declare(metadata ptr %st, metadata !3712, metadata !DIExpression()), !dbg !3719
  %0 = load ptr, ptr %walk.addr, align 8, !dbg !3720
  %private = getelementptr inbounds %struct.mm_walk, ptr %0, i32 0, i32 6, !dbg !3721
  %1 = load ptr, ptr %private, align 8, !dbg !3721
  store ptr %1, ptr %st, align 8, !dbg !3719
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #7, !dbg !3722
  call void @llvm.dbg.declare(metadata ptr %val, metadata !3713, metadata !DIExpression()), !dbg !3723
  br label %do.body, !dbg !3724

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !3726

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3726

do.end:                                           ; preds = %do.cond
  %2 = load ptr, ptr %p4d.addr, align 8, !dbg !3724
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %val, ptr align 8 %2, i64 8, i1 true), !dbg !3724
  %3 = load ptr, ptr %st, align 8, !dbg !3728
  %effective_prot = getelementptr inbounds %struct.ptdump_state, ptr %3, i32 0, i32 1, !dbg !3730
  %4 = load ptr, ptr %effective_prot, align 8, !dbg !3730
  %tobool = icmp ne ptr %4, null, !dbg !3728
  br i1 %tobool, label %if.then, label %if.end, !dbg !3731

if.then:                                          ; preds = %do.end
  %5 = load ptr, ptr %st, align 8, !dbg !3732
  %effective_prot1 = getelementptr inbounds %struct.ptdump_state, ptr %5, i32 0, i32 1, !dbg !3733
  %6 = load ptr, ptr %effective_prot1, align 8, !dbg !3733
  %7 = load ptr, ptr %st, align 8, !dbg !3734
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %val, i32 0, i32 0, !dbg !3735
  %8 = load i64, ptr %coerce.dive, align 8, !dbg !3735
  %call = call i64 @native_p4d_val(i64 %8) #8, !dbg !3735
  call void %6(ptr noundef %7, i32 noundef 1, i64 noundef %call) #8, !dbg !3732
  br label %if.end, !dbg !3732

if.end:                                           ; preds = %if.then, %do.end
  %coerce.dive2 = getelementptr inbounds %struct.p4d_t, ptr %val, i32 0, i32 0, !dbg !3736
  %9 = load i64, ptr %coerce.dive2, align 8, !dbg !3736
  %call3 = call i32 @p4d_large(i64 %9) #8, !dbg !3736
  %tobool4 = icmp ne i32 %call3, 0, !dbg !3736
  br i1 %tobool4, label %if.then5, label %if.end8, !dbg !3738

if.then5:                                         ; preds = %if.end
  %10 = load ptr, ptr %st, align 8, !dbg !3739
  %note_page = getelementptr inbounds %struct.ptdump_state, ptr %10, i32 0, i32 0, !dbg !3741
  %11 = load ptr, ptr %note_page, align 8, !dbg !3741
  %12 = load ptr, ptr %st, align 8, !dbg !3742
  %13 = load i64, ptr %addr.addr, align 8, !dbg !3743
  %coerce.dive6 = getelementptr inbounds %struct.p4d_t, ptr %val, i32 0, i32 0, !dbg !3744
  %14 = load i64, ptr %coerce.dive6, align 8, !dbg !3744
  %call7 = call i64 @native_p4d_val(i64 %14) #8, !dbg !3744
  call void %11(ptr noundef %12, i64 noundef %13, i32 noundef 1, i64 noundef %call7) #8, !dbg !3739
  %15 = load ptr, ptr %walk.addr, align 8, !dbg !3745
  %action = getelementptr inbounds %struct.mm_walk, ptr %15, i32 0, i32 4, !dbg !3746
  store i32 1, ptr %action, align 8, !dbg !3747
  br label %if.end8, !dbg !3748

if.end8:                                          ; preds = %if.then5, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #7, !dbg !3749
  call void @llvm.lifetime.end.p0(i64 8, ptr %st) #7, !dbg !3749
  ret i32 0, !dbg !3750
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ptdump_pud_entry(ptr noundef %pud, i64 noundef %addr, i64 noundef %next, ptr noundef %walk) #0 align 16 !dbg !3751 {
entry:
  %pud.addr = alloca ptr, align 8
  %addr.addr = alloca i64, align 8
  %next.addr = alloca i64, align 8
  %walk.addr = alloca ptr, align 8
  %st = alloca ptr, align 8
  %val = alloca %struct.pud_t, align 8
  store ptr %pud, ptr %pud.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pud.addr, metadata !3753, metadata !DIExpression()), !dbg !3759
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3754, metadata !DIExpression()), !dbg !3760
  store i64 %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !3755, metadata !DIExpression()), !dbg !3761
  store ptr %walk, ptr %walk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk.addr, metadata !3756, metadata !DIExpression()), !dbg !3762
  call void @llvm.lifetime.start.p0(i64 8, ptr %st) #7, !dbg !3763
  call void @llvm.dbg.declare(metadata ptr %st, metadata !3757, metadata !DIExpression()), !dbg !3764
  %0 = load ptr, ptr %walk.addr, align 8, !dbg !3765
  %private = getelementptr inbounds %struct.mm_walk, ptr %0, i32 0, i32 6, !dbg !3766
  %1 = load ptr, ptr %private, align 8, !dbg !3766
  store ptr %1, ptr %st, align 8, !dbg !3764
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #7, !dbg !3767
  call void @llvm.dbg.declare(metadata ptr %val, metadata !3758, metadata !DIExpression()), !dbg !3768
  br label %do.body, !dbg !3769

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !3771

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3771

do.end:                                           ; preds = %do.cond
  %2 = load ptr, ptr %pud.addr, align 8, !dbg !3769
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %val, ptr align 8 %2, i64 8, i1 true), !dbg !3769
  %3 = load ptr, ptr %st, align 8, !dbg !3773
  %effective_prot = getelementptr inbounds %struct.ptdump_state, ptr %3, i32 0, i32 1, !dbg !3775
  %4 = load ptr, ptr %effective_prot, align 8, !dbg !3775
  %tobool = icmp ne ptr %4, null, !dbg !3773
  br i1 %tobool, label %if.then, label %if.end, !dbg !3776

if.then:                                          ; preds = %do.end
  %5 = load ptr, ptr %st, align 8, !dbg !3777
  %effective_prot1 = getelementptr inbounds %struct.ptdump_state, ptr %5, i32 0, i32 1, !dbg !3778
  %6 = load ptr, ptr %effective_prot1, align 8, !dbg !3778
  %7 = load ptr, ptr %st, align 8, !dbg !3779
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %val, i32 0, i32 0, !dbg !3780
  %8 = load i64, ptr %coerce.dive, align 8, !dbg !3780
  %call = call i64 @native_pud_val(i64 %8) #8, !dbg !3780
  call void %6(ptr noundef %7, i32 noundef 2, i64 noundef %call) #8, !dbg !3777
  br label %if.end, !dbg !3777

if.end:                                           ; preds = %if.then, %do.end
  %coerce.dive2 = getelementptr inbounds %struct.pud_t, ptr %val, i32 0, i32 0, !dbg !3781
  %9 = load i64, ptr %coerce.dive2, align 8, !dbg !3781
  %call3 = call i32 @pud_large(i64 %9) #8, !dbg !3781
  %tobool4 = icmp ne i32 %call3, 0, !dbg !3781
  br i1 %tobool4, label %if.then5, label %if.end8, !dbg !3783

if.then5:                                         ; preds = %if.end
  %10 = load ptr, ptr %st, align 8, !dbg !3784
  %note_page = getelementptr inbounds %struct.ptdump_state, ptr %10, i32 0, i32 0, !dbg !3786
  %11 = load ptr, ptr %note_page, align 8, !dbg !3786
  %12 = load ptr, ptr %st, align 8, !dbg !3787
  %13 = load i64, ptr %addr.addr, align 8, !dbg !3788
  %coerce.dive6 = getelementptr inbounds %struct.pud_t, ptr %val, i32 0, i32 0, !dbg !3789
  %14 = load i64, ptr %coerce.dive6, align 8, !dbg !3789
  %call7 = call i64 @native_pud_val(i64 %14) #8, !dbg !3789
  call void %11(ptr noundef %12, i64 noundef %13, i32 noundef 2, i64 noundef %call7) #8, !dbg !3784
  %15 = load ptr, ptr %walk.addr, align 8, !dbg !3790
  %action = getelementptr inbounds %struct.mm_walk, ptr %15, i32 0, i32 4, !dbg !3791
  store i32 1, ptr %action, align 8, !dbg !3792
  br label %if.end8, !dbg !3793

if.end8:                                          ; preds = %if.then5, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #7, !dbg !3794
  call void @llvm.lifetime.end.p0(i64 8, ptr %st) #7, !dbg !3794
  ret i32 0, !dbg !3795
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ptdump_pmd_entry(ptr noundef %pmd, i64 noundef %addr, i64 noundef %next, ptr noundef %walk) #0 align 16 !dbg !3796 {
entry:
  %pmd.addr = alloca ptr, align 8
  %addr.addr = alloca i64, align 8
  %next.addr = alloca i64, align 8
  %walk.addr = alloca ptr, align 8
  %st = alloca ptr, align 8
  %val = alloca %struct.pmd_t, align 8
  store ptr %pmd, ptr %pmd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd.addr, metadata !3798, metadata !DIExpression()), !dbg !3804
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3799, metadata !DIExpression()), !dbg !3805
  store i64 %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !3800, metadata !DIExpression()), !dbg !3806
  store ptr %walk, ptr %walk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk.addr, metadata !3801, metadata !DIExpression()), !dbg !3807
  call void @llvm.lifetime.start.p0(i64 8, ptr %st) #7, !dbg !3808
  call void @llvm.dbg.declare(metadata ptr %st, metadata !3802, metadata !DIExpression()), !dbg !3809
  %0 = load ptr, ptr %walk.addr, align 8, !dbg !3810
  %private = getelementptr inbounds %struct.mm_walk, ptr %0, i32 0, i32 6, !dbg !3811
  %1 = load ptr, ptr %private, align 8, !dbg !3811
  store ptr %1, ptr %st, align 8, !dbg !3809
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #7, !dbg !3812
  call void @llvm.dbg.declare(metadata ptr %val, metadata !3803, metadata !DIExpression()), !dbg !3813
  br label %do.body, !dbg !3814

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !3816

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3816

do.end:                                           ; preds = %do.cond
  %2 = load ptr, ptr %pmd.addr, align 8, !dbg !3814
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %val, ptr align 8 %2, i64 8, i1 true), !dbg !3814
  %3 = load ptr, ptr %st, align 8, !dbg !3818
  %effective_prot = getelementptr inbounds %struct.ptdump_state, ptr %3, i32 0, i32 1, !dbg !3820
  %4 = load ptr, ptr %effective_prot, align 8, !dbg !3820
  %tobool = icmp ne ptr %4, null, !dbg !3818
  br i1 %tobool, label %if.then, label %if.end, !dbg !3821

if.then:                                          ; preds = %do.end
  %5 = load ptr, ptr %st, align 8, !dbg !3822
  %effective_prot1 = getelementptr inbounds %struct.ptdump_state, ptr %5, i32 0, i32 1, !dbg !3823
  %6 = load ptr, ptr %effective_prot1, align 8, !dbg !3823
  %7 = load ptr, ptr %st, align 8, !dbg !3824
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %val, i32 0, i32 0, !dbg !3825
  %8 = load i64, ptr %coerce.dive, align 8, !dbg !3825
  %call = call i64 @native_pmd_val(i64 %8) #8, !dbg !3825
  call void %6(ptr noundef %7, i32 noundef 3, i64 noundef %call) #8, !dbg !3822
  br label %if.end, !dbg !3822

if.end:                                           ; preds = %if.then, %do.end
  %coerce.dive2 = getelementptr inbounds %struct.pmd_t, ptr %val, i32 0, i32 0, !dbg !3826
  %9 = load i64, ptr %coerce.dive2, align 8, !dbg !3826
  %call3 = call i32 @pmd_large(i64 %9) #8, !dbg !3826
  %tobool4 = icmp ne i32 %call3, 0, !dbg !3826
  br i1 %tobool4, label %if.then5, label %if.end8, !dbg !3828

if.then5:                                         ; preds = %if.end
  %10 = load ptr, ptr %st, align 8, !dbg !3829
  %note_page = getelementptr inbounds %struct.ptdump_state, ptr %10, i32 0, i32 0, !dbg !3831
  %11 = load ptr, ptr %note_page, align 8, !dbg !3831
  %12 = load ptr, ptr %st, align 8, !dbg !3832
  %13 = load i64, ptr %addr.addr, align 8, !dbg !3833
  %coerce.dive6 = getelementptr inbounds %struct.pmd_t, ptr %val, i32 0, i32 0, !dbg !3834
  %14 = load i64, ptr %coerce.dive6, align 8, !dbg !3834
  %call7 = call i64 @native_pmd_val(i64 %14) #8, !dbg !3834
  call void %11(ptr noundef %12, i64 noundef %13, i32 noundef 3, i64 noundef %call7) #8, !dbg !3829
  %15 = load ptr, ptr %walk.addr, align 8, !dbg !3835
  %action = getelementptr inbounds %struct.mm_walk, ptr %15, i32 0, i32 4, !dbg !3836
  store i32 1, ptr %action, align 8, !dbg !3837
  br label %if.end8, !dbg !3838

if.end8:                                          ; preds = %if.then5, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #7, !dbg !3839
  call void @llvm.lifetime.end.p0(i64 8, ptr %st) #7, !dbg !3839
  ret i32 0, !dbg !3840
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ptdump_pte_entry(ptr noundef %pte, i64 noundef %addr, i64 noundef %next, ptr noundef %walk) #0 align 16 !dbg !3841 {
entry:
  %pte.addr = alloca ptr, align 8
  %addr.addr = alloca i64, align 8
  %next.addr = alloca i64, align 8
  %walk.addr = alloca ptr, align 8
  %st = alloca ptr, align 8
  %val = alloca %struct.pte_t, align 8
  store ptr %pte, ptr %pte.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pte.addr, metadata !3843, metadata !DIExpression()), !dbg !3849
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3844, metadata !DIExpression()), !dbg !3850
  store i64 %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !3845, metadata !DIExpression()), !dbg !3851
  store ptr %walk, ptr %walk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk.addr, metadata !3846, metadata !DIExpression()), !dbg !3852
  call void @llvm.lifetime.start.p0(i64 8, ptr %st) #7, !dbg !3853
  call void @llvm.dbg.declare(metadata ptr %st, metadata !3847, metadata !DIExpression()), !dbg !3854
  %0 = load ptr, ptr %walk.addr, align 8, !dbg !3855
  %private = getelementptr inbounds %struct.mm_walk, ptr %0, i32 0, i32 6, !dbg !3856
  %1 = load ptr, ptr %private, align 8, !dbg !3856
  store ptr %1, ptr %st, align 8, !dbg !3854
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #7, !dbg !3857
  call void @llvm.dbg.declare(metadata ptr %val, metadata !3848, metadata !DIExpression()), !dbg !3858
  %2 = load ptr, ptr %pte.addr, align 8, !dbg !3859
  %call = call i64 @ptep_get_lockless(ptr noundef %2) #8, !dbg !3860
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %val, i32 0, i32 0, !dbg !3860
  store i64 %call, ptr %coerce.dive, align 8, !dbg !3860
  %3 = load ptr, ptr %st, align 8, !dbg !3861
  %effective_prot = getelementptr inbounds %struct.ptdump_state, ptr %3, i32 0, i32 1, !dbg !3863
  %4 = load ptr, ptr %effective_prot, align 8, !dbg !3863
  %tobool = icmp ne ptr %4, null, !dbg !3861
  br i1 %tobool, label %if.then, label %if.end, !dbg !3864

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %st, align 8, !dbg !3865
  %effective_prot1 = getelementptr inbounds %struct.ptdump_state, ptr %5, i32 0, i32 1, !dbg !3866
  %6 = load ptr, ptr %effective_prot1, align 8, !dbg !3866
  %7 = load ptr, ptr %st, align 8, !dbg !3867
  %coerce.dive2 = getelementptr inbounds %struct.pte_t, ptr %val, i32 0, i32 0, !dbg !3868
  %8 = load i64, ptr %coerce.dive2, align 8, !dbg !3868
  %call3 = call i64 @native_pte_val(i64 %8) #8, !dbg !3868
  call void %6(ptr noundef %7, i32 noundef 4, i64 noundef %call3) #8, !dbg !3865
  br label %if.end, !dbg !3865

if.end:                                           ; preds = %if.then, %entry
  %9 = load ptr, ptr %st, align 8, !dbg !3869
  %note_page = getelementptr inbounds %struct.ptdump_state, ptr %9, i32 0, i32 0, !dbg !3870
  %10 = load ptr, ptr %note_page, align 8, !dbg !3870
  %11 = load ptr, ptr %st, align 8, !dbg !3871
  %12 = load i64, ptr %addr.addr, align 8, !dbg !3872
  %coerce.dive4 = getelementptr inbounds %struct.pte_t, ptr %val, i32 0, i32 0, !dbg !3873
  %13 = load i64, ptr %coerce.dive4, align 8, !dbg !3873
  %call5 = call i64 @native_pte_val(i64 %13) #8, !dbg !3873
  call void %10(ptr noundef %11, i64 noundef %12, i32 noundef 4, i64 noundef %call5) #8, !dbg !3869
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #7, !dbg !3874
  call void @llvm.lifetime.end.p0(i64 8, ptr %st) #7, !dbg !3874
  ret i32 0, !dbg !3875
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ptdump_hole(i64 noundef %addr, i64 noundef %next, i32 noundef %depth, ptr noundef %walk) #0 align 16 !dbg !3876 {
entry:
  %addr.addr = alloca i64, align 8
  %next.addr = alloca i64, align 8
  %depth.addr = alloca i32, align 4
  %walk.addr = alloca ptr, align 8
  %st = alloca ptr, align 8
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3878, metadata !DIExpression()), !dbg !3883
  store i64 %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !3879, metadata !DIExpression()), !dbg !3884
  store i32 %depth, ptr %depth.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %depth.addr, metadata !3880, metadata !DIExpression()), !dbg !3885
  store ptr %walk, ptr %walk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk.addr, metadata !3881, metadata !DIExpression()), !dbg !3886
  call void @llvm.lifetime.start.p0(i64 8, ptr %st) #7, !dbg !3887
  call void @llvm.dbg.declare(metadata ptr %st, metadata !3882, metadata !DIExpression()), !dbg !3888
  %0 = load ptr, ptr %walk.addr, align 8, !dbg !3889
  %private = getelementptr inbounds %struct.mm_walk, ptr %0, i32 0, i32 6, !dbg !3890
  %1 = load ptr, ptr %private, align 8, !dbg !3890
  store ptr %1, ptr %st, align 8, !dbg !3888
  %2 = load ptr, ptr %st, align 8, !dbg !3891
  %note_page = getelementptr inbounds %struct.ptdump_state, ptr %2, i32 0, i32 0, !dbg !3892
  %3 = load ptr, ptr %note_page, align 8, !dbg !3892
  %4 = load ptr, ptr %st, align 8, !dbg !3893
  %5 = load i64, ptr %addr.addr, align 8, !dbg !3894
  %6 = load i32, ptr %depth.addr, align 4, !dbg !3895
  call void %3(ptr noundef %4, i64 noundef %5, i32 noundef %6, i64 noundef 0) #8, !dbg !3891
  call void @llvm.lifetime.end.p0(i64 8, ptr %st) #7, !dbg !3896
  ret i32 0, !dbg !3897
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_pgd_val(i64 %pgd.coerce) #3 align 16 !dbg !3898 {
entry:
  %pgd = alloca %struct.pgd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0
  store i64 %pgd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pgd, metadata !3902, metadata !DIExpression()), !dbg !3903
  %pgd1 = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0, !dbg !3904
  %0 = load i64, ptr %pgd1, align 8, !dbg !3904
  %and = and i64 %0, -1, !dbg !3905
  ret i64 %and, !dbg !3906
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pgd_large(i64 %pgd.coerce) #3 align 16 !dbg !3907 {
entry:
  %pgd = alloca %struct.pgd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0
  store i64 %pgd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pgd, metadata !3912, metadata !DIExpression()), !dbg !3913
  ret i32 0, !dbg !3914
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_p4d_val(i64 %p4d.coerce) #3 align 16 !dbg !3915 {
entry:
  %p4d = alloca %struct.p4d_t, align 8
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0
  store i64 %p4d.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %p4d, metadata !3919, metadata !DIExpression()), !dbg !3920
  %p4d1 = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0, !dbg !3921
  %0 = load i64, ptr %p4d1, align 8, !dbg !3921
  ret i64 %0, !dbg !3922
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @p4d_large(i64 %p4d.coerce) #3 align 16 !dbg !3923 {
entry:
  %p4d = alloca %struct.p4d_t, align 8
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0
  store i64 %p4d.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %p4d, metadata !3927, metadata !DIExpression()), !dbg !3928
  ret i32 0, !dbg !3929
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_pud_val(i64 %pud.coerce) #3 align 16 !dbg !3930 {
entry:
  %pud = alloca %struct.pud_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0
  store i64 %pud.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pud, metadata !3934, metadata !DIExpression()), !dbg !3935
  %pud1 = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0, !dbg !3936
  %0 = load i64, ptr %pud1, align 8, !dbg !3936
  ret i64 %0, !dbg !3937
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pud_large(i64 %pud.coerce) #3 align 16 !dbg !3938 {
entry:
  %pud = alloca %struct.pud_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0
  store i64 %pud.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pud, metadata !3942, metadata !DIExpression()), !dbg !3943
  %coerce.dive1 = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0, !dbg !3944
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !3944
  %call = call i64 @native_pud_val(i64 %0) #8, !dbg !3944
  %and = and i64 %call, 129, !dbg !3945
  %cmp = icmp eq i64 %and, 129, !dbg !3946
  %conv = zext i1 %cmp to i32, !dbg !3946
  ret i32 %conv, !dbg !3947
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_pmd_val(i64 %pmd.coerce) #3 align 16 !dbg !3948 {
entry:
  %pmd = alloca %struct.pmd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0
  store i64 %pmd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !3952, metadata !DIExpression()), !dbg !3953
  %pmd1 = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0, !dbg !3954
  %0 = load i64, ptr %pmd1, align 8, !dbg !3954
  ret i64 %0, !dbg !3955
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pmd_large(i64 %pte.coerce) #3 align 16 !dbg !3956 {
entry:
  %pte = alloca %struct.pmd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %pte, i32 0, i32 0
  store i64 %pte.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !3960, metadata !DIExpression()), !dbg !3961
  %coerce.dive1 = getelementptr inbounds %struct.pmd_t, ptr %pte, i32 0, i32 0, !dbg !3962
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !3962
  %call = call i64 @pmd_flags(i64 %0) #8, !dbg !3962
  %and = and i64 %call, 128, !dbg !3963
  %conv = trunc i64 %and to i32, !dbg !3962
  ret i32 %conv, !dbg !3964
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pmd_flags(i64 %pmd.coerce) #3 align 16 !dbg !3965 {
entry:
  %pmd = alloca %struct.pmd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0
  store i64 %pmd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !3967, metadata !DIExpression()), !dbg !3968
  %coerce.dive1 = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0, !dbg !3969
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !3969
  %call = call i64 @native_pmd_val(i64 %0) #8, !dbg !3969
  %coerce.dive2 = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0, !dbg !3970
  %1 = load i64, ptr %coerce.dive2, align 8, !dbg !3970
  %call3 = call i64 @pmd_flags_mask(i64 %1) #8, !dbg !3970
  %and = and i64 %call, %call3, !dbg !3971
  ret i64 %and, !dbg !3972
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pmd_flags_mask(i64 %pmd.coerce) #3 align 16 !dbg !3973 {
entry:
  %pmd = alloca %struct.pmd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0
  store i64 %pmd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !3975, metadata !DIExpression()), !dbg !3976
  %coerce.dive1 = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0, !dbg !3977
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !3977
  %call = call i64 @pmd_pfn_mask(i64 %0) #8, !dbg !3977
  %not = xor i64 %call, -1, !dbg !3978
  ret i64 %not, !dbg !3979
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pmd_pfn_mask(i64 %pmd.coerce) #3 align 16 !dbg !3980 {
entry:
  %retval = alloca i64, align 8
  %pmd = alloca %struct.pmd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0
  store i64 %pmd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !3982, metadata !DIExpression()), !dbg !3983
  %coerce.dive1 = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0, !dbg !3984
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !3984
  %call = call i64 @native_pmd_val(i64 %0) #8, !dbg !3984
  %and = and i64 %call, 128, !dbg !3986
  %tobool = icmp ne i64 %and, 0, !dbg !3986
  br i1 %tobool, label %if.then, label %if.else, !dbg !3987

if.then:                                          ; preds = %entry
  store i64 4503599625273344, ptr %retval, align 8, !dbg !3988
  br label %return, !dbg !3988

if.else:                                          ; preds = %entry
  store i64 4503599627366400, ptr %retval, align 8, !dbg !3989
  br label %return, !dbg !3989

return:                                           ; preds = %if.else, %if.then
  %1 = load i64, ptr %retval, align 8, !dbg !3990
  ret i64 %1, !dbg !3990
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ptep_get_lockless(ptr noundef %ptep) #3 align 16 !dbg !3991 {
entry:
  %retval = alloca %struct.pte_t, align 8
  %ptep.addr = alloca ptr, align 8
  store ptr %ptep, ptr %ptep.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptep.addr, metadata !3996, metadata !DIExpression()), !dbg !3997
  %0 = load ptr, ptr %ptep.addr, align 8, !dbg !3998
  %call = call i64 @ptep_get(ptr noundef %0) #8, !dbg !3999
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %retval, i32 0, i32 0, !dbg !3999
  store i64 %call, ptr %coerce.dive, align 8, !dbg !3999
  %coerce.dive1 = getelementptr inbounds %struct.pte_t, ptr %retval, i32 0, i32 0, !dbg !4000
  %1 = load i64, ptr %coerce.dive1, align 8, !dbg !4000
  ret i64 %1, !dbg !4000
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_pte_val(i64 %pte.coerce) #3 align 16 !dbg !4001 {
entry:
  %pte = alloca %struct.pte_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0
  store i64 %pte.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !4005, metadata !DIExpression()), !dbg !4006
  %pte1 = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0, !dbg !4007
  %0 = load i64, ptr %pte1, align 8, !dbg !4007
  ret i64 %0, !dbg !4008
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ptep_get(ptr noundef %ptep) #3 align 16 !dbg !4009 {
entry:
  %retval = alloca %struct.pte_t, align 8
  %ptep.addr = alloca ptr, align 8
  store ptr %ptep, ptr %ptep.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptep.addr, metadata !4011, metadata !DIExpression()), !dbg !4012
  br label %do.body, !dbg !4013

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4015

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %ptep.addr, align 8, !dbg !4013
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %0, i64 8, i1 true), !dbg !4013
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %retval, i32 0, i32 0, !dbg !4017
  %1 = load i64, ptr %coerce.dive, align 8, !dbg !4017
  ret i64 %1, !dbg !4017
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__mmap_lock_trace_released(ptr noundef %mm, i1 noundef zeroext %write) #3 align 16 !dbg !4018 {
entry:
  %mm.addr = alloca ptr, align 8
  %write.addr = alloca i8, align 1
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !4020, metadata !DIExpression()), !dbg !4022
  %frombool = zext i1 %write to i8
  store i8 %frombool, ptr %write.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %write.addr, metadata !4021, metadata !DIExpression()), !dbg !4023
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1)) #8, !dbg !4024
  br i1 %call, label %if.then, label %if.end, !dbg !4026

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !4027
  %1 = load i8, ptr %write.addr, align 1, !dbg !4028, !range !3587, !noundef !221
  %tobool = trunc i8 %1 to i1, !dbg !4028
  call void @__mmap_lock_do_trace_released(ptr noundef %0, i1 noundef zeroext %tobool) #8, !dbg !4029
  br label %if.end, !dbg !4029

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !4030
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @vma_end_write_all(ptr noundef %mm) #3 align 16 !dbg !4031 {
entry:
  %mm.addr = alloca ptr, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !4033, metadata !DIExpression()), !dbg !4034
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !4035
  call void @mmap_assert_write_locked(ptr noundef %0) #8, !dbg !4036
  br label %do.body, !dbg !4037

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4038

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !4040

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !4038

do.body2:                                         ; preds = %do.end
  br label %do.body3, !dbg !4042

do.body3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !4044

do.end4:                                          ; preds = %do.body3
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !4042, !srcloc !4046
  br label %do.body5, !dbg !4042

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !4047

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !4049

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !4047

do.body8:                                         ; preds = %do.end7
  %1 = load ptr, ptr %mm.addr, align 8, !dbg !4051
  %2 = getelementptr inbounds %struct.mm_struct, ptr %1, i32 0, i32 0, !dbg !4051
  %mm_lock_seq = getelementptr inbounds %struct.anon.13, ptr %2, i32 0, i32 18, !dbg !4051
  %3 = load i32, ptr %mm_lock_seq, align 8, !dbg !4051
  %add = add i32 %3, 1, !dbg !4051
  %4 = load ptr, ptr %mm.addr, align 8, !dbg !4051
  %5 = getelementptr inbounds %struct.mm_struct, ptr %4, i32 0, i32 0, !dbg !4051
  %mm_lock_seq9 = getelementptr inbounds %struct.anon.13, ptr %5, i32 0, i32 18, !dbg !4051
  store volatile i32 %add, ptr %mm_lock_seq9, align 8, !dbg !4051
  br label %do.end10, !dbg !4051

do.end10:                                         ; preds = %do.body8
  br label %do.end11, !dbg !4047

do.end11:                                         ; preds = %do.end10
  br label %do.end12, !dbg !4042

do.end12:                                         ; preds = %do.end11
  br label %do.end13, !dbg !4038

do.end13:                                         ; preds = %do.end12
  ret void, !dbg !4053
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4054 dso_local void @up_write(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4055 dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mmap_assert_write_locked(ptr noundef %mm) #3 align 16 !dbg !4056 {
entry:
  %mm.addr = alloca ptr, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !4058, metadata !DIExpression()), !dbg !4059
  br label %do.body, !dbg !4060

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !4061
  %1 = getelementptr inbounds %struct.mm_struct, ptr %0, i32 0, i32 0, !dbg !4061
  %mmap_lock = getelementptr inbounds %struct.anon.13, ptr %1, i32 0, i32 16, !dbg !4061
  br label %do.end, !dbg !4061

do.end:                                           ; preds = %do.body
  ret void, !dbg !4063
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nounwind }
attributes #8 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!3473, !3474, !3475, !3476, !3477, !3478, !3479, !3480}
!llvm.ident = !{!3481}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "ptdump_ops", scope: !2, file: !3, line: 142, type: !146, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF mm/.ptdump.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22mm/ptdump\22 -D KBUILD_BASENAME=\22ptdump\22 -D KBUILD_MODNAME=\22ptdump\22 -D __KBUILD_MODNAME=kmod_ptdump -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o mm/ptdump.ll mm/ptdump.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !90, globals: !145, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "mm/ptdump.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "790c80ebf52f28a8c97f8b87fff8e1de")
!4 = !{!5, !14, !19, !25, !30, !36, !43, !51, !67, !74, !80, !85}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !6, line: 9, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13}
!9 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!10 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!11 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!12 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!13 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !15, line: 2052, baseType: !7, size: 32, elements: !16)
!15 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!16 = !{!17, !18}
!17 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!18 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !20, line: 54, baseType: !7, size: 32, elements: !21)
!20 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!21 = !{!22, !23, !24}
!22 = !DIEnumerator(name: "USRQUOTA", value: 0)
!23 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!24 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !26, line: 65, baseType: !7, size: 32, elements: !27)
!26 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!27 = !{!28, !29}
!28 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!29 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !31, line: 16, baseType: !7, size: 32, elements: !32)
!31 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!32 = !{!33, !34, !35}
!33 = !DIEnumerator(name: "TT_NONE", value: 0)
!34 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!35 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !37, line: 15, baseType: !7, size: 32, elements: !38)
!37 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!38 = !{!39, !40, !41, !42}
!39 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!40 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!41 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!42 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !44, line: 68, baseType: !7, size: 32, elements: !45)
!44 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!45 = !{!46, !47, !48, !49, !50}
!46 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!47 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!48 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!49 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!50 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !52, line: 1325, baseType: !7, size: 32, elements: !53)
!52 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!53 = !{!54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66}
!54 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!55 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!56 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!57 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!58 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!59 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!60 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!61 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!62 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!63 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!64 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!65 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!66 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !68, line: 51, baseType: !7, size: 32, elements: !69)
!68 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!69 = !{!70, !71, !72, !73}
!70 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!71 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!72 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!73 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "page_walk_action", file: !75, line: 86, baseType: !7, size: 32, elements: !76)
!75 = !DIFile(filename: "./include/linux/pagewalk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0832a2ba9a444486d82c67d2c8dc1bb1")
!76 = !{!77, !78, !79}
!77 = !DIEnumerator(name: "ACTION_SUBTREE", value: 0)
!78 = !DIEnumerator(name: "ACTION_CONTINUE", value: 1)
!79 = !DIEnumerator(name: "ACTION_AGAIN", value: 2)
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "page_walk_lock", file: !75, line: 10, baseType: !7, size: 32, elements: !81)
!81 = !{!82, !83, !84}
!82 = !DIEnumerator(name: "PGWALK_RDLOCK", value: 0)
!83 = !DIEnumerator(name: "PGWALK_WRLOCK", value: 1)
!84 = !DIEnumerator(name: "PGWALK_WRLOCK_VERIFY", value: 2)
!85 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !86, line: 10, baseType: !7, size: 32, elements: !87)
!86 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!87 = !{!88, !89}
!88 = !DIEnumerator(name: "false", value: 0)
!89 = !DIEnumerator(name: "true", value: 1)
!90 = !{!91, !102, !110, !118, !119, !127, !128, !135, !142}
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!93 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !94)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !95, line: 299, baseType: !96)
!95 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !95, line: 299, size: 64, elements: !97)
!97 = !{!98}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !96, file: !95, line: 299, baseType: !99, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !100, line: 18, baseType: !101)
!100 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!101 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !104)
!104 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !105)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "p4d_t", file: !95, line: 346, baseType: !106)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !95, line: 346, size: 64, elements: !107)
!107 = !{!108}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "p4d", scope: !106, file: !95, line: 346, baseType: !109, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "p4dval_t", file: !100, line: 17, baseType: !101)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !112)
!112 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !113)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !95, line: 372, baseType: !114)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !95, line: 372, size: 64, elements: !115)
!115 = !{!116}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !114, file: !95, line: 372, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !100, line: 16, baseType: !101)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !100, line: 14, baseType: !101)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !121)
!121 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !122)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !100, line: 22, baseType: !123)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !100, line: 22, size: 64, elements: !124)
!124 = !{!125}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !123, file: !100, line: 22, baseType: !126, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !100, line: 15, baseType: !101)
!127 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !129, line: 159, baseType: !130)
!129 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !131, line: 23, baseType: !132)
!131 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !133, line: 31, baseType: !134)
!133 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!134 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !137)
!137 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !138)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !100, line: 21, baseType: !139)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !100, line: 21, size: 64, elements: !140)
!140 = !{!141}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !139, file: !100, line: 21, baseType: !118, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !144)
!144 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!145 = !{!0}
!146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !147)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_walk_ops", file: !75, line: 58, size: 704, elements: !148)
!148 = !{!149, !3438, !3443, !3447, !3451, !3455, !3459, !3463, !3467, !3468, !3472}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "pgd_entry", scope: !147, file: !75, line: 59, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = !DISubroutineType(types: !152)
!152 = !{!144, !153, !101, !101, !154}
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_walk", file: !75, line: 107, size: 384, elements: !156)
!156 = !{!157, !159, !3433, !3434, !3435, !3436, !3437}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !155, file: !75, line: 108, baseType: !158, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !155, file: !75, line: 109, baseType: !160, size: 64, offset: 64)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !52, line: 733, size: 10240, elements: !162)
!162 = !{!163, !3431}
!163 = !DIDerivedType(tag: DW_TAG_member, scope: !161, file: !52, line: 734, baseType: !164, size: 10240)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !161, file: !52, line: 734, size: 10240, elements: !165)
!165 = !{!166, !174, !225, !3335, !3336, !3337, !3338, !3339, !3340, !3341, !3342, !3343, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3382, !3384, !3387, !3411, !3412, !3413, !3416, !3417, !3418, !3421, !3422, !3423, !3429, !3430}
!166 = !DIDerivedType(tag: DW_TAG_member, scope: !164, file: !52, line: 739, baseType: !167, size: 512, align: 512)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !164, file: !52, line: 739, size: 512, align: 512, elements: !168)
!168 = !{!169}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !167, file: !52, line: 747, baseType: !170, size: 32)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !129, line: 174, baseType: !171)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !129, line: 172, size: 32, elements: !172)
!172 = !{!173}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !171, file: !129, line: 173, baseType: !144, size: 32)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !164, file: !52, line: 750, baseType: !175, size: 128, offset: 512)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !176, line: 218, size: 128, elements: !177)
!176 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!177 = !{!178, !222, !223}
!178 = !DIDerivedType(tag: DW_TAG_member, scope: !175, file: !176, line: 219, baseType: !179, size: 32)
!179 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !175, file: !176, line: 219, size: 32, elements: !180)
!180 = !{!181, !218}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !179, file: !176, line: 220, baseType: !182, size: 32)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !183, line: 29, baseType: !184)
!183 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !183, line: 17, size: 32, elements: !185)
!185 = !{!186}
!186 = !DIDerivedType(tag: DW_TAG_member, scope: !184, file: !183, line: 18, baseType: !187, size: 32)
!187 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !184, file: !183, line: 18, size: 32, elements: !188)
!188 = !{!189}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !187, file: !183, line: 19, baseType: !190, size: 32)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !191, line: 14, size: 32, elements: !192)
!191 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!192 = !{!193}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !190, file: !191, line: 15, baseType: !194, size: 32)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !195, line: 44, baseType: !196)
!195 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !195, line: 14, size: 32, elements: !197)
!197 = !{!198}
!198 = !DIDerivedType(tag: DW_TAG_member, scope: !196, file: !195, line: 15, baseType: !199, size: 32)
!199 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !196, file: !195, line: 15, size: 32, elements: !200)
!200 = !{!201, !202, !210}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !199, file: !195, line: 16, baseType: !170, size: 32)
!202 = !DIDerivedType(tag: DW_TAG_member, scope: !199, file: !195, line: 24, baseType: !203, size: 16)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !199, file: !195, line: 24, size: 16, elements: !204)
!204 = !{!205, !209}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !203, file: !195, line: 25, baseType: !206, size: 8)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !131, line: 17, baseType: !207)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !133, line: 21, baseType: !208)
!208 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !203, file: !195, line: 26, baseType: !206, size: 8, offset: 8)
!210 = !DIDerivedType(tag: DW_TAG_member, scope: !199, file: !195, line: 28, baseType: !211, size: 32)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !199, file: !195, line: 28, size: 32, elements: !212)
!212 = !{!213, !217}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !211, file: !195, line: 29, baseType: !214, size: 16)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !131, line: 19, baseType: !215)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !133, line: 24, baseType: !216)
!216 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !211, file: !195, line: 30, baseType: !214, size: 16, offset: 16)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !179, file: !176, line: 221, baseType: !219)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !176, line: 197, baseType: !220)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !176, line: 197, elements: !221)
!221 = !{}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !175, file: !176, line: 223, baseType: !7, size: 32, offset: 32)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !175, file: !176, line: 224, baseType: !224, size: 64, offset: 64)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !164, file: !52, line: 752, baseType: !226, size: 64, offset: 640)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DISubroutineType(types: !228)
!228 = !{!101, !229, !101, !101, !101, !101}
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !15, line: 994, size: 1856, align: 64, elements: !231)
!231 = !{!232, !251, !252, !254, !264, !282, !286, !287, !368, !592, !601, !3325, !3326, !3327, !3328, !3329, !3330, !3332, !3333, !3334}
!232 = !DIDerivedType(tag: DW_TAG_member, scope: !230, file: !15, line: 995, baseType: !233, size: 128)
!233 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !230, file: !15, line: 995, size: 128, elements: !234)
!234 = !{!235, !241, !250}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !233, file: !15, line: 996, baseType: !236, size: 64)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !237, line: 60, size: 64, elements: !238)
!237 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!238 = !{!239}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !236, file: !237, line: 61, baseType: !240, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !233, file: !15, line: 997, baseType: !242, size: 128, align: 64)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !129, line: 232, size: 128, align: 64, elements: !243)
!243 = !{!244, !246}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !242, file: !129, line: 233, baseType: !245, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !242, file: !129, line: 234, baseType: !247, size: 64, offset: 64)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DISubroutineType(types: !249)
!249 = !{null, !245}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !233, file: !15, line: 998, baseType: !7, size: 32)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !230, file: !15, line: 1005, baseType: !182, size: 32, offset: 128)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !230, file: !15, line: 1006, baseType: !253, size: 32, offset: 160)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !129, line: 156, baseType: !7)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !230, file: !15, line: 1007, baseType: !255, size: 64, offset: 192)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !256, line: 13, baseType: !257)
!256 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !129, line: 181, baseType: !258)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !129, line: 179, size: 64, elements: !259)
!259 = !{!260}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !258, file: !129, line: 180, baseType: !261, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !131, line: 22, baseType: !262)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !133, line: 30, baseType: !263)
!263 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !230, file: !15, line: 1008, baseType: !265, size: 256, offset: 256)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !266, line: 66, size: 256, elements: !267)
!266 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!267 = !{!268, !269, !271, !276}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !265, file: !266, line: 67, baseType: !255, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !265, file: !266, line: 68, baseType: !270, size: 32, offset: 64)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !191, line: 23, baseType: !190)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !265, file: !266, line: 70, baseType: !272, size: 32, offset: 96)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !273, line: 15, size: 32, elements: !274)
!273 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!274 = !{!275}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !272, file: !273, line: 20, baseType: !170, size: 32)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !265, file: !266, line: 72, baseType: !277, size: 128, offset: 128)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !129, line: 190, size: 128, elements: !278)
!278 = !{!279, !281}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !277, file: !129, line: 191, baseType: !280, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !277, file: !129, line: 191, baseType: !280, size: 64, offset: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !230, file: !15, line: 1009, baseType: !283, size: 64, offset: 512)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !129, line: 52, baseType: !284)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !285, line: 88, baseType: !263)
!285 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!286 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !230, file: !15, line: 1010, baseType: !7, size: 32, offset: 576)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !230, file: !15, line: 1011, baseType: !288, size: 256, offset: 640)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !15, line: 948, size: 256, elements: !289)
!289 = !{!290, !313, !357, !358, !366, !367}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !288, file: !15, line: 949, baseType: !291, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !292, line: 34, baseType: !293)
!292 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !292, line: 25, size: 64, elements: !294)
!294 = !{!295}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !293, file: !292, line: 26, baseType: !296, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !297, line: 27, baseType: !298)
!297 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !297, line: 13, size: 64, elements: !299)
!299 = !{!300, !312}
!300 = !DIDerivedType(tag: DW_TAG_member, scope: !298, file: !297, line: 14, baseType: !301, size: 32)
!301 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !298, file: !297, line: 14, size: 32, elements: !302)
!302 = !{!303, !304}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !301, file: !297, line: 15, baseType: !170, size: 32)
!304 = !DIDerivedType(tag: DW_TAG_member, scope: !301, file: !297, line: 16, baseType: !305, size: 32)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !301, file: !297, line: 16, size: 32, elements: !306)
!306 = !{!307, !308}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !305, file: !297, line: 18, baseType: !206, size: 8)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !305, file: !297, line: 19, baseType: !309, size: 24, offset: 8)
!309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 24, elements: !310)
!310 = !{!311}
!311 = !DISubrange(count: 3)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !298, file: !297, line: 26, baseType: !194, size: 32, offset: 32)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !288, file: !15, line: 950, baseType: !314, size: 64, offset: 64)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !6, line: 59, size: 768, elements: !316)
!316 = !{!317, !323, !324, !325, !338, !339, !346, !347}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !315, file: !6, line: 61, baseType: !318, size: 32)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !319, line: 113, baseType: !320)
!319 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !319, line: 111, size: 32, elements: !321)
!321 = !{!322}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !320, file: !319, line: 112, baseType: !170, size: 32)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !315, file: !6, line: 62, baseType: !7, size: 32, offset: 32)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !315, file: !6, line: 63, baseType: !182, size: 32, offset: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !315, file: !6, line: 65, baseType: !326, size: 256, offset: 128)
!326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !327, size: 256, elements: !336)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !129, line: 194, size: 64, elements: !328)
!328 = !{!329}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !327, file: !129, line: 195, baseType: !330, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !129, line: 198, size: 128, elements: !332)
!332 = !{!333, !334}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !331, file: !129, line: 199, baseType: !330, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !331, file: !129, line: 199, baseType: !335, size: 64, offset: 64)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!336 = !{!337}
!337 = !DISubrange(count: 4)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !315, file: !6, line: 66, baseType: !327, size: 64, offset: 384)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !315, file: !6, line: 68, baseType: !340, size: 192, offset: 448)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !341, line: 41, baseType: !342)
!341 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !341, line: 37, size: 192, elements: !343)
!343 = !{!344, !345}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !342, file: !341, line: 38, baseType: !182, size: 32)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !342, file: !341, line: 39, baseType: !277, size: 128, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !315, file: !6, line: 69, baseType: !242, size: 128, align: 64, offset: 640)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !315, file: !6, line: 70, baseType: !348, offset: 768)
!348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !349, elements: !355)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !6, line: 54, size: 128, elements: !350)
!350 = !{!351, !352}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !349, file: !6, line: 55, baseType: !144, size: 32)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !349, file: !6, line: 56, baseType: !353, size: 64, offset: 64)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !6, line: 56, flags: DIFlagFwdDecl)
!355 = !{!356}
!356 = !DISubrange(count: -1)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !288, file: !15, line: 951, baseType: !5, size: 32, offset: 128)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !288, file: !15, line: 952, baseType: !359, size: 32, offset: 160)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !360, line: 23, baseType: !361)
!360 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !360, line: 21, size: 32, elements: !362)
!362 = !{!363}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !361, file: !360, line: 22, baseType: !364, size: 32)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !129, line: 37, baseType: !365)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !285, line: 49, baseType: !7)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !288, file: !15, line: 952, baseType: !359, size: 32, offset: 192)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !288, file: !15, line: 953, baseType: !144, size: 32, offset: 224)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !230, file: !15, line: 1012, baseType: !369, size: 64, offset: 896)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !371)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !372, line: 110, size: 1472, elements: !373)
!372 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!373 = !{!374, !375, !376, !383, !384, !385, !386, !387, !388, !389, !390, !396, !397, !398, !399, !400, !401, !537, !538, !539, !540, !541, !572, !575, !579, !587}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !371, file: !372, line: 111, baseType: !255, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !371, file: !372, line: 112, baseType: !359, size: 32, offset: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !371, file: !372, line: 113, baseType: !377, size: 32, offset: 96)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !360, line: 28, baseType: !378)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !360, line: 26, size: 32, elements: !379)
!379 = !{!380}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !378, file: !360, line: 27, baseType: !381, size: 32)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !129, line: 38, baseType: !382)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !285, line: 50, baseType: !7)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !371, file: !372, line: 114, baseType: !359, size: 32, offset: 128)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !371, file: !372, line: 115, baseType: !377, size: 32, offset: 160)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !371, file: !372, line: 116, baseType: !359, size: 32, offset: 192)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !371, file: !372, line: 117, baseType: !377, size: 32, offset: 224)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !371, file: !372, line: 118, baseType: !359, size: 32, offset: 256)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !371, file: !372, line: 119, baseType: !377, size: 32, offset: 288)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !371, file: !372, line: 120, baseType: !7, size: 32, offset: 320)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !371, file: !372, line: 121, baseType: !391, size: 64, offset: 384)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !392, line: 24, baseType: !393)
!392 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !392, line: 24, size: 64, elements: !394)
!394 = !{!395}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !393, file: !392, line: 24, baseType: !130, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !371, file: !372, line: 122, baseType: !391, size: 64, offset: 448)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !371, file: !372, line: 123, baseType: !391, size: 64, offset: 512)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !371, file: !372, line: 124, baseType: !391, size: 64, offset: 576)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !371, file: !372, line: 125, baseType: !391, size: 64, offset: 640)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !371, file: !372, line: 127, baseType: !208, size: 8, offset: 704)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !371, file: !372, line: 129, baseType: !402, size: 64, offset: 768)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !404, line: 195, size: 1728, elements: !405)
!404 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!405 = !{!406, !407, !412, !424, !433, !436, !437, !444, !445, !446, !447, !452, !453, !454, !456, !457, !501, !522}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !403, file: !404, line: 196, baseType: !318, size: 32)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !403, file: !404, line: 197, baseType: !408, size: 32, offset: 32)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !404, line: 28, baseType: !409)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !129, line: 104, baseType: !410)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !131, line: 20, baseType: !411)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !133, line: 26, baseType: !144)
!412 = !DIDerivedType(tag: DW_TAG_member, scope: !403, file: !404, line: 198, baseType: !413, size: 192, offset: 64)
!413 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !403, file: !404, line: 198, size: 192, elements: !414)
!414 = !{!415, !416}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !413, file: !404, line: 199, baseType: !277, size: 128)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !413, file: !404, line: 200, baseType: !417, size: 192, align: 64)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !418, line: 5, size: 192, align: 64, elements: !419)
!418 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!419 = !{!420, !421, !423}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !417, file: !418, line: 6, baseType: !101, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !417, file: !418, line: 7, baseType: !422, size: 64, offset: 64)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !417, file: !418, line: 8, baseType: !422, size: 64, offset: 128)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !403, file: !404, line: 205, baseType: !425, size: 320, offset: 256)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !426, line: 48, size: 320, elements: !427)
!426 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!427 = !{!428, !429, !430, !431, !432}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !425, file: !426, line: 49, baseType: !255, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !425, file: !426, line: 55, baseType: !255, size: 64, offset: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !425, file: !426, line: 57, baseType: !272, size: 32, offset: 128)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !425, file: !426, line: 59, baseType: !270, size: 32, offset: 160)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !425, file: !426, line: 60, baseType: !277, size: 128, offset: 192)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !403, file: !404, line: 206, baseType: !434, size: 64, offset: 576)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !404, line: 206, flags: DIFlagFwdDecl)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !403, file: !404, line: 207, baseType: !224, size: 64, offset: 640)
!437 = !DIDerivedType(tag: DW_TAG_member, scope: !403, file: !404, line: 208, baseType: !438, size: 64, offset: 704)
!438 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !403, file: !404, line: 208, size: 64, elements: !439)
!439 = !{!440, !443}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !438, file: !404, line: 209, baseType: !441, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !442, line: 8, baseType: !262)
!442 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!443 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !438, file: !404, line: 210, baseType: !441, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !403, file: !404, line: 212, baseType: !441, size: 64, offset: 768)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !403, file: !404, line: 213, baseType: !359, size: 32, offset: 832)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !403, file: !404, line: 214, baseType: !377, size: 32, offset: 864)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !403, file: !404, line: 215, baseType: !448, size: 32, offset: 896)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !404, line: 31, baseType: !449)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !129, line: 110, baseType: !450)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !131, line: 21, baseType: !451)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !133, line: 27, baseType: !7)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !403, file: !404, line: 216, baseType: !216, size: 16, offset: 928)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !403, file: !404, line: 217, baseType: !216, size: 16, offset: 944)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !403, file: !404, line: 221, baseType: !455, size: 16, offset: 960)
!455 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !403, file: !404, line: 228, baseType: !101, size: 64, offset: 1024)
!457 = !DIDerivedType(tag: DW_TAG_member, scope: !403, file: !404, line: 245, baseType: !458, size: 320, offset: 1088)
!458 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !403, file: !404, line: 245, size: 320, elements: !459)
!459 = !{!460, !492}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !458, file: !404, line: 246, baseType: !461, size: 320)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !404, line: 114, size: 320, elements: !462)
!462 = !{!463, !464, !477, !480, !489}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !461, file: !404, line: 116, baseType: !101, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, scope: !461, file: !404, line: 117, baseType: !465, size: 64, offset: 64)
!465 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !461, file: !404, line: 117, size: 64, elements: !466)
!466 = !{!467, !476}
!467 = !DIDerivedType(tag: DW_TAG_member, scope: !465, file: !404, line: 118, baseType: !468, size: 64)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !465, file: !404, line: 118, size: 64, elements: !469)
!469 = !{!470, !471}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !468, file: !404, line: 120, baseType: !214, size: 16)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !468, file: !404, line: 121, baseType: !472, size: 48, offset: 16)
!472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !473, size: 48, elements: !474)
!473 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!474 = !{!475}
!475 = !DISubrange(count: 6)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !465, file: !404, line: 127, baseType: !101, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !461, file: !404, line: 129, baseType: !478, size: 64, offset: 128)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !404, line: 102, flags: DIFlagFwdDecl)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !461, file: !404, line: 130, baseType: !481, size: 64, offset: 192)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !404, line: 108, size: 192, elements: !483)
!483 = !{!484, !485, !486}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !482, file: !404, line: 109, baseType: !242, size: 128, align: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !482, file: !404, line: 110, baseType: !318, size: 32, offset: 128)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !482, file: !404, line: 111, baseType: !487, size: 8, offset: 160)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !129, line: 35, baseType: !488)
!488 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !461, file: !404, line: 131, baseType: !490, size: 64, offset: 256)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !473)
!492 = !DIDerivedType(tag: DW_TAG_member, scope: !458, file: !404, line: 247, baseType: !493, size: 320)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !458, file: !404, line: 247, size: 320, elements: !494)
!494 = !{!495, !496, !497, !498, !499}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !493, file: !404, line: 248, baseType: !101, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !493, file: !404, line: 249, baseType: !101, size: 64, offset: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !493, file: !404, line: 250, baseType: !478, size: 64, offset: 128)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !493, file: !404, line: 251, baseType: !481, size: 64, offset: 192)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !493, file: !404, line: 252, baseType: !500, size: 64, offset: 256)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, scope: !403, file: !404, line: 260, baseType: !502, size: 256, offset: 1408)
!502 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !403, file: !404, line: 260, size: 256, elements: !503)
!503 = !{!504, !510}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !502, file: !404, line: 261, baseType: !505, size: 256)
!505 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !404, line: 134, size: 256, elements: !506)
!506 = !{!507, !508}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !505, file: !404, line: 135, baseType: !224, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !505, file: !404, line: 136, baseType: !509, size: 256)
!509 = !DICompositeType(tag: DW_TAG_array_type, baseType: !224, size: 256, elements: !336)
!510 = !DIDerivedType(tag: DW_TAG_member, scope: !502, file: !404, line: 262, baseType: !511, size: 256)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !502, file: !404, line: 262, size: 256, elements: !512)
!512 = !{!513, !514}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !511, file: !404, line: 264, baseType: !277, size: 128)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !511, file: !404, line: 265, baseType: !515, size: 128, offset: 128)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !516, line: 22, size: 128, elements: !517)
!516 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!517 = !{!518, !521}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !515, file: !516, line: 23, baseType: !519, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !516, line: 23, flags: DIFlagFwdDecl)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !515, file: !516, line: 24, baseType: !101, size: 64, offset: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !403, file: !404, line: 280, baseType: !523, size: 64, offset: 1664)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !404, line: 176, size: 192, elements: !525)
!525 = !{!526, !535, !536}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !524, file: !404, line: 177, baseType: !527, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !404, line: 171, baseType: !528)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DISubroutineType(types: !530)
!530 = !{!144, !402, !531, !533, !402}
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !479)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !505)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !524, file: !404, line: 178, baseType: !402, size: 64, offset: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !524, file: !404, line: 179, baseType: !478, size: 64, offset: 128)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !371, file: !372, line: 130, baseType: !402, size: 64, offset: 832)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !371, file: !372, line: 131, baseType: !402, size: 64, offset: 896)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !371, file: !372, line: 132, baseType: !402, size: 64, offset: 960)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !371, file: !372, line: 135, baseType: !224, size: 64, offset: 1024)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !371, file: !372, line: 137, baseType: !542, size: 64, offset: 1088)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !544, line: 14, size: 1088, elements: !545)
!544 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!545 = !{!546, !547, !556, !557, !558, !559, !560, !561}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !543, file: !544, line: 15, baseType: !318, size: 32)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !543, file: !544, line: 17, baseType: !548, size: 320, offset: 64)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !549, line: 22, size: 320, elements: !550)
!549 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!550 = !{!551, !552, !553, !554}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !548, file: !549, line: 23, baseType: !270, size: 32)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !548, file: !549, line: 24, baseType: !261, size: 64, offset: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !548, file: !549, line: 26, baseType: !277, size: 128, offset: 128)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !548, file: !549, line: 28, baseType: !555, size: 64, offset: 256)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !543, file: !544, line: 19, baseType: !101, size: 64, offset: 384)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !543, file: !544, line: 20, baseType: !255, size: 64, offset: 448)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !543, file: !544, line: 23, baseType: !331, size: 128, offset: 512)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !543, file: !544, line: 24, baseType: !359, size: 32, offset: 640)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !543, file: !544, line: 29, baseType: !255, size: 64, offset: 704)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !543, file: !544, line: 36, baseType: !562, size: 320, offset: 768)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !563, line: 15, size: 320, elements: !564)
!563 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!564 = !{!565, !566, !567, !568, !569, !570, !571}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !562, file: !563, line: 16, baseType: !270, size: 32)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !562, file: !563, line: 18, baseType: !144, size: 32, offset: 32)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !562, file: !563, line: 19, baseType: !144, size: 32, offset: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !562, file: !563, line: 20, baseType: !144, size: 32, offset: 96)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !562, file: !563, line: 21, baseType: !144, size: 32, offset: 128)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !562, file: !563, line: 22, baseType: !101, size: 64, offset: 192)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !562, file: !563, line: 23, baseType: !101, size: 64, offset: 256)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !371, file: !372, line: 138, baseType: !573, size: 64, offset: 1152)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !52, line: 901, flags: DIFlagFwdDecl)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !371, file: !372, line: 139, baseType: !576, size: 64, offset: 1216)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !578, line: 16, flags: DIFlagFwdDecl)
!578 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!579 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !371, file: !372, line: 140, baseType: !580, size: 64, offset: 1280)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !372, line: 25, size: 64, elements: !582)
!582 = !{!583, !584, !585}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !581, file: !372, line: 26, baseType: !170, size: 32)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !581, file: !372, line: 27, baseType: !144, size: 32, offset: 32)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !581, file: !372, line: 28, baseType: !586, offset: 64)
!586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !377, elements: !355)
!587 = !DIDerivedType(tag: DW_TAG_member, scope: !371, file: !372, line: 142, baseType: !588, size: 128, offset: 1344)
!588 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !371, file: !372, line: 142, size: 128, elements: !589)
!589 = !{!590, !591}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !588, file: !372, line: 143, baseType: !144, size: 32)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !588, file: !372, line: 144, baseType: !242, size: 128, align: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !230, file: !15, line: 1013, baseType: !593, size: 256, offset: 960)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !15, line: 970, size: 256, elements: !594)
!594 = !{!595, !596, !597, !598, !599, !600}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !593, file: !15, line: 971, baseType: !101, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !593, file: !15, line: 972, baseType: !7, size: 32, offset: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !593, file: !15, line: 973, baseType: !7, size: 32, offset: 96)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !593, file: !15, line: 974, baseType: !7, size: 32, offset: 128)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !593, file: !15, line: 975, baseType: !7, size: 32, offset: 160)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !593, file: !15, line: 976, baseType: !283, size: 64, offset: 192)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !230, file: !15, line: 1014, baseType: !602, size: 128, offset: 1216)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !603, line: 8, size: 128, elements: !604)
!603 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!604 = !{!605, !3324}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !602, file: !603, line: 9, baseType: !606, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !608, line: 70, size: 256, elements: !609)
!608 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!609 = !{!610, !3321, !3322, !3323}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !607, file: !608, line: 71, baseType: !611, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !613, line: 82, size: 1536, elements: !614)
!613 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!614 = !{!615, !616, !626, !634, !635, !650, !3288, !3290, !3303, !3304, !3305, !3306, !3307, !3313, !3314, !3315}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !612, file: !613, line: 84, baseType: !7, size: 32)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !612, file: !613, line: 85, baseType: !617, size: 32, offset: 32)
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !618, line: 275, baseType: !619)
!618 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !618, line: 275, size: 32, elements: !620)
!620 = !{!621}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !619, file: !618, line: 275, baseType: !622, size: 32)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !618, line: 69, baseType: !623)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !618, line: 64, size: 32, elements: !624)
!624 = !{!625}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !623, file: !618, line: 65, baseType: !7, size: 32)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !612, file: !613, line: 86, baseType: !627, size: 128, offset: 64)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !628, line: 38, size: 128, elements: !629)
!628 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!629 = !{!630, !632}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !627, file: !628, line: 39, baseType: !631, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !627, file: !628, line: 39, baseType: !633, size: 64, offset: 64)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !612, file: !613, line: 87, baseType: !611, size: 64, offset: 192)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !612, file: !613, line: 88, baseType: !636, size: 128, offset: 256)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !613, line: 49, size: 128, elements: !637)
!637 = !{!638, !647}
!638 = !DIDerivedType(tag: DW_TAG_member, scope: !636, file: !613, line: 50, baseType: !639, size: 64)
!639 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !636, file: !613, line: 50, size: 64, elements: !640)
!640 = !{!641, !646}
!641 = !DIDerivedType(tag: DW_TAG_member, scope: !639, file: !613, line: 51, baseType: !642, size: 64)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !639, file: !613, line: 51, size: 64, elements: !643)
!643 = !{!644, !645}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !642, file: !613, line: 52, baseType: !450, size: 32)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !642, file: !613, line: 52, baseType: !450, size: 32, offset: 32)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !639, file: !613, line: 54, baseType: !130, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !636, file: !613, line: 56, baseType: !648, size: 64, offset: 64)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !208)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !612, file: !613, line: 89, baseType: !651, size: 64, offset: 384)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !15, line: 641, size: 4800, elements: !653)
!653 = !{!654, !656, !657, !658, !659, !660, !661, !664, !665, !862, !3099, !3100, !3101, !3102, !3108, !3109, !3110, !3111, !3112, !3113, !3114, !3115, !3116, !3117, !3118, !3119, !3120, !3121, !3122, !3123, !3124, !3125, !3126, !3131, !3132, !3133, !3134, !3135, !3136, !3137, !3270, !3273, !3274, !3275, !3284, !3285, !3286, !3287}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !652, file: !15, line: 642, baseType: !655, size: 16)
!655 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !129, line: 24, baseType: !216)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !652, file: !15, line: 643, baseType: !216, size: 16, offset: 16)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !652, file: !15, line: 644, baseType: !359, size: 32, offset: 32)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !652, file: !15, line: 645, baseType: !277, size: 128, offset: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !652, file: !15, line: 646, baseType: !377, size: 32, offset: 192)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !652, file: !15, line: 647, baseType: !7, size: 32, offset: 224)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !652, file: !15, line: 650, baseType: !662, size: 64, offset: 256)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !15, line: 607, flags: DIFlagFwdDecl)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !652, file: !15, line: 651, baseType: !662, size: 64, offset: 320)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !652, file: !15, line: 654, baseType: !666, size: 64, offset: 384)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !668)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !15, line: 1966, size: 2048, align: 512, elements: !669)
!669 = !{!670, !674, !687, !693, !697, !701, !705, !709, !713, !717, !721, !722, !728, !732, !769, !800, !810, !816, !820, !824, !828, !832, !836, !842, !846}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !668, file: !15, line: 1967, baseType: !671, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DISubroutineType(types: !673)
!673 = !{!611, !651, !611, !7}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !668, file: !15, line: 1968, baseType: !675, size: 64, offset: 64)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = !DISubroutineType(types: !677)
!677 = !{!490, !611, !651, !678}
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !680, line: 10, size: 128, elements: !681)
!680 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!681 = !{!682, !686}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !679, file: !680, line: 11, baseType: !683, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DISubroutineType(types: !685)
!685 = !{null, !224}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !679, file: !680, line: 12, baseType: !224, size: 64, offset: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !668, file: !15, line: 1969, baseType: !688, size: 64, offset: 128)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = !DISubroutineType(types: !690)
!690 = !{!144, !691, !651, !144}
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !392, line: 42, flags: DIFlagFwdDecl)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !668, file: !15, line: 1970, baseType: !694, size: 64, offset: 192)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DISubroutineType(types: !696)
!696 = !{!662, !651, !144, !487}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !668, file: !15, line: 1972, baseType: !698, size: 64, offset: 256)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DISubroutineType(types: !700)
!700 = !{!144, !611, !500, !144}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !668, file: !15, line: 1974, baseType: !702, size: 64, offset: 320)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = !DISubroutineType(types: !704)
!704 = !{!144, !691, !651, !611, !655, !487}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !668, file: !15, line: 1976, baseType: !706, size: 64, offset: 384)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = !DISubroutineType(types: !708)
!708 = !{!144, !611, !651, !611}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !668, file: !15, line: 1977, baseType: !710, size: 64, offset: 448)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DISubroutineType(types: !712)
!712 = !{!144, !651, !611}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !668, file: !15, line: 1978, baseType: !714, size: 64, offset: 512)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DISubroutineType(types: !716)
!716 = !{!144, !691, !651, !611, !490}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !668, file: !15, line: 1980, baseType: !718, size: 64, offset: 576)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DISubroutineType(types: !720)
!720 = !{!144, !691, !651, !611, !655}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !668, file: !15, line: 1982, baseType: !710, size: 64, offset: 640)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !668, file: !15, line: 1983, baseType: !723, size: 64, offset: 704)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DISubroutineType(types: !725)
!725 = !{!144, !691, !651, !611, !655, !726}
!726 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !129, line: 21, baseType: !727)
!727 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !129, line: 18, baseType: !450)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !668, file: !15, line: 1985, baseType: !729, size: 64, offset: 768)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = !DISubroutineType(types: !731)
!731 = !{!144, !691, !651, !611, !651, !611, !7}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !668, file: !15, line: 1987, baseType: !733, size: 64, offset: 832)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DISubroutineType(types: !735)
!735 = !{!144, !691, !611, !736}
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !15, line: 226, size: 640, elements: !738)
!738 = !{!739, !740, !741, !751, !760, !761, !766, !767, !768}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !737, file: !15, line: 227, baseType: !7, size: 32)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !737, file: !15, line: 228, baseType: !655, size: 16, offset: 32)
!741 = !DIDerivedType(tag: DW_TAG_member, scope: !737, file: !15, line: 241, baseType: !742, size: 32, offset: 64)
!742 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !737, file: !15, line: 241, size: 32, elements: !743)
!743 = !{!744, !745}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !742, file: !15, line: 242, baseType: !359, size: 32)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !742, file: !15, line: 243, baseType: !746, size: 32)
!746 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !747, line: 16, baseType: !748)
!747 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !747, line: 14, size: 32, elements: !749)
!749 = !{!750}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !748, file: !747, line: 15, baseType: !364, size: 32)
!751 = !DIDerivedType(tag: DW_TAG_member, scope: !737, file: !15, line: 245, baseType: !752, size: 32, offset: 96)
!752 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !737, file: !15, line: 245, size: 32, elements: !753)
!753 = !{!754, !755}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !752, file: !15, line: 246, baseType: !377, size: 32)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !752, file: !15, line: 247, baseType: !756, size: 32)
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !747, line: 20, baseType: !757)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !747, line: 18, size: 32, elements: !758)
!758 = !{!759}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !757, file: !747, line: 19, baseType: !381, size: 32)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !737, file: !15, line: 249, baseType: !283, size: 64, offset: 128)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !737, file: !15, line: 250, baseType: !762, size: 128, offset: 192)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !442, line: 13, size: 128, elements: !763)
!763 = !{!764, !765}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !762, file: !442, line: 14, baseType: !441, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !762, file: !442, line: 15, baseType: !127, size: 64, offset: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !737, file: !15, line: 251, baseType: !762, size: 128, offset: 320)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !737, file: !15, line: 252, baseType: !762, size: 128, offset: 448)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !737, file: !15, line: 259, baseType: !229, size: 64, offset: 576)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !668, file: !15, line: 1988, baseType: !770, size: 64, offset: 896)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DISubroutineType(types: !772)
!772 = !{!144, !691, !773, !775, !450, !7}
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !602)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !777, line: 22, size: 1280, elements: !778)
!777 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!778 = !{!779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !776, file: !777, line: 23, baseType: !450, size: 32)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !776, file: !777, line: 24, baseType: !655, size: 16, offset: 32)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !776, file: !777, line: 25, baseType: !7, size: 32, offset: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !776, file: !777, line: 26, baseType: !449, size: 32, offset: 96)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !776, file: !777, line: 27, baseType: !130, size: 64, offset: 128)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !776, file: !777, line: 28, baseType: !130, size: 64, offset: 192)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !776, file: !777, line: 41, baseType: !130, size: 64, offset: 256)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !776, file: !777, line: 42, baseType: !726, size: 32, offset: 320)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !776, file: !777, line: 43, baseType: !726, size: 32, offset: 352)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !776, file: !777, line: 44, baseType: !359, size: 32, offset: 384)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !776, file: !777, line: 45, baseType: !377, size: 32, offset: 416)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !776, file: !777, line: 46, baseType: !283, size: 64, offset: 448)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !776, file: !777, line: 47, baseType: !762, size: 128, offset: 512)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !776, file: !777, line: 48, baseType: !762, size: 128, offset: 640)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !776, file: !777, line: 49, baseType: !762, size: 128, offset: 768)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !776, file: !777, line: 50, baseType: !762, size: 128, offset: 896)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !776, file: !777, line: 51, baseType: !130, size: 64, offset: 1024)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !776, file: !777, line: 52, baseType: !130, size: 64, offset: 1088)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !776, file: !777, line: 53, baseType: !450, size: 32, offset: 1152)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !776, file: !777, line: 54, baseType: !450, size: 32, offset: 1184)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !776, file: !777, line: 55, baseType: !130, size: 64, offset: 1216)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !668, file: !15, line: 1990, baseType: !801, size: 64, offset: 960)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DISubroutineType(types: !803)
!803 = !{!804, !611, !500, !807}
!804 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !129, line: 66, baseType: !805)
!805 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !285, line: 73, baseType: !806)
!806 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !285, line: 15, baseType: !127)
!807 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !129, line: 61, baseType: !808)
!808 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !285, line: 72, baseType: !809)
!809 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !285, line: 16, baseType: !101)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !668, file: !15, line: 1991, baseType: !811, size: 64, offset: 1024)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DISubroutineType(types: !813)
!813 = !{!144, !651, !814, !130, !130}
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !15, line: 55, flags: DIFlagFwdDecl)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !668, file: !15, line: 1993, baseType: !817, size: 64, offset: 1088)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DISubroutineType(types: !819)
!819 = !{!144, !651, !144}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !668, file: !15, line: 1994, baseType: !821, size: 64, offset: 1152)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DISubroutineType(types: !823)
!823 = !{!144, !651, !611, !229, !7, !655}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !668, file: !15, line: 1997, baseType: !825, size: 64, offset: 1216)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DISubroutineType(types: !827)
!827 = !{!144, !691, !651, !229, !655}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !668, file: !15, line: 1999, baseType: !829, size: 64, offset: 1280)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DISubroutineType(types: !831)
!831 = !{!662, !691, !611, !144}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !668, file: !15, line: 2001, baseType: !833, size: 64, offset: 1344)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DISubroutineType(types: !835)
!835 = !{!144, !691, !611, !662, !144}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !668, file: !15, line: 2003, baseType: !837, size: 64, offset: 1408)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DISubroutineType(types: !839)
!839 = !{!144, !691, !611, !840}
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !15, line: 76, flags: DIFlagFwdDecl)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !668, file: !15, line: 2005, baseType: !843, size: 64, offset: 1472)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DISubroutineType(types: !845)
!845 = !{!144, !611, !840}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !668, file: !15, line: 2006, baseType: !847, size: 64, offset: 1536)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DISubroutineType(types: !849)
!849 = !{!850, !651}
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !15, line: 3192, size: 192, elements: !852)
!852 = !{!853, !861}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !851, file: !15, line: 3193, baseType: !854, size: 128)
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !855, line: 296, size: 128, elements: !856)
!855 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!856 = !{!857, !858, !860}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !854, file: !855, line: 297, baseType: !182, size: 32)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !854, file: !855, line: 299, baseType: !859, size: 32, offset: 32)
!859 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !129, line: 154, baseType: !7)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !854, file: !855, line: 300, baseType: !224, size: 64, offset: 64)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !851, file: !15, line: 3194, baseType: !450, size: 32, offset: 128)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !652, file: !15, line: 655, baseType: !863, size: 64, offset: 448)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !15, line: 1190, size: 10752, elements: !865)
!865 = !{!866, !867, !868, !869, !870, !871, !912, !1050, !1090, !1173, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1190, !1194, !1195, !1198, !1201, !1204, !1207, !1208, !1209, !1250, !2961, !2962, !2963, !2964, !2965, !2966, !2969, !2971, !2978, !2979, !2980, !2981, !3040, !3055, !3056, !3057, !3058, !3059, !3063, !3064, !3065, !3080, !3081, !3082, !3093, !3094, !3095, !3096, !3097, !3098}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !864, file: !15, line: 1191, baseType: !277, size: 128)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !864, file: !15, line: 1192, baseType: !726, size: 32, offset: 128)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !864, file: !15, line: 1193, baseType: !208, size: 8, offset: 160)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !864, file: !15, line: 1194, baseType: !101, size: 64, offset: 192)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !864, file: !15, line: 1195, baseType: !283, size: 64, offset: 256)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !864, file: !15, line: 1196, baseType: !872, size: 64, offset: 320)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !15, line: 2366, size: 576, elements: !874)
!874 = !{!875, !876, !877, !883, !887, !891, !895, !899, !900, !901, !904, !905, !906, !908, !909, !910, !911}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !873, file: !15, line: 2367, baseType: !490, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !873, file: !15, line: 2368, baseType: !144, size: 32, offset: 64)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !873, file: !15, line: 2376, baseType: !878, size: 64, offset: 128)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DISubroutineType(types: !880)
!880 = !{!144, !881}
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !608, line: 21, flags: DIFlagFwdDecl)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !873, file: !15, line: 2377, baseType: !884, size: 64, offset: 192)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !886)
!886 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !15, line: 75, flags: DIFlagFwdDecl)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !873, file: !15, line: 2378, baseType: !888, size: 64, offset: 256)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DISubroutineType(types: !890)
!890 = !{!611, !872, !144, !490, !224}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !873, file: !15, line: 2380, baseType: !892, size: 64, offset: 320)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = !DISubroutineType(types: !894)
!894 = !{null, !863}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !873, file: !15, line: 2381, baseType: !896, size: 64, offset: 384)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !898, line: 348, flags: DIFlagFwdDecl)
!898 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!899 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !873, file: !15, line: 2382, baseType: !872, size: 64, offset: 448)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !873, file: !15, line: 2383, baseType: !327, size: 64, offset: 512)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !873, file: !15, line: 2385, baseType: !902, offset: 576)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !903, line: 206, elements: !221)
!903 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!904 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !873, file: !15, line: 2386, baseType: !902, offset: 576)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !873, file: !15, line: 2387, baseType: !902, offset: 576)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !873, file: !15, line: 2388, baseType: !907, offset: 576)
!907 = !DICompositeType(tag: DW_TAG_array_type, baseType: !902, elements: !310)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !873, file: !15, line: 2390, baseType: !902, offset: 576)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !873, file: !15, line: 2391, baseType: !902, offset: 576)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !873, file: !15, line: 2392, baseType: !902, offset: 576)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !873, file: !15, line: 2393, baseType: !902, offset: 576)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !864, file: !15, line: 1197, baseType: !913, size: 64, offset: 384)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !915)
!915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !15, line: 2057, size: 1664, elements: !916)
!916 = !{!917, !921, !925, !926, !930, !936, !940, !941, !942, !946, !950, !954, !955, !956, !962, !967, !968, !975, !976, !977, !978, !982, !986, !1033, !1048, !1049}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !915, file: !15, line: 2058, baseType: !918, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DISubroutineType(types: !920)
!920 = !{!651, !863}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !915, file: !15, line: 2059, baseType: !922, size: 64, offset: 64)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = !DISubroutineType(types: !924)
!924 = !{null, !651}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !915, file: !15, line: 2060, baseType: !922, size: 64, offset: 128)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !915, file: !15, line: 2062, baseType: !927, size: 64, offset: 192)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DISubroutineType(types: !929)
!929 = !{null, !651, !144}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !915, file: !15, line: 2063, baseType: !931, size: 64, offset: 256)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = !DISubroutineType(types: !933)
!933 = !{!144, !651, !934}
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !15, line: 309, flags: DIFlagFwdDecl)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !915, file: !15, line: 2064, baseType: !937, size: 64, offset: 320)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = !DISubroutineType(types: !939)
!939 = !{!144, !651}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !915, file: !15, line: 2065, baseType: !922, size: 64, offset: 384)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !915, file: !15, line: 2066, baseType: !892, size: 64, offset: 448)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !915, file: !15, line: 2067, baseType: !943, size: 64, offset: 512)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = !DISubroutineType(types: !945)
!945 = !{!144, !863, !144}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !915, file: !15, line: 2068, baseType: !947, size: 64, offset: 576)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = !DISubroutineType(types: !949)
!949 = !{!144, !863, !14}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !915, file: !15, line: 2069, baseType: !951, size: 64, offset: 640)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DISubroutineType(types: !953)
!953 = !{!144, !863}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !915, file: !15, line: 2070, baseType: !947, size: 64, offset: 704)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !915, file: !15, line: 2071, baseType: !951, size: 64, offset: 768)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !915, file: !15, line: 2072, baseType: !957, size: 64, offset: 832)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = !DISubroutineType(types: !959)
!959 = !{!144, !611, !960}
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !15, line: 62, flags: DIFlagFwdDecl)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !915, file: !15, line: 2073, baseType: !963, size: 64, offset: 896)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = !DISubroutineType(types: !965)
!965 = !{!144, !863, !966, !500}
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !915, file: !15, line: 2074, baseType: !892, size: 64, offset: 960)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !915, file: !15, line: 2076, baseType: !969, size: 64, offset: 1024)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = !DISubroutineType(types: !971)
!971 = !{!144, !972, !611}
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !974, line: 66, flags: DIFlagFwdDecl)
!974 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!975 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !915, file: !15, line: 2077, baseType: !969, size: 64, offset: 1088)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !915, file: !15, line: 2078, baseType: !969, size: 64, offset: 1152)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !915, file: !15, line: 2079, baseType: !969, size: 64, offset: 1216)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !915, file: !15, line: 2081, baseType: !979, size: 64, offset: 1280)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = !DISubroutineType(types: !981)
!981 = !{!804, !863, !144, !500, !807, !283}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !915, file: !15, line: 2082, baseType: !983, size: 64, offset: 1344)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DISubroutineType(types: !985)
!985 = !{!804, !863, !144, !490, !807, !283}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !915, file: !15, line: 2083, baseType: !987, size: 64, offset: 1408)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DISubroutineType(types: !989)
!989 = !{!990, !651}
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !20, line: 296, size: 1664, elements: !993)
!993 = !{!994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1018, !1019, !1020}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !992, file: !20, line: 297, baseType: !331, size: 128)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !992, file: !20, line: 298, baseType: !277, size: 128, offset: 128)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !992, file: !20, line: 299, baseType: !277, size: 128, offset: 256)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !992, file: !20, line: 300, baseType: !277, size: 128, offset: 384)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !992, file: !20, line: 301, baseType: !265, size: 256, offset: 512)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !992, file: !20, line: 302, baseType: !182, size: 32, offset: 768)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !992, file: !20, line: 303, baseType: !170, size: 32, offset: 800)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !992, file: !20, line: 304, baseType: !863, size: 64, offset: 832)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !992, file: !20, line: 305, baseType: !1003, size: 64, offset: 896)
!1003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !20, line: 68, size: 64, elements: !1004)
!1004 = !{!1005, !1017}
!1005 = !DIDerivedType(tag: DW_TAG_member, scope: !1003, file: !20, line: 69, baseType: !1006, size: 32)
!1006 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1003, file: !20, line: 69, size: 32, elements: !1007)
!1007 = !{!1008, !1009, !1010}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1006, file: !20, line: 70, baseType: !359, size: 32)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1006, file: !20, line: 71, baseType: !377, size: 32)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1006, file: !20, line: 72, baseType: !1011, size: 32)
!1011 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1012, line: 24, baseType: !1013)
!1012 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1012, line: 22, size: 32, elements: !1014)
!1014 = !{!1015}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1013, file: !1012, line: 23, baseType: !1016, size: 32)
!1016 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1012, line: 20, baseType: !365)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1003, file: !20, line: 74, baseType: !19, size: 32, offset: 32)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !992, file: !20, line: 306, baseType: !283, size: 64, offset: 960)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !992, file: !20, line: 307, baseType: !101, size: 64, offset: 1024)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !992, file: !20, line: 308, baseType: !1021, size: 576, offset: 1088)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !20, line: 205, size: 576, elements: !1022)
!1022 = !{!1023, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1021, file: !20, line: 206, baseType: !1024, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !20, line: 66, baseType: !263)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1021, file: !20, line: 207, baseType: !1024, size: 64, offset: 64)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1021, file: !20, line: 208, baseType: !1024, size: 64, offset: 128)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1021, file: !20, line: 209, baseType: !1024, size: 64, offset: 192)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1021, file: !20, line: 210, baseType: !1024, size: 64, offset: 256)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1021, file: !20, line: 211, baseType: !1024, size: 64, offset: 320)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1021, file: !20, line: 212, baseType: !1024, size: 64, offset: 384)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1021, file: !20, line: 213, baseType: !441, size: 64, offset: 448)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1021, file: !20, line: 214, baseType: !441, size: 64, offset: 512)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !915, file: !15, line: 2085, baseType: !1034, size: 64, offset: 1472)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{!127, !863, !1037}
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1039, line: 15, size: 256, elements: !1040)
!1039 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1040 = !{!1041, !1042, !1043, !1044, !1045}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1038, file: !1039, line: 16, baseType: !859, size: 32)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1038, file: !1039, line: 19, baseType: !144, size: 32, offset: 32)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1038, file: !1039, line: 26, baseType: !101, size: 64, offset: 64)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1038, file: !1039, line: 33, baseType: !101, size: 64, offset: 128)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1038, file: !1039, line: 36, baseType: !1046, size: 64, offset: 192)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !52, line: 33, flags: DIFlagFwdDecl)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !915, file: !15, line: 2087, baseType: !1034, size: 64, offset: 1536)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !915, file: !15, line: 2089, baseType: !892, size: 64, offset: 1600)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !864, file: !15, line: 1198, baseType: !1051, size: 64, offset: 448)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1053)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !20, line: 324, size: 704, elements: !1054)
!1054 = !{!1055, !1059, !1063, !1067, !1068, !1069, !1070, !1071, !1076, !1081, !1085}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1053, file: !20, line: 325, baseType: !1056, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = !DISubroutineType(types: !1058)
!1058 = !{!144, !991}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1053, file: !20, line: 326, baseType: !1060, size: 64, offset: 64)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{!991, !863, !144}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1053, file: !20, line: 327, baseType: !1064, size: 64, offset: 128)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{null, !991}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1053, file: !20, line: 328, baseType: !1056, size: 64, offset: 192)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1053, file: !20, line: 329, baseType: !1056, size: 64, offset: 256)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1053, file: !20, line: 330, baseType: !1056, size: 64, offset: 320)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1053, file: !20, line: 331, baseType: !943, size: 64, offset: 384)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1053, file: !20, line: 334, baseType: !1072, size: 64, offset: 448)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DISubroutineType(types: !1074)
!1074 = !{!1075, !651}
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1053, file: !20, line: 335, baseType: !1077, size: 64, offset: 512)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = !DISubroutineType(types: !1079)
!1079 = !{!144, !651, !1080}
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1053, file: !20, line: 337, baseType: !1082, size: 64, offset: 576)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DISubroutineType(types: !1084)
!1084 = !{!144, !651, !1075}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1053, file: !20, line: 339, baseType: !1086, size: 64, offset: 640)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = !DISubroutineType(types: !1088)
!1088 = !{!144, !863, !1089}
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !864, file: !15, line: 1199, baseType: !1091, size: 64, offset: 512)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1093)
!1093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !20, line: 430, size: 704, elements: !1094)
!1094 = !{!1095, !1099, !1100, !1104, !1105, !1106, !1121, !1144, !1148, !1149, !1172}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1093, file: !20, line: 431, baseType: !1096, size: 64)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1097 = !DISubroutineType(types: !1098)
!1098 = !{!144, !863, !144, !144, !773}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1093, file: !20, line: 432, baseType: !943, size: 64, offset: 64)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1093, file: !20, line: 433, baseType: !1101, size: 64, offset: 128)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = !DISubroutineType(types: !1103)
!1103 = !{!144, !863, !7}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1093, file: !20, line: 434, baseType: !1101, size: 64, offset: 192)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1093, file: !20, line: 435, baseType: !943, size: 64, offset: 256)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1093, file: !20, line: 436, baseType: !1107, size: 64, offset: 320)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = !DISubroutineType(types: !1109)
!1109 = !{!144, !863, !144, !1110}
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !20, line: 417, size: 256, elements: !1112)
!1112 = !{!1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1111, file: !20, line: 418, baseType: !144, size: 32)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1111, file: !20, line: 419, baseType: !7, size: 32, offset: 32)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1111, file: !20, line: 420, baseType: !7, size: 32, offset: 64)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1111, file: !20, line: 422, baseType: !7, size: 32, offset: 96)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1111, file: !20, line: 423, baseType: !7, size: 32, offset: 128)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1111, file: !20, line: 424, baseType: !7, size: 32, offset: 160)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1111, file: !20, line: 425, baseType: !7, size: 32, offset: 192)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1111, file: !20, line: 426, baseType: !7, size: 32, offset: 224)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1093, file: !20, line: 437, baseType: !1122, size: 64, offset: 384)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = !DISubroutineType(types: !1124)
!1124 = !{!144, !863, !1003, !1125}
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !20, line: 345, size: 960, elements: !1127)
!1127 = !{!1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1126, file: !20, line: 346, baseType: !144, size: 32)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1126, file: !20, line: 347, baseType: !130, size: 64, offset: 64)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1126, file: !20, line: 348, baseType: !130, size: 64, offset: 128)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1126, file: !20, line: 349, baseType: !130, size: 64, offset: 192)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1126, file: !20, line: 350, baseType: !130, size: 64, offset: 256)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1126, file: !20, line: 351, baseType: !130, size: 64, offset: 320)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1126, file: !20, line: 352, baseType: !130, size: 64, offset: 384)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1126, file: !20, line: 353, baseType: !261, size: 64, offset: 448)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1126, file: !20, line: 355, baseType: !261, size: 64, offset: 512)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1126, file: !20, line: 356, baseType: !144, size: 32, offset: 576)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1126, file: !20, line: 357, baseType: !144, size: 32, offset: 608)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1126, file: !20, line: 358, baseType: !130, size: 64, offset: 640)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1126, file: !20, line: 359, baseType: !130, size: 64, offset: 704)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1126, file: !20, line: 360, baseType: !130, size: 64, offset: 768)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1126, file: !20, line: 361, baseType: !261, size: 64, offset: 832)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1126, file: !20, line: 362, baseType: !144, size: 32, offset: 896)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1093, file: !20, line: 438, baseType: !1145, size: 64, offset: 448)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{!144, !863, !1089, !1125}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1093, file: !20, line: 440, baseType: !1122, size: 64, offset: 512)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1093, file: !20, line: 441, baseType: !1150, size: 64, offset: 576)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = !DISubroutineType(types: !1152)
!1152 = !{!144, !863, !1153}
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !20, line: 411, size: 1408, elements: !1155)
!1155 = !{!1156, !1157}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1154, file: !20, line: 412, baseType: !7, size: 32)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1154, file: !20, line: 413, baseType: !1158, size: 1344, offset: 64)
!1158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1159, size: 1344, elements: !310)
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !20, line: 397, size: 448, elements: !1160)
!1160 = !{!1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1171}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1159, file: !20, line: 398, baseType: !7, size: 32)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1159, file: !20, line: 399, baseType: !7, size: 32, offset: 32)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1159, file: !20, line: 401, baseType: !7, size: 32, offset: 64)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1159, file: !20, line: 402, baseType: !7, size: 32, offset: 96)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1159, file: !20, line: 403, baseType: !7, size: 32, offset: 128)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1159, file: !20, line: 404, baseType: !7, size: 32, offset: 160)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1159, file: !20, line: 405, baseType: !7, size: 32, offset: 192)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1159, file: !20, line: 406, baseType: !134, size: 64, offset: 256)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1159, file: !20, line: 407, baseType: !1170, size: 64, offset: 320)
!1170 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !129, line: 132, baseType: !130)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1159, file: !20, line: 408, baseType: !1170, size: 64, offset: 384)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1093, file: !20, line: 442, baseType: !1101, size: 64, offset: 640)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !864, file: !15, line: 1200, baseType: !1174, size: 64, offset: 576)
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1175 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1176)
!1176 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !15, line: 54, flags: DIFlagFwdDecl)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !864, file: !15, line: 1201, baseType: !101, size: 64, offset: 640)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !864, file: !15, line: 1202, baseType: !101, size: 64, offset: 704)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !864, file: !15, line: 1203, baseType: !101, size: 64, offset: 768)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !864, file: !15, line: 1204, baseType: !611, size: 64, offset: 832)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !864, file: !15, line: 1205, baseType: !425, size: 320, offset: 896)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !864, file: !15, line: 1206, baseType: !144, size: 32, offset: 1216)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !864, file: !15, line: 1207, baseType: !170, size: 32, offset: 1248)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !864, file: !15, line: 1209, baseType: !224, size: 64, offset: 1280)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !864, file: !15, line: 1211, baseType: !1186, size: 64, offset: 1344)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1189)
!1189 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !15, line: 1211, flags: DIFlagFwdDecl)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !864, file: !15, line: 1223, baseType: !1191, size: 64, offset: 1408)
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !628, line: 34, size: 64, elements: !1192)
!1192 = !{!1193}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1191, file: !628, line: 35, baseType: !631, size: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !864, file: !15, line: 1224, baseType: !277, size: 128, offset: 1472)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !864, file: !15, line: 1225, baseType: !1196, size: 64, offset: 1600)
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1197 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !15, line: 1225, flags: DIFlagFwdDecl)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !864, file: !15, line: 1226, baseType: !1199, size: 64, offset: 1664)
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1200 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !15, line: 1226, flags: DIFlagFwdDecl)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !864, file: !15, line: 1227, baseType: !1202, size: 64, offset: 1728)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1203 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !15, line: 50, flags: DIFlagFwdDecl)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !864, file: !15, line: 1228, baseType: !1205, size: 64, offset: 1792)
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !15, line: 1228, flags: DIFlagFwdDecl)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !864, file: !15, line: 1229, baseType: !331, size: 128, offset: 1856)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !864, file: !15, line: 1230, baseType: !7, size: 32, offset: 1984)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !864, file: !15, line: 1231, baseType: !1210, size: 2496, offset: 2048)
!1210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !20, line: 521, size: 2496, elements: !1211)
!1211 = !{!1212, !1213, !1214, !1216, !1248}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1210, file: !20, line: 522, baseType: !7, size: 32)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1210, file: !20, line: 523, baseType: !425, size: 320, offset: 64)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1210, file: !20, line: 524, baseType: !1215, size: 192, offset: 384)
!1215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !651, size: 192, elements: !310)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1210, file: !20, line: 525, baseType: !1217, size: 1728, offset: 576)
!1217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1218, size: 1728, elements: !310)
!1218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !20, line: 222, size: 576, elements: !1219)
!1219 = !{!1220, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1218, file: !20, line: 223, baseType: !1221, size: 64)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !20, line: 445, size: 256, elements: !1223)
!1223 = !{!1224, !1225, !1238, !1239}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1222, file: !20, line: 446, baseType: !144, size: 32)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1222, file: !20, line: 447, baseType: !1226, size: 64, offset: 64)
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1228)
!1228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !20, line: 312, size: 512, elements: !1229)
!1229 = !{!1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1228, file: !20, line: 313, baseType: !943, size: 64)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1228, file: !20, line: 314, baseType: !943, size: 64, offset: 64)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1228, file: !20, line: 315, baseType: !943, size: 64, offset: 128)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1228, file: !20, line: 316, baseType: !943, size: 64, offset: 192)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1228, file: !20, line: 317, baseType: !1056, size: 64, offset: 256)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1228, file: !20, line: 318, baseType: !1056, size: 64, offset: 320)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1228, file: !20, line: 319, baseType: !1056, size: 64, offset: 384)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1228, file: !20, line: 320, baseType: !1086, size: 64, offset: 448)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1222, file: !20, line: 448, baseType: !896, size: 64, offset: 128)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1222, file: !20, line: 449, baseType: !1221, size: 64, offset: 192)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1218, file: !20, line: 224, baseType: !144, size: 32, offset: 64)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1218, file: !20, line: 226, baseType: !277, size: 128, offset: 128)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1218, file: !20, line: 227, baseType: !101, size: 64, offset: 256)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1218, file: !20, line: 228, baseType: !7, size: 32, offset: 320)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1218, file: !20, line: 229, baseType: !7, size: 32, offset: 352)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1218, file: !20, line: 230, baseType: !1024, size: 64, offset: 384)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1218, file: !20, line: 231, baseType: !1024, size: 64, offset: 448)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1218, file: !20, line: 232, baseType: !224, size: 64, offset: 512)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1210, file: !20, line: 526, baseType: !1249, size: 192, offset: 2304)
!1249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1226, size: 192, elements: !310)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !864, file: !15, line: 1233, baseType: !1251, size: 2368, offset: 4544)
!1251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !15, line: 1184, size: 2368, elements: !1252)
!1252 = !{!1253, !1254, !1255}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1251, file: !15, line: 1185, baseType: !216, size: 16)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1251, file: !15, line: 1186, baseType: !216, size: 16, offset: 16)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1251, file: !15, line: 1187, baseType: !1256, size: 2304, offset: 64)
!1256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1257, size: 2304, elements: !310)
!1257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1258, line: 12, size: 768, elements: !1259)
!1258 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1259 = !{!1260, !1268, !1270, !2959, !2960}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1257, file: !1258, line: 13, baseType: !1261, size: 384)
!1261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1262, line: 17, size: 384, elements: !1263)
!1262 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1263 = !{!1264, !1265, !1266, !1267}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1261, file: !1262, line: 18, baseType: !144, size: 32)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1261, file: !1262, line: 19, baseType: !144, size: 32, offset: 32)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1261, file: !1262, line: 20, baseType: !340, size: 192, offset: 64)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1261, file: !1262, line: 22, baseType: !242, size: 128, align: 64, offset: 256)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1257, file: !1258, line: 14, baseType: !1269, size: 64, offset: 384)
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1257, file: !1258, line: 15, baseType: !1271, size: 64, offset: 448)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1272, line: 16, size: 64, elements: !1273)
!1272 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1273 = !{!1274}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1271, file: !1272, line: 17, baseType: !1275, size: 64)
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !974, line: 746, size: 58368, elements: !1277)
!1277 = !{!1278, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1358, !1369, !1464, !1468, !1471, !1502, !1503, !1504, !1505, !1516, !1518, !1519, !1520, !1521, !1522, !1523, !1534, !1535, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1552, !1553, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1641, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1656, !1657, !1658, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1700, !1706, !1707, !1708, !1709, !1710, !1714, !1717, !1724, !1729, !1732, !1735, !1738, !1741, !1881, !1912, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1920, !1923, !1924, !1925, !1934, !1942, !1943, !1944, !1945, !1946, !1951, !1952, !1953, !1956, !1957, !1960, !1963, !1966, !1974, !1977, !1978, !2064, !2065, !2066, !2067, !2068, !2074, !2075, !2076, !2077, !2080, !2081, !2084, !2087, !2088, !2091, !2092, !2093, !2096, !2097, !2098, !2101, !2102, !2103, !2116, !2117, !2118, !2119, !2120, !2121, !2122, !2123, !2124, !2135, !2138, !2615, !2618, !2619, !2620, !2621, !2622, !2623, !2624, !2627, !2699, !2701, !2702, !2703, !2704, !2705, !2717, !2720, !2721, !2722, !2723, !2724, !2725, !2726, !2727, !2728, !2729, !2730, !2734, !2735, !2736}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1276, file: !974, line: 752, baseType: !1279, size: 192)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1280, line: 56, size: 192, elements: !1281)
!1280 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1281 = !{!1282, !1283, !1284, !1285}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1279, file: !1280, line: 57, baseType: !101, size: 64)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1279, file: !1280, line: 58, baseType: !101, size: 64, offset: 64)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1279, file: !1280, line: 59, baseType: !450, size: 32, offset: 128)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1279, file: !1280, line: 61, baseType: !450, size: 32, offset: 160)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1276, file: !974, line: 754, baseType: !7, size: 32, offset: 192)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1276, file: !974, line: 767, baseType: !224, size: 64, offset: 256)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1276, file: !974, line: 768, baseType: !318, size: 32, offset: 320)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1276, file: !974, line: 770, baseType: !7, size: 32, offset: 352)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1276, file: !974, line: 771, baseType: !7, size: 32, offset: 384)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1276, file: !974, line: 774, baseType: !144, size: 32, offset: 416)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1276, file: !974, line: 775, baseType: !1293, size: 128, offset: 448)
!1293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1294, line: 58, size: 128, elements: !1295)
!1294 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1295 = !{!1296, !1297, !1302, !1303}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1293, file: !1294, line: 59, baseType: !236, size: 64)
!1297 = !DIDerivedType(tag: DW_TAG_member, scope: !1293, file: !1294, line: 60, baseType: !1298, size: 32, offset: 64)
!1298 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1293, file: !1294, line: 60, size: 32, elements: !1299)
!1299 = !{!1300, !1301}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1298, file: !1294, line: 61, baseType: !7, size: 32)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1298, file: !1294, line: 62, baseType: !170, size: 32)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1293, file: !1294, line: 65, baseType: !214, size: 16, offset: 96)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1293, file: !1294, line: 65, baseType: !214, size: 16, offset: 112)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1276, file: !974, line: 776, baseType: !7, size: 32, offset: 576)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1276, file: !974, line: 777, baseType: !101, size: 64, offset: 640)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1276, file: !974, line: 778, baseType: !1275, size: 64, offset: 704)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1276, file: !974, line: 787, baseType: !144, size: 32, offset: 768)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1276, file: !974, line: 788, baseType: !144, size: 32, offset: 800)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1276, file: !974, line: 790, baseType: !144, size: 32, offset: 832)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1276, file: !974, line: 792, baseType: !144, size: 32, offset: 864)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1276, file: !974, line: 793, baseType: !144, size: 32, offset: 896)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1276, file: !974, line: 794, baseType: !144, size: 32, offset: 928)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1276, file: !974, line: 795, baseType: !7, size: 32, offset: 960)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1276, file: !974, line: 797, baseType: !1315, size: 2048, offset: 1024)
!1315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !974, line: 551, size: 2048, elements: !1316)
!1316 = !{!1317, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1337, !1340, !1341, !1342}
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1315, file: !974, line: 553, baseType: !1318, size: 128)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !974, line: 411, size: 128, elements: !1319)
!1319 = !{!1320, !1321}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1318, file: !974, line: 412, baseType: !101, size: 64)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1318, file: !974, line: 413, baseType: !450, size: 32, offset: 64)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1315, file: !974, line: 554, baseType: !417, size: 192, align: 64, offset: 128)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1315, file: !974, line: 555, baseType: !130, size: 64, offset: 320)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1315, file: !974, line: 556, baseType: !130, size: 64, offset: 384)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1315, file: !974, line: 558, baseType: !277, size: 128, offset: 448)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1315, file: !974, line: 559, baseType: !7, size: 32, offset: 576)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1315, file: !974, line: 561, baseType: !130, size: 64, offset: 640)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1315, file: !974, line: 562, baseType: !130, size: 64, offset: 704)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1315, file: !974, line: 563, baseType: !130, size: 64, offset: 768)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1315, file: !974, line: 564, baseType: !130, size: 64, offset: 832)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1315, file: !974, line: 565, baseType: !261, size: 64, offset: 896)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1315, file: !974, line: 566, baseType: !130, size: 64, offset: 960)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1315, file: !974, line: 568, baseType: !130, size: 64, offset: 1024)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1315, file: !974, line: 571, baseType: !144, size: 32, offset: 1088)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1315, file: !974, line: 572, baseType: !1336, size: 64, offset: 1152)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1315, size: 64)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1315, file: !974, line: 574, baseType: !1338, size: 64, offset: 1216)
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !974, line: 49, flags: DIFlagFwdDecl)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1315, file: !974, line: 576, baseType: !1338, size: 64, offset: 1280)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1315, file: !974, line: 578, baseType: !101, size: 64, offset: 1344)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1315, file: !974, line: 588, baseType: !1343, size: 512, align: 512, offset: 1536)
!1343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !974, line: 497, size: 512, align: 512, elements: !1344)
!1344 = !{!1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1343, file: !974, line: 498, baseType: !130, size: 64)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1343, file: !974, line: 499, baseType: !130, size: 64, offset: 64)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1343, file: !974, line: 500, baseType: !130, size: 64, offset: 128)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1343, file: !974, line: 501, baseType: !450, size: 32, offset: 192)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1343, file: !974, line: 502, baseType: !450, size: 32, offset: 224)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1343, file: !974, line: 503, baseType: !101, size: 64, offset: 256)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1343, file: !974, line: 504, baseType: !101, size: 64, offset: 320)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1343, file: !974, line: 505, baseType: !101, size: 64, offset: 384)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1343, file: !974, line: 506, baseType: !1354, size: 64, align: 64, offset: 448)
!1354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !974, line: 445, size: 64, align: 64, elements: !1355)
!1355 = !{!1356, !1357}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1354, file: !974, line: 446, baseType: !7, size: 32)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1354, file: !974, line: 447, baseType: !7, size: 32, offset: 32)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1276, file: !974, line: 798, baseType: !1359, size: 384, offset: 3072)
!1359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !974, line: 592, size: 384, elements: !1360)
!1360 = !{!1361, !1362, !1363, !1364, !1365, !1366, !1367}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1359, file: !974, line: 593, baseType: !277, size: 128)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1359, file: !974, line: 594, baseType: !101, size: 64, offset: 128)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1359, file: !974, line: 595, baseType: !101, size: 64, offset: 192)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1359, file: !974, line: 596, baseType: !7, size: 32, offset: 256)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1359, file: !974, line: 597, baseType: !216, size: 16, offset: 288)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1359, file: !974, line: 598, baseType: !216, size: 16, offset: 304)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1359, file: !974, line: 600, baseType: !1368, size: 64, offset: 320)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1276, file: !974, line: 799, baseType: !1370, size: 1792, offset: 3456)
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !974, line: 610, size: 1792, elements: !1371)
!1371 = !{!1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1461, !1462}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1370, file: !974, line: 611, baseType: !417, size: 192, align: 64)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1370, file: !974, line: 618, baseType: !130, size: 64, offset: 192)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1370, file: !974, line: 619, baseType: !130, size: 64, offset: 256)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1370, file: !974, line: 620, baseType: !130, size: 64, offset: 320)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1370, file: !974, line: 621, baseType: !130, size: 64, offset: 384)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1370, file: !974, line: 622, baseType: !130, size: 64, offset: 448)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1370, file: !974, line: 629, baseType: !261, size: 64, offset: 512)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1370, file: !974, line: 630, baseType: !130, size: 64, offset: 576)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1370, file: !974, line: 631, baseType: !7, size: 32, offset: 640)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1370, file: !974, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1370, file: !974, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1370, file: !974, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1370, file: !974, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1370, file: !974, line: 662, baseType: !1386, size: 512, offset: 704)
!1386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !26, line: 118, size: 512, elements: !1387)
!1387 = !{!1388, !1396, !1397, !1402, !1457, !1458, !1459, !1460}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1386, file: !26, line: 119, baseType: !1389, size: 256)
!1389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1390, line: 9, size: 256, elements: !1391)
!1390 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1391 = !{!1392, !1393}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1389, file: !1390, line: 10, baseType: !417, size: 192, align: 64)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1389, file: !1390, line: 11, baseType: !1394, size: 64, offset: 192)
!1394 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1395, line: 29, baseType: !261)
!1395 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1386, file: !26, line: 120, baseType: !1394, size: 64, offset: 256)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1386, file: !26, line: 121, baseType: !1398, size: 64, offset: 320)
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1399 = !DISubroutineType(types: !1400)
!1400 = !{!25, !1401}
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1386, file: !26, line: 122, baseType: !1403, size: 64, offset: 384)
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !26, line: 159, size: 512, align: 512, elements: !1405)
!1405 = !{!1406, !1431, !1432, !1435, !1440, !1441, !1452, !1456}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1404, file: !26, line: 160, baseType: !1407, size: 64)
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !26, line: 215, size: 4608, align: 512, elements: !1409)
!1409 = !{!1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1408, file: !26, line: 216, baseType: !270, size: 32)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1408, file: !26, line: 217, baseType: !7, size: 32, offset: 32)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1408, file: !26, line: 218, baseType: !7, size: 32, offset: 64)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1408, file: !26, line: 219, baseType: !7, size: 32, offset: 96)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1408, file: !26, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1408, file: !26, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1408, file: !26, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1408, file: !26, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1408, file: !26, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1408, file: !26, line: 226, baseType: !7, size: 32, offset: 160)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1408, file: !26, line: 227, baseType: !216, size: 16, offset: 192)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1408, file: !26, line: 228, baseType: !216, size: 16, offset: 208)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1408, file: !26, line: 229, baseType: !7, size: 32, offset: 224)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1408, file: !26, line: 235, baseType: !1394, size: 64, offset: 256)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1408, file: !26, line: 236, baseType: !1401, size: 64, offset: 320)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1408, file: !26, line: 237, baseType: !1394, size: 64, offset: 384)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1408, file: !26, line: 238, baseType: !1401, size: 64, offset: 448)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1408, file: !26, line: 239, baseType: !1428, size: 4096, align: 512, offset: 512)
!1428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1404, size: 4096, align: 512, elements: !1429)
!1429 = !{!1430}
!1430 = !DISubrange(count: 8)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1404, file: !26, line: 161, baseType: !7, size: 32, offset: 64)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1404, file: !26, line: 162, baseType: !1433, size: 32, offset: 96)
!1433 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !129, line: 32, baseType: !1434)
!1434 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !285, line: 96, baseType: !144)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1404, file: !26, line: 163, baseType: !1436, size: 32, offset: 128)
!1436 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !618, line: 274, baseType: !1437)
!1437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !618, line: 274, size: 32, elements: !1438)
!1438 = !{!1439}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1437, file: !618, line: 274, baseType: !622, size: 32)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1404, file: !26, line: 164, baseType: !1401, size: 64, offset: 192)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1404, file: !26, line: 165, baseType: !1442, size: 128, offset: 256)
!1442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1390, line: 14, size: 128, elements: !1443)
!1443 = !{!1444}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1442, file: !1390, line: 15, baseType: !1445, size: 128)
!1445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !418, line: 26, size: 128, elements: !1446)
!1446 = !{!1447, !1451}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1445, file: !418, line: 27, baseType: !1448, size: 64)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !418, line: 12, size: 64, elements: !1449)
!1449 = !{!1450}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1448, file: !418, line: 13, baseType: !422, size: 64)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1445, file: !418, line: 28, baseType: !422, size: 64, offset: 64)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1404, file: !26, line: 166, baseType: !1453, size: 64, offset: 384)
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!1454 = !DISubroutineType(types: !1455)
!1455 = !{!1394}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1404, file: !26, line: 167, baseType: !1394, size: 64, offset: 448)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1386, file: !26, line: 123, baseType: !206, size: 8, offset: 448)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1386, file: !26, line: 124, baseType: !206, size: 8, offset: 456)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1386, file: !26, line: 125, baseType: !206, size: 8, offset: 464)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1386, file: !26, line: 126, baseType: !206, size: 8, offset: 472)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1370, file: !974, line: 671, baseType: !1386, size: 512, offset: 1216)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1370, file: !974, line: 679, baseType: !1463, size: 64, offset: 1728)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1276, file: !974, line: 800, baseType: !1465, size: 64, offset: 5248)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1467)
!1467 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !974, line: 800, flags: DIFlagFwdDecl)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1276, file: !974, line: 809, baseType: !1469, size: 64, offset: 5312)
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1470 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !974, line: 70, flags: DIFlagFwdDecl)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1276, file: !974, line: 825, baseType: !1472, size: 2048, align: 512, offset: 5632)
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !974, line: 509, size: 2048, align: 512, elements: !1473)
!1473 = !{!1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1472, file: !974, line: 511, baseType: !130, size: 64)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1472, file: !974, line: 512, baseType: !130, size: 64, offset: 64)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1472, file: !974, line: 513, baseType: !130, size: 64, offset: 128)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1472, file: !974, line: 514, baseType: !130, size: 64, offset: 192)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1472, file: !974, line: 515, baseType: !130, size: 64, offset: 256)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1472, file: !974, line: 516, baseType: !130, size: 64, offset: 320)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1472, file: !974, line: 518, baseType: !130, size: 64, offset: 384)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1472, file: !974, line: 519, baseType: !130, size: 64, offset: 448)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1472, file: !974, line: 520, baseType: !261, size: 64, offset: 512)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1472, file: !974, line: 522, baseType: !130, size: 64, offset: 576)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1472, file: !974, line: 523, baseType: !130, size: 64, offset: 640)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1472, file: !974, line: 524, baseType: !261, size: 64, offset: 704)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1472, file: !974, line: 526, baseType: !261, size: 64, offset: 768)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1472, file: !974, line: 527, baseType: !130, size: 64, offset: 832)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1472, file: !974, line: 529, baseType: !130, size: 64, offset: 896)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1472, file: !974, line: 530, baseType: !130, size: 64, offset: 960)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1472, file: !974, line: 531, baseType: !130, size: 64, offset: 1024)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1472, file: !974, line: 532, baseType: !130, size: 64, offset: 1088)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1472, file: !974, line: 533, baseType: !130, size: 64, offset: 1152)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1472, file: !974, line: 535, baseType: !130, size: 64, offset: 1216)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1472, file: !974, line: 536, baseType: !130, size: 64, offset: 1280)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1472, file: !974, line: 537, baseType: !130, size: 64, offset: 1344)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1472, file: !974, line: 538, baseType: !130, size: 64, offset: 1408)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1472, file: !974, line: 539, baseType: !130, size: 64, offset: 1472)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1472, file: !974, line: 540, baseType: !130, size: 64, offset: 1536)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1472, file: !974, line: 541, baseType: !130, size: 64, offset: 1600)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1472, file: !974, line: 542, baseType: !130, size: 64, offset: 1664)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1472, file: !974, line: 543, baseType: !130, size: 64, offset: 1728)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1276, file: !974, line: 833, baseType: !7, size: 32, offset: 7680)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1276, file: !974, line: 836, baseType: !7, size: 32, offset: 7712)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1276, file: !974, line: 837, baseType: !144, size: 32, offset: 7744)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1276, file: !974, line: 838, baseType: !1506, size: 64, offset: 7808)
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1507 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1508)
!1508 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1509, line: 19, baseType: !1510)
!1509 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1509, line: 19, size: 64, elements: !1511)
!1511 = !{!1512}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1510, file: !1509, line: 19, baseType: !1513, size: 64)
!1513 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 64, elements: !1514)
!1514 = !{!1515}
!1515 = !DISubrange(count: 1)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1276, file: !974, line: 839, baseType: !1517, size: 64, offset: 7872)
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1276, file: !974, line: 840, baseType: !1508, size: 64, offset: 7936)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1276, file: !974, line: 841, baseType: !224, size: 64, offset: 8000)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1276, file: !974, line: 843, baseType: !216, size: 16, offset: 8064)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1276, file: !974, line: 845, baseType: !216, size: 16, offset: 8080)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1276, file: !974, line: 848, baseType: !144, size: 32, offset: 8096)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1276, file: !974, line: 849, baseType: !1524, size: 32, offset: 8128)
!1524 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !974, line: 718, size: 32, elements: !1525)
!1525 = !{!1526, !1533}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1524, file: !974, line: 724, baseType: !1527, size: 32)
!1527 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1524, file: !974, line: 719, size: 32, elements: !1528)
!1528 = !{!1529, !1530, !1531, !1532}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1527, file: !974, line: 720, baseType: !206, size: 8)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1527, file: !974, line: 721, baseType: !206, size: 8, offset: 8)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1527, file: !974, line: 722, baseType: !206, size: 8, offset: 16)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1527, file: !974, line: 723, baseType: !206, size: 8, offset: 24)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1524, file: !974, line: 725, baseType: !450, size: 32)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1276, file: !974, line: 850, baseType: !277, size: 128, offset: 8192)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1276, file: !974, line: 851, baseType: !1536, size: 64, offset: 8320)
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !974, line: 60, flags: DIFlagFwdDecl)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1276, file: !974, line: 855, baseType: !101, size: 64, offset: 8384)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1276, file: !974, line: 856, baseType: !206, size: 8, offset: 8448)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1276, file: !974, line: 857, baseType: !206, size: 8, offset: 8456)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1276, file: !974, line: 858, baseType: !144, size: 32, offset: 8480)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1276, file: !974, line: 859, baseType: !277, size: 128, offset: 8512)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1276, file: !974, line: 860, baseType: !144, size: 32, offset: 8640)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1276, file: !974, line: 861, baseType: !277, size: 128, offset: 8704)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1276, file: !974, line: 873, baseType: !1546, size: 256, offset: 8832)
!1546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !974, line: 376, size: 256, elements: !1547)
!1547 = !{!1548, !1549, !1550, !1551}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1546, file: !974, line: 381, baseType: !101, size: 64)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1546, file: !974, line: 384, baseType: !134, size: 64, offset: 64)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1546, file: !974, line: 389, baseType: !134, size: 64, offset: 128)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1546, file: !974, line: 392, baseType: !134, size: 64, offset: 192)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1276, file: !974, line: 875, baseType: !277, size: 128, offset: 9088)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1276, file: !974, line: 877, baseType: !1554, size: 320, offset: 9216)
!1554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1555, line: 86, size: 320, elements: !1556)
!1555 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1556 = !{!1557, !1558, !1559}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1554, file: !1555, line: 87, baseType: !144, size: 32)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1554, file: !1555, line: 88, baseType: !277, size: 128, offset: 64)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1554, file: !1555, line: 89, baseType: !277, size: 128, offset: 192)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1276, file: !974, line: 878, baseType: !417, size: 192, align: 64, offset: 9536)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1276, file: !974, line: 881, baseType: !160, size: 64, offset: 9728)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1276, file: !974, line: 882, baseType: !160, size: 64, offset: 9792)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1276, file: !974, line: 884, baseType: !144, size: 32, offset: 9856)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1276, file: !974, line: 885, baseType: !144, size: 32, offset: 9888)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1276, file: !974, line: 886, baseType: !144, size: 32, offset: 9920)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1276, file: !974, line: 888, baseType: !144, size: 32, offset: 9952)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1276, file: !974, line: 890, baseType: !101, size: 64, offset: 9984)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1276, file: !974, line: 893, baseType: !7, size: 32, offset: 10048)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1276, file: !974, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1276, file: !974, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1276, file: !974, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1276, file: !974, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1276, file: !974, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1276, file: !974, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1276, file: !974, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1276, file: !974, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1276, file: !974, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1276, file: !974, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1276, file: !974, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1276, file: !974, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1276, file: !974, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1276, file: !974, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1276, file: !974, line: 969, baseType: !101, size: 64, offset: 10176)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1276, file: !974, line: 971, baseType: !1585, size: 448, offset: 10240)
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !31, line: 25, size: 448, elements: !1586)
!1586 = !{!1587, !1588, !1593}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !1585, file: !31, line: 26, baseType: !101, size: 64)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1585, file: !31, line: 27, baseType: !1589, size: 64, offset: 64)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DISubroutineType(types: !1591)
!1591 = !{!127, !1592}
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1593 = !DIDerivedType(tag: DW_TAG_member, scope: !1585, file: !31, line: 28, baseType: !1594, size: 320, offset: 128)
!1594 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1585, file: !31, line: 28, size: 320, elements: !1595)
!1595 = !{!1596, !1606, !1631}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1594, file: !31, line: 37, baseType: !1597, size: 320)
!1597 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1594, file: !31, line: 30, size: 320, elements: !1598)
!1598 = !{!1599, !1601, !1602, !1603, !1604, !1605}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1597, file: !31, line: 31, baseType: !1600, size: 64)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1597, file: !31, line: 32, baseType: !450, size: 32, offset: 64)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1597, file: !31, line: 33, baseType: !450, size: 32, offset: 96)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1597, file: !31, line: 34, baseType: !450, size: 32, offset: 128)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1597, file: !31, line: 35, baseType: !130, size: 64, offset: 192)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1597, file: !31, line: 36, baseType: !1600, size: 64, offset: 256)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1594, file: !31, line: 47, baseType: !1607, size: 192)
!1607 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1594, file: !31, line: 39, size: 192, elements: !1608)
!1608 = !{!1609, !1610, !1611, !1630}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1607, file: !31, line: 40, baseType: !1433, size: 32)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1607, file: !31, line: 41, baseType: !30, size: 32, offset: 32)
!1611 = !DIDerivedType(tag: DW_TAG_member, scope: !1607, file: !31, line: 42, baseType: !1612, size: 64, offset: 64)
!1612 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1607, file: !31, line: 42, size: 64, elements: !1613)
!1613 = !{!1614, !1622}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1612, file: !31, line: 43, baseType: !1615, size: 64)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1617, line: 7, size: 128, elements: !1618)
!1617 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!1618 = !{!1619, !1621}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1616, file: !1617, line: 8, baseType: !1620, size: 64)
!1620 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !285, line: 93, baseType: !263)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1616, file: !1617, line: 9, baseType: !263, size: 64, offset: 64)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1612, file: !31, line: 44, baseType: !1623, size: 64)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1625, line: 7, size: 64, elements: !1626)
!1625 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!1626 = !{!1627, !1629}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1624, file: !1625, line: 8, baseType: !1628, size: 32)
!1628 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1625, line: 5, baseType: !410)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1624, file: !1625, line: 9, baseType: !410, size: 32, offset: 32)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1607, file: !31, line: 46, baseType: !130, size: 64, offset: 128)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1594, file: !31, line: 55, baseType: !1632, size: 256)
!1632 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1594, file: !31, line: 49, size: 256, elements: !1633)
!1633 = !{!1634, !1637, !1638, !1639, !1640}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1632, file: !31, line: 50, baseType: !1635, size: 64)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !31, line: 14, flags: DIFlagFwdDecl)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1632, file: !31, line: 51, baseType: !144, size: 32, offset: 64)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1632, file: !31, line: 52, baseType: !144, size: 32, offset: 96)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1632, file: !31, line: 53, baseType: !101, size: 64, offset: 128)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1632, file: !31, line: 54, baseType: !101, size: 64, offset: 192)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1276, file: !974, line: 973, baseType: !1642, size: 32, offset: 10688)
!1642 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !129, line: 27, baseType: !1643)
!1643 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !285, line: 28, baseType: !144)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1276, file: !974, line: 974, baseType: !1642, size: 32, offset: 10720)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1276, file: !974, line: 978, baseType: !101, size: 64, offset: 10752)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1276, file: !974, line: 987, baseType: !1275, size: 64, offset: 10816)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1276, file: !974, line: 990, baseType: !1275, size: 64, offset: 10880)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1276, file: !974, line: 995, baseType: !277, size: 128, offset: 10944)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1276, file: !974, line: 996, baseType: !277, size: 128, offset: 11072)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1276, file: !974, line: 997, baseType: !1275, size: 64, offset: 11200)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1276, file: !974, line: 1005, baseType: !277, size: 128, offset: 11264)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1276, file: !974, line: 1006, baseType: !277, size: 128, offset: 11392)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1276, file: !974, line: 1009, baseType: !314, size: 64, offset: 11520)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1276, file: !974, line: 1010, baseType: !1655, size: 512, offset: 11584)
!1655 = !DICompositeType(tag: DW_TAG_array_type, baseType: !331, size: 512, elements: !336)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1276, file: !974, line: 1011, baseType: !277, size: 128, offset: 12096)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1276, file: !974, line: 1012, baseType: !277, size: 128, offset: 12224)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1276, file: !974, line: 1014, baseType: !1659, size: 64, offset: 12352)
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1660, size: 64)
!1660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1661, line: 26, size: 256, elements: !1662)
!1661 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1662 = !{!1663, !1664}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1660, file: !1661, line: 27, baseType: !7, size: 32)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1660, file: !1661, line: 28, baseType: !1665, size: 192, offset: 64)
!1665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1666, line: 43, size: 192, elements: !1667)
!1666 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1667 = !{!1668, !1669}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1665, file: !1666, line: 44, baseType: !270, size: 32)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1665, file: !1666, line: 45, baseType: !277, size: 128, offset: 64)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1276, file: !974, line: 1017, baseType: !966, size: 64, offset: 12416)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1276, file: !974, line: 1020, baseType: !966, size: 64, offset: 12480)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1276, file: !974, line: 1023, baseType: !224, size: 64, offset: 12544)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1276, file: !974, line: 1025, baseType: !130, size: 64, offset: 12608)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1276, file: !974, line: 1026, baseType: !130, size: 64, offset: 12672)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1276, file: !974, line: 1031, baseType: !130, size: 64, offset: 12736)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1276, file: !974, line: 1032, baseType: !1677, size: 192, offset: 12800)
!1677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !974, line: 324, size: 192, elements: !1678)
!1678 = !{!1679, !1680, !1681}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1677, file: !974, line: 326, baseType: !130, size: 64)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1677, file: !974, line: 327, baseType: !130, size: 64, offset: 64)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1677, file: !974, line: 328, baseType: !270, size: 32, offset: 128)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1276, file: !974, line: 1041, baseType: !101, size: 64, offset: 12992)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1276, file: !974, line: 1042, baseType: !101, size: 64, offset: 13056)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1276, file: !974, line: 1045, baseType: !130, size: 64, offset: 13120)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1276, file: !974, line: 1048, baseType: !130, size: 64, offset: 13184)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1276, file: !974, line: 1051, baseType: !101, size: 64, offset: 13248)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1276, file: !974, line: 1052, baseType: !101, size: 64, offset: 13312)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1276, file: !974, line: 1055, baseType: !1689, size: 640, offset: 13376)
!1689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1690, line: 132, size: 640, elements: !1691)
!1690 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!1691 = !{!1692, !1698, !1699}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1689, file: !1690, line: 133, baseType: !1693, size: 576)
!1693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1694, size: 576, elements: !310)
!1694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1690, line: 117, size: 192, elements: !1695)
!1695 = !{!1696, !1697}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1694, file: !1690, line: 118, baseType: !130, size: 64)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1694, file: !1690, line: 119, baseType: !1442, size: 128, offset: 64)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1689, file: !1690, line: 134, baseType: !7, size: 32, offset: 576)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1689, file: !1690, line: 135, baseType: !7, size: 32, offset: 608)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1276, file: !974, line: 1058, baseType: !1701, size: 448, offset: 14016)
!1701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1690, line: 144, size: 448, elements: !1702)
!1702 = !{!1703, !1704, !1705}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1701, file: !1690, line: 145, baseType: !242, size: 128, align: 64)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1701, file: !1690, line: 146, baseType: !265, size: 256, offset: 128)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1701, file: !1690, line: 147, baseType: !7, size: 32, offset: 384)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1276, file: !974, line: 1064, baseType: !369, size: 64, offset: 14464)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1276, file: !974, line: 1067, baseType: !369, size: 64, offset: 14528)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1276, file: !974, line: 1070, baseType: !369, size: 64, offset: 14592)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1276, file: !974, line: 1074, baseType: !402, size: 64, offset: 14656)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1276, file: !974, line: 1084, baseType: !1711, size: 128, offset: 14720)
!1711 = !DICompositeType(tag: DW_TAG_array_type, baseType: !473, size: 128, elements: !1712)
!1712 = !{!1713}
!1713 = !DISubrange(count: 16)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1276, file: !974, line: 1086, baseType: !1715, size: 64, offset: 14848)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !974, line: 55, flags: DIFlagFwdDecl)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1276, file: !974, line: 1089, baseType: !1718, size: 64, offset: 14912)
!1718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !1719, line: 12, size: 64, elements: !1720)
!1719 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!1720 = !{!1721}
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !1718, file: !1719, line: 13, baseType: !1722, size: 64)
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1723 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !1719, line: 8, flags: DIFlagFwdDecl)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1276, file: !974, line: 1090, baseType: !1725, size: 128, offset: 14976)
!1725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !1726, line: 13, size: 128, elements: !1727)
!1726 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!1727 = !{!1728}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !1725, file: !1726, line: 14, baseType: !277, size: 128)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1276, file: !974, line: 1097, baseType: !1730, size: 64, offset: 15104)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !974, line: 50, flags: DIFlagFwdDecl)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1276, file: !974, line: 1100, baseType: !1733, size: 64, offset: 15168)
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1734 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !974, line: 1100, flags: DIFlagFwdDecl)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1276, file: !974, line: 1103, baseType: !1736, size: 64, offset: 15232)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !974, line: 53, flags: DIFlagFwdDecl)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1276, file: !974, line: 1107, baseType: !1739, size: 64, offset: 15296)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1740 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !974, line: 56, flags: DIFlagFwdDecl)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1276, file: !974, line: 1110, baseType: !1742, size: 64, offset: 15360)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1744, line: 93, size: 8768, elements: !1745)
!1744 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!1745 = !{!1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1795, !1804, !1805, !1807, !1808, !1809, !1812, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1850, !1851, !1858, !1868, !1871, !1872, !1875, !1876, !1877, !1878, !1879, !1880}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1743, file: !1744, line: 94, baseType: !318, size: 32)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1743, file: !1744, line: 95, baseType: !170, size: 32, offset: 32)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1743, file: !1744, line: 96, baseType: !144, size: 32, offset: 64)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !1743, file: !1744, line: 97, baseType: !144, size: 32, offset: 96)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1743, file: !1744, line: 98, baseType: !277, size: 128, offset: 128)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1743, file: !1744, line: 100, baseType: !340, size: 192, offset: 256)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1743, file: !1744, line: 103, baseType: !1275, size: 64, offset: 448)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1743, file: !1744, line: 106, baseType: !1754, size: 192, offset: 512)
!1754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !578, line: 32, size: 192, elements: !1755)
!1755 = !{!1756, !1757}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1754, file: !578, line: 33, baseType: !277, size: 128)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1754, file: !578, line: 34, baseType: !1758, size: 64, offset: 128)
!1758 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1759, line: 25, baseType: !1760)
!1759 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!1760 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1759, line: 23, size: 64, elements: !1761)
!1761 = !{!1762}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1760, file: !1759, line: 24, baseType: !1513, size: 64)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1743, file: !1744, line: 109, baseType: !327, size: 64, offset: 704)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1743, file: !1744, line: 112, baseType: !144, size: 32, offset: 768)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1743, file: !1744, line: 114, baseType: !144, size: 32, offset: 800)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !1743, file: !1744, line: 115, baseType: !1275, size: 64, offset: 832)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1743, file: !1744, line: 118, baseType: !144, size: 32, offset: 896)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1743, file: !1744, line: 119, baseType: !7, size: 32, offset: 928)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1743, file: !1744, line: 121, baseType: !1770, size: 64, offset: 960)
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!1771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !1744, line: 80, size: 448, elements: !1772)
!1772 = !{!1773, !1774, !1780}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1771, file: !1744, line: 81, baseType: !170, size: 32)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1771, file: !1744, line: 82, baseType: !1775, size: 128, offset: 64)
!1775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !1744, line: 75, size: 128, elements: !1776)
!1776 = !{!1777, !1778}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1775, file: !1744, line: 76, baseType: !1275, size: 64)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1775, file: !1744, line: 77, baseType: !1779, size: 64, offset: 64)
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1771, file: !1744, line: 83, baseType: !1660, size: 256, offset: 192)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1743, file: !1744, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1743, file: !1744, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !1743, file: !1744, line: 138, baseType: !7, size: 32, offset: 1056)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1743, file: !1744, line: 139, baseType: !277, size: 128, offset: 1088)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1743, file: !1744, line: 142, baseType: !1386, size: 512, offset: 1216)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1743, file: !1744, line: 143, baseType: !1394, size: 64, offset: 1728)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1743, file: !1744, line: 150, baseType: !1788, size: 256, offset: 1792)
!1788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1789, size: 256, elements: !1793)
!1789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1744, line: 38, size: 128, elements: !1790)
!1790 = !{!1791, !1792}
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1789, file: !1744, line: 39, baseType: !130, size: 64)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1789, file: !1744, line: 40, baseType: !130, size: 64, offset: 64)
!1793 = !{!1794}
!1794 = !DISubrange(count: 2)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1743, file: !1744, line: 156, baseType: !1796, size: 192, offset: 2048)
!1796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1744, line: 66, size: 192, elements: !1797)
!1797 = !{!1798}
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1796, file: !1744, line: 67, baseType: !1799, size: 192)
!1799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1744, line: 47, size: 192, elements: !1800)
!1800 = !{!1801, !1802, !1803}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1799, file: !1744, line: 48, baseType: !257, size: 64)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1799, file: !1744, line: 49, baseType: !257, size: 64, offset: 64)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1799, file: !1744, line: 50, baseType: !257, size: 64, offset: 128)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1743, file: !1744, line: 160, baseType: !1689, size: 640, offset: 2240)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1743, file: !1744, line: 163, baseType: !1806, size: 256, offset: 2880)
!1806 = !DICompositeType(tag: DW_TAG_array_type, baseType: !314, size: 256, elements: !336)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1743, file: !1744, line: 169, baseType: !314, size: 64, offset: 3136)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1743, file: !1744, line: 172, baseType: !144, size: 32, offset: 3200)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1743, file: !1744, line: 174, baseType: !1810, size: 64, offset: 3264)
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1811 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1744, line: 174, flags: DIFlagFwdDecl)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1743, file: !1744, line: 185, baseType: !1813, size: 64, offset: 3328)
!1813 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !618, line: 860, baseType: !1814)
!1814 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !618, line: 853, size: 64, elements: !1815)
!1815 = !{!1816, !1817}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1814, file: !618, line: 858, baseType: !617, size: 32)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1814, file: !618, line: 859, baseType: !182, size: 32, offset: 32)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1743, file: !1744, line: 186, baseType: !130, size: 64, offset: 3392)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1743, file: !1744, line: 186, baseType: !130, size: 64, offset: 3456)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1743, file: !1744, line: 186, baseType: !130, size: 64, offset: 3520)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1743, file: !1744, line: 186, baseType: !130, size: 64, offset: 3584)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1743, file: !1744, line: 187, baseType: !130, size: 64, offset: 3648)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1743, file: !1744, line: 188, baseType: !130, size: 64, offset: 3712)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1743, file: !1744, line: 189, baseType: !1677, size: 192, offset: 3776)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1743, file: !1744, line: 190, baseType: !101, size: 64, offset: 3968)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1743, file: !1744, line: 190, baseType: !101, size: 64, offset: 4032)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1743, file: !1744, line: 190, baseType: !101, size: 64, offset: 4096)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1743, file: !1744, line: 190, baseType: !101, size: 64, offset: 4160)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1743, file: !1744, line: 191, baseType: !101, size: 64, offset: 4224)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1743, file: !1744, line: 191, baseType: !101, size: 64, offset: 4288)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1743, file: !1744, line: 191, baseType: !101, size: 64, offset: 4352)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1743, file: !1744, line: 191, baseType: !101, size: 64, offset: 4416)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1743, file: !1744, line: 192, baseType: !101, size: 64, offset: 4480)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1743, file: !1744, line: 192, baseType: !101, size: 64, offset: 4544)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1743, file: !1744, line: 192, baseType: !101, size: 64, offset: 4608)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1743, file: !1744, line: 192, baseType: !101, size: 64, offset: 4672)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1743, file: !1744, line: 193, baseType: !101, size: 64, offset: 4736)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1743, file: !1744, line: 193, baseType: !101, size: 64, offset: 4800)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1743, file: !1744, line: 194, baseType: !1840, size: 448, offset: 4864)
!1840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1841, line: 12, size: 448, elements: !1842)
!1841 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!1842 = !{!1843, !1844, !1845, !1846, !1847, !1848, !1849}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !1840, file: !1841, line: 15, baseType: !130, size: 64)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !1840, file: !1841, line: 17, baseType: !130, size: 64, offset: 64)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !1840, file: !1841, line: 19, baseType: !130, size: 64, offset: 128)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !1840, file: !1841, line: 21, baseType: !130, size: 64, offset: 192)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !1840, file: !1841, line: 29, baseType: !130, size: 64, offset: 256)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !1840, file: !1841, line: 35, baseType: !130, size: 64, offset: 320)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !1840, file: !1841, line: 44, baseType: !130, size: 64, offset: 384)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1743, file: !1744, line: 202, baseType: !134, size: 64, offset: 5312)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1743, file: !1744, line: 213, baseType: !1852, size: 2048, offset: 5376)
!1852 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1853, size: 2048, elements: !1712)
!1853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1854, line: 43, size: 128, elements: !1855)
!1854 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!1855 = !{!1856, !1857}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1853, file: !1854, line: 44, baseType: !809, size: 64)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1853, file: !1854, line: 45, baseType: !809, size: 64, offset: 64)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !1743, file: !1744, line: 216, baseType: !1859, size: 448, offset: 7424)
!1859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !1744, line: 30, size: 448, elements: !1860)
!1860 = !{!1861, !1862, !1863, !1864, !1865, !1866, !1867}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !1859, file: !1744, line: 31, baseType: !144, size: 32)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !1859, file: !1744, line: 32, baseType: !127, size: 64, offset: 64)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !1859, file: !1744, line: 33, baseType: !101, size: 64, offset: 128)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !1859, file: !1744, line: 34, baseType: !130, size: 64, offset: 192)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !1859, file: !1744, line: 34, baseType: !130, size: 64, offset: 256)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !1859, file: !1744, line: 35, baseType: !101, size: 64, offset: 320)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !1859, file: !1744, line: 35, baseType: !101, size: 64, offset: 384)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1743, file: !1744, line: 219, baseType: !1869, size: 64, offset: 7872)
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1870 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !1744, line: 219, flags: DIFlagFwdDecl)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !1743, file: !1744, line: 222, baseType: !7, size: 32, offset: 7936)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !1743, file: !1744, line: 223, baseType: !1873, size: 64, offset: 8000)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !1744, line: 223, flags: DIFlagFwdDecl)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1743, file: !1744, line: 230, baseType: !487, size: 8, offset: 8064)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1743, file: !1744, line: 231, baseType: !455, size: 16, offset: 8080)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1743, file: !1744, line: 232, baseType: !455, size: 16, offset: 8096)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1743, file: !1744, line: 234, baseType: !160, size: 64, offset: 8128)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1743, file: !1744, line: 237, baseType: !265, size: 256, offset: 8192)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !1743, file: !1744, line: 243, baseType: !425, size: 320, offset: 8448)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1276, file: !974, line: 1111, baseType: !1882, size: 64, offset: 15424)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1744, line: 20, size: 16640, elements: !1884)
!1884 = !{!1885, !1886, !1887, !1888}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1883, file: !1744, line: 21, baseType: !182, size: 32)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1883, file: !1744, line: 22, baseType: !318, size: 32, offset: 32)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1883, file: !1744, line: 23, baseType: !340, size: 192, offset: 64)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1883, file: !1744, line: 24, baseType: !1889, size: 16384, offset: 256)
!1889 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1890, size: 16384, elements: !1910)
!1890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !578, line: 51, size: 256, elements: !1891)
!1891 = !{!1892}
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1890, file: !578, line: 52, baseType: !1893, size: 256)
!1893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !578, line: 37, size: 256, elements: !1894)
!1894 = !{!1895, !1902, !1903, !1909}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1893, file: !578, line: 39, baseType: !1896, size: 64)
!1896 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1897, line: 83, baseType: !1898)
!1897 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1897, line: 82, baseType: !1900)
!1900 = !DISubroutineType(types: !1901)
!1901 = !{null, !144}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1893, file: !578, line: 40, baseType: !101, size: 64, offset: 64)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1893, file: !578, line: 46, baseType: !1904, size: 64, offset: 128)
!1904 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1897, line: 86, baseType: !1905)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1897, line: 85, baseType: !1907)
!1907 = !DISubroutineType(types: !1908)
!1908 = !{null}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1893, file: !578, line: 48, baseType: !1758, size: 64, offset: 192)
!1910 = !{!1911}
!1911 = !DISubrange(count: 64)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1276, file: !974, line: 1112, baseType: !1758, size: 64, offset: 15488)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1276, file: !974, line: 1113, baseType: !1758, size: 64, offset: 15552)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1276, file: !974, line: 1115, baseType: !1758, size: 64, offset: 15616)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1276, file: !974, line: 1116, baseType: !1754, size: 192, offset: 15680)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1276, file: !974, line: 1117, baseType: !101, size: 64, offset: 15872)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1276, file: !974, line: 1118, baseType: !807, size: 64, offset: 15936)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1276, file: !974, line: 1119, baseType: !7, size: 32, offset: 16000)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1276, file: !974, line: 1121, baseType: !245, size: 64, offset: 16064)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1276, file: !974, line: 1125, baseType: !1921, size: 64, offset: 16128)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !974, line: 43, flags: DIFlagFwdDecl)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1276, file: !974, line: 1127, baseType: !359, size: 32, offset: 16192)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1276, file: !974, line: 1128, baseType: !7, size: 32, offset: 16224)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1276, file: !974, line: 1130, baseType: !1926, size: 128, offset: 16256)
!1926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1927, line: 37, size: 128, elements: !1928)
!1927 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!1928 = !{!1929, !1930, !1931}
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1926, file: !1927, line: 38, baseType: !144, size: 32)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1926, file: !1927, line: 39, baseType: !170, size: 32, offset: 32)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1926, file: !1927, line: 40, baseType: !1932, size: 64, offset: 64)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1927, line: 24, flags: DIFlagFwdDecl)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1276, file: !974, line: 1131, baseType: !1935, size: 256, offset: 16384)
!1935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !1936, line: 12, size: 256, elements: !1937)
!1936 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!1937 = !{!1938, !1939, !1940, !1941}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !1935, file: !1936, line: 13, baseType: !500, size: 64)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1935, file: !1936, line: 14, baseType: !101, size: 64, offset: 64)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1935, file: !1936, line: 15, baseType: !101, size: 64, offset: 128)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !1935, file: !1936, line: 16, baseType: !487, size: 8, offset: 192)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1276, file: !974, line: 1134, baseType: !130, size: 64, offset: 16640)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1276, file: !974, line: 1135, baseType: !130, size: 64, offset: 16704)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1276, file: !974, line: 1138, baseType: !182, size: 32, offset: 16768)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1276, file: !974, line: 1141, baseType: !270, size: 32, offset: 16800)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1276, file: !974, line: 1143, baseType: !1947, size: 64, offset: 16832)
!1947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !974, line: 735, size: 64, elements: !1948)
!1948 = !{!1949}
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1947, file: !974, line: 736, baseType: !1950, size: 64)
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1276, file: !974, line: 1147, baseType: !1445, size: 128, offset: 16896)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1276, file: !974, line: 1149, baseType: !1275, size: 64, offset: 17024)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1276, file: !974, line: 1151, baseType: !1954, size: 64, offset: 17088)
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1955, size: 64)
!1955 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !974, line: 1151, flags: DIFlagFwdDecl)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1276, file: !974, line: 1188, baseType: !224, size: 64, offset: 17152)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1276, file: !974, line: 1191, baseType: !1958, size: 64, offset: 17216)
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1959, size: 64)
!1959 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !974, line: 44, flags: DIFlagFwdDecl)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1276, file: !974, line: 1194, baseType: !1961, size: 64, offset: 17280)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !974, line: 45, flags: DIFlagFwdDecl)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1276, file: !974, line: 1197, baseType: !1964, size: 64, offset: 17344)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !974, line: 61, flags: DIFlagFwdDecl)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1276, file: !974, line: 1199, baseType: !1967, size: 64, offset: 17408)
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1969, line: 99, size: 128, elements: !1970)
!1969 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!1970 = !{!1971, !1972, !1973}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1968, file: !1969, line: 100, baseType: !255, size: 64)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1968, file: !1969, line: 101, baseType: !170, size: 32, offset: 64)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1968, file: !1969, line: 103, baseType: !216, size: 16, offset: 96)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1276, file: !974, line: 1202, baseType: !1975, size: 64, offset: 17472)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !974, line: 48, flags: DIFlagFwdDecl)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1276, file: !974, line: 1205, baseType: !101, size: 64, offset: 17536)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1276, file: !974, line: 1206, baseType: !1979, size: 64, offset: 17600)
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1980 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !578, line: 14, baseType: !1981)
!1981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !578, line: 12, size: 384, elements: !1982)
!1982 = !{!1983}
!1983 = !DIDerivedType(tag: DW_TAG_member, scope: !1981, file: !578, line: 13, baseType: !1984, size: 384)
!1984 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1981, file: !578, line: 13, size: 384, elements: !1985)
!1985 = !{!1986, !1987, !1988, !1989}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1984, file: !578, line: 13, baseType: !144, size: 32)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1984, file: !578, line: 13, baseType: !144, size: 32, offset: 32)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1984, file: !578, line: 13, baseType: !144, size: 32, offset: 64)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1984, file: !578, line: 13, baseType: !1990, size: 256, offset: 128)
!1990 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1991, line: 37, size: 256, elements: !1992)
!1991 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!1992 = !{!1993, !1998, !2011, !2017, !2026, !2053, !2058}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1990, file: !1991, line: 42, baseType: !1994, size: 64)
!1994 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1990, file: !1991, line: 39, size: 64, elements: !1995)
!1995 = !{!1996, !1997}
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1994, file: !1991, line: 40, baseType: !1643, size: 32)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1994, file: !1991, line: 41, baseType: !365, size: 32, offset: 32)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1990, file: !1991, line: 50, baseType: !1999, size: 192)
!1999 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1990, file: !1991, line: 45, size: 192, elements: !2000)
!2000 = !{!2001, !2003, !2004, !2010}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1999, file: !1991, line: 46, baseType: !2002, size: 32)
!2002 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !285, line: 95, baseType: !144)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1999, file: !1991, line: 47, baseType: !144, size: 32, offset: 32)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1999, file: !1991, line: 48, baseType: !2005, size: 64, offset: 64)
!2005 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1991, line: 11, baseType: !2006)
!2006 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1991, line: 8, size: 64, elements: !2007)
!2007 = !{!2008, !2009}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2006, file: !1991, line: 9, baseType: !144, size: 32)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2006, file: !1991, line: 10, baseType: !224, size: 64)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1999, file: !1991, line: 49, baseType: !144, size: 32, offset: 128)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1990, file: !1991, line: 57, baseType: !2012, size: 128)
!2012 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1990, file: !1991, line: 53, size: 128, elements: !2013)
!2013 = !{!2014, !2015, !2016}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2012, file: !1991, line: 54, baseType: !1643, size: 32)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2012, file: !1991, line: 55, baseType: !365, size: 32, offset: 32)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2012, file: !1991, line: 56, baseType: !2005, size: 64, offset: 64)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1990, file: !1991, line: 66, baseType: !2018, size: 256)
!2018 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1990, file: !1991, line: 60, size: 256, elements: !2019)
!2019 = !{!2020, !2021, !2022, !2023, !2025}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2018, file: !1991, line: 61, baseType: !1643, size: 32)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2018, file: !1991, line: 62, baseType: !365, size: 32, offset: 32)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2018, file: !1991, line: 63, baseType: !144, size: 32, offset: 64)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2018, file: !1991, line: 64, baseType: !2024, size: 64, offset: 128)
!2024 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !285, line: 94, baseType: !806)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2018, file: !1991, line: 65, baseType: !2024, size: 64, offset: 192)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1990, file: !1991, line: 105, baseType: !2027, size: 256)
!2027 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1990, file: !1991, line: 69, size: 256, elements: !2028)
!2028 = !{!2029, !2030}
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2027, file: !1991, line: 70, baseType: !224, size: 64)
!2030 = !DIDerivedType(tag: DW_TAG_member, scope: !2027, file: !1991, line: 79, baseType: !2031, size: 192, offset: 64)
!2031 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2027, file: !1991, line: 79, size: 192, elements: !2032)
!2032 = !{!2033, !2034, !2035, !2042, !2047}
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2031, file: !1991, line: 81, baseType: !144, size: 32)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2031, file: !1991, line: 86, baseType: !455, size: 16)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2031, file: !1991, line: 92, baseType: !2036, size: 192)
!2036 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2031, file: !1991, line: 88, size: 192, elements: !2037)
!2037 = !{!2038, !2040, !2041}
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2036, file: !1991, line: 89, baseType: !2039, size: 64)
!2039 = !DICompositeType(tag: DW_TAG_array_type, baseType: !473, size: 64, elements: !1429)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2036, file: !1991, line: 90, baseType: !224, size: 64, offset: 64)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2036, file: !1991, line: 91, baseType: !224, size: 64, offset: 128)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2031, file: !1991, line: 97, baseType: !2043, size: 96)
!2043 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2031, file: !1991, line: 94, size: 96, elements: !2044)
!2044 = !{!2045, !2046}
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2043, file: !1991, line: 95, baseType: !2039, size: 64)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2043, file: !1991, line: 96, baseType: !451, size: 32, offset: 64)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2031, file: !1991, line: 103, baseType: !2048, size: 128)
!2048 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2031, file: !1991, line: 99, size: 128, elements: !2049)
!2049 = !{!2050, !2051, !2052}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2048, file: !1991, line: 100, baseType: !101, size: 64)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2048, file: !1991, line: 101, baseType: !451, size: 32, offset: 64)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2048, file: !1991, line: 102, baseType: !451, size: 32, offset: 96)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1990, file: !1991, line: 111, baseType: !2054, size: 128)
!2054 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1990, file: !1991, line: 108, size: 128, elements: !2055)
!2055 = !{!2056, !2057}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2054, file: !1991, line: 109, baseType: !127, size: 64)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2054, file: !1991, line: 110, baseType: !144, size: 32, offset: 64)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1990, file: !1991, line: 118, baseType: !2059, size: 128)
!2059 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1990, file: !1991, line: 114, size: 128, elements: !2060)
!2060 = !{!2061, !2062, !2063}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2059, file: !1991, line: 115, baseType: !224, size: 64)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2059, file: !1991, line: 116, baseType: !144, size: 32, offset: 64)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2059, file: !1991, line: 117, baseType: !7, size: 32, offset: 96)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1276, file: !974, line: 1208, baseType: !1840, size: 448, offset: 17664)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1276, file: !974, line: 1215, baseType: !130, size: 64, offset: 18112)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1276, file: !974, line: 1217, baseType: !130, size: 64, offset: 18176)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1276, file: !974, line: 1219, baseType: !130, size: 64, offset: 18240)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1276, file: !974, line: 1223, baseType: !2069, size: 64, offset: 18304)
!2069 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2070, line: 99, baseType: !2071)
!2070 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2071 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2070, line: 99, size: 64, elements: !2072)
!2072 = !{!2073}
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2071, file: !2070, line: 99, baseType: !1513, size: 64)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1276, file: !974, line: 1225, baseType: !617, size: 32, offset: 18368)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1276, file: !974, line: 1226, baseType: !144, size: 32, offset: 18400)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1276, file: !974, line: 1227, baseType: !144, size: 32, offset: 18432)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1276, file: !974, line: 1231, baseType: !2078, size: 64, offset: 18496)
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2079 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !974, line: 1231, flags: DIFlagFwdDecl)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1276, file: !974, line: 1233, baseType: !277, size: 128, offset: 18560)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1276, file: !974, line: 1240, baseType: !2082, size: 64, offset: 18688)
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!2083 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !974, line: 62, flags: DIFlagFwdDecl)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1276, file: !974, line: 1242, baseType: !2085, size: 64, offset: 18752)
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2086, size: 64)
!2086 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !974, line: 1242, flags: DIFlagFwdDecl)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1276, file: !974, line: 1244, baseType: !277, size: 128, offset: 18816)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1276, file: !974, line: 1245, baseType: !2089, size: 64, offset: 18944)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !974, line: 51, flags: DIFlagFwdDecl)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1276, file: !974, line: 1246, baseType: !265, size: 256, offset: 19008)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1276, file: !974, line: 1247, baseType: !7, size: 32, offset: 19264)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1276, file: !974, line: 1250, baseType: !2094, size: 64, offset: 19328)
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!2095 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !974, line: 57, flags: DIFlagFwdDecl)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1276, file: !974, line: 1251, baseType: !265, size: 256, offset: 19392)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1276, file: !974, line: 1252, baseType: !277, size: 128, offset: 19648)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1276, file: !974, line: 1259, baseType: !2099, size: 64, offset: 19776)
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !52, line: 717, flags: DIFlagFwdDecl)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1276, file: !974, line: 1260, baseType: !455, size: 16, offset: 19840)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1276, file: !974, line: 1261, baseType: !455, size: 16, offset: 19856)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1276, file: !974, line: 1314, baseType: !2104, size: 64, offset: 19904)
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2105, size: 64)
!2105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2106, line: 62, size: 256, align: 256, elements: !2107)
!2106 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2107 = !{!2108, !2109, !2110, !2111, !2112, !2113, !2114}
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2105, file: !2106, line: 75, baseType: !451, size: 32)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2105, file: !2106, line: 90, baseType: !451, size: 32, offset: 32)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2105, file: !2106, line: 112, baseType: !132, size: 64, offset: 64)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2105, file: !2106, line: 132, baseType: !451, size: 32, offset: 128)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2105, file: !2106, line: 140, baseType: !451, size: 32, offset: 160)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2105, file: !2106, line: 149, baseType: !451, size: 32, offset: 192)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2105, file: !2106, line: 154, baseType: !2115, offset: 224)
!2115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !473, elements: !355)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1276, file: !974, line: 1315, baseType: !450, size: 32, offset: 19968)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1276, file: !974, line: 1316, baseType: !450, size: 32, offset: 20000)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1276, file: !974, line: 1321, baseType: !101, size: 64, offset: 20032)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1276, file: !974, line: 1325, baseType: !144, size: 32, offset: 20096)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1276, file: !974, line: 1326, baseType: !144, size: 32, offset: 20128)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1276, file: !974, line: 1327, baseType: !144, size: 32, offset: 20160)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1276, file: !974, line: 1328, baseType: !144, size: 32, offset: 20192)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1276, file: !974, line: 1329, baseType: !242, size: 128, align: 64, offset: 20224)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1276, file: !974, line: 1332, baseType: !2125, size: 128, offset: 20352)
!2125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2126, line: 51, size: 128, elements: !2127)
!2126 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2127 = !{!2128, !2133, !2134}
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2125, file: !2126, line: 60, baseType: !2129, size: 64)
!2129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2130, line: 7, size: 64, elements: !2131)
!2130 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2131 = !{!2132}
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2129, file: !2130, line: 12, baseType: !1510, size: 64)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2125, file: !2126, line: 63, baseType: !487, size: 8, offset: 64)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2125, file: !2126, line: 70, baseType: !487, size: 8, offset: 72)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1276, file: !974, line: 1335, baseType: !2136, size: 64, offset: 20480)
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2137, size: 64)
!2137 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !974, line: 59, flags: DIFlagFwdDecl)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1276, file: !974, line: 1337, baseType: !2139, size: 128, offset: 20544)
!2139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2126, line: 39, size: 128, elements: !2140)
!2140 = !{!2141, !2613, !2614}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2139, file: !2126, line: 40, baseType: !2142, size: 64)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !52, line: 74, size: 512, align: 128, elements: !2144)
!2144 = !{!2145, !2146, !2607, !2612}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2143, file: !52, line: 75, baseType: !101, size: 64)
!2146 = !DIDerivedType(tag: DW_TAG_member, scope: !2143, file: !52, line: 83, baseType: !2147, size: 320, offset: 64)
!2147 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2143, file: !52, line: 83, size: 320, elements: !2148)
!2148 = !{!2149, !2373, !2387, !2391, !2606}
!2149 = !DIDerivedType(tag: DW_TAG_member, scope: !2147, file: !52, line: 84, baseType: !2150, size: 320)
!2150 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2147, file: !52, line: 84, size: 320, elements: !2151)
!2151 = !{!2152, !2163, !2367, !2372}
!2152 = !DIDerivedType(tag: DW_TAG_member, scope: !2150, file: !52, line: 90, baseType: !2153, size: 128)
!2153 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2150, file: !52, line: 90, size: 128, elements: !2154)
!2154 = !{!2155, !2156, !2161, !2162}
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2153, file: !52, line: 91, baseType: !277, size: 128)
!2156 = !DIDerivedType(tag: DW_TAG_member, scope: !2153, file: !52, line: 94, baseType: !2157, size: 128)
!2157 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2153, file: !52, line: 94, size: 128, elements: !2158)
!2158 = !{!2159, !2160}
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2157, file: !52, line: 96, baseType: !224, size: 64)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2157, file: !52, line: 98, baseType: !7, size: 32, offset: 64)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2153, file: !52, line: 102, baseType: !277, size: 128)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2153, file: !52, line: 103, baseType: !277, size: 128)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2150, file: !52, line: 106, baseType: !2164, size: 64, offset: 128)
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2165, size: 64)
!2165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !15, line: 472, size: 1536, align: 64, elements: !2166)
!2166 = !{!2167, !2168, !2169, !2170, !2171, !2172, !2173, !2174, !2175, !2359, !2360, !2361, !2364, !2365, !2366}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !2165, file: !15, line: 473, baseType: !651, size: 64)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !2165, file: !15, line: 474, baseType: !854, size: 128, offset: 64)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !2165, file: !15, line: 475, baseType: !425, size: 320, offset: 192)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2165, file: !15, line: 476, baseType: !859, size: 32, offset: 512)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !2165, file: !15, line: 477, baseType: !170, size: 32, offset: 544)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !2165, file: !15, line: 482, baseType: !1445, size: 128, offset: 576)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !2165, file: !15, line: 483, baseType: !101, size: 64, offset: 704)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !2165, file: !15, line: 484, baseType: !101, size: 64, offset: 768)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !2165, file: !15, line: 485, baseType: !2176, size: 64, offset: 832)
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2177, size: 64)
!2177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2178)
!2178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !15, line: 404, size: 1280, elements: !2179)
!2179 = !{!2180, !2184, !2254, !2258, !2262, !2268, !2274, !2278, !2283, !2287, !2291, !2295, !2323, !2327, !2331, !2335, !2340, !2344, !2351, !2355}
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !2178, file: !15, line: 405, baseType: !2181, size: 64)
!2181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2182, size: 64)
!2182 = !DISubroutineType(types: !2183)
!2183 = !{!144, !2142, !934}
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !2178, file: !15, line: 406, baseType: !2185, size: 64, offset: 64)
!2185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2186, size: 64)
!2186 = !DISubroutineType(types: !2187)
!2187 = !{!144, !229, !2188}
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64)
!2189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !52, line: 293, size: 1536, elements: !2190)
!2190 = !{!2191, !2221, !2235}
!2191 = !DIDerivedType(tag: DW_TAG_member, scope: !2189, file: !52, line: 295, baseType: !2192, size: 512)
!2192 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2189, file: !52, line: 295, size: 512, elements: !2193)
!2193 = !{!2194, !2220}
!2194 = !DIDerivedType(tag: DW_TAG_member, scope: !2192, file: !52, line: 296, baseType: !2195, size: 448)
!2195 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2192, file: !52, line: 296, size: 448, elements: !2196)
!2196 = !{!2197, !2198, !2207, !2208, !2209, !2218, !2219}
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2195, file: !52, line: 298, baseType: !101, size: 64)
!2198 = !DIDerivedType(tag: DW_TAG_member, scope: !2195, file: !52, line: 299, baseType: !2199, size: 128, offset: 64)
!2199 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2195, file: !52, line: 299, size: 128, elements: !2200)
!2200 = !{!2201, !2202}
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2199, file: !52, line: 300, baseType: !277, size: 128)
!2202 = !DIDerivedType(tag: DW_TAG_member, scope: !2199, file: !52, line: 302, baseType: !2203, size: 128)
!2203 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2199, file: !52, line: 302, size: 128, elements: !2204)
!2204 = !{!2205, !2206}
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2203, file: !52, line: 303, baseType: !224, size: 64)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2203, file: !52, line: 305, baseType: !7, size: 32, offset: 64)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2195, file: !52, line: 310, baseType: !2164, size: 64, offset: 192)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2195, file: !52, line: 311, baseType: !101, size: 64, offset: 256)
!2209 = !DIDerivedType(tag: DW_TAG_member, scope: !2195, file: !52, line: 312, baseType: !2210, size: 64, offset: 320)
!2210 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2195, file: !52, line: 312, size: 64, elements: !2211)
!2211 = !{!2212, !2213}
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2210, file: !52, line: 313, baseType: !224, size: 64)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !2210, file: !52, line: 314, baseType: !2214, size: 64)
!2214 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !52, line: 257, baseType: !2215)
!2215 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !52, line: 255, size: 64, elements: !2216)
!2216 = !{!2217}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2215, file: !52, line: 256, baseType: !101, size: 64)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2195, file: !52, line: 316, baseType: !170, size: 32, offset: 384)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2195, file: !52, line: 317, baseType: !170, size: 32, offset: 416)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2192, file: !52, line: 323, baseType: !2143, size: 512, align: 128)
!2221 = !DIDerivedType(tag: DW_TAG_member, scope: !2189, file: !52, line: 325, baseType: !2222, size: 512, offset: 512)
!2222 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2189, file: !52, line: 325, size: 512, elements: !2223)
!2223 = !{!2224, !2234}
!2224 = !DIDerivedType(tag: DW_TAG_member, scope: !2222, file: !52, line: 326, baseType: !2225, size: 320)
!2225 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2222, file: !52, line: 326, size: 320, elements: !2226)
!2226 = !{!2227, !2228, !2229, !2230, !2231, !2232, !2233}
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !2225, file: !52, line: 327, baseType: !101, size: 64)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !2225, file: !52, line: 328, baseType: !101, size: 64, offset: 64)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !2225, file: !52, line: 329, baseType: !101, size: 64, offset: 128)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !2225, file: !52, line: 331, baseType: !170, size: 32, offset: 192)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !2225, file: !52, line: 332, baseType: !170, size: 32, offset: 224)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !2225, file: !52, line: 333, baseType: !170, size: 32, offset: 256)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !2225, file: !52, line: 335, baseType: !7, size: 32, offset: 288)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !2222, file: !52, line: 339, baseType: !2143, size: 512, align: 128)
!2235 = !DIDerivedType(tag: DW_TAG_member, scope: !2189, file: !52, line: 341, baseType: !2236, size: 512, offset: 1024)
!2236 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2189, file: !52, line: 341, size: 512, elements: !2237)
!2237 = !{!2238, !2247, !2253}
!2238 = !DIDerivedType(tag: DW_TAG_member, scope: !2236, file: !52, line: 342, baseType: !2239, size: 384)
!2239 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2236, file: !52, line: 342, size: 384, elements: !2240)
!2240 = !{!2241, !2242, !2243, !2244, !2245, !2246}
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !2239, file: !52, line: 343, baseType: !101, size: 64)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !2239, file: !52, line: 344, baseType: !101, size: 64, offset: 64)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !2239, file: !52, line: 346, baseType: !224, size: 64, offset: 128)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !2239, file: !52, line: 347, baseType: !224, size: 64, offset: 192)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !2239, file: !52, line: 348, baseType: !224, size: 64, offset: 256)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !2239, file: !52, line: 349, baseType: !224, size: 64, offset: 320)
!2247 = !DIDerivedType(tag: DW_TAG_member, scope: !2236, file: !52, line: 352, baseType: !2248, size: 256)
!2248 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2236, file: !52, line: 352, size: 256, elements: !2249)
!2249 = !{!2250, !2251, !2252}
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !2248, file: !52, line: 353, baseType: !101, size: 64)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !2248, file: !52, line: 354, baseType: !101, size: 64, offset: 64)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !2248, file: !52, line: 356, baseType: !277, size: 128, offset: 128)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !2236, file: !52, line: 359, baseType: !2143, size: 512, align: 128)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !2178, file: !15, line: 409, baseType: !2255, size: 64, offset: 128)
!2255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2256, size: 64)
!2256 = !DISubroutineType(types: !2257)
!2257 = !{!144, !2164, !934}
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !2178, file: !15, line: 412, baseType: !2259, size: 64, offset: 192)
!2259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2260, size: 64)
!2260 = !DISubroutineType(types: !2261)
!2261 = !{!487, !2164, !2188}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !2178, file: !15, line: 414, baseType: !2263, size: 64, offset: 256)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2264 = !DISubroutineType(types: !2265)
!2265 = !{null, !2266}
!2266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2267, size: 64)
!2267 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !15, line: 310, flags: DIFlagFwdDecl)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !2178, file: !15, line: 416, baseType: !2269, size: 64, offset: 320)
!2269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2270, size: 64)
!2270 = !DISubroutineType(types: !2271)
!2271 = !{!144, !229, !2164, !283, !7, !2272, !2273}
!2272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !2178, file: !15, line: 419, baseType: !2275, size: 64, offset: 384)
!2275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2276, size: 64)
!2276 = !DISubroutineType(types: !2277)
!2277 = !{!144, !229, !2164, !283, !7, !7, !2142, !224}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !2178, file: !15, line: 424, baseType: !2279, size: 64, offset: 448)
!2279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2280, size: 64)
!2280 = !DISubroutineType(types: !2281)
!2281 = !{!2282, !2164, !2282}
!2282 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !129, line: 131, baseType: !130)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !2178, file: !15, line: 425, baseType: !2284, size: 64, offset: 512)
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2285, size: 64)
!2285 = !DISubroutineType(types: !2286)
!2286 = !{null, !2188, !807, !807}
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !2178, file: !15, line: 426, baseType: !2288, size: 64, offset: 576)
!2288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2289, size: 64)
!2289 = !DISubroutineType(types: !2290)
!2290 = !{!487, !2188, !859}
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !2178, file: !15, line: 427, baseType: !2292, size: 64, offset: 640)
!2292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2293, size: 64)
!2293 = !DISubroutineType(types: !2294)
!2294 = !{null, !2188}
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !2178, file: !15, line: 428, baseType: !2296, size: 64, offset: 704)
!2296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2297, size: 64)
!2297 = !DISubroutineType(types: !2298)
!2298 = !{!804, !2299, !2321}
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !15, line: 373, size: 384, elements: !2301)
!2301 = !{!2302, !2303, !2304, !2308, !2309, !2310, !2311}
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2300, file: !15, line: 374, baseType: !229, size: 64)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2300, file: !15, line: 375, baseType: !283, size: 64, offset: 64)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2300, file: !15, line: 376, baseType: !2305, size: 64, offset: 128)
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2306 = !DISubroutineType(types: !2307)
!2307 = !{null, !2299, !127}
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2300, file: !15, line: 377, baseType: !224, size: 64, offset: 192)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2300, file: !15, line: 378, baseType: !144, size: 32, offset: 256)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2300, file: !15, line: 379, baseType: !214, size: 16, offset: 288)
!2311 = !DIDerivedType(tag: DW_TAG_member, scope: !2300, file: !15, line: 380, baseType: !2312, size: 64, offset: 320)
!2312 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2300, file: !15, line: 380, size: 64, elements: !2313)
!2313 = !{!2314, !2317}
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2312, file: !15, line: 386, baseType: !2315, size: 64)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !15, line: 386, flags: DIFlagFwdDecl)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2312, file: !15, line: 395, baseType: !2318, size: 64)
!2318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2319, size: 64)
!2319 = !DISubroutineType(types: !2320)
!2320 = !{!804, !224}
!2321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2322, size: 64)
!2322 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !15, line: 69, flags: DIFlagFwdDecl)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !2178, file: !15, line: 433, baseType: !2324, size: 64, offset: 768)
!2324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2325, size: 64)
!2325 = !DISubroutineType(types: !2326)
!2326 = !{!144, !2164, !2188, !2188, !36}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !2178, file: !15, line: 435, baseType: !2328, size: 64, offset: 832)
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2329, size: 64)
!2329 = !DISubroutineType(types: !2330)
!2330 = !{!144, !2188}
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !2178, file: !15, line: 436, baseType: !2332, size: 64, offset: 896)
!2332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2333, size: 64)
!2333 = !DISubroutineType(types: !2334)
!2334 = !{!487, !2188, !807, !807}
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !2178, file: !15, line: 438, baseType: !2336, size: 64, offset: 960)
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2337 = !DISubroutineType(types: !2338)
!2338 = !{null, !2188, !2339, !2339}
!2339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !2178, file: !15, line: 439, baseType: !2341, size: 64, offset: 1024)
!2341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2342, size: 64)
!2342 = !DISubroutineType(types: !2343)
!2343 = !{!144, !2164, !2142}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !2178, file: !15, line: 442, baseType: !2345, size: 64, offset: 1088)
!2345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2346, size: 64)
!2346 = !DISubroutineType(types: !2347)
!2347 = !{!144, !2348, !229, !2350}
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2349, size: 64)
!2349 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !15, line: 66, flags: DIFlagFwdDecl)
!2350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2282, size: 64)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !2178, file: !15, line: 444, baseType: !2352, size: 64, offset: 1152)
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 64)
!2353 = !DISubroutineType(types: !2354)
!2354 = !{null, !229}
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !2178, file: !15, line: 445, baseType: !2356, size: 64, offset: 1216)
!2356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2357, size: 64)
!2357 = !DISubroutineType(types: !2358)
!2358 = !{!144, !2299, !2321}
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2165, file: !15, line: 486, baseType: !101, size: 64, offset: 896)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !2165, file: !15, line: 487, baseType: !425, size: 320, offset: 960)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !2165, file: !15, line: 488, baseType: !2362, size: 32, offset: 1280)
!2362 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2363, line: 8, baseType: !450)
!2363 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !2165, file: !15, line: 489, baseType: !182, size: 32, offset: 1312)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !2165, file: !15, line: 490, baseType: !277, size: 128, offset: 1344)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !2165, file: !15, line: 491, baseType: !224, size: 64, offset: 1472)
!2367 = !DIDerivedType(tag: DW_TAG_member, scope: !2150, file: !52, line: 107, baseType: !2368, size: 64, offset: 192)
!2368 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2150, file: !52, line: 107, size: 64, elements: !2369)
!2369 = !{!2370, !2371}
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2368, file: !52, line: 108, baseType: !101, size: 64)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2368, file: !52, line: 109, baseType: !101, size: 64)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2150, file: !52, line: 117, baseType: !101, size: 64, offset: 256)
!2373 = !DIDerivedType(tag: DW_TAG_member, scope: !2147, file: !52, line: 119, baseType: !2374, size: 320)
!2374 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2147, file: !52, line: 119, size: 320, elements: !2375)
!2375 = !{!2376, !2377, !2380, !2381, !2382}
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2374, file: !52, line: 124, baseType: !101, size: 64)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2374, file: !52, line: 125, baseType: !2378, size: 64, offset: 64)
!2378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2379, size: 64)
!2379 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !52, line: 125, flags: DIFlagFwdDecl)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2374, file: !52, line: 126, baseType: !101, size: 64, offset: 128)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2374, file: !52, line: 127, baseType: !101, size: 64, offset: 192)
!2382 = !DIDerivedType(tag: DW_TAG_member, scope: !2374, file: !52, line: 128, baseType: !2383, size: 64, offset: 256)
!2383 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2374, file: !52, line: 128, size: 64, elements: !2384)
!2384 = !{!2385, !2386}
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2383, file: !52, line: 133, baseType: !101, size: 64)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2383, file: !52, line: 138, baseType: !255, size: 64)
!2387 = !DIDerivedType(tag: DW_TAG_member, scope: !2147, file: !52, line: 141, baseType: !2388, size: 64)
!2388 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2147, file: !52, line: 141, size: 64, elements: !2389)
!2389 = !{!2390}
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2388, file: !52, line: 142, baseType: !101, size: 64)
!2391 = !DIDerivedType(tag: DW_TAG_member, scope: !2147, file: !52, line: 144, baseType: !2392, size: 128)
!2392 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2147, file: !52, line: 144, size: 128, elements: !2393)
!2393 = !{!2394, !2605}
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2392, file: !52, line: 146, baseType: !2395, size: 64)
!2395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2396, size: 64)
!2396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !44, line: 126, size: 1216, elements: !2397)
!2397 = !{!2398, !2408, !2429, !2430, !2431, !2432, !2433, !2587, !2588, !2589}
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2396, file: !44, line: 127, baseType: !2399, size: 384)
!2399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !44, line: 21, size: 384, elements: !2400)
!2400 = !{!2401, !2402, !2404, !2405, !2406, !2407}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2399, file: !44, line: 22, baseType: !101, size: 64)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2399, file: !44, line: 23, baseType: !2403, size: 64, offset: 64)
!2403 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !101)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2399, file: !44, line: 24, baseType: !2403, size: 64, offset: 128)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2399, file: !44, line: 25, baseType: !101, size: 64, offset: 192)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2399, file: !44, line: 26, baseType: !101, size: 64, offset: 256)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2399, file: !44, line: 27, baseType: !101, size: 64, offset: 320)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2396, file: !44, line: 128, baseType: !2409, size: 128, offset: 384)
!2409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2410, line: 105, size: 128, elements: !2411)
!2410 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2411 = !{!2412, !2413}
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2409, file: !2410, line: 110, baseType: !101, size: 64)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2409, file: !2410, line: 118, baseType: !2414, size: 64, offset: 64)
!2414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2415, size: 64)
!2415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2410, line: 95, size: 448, elements: !2416)
!2416 = !{!2417, !2418, !2424, !2425, !2426, !2427, !2428}
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2415, file: !2410, line: 96, baseType: !255, size: 64)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2415, file: !2410, line: 97, baseType: !2419, size: 64, offset: 64)
!2419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2420, size: 64)
!2420 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2410, line: 60, baseType: !2421)
!2421 = !DISubroutineType(types: !2422)
!2422 = !{null, !2423}
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2415, file: !2410, line: 98, baseType: !2419, size: 64, offset: 128)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2415, file: !2410, line: 99, baseType: !487, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2415, file: !2410, line: 100, baseType: !487, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2415, file: !2410, line: 101, baseType: !242, size: 128, align: 64, offset: 256)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2415, file: !2410, line: 102, baseType: !2423, size: 64, offset: 384)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2396, file: !44, line: 129, baseType: !1660, size: 256, offset: 512)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2396, file: !44, line: 130, baseType: !43, size: 32, offset: 768)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2396, file: !44, line: 131, baseType: !7, size: 32, offset: 800)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !2396, file: !44, line: 132, baseType: !101, size: 64, offset: 832)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2396, file: !44, line: 133, baseType: !2434, size: 64, offset: 896)
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2435, size: 64)
!2435 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2436)
!2436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !44, line: 77, size: 192, elements: !2437)
!2437 = !{!2438, !2442, !2583}
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2436, file: !44, line: 83, baseType: !2439, size: 64)
!2439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2440, size: 64)
!2440 = !DISubroutineType(types: !2441)
!2441 = !{null, !2142}
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2436, file: !44, line: 89, baseType: !2443, size: 64, offset: 64)
!2443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2444, size: 64)
!2444 = !DISubroutineType(types: !2445)
!2445 = !{!2446, !2447}
!2446 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !52, line: 1184, baseType: !7)
!2447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2448, size: 64)
!2448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !2449, line: 512, size: 896, elements: !2450)
!2449 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!2450 = !{!2451, !2565, !2566, !2568, !2570, !2575, !2576, !2577, !2579, !2581}
!2451 = !DIDerivedType(tag: DW_TAG_member, scope: !2448, file: !2449, line: 513, baseType: !2452, size: 320)
!2452 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2448, file: !2449, line: 513, size: 320, elements: !2453)
!2453 = !{!2454, !2561, !2562, !2563, !2564}
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2452, file: !2449, line: 514, baseType: !2455, size: 64)
!2455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2456, size: 64)
!2456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !52, line: 625, size: 1344, elements: !2457)
!2457 = !{!2458, !2467, !2468, !2474, !2481, !2482, !2487, !2488, !2493, !2494, !2497, !2554, !2555, !2556, !2557, !2558, !2559}
!2458 = !DIDerivedType(tag: DW_TAG_member, scope: !2456, file: !52, line: 628, baseType: !2459, size: 128)
!2459 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2456, file: !52, line: 628, size: 128, elements: !2460)
!2460 = !{!2461, !2466}
!2461 = !DIDerivedType(tag: DW_TAG_member, scope: !2459, file: !52, line: 629, baseType: !2462, size: 128)
!2462 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2459, file: !52, line: 629, size: 128, elements: !2463)
!2463 = !{!2464, !2465}
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2462, file: !52, line: 631, baseType: !101, size: 64)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2462, file: !52, line: 632, baseType: !101, size: 64, offset: 64)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2459, file: !52, line: 635, baseType: !242, size: 128, align: 64)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2456, file: !52, line: 639, baseType: !160, size: 64, offset: 128)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2456, file: !52, line: 640, baseType: !2469, size: 64, offset: 192)
!2469 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !95, line: 297, baseType: !2470)
!2470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !95, line: 297, size: 64, elements: !2471)
!2471 = !{!2472}
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2470, file: !95, line: 297, baseType: !2473, size: 64)
!2473 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !100, line: 19, baseType: !101)
!2474 = !DIDerivedType(tag: DW_TAG_member, scope: !2456, file: !52, line: 646, baseType: !2475, size: 64, offset: 256)
!2475 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2456, file: !52, line: 646, size: 64, elements: !2476)
!2476 = !{!2477, !2480}
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2475, file: !52, line: 647, baseType: !2478, size: 64)
!2478 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2479)
!2479 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !52, line: 542, baseType: !101)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2475, file: !52, line: 648, baseType: !2479, size: 64)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2456, file: !52, line: 666, baseType: !144, size: 32, offset: 320)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2456, file: !52, line: 667, baseType: !2483, size: 64, offset: 384)
!2483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2484, size: 64)
!2484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !52, line: 579, size: 320, elements: !2485)
!2485 = !{!2486}
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2484, file: !52, line: 580, baseType: !425, size: 320)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2456, file: !52, line: 670, baseType: !487, size: 8, offset: 448)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2456, file: !52, line: 681, baseType: !2489, size: 256, offset: 512)
!2489 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2456, file: !52, line: 678, size: 256, elements: !2490)
!2490 = !{!2491, !2492}
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2489, file: !52, line: 679, baseType: !417, size: 192, align: 64)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2489, file: !52, line: 680, baseType: !101, size: 64, offset: 192)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2456, file: !52, line: 689, baseType: !277, size: 128, offset: 768)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2456, file: !52, line: 691, baseType: !2495, size: 64, offset: 896)
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2496 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !52, line: 691, flags: DIFlagFwdDecl)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2456, file: !52, line: 694, baseType: !2498, size: 64, offset: 960)
!2498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2499, size: 64)
!2499 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2500)
!2500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !2449, line: 563, size: 1024, elements: !2501)
!2501 = !{!2502, !2506, !2507, !2511, !2515, !2519, !2520, !2524, !2528, !2532, !2533, !2534, !2538, !2542, !2546, !2550}
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2500, file: !2449, line: 564, baseType: !2503, size: 64)
!2503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2504, size: 64)
!2504 = !DISubroutineType(types: !2505)
!2505 = !{null, !2455}
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2500, file: !2449, line: 569, baseType: !2503, size: 64, offset: 64)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2500, file: !2449, line: 571, baseType: !2508, size: 64, offset: 128)
!2508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2509, size: 64)
!2509 = !DISubroutineType(types: !2510)
!2510 = !{!144, !2455, !101}
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2500, file: !2449, line: 572, baseType: !2512, size: 64, offset: 192)
!2512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2513, size: 64)
!2513 = !DISubroutineType(types: !2514)
!2514 = !{!144, !2455}
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2500, file: !2449, line: 578, baseType: !2516, size: 64, offset: 256)
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2517, size: 64)
!2517 = !DISubroutineType(types: !2518)
!2518 = !{!144, !2455, !101, !101, !101}
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2500, file: !2449, line: 580, baseType: !2443, size: 64, offset: 320)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2500, file: !2449, line: 581, baseType: !2521, size: 64, offset: 384)
!2521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2522, size: 64)
!2522 = !DISubroutineType(types: !2523)
!2523 = !{!2446, !2447, !7}
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2500, file: !2449, line: 582, baseType: !2525, size: 64, offset: 448)
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2526, size: 64)
!2526 = !DISubroutineType(types: !2527)
!2527 = !{!2446, !2447, !101, !101}
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2500, file: !2449, line: 584, baseType: !2529, size: 64, offset: 512)
!2529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2530, size: 64)
!2530 = !DISubroutineType(types: !2531)
!2531 = !{!101, !2455}
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2500, file: !2449, line: 588, baseType: !2443, size: 64, offset: 576)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2500, file: !2449, line: 591, baseType: !2443, size: 64, offset: 640)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2500, file: !2449, line: 597, baseType: !2535, size: 64, offset: 704)
!2535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2536, size: 64)
!2536 = !DISubroutineType(types: !2537)
!2537 = !{!144, !2455, !101, !224, !144, !144}
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2500, file: !2449, line: 603, baseType: !2539, size: 64, offset: 768)
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2540, size: 64)
!2540 = !DISubroutineType(types: !2541)
!2541 = !{!490, !2455}
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2500, file: !2449, line: 613, baseType: !2543, size: 64, offset: 832)
!2543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2544, size: 64)
!2544 = !DISubroutineType(types: !2545)
!2545 = !{!144, !2455, !2099}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2500, file: !2449, line: 625, baseType: !2547, size: 64, offset: 896)
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2548, size: 64)
!2548 = !DISubroutineType(types: !2549)
!2549 = !{!2099, !2455, !101}
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2500, file: !2449, line: 633, baseType: !2551, size: 64, offset: 960)
!2551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2552, size: 64)
!2552 = !DISubroutineType(types: !2553)
!2553 = !{!2142, !2455, !101}
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2456, file: !52, line: 697, baseType: !101, size: 64, offset: 1024)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2456, file: !52, line: 699, baseType: !229, size: 64, offset: 1088)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2456, file: !52, line: 700, baseType: !224, size: 64, offset: 1152)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2456, file: !52, line: 711, baseType: !255, size: 64, offset: 1216)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2456, file: !52, line: 717, baseType: !2099, size: 64, offset: 1280)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2456, file: !52, line: 722, baseType: !2560, offset: 1344)
!2560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !52, line: 570, elements: !221)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2452, file: !2449, line: 515, baseType: !859, size: 32, offset: 64)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2452, file: !2449, line: 516, baseType: !101, size: 64, offset: 128)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2452, file: !2449, line: 517, baseType: !101, size: 64, offset: 192)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2452, file: !2449, line: 518, baseType: !101, size: 64, offset: 256)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2448, file: !2449, line: 520, baseType: !51, size: 32, offset: 320)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2448, file: !2449, line: 522, baseType: !2567, size: 64, offset: 384)
!2567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2448, file: !2449, line: 524, baseType: !2569, size: 64, offset: 448)
!2569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!2570 = !DIDerivedType(tag: DW_TAG_member, scope: !2448, file: !2449, line: 527, baseType: !2571, size: 64, offset: 512)
!2571 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2448, file: !2449, line: 527, size: 64, elements: !2572)
!2572 = !{!2573, !2574}
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2571, file: !2449, line: 528, baseType: !138, size: 64)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2571, file: !2449, line: 529, baseType: !122, size: 64)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2448, file: !2449, line: 534, baseType: !2142, size: 64, offset: 576)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2448, file: !2449, line: 535, baseType: !2142, size: 64, offset: 640)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2448, file: !2449, line: 541, baseType: !2578, size: 64, offset: 704)
!2578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2448, file: !2449, line: 545, baseType: !2580, size: 64, offset: 768)
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2448, file: !2449, line: 549, baseType: !2582, size: 64, offset: 832)
!2582 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !95, line: 520, baseType: !2142)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !2436, file: !44, line: 100, baseType: !2584, size: 64, offset: 128)
!2584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2585, size: 64)
!2585 = !DISubroutineType(types: !2586)
!2586 = !{!144, !2395, !101, !101, !144}
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2396, file: !44, line: 134, baseType: !224, size: 64, offset: 960)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2396, file: !44, line: 135, baseType: !144, size: 32, offset: 1024)
!2589 = !DIDerivedType(tag: DW_TAG_member, scope: !2396, file: !44, line: 136, baseType: !2590, size: 128, offset: 1088)
!2590 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2396, file: !44, line: 136, size: 128, elements: !2591)
!2591 = !{!2592, !2598}
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2590, file: !44, line: 137, baseType: !2593, size: 128)
!2593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2594, line: 6, size: 128, elements: !2595)
!2594 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2595 = !{!2596, !2597}
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2593, file: !2594, line: 7, baseType: !130, size: 64)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2593, file: !2594, line: 8, baseType: !130, size: 64, offset: 64)
!2598 = !DIDerivedType(tag: DW_TAG_member, scope: !2590, file: !44, line: 138, baseType: !2599)
!2599 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2590, file: !44, line: 138, elements: !2600)
!2600 = !{!2601, !2603}
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2599, file: !44, line: 138, baseType: !2602)
!2602 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2599, file: !44, line: 138, elements: !221)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2599, file: !44, line: 138, baseType: !2604)
!2604 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2593, elements: !355)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2392, file: !52, line: 147, baseType: !224, size: 64, offset: 64)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2147, file: !52, line: 161, baseType: !242, size: 128, align: 64)
!2607 = !DIDerivedType(tag: DW_TAG_member, scope: !2143, file: !52, line: 164, baseType: !2608, size: 32, offset: 384)
!2608 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2143, file: !52, line: 164, size: 32, elements: !2609)
!2609 = !{!2610, !2611}
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2608, file: !52, line: 169, baseType: !170, size: 32)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2608, file: !52, line: 177, baseType: !7, size: 32)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2143, file: !52, line: 181, baseType: !170, size: 32, offset: 416)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2139, file: !2126, line: 42, baseType: !451, size: 32, offset: 64)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2139, file: !2126, line: 43, baseType: !451, size: 32, offset: 96)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1276, file: !974, line: 1340, baseType: !2616, size: 64, offset: 20672)
!2616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2617, size: 64)
!2617 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !974, line: 69, flags: DIFlagFwdDecl)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1276, file: !974, line: 1351, baseType: !144, size: 32, offset: 20736)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1276, file: !974, line: 1352, baseType: !144, size: 32, offset: 20768)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1276, file: !974, line: 1354, baseType: !101, size: 64, offset: 20800)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1276, file: !974, line: 1364, baseType: !130, size: 64, offset: 20864)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1276, file: !974, line: 1365, baseType: !130, size: 64, offset: 20928)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1276, file: !974, line: 1412, baseType: !101, size: 64, offset: 20992)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1276, file: !974, line: 1453, baseType: !2625, size: 64, offset: 21056)
!2625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2626, size: 64)
!2626 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !974, line: 1453, flags: DIFlagFwdDecl)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1276, file: !974, line: 1457, baseType: !2628, size: 64, offset: 21120)
!2628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2629, size: 64)
!2629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !68, line: 61, size: 576, elements: !2630)
!2630 = !{!2631, !2632, !2651, !2654, !2655, !2688, !2698}
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2629, file: !68, line: 62, baseType: !67, size: 32)
!2632 = !DIDerivedType(tag: DW_TAG_member, scope: !2629, file: !68, line: 64, baseType: !2633, size: 192, offset: 64)
!2633 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2629, file: !68, line: 64, size: 192, elements: !2634)
!2634 = !{!2635, !2646}
!2635 = !DIDerivedType(tag: DW_TAG_member, scope: !2633, file: !68, line: 65, baseType: !2636, size: 192)
!2636 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2633, file: !68, line: 65, size: 192, elements: !2637)
!2637 = !{!2638, !2645}
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2636, file: !68, line: 66, baseType: !2639, size: 128)
!2639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2640, line: 50, size: 128, elements: !2641)
!2640 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2641 = !{!2642, !2643, !2644}
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2639, file: !2640, line: 52, baseType: !101, size: 64)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2639, file: !2640, line: 54, baseType: !7, size: 32, offset: 64)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2639, file: !2640, line: 55, baseType: !7, size: 32, offset: 96)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2636, file: !68, line: 67, baseType: !101, size: 64, offset: 128)
!2646 = !DIDerivedType(tag: DW_TAG_member, scope: !2633, file: !68, line: 70, baseType: !2647, size: 192)
!2647 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2633, file: !68, line: 70, size: 192, elements: !2648)
!2648 = !{!2649, !2650}
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2647, file: !68, line: 71, baseType: !242, size: 128, align: 64)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2647, file: !68, line: 72, baseType: !101, size: 64, offset: 128)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2629, file: !68, line: 76, baseType: !2652, size: 64, offset: 256)
!2652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2653, size: 64)
!2653 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !68, line: 76, flags: DIFlagFwdDecl)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2629, file: !68, line: 77, baseType: !101, size: 64, offset: 320)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2629, file: !68, line: 79, baseType: !2656, size: 64, offset: 384)
!2656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2657, size: 64)
!2657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2640, line: 25, size: 256, elements: !2658)
!2658 = !{!2659, !2665, !2669}
!2659 = !DIDerivedType(tag: DW_TAG_member, scope: !2657, file: !2640, line: 26, baseType: !2660, size: 128)
!2660 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2657, file: !2640, line: 26, size: 128, elements: !2661)
!2661 = !{!2662, !2664}
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2660, file: !2640, line: 27, baseType: !2663, size: 128)
!2663 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 128, elements: !1712)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2660, file: !2640, line: 28, baseType: !2663, size: 128)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2657, file: !2640, line: 31, baseType: !2666, size: 64, offset: 128)
!2666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2667, size: 64)
!2667 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2668)
!2668 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2640, line: 23, flags: DIFlagFwdDecl)
!2669 = !DIDerivedType(tag: DW_TAG_member, scope: !2657, file: !2640, line: 33, baseType: !2670, size: 64, offset: 192)
!2670 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2657, file: !2640, line: 33, size: 64, elements: !2671)
!2671 = !{!2672, !2678, !2683}
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2670, file: !2640, line: 38, baseType: !2673, size: 64)
!2673 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2670, file: !2640, line: 34, size: 64, elements: !2674)
!2674 = !{!2675, !2676, !2677}
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2673, file: !2640, line: 35, baseType: !410, size: 32)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2673, file: !2640, line: 36, baseType: !206, size: 8, offset: 32)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2673, file: !2640, line: 37, baseType: !206, size: 8, offset: 40)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2670, file: !2640, line: 42, baseType: !2679, size: 16)
!2679 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2670, file: !2640, line: 39, size: 16, elements: !2680)
!2680 = !{!2681, !2682}
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2679, file: !2640, line: 40, baseType: !206, size: 8)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2679, file: !2640, line: 41, baseType: !206, size: 8, offset: 8)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2670, file: !2640, line: 46, baseType: !2684, size: 16)
!2684 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2670, file: !2640, line: 43, size: 16, elements: !2685)
!2685 = !{!2686, !2687}
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2684, file: !2640, line: 44, baseType: !206, size: 8)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2684, file: !2640, line: 45, baseType: !206, size: 8, offset: 8)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2629, file: !68, line: 81, baseType: !2689, size: 64, offset: 448)
!2689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2690, size: 64)
!2690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !68, line: 85, size: 384, elements: !2691)
!2691 = !{!2692, !2693, !2694, !2695, !2696, !2697}
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2690, file: !68, line: 86, baseType: !2652, size: 64)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2690, file: !68, line: 87, baseType: !101, size: 64, offset: 64)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2690, file: !68, line: 88, baseType: !101, size: 64, offset: 128)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2690, file: !68, line: 89, baseType: !101, size: 64, offset: 192)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2690, file: !68, line: 90, baseType: !487, size: 8, offset: 256)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2690, file: !68, line: 92, baseType: !2689, size: 64, offset: 320)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2629, file: !68, line: 82, baseType: !7, size: 32, offset: 512)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1276, file: !974, line: 1463, baseType: !2700, offset: 21184)
!2700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !974, line: 739, elements: !221)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1276, file: !974, line: 1470, baseType: !242, size: 128, align: 64, offset: 21184)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1276, file: !974, line: 1471, baseType: !318, size: 32, offset: 21312)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1276, file: !974, line: 1472, baseType: !144, size: 32, offset: 21344)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1276, file: !974, line: 1474, baseType: !1275, size: 64, offset: 21376)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1276, file: !974, line: 1475, baseType: !2706, size: 320, offset: 21440)
!2706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2707, line: 11, size: 320, elements: !2708)
!2707 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2708 = !{!2709, !2710, !2711, !2716}
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2706, file: !2707, line: 16, baseType: !331, size: 128)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2706, file: !2707, line: 17, baseType: !101, size: 64, offset: 128)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2706, file: !2707, line: 18, baseType: !2712, size: 64, offset: 192)
!2712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2713, size: 64)
!2713 = !DISubroutineType(types: !2714)
!2714 = !{null, !2715}
!2715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2706, size: 64)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2706, file: !2707, line: 19, baseType: !450, size: 32, offset: 256)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1276, file: !974, line: 1478, baseType: !2718, size: 64, offset: 21760)
!2718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2719, size: 64)
!2719 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !974, line: 1478, flags: DIFlagFwdDecl)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1276, file: !974, line: 1482, baseType: !318, size: 32, offset: 21824)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1276, file: !974, line: 1489, baseType: !224, size: 64, offset: 21888)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1276, file: !974, line: 1504, baseType: !224, size: 64, offset: 21952)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1276, file: !974, line: 1505, baseType: !132, size: 64, offset: 22016)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1276, file: !974, line: 1506, baseType: !130, size: 64, offset: 22080)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1276, file: !974, line: 1507, baseType: !132, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1276, file: !974, line: 1508, baseType: !132, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1276, file: !974, line: 1509, baseType: !132, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1276, file: !974, line: 1510, baseType: !242, size: 128, align: 64, offset: 22208)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1276, file: !974, line: 1511, baseType: !144, size: 32, offset: 22336)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1276, file: !974, line: 1515, baseType: !2731, size: 64, offset: 22400)
!2731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !237, line: 56, size: 64, elements: !2732)
!2732 = !{!2733}
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2731, file: !237, line: 57, baseType: !240, size: 64)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1276, file: !974, line: 1518, baseType: !2731, size: 64, offset: 22464)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1276, file: !974, line: 1528, baseType: !242, size: 128, align: 64, offset: 22528)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1276, file: !974, line: 1552, baseType: !2737, size: 35328, offset: 23040)
!2737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2738, line: 430, size: 35328, elements: !2739)
!2738 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!2739 = !{!2740, !2758, !2759, !2760, !2761, !2762, !2763, !2764, !2765, !2769, !2770, !2771, !2772, !2773, !2774, !2777, !2778, !2779, !2780}
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2737, file: !2738, line: 432, baseType: !2741, size: 192)
!2741 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2742, size: 192, elements: !310)
!2742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2743, line: 16, size: 64, elements: !2744)
!2743 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!2744 = !{!2745, !2746, !2747, !2748, !2749, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2757}
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2742, file: !2743, line: 17, baseType: !214, size: 16)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2742, file: !2743, line: 18, baseType: !214, size: 16, offset: 16)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2742, file: !2743, line: 19, baseType: !214, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2742, file: !2743, line: 19, baseType: !214, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2742, file: !2743, line: 19, baseType: !214, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2742, file: !2743, line: 19, baseType: !214, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2742, file: !2743, line: 19, baseType: !214, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2742, file: !2743, line: 20, baseType: !214, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2742, file: !2743, line: 20, baseType: !214, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2742, file: !2743, line: 20, baseType: !214, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2742, file: !2743, line: 20, baseType: !214, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2742, file: !2743, line: 20, baseType: !214, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2742, file: !2743, line: 20, baseType: !214, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2737, file: !2738, line: 436, baseType: !101, size: 64, offset: 192)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2737, file: !2738, line: 440, baseType: !216, size: 16, offset: 256)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2737, file: !2738, line: 441, baseType: !216, size: 16, offset: 272)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2737, file: !2738, line: 442, baseType: !216, size: 16, offset: 288)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2737, file: !2738, line: 443, baseType: !216, size: 16, offset: 304)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2737, file: !2738, line: 447, baseType: !101, size: 64, offset: 320)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2737, file: !2738, line: 448, baseType: !101, size: 64, offset: 384)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2737, file: !2738, line: 459, baseType: !2766, size: 256, offset: 448)
!2766 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2767, size: 256, elements: !336)
!2767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2768, size: 64)
!2768 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2738, line: 428, flags: DIFlagFwdDecl)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2737, file: !2738, line: 461, baseType: !101, size: 64, offset: 704)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2737, file: !2738, line: 463, baseType: !101, size: 64, offset: 768)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2737, file: !2738, line: 465, baseType: !101, size: 64, offset: 832)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2737, file: !2738, line: 466, baseType: !101, size: 64, offset: 896)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2737, file: !2738, line: 467, baseType: !101, size: 64, offset: 960)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2737, file: !2738, line: 473, baseType: !2775, size: 64, offset: 1024)
!2775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2776, size: 64)
!2776 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2738, line: 10, flags: DIFlagFwdDecl)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2737, file: !2738, line: 480, baseType: !101, size: 64, offset: 1088)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !2737, file: !2738, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !2737, file: !2738, line: 491, baseType: !450, size: 32, offset: 1184)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2737, file: !2738, line: 501, baseType: !2781, size: 33792, offset: 1536)
!2781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2782, line: 448, size: 33792, elements: !2783)
!2782 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!2783 = !{!2784, !2785, !2786, !2950, !2951, !2957, !2958}
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2781, file: !2782, line: 461, baseType: !7, size: 32)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2781, file: !2782, line: 468, baseType: !101, size: 64, offset: 64)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !2781, file: !2782, line: 476, baseType: !2787, size: 64, offset: 128)
!2787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2788, size: 64)
!2788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !2782, line: 356, size: 33280, align: 512, elements: !2789)
!2789 = !{!2790, !2791, !2792, !2793, !2794, !2795, !2796, !2797, !2798, !2799}
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2788, file: !2782, line: 358, baseType: !7, size: 32)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !2788, file: !2782, line: 361, baseType: !7, size: 32, offset: 32)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2788, file: !2782, line: 364, baseType: !130, size: 64, offset: 64)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !2788, file: !2782, line: 367, baseType: !130, size: 64, offset: 128)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !2788, file: !2782, line: 370, baseType: !130, size: 64, offset: 192)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !2788, file: !2782, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !2788, file: !2782, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !2788, file: !2782, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !2788, file: !2782, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2788, file: !2782, line: 397, baseType: !2800, size: 32768, offset: 512)
!2800 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2782, line: 348, size: 32768, elements: !2801)
!2801 = !{!2802, !2817, !2856, !2933, !2946}
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2800, file: !2782, line: 349, baseType: !2803, size: 896)
!2803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2782, line: 12, size: 896, elements: !2804)
!2804 = !{!2805, !2806, !2807, !2808, !2809, !2810, !2811, !2812, !2816}
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2803, file: !2782, line: 13, baseType: !450, size: 32)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2803, file: !2782, line: 14, baseType: !450, size: 32, offset: 32)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2803, file: !2782, line: 15, baseType: !450, size: 32, offset: 64)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2803, file: !2782, line: 16, baseType: !450, size: 32, offset: 96)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2803, file: !2782, line: 17, baseType: !450, size: 32, offset: 128)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2803, file: !2782, line: 18, baseType: !450, size: 32, offset: 160)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2803, file: !2782, line: 19, baseType: !450, size: 32, offset: 192)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2803, file: !2782, line: 22, baseType: !2813, size: 640, offset: 224)
!2813 = !DICompositeType(tag: DW_TAG_array_type, baseType: !450, size: 640, elements: !2814)
!2814 = !{!2815}
!2815 = !DISubrange(count: 20)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2803, file: !2782, line: 25, baseType: !450, size: 32, offset: 864)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2800, file: !2782, line: 350, baseType: !2818, size: 4096, align: 128)
!2818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2782, line: 34, size: 4096, align: 128, elements: !2819)
!2819 = !{!2820, !2821, !2822, !2823, !2824, !2839, !2840, !2841, !2845, !2847, !2851}
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2818, file: !2782, line: 35, baseType: !214, size: 16)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2818, file: !2782, line: 36, baseType: !214, size: 16, offset: 16)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2818, file: !2782, line: 37, baseType: !214, size: 16, offset: 32)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2818, file: !2782, line: 38, baseType: !214, size: 16, offset: 48)
!2824 = !DIDerivedType(tag: DW_TAG_member, scope: !2818, file: !2782, line: 39, baseType: !2825, size: 128, offset: 64)
!2825 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2818, file: !2782, line: 39, size: 128, elements: !2826)
!2826 = !{!2827, !2832}
!2827 = !DIDerivedType(tag: DW_TAG_member, scope: !2825, file: !2782, line: 40, baseType: !2828, size: 128)
!2828 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2825, file: !2782, line: 40, size: 128, elements: !2829)
!2829 = !{!2830, !2831}
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2828, file: !2782, line: 41, baseType: !130, size: 64)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2828, file: !2782, line: 42, baseType: !130, size: 64, offset: 64)
!2832 = !DIDerivedType(tag: DW_TAG_member, scope: !2825, file: !2782, line: 44, baseType: !2833, size: 128)
!2833 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2825, file: !2782, line: 44, size: 128, elements: !2834)
!2834 = !{!2835, !2836, !2837, !2838}
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2833, file: !2782, line: 45, baseType: !450, size: 32)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2833, file: !2782, line: 46, baseType: !450, size: 32, offset: 32)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2833, file: !2782, line: 47, baseType: !450, size: 32, offset: 64)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2833, file: !2782, line: 48, baseType: !450, size: 32, offset: 96)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2818, file: !2782, line: 51, baseType: !450, size: 32, offset: 192)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2818, file: !2782, line: 52, baseType: !450, size: 32, offset: 224)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2818, file: !2782, line: 55, baseType: !2842, size: 1024, offset: 256)
!2842 = !DICompositeType(tag: DW_TAG_array_type, baseType: !450, size: 1024, elements: !2843)
!2843 = !{!2844}
!2844 = !DISubrange(count: 32)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2818, file: !2782, line: 58, baseType: !2846, size: 2048, offset: 1280)
!2846 = !DICompositeType(tag: DW_TAG_array_type, baseType: !450, size: 2048, elements: !1910)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2818, file: !2782, line: 60, baseType: !2848, size: 384, offset: 3328)
!2848 = !DICompositeType(tag: DW_TAG_array_type, baseType: !450, size: 384, elements: !2849)
!2849 = !{!2850}
!2850 = !DISubrange(count: 12)
!2851 = !DIDerivedType(tag: DW_TAG_member, scope: !2818, file: !2782, line: 62, baseType: !2852, size: 384, offset: 3712)
!2852 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2818, file: !2782, line: 62, size: 384, elements: !2853)
!2853 = !{!2854, !2855}
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2852, file: !2782, line: 63, baseType: !2848, size: 384)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2852, file: !2782, line: 64, baseType: !2848, size: 384)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2800, file: !2782, line: 351, baseType: !2857, size: 1088)
!2857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2782, line: 79, size: 1088, elements: !2858)
!2858 = !{!2859, !2860, !2861, !2862, !2863, !2864, !2865, !2866, !2867, !2868, !2869, !2870, !2871, !2872, !2873, !2932}
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2857, file: !2782, line: 80, baseType: !450, size: 32)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2857, file: !2782, line: 81, baseType: !450, size: 32, offset: 32)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2857, file: !2782, line: 82, baseType: !450, size: 32, offset: 64)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2857, file: !2782, line: 83, baseType: !450, size: 32, offset: 96)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2857, file: !2782, line: 84, baseType: !450, size: 32, offset: 128)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2857, file: !2782, line: 85, baseType: !450, size: 32, offset: 160)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2857, file: !2782, line: 86, baseType: !450, size: 32, offset: 192)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2857, file: !2782, line: 88, baseType: !2813, size: 640, offset: 224)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2857, file: !2782, line: 89, baseType: !206, size: 8, offset: 864)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2857, file: !2782, line: 90, baseType: !206, size: 8, offset: 872)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2857, file: !2782, line: 91, baseType: !206, size: 8, offset: 880)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2857, file: !2782, line: 92, baseType: !206, size: 8, offset: 888)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2857, file: !2782, line: 93, baseType: !206, size: 8, offset: 896)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2857, file: !2782, line: 94, baseType: !206, size: 8, offset: 904)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2857, file: !2782, line: 95, baseType: !2874, size: 64, offset: 960)
!2874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2875, size: 64)
!2875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2876, line: 11, size: 128, elements: !2877)
!2876 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!2877 = !{!2878, !2879}
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2875, file: !2876, line: 12, baseType: !127, size: 64)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2875, file: !2876, line: 13, baseType: !2880, size: 64, offset: 64)
!2880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2881, size: 64)
!2881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2882, line: 103, size: 1344, elements: !2883)
!2882 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!2883 = !{!2884, !2885, !2886, !2887, !2888, !2889, !2890, !2891, !2892, !2893, !2894, !2895, !2896, !2897, !2898, !2899, !2900, !2901, !2912, !2913, !2914}
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2881, file: !2882, line: 109, baseType: !101, size: 64)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2881, file: !2882, line: 110, baseType: !101, size: 64, offset: 64)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2881, file: !2882, line: 111, baseType: !101, size: 64, offset: 128)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2881, file: !2882, line: 112, baseType: !101, size: 64, offset: 192)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2881, file: !2882, line: 113, baseType: !101, size: 64, offset: 256)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2881, file: !2882, line: 114, baseType: !101, size: 64, offset: 320)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2881, file: !2882, line: 117, baseType: !101, size: 64, offset: 384)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2881, file: !2882, line: 118, baseType: !101, size: 64, offset: 448)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2881, file: !2882, line: 119, baseType: !101, size: 64, offset: 512)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2881, file: !2882, line: 120, baseType: !101, size: 64, offset: 576)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2881, file: !2882, line: 121, baseType: !101, size: 64, offset: 640)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2881, file: !2882, line: 122, baseType: !101, size: 64, offset: 704)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2881, file: !2882, line: 123, baseType: !101, size: 64, offset: 768)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2881, file: !2882, line: 124, baseType: !101, size: 64, offset: 832)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2881, file: !2882, line: 125, baseType: !101, size: 64, offset: 896)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2881, file: !2882, line: 139, baseType: !101, size: 64, offset: 960)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2881, file: !2882, line: 142, baseType: !101, size: 64, offset: 1024)
!2901 = !DIDerivedType(tag: DW_TAG_member, scope: !2881, file: !2882, line: 144, baseType: !2902, size: 64, offset: 1088)
!2902 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2881, file: !2882, line: 144, size: 64, elements: !2903)
!2903 = !{!2904, !2905, !2906}
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2902, file: !2882, line: 146, baseType: !214, size: 16)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !2902, file: !2882, line: 148, baseType: !130, size: 64)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !2902, file: !2882, line: 150, baseType: !2907, size: 64)
!2907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !2882, line: 59, size: 64, elements: !2908)
!2908 = !{!2909, !2910, !2911}
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2907, file: !2882, line: 61, baseType: !130, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !2907, file: !2882, line: 63, baseType: !130, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !2907, file: !2882, line: 65, baseType: !130, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2881, file: !2882, line: 153, baseType: !101, size: 64, offset: 1152)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2881, file: !2882, line: 154, baseType: !101, size: 64, offset: 1216)
!2914 = !DIDerivedType(tag: DW_TAG_member, scope: !2881, file: !2882, line: 156, baseType: !2915, size: 64, offset: 1280)
!2915 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2881, file: !2882, line: 156, size: 64, elements: !2916)
!2916 = !{!2917, !2918, !2919}
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2915, file: !2882, line: 158, baseType: !214, size: 16)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !2915, file: !2882, line: 160, baseType: !130, size: 64)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !2915, file: !2882, line: 162, baseType: !2920, size: 64)
!2920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !2882, line: 69, size: 64, elements: !2921)
!2921 = !{!2922, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931}
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2920, file: !2882, line: 71, baseType: !130, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !2920, file: !2882, line: 73, baseType: !130, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !2920, file: !2882, line: 75, baseType: !130, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !2920, file: !2882, line: 77, baseType: !130, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !2920, file: !2882, line: 80, baseType: !130, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2920, file: !2882, line: 83, baseType: !130, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !2920, file: !2882, line: 86, baseType: !130, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !2920, file: !2882, line: 88, baseType: !130, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !2920, file: !2882, line: 93, baseType: !130, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !2920, file: !2882, line: 100, baseType: !130, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2857, file: !2782, line: 96, baseType: !450, size: 32, offset: 1024)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2800, file: !2782, line: 352, baseType: !2934, size: 4608, align: 512)
!2934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2782, line: 333, size: 4608, align: 512, elements: !2935)
!2935 = !{!2936, !2937, !2944}
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2934, file: !2782, line: 334, baseType: !2818, size: 4096, align: 128)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2934, file: !2782, line: 335, baseType: !2938, size: 512, offset: 4096)
!2938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2782, line: 312, size: 512, elements: !2939)
!2939 = !{!2940, !2941, !2942}
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2938, file: !2782, line: 313, baseType: !130, size: 64)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2938, file: !2782, line: 314, baseType: !130, size: 64, offset: 64)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2938, file: !2782, line: 315, baseType: !2943, size: 384, offset: 128)
!2943 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 384, elements: !474)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2934, file: !2782, line: 336, baseType: !2945, offset: 4608)
!2945 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, elements: !355)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2800, file: !2782, line: 353, baseType: !2947, size: 32768)
!2947 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 32768, elements: !2948)
!2948 = !{!2949}
!2949 = !DISubrange(count: 4096)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !2781, file: !2782, line: 484, baseType: !2787, size: 64, offset: 192)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2781, file: !2782, line: 491, baseType: !2952, size: 128, offset: 256)
!2952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !2782, line: 404, size: 128, elements: !2953)
!2953 = !{!2954, !2955, !2956}
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !2952, file: !2782, line: 424, baseType: !130, size: 64)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !2952, file: !2782, line: 432, baseType: !7, size: 32, offset: 64)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !2952, file: !2782, line: 440, baseType: !7, size: 32, offset: 96)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !2781, file: !2782, line: 498, baseType: !2952, size: 128, offset: 384)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !2781, file: !2782, line: 508, baseType: !2788, size: 33280, align: 512, offset: 512)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1257, file: !1258, line: 16, baseType: !340, size: 192, offset: 512)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1257, file: !1258, line: 17, baseType: !170, size: 32, offset: 704)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !864, file: !15, line: 1240, baseType: !224, size: 64, offset: 6912)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !864, file: !15, line: 1243, baseType: !450, size: 32, offset: 6976)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !864, file: !15, line: 1245, baseType: !441, size: 64, offset: 7040)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !864, file: !15, line: 1246, baseType: !441, size: 64, offset: 7104)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !864, file: !15, line: 1248, baseType: !451, size: 32, offset: 7168)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !864, file: !15, line: 1249, baseType: !2967, size: 64, offset: 7232)
!2967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2968, size: 64)
!2968 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !15, line: 634, flags: DIFlagFwdDecl)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !864, file: !15, line: 1252, baseType: !2970, size: 256, offset: 7296)
!2970 = !DICompositeType(tag: DW_TAG_array_type, baseType: !473, size: 256, elements: !2843)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !864, file: !15, line: 1253, baseType: !2972, size: 128, offset: 7552)
!2972 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2973, line: 21, baseType: !2974)
!2973 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!2974 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2973, line: 19, size: 128, elements: !2975)
!2975 = !{!2976}
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2974, file: !2973, line: 20, baseType: !2977, size: 128)
!2977 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 128, elements: !1712)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !864, file: !15, line: 1255, baseType: !7, size: 32, offset: 7680)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !864, file: !15, line: 1261, baseType: !265, size: 256, offset: 7744)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !864, file: !15, line: 1267, baseType: !490, size: 64, offset: 8000)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !864, file: !15, line: 1269, baseType: !2982, size: 64, offset: 8064)
!2982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2983, size: 64)
!2983 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2984)
!2984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !613, line: 128, size: 1024, align: 512, elements: !2985)
!2985 = !{!2986, !2990, !2991, !2998, !3004, !3008, !3012, !3016, !3017, !3021, !3025, !3030, !3034}
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2984, file: !613, line: 129, baseType: !2987, size: 64)
!2987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2988, size: 64)
!2988 = !DISubroutineType(types: !2989)
!2989 = !{!144, !611, !7}
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2984, file: !613, line: 130, baseType: !2987, size: 64, offset: 64)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2984, file: !613, line: 131, baseType: !2992, size: 64, offset: 128)
!2992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2993, size: 64)
!2993 = !DISubroutineType(types: !2994)
!2994 = !{!144, !2995, !2997}
!2995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2996, size: 64)
!2996 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !612)
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2984, file: !613, line: 132, baseType: !2999, size: 64, offset: 192)
!2999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3000, size: 64)
!3000 = !DISubroutineType(types: !3001)
!3001 = !{!144, !2995, !7, !490, !3002}
!3002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3003, size: 64)
!3003 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !636)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2984, file: !613, line: 134, baseType: !3005, size: 64, offset: 256)
!3005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3006, size: 64)
!3006 = !DISubroutineType(types: !3007)
!3007 = !{!144, !2995}
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2984, file: !613, line: 135, baseType: !3009, size: 64, offset: 320)
!3009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3010, size: 64)
!3010 = !DISubroutineType(types: !3011)
!3011 = !{!144, !611}
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2984, file: !613, line: 136, baseType: !3013, size: 64, offset: 384)
!3013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3014, size: 64)
!3014 = !DISubroutineType(types: !3015)
!3015 = !{null, !611}
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2984, file: !613, line: 137, baseType: !3013, size: 64, offset: 448)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2984, file: !613, line: 138, baseType: !3018, size: 64, offset: 512)
!3018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3019, size: 64)
!3019 = !DISubroutineType(types: !3020)
!3020 = !{null, !611, !651}
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2984, file: !613, line: 139, baseType: !3022, size: 64, offset: 576)
!3022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3023, size: 64)
!3023 = !DISubroutineType(types: !3024)
!3024 = !{!500, !611, !500, !144}
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2984, file: !613, line: 140, baseType: !3026, size: 64, offset: 640)
!3026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3027, size: 64)
!3027 = !DISubroutineType(types: !3028)
!3028 = !{!606, !3029}
!3029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2984, file: !613, line: 141, baseType: !3031, size: 64, offset: 704)
!3031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3032, size: 64)
!3032 = !DISubroutineType(types: !3033)
!3033 = !{!144, !773, !487}
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2984, file: !613, line: 142, baseType: !3035, size: 64, offset: 768)
!3035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3036, size: 64)
!3036 = !DISubroutineType(types: !3037)
!3037 = !{!611, !611, !3038}
!3038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3039, size: 64)
!3039 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !652)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !864, file: !15, line: 1271, baseType: !3041, size: 448, offset: 8128)
!3041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1039, line: 63, size: 448, elements: !3042)
!3042 = !{!3043, !3048, !3049, !3050, !3051, !3052, !3053}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3041, file: !1039, line: 64, baseType: !3044, size: 64)
!3044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3045, size: 64)
!3045 = !DISubroutineType(types: !3046)
!3046 = !{!101, !3047, !1037}
!3047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3041, size: 64)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3041, file: !1039, line: 66, baseType: !3044, size: 64, offset: 64)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3041, file: !1039, line: 69, baseType: !127, size: 64, offset: 128)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3041, file: !1039, line: 70, baseType: !144, size: 32, offset: 192)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3041, file: !1039, line: 71, baseType: !7, size: 32, offset: 224)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3041, file: !1039, line: 74, baseType: !277, size: 128, offset: 256)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3041, file: !1039, line: 85, baseType: !3054, size: 64, offset: 384)
!3054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !864, file: !15, line: 1274, baseType: !255, size: 64, offset: 8576)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !864, file: !15, line: 1280, baseType: !255, size: 64, offset: 8640)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !864, file: !15, line: 1283, baseType: !144, size: 32, offset: 8704)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !864, file: !15, line: 1286, baseType: !2362, size: 32, offset: 8736)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !864, file: !15, line: 1289, baseType: !3060, size: 64, offset: 8768)
!3060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3061, size: 64)
!3061 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !3062, line: 18, flags: DIFlagFwdDecl)
!3062 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !864, file: !15, line: 1290, baseType: !327, size: 64, offset: 8832)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !864, file: !15, line: 1297, baseType: !573, size: 64, offset: 8896)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !864, file: !15, line: 1304, baseType: !3066, size: 64, offset: 8960)
!3066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3067, line: 49, size: 64, elements: !3068)
!3067 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3068 = !{!3069}
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3066, file: !3067, line: 50, baseType: !3070, size: 64)
!3070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3071, size: 64)
!3071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3067, line: 41, size: 512, align: 512, elements: !3072)
!3072 = !{!3073, !3074, !3079}
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3071, file: !3067, line: 43, baseType: !182, size: 32)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3071, file: !3067, line: 45, baseType: !3075, size: 192, offset: 64)
!3075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3067, line: 29, size: 192, elements: !3076)
!3076 = !{!3077, !3078}
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3075, file: !3067, line: 30, baseType: !277, size: 128)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3075, file: !3067, line: 32, baseType: !127, size: 64, offset: 128)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3071, file: !3067, line: 46, baseType: !127, size: 64, offset: 256)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !864, file: !15, line: 1305, baseType: !3066, size: 64, offset: 9024)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !864, file: !15, line: 1306, baseType: !242, size: 128, align: 64, offset: 9088)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !864, file: !15, line: 1307, baseType: !3083, size: 256, offset: 9216)
!3083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !3062, line: 98, size: 256, elements: !3084)
!3084 = !{!3085, !3086, !3087}
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3083, file: !3062, line: 99, baseType: !255, size: 64)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3083, file: !3062, line: 100, baseType: !277, size: 128, offset: 64)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3083, file: !3062, line: 101, baseType: !3088, size: 64, offset: 192)
!3088 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !3062, line: 21, baseType: !3089)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = !DISubroutineType(types: !3091)
!3091 = !{null, !3092}
!3092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3083, size: 64)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !864, file: !15, line: 1309, baseType: !265, size: 256, offset: 9472)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !864, file: !15, line: 1314, baseType: !144, size: 32, offset: 9728)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !864, file: !15, line: 1317, baseType: !182, size: 32, align: 512, offset: 10240)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !864, file: !15, line: 1318, baseType: !277, size: 128, offset: 10304)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !864, file: !15, line: 1320, baseType: !182, size: 32, offset: 10432)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !864, file: !15, line: 1321, baseType: !277, size: 128, offset: 10496)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !652, file: !15, line: 656, baseType: !2164, size: 64, offset: 512)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !652, file: !15, line: 659, baseType: !224, size: 64, offset: 576)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !652, file: !15, line: 663, baseType: !101, size: 64, offset: 640)
!3102 = !DIDerivedType(tag: DW_TAG_member, scope: !652, file: !15, line: 671, baseType: !3103, size: 32, offset: 704)
!3103 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !652, file: !15, line: 671, size: 32, elements: !3104)
!3104 = !{!3105, !3107}
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3103, file: !15, line: 672, baseType: !3106, size: 32)
!3106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3103, file: !15, line: 673, baseType: !7, size: 32)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !652, file: !15, line: 675, baseType: !726, size: 32, offset: 736)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !652, file: !15, line: 676, baseType: !283, size: 64, offset: 768)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !652, file: !15, line: 677, baseType: !762, size: 128, offset: 832)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !652, file: !15, line: 678, baseType: !762, size: 128, offset: 960)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !652, file: !15, line: 679, baseType: !762, size: 128, offset: 1088)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !652, file: !15, line: 680, baseType: !182, size: 32, offset: 1216)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !652, file: !15, line: 681, baseType: !216, size: 16, offset: 1248)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !652, file: !15, line: 682, baseType: !206, size: 8, offset: 1264)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !652, file: !15, line: 683, baseType: !206, size: 8, offset: 1272)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !652, file: !15, line: 684, baseType: !1170, size: 64, offset: 1280)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !652, file: !15, line: 691, baseType: !101, size: 64, offset: 1344)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !652, file: !15, line: 692, baseType: !425, size: 320, offset: 1408)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !652, file: !15, line: 694, baseType: !101, size: 64, offset: 1728)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !652, file: !15, line: 695, baseType: !101, size: 64, offset: 1792)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !652, file: !15, line: 697, baseType: !331, size: 128, offset: 1856)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !652, file: !15, line: 698, baseType: !277, size: 128, offset: 1984)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !652, file: !15, line: 707, baseType: !277, size: 128, offset: 2112)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !652, file: !15, line: 708, baseType: !277, size: 128, offset: 2240)
!3126 = !DIDerivedType(tag: DW_TAG_member, scope: !652, file: !15, line: 709, baseType: !3127, size: 128, offset: 2368)
!3127 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !652, file: !15, line: 709, size: 128, elements: !3128)
!3128 = !{!3129, !3130}
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3127, file: !15, line: 710, baseType: !327, size: 64)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3127, file: !15, line: 711, baseType: !242, size: 128, align: 64)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !652, file: !15, line: 713, baseType: !257, size: 64, offset: 2496)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !652, file: !15, line: 714, baseType: !257, size: 64, offset: 2560)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !652, file: !15, line: 715, baseType: !170, size: 32, offset: 2624)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !652, file: !15, line: 716, baseType: !170, size: 32, offset: 2656)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !652, file: !15, line: 717, baseType: !170, size: 32, offset: 2688)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !652, file: !15, line: 719, baseType: !170, size: 32, offset: 2720)
!3137 = !DIDerivedType(tag: DW_TAG_member, scope: !652, file: !15, line: 721, baseType: !3138, size: 64, offset: 2752)
!3138 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !652, file: !15, line: 721, size: 64, elements: !3139)
!3139 = !{!3140, !3269}
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3138, file: !15, line: 722, baseType: !3141, size: 64)
!3141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3142, size: 64)
!3142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3143)
!3143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !15, line: 1914, size: 2112, elements: !3144)
!3144 = !{!3145, !3146, !3150, !3155, !3159, !3160, !3161, !3167, !3180, !3188, !3192, !3193, !3197, !3198, !3202, !3207, !3208, !3212, !3216, !3222, !3223, !3227, !3228, !3232, !3236, !3237, !3242, !3246, !3250, !3254, !3258, !3259, !3265}
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3143, file: !15, line: 1915, baseType: !896, size: 64)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3143, file: !15, line: 1916, baseType: !3147, size: 64, offset: 64)
!3147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3148, size: 64)
!3148 = !DISubroutineType(types: !3149)
!3149 = !{!283, !229, !283, !144}
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3143, file: !15, line: 1917, baseType: !3151, size: 64, offset: 128)
!3151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3152, size: 64)
!3152 = !DISubroutineType(types: !3153)
!3153 = !{!804, !229, !500, !807, !3154}
!3154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3143, file: !15, line: 1918, baseType: !3156, size: 64, offset: 192)
!3156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3157, size: 64)
!3157 = !DISubroutineType(types: !3158)
!3158 = !{!804, !229, !490, !807, !3154}
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3143, file: !15, line: 1919, baseType: !2296, size: 64, offset: 256)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3143, file: !15, line: 1920, baseType: !2296, size: 64, offset: 320)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3143, file: !15, line: 1921, baseType: !3162, size: 64, offset: 384)
!3162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3163, size: 64)
!3163 = !DISubroutineType(types: !3164)
!3164 = !{!144, !2299, !3165, !7}
!3165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3166, size: 64)
!3166 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !15, line: 53, flags: DIFlagFwdDecl)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3143, file: !15, line: 1923, baseType: !3168, size: 64, offset: 448)
!3168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3169, size: 64)
!3169 = !DISubroutineType(types: !3170)
!3170 = !{!144, !229, !3171}
!3171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3172, size: 64)
!3172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !15, line: 1858, size: 128, elements: !3173)
!3173 = !{!3174, !3179}
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3172, file: !15, line: 1859, baseType: !3175, size: 64)
!3175 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !15, line: 1855, baseType: !3176)
!3176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3177, size: 64)
!3177 = !DISubroutineType(types: !3178)
!3178 = !{!487, !3171, !490, !144, !283, !130, !7}
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3172, file: !15, line: 1860, baseType: !283, size: 64, offset: 64)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3143, file: !15, line: 1924, baseType: !3181, size: 64, offset: 512)
!3181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3182, size: 64)
!3182 = !DISubroutineType(types: !3183)
!3183 = !{!3184, !229, !3186}
!3184 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !3185, line: 59, baseType: !7)
!3185 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!3186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3187, size: 64)
!3187 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !15, line: 61, flags: DIFlagFwdDecl)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3143, file: !15, line: 1925, baseType: !3189, size: 64, offset: 576)
!3189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3190, size: 64)
!3190 = !DISubroutineType(types: !3191)
!3191 = !{!127, !229, !7, !101}
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3143, file: !15, line: 1926, baseType: !3189, size: 64, offset: 640)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3143, file: !15, line: 1927, baseType: !3194, size: 64, offset: 704)
!3194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3195, size: 64)
!3195 = !DISubroutineType(types: !3196)
!3196 = !{!144, !229, !2455}
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3143, file: !15, line: 1928, baseType: !101, size: 64, offset: 768)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3143, file: !15, line: 1929, baseType: !3199, size: 64, offset: 832)
!3199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3200, size: 64)
!3200 = !DISubroutineType(types: !3201)
!3201 = !{!144, !651, !229}
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3143, file: !15, line: 1930, baseType: !3203, size: 64, offset: 896)
!3203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3204, size: 64)
!3204 = !DISubroutineType(types: !3205)
!3205 = !{!144, !229, !3206}
!3206 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !15, line: 1061, baseType: !224)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3143, file: !15, line: 1931, baseType: !3199, size: 64, offset: 960)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3143, file: !15, line: 1932, baseType: !3209, size: 64, offset: 1024)
!3209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3210, size: 64)
!3210 = !DISubroutineType(types: !3211)
!3211 = !{!144, !229, !283, !283, !144}
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3143, file: !15, line: 1933, baseType: !3213, size: 64, offset: 1088)
!3213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3214, size: 64)
!3214 = !DISubroutineType(types: !3215)
!3215 = !{!144, !144, !229, !144}
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3143, file: !15, line: 1934, baseType: !3217, size: 64, offset: 1152)
!3217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3218, size: 64)
!3218 = !DISubroutineType(types: !3219)
!3219 = !{!144, !229, !144, !3220}
!3220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3221, size: 64)
!3221 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !15, line: 1063, flags: DIFlagFwdDecl)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3143, file: !15, line: 1935, baseType: !226, size: 64, offset: 1216)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3143, file: !15, line: 1936, baseType: !3224, size: 64, offset: 1280)
!3224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3225, size: 64)
!3225 = !DISubroutineType(types: !3226)
!3226 = !{!144, !144}
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3143, file: !15, line: 1937, baseType: !3217, size: 64, offset: 1344)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3143, file: !15, line: 1938, baseType: !3229, size: 64, offset: 1408)
!3229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3230, size: 64)
!3230 = !DISubroutineType(types: !3231)
!3231 = !{!804, !2136, !229, !3154, !807, !7}
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3143, file: !15, line: 1939, baseType: !3233, size: 64, offset: 1472)
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3234, size: 64)
!3234 = !DISubroutineType(types: !3235)
!3235 = !{!804, !229, !3154, !2136, !807, !7}
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !3143, file: !15, line: 1940, baseType: !2352, size: 64, offset: 1536)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3143, file: !15, line: 1941, baseType: !3238, size: 64, offset: 1600)
!3238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3239, size: 64)
!3239 = !DISubroutineType(types: !3240)
!3240 = !{!144, !229, !144, !3241, !2273}
!3241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3220, size: 64)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3143, file: !15, line: 1942, baseType: !3243, size: 64, offset: 1664)
!3243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3244, size: 64)
!3244 = !DISubroutineType(types: !3245)
!3245 = !{!127, !229, !144, !283, !283}
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3143, file: !15, line: 1944, baseType: !3247, size: 64, offset: 1728)
!3247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3248, size: 64)
!3248 = !DISubroutineType(types: !3249)
!3249 = !{null, !972, !229}
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3143, file: !15, line: 1948, baseType: !3251, size: 64, offset: 1792)
!3251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3252, size: 64)
!3252 = !DISubroutineType(types: !3253)
!3253 = !{!804, !229, !283, !229, !283, !807, !7}
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3143, file: !15, line: 1950, baseType: !3255, size: 64, offset: 1856)
!3255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3256, size: 64)
!3256 = !DISubroutineType(types: !3257)
!3257 = !{!283, !229, !283, !229, !283, !283, !7}
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3143, file: !15, line: 1953, baseType: !3209, size: 64, offset: 1920)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !3143, file: !15, line: 1954, baseType: !3260, size: 64, offset: 1984)
!3260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3261, size: 64)
!3261 = !DISubroutineType(types: !3262)
!3262 = !{!144, !3263, !7}
!3263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3264, size: 64)
!3264 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !15, line: 1911, flags: DIFlagFwdDecl)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !3143, file: !15, line: 1955, baseType: !3266, size: 64, offset: 2048)
!3266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3267, size: 64)
!3267 = !DISubroutineType(types: !3268)
!3268 = !{!144, !3263, !3165, !7}
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3138, file: !15, line: 723, baseType: !922, size: 64)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !652, file: !15, line: 725, baseType: !3271, size: 64, offset: 2816)
!3271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3272, size: 64)
!3272 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !15, line: 725, flags: DIFlagFwdDecl)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !652, file: !15, line: 726, baseType: !2165, size: 1536, align: 64, offset: 2880)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !652, file: !15, line: 727, baseType: !277, size: 128, offset: 4416)
!3275 = !DIDerivedType(tag: DW_TAG_member, scope: !652, file: !15, line: 728, baseType: !3276, size: 64, offset: 4544)
!3276 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !652, file: !15, line: 728, size: 64, elements: !3277)
!3277 = !{!3278, !3279, !3282, !3283}
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3276, file: !15, line: 729, baseType: !2136, size: 64)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3276, file: !15, line: 730, baseType: !3280, size: 64)
!3280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3281, size: 64)
!3281 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !15, line: 730, flags: DIFlagFwdDecl)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3276, file: !15, line: 731, baseType: !500, size: 64)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3276, file: !15, line: 732, baseType: !7, size: 32)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !652, file: !15, line: 735, baseType: !451, size: 32, offset: 4608)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !652, file: !15, line: 738, baseType: !451, size: 32, offset: 4640)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !652, file: !15, line: 739, baseType: !2967, size: 64, offset: 4672)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !652, file: !15, line: 750, baseType: !224, size: 64, offset: 4736)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !612, file: !613, line: 91, baseType: !3289, size: 256, offset: 448)
!3289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !208, size: 256, elements: !2843)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !612, file: !613, line: 94, baseType: !3291, size: 64, offset: 704)
!3291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3292, line: 25, size: 64, elements: !3293)
!3292 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!3293 = !{!3294}
!3294 = !DIDerivedType(tag: DW_TAG_member, scope: !3291, file: !3292, line: 26, baseType: !3295, size: 64)
!3295 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3291, file: !3292, line: 26, size: 64, elements: !3296)
!3296 = !{!3297, !3298}
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !3295, file: !3292, line: 28, baseType: !132, size: 64, align: 64)
!3298 = !DIDerivedType(tag: DW_TAG_member, scope: !3295, file: !3292, line: 30, baseType: !3299, size: 64)
!3299 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3295, file: !3292, line: 30, size: 64, elements: !3300)
!3300 = !{!3301, !3302}
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3299, file: !3292, line: 31, baseType: !182, size: 32)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3299, file: !3292, line: 32, baseType: !144, size: 32, offset: 32)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !612, file: !613, line: 95, baseType: !2982, size: 64, offset: 768)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !612, file: !613, line: 96, baseType: !863, size: 64, offset: 832)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !612, file: !613, line: 97, baseType: !101, size: 64, offset: 896)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !612, file: !613, line: 98, baseType: !224, size: 64, offset: 960)
!3307 = !DIDerivedType(tag: DW_TAG_member, scope: !612, file: !613, line: 100, baseType: !3308, size: 128, offset: 1024)
!3308 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !612, file: !613, line: 100, size: 128, elements: !3309)
!3309 = !{!3310, !3311}
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3308, file: !613, line: 101, baseType: !277, size: 128)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3308, file: !613, line: 102, baseType: !3312, size: 64)
!3312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !612, file: !613, line: 104, baseType: !277, size: 128, offset: 1152)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !612, file: !613, line: 105, baseType: !277, size: 128, offset: 1280)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !612, file: !613, line: 113, baseType: !3316, size: 128, offset: 1408)
!3316 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !612, file: !613, line: 109, size: 128, elements: !3317)
!3317 = !{!3318, !3319, !3320}
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3316, file: !613, line: 110, baseType: !331, size: 128)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3316, file: !613, line: 111, baseType: !627, size: 128)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3316, file: !613, line: 112, baseType: !242, size: 128, align: 64)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !607, file: !608, line: 72, baseType: !863, size: 64, offset: 64)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !607, file: !608, line: 73, baseType: !144, size: 32, offset: 128)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !607, file: !608, line: 74, baseType: !691, size: 64, offset: 192)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !602, file: !603, line: 10, baseType: !611, size: 64, offset: 64)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !230, file: !15, line: 1015, baseType: !651, size: 64, offset: 1344)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !230, file: !15, line: 1016, baseType: !3141, size: 64, offset: 1408)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !230, file: !15, line: 1018, baseType: !130, size: 64, offset: 1472)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !230, file: !15, line: 1020, baseType: !224, size: 64, offset: 1536)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !230, file: !15, line: 1023, baseType: !224, size: 64, offset: 1600)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !230, file: !15, line: 1027, baseType: !3331, size: 64, offset: 1664)
!3331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !230, file: !15, line: 1029, baseType: !2164, size: 64, offset: 1728)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !230, file: !15, line: 1030, baseType: !2362, size: 32, offset: 1792)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !230, file: !15, line: 1031, baseType: !2362, size: 32, offset: 1824)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !164, file: !52, line: 756, baseType: !101, size: 64, offset: 704)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !164, file: !52, line: 757, baseType: !101, size: 64, offset: 768)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !164, file: !52, line: 760, baseType: !101, size: 64, offset: 832)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !164, file: !52, line: 761, baseType: !101, size: 64, offset: 896)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !164, file: !52, line: 763, baseType: !101, size: 64, offset: 960)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !164, file: !52, line: 764, baseType: !153, size: 64, offset: 1024)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !164, file: !52, line: 773, baseType: !170, size: 32, offset: 1088)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !164, file: !52, line: 785, baseType: !170, size: 32, offset: 1120)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !164, file: !52, line: 795, baseType: !3344, size: 64, offset: 1152)
!3344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3345, size: 64)
!3345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !52, line: 726, size: 128, elements: !3346)
!3346 = !{!3347, !3348}
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3345, file: !52, line: 727, baseType: !130, size: 64)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !3345, file: !52, line: 728, baseType: !144, size: 32, offset: 64)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !164, file: !52, line: 801, baseType: !101, size: 64, offset: 1216)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !164, file: !52, line: 804, baseType: !255, size: 64, offset: 1280)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !164, file: !52, line: 806, baseType: !144, size: 32, offset: 1344)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !164, file: !52, line: 808, baseType: !182, size: 32, offset: 1376)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !164, file: !52, line: 823, baseType: !425, size: 320, offset: 1408)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !164, file: !52, line: 825, baseType: !277, size: 128, offset: 1728)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !164, file: !52, line: 845, baseType: !144, size: 32, offset: 1856)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !164, file: !52, line: 849, baseType: !101, size: 64, offset: 1920)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !164, file: !52, line: 850, baseType: !101, size: 64, offset: 1984)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !164, file: !52, line: 852, baseType: !101, size: 64, offset: 2048)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !164, file: !52, line: 853, baseType: !101, size: 64, offset: 2112)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !164, file: !52, line: 854, baseType: !257, size: 64, offset: 2176)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !164, file: !52, line: 855, baseType: !101, size: 64, offset: 2240)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !164, file: !52, line: 856, baseType: !101, size: 64, offset: 2304)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !164, file: !52, line: 857, baseType: !101, size: 64, offset: 2368)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !164, file: !52, line: 858, baseType: !101, size: 64, offset: 2432)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !164, file: !52, line: 865, baseType: !622, size: 32, offset: 2496)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !164, file: !52, line: 867, baseType: !182, size: 32, offset: 2528)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !164, file: !52, line: 869, baseType: !101, size: 64, offset: 2560)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !164, file: !52, line: 869, baseType: !101, size: 64, offset: 2624)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !164, file: !52, line: 869, baseType: !101, size: 64, offset: 2688)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !164, file: !52, line: 869, baseType: !101, size: 64, offset: 2752)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !164, file: !52, line: 870, baseType: !101, size: 64, offset: 2816)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !164, file: !52, line: 870, baseType: !101, size: 64, offset: 2880)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !164, file: !52, line: 870, baseType: !101, size: 64, offset: 2944)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !164, file: !52, line: 871, baseType: !101, size: 64, offset: 3008)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !164, file: !52, line: 871, baseType: !101, size: 64, offset: 3072)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !164, file: !52, line: 871, baseType: !101, size: 64, offset: 3136)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !164, file: !52, line: 871, baseType: !101, size: 64, offset: 3200)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !164, file: !52, line: 873, baseType: !3379, size: 3328, offset: 3264)
!3379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 3328, elements: !3380)
!3380 = !{!3381}
!3381 = !DISubrange(count: 52)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !164, file: !52, line: 875, baseType: !3383, size: 1280, offset: 6592)
!3383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !548, size: 1280, elements: !336)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !164, file: !52, line: 877, baseType: !3385, size: 64, offset: 7872)
!3385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3386, size: 64)
!3386 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !52, line: 877, flags: DIFlagFwdDecl)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !164, file: !52, line: 880, baseType: !3388, size: 1088, offset: 7936)
!3388 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !3389, line: 72, baseType: !3390)
!3389 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!3390 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3389, line: 23, size: 1088, elements: !3391)
!3391 = !{!3392, !3393, !3394, !3395, !3396, !3399, !3400, !3401, !3402, !3406, !3407, !3408}
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !3390, file: !3389, line: 28, baseType: !130, size: 64)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !3390, file: !3389, line: 38, baseType: !257, size: 64, offset: 64)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !3390, file: !3389, line: 40, baseType: !101, size: 64, offset: 128)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !3390, file: !3389, line: 43, baseType: !425, size: 320, offset: 192)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !3390, file: !3389, line: 44, baseType: !3397, size: 64, offset: 512)
!3397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3398, size: 64)
!3398 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !3389, line: 44, flags: DIFlagFwdDecl)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3390, file: !3389, line: 48, baseType: !101, size: 64, offset: 576)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3390, file: !3389, line: 59, baseType: !265, size: 256, offset: 640)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !3390, file: !3389, line: 60, baseType: !224, size: 64, offset: 896)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !3390, file: !3389, line: 61, baseType: !3403, size: 64, offset: 960)
!3403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3404, size: 64)
!3404 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3405)
!3405 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !3389, line: 61, flags: DIFlagFwdDecl)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !3390, file: !3389, line: 63, baseType: !170, size: 32, offset: 1024)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !3390, file: !3389, line: 69, baseType: !214, size: 16, offset: 1056)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !3390, file: !3389, line: 70, baseType: !3409, size: 16, offset: 1072)
!3409 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !131, line: 18, baseType: !3410)
!3410 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !133, line: 23, baseType: !455)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !164, file: !52, line: 882, baseType: !101, size: 64, offset: 9024)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !164, file: !52, line: 885, baseType: !182, size: 32, offset: 9088)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !164, file: !52, line: 886, baseType: !3414, size: 64, offset: 9152)
!3414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3415, size: 64)
!3415 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !52, line: 732, flags: DIFlagFwdDecl)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !164, file: !52, line: 901, baseType: !573, size: 64, offset: 9216)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !164, file: !52, line: 904, baseType: !229, size: 64, offset: 9280)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !164, file: !52, line: 906, baseType: !3419, size: 64, offset: 9344)
!3419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3420, size: 64)
!3420 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !52, line: 906, flags: DIFlagFwdDecl)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !164, file: !52, line: 930, baseType: !170, size: 32, offset: 9408)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !164, file: !52, line: 933, baseType: !170, size: 32, offset: 9440)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !164, file: !52, line: 935, baseType: !3424, size: 64, offset: 9472)
!3424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !68, line: 103, size: 64, elements: !3425)
!3425 = !{!3426}
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !3424, file: !68, line: 104, baseType: !3427, size: 64)
!3427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3428, size: 64)
!3428 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !68, line: 101, flags: DIFlagFwdDecl)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !164, file: !52, line: 940, baseType: !255, size: 64, offset: 9536)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !164, file: !52, line: 942, baseType: !3083, size: 256, offset: 9600)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !161, file: !52, line: 986, baseType: !3432, offset: 10240)
!3432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, elements: !355)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !155, file: !75, line: 110, baseType: !153, size: 64, offset: 128)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !155, file: !75, line: 111, baseType: !2455, size: 64, offset: 192)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !155, file: !75, line: 112, baseType: !74, size: 32, offset: 256)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "no_vma", scope: !155, file: !75, line: 113, baseType: !487, size: 8, offset: 288)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !155, file: !75, line: 114, baseType: !224, size: 64, offset: 320)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "p4d_entry", scope: !147, file: !75, line: 61, baseType: !3439, size: 64, offset: 64)
!3439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3440, size: 64)
!3440 = !DISubroutineType(types: !3441)
!3441 = !{!144, !3442, !101, !101, !154}
!3442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "pud_entry", scope: !147, file: !75, line: 63, baseType: !3444, size: 64, offset: 128)
!3444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3445, size: 64)
!3445 = !DISubroutineType(types: !3446)
!3446 = !{!144, !2569, !101, !101, !154}
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_entry", scope: !147, file: !75, line: 65, baseType: !3448, size: 64, offset: 192)
!3448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3449, size: 64)
!3449 = !DISubroutineType(types: !3450)
!3450 = !{!144, !2567, !101, !101, !154}
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "pte_entry", scope: !147, file: !75, line: 67, baseType: !3452, size: 64, offset: 256)
!3452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3453, size: 64)
!3453 = !DISubroutineType(types: !3454)
!3454 = !{!144, !2578, !101, !101, !154}
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "pte_hole", scope: !147, file: !75, line: 69, baseType: !3456, size: 64, offset: 320)
!3456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3457, size: 64)
!3457 = !DISubroutineType(types: !3458)
!3458 = !{!144, !101, !101, !144, !154}
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_entry", scope: !147, file: !75, line: 71, baseType: !3460, size: 64, offset: 384)
!3460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3461, size: 64)
!3461 = !DISubroutineType(types: !3462)
!3462 = !{!144, !2578, !101, !101, !101, !154}
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "test_walk", scope: !147, file: !75, line: 74, baseType: !3464, size: 64, offset: 448)
!3464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3465, size: 64)
!3465 = !DISubroutineType(types: !3466)
!3466 = !{!144, !101, !101, !154}
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "pre_vma", scope: !147, file: !75, line: 76, baseType: !3464, size: 64, offset: 512)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "post_vma", scope: !147, file: !75, line: 78, baseType: !3469, size: 64, offset: 576)
!3469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3470, size: 64)
!3470 = !DISubroutineType(types: !3471)
!3471 = !{null, !154}
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "walk_lock", scope: !147, file: !75, line: 79, baseType: !80, size: 32, offset: 640)
!3473 = !{i32 7, !"Dwarf Version", i32 5}
!3474 = !{i32 2, !"Debug Info Version", i32 3}
!3475 = !{i32 1, !"wchar_size", i32 2}
!3476 = !{i32 8, !"cf-protection-branch", i32 1}
!3477 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3478 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!3479 = !{i32 1, !"Code Model", i32 2}
!3480 = !{i32 1, !"override-stack-alignment", i32 8}
!3481 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!3482 = distinct !DISubprogram(name: "ptdump_walk_pgd", scope: !3, file: !3, line: 151, type: !3483, scopeLine: 152, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3504)
!3483 = !DISubroutineType(types: !3484)
!3484 = !{null, !3485, !160, !153}
!3485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3486, size: 64)
!3486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptdump_state", file: !3487, line: 13, size: 192, elements: !3488)
!3487 = !DIFile(filename: "./include/linux/ptdump.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d629fdff7421ff9cc9ae21afea25671")
!3488 = !{!3489, !3493, !3497}
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "note_page", scope: !3486, file: !3487, line: 15, baseType: !3490, size: 64)
!3490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3491, size: 64)
!3491 = !DISubroutineType(types: !3492)
!3492 = !{null, !3485, !101, !144, !130}
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "effective_prot", scope: !3486, file: !3487, line: 17, baseType: !3494, size: 64, offset: 64)
!3494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3495, size: 64)
!3495 = !DISubroutineType(types: !3496)
!3496 = !{null, !3485, !144, !130}
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !3486, file: !3487, line: 18, baseType: !3498, size: 64, offset: 128)
!3498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3499, size: 64)
!3499 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3500)
!3500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptdump_range", file: !3487, line: 8, size: 128, elements: !3501)
!3501 = !{!3502, !3503}
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3500, file: !3487, line: 9, baseType: !101, size: 64)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3500, file: !3487, line: 10, baseType: !101, size: 64, offset: 64)
!3504 = !{!3505, !3506, !3507, !3508}
!3505 = !DILocalVariable(name: "st", arg: 1, scope: !3482, file: !3, line: 151, type: !3485)
!3506 = !DILocalVariable(name: "mm", arg: 2, scope: !3482, file: !3, line: 151, type: !160)
!3507 = !DILocalVariable(name: "pgd", arg: 3, scope: !3482, file: !3, line: 151, type: !153)
!3508 = !DILocalVariable(name: "range", scope: !3482, file: !3, line: 153, type: !3498)
!3509 = !DILocation(line: 151, column: 43, scope: !3482)
!3510 = !DILocation(line: 151, column: 65, scope: !3482)
!3511 = !DILocation(line: 151, column: 76, scope: !3482)
!3512 = !DILocation(line: 153, column: 2, scope: !3482)
!3513 = !DILocation(line: 153, column: 29, scope: !3482)
!3514 = !DILocation(line: 153, column: 37, scope: !3482)
!3515 = !DILocation(line: 153, column: 41, scope: !3482)
!3516 = !DILocation(line: 155, column: 18, scope: !3482)
!3517 = !DILocation(line: 155, column: 2, scope: !3482)
!3518 = !DILocation(line: 156, column: 2, scope: !3482)
!3519 = !DILocation(line: 156, column: 9, scope: !3482)
!3520 = !DILocation(line: 156, column: 16, scope: !3482)
!3521 = !DILocation(line: 156, column: 25, scope: !3482)
!3522 = !DILocation(line: 156, column: 32, scope: !3482)
!3523 = !DILocation(line: 156, column: 22, scope: !3482)
!3524 = !DILocation(line: 157, column: 25, scope: !3525)
!3525 = distinct !DILexicalBlock(scope: !3482, file: !3, line: 156, column: 37)
!3526 = !DILocation(line: 157, column: 29, scope: !3525)
!3527 = !DILocation(line: 157, column: 36, scope: !3525)
!3528 = !DILocation(line: 157, column: 43, scope: !3525)
!3529 = !DILocation(line: 157, column: 50, scope: !3525)
!3530 = !DILocation(line: 158, column: 24, scope: !3525)
!3531 = !DILocation(line: 158, column: 29, scope: !3525)
!3532 = !DILocation(line: 157, column: 3, scope: !3525)
!3533 = !DILocation(line: 159, column: 8, scope: !3525)
!3534 = distinct !{!3534, !3518, !3535, !3536, !3537}
!3535 = !DILocation(line: 160, column: 2, scope: !3482)
!3536 = !{!"llvm.loop.mustprogress"}
!3537 = !{!"llvm.loop.unroll.disable"}
!3538 = !DILocation(line: 161, column: 20, scope: !3482)
!3539 = !DILocation(line: 161, column: 2, scope: !3482)
!3540 = !DILocation(line: 164, column: 2, scope: !3482)
!3541 = !DILocation(line: 164, column: 6, scope: !3482)
!3542 = !DILocation(line: 164, column: 16, scope: !3482)
!3543 = !DILocation(line: 165, column: 1, scope: !3482)
!3544 = distinct !DISubprogram(name: "mmap_write_lock", scope: !3545, file: !3545, line: 105, type: !3546, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3548)
!3545 = !DIFile(filename: "./include/linux/mmap_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fd03efe98da879092694cad0501d32bc")
!3546 = !DISubroutineType(types: !3547)
!3547 = !{null, !160}
!3548 = !{!3549}
!3549 = !DILocalVariable(name: "mm", arg: 1, scope: !3544, file: !3545, line: 105, type: !160)
!3550 = !DILocation(line: 105, column: 54, scope: !3544)
!3551 = !DILocation(line: 107, column: 34, scope: !3544)
!3552 = !DILocation(line: 107, column: 2, scope: !3544)
!3553 = !DILocation(line: 108, column: 14, scope: !3544)
!3554 = !DILocation(line: 108, column: 18, scope: !3544)
!3555 = !DILocation(line: 108, column: 2, scope: !3544)
!3556 = !DILocation(line: 109, column: 37, scope: !3544)
!3557 = !DILocation(line: 109, column: 2, scope: !3544)
!3558 = !DILocation(line: 110, column: 1, scope: !3544)
!3559 = !DISubprogram(name: "walk_page_range_novma", scope: !75, file: !75, line: 120, type: !3560, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3560 = !DISubroutineType(types: !3561)
!3561 = !{!144, !160, !101, !101, !158, !153, !224}
!3562 = distinct !DISubprogram(name: "mmap_write_unlock", scope: !3545, file: !3545, line: 129, type: !3546, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3563)
!3563 = !{!3564}
!3564 = !DILocalVariable(name: "mm", arg: 1, scope: !3562, file: !3545, line: 129, type: !160)
!3565 = !DILocation(line: 129, column: 56, scope: !3562)
!3566 = !DILocation(line: 131, column: 29, scope: !3562)
!3567 = !DILocation(line: 131, column: 2, scope: !3562)
!3568 = !DILocation(line: 132, column: 20, scope: !3562)
!3569 = !DILocation(line: 132, column: 2, scope: !3562)
!3570 = !DILocation(line: 133, column: 12, scope: !3562)
!3571 = !DILocation(line: 133, column: 16, scope: !3562)
!3572 = !DILocation(line: 133, column: 2, scope: !3562)
!3573 = !DILocation(line: 134, column: 1, scope: !3562)
!3574 = distinct !DISubprogram(name: "__mmap_lock_trace_start_locking", scope: !3545, file: !3545, line: 25, type: !3575, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3577)
!3575 = !DISubroutineType(types: !3576)
!3576 = !{null, !160, !487}
!3577 = !{!3578, !3579}
!3578 = !DILocalVariable(name: "mm", arg: 1, scope: !3574, file: !3545, line: 25, type: !160)
!3579 = !DILocalVariable(name: "write", arg: 2, scope: !3574, file: !3545, line: 26, type: !487)
!3580 = !DILocation(line: 25, column: 70, scope: !3574)
!3581 = !DILocation(line: 26, column: 15, scope: !3574)
!3582 = !DILocation(line: 28, column: 6, scope: !3583)
!3583 = distinct !DILexicalBlock(scope: !3574, file: !3545, line: 28, column: 6)
!3584 = !DILocation(line: 28, column: 6, scope: !3574)
!3585 = !DILocation(line: 29, column: 38, scope: !3583)
!3586 = !DILocation(line: 29, column: 42, scope: !3583)
!3587 = !{i8 0, i8 2}
!3588 = !DILocation(line: 29, column: 3, scope: !3583)
!3589 = !DILocation(line: 30, column: 1, scope: !3574)
!3590 = !DISubprogram(name: "down_write", scope: !426, file: !426, line: 187, type: !3591, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3591 = !DISubroutineType(types: !3592)
!3592 = !{null, !3593}
!3593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!3594 = distinct !DISubprogram(name: "__mmap_lock_trace_acquire_returned", scope: !3545, file: !3545, line: 32, type: !3595, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3597)
!3595 = !DISubroutineType(types: !3596)
!3596 = !{null, !160, !487, !487}
!3597 = !{!3598, !3599, !3600}
!3598 = !DILocalVariable(name: "mm", arg: 1, scope: !3594, file: !3545, line: 32, type: !160)
!3599 = !DILocalVariable(name: "write", arg: 2, scope: !3594, file: !3545, line: 33, type: !487)
!3600 = !DILocalVariable(name: "success", arg: 3, scope: !3594, file: !3545, line: 33, type: !487)
!3601 = !DILocation(line: 32, column: 73, scope: !3594)
!3602 = !DILocation(line: 33, column: 18, scope: !3594)
!3603 = !DILocation(line: 33, column: 30, scope: !3594)
!3604 = !DILocation(line: 35, column: 6, scope: !3605)
!3605 = distinct !DILexicalBlock(scope: !3594, file: !3545, line: 35, column: 6)
!3606 = !DILocation(line: 35, column: 6, scope: !3594)
!3607 = !DILocation(line: 36, column: 41, scope: !3605)
!3608 = !DILocation(line: 36, column: 45, scope: !3605)
!3609 = !DILocation(line: 36, column: 52, scope: !3605)
!3610 = !DILocation(line: 36, column: 3, scope: !3605)
!3611 = !DILocation(line: 37, column: 1, scope: !3594)
!3612 = distinct !DISubprogram(name: "static_key_false", scope: !3613, file: !3613, line: 205, type: !3614, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3634)
!3613 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!3614 = !DISubroutineType(types: !3615)
!3615 = !{!487, !3616}
!3616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3617, size: 64)
!3617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !3613, line: 85, size: 128, elements: !3618)
!3618 = !{!3619, !3620}
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !3617, file: !3613, line: 86, baseType: !170, size: 32)
!3620 = !DIDerivedType(tag: DW_TAG_member, scope: !3617, file: !3613, line: 101, baseType: !3621, size: 64, offset: 64)
!3621 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3617, file: !3613, line: 101, size: 64, elements: !3622)
!3622 = !{!3623, !3624, !3631}
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3621, file: !3613, line: 102, baseType: !101, size: 64)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !3621, file: !3613, line: 103, baseType: !3625, size: 64)
!3625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3626, size: 64)
!3626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !3613, line: 117, size: 128, elements: !3627)
!3627 = !{!3628, !3629, !3630}
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !3626, file: !3613, line: 118, baseType: !410, size: 32)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !3626, file: !3613, line: 119, baseType: !410, size: 32, offset: 32)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3626, file: !3613, line: 120, baseType: !127, size: 64, offset: 64)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3621, file: !3613, line: 104, baseType: !3632, size: 64)
!3632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3633, size: 64)
!3633 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !3613, line: 104, flags: DIFlagFwdDecl)
!3634 = !{!3635}
!3635 = !DILocalVariable(name: "key", arg: 1, scope: !3612, file: !3613, line: 205, type: !3616)
!3636 = !DILocation(line: 205, column: 65, scope: !3612)
!3637 = !DILocation(line: 207, column: 28, scope: !3612)
!3638 = !DILocation(line: 207, column: 9, scope: !3612)
!3639 = !DILocation(line: 207, column: 2, scope: !3612)
!3640 = !DISubprogram(name: "__mmap_lock_do_trace_start_locking", scope: !3545, file: !3545, line: 20, type: !3575, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3641 = distinct !DISubprogram(name: "arch_static_branch", scope: !3642, file: !3642, line: 25, type: !3643, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3645)
!3642 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!3643 = !DISubroutineType(types: !3644)
!3644 = !{!487, !3616, !487}
!3645 = !{!3646, !3647, !3648}
!3646 = !DILocalVariable(name: "key", arg: 1, scope: !3641, file: !3642, line: 25, type: !3616)
!3647 = !DILocalVariable(name: "branch", arg: 2, scope: !3641, file: !3642, line: 25, type: !487)
!3648 = !DILabel(scope: !3641, name: "l_yes", file: !3642, line: 33)
!3649 = !DILocation(line: 25, column: 67, scope: !3641)
!3650 = !DILocation(line: 25, column: 77, scope: !3641)
!3651 = !DILocation(line: 30, column: 13, scope: !3641)
!3652 = !DILocation(line: 30, column: 28, scope: !3641)
!3653 = !DILocation(line: 30, column: 26, scope: !3641)
!3654 = !DILocation(line: 27, column: 2, scope: !3641)
!3655 = !{i64 1271820, i64 1271864, i64 2148756547, i64 2148756568, i64 2148756594, i64 2148756627, i64 2148756661, i64 2148756685}
!3656 = !DILocation(line: 32, column: 2, scope: !3641)
!3657 = !DILocation(line: 33, column: 1, scope: !3641)
!3658 = !DILocation(line: 34, column: 2, scope: !3641)
!3659 = !DILocation(line: 35, column: 1, scope: !3641)
!3660 = !DISubprogram(name: "__mmap_lock_do_trace_acquire_returned", scope: !3545, file: !3545, line: 21, type: !3595, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3661 = distinct !DISubprogram(name: "ptdump_pgd_entry", scope: !3, file: !3, line: 28, type: !151, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3662)
!3662 = !{!3663, !3664, !3665, !3666, !3667, !3668}
!3663 = !DILocalVariable(name: "pgd", arg: 1, scope: !3661, file: !3, line: 28, type: !153)
!3664 = !DILocalVariable(name: "addr", arg: 2, scope: !3661, file: !3, line: 28, type: !101)
!3665 = !DILocalVariable(name: "next", arg: 3, scope: !3661, file: !3, line: 29, type: !101)
!3666 = !DILocalVariable(name: "walk", arg: 4, scope: !3661, file: !3, line: 29, type: !154)
!3667 = !DILocalVariable(name: "st", scope: !3661, file: !3, line: 31, type: !3485)
!3668 = !DILocalVariable(name: "val", scope: !3661, file: !3, line: 32, type: !94)
!3669 = !DILocation(line: 28, column: 36, scope: !3661)
!3670 = !DILocation(line: 28, column: 55, scope: !3661)
!3671 = !DILocation(line: 29, column: 22, scope: !3661)
!3672 = !DILocation(line: 29, column: 44, scope: !3661)
!3673 = !DILocation(line: 31, column: 2, scope: !3661)
!3674 = !DILocation(line: 31, column: 23, scope: !3661)
!3675 = !DILocation(line: 31, column: 28, scope: !3661)
!3676 = !DILocation(line: 31, column: 34, scope: !3661)
!3677 = !DILocation(line: 32, column: 2, scope: !3661)
!3678 = !DILocation(line: 32, column: 8, scope: !3661)
!3679 = !DILocation(line: 32, column: 14, scope: !3680)
!3680 = distinct !DILexicalBlock(scope: !3661, file: !3, line: 32, column: 14)
!3681 = !DILocation(line: 32, column: 14, scope: !3682)
!3682 = distinct !DILexicalBlock(scope: !3680, file: !3, line: 32, column: 14)
!3683 = !DILocation(line: 40, column: 6, scope: !3684)
!3684 = distinct !DILexicalBlock(scope: !3661, file: !3, line: 40, column: 6)
!3685 = !DILocation(line: 40, column: 10, scope: !3684)
!3686 = !DILocation(line: 40, column: 6, scope: !3661)
!3687 = !DILocation(line: 41, column: 3, scope: !3684)
!3688 = !DILocation(line: 41, column: 7, scope: !3684)
!3689 = !DILocation(line: 41, column: 22, scope: !3684)
!3690 = !DILocation(line: 41, column: 29, scope: !3684)
!3691 = !DILocation(line: 43, column: 6, scope: !3692)
!3692 = distinct !DILexicalBlock(scope: !3661, file: !3, line: 43, column: 6)
!3693 = !DILocation(line: 43, column: 6, scope: !3661)
!3694 = !DILocation(line: 44, column: 3, scope: !3695)
!3695 = distinct !DILexicalBlock(scope: !3692, file: !3, line: 43, column: 21)
!3696 = !DILocation(line: 44, column: 7, scope: !3695)
!3697 = !DILocation(line: 44, column: 17, scope: !3695)
!3698 = !DILocation(line: 44, column: 21, scope: !3695)
!3699 = !DILocation(line: 44, column: 30, scope: !3695)
!3700 = !DILocation(line: 45, column: 3, scope: !3695)
!3701 = !DILocation(line: 45, column: 9, scope: !3695)
!3702 = !DILocation(line: 45, column: 16, scope: !3695)
!3703 = !DILocation(line: 46, column: 2, scope: !3695)
!3704 = !DILocation(line: 49, column: 1, scope: !3661)
!3705 = !DILocation(line: 48, column: 2, scope: !3661)
!3706 = distinct !DISubprogram(name: "ptdump_p4d_entry", scope: !3, file: !3, line: 51, type: !3440, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3707)
!3707 = !{!3708, !3709, !3710, !3711, !3712, !3713}
!3708 = !DILocalVariable(name: "p4d", arg: 1, scope: !3706, file: !3, line: 51, type: !3442)
!3709 = !DILocalVariable(name: "addr", arg: 2, scope: !3706, file: !3, line: 51, type: !101)
!3710 = !DILocalVariable(name: "next", arg: 3, scope: !3706, file: !3, line: 52, type: !101)
!3711 = !DILocalVariable(name: "walk", arg: 4, scope: !3706, file: !3, line: 52, type: !154)
!3712 = !DILocalVariable(name: "st", scope: !3706, file: !3, line: 54, type: !3485)
!3713 = !DILocalVariable(name: "val", scope: !3706, file: !3, line: 55, type: !105)
!3714 = !DILocation(line: 51, column: 36, scope: !3706)
!3715 = !DILocation(line: 51, column: 55, scope: !3706)
!3716 = !DILocation(line: 52, column: 22, scope: !3706)
!3717 = !DILocation(line: 52, column: 44, scope: !3706)
!3718 = !DILocation(line: 54, column: 2, scope: !3706)
!3719 = !DILocation(line: 54, column: 23, scope: !3706)
!3720 = !DILocation(line: 54, column: 28, scope: !3706)
!3721 = !DILocation(line: 54, column: 34, scope: !3706)
!3722 = !DILocation(line: 55, column: 2, scope: !3706)
!3723 = !DILocation(line: 55, column: 8, scope: !3706)
!3724 = !DILocation(line: 55, column: 14, scope: !3725)
!3725 = distinct !DILexicalBlock(scope: !3706, file: !3, line: 55, column: 14)
!3726 = !DILocation(line: 55, column: 14, scope: !3727)
!3727 = distinct !DILexicalBlock(scope: !3725, file: !3, line: 55, column: 14)
!3728 = !DILocation(line: 63, column: 6, scope: !3729)
!3729 = distinct !DILexicalBlock(scope: !3706, file: !3, line: 63, column: 6)
!3730 = !DILocation(line: 63, column: 10, scope: !3729)
!3731 = !DILocation(line: 63, column: 6, scope: !3706)
!3732 = !DILocation(line: 64, column: 3, scope: !3729)
!3733 = !DILocation(line: 64, column: 7, scope: !3729)
!3734 = !DILocation(line: 64, column: 22, scope: !3729)
!3735 = !DILocation(line: 64, column: 29, scope: !3729)
!3736 = !DILocation(line: 66, column: 6, scope: !3737)
!3737 = distinct !DILexicalBlock(scope: !3706, file: !3, line: 66, column: 6)
!3738 = !DILocation(line: 66, column: 6, scope: !3706)
!3739 = !DILocation(line: 67, column: 3, scope: !3740)
!3740 = distinct !DILexicalBlock(scope: !3737, file: !3, line: 66, column: 21)
!3741 = !DILocation(line: 67, column: 7, scope: !3740)
!3742 = !DILocation(line: 67, column: 17, scope: !3740)
!3743 = !DILocation(line: 67, column: 21, scope: !3740)
!3744 = !DILocation(line: 67, column: 30, scope: !3740)
!3745 = !DILocation(line: 68, column: 3, scope: !3740)
!3746 = !DILocation(line: 68, column: 9, scope: !3740)
!3747 = !DILocation(line: 68, column: 16, scope: !3740)
!3748 = !DILocation(line: 69, column: 2, scope: !3740)
!3749 = !DILocation(line: 72, column: 1, scope: !3706)
!3750 = !DILocation(line: 71, column: 2, scope: !3706)
!3751 = distinct !DISubprogram(name: "ptdump_pud_entry", scope: !3, file: !3, line: 74, type: !3445, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3752)
!3752 = !{!3753, !3754, !3755, !3756, !3757, !3758}
!3753 = !DILocalVariable(name: "pud", arg: 1, scope: !3751, file: !3, line: 74, type: !2569)
!3754 = !DILocalVariable(name: "addr", arg: 2, scope: !3751, file: !3, line: 74, type: !101)
!3755 = !DILocalVariable(name: "next", arg: 3, scope: !3751, file: !3, line: 75, type: !101)
!3756 = !DILocalVariable(name: "walk", arg: 4, scope: !3751, file: !3, line: 75, type: !154)
!3757 = !DILocalVariable(name: "st", scope: !3751, file: !3, line: 77, type: !3485)
!3758 = !DILocalVariable(name: "val", scope: !3751, file: !3, line: 78, type: !113)
!3759 = !DILocation(line: 74, column: 36, scope: !3751)
!3760 = !DILocation(line: 74, column: 55, scope: !3751)
!3761 = !DILocation(line: 75, column: 22, scope: !3751)
!3762 = !DILocation(line: 75, column: 44, scope: !3751)
!3763 = !DILocation(line: 77, column: 2, scope: !3751)
!3764 = !DILocation(line: 77, column: 23, scope: !3751)
!3765 = !DILocation(line: 77, column: 28, scope: !3751)
!3766 = !DILocation(line: 77, column: 34, scope: !3751)
!3767 = !DILocation(line: 78, column: 2, scope: !3751)
!3768 = !DILocation(line: 78, column: 8, scope: !3751)
!3769 = !DILocation(line: 78, column: 14, scope: !3770)
!3770 = distinct !DILexicalBlock(scope: !3751, file: !3, line: 78, column: 14)
!3771 = !DILocation(line: 78, column: 14, scope: !3772)
!3772 = distinct !DILexicalBlock(scope: !3770, file: !3, line: 78, column: 14)
!3773 = !DILocation(line: 86, column: 6, scope: !3774)
!3774 = distinct !DILexicalBlock(scope: !3751, file: !3, line: 86, column: 6)
!3775 = !DILocation(line: 86, column: 10, scope: !3774)
!3776 = !DILocation(line: 86, column: 6, scope: !3751)
!3777 = !DILocation(line: 87, column: 3, scope: !3774)
!3778 = !DILocation(line: 87, column: 7, scope: !3774)
!3779 = !DILocation(line: 87, column: 22, scope: !3774)
!3780 = !DILocation(line: 87, column: 29, scope: !3774)
!3781 = !DILocation(line: 89, column: 6, scope: !3782)
!3782 = distinct !DILexicalBlock(scope: !3751, file: !3, line: 89, column: 6)
!3783 = !DILocation(line: 89, column: 6, scope: !3751)
!3784 = !DILocation(line: 90, column: 3, scope: !3785)
!3785 = distinct !DILexicalBlock(scope: !3782, file: !3, line: 89, column: 21)
!3786 = !DILocation(line: 90, column: 7, scope: !3785)
!3787 = !DILocation(line: 90, column: 17, scope: !3785)
!3788 = !DILocation(line: 90, column: 21, scope: !3785)
!3789 = !DILocation(line: 90, column: 30, scope: !3785)
!3790 = !DILocation(line: 91, column: 3, scope: !3785)
!3791 = !DILocation(line: 91, column: 9, scope: !3785)
!3792 = !DILocation(line: 91, column: 16, scope: !3785)
!3793 = !DILocation(line: 92, column: 2, scope: !3785)
!3794 = !DILocation(line: 95, column: 1, scope: !3751)
!3795 = !DILocation(line: 94, column: 2, scope: !3751)
!3796 = distinct !DISubprogram(name: "ptdump_pmd_entry", scope: !3, file: !3, line: 97, type: !3449, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3797)
!3797 = !{!3798, !3799, !3800, !3801, !3802, !3803}
!3798 = !DILocalVariable(name: "pmd", arg: 1, scope: !3796, file: !3, line: 97, type: !2567)
!3799 = !DILocalVariable(name: "addr", arg: 2, scope: !3796, file: !3, line: 97, type: !101)
!3800 = !DILocalVariable(name: "next", arg: 3, scope: !3796, file: !3, line: 98, type: !101)
!3801 = !DILocalVariable(name: "walk", arg: 4, scope: !3796, file: !3, line: 98, type: !154)
!3802 = !DILocalVariable(name: "st", scope: !3796, file: !3, line: 100, type: !3485)
!3803 = !DILocalVariable(name: "val", scope: !3796, file: !3, line: 101, type: !122)
!3804 = !DILocation(line: 97, column: 36, scope: !3796)
!3805 = !DILocation(line: 97, column: 55, scope: !3796)
!3806 = !DILocation(line: 98, column: 22, scope: !3796)
!3807 = !DILocation(line: 98, column: 44, scope: !3796)
!3808 = !DILocation(line: 100, column: 2, scope: !3796)
!3809 = !DILocation(line: 100, column: 23, scope: !3796)
!3810 = !DILocation(line: 100, column: 28, scope: !3796)
!3811 = !DILocation(line: 100, column: 34, scope: !3796)
!3812 = !DILocation(line: 101, column: 2, scope: !3796)
!3813 = !DILocation(line: 101, column: 8, scope: !3796)
!3814 = !DILocation(line: 101, column: 14, scope: !3815)
!3815 = distinct !DILexicalBlock(scope: !3796, file: !3, line: 101, column: 14)
!3816 = !DILocation(line: 101, column: 14, scope: !3817)
!3817 = distinct !DILexicalBlock(scope: !3815, file: !3, line: 101, column: 14)
!3818 = !DILocation(line: 108, column: 6, scope: !3819)
!3819 = distinct !DILexicalBlock(scope: !3796, file: !3, line: 108, column: 6)
!3820 = !DILocation(line: 108, column: 10, scope: !3819)
!3821 = !DILocation(line: 108, column: 6, scope: !3796)
!3822 = !DILocation(line: 109, column: 3, scope: !3819)
!3823 = !DILocation(line: 109, column: 7, scope: !3819)
!3824 = !DILocation(line: 109, column: 22, scope: !3819)
!3825 = !DILocation(line: 109, column: 29, scope: !3819)
!3826 = !DILocation(line: 110, column: 6, scope: !3827)
!3827 = distinct !DILexicalBlock(scope: !3796, file: !3, line: 110, column: 6)
!3828 = !DILocation(line: 110, column: 6, scope: !3796)
!3829 = !DILocation(line: 111, column: 3, scope: !3830)
!3830 = distinct !DILexicalBlock(scope: !3827, file: !3, line: 110, column: 21)
!3831 = !DILocation(line: 111, column: 7, scope: !3830)
!3832 = !DILocation(line: 111, column: 17, scope: !3830)
!3833 = !DILocation(line: 111, column: 21, scope: !3830)
!3834 = !DILocation(line: 111, column: 30, scope: !3830)
!3835 = !DILocation(line: 112, column: 3, scope: !3830)
!3836 = !DILocation(line: 112, column: 9, scope: !3830)
!3837 = !DILocation(line: 112, column: 16, scope: !3830)
!3838 = !DILocation(line: 113, column: 2, scope: !3830)
!3839 = !DILocation(line: 116, column: 1, scope: !3796)
!3840 = !DILocation(line: 115, column: 2, scope: !3796)
!3841 = distinct !DISubprogram(name: "ptdump_pte_entry", scope: !3, file: !3, line: 118, type: !3453, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3842)
!3842 = !{!3843, !3844, !3845, !3846, !3847, !3848}
!3843 = !DILocalVariable(name: "pte", arg: 1, scope: !3841, file: !3, line: 118, type: !2578)
!3844 = !DILocalVariable(name: "addr", arg: 2, scope: !3841, file: !3, line: 118, type: !101)
!3845 = !DILocalVariable(name: "next", arg: 3, scope: !3841, file: !3, line: 119, type: !101)
!3846 = !DILocalVariable(name: "walk", arg: 4, scope: !3841, file: !3, line: 119, type: !154)
!3847 = !DILocalVariable(name: "st", scope: !3841, file: !3, line: 121, type: !3485)
!3848 = !DILocalVariable(name: "val", scope: !3841, file: !3, line: 122, type: !138)
!3849 = !DILocation(line: 118, column: 36, scope: !3841)
!3850 = !DILocation(line: 118, column: 55, scope: !3841)
!3851 = !DILocation(line: 119, column: 22, scope: !3841)
!3852 = !DILocation(line: 119, column: 44, scope: !3841)
!3853 = !DILocation(line: 121, column: 2, scope: !3841)
!3854 = !DILocation(line: 121, column: 23, scope: !3841)
!3855 = !DILocation(line: 121, column: 28, scope: !3841)
!3856 = !DILocation(line: 121, column: 34, scope: !3841)
!3857 = !DILocation(line: 122, column: 2, scope: !3841)
!3858 = !DILocation(line: 122, column: 8, scope: !3841)
!3859 = !DILocation(line: 122, column: 32, scope: !3841)
!3860 = !DILocation(line: 122, column: 14, scope: !3841)
!3861 = !DILocation(line: 124, column: 6, scope: !3862)
!3862 = distinct !DILexicalBlock(scope: !3841, file: !3, line: 124, column: 6)
!3863 = !DILocation(line: 124, column: 10, scope: !3862)
!3864 = !DILocation(line: 124, column: 6, scope: !3841)
!3865 = !DILocation(line: 125, column: 3, scope: !3862)
!3866 = !DILocation(line: 125, column: 7, scope: !3862)
!3867 = !DILocation(line: 125, column: 22, scope: !3862)
!3868 = !DILocation(line: 125, column: 29, scope: !3862)
!3869 = !DILocation(line: 127, column: 2, scope: !3841)
!3870 = !DILocation(line: 127, column: 6, scope: !3841)
!3871 = !DILocation(line: 127, column: 16, scope: !3841)
!3872 = !DILocation(line: 127, column: 20, scope: !3841)
!3873 = !DILocation(line: 127, column: 29, scope: !3841)
!3874 = !DILocation(line: 130, column: 1, scope: !3841)
!3875 = !DILocation(line: 129, column: 2, scope: !3841)
!3876 = distinct !DISubprogram(name: "ptdump_hole", scope: !3, file: !3, line: 132, type: !3457, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3877)
!3877 = !{!3878, !3879, !3880, !3881, !3882}
!3878 = !DILocalVariable(name: "addr", arg: 1, scope: !3876, file: !3, line: 132, type: !101)
!3879 = !DILocalVariable(name: "next", arg: 2, scope: !3876, file: !3, line: 132, type: !101)
!3880 = !DILocalVariable(name: "depth", arg: 3, scope: !3876, file: !3, line: 133, type: !144)
!3881 = !DILocalVariable(name: "walk", arg: 4, scope: !3876, file: !3, line: 133, type: !154)
!3882 = !DILocalVariable(name: "st", scope: !3876, file: !3, line: 135, type: !3485)
!3883 = !DILocation(line: 132, column: 38, scope: !3876)
!3884 = !DILocation(line: 132, column: 58, scope: !3876)
!3885 = !DILocation(line: 133, column: 14, scope: !3876)
!3886 = !DILocation(line: 133, column: 37, scope: !3876)
!3887 = !DILocation(line: 135, column: 2, scope: !3876)
!3888 = !DILocation(line: 135, column: 23, scope: !3876)
!3889 = !DILocation(line: 135, column: 28, scope: !3876)
!3890 = !DILocation(line: 135, column: 34, scope: !3876)
!3891 = !DILocation(line: 137, column: 2, scope: !3876)
!3892 = !DILocation(line: 137, column: 6, scope: !3876)
!3893 = !DILocation(line: 137, column: 16, scope: !3876)
!3894 = !DILocation(line: 137, column: 20, scope: !3876)
!3895 = !DILocation(line: 137, column: 26, scope: !3876)
!3896 = !DILocation(line: 140, column: 1, scope: !3876)
!3897 = !DILocation(line: 139, column: 2, scope: !3876)
!3898 = distinct !DISubprogram(name: "native_pgd_val", scope: !95, file: !95, line: 335, type: !3899, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3901)
!3899 = !DISubroutineType(types: !3900)
!3900 = !{!99, !94}
!3901 = !{!3902}
!3902 = !DILocalVariable(name: "pgd", arg: 1, scope: !3898, file: !95, line: 335, type: !94)
!3903 = !DILocation(line: 335, column: 45, scope: !3898)
!3904 = !DILocation(line: 337, column: 13, scope: !3898)
!3905 = !DILocation(line: 337, column: 17, scope: !3898)
!3906 = !DILocation(line: 337, column: 2, scope: !3898)
!3907 = distinct !DISubprogram(name: "pgd_large", scope: !3908, file: !3908, line: 1406, type: !3909, scopeLine: 1406, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3911)
!3908 = !DIFile(filename: "./arch/x86/include/asm/pgtable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "40a9f4cb2b1b2fff495e3ab16a522abc")
!3909 = !DISubroutineType(types: !3910)
!3910 = !{!144, !94}
!3911 = !{!3912}
!3912 = !DILocalVariable(name: "pgd", arg: 1, scope: !3907, file: !3908, line: 1406, type: !94)
!3913 = !DILocation(line: 1406, column: 35, scope: !3907)
!3914 = !DILocation(line: 1406, column: 42, scope: !3907)
!3915 = distinct !DISubprogram(name: "native_p4d_val", scope: !95, file: !95, line: 353, type: !3916, scopeLine: 354, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3918)
!3916 = !DISubroutineType(types: !3917)
!3917 = !{!109, !105}
!3918 = !{!3919}
!3919 = !DILocalVariable(name: "p4d", arg: 1, scope: !3915, file: !95, line: 353, type: !105)
!3920 = !DILocation(line: 353, column: 45, scope: !3915)
!3921 = !DILocation(line: 355, column: 13, scope: !3915)
!3922 = !DILocation(line: 355, column: 2, scope: !3915)
!3923 = distinct !DISubprogram(name: "p4d_large", scope: !3908, file: !3908, line: 255, type: !3924, scopeLine: 256, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3926)
!3924 = !DISubroutineType(types: !3925)
!3925 = !{!144, !105}
!3926 = !{!3927}
!3927 = !DILocalVariable(name: "p4d", arg: 1, scope: !3923, file: !3908, line: 255, type: !105)
!3928 = !DILocation(line: 255, column: 35, scope: !3923)
!3929 = !DILocation(line: 258, column: 2, scope: !3923)
!3930 = distinct !DISubprogram(name: "native_pud_val", scope: !95, file: !95, line: 379, type: !3931, scopeLine: 380, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3933)
!3931 = !DISubroutineType(types: !3932)
!3932 = !{!117, !113}
!3933 = !{!3934}
!3934 = !DILocalVariable(name: "pud", arg: 1, scope: !3930, file: !95, line: 379, type: !113)
!3935 = !DILocation(line: 379, column: 45, scope: !3930)
!3936 = !DILocation(line: 381, column: 13, scope: !3930)
!3937 = !DILocation(line: 381, column: 2, scope: !3930)
!3938 = distinct !DISubprogram(name: "pud_large", scope: !3908, file: !3908, line: 1073, type: !3939, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3941)
!3939 = !DISubroutineType(types: !3940)
!3940 = !{!144, !113}
!3941 = !{!3942}
!3942 = !DILocalVariable(name: "pud", arg: 1, scope: !3938, file: !3908, line: 1073, type: !113)
!3943 = !DILocation(line: 1073, column: 35, scope: !3938)
!3944 = !DILocation(line: 1075, column: 10, scope: !3938)
!3945 = !DILocation(line: 1075, column: 23, scope: !3938)
!3946 = !DILocation(line: 1075, column: 54, scope: !3938)
!3947 = !DILocation(line: 1075, column: 2, scope: !3938)
!3948 = distinct !DISubprogram(name: "native_pmd_val", scope: !95, file: !95, line: 403, type: !3949, scopeLine: 404, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3951)
!3949 = !DISubroutineType(types: !3950)
!3950 = !{!126, !122}
!3951 = !{!3952}
!3952 = !DILocalVariable(name: "pmd", arg: 1, scope: !3948, file: !95, line: 403, type: !122)
!3953 = !DILocation(line: 403, column: 45, scope: !3948)
!3954 = !DILocation(line: 405, column: 13, scope: !3948)
!3955 = !DILocation(line: 405, column: 2, scope: !3948)
!3956 = distinct !DISubprogram(name: "pmd_large", scope: !3908, file: !3908, line: 264, type: !3957, scopeLine: 265, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3959)
!3957 = !DISubroutineType(types: !3958)
!3958 = !{!144, !122}
!3959 = !{!3960}
!3960 = !DILocalVariable(name: "pte", arg: 1, scope: !3956, file: !3908, line: 264, type: !122)
!3961 = !DILocation(line: 264, column: 35, scope: !3956)
!3962 = !DILocation(line: 266, column: 9, scope: !3956)
!3963 = !DILocation(line: 266, column: 24, scope: !3956)
!3964 = !DILocation(line: 266, column: 2, scope: !3956)
!3965 = distinct !DISubprogram(name: "pmd_flags", scope: !95, file: !95, line: 468, type: !3949, scopeLine: 469, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3966)
!3966 = !{!3967}
!3967 = !DILocalVariable(name: "pmd", arg: 1, scope: !3965, file: !95, line: 468, type: !122)
!3968 = !DILocation(line: 468, column: 40, scope: !3965)
!3969 = !DILocation(line: 470, column: 9, scope: !3965)
!3970 = !DILocation(line: 470, column: 31, scope: !3965)
!3971 = !DILocation(line: 470, column: 29, scope: !3965)
!3972 = !DILocation(line: 470, column: 2, scope: !3965)
!3973 = distinct !DISubprogram(name: "pmd_flags_mask", scope: !95, file: !95, line: 463, type: !3949, scopeLine: 464, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3974)
!3974 = !{!3975}
!3975 = !DILocalVariable(name: "pmd", arg: 1, scope: !3973, file: !95, line: 463, type: !122)
!3976 = !DILocation(line: 463, column: 45, scope: !3973)
!3977 = !DILocation(line: 465, column: 10, scope: !3973)
!3978 = !DILocation(line: 465, column: 9, scope: !3973)
!3979 = !DILocation(line: 465, column: 2, scope: !3973)
!3980 = distinct !DISubprogram(name: "pmd_pfn_mask", scope: !95, file: !95, line: 455, type: !3949, scopeLine: 456, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3981)
!3981 = !{!3982}
!3982 = !DILocalVariable(name: "pmd", arg: 1, scope: !3980, file: !95, line: 455, type: !122)
!3983 = !DILocation(line: 455, column: 43, scope: !3980)
!3984 = !DILocation(line: 457, column: 6, scope: !3985)
!3985 = distinct !DILexicalBlock(scope: !3980, file: !95, line: 457, column: 6)
!3986 = !DILocation(line: 457, column: 26, scope: !3985)
!3987 = !DILocation(line: 457, column: 6, scope: !3980)
!3988 = !DILocation(line: 458, column: 3, scope: !3985)
!3989 = !DILocation(line: 460, column: 3, scope: !3985)
!3990 = !DILocation(line: 461, column: 1, scope: !3980)
!3991 = distinct !DISubprogram(name: "ptep_get_lockless", scope: !3992, file: !3992, line: 502, type: !3993, scopeLine: 503, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3995)
!3992 = !DIFile(filename: "./include/linux/pgtable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "42556a9f65ab908dd6bd67424d19f5be")
!3993 = !DISubroutineType(types: !3994)
!3994 = !{!138, !2578}
!3995 = !{!3996}
!3996 = !DILocalVariable(name: "ptep", arg: 1, scope: !3991, file: !3992, line: 502, type: !2578)
!3997 = !DILocation(line: 502, column: 46, scope: !3991)
!3998 = !DILocation(line: 504, column: 18, scope: !3991)
!3999 = !DILocation(line: 504, column: 9, scope: !3991)
!4000 = !DILocation(line: 504, column: 2, scope: !3991)
!4001 = distinct !DISubprogram(name: "native_pte_val", scope: !95, file: !95, line: 478, type: !4002, scopeLine: 479, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4004)
!4002 = !DISubroutineType(types: !4003)
!4003 = !{!118, !138}
!4004 = !{!4005}
!4005 = !DILocalVariable(name: "pte", arg: 1, scope: !4001, file: !95, line: 478, type: !138)
!4006 = !DILocation(line: 478, column: 45, scope: !4001)
!4007 = !DILocation(line: 480, column: 13, scope: !4001)
!4008 = !DILocation(line: 480, column: 2, scope: !4001)
!4009 = distinct !DISubprogram(name: "ptep_get", scope: !3992, file: !3992, line: 282, type: !3993, scopeLine: 283, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4010)
!4010 = !{!4011}
!4011 = !DILocalVariable(name: "ptep", arg: 1, scope: !4009, file: !3992, line: 282, type: !2578)
!4012 = !DILocation(line: 282, column: 37, scope: !4009)
!4013 = !DILocation(line: 284, column: 9, scope: !4014)
!4014 = distinct !DILexicalBlock(scope: !4009, file: !3992, line: 284, column: 9)
!4015 = !DILocation(line: 284, column: 9, scope: !4016)
!4016 = distinct !DILexicalBlock(scope: !4014, file: !3992, line: 284, column: 9)
!4017 = !DILocation(line: 284, column: 2, scope: !4009)
!4018 = distinct !DISubprogram(name: "__mmap_lock_trace_released", scope: !3545, file: !3545, line: 39, type: !3575, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4019)
!4019 = !{!4020, !4021}
!4020 = !DILocalVariable(name: "mm", arg: 1, scope: !4018, file: !3545, line: 39, type: !160)
!4021 = !DILocalVariable(name: "write", arg: 2, scope: !4018, file: !3545, line: 39, type: !487)
!4022 = !DILocation(line: 39, column: 65, scope: !4018)
!4023 = !DILocation(line: 39, column: 74, scope: !4018)
!4024 = !DILocation(line: 41, column: 6, scope: !4025)
!4025 = distinct !DILexicalBlock(scope: !4018, file: !3545, line: 41, column: 6)
!4026 = !DILocation(line: 41, column: 6, scope: !4018)
!4027 = !DILocation(line: 42, column: 33, scope: !4025)
!4028 = !DILocation(line: 42, column: 37, scope: !4025)
!4029 = !DILocation(line: 42, column: 3, scope: !4025)
!4030 = !DILocation(line: 43, column: 1, scope: !4018)
!4031 = distinct !DISubprogram(name: "vma_end_write_all", scope: !3545, file: !3545, line: 84, type: !3546, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4032)
!4032 = !{!4033}
!4033 = !DILocalVariable(name: "mm", arg: 1, scope: !4031, file: !3545, line: 84, type: !160)
!4034 = !DILocation(line: 84, column: 56, scope: !4031)
!4035 = !DILocation(line: 86, column: 27, scope: !4031)
!4036 = !DILocation(line: 86, column: 2, scope: !4031)
!4037 = !DILocation(line: 94, column: 2, scope: !4031)
!4038 = !DILocation(line: 94, column: 2, scope: !4039)
!4039 = distinct !DILexicalBlock(scope: !4031, file: !3545, line: 94, column: 2)
!4040 = !DILocation(line: 94, column: 2, scope: !4041)
!4041 = distinct !DILexicalBlock(scope: !4039, file: !3545, line: 94, column: 2)
!4042 = !DILocation(line: 94, column: 2, scope: !4043)
!4043 = distinct !DILexicalBlock(scope: !4039, file: !3545, line: 94, column: 2)
!4044 = !DILocation(line: 94, column: 2, scope: !4045)
!4045 = distinct !DILexicalBlock(scope: !4043, file: !3545, line: 94, column: 2)
!4046 = !{i64 2151431045}
!4047 = !DILocation(line: 94, column: 2, scope: !4048)
!4048 = distinct !DILexicalBlock(scope: !4043, file: !3545, line: 94, column: 2)
!4049 = !DILocation(line: 94, column: 2, scope: !4050)
!4050 = distinct !DILexicalBlock(scope: !4048, file: !3545, line: 94, column: 2)
!4051 = !DILocation(line: 94, column: 2, scope: !4052)
!4052 = distinct !DILexicalBlock(scope: !4048, file: !3545, line: 94, column: 2)
!4053 = !DILocation(line: 95, column: 1, scope: !4031)
!4054 = !DISubprogram(name: "up_write", scope: !426, file: !426, line: 203, type: !3591, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4055 = !DISubprogram(name: "__mmap_lock_do_trace_released", scope: !3545, file: !3545, line: 23, type: !3575, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4056 = distinct !DISubprogram(name: "mmap_assert_write_locked", scope: !3545, file: !3545, line: 69, type: !3546, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4057)
!4057 = !{!4058}
!4058 = !DILocalVariable(name: "mm", arg: 1, scope: !4056, file: !3545, line: 69, type: !160)
!4059 = !DILocation(line: 69, column: 63, scope: !4056)
!4060 = !DILocation(line: 71, column: 2, scope: !4056)
!4061 = !DILocation(line: 71, column: 2, scope: !4062)
!4062 = distinct !DILexicalBlock(scope: !4056, file: !3545, line: 71, column: 2)
!4063 = !DILocation(line: 73, column: 1, scope: !4056)
