; ModuleID = 'lib/stackdepot.c'
source_filename = "lib/stackdepot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_stack_depot_init: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad stack_depot_init ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___stack_depot_save: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad __stack_depot_save ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_stack_depot_save: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad stack_depot_save ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_stack_depot_fetch: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad stack_depot_fetch ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_stack_depot_print: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad stack_depot_print ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_stack_depot_snprint: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad stack_depot_snprint ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_stack_depot_set_extra_bits: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad stack_depot_set_extra_bits ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_stack_depot_get_extra_bits: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad stack_depot_get_extra_bits ; .previous"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%union.handle_parts = type { i32 }
%struct.stack_record = type { ptr, i32, i32, %union.handle_parts, [0 x i64] }

@__setup_str_disable_stack_depot = internal constant [20 x i8] c"stack_depot_disable\00", section ".init.rodata", align 1, !dbg !0
@__setup_disable_stack_depot = internal global %struct.obs_kernel_param { ptr @__setup_str_disable_stack_depot, ptr @disable_stack_depot, i32 1 }, section ".init.setup", align 8, !dbg !3428
@__stack_depot_early_init_passed = internal global i8 0, section ".init.data", align 1, !dbg !3494
@.str = private unnamed_addr constant [17 x i8] c"lib/stackdepot.c\00", align 1, !dbg !3439
@__stack_depot_early_init_requested = internal global i8 0, section ".init.data", align 1, !dbg !3515
@stack_bucket_number_order = internal global i32 0, align 4, !dbg !3499
@stack_depot_disabled = internal global i8 0, align 1, !dbg !3492
@.str.1 = private unnamed_addr constant [65 x i8] c"\016stackdepot: allocating hash table via alloc_large_system_hash\0A\00", align 1, !dbg !3444
@.str.2 = private unnamed_addr constant [11 x i8] c"stackdepot\00", align 1, !dbg !3449
@stack_hash_mask = internal global i32 0, align 4, !dbg !3501
@stack_table = internal global ptr null, align 8, !dbg !3496
@.str.3 = private unnamed_addr constant [55 x i8] c"\013stackdepot: hash table allocation failed, disabling\0A\00", align 1, !dbg !3454
@stack_depot_init.stack_depot_init_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @stack_depot_init.stack_depot_init_mutex, i64 16), ptr getelementptr (i8, ptr @stack_depot_init.stack_depot_init_mutex, i64 16) } }, align 8, !dbg !3459
@.str.4 = private unnamed_addr constant [65 x i8] c"\016stackdepot: allocating hash table of %lu entries via kvcalloc\0A\00", align 1, !dbg !3471
@__UNIQUE_ID___addressable_stack_depot_init277 = internal global ptr @stack_depot_init, section ".discard.addressable", align 8, !dbg !3473
@next_pool_required = internal global i32 1, align 4, !dbg !3517
@pool_lock = internal global %struct.raw_spinlock zeroinitializer, align 4, !dbg !3519
@__UNIQUE_ID___addressable___stack_depot_save291 = internal global ptr @__stack_depot_save, section ".discard.addressable", align 8, !dbg !3475
@__UNIQUE_ID___addressable_stack_depot_save292 = internal global ptr @stack_depot_save, section ".discard.addressable", align 8, !dbg !3477
@pool_index = internal global i32 0, align 4, !dbg !3508
@.str.5 = private unnamed_addr constant [52 x i8] c"pool index %d out of bounds (%d) for stack id %08x\0A\00", align 1, !dbg !3479
@stack_pools = internal global [8192 x ptr] zeroinitializer, align 16, !dbg !3503
@__UNIQUE_ID___addressable_stack_depot_fetch294 = internal global ptr @stack_depot_fetch, section ".discard.addressable", align 8, !dbg !3482
@__UNIQUE_ID___addressable_stack_depot_print295 = internal global ptr @stack_depot_print, section ".discard.addressable", align 8, !dbg !3484
@__UNIQUE_ID___addressable_stack_depot_snprint296 = internal global ptr @stack_depot_snprint, section ".discard.addressable", align 8, !dbg !3486
@__UNIQUE_ID___addressable_stack_depot_set_extra_bits297 = internal global ptr @stack_depot_set_extra_bits, section ".discard.addressable", align 8, !dbg !3488
@__UNIQUE_ID___addressable_stack_depot_get_extra_bits298 = internal global ptr @stack_depot_get_extra_bits, section ".discard.addressable", align 8, !dbg !3490
@.str.6 = private unnamed_addr constant [24 x i8] c"\016stackdepot: disabled\0A\00", align 1, !dbg !3510
@vmemmap_base = external dso_local global i64, align 8
@page_offset_base = external dso_local global i64, align 8
@pool_offset = internal global i64 0, align 8, !dbg !3555
@depot_alloc_stack.__already_done = internal global i8 0, section ".data..once", align 1, !dbg !3521
@.str.7 = private unnamed_addr constant [35 x i8] c"Stack depot reached limit capacity\00", align 1, !dbg !3550
@llvm.compiler.used = appending global [9 x ptr] [ptr @__setup_disable_stack_depot, ptr @__UNIQUE_ID___addressable_stack_depot_init277, ptr @__UNIQUE_ID___addressable___stack_depot_save291, ptr @__UNIQUE_ID___addressable_stack_depot_save292, ptr @__UNIQUE_ID___addressable_stack_depot_fetch294, ptr @__UNIQUE_ID___addressable_stack_depot_print295, ptr @__UNIQUE_ID___addressable_stack_depot_snprint296, ptr @__UNIQUE_ID___addressable_stack_depot_set_extra_bits297, ptr @__UNIQUE_ID___addressable_stack_depot_get_extra_bits298], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @disable_stack_depot(ptr noundef %str) #0 section ".init.text" align 16 !dbg !3567 {
entry:
  %str.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !3569, metadata !DIExpression()), !dbg !3571
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !3572
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3570, metadata !DIExpression()), !dbg !3573
  %0 = load ptr, ptr %str.addr, align 8, !dbg !3574
  %call = call i32 @kstrtobool(ptr noundef %0, ptr noundef @stack_depot_disabled) #17, !dbg !3575
  store i32 %call, ptr %ret, align 4, !dbg !3576
  %1 = load i32, ptr %ret, align 4, !dbg !3577
  %tobool = icmp ne i32 %1, 0, !dbg !3577
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !3579

land.lhs.true:                                    ; preds = %entry
  %2 = load i8, ptr @stack_depot_disabled, align 1, !dbg !3580, !range !3581, !noundef !405
  %tobool1 = trunc i8 %2 to i1, !dbg !3580
  br i1 %tobool1, label %if.then, label %if.end, !dbg !3582

if.then:                                          ; preds = %land.lhs.true
  br label %do.body, !dbg !3583

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !3586

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3586

do.end:                                           ; preds = %do.cond
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef @.str.6) #18, !dbg !3583
  store i32 %call2, ptr %tmp, align 4, !dbg !3586
  %3 = load i32, ptr %tmp, align 4, !dbg !3583
  store ptr null, ptr @stack_table, align 8, !dbg !3588
  br label %if.end, !dbg !3589

if.end:                                           ; preds = %do.end, %land.lhs.true, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !3590
  ret i32 0, !dbg !3591
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @stack_depot_request_early_init() #0 section ".init.text" align 16 !dbg !3592 {
entry:
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !3599
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !3594, metadata !DIExpression()), !dbg !3599
  %0 = load i8, ptr @__stack_depot_early_init_passed, align 1, !dbg !3599, !range !3581, !noundef !405
  %tobool = trunc i8 %0 to i1, !dbg !3599
  %lnot = xor i1 %tobool, true, !dbg !3599
  %lnot1 = xor i1 %lnot, true, !dbg !3599
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3599
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !3599
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !3600
  %tobool2 = icmp ne i32 %1, 0, !dbg !3600
  %lnot3 = xor i1 %tobool2, true, !dbg !3600
  %lnot5 = xor i1 %lnot3, true, !dbg !3600
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !3600
  %conv = sext i32 %lnot.ext6 to i64, !dbg !3600
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3600
  %tobool7 = icmp ne i64 %expval, 0, !dbg !3600
  br i1 %tobool7, label %if.then, label %if.end, !dbg !3599

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !3600

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #16, !dbg !3601
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !3596, metadata !DIExpression()), !dbg !3601
  store i32 2305, ptr %__flags, align 4, !dbg !3601
  br label %do.body8, !dbg !3601

do.body8:                                         ; preds = %do.body
  br label %do.cond, !dbg !3602

do.cond:                                          ; preds = %do.body8
  br label %do.end, !dbg !3602

do.end:                                           ; preds = %do.cond
  br label %do.body9, !dbg !3601

do.body9:                                         ; preds = %do.end
  %2 = load i32, ptr %__flags, align 4, !dbg !3604
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 118, i32 %2, i64 12) #16, !dbg !3604, !srcloc !3606
  br label %do.cond10, !dbg !3604

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !3604

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !3601

do.body12:                                        ; preds = %do.end11
  br label %do.cond13, !dbg !3607

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !3607

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #16, !dbg !3600
  br label %do.cond15, !dbg !3601

do.cond15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !3601

do.end16:                                         ; preds = %do.cond15
  br label %if.end, !dbg !3601

if.end:                                           ; preds = %do.end16, %entry
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !3599
  %tobool17 = icmp ne i32 %3, 0, !dbg !3599
  %lnot18 = xor i1 %tobool17, true, !dbg !3599
  %lnot20 = xor i1 %lnot18, true, !dbg !3599
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !3599
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !3599
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !3599
  store i64 %expval23, ptr %tmp, align 8, !dbg !3600
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !3609
  %4 = load i64, ptr %tmp, align 8, !dbg !3599
  store i8 1, ptr @__stack_depot_early_init_requested, align 1, !dbg !3610
  ret void, !dbg !3611
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @stack_depot_early_init() #0 section ".init.text" align 16 !dbg !3612 {
entry:
  %retval = alloca i32, align 4
  %entries = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp42 = alloca i32, align 4
  %tmp50 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %entries) #16, !dbg !3621
  call void @llvm.dbg.declare(metadata ptr %entries, metadata !3614, metadata !DIExpression()), !dbg !3622
  store i64 0, ptr %entries, align 8, !dbg !3622
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !3623
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !3615, metadata !DIExpression()), !dbg !3623
  %0 = load i8, ptr @__stack_depot_early_init_passed, align 1, !dbg !3623, !range !3581, !noundef !405
  %tobool = trunc i8 %0 to i1, !dbg !3623
  %lnot = xor i1 %tobool, true, !dbg !3623
  %lnot1 = xor i1 %lnot, true, !dbg !3623
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3623
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !3623
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !3624
  %tobool2 = icmp ne i32 %1, 0, !dbg !3624
  %lnot3 = xor i1 %tobool2, true, !dbg !3624
  %lnot5 = xor i1 %lnot3, true, !dbg !3624
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !3624
  %conv = sext i32 %lnot.ext6 to i64, !dbg !3624
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3624
  %tobool7 = icmp ne i64 %expval, 0, !dbg !3624
  br i1 %tobool7, label %if.then, label %if.end, !dbg !3623

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !3624

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #16, !dbg !3625
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !3618, metadata !DIExpression()), !dbg !3625
  store i32 2305, ptr %__flags, align 4, !dbg !3625
  br label %do.body8, !dbg !3625

do.body8:                                         ; preds = %do.body
  br label %do.cond, !dbg !3626

do.cond:                                          ; preds = %do.body8
  br label %do.end, !dbg !3626

do.end:                                           ; preds = %do.cond
  br label %do.body9, !dbg !3625

do.body9:                                         ; preds = %do.end
  %2 = load i32, ptr %__flags, align 4, !dbg !3628
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 129, i32 %2, i64 12) #16, !dbg !3628, !srcloc !3630
  br label %do.cond10, !dbg !3628

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !3628

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !3625

do.body12:                                        ; preds = %do.end11
  br label %do.cond13, !dbg !3631

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !3631

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #16, !dbg !3624
  br label %do.cond15, !dbg !3625

do.cond15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !3625

do.end16:                                         ; preds = %do.cond15
  br label %if.end, !dbg !3625

if.end:                                           ; preds = %do.end16, %entry
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !3623
  %tobool17 = icmp ne i32 %3, 0, !dbg !3623
  %lnot18 = xor i1 %tobool17, true, !dbg !3623
  %lnot20 = xor i1 %lnot18, true, !dbg !3623
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !3623
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !3623
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !3623
  store i64 %expval23, ptr %tmp, align 8, !dbg !3624
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !3633
  %4 = load i64, ptr %tmp, align 8, !dbg !3623
  %tobool24 = icmp ne i64 %4, 0, !dbg !3633
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !3634

if.then25:                                        ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !3635
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3635

if.end26:                                         ; preds = %if.end
  store i8 1, ptr @__stack_depot_early_init_passed, align 1, !dbg !3636
  %call = call zeroext i1 @kasan_enabled() #17, !dbg !3637
  br i1 %call, label %land.lhs.true, label %if.end30, !dbg !3639

land.lhs.true:                                    ; preds = %if.end26
  %5 = load i32, ptr @stack_bucket_number_order, align 4, !dbg !3640
  %tobool28 = icmp ne i32 %5, 0, !dbg !3640
  br i1 %tobool28, label %if.end30, label %if.then29, !dbg !3641

if.then29:                                        ; preds = %land.lhs.true
  store i32 20, ptr @stack_bucket_number_order, align 4, !dbg !3642
  br label %if.end30, !dbg !3643

if.end30:                                         ; preds = %if.then29, %land.lhs.true, %if.end26
  %6 = load i8, ptr @__stack_depot_early_init_requested, align 1, !dbg !3644, !range !3581, !noundef !405
  %tobool31 = trunc i8 %6 to i1, !dbg !3644
  br i1 %tobool31, label %lor.lhs.false, label %if.then34, !dbg !3646

lor.lhs.false:                                    ; preds = %if.end30
  %7 = load i8, ptr @stack_depot_disabled, align 1, !dbg !3647, !range !3581, !noundef !405
  %tobool32 = trunc i8 %7 to i1, !dbg !3647
  br i1 %tobool32, label %if.then34, label %if.end35, !dbg !3648

if.then34:                                        ; preds = %lor.lhs.false, %if.end30
  store i32 0, ptr %retval, align 4, !dbg !3649
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3649

if.end35:                                         ; preds = %lor.lhs.false
  %8 = load i32, ptr @stack_bucket_number_order, align 4, !dbg !3650
  %tobool36 = icmp ne i32 %8, 0, !dbg !3650
  br i1 %tobool36, label %if.then37, label %if.end38, !dbg !3652

if.then37:                                        ; preds = %if.end35
  %9 = load i32, ptr @stack_bucket_number_order, align 4, !dbg !3653
  %sh_prom = zext i32 %9 to i64, !dbg !3654
  %shl = shl i64 1, %sh_prom, !dbg !3654
  store i64 %shl, ptr %entries, align 8, !dbg !3655
  br label %if.end38, !dbg !3656

if.end38:                                         ; preds = %if.then37, %if.end35
  br label %do.body39, !dbg !3657

do.body39:                                        ; preds = %if.end38
  br label %do.cond40, !dbg !3659

do.cond40:                                        ; preds = %do.body39
  br label %do.end41, !dbg !3659

do.end41:                                         ; preds = %do.cond40
  %call43 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1) #18, !dbg !3657
  store i32 %call43, ptr %tmp42, align 4, !dbg !3659
  %10 = load i32, ptr %tmp42, align 4, !dbg !3657
  %11 = load i64, ptr %entries, align 8, !dbg !3661
  %call44 = call ptr @alloc_large_system_hash(ptr noundef @.str.2, i64 noundef 8, i64 noundef %11, i32 noundef 14, i32 noundef 3, ptr noundef null, ptr noundef @stack_hash_mask, i64 noundef 4096, i64 noundef 1048576) #17, !dbg !3662
  store ptr %call44, ptr @stack_table, align 8, !dbg !3663
  %12 = load ptr, ptr @stack_table, align 8, !dbg !3664
  %tobool45 = icmp ne ptr %12, null, !dbg !3664
  br i1 %tobool45, label %if.end52, label %if.then46, !dbg !3666

if.then46:                                        ; preds = %do.end41
  br label %do.body47, !dbg !3667

do.body47:                                        ; preds = %if.then46
  br label %do.cond48, !dbg !3670

do.cond48:                                        ; preds = %do.body47
  br label %do.end49, !dbg !3670

do.end49:                                         ; preds = %do.cond48
  %call51 = call i32 (ptr, ...) @_printk(ptr noundef @.str.3) #18, !dbg !3667
  store i32 %call51, ptr %tmp50, align 4, !dbg !3670
  %13 = load i32, ptr %tmp50, align 4, !dbg !3667
  store i8 1, ptr @stack_depot_disabled, align 1, !dbg !3672
  store i32 -12, ptr %retval, align 4, !dbg !3673
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3673

if.end52:                                         ; preds = %do.end41
  store i32 0, ptr %retval, align 4, !dbg !3674
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3674

cleanup:                                          ; preds = %if.end52, %do.end49, %if.then34, %if.then25
  call void @llvm.lifetime.end.p0(i64 8, ptr %entries) #16, !dbg !3675
  %14 = load i32, ptr %retval, align 4, !dbg !3675
  ret i32 %14, !dbg !3675
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_enabled() #4 align 16 !dbg !3676 {
entry:
  ret i1 false, !dbg !3680
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !3681 dso_local i32 @_printk(ptr noundef, ...) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3685 dso_local ptr @alloc_large_system_hash(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @stack_depot_init() #7 align 16 !dbg !3461 {
entry:
  %entries = alloca i64, align 8
  %ret = alloca i32, align 4
  %scale = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp48 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %entries) #16, !dbg !3689
  call void @llvm.dbg.declare(metadata ptr %entries, metadata !3465, metadata !DIExpression()), !dbg !3690
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !3691
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3466, metadata !DIExpression()), !dbg !3692
  store i32 0, ptr %ret, align 4, !dbg !3692
  call void @mutex_lock(ptr noundef @stack_depot_init.stack_depot_init_mutex) #17, !dbg !3693
  %0 = load i8, ptr @stack_depot_disabled, align 1, !dbg !3694, !range !3581, !noundef !405
  %tobool = trunc i8 %0 to i1, !dbg !3694
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !3696

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr @stack_table, align 8, !dbg !3697
  %tobool1 = icmp ne ptr %1, null, !dbg !3697
  br i1 %tobool1, label %if.then, label %if.end, !dbg !3698

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %out_unlock, !dbg !3699

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i32, ptr @stack_bucket_number_order, align 4, !dbg !3700
  %tobool2 = icmp ne i32 %2, 0, !dbg !3700
  br i1 %tobool2, label %if.then3, label %if.else, !dbg !3701

if.then3:                                         ; preds = %if.end
  %3 = load i32, ptr @stack_bucket_number_order, align 4, !dbg !3702
  %sh_prom = zext i32 %3 to i64, !dbg !3704
  %shl = shl i64 1, %sh_prom, !dbg !3704
  store i64 %shl, ptr %entries, align 8, !dbg !3705
  br label %if.end34, !dbg !3706

if.else:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %scale) #16, !dbg !3707
  call void @llvm.dbg.declare(metadata ptr %scale, metadata !3467, metadata !DIExpression()), !dbg !3708
  store i32 14, ptr %scale, align 4, !dbg !3708
  %call = call i64 @nr_free_buffer_pages() #17, !dbg !3709
  store i64 %call, ptr %entries, align 8, !dbg !3710
  %4 = load i64, ptr %entries, align 8, !dbg !3711
  %5 = call i1 @llvm.is.constant.i64(i64 %4), !dbg !3711
  br i1 %5, label %cond.true, label %cond.false21, !dbg !3711

cond.true:                                        ; preds = %if.else
  %6 = load i64, ptr %entries, align 8, !dbg !3711
  %cmp = icmp eq i64 %6, 1, !dbg !3711
  br i1 %cmp, label %cond.true4, label %cond.false, !dbg !3711

cond.true4:                                       ; preds = %cond.true
  br label %cond.end19, !dbg !3711

cond.false:                                       ; preds = %cond.true
  %7 = load i64, ptr %entries, align 8, !dbg !3711
  %sub = sub i64 %7, 1, !dbg !3711
  %8 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !3711
  br i1 %8, label %cond.true5, label %cond.false12, !dbg !3711

cond.true5:                                       ; preds = %cond.false
  %9 = load i64, ptr %entries, align 8, !dbg !3711
  %sub6 = sub i64 %9, 1, !dbg !3711
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !3711
  br i1 %cmp7, label %cond.true8, label %cond.false9, !dbg !3711

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end, !dbg !3711

cond.false9:                                      ; preds = %cond.true5
  %10 = load i64, ptr %entries, align 8, !dbg !3711
  %sub10 = sub i64 %10, 1, !dbg !3711
  %11 = call i64 @llvm.ctlz.i64(i64 %sub10, i1 true), !dbg !3711
  %cast = trunc i64 %11 to i32, !dbg !3711
  %sub11 = sub i32 63, %cast, !dbg !3711
  br label %cond.end, !dbg !3711

cond.end:                                         ; preds = %cond.false9, %cond.true8
  %cond = phi i32 [ 0, %cond.true8 ], [ %sub11, %cond.false9 ], !dbg !3711
  br label %cond.end15, !dbg !3711

cond.false12:                                     ; preds = %cond.false
  %12 = load i64, ptr %entries, align 8, !dbg !3711
  %sub13 = sub i64 %12, 1, !dbg !3711
  %call14 = call i32 @__ilog2_u64(i64 noundef %sub13) #19, !dbg !3711
  br label %cond.end15, !dbg !3711

cond.end15:                                       ; preds = %cond.false12, %cond.end
  %cond16 = phi i32 [ %cond, %cond.end ], [ %call14, %cond.false12 ], !dbg !3711
  %add = add i32 %cond16, 1, !dbg !3711
  %sh_prom17 = zext i32 %add to i64, !dbg !3711
  %shl18 = shl i64 1, %sh_prom17, !dbg !3711
  br label %cond.end19, !dbg !3711

cond.end19:                                       ; preds = %cond.end15, %cond.true4
  %cond20 = phi i64 [ 1, %cond.true4 ], [ %shl18, %cond.end15 ], !dbg !3711
  br label %cond.end23, !dbg !3711

cond.false21:                                     ; preds = %if.else
  %13 = load i64, ptr %entries, align 8, !dbg !3711
  %call22 = call i64 @__roundup_pow_of_two(i64 noundef %13) #19, !dbg !3711
  br label %cond.end23, !dbg !3711

cond.end23:                                       ; preds = %cond.false21, %cond.end19
  %cond24 = phi i64 [ %cond20, %cond.end19 ], [ %call22, %cond.false21 ], !dbg !3711
  store i64 %cond24, ptr %entries, align 8, !dbg !3712
  %14 = load i32, ptr %scale, align 4, !dbg !3713
  %cmp25 = icmp sgt i32 %14, 12, !dbg !3715
  br i1 %cmp25, label %if.then26, label %if.else29, !dbg !3716

if.then26:                                        ; preds = %cond.end23
  %15 = load i32, ptr %scale, align 4, !dbg !3717
  %sub27 = sub i32 %15, 12, !dbg !3718
  %16 = load i64, ptr %entries, align 8, !dbg !3719
  %sh_prom28 = zext i32 %sub27 to i64, !dbg !3719
  %shr = lshr i64 %16, %sh_prom28, !dbg !3719
  store i64 %shr, ptr %entries, align 8, !dbg !3719
  br label %if.end33, !dbg !3720

if.else29:                                        ; preds = %cond.end23
  %17 = load i32, ptr %scale, align 4, !dbg !3721
  %sub30 = sub i32 12, %17, !dbg !3722
  %18 = load i64, ptr %entries, align 8, !dbg !3723
  %sh_prom31 = zext i32 %sub30 to i64, !dbg !3723
  %shl32 = shl i64 %18, %sh_prom31, !dbg !3723
  store i64 %shl32, ptr %entries, align 8, !dbg !3723
  br label %if.end33

if.end33:                                         ; preds = %if.else29, %if.then26
  call void @llvm.lifetime.end.p0(i64 4, ptr %scale) #16, !dbg !3724
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.then3
  %19 = load i64, ptr %entries, align 8, !dbg !3725
  %cmp35 = icmp ult i64 %19, 4096, !dbg !3727
  br i1 %cmp35, label %if.then36, label %if.end37, !dbg !3728

if.then36:                                        ; preds = %if.end34
  store i64 4096, ptr %entries, align 8, !dbg !3729
  br label %if.end37, !dbg !3730

if.end37:                                         ; preds = %if.then36, %if.end34
  %20 = load i64, ptr %entries, align 8, !dbg !3731
  %cmp38 = icmp ugt i64 %20, 1048576, !dbg !3733
  br i1 %cmp38, label %if.then39, label %if.end40, !dbg !3734

if.then39:                                        ; preds = %if.end37
  store i64 1048576, ptr %entries, align 8, !dbg !3735
  br label %if.end40, !dbg !3736

if.end40:                                         ; preds = %if.then39, %if.end37
  br label %do.body, !dbg !3737

do.body:                                          ; preds = %if.end40
  br label %do.cond, !dbg !3739

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3739

do.end:                                           ; preds = %do.cond
  %21 = load i64, ptr %entries, align 8, !dbg !3737
  %call41 = call i32 (ptr, ...) @_printk(ptr noundef @.str.4, i64 noundef %21) #18, !dbg !3737
  store i32 %call41, ptr %tmp, align 4, !dbg !3739
  %22 = load i32, ptr %tmp, align 4, !dbg !3737
  %23 = load i64, ptr %entries, align 8, !dbg !3741
  %call42 = call noalias ptr @kvcalloc(i64 noundef %23, i64 noundef 8, i32 noundef 3264) #20, !dbg !3742
  store ptr %call42, ptr @stack_table, align 8, !dbg !3743
  %24 = load ptr, ptr @stack_table, align 8, !dbg !3744
  %tobool43 = icmp ne ptr %24, null, !dbg !3744
  br i1 %tobool43, label %if.end50, label %if.then44, !dbg !3746

if.then44:                                        ; preds = %do.end
  br label %do.body45, !dbg !3747

do.body45:                                        ; preds = %if.then44
  br label %do.cond46, !dbg !3750

do.cond46:                                        ; preds = %do.body45
  br label %do.end47, !dbg !3750

do.end47:                                         ; preds = %do.cond46
  %call49 = call i32 (ptr, ...) @_printk(ptr noundef @.str.3) #18, !dbg !3747
  store i32 %call49, ptr %tmp48, align 4, !dbg !3750
  %25 = load i32, ptr %tmp48, align 4, !dbg !3747
  store i8 1, ptr @stack_depot_disabled, align 1, !dbg !3752
  store i32 -12, ptr %ret, align 4, !dbg !3753
  br label %out_unlock, !dbg !3754

if.end50:                                         ; preds = %do.end
  %26 = load i64, ptr %entries, align 8, !dbg !3755
  %sub51 = sub i64 %26, 1, !dbg !3756
  %conv = trunc i64 %sub51 to i32, !dbg !3755
  store i32 %conv, ptr @stack_hash_mask, align 4, !dbg !3757
  br label %out_unlock, !dbg !3758

out_unlock:                                       ; preds = %if.end50, %do.end47, %if.then
  call void @llvm.dbg.label(metadata !3470), !dbg !3759
  call void @mutex_unlock(ptr noundef @stack_depot_init.stack_depot_init_mutex) #17, !dbg !3760
  %27 = load i32, ptr %ret, align 4, !dbg !3761
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !3762
  call void @llvm.lifetime.end.p0(i64 8, ptr %entries) #16, !dbg !3762
  ret i32 %27, !dbg !3763
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3764 dso_local void @mutex_lock(ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3768 dso_local i64 @nr_free_buffer_pages() #6

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define internal i32 @__ilog2_u64(i64 noundef %n) #9 align 16 !dbg !3771 {
entry:
  %n.addr = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !3776, metadata !DIExpression()), !dbg !3777
  %0 = load i64, ptr %n.addr, align 8, !dbg !3778
  %call = call i32 @fls64(i64 noundef %0) #17, !dbg !3779
  %sub = sub i32 %call, 1, !dbg !3780
  ret i32 %sub, !dbg !3781
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define internal i64 @__roundup_pow_of_two(i64 noundef %n) #10 align 16 !dbg !3782 {
entry:
  %n.addr = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !3786, metadata !DIExpression()), !dbg !3787
  %0 = load i64, ptr %n.addr, align 8, !dbg !3788
  %sub = sub i64 %0, 1, !dbg !3789
  %call = call i32 @fls_long(i64 noundef %sub) #17, !dbg !3790
  %sh_prom = zext i32 %call to i64, !dbg !3791
  %shl = shl i64 1, %sh_prom, !dbg !3791
  ret i64 %shl, !dbg !3792
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kvcalloc(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #11 align 16 !dbg !3793 {
entry:
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !3798, metadata !DIExpression()), !dbg !3801
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3799, metadata !DIExpression()), !dbg !3802
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3800, metadata !DIExpression()), !dbg !3803
  %0 = load i64, ptr %n.addr, align 8, !dbg !3804
  %1 = load i64, ptr %size.addr, align 8, !dbg !3805
  %2 = load i32, ptr %flags.addr, align 4, !dbg !3806
  %or = or i32 %2, 256, !dbg !3807
  %call = call noalias ptr @kvmalloc_array(i64 noundef %0, i64 noundef %1, i32 noundef %or) #20, !dbg !3808
  ret ptr %call, !dbg !3809
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3810 dso_local void @mutex_unlock(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__stack_depot_save(ptr noundef %entries, i32 noundef %nr_entries, i32 noundef %alloc_flags, i1 noundef zeroext %can_alloc) #7 align 16 !dbg !3811 {
entry:
  %entries.addr = alloca ptr, align 8
  %nr_entries.addr = alloca i32, align 4
  %alloc_flags.addr = alloca i32, align 4
  %can_alloc.addr = alloca i8, align 1
  %found = alloca ptr, align 8
  %bucket = alloca ptr, align 8
  %retval1 = alloca %union.handle_parts, align 4
  %page = alloca ptr, align 8
  %prealloc = alloca ptr, align 8
  %flags = alloca i64, align 8
  %hash = alloca i32, align 4
  %___p1 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp9 = alloca ptr, align 8
  %___p116 = alloca i32, align 4
  %tmp20 = alloca i32, align 4
  %tmp24 = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp45 = alloca i32, align 4
  %new = alloca ptr, align 8
  %__dummy82 = alloca i64, align 8
  %__dummy283 = alloca i64, align 8
  %tmp86 = alloca i32, align 4
  store ptr %entries, ptr %entries.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entries.addr, metadata !3815, metadata !DIExpression()), !dbg !3844
  store i32 %nr_entries, ptr %nr_entries.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nr_entries.addr, metadata !3816, metadata !DIExpression()), !dbg !3845
  store i32 %alloc_flags, ptr %alloc_flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %alloc_flags.addr, metadata !3817, metadata !DIExpression()), !dbg !3846
  %frombool = zext i1 %can_alloc to i8
  store i8 %frombool, ptr %can_alloc.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %can_alloc.addr, metadata !3818, metadata !DIExpression()), !dbg !3847
  call void @llvm.lifetime.start.p0(i64 8, ptr %found) #16, !dbg !3848
  call void @llvm.dbg.declare(metadata ptr %found, metadata !3819, metadata !DIExpression()), !dbg !3849
  store ptr null, ptr %found, align 8, !dbg !3849
  call void @llvm.lifetime.start.p0(i64 8, ptr %bucket) #16, !dbg !3848
  call void @llvm.dbg.declare(metadata ptr %bucket, metadata !3820, metadata !DIExpression()), !dbg !3850
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #16, !dbg !3851
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !3821, metadata !DIExpression()), !dbg !3852
  call void @llvm.memset.p0.i64(ptr align 4 %retval1, i8 0, i64 4, i1 false), !dbg !3852
  call void @llvm.lifetime.start.p0(i64 8, ptr %page) #16, !dbg !3853
  call void @llvm.dbg.declare(metadata ptr %page, metadata !3822, metadata !DIExpression()), !dbg !3854
  store ptr null, ptr %page, align 8, !dbg !3854
  call void @llvm.lifetime.start.p0(i64 8, ptr %prealloc) #16, !dbg !3855
  call void @llvm.dbg.declare(metadata ptr %prealloc, metadata !3823, metadata !DIExpression()), !dbg !3856
  store ptr null, ptr %prealloc, align 8, !dbg !3856
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #16, !dbg !3857
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !3824, metadata !DIExpression()), !dbg !3858
  call void @llvm.lifetime.start.p0(i64 4, ptr %hash) #16, !dbg !3859
  call void @llvm.dbg.declare(metadata ptr %hash, metadata !3825, metadata !DIExpression()), !dbg !3860
  %0 = load ptr, ptr %entries.addr, align 8, !dbg !3861
  %1 = load i32, ptr %nr_entries.addr, align 4, !dbg !3862
  %call = call i32 @filter_irq_stacks(ptr noundef %0, i32 noundef %1) #17, !dbg !3863
  store i32 %call, ptr %nr_entries.addr, align 4, !dbg !3864
  %2 = load i32, ptr %nr_entries.addr, align 4, !dbg !3865
  %cmp = icmp eq i32 %2, 0, !dbg !3865
  %lnot = xor i1 %cmp, true, !dbg !3865
  %lnot2 = xor i1 %lnot, true, !dbg !3865
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !3865
  %conv = sext i32 %lnot.ext to i64, !dbg !3865
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3865
  %tobool = icmp ne i64 %expval, 0, !dbg !3865
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !3867

lor.lhs.false:                                    ; preds = %entry
  %3 = load i8, ptr @stack_depot_disabled, align 1, !dbg !3868, !range !3581, !noundef !405
  %tobool3 = trunc i8 %3 to i1, !dbg !3868
  br i1 %tobool3, label %if.then, label %if.end, !dbg !3869

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %fast_exit, !dbg !3870

if.end:                                           ; preds = %lor.lhs.false
  %4 = load ptr, ptr %entries.addr, align 8, !dbg !3871
  %5 = load i32, ptr %nr_entries.addr, align 4, !dbg !3872
  %call5 = call i32 @hash_stack(ptr noundef %4, i32 noundef %5) #17, !dbg !3873
  store i32 %call5, ptr %hash, align 4, !dbg !3874
  %6 = load ptr, ptr @stack_table, align 8, !dbg !3875
  %7 = load i32, ptr %hash, align 4, !dbg !3876
  %8 = load i32, ptr @stack_hash_mask, align 4, !dbg !3877
  %and = and i32 %7, %8, !dbg !3878
  %idxprom = zext i32 %and to i64, !dbg !3875
  %arrayidx = getelementptr ptr, ptr %6, i64 %idxprom, !dbg !3875
  store ptr %arrayidx, ptr %bucket, align 8, !dbg !3879
  call void @llvm.lifetime.start.p0(i64 8, ptr %___p1) #16, !dbg !3880
  call void @llvm.dbg.declare(metadata ptr %___p1, metadata !3826, metadata !DIExpression()), !dbg !3880
  br label %do.body, !dbg !3881

do.body:                                          ; preds = %if.end
  br label %do.cond, !dbg !3883

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3883

do.end:                                           ; preds = %do.cond
  %9 = load ptr, ptr %bucket, align 8, !dbg !3881
  %10 = load volatile ptr, ptr %9, align 8, !dbg !3881
  store ptr %10, ptr %tmp, align 8, !dbg !3883
  %11 = load ptr, ptr %tmp, align 8, !dbg !3881
  store ptr %11, ptr %___p1, align 8, !dbg !3880
  br label %do.body6, !dbg !3880

do.body6:                                         ; preds = %do.end
  br label %do.cond7, !dbg !3885

do.cond7:                                         ; preds = %do.body6
  br label %do.end8, !dbg !3885

do.end8:                                          ; preds = %do.cond7
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !dbg !3880, !srcloc !3887
  %12 = load ptr, ptr %___p1, align 8, !dbg !3880
  store ptr %12, ptr %tmp9, align 8, !dbg !3880
  call void @llvm.lifetime.end.p0(i64 8, ptr %___p1) #16, !dbg !3888
  %13 = load ptr, ptr %tmp9, align 8, !dbg !3880
  %14 = load ptr, ptr %entries.addr, align 8, !dbg !3889
  %15 = load i32, ptr %nr_entries.addr, align 4, !dbg !3890
  %16 = load i32, ptr %hash, align 4, !dbg !3891
  %call10 = call ptr @find_stack(ptr noundef %13, ptr noundef %14, i32 noundef %15, i32 noundef %16) #17, !dbg !3892
  store ptr %call10, ptr %found, align 8, !dbg !3893
  %17 = load ptr, ptr %found, align 8, !dbg !3894
  %tobool11 = icmp ne ptr %17, null, !dbg !3894
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !3896

if.then12:                                        ; preds = %do.end8
  br label %exit, !dbg !3897

if.end13:                                         ; preds = %do.end8
  %18 = load i8, ptr %can_alloc.addr, align 1, !dbg !3898, !range !3581, !noundef !405
  %tobool14 = trunc i8 %18 to i1, !dbg !3898
  br i1 %tobool14, label %land.rhs, label %land.end, !dbg !3898

land.rhs:                                         ; preds = %if.end13
  call void @llvm.lifetime.start.p0(i64 4, ptr %___p116) #16, !dbg !3899
  call void @llvm.dbg.declare(metadata ptr %___p116, metadata !3828, metadata !DIExpression()), !dbg !3899
  br label %do.body17, !dbg !3900

do.body17:                                        ; preds = %land.rhs
  br label %do.cond18, !dbg !3902

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !3902

do.end19:                                         ; preds = %do.cond18
  %19 = load volatile i32, ptr @next_pool_required, align 4, !dbg !3900
  store i32 %19, ptr %tmp20, align 4, !dbg !3902
  %20 = load i32, ptr %tmp20, align 4, !dbg !3900
  store i32 %20, ptr %___p116, align 4, !dbg !3899
  br label %do.body21, !dbg !3899

do.body21:                                        ; preds = %do.end19
  br label %do.cond22, !dbg !3904

do.cond22:                                        ; preds = %do.body21
  br label %do.end23, !dbg !3904

do.end23:                                         ; preds = %do.cond22
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !dbg !3899, !srcloc !3906
  %21 = load i32, ptr %___p116, align 4, !dbg !3899
  store i32 %21, ptr %tmp24, align 4, !dbg !3899
  call void @llvm.lifetime.end.p0(i64 4, ptr %___p116) #16, !dbg !3898
  %22 = load i32, ptr %tmp24, align 4, !dbg !3899
  %tobool25 = icmp ne i32 %22, 0, !dbg !3898
  br label %land.end

land.end:                                         ; preds = %do.end23, %if.end13
  %23 = phi i1 [ false, %if.end13 ], [ %tobool25, %do.end23 ], !dbg !3907
  %lnot26 = xor i1 %23, true, !dbg !3898
  %lnot28 = xor i1 %lnot26, true, !dbg !3898
  %lnot.ext29 = zext i1 %lnot28 to i32, !dbg !3898
  %conv30 = sext i32 %lnot.ext29 to i64, !dbg !3898
  %expval31 = call i64 @llvm.expect.i64(i64 %conv30, i64 0), !dbg !3898
  %tobool32 = icmp ne i64 %expval31, 0, !dbg !3898
  br i1 %tobool32, label %if.then33, label %if.end41, !dbg !3908

if.then33:                                        ; preds = %land.end
  %24 = load i32, ptr %alloc_flags.addr, align 4, !dbg !3909
  %and34 = and i32 %24, -16, !dbg !3909
  store i32 %and34, ptr %alloc_flags.addr, align 4, !dbg !3909
  %25 = load i32, ptr %alloc_flags.addr, align 4, !dbg !3911
  %and35 = and i32 %25, 3296, !dbg !3911
  store i32 %and35, ptr %alloc_flags.addr, align 4, !dbg !3911
  %26 = load i32, ptr %alloc_flags.addr, align 4, !dbg !3912
  %or = or i32 %26, 8192, !dbg !3912
  store i32 %or, ptr %alloc_flags.addr, align 4, !dbg !3912
  %27 = load i32, ptr %alloc_flags.addr, align 4, !dbg !3913
  %call36 = call ptr @alloc_pages(i32 noundef %27, i32 noundef 2) #17, !dbg !3914
  store ptr %call36, ptr %page, align 8, !dbg !3915
  %28 = load ptr, ptr %page, align 8, !dbg !3916
  %tobool37 = icmp ne ptr %28, null, !dbg !3916
  br i1 %tobool37, label %if.then38, label %if.end40, !dbg !3918

if.then38:                                        ; preds = %if.then33
  %29 = load ptr, ptr %page, align 8, !dbg !3919
  %call39 = call ptr @lowmem_page_address(ptr noundef %29) #17, !dbg !3919
  store ptr %call39, ptr %prealloc, align 8, !dbg !3920
  br label %if.end40, !dbg !3921

if.end40:                                         ; preds = %if.then38, %if.then33
  br label %if.end41, !dbg !3922

if.end41:                                         ; preds = %if.end40, %land.end
  br label %do.body42, !dbg !3923

do.body42:                                        ; preds = %if.end41
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #16, !dbg !3924
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !3831, metadata !DIExpression()), !dbg !3924
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #16, !dbg !3924
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !3834, metadata !DIExpression()), !dbg !3924
  %cmp43 = icmp eq ptr %__dummy, %__dummy2, !dbg !3924
  %conv44 = zext i1 %cmp43 to i32, !dbg !3924
  store i32 1, ptr %tmp45, align 4, !dbg !3924
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #16, !dbg !3925
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #16, !dbg !3925
  %30 = load i32, ptr %tmp45, align 4, !dbg !3924
  %call46 = call i64 @_raw_spin_lock_irqsave(ptr noundef @pool_lock) #17, !dbg !3925
  store i64 %call46, ptr %flags, align 8, !dbg !3925
  br label %do.cond47, !dbg !3925

do.cond47:                                        ; preds = %do.body42
  br label %do.end48, !dbg !3925

do.end48:                                         ; preds = %do.cond47
  %31 = load ptr, ptr %bucket, align 8, !dbg !3926
  %32 = load ptr, ptr %31, align 8, !dbg !3927
  %33 = load ptr, ptr %entries.addr, align 8, !dbg !3928
  %34 = load i32, ptr %nr_entries.addr, align 4, !dbg !3929
  %35 = load i32, ptr %hash, align 4, !dbg !3930
  %call49 = call ptr @find_stack(ptr noundef %32, ptr noundef %33, i32 noundef %34, i32 noundef %35) #17, !dbg !3931
  store ptr %call49, ptr %found, align 8, !dbg !3932
  %36 = load ptr, ptr %found, align 8, !dbg !3933
  %tobool50 = icmp ne ptr %36, null, !dbg !3933
  br i1 %tobool50, label %if.else, label %if.then51, !dbg !3934

if.then51:                                        ; preds = %do.end48
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #16, !dbg !3935
  call void @llvm.dbg.declare(metadata ptr %new, metadata !3835, metadata !DIExpression()), !dbg !3936
  %37 = load ptr, ptr %entries.addr, align 8, !dbg !3937
  %38 = load i32, ptr %nr_entries.addr, align 4, !dbg !3938
  %39 = load i32, ptr %hash, align 4, !dbg !3939
  %call52 = call ptr @depot_alloc_stack(ptr noundef %37, i32 noundef %38, i32 noundef %39, ptr noundef %prealloc) #17, !dbg !3940
  store ptr %call52, ptr %new, align 8, !dbg !3936
  %40 = load ptr, ptr %new, align 8, !dbg !3941
  %tobool53 = icmp ne ptr %40, null, !dbg !3941
  br i1 %tobool53, label %if.then54, label %if.end76, !dbg !3943

if.then54:                                        ; preds = %if.then51
  %41 = load ptr, ptr %bucket, align 8, !dbg !3944
  %42 = load ptr, ptr %41, align 8, !dbg !3946
  %43 = load ptr, ptr %new, align 8, !dbg !3947
  %next = getelementptr inbounds %struct.stack_record, ptr %43, i32 0, i32 0, !dbg !3948
  store ptr %42, ptr %next, align 8, !dbg !3949
  br label %do.body55, !dbg !3950

do.body55:                                        ; preds = %if.then54
  br label %do.body56, !dbg !3951

do.body56:                                        ; preds = %do.body55
  br label %do.cond57, !dbg !3953

do.cond57:                                        ; preds = %do.body56
  br label %do.end58, !dbg !3953

do.end58:                                         ; preds = %do.cond57
  br label %do.body59, !dbg !3951

do.body59:                                        ; preds = %do.end58
  br label %do.body60, !dbg !3955

do.body60:                                        ; preds = %do.body59
  br label %do.cond61, !dbg !3957

do.cond61:                                        ; preds = %do.body60
  br label %do.end62, !dbg !3957

do.end62:                                         ; preds = %do.cond61
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !dbg !3955, !srcloc !3959
  br label %do.body63, !dbg !3955

do.body63:                                        ; preds = %do.end62
  br label %do.body64, !dbg !3960

do.body64:                                        ; preds = %do.body63
  br label %do.cond65, !dbg !3962

do.cond65:                                        ; preds = %do.body64
  br label %do.end66, !dbg !3962

do.end66:                                         ; preds = %do.cond65
  br label %do.body67, !dbg !3960

do.body67:                                        ; preds = %do.end66
  %44 = load ptr, ptr %new, align 8, !dbg !3964
  %45 = load ptr, ptr %bucket, align 8, !dbg !3964
  store volatile ptr %44, ptr %45, align 8, !dbg !3964
  br label %do.cond68, !dbg !3964

do.cond68:                                        ; preds = %do.body67
  br label %do.end69, !dbg !3964

do.end69:                                         ; preds = %do.cond68
  br label %do.cond70, !dbg !3960

do.cond70:                                        ; preds = %do.end69
  br label %do.end71, !dbg !3960

do.end71:                                         ; preds = %do.cond70
  br label %do.cond72, !dbg !3955

do.cond72:                                        ; preds = %do.end71
  br label %do.end73, !dbg !3955

do.end73:                                         ; preds = %do.cond72
  br label %do.cond74, !dbg !3951

do.cond74:                                        ; preds = %do.end73
  br label %do.end75, !dbg !3951

do.end75:                                         ; preds = %do.cond74
  %46 = load ptr, ptr %new, align 8, !dbg !3966
  store ptr %46, ptr %found, align 8, !dbg !3967
  br label %if.end76, !dbg !3968

if.end76:                                         ; preds = %do.end75, %if.then51
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #16, !dbg !3969
  br label %if.end80, !dbg !3970

if.else:                                          ; preds = %do.end48
  %47 = load ptr, ptr %prealloc, align 8, !dbg !3971
  %tobool77 = icmp ne ptr %47, null, !dbg !3971
  br i1 %tobool77, label %if.then78, label %if.end79, !dbg !3973

if.then78:                                        ; preds = %if.else
  call void @depot_init_pool(ptr noundef %prealloc) #17, !dbg !3974
  br label %if.end79, !dbg !3976

if.end79:                                         ; preds = %if.then78, %if.else
  br label %if.end80

if.end80:                                         ; preds = %if.end79, %if.end76
  br label %do.body81, !dbg !3977

do.body81:                                        ; preds = %if.end80
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy82) #16, !dbg !3978
  call void @llvm.dbg.declare(metadata ptr %__dummy82, metadata !3838, metadata !DIExpression()), !dbg !3978
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy283) #16, !dbg !3978
  call void @llvm.dbg.declare(metadata ptr %__dummy283, metadata !3841, metadata !DIExpression()), !dbg !3978
  %cmp84 = icmp eq ptr %__dummy82, %__dummy283, !dbg !3978
  %conv85 = zext i1 %cmp84 to i32, !dbg !3978
  store i32 1, ptr %tmp86, align 4, !dbg !3978
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy283) #16, !dbg !3979
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy82) #16, !dbg !3979
  %48 = load i32, ptr %tmp86, align 4, !dbg !3978
  %49 = load i64, ptr %flags, align 8, !dbg !3979
  call void @_raw_spin_unlock_irqrestore(ptr noundef @pool_lock, i64 noundef %49) #17, !dbg !3979
  br label %do.cond87, !dbg !3979

do.cond87:                                        ; preds = %do.body81
  br label %do.end88, !dbg !3979

do.end88:                                         ; preds = %do.cond87
  br label %exit, !dbg !3979

exit:                                             ; preds = %do.end88, %if.then12
  call void @llvm.dbg.label(metadata !3842), !dbg !3980
  %50 = load ptr, ptr %prealloc, align 8, !dbg !3981
  %tobool89 = icmp ne ptr %50, null, !dbg !3981
  br i1 %tobool89, label %if.then90, label %if.end91, !dbg !3983

if.then90:                                        ; preds = %exit
  %51 = load ptr, ptr %prealloc, align 8, !dbg !3984
  %52 = ptrtoint ptr %51 to i64, !dbg !3986
  call void @free_pages(i64 noundef %52, i32 noundef 2) #17, !dbg !3987
  br label %if.end91, !dbg !3988

if.end91:                                         ; preds = %if.then90, %exit
  %53 = load ptr, ptr %found, align 8, !dbg !3989
  %tobool92 = icmp ne ptr %53, null, !dbg !3989
  br i1 %tobool92, label %if.then93, label %if.end94, !dbg !3991

if.then93:                                        ; preds = %if.end91
  %54 = load ptr, ptr %found, align 8, !dbg !3992
  %handle = getelementptr inbounds %struct.stack_record, ptr %54, i32 0, i32 3, !dbg !3993
  %55 = load i32, ptr %handle, align 8, !dbg !3994
  store i32 %55, ptr %retval1, align 4, !dbg !3995
  br label %if.end94, !dbg !3996

if.end94:                                         ; preds = %if.then93, %if.end91
  br label %fast_exit, !dbg !3989

fast_exit:                                        ; preds = %if.end94, %if.then
  call void @llvm.dbg.label(metadata !3843), !dbg !3997
  %56 = load i32, ptr %retval1, align 4, !dbg !3998
  call void @llvm.lifetime.end.p0(i64 4, ptr %hash) #16, !dbg !3999
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #16, !dbg !3999
  call void @llvm.lifetime.end.p0(i64 8, ptr %prealloc) #16, !dbg !3999
  call void @llvm.lifetime.end.p0(i64 8, ptr %page) #16, !dbg !3999
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #16, !dbg !3999
  call void @llvm.lifetime.end.p0(i64 8, ptr %bucket) #16, !dbg !3999
  call void @llvm.lifetime.end.p0(i64 8, ptr %found) #16, !dbg !3999
  ret i32 %56, !dbg !4000
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4001 dso_local i32 @filter_irq_stacks(ptr noundef, i32 noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @hash_stack(ptr noundef %entries, i32 noundef %size) #4 align 16 !dbg !4005 {
entry:
  %entries.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %entries, ptr %entries.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entries.addr, metadata !4009, metadata !DIExpression()), !dbg !4011
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4010, metadata !DIExpression()), !dbg !4012
  %0 = load ptr, ptr %entries.addr, align 8, !dbg !4013
  %1 = load i32, ptr %size.addr, align 4, !dbg !4014
  %conv = zext i32 %1 to i64, !dbg !4014
  %call = call i64 @size_mul(i64 noundef %conv, i64 noundef 8) #17, !dbg !4014
  %div = udiv i64 %call, 4, !dbg !4015
  %conv1 = trunc i64 %div to i32, !dbg !4014
  %call2 = call i32 @jhash2(ptr noundef %0, i32 noundef %conv1, i32 noundef -1756908916) #17, !dbg !4016
  ret i32 %call2, !dbg !4017
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @find_stack(ptr noundef %bucket, ptr noundef %entries, i32 noundef %size, i32 noundef %hash) #4 align 16 !dbg !4018 {
entry:
  %retval = alloca ptr, align 8
  %bucket.addr = alloca ptr, align 8
  %entries.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %hash.addr = alloca i32, align 4
  %found = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %bucket, ptr %bucket.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bucket.addr, metadata !4022, metadata !DIExpression()), !dbg !4027
  store ptr %entries, ptr %entries.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entries.addr, metadata !4023, metadata !DIExpression()), !dbg !4028
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4024, metadata !DIExpression()), !dbg !4029
  store i32 %hash, ptr %hash.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %hash.addr, metadata !4025, metadata !DIExpression()), !dbg !4030
  call void @llvm.lifetime.start.p0(i64 8, ptr %found) #16, !dbg !4031
  call void @llvm.dbg.declare(metadata ptr %found, metadata !4026, metadata !DIExpression()), !dbg !4032
  %0 = load ptr, ptr %bucket.addr, align 8, !dbg !4033
  store ptr %0, ptr %found, align 8, !dbg !4035
  br label %for.cond, !dbg !4036

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %found, align 8, !dbg !4037
  %tobool = icmp ne ptr %1, null, !dbg !4039
  br i1 %tobool, label %for.body, label %for.end, !dbg !4039

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %found, align 8, !dbg !4040
  %hash1 = getelementptr inbounds %struct.stack_record, ptr %2, i32 0, i32 1, !dbg !4043
  %3 = load i32, ptr %hash1, align 8, !dbg !4043
  %4 = load i32, ptr %hash.addr, align 4, !dbg !4044
  %cmp = icmp eq i32 %3, %4, !dbg !4045
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !4046

land.lhs.true:                                    ; preds = %for.body
  %5 = load ptr, ptr %found, align 8, !dbg !4047
  %size2 = getelementptr inbounds %struct.stack_record, ptr %5, i32 0, i32 2, !dbg !4048
  %6 = load i32, ptr %size2, align 4, !dbg !4048
  %7 = load i32, ptr %size.addr, align 4, !dbg !4049
  %cmp3 = icmp eq i32 %6, %7, !dbg !4050
  br i1 %cmp3, label %land.lhs.true4, label %if.end, !dbg !4051

land.lhs.true4:                                   ; preds = %land.lhs.true
  %8 = load ptr, ptr %entries.addr, align 8, !dbg !4052
  %9 = load ptr, ptr %found, align 8, !dbg !4053
  %entries5 = getelementptr inbounds %struct.stack_record, ptr %9, i32 0, i32 4, !dbg !4054
  %arraydecay = getelementptr inbounds [0 x i64], ptr %entries5, i64 0, i64 0, !dbg !4053
  %10 = load i32, ptr %size.addr, align 4, !dbg !4055
  %call = call i32 @stackdepot_memcmp(ptr noundef %8, ptr noundef %arraydecay, i32 noundef %10) #17, !dbg !4056
  %tobool6 = icmp ne i32 %call, 0, !dbg !4056
  br i1 %tobool6, label %if.end, label %if.then, !dbg !4057

if.then:                                          ; preds = %land.lhs.true4
  %11 = load ptr, ptr %found, align 8, !dbg !4058
  store ptr %11, ptr %retval, align 8, !dbg !4059
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4059

if.end:                                           ; preds = %land.lhs.true4, %land.lhs.true, %for.body
  br label %for.inc, !dbg !4060

for.inc:                                          ; preds = %if.end
  %12 = load ptr, ptr %found, align 8, !dbg !4061
  %next = getelementptr inbounds %struct.stack_record, ptr %12, i32 0, i32 0, !dbg !4062
  %13 = load ptr, ptr %next, align 8, !dbg !4062
  store ptr %13, ptr %found, align 8, !dbg !4063
  br label %for.cond, !dbg !4064, !llvm.loop !4065

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8, !dbg !4069
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4069

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %found) #16, !dbg !4070
  %14 = load ptr, ptr %retval, align 8, !dbg !4070
  ret ptr %14, !dbg !4070
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4071 dso_local ptr @alloc_pages(i32 noundef, i32 noundef) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @lowmem_page_address(ptr noundef %page) #13 align 16 !dbg !4075 {
entry:
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !4081, metadata !DIExpression()), !dbg !4082
  %0 = load ptr, ptr %page.addr, align 8, !dbg !4083
  %1 = load i64, ptr @vmemmap_base, align 8, !dbg !4083
  %2 = inttoptr i64 %1 to ptr, !dbg !4083
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64, !dbg !4083
  %sub.ptr.rhs.cast = ptrtoint ptr %2 to i64, !dbg !4083
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !4083
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 64, !dbg !4083
  %shl = shl i64 %sub.ptr.div, 12, !dbg !4083
  %3 = load i64, ptr @page_offset_base, align 8, !dbg !4083
  %add = add i64 %shl, %3, !dbg !4083
  %4 = inttoptr i64 %add to ptr, !dbg !4083
  ret ptr %4, !dbg !4084
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4085 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #6 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @depot_alloc_stack(ptr noundef %entries, i32 noundef %size, i32 noundef %hash, ptr noundef %prealloc) #7 align 16 !dbg !3523 {
entry:
  %retval = alloca ptr, align 8
  %entries.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %hash.addr = alloca i32, align 4
  %prealloc.addr = alloca ptr, align 8
  %stack = alloca ptr, align 8
  %required_size = alloca i64, align 8
  %__ret_do_once = alloca i8, align 1
  %__ret_cond = alloca i8, align 1
  %__ret_once = alloca i8, align 1
  %tmp = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp73 = alloca i64, align 8
  %tmp82 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %entries, ptr %entries.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entries.addr, metadata !3528, metadata !DIExpression()), !dbg !4090
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3529, metadata !DIExpression()), !dbg !4091
  store i32 %hash, ptr %hash.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %hash.addr, metadata !3530, metadata !DIExpression()), !dbg !4092
  store ptr %prealloc, ptr %prealloc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prealloc.addr, metadata !3531, metadata !DIExpression()), !dbg !4093
  call void @llvm.lifetime.start.p0(i64 8, ptr %stack) #16, !dbg !4094
  call void @llvm.dbg.declare(metadata ptr %stack, metadata !3532, metadata !DIExpression()), !dbg !4095
  call void @llvm.lifetime.start.p0(i64 8, ptr %required_size) #16, !dbg !4096
  call void @llvm.dbg.declare(metadata ptr %required_size, metadata !3533, metadata !DIExpression()), !dbg !4097
  %0 = load i32, ptr %size.addr, align 4, !dbg !4098
  %conv = sext i32 %0 to i64, !dbg !4098
  %call = call i64 @size_mul(i64 noundef %conv, i64 noundef 8) #17, !dbg !4098
  %call1 = call i64 @size_add(i64 noundef 24, i64 noundef %call) #17, !dbg !4098
  store i64 %call1, ptr %required_size, align 8, !dbg !4097
  %1 = load i64, ptr %required_size, align 8, !dbg !4099
  %add = add i64 %1, 15, !dbg !4099
  %and = and i64 %add, -16, !dbg !4099
  store i64 %and, ptr %required_size, align 8, !dbg !4100
  %2 = load i64, ptr @pool_offset, align 8, !dbg !4101
  %3 = load i64, ptr %required_size, align 8, !dbg !4101
  %add2 = add i64 %2, %3, !dbg !4101
  %cmp = icmp ugt i64 %add2, 16384, !dbg !4101
  %lnot = xor i1 %cmp, true, !dbg !4101
  %lnot4 = xor i1 %lnot, true, !dbg !4101
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !4101
  %conv5 = sext i32 %lnot.ext to i64, !dbg !4101
  %expval = call i64 @llvm.expect.i64(i64 %conv5, i64 0), !dbg !4101
  %tobool = icmp ne i64 %expval, 0, !dbg !4101
  br i1 %tobool, label %if.then, label %if.end128, !dbg !4102

if.then:                                          ; preds = %entry
  %4 = load i32, ptr @pool_index, align 4, !dbg !4103
  %add6 = add i32 %4, 1, !dbg !4103
  %conv7 = sext i32 %add6 to i64, !dbg !4103
  %cmp8 = icmp sge i64 %conv7, 8192, !dbg !4103
  %lnot10 = xor i1 %cmp8, true, !dbg !4103
  %lnot12 = xor i1 %lnot10, true, !dbg !4103
  %lnot.ext13 = zext i1 %lnot12 to i32, !dbg !4103
  %conv14 = sext i32 %lnot.ext13 to i64, !dbg !4103
  %expval15 = call i64 @llvm.expect.i64(i64 %conv14, i64 0), !dbg !4103
  %tobool16 = icmp ne i64 %expval15, 0, !dbg !4103
  br i1 %tobool16, label %if.then17, label %if.end90, !dbg !4104

if.then17:                                        ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once) #16, !dbg !4105
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once, metadata !3534, metadata !DIExpression()), !dbg !4105
  store i8 1, ptr %__ret_do_once, align 1, !dbg !4105
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond) #16, !dbg !4106
  call void @llvm.dbg.declare(metadata ptr %__ret_cond, metadata !3540, metadata !DIExpression()), !dbg !4106
  %5 = load i8, ptr %__ret_do_once, align 1, !dbg !4106, !range !3581, !noundef !405
  %tobool18 = trunc i8 %5 to i1, !dbg !4106
  %lnot19 = xor i1 %tobool18, true, !dbg !4106
  %lnot21 = xor i1 %lnot19, true, !dbg !4106
  %frombool = zext i1 %lnot21 to i8, !dbg !4106
  store i8 %frombool, ptr %__ret_cond, align 1, !dbg !4106
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once) #16, !dbg !4106
  call void @llvm.dbg.declare(metadata ptr %__ret_once, metadata !3543, metadata !DIExpression()), !dbg !4106
  store i8 0, ptr %__ret_once, align 1, !dbg !4106
  %6 = load i8, ptr %__ret_cond, align 1, !dbg !4107, !range !3581, !noundef !405
  %tobool23 = trunc i8 %6 to i1, !dbg !4107
  br i1 %tobool23, label %land.rhs, label %land.end, !dbg !4107

land.rhs:                                         ; preds = %if.then17
  %7 = load i8, ptr @depot_alloc_stack.__already_done, align 1, !dbg !4107, !range !3581, !noundef !405
  %tobool25 = trunc i8 %7 to i1, !dbg !4107
  %lnot26 = xor i1 %tobool25, true, !dbg !4107
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then17
  %8 = phi i1 [ false, %if.then17 ], [ %lnot26, %land.rhs ], !dbg !4109
  %lnot28 = xor i1 %8, true, !dbg !4107
  %lnot30 = xor i1 %lnot28, true, !dbg !4107
  %lnot.ext31 = zext i1 %lnot30 to i32, !dbg !4107
  %conv32 = sext i32 %lnot.ext31 to i64, !dbg !4107
  %expval33 = call i64 @llvm.expect.i64(i64 %conv32, i64 0), !dbg !4107
  %tobool34 = icmp ne i64 %expval33, 0, !dbg !4107
  br i1 %tobool34, label %if.then35, label %if.end, !dbg !4106

if.then35:                                        ; preds = %land.end
  store i8 1, ptr @depot_alloc_stack.__already_done, align 1, !dbg !4110
  store i8 1, ptr %__ret_once, align 1, !dbg !4110
  br label %if.end, !dbg !4110

if.end:                                           ; preds = %if.then35, %land.end
  %9 = load i8, ptr %__ret_once, align 1, !dbg !4106, !range !3581, !noundef !405
  %tobool36 = trunc i8 %9 to i1, !dbg !4106
  %lnot37 = xor i1 %tobool36, true, !dbg !4106
  %lnot39 = xor i1 %lnot37, true, !dbg !4106
  %lnot.ext40 = zext i1 %lnot39 to i32, !dbg !4106
  %conv41 = sext i32 %lnot.ext40 to i64, !dbg !4106
  %expval42 = call i64 @llvm.expect.i64(i64 %conv41, i64 0), !dbg !4106
  store i64 %expval42, ptr %tmp, align 8, !dbg !4107
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once) #16, !dbg !4112
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond) #16, !dbg !4112
  %10 = load i64, ptr %tmp, align 8, !dbg !4106
  %tobool43 = icmp ne i64 %10, 0, !dbg !4112
  br i1 %tobool43, label %if.then44, label %if.end81, !dbg !4105

if.then44:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !4113
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !3544, metadata !DIExpression()), !dbg !4113
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !4113
  %11 = load i32, ptr %__ret_warn_on, align 4, !dbg !4114
  %tobool45 = icmp ne i32 %11, 0, !dbg !4114
  %lnot46 = xor i1 %tobool45, true, !dbg !4114
  %lnot48 = xor i1 %lnot46, true, !dbg !4114
  %lnot.ext49 = zext i1 %lnot48 to i32, !dbg !4114
  %conv50 = sext i32 %lnot.ext49 to i64, !dbg !4114
  %expval51 = call i64 @llvm.expect.i64(i64 %conv50, i64 0), !dbg !4114
  %tobool52 = icmp ne i64 %expval51, 0, !dbg !4114
  br i1 %tobool52, label %if.then53, label %if.end72, !dbg !4113

if.then53:                                        ; preds = %if.then44
  br label %do.body, !dbg !4114

do.body:                                          ; preds = %if.then53
  br label %do.body54, !dbg !4115

do.body54:                                        ; preds = %do.body
  br label %do.cond, !dbg !4116

do.cond:                                          ; preds = %do.body54
  br label %do.end, !dbg !4116

do.end:                                           ; preds = %do.cond
  call void (ptr, ...) @__warn_printk(ptr noundef @.str.7) #17, !dbg !4115
  br label %do.body55, !dbg !4115

do.body55:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #16, !dbg !4118
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !3546, metadata !DIExpression()), !dbg !4118
  store i32 2313, ptr %__flags, align 4, !dbg !4118
  br label %do.body56, !dbg !4118

do.body56:                                        ; preds = %do.body55
  br label %do.cond57, !dbg !4119

do.cond57:                                        ; preds = %do.body56
  br label %do.end58, !dbg !4119

do.end58:                                         ; preds = %do.cond57
  br label %do.body59, !dbg !4118

do.body59:                                        ; preds = %do.end58
  %12 = load i32, ptr %__flags, align 4, !dbg !4121
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 271, i32 %12, i64 12) #16, !dbg !4121, !srcloc !4123
  br label %do.cond60, !dbg !4121

do.cond60:                                        ; preds = %do.body59
  br label %do.end61, !dbg !4121

do.end61:                                         ; preds = %do.cond60
  br label %do.body62, !dbg !4118

do.body62:                                        ; preds = %do.end61
  br label %do.cond63, !dbg !4124

do.cond63:                                        ; preds = %do.body62
  br label %do.end64, !dbg !4124

do.end64:                                         ; preds = %do.cond63
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #16, !dbg !4115
  br label %do.cond65, !dbg !4118

do.cond65:                                        ; preds = %do.end64
  br label %do.end66, !dbg !4118

do.end66:                                         ; preds = %do.cond65
  br label %do.body67, !dbg !4115

do.body67:                                        ; preds = %do.end66
  br label %do.cond68, !dbg !4126

do.cond68:                                        ; preds = %do.body67
  br label %do.end69, !dbg !4126

do.end69:                                         ; preds = %do.cond68
  br label %do.cond70, !dbg !4115

do.cond70:                                        ; preds = %do.end69
  br label %do.end71, !dbg !4115

do.end71:                                         ; preds = %do.cond70
  br label %if.end72, !dbg !4115

if.end72:                                         ; preds = %do.end71, %if.then44
  %13 = load i32, ptr %__ret_warn_on, align 4, !dbg !4113
  %tobool74 = icmp ne i32 %13, 0, !dbg !4113
  %lnot75 = xor i1 %tobool74, true, !dbg !4113
  %lnot77 = xor i1 %lnot75, true, !dbg !4113
  %lnot.ext78 = zext i1 %lnot77 to i32, !dbg !4113
  %conv79 = sext i32 %lnot.ext78 to i64, !dbg !4113
  %expval80 = call i64 @llvm.expect.i64(i64 %conv79, i64 0), !dbg !4113
  store i64 %expval80, ptr %tmp73, align 8, !dbg !4114
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !4112
  %14 = load i64, ptr %tmp73, align 8, !dbg !4113
  br label %if.end81, !dbg !4112

if.end81:                                         ; preds = %if.end72, %if.end
  %15 = load i8, ptr %__ret_do_once, align 1, !dbg !4105, !range !3581, !noundef !405
  %tobool83 = trunc i8 %15 to i1, !dbg !4105
  %lnot84 = xor i1 %tobool83, true, !dbg !4105
  %lnot86 = xor i1 %lnot84, true, !dbg !4105
  %lnot.ext87 = zext i1 %lnot86 to i32, !dbg !4105
  %conv88 = sext i32 %lnot.ext87 to i64, !dbg !4105
  %expval89 = call i64 @llvm.expect.i64(i64 %conv88, i64 0), !dbg !4105
  store i64 %expval89, ptr %tmp82, align 8, !dbg !4112
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once) #16, !dbg !4128
  %16 = load i64, ptr %tmp82, align 8, !dbg !4105
  store ptr null, ptr %retval, align 8, !dbg !4129
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4129

if.end90:                                         ; preds = %if.then
  br label %do.body91, !dbg !4130

do.body91:                                        ; preds = %if.end90
  br label %do.body92, !dbg !4131

do.body92:                                        ; preds = %do.body91
  br label %do.cond93, !dbg !4133

do.cond93:                                        ; preds = %do.body92
  br label %do.end94, !dbg !4133

do.end94:                                         ; preds = %do.cond93
  br label %do.body95, !dbg !4131

do.body95:                                        ; preds = %do.end94
  %17 = load i32, ptr @pool_index, align 4, !dbg !4135
  %add96 = add i32 %17, 1, !dbg !4135
  store volatile i32 %add96, ptr @pool_index, align 4, !dbg !4135
  br label %do.cond97, !dbg !4135

do.cond97:                                        ; preds = %do.body95
  br label %do.end98, !dbg !4135

do.end98:                                         ; preds = %do.cond97
  br label %do.cond99, !dbg !4131

do.cond99:                                        ; preds = %do.end98
  br label %do.end100, !dbg !4131

do.end100:                                        ; preds = %do.cond99
  store i64 0, ptr @pool_offset, align 8, !dbg !4137
  %18 = load i32, ptr @pool_index, align 4, !dbg !4138
  %add101 = add i32 %18, 1, !dbg !4140
  %conv102 = sext i32 %add101 to i64, !dbg !4138
  %cmp103 = icmp slt i64 %conv102, 8192, !dbg !4141
  br i1 %cmp103, label %if.then105, label %if.end127, !dbg !4142

if.then105:                                       ; preds = %do.end100
  br label %do.body106, !dbg !4143

do.body106:                                       ; preds = %if.then105
  br label %do.body107, !dbg !4144

do.body107:                                       ; preds = %do.body106
  br label %do.cond108, !dbg !4146

do.cond108:                                       ; preds = %do.body107
  br label %do.end109, !dbg !4146

do.end109:                                        ; preds = %do.cond108
  br label %do.body110, !dbg !4144

do.body110:                                       ; preds = %do.end109
  br label %do.body111, !dbg !4148

do.body111:                                       ; preds = %do.body110
  br label %do.cond112, !dbg !4150

do.cond112:                                       ; preds = %do.body111
  br label %do.end113, !dbg !4150

do.end113:                                        ; preds = %do.cond112
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !dbg !4148, !srcloc !4152
  br label %do.body114, !dbg !4148

do.body114:                                       ; preds = %do.end113
  br label %do.body115, !dbg !4153

do.body115:                                       ; preds = %do.body114
  br label %do.cond116, !dbg !4155

do.cond116:                                       ; preds = %do.body115
  br label %do.end117, !dbg !4155

do.end117:                                        ; preds = %do.cond116
  br label %do.body118, !dbg !4153

do.body118:                                       ; preds = %do.end117
  store volatile i32 1, ptr @next_pool_required, align 4, !dbg !4157
  br label %do.cond119, !dbg !4157

do.cond119:                                       ; preds = %do.body118
  br label %do.end120, !dbg !4157

do.end120:                                        ; preds = %do.cond119
  br label %do.cond121, !dbg !4153

do.cond121:                                       ; preds = %do.end120
  br label %do.end122, !dbg !4153

do.end122:                                        ; preds = %do.cond121
  br label %do.cond123, !dbg !4148

do.cond123:                                       ; preds = %do.end122
  br label %do.end124, !dbg !4148

do.end124:                                        ; preds = %do.cond123
  br label %do.cond125, !dbg !4144

do.cond125:                                       ; preds = %do.end124
  br label %do.end126, !dbg !4144

do.end126:                                        ; preds = %do.cond125
  br label %if.end127, !dbg !4144

if.end127:                                        ; preds = %do.end126, %do.end100
  br label %if.end128, !dbg !4159

if.end128:                                        ; preds = %if.end127, %entry
  %19 = load ptr, ptr %prealloc.addr, align 8, !dbg !4160
  %20 = load ptr, ptr %19, align 8, !dbg !4162
  %tobool129 = icmp ne ptr %20, null, !dbg !4162
  br i1 %tobool129, label %if.then130, label %if.end131, !dbg !4163

if.then130:                                       ; preds = %if.end128
  %21 = load ptr, ptr %prealloc.addr, align 8, !dbg !4164
  call void @depot_init_pool(ptr noundef %21) #17, !dbg !4165
  br label %if.end131, !dbg !4165

if.end131:                                        ; preds = %if.then130, %if.end128
  %22 = load i32, ptr @pool_index, align 4, !dbg !4166
  %idxprom = sext i32 %22 to i64, !dbg !4168
  %arrayidx = getelementptr [8192 x ptr], ptr @stack_pools, i64 0, i64 %idxprom, !dbg !4168
  %23 = load ptr, ptr %arrayidx, align 8, !dbg !4168
  %cmp132 = icmp eq ptr %23, null, !dbg !4169
  br i1 %cmp132, label %if.then134, label %if.end135, !dbg !4170

if.then134:                                       ; preds = %if.end131
  store ptr null, ptr %retval, align 8, !dbg !4171
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4171

if.end135:                                        ; preds = %if.end131
  %24 = load i32, ptr @pool_index, align 4, !dbg !4172
  %idxprom136 = sext i32 %24 to i64, !dbg !4173
  %arrayidx137 = getelementptr [8192 x ptr], ptr @stack_pools, i64 0, i64 %idxprom136, !dbg !4173
  %25 = load ptr, ptr %arrayidx137, align 8, !dbg !4173
  %26 = load i64, ptr @pool_offset, align 8, !dbg !4174
  %add.ptr = getelementptr i8, ptr %25, i64 %26, !dbg !4175
  store ptr %add.ptr, ptr %stack, align 8, !dbg !4176
  %27 = load i32, ptr %hash.addr, align 4, !dbg !4177
  %28 = load ptr, ptr %stack, align 8, !dbg !4178
  %hash138 = getelementptr inbounds %struct.stack_record, ptr %28, i32 0, i32 1, !dbg !4179
  store i32 %27, ptr %hash138, align 8, !dbg !4180
  %29 = load i32, ptr %size.addr, align 4, !dbg !4181
  %30 = load ptr, ptr %stack, align 8, !dbg !4182
  %size139 = getelementptr inbounds %struct.stack_record, ptr %30, i32 0, i32 2, !dbg !4183
  store i32 %29, ptr %size139, align 4, !dbg !4184
  %31 = load i32, ptr @pool_index, align 4, !dbg !4185
  %32 = load ptr, ptr %stack, align 8, !dbg !4186
  %handle = getelementptr inbounds %struct.stack_record, ptr %32, i32 0, i32 3, !dbg !4187
  %bf.load = load i32, ptr %handle, align 8, !dbg !4188
  %bf.value = and i32 %31, 65535, !dbg !4188
  %bf.clear = and i32 %bf.load, -65536, !dbg !4188
  %bf.set = or i32 %bf.clear, %bf.value, !dbg !4188
  store i32 %bf.set, ptr %handle, align 8, !dbg !4188
  %33 = load i64, ptr @pool_offset, align 8, !dbg !4189
  %shr = lshr i64 %33, 4, !dbg !4190
  %conv140 = trunc i64 %shr to i32, !dbg !4189
  %34 = load ptr, ptr %stack, align 8, !dbg !4191
  %handle141 = getelementptr inbounds %struct.stack_record, ptr %34, i32 0, i32 3, !dbg !4192
  %bf.load142 = load i32, ptr %handle141, align 8, !dbg !4193
  %bf.value143 = and i32 %conv140, 1023, !dbg !4193
  %bf.shl = shl i32 %bf.value143, 16, !dbg !4193
  %bf.clear144 = and i32 %bf.load142, -67043329, !dbg !4193
  %bf.set145 = or i32 %bf.clear144, %bf.shl, !dbg !4193
  store i32 %bf.set145, ptr %handle141, align 8, !dbg !4193
  %35 = load ptr, ptr %stack, align 8, !dbg !4194
  %handle146 = getelementptr inbounds %struct.stack_record, ptr %35, i32 0, i32 3, !dbg !4195
  %bf.load147 = load i32, ptr %handle146, align 8, !dbg !4196
  %bf.clear148 = and i32 %bf.load147, -67108865, !dbg !4196
  %bf.set149 = or i32 %bf.clear148, 67108864, !dbg !4196
  store i32 %bf.set149, ptr %handle146, align 8, !dbg !4196
  %36 = load ptr, ptr %stack, align 8, !dbg !4197
  %handle150 = getelementptr inbounds %struct.stack_record, ptr %36, i32 0, i32 3, !dbg !4198
  %bf.load151 = load i32, ptr %handle150, align 8, !dbg !4199
  %bf.clear152 = and i32 %bf.load151, 134217727, !dbg !4199
  %bf.set153 = or i32 %bf.clear152, 0, !dbg !4199
  store i32 %bf.set153, ptr %handle150, align 8, !dbg !4199
  %37 = load ptr, ptr %stack, align 8, !dbg !4200
  %entries154 = getelementptr inbounds %struct.stack_record, ptr %37, i32 0, i32 4, !dbg !4201
  %arraydecay = getelementptr inbounds [0 x i64], ptr %entries154, i64 0, i64 0, !dbg !4200
  %38 = load ptr, ptr %entries.addr, align 8, !dbg !4202
  %39 = load i32, ptr %size.addr, align 4, !dbg !4203
  %conv155 = sext i32 %39 to i64, !dbg !4203
  %call156 = call i64 @size_mul(i64 noundef %conv155, i64 noundef 8) #17, !dbg !4203
  %call157 = call ptr @memcpy(ptr noundef %arraydecay, ptr noundef %38, i64 noundef %call156) #17, !dbg !4204
  %40 = load i64, ptr %required_size, align 8, !dbg !4205
  %41 = load i64, ptr @pool_offset, align 8, !dbg !4206
  %add158 = add i64 %41, %40, !dbg !4206
  store i64 %add158, ptr @pool_offset, align 8, !dbg !4206
  %42 = load ptr, ptr %stack, align 8, !dbg !4207
  %43 = load i64, ptr %required_size, align 8, !dbg !4208
  call void @kmsan_unpoison_memory(ptr noundef %42, i64 noundef %43) #17, !dbg !4209
  %44 = load ptr, ptr %stack, align 8, !dbg !4210
  store ptr %44, ptr %retval, align 8, !dbg !4211
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4211

cleanup:                                          ; preds = %if.end135, %if.then134, %if.end81
  call void @llvm.lifetime.end.p0(i64 8, ptr %required_size) #16, !dbg !4212
  call void @llvm.lifetime.end.p0(i64 8, ptr %stack) #16, !dbg !4212
  %45 = load ptr, ptr %retval, align 8, !dbg !4212
  ret ptr %45, !dbg !4212
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @depot_init_pool(ptr noundef %prealloc) #7 align 16 !dbg !4213 {
entry:
  %prealloc.addr = alloca ptr, align 8
  %___p1 = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp4 = alloca i32, align 4
  store ptr %prealloc, ptr %prealloc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prealloc.addr, metadata !4217, metadata !DIExpression()), !dbg !4221
  call void @llvm.lifetime.start.p0(i64 4, ptr %___p1) #16, !dbg !4222
  call void @llvm.dbg.declare(metadata ptr %___p1, metadata !4218, metadata !DIExpression()), !dbg !4222
  br label %do.body, !dbg !4223

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !4225

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4225

do.end:                                           ; preds = %do.cond
  %0 = load volatile i32, ptr @next_pool_required, align 4, !dbg !4223
  store i32 %0, ptr %tmp, align 4, !dbg !4225
  %1 = load i32, ptr %tmp, align 4, !dbg !4223
  store i32 %1, ptr %___p1, align 4, !dbg !4222
  br label %do.body1, !dbg !4222

do.body1:                                         ; preds = %do.end
  br label %do.cond2, !dbg !4227

do.cond2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !4227

do.end3:                                          ; preds = %do.cond2
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !dbg !4222, !srcloc !4229
  %2 = load i32, ptr %___p1, align 4, !dbg !4222
  store i32 %2, ptr %tmp4, align 4, !dbg !4222
  call void @llvm.lifetime.end.p0(i64 4, ptr %___p1) #16, !dbg !4230
  %3 = load i32, ptr %tmp4, align 4, !dbg !4222
  %tobool = icmp ne i32 %3, 0, !dbg !4230
  br i1 %tobool, label %if.end, label %if.then, !dbg !4231

if.then:                                          ; preds = %do.end3
  br label %if.end36, !dbg !4232

if.end:                                           ; preds = %do.end3
  %4 = load i32, ptr @pool_index, align 4, !dbg !4233
  %idxprom = sext i32 %4 to i64, !dbg !4235
  %arrayidx = getelementptr [8192 x ptr], ptr @stack_pools, i64 0, i64 %idxprom, !dbg !4235
  %5 = load ptr, ptr %arrayidx, align 8, !dbg !4235
  %cmp = icmp eq ptr %5, null, !dbg !4236
  br i1 %cmp, label %if.then5, label %if.else, !dbg !4237

if.then5:                                         ; preds = %if.end
  %6 = load ptr, ptr %prealloc.addr, align 8, !dbg !4238
  %7 = load ptr, ptr %6, align 8, !dbg !4240
  %8 = load i32, ptr @pool_index, align 4, !dbg !4241
  %idxprom6 = sext i32 %8 to i64, !dbg !4242
  %arrayidx7 = getelementptr [8192 x ptr], ptr @stack_pools, i64 0, i64 %idxprom6, !dbg !4242
  store ptr %7, ptr %arrayidx7, align 8, !dbg !4243
  %9 = load ptr, ptr %prealloc.addr, align 8, !dbg !4244
  store ptr null, ptr %9, align 8, !dbg !4245
  br label %if.end36, !dbg !4246

if.else:                                          ; preds = %if.end
  %10 = load i32, ptr @pool_index, align 4, !dbg !4247
  %add = add i32 %10, 1, !dbg !4250
  %conv = sext i32 %add to i64, !dbg !4247
  %cmp8 = icmp slt i64 %conv, 8192, !dbg !4251
  br i1 %cmp8, label %if.then10, label %if.end14, !dbg !4252

if.then10:                                        ; preds = %if.else
  %11 = load ptr, ptr %prealloc.addr, align 8, !dbg !4253
  %12 = load ptr, ptr %11, align 8, !dbg !4255
  %13 = load i32, ptr @pool_index, align 4, !dbg !4256
  %add11 = add i32 %13, 1, !dbg !4257
  %idxprom12 = sext i32 %add11 to i64, !dbg !4258
  %arrayidx13 = getelementptr [8192 x ptr], ptr @stack_pools, i64 0, i64 %idxprom12, !dbg !4258
  store ptr %12, ptr %arrayidx13, align 8, !dbg !4259
  %14 = load ptr, ptr %prealloc.addr, align 8, !dbg !4260
  store ptr null, ptr %14, align 8, !dbg !4261
  br label %if.end14, !dbg !4262

if.end14:                                         ; preds = %if.then10, %if.else
  br label %do.body15, !dbg !4263

do.body15:                                        ; preds = %if.end14
  br label %do.body16, !dbg !4264

do.body16:                                        ; preds = %do.body15
  br label %do.end18, !dbg !4266

do.end18:                                         ; preds = %do.body16
  br label %do.body19, !dbg !4264

do.body19:                                        ; preds = %do.end18
  br label %do.body20, !dbg !4268

do.body20:                                        ; preds = %do.body19
  br label %do.end22, !dbg !4270

do.end22:                                         ; preds = %do.body20
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !dbg !4268, !srcloc !4272
  br label %do.body23, !dbg !4268

do.body23:                                        ; preds = %do.end22
  br label %do.body24, !dbg !4273

do.body24:                                        ; preds = %do.body23
  br label %do.end26, !dbg !4275

do.end26:                                         ; preds = %do.body24
  br label %do.body27, !dbg !4273

do.body27:                                        ; preds = %do.end26
  store volatile i32 0, ptr @next_pool_required, align 4, !dbg !4277
  br label %do.end29, !dbg !4277

do.end29:                                         ; preds = %do.body27
  br label %do.end31, !dbg !4273

do.end31:                                         ; preds = %do.end29
  br label %do.end33, !dbg !4268

do.end33:                                         ; preds = %do.end31
  br label %do.end35, !dbg !4264

do.end35:                                         ; preds = %do.end33
  br label %if.end36

if.end36:                                         ; preds = %if.then, %do.end35, %if.then5
  ret void, !dbg !4279
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4280 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #6 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4283 dso_local void @free_pages(i64 noundef, i32 noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @stack_depot_save(ptr noundef %entries, i32 noundef %nr_entries, i32 noundef %alloc_flags) #7 align 16 !dbg !4286 {
entry:
  %entries.addr = alloca ptr, align 8
  %nr_entries.addr = alloca i32, align 4
  %alloc_flags.addr = alloca i32, align 4
  store ptr %entries, ptr %entries.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entries.addr, metadata !4290, metadata !DIExpression()), !dbg !4293
  store i32 %nr_entries, ptr %nr_entries.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nr_entries.addr, metadata !4291, metadata !DIExpression()), !dbg !4294
  store i32 %alloc_flags, ptr %alloc_flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %alloc_flags.addr, metadata !4292, metadata !DIExpression()), !dbg !4295
  %0 = load ptr, ptr %entries.addr, align 8, !dbg !4296
  %1 = load i32, ptr %nr_entries.addr, align 4, !dbg !4297
  %2 = load i32, ptr %alloc_flags.addr, align 4, !dbg !4298
  %call = call i32 @__stack_depot_save(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext true) #17, !dbg !4299
  ret i32 %call, !dbg !4300
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @stack_depot_fetch(i32 noundef %handle, ptr noundef %entries) #7 align 16 !dbg !4301 {
entry:
  %retval = alloca i32, align 4
  %handle.addr = alloca i32, align 4
  %entries.addr = alloca ptr, align 8
  %parts = alloca %union.handle_parts, align 4
  %pool_index_cached = alloca i32, align 4
  %tmp = alloca i32, align 4
  %pool = alloca ptr, align 8
  %offset = alloca i64, align 8
  %stack = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp34 = alloca i64, align 8
  store i32 %handle, ptr %handle.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !4306, metadata !DIExpression()), !dbg !4321
  store ptr %entries, ptr %entries.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entries.addr, metadata !4307, metadata !DIExpression()), !dbg !4322
  call void @llvm.lifetime.start.p0(i64 4, ptr %parts) #16, !dbg !4323
  call void @llvm.dbg.declare(metadata ptr %parts, metadata !4308, metadata !DIExpression()), !dbg !4324
  %0 = load i32, ptr %handle.addr, align 4, !dbg !4325
  store i32 %0, ptr %parts, align 4, !dbg !4326
  call void @llvm.lifetime.start.p0(i64 4, ptr %pool_index_cached) #16, !dbg !4327
  call void @llvm.dbg.declare(metadata ptr %pool_index_cached, metadata !4309, metadata !DIExpression()), !dbg !4328
  br label %do.body, !dbg !4329

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !4331

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4331

do.end:                                           ; preds = %do.cond
  %1 = load volatile i32, ptr @pool_index, align 4, !dbg !4329
  store i32 %1, ptr %tmp, align 4, !dbg !4331
  %2 = load i32, ptr %tmp, align 4, !dbg !4329
  store i32 %2, ptr %pool_index_cached, align 4, !dbg !4328
  call void @llvm.lifetime.start.p0(i64 8, ptr %pool) #16, !dbg !4333
  call void @llvm.dbg.declare(metadata ptr %pool, metadata !4310, metadata !DIExpression()), !dbg !4334
  call void @llvm.lifetime.start.p0(i64 8, ptr %offset) #16, !dbg !4335
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !4311, metadata !DIExpression()), !dbg !4336
  %bf.load = load i32, ptr %parts, align 4, !dbg !4337
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !4337
  %bf.clear = and i32 %bf.lshr, 1023, !dbg !4337
  %shl = shl i32 %bf.clear, 4, !dbg !4338
  %conv = sext i32 %shl to i64, !dbg !4339
  store i64 %conv, ptr %offset, align 8, !dbg !4336
  call void @llvm.lifetime.start.p0(i64 8, ptr %stack) #16, !dbg !4340
  call void @llvm.dbg.declare(metadata ptr %stack, metadata !4312, metadata !DIExpression()), !dbg !4341
  %3 = load ptr, ptr %entries.addr, align 8, !dbg !4342
  store ptr null, ptr %3, align 8, !dbg !4343
  %4 = load ptr, ptr %entries.addr, align 8, !dbg !4344
  call void @kmsan_unpoison_memory(ptr noundef %4, i64 noundef 8) #17, !dbg !4345
  %5 = load i32, ptr %handle.addr, align 4, !dbg !4346
  %tobool = icmp ne i32 %5, 0, !dbg !4346
  br i1 %tobool, label %if.end, label %if.then, !dbg !4348

if.then:                                          ; preds = %do.end
  store i32 0, ptr %retval, align 4, !dbg !4349
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4349

if.end:                                           ; preds = %do.end
  %bf.load1 = load i32, ptr %parts, align 4, !dbg !4350
  %bf.clear2 = and i32 %bf.load1, 65535, !dbg !4350
  %6 = load i32, ptr %pool_index_cached, align 4, !dbg !4351
  %cmp = icmp sgt i32 %bf.clear2, %6, !dbg !4352
  br i1 %cmp, label %if.then4, label %if.end42, !dbg !4353

if.then4:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !4354
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4313, metadata !DIExpression()), !dbg !4354
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !4354
  %7 = load i32, ptr %__ret_warn_on, align 4, !dbg !4355
  %tobool5 = icmp ne i32 %7, 0, !dbg !4355
  %lnot = xor i1 %tobool5, true, !dbg !4355
  %lnot6 = xor i1 %lnot, true, !dbg !4355
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !4355
  %conv7 = sext i32 %lnot.ext to i64, !dbg !4355
  %expval = call i64 @llvm.expect.i64(i64 %conv7, i64 0), !dbg !4355
  %tobool8 = icmp ne i64 %expval, 0, !dbg !4355
  br i1 %tobool8, label %if.then9, label %if.end33, !dbg !4354

if.then9:                                         ; preds = %if.then4
  br label %do.body10, !dbg !4355

do.body10:                                        ; preds = %if.then9
  br label %do.body11, !dbg !4356

do.body11:                                        ; preds = %do.body10
  br label %do.cond12, !dbg !4357

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !4357

do.end13:                                         ; preds = %do.cond12
  %bf.load14 = load i32, ptr %parts, align 4, !dbg !4356
  %bf.clear15 = and i32 %bf.load14, 65535, !dbg !4356
  %8 = load i32, ptr %pool_index_cached, align 4, !dbg !4356
  %9 = load i32, ptr %handle.addr, align 4, !dbg !4356
  call void (ptr, ...) @__warn_printk(ptr noundef @.str.5, i32 noundef %bf.clear15, i32 noundef %8, i32 noundef %9) #17, !dbg !4356
  br label %do.body16, !dbg !4356

do.body16:                                        ; preds = %do.end13
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #16, !dbg !4359
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4317, metadata !DIExpression()), !dbg !4359
  store i32 2313, ptr %__flags, align 4, !dbg !4359
  br label %do.body17, !dbg !4359

do.body17:                                        ; preds = %do.body16
  br label %do.cond18, !dbg !4360

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !4360

do.end19:                                         ; preds = %do.cond18
  br label %do.body20, !dbg !4359

do.body20:                                        ; preds = %do.end19
  %10 = load i32, ptr %__flags, align 4, !dbg !4362
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 485, i32 %10, i64 12) #16, !dbg !4362, !srcloc !4364
  br label %do.cond21, !dbg !4362

do.cond21:                                        ; preds = %do.body20
  br label %do.end22, !dbg !4362

do.end22:                                         ; preds = %do.cond21
  br label %do.body23, !dbg !4359

do.body23:                                        ; preds = %do.end22
  br label %do.cond24, !dbg !4365

do.cond24:                                        ; preds = %do.body23
  br label %do.end25, !dbg !4365

do.end25:                                         ; preds = %do.cond24
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #16, !dbg !4356
  br label %do.cond26, !dbg !4359

do.cond26:                                        ; preds = %do.end25
  br label %do.end27, !dbg !4359

do.end27:                                         ; preds = %do.cond26
  br label %do.body28, !dbg !4356

do.body28:                                        ; preds = %do.end27
  br label %do.cond29, !dbg !4367

do.cond29:                                        ; preds = %do.body28
  br label %do.end30, !dbg !4367

do.end30:                                         ; preds = %do.cond29
  br label %do.cond31, !dbg !4356

do.cond31:                                        ; preds = %do.end30
  br label %do.end32, !dbg !4356

do.end32:                                         ; preds = %do.cond31
  br label %if.end33, !dbg !4356

if.end33:                                         ; preds = %do.end32, %if.then4
  %11 = load i32, ptr %__ret_warn_on, align 4, !dbg !4354
  %tobool35 = icmp ne i32 %11, 0, !dbg !4354
  %lnot36 = xor i1 %tobool35, true, !dbg !4354
  %lnot38 = xor i1 %lnot36, true, !dbg !4354
  %lnot.ext39 = zext i1 %lnot38 to i32, !dbg !4354
  %conv40 = sext i32 %lnot.ext39 to i64, !dbg !4354
  %expval41 = call i64 @llvm.expect.i64(i64 %conv40, i64 0), !dbg !4354
  store i64 %expval41, ptr %tmp34, align 8, !dbg !4355
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !4369
  %12 = load i64, ptr %tmp34, align 8, !dbg !4354
  store i32 0, ptr %retval, align 4, !dbg !4370
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4370

if.end42:                                         ; preds = %if.end
  %bf.load43 = load i32, ptr %parts, align 4, !dbg !4371
  %bf.clear44 = and i32 %bf.load43, 65535, !dbg !4371
  %idxprom = zext i32 %bf.clear44 to i64, !dbg !4372
  %arrayidx = getelementptr [8192 x ptr], ptr @stack_pools, i64 0, i64 %idxprom, !dbg !4372
  %13 = load ptr, ptr %arrayidx, align 8, !dbg !4372
  store ptr %13, ptr %pool, align 8, !dbg !4373
  %14 = load ptr, ptr %pool, align 8, !dbg !4374
  %tobool45 = icmp ne ptr %14, null, !dbg !4374
  br i1 %tobool45, label %if.end47, label %if.then46, !dbg !4376

if.then46:                                        ; preds = %if.end42
  store i32 0, ptr %retval, align 4, !dbg !4377
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4377

if.end47:                                         ; preds = %if.end42
  %15 = load ptr, ptr %pool, align 8, !dbg !4378
  %16 = load i64, ptr %offset, align 8, !dbg !4379
  %add.ptr = getelementptr i8, ptr %15, i64 %16, !dbg !4380
  store ptr %add.ptr, ptr %stack, align 8, !dbg !4381
  %17 = load ptr, ptr %stack, align 8, !dbg !4382
  %entries48 = getelementptr inbounds %struct.stack_record, ptr %17, i32 0, i32 4, !dbg !4383
  %arraydecay = getelementptr inbounds [0 x i64], ptr %entries48, i64 0, i64 0, !dbg !4382
  %18 = load ptr, ptr %entries.addr, align 8, !dbg !4384
  store ptr %arraydecay, ptr %18, align 8, !dbg !4385
  %19 = load ptr, ptr %stack, align 8, !dbg !4386
  %size = getelementptr inbounds %struct.stack_record, ptr %19, i32 0, i32 2, !dbg !4387
  %20 = load i32, ptr %size, align 4, !dbg !4387
  store i32 %20, ptr %retval, align 4, !dbg !4388
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4388

cleanup:                                          ; preds = %if.end47, %if.then46, %if.end33, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %stack) #16, !dbg !4389
  call void @llvm.lifetime.end.p0(i64 8, ptr %offset) #16, !dbg !4389
  call void @llvm.lifetime.end.p0(i64 8, ptr %pool) #16, !dbg !4389
  call void @llvm.lifetime.end.p0(i64 4, ptr %pool_index_cached) #16, !dbg !4389
  call void @llvm.lifetime.end.p0(i64 4, ptr %parts) #16, !dbg !4389
  %21 = load i32, ptr %retval, align 4, !dbg !4389
  ret i32 %21, !dbg !4389
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kmsan_unpoison_memory(ptr noundef %address, i64 noundef %size) #4 align 16 !dbg !4390 {
entry:
  %address.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !4395, metadata !DIExpression()), !dbg !4397
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4396, metadata !DIExpression()), !dbg !4398
  ret void, !dbg !4399
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4400 dso_local void @__warn_printk(ptr noundef, ...) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @stack_depot_print(i32 noundef %stack) #7 align 16 !dbg !4404 {
entry:
  %stack.addr = alloca i32, align 4
  %entries = alloca ptr, align 8
  %nr_entries = alloca i32, align 4
  store i32 %stack, ptr %stack.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %stack.addr, metadata !4408, metadata !DIExpression()), !dbg !4411
  call void @llvm.lifetime.start.p0(i64 8, ptr %entries) #16, !dbg !4412
  call void @llvm.dbg.declare(metadata ptr %entries, metadata !4409, metadata !DIExpression()), !dbg !4413
  call void @llvm.lifetime.start.p0(i64 4, ptr %nr_entries) #16, !dbg !4414
  call void @llvm.dbg.declare(metadata ptr %nr_entries, metadata !4410, metadata !DIExpression()), !dbg !4415
  %0 = load i32, ptr %stack.addr, align 4, !dbg !4416
  %call = call i32 @stack_depot_fetch(i32 noundef %0, ptr noundef %entries) #17, !dbg !4417
  store i32 %call, ptr %nr_entries, align 4, !dbg !4418
  %1 = load i32, ptr %nr_entries, align 4, !dbg !4419
  %cmp = icmp ugt i32 %1, 0, !dbg !4421
  br i1 %cmp, label %if.then, label %if.end, !dbg !4422

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %entries, align 8, !dbg !4423
  %3 = load i32, ptr %nr_entries, align 4, !dbg !4424
  call void @stack_trace_print(ptr noundef %2, i32 noundef %3, i32 noundef 0) #17, !dbg !4425
  br label %if.end, !dbg !4425

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr %nr_entries) #16, !dbg !4426
  call void @llvm.lifetime.end.p0(i64 8, ptr %entries) #16, !dbg !4426
  ret void, !dbg !4426
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4427 dso_local void @stack_trace_print(ptr noundef, i32 noundef, i32 noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @stack_depot_snprint(i32 noundef %handle, ptr noundef %buf, i64 noundef %size, i32 noundef %spaces) #7 align 16 !dbg !4431 {
entry:
  %handle.addr = alloca i32, align 4
  %buf.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %spaces.addr = alloca i32, align 4
  %entries = alloca ptr, align 8
  %nr_entries = alloca i32, align 4
  store i32 %handle, ptr %handle.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !4435, metadata !DIExpression()), !dbg !4441
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4436, metadata !DIExpression()), !dbg !4442
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4437, metadata !DIExpression()), !dbg !4443
  store i32 %spaces, ptr %spaces.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %spaces.addr, metadata !4438, metadata !DIExpression()), !dbg !4444
  call void @llvm.lifetime.start.p0(i64 8, ptr %entries) #16, !dbg !4445
  call void @llvm.dbg.declare(metadata ptr %entries, metadata !4439, metadata !DIExpression()), !dbg !4446
  call void @llvm.lifetime.start.p0(i64 4, ptr %nr_entries) #16, !dbg !4447
  call void @llvm.dbg.declare(metadata ptr %nr_entries, metadata !4440, metadata !DIExpression()), !dbg !4448
  %0 = load i32, ptr %handle.addr, align 4, !dbg !4449
  %call = call i32 @stack_depot_fetch(i32 noundef %0, ptr noundef %entries) #17, !dbg !4450
  store i32 %call, ptr %nr_entries, align 4, !dbg !4451
  %1 = load i32, ptr %nr_entries, align 4, !dbg !4452
  %tobool = icmp ne i32 %1, 0, !dbg !4452
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !4452

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %buf.addr, align 8, !dbg !4453
  %3 = load i64, ptr %size.addr, align 8, !dbg !4454
  %4 = load ptr, ptr %entries, align 8, !dbg !4455
  %5 = load i32, ptr %nr_entries, align 4, !dbg !4456
  %6 = load i32, ptr %spaces.addr, align 4, !dbg !4457
  %call1 = call i32 @stack_trace_snprint(ptr noundef %2, i64 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) #17, !dbg !4458
  br label %cond.end, !dbg !4452

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !4452

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call1, %cond.true ], [ 0, %cond.false ], !dbg !4452
  call void @llvm.lifetime.end.p0(i64 4, ptr %nr_entries) #16, !dbg !4459
  call void @llvm.lifetime.end.p0(i64 8, ptr %entries) #16, !dbg !4459
  ret i32 %cond, !dbg !4460
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4461 dso_local i32 @stack_trace_snprint(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @stack_depot_set_extra_bits(i32 noundef %handle, i32 noundef %extra_bits) #7 align 16 !dbg !4464 {
entry:
  %retval = alloca i32, align 4
  %handle.addr = alloca i32, align 4
  %extra_bits.addr = alloca i32, align 4
  %parts = alloca %union.handle_parts, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %handle, ptr %handle.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !4468, metadata !DIExpression()), !dbg !4471
  store i32 %extra_bits, ptr %extra_bits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %extra_bits.addr, metadata !4469, metadata !DIExpression()), !dbg !4472
  call void @llvm.lifetime.start.p0(i64 4, ptr %parts) #16, !dbg !4473
  call void @llvm.dbg.declare(metadata ptr %parts, metadata !4470, metadata !DIExpression()), !dbg !4474
  %0 = load i32, ptr %handle.addr, align 4, !dbg !4475
  store i32 %0, ptr %parts, align 4, !dbg !4476
  %1 = load i32, ptr %handle.addr, align 4, !dbg !4477
  %tobool = icmp ne i32 %1, 0, !dbg !4477
  br i1 %tobool, label %if.end, label %if.then, !dbg !4479

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4480
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4480

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %extra_bits.addr, align 4, !dbg !4481
  %bf.load = load i32, ptr %parts, align 4, !dbg !4482
  %bf.value = and i32 %2, 31, !dbg !4482
  %bf.shl = shl i32 %bf.value, 27, !dbg !4482
  %bf.clear = and i32 %bf.load, 134217727, !dbg !4482
  %bf.set = or i32 %bf.clear, %bf.shl, !dbg !4482
  store i32 %bf.set, ptr %parts, align 4, !dbg !4482
  %3 = load i32, ptr %parts, align 4, !dbg !4483
  store i32 %3, ptr %retval, align 4, !dbg !4484
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4484

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %parts) #16, !dbg !4485
  %4 = load i32, ptr %retval, align 4, !dbg !4485
  ret i32 %4, !dbg !4485
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @stack_depot_get_extra_bits(i32 noundef %handle) #7 align 16 !dbg !4486 {
entry:
  %handle.addr = alloca i32, align 4
  %parts = alloca %union.handle_parts, align 4
  store i32 %handle, ptr %handle.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !4490, metadata !DIExpression()), !dbg !4492
  call void @llvm.lifetime.start.p0(i64 4, ptr %parts) #16, !dbg !4493
  call void @llvm.dbg.declare(metadata ptr %parts, metadata !4491, metadata !DIExpression()), !dbg !4494
  %0 = load i32, ptr %handle.addr, align 4, !dbg !4495
  store i32 %0, ptr %parts, align 4, !dbg !4496
  %bf.load = load i32, ptr %parts, align 4, !dbg !4497
  %bf.lshr = lshr i32 %bf.load, 27, !dbg !4497
  call void @llvm.lifetime.end.p0(i64 4, ptr %parts) #16, !dbg !4498
  ret i32 %bf.lshr, !dbg !4499
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4500 dso_local i32 @kstrtobool(ptr noundef, ptr noundef) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fls64(i64 noundef %x) #13 align 16 !dbg !4504 {
entry:
  %x.addr = alloca i64, align 8
  %bitpos = alloca i32, align 4
  store i64 %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !4509, metadata !DIExpression()), !dbg !4511
  call void @llvm.lifetime.start.p0(i64 4, ptr %bitpos) #16, !dbg !4512
  call void @llvm.dbg.declare(metadata ptr %bitpos, metadata !4510, metadata !DIExpression()), !dbg !4513
  store i32 -1, ptr %bitpos, align 4, !dbg !4513
  %0 = load i32, ptr %bitpos, align 4, !dbg !4514
  %1 = load i64, ptr %x.addr, align 8, !dbg !4515
  %2 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %1, i32 %0) #21, !dbg !4514, !srcloc !4516
  store i32 %2, ptr %bitpos, align 4, !dbg !4514
  %3 = load i32, ptr %bitpos, align 4, !dbg !4517
  %add = add i32 %3, 1, !dbg !4518
  call void @llvm.lifetime.end.p0(i64 4, ptr %bitpos) #16, !dbg !4519
  ret i32 %add, !dbg !4520
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fls_long(i64 noundef %l) #4 align 16 !dbg !4521 {
entry:
  %l.addr = alloca i64, align 8
  store i64 %l, ptr %l.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %l.addr, metadata !4526, metadata !DIExpression()), !dbg !4527
  %0 = load i64, ptr %l.addr, align 8, !dbg !4528
  %call = call i32 @fls64(i64 noundef %0) #17, !dbg !4529
  ret i32 %call, !dbg !4530
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kvmalloc_array(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #11 align 16 !dbg !4531 {
entry:
  %retval = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !4533, metadata !DIExpression()), !dbg !4537
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4534, metadata !DIExpression()), !dbg !4538
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4535, metadata !DIExpression()), !dbg !4539
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #16, !dbg !4540
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !4536, metadata !DIExpression()), !dbg !4541
  %0 = load i64, ptr %n.addr, align 8, !dbg !4542
  %1 = load i64, ptr %size.addr, align 8, !dbg !4542
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !4542
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !4542
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !4542
  store i64 %4, ptr %bytes, align 8, !dbg !4542
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #17, !dbg !4542
  %lnot = xor i1 %call, true, !dbg !4542
  %lnot1 = xor i1 %lnot, true, !dbg !4542
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4542
  %conv = sext i32 %lnot.ext to i64, !dbg !4542
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4542
  %tobool = icmp ne i64 %expval, 0, !dbg !4542
  br i1 %tobool, label %if.then, label %if.end, !dbg !4544

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !4545
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4545

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %bytes, align 8, !dbg !4546
  %6 = load i32, ptr %flags.addr, align 4, !dbg !4547
  %call2 = call noalias ptr @kvmalloc(i64 noundef %5, i32 noundef %6) #22, !dbg !4548
  store ptr %call2, ptr %retval, align 8, !dbg !4549
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4549

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #16, !dbg !4550
  %7 = load ptr, ptr %retval, align 8, !dbg !4550
  ret ptr %7, !dbg !4550
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #4 align 16 !dbg !4551 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !4556, metadata !DIExpression()), !dbg !4557
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !4558, !range !3581, !noundef !405
  %tobool = trunc i8 %0 to i1, !dbg !4558
  %lnot = xor i1 %tobool, true, !dbg !4558
  %lnot1 = xor i1 %lnot, true, !dbg !4558
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4558
  %conv = sext i32 %lnot.ext to i64, !dbg !4558
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4558
  %tobool2 = icmp ne i64 %expval, 0, !dbg !4558
  ret i1 %tobool2, !dbg !4559
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kvmalloc(i64 noundef %size, i32 noundef %flags) #14 align 16 !dbg !4560 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4564, metadata !DIExpression()), !dbg !4566
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4565, metadata !DIExpression()), !dbg !4567
  %0 = load i64, ptr %size.addr, align 8, !dbg !4568
  %1 = load i32, ptr %flags.addr, align 4, !dbg !4569
  %call = call noalias ptr @kvmalloc_node(i64 noundef %0, i32 noundef %1, i32 noundef -1) #22, !dbg !4570
  ret ptr %call, !dbg !4571
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !4572 dso_local noalias ptr @kvmalloc_node(i64 noundef, i32 noundef, i32 noundef) #15

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @jhash2(ptr noundef %k, i32 noundef %length, i32 noundef %initval) #4 align 16 !dbg !4575 {
entry:
  %k.addr = alloca ptr, align 8
  %length.addr = alloca i32, align 4
  %initval.addr = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  store ptr %k, ptr %k.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %k.addr, metadata !4582, metadata !DIExpression()), !dbg !4588
  store i32 %length, ptr %length.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %length.addr, metadata !4583, metadata !DIExpression()), !dbg !4589
  store i32 %initval, ptr %initval.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %initval.addr, metadata !4584, metadata !DIExpression()), !dbg !4590
  call void @llvm.lifetime.start.p0(i64 4, ptr %a) #16, !dbg !4591
  call void @llvm.dbg.declare(metadata ptr %a, metadata !4585, metadata !DIExpression()), !dbg !4592
  call void @llvm.lifetime.start.p0(i64 4, ptr %b) #16, !dbg !4591
  call void @llvm.dbg.declare(metadata ptr %b, metadata !4586, metadata !DIExpression()), !dbg !4593
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #16, !dbg !4591
  call void @llvm.dbg.declare(metadata ptr %c, metadata !4587, metadata !DIExpression()), !dbg !4594
  %0 = load i32, ptr %length.addr, align 4, !dbg !4595
  %shl = shl i32 %0, 2, !dbg !4596
  %add = add i32 -559038737, %shl, !dbg !4597
  %1 = load i32, ptr %initval.addr, align 4, !dbg !4598
  %add1 = add i32 %add, %1, !dbg !4599
  store i32 %add1, ptr %c, align 4, !dbg !4600
  store i32 %add1, ptr %b, align 4, !dbg !4601
  store i32 %add1, ptr %a, align 4, !dbg !4602
  br label %while.cond, !dbg !4603

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i32, ptr %length.addr, align 4, !dbg !4604
  %cmp = icmp ugt i32 %2, 3, !dbg !4605
  br i1 %cmp, label %while.body, label %while.end, !dbg !4603

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %k.addr, align 8, !dbg !4606
  %arrayidx = getelementptr i32, ptr %3, i64 0, !dbg !4606
  %4 = load i32, ptr %arrayidx, align 4, !dbg !4606
  %5 = load i32, ptr %a, align 4, !dbg !4608
  %add2 = add i32 %5, %4, !dbg !4608
  store i32 %add2, ptr %a, align 4, !dbg !4608
  %6 = load ptr, ptr %k.addr, align 8, !dbg !4609
  %arrayidx3 = getelementptr i32, ptr %6, i64 1, !dbg !4609
  %7 = load i32, ptr %arrayidx3, align 4, !dbg !4609
  %8 = load i32, ptr %b, align 4, !dbg !4610
  %add4 = add i32 %8, %7, !dbg !4610
  store i32 %add4, ptr %b, align 4, !dbg !4610
  %9 = load ptr, ptr %k.addr, align 8, !dbg !4611
  %arrayidx5 = getelementptr i32, ptr %9, i64 2, !dbg !4611
  %10 = load i32, ptr %arrayidx5, align 4, !dbg !4611
  %11 = load i32, ptr %c, align 4, !dbg !4612
  %add6 = add i32 %11, %10, !dbg !4612
  store i32 %add6, ptr %c, align 4, !dbg !4612
  %12 = load i32, ptr %c, align 4, !dbg !4613
  %13 = load i32, ptr %a, align 4, !dbg !4613
  %sub = sub i32 %13, %12, !dbg !4613
  store i32 %sub, ptr %a, align 4, !dbg !4613
  %14 = load i32, ptr %c, align 4, !dbg !4613
  %call = call i32 @rol32(i32 noundef %14, i32 noundef 4) #17, !dbg !4613
  %15 = load i32, ptr %a, align 4, !dbg !4613
  %xor = xor i32 %15, %call, !dbg !4613
  store i32 %xor, ptr %a, align 4, !dbg !4613
  %16 = load i32, ptr %b, align 4, !dbg !4613
  %17 = load i32, ptr %c, align 4, !dbg !4613
  %add7 = add i32 %17, %16, !dbg !4613
  store i32 %add7, ptr %c, align 4, !dbg !4613
  %18 = load i32, ptr %a, align 4, !dbg !4613
  %19 = load i32, ptr %b, align 4, !dbg !4613
  %sub8 = sub i32 %19, %18, !dbg !4613
  store i32 %sub8, ptr %b, align 4, !dbg !4613
  %20 = load i32, ptr %a, align 4, !dbg !4613
  %call9 = call i32 @rol32(i32 noundef %20, i32 noundef 6) #17, !dbg !4613
  %21 = load i32, ptr %b, align 4, !dbg !4613
  %xor10 = xor i32 %21, %call9, !dbg !4613
  store i32 %xor10, ptr %b, align 4, !dbg !4613
  %22 = load i32, ptr %c, align 4, !dbg !4613
  %23 = load i32, ptr %a, align 4, !dbg !4613
  %add11 = add i32 %23, %22, !dbg !4613
  store i32 %add11, ptr %a, align 4, !dbg !4613
  %24 = load i32, ptr %b, align 4, !dbg !4613
  %25 = load i32, ptr %c, align 4, !dbg !4613
  %sub12 = sub i32 %25, %24, !dbg !4613
  store i32 %sub12, ptr %c, align 4, !dbg !4613
  %26 = load i32, ptr %b, align 4, !dbg !4613
  %call13 = call i32 @rol32(i32 noundef %26, i32 noundef 8) #17, !dbg !4613
  %27 = load i32, ptr %c, align 4, !dbg !4613
  %xor14 = xor i32 %27, %call13, !dbg !4613
  store i32 %xor14, ptr %c, align 4, !dbg !4613
  %28 = load i32, ptr %a, align 4, !dbg !4613
  %29 = load i32, ptr %b, align 4, !dbg !4613
  %add15 = add i32 %29, %28, !dbg !4613
  store i32 %add15, ptr %b, align 4, !dbg !4613
  %30 = load i32, ptr %c, align 4, !dbg !4613
  %31 = load i32, ptr %a, align 4, !dbg !4613
  %sub16 = sub i32 %31, %30, !dbg !4613
  store i32 %sub16, ptr %a, align 4, !dbg !4613
  %32 = load i32, ptr %c, align 4, !dbg !4613
  %call17 = call i32 @rol32(i32 noundef %32, i32 noundef 16) #17, !dbg !4613
  %33 = load i32, ptr %a, align 4, !dbg !4613
  %xor18 = xor i32 %33, %call17, !dbg !4613
  store i32 %xor18, ptr %a, align 4, !dbg !4613
  %34 = load i32, ptr %b, align 4, !dbg !4613
  %35 = load i32, ptr %c, align 4, !dbg !4613
  %add19 = add i32 %35, %34, !dbg !4613
  store i32 %add19, ptr %c, align 4, !dbg !4613
  %36 = load i32, ptr %a, align 4, !dbg !4613
  %37 = load i32, ptr %b, align 4, !dbg !4613
  %sub20 = sub i32 %37, %36, !dbg !4613
  store i32 %sub20, ptr %b, align 4, !dbg !4613
  %38 = load i32, ptr %a, align 4, !dbg !4613
  %call21 = call i32 @rol32(i32 noundef %38, i32 noundef 19) #17, !dbg !4613
  %39 = load i32, ptr %b, align 4, !dbg !4613
  %xor22 = xor i32 %39, %call21, !dbg !4613
  store i32 %xor22, ptr %b, align 4, !dbg !4613
  %40 = load i32, ptr %c, align 4, !dbg !4613
  %41 = load i32, ptr %a, align 4, !dbg !4613
  %add23 = add i32 %41, %40, !dbg !4613
  store i32 %add23, ptr %a, align 4, !dbg !4613
  %42 = load i32, ptr %b, align 4, !dbg !4613
  %43 = load i32, ptr %c, align 4, !dbg !4613
  %sub24 = sub i32 %43, %42, !dbg !4613
  store i32 %sub24, ptr %c, align 4, !dbg !4613
  %44 = load i32, ptr %b, align 4, !dbg !4613
  %call25 = call i32 @rol32(i32 noundef %44, i32 noundef 4) #17, !dbg !4613
  %45 = load i32, ptr %c, align 4, !dbg !4613
  %xor26 = xor i32 %45, %call25, !dbg !4613
  store i32 %xor26, ptr %c, align 4, !dbg !4613
  %46 = load i32, ptr %a, align 4, !dbg !4613
  %47 = load i32, ptr %b, align 4, !dbg !4613
  %add27 = add i32 %47, %46, !dbg !4613
  store i32 %add27, ptr %b, align 4, !dbg !4613
  %48 = load i32, ptr %length.addr, align 4, !dbg !4615
  %sub28 = sub i32 %48, 3, !dbg !4615
  store i32 %sub28, ptr %length.addr, align 4, !dbg !4615
  %49 = load ptr, ptr %k.addr, align 8, !dbg !4616
  %add.ptr = getelementptr i32, ptr %49, i64 3, !dbg !4616
  store ptr %add.ptr, ptr %k.addr, align 8, !dbg !4616
  br label %while.cond, !dbg !4603, !llvm.loop !4617

while.end:                                        ; preds = %while.cond
  %50 = load i32, ptr %length.addr, align 4, !dbg !4619
  switch i32 %50, label %sw.epilog [
    i32 3, label %sw.bb
    i32 2, label %sw.bb31
    i32 1, label %sw.bb34
    i32 0, label %sw.epilog
  ], !dbg !4620

sw.bb:                                            ; preds = %while.end
  %51 = load ptr, ptr %k.addr, align 8, !dbg !4621
  %arrayidx29 = getelementptr i32, ptr %51, i64 2, !dbg !4621
  %52 = load i32, ptr %arrayidx29, align 4, !dbg !4621
  %53 = load i32, ptr %c, align 4, !dbg !4623
  %add30 = add i32 %53, %52, !dbg !4623
  store i32 %add30, ptr %c, align 4, !dbg !4623
  br label %sw.bb31, !dbg !4624

sw.bb31:                                          ; preds = %while.end, %sw.bb
  %54 = load ptr, ptr %k.addr, align 8, !dbg !4625
  %arrayidx32 = getelementptr i32, ptr %54, i64 1, !dbg !4625
  %55 = load i32, ptr %arrayidx32, align 4, !dbg !4625
  %56 = load i32, ptr %b, align 4, !dbg !4626
  %add33 = add i32 %56, %55, !dbg !4626
  store i32 %add33, ptr %b, align 4, !dbg !4626
  br label %sw.bb34, !dbg !4627

sw.bb34:                                          ; preds = %while.end, %sw.bb31
  %57 = load ptr, ptr %k.addr, align 8, !dbg !4628
  %arrayidx35 = getelementptr i32, ptr %57, i64 0, !dbg !4628
  %58 = load i32, ptr %arrayidx35, align 4, !dbg !4628
  %59 = load i32, ptr %a, align 4, !dbg !4629
  %add36 = add i32 %59, %58, !dbg !4629
  store i32 %add36, ptr %a, align 4, !dbg !4629
  %60 = load i32, ptr %b, align 4, !dbg !4630
  %61 = load i32, ptr %c, align 4, !dbg !4630
  %xor37 = xor i32 %61, %60, !dbg !4630
  store i32 %xor37, ptr %c, align 4, !dbg !4630
  %62 = load i32, ptr %b, align 4, !dbg !4630
  %call38 = call i32 @rol32(i32 noundef %62, i32 noundef 14) #17, !dbg !4630
  %63 = load i32, ptr %c, align 4, !dbg !4630
  %sub39 = sub i32 %63, %call38, !dbg !4630
  store i32 %sub39, ptr %c, align 4, !dbg !4630
  %64 = load i32, ptr %c, align 4, !dbg !4630
  %65 = load i32, ptr %a, align 4, !dbg !4630
  %xor40 = xor i32 %65, %64, !dbg !4630
  store i32 %xor40, ptr %a, align 4, !dbg !4630
  %66 = load i32, ptr %c, align 4, !dbg !4630
  %call41 = call i32 @rol32(i32 noundef %66, i32 noundef 11) #17, !dbg !4630
  %67 = load i32, ptr %a, align 4, !dbg !4630
  %sub42 = sub i32 %67, %call41, !dbg !4630
  store i32 %sub42, ptr %a, align 4, !dbg !4630
  %68 = load i32, ptr %a, align 4, !dbg !4630
  %69 = load i32, ptr %b, align 4, !dbg !4630
  %xor43 = xor i32 %69, %68, !dbg !4630
  store i32 %xor43, ptr %b, align 4, !dbg !4630
  %70 = load i32, ptr %a, align 4, !dbg !4630
  %call44 = call i32 @rol32(i32 noundef %70, i32 noundef 25) #17, !dbg !4630
  %71 = load i32, ptr %b, align 4, !dbg !4630
  %sub45 = sub i32 %71, %call44, !dbg !4630
  store i32 %sub45, ptr %b, align 4, !dbg !4630
  %72 = load i32, ptr %b, align 4, !dbg !4630
  %73 = load i32, ptr %c, align 4, !dbg !4630
  %xor46 = xor i32 %73, %72, !dbg !4630
  store i32 %xor46, ptr %c, align 4, !dbg !4630
  %74 = load i32, ptr %b, align 4, !dbg !4630
  %call47 = call i32 @rol32(i32 noundef %74, i32 noundef 16) #17, !dbg !4630
  %75 = load i32, ptr %c, align 4, !dbg !4630
  %sub48 = sub i32 %75, %call47, !dbg !4630
  store i32 %sub48, ptr %c, align 4, !dbg !4630
  %76 = load i32, ptr %c, align 4, !dbg !4630
  %77 = load i32, ptr %a, align 4, !dbg !4630
  %xor49 = xor i32 %77, %76, !dbg !4630
  store i32 %xor49, ptr %a, align 4, !dbg !4630
  %78 = load i32, ptr %c, align 4, !dbg !4630
  %call50 = call i32 @rol32(i32 noundef %78, i32 noundef 4) #17, !dbg !4630
  %79 = load i32, ptr %a, align 4, !dbg !4630
  %sub51 = sub i32 %79, %call50, !dbg !4630
  store i32 %sub51, ptr %a, align 4, !dbg !4630
  %80 = load i32, ptr %a, align 4, !dbg !4630
  %81 = load i32, ptr %b, align 4, !dbg !4630
  %xor52 = xor i32 %81, %80, !dbg !4630
  store i32 %xor52, ptr %b, align 4, !dbg !4630
  %82 = load i32, ptr %a, align 4, !dbg !4630
  %call53 = call i32 @rol32(i32 noundef %82, i32 noundef 14) #17, !dbg !4630
  %83 = load i32, ptr %b, align 4, !dbg !4630
  %sub54 = sub i32 %83, %call53, !dbg !4630
  store i32 %sub54, ptr %b, align 4, !dbg !4630
  %84 = load i32, ptr %b, align 4, !dbg !4630
  %85 = load i32, ptr %c, align 4, !dbg !4630
  %xor55 = xor i32 %85, %84, !dbg !4630
  store i32 %xor55, ptr %c, align 4, !dbg !4630
  %86 = load i32, ptr %b, align 4, !dbg !4630
  %call56 = call i32 @rol32(i32 noundef %86, i32 noundef 24) #17, !dbg !4630
  %87 = load i32, ptr %c, align 4, !dbg !4630
  %sub57 = sub i32 %87, %call56, !dbg !4630
  store i32 %sub57, ptr %c, align 4, !dbg !4630
  br label %sw.epilog, !dbg !4632

sw.epilog:                                        ; preds = %while.end, %while.end, %sw.bb34
  %88 = load i32, ptr %c, align 4, !dbg !4633
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #16, !dbg !4634
  call void @llvm.lifetime.end.p0(i64 4, ptr %b) #16, !dbg !4634
  call void @llvm.lifetime.end.p0(i64 4, ptr %a) #16, !dbg !4634
  ret i32 %88, !dbg !4635
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @size_mul(i64 noundef %factor1, i64 noundef %factor2) #4 align 16 !dbg !4636 {
entry:
  %retval = alloca i64, align 8
  %factor1.addr = alloca i64, align 8
  %factor2.addr = alloca i64, align 8
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %factor1, ptr %factor1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %factor1.addr, metadata !4640, metadata !DIExpression()), !dbg !4643
  store i64 %factor2, ptr %factor2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %factor2.addr, metadata !4641, metadata !DIExpression()), !dbg !4644
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #16, !dbg !4645
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !4642, metadata !DIExpression()), !dbg !4646
  %0 = load i64, ptr %factor1.addr, align 8, !dbg !4647
  %1 = load i64, ptr %factor2.addr, align 8, !dbg !4647
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !4647
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !4647
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !4647
  store i64 %4, ptr %bytes, align 8, !dbg !4647
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #17, !dbg !4647
  br i1 %call, label %if.then, label %if.end, !dbg !4649

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !4650
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4650

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %bytes, align 8, !dbg !4651
  store i64 %5, ptr %retval, align 8, !dbg !4652
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4652

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #16, !dbg !4653
  %6 = load i64, ptr %retval, align 8, !dbg !4653
  ret i64 %6, !dbg !4653
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rol32(i32 noundef %word, i32 noundef %shift) #4 align 16 !dbg !4654 {
entry:
  %word.addr = alloca i32, align 4
  %shift.addr = alloca i32, align 4
  store i32 %word, ptr %word.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !4658, metadata !DIExpression()), !dbg !4660
  store i32 %shift, ptr %shift.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %shift.addr, metadata !4659, metadata !DIExpression()), !dbg !4661
  %0 = load i32, ptr %word.addr, align 4, !dbg !4662
  %1 = load i32, ptr %shift.addr, align 4, !dbg !4663
  %and = and i32 %1, 31, !dbg !4664
  %shl = shl i32 %0, %and, !dbg !4665
  %2 = load i32, ptr %word.addr, align 4, !dbg !4666
  %3 = load i32, ptr %shift.addr, align 4, !dbg !4667
  %sub = sub i32 0, %3, !dbg !4668
  %and1 = and i32 %sub, 31, !dbg !4669
  %shr = lshr i32 %2, %and1, !dbg !4670
  %or = or i32 %shl, %shr, !dbg !4671
  ret i32 %or, !dbg !4672
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @stackdepot_memcmp(ptr noundef %u1, ptr noundef %u2, i32 noundef %n) #4 align 16 !dbg !4673 {
entry:
  %retval = alloca i32, align 4
  %u1.addr = alloca ptr, align 8
  %u2.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  store ptr %u1, ptr %u1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %u1.addr, metadata !4677, metadata !DIExpression()), !dbg !4680
  store ptr %u2, ptr %u2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %u2.addr, metadata !4678, metadata !DIExpression()), !dbg !4681
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !4679, metadata !DIExpression()), !dbg !4682
  br label %for.cond, !dbg !4683

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %n.addr, align 4, !dbg !4684
  %dec = add i32 %0, -1, !dbg !4684
  store i32 %dec, ptr %n.addr, align 4, !dbg !4684
  %tobool = icmp ne i32 %0, 0, !dbg !4687
  br i1 %tobool, label %for.body, label %for.end, !dbg !4687

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %u1.addr, align 8, !dbg !4688
  %2 = load i64, ptr %1, align 8, !dbg !4691
  %3 = load ptr, ptr %u2.addr, align 8, !dbg !4692
  %4 = load i64, ptr %3, align 8, !dbg !4693
  %cmp = icmp ne i64 %2, %4, !dbg !4694
  br i1 %cmp, label %if.then, label %if.end, !dbg !4695

if.then:                                          ; preds = %for.body
  store i32 1, ptr %retval, align 4, !dbg !4696
  br label %return, !dbg !4696

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !4697

for.inc:                                          ; preds = %if.end
  %5 = load ptr, ptr %u1.addr, align 8, !dbg !4698
  %incdec.ptr = getelementptr i64, ptr %5, i32 1, !dbg !4698
  store ptr %incdec.ptr, ptr %u1.addr, align 8, !dbg !4698
  %6 = load ptr, ptr %u2.addr, align 8, !dbg !4699
  %incdec.ptr1 = getelementptr i64, ptr %6, i32 1, !dbg !4699
  store ptr %incdec.ptr1, ptr %u2.addr, align 8, !dbg !4699
  br label %for.cond, !dbg !4700, !llvm.loop !4701

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !4703
  br label %return, !dbg !4703

return:                                           ; preds = %for.end, %if.then
  %7 = load i32, ptr %retval, align 4, !dbg !4704
  ret i32 %7, !dbg !4704
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @size_add(i64 noundef %addend1, i64 noundef %addend2) #4 align 16 !dbg !4705 {
entry:
  %retval = alloca i64, align 8
  %addend1.addr = alloca i64, align 8
  %addend2.addr = alloca i64, align 8
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %addend1, ptr %addend1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addend1.addr, metadata !4707, metadata !DIExpression()), !dbg !4710
  store i64 %addend2, ptr %addend2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addend2.addr, metadata !4708, metadata !DIExpression()), !dbg !4711
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #16, !dbg !4712
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !4709, metadata !DIExpression()), !dbg !4713
  %0 = load i64, ptr %addend1.addr, align 8, !dbg !4714
  %1 = load i64, ptr %addend2.addr, align 8, !dbg !4714
  %2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %0, i64 %1), !dbg !4714
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !4714
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !4714
  store i64 %4, ptr %bytes, align 8, !dbg !4714
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #17, !dbg !4714
  br i1 %call, label %if.then, label %if.end, !dbg !4716

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !4717
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4717

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %bytes, align 8, !dbg !4718
  store i64 %5, ptr %retval, align 8, !dbg !4719
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4719

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #16, !dbg !4720
  %6 = load i64, ptr %retval, align 8, !dbg !4720
  ret i64 %6, !dbg !4720
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4721 dso_local ptr @memcpy(ptr noundef, ptr noundef, i64 noundef) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #2

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-builtins" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtins" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { cold noredzone null_pointer_is_valid "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { noredzone null_pointer_is_valid "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtins" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-builtins" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-builtins" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1) "min-legal-vector-width"="0" "no-builtins" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtins" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-builtins" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { noredzone null_pointer_is_valid allocsize(0) "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { nounwind }
attributes #17 = { nobuiltin noredzone "no-builtins" }
attributes #18 = { cold nobuiltin noredzone "no-builtins" }
attributes #19 = { nobuiltin noredzone nounwind willreturn memory(none) "no-builtins" }
attributes #20 = { nobuiltin noredzone allocsize(0,1) "no-builtins" }
attributes #21 = { nounwind memory(read) }
attributes #22 = { nobuiltin noredzone allocsize(0) "no-builtins" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!3558, !3559, !3560, !3561, !3562, !3563, !3564, !3565}
!llvm.ident = !{!3566}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__setup_str_disable_stack_depot", scope: !2, file: !3, line: 113, type: !3557, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/.stackdepot.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -fno-builtin -D KBUILD_MODFILE=\22lib/stackdepot\22 -D KBUILD_BASENAME=\22stackdepot\22 -D KBUILD_MODNAME=\22stackdepot\22 -D __KBUILD_MODNAME=kmod_stackdepot -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/stackdepot.ll lib/stackdepot.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !79, globals: !3427, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/stackdepot.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "126a60e882d7081295c53d3944ca5d22")
!4 = !{!5, !11, !16, !22, !27, !35, !51, !57, !64, !71}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !12, line: 2052, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!13 = !{!14, !15}
!14 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!15 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !17, line: 54, baseType: !7, size: 32, elements: !18)
!17 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!18 = !{!19, !20, !21}
!19 = !DIEnumerator(name: "USRQUOTA", value: 0)
!20 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!21 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !23, line: 65, baseType: !7, size: 32, elements: !24)
!23 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!24 = !{!25, !26}
!25 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!26 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !28, line: 9, baseType: !7, size: 32, elements: !29)
!28 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!29 = !{!30, !31, !32, !33, !34}
!30 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!31 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!32 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!33 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!34 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !36, line: 1325, baseType: !7, size: 32, elements: !37)
!36 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!37 = !{!38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50}
!38 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!39 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!40 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!41 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!42 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!43 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!44 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!45 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!46 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!47 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!48 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!49 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!50 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !52, line: 16, baseType: !7, size: 32, elements: !53)
!52 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!53 = !{!54, !55, !56}
!54 = !DIEnumerator(name: "TT_NONE", value: 0)
!55 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!56 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!57 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !58, line: 51, baseType: !7, size: 32, elements: !59)
!58 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!59 = !{!60, !61, !62, !63}
!60 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!61 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!62 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!63 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !65, line: 15, baseType: !7, size: 32, elements: !66)
!65 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!66 = !{!67, !68, !69, !70}
!67 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!68 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!69 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!70 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!71 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !72, line: 68, baseType: !7, size: 32, elements: !73)
!72 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!73 = !{!74, !75, !76, !77, !78}
!74 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!75 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!76 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!77 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!78 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!79 = !{!80, !82, !83, !114, !118, !111, !119, !120, !124, !128, !117, !3426}
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !81, line: 154, baseType: !7)
!81 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!85 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !86)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_record", file: !3, line: 58, size: 192, elements: !88)
!88 = !{!89, !90, !95, !96, !109}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !87, file: !3, line: 59, baseType: !86, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !87, file: !3, line: 60, baseType: !91, size: 32, offset: 64)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !92, line: 21, baseType: !93)
!92 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !94, line: 27, baseType: !7)
!94 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!95 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !87, file: !3, line: 61, baseType: !91, size: 32, offset: 96)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !87, file: !3, line: 62, baseType: !97, size: 32, offset: 128)
!97 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "handle_parts", file: !3, line: 48, size: 32, elements: !98)
!98 = !{!99, !102}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !97, file: !3, line: 49, baseType: !100, size: 32)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "depot_stack_handle_t", file: !101, line: 27, baseType: !91)
!101 = !DIFile(filename: "./include/linux/stackdepot.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "787fdf2c1a48da25b4d7ecc2db077a40")
!102 = !DIDerivedType(tag: DW_TAG_member, scope: !97, file: !3, line: 50, baseType: !103, size: 32)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !97, file: !3, line: 50, size: 32, elements: !104)
!104 = !{!105, !106, !107, !108}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "pool_index", scope: !103, file: !3, line: 51, baseType: !91, size: 16, flags: DIFlagBitField, extraData: i64 0)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !103, file: !3, line: 52, baseType: !91, size: 10, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !103, file: !3, line: 53, baseType: !91, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !103, file: !3, line: 54, baseType: !91, size: 5, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !87, file: !3, line: 63, baseType: !110, offset: 192)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, elements: !112)
!111 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!112 = !{!113}
!113 = !DISubrange(count: -1)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !116)
!116 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !117)
!117 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !81, line: 61, baseType: !121)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !122, line: 72, baseType: !123)
!122 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !122, line: 16, baseType: !111)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !81, line: 159, baseType: !125)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !92, line: 23, baseType: !126)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !94, line: 31, baseType: !127)
!127 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !36, line: 74, size: 512, align: 128, elements: !130)
!130 = !{!131, !132, !3420, !3425}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !129, file: !36, line: 75, baseType: !111, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, scope: !129, file: !36, line: 83, baseType: !133, size: 320, offset: 64)
!133 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !129, file: !36, line: 83, size: 320, elements: !134)
!134 = !{!135, !3326, !3340, !3344, !3419}
!135 = !DIDerivedType(tag: DW_TAG_member, scope: !133, file: !36, line: 84, baseType: !136, size: 320)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !133, file: !36, line: 84, size: 320, elements: !137)
!137 = !{!138, !154, !3320, !3325}
!138 = !DIDerivedType(tag: DW_TAG_member, scope: !136, file: !36, line: 90, baseType: !139, size: 128)
!139 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !136, file: !36, line: 90, size: 128, elements: !140)
!140 = !{!141, !147, !152, !153}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !139, file: !36, line: 91, baseType: !142, size: 128)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !81, line: 190, size: 128, elements: !143)
!143 = !{!144, !146}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !142, file: !81, line: 191, baseType: !145, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !142, file: !81, line: 191, baseType: !145, size: 64, offset: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, scope: !139, file: !36, line: 94, baseType: !148, size: 128)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !139, file: !36, line: 94, size: 128, elements: !149)
!149 = !{!150, !151}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !148, file: !36, line: 96, baseType: !82, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !148, file: !36, line: 98, baseType: !7, size: 32, offset: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !139, file: !36, line: 102, baseType: !142, size: 128)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !139, file: !36, line: 103, baseType: !142, size: 128)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !136, file: !36, line: 106, baseType: !155, size: 64, offset: 128)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !12, line: 472, size: 1536, align: 64, elements: !157)
!157 = !{!158, !3155, !3156, !3157, !3158, !3159, !3160, !3161, !3162, !3314, !3315, !3316, !3317, !3318, !3319}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !156, file: !12, line: 473, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !12, line: 641, size: 4800, elements: !161)
!161 = !{!162, !165, !166, !174, !175, !182, !183, !186, !187, !3093, !3094, !3095, !3096, !3097, !3103, !3104, !3105, !3106, !3107, !3108, !3109, !3110, !3111, !3112, !3113, !3114, !3115, !3116, !3117, !3118, !3119, !3120, !3121, !3126, !3127, !3128, !3129, !3130, !3131, !3132, !3137, !3140, !3141, !3142, !3151, !3152, !3153, !3154}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !160, file: !12, line: 642, baseType: !163, size: 16)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !81, line: 24, baseType: !164)
!164 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !160, file: !12, line: 643, baseType: !164, size: 16, offset: 16)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !160, file: !12, line: 644, baseType: !167, size: 32, offset: 32)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !168, line: 23, baseType: !169)
!168 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !168, line: 21, size: 32, elements: !170)
!170 = !{!171}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !169, file: !168, line: 22, baseType: !172, size: 32)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !81, line: 37, baseType: !173)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !122, line: 49, baseType: !7)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !160, file: !12, line: 645, baseType: !142, size: 128, offset: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !160, file: !12, line: 646, baseType: !176, size: 32, offset: 192)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !168, line: 28, baseType: !177)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !168, line: 26, size: 32, elements: !178)
!178 = !{!179}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !177, file: !168, line: 27, baseType: !180, size: 32)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !81, line: 38, baseType: !181)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !122, line: 50, baseType: !7)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !160, file: !12, line: 647, baseType: !7, size: 32, offset: 224)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !160, file: !12, line: 650, baseType: !184, size: 64, offset: 256)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !12, line: 607, flags: DIFlagFwdDecl)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !160, file: !12, line: 651, baseType: !184, size: 64, offset: 320)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !160, file: !12, line: 654, baseType: !188, size: 64, offset: 384)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !190)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !12, line: 1966, size: 2048, align: 512, elements: !191)
!191 = !{!192, !2918, !2931, !2935, !2939, !2943, !2947, !2951, !2955, !2959, !2963, !2964, !2968, !2972, !3009, !3038, !3042, !3048, !3052, !3056, !3060, !3064, !3068, !3074, !3078}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !190, file: !12, line: 1967, baseType: !193, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DISubroutineType(types: !195)
!195 = !{!196, !159, !196, !7}
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !198, line: 82, size: 1536, elements: !199)
!198 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!199 = !{!200, !201, !211, !219, !220, !236, !237, !241, !292, !2901, !2902, !2903, !2904, !2910, !2911, !2912}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !197, file: !198, line: 84, baseType: !7, size: 32)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !197, file: !198, line: 85, baseType: !202, size: 32, offset: 32)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !203, line: 275, baseType: !204)
!203 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !203, line: 275, size: 32, elements: !205)
!205 = !{!206}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !204, file: !203, line: 275, baseType: !207, size: 32)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !203, line: 69, baseType: !208)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !203, line: 64, size: 32, elements: !209)
!209 = !{!210}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !208, file: !203, line: 65, baseType: !7, size: 32)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !197, file: !198, line: 86, baseType: !212, size: 128, offset: 64)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !213, line: 38, size: 128, elements: !214)
!213 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!214 = !{!215, !217}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !212, file: !213, line: 39, baseType: !216, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !212, file: !213, line: 39, baseType: !218, size: 64, offset: 64)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !197, file: !198, line: 87, baseType: !196, size: 64, offset: 192)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !197, file: !198, line: 88, baseType: !221, size: 128, offset: 256)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !198, line: 49, size: 128, elements: !222)
!222 = !{!223, !232}
!223 = !DIDerivedType(tag: DW_TAG_member, scope: !221, file: !198, line: 50, baseType: !224, size: 64)
!224 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !221, file: !198, line: 50, size: 64, elements: !225)
!225 = !{!226, !231}
!226 = !DIDerivedType(tag: DW_TAG_member, scope: !224, file: !198, line: 51, baseType: !227, size: 64)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !224, file: !198, line: 51, size: 64, elements: !228)
!228 = !{!229, !230}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !227, file: !198, line: 52, baseType: !91, size: 32)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !227, file: !198, line: 52, baseType: !91, size: 32, offset: 32)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !224, file: !198, line: 54, baseType: !125, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !221, file: !198, line: 56, baseType: !233, size: 64, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !235)
!235 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !197, file: !198, line: 89, baseType: !159, size: 64, offset: 384)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !197, file: !198, line: 91, baseType: !238, size: 256, offset: 448)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !235, size: 256, elements: !239)
!239 = !{!240}
!240 = !DISubrange(count: 32)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !197, file: !198, line: 94, baseType: !242, size: 64, offset: 704)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !243, line: 25, size: 64, elements: !244)
!243 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!244 = !{!245}
!245 = !DIDerivedType(tag: DW_TAG_member, scope: !242, file: !243, line: 26, baseType: !246, size: 64)
!246 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !242, file: !243, line: 26, size: 64, elements: !247)
!247 = !{!248, !249}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !246, file: !243, line: 28, baseType: !126, size: 64, align: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, scope: !246, file: !243, line: 30, baseType: !250, size: 64)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !246, file: !243, line: 30, size: 64, elements: !251)
!251 = !{!252, !291}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !250, file: !243, line: 31, baseType: !253, size: 32)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !254, line: 29, baseType: !255)
!254 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !254, line: 17, size: 32, elements: !256)
!256 = !{!257}
!257 = !DIDerivedType(tag: DW_TAG_member, scope: !255, file: !254, line: 18, baseType: !258, size: 32)
!258 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !255, file: !254, line: 18, size: 32, elements: !259)
!259 = !{!260}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !258, file: !254, line: 19, baseType: !261, size: 32)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !262, line: 14, size: 32, elements: !263)
!262 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!263 = !{!264}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !261, file: !262, line: 15, baseType: !265, size: 32)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !266, line: 44, baseType: !267)
!266 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !266, line: 14, size: 32, elements: !268)
!268 = !{!269}
!269 = !DIDerivedType(tag: DW_TAG_member, scope: !267, file: !266, line: 15, baseType: !270, size: 32)
!270 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !267, file: !266, line: 15, size: 32, elements: !271)
!271 = !{!272, !277, !284}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !270, file: !266, line: 16, baseType: !273, size: 32)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !81, line: 174, baseType: !274)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !81, line: 172, size: 32, elements: !275)
!275 = !{!276}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !274, file: !81, line: 173, baseType: !117, size: 32)
!277 = !DIDerivedType(tag: DW_TAG_member, scope: !270, file: !266, line: 24, baseType: !278, size: 16)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !270, file: !266, line: 24, size: 16, elements: !279)
!279 = !{!280, !283}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !278, file: !266, line: 25, baseType: !281, size: 8)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !92, line: 17, baseType: !282)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !94, line: 21, baseType: !235)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !278, file: !266, line: 26, baseType: !281, size: 8, offset: 8)
!284 = !DIDerivedType(tag: DW_TAG_member, scope: !270, file: !266, line: 28, baseType: !285, size: 32)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !270, file: !266, line: 28, size: 32, elements: !286)
!286 = !{!287, !290}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !285, file: !266, line: 29, baseType: !288, size: 16)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !92, line: 19, baseType: !289)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !94, line: 24, baseType: !164)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !285, file: !266, line: 30, baseType: !288, size: 16, offset: 16)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !250, file: !243, line: 32, baseType: !117, size: 32, offset: 32)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !197, file: !198, line: 95, baseType: !293, size: 64, offset: 768)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !295)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !198, line: 128, size: 1024, align: 512, elements: !296)
!296 = !{!297, !301, !302, !309, !318, !322, !326, !330, !331, !335, !340, !2891, !2895}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !295, file: !198, line: 129, baseType: !298, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DISubroutineType(types: !300)
!300 = !{!117, !196, !7}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !295, file: !198, line: 130, baseType: !298, size: 64, offset: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !295, file: !198, line: 131, baseType: !303, size: 64, offset: 128)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DISubroutineType(types: !305)
!305 = !{!117, !306, !308}
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !197)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !295, file: !198, line: 132, baseType: !310, size: 64, offset: 192)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DISubroutineType(types: !312)
!312 = !{!117, !306, !7, !313, !316}
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !315)
!315 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !221)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !295, file: !198, line: 134, baseType: !319, size: 64, offset: 256)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DISubroutineType(types: !321)
!321 = !{!117, !306}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !295, file: !198, line: 135, baseType: !323, size: 64, offset: 320)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DISubroutineType(types: !325)
!325 = !{!117, !196}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !295, file: !198, line: 136, baseType: !327, size: 64, offset: 384)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = !DISubroutineType(types: !329)
!329 = !{null, !196}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !295, file: !198, line: 137, baseType: !327, size: 64, offset: 448)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !295, file: !198, line: 138, baseType: !332, size: 64, offset: 512)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DISubroutineType(types: !334)
!334 = !{null, !196, !159}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !295, file: !198, line: 139, baseType: !336, size: 64, offset: 576)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DISubroutineType(types: !338)
!338 = !{!339, !196, !339, !117}
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !295, file: !198, line: 140, baseType: !341, size: 64, offset: 640)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DISubroutineType(types: !343)
!343 = !{!344, !2890}
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !346, line: 70, size: 256, elements: !347)
!346 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!347 = !{!348, !349, !2886, !2887}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !345, file: !346, line: 71, baseType: !196, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !345, file: !346, line: 72, baseType: !350, size: 64, offset: 64)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !12, line: 1190, size: 10752, elements: !352)
!352 = !{!353, !354, !357, !358, !359, !363, !416, !580, !620, !710, !714, !715, !716, !717, !718, !727, !728, !729, !730, !735, !739, !740, !743, !746, !749, !752, !753, !754, !795, !2817, !2818, !2819, !2820, !2821, !2822, !2825, !2827, !2834, !2835, !2836, !2837, !2838, !2853, !2854, !2855, !2856, !2857, !2860, !2861, !2862, !2877, !2878, !2879, !2880, !2881, !2882, !2883, !2884, !2885}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !351, file: !12, line: 1191, baseType: !142, size: 128)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !351, file: !12, line: 1192, baseType: !355, size: 32, offset: 128)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !81, line: 21, baseType: !356)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !81, line: 18, baseType: !91)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !351, file: !12, line: 1193, baseType: !235, size: 8, offset: 160)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !351, file: !12, line: 1194, baseType: !111, size: 64, offset: 192)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !351, file: !12, line: 1195, baseType: !360, size: 64, offset: 256)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !81, line: 52, baseType: !361)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !122, line: 88, baseType: !362)
!362 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !351, file: !12, line: 1196, baseType: !364, size: 64, offset: 320)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !12, line: 2366, size: 576, elements: !366)
!366 = !{!367, !368, !369, !375, !379, !383, !387, !391, !392, !402, !406, !407, !408, !412, !413, !414, !415}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !365, file: !12, line: 2367, baseType: !313, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !365, file: !12, line: 2368, baseType: !117, size: 32, offset: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !365, file: !12, line: 2376, baseType: !370, size: 64, offset: 128)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = !DISubroutineType(types: !372)
!372 = !{!117, !373}
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !346, line: 21, flags: DIFlagFwdDecl)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !365, file: !12, line: 2377, baseType: !376, size: 64, offset: 192)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !378)
!378 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !12, line: 75, flags: DIFlagFwdDecl)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !365, file: !12, line: 2378, baseType: !380, size: 64, offset: 256)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DISubroutineType(types: !382)
!382 = !{!196, !364, !117, !313, !82}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !365, file: !12, line: 2380, baseType: !384, size: 64, offset: 320)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DISubroutineType(types: !386)
!386 = !{null, !350}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !365, file: !12, line: 2381, baseType: !388, size: 64, offset: 384)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !390, line: 103, flags: DIFlagFwdDecl)
!390 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ec86911224c4b764298f6e976616738c")
!391 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !365, file: !12, line: 2382, baseType: !364, size: 64, offset: 448)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !365, file: !12, line: 2383, baseType: !393, size: 64, offset: 512)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !81, line: 194, size: 64, elements: !394)
!394 = !{!395}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !393, file: !81, line: 195, baseType: !396, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !81, line: 198, size: 128, elements: !398)
!398 = !{!399, !400}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !397, file: !81, line: 199, baseType: !396, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !397, file: !81, line: 199, baseType: !401, size: 64, offset: 64)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !365, file: !12, line: 2385, baseType: !403, offset: 576)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !404, line: 206, elements: !405)
!404 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!405 = !{}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !365, file: !12, line: 2386, baseType: !403, offset: 576)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !365, file: !12, line: 2387, baseType: !403, offset: 576)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !365, file: !12, line: 2388, baseType: !409, offset: 576)
!409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !403, elements: !410)
!410 = !{!411}
!411 = !DISubrange(count: 3)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !365, file: !12, line: 2390, baseType: !403, offset: 576)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !365, file: !12, line: 2391, baseType: !403, offset: 576)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !365, file: !12, line: 2392, baseType: !403, offset: 576)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !365, file: !12, line: 2393, baseType: !403, offset: 576)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !351, file: !12, line: 1197, baseType: !417, size: 64, offset: 384)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !419)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !12, line: 2057, size: 1664, elements: !420)
!420 = !{!421, !425, !429, !430, !434, !440, !444, !445, !446, !450, !454, !458, !459, !460, !466, !471, !472, !479, !480, !481, !482, !490, !494, !563, !578, !579}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !419, file: !12, line: 2058, baseType: !422, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DISubroutineType(types: !424)
!424 = !{!159, !350}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !419, file: !12, line: 2059, baseType: !426, size: 64, offset: 64)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = !DISubroutineType(types: !428)
!428 = !{null, !159}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !419, file: !12, line: 2060, baseType: !426, size: 64, offset: 128)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !419, file: !12, line: 2062, baseType: !431, size: 64, offset: 192)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DISubroutineType(types: !433)
!433 = !{null, !159, !117}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !419, file: !12, line: 2063, baseType: !435, size: 64, offset: 256)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DISubroutineType(types: !437)
!437 = !{!117, !159, !438}
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !12, line: 309, flags: DIFlagFwdDecl)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !419, file: !12, line: 2064, baseType: !441, size: 64, offset: 320)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DISubroutineType(types: !443)
!443 = !{!117, !159}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !419, file: !12, line: 2065, baseType: !426, size: 64, offset: 384)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !419, file: !12, line: 2066, baseType: !384, size: 64, offset: 448)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !419, file: !12, line: 2067, baseType: !447, size: 64, offset: 512)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DISubroutineType(types: !449)
!449 = !{!117, !350, !117}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !419, file: !12, line: 2068, baseType: !451, size: 64, offset: 576)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DISubroutineType(types: !453)
!453 = !{!117, !350, !11}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !419, file: !12, line: 2069, baseType: !455, size: 64, offset: 640)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DISubroutineType(types: !457)
!457 = !{!117, !350}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !419, file: !12, line: 2070, baseType: !451, size: 64, offset: 704)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !419, file: !12, line: 2071, baseType: !455, size: 64, offset: 768)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !419, file: !12, line: 2072, baseType: !461, size: 64, offset: 832)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DISubroutineType(types: !463)
!463 = !{!117, !196, !464}
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !12, line: 62, flags: DIFlagFwdDecl)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !419, file: !12, line: 2073, baseType: !467, size: 64, offset: 896)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DISubroutineType(types: !469)
!469 = !{!117, !350, !470, !339}
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !419, file: !12, line: 2074, baseType: !384, size: 64, offset: 960)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !419, file: !12, line: 2076, baseType: !473, size: 64, offset: 1024)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DISubroutineType(types: !475)
!475 = !{!117, !476, !196}
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !478, line: 66, flags: DIFlagFwdDecl)
!478 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!479 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !419, file: !12, line: 2077, baseType: !473, size: 64, offset: 1088)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !419, file: !12, line: 2078, baseType: !473, size: 64, offset: 1152)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !419, file: !12, line: 2079, baseType: !473, size: 64, offset: 1216)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !419, file: !12, line: 2081, baseType: !483, size: 64, offset: 1280)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DISubroutineType(types: !485)
!485 = !{!486, !350, !117, !339, !120, !360}
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !81, line: 66, baseType: !487)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !122, line: 73, baseType: !488)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !122, line: 15, baseType: !489)
!489 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !419, file: !12, line: 2082, baseType: !491, size: 64, offset: 1344)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DISubroutineType(types: !493)
!493 = !{!486, !350, !117, !313, !120, !360}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !419, file: !12, line: 2083, baseType: !495, size: 64, offset: 1408)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DISubroutineType(types: !497)
!497 = !{!498, !159}
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !17, line: 296, size: 1664, elements: !501)
!501 = !{!502, !503, !504, !505, !506, !527, !528, !529, !530, !546, !547, !548}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !500, file: !17, line: 297, baseType: !397, size: 128)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !500, file: !17, line: 298, baseType: !142, size: 128, offset: 128)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !500, file: !17, line: 299, baseType: !142, size: 128, offset: 256)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !500, file: !17, line: 300, baseType: !142, size: 128, offset: 384)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !500, file: !17, line: 301, baseType: !507, size: 256, offset: 512)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !508, line: 66, size: 256, elements: !509)
!508 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!509 = !{!510, !519, !521, !526}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !507, file: !508, line: 67, baseType: !511, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !512, line: 13, baseType: !513)
!512 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !81, line: 181, baseType: !514)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !81, line: 179, size: 64, elements: !515)
!515 = !{!516}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !514, file: !81, line: 180, baseType: !517, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !92, line: 22, baseType: !518)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !94, line: 30, baseType: !362)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !507, file: !508, line: 68, baseType: !520, size: 32, offset: 64)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !262, line: 23, baseType: !261)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !507, file: !508, line: 70, baseType: !522, size: 32, offset: 96)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !523, line: 15, size: 32, elements: !524)
!523 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!524 = !{!525}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !522, file: !523, line: 20, baseType: !273, size: 32)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !507, file: !508, line: 72, baseType: !142, size: 128, offset: 128)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !500, file: !17, line: 302, baseType: !253, size: 32, offset: 768)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !500, file: !17, line: 303, baseType: !273, size: 32, offset: 800)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !500, file: !17, line: 304, baseType: !350, size: 64, offset: 832)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !500, file: !17, line: 305, baseType: !531, size: 64, offset: 896)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !17, line: 68, size: 64, elements: !532)
!532 = !{!533, !545}
!533 = !DIDerivedType(tag: DW_TAG_member, scope: !531, file: !17, line: 69, baseType: !534, size: 32)
!534 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !531, file: !17, line: 69, size: 32, elements: !535)
!535 = !{!536, !537, !538}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !534, file: !17, line: 70, baseType: !167, size: 32)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !534, file: !17, line: 71, baseType: !176, size: 32)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !534, file: !17, line: 72, baseType: !539, size: 32)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !540, line: 24, baseType: !541)
!540 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !540, line: 22, size: 32, elements: !542)
!542 = !{!543}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !541, file: !540, line: 23, baseType: !544, size: 32)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !540, line: 20, baseType: !173)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !531, file: !17, line: 74, baseType: !16, size: 32, offset: 32)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !500, file: !17, line: 306, baseType: !360, size: 64, offset: 960)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !500, file: !17, line: 307, baseType: !111, size: 64, offset: 1024)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !500, file: !17, line: 308, baseType: !549, size: 576, offset: 1088)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !17, line: 205, size: 576, elements: !550)
!550 = !{!551, !553, !554, !555, !556, !557, !558, !559, !562}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !549, file: !17, line: 206, baseType: !552, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !17, line: 66, baseType: !362)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !549, file: !17, line: 207, baseType: !552, size: 64, offset: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !549, file: !17, line: 208, baseType: !552, size: 64, offset: 128)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !549, file: !17, line: 209, baseType: !552, size: 64, offset: 192)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !549, file: !17, line: 210, baseType: !552, size: 64, offset: 256)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !549, file: !17, line: 211, baseType: !552, size: 64, offset: 320)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !549, file: !17, line: 212, baseType: !552, size: 64, offset: 384)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !549, file: !17, line: 213, baseType: !560, size: 64, offset: 448)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !561, line: 8, baseType: !518)
!561 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!562 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !549, file: !17, line: 214, baseType: !560, size: 64, offset: 512)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !419, file: !12, line: 2085, baseType: !564, size: 64, offset: 1472)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DISubroutineType(types: !566)
!566 = !{!489, !350, !567}
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !569, line: 15, size: 256, elements: !570)
!569 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!570 = !{!571, !572, !573, !574, !575}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !568, file: !569, line: 16, baseType: !80, size: 32)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !568, file: !569, line: 19, baseType: !117, size: 32, offset: 32)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !568, file: !569, line: 26, baseType: !111, size: 64, offset: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !568, file: !569, line: 33, baseType: !111, size: 64, offset: 128)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !568, file: !569, line: 36, baseType: !576, size: 64, offset: 192)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !36, line: 33, flags: DIFlagFwdDecl)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !419, file: !12, line: 2087, baseType: !564, size: 64, offset: 1536)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !419, file: !12, line: 2089, baseType: !384, size: 64, offset: 1600)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !351, file: !12, line: 1198, baseType: !581, size: 64, offset: 448)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !583)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !17, line: 324, size: 704, elements: !584)
!584 = !{!585, !589, !593, !597, !598, !599, !600, !601, !606, !611, !615}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !583, file: !17, line: 325, baseType: !586, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DISubroutineType(types: !588)
!588 = !{!117, !499}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !583, file: !17, line: 326, baseType: !590, size: 64, offset: 64)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DISubroutineType(types: !592)
!592 = !{!499, !350, !117}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !583, file: !17, line: 327, baseType: !594, size: 64, offset: 128)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DISubroutineType(types: !596)
!596 = !{null, !499}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !583, file: !17, line: 328, baseType: !586, size: 64, offset: 192)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !583, file: !17, line: 329, baseType: !586, size: 64, offset: 256)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !583, file: !17, line: 330, baseType: !586, size: 64, offset: 320)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !583, file: !17, line: 331, baseType: !447, size: 64, offset: 384)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !583, file: !17, line: 334, baseType: !602, size: 64, offset: 448)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DISubroutineType(types: !604)
!604 = !{!605, !159}
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !583, file: !17, line: 335, baseType: !607, size: 64, offset: 512)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DISubroutineType(types: !609)
!609 = !{!117, !159, !610}
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !583, file: !17, line: 337, baseType: !612, size: 64, offset: 576)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = !DISubroutineType(types: !614)
!614 = !{!117, !159, !605}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !583, file: !17, line: 339, baseType: !616, size: 64, offset: 640)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DISubroutineType(types: !618)
!618 = !{!117, !350, !619}
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !351, file: !12, line: 1199, baseType: !621, size: 64, offset: 512)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !623)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !17, line: 430, size: 704, elements: !624)
!624 = !{!625, !636, !637, !641, !642, !643, !658, !681, !685, !686, !709}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !623, file: !17, line: 431, baseType: !626, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = !DISubroutineType(types: !628)
!628 = !{!117, !350, !117, !117, !629}
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !631)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !632, line: 8, size: 128, elements: !633)
!632 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!633 = !{!634, !635}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !631, file: !632, line: 9, baseType: !344, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !631, file: !632, line: 10, baseType: !196, size: 64, offset: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !623, file: !17, line: 432, baseType: !447, size: 64, offset: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !623, file: !17, line: 433, baseType: !638, size: 64, offset: 128)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DISubroutineType(types: !640)
!640 = !{!117, !350, !7}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !623, file: !17, line: 434, baseType: !638, size: 64, offset: 192)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !623, file: !17, line: 435, baseType: !447, size: 64, offset: 256)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !623, file: !17, line: 436, baseType: !644, size: 64, offset: 320)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DISubroutineType(types: !646)
!646 = !{!117, !350, !117, !647}
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !17, line: 417, size: 256, elements: !649)
!649 = !{!650, !651, !652, !653, !654, !655, !656, !657}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !648, file: !17, line: 418, baseType: !117, size: 32)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !648, file: !17, line: 419, baseType: !7, size: 32, offset: 32)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !648, file: !17, line: 420, baseType: !7, size: 32, offset: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !648, file: !17, line: 422, baseType: !7, size: 32, offset: 96)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !648, file: !17, line: 423, baseType: !7, size: 32, offset: 128)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !648, file: !17, line: 424, baseType: !7, size: 32, offset: 160)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !648, file: !17, line: 425, baseType: !7, size: 32, offset: 192)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !648, file: !17, line: 426, baseType: !7, size: 32, offset: 224)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !623, file: !17, line: 437, baseType: !659, size: 64, offset: 384)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DISubroutineType(types: !661)
!661 = !{!117, !350, !531, !662}
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !17, line: 345, size: 960, elements: !664)
!664 = !{!665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !663, file: !17, line: 346, baseType: !117, size: 32)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !663, file: !17, line: 347, baseType: !125, size: 64, offset: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !663, file: !17, line: 348, baseType: !125, size: 64, offset: 128)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !663, file: !17, line: 349, baseType: !125, size: 64, offset: 192)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !663, file: !17, line: 350, baseType: !125, size: 64, offset: 256)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !663, file: !17, line: 351, baseType: !125, size: 64, offset: 320)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !663, file: !17, line: 352, baseType: !125, size: 64, offset: 384)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !663, file: !17, line: 353, baseType: !517, size: 64, offset: 448)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !663, file: !17, line: 355, baseType: !517, size: 64, offset: 512)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !663, file: !17, line: 356, baseType: !117, size: 32, offset: 576)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !663, file: !17, line: 357, baseType: !117, size: 32, offset: 608)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !663, file: !17, line: 358, baseType: !125, size: 64, offset: 640)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !663, file: !17, line: 359, baseType: !125, size: 64, offset: 704)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !663, file: !17, line: 360, baseType: !125, size: 64, offset: 768)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !663, file: !17, line: 361, baseType: !517, size: 64, offset: 832)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !663, file: !17, line: 362, baseType: !117, size: 32, offset: 896)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !623, file: !17, line: 438, baseType: !682, size: 64, offset: 448)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DISubroutineType(types: !684)
!684 = !{!117, !350, !619, !662}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !623, file: !17, line: 440, baseType: !659, size: 64, offset: 512)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !623, file: !17, line: 441, baseType: !687, size: 64, offset: 576)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DISubroutineType(types: !689)
!689 = !{!117, !350, !690}
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !17, line: 411, size: 1408, elements: !692)
!692 = !{!693, !694}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !691, file: !17, line: 412, baseType: !7, size: 32)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !691, file: !17, line: 413, baseType: !695, size: 1344, offset: 64)
!695 = !DICompositeType(tag: DW_TAG_array_type, baseType: !696, size: 1344, elements: !410)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !17, line: 397, size: 448, elements: !697)
!697 = !{!698, !699, !700, !701, !702, !703, !704, !705, !706, !708}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !696, file: !17, line: 398, baseType: !7, size: 32)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !696, file: !17, line: 399, baseType: !7, size: 32, offset: 32)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !696, file: !17, line: 401, baseType: !7, size: 32, offset: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !696, file: !17, line: 402, baseType: !7, size: 32, offset: 96)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !696, file: !17, line: 403, baseType: !7, size: 32, offset: 128)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !696, file: !17, line: 404, baseType: !7, size: 32, offset: 160)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !696, file: !17, line: 405, baseType: !7, size: 32, offset: 192)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !696, file: !17, line: 406, baseType: !127, size: 64, offset: 256)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !696, file: !17, line: 407, baseType: !707, size: 64, offset: 320)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !81, line: 132, baseType: !125)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !696, file: !17, line: 408, baseType: !707, size: 64, offset: 384)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !623, file: !17, line: 442, baseType: !638, size: 64, offset: 640)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !351, file: !12, line: 1200, baseType: !711, size: 64, offset: 576)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !713)
!713 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !12, line: 54, flags: DIFlagFwdDecl)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !351, file: !12, line: 1201, baseType: !111, size: 64, offset: 640)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !351, file: !12, line: 1202, baseType: !111, size: 64, offset: 704)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !351, file: !12, line: 1203, baseType: !111, size: 64, offset: 768)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !351, file: !12, line: 1204, baseType: !196, size: 64, offset: 832)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !351, file: !12, line: 1205, baseType: !719, size: 320, offset: 896)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !720, line: 48, size: 320, elements: !721)
!720 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!721 = !{!722, !723, !724, !725, !726}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !719, file: !720, line: 49, baseType: !511, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !719, file: !720, line: 55, baseType: !511, size: 64, offset: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !719, file: !720, line: 57, baseType: !522, size: 32, offset: 128)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !719, file: !720, line: 59, baseType: !520, size: 32, offset: 160)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !719, file: !720, line: 60, baseType: !142, size: 128, offset: 192)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !351, file: !12, line: 1206, baseType: !117, size: 32, offset: 1216)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !351, file: !12, line: 1207, baseType: !273, size: 32, offset: 1248)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !351, file: !12, line: 1209, baseType: !82, size: 64, offset: 1280)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !351, file: !12, line: 1211, baseType: !731, size: 64, offset: 1344)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !734)
!734 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !12, line: 1211, flags: DIFlagFwdDecl)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !351, file: !12, line: 1223, baseType: !736, size: 64, offset: 1408)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !213, line: 34, size: 64, elements: !737)
!737 = !{!738}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !736, file: !213, line: 35, baseType: !216, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !351, file: !12, line: 1224, baseType: !142, size: 128, offset: 1472)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !351, file: !12, line: 1225, baseType: !741, size: 64, offset: 1600)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !12, line: 1225, flags: DIFlagFwdDecl)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !351, file: !12, line: 1226, baseType: !744, size: 64, offset: 1664)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !12, line: 1226, flags: DIFlagFwdDecl)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !351, file: !12, line: 1227, baseType: !747, size: 64, offset: 1728)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !12, line: 50, flags: DIFlagFwdDecl)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !351, file: !12, line: 1228, baseType: !750, size: 64, offset: 1792)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !12, line: 1228, flags: DIFlagFwdDecl)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !351, file: !12, line: 1229, baseType: !397, size: 128, offset: 1856)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !351, file: !12, line: 1230, baseType: !7, size: 32, offset: 1984)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !351, file: !12, line: 1231, baseType: !755, size: 2496, offset: 2048)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !17, line: 521, size: 2496, elements: !756)
!756 = !{!757, !758, !759, !761, !793}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !755, file: !17, line: 522, baseType: !7, size: 32)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !755, file: !17, line: 523, baseType: !719, size: 320, offset: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !755, file: !17, line: 524, baseType: !760, size: 192, offset: 384)
!760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 192, elements: !410)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !755, file: !17, line: 525, baseType: !762, size: 1728, offset: 576)
!762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !763, size: 1728, elements: !410)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !17, line: 222, size: 576, elements: !764)
!764 = !{!765, !785, !786, !787, !788, !789, !790, !791, !792}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !763, file: !17, line: 223, baseType: !766, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !17, line: 445, size: 256, elements: !768)
!768 = !{!769, !770, !783, !784}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !767, file: !17, line: 446, baseType: !117, size: 32)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !767, file: !17, line: 447, baseType: !771, size: 64, offset: 64)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !773)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !17, line: 312, size: 512, elements: !774)
!774 = !{!775, !776, !777, !778, !779, !780, !781, !782}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !773, file: !17, line: 313, baseType: !447, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !773, file: !17, line: 314, baseType: !447, size: 64, offset: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !773, file: !17, line: 315, baseType: !447, size: 64, offset: 128)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !773, file: !17, line: 316, baseType: !447, size: 64, offset: 192)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !773, file: !17, line: 317, baseType: !586, size: 64, offset: 256)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !773, file: !17, line: 318, baseType: !586, size: 64, offset: 320)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !773, file: !17, line: 319, baseType: !586, size: 64, offset: 384)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !773, file: !17, line: 320, baseType: !616, size: 64, offset: 448)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !767, file: !17, line: 448, baseType: !388, size: 64, offset: 128)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !767, file: !17, line: 449, baseType: !766, size: 64, offset: 192)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !763, file: !17, line: 224, baseType: !117, size: 32, offset: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !763, file: !17, line: 226, baseType: !142, size: 128, offset: 128)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !763, file: !17, line: 227, baseType: !111, size: 64, offset: 256)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !763, file: !17, line: 228, baseType: !7, size: 32, offset: 320)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !763, file: !17, line: 229, baseType: !7, size: 32, offset: 352)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !763, file: !17, line: 230, baseType: !552, size: 64, offset: 384)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !763, file: !17, line: 231, baseType: !552, size: 64, offset: 448)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !763, file: !17, line: 232, baseType: !82, size: 64, offset: 512)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !755, file: !17, line: 526, baseType: !794, size: 192, offset: 2304)
!794 = !DICompositeType(tag: DW_TAG_array_type, baseType: !771, size: 192, elements: !410)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !351, file: !12, line: 1233, baseType: !796, size: 2368, offset: 4544)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !12, line: 1184, size: 2368, elements: !797)
!797 = !{!798, !799, !800}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !796, file: !12, line: 1185, baseType: !164, size: 16)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !796, file: !12, line: 1186, baseType: !164, size: 16, offset: 16)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !796, file: !12, line: 1187, baseType: !801, size: 2304, offset: 64)
!801 = !DICompositeType(tag: DW_TAG_array_type, baseType: !802, size: 2304, elements: !410)
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !803, line: 12, size: 768, elements: !804)
!803 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!804 = !{!805, !827, !829, !2815, !2816}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !802, file: !803, line: 13, baseType: !806, size: 384)
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !807, line: 17, size: 384, elements: !808)
!807 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!808 = !{!809, !810, !811, !818}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !806, file: !807, line: 18, baseType: !117, size: 32)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !806, file: !807, line: 19, baseType: !117, size: 32, offset: 32)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !806, file: !807, line: 20, baseType: !812, size: 192, offset: 64)
!812 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !813, line: 41, baseType: !814)
!813 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !813, line: 37, size: 192, elements: !815)
!815 = !{!816, !817}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !814, file: !813, line: 38, baseType: !253, size: 32)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !814, file: !813, line: 39, baseType: !142, size: 128, offset: 64)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !806, file: !807, line: 22, baseType: !819, size: 128, align: 64, offset: 256)
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !81, line: 232, size: 128, align: 64, elements: !820)
!820 = !{!821, !823}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !819, file: !81, line: 233, baseType: !822, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !819, file: !81, line: 234, baseType: !824, size: 64, offset: 64)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DISubroutineType(types: !826)
!826 = !{null, !822}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !802, file: !803, line: 14, baseType: !828, size: 64, offset: 384)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !802, file: !803, line: 15, baseType: !830, size: 64, offset: 448)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !831, line: 16, size: 64, elements: !832)
!831 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!832 = !{!833}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !830, file: !831, line: 17, baseType: !834, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !478, line: 746, size: 58368, elements: !836)
!836 = !{!837, !845, !846, !847, !853, !854, !855, !856, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !934, !945, !1040, !1044, !1047, !1078, !1079, !1080, !1081, !1092, !1094, !1095, !1096, !1097, !1098, !1099, !1110, !1111, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1128, !1129, !1136, !1137, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1960, !1963, !1964, !1965, !1966, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !1975, !1976, !1977, !1989, !1990, !1991, !1992, !1993, !1994, !1995, !2001, !2002, !2003, !2004, !2005, !2006, !2007, !2019, !2025, !2026, !2027, !2028, !2029, !2033, !2036, !2043, !2048, !2051, !2054, !2057, !2060, !2200, !2231, !2232, !2233, !2234, !2235, !2236, !2237, !2238, !2239, !2242, !2243, !2244, !2253, !2261, !2262, !2263, !2264, !2265, !2270, !2271, !2272, !2275, !2276, !2279, !2282, !2285, !2293, !2296, !2297, !2383, !2384, !2385, !2386, !2387, !2393, !2394, !2395, !2396, !2399, !2400, !2403, !2406, !2407, !2410, !2411, !2412, !2415, !2416, !2417, !2418, !2419, !2420, !2433, !2434, !2435, !2436, !2437, !2438, !2439, !2440, !2441, !2452, !2453, !2459, !2462, !2463, !2464, !2465, !2466, !2467, !2468, !2471, !2543, !2545, !2546, !2547, !2548, !2549, !2561, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588, !2592, !2593, !2594}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !835, file: !478, line: 752, baseType: !838, size: 192)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !839, line: 56, size: 192, elements: !840)
!839 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!840 = !{!841, !842, !843, !844}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !838, file: !839, line: 57, baseType: !111, size: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !838, file: !839, line: 58, baseType: !111, size: 64, offset: 64)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !838, file: !839, line: 59, baseType: !91, size: 32, offset: 128)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !838, file: !839, line: 61, baseType: !91, size: 32, offset: 160)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !835, file: !478, line: 754, baseType: !7, size: 32, offset: 192)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !835, file: !478, line: 767, baseType: !82, size: 64, offset: 256)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !835, file: !478, line: 768, baseType: !848, size: 32, offset: 320)
!848 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !849, line: 113, baseType: !850)
!849 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !849, line: 111, size: 32, elements: !851)
!851 = !{!852}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !850, file: !849, line: 112, baseType: !273, size: 32)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !835, file: !478, line: 770, baseType: !7, size: 32, offset: 352)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !835, file: !478, line: 771, baseType: !7, size: 32, offset: 384)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !835, file: !478, line: 774, baseType: !117, size: 32, offset: 416)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !835, file: !478, line: 775, baseType: !857, size: 128, offset: 448)
!857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !858, line: 58, size: 128, elements: !859)
!858 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!859 = !{!860, !866, !871, !872}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !857, file: !858, line: 59, baseType: !861, size: 64)
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !862, line: 60, size: 64, elements: !863)
!862 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!863 = !{!864}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !861, file: !862, line: 61, baseType: !865, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!866 = !DIDerivedType(tag: DW_TAG_member, scope: !857, file: !858, line: 60, baseType: !867, size: 32, offset: 64)
!867 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !857, file: !858, line: 60, size: 32, elements: !868)
!868 = !{!869, !870}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !867, file: !858, line: 61, baseType: !7, size: 32)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !867, file: !858, line: 62, baseType: !273, size: 32)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !857, file: !858, line: 65, baseType: !288, size: 16, offset: 96)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !857, file: !858, line: 65, baseType: !288, size: 16, offset: 112)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !835, file: !478, line: 776, baseType: !7, size: 32, offset: 576)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !835, file: !478, line: 777, baseType: !111, size: 64, offset: 640)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !835, file: !478, line: 778, baseType: !834, size: 64, offset: 704)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !835, file: !478, line: 787, baseType: !117, size: 32, offset: 768)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !835, file: !478, line: 788, baseType: !117, size: 32, offset: 800)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !835, file: !478, line: 790, baseType: !117, size: 32, offset: 832)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !835, file: !478, line: 792, baseType: !117, size: 32, offset: 864)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !835, file: !478, line: 793, baseType: !117, size: 32, offset: 896)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !835, file: !478, line: 794, baseType: !117, size: 32, offset: 928)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !835, file: !478, line: 795, baseType: !7, size: 32, offset: 960)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !835, file: !478, line: 797, baseType: !884, size: 2048, offset: 1024)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !478, line: 551, size: 2048, elements: !885)
!885 = !{!886, !891, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !913, !916, !917, !918}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !884, file: !478, line: 553, baseType: !887, size: 128)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !478, line: 411, size: 128, elements: !888)
!888 = !{!889, !890}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !887, file: !478, line: 412, baseType: !111, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !887, file: !478, line: 413, baseType: !91, size: 32, offset: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !884, file: !478, line: 554, baseType: !892, size: 192, align: 64, offset: 128)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !893, line: 5, size: 192, align: 64, elements: !894)
!893 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!894 = !{!895, !896, !898}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !892, file: !893, line: 6, baseType: !111, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !892, file: !893, line: 7, baseType: !897, size: 64, offset: 64)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !892, file: !893, line: 8, baseType: !897, size: 64, offset: 128)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !884, file: !478, line: 555, baseType: !125, size: 64, offset: 320)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !884, file: !478, line: 556, baseType: !125, size: 64, offset: 384)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !884, file: !478, line: 558, baseType: !142, size: 128, offset: 448)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !884, file: !478, line: 559, baseType: !7, size: 32, offset: 576)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !884, file: !478, line: 561, baseType: !125, size: 64, offset: 640)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !884, file: !478, line: 562, baseType: !125, size: 64, offset: 704)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !884, file: !478, line: 563, baseType: !125, size: 64, offset: 768)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !884, file: !478, line: 564, baseType: !125, size: 64, offset: 832)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !884, file: !478, line: 565, baseType: !517, size: 64, offset: 896)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !884, file: !478, line: 566, baseType: !125, size: 64, offset: 960)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !884, file: !478, line: 568, baseType: !125, size: 64, offset: 1024)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !884, file: !478, line: 571, baseType: !117, size: 32, offset: 1088)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !884, file: !478, line: 572, baseType: !912, size: 64, offset: 1152)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !884, file: !478, line: 574, baseType: !914, size: 64, offset: 1216)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !478, line: 49, flags: DIFlagFwdDecl)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !884, file: !478, line: 576, baseType: !914, size: 64, offset: 1280)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !884, file: !478, line: 578, baseType: !111, size: 64, offset: 1344)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !884, file: !478, line: 588, baseType: !919, size: 512, align: 512, offset: 1536)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !478, line: 497, size: 512, align: 512, elements: !920)
!920 = !{!921, !922, !923, !924, !925, !926, !927, !928, !929}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !919, file: !478, line: 498, baseType: !125, size: 64)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !919, file: !478, line: 499, baseType: !125, size: 64, offset: 64)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !919, file: !478, line: 500, baseType: !125, size: 64, offset: 128)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !919, file: !478, line: 501, baseType: !91, size: 32, offset: 192)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !919, file: !478, line: 502, baseType: !91, size: 32, offset: 224)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !919, file: !478, line: 503, baseType: !111, size: 64, offset: 256)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !919, file: !478, line: 504, baseType: !111, size: 64, offset: 320)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !919, file: !478, line: 505, baseType: !111, size: 64, offset: 384)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !919, file: !478, line: 506, baseType: !930, size: 64, align: 64, offset: 448)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !478, line: 445, size: 64, align: 64, elements: !931)
!931 = !{!932, !933}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !930, file: !478, line: 446, baseType: !7, size: 32)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !930, file: !478, line: 447, baseType: !7, size: 32, offset: 32)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !835, file: !478, line: 798, baseType: !935, size: 384, offset: 3072)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !478, line: 592, size: 384, elements: !936)
!936 = !{!937, !938, !939, !940, !941, !942, !943}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !935, file: !478, line: 593, baseType: !142, size: 128)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !935, file: !478, line: 594, baseType: !111, size: 64, offset: 128)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !935, file: !478, line: 595, baseType: !111, size: 64, offset: 192)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !935, file: !478, line: 596, baseType: !7, size: 32, offset: 256)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !935, file: !478, line: 597, baseType: !164, size: 16, offset: 288)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !935, file: !478, line: 598, baseType: !164, size: 16, offset: 304)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !935, file: !478, line: 600, baseType: !944, size: 64, offset: 320)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !835, file: !478, line: 799, baseType: !946, size: 1792, offset: 3456)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !478, line: 610, size: 1792, elements: !947)
!947 = !{!948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !1037, !1038}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !946, file: !478, line: 611, baseType: !892, size: 192, align: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !946, file: !478, line: 618, baseType: !125, size: 64, offset: 192)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !946, file: !478, line: 619, baseType: !125, size: 64, offset: 256)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !946, file: !478, line: 620, baseType: !125, size: 64, offset: 320)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !946, file: !478, line: 621, baseType: !125, size: 64, offset: 384)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !946, file: !478, line: 622, baseType: !125, size: 64, offset: 448)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !946, file: !478, line: 629, baseType: !517, size: 64, offset: 512)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !946, file: !478, line: 630, baseType: !125, size: 64, offset: 576)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !946, file: !478, line: 631, baseType: !7, size: 32, offset: 640)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !946, file: !478, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !946, file: !478, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !946, file: !478, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !946, file: !478, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !946, file: !478, line: 662, baseType: !962, size: 512, offset: 704)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !23, line: 118, size: 512, elements: !963)
!963 = !{!964, !972, !973, !978, !1033, !1034, !1035, !1036}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !962, file: !23, line: 119, baseType: !965, size: 256)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !966, line: 9, size: 256, elements: !967)
!966 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!967 = !{!968, !969}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !965, file: !966, line: 10, baseType: !892, size: 192, align: 64)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !965, file: !966, line: 11, baseType: !970, size: 64, offset: 192)
!970 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !971, line: 29, baseType: !517)
!971 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!972 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !962, file: !23, line: 120, baseType: !970, size: 64, offset: 256)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !962, file: !23, line: 121, baseType: !974, size: 64, offset: 320)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = !DISubroutineType(types: !976)
!976 = !{!22, !977}
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !962, file: !23, line: 122, baseType: !979, size: 64, offset: 384)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !23, line: 159, size: 512, align: 512, elements: !981)
!981 = !{!982, !1007, !1008, !1011, !1016, !1017, !1028, !1032}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !980, file: !23, line: 160, baseType: !983, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !23, line: 215, size: 4608, align: 512, elements: !985)
!985 = !{!986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !984, file: !23, line: 216, baseType: !520, size: 32)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !984, file: !23, line: 217, baseType: !7, size: 32, offset: 32)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !984, file: !23, line: 218, baseType: !7, size: 32, offset: 64)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !984, file: !23, line: 219, baseType: !7, size: 32, offset: 96)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !984, file: !23, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !984, file: !23, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !984, file: !23, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !984, file: !23, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !984, file: !23, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !984, file: !23, line: 226, baseType: !7, size: 32, offset: 160)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !984, file: !23, line: 227, baseType: !164, size: 16, offset: 192)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !984, file: !23, line: 228, baseType: !164, size: 16, offset: 208)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !984, file: !23, line: 229, baseType: !7, size: 32, offset: 224)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !984, file: !23, line: 235, baseType: !970, size: 64, offset: 256)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !984, file: !23, line: 236, baseType: !977, size: 64, offset: 320)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !984, file: !23, line: 237, baseType: !970, size: 64, offset: 384)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !984, file: !23, line: 238, baseType: !977, size: 64, offset: 448)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !984, file: !23, line: 239, baseType: !1004, size: 4096, align: 512, offset: 512)
!1004 = !DICompositeType(tag: DW_TAG_array_type, baseType: !980, size: 4096, align: 512, elements: !1005)
!1005 = !{!1006}
!1006 = !DISubrange(count: 8)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !980, file: !23, line: 161, baseType: !7, size: 32, offset: 64)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !980, file: !23, line: 162, baseType: !1009, size: 32, offset: 96)
!1009 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !81, line: 32, baseType: !1010)
!1010 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !122, line: 96, baseType: !117)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !980, file: !23, line: 163, baseType: !1012, size: 32, offset: 128)
!1012 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !203, line: 274, baseType: !1013)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !203, line: 274, size: 32, elements: !1014)
!1014 = !{!1015}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1013, file: !203, line: 274, baseType: !207, size: 32)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !980, file: !23, line: 164, baseType: !977, size: 64, offset: 192)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !980, file: !23, line: 165, baseType: !1018, size: 128, offset: 256)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !966, line: 14, size: 128, elements: !1019)
!1019 = !{!1020}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1018, file: !966, line: 15, baseType: !1021, size: 128)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !893, line: 26, size: 128, elements: !1022)
!1022 = !{!1023, !1027}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1021, file: !893, line: 27, baseType: !1024, size: 64)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !893, line: 12, size: 64, elements: !1025)
!1025 = !{!1026}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1024, file: !893, line: 13, baseType: !897, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1021, file: !893, line: 28, baseType: !897, size: 64, offset: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !980, file: !23, line: 166, baseType: !1029, size: 64, offset: 384)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{!970}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !980, file: !23, line: 167, baseType: !970, size: 64, offset: 448)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !962, file: !23, line: 123, baseType: !281, size: 8, offset: 448)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !962, file: !23, line: 124, baseType: !281, size: 8, offset: 456)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !962, file: !23, line: 125, baseType: !281, size: 8, offset: 464)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !962, file: !23, line: 126, baseType: !281, size: 8, offset: 472)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !946, file: !478, line: 671, baseType: !962, size: 512, offset: 1216)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !946, file: !478, line: 679, baseType: !1039, size: 64, offset: 1728)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !835, file: !478, line: 800, baseType: !1041, size: 64, offset: 5248)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1043)
!1043 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !478, line: 800, flags: DIFlagFwdDecl)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !835, file: !478, line: 809, baseType: !1045, size: 64, offset: 5312)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !478, line: 70, flags: DIFlagFwdDecl)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !835, file: !478, line: 825, baseType: !1048, size: 2048, align: 512, offset: 5632)
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !478, line: 509, size: 2048, align: 512, elements: !1049)
!1049 = !{!1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1048, file: !478, line: 511, baseType: !125, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1048, file: !478, line: 512, baseType: !125, size: 64, offset: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1048, file: !478, line: 513, baseType: !125, size: 64, offset: 128)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1048, file: !478, line: 514, baseType: !125, size: 64, offset: 192)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1048, file: !478, line: 515, baseType: !125, size: 64, offset: 256)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1048, file: !478, line: 516, baseType: !125, size: 64, offset: 320)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1048, file: !478, line: 518, baseType: !125, size: 64, offset: 384)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1048, file: !478, line: 519, baseType: !125, size: 64, offset: 448)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1048, file: !478, line: 520, baseType: !517, size: 64, offset: 512)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1048, file: !478, line: 522, baseType: !125, size: 64, offset: 576)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1048, file: !478, line: 523, baseType: !125, size: 64, offset: 640)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1048, file: !478, line: 524, baseType: !517, size: 64, offset: 704)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1048, file: !478, line: 526, baseType: !517, size: 64, offset: 768)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1048, file: !478, line: 527, baseType: !125, size: 64, offset: 832)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1048, file: !478, line: 529, baseType: !125, size: 64, offset: 896)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1048, file: !478, line: 530, baseType: !125, size: 64, offset: 960)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1048, file: !478, line: 531, baseType: !125, size: 64, offset: 1024)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1048, file: !478, line: 532, baseType: !125, size: 64, offset: 1088)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1048, file: !478, line: 533, baseType: !125, size: 64, offset: 1152)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1048, file: !478, line: 535, baseType: !125, size: 64, offset: 1216)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1048, file: !478, line: 536, baseType: !125, size: 64, offset: 1280)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1048, file: !478, line: 537, baseType: !125, size: 64, offset: 1344)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1048, file: !478, line: 538, baseType: !125, size: 64, offset: 1408)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1048, file: !478, line: 539, baseType: !125, size: 64, offset: 1472)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1048, file: !478, line: 540, baseType: !125, size: 64, offset: 1536)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1048, file: !478, line: 541, baseType: !125, size: 64, offset: 1600)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1048, file: !478, line: 542, baseType: !125, size: 64, offset: 1664)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1048, file: !478, line: 543, baseType: !125, size: 64, offset: 1728)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !835, file: !478, line: 833, baseType: !7, size: 32, offset: 7680)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !835, file: !478, line: 836, baseType: !7, size: 32, offset: 7712)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !835, file: !478, line: 837, baseType: !117, size: 32, offset: 7744)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !835, file: !478, line: 838, baseType: !1082, size: 64, offset: 7808)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1084)
!1084 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1085, line: 19, baseType: !1086)
!1085 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1085, line: 19, size: 64, elements: !1087)
!1087 = !{!1088}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1086, file: !1085, line: 19, baseType: !1089, size: 64)
!1089 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 64, elements: !1090)
!1090 = !{!1091}
!1091 = !DISubrange(count: 1)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !835, file: !478, line: 839, baseType: !1093, size: 64, offset: 7872)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !835, file: !478, line: 840, baseType: !1084, size: 64, offset: 7936)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !835, file: !478, line: 841, baseType: !82, size: 64, offset: 8000)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !835, file: !478, line: 843, baseType: !164, size: 16, offset: 8064)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !835, file: !478, line: 845, baseType: !164, size: 16, offset: 8080)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !835, file: !478, line: 848, baseType: !117, size: 32, offset: 8096)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !835, file: !478, line: 849, baseType: !1100, size: 32, offset: 8128)
!1100 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !478, line: 718, size: 32, elements: !1101)
!1101 = !{!1102, !1109}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1100, file: !478, line: 724, baseType: !1103, size: 32)
!1103 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1100, file: !478, line: 719, size: 32, elements: !1104)
!1104 = !{!1105, !1106, !1107, !1108}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1103, file: !478, line: 720, baseType: !281, size: 8)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1103, file: !478, line: 721, baseType: !281, size: 8, offset: 8)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1103, file: !478, line: 722, baseType: !281, size: 8, offset: 16)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1103, file: !478, line: 723, baseType: !281, size: 8, offset: 24)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1100, file: !478, line: 725, baseType: !91, size: 32)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !835, file: !478, line: 850, baseType: !142, size: 128, offset: 8192)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !835, file: !478, line: 851, baseType: !1112, size: 64, offset: 8320)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !478, line: 60, flags: DIFlagFwdDecl)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !835, file: !478, line: 855, baseType: !111, size: 64, offset: 8384)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !835, file: !478, line: 856, baseType: !281, size: 8, offset: 8448)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !835, file: !478, line: 857, baseType: !281, size: 8, offset: 8456)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !835, file: !478, line: 858, baseType: !117, size: 32, offset: 8480)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !835, file: !478, line: 859, baseType: !142, size: 128, offset: 8512)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !835, file: !478, line: 860, baseType: !117, size: 32, offset: 8640)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !835, file: !478, line: 861, baseType: !142, size: 128, offset: 8704)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !835, file: !478, line: 873, baseType: !1122, size: 256, offset: 8832)
!1122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !478, line: 376, size: 256, elements: !1123)
!1123 = !{!1124, !1125, !1126, !1127}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1122, file: !478, line: 381, baseType: !111, size: 64)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1122, file: !478, line: 384, baseType: !127, size: 64, offset: 64)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1122, file: !478, line: 389, baseType: !127, size: 64, offset: 128)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1122, file: !478, line: 392, baseType: !127, size: 64, offset: 192)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !835, file: !478, line: 875, baseType: !142, size: 128, offset: 9088)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !835, file: !478, line: 877, baseType: !1130, size: 320, offset: 9216)
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1131, line: 86, size: 320, elements: !1132)
!1131 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1132 = !{!1133, !1134, !1135}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1130, file: !1131, line: 87, baseType: !117, size: 32)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1130, file: !1131, line: 88, baseType: !142, size: 128, offset: 64)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1130, file: !1131, line: 89, baseType: !142, size: 128, offset: 192)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !835, file: !478, line: 878, baseType: !892, size: 192, align: 64, offset: 9536)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !835, file: !478, line: 881, baseType: !1138, size: 64, offset: 9728)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !36, line: 733, size: 10240, elements: !1140)
!1140 = !{!1141, !1881}
!1141 = !DIDerivedType(tag: DW_TAG_member, scope: !1139, file: !36, line: 734, baseType: !1142, size: 10240)
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1139, file: !36, line: 734, size: 10240, elements: !1143)
!1143 = !{!1144, !1148, !1161, !1768, !1769, !1770, !1771, !1772, !1773, !1780, !1781, !1782, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1821, !1823, !1826, !1850, !1851, !1852, !1855, !1856, !1857, !1860, !1861, !1862, !1868, !1869}
!1144 = !DIDerivedType(tag: DW_TAG_member, scope: !1142, file: !36, line: 739, baseType: !1145, size: 512, align: 512)
!1145 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1142, file: !36, line: 739, size: 512, align: 512, elements: !1146)
!1146 = !{!1147}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1145, file: !36, line: 747, baseType: !273, size: 32)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1142, file: !36, line: 750, baseType: !1149, size: 128, offset: 512)
!1149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1150, line: 218, size: 128, elements: !1151)
!1150 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1151 = !{!1152, !1159, !1160}
!1152 = !DIDerivedType(tag: DW_TAG_member, scope: !1149, file: !1150, line: 219, baseType: !1153, size: 32)
!1153 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1149, file: !1150, line: 219, size: 32, elements: !1154)
!1154 = !{!1155, !1156}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1153, file: !1150, line: 220, baseType: !253, size: 32)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1153, file: !1150, line: 221, baseType: !1157)
!1157 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1150, line: 197, baseType: !1158)
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1150, line: 197, elements: !405)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1149, file: !1150, line: 223, baseType: !7, size: 32, offset: 32)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1149, file: !1150, line: 224, baseType: !82, size: 64, offset: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1142, file: !36, line: 752, baseType: !1162, size: 64, offset: 640)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = !DISubroutineType(types: !1164)
!1164 = !{!111, !1165, !111, !111, !111, !111}
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !12, line: 994, size: 1856, align: 64, elements: !1167)
!1167 = !{!1168, !1174, !1175, !1177, !1178, !1179, !1180, !1181, !1231, !1426, !1435, !1436, !1437, !1758, !1759, !1760, !1761, !1763, !1764, !1767}
!1168 = !DIDerivedType(tag: DW_TAG_member, scope: !1166, file: !12, line: 995, baseType: !1169, size: 128)
!1169 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1166, file: !12, line: 995, size: 128, elements: !1170)
!1170 = !{!1171, !1172, !1173}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1169, file: !12, line: 996, baseType: !861, size: 64)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1169, file: !12, line: 997, baseType: !819, size: 128, align: 64)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1169, file: !12, line: 998, baseType: !7, size: 32)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1166, file: !12, line: 1005, baseType: !253, size: 32, offset: 128)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1166, file: !12, line: 1006, baseType: !1176, size: 32, offset: 160)
!1176 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !81, line: 156, baseType: !7)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1166, file: !12, line: 1007, baseType: !511, size: 64, offset: 192)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1166, file: !12, line: 1008, baseType: !507, size: 256, offset: 256)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1166, file: !12, line: 1009, baseType: !360, size: 64, offset: 512)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1166, file: !12, line: 1010, baseType: !7, size: 32, offset: 576)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1166, file: !12, line: 1011, baseType: !1182, size: 256, offset: 640)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !12, line: 948, size: 256, elements: !1183)
!1183 = !{!1184, !1205, !1227, !1228, !1229, !1230}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1182, file: !12, line: 949, baseType: !1185, size: 64)
!1185 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1186, line: 34, baseType: !1187)
!1186 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1187 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1186, line: 25, size: 64, elements: !1188)
!1188 = !{!1189}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1187, file: !1186, line: 26, baseType: !1190, size: 64)
!1190 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1191, line: 27, baseType: !1192)
!1191 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1191, line: 13, size: 64, elements: !1193)
!1193 = !{!1194, !1204}
!1194 = !DIDerivedType(tag: DW_TAG_member, scope: !1192, file: !1191, line: 14, baseType: !1195, size: 32)
!1195 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1192, file: !1191, line: 14, size: 32, elements: !1196)
!1196 = !{!1197, !1198}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1195, file: !1191, line: 15, baseType: !273, size: 32)
!1198 = !DIDerivedType(tag: DW_TAG_member, scope: !1195, file: !1191, line: 16, baseType: !1199, size: 32)
!1199 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1195, file: !1191, line: 16, size: 32, elements: !1200)
!1200 = !{!1201, !1202}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1199, file: !1191, line: 18, baseType: !281, size: 8)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1199, file: !1191, line: 19, baseType: !1203, size: 24, offset: 8)
!1203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !281, size: 24, elements: !410)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1192, file: !1191, line: 26, baseType: !265, size: 32, offset: 32)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1182, file: !12, line: 950, baseType: !1206, size: 64, offset: 64)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !28, line: 59, size: 768, elements: !1208)
!1208 = !{!1209, !1210, !1211, !1212, !1216, !1217, !1218, !1219}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1207, file: !28, line: 61, baseType: !848, size: 32)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1207, file: !28, line: 62, baseType: !7, size: 32, offset: 32)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1207, file: !28, line: 63, baseType: !253, size: 32, offset: 64)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1207, file: !28, line: 65, baseType: !1213, size: 256, offset: 128)
!1213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !393, size: 256, elements: !1214)
!1214 = !{!1215}
!1215 = !DISubrange(count: 4)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1207, file: !28, line: 66, baseType: !393, size: 64, offset: 384)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1207, file: !28, line: 68, baseType: !812, size: 192, offset: 448)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1207, file: !28, line: 69, baseType: !819, size: 128, align: 64, offset: 640)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1207, file: !28, line: 70, baseType: !1220, offset: 768)
!1220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1221, elements: !112)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !28, line: 54, size: 128, elements: !1222)
!1222 = !{!1223, !1224}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1221, file: !28, line: 55, baseType: !117, size: 32)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1221, file: !28, line: 56, baseType: !1225, size: 64, offset: 64)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !28, line: 56, flags: DIFlagFwdDecl)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1182, file: !12, line: 951, baseType: !27, size: 32, offset: 128)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1182, file: !12, line: 952, baseType: !167, size: 32, offset: 160)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1182, file: !12, line: 952, baseType: !167, size: 32, offset: 192)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1182, file: !12, line: 953, baseType: !117, size: 32, offset: 224)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1166, file: !12, line: 1012, baseType: !1232, size: 64, offset: 896)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1234)
!1234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1235, line: 110, size: 1472, elements: !1236)
!1235 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1236 = !{!1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1253, !1254, !1255, !1256, !1257, !1258, !1371, !1372, !1373, !1374, !1375, !1406, !1409, !1413, !1421}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1234, file: !1235, line: 111, baseType: !511, size: 64)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1234, file: !1235, line: 112, baseType: !167, size: 32, offset: 64)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1234, file: !1235, line: 113, baseType: !176, size: 32, offset: 96)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1234, file: !1235, line: 114, baseType: !167, size: 32, offset: 128)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1234, file: !1235, line: 115, baseType: !176, size: 32, offset: 160)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1234, file: !1235, line: 116, baseType: !167, size: 32, offset: 192)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1234, file: !1235, line: 117, baseType: !176, size: 32, offset: 224)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1234, file: !1235, line: 118, baseType: !167, size: 32, offset: 256)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1234, file: !1235, line: 119, baseType: !176, size: 32, offset: 288)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1234, file: !1235, line: 120, baseType: !7, size: 32, offset: 320)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1234, file: !1235, line: 121, baseType: !1248, size: 64, offset: 384)
!1248 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1249, line: 24, baseType: !1250)
!1249 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1250 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1249, line: 24, size: 64, elements: !1251)
!1251 = !{!1252}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1250, file: !1249, line: 24, baseType: !125, size: 64)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1234, file: !1235, line: 122, baseType: !1248, size: 64, offset: 448)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1234, file: !1235, line: 123, baseType: !1248, size: 64, offset: 512)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1234, file: !1235, line: 124, baseType: !1248, size: 64, offset: 576)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1234, file: !1235, line: 125, baseType: !1248, size: 64, offset: 640)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1234, file: !1235, line: 127, baseType: !235, size: 8, offset: 704)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1234, file: !1235, line: 129, baseType: !1259, size: 64, offset: 768)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1261, line: 195, size: 1728, elements: !1262)
!1261 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1262 = !{!1263, !1264, !1269, !1274, !1275, !1278, !1279, !1284, !1285, !1286, !1287, !1290, !1291, !1292, !1294, !1295, !1335, !1356}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1260, file: !1261, line: 196, baseType: !848, size: 32)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1260, file: !1261, line: 197, baseType: !1265, size: 32, offset: 32)
!1265 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1261, line: 28, baseType: !1266)
!1266 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !81, line: 104, baseType: !1267)
!1267 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !92, line: 20, baseType: !1268)
!1268 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !94, line: 26, baseType: !117)
!1269 = !DIDerivedType(tag: DW_TAG_member, scope: !1260, file: !1261, line: 198, baseType: !1270, size: 192, offset: 64)
!1270 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1260, file: !1261, line: 198, size: 192, elements: !1271)
!1271 = !{!1272, !1273}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1270, file: !1261, line: 199, baseType: !142, size: 128)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1270, file: !1261, line: 200, baseType: !892, size: 192, align: 64)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1260, file: !1261, line: 205, baseType: !719, size: 320, offset: 256)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1260, file: !1261, line: 206, baseType: !1276, size: 64, offset: 576)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1261, line: 206, flags: DIFlagFwdDecl)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1260, file: !1261, line: 207, baseType: !82, size: 64, offset: 640)
!1279 = !DIDerivedType(tag: DW_TAG_member, scope: !1260, file: !1261, line: 208, baseType: !1280, size: 64, offset: 704)
!1280 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1260, file: !1261, line: 208, size: 64, elements: !1281)
!1281 = !{!1282, !1283}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1280, file: !1261, line: 209, baseType: !560, size: 64)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1280, file: !1261, line: 210, baseType: !560, size: 64)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1260, file: !1261, line: 212, baseType: !560, size: 64, offset: 768)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1260, file: !1261, line: 213, baseType: !167, size: 32, offset: 832)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1260, file: !1261, line: 214, baseType: !176, size: 32, offset: 864)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1260, file: !1261, line: 215, baseType: !1288, size: 32, offset: 896)
!1288 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1261, line: 31, baseType: !1289)
!1289 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !81, line: 110, baseType: !91)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1260, file: !1261, line: 216, baseType: !164, size: 16, offset: 928)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1260, file: !1261, line: 217, baseType: !164, size: 16, offset: 944)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1260, file: !1261, line: 221, baseType: !1293, size: 16, offset: 960)
!1293 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1260, file: !1261, line: 228, baseType: !111, size: 64, offset: 1024)
!1295 = !DIDerivedType(tag: DW_TAG_member, scope: !1260, file: !1261, line: 245, baseType: !1296, size: 320, offset: 1088)
!1296 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1260, file: !1261, line: 245, size: 320, elements: !1297)
!1297 = !{!1298, !1327}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1296, file: !1261, line: 246, baseType: !1299, size: 320)
!1299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1261, line: 114, size: 320, elements: !1300)
!1300 = !{!1301, !1302, !1314, !1317, !1326}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1299, file: !1261, line: 116, baseType: !111, size: 64)
!1302 = !DIDerivedType(tag: DW_TAG_member, scope: !1299, file: !1261, line: 117, baseType: !1303, size: 64, offset: 64)
!1303 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1299, file: !1261, line: 117, size: 64, elements: !1304)
!1304 = !{!1305, !1313}
!1305 = !DIDerivedType(tag: DW_TAG_member, scope: !1303, file: !1261, line: 118, baseType: !1306, size: 64)
!1306 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1303, file: !1261, line: 118, size: 64, elements: !1307)
!1307 = !{!1308, !1309}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1306, file: !1261, line: 120, baseType: !288, size: 16)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1306, file: !1261, line: 121, baseType: !1310, size: 48, offset: 16)
!1310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 48, elements: !1311)
!1311 = !{!1312}
!1312 = !DISubrange(count: 6)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1303, file: !1261, line: 127, baseType: !111, size: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1299, file: !1261, line: 129, baseType: !1315, size: 64, offset: 128)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1261, line: 102, flags: DIFlagFwdDecl)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1299, file: !1261, line: 130, baseType: !1318, size: 64, offset: 192)
!1318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1319, size: 64)
!1319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1261, line: 108, size: 192, elements: !1320)
!1320 = !{!1321, !1322, !1323}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1319, file: !1261, line: 109, baseType: !819, size: 128, align: 64)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1319, file: !1261, line: 110, baseType: !848, size: 32, offset: 128)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1319, file: !1261, line: 111, baseType: !1324, size: 8, offset: 160)
!1324 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !81, line: 35, baseType: !1325)
!1325 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1299, file: !1261, line: 131, baseType: !313, size: 64, offset: 256)
!1327 = !DIDerivedType(tag: DW_TAG_member, scope: !1296, file: !1261, line: 247, baseType: !1328, size: 320)
!1328 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1296, file: !1261, line: 247, size: 320, elements: !1329)
!1329 = !{!1330, !1331, !1332, !1333, !1334}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1328, file: !1261, line: 248, baseType: !111, size: 64)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1328, file: !1261, line: 249, baseType: !111, size: 64, offset: 64)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1328, file: !1261, line: 250, baseType: !1315, size: 64, offset: 128)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1328, file: !1261, line: 251, baseType: !1318, size: 64, offset: 192)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1328, file: !1261, line: 252, baseType: !339, size: 64, offset: 256)
!1335 = !DIDerivedType(tag: DW_TAG_member, scope: !1260, file: !1261, line: 260, baseType: !1336, size: 256, offset: 1408)
!1336 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1260, file: !1261, line: 260, size: 256, elements: !1337)
!1337 = !{!1338, !1344}
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1336, file: !1261, line: 261, baseType: !1339, size: 256)
!1339 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1261, line: 134, size: 256, elements: !1340)
!1340 = !{!1341, !1342}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1339, file: !1261, line: 135, baseType: !82, size: 64)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1339, file: !1261, line: 136, baseType: !1343, size: 256)
!1343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 256, elements: !1214)
!1344 = !DIDerivedType(tag: DW_TAG_member, scope: !1336, file: !1261, line: 262, baseType: !1345, size: 256)
!1345 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1336, file: !1261, line: 262, size: 256, elements: !1346)
!1346 = !{!1347, !1348}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1345, file: !1261, line: 264, baseType: !142, size: 128)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1345, file: !1261, line: 265, baseType: !1349, size: 128, offset: 128)
!1349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1350, line: 22, size: 128, elements: !1351)
!1350 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1351 = !{!1352, !1355}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1349, file: !1350, line: 23, baseType: !1353, size: 64)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1354 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1350, line: 23, flags: DIFlagFwdDecl)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1349, file: !1350, line: 24, baseType: !111, size: 64, offset: 64)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1260, file: !1261, line: 280, baseType: !1357, size: 64, offset: 1664)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1261, line: 176, size: 192, elements: !1359)
!1359 = !{!1360, !1369, !1370}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1358, file: !1261, line: 177, baseType: !1361, size: 64)
!1361 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1261, line: 171, baseType: !1362)
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = !DISubroutineType(types: !1364)
!1364 = !{!117, !1259, !1365, !1367, !1259}
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1366 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1316)
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!1368 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1339)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1358, file: !1261, line: 178, baseType: !1259, size: 64, offset: 64)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1358, file: !1261, line: 179, baseType: !1315, size: 64, offset: 128)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1234, file: !1235, line: 130, baseType: !1259, size: 64, offset: 832)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1234, file: !1235, line: 131, baseType: !1259, size: 64, offset: 896)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1234, file: !1235, line: 132, baseType: !1259, size: 64, offset: 960)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1234, file: !1235, line: 135, baseType: !82, size: 64, offset: 1024)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1234, file: !1235, line: 137, baseType: !1376, size: 64, offset: 1088)
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1377, size: 64)
!1377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1378, line: 14, size: 1088, elements: !1379)
!1378 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1379 = !{!1380, !1381, !1390, !1391, !1392, !1393, !1394, !1395}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1377, file: !1378, line: 15, baseType: !848, size: 32)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1377, file: !1378, line: 17, baseType: !1382, size: 320, offset: 64)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1383, line: 22, size: 320, elements: !1384)
!1383 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1384 = !{!1385, !1386, !1387, !1388}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1382, file: !1383, line: 23, baseType: !520, size: 32)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1382, file: !1383, line: 24, baseType: !517, size: 64, offset: 64)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1382, file: !1383, line: 26, baseType: !142, size: 128, offset: 128)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1382, file: !1383, line: 28, baseType: !1389, size: 64, offset: 256)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1377, file: !1378, line: 19, baseType: !111, size: 64, offset: 384)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1377, file: !1378, line: 20, baseType: !511, size: 64, offset: 448)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1377, file: !1378, line: 23, baseType: !397, size: 128, offset: 512)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1377, file: !1378, line: 24, baseType: !167, size: 32, offset: 640)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1377, file: !1378, line: 29, baseType: !511, size: 64, offset: 704)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1377, file: !1378, line: 36, baseType: !1396, size: 320, offset: 768)
!1396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1397, line: 15, size: 320, elements: !1398)
!1397 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1398 = !{!1399, !1400, !1401, !1402, !1403, !1404, !1405}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1396, file: !1397, line: 16, baseType: !520, size: 32)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1396, file: !1397, line: 18, baseType: !117, size: 32, offset: 32)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1396, file: !1397, line: 19, baseType: !117, size: 32, offset: 64)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1396, file: !1397, line: 20, baseType: !117, size: 32, offset: 96)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1396, file: !1397, line: 21, baseType: !117, size: 32, offset: 128)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1396, file: !1397, line: 22, baseType: !111, size: 64, offset: 192)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1396, file: !1397, line: 23, baseType: !111, size: 64, offset: 256)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1234, file: !1235, line: 138, baseType: !1407, size: 64, offset: 1152)
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1408 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !36, line: 901, flags: DIFlagFwdDecl)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1234, file: !1235, line: 139, baseType: !1410, size: 64, offset: 1216)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1412, line: 16, flags: DIFlagFwdDecl)
!1412 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1234, file: !1235, line: 140, baseType: !1414, size: 64, offset: 1280)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1235, line: 25, size: 64, elements: !1416)
!1416 = !{!1417, !1418, !1419}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1415, file: !1235, line: 26, baseType: !273, size: 32)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1415, file: !1235, line: 27, baseType: !117, size: 32, offset: 32)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1415, file: !1235, line: 28, baseType: !1420, offset: 64)
!1420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, elements: !112)
!1421 = !DIDerivedType(tag: DW_TAG_member, scope: !1234, file: !1235, line: 142, baseType: !1422, size: 128, offset: 1344)
!1422 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1234, file: !1235, line: 142, size: 128, elements: !1423)
!1423 = !{!1424, !1425}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1422, file: !1235, line: 143, baseType: !117, size: 32)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1422, file: !1235, line: 144, baseType: !819, size: 128, align: 64)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1166, file: !12, line: 1013, baseType: !1427, size: 256, offset: 960)
!1427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !12, line: 970, size: 256, elements: !1428)
!1428 = !{!1429, !1430, !1431, !1432, !1433, !1434}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1427, file: !12, line: 971, baseType: !111, size: 64)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1427, file: !12, line: 972, baseType: !7, size: 32, offset: 64)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1427, file: !12, line: 973, baseType: !7, size: 32, offset: 96)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1427, file: !12, line: 974, baseType: !7, size: 32, offset: 128)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1427, file: !12, line: 975, baseType: !7, size: 32, offset: 160)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1427, file: !12, line: 976, baseType: !360, size: 64, offset: 192)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1166, file: !12, line: 1014, baseType: !631, size: 128, offset: 1216)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1166, file: !12, line: 1015, baseType: !159, size: 64, offset: 1344)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1166, file: !12, line: 1016, baseType: !1438, size: 64, offset: 1408)
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1440)
!1440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !12, line: 1914, size: 2112, elements: !1441)
!1441 = !{!1442, !1443, !1447, !1452, !1456, !1484, !1485, !1491, !1504, !1512, !1516, !1517, !1680, !1681, !1685, !1690, !1691, !1695, !1699, !1705, !1706, !1710, !1711, !1717, !1721, !1725, !1731, !1735, !1739, !1743, !1747, !1748, !1754}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1440, file: !12, line: 1915, baseType: !388, size: 64)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1440, file: !12, line: 1916, baseType: !1444, size: 64, offset: 64)
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1445 = !DISubroutineType(types: !1446)
!1446 = !{!360, !1165, !360, !117}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1440, file: !12, line: 1917, baseType: !1448, size: 64, offset: 128)
!1448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!1449 = !DISubroutineType(types: !1450)
!1450 = !{!486, !1165, !339, !120, !1451}
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1440, file: !12, line: 1918, baseType: !1453, size: 64, offset: 192)
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!1454 = !DISubroutineType(types: !1455)
!1455 = !{!486, !1165, !313, !120, !1451}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1440, file: !12, line: 1919, baseType: !1457, size: 64, offset: 256)
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1458, size: 64)
!1458 = !DISubroutineType(types: !1459)
!1459 = !{!486, !1460, !1482}
!1460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1461, size: 64)
!1461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !12, line: 373, size: 384, elements: !1462)
!1462 = !{!1463, !1464, !1465, !1469, !1470, !1471, !1472}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1461, file: !12, line: 374, baseType: !1165, size: 64)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1461, file: !12, line: 375, baseType: !360, size: 64, offset: 64)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1461, file: !12, line: 376, baseType: !1466, size: 64, offset: 128)
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1467, size: 64)
!1467 = !DISubroutineType(types: !1468)
!1468 = !{null, !1460, !489}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1461, file: !12, line: 377, baseType: !82, size: 64, offset: 192)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1461, file: !12, line: 378, baseType: !117, size: 32, offset: 256)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1461, file: !12, line: 379, baseType: !288, size: 16, offset: 288)
!1472 = !DIDerivedType(tag: DW_TAG_member, scope: !1461, file: !12, line: 380, baseType: !1473, size: 64, offset: 320)
!1473 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1461, file: !12, line: 380, size: 64, elements: !1474)
!1474 = !{!1475, !1478}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1473, file: !12, line: 386, baseType: !1476, size: 64)
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1477, size: 64)
!1477 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !12, line: 386, flags: DIFlagFwdDecl)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1473, file: !12, line: 395, baseType: !1479, size: 64)
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = !DISubroutineType(types: !1481)
!1481 = !{!486, !82}
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64)
!1483 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !12, line: 69, flags: DIFlagFwdDecl)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1440, file: !12, line: 1920, baseType: !1457, size: 64, offset: 320)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1440, file: !12, line: 1921, baseType: !1486, size: 64, offset: 384)
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1487 = !DISubroutineType(types: !1488)
!1488 = !{!117, !1460, !1489, !7}
!1489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1490, size: 64)
!1490 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !12, line: 53, flags: DIFlagFwdDecl)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1440, file: !12, line: 1923, baseType: !1492, size: 64, offset: 448)
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1493 = !DISubroutineType(types: !1494)
!1494 = !{!117, !1165, !1495}
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !12, line: 1858, size: 128, elements: !1497)
!1497 = !{!1498, !1503}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1496, file: !12, line: 1859, baseType: !1499, size: 64)
!1499 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !12, line: 1855, baseType: !1500)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = !DISubroutineType(types: !1502)
!1502 = !{!1324, !1495, !313, !117, !360, !125, !7}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1496, file: !12, line: 1860, baseType: !360, size: 64, offset: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1440, file: !12, line: 1924, baseType: !1505, size: 64, offset: 512)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = !DISubroutineType(types: !1507)
!1507 = !{!1508, !1165, !1510}
!1508 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1509, line: 59, baseType: !7)
!1509 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1511, size: 64)
!1511 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !12, line: 61, flags: DIFlagFwdDecl)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1440, file: !12, line: 1925, baseType: !1513, size: 64, offset: 576)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = !DISubroutineType(types: !1515)
!1515 = !{!489, !1165, !7, !111}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1440, file: !12, line: 1926, baseType: !1513, size: 64, offset: 640)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1440, file: !12, line: 1927, baseType: !1518, size: 64, offset: 704)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = !DISubroutineType(types: !1520)
!1520 = !{!117, !1165, !1521}
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64)
!1522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !36, line: 625, size: 1344, elements: !1523)
!1523 = !{!1524, !1533, !1534, !1542, !1549, !1550, !1555, !1556, !1561, !1562, !1565, !1673, !1674, !1675, !1676, !1677, !1678}
!1524 = !DIDerivedType(tag: DW_TAG_member, scope: !1522, file: !36, line: 628, baseType: !1525, size: 128)
!1525 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1522, file: !36, line: 628, size: 128, elements: !1526)
!1526 = !{!1527, !1532}
!1527 = !DIDerivedType(tag: DW_TAG_member, scope: !1525, file: !36, line: 629, baseType: !1528, size: 128)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1525, file: !36, line: 629, size: 128, elements: !1529)
!1529 = !{!1530, !1531}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1528, file: !36, line: 631, baseType: !111, size: 64)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1528, file: !36, line: 632, baseType: !111, size: 64, offset: 64)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1525, file: !36, line: 635, baseType: !819, size: 128, align: 64)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1522, file: !36, line: 639, baseType: !1138, size: 64, offset: 128)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1522, file: !36, line: 640, baseType: !1535, size: 64, offset: 192)
!1535 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1536, line: 297, baseType: !1537)
!1536 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1536, line: 297, size: 64, elements: !1538)
!1538 = !{!1539}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1537, file: !1536, line: 297, baseType: !1540, size: 64)
!1540 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1541, line: 19, baseType: !111)
!1541 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1542 = !DIDerivedType(tag: DW_TAG_member, scope: !1522, file: !36, line: 646, baseType: !1543, size: 64, offset: 256)
!1543 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1522, file: !36, line: 646, size: 64, elements: !1544)
!1544 = !{!1545, !1548}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1543, file: !36, line: 647, baseType: !1546, size: 64)
!1546 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1547)
!1547 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !36, line: 542, baseType: !111)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1543, file: !36, line: 648, baseType: !1547, size: 64)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1522, file: !36, line: 666, baseType: !117, size: 32, offset: 320)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1522, file: !36, line: 667, baseType: !1551, size: 64, offset: 384)
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !36, line: 579, size: 320, elements: !1553)
!1553 = !{!1554}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1552, file: !36, line: 580, baseType: !719, size: 320)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1522, file: !36, line: 670, baseType: !1324, size: 8, offset: 448)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1522, file: !36, line: 681, baseType: !1557, size: 256, offset: 512)
!1557 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1522, file: !36, line: 678, size: 256, elements: !1558)
!1558 = !{!1559, !1560}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1557, file: !36, line: 679, baseType: !892, size: 192, align: 64)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1557, file: !36, line: 680, baseType: !111, size: 64, offset: 192)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1522, file: !36, line: 689, baseType: !142, size: 128, offset: 768)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1522, file: !36, line: 691, baseType: !1563, size: 64, offset: 896)
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!1564 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !36, line: 691, flags: DIFlagFwdDecl)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1522, file: !36, line: 694, baseType: !1566, size: 64, offset: 960)
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1567 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1568)
!1568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1569, line: 563, size: 1024, elements: !1570)
!1569 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1570 = !{!1571, !1575, !1576, !1580, !1584, !1588, !1637, !1641, !1645, !1649, !1650, !1651, !1655, !1659, !1665, !1669}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1568, file: !1569, line: 564, baseType: !1572, size: 64)
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1573 = !DISubroutineType(types: !1574)
!1574 = !{null, !1521}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1568, file: !1569, line: 569, baseType: !1572, size: 64, offset: 64)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1568, file: !1569, line: 571, baseType: !1577, size: 64, offset: 128)
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1578 = !DISubroutineType(types: !1579)
!1579 = !{!117, !1521, !111}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1568, file: !1569, line: 572, baseType: !1581, size: 64, offset: 192)
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = !DISubroutineType(types: !1583)
!1583 = !{!117, !1521}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1568, file: !1569, line: 578, baseType: !1585, size: 64, offset: 256)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DISubroutineType(types: !1587)
!1587 = !{!117, !1521, !111, !111, !111}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1568, file: !1569, line: 580, baseType: !1589, size: 64, offset: 320)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DISubroutineType(types: !1591)
!1591 = !{!1592, !1593}
!1592 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !36, line: 1184, baseType: !7)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1569, line: 512, size: 896, elements: !1595)
!1595 = !{!1596, !1604, !1605, !1612, !1619, !1629, !1630, !1631, !1633, !1635}
!1596 = !DIDerivedType(tag: DW_TAG_member, scope: !1594, file: !1569, line: 513, baseType: !1597, size: 320)
!1597 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1594, file: !1569, line: 513, size: 320, elements: !1598)
!1598 = !{!1599, !1600, !1601, !1602, !1603}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1597, file: !1569, line: 514, baseType: !1521, size: 64)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1597, file: !1569, line: 515, baseType: !80, size: 32, offset: 64)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1597, file: !1569, line: 516, baseType: !111, size: 64, offset: 128)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1597, file: !1569, line: 517, baseType: !111, size: 64, offset: 192)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1597, file: !1569, line: 518, baseType: !111, size: 64, offset: 256)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1594, file: !1569, line: 520, baseType: !35, size: 32, offset: 320)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1594, file: !1569, line: 522, baseType: !1606, size: 64, offset: 384)
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1541, line: 22, baseType: !1608)
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1541, line: 22, size: 64, elements: !1609)
!1609 = !{!1610}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1608, file: !1541, line: 22, baseType: !1611, size: 64)
!1611 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1541, line: 15, baseType: !111)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1594, file: !1569, line: 524, baseType: !1613, size: 64, offset: 448)
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1614 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1536, line: 372, baseType: !1615)
!1615 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1536, line: 372, size: 64, elements: !1616)
!1616 = !{!1617}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1615, file: !1536, line: 372, baseType: !1618, size: 64)
!1618 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1541, line: 16, baseType: !111)
!1619 = !DIDerivedType(tag: DW_TAG_member, scope: !1594, file: !1569, line: 527, baseType: !1620, size: 64, offset: 512)
!1620 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1594, file: !1569, line: 527, size: 64, elements: !1621)
!1621 = !{!1622, !1628}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1620, file: !1569, line: 528, baseType: !1623, size: 64)
!1623 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1541, line: 21, baseType: !1624)
!1624 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1541, line: 21, size: 64, elements: !1625)
!1625 = !{!1626}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1624, file: !1541, line: 21, baseType: !1627, size: 64)
!1627 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1541, line: 14, baseType: !111)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1620, file: !1569, line: 529, baseType: !1607, size: 64)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1594, file: !1569, line: 534, baseType: !128, size: 64, offset: 576)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1594, file: !1569, line: 535, baseType: !128, size: 64, offset: 640)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1594, file: !1569, line: 541, baseType: !1632, size: 64, offset: 704)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1594, file: !1569, line: 545, baseType: !1634, size: 64, offset: 768)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1594, file: !1569, line: 549, baseType: !1636, size: 64, offset: 832)
!1636 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1536, line: 520, baseType: !128)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1568, file: !1569, line: 581, baseType: !1638, size: 64, offset: 384)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = !DISubroutineType(types: !1640)
!1640 = !{!1592, !1593, !7}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1568, file: !1569, line: 582, baseType: !1642, size: 64, offset: 448)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = !DISubroutineType(types: !1644)
!1644 = !{!1592, !1593, !111, !111}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1568, file: !1569, line: 584, baseType: !1646, size: 64, offset: 512)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = !DISubroutineType(types: !1648)
!1648 = !{!111, !1521}
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1568, file: !1569, line: 588, baseType: !1589, size: 64, offset: 576)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1568, file: !1569, line: 591, baseType: !1589, size: 64, offset: 640)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1568, file: !1569, line: 597, baseType: !1652, size: 64, offset: 704)
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!1653 = !DISubroutineType(types: !1654)
!1654 = !{!117, !1521, !111, !82, !117, !117}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1568, file: !1569, line: 603, baseType: !1656, size: 64, offset: 768)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1657 = !DISubroutineType(types: !1658)
!1658 = !{!313, !1521}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1568, file: !1569, line: 613, baseType: !1660, size: 64, offset: 832)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = !DISubroutineType(types: !1662)
!1662 = !{!117, !1521, !1663}
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !36, line: 717, flags: DIFlagFwdDecl)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1568, file: !1569, line: 625, baseType: !1666, size: 64, offset: 896)
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1667, size: 64)
!1667 = !DISubroutineType(types: !1668)
!1668 = !{!1663, !1521, !111}
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1568, file: !1569, line: 633, baseType: !1670, size: 64, offset: 960)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = !DISubroutineType(types: !1672)
!1672 = !{!128, !1521, !111}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1522, file: !36, line: 697, baseType: !111, size: 64, offset: 1024)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1522, file: !36, line: 699, baseType: !1165, size: 64, offset: 1088)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1522, file: !36, line: 700, baseType: !82, size: 64, offset: 1152)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1522, file: !36, line: 711, baseType: !511, size: 64, offset: 1216)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1522, file: !36, line: 717, baseType: !1663, size: 64, offset: 1280)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1522, file: !36, line: 722, baseType: !1679, offset: 1344)
!1679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !36, line: 570, elements: !405)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1440, file: !12, line: 1928, baseType: !111, size: 64, offset: 768)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1440, file: !12, line: 1929, baseType: !1682, size: 64, offset: 832)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = !DISubroutineType(types: !1684)
!1684 = !{!117, !159, !1165}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1440, file: !12, line: 1930, baseType: !1686, size: 64, offset: 896)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = !DISubroutineType(types: !1688)
!1688 = !{!117, !1165, !1689}
!1689 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !12, line: 1061, baseType: !82)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1440, file: !12, line: 1931, baseType: !1682, size: 64, offset: 960)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1440, file: !12, line: 1932, baseType: !1692, size: 64, offset: 1024)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = !DISubroutineType(types: !1694)
!1694 = !{!117, !1165, !360, !360, !117}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1440, file: !12, line: 1933, baseType: !1696, size: 64, offset: 1088)
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1697, size: 64)
!1697 = !DISubroutineType(types: !1698)
!1698 = !{!117, !117, !1165, !117}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1440, file: !12, line: 1934, baseType: !1700, size: 64, offset: 1152)
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1701, size: 64)
!1701 = !DISubroutineType(types: !1702)
!1702 = !{!117, !1165, !117, !1703}
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1704 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !12, line: 1063, flags: DIFlagFwdDecl)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1440, file: !12, line: 1935, baseType: !1162, size: 64, offset: 1216)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1440, file: !12, line: 1936, baseType: !1707, size: 64, offset: 1280)
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1708 = !DISubroutineType(types: !1709)
!1709 = !{!117, !117}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1440, file: !12, line: 1937, baseType: !1700, size: 64, offset: 1344)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1440, file: !12, line: 1938, baseType: !1712, size: 64, offset: 1408)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = !DISubroutineType(types: !1714)
!1714 = !{!486, !1715, !1165, !1451, !120, !7}
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !478, line: 59, flags: DIFlagFwdDecl)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1440, file: !12, line: 1939, baseType: !1718, size: 64, offset: 1472)
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = !DISubroutineType(types: !1720)
!1720 = !{!486, !1165, !1451, !1715, !120, !7}
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1440, file: !12, line: 1940, baseType: !1722, size: 64, offset: 1536)
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1723 = !DISubroutineType(types: !1724)
!1724 = !{null, !1165}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1440, file: !12, line: 1941, baseType: !1726, size: 64, offset: 1600)
!1726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1727, size: 64)
!1727 = !DISubroutineType(types: !1728)
!1728 = !{!117, !1165, !117, !1729, !1730}
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1440, file: !12, line: 1942, baseType: !1732, size: 64, offset: 1664)
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1733, size: 64)
!1733 = !DISubroutineType(types: !1734)
!1734 = !{!489, !1165, !117, !360, !360}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1440, file: !12, line: 1944, baseType: !1736, size: 64, offset: 1728)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = !DISubroutineType(types: !1738)
!1738 = !{null, !476, !1165}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1440, file: !12, line: 1948, baseType: !1740, size: 64, offset: 1792)
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = !DISubroutineType(types: !1742)
!1742 = !{!486, !1165, !360, !1165, !360, !120, !7}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1440, file: !12, line: 1950, baseType: !1744, size: 64, offset: 1856)
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1745 = !DISubroutineType(types: !1746)
!1746 = !{!360, !1165, !360, !1165, !360, !360, !7}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1440, file: !12, line: 1953, baseType: !1692, size: 64, offset: 1920)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1440, file: !12, line: 1954, baseType: !1749, size: 64, offset: 1984)
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = !DISubroutineType(types: !1751)
!1751 = !{!117, !1752, !7}
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!1753 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !12, line: 1911, flags: DIFlagFwdDecl)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1440, file: !12, line: 1955, baseType: !1755, size: 64, offset: 2048)
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1756, size: 64)
!1756 = !DISubroutineType(types: !1757)
!1757 = !{!117, !1752, !1489, !7}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1166, file: !12, line: 1018, baseType: !125, size: 64, offset: 1472)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1166, file: !12, line: 1020, baseType: !82, size: 64, offset: 1536)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1166, file: !12, line: 1023, baseType: !82, size: 64, offset: 1600)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1166, file: !12, line: 1027, baseType: !1762, size: 64, offset: 1664)
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1166, file: !12, line: 1029, baseType: !155, size: 64, offset: 1728)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1166, file: !12, line: 1030, baseType: !1765, size: 32, offset: 1792)
!1765 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1766, line: 8, baseType: !91)
!1766 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1166, file: !12, line: 1031, baseType: !1765, size: 32, offset: 1824)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1142, file: !36, line: 756, baseType: !111, size: 64, offset: 704)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1142, file: !36, line: 757, baseType: !111, size: 64, offset: 768)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1142, file: !36, line: 760, baseType: !111, size: 64, offset: 832)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1142, file: !36, line: 761, baseType: !111, size: 64, offset: 896)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1142, file: !36, line: 763, baseType: !111, size: 64, offset: 960)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1142, file: !36, line: 764, baseType: !1774, size: 64, offset: 1024)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1536, line: 299, baseType: !1776)
!1776 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1536, line: 299, size: 64, elements: !1777)
!1777 = !{!1778}
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1776, file: !1536, line: 299, baseType: !1779, size: 64)
!1779 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1541, line: 18, baseType: !111)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1142, file: !36, line: 773, baseType: !273, size: 32, offset: 1088)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1142, file: !36, line: 785, baseType: !273, size: 32, offset: 1120)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1142, file: !36, line: 795, baseType: !1783, size: 64, offset: 1152)
!1783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1784, size: 64)
!1784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !36, line: 726, size: 128, elements: !1785)
!1785 = !{!1786, !1787}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1784, file: !36, line: 727, baseType: !125, size: 64)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1784, file: !36, line: 728, baseType: !117, size: 32, offset: 64)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1142, file: !36, line: 801, baseType: !111, size: 64, offset: 1216)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1142, file: !36, line: 804, baseType: !511, size: 64, offset: 1280)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1142, file: !36, line: 806, baseType: !117, size: 32, offset: 1344)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1142, file: !36, line: 808, baseType: !253, size: 32, offset: 1376)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1142, file: !36, line: 823, baseType: !719, size: 320, offset: 1408)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1142, file: !36, line: 825, baseType: !142, size: 128, offset: 1728)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1142, file: !36, line: 845, baseType: !117, size: 32, offset: 1856)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1142, file: !36, line: 849, baseType: !111, size: 64, offset: 1920)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1142, file: !36, line: 850, baseType: !111, size: 64, offset: 1984)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1142, file: !36, line: 852, baseType: !111, size: 64, offset: 2048)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1142, file: !36, line: 853, baseType: !111, size: 64, offset: 2112)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1142, file: !36, line: 854, baseType: !513, size: 64, offset: 2176)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1142, file: !36, line: 855, baseType: !111, size: 64, offset: 2240)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1142, file: !36, line: 856, baseType: !111, size: 64, offset: 2304)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1142, file: !36, line: 857, baseType: !111, size: 64, offset: 2368)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1142, file: !36, line: 858, baseType: !111, size: 64, offset: 2432)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1142, file: !36, line: 865, baseType: !207, size: 32, offset: 2496)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1142, file: !36, line: 867, baseType: !253, size: 32, offset: 2528)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1142, file: !36, line: 869, baseType: !111, size: 64, offset: 2560)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1142, file: !36, line: 869, baseType: !111, size: 64, offset: 2624)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1142, file: !36, line: 869, baseType: !111, size: 64, offset: 2688)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1142, file: !36, line: 869, baseType: !111, size: 64, offset: 2752)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1142, file: !36, line: 870, baseType: !111, size: 64, offset: 2816)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1142, file: !36, line: 870, baseType: !111, size: 64, offset: 2880)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1142, file: !36, line: 870, baseType: !111, size: 64, offset: 2944)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1142, file: !36, line: 871, baseType: !111, size: 64, offset: 3008)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1142, file: !36, line: 871, baseType: !111, size: 64, offset: 3072)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1142, file: !36, line: 871, baseType: !111, size: 64, offset: 3136)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1142, file: !36, line: 871, baseType: !111, size: 64, offset: 3200)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1142, file: !36, line: 873, baseType: !1818, size: 3328, offset: 3264)
!1818 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 3328, elements: !1819)
!1819 = !{!1820}
!1820 = !DISubrange(count: 52)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1142, file: !36, line: 875, baseType: !1822, size: 1280, offset: 6592)
!1822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1382, size: 1280, elements: !1214)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1142, file: !36, line: 877, baseType: !1824, size: 64, offset: 7872)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1825 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !36, line: 877, flags: DIFlagFwdDecl)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1142, file: !36, line: 880, baseType: !1827, size: 1088, offset: 7936)
!1827 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1828, line: 72, baseType: !1829)
!1828 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1829 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1828, line: 23, size: 1088, elements: !1830)
!1830 = !{!1831, !1832, !1833, !1834, !1835, !1838, !1839, !1840, !1841, !1845, !1846, !1847}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1829, file: !1828, line: 28, baseType: !125, size: 64)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1829, file: !1828, line: 38, baseType: !513, size: 64, offset: 64)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1829, file: !1828, line: 40, baseType: !111, size: 64, offset: 128)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1829, file: !1828, line: 43, baseType: !719, size: 320, offset: 192)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1829, file: !1828, line: 44, baseType: !1836, size: 64, offset: 512)
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1837 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1828, line: 44, flags: DIFlagFwdDecl)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1829, file: !1828, line: 48, baseType: !111, size: 64, offset: 576)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1829, file: !1828, line: 59, baseType: !507, size: 256, offset: 640)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1829, file: !1828, line: 60, baseType: !82, size: 64, offset: 896)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1829, file: !1828, line: 61, baseType: !1842, size: 64, offset: 960)
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1843 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1844)
!1844 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1828, line: 61, flags: DIFlagFwdDecl)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1829, file: !1828, line: 63, baseType: !273, size: 32, offset: 1024)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1829, file: !1828, line: 69, baseType: !288, size: 16, offset: 1056)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1829, file: !1828, line: 70, baseType: !1848, size: 16, offset: 1072)
!1848 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !92, line: 18, baseType: !1849)
!1849 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !94, line: 23, baseType: !1293)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1142, file: !36, line: 882, baseType: !111, size: 64, offset: 9024)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1142, file: !36, line: 885, baseType: !253, size: 32, offset: 9088)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1142, file: !36, line: 886, baseType: !1853, size: 64, offset: 9152)
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64)
!1854 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !36, line: 732, flags: DIFlagFwdDecl)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1142, file: !36, line: 901, baseType: !1407, size: 64, offset: 9216)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1142, file: !36, line: 904, baseType: !1165, size: 64, offset: 9280)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1142, file: !36, line: 906, baseType: !1858, size: 64, offset: 9344)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !36, line: 906, flags: DIFlagFwdDecl)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1142, file: !36, line: 930, baseType: !273, size: 32, offset: 9408)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1142, file: !36, line: 933, baseType: !273, size: 32, offset: 9440)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1142, file: !36, line: 935, baseType: !1863, size: 64, offset: 9472)
!1863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !58, line: 103, size: 64, elements: !1864)
!1864 = !{!1865}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1863, file: !58, line: 104, baseType: !1866, size: 64)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !58, line: 101, flags: DIFlagFwdDecl)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1142, file: !36, line: 940, baseType: !511, size: 64, offset: 9536)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1142, file: !36, line: 942, baseType: !1870, size: 256, offset: 9600)
!1870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1871, line: 98, size: 256, elements: !1872)
!1871 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1872 = !{!1873, !1874, !1875}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1870, file: !1871, line: 99, baseType: !511, size: 64)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1870, file: !1871, line: 100, baseType: !142, size: 128, offset: 64)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1870, file: !1871, line: 101, baseType: !1876, size: 64, offset: 192)
!1876 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1871, line: 21, baseType: !1877)
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1878 = !DISubroutineType(types: !1879)
!1879 = !{null, !1880}
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1139, file: !36, line: 986, baseType: !110, offset: 10240)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !835, file: !478, line: 882, baseType: !1138, size: 64, offset: 9792)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !835, file: !478, line: 884, baseType: !117, size: 32, offset: 9856)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !835, file: !478, line: 885, baseType: !117, size: 32, offset: 9888)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !835, file: !478, line: 886, baseType: !117, size: 32, offset: 9920)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !835, file: !478, line: 888, baseType: !117, size: 32, offset: 9952)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !835, file: !478, line: 890, baseType: !111, size: 64, offset: 9984)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !835, file: !478, line: 893, baseType: !7, size: 32, offset: 10048)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !835, file: !478, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !835, file: !478, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !835, file: !478, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !835, file: !478, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !835, file: !478, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !835, file: !478, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !835, file: !478, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !835, file: !478, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !835, file: !478, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !835, file: !478, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !835, file: !478, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !835, file: !478, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !835, file: !478, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !835, file: !478, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !835, file: !478, line: 969, baseType: !111, size: 64, offset: 10176)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !835, file: !478, line: 971, baseType: !1905, size: 448, offset: 10240)
!1905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !52, line: 25, size: 448, elements: !1906)
!1906 = !{!1907, !1908, !1913}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !1905, file: !52, line: 26, baseType: !111, size: 64)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1905, file: !52, line: 27, baseType: !1909, size: 64, offset: 64)
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64)
!1910 = !DISubroutineType(types: !1911)
!1911 = !{!489, !1912}
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1913 = !DIDerivedType(tag: DW_TAG_member, scope: !1905, file: !52, line: 28, baseType: !1914, size: 320, offset: 128)
!1914 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1905, file: !52, line: 28, size: 320, elements: !1915)
!1915 = !{!1916, !1925, !1950}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1914, file: !52, line: 37, baseType: !1917, size: 320)
!1917 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1914, file: !52, line: 30, size: 320, elements: !1918)
!1918 = !{!1919, !1920, !1921, !1922, !1923, !1924}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1917, file: !52, line: 31, baseType: !119, size: 64)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1917, file: !52, line: 32, baseType: !91, size: 32, offset: 64)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1917, file: !52, line: 33, baseType: !91, size: 32, offset: 96)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1917, file: !52, line: 34, baseType: !91, size: 32, offset: 128)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1917, file: !52, line: 35, baseType: !125, size: 64, offset: 192)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1917, file: !52, line: 36, baseType: !119, size: 64, offset: 256)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1914, file: !52, line: 47, baseType: !1926, size: 192)
!1926 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1914, file: !52, line: 39, size: 192, elements: !1927)
!1927 = !{!1928, !1929, !1930, !1949}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1926, file: !52, line: 40, baseType: !1009, size: 32)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1926, file: !52, line: 41, baseType: !51, size: 32, offset: 32)
!1930 = !DIDerivedType(tag: DW_TAG_member, scope: !1926, file: !52, line: 42, baseType: !1931, size: 64, offset: 64)
!1931 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1926, file: !52, line: 42, size: 64, elements: !1932)
!1932 = !{!1933, !1941}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1931, file: !52, line: 43, baseType: !1934, size: 64)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1936, line: 7, size: 128, elements: !1937)
!1936 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!1937 = !{!1938, !1940}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1935, file: !1936, line: 8, baseType: !1939, size: 64)
!1939 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !122, line: 93, baseType: !362)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1935, file: !1936, line: 9, baseType: !362, size: 64, offset: 64)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1931, file: !52, line: 44, baseType: !1942, size: 64)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1944, line: 7, size: 64, elements: !1945)
!1944 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!1945 = !{!1946, !1948}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1943, file: !1944, line: 8, baseType: !1947, size: 32)
!1947 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1944, line: 5, baseType: !1267)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1943, file: !1944, line: 9, baseType: !1267, size: 32, offset: 32)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1926, file: !52, line: 46, baseType: !125, size: 64, offset: 128)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1914, file: !52, line: 55, baseType: !1951, size: 256)
!1951 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1914, file: !52, line: 49, size: 256, elements: !1952)
!1952 = !{!1953, !1956, !1957, !1958, !1959}
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1951, file: !52, line: 50, baseType: !1954, size: 64)
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1955, size: 64)
!1955 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !52, line: 14, flags: DIFlagFwdDecl)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1951, file: !52, line: 51, baseType: !117, size: 32, offset: 64)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1951, file: !52, line: 52, baseType: !117, size: 32, offset: 96)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1951, file: !52, line: 53, baseType: !111, size: 64, offset: 128)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1951, file: !52, line: 54, baseType: !111, size: 64, offset: 192)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !835, file: !478, line: 973, baseType: !1961, size: 32, offset: 10688)
!1961 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !81, line: 27, baseType: !1962)
!1962 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !122, line: 28, baseType: !117)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !835, file: !478, line: 974, baseType: !1961, size: 32, offset: 10720)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !835, file: !478, line: 978, baseType: !111, size: 64, offset: 10752)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !835, file: !478, line: 987, baseType: !834, size: 64, offset: 10816)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !835, file: !478, line: 990, baseType: !834, size: 64, offset: 10880)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !835, file: !478, line: 995, baseType: !142, size: 128, offset: 10944)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !835, file: !478, line: 996, baseType: !142, size: 128, offset: 11072)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !835, file: !478, line: 997, baseType: !834, size: 64, offset: 11200)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !835, file: !478, line: 1005, baseType: !142, size: 128, offset: 11264)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !835, file: !478, line: 1006, baseType: !142, size: 128, offset: 11392)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !835, file: !478, line: 1009, baseType: !1206, size: 64, offset: 11520)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !835, file: !478, line: 1010, baseType: !1974, size: 512, offset: 11584)
!1974 = !DICompositeType(tag: DW_TAG_array_type, baseType: !397, size: 512, elements: !1214)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !835, file: !478, line: 1011, baseType: !142, size: 128, offset: 12096)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !835, file: !478, line: 1012, baseType: !142, size: 128, offset: 12224)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !835, file: !478, line: 1014, baseType: !1978, size: 64, offset: 12352)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1980, line: 26, size: 256, elements: !1981)
!1980 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1981 = !{!1982, !1983}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1979, file: !1980, line: 27, baseType: !7, size: 32)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1979, file: !1980, line: 28, baseType: !1984, size: 192, offset: 64)
!1984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1985, line: 43, size: 192, elements: !1986)
!1985 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1986 = !{!1987, !1988}
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1984, file: !1985, line: 44, baseType: !520, size: 32)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1984, file: !1985, line: 45, baseType: !142, size: 128, offset: 64)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !835, file: !478, line: 1017, baseType: !470, size: 64, offset: 12416)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !835, file: !478, line: 1020, baseType: !470, size: 64, offset: 12480)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !835, file: !478, line: 1023, baseType: !82, size: 64, offset: 12544)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !835, file: !478, line: 1025, baseType: !125, size: 64, offset: 12608)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !835, file: !478, line: 1026, baseType: !125, size: 64, offset: 12672)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !835, file: !478, line: 1031, baseType: !125, size: 64, offset: 12736)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !835, file: !478, line: 1032, baseType: !1996, size: 192, offset: 12800)
!1996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !478, line: 324, size: 192, elements: !1997)
!1997 = !{!1998, !1999, !2000}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1996, file: !478, line: 326, baseType: !125, size: 64)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1996, file: !478, line: 327, baseType: !125, size: 64, offset: 64)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1996, file: !478, line: 328, baseType: !520, size: 32, offset: 128)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !835, file: !478, line: 1041, baseType: !111, size: 64, offset: 12992)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !835, file: !478, line: 1042, baseType: !111, size: 64, offset: 13056)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !835, file: !478, line: 1045, baseType: !125, size: 64, offset: 13120)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !835, file: !478, line: 1048, baseType: !125, size: 64, offset: 13184)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !835, file: !478, line: 1051, baseType: !111, size: 64, offset: 13248)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !835, file: !478, line: 1052, baseType: !111, size: 64, offset: 13312)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !835, file: !478, line: 1055, baseType: !2008, size: 640, offset: 13376)
!2008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2009, line: 132, size: 640, elements: !2010)
!2009 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2010 = !{!2011, !2017, !2018}
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2008, file: !2009, line: 133, baseType: !2012, size: 576)
!2012 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2013, size: 576, elements: !410)
!2013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2009, line: 117, size: 192, elements: !2014)
!2014 = !{!2015, !2016}
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2013, file: !2009, line: 118, baseType: !125, size: 64)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2013, file: !2009, line: 119, baseType: !1018, size: 128, offset: 64)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2008, file: !2009, line: 134, baseType: !7, size: 32, offset: 576)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2008, file: !2009, line: 135, baseType: !7, size: 32, offset: 608)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !835, file: !478, line: 1058, baseType: !2020, size: 448, offset: 14016)
!2020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2009, line: 144, size: 448, elements: !2021)
!2021 = !{!2022, !2023, !2024}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2020, file: !2009, line: 145, baseType: !819, size: 128, align: 64)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2020, file: !2009, line: 146, baseType: !507, size: 256, offset: 128)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2020, file: !2009, line: 147, baseType: !7, size: 32, offset: 384)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !835, file: !478, line: 1064, baseType: !1232, size: 64, offset: 14464)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !835, file: !478, line: 1067, baseType: !1232, size: 64, offset: 14528)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !835, file: !478, line: 1070, baseType: !1232, size: 64, offset: 14592)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !835, file: !478, line: 1074, baseType: !1259, size: 64, offset: 14656)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !835, file: !478, line: 1084, baseType: !2030, size: 128, offset: 14720)
!2030 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 128, elements: !2031)
!2031 = !{!2032}
!2032 = !DISubrange(count: 16)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !835, file: !478, line: 1086, baseType: !2034, size: 64, offset: 14848)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !478, line: 55, flags: DIFlagFwdDecl)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !835, file: !478, line: 1089, baseType: !2037, size: 64, offset: 14912)
!2037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2038, line: 12, size: 64, elements: !2039)
!2038 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2039 = !{!2040}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2037, file: !2038, line: 13, baseType: !2041, size: 64)
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2042 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2038, line: 8, flags: DIFlagFwdDecl)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !835, file: !478, line: 1090, baseType: !2044, size: 128, offset: 14976)
!2044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2045, line: 13, size: 128, elements: !2046)
!2045 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2046 = !{!2047}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2044, file: !2045, line: 14, baseType: !142, size: 128)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !835, file: !478, line: 1097, baseType: !2049, size: 64, offset: 15104)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !478, line: 50, flags: DIFlagFwdDecl)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !835, file: !478, line: 1100, baseType: !2052, size: 64, offset: 15168)
!2052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2053, size: 64)
!2053 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !478, line: 1100, flags: DIFlagFwdDecl)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !835, file: !478, line: 1103, baseType: !2055, size: 64, offset: 15232)
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !478, line: 53, flags: DIFlagFwdDecl)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !835, file: !478, line: 1107, baseType: !2058, size: 64, offset: 15296)
!2058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2059, size: 64)
!2059 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !478, line: 56, flags: DIFlagFwdDecl)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !835, file: !478, line: 1110, baseType: !2061, size: 64, offset: 15360)
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2063, line: 93, size: 8768, elements: !2064)
!2063 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2064 = !{!2065, !2066, !2067, !2068, !2069, !2070, !2071, !2072, !2082, !2083, !2084, !2085, !2086, !2087, !2088, !2100, !2101, !2102, !2103, !2104, !2105, !2106, !2114, !2123, !2124, !2126, !2127, !2128, !2131, !2137, !2138, !2139, !2140, !2141, !2142, !2143, !2144, !2145, !2146, !2147, !2148, !2149, !2150, !2151, !2152, !2153, !2154, !2155, !2156, !2157, !2158, !2169, !2170, !2177, !2187, !2190, !2191, !2194, !2195, !2196, !2197, !2198, !2199}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2062, file: !2063, line: 94, baseType: !848, size: 32)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2062, file: !2063, line: 95, baseType: !273, size: 32, offset: 32)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2062, file: !2063, line: 96, baseType: !117, size: 32, offset: 64)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2062, file: !2063, line: 97, baseType: !117, size: 32, offset: 96)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2062, file: !2063, line: 98, baseType: !142, size: 128, offset: 128)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2062, file: !2063, line: 100, baseType: !812, size: 192, offset: 256)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2062, file: !2063, line: 103, baseType: !834, size: 64, offset: 448)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2062, file: !2063, line: 106, baseType: !2073, size: 192, offset: 512)
!2073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1412, line: 32, size: 192, elements: !2074)
!2074 = !{!2075, !2076}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2073, file: !1412, line: 33, baseType: !142, size: 128)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2073, file: !1412, line: 34, baseType: !2077, size: 64, offset: 128)
!2077 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2078, line: 25, baseType: !2079)
!2078 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2079 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2078, line: 23, size: 64, elements: !2080)
!2080 = !{!2081}
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2079, file: !2078, line: 24, baseType: !1089, size: 64)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2062, file: !2063, line: 109, baseType: !393, size: 64, offset: 704)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2062, file: !2063, line: 112, baseType: !117, size: 32, offset: 768)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2062, file: !2063, line: 114, baseType: !117, size: 32, offset: 800)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2062, file: !2063, line: 115, baseType: !834, size: 64, offset: 832)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2062, file: !2063, line: 118, baseType: !117, size: 32, offset: 896)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2062, file: !2063, line: 119, baseType: !7, size: 32, offset: 928)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2062, file: !2063, line: 121, baseType: !2089, size: 64, offset: 960)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2063, line: 80, size: 448, elements: !2091)
!2091 = !{!2092, !2093, !2099}
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2090, file: !2063, line: 81, baseType: !273, size: 32)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2090, file: !2063, line: 82, baseType: !2094, size: 128, offset: 64)
!2094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2063, line: 75, size: 128, elements: !2095)
!2095 = !{!2096, !2097}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2094, file: !2063, line: 76, baseType: !834, size: 64)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2094, file: !2063, line: 77, baseType: !2098, size: 64, offset: 64)
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2090, file: !2063, line: 83, baseType: !1979, size: 256, offset: 192)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2062, file: !2063, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2062, file: !2063, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2062, file: !2063, line: 138, baseType: !7, size: 32, offset: 1056)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2062, file: !2063, line: 139, baseType: !142, size: 128, offset: 1088)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2062, file: !2063, line: 142, baseType: !962, size: 512, offset: 1216)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2062, file: !2063, line: 143, baseType: !970, size: 64, offset: 1728)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2062, file: !2063, line: 150, baseType: !2107, size: 256, offset: 1792)
!2107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2108, size: 256, elements: !2112)
!2108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2063, line: 38, size: 128, elements: !2109)
!2109 = !{!2110, !2111}
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2108, file: !2063, line: 39, baseType: !125, size: 64)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2108, file: !2063, line: 40, baseType: !125, size: 64, offset: 64)
!2112 = !{!2113}
!2113 = !DISubrange(count: 2)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2062, file: !2063, line: 156, baseType: !2115, size: 192, offset: 2048)
!2115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2063, line: 66, size: 192, elements: !2116)
!2116 = !{!2117}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2115, file: !2063, line: 67, baseType: !2118, size: 192)
!2118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2063, line: 47, size: 192, elements: !2119)
!2119 = !{!2120, !2121, !2122}
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2118, file: !2063, line: 48, baseType: !513, size: 64)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2118, file: !2063, line: 49, baseType: !513, size: 64, offset: 64)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2118, file: !2063, line: 50, baseType: !513, size: 64, offset: 128)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2062, file: !2063, line: 160, baseType: !2008, size: 640, offset: 2240)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2062, file: !2063, line: 163, baseType: !2125, size: 256, offset: 2880)
!2125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1206, size: 256, elements: !1214)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2062, file: !2063, line: 169, baseType: !1206, size: 64, offset: 3136)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2062, file: !2063, line: 172, baseType: !117, size: 32, offset: 3200)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2062, file: !2063, line: 174, baseType: !2129, size: 64, offset: 3264)
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2063, line: 174, flags: DIFlagFwdDecl)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2062, file: !2063, line: 185, baseType: !2132, size: 64, offset: 3328)
!2132 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !203, line: 860, baseType: !2133)
!2133 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !203, line: 853, size: 64, elements: !2134)
!2134 = !{!2135, !2136}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2133, file: !203, line: 858, baseType: !202, size: 32)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2133, file: !203, line: 859, baseType: !253, size: 32, offset: 32)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2062, file: !2063, line: 186, baseType: !125, size: 64, offset: 3392)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2062, file: !2063, line: 186, baseType: !125, size: 64, offset: 3456)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2062, file: !2063, line: 186, baseType: !125, size: 64, offset: 3520)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2062, file: !2063, line: 186, baseType: !125, size: 64, offset: 3584)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2062, file: !2063, line: 187, baseType: !125, size: 64, offset: 3648)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2062, file: !2063, line: 188, baseType: !125, size: 64, offset: 3712)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2062, file: !2063, line: 189, baseType: !1996, size: 192, offset: 3776)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2062, file: !2063, line: 190, baseType: !111, size: 64, offset: 3968)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2062, file: !2063, line: 190, baseType: !111, size: 64, offset: 4032)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2062, file: !2063, line: 190, baseType: !111, size: 64, offset: 4096)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2062, file: !2063, line: 190, baseType: !111, size: 64, offset: 4160)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2062, file: !2063, line: 191, baseType: !111, size: 64, offset: 4224)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2062, file: !2063, line: 191, baseType: !111, size: 64, offset: 4288)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2062, file: !2063, line: 191, baseType: !111, size: 64, offset: 4352)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2062, file: !2063, line: 191, baseType: !111, size: 64, offset: 4416)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2062, file: !2063, line: 192, baseType: !111, size: 64, offset: 4480)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2062, file: !2063, line: 192, baseType: !111, size: 64, offset: 4544)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2062, file: !2063, line: 192, baseType: !111, size: 64, offset: 4608)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2062, file: !2063, line: 192, baseType: !111, size: 64, offset: 4672)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2062, file: !2063, line: 193, baseType: !111, size: 64, offset: 4736)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2062, file: !2063, line: 193, baseType: !111, size: 64, offset: 4800)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2062, file: !2063, line: 194, baseType: !2159, size: 448, offset: 4864)
!2159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2160, line: 12, size: 448, elements: !2161)
!2160 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2161 = !{!2162, !2163, !2164, !2165, !2166, !2167, !2168}
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2159, file: !2160, line: 15, baseType: !125, size: 64)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2159, file: !2160, line: 17, baseType: !125, size: 64, offset: 64)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2159, file: !2160, line: 19, baseType: !125, size: 64, offset: 128)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2159, file: !2160, line: 21, baseType: !125, size: 64, offset: 192)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2159, file: !2160, line: 29, baseType: !125, size: 64, offset: 256)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2159, file: !2160, line: 35, baseType: !125, size: 64, offset: 320)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2159, file: !2160, line: 44, baseType: !125, size: 64, offset: 384)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2062, file: !2063, line: 202, baseType: !127, size: 64, offset: 5312)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2062, file: !2063, line: 213, baseType: !2171, size: 2048, offset: 5376)
!2171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2172, size: 2048, elements: !2031)
!2172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2173, line: 43, size: 128, elements: !2174)
!2173 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2174 = !{!2175, !2176}
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2172, file: !2173, line: 44, baseType: !123, size: 64)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2172, file: !2173, line: 45, baseType: !123, size: 64, offset: 64)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2062, file: !2063, line: 216, baseType: !2178, size: 448, offset: 7424)
!2178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2063, line: 30, size: 448, elements: !2179)
!2179 = !{!2180, !2181, !2182, !2183, !2184, !2185, !2186}
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2178, file: !2063, line: 31, baseType: !117, size: 32)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2178, file: !2063, line: 32, baseType: !489, size: 64, offset: 64)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2178, file: !2063, line: 33, baseType: !111, size: 64, offset: 128)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2178, file: !2063, line: 34, baseType: !125, size: 64, offset: 192)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2178, file: !2063, line: 34, baseType: !125, size: 64, offset: 256)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2178, file: !2063, line: 35, baseType: !111, size: 64, offset: 320)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2178, file: !2063, line: 35, baseType: !111, size: 64, offset: 384)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2062, file: !2063, line: 219, baseType: !2188, size: 64, offset: 7872)
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64)
!2189 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2063, line: 219, flags: DIFlagFwdDecl)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2062, file: !2063, line: 222, baseType: !7, size: 32, offset: 7936)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2062, file: !2063, line: 223, baseType: !2192, size: 64, offset: 8000)
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2193, size: 64)
!2193 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2063, line: 223, flags: DIFlagFwdDecl)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2062, file: !2063, line: 230, baseType: !1324, size: 8, offset: 8064)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2062, file: !2063, line: 231, baseType: !1293, size: 16, offset: 8080)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2062, file: !2063, line: 232, baseType: !1293, size: 16, offset: 8096)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2062, file: !2063, line: 234, baseType: !1138, size: 64, offset: 8128)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2062, file: !2063, line: 237, baseType: !507, size: 256, offset: 8192)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2062, file: !2063, line: 243, baseType: !719, size: 320, offset: 8448)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !835, file: !478, line: 1111, baseType: !2201, size: 64, offset: 15424)
!2201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2202, size: 64)
!2202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2063, line: 20, size: 16640, elements: !2203)
!2203 = !{!2204, !2205, !2206, !2207}
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2202, file: !2063, line: 21, baseType: !253, size: 32)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2202, file: !2063, line: 22, baseType: !848, size: 32, offset: 32)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2202, file: !2063, line: 23, baseType: !812, size: 192, offset: 64)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2202, file: !2063, line: 24, baseType: !2208, size: 16384, offset: 256)
!2208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2209, size: 16384, elements: !2229)
!2209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1412, line: 51, size: 256, elements: !2210)
!2210 = !{!2211}
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2209, file: !1412, line: 52, baseType: !2212, size: 256)
!2212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1412, line: 37, size: 256, elements: !2213)
!2213 = !{!2214, !2221, !2222, !2228}
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2212, file: !1412, line: 39, baseType: !2215, size: 64)
!2215 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2216, line: 83, baseType: !2217)
!2216 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64)
!2218 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2216, line: 82, baseType: !2219)
!2219 = !DISubroutineType(types: !2220)
!2220 = !{null, !117}
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2212, file: !1412, line: 40, baseType: !111, size: 64, offset: 64)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2212, file: !1412, line: 46, baseType: !2223, size: 64, offset: 128)
!2223 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2216, line: 86, baseType: !2224)
!2224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2225, size: 64)
!2225 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2216, line: 85, baseType: !2226)
!2226 = !DISubroutineType(types: !2227)
!2227 = !{null}
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2212, file: !1412, line: 48, baseType: !2077, size: 64, offset: 192)
!2229 = !{!2230}
!2230 = !DISubrange(count: 64)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !835, file: !478, line: 1112, baseType: !2077, size: 64, offset: 15488)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !835, file: !478, line: 1113, baseType: !2077, size: 64, offset: 15552)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !835, file: !478, line: 1115, baseType: !2077, size: 64, offset: 15616)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !835, file: !478, line: 1116, baseType: !2073, size: 192, offset: 15680)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !835, file: !478, line: 1117, baseType: !111, size: 64, offset: 15872)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !835, file: !478, line: 1118, baseType: !120, size: 64, offset: 15936)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !835, file: !478, line: 1119, baseType: !7, size: 32, offset: 16000)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !835, file: !478, line: 1121, baseType: !822, size: 64, offset: 16064)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !835, file: !478, line: 1125, baseType: !2240, size: 64, offset: 16128)
!2240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2241, size: 64)
!2241 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !478, line: 43, flags: DIFlagFwdDecl)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !835, file: !478, line: 1127, baseType: !167, size: 32, offset: 16192)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !835, file: !478, line: 1128, baseType: !7, size: 32, offset: 16224)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !835, file: !478, line: 1130, baseType: !2245, size: 128, offset: 16256)
!2245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2246, line: 37, size: 128, elements: !2247)
!2246 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2247 = !{!2248, !2249, !2250}
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2245, file: !2246, line: 38, baseType: !117, size: 32)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2245, file: !2246, line: 39, baseType: !273, size: 32, offset: 32)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2245, file: !2246, line: 40, baseType: !2251, size: 64, offset: 64)
!2251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2252, size: 64)
!2252 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2246, line: 24, flags: DIFlagFwdDecl)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !835, file: !478, line: 1131, baseType: !2254, size: 256, offset: 16384)
!2254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2255, line: 12, size: 256, elements: !2256)
!2255 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2256 = !{!2257, !2258, !2259, !2260}
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2254, file: !2255, line: 13, baseType: !339, size: 64)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2254, file: !2255, line: 14, baseType: !111, size: 64, offset: 64)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2254, file: !2255, line: 15, baseType: !111, size: 64, offset: 128)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2254, file: !2255, line: 16, baseType: !1324, size: 8, offset: 192)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !835, file: !478, line: 1134, baseType: !125, size: 64, offset: 16640)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !835, file: !478, line: 1135, baseType: !125, size: 64, offset: 16704)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !835, file: !478, line: 1138, baseType: !253, size: 32, offset: 16768)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !835, file: !478, line: 1141, baseType: !520, size: 32, offset: 16800)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !835, file: !478, line: 1143, baseType: !2266, size: 64, offset: 16832)
!2266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !478, line: 735, size: 64, elements: !2267)
!2267 = !{!2268}
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2266, file: !478, line: 736, baseType: !2269, size: 64)
!2269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2266, size: 64)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !835, file: !478, line: 1147, baseType: !1021, size: 128, offset: 16896)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !835, file: !478, line: 1149, baseType: !834, size: 64, offset: 17024)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !835, file: !478, line: 1151, baseType: !2273, size: 64, offset: 17088)
!2273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2274, size: 64)
!2274 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !478, line: 1151, flags: DIFlagFwdDecl)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !835, file: !478, line: 1188, baseType: !82, size: 64, offset: 17152)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !835, file: !478, line: 1191, baseType: !2277, size: 64, offset: 17216)
!2277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2278, size: 64)
!2278 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !478, line: 44, flags: DIFlagFwdDecl)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !835, file: !478, line: 1194, baseType: !2280, size: 64, offset: 17280)
!2280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64)
!2281 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !478, line: 45, flags: DIFlagFwdDecl)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !835, file: !478, line: 1197, baseType: !2283, size: 64, offset: 17344)
!2283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2284, size: 64)
!2284 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !478, line: 61, flags: DIFlagFwdDecl)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !835, file: !478, line: 1199, baseType: !2286, size: 64, offset: 17408)
!2286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2287, size: 64)
!2287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2288, line: 99, size: 128, elements: !2289)
!2288 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2289 = !{!2290, !2291, !2292}
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2287, file: !2288, line: 100, baseType: !511, size: 64)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2287, file: !2288, line: 101, baseType: !273, size: 32, offset: 64)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2287, file: !2288, line: 103, baseType: !164, size: 16, offset: 96)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !835, file: !478, line: 1202, baseType: !2294, size: 64, offset: 17472)
!2294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2295, size: 64)
!2295 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !478, line: 48, flags: DIFlagFwdDecl)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !835, file: !478, line: 1205, baseType: !111, size: 64, offset: 17536)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !835, file: !478, line: 1206, baseType: !2298, size: 64, offset: 17600)
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2299, size: 64)
!2299 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1412, line: 14, baseType: !2300)
!2300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1412, line: 12, size: 384, elements: !2301)
!2301 = !{!2302}
!2302 = !DIDerivedType(tag: DW_TAG_member, scope: !2300, file: !1412, line: 13, baseType: !2303, size: 384)
!2303 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2300, file: !1412, line: 13, size: 384, elements: !2304)
!2304 = !{!2305, !2306, !2307, !2308}
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2303, file: !1412, line: 13, baseType: !117, size: 32)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2303, file: !1412, line: 13, baseType: !117, size: 32, offset: 32)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2303, file: !1412, line: 13, baseType: !117, size: 32, offset: 64)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2303, file: !1412, line: 13, baseType: !2309, size: 256, offset: 128)
!2309 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2310, line: 37, size: 256, elements: !2311)
!2310 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2311 = !{!2312, !2317, !2330, !2336, !2345, !2372, !2377}
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2309, file: !2310, line: 42, baseType: !2313, size: 64)
!2313 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2309, file: !2310, line: 39, size: 64, elements: !2314)
!2314 = !{!2315, !2316}
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2313, file: !2310, line: 40, baseType: !1962, size: 32)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2313, file: !2310, line: 41, baseType: !173, size: 32, offset: 32)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2309, file: !2310, line: 50, baseType: !2318, size: 192)
!2318 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2309, file: !2310, line: 45, size: 192, elements: !2319)
!2319 = !{!2320, !2322, !2323, !2329}
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2318, file: !2310, line: 46, baseType: !2321, size: 32)
!2321 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !122, line: 95, baseType: !117)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2318, file: !2310, line: 47, baseType: !117, size: 32, offset: 32)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2318, file: !2310, line: 48, baseType: !2324, size: 64, offset: 64)
!2324 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2310, line: 11, baseType: !2325)
!2325 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2310, line: 8, size: 64, elements: !2326)
!2326 = !{!2327, !2328}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2325, file: !2310, line: 9, baseType: !117, size: 32)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2325, file: !2310, line: 10, baseType: !82, size: 64)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2318, file: !2310, line: 49, baseType: !117, size: 32, offset: 128)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2309, file: !2310, line: 57, baseType: !2331, size: 128)
!2331 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2309, file: !2310, line: 53, size: 128, elements: !2332)
!2332 = !{!2333, !2334, !2335}
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2331, file: !2310, line: 54, baseType: !1962, size: 32)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2331, file: !2310, line: 55, baseType: !173, size: 32, offset: 32)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2331, file: !2310, line: 56, baseType: !2324, size: 64, offset: 64)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2309, file: !2310, line: 66, baseType: !2337, size: 256)
!2337 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2309, file: !2310, line: 60, size: 256, elements: !2338)
!2338 = !{!2339, !2340, !2341, !2342, !2344}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2337, file: !2310, line: 61, baseType: !1962, size: 32)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2337, file: !2310, line: 62, baseType: !173, size: 32, offset: 32)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2337, file: !2310, line: 63, baseType: !117, size: 32, offset: 64)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2337, file: !2310, line: 64, baseType: !2343, size: 64, offset: 128)
!2343 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !122, line: 94, baseType: !488)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2337, file: !2310, line: 65, baseType: !2343, size: 64, offset: 192)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2309, file: !2310, line: 105, baseType: !2346, size: 256)
!2346 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2309, file: !2310, line: 69, size: 256, elements: !2347)
!2347 = !{!2348, !2349}
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2346, file: !2310, line: 70, baseType: !82, size: 64)
!2349 = !DIDerivedType(tag: DW_TAG_member, scope: !2346, file: !2310, line: 79, baseType: !2350, size: 192, offset: 64)
!2350 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2346, file: !2310, line: 79, size: 192, elements: !2351)
!2351 = !{!2352, !2353, !2354, !2361, !2366}
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2350, file: !2310, line: 81, baseType: !117, size: 32)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2350, file: !2310, line: 86, baseType: !1293, size: 16)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2350, file: !2310, line: 92, baseType: !2355, size: 192)
!2355 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2350, file: !2310, line: 88, size: 192, elements: !2356)
!2356 = !{!2357, !2359, !2360}
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2355, file: !2310, line: 89, baseType: !2358, size: 64)
!2358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 64, elements: !1005)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2355, file: !2310, line: 90, baseType: !82, size: 64, offset: 64)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2355, file: !2310, line: 91, baseType: !82, size: 64, offset: 128)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2350, file: !2310, line: 97, baseType: !2362, size: 96)
!2362 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2350, file: !2310, line: 94, size: 96, elements: !2363)
!2363 = !{!2364, !2365}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2362, file: !2310, line: 95, baseType: !2358, size: 64)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2362, file: !2310, line: 96, baseType: !93, size: 32, offset: 64)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2350, file: !2310, line: 103, baseType: !2367, size: 128)
!2367 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2350, file: !2310, line: 99, size: 128, elements: !2368)
!2368 = !{!2369, !2370, !2371}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2367, file: !2310, line: 100, baseType: !111, size: 64)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2367, file: !2310, line: 101, baseType: !93, size: 32, offset: 64)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2367, file: !2310, line: 102, baseType: !93, size: 32, offset: 96)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2309, file: !2310, line: 111, baseType: !2373, size: 128)
!2373 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2309, file: !2310, line: 108, size: 128, elements: !2374)
!2374 = !{!2375, !2376}
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2373, file: !2310, line: 109, baseType: !489, size: 64)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2373, file: !2310, line: 110, baseType: !117, size: 32, offset: 64)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2309, file: !2310, line: 118, baseType: !2378, size: 128)
!2378 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2309, file: !2310, line: 114, size: 128, elements: !2379)
!2379 = !{!2380, !2381, !2382}
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2378, file: !2310, line: 115, baseType: !82, size: 64)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2378, file: !2310, line: 116, baseType: !117, size: 32, offset: 64)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2378, file: !2310, line: 117, baseType: !7, size: 32, offset: 96)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !835, file: !478, line: 1208, baseType: !2159, size: 448, offset: 17664)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !835, file: !478, line: 1215, baseType: !125, size: 64, offset: 18112)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !835, file: !478, line: 1217, baseType: !125, size: 64, offset: 18176)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !835, file: !478, line: 1219, baseType: !125, size: 64, offset: 18240)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !835, file: !478, line: 1223, baseType: !2388, size: 64, offset: 18304)
!2388 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2389, line: 99, baseType: !2390)
!2389 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2390 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2389, line: 99, size: 64, elements: !2391)
!2391 = !{!2392}
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2390, file: !2389, line: 99, baseType: !1089, size: 64)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !835, file: !478, line: 1225, baseType: !202, size: 32, offset: 18368)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !835, file: !478, line: 1226, baseType: !117, size: 32, offset: 18400)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !835, file: !478, line: 1227, baseType: !117, size: 32, offset: 18432)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !835, file: !478, line: 1231, baseType: !2397, size: 64, offset: 18496)
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2398 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !478, line: 1231, flags: DIFlagFwdDecl)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !835, file: !478, line: 1233, baseType: !142, size: 128, offset: 18560)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !835, file: !478, line: 1240, baseType: !2401, size: 64, offset: 18688)
!2401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2402, size: 64)
!2402 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !478, line: 62, flags: DIFlagFwdDecl)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !835, file: !478, line: 1242, baseType: !2404, size: 64, offset: 18752)
!2404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2405, size: 64)
!2405 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !478, line: 1242, flags: DIFlagFwdDecl)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !835, file: !478, line: 1244, baseType: !142, size: 128, offset: 18816)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !835, file: !478, line: 1245, baseType: !2408, size: 64, offset: 18944)
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2409 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !478, line: 51, flags: DIFlagFwdDecl)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !835, file: !478, line: 1246, baseType: !507, size: 256, offset: 19008)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !835, file: !478, line: 1247, baseType: !7, size: 32, offset: 19264)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !835, file: !478, line: 1250, baseType: !2413, size: 64, offset: 19328)
!2413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2414, size: 64)
!2414 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !478, line: 57, flags: DIFlagFwdDecl)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !835, file: !478, line: 1251, baseType: !507, size: 256, offset: 19392)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !835, file: !478, line: 1252, baseType: !142, size: 128, offset: 19648)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !835, file: !478, line: 1259, baseType: !1663, size: 64, offset: 19776)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !835, file: !478, line: 1260, baseType: !1293, size: 16, offset: 19840)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !835, file: !478, line: 1261, baseType: !1293, size: 16, offset: 19856)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !835, file: !478, line: 1314, baseType: !2421, size: 64, offset: 19904)
!2421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2422, size: 64)
!2422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2423, line: 62, size: 256, align: 256, elements: !2424)
!2423 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2424 = !{!2425, !2426, !2427, !2428, !2429, !2430, !2431}
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2422, file: !2423, line: 75, baseType: !93, size: 32)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2422, file: !2423, line: 90, baseType: !93, size: 32, offset: 32)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2422, file: !2423, line: 112, baseType: !126, size: 64, offset: 64)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2422, file: !2423, line: 132, baseType: !93, size: 32, offset: 128)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2422, file: !2423, line: 140, baseType: !93, size: 32, offset: 160)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2422, file: !2423, line: 149, baseType: !93, size: 32, offset: 192)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2422, file: !2423, line: 154, baseType: !2432, offset: 224)
!2432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, elements: !112)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !835, file: !478, line: 1315, baseType: !91, size: 32, offset: 19968)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !835, file: !478, line: 1316, baseType: !91, size: 32, offset: 20000)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !835, file: !478, line: 1321, baseType: !111, size: 64, offset: 20032)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !835, file: !478, line: 1325, baseType: !117, size: 32, offset: 20096)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !835, file: !478, line: 1326, baseType: !117, size: 32, offset: 20128)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !835, file: !478, line: 1327, baseType: !117, size: 32, offset: 20160)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !835, file: !478, line: 1328, baseType: !117, size: 32, offset: 20192)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !835, file: !478, line: 1329, baseType: !819, size: 128, align: 64, offset: 20224)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !835, file: !478, line: 1332, baseType: !2442, size: 128, offset: 20352)
!2442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2443, line: 51, size: 128, elements: !2444)
!2443 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2444 = !{!2445, !2450, !2451}
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2442, file: !2443, line: 60, baseType: !2446, size: 64)
!2446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2447, line: 7, size: 64, elements: !2448)
!2447 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2448 = !{!2449}
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2446, file: !2447, line: 12, baseType: !1086, size: 64)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2442, file: !2443, line: 63, baseType: !1324, size: 8, offset: 64)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2442, file: !2443, line: 70, baseType: !1324, size: 8, offset: 72)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !835, file: !478, line: 1335, baseType: !1715, size: 64, offset: 20480)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !835, file: !478, line: 1337, baseType: !2454, size: 128, offset: 20544)
!2454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2443, line: 39, size: 128, elements: !2455)
!2455 = !{!2456, !2457, !2458}
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2454, file: !2443, line: 40, baseType: !128, size: 64)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2454, file: !2443, line: 42, baseType: !93, size: 32, offset: 64)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2454, file: !2443, line: 43, baseType: !93, size: 32, offset: 96)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !835, file: !478, line: 1340, baseType: !2460, size: 64, offset: 20672)
!2460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2461, size: 64)
!2461 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !478, line: 69, flags: DIFlagFwdDecl)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !835, file: !478, line: 1351, baseType: !117, size: 32, offset: 20736)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !835, file: !478, line: 1352, baseType: !117, size: 32, offset: 20768)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !835, file: !478, line: 1354, baseType: !111, size: 64, offset: 20800)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !835, file: !478, line: 1364, baseType: !125, size: 64, offset: 20864)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !835, file: !478, line: 1365, baseType: !125, size: 64, offset: 20928)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !835, file: !478, line: 1412, baseType: !111, size: 64, offset: 20992)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !835, file: !478, line: 1453, baseType: !2469, size: 64, offset: 21056)
!2469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2470, size: 64)
!2470 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !478, line: 1453, flags: DIFlagFwdDecl)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !835, file: !478, line: 1457, baseType: !2472, size: 64, offset: 21120)
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !58, line: 61, size: 576, elements: !2474)
!2474 = !{!2475, !2476, !2495, !2498, !2499, !2532, !2542}
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2473, file: !58, line: 62, baseType: !57, size: 32)
!2476 = !DIDerivedType(tag: DW_TAG_member, scope: !2473, file: !58, line: 64, baseType: !2477, size: 192, offset: 64)
!2477 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2473, file: !58, line: 64, size: 192, elements: !2478)
!2478 = !{!2479, !2490}
!2479 = !DIDerivedType(tag: DW_TAG_member, scope: !2477, file: !58, line: 65, baseType: !2480, size: 192)
!2480 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2477, file: !58, line: 65, size: 192, elements: !2481)
!2481 = !{!2482, !2489}
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2480, file: !58, line: 66, baseType: !2483, size: 128)
!2483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2484, line: 50, size: 128, elements: !2485)
!2484 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2485 = !{!2486, !2487, !2488}
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2483, file: !2484, line: 52, baseType: !111, size: 64)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2483, file: !2484, line: 54, baseType: !7, size: 32, offset: 64)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2483, file: !2484, line: 55, baseType: !7, size: 32, offset: 96)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2480, file: !58, line: 67, baseType: !111, size: 64, offset: 128)
!2490 = !DIDerivedType(tag: DW_TAG_member, scope: !2477, file: !58, line: 70, baseType: !2491, size: 192)
!2491 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2477, file: !58, line: 70, size: 192, elements: !2492)
!2492 = !{!2493, !2494}
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2491, file: !58, line: 71, baseType: !819, size: 128, align: 64)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2491, file: !58, line: 72, baseType: !111, size: 64, offset: 128)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2473, file: !58, line: 76, baseType: !2496, size: 64, offset: 256)
!2496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2497, size: 64)
!2497 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !58, line: 76, flags: DIFlagFwdDecl)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2473, file: !58, line: 77, baseType: !111, size: 64, offset: 320)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2473, file: !58, line: 79, baseType: !2500, size: 64, offset: 384)
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!2501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2484, line: 25, size: 256, elements: !2502)
!2502 = !{!2503, !2509, !2513}
!2503 = !DIDerivedType(tag: DW_TAG_member, scope: !2501, file: !2484, line: 26, baseType: !2504, size: 128)
!2504 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2501, file: !2484, line: 26, size: 128, elements: !2505)
!2505 = !{!2506, !2508}
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2504, file: !2484, line: 27, baseType: !2507, size: 128)
!2507 = !DICompositeType(tag: DW_TAG_array_type, baseType: !281, size: 128, elements: !2031)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2504, file: !2484, line: 28, baseType: !2507, size: 128)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2501, file: !2484, line: 31, baseType: !2510, size: 64, offset: 128)
!2510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2511, size: 64)
!2511 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2512)
!2512 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2484, line: 23, flags: DIFlagFwdDecl)
!2513 = !DIDerivedType(tag: DW_TAG_member, scope: !2501, file: !2484, line: 33, baseType: !2514, size: 64, offset: 192)
!2514 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2501, file: !2484, line: 33, size: 64, elements: !2515)
!2515 = !{!2516, !2522, !2527}
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2514, file: !2484, line: 38, baseType: !2517, size: 64)
!2517 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2514, file: !2484, line: 34, size: 64, elements: !2518)
!2518 = !{!2519, !2520, !2521}
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2517, file: !2484, line: 35, baseType: !1267, size: 32)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2517, file: !2484, line: 36, baseType: !281, size: 8, offset: 32)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2517, file: !2484, line: 37, baseType: !281, size: 8, offset: 40)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2514, file: !2484, line: 42, baseType: !2523, size: 16)
!2523 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2514, file: !2484, line: 39, size: 16, elements: !2524)
!2524 = !{!2525, !2526}
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2523, file: !2484, line: 40, baseType: !281, size: 8)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2523, file: !2484, line: 41, baseType: !281, size: 8, offset: 8)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2514, file: !2484, line: 46, baseType: !2528, size: 16)
!2528 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2514, file: !2484, line: 43, size: 16, elements: !2529)
!2529 = !{!2530, !2531}
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2528, file: !2484, line: 44, baseType: !281, size: 8)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2528, file: !2484, line: 45, baseType: !281, size: 8, offset: 8)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2473, file: !58, line: 81, baseType: !2533, size: 64, offset: 448)
!2533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2534, size: 64)
!2534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !58, line: 85, size: 384, elements: !2535)
!2535 = !{!2536, !2537, !2538, !2539, !2540, !2541}
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2534, file: !58, line: 86, baseType: !2496, size: 64)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2534, file: !58, line: 87, baseType: !111, size: 64, offset: 64)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2534, file: !58, line: 88, baseType: !111, size: 64, offset: 128)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2534, file: !58, line: 89, baseType: !111, size: 64, offset: 192)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2534, file: !58, line: 90, baseType: !1324, size: 8, offset: 256)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2534, file: !58, line: 92, baseType: !2533, size: 64, offset: 320)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2473, file: !58, line: 82, baseType: !7, size: 32, offset: 512)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !835, file: !478, line: 1463, baseType: !2544, offset: 21184)
!2544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !478, line: 739, elements: !405)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !835, file: !478, line: 1470, baseType: !819, size: 128, align: 64, offset: 21184)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !835, file: !478, line: 1471, baseType: !848, size: 32, offset: 21312)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !835, file: !478, line: 1472, baseType: !117, size: 32, offset: 21344)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !835, file: !478, line: 1474, baseType: !834, size: 64, offset: 21376)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !835, file: !478, line: 1475, baseType: !2550, size: 320, offset: 21440)
!2550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2551, line: 11, size: 320, elements: !2552)
!2551 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2552 = !{!2553, !2554, !2555, !2560}
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2550, file: !2551, line: 16, baseType: !397, size: 128)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2550, file: !2551, line: 17, baseType: !111, size: 64, offset: 128)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2550, file: !2551, line: 18, baseType: !2556, size: 64, offset: 192)
!2556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2557, size: 64)
!2557 = !DISubroutineType(types: !2558)
!2558 = !{null, !2559}
!2559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2550, size: 64)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2550, file: !2551, line: 19, baseType: !91, size: 32, offset: 256)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !835, file: !478, line: 1478, baseType: !2562, size: 64, offset: 21760)
!2562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2563, size: 64)
!2563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2564, line: 49, size: 512, elements: !2565)
!2564 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!2565 = !{!2566, !2567, !2568, !2569, !2570, !2572, !2573, !2574, !2575}
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2563, file: !2564, line: 50, baseType: !2562, size: 64)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2563, file: !2564, line: 51, baseType: !82, size: 64, offset: 64)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2563, file: !2564, line: 52, baseType: !111, size: 64, offset: 128)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2563, file: !2564, line: 53, baseType: !111, size: 64, offset: 192)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2563, file: !2564, line: 54, baseType: !2571, size: 64, offset: 256)
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !2563, file: !2564, line: 56, baseType: !7, size: 32, offset: 320)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2563, file: !2564, line: 58, baseType: !7, size: 32, offset: 352)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2563, file: !2564, line: 59, baseType: !124, size: 64, offset: 384)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2563, file: !2564, line: 60, baseType: !2576, size: 64, offset: 448)
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!2577 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !835, file: !478, line: 1482, baseType: !848, size: 32, offset: 21824)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !835, file: !478, line: 1489, baseType: !82, size: 64, offset: 21888)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !835, file: !478, line: 1504, baseType: !82, size: 64, offset: 21952)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !835, file: !478, line: 1505, baseType: !126, size: 64, offset: 22016)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !835, file: !478, line: 1506, baseType: !125, size: 64, offset: 22080)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !835, file: !478, line: 1507, baseType: !126, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !835, file: !478, line: 1508, baseType: !126, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !835, file: !478, line: 1509, baseType: !126, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !835, file: !478, line: 1510, baseType: !819, size: 128, align: 64, offset: 22208)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !835, file: !478, line: 1511, baseType: !117, size: 32, offset: 22336)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !835, file: !478, line: 1515, baseType: !2589, size: 64, offset: 22400)
!2589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !862, line: 56, size: 64, elements: !2590)
!2590 = !{!2591}
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2589, file: !862, line: 57, baseType: !865, size: 64)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !835, file: !478, line: 1518, baseType: !2589, size: 64, offset: 22464)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !835, file: !478, line: 1528, baseType: !819, size: 128, align: 64, offset: 22528)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !835, file: !478, line: 1552, baseType: !2595, size: 35328, offset: 23040)
!2595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2596, line: 430, size: 35328, elements: !2597)
!2596 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!2597 = !{!2598, !2616, !2617, !2618, !2619, !2620, !2621, !2622, !2623, !2627, !2628, !2629, !2630, !2631, !2632, !2635, !2636, !2637, !2638}
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2595, file: !2596, line: 432, baseType: !2599, size: 192)
!2599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2600, size: 192, elements: !410)
!2600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2601, line: 16, size: 64, elements: !2602)
!2601 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!2602 = !{!2603, !2604, !2605, !2606, !2607, !2608, !2609, !2610, !2611, !2612, !2613, !2614, !2615}
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2600, file: !2601, line: 17, baseType: !288, size: 16)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2600, file: !2601, line: 18, baseType: !288, size: 16, offset: 16)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2600, file: !2601, line: 19, baseType: !288, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2600, file: !2601, line: 19, baseType: !288, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2600, file: !2601, line: 19, baseType: !288, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2600, file: !2601, line: 19, baseType: !288, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2600, file: !2601, line: 19, baseType: !288, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2600, file: !2601, line: 20, baseType: !288, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2600, file: !2601, line: 20, baseType: !288, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2600, file: !2601, line: 20, baseType: !288, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2600, file: !2601, line: 20, baseType: !288, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2600, file: !2601, line: 20, baseType: !288, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2600, file: !2601, line: 20, baseType: !288, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2595, file: !2596, line: 436, baseType: !111, size: 64, offset: 192)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2595, file: !2596, line: 440, baseType: !164, size: 16, offset: 256)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2595, file: !2596, line: 441, baseType: !164, size: 16, offset: 272)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2595, file: !2596, line: 442, baseType: !164, size: 16, offset: 288)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2595, file: !2596, line: 443, baseType: !164, size: 16, offset: 304)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2595, file: !2596, line: 447, baseType: !111, size: 64, offset: 320)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2595, file: !2596, line: 448, baseType: !111, size: 64, offset: 384)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2595, file: !2596, line: 459, baseType: !2624, size: 256, offset: 448)
!2624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2625, size: 256, elements: !1214)
!2625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2626, size: 64)
!2626 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2596, line: 428, flags: DIFlagFwdDecl)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2595, file: !2596, line: 461, baseType: !111, size: 64, offset: 704)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2595, file: !2596, line: 463, baseType: !111, size: 64, offset: 768)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2595, file: !2596, line: 465, baseType: !111, size: 64, offset: 832)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2595, file: !2596, line: 466, baseType: !111, size: 64, offset: 896)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2595, file: !2596, line: 467, baseType: !111, size: 64, offset: 960)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2595, file: !2596, line: 473, baseType: !2633, size: 64, offset: 1024)
!2633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2634, size: 64)
!2634 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2596, line: 10, flags: DIFlagFwdDecl)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2595, file: !2596, line: 480, baseType: !111, size: 64, offset: 1088)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !2595, file: !2596, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !2595, file: !2596, line: 491, baseType: !91, size: 32, offset: 1184)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2595, file: !2596, line: 501, baseType: !2639, size: 33792, offset: 1536)
!2639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2640, line: 448, size: 33792, elements: !2641)
!2640 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!2641 = !{!2642, !2643, !2644, !2806, !2807, !2813, !2814}
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2639, file: !2640, line: 461, baseType: !7, size: 32)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2639, file: !2640, line: 468, baseType: !111, size: 64, offset: 64)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !2639, file: !2640, line: 476, baseType: !2645, size: 64, offset: 128)
!2645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2646, size: 64)
!2646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !2640, line: 356, size: 33280, align: 512, elements: !2647)
!2647 = !{!2648, !2649, !2650, !2651, !2652, !2653, !2654, !2655, !2656, !2657}
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2646, file: !2640, line: 358, baseType: !7, size: 32)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !2646, file: !2640, line: 361, baseType: !7, size: 32, offset: 32)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2646, file: !2640, line: 364, baseType: !125, size: 64, offset: 64)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !2646, file: !2640, line: 367, baseType: !125, size: 64, offset: 128)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !2646, file: !2640, line: 370, baseType: !125, size: 64, offset: 192)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !2646, file: !2640, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !2646, file: !2640, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !2646, file: !2640, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !2646, file: !2640, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2646, file: !2640, line: 397, baseType: !2658, size: 32768, offset: 512)
!2658 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2640, line: 348, size: 32768, elements: !2659)
!2659 = !{!2660, !2675, !2712, !2789, !2802}
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2658, file: !2640, line: 349, baseType: !2661, size: 896)
!2661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2640, line: 12, size: 896, elements: !2662)
!2662 = !{!2663, !2664, !2665, !2666, !2667, !2668, !2669, !2670, !2674}
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2661, file: !2640, line: 13, baseType: !91, size: 32)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2661, file: !2640, line: 14, baseType: !91, size: 32, offset: 32)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2661, file: !2640, line: 15, baseType: !91, size: 32, offset: 64)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2661, file: !2640, line: 16, baseType: !91, size: 32, offset: 96)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2661, file: !2640, line: 17, baseType: !91, size: 32, offset: 128)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2661, file: !2640, line: 18, baseType: !91, size: 32, offset: 160)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2661, file: !2640, line: 19, baseType: !91, size: 32, offset: 192)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2661, file: !2640, line: 22, baseType: !2671, size: 640, offset: 224)
!2671 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 640, elements: !2672)
!2672 = !{!2673}
!2673 = !DISubrange(count: 20)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2661, file: !2640, line: 25, baseType: !91, size: 32, offset: 864)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2658, file: !2640, line: 350, baseType: !2676, size: 4096, align: 128)
!2676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2640, line: 34, size: 4096, align: 128, elements: !2677)
!2677 = !{!2678, !2679, !2680, !2681, !2682, !2697, !2698, !2699, !2701, !2703, !2707}
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2676, file: !2640, line: 35, baseType: !288, size: 16)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2676, file: !2640, line: 36, baseType: !288, size: 16, offset: 16)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2676, file: !2640, line: 37, baseType: !288, size: 16, offset: 32)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2676, file: !2640, line: 38, baseType: !288, size: 16, offset: 48)
!2682 = !DIDerivedType(tag: DW_TAG_member, scope: !2676, file: !2640, line: 39, baseType: !2683, size: 128, offset: 64)
!2683 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2676, file: !2640, line: 39, size: 128, elements: !2684)
!2684 = !{!2685, !2690}
!2685 = !DIDerivedType(tag: DW_TAG_member, scope: !2683, file: !2640, line: 40, baseType: !2686, size: 128)
!2686 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2683, file: !2640, line: 40, size: 128, elements: !2687)
!2687 = !{!2688, !2689}
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2686, file: !2640, line: 41, baseType: !125, size: 64)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2686, file: !2640, line: 42, baseType: !125, size: 64, offset: 64)
!2690 = !DIDerivedType(tag: DW_TAG_member, scope: !2683, file: !2640, line: 44, baseType: !2691, size: 128)
!2691 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2683, file: !2640, line: 44, size: 128, elements: !2692)
!2692 = !{!2693, !2694, !2695, !2696}
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2691, file: !2640, line: 45, baseType: !91, size: 32)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2691, file: !2640, line: 46, baseType: !91, size: 32, offset: 32)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2691, file: !2640, line: 47, baseType: !91, size: 32, offset: 64)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2691, file: !2640, line: 48, baseType: !91, size: 32, offset: 96)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2676, file: !2640, line: 51, baseType: !91, size: 32, offset: 192)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2676, file: !2640, line: 52, baseType: !91, size: 32, offset: 224)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2676, file: !2640, line: 55, baseType: !2700, size: 1024, offset: 256)
!2700 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 1024, elements: !239)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2676, file: !2640, line: 58, baseType: !2702, size: 2048, offset: 1280)
!2702 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 2048, elements: !2229)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2676, file: !2640, line: 60, baseType: !2704, size: 384, offset: 3328)
!2704 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 384, elements: !2705)
!2705 = !{!2706}
!2706 = !DISubrange(count: 12)
!2707 = !DIDerivedType(tag: DW_TAG_member, scope: !2676, file: !2640, line: 62, baseType: !2708, size: 384, offset: 3712)
!2708 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2676, file: !2640, line: 62, size: 384, elements: !2709)
!2709 = !{!2710, !2711}
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2708, file: !2640, line: 63, baseType: !2704, size: 384)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2708, file: !2640, line: 64, baseType: !2704, size: 384)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2658, file: !2640, line: 351, baseType: !2713, size: 1088)
!2713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2640, line: 79, size: 1088, elements: !2714)
!2714 = !{!2715, !2716, !2717, !2718, !2719, !2720, !2721, !2722, !2723, !2724, !2725, !2726, !2727, !2728, !2729, !2788}
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2713, file: !2640, line: 80, baseType: !91, size: 32)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2713, file: !2640, line: 81, baseType: !91, size: 32, offset: 32)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2713, file: !2640, line: 82, baseType: !91, size: 32, offset: 64)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2713, file: !2640, line: 83, baseType: !91, size: 32, offset: 96)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2713, file: !2640, line: 84, baseType: !91, size: 32, offset: 128)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2713, file: !2640, line: 85, baseType: !91, size: 32, offset: 160)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2713, file: !2640, line: 86, baseType: !91, size: 32, offset: 192)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2713, file: !2640, line: 88, baseType: !2671, size: 640, offset: 224)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2713, file: !2640, line: 89, baseType: !281, size: 8, offset: 864)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2713, file: !2640, line: 90, baseType: !281, size: 8, offset: 872)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2713, file: !2640, line: 91, baseType: !281, size: 8, offset: 880)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2713, file: !2640, line: 92, baseType: !281, size: 8, offset: 888)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2713, file: !2640, line: 93, baseType: !281, size: 8, offset: 896)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2713, file: !2640, line: 94, baseType: !281, size: 8, offset: 904)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2713, file: !2640, line: 95, baseType: !2730, size: 64, offset: 960)
!2730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2731, size: 64)
!2731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2732, line: 11, size: 128, elements: !2733)
!2732 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!2733 = !{!2734, !2735}
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2731, file: !2732, line: 12, baseType: !489, size: 64)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2731, file: !2732, line: 13, baseType: !2736, size: 64, offset: 64)
!2736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2737, size: 64)
!2737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2738, line: 103, size: 1344, elements: !2739)
!2738 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!2739 = !{!2740, !2741, !2742, !2743, !2744, !2745, !2746, !2747, !2748, !2749, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2757, !2768, !2769, !2770}
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2737, file: !2738, line: 109, baseType: !111, size: 64)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2737, file: !2738, line: 110, baseType: !111, size: 64, offset: 64)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2737, file: !2738, line: 111, baseType: !111, size: 64, offset: 128)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2737, file: !2738, line: 112, baseType: !111, size: 64, offset: 192)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2737, file: !2738, line: 113, baseType: !111, size: 64, offset: 256)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2737, file: !2738, line: 114, baseType: !111, size: 64, offset: 320)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2737, file: !2738, line: 117, baseType: !111, size: 64, offset: 384)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2737, file: !2738, line: 118, baseType: !111, size: 64, offset: 448)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2737, file: !2738, line: 119, baseType: !111, size: 64, offset: 512)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2737, file: !2738, line: 120, baseType: !111, size: 64, offset: 576)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2737, file: !2738, line: 121, baseType: !111, size: 64, offset: 640)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2737, file: !2738, line: 122, baseType: !111, size: 64, offset: 704)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2737, file: !2738, line: 123, baseType: !111, size: 64, offset: 768)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2737, file: !2738, line: 124, baseType: !111, size: 64, offset: 832)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2737, file: !2738, line: 125, baseType: !111, size: 64, offset: 896)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2737, file: !2738, line: 139, baseType: !111, size: 64, offset: 960)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2737, file: !2738, line: 142, baseType: !111, size: 64, offset: 1024)
!2757 = !DIDerivedType(tag: DW_TAG_member, scope: !2737, file: !2738, line: 144, baseType: !2758, size: 64, offset: 1088)
!2758 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2737, file: !2738, line: 144, size: 64, elements: !2759)
!2759 = !{!2760, !2761, !2762}
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2758, file: !2738, line: 146, baseType: !288, size: 16)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !2758, file: !2738, line: 148, baseType: !125, size: 64)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !2758, file: !2738, line: 150, baseType: !2763, size: 64)
!2763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !2738, line: 59, size: 64, elements: !2764)
!2764 = !{!2765, !2766, !2767}
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2763, file: !2738, line: 61, baseType: !125, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !2763, file: !2738, line: 63, baseType: !125, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !2763, file: !2738, line: 65, baseType: !125, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2737, file: !2738, line: 153, baseType: !111, size: 64, offset: 1152)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2737, file: !2738, line: 154, baseType: !111, size: 64, offset: 1216)
!2770 = !DIDerivedType(tag: DW_TAG_member, scope: !2737, file: !2738, line: 156, baseType: !2771, size: 64, offset: 1280)
!2771 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2737, file: !2738, line: 156, size: 64, elements: !2772)
!2772 = !{!2773, !2774, !2775}
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2771, file: !2738, line: 158, baseType: !288, size: 16)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !2771, file: !2738, line: 160, baseType: !125, size: 64)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !2771, file: !2738, line: 162, baseType: !2776, size: 64)
!2776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !2738, line: 69, size: 64, elements: !2777)
!2777 = !{!2778, !2779, !2780, !2781, !2782, !2783, !2784, !2785, !2786, !2787}
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2776, file: !2738, line: 71, baseType: !125, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !2776, file: !2738, line: 73, baseType: !125, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !2776, file: !2738, line: 75, baseType: !125, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !2776, file: !2738, line: 77, baseType: !125, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !2776, file: !2738, line: 80, baseType: !125, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2776, file: !2738, line: 83, baseType: !125, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !2776, file: !2738, line: 86, baseType: !125, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !2776, file: !2738, line: 88, baseType: !125, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !2776, file: !2738, line: 93, baseType: !125, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !2776, file: !2738, line: 100, baseType: !125, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2713, file: !2640, line: 96, baseType: !91, size: 32, offset: 1024)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2658, file: !2640, line: 352, baseType: !2790, size: 4608, align: 512)
!2790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2640, line: 333, size: 4608, align: 512, elements: !2791)
!2791 = !{!2792, !2793, !2800}
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2790, file: !2640, line: 334, baseType: !2676, size: 4096, align: 128)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2790, file: !2640, line: 335, baseType: !2794, size: 512, offset: 4096)
!2794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2640, line: 312, size: 512, elements: !2795)
!2795 = !{!2796, !2797, !2798}
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2794, file: !2640, line: 313, baseType: !125, size: 64)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2794, file: !2640, line: 314, baseType: !125, size: 64, offset: 64)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2794, file: !2640, line: 315, baseType: !2799, size: 384, offset: 128)
!2799 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 384, elements: !1311)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2790, file: !2640, line: 336, baseType: !2801, offset: 4608)
!2801 = !DICompositeType(tag: DW_TAG_array_type, baseType: !281, elements: !112)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2658, file: !2640, line: 353, baseType: !2803, size: 32768)
!2803 = !DICompositeType(tag: DW_TAG_array_type, baseType: !281, size: 32768, elements: !2804)
!2804 = !{!2805}
!2805 = !DISubrange(count: 4096)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !2639, file: !2640, line: 484, baseType: !2645, size: 64, offset: 192)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2639, file: !2640, line: 491, baseType: !2808, size: 128, offset: 256)
!2808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !2640, line: 404, size: 128, elements: !2809)
!2809 = !{!2810, !2811, !2812}
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !2808, file: !2640, line: 424, baseType: !125, size: 64)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !2808, file: !2640, line: 432, baseType: !7, size: 32, offset: 64)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !2808, file: !2640, line: 440, baseType: !7, size: 32, offset: 96)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !2639, file: !2640, line: 498, baseType: !2808, size: 128, offset: 384)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !2639, file: !2640, line: 508, baseType: !2646, size: 33280, align: 512, offset: 512)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !802, file: !803, line: 16, baseType: !812, size: 192, offset: 512)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !802, file: !803, line: 17, baseType: !273, size: 32, offset: 704)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !351, file: !12, line: 1240, baseType: !82, size: 64, offset: 6912)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !351, file: !12, line: 1243, baseType: !91, size: 32, offset: 6976)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !351, file: !12, line: 1245, baseType: !560, size: 64, offset: 7040)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !351, file: !12, line: 1246, baseType: !560, size: 64, offset: 7104)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !351, file: !12, line: 1248, baseType: !93, size: 32, offset: 7168)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !351, file: !12, line: 1249, baseType: !2823, size: 64, offset: 7232)
!2823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2824, size: 64)
!2824 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !12, line: 634, flags: DIFlagFwdDecl)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !351, file: !12, line: 1252, baseType: !2826, size: 256, offset: 7296)
!2826 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 256, elements: !239)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !351, file: !12, line: 1253, baseType: !2828, size: 128, offset: 7552)
!2828 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2829, line: 21, baseType: !2830)
!2829 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!2830 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2829, line: 19, size: 128, elements: !2831)
!2831 = !{!2832}
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2830, file: !2829, line: 20, baseType: !2833, size: 128)
!2833 = !DICompositeType(tag: DW_TAG_array_type, baseType: !282, size: 128, elements: !2031)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !351, file: !12, line: 1255, baseType: !7, size: 32, offset: 7680)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !351, file: !12, line: 1261, baseType: !507, size: 256, offset: 7744)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !351, file: !12, line: 1267, baseType: !313, size: 64, offset: 8000)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !351, file: !12, line: 1269, baseType: !293, size: 64, offset: 8064)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !351, file: !12, line: 1271, baseType: !2839, size: 448, offset: 8128)
!2839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !569, line: 63, size: 448, elements: !2840)
!2840 = !{!2841, !2846, !2847, !2848, !2849, !2850, !2851}
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2839, file: !569, line: 64, baseType: !2842, size: 64)
!2842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2843, size: 64)
!2843 = !DISubroutineType(types: !2844)
!2844 = !{!111, !2845, !567}
!2845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2839, size: 64)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2839, file: !569, line: 66, baseType: !2842, size: 64, offset: 64)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2839, file: !569, line: 69, baseType: !489, size: 64, offset: 128)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2839, file: !569, line: 70, baseType: !117, size: 32, offset: 192)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2839, file: !569, line: 71, baseType: !7, size: 32, offset: 224)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2839, file: !569, line: 74, baseType: !142, size: 128, offset: 256)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2839, file: !569, line: 85, baseType: !2852, size: 64, offset: 384)
!2852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !351, file: !12, line: 1274, baseType: !511, size: 64, offset: 8576)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !351, file: !12, line: 1280, baseType: !511, size: 64, offset: 8640)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !351, file: !12, line: 1283, baseType: !117, size: 32, offset: 8704)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !351, file: !12, line: 1286, baseType: !1765, size: 32, offset: 8736)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !351, file: !12, line: 1289, baseType: !2858, size: 64, offset: 8768)
!2858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2859, size: 64)
!2859 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1871, line: 18, flags: DIFlagFwdDecl)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !351, file: !12, line: 1290, baseType: !393, size: 64, offset: 8832)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !351, file: !12, line: 1297, baseType: !1407, size: 64, offset: 8896)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !351, file: !12, line: 1304, baseType: !2863, size: 64, offset: 8960)
!2863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2864, line: 49, size: 64, elements: !2865)
!2864 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!2865 = !{!2866}
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2863, file: !2864, line: 50, baseType: !2867, size: 64)
!2867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2868, size: 64)
!2868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2864, line: 41, size: 512, align: 512, elements: !2869)
!2869 = !{!2870, !2871, !2876}
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2868, file: !2864, line: 43, baseType: !253, size: 32)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2868, file: !2864, line: 45, baseType: !2872, size: 192, offset: 64)
!2872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2864, line: 29, size: 192, elements: !2873)
!2873 = !{!2874, !2875}
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2872, file: !2864, line: 30, baseType: !142, size: 128)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2872, file: !2864, line: 32, baseType: !489, size: 64, offset: 128)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2868, file: !2864, line: 46, baseType: !489, size: 64, offset: 256)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !351, file: !12, line: 1305, baseType: !2863, size: 64, offset: 9024)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !351, file: !12, line: 1306, baseType: !819, size: 128, align: 64, offset: 9088)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !351, file: !12, line: 1307, baseType: !1870, size: 256, offset: 9216)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !351, file: !12, line: 1309, baseType: !507, size: 256, offset: 9472)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !351, file: !12, line: 1314, baseType: !117, size: 32, offset: 9728)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !351, file: !12, line: 1317, baseType: !253, size: 32, align: 512, offset: 10240)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !351, file: !12, line: 1318, baseType: !142, size: 128, offset: 10304)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !351, file: !12, line: 1320, baseType: !253, size: 32, offset: 10432)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !351, file: !12, line: 1321, baseType: !142, size: 128, offset: 10496)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !345, file: !346, line: 73, baseType: !117, size: 32, offset: 128)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !345, file: !346, line: 74, baseType: !2888, size: 64, offset: 192)
!2888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2889, size: 64)
!2889 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1249, line: 42, flags: DIFlagFwdDecl)
!2890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !295, file: !198, line: 141, baseType: !2892, size: 64, offset: 704)
!2892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2893, size: 64)
!2893 = !DISubroutineType(types: !2894)
!2894 = !{!117, !629, !1324}
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !295, file: !198, line: 142, baseType: !2896, size: 64, offset: 768)
!2896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2897, size: 64)
!2897 = !DISubroutineType(types: !2898)
!2898 = !{!196, !196, !2899}
!2899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2900, size: 64)
!2900 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !160)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !197, file: !198, line: 96, baseType: !350, size: 64, offset: 832)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !197, file: !198, line: 97, baseType: !111, size: 64, offset: 896)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !197, file: !198, line: 98, baseType: !82, size: 64, offset: 960)
!2904 = !DIDerivedType(tag: DW_TAG_member, scope: !197, file: !198, line: 100, baseType: !2905, size: 128, offset: 1024)
!2905 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !197, file: !198, line: 100, size: 128, elements: !2906)
!2906 = !{!2907, !2908}
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2905, file: !198, line: 101, baseType: !142, size: 128)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2905, file: !198, line: 102, baseType: !2909, size: 64)
!2909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !197, file: !198, line: 104, baseType: !142, size: 128, offset: 1152)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !197, file: !198, line: 105, baseType: !142, size: 128, offset: 1280)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !197, file: !198, line: 113, baseType: !2913, size: 128, offset: 1408)
!2913 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !197, file: !198, line: 109, size: 128, elements: !2914)
!2914 = !{!2915, !2916, !2917}
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2913, file: !198, line: 110, baseType: !397, size: 128)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2913, file: !198, line: 111, baseType: !212, size: 128)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2913, file: !198, line: 112, baseType: !819, size: 128, align: 64)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !190, file: !12, line: 1968, baseType: !2919, size: 64, offset: 64)
!2919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2920, size: 64)
!2920 = !DISubroutineType(types: !2921)
!2921 = !{!313, !196, !159, !2922}
!2922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2923, size: 64)
!2923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !2924, line: 10, size: 128, elements: !2925)
!2924 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!2925 = !{!2926, !2930}
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2923, file: !2924, line: 11, baseType: !2927, size: 64)
!2927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2928, size: 64)
!2928 = !DISubroutineType(types: !2929)
!2929 = !{null, !82}
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2923, file: !2924, line: 12, baseType: !82, size: 64, offset: 64)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !190, file: !12, line: 1969, baseType: !2932, size: 64, offset: 128)
!2932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2933, size: 64)
!2933 = !DISubroutineType(types: !2934)
!2934 = !{!117, !2888, !159, !117}
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !190, file: !12, line: 1970, baseType: !2936, size: 64, offset: 192)
!2936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2937, size: 64)
!2937 = !DISubroutineType(types: !2938)
!2938 = !{!184, !159, !117, !1324}
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !190, file: !12, line: 1972, baseType: !2940, size: 64, offset: 256)
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2941, size: 64)
!2941 = !DISubroutineType(types: !2942)
!2942 = !{!117, !196, !339, !117}
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !190, file: !12, line: 1974, baseType: !2944, size: 64, offset: 320)
!2944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2945, size: 64)
!2945 = !DISubroutineType(types: !2946)
!2946 = !{!117, !2888, !159, !196, !163, !1324}
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !190, file: !12, line: 1976, baseType: !2948, size: 64, offset: 384)
!2948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2949, size: 64)
!2949 = !DISubroutineType(types: !2950)
!2950 = !{!117, !196, !159, !196}
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !190, file: !12, line: 1977, baseType: !2952, size: 64, offset: 448)
!2952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2953, size: 64)
!2953 = !DISubroutineType(types: !2954)
!2954 = !{!117, !159, !196}
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !190, file: !12, line: 1978, baseType: !2956, size: 64, offset: 512)
!2956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2957, size: 64)
!2957 = !DISubroutineType(types: !2958)
!2958 = !{!117, !2888, !159, !196, !313}
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !190, file: !12, line: 1980, baseType: !2960, size: 64, offset: 576)
!2960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2961, size: 64)
!2961 = !DISubroutineType(types: !2962)
!2962 = !{!117, !2888, !159, !196, !163}
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !190, file: !12, line: 1982, baseType: !2952, size: 64, offset: 640)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !190, file: !12, line: 1983, baseType: !2965, size: 64, offset: 704)
!2965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2966, size: 64)
!2966 = !DISubroutineType(types: !2967)
!2967 = !{!117, !2888, !159, !196, !163, !355}
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !190, file: !12, line: 1985, baseType: !2969, size: 64, offset: 768)
!2969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2970, size: 64)
!2970 = !DISubroutineType(types: !2971)
!2971 = !{!117, !2888, !159, !196, !159, !196, !7}
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !190, file: !12, line: 1987, baseType: !2973, size: 64, offset: 832)
!2973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2974, size: 64)
!2974 = !DISubroutineType(types: !2975)
!2975 = !{!117, !2888, !196, !2976}
!2976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2977, size: 64)
!2977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !12, line: 226, size: 640, elements: !2978)
!2978 = !{!2979, !2980, !2981, !2991, !3000, !3001, !3006, !3007, !3008}
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !2977, file: !12, line: 227, baseType: !7, size: 32)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !2977, file: !12, line: 228, baseType: !163, size: 16, offset: 32)
!2981 = !DIDerivedType(tag: DW_TAG_member, scope: !2977, file: !12, line: 241, baseType: !2982, size: 32, offset: 64)
!2982 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2977, file: !12, line: 241, size: 32, elements: !2983)
!2983 = !{!2984, !2985}
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !2982, file: !12, line: 242, baseType: !167, size: 32)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !2982, file: !12, line: 243, baseType: !2986, size: 32)
!2986 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !2987, line: 16, baseType: !2988)
!2987 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!2988 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2987, line: 14, size: 32, elements: !2989)
!2989 = !{!2990}
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2988, file: !2987, line: 15, baseType: !172, size: 32)
!2991 = !DIDerivedType(tag: DW_TAG_member, scope: !2977, file: !12, line: 245, baseType: !2992, size: 32, offset: 96)
!2992 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2977, file: !12, line: 245, size: 32, elements: !2993)
!2993 = !{!2994, !2995}
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !2992, file: !12, line: 246, baseType: !176, size: 32)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !2992, file: !12, line: 247, baseType: !2996, size: 32)
!2996 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !2987, line: 20, baseType: !2997)
!2997 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2987, line: 18, size: 32, elements: !2998)
!2998 = !{!2999}
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2997, file: !2987, line: 19, baseType: !180, size: 32)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !2977, file: !12, line: 249, baseType: !360, size: 64, offset: 128)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !2977, file: !12, line: 250, baseType: !3002, size: 128, offset: 192)
!3002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !561, line: 13, size: 128, elements: !3003)
!3003 = !{!3004, !3005}
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3002, file: !561, line: 14, baseType: !560, size: 64)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3002, file: !561, line: 15, baseType: !489, size: 64, offset: 64)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !2977, file: !12, line: 251, baseType: !3002, size: 128, offset: 320)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !2977, file: !12, line: 252, baseType: !3002, size: 128, offset: 448)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !2977, file: !12, line: 259, baseType: !1165, size: 64, offset: 576)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !190, file: !12, line: 1988, baseType: !3010, size: 64, offset: 896)
!3010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3011, size: 64)
!3011 = !DISubroutineType(types: !3012)
!3012 = !{!117, !2888, !629, !3013, !91, !7}
!3013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3014, size: 64)
!3014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3015, line: 22, size: 1280, elements: !3016)
!3015 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3016 = !{!3017, !3018, !3019, !3020, !3021, !3022, !3023, !3024, !3025, !3026, !3027, !3028, !3029, !3030, !3031, !3032, !3033, !3034, !3035, !3036, !3037}
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3014, file: !3015, line: 23, baseType: !91, size: 32)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3014, file: !3015, line: 24, baseType: !163, size: 16, offset: 32)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3014, file: !3015, line: 25, baseType: !7, size: 32, offset: 64)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3014, file: !3015, line: 26, baseType: !1289, size: 32, offset: 96)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3014, file: !3015, line: 27, baseType: !125, size: 64, offset: 128)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3014, file: !3015, line: 28, baseType: !125, size: 64, offset: 192)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3014, file: !3015, line: 41, baseType: !125, size: 64, offset: 256)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3014, file: !3015, line: 42, baseType: !355, size: 32, offset: 320)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3014, file: !3015, line: 43, baseType: !355, size: 32, offset: 352)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3014, file: !3015, line: 44, baseType: !167, size: 32, offset: 384)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3014, file: !3015, line: 45, baseType: !176, size: 32, offset: 416)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3014, file: !3015, line: 46, baseType: !360, size: 64, offset: 448)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3014, file: !3015, line: 47, baseType: !3002, size: 128, offset: 512)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3014, file: !3015, line: 48, baseType: !3002, size: 128, offset: 640)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3014, file: !3015, line: 49, baseType: !3002, size: 128, offset: 768)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3014, file: !3015, line: 50, baseType: !3002, size: 128, offset: 896)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3014, file: !3015, line: 51, baseType: !125, size: 64, offset: 1024)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3014, file: !3015, line: 52, baseType: !125, size: 64, offset: 1088)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3014, file: !3015, line: 53, baseType: !91, size: 32, offset: 1152)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3014, file: !3015, line: 54, baseType: !91, size: 32, offset: 1184)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3014, file: !3015, line: 55, baseType: !125, size: 64, offset: 1216)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !190, file: !12, line: 1990, baseType: !3039, size: 64, offset: 960)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3040 = !DISubroutineType(types: !3041)
!3041 = !{!486, !196, !339, !120}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !190, file: !12, line: 1991, baseType: !3043, size: 64, offset: 1024)
!3043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3044, size: 64)
!3044 = !DISubroutineType(types: !3045)
!3045 = !{!117, !159, !3046, !125, !125}
!3046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3047, size: 64)
!3047 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !12, line: 55, flags: DIFlagFwdDecl)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !190, file: !12, line: 1993, baseType: !3049, size: 64, offset: 1088)
!3049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3050, size: 64)
!3050 = !DISubroutineType(types: !3051)
!3051 = !{!117, !159, !117}
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !190, file: !12, line: 1994, baseType: !3053, size: 64, offset: 1152)
!3053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3054, size: 64)
!3054 = !DISubroutineType(types: !3055)
!3055 = !{!117, !159, !196, !1165, !7, !163}
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !190, file: !12, line: 1997, baseType: !3057, size: 64, offset: 1216)
!3057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3058, size: 64)
!3058 = !DISubroutineType(types: !3059)
!3059 = !{!117, !2888, !159, !1165, !163}
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !190, file: !12, line: 1999, baseType: !3061, size: 64, offset: 1280)
!3061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3062, size: 64)
!3062 = !DISubroutineType(types: !3063)
!3063 = !{!184, !2888, !196, !117}
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !190, file: !12, line: 2001, baseType: !3065, size: 64, offset: 1344)
!3065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3066, size: 64)
!3066 = !DISubroutineType(types: !3067)
!3067 = !{!117, !2888, !196, !184, !117}
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !190, file: !12, line: 2003, baseType: !3069, size: 64, offset: 1408)
!3069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3070, size: 64)
!3070 = !DISubroutineType(types: !3071)
!3071 = !{!117, !2888, !196, !3072}
!3072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3073, size: 64)
!3073 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !12, line: 76, flags: DIFlagFwdDecl)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !190, file: !12, line: 2005, baseType: !3075, size: 64, offset: 1472)
!3075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3076, size: 64)
!3076 = !DISubroutineType(types: !3077)
!3077 = !{!117, !196, !3072}
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !190, file: !12, line: 2006, baseType: !3079, size: 64, offset: 1536)
!3079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3080, size: 64)
!3080 = !DISubroutineType(types: !3081)
!3081 = !{!3082, !159}
!3082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3083, size: 64)
!3083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !12, line: 3192, size: 192, elements: !3084)
!3084 = !{!3085, !3092}
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3083, file: !12, line: 3193, baseType: !3086, size: 128)
!3086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3087, line: 296, size: 128, elements: !3088)
!3087 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3088 = !{!3089, !3090, !3091}
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3086, file: !3087, line: 297, baseType: !253, size: 32)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3086, file: !3087, line: 299, baseType: !80, size: 32, offset: 32)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3086, file: !3087, line: 300, baseType: !82, size: 64, offset: 64)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3083, file: !12, line: 3194, baseType: !91, size: 32, offset: 128)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !160, file: !12, line: 655, baseType: !350, size: 64, offset: 448)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !160, file: !12, line: 656, baseType: !155, size: 64, offset: 512)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !160, file: !12, line: 659, baseType: !82, size: 64, offset: 576)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !160, file: !12, line: 663, baseType: !111, size: 64, offset: 640)
!3097 = !DIDerivedType(tag: DW_TAG_member, scope: !160, file: !12, line: 671, baseType: !3098, size: 32, offset: 704)
!3098 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !160, file: !12, line: 671, size: 32, elements: !3099)
!3099 = !{!3100, !3102}
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3098, file: !12, line: 672, baseType: !3101, size: 32)
!3101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3098, file: !12, line: 673, baseType: !7, size: 32)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !160, file: !12, line: 675, baseType: !355, size: 32, offset: 736)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !160, file: !12, line: 676, baseType: !360, size: 64, offset: 768)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !160, file: !12, line: 677, baseType: !3002, size: 128, offset: 832)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !160, file: !12, line: 678, baseType: !3002, size: 128, offset: 960)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !160, file: !12, line: 679, baseType: !3002, size: 128, offset: 1088)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !160, file: !12, line: 680, baseType: !253, size: 32, offset: 1216)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !160, file: !12, line: 681, baseType: !164, size: 16, offset: 1248)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !160, file: !12, line: 682, baseType: !281, size: 8, offset: 1264)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !160, file: !12, line: 683, baseType: !281, size: 8, offset: 1272)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !160, file: !12, line: 684, baseType: !707, size: 64, offset: 1280)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !160, file: !12, line: 691, baseType: !111, size: 64, offset: 1344)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !160, file: !12, line: 692, baseType: !719, size: 320, offset: 1408)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !160, file: !12, line: 694, baseType: !111, size: 64, offset: 1728)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !160, file: !12, line: 695, baseType: !111, size: 64, offset: 1792)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !160, file: !12, line: 697, baseType: !397, size: 128, offset: 1856)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !160, file: !12, line: 698, baseType: !142, size: 128, offset: 1984)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !160, file: !12, line: 707, baseType: !142, size: 128, offset: 2112)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !160, file: !12, line: 708, baseType: !142, size: 128, offset: 2240)
!3121 = !DIDerivedType(tag: DW_TAG_member, scope: !160, file: !12, line: 709, baseType: !3122, size: 128, offset: 2368)
!3122 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !160, file: !12, line: 709, size: 128, elements: !3123)
!3123 = !{!3124, !3125}
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3122, file: !12, line: 710, baseType: !393, size: 64)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3122, file: !12, line: 711, baseType: !819, size: 128, align: 64)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !160, file: !12, line: 713, baseType: !513, size: 64, offset: 2496)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !160, file: !12, line: 714, baseType: !513, size: 64, offset: 2560)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !160, file: !12, line: 715, baseType: !273, size: 32, offset: 2624)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !160, file: !12, line: 716, baseType: !273, size: 32, offset: 2656)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !160, file: !12, line: 717, baseType: !273, size: 32, offset: 2688)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !160, file: !12, line: 719, baseType: !273, size: 32, offset: 2720)
!3132 = !DIDerivedType(tag: DW_TAG_member, scope: !160, file: !12, line: 721, baseType: !3133, size: 64, offset: 2752)
!3133 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !160, file: !12, line: 721, size: 64, elements: !3134)
!3134 = !{!3135, !3136}
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3133, file: !12, line: 722, baseType: !1438, size: 64)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3133, file: !12, line: 723, baseType: !426, size: 64)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !160, file: !12, line: 725, baseType: !3138, size: 64, offset: 2816)
!3138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3139, size: 64)
!3139 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !12, line: 725, flags: DIFlagFwdDecl)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !160, file: !12, line: 726, baseType: !156, size: 1536, align: 64, offset: 2880)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !160, file: !12, line: 727, baseType: !142, size: 128, offset: 4416)
!3142 = !DIDerivedType(tag: DW_TAG_member, scope: !160, file: !12, line: 728, baseType: !3143, size: 64, offset: 4544)
!3143 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !160, file: !12, line: 728, size: 64, elements: !3144)
!3144 = !{!3145, !3146, !3149, !3150}
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3143, file: !12, line: 729, baseType: !1715, size: 64)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3143, file: !12, line: 730, baseType: !3147, size: 64)
!3147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3148, size: 64)
!3148 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !12, line: 730, flags: DIFlagFwdDecl)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3143, file: !12, line: 731, baseType: !339, size: 64)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3143, file: !12, line: 732, baseType: !7, size: 32)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !160, file: !12, line: 735, baseType: !93, size: 32, offset: 4608)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !160, file: !12, line: 738, baseType: !93, size: 32, offset: 4640)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !160, file: !12, line: 739, baseType: !2823, size: 64, offset: 4672)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !160, file: !12, line: 750, baseType: !82, size: 64, offset: 4736)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !156, file: !12, line: 474, baseType: !3086, size: 128, offset: 64)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !156, file: !12, line: 475, baseType: !719, size: 320, offset: 192)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !156, file: !12, line: 476, baseType: !80, size: 32, offset: 512)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !156, file: !12, line: 477, baseType: !273, size: 32, offset: 544)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !156, file: !12, line: 482, baseType: !1021, size: 128, offset: 576)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !156, file: !12, line: 483, baseType: !111, size: 64, offset: 704)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !156, file: !12, line: 484, baseType: !111, size: 64, offset: 768)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !156, file: !12, line: 485, baseType: !3163, size: 64, offset: 832)
!3163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3164, size: 64)
!3164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3165)
!3165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !12, line: 404, size: 1280, elements: !3166)
!3166 = !{!3167, !3171, !3241, !3245, !3249, !3255, !3259, !3263, !3268, !3272, !3276, !3280, !3281, !3285, !3289, !3293, !3298, !3302, !3309, !3310}
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3165, file: !12, line: 405, baseType: !3168, size: 64)
!3168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3169, size: 64)
!3169 = !DISubroutineType(types: !3170)
!3170 = !{!117, !128, !438}
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3165, file: !12, line: 406, baseType: !3172, size: 64, offset: 64)
!3172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3173, size: 64)
!3173 = !DISubroutineType(types: !3174)
!3174 = !{!117, !1165, !3175}
!3175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3176, size: 64)
!3176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !36, line: 293, size: 1536, elements: !3177)
!3177 = !{!3178, !3208, !3222}
!3178 = !DIDerivedType(tag: DW_TAG_member, scope: !3176, file: !36, line: 295, baseType: !3179, size: 512)
!3179 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3176, file: !36, line: 295, size: 512, elements: !3180)
!3180 = !{!3181, !3207}
!3181 = !DIDerivedType(tag: DW_TAG_member, scope: !3179, file: !36, line: 296, baseType: !3182, size: 448)
!3182 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3179, file: !36, line: 296, size: 448, elements: !3183)
!3183 = !{!3184, !3185, !3194, !3195, !3196, !3205, !3206}
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3182, file: !36, line: 298, baseType: !111, size: 64)
!3185 = !DIDerivedType(tag: DW_TAG_member, scope: !3182, file: !36, line: 299, baseType: !3186, size: 128, offset: 64)
!3186 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3182, file: !36, line: 299, size: 128, elements: !3187)
!3187 = !{!3188, !3189}
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3186, file: !36, line: 300, baseType: !142, size: 128)
!3189 = !DIDerivedType(tag: DW_TAG_member, scope: !3186, file: !36, line: 302, baseType: !3190, size: 128)
!3190 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3186, file: !36, line: 302, size: 128, elements: !3191)
!3191 = !{!3192, !3193}
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3190, file: !36, line: 303, baseType: !82, size: 64)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3190, file: !36, line: 305, baseType: !7, size: 32, offset: 64)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3182, file: !36, line: 310, baseType: !155, size: 64, offset: 192)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3182, file: !36, line: 311, baseType: !111, size: 64, offset: 256)
!3196 = !DIDerivedType(tag: DW_TAG_member, scope: !3182, file: !36, line: 312, baseType: !3197, size: 64, offset: 320)
!3197 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3182, file: !36, line: 312, size: 64, elements: !3198)
!3198 = !{!3199, !3200}
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3197, file: !36, line: 313, baseType: !82, size: 64)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3197, file: !36, line: 314, baseType: !3201, size: 64)
!3201 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !36, line: 257, baseType: !3202)
!3202 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !36, line: 255, size: 64, elements: !3203)
!3203 = !{!3204}
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3202, file: !36, line: 256, baseType: !111, size: 64)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3182, file: !36, line: 316, baseType: !273, size: 32, offset: 384)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3182, file: !36, line: 317, baseType: !273, size: 32, offset: 416)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3179, file: !36, line: 323, baseType: !129, size: 512, align: 128)
!3208 = !DIDerivedType(tag: DW_TAG_member, scope: !3176, file: !36, line: 325, baseType: !3209, size: 512, offset: 512)
!3209 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3176, file: !36, line: 325, size: 512, elements: !3210)
!3210 = !{!3211, !3221}
!3211 = !DIDerivedType(tag: DW_TAG_member, scope: !3209, file: !36, line: 326, baseType: !3212, size: 320)
!3212 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3209, file: !36, line: 326, size: 320, elements: !3213)
!3213 = !{!3214, !3215, !3216, !3217, !3218, !3219, !3220}
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3212, file: !36, line: 327, baseType: !111, size: 64)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3212, file: !36, line: 328, baseType: !111, size: 64, offset: 64)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3212, file: !36, line: 329, baseType: !111, size: 64, offset: 128)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3212, file: !36, line: 331, baseType: !273, size: 32, offset: 192)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3212, file: !36, line: 332, baseType: !273, size: 32, offset: 224)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3212, file: !36, line: 333, baseType: !273, size: 32, offset: 256)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3212, file: !36, line: 335, baseType: !7, size: 32, offset: 288)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3209, file: !36, line: 339, baseType: !129, size: 512, align: 128)
!3222 = !DIDerivedType(tag: DW_TAG_member, scope: !3176, file: !36, line: 341, baseType: !3223, size: 512, offset: 1024)
!3223 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3176, file: !36, line: 341, size: 512, elements: !3224)
!3224 = !{!3225, !3234, !3240}
!3225 = !DIDerivedType(tag: DW_TAG_member, scope: !3223, file: !36, line: 342, baseType: !3226, size: 384)
!3226 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3223, file: !36, line: 342, size: 384, elements: !3227)
!3227 = !{!3228, !3229, !3230, !3231, !3232, !3233}
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3226, file: !36, line: 343, baseType: !111, size: 64)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3226, file: !36, line: 344, baseType: !111, size: 64, offset: 64)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3226, file: !36, line: 346, baseType: !82, size: 64, offset: 128)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3226, file: !36, line: 347, baseType: !82, size: 64, offset: 192)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3226, file: !36, line: 348, baseType: !82, size: 64, offset: 256)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3226, file: !36, line: 349, baseType: !82, size: 64, offset: 320)
!3234 = !DIDerivedType(tag: DW_TAG_member, scope: !3223, file: !36, line: 352, baseType: !3235, size: 256)
!3235 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3223, file: !36, line: 352, size: 256, elements: !3236)
!3236 = !{!3237, !3238, !3239}
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3235, file: !36, line: 353, baseType: !111, size: 64)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3235, file: !36, line: 354, baseType: !111, size: 64, offset: 64)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3235, file: !36, line: 356, baseType: !142, size: 128, offset: 128)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3223, file: !36, line: 359, baseType: !129, size: 512, align: 128)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3165, file: !12, line: 409, baseType: !3242, size: 64, offset: 128)
!3242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3243, size: 64)
!3243 = !DISubroutineType(types: !3244)
!3244 = !{!117, !155, !438}
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3165, file: !12, line: 412, baseType: !3246, size: 64, offset: 192)
!3246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3247, size: 64)
!3247 = !DISubroutineType(types: !3248)
!3248 = !{!1324, !155, !3175}
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3165, file: !12, line: 414, baseType: !3250, size: 64, offset: 256)
!3250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3251, size: 64)
!3251 = !DISubroutineType(types: !3252)
!3252 = !{null, !3253}
!3253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3254, size: 64)
!3254 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !12, line: 310, flags: DIFlagFwdDecl)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3165, file: !12, line: 416, baseType: !3256, size: 64, offset: 320)
!3256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3257, size: 64)
!3257 = !DISubroutineType(types: !3258)
!3258 = !{!117, !1165, !155, !360, !7, !2571, !1730}
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3165, file: !12, line: 419, baseType: !3260, size: 64, offset: 384)
!3260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3261, size: 64)
!3261 = !DISubroutineType(types: !3262)
!3262 = !{!117, !1165, !155, !360, !7, !7, !128, !82}
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3165, file: !12, line: 424, baseType: !3264, size: 64, offset: 448)
!3264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3265, size: 64)
!3265 = !DISubroutineType(types: !3266)
!3266 = !{!3267, !155, !3267}
!3267 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !81, line: 131, baseType: !125)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3165, file: !12, line: 425, baseType: !3269, size: 64, offset: 512)
!3269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3270, size: 64)
!3270 = !DISubroutineType(types: !3271)
!3271 = !{null, !3175, !120, !120}
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3165, file: !12, line: 426, baseType: !3273, size: 64, offset: 576)
!3273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3274, size: 64)
!3274 = !DISubroutineType(types: !3275)
!3275 = !{!1324, !3175, !80}
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3165, file: !12, line: 427, baseType: !3277, size: 64, offset: 640)
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3278, size: 64)
!3278 = !DISubroutineType(types: !3279)
!3279 = !{null, !3175}
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3165, file: !12, line: 428, baseType: !1457, size: 64, offset: 704)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3165, file: !12, line: 433, baseType: !3282, size: 64, offset: 768)
!3282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3283, size: 64)
!3283 = !DISubroutineType(types: !3284)
!3284 = !{!117, !155, !3175, !3175, !64}
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3165, file: !12, line: 435, baseType: !3286, size: 64, offset: 832)
!3286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3287, size: 64)
!3287 = !DISubroutineType(types: !3288)
!3288 = !{!117, !3175}
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3165, file: !12, line: 436, baseType: !3290, size: 64, offset: 896)
!3290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3291, size: 64)
!3291 = !DISubroutineType(types: !3292)
!3292 = !{!1324, !3175, !120, !120}
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3165, file: !12, line: 438, baseType: !3294, size: 64, offset: 960)
!3294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3295, size: 64)
!3295 = !DISubroutineType(types: !3296)
!3296 = !{null, !3175, !3297, !3297}
!3297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3165, file: !12, line: 439, baseType: !3299, size: 64, offset: 1024)
!3299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3300, size: 64)
!3300 = !DISubroutineType(types: !3301)
!3301 = !{!117, !155, !128}
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3165, file: !12, line: 442, baseType: !3303, size: 64, offset: 1088)
!3303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3304, size: 64)
!3304 = !DISubroutineType(types: !3305)
!3305 = !{!117, !3306, !1165, !3308}
!3306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3307, size: 64)
!3307 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !12, line: 66, flags: DIFlagFwdDecl)
!3308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3267, size: 64)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3165, file: !12, line: 444, baseType: !1722, size: 64, offset: 1152)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3165, file: !12, line: 445, baseType: !3311, size: 64, offset: 1216)
!3311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3312, size: 64)
!3312 = !DISubroutineType(types: !3313)
!3313 = !{!117, !1460, !1482}
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !156, file: !12, line: 486, baseType: !111, size: 64, offset: 896)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !156, file: !12, line: 487, baseType: !719, size: 320, offset: 960)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !156, file: !12, line: 488, baseType: !1765, size: 32, offset: 1280)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !156, file: !12, line: 489, baseType: !253, size: 32, offset: 1312)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !156, file: !12, line: 490, baseType: !142, size: 128, offset: 1344)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !156, file: !12, line: 491, baseType: !82, size: 64, offset: 1472)
!3320 = !DIDerivedType(tag: DW_TAG_member, scope: !136, file: !36, line: 107, baseType: !3321, size: 64, offset: 192)
!3321 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !136, file: !36, line: 107, size: 64, elements: !3322)
!3322 = !{!3323, !3324}
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3321, file: !36, line: 108, baseType: !111, size: 64)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !3321, file: !36, line: 109, baseType: !111, size: 64)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !136, file: !36, line: 117, baseType: !111, size: 64, offset: 256)
!3326 = !DIDerivedType(tag: DW_TAG_member, scope: !133, file: !36, line: 119, baseType: !3327, size: 320)
!3327 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !133, file: !36, line: 119, size: 320, elements: !3328)
!3328 = !{!3329, !3330, !3333, !3334, !3335}
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !3327, file: !36, line: 124, baseType: !111, size: 64)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !3327, file: !36, line: 125, baseType: !3331, size: 64, offset: 64)
!3331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3332, size: 64)
!3332 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !36, line: 125, flags: DIFlagFwdDecl)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !3327, file: !36, line: 126, baseType: !111, size: 64, offset: 128)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !3327, file: !36, line: 127, baseType: !111, size: 64, offset: 192)
!3335 = !DIDerivedType(tag: DW_TAG_member, scope: !3327, file: !36, line: 128, baseType: !3336, size: 64, offset: 256)
!3336 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3327, file: !36, line: 128, size: 64, elements: !3337)
!3337 = !{!3338, !3339}
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !3336, file: !36, line: 133, baseType: !111, size: 64)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !3336, file: !36, line: 138, baseType: !511, size: 64)
!3340 = !DIDerivedType(tag: DW_TAG_member, scope: !133, file: !36, line: 141, baseType: !3341, size: 64)
!3341 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !133, file: !36, line: 141, size: 64, elements: !3342)
!3342 = !{!3343}
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !3341, file: !36, line: 142, baseType: !111, size: 64)
!3344 = !DIDerivedType(tag: DW_TAG_member, scope: !133, file: !36, line: 144, baseType: !3345, size: 128)
!3345 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !133, file: !36, line: 144, size: 128, elements: !3346)
!3346 = !{!3347, !3418}
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !3345, file: !36, line: 146, baseType: !3348, size: 64)
!3348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3349, size: 64)
!3349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !72, line: 126, size: 1216, elements: !3350)
!3350 = !{!3351, !3361, !3382, !3383, !3384, !3385, !3386, !3400, !3401, !3402}
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !3349, file: !72, line: 127, baseType: !3352, size: 384)
!3352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !72, line: 21, size: 384, elements: !3353)
!3353 = !{!3354, !3355, !3357, !3358, !3359, !3360}
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !3352, file: !72, line: 22, baseType: !111, size: 64)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !3352, file: !72, line: 23, baseType: !3356, size: 64, offset: 64)
!3356 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !111)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !3352, file: !72, line: 24, baseType: !3356, size: 64, offset: 128)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3352, file: !72, line: 25, baseType: !111, size: 64, offset: 192)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !3352, file: !72, line: 26, baseType: !111, size: 64, offset: 256)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3352, file: !72, line: 27, baseType: !111, size: 64, offset: 320)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !3349, file: !72, line: 128, baseType: !3362, size: 128, offset: 384)
!3362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !3363, line: 105, size: 128, elements: !3364)
!3363 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!3364 = !{!3365, !3366}
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !3362, file: !3363, line: 110, baseType: !111, size: 64)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3362, file: !3363, line: 118, baseType: !3367, size: 64, offset: 64)
!3367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3368, size: 64)
!3368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !3363, line: 95, size: 448, elements: !3369)
!3369 = !{!3370, !3371, !3377, !3378, !3379, !3380, !3381}
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3368, file: !3363, line: 96, baseType: !511, size: 64)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3368, file: !3363, line: 97, baseType: !3372, size: 64, offset: 64)
!3372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3373, size: 64)
!3373 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !3363, line: 60, baseType: !3374)
!3374 = !DISubroutineType(types: !3375)
!3375 = !{null, !3376}
!3376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3362, size: 64)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !3368, file: !3363, line: 98, baseType: !3372, size: 64, offset: 128)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !3368, file: !3363, line: 99, baseType: !1324, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !3368, file: !3363, line: 100, baseType: !1324, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3368, file: !3363, line: 101, baseType: !819, size: 128, align: 64, offset: 256)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !3368, file: !3363, line: 102, baseType: !3376, size: 64, offset: 384)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !3349, file: !72, line: 129, baseType: !1979, size: 256, offset: 512)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3349, file: !72, line: 130, baseType: !71, size: 32, offset: 768)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3349, file: !72, line: 131, baseType: !7, size: 32, offset: 800)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !3349, file: !72, line: 132, baseType: !111, size: 64, offset: 832)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3349, file: !72, line: 133, baseType: !3387, size: 64, offset: 896)
!3387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3388, size: 64)
!3388 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3389)
!3389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !72, line: 77, size: 192, elements: !3390)
!3390 = !{!3391, !3395, !3396}
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !3389, file: !72, line: 83, baseType: !3392, size: 64)
!3392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3393, size: 64)
!3393 = !DISubroutineType(types: !3394)
!3394 = !{null, !128}
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !3389, file: !72, line: 89, baseType: !1589, size: 64, offset: 64)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !3389, file: !72, line: 100, baseType: !3397, size: 64, offset: 128)
!3397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3398, size: 64)
!3398 = !DISubroutineType(types: !3399)
!3399 = !{!117, !3348, !111, !111, !117}
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3349, file: !72, line: 134, baseType: !82, size: 64, offset: 960)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !3349, file: !72, line: 135, baseType: !117, size: 32, offset: 1024)
!3402 = !DIDerivedType(tag: DW_TAG_member, scope: !3349, file: !72, line: 136, baseType: !3403, size: 128, offset: 1088)
!3403 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3349, file: !72, line: 136, size: 128, elements: !3404)
!3404 = !{!3405, !3411}
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !3403, file: !72, line: 137, baseType: !3406, size: 128)
!3406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !3407, line: 6, size: 128, elements: !3408)
!3407 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!3408 = !{!3409, !3410}
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3406, file: !3407, line: 7, baseType: !125, size: 64)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3406, file: !3407, line: 8, baseType: !125, size: 64, offset: 64)
!3411 = !DIDerivedType(tag: DW_TAG_member, scope: !3403, file: !72, line: 138, baseType: !3412)
!3412 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3403, file: !72, line: 138, elements: !3413)
!3413 = !{!3414, !3416}
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !3412, file: !72, line: 138, baseType: !3415)
!3415 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3412, file: !72, line: 138, elements: !405)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !3412, file: !72, line: 138, baseType: !3417)
!3417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3406, elements: !112)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !3345, file: !36, line: 147, baseType: !82, size: 64, offset: 64)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !133, file: !36, line: 161, baseType: !819, size: 128, align: 64)
!3420 = !DIDerivedType(tag: DW_TAG_member, scope: !129, file: !36, line: 164, baseType: !3421, size: 32, offset: 384)
!3421 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !129, file: !36, line: 164, size: 32, elements: !3422)
!3422 = !{!3423, !3424}
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3421, file: !36, line: 169, baseType: !273, size: 32)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !3421, file: !36, line: 177, baseType: !7, size: 32)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !129, file: !36, line: 181, baseType: !273, size: 32, offset: 416)
!3426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!3427 = !{!3428, !3439, !3444, !3449, !3454, !3459, !3471, !3473, !3475, !3477, !3479, !3482, !3484, !3486, !3488, !3490, !3492, !3494, !3496, !3499, !3501, !3503, !3508, !0, !3510, !3515, !3517, !3519, !3521, !3550, !3555}
!3428 = !DIGlobalVariableExpression(var: !3429, expr: !DIExpression())
!3429 = distinct !DIGlobalVariable(name: "__setup_disable_stack_depot", scope: !2, file: !3, line: 113, type: !3430, isLocal: true, isDefinition: true, align: 64)
!3430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obs_kernel_param", file: !3431, line: 324, size: 192, elements: !3432)
!3431 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!3432 = !{!3433, !3434, !3438}
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !3430, file: !3431, line: 325, baseType: !313, size: 64)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "setup_func", scope: !3430, file: !3431, line: 326, baseType: !3435, size: 64, offset: 64)
!3435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3436, size: 64)
!3436 = !DISubroutineType(types: !3437)
!3437 = !{!117, !339}
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "early", scope: !3430, file: !3431, line: 327, baseType: !117, size: 32, offset: 128)
!3439 = !DIGlobalVariableExpression(var: !3440, expr: !DIExpression())
!3440 = distinct !DIGlobalVariable(scope: null, file: !3, line: 118, type: !3441, isLocal: true, isDefinition: true)
!3441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 136, elements: !3442)
!3442 = !{!3443}
!3443 = !DISubrange(count: 17)
!3444 = !DIGlobalVariableExpression(var: !3445, expr: !DIExpression())
!3445 = distinct !DIGlobalVariable(scope: null, file: !3, line: 150, type: !3446, isLocal: true, isDefinition: true)
!3446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 520, elements: !3447)
!3447 = !{!3448}
!3448 = !DISubrange(count: 65)
!3449 = !DIGlobalVariableExpression(var: !3450, expr: !DIExpression())
!3450 = distinct !DIGlobalVariable(scope: null, file: !3, line: 151, type: !3451, isLocal: true, isDefinition: true)
!3451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 88, elements: !3452)
!3452 = !{!3453}
!3453 = !DISubrange(count: 11)
!3454 = !DIGlobalVariableExpression(var: !3455, expr: !DIExpression())
!3455 = distinct !DIGlobalVariable(scope: null, file: !3, line: 161, type: !3456, isLocal: true, isDefinition: true)
!3456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 440, elements: !3457)
!3457 = !{!3458}
!3458 = !DISubrange(count: 55)
!3459 = !DIGlobalVariableExpression(var: !3460, expr: !DIExpression())
!3460 = distinct !DIGlobalVariable(name: "stack_depot_init_mutex", scope: !3461, file: !3, line: 172, type: !507, isLocal: true, isDefinition: true)
!3461 = distinct !DISubprogram(name: "stack_depot_init", scope: !3, file: !3, line: 170, type: !3462, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3464)
!3462 = !DISubroutineType(types: !3463)
!3463 = !{!117}
!3464 = !{!3465, !3466, !3467, !3470}
!3465 = !DILocalVariable(name: "entries", scope: !3461, file: !3, line: 173, type: !111)
!3466 = !DILocalVariable(name: "ret", scope: !3461, file: !3, line: 174, type: !117)
!3467 = !DILocalVariable(name: "scale", scope: !3468, file: !3, line: 188, type: !117)
!3468 = distinct !DILexicalBlock(scope: !3469, file: !3, line: 187, column: 9)
!3469 = distinct !DILexicalBlock(scope: !3461, file: !3, line: 185, column: 6)
!3470 = !DILabel(scope: !3461, name: "out_unlock", file: !3, line: 214)
!3471 = !DIGlobalVariableExpression(var: !3472, expr: !DIExpression())
!3472 = distinct !DIGlobalVariable(scope: null, file: !3, line: 204, type: !3446, isLocal: true, isDefinition: true)
!3473 = !DIGlobalVariableExpression(var: !3474, expr: !DIExpression())
!3474 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_stack_depot_init277", scope: !2, file: !3, line: 219, type: !82, isLocal: true, isDefinition: true)
!3475 = !DIGlobalVariableExpression(var: !3476, expr: !DIExpression())
!3476 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___stack_depot_save291", scope: !2, file: !3, line: 450, type: !82, isLocal: true, isDefinition: true)
!3477 = !DIGlobalVariableExpression(var: !3478, expr: !DIExpression())
!3478 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_stack_depot_save292", scope: !2, file: !3, line: 458, type: !82, isLocal: true, isDefinition: true)
!3479 = !DIGlobalVariableExpression(var: !3480, expr: !DIExpression())
!3480 = distinct !DIGlobalVariable(scope: null, file: !3, line: 484, type: !3481, isLocal: true, isDefinition: true)
!3481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 416, elements: !1819)
!3482 = !DIGlobalVariableExpression(var: !3483, expr: !DIExpression())
!3483 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_stack_depot_fetch294", scope: !2, file: !3, line: 496, type: !82, isLocal: true, isDefinition: true)
!3484 = !DIGlobalVariableExpression(var: !3485, expr: !DIExpression())
!3485 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_stack_depot_print295", scope: !2, file: !3, line: 507, type: !82, isLocal: true, isDefinition: true)
!3486 = !DIGlobalVariableExpression(var: !3487, expr: !DIExpression())
!3487 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_stack_depot_snprint296", scope: !2, file: !3, line: 519, type: !82, isLocal: true, isDefinition: true)
!3488 = !DIGlobalVariableExpression(var: !3489, expr: !DIExpression())
!3489 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_stack_depot_set_extra_bits297", scope: !2, file: !3, line: 533, type: !82, isLocal: true, isDefinition: true)
!3490 = !DIGlobalVariableExpression(var: !3491, expr: !DIExpression())
!3491 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_stack_depot_get_extra_bits298", scope: !2, file: !3, line: 541, type: !82, isLocal: true, isDefinition: true)
!3492 = !DIGlobalVariableExpression(var: !3493, expr: !DIExpression())
!3493 = distinct !DIGlobalVariable(name: "stack_depot_disabled", scope: !2, file: !3, line: 66, type: !1324, isLocal: true, isDefinition: true)
!3494 = !DIGlobalVariableExpression(var: !3495, expr: !DIExpression())
!3495 = distinct !DIGlobalVariable(name: "__stack_depot_early_init_passed", scope: !2, file: !3, line: 68, type: !1324, isLocal: true, isDefinition: true)
!3496 = !DIGlobalVariableExpression(var: !3497, expr: !DIExpression())
!3497 = distinct !DIGlobalVariable(name: "stack_table", scope: !2, file: !3, line: 79, type: !3498, isLocal: true, isDefinition: true)
!3498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!3499 = !DIGlobalVariableExpression(var: !3500, expr: !DIExpression())
!3500 = distinct !DIGlobalVariable(name: "stack_bucket_number_order", scope: !2, file: !3, line: 81, type: !7, isLocal: true, isDefinition: true)
!3501 = !DIGlobalVariableExpression(var: !3502, expr: !DIExpression())
!3502 = distinct !DIGlobalVariable(name: "stack_hash_mask", scope: !2, file: !3, line: 83, type: !7, isLocal: true, isDefinition: true)
!3503 = !DIGlobalVariableExpression(var: !3504, expr: !DIExpression())
!3504 = distinct !DIGlobalVariable(name: "stack_pools", scope: !2, file: !3, line: 86, type: !3505, isLocal: true, isDefinition: true)
!3505 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 524288, elements: !3506)
!3506 = !{!3507}
!3507 = !DISubrange(count: 8192)
!3508 = !DIGlobalVariableExpression(var: !3509, expr: !DIExpression())
!3509 = distinct !DIGlobalVariable(name: "pool_index", scope: !2, file: !3, line: 88, type: !117, isLocal: true, isDefinition: true)
!3510 = !DIGlobalVariableExpression(var: !3511, expr: !DIExpression())
!3511 = distinct !DIGlobalVariable(scope: null, file: !3, line: 108, type: !3512, isLocal: true, isDefinition: true)
!3512 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 192, elements: !3513)
!3513 = !{!3514}
!3514 = !DISubrange(count: 24)
!3515 = !DIGlobalVariableExpression(var: !3516, expr: !DIExpression())
!3516 = distinct !DIGlobalVariable(name: "__stack_depot_early_init_requested", scope: !2, file: !3, line: 67, type: !1324, isLocal: true, isDefinition: true)
!3517 = !DIGlobalVariableExpression(var: !3518, expr: !DIExpression())
!3518 = distinct !DIGlobalVariable(name: "next_pool_required", scope: !2, file: !3, line: 100, type: !117, isLocal: true, isDefinition: true)
!3519 = !DIGlobalVariableExpression(var: !3520, expr: !DIExpression())
!3520 = distinct !DIGlobalVariable(name: "pool_lock", scope: !2, file: !3, line: 92, type: !520, isLocal: true, isDefinition: true)
!3521 = !DIGlobalVariableExpression(var: !3522, expr: !DIExpression())
!3522 = distinct !DIGlobalVariable(name: "__already_done", scope: !3523, file: !3, line: 271, type: !1324, isLocal: true, isDefinition: true)
!3523 = distinct !DISubprogram(name: "depot_alloc_stack", scope: !3, file: !3, line: 260, type: !3524, scopeLine: 261, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3527)
!3524 = !DISubroutineType(types: !3525)
!3525 = !{!86, !3526, !117, !91, !1730}
!3526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!3527 = !{!3528, !3529, !3530, !3531, !3532, !3533, !3534, !3540, !3543, !3544, !3546}
!3528 = !DILocalVariable(name: "entries", arg: 1, scope: !3523, file: !3, line: 260, type: !3526)
!3529 = !DILocalVariable(name: "size", arg: 2, scope: !3523, file: !3, line: 260, type: !117)
!3530 = !DILocalVariable(name: "hash", arg: 3, scope: !3523, file: !3, line: 260, type: !91)
!3531 = !DILocalVariable(name: "prealloc", arg: 4, scope: !3523, file: !3, line: 260, type: !1730)
!3532 = !DILocalVariable(name: "stack", scope: !3523, file: !3, line: 262, type: !86)
!3533 = !DILocalVariable(name: "required_size", scope: !3523, file: !3, line: 263, type: !120)
!3534 = !DILocalVariable(name: "__ret_do_once", scope: !3535, file: !3, line: 271, type: !1324)
!3535 = distinct !DILexicalBlock(scope: !3536, file: !3, line: 271, column: 4)
!3536 = distinct !DILexicalBlock(scope: !3537, file: !3, line: 270, column: 52)
!3537 = distinct !DILexicalBlock(scope: !3538, file: !3, line: 270, column: 7)
!3538 = distinct !DILexicalBlock(scope: !3539, file: !3, line: 268, column: 63)
!3539 = distinct !DILexicalBlock(scope: !3523, file: !3, line: 268, column: 6)
!3540 = !DILocalVariable(name: "__ret_cond", scope: !3541, file: !3, line: 271, type: !1324)
!3541 = distinct !DILexicalBlock(scope: !3542, file: !3, line: 271, column: 4)
!3542 = distinct !DILexicalBlock(scope: !3535, file: !3, line: 271, column: 4)
!3543 = !DILocalVariable(name: "__ret_once", scope: !3541, file: !3, line: 271, type: !1324)
!3544 = !DILocalVariable(name: "__ret_warn_on", scope: !3545, file: !3, line: 271, type: !117)
!3545 = distinct !DILexicalBlock(scope: !3542, file: !3, line: 271, column: 4)
!3546 = !DILocalVariable(name: "__flags", scope: !3547, file: !3, line: 271, type: !117)
!3547 = distinct !DILexicalBlock(scope: !3548, file: !3, line: 271, column: 4)
!3548 = distinct !DILexicalBlock(scope: !3549, file: !3, line: 271, column: 4)
!3549 = distinct !DILexicalBlock(scope: !3545, file: !3, line: 271, column: 4)
!3550 = !DIGlobalVariableExpression(var: !3551, expr: !DIExpression())
!3551 = distinct !DIGlobalVariable(scope: null, file: !3, line: 271, type: !3552, isLocal: true, isDefinition: true)
!3552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 280, elements: !3553)
!3553 = !{!3554}
!3554 = !DISubrange(count: 35)
!3555 = !DIGlobalVariableExpression(var: !3556, expr: !DIExpression())
!3556 = distinct !DIGlobalVariable(name: "pool_offset", scope: !2, file: !3, line: 90, type: !120, isLocal: true, isDefinition: true)
!3557 = !DICompositeType(tag: DW_TAG_array_type, baseType: !314, size: 160, elements: !2672)
!3558 = !{i32 7, !"Dwarf Version", i32 5}
!3559 = !{i32 2, !"Debug Info Version", i32 3}
!3560 = !{i32 1, !"wchar_size", i32 2}
!3561 = !{i32 8, !"cf-protection-branch", i32 1}
!3562 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3563 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!3564 = !{i32 1, !"Code Model", i32 2}
!3565 = !{i32 1, !"override-stack-alignment", i32 8}
!3566 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!3567 = distinct !DISubprogram(name: "disable_stack_depot", scope: !3, file: !3, line: 102, type: !3436, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3568)
!3568 = !{!3569, !3570}
!3569 = !DILocalVariable(name: "str", arg: 1, scope: !3567, file: !3, line: 102, type: !339)
!3570 = !DILocalVariable(name: "ret", scope: !3567, file: !3, line: 104, type: !117)
!3571 = !DILocation(line: 102, column: 45, scope: !3567)
!3572 = !DILocation(line: 104, column: 2, scope: !3567)
!3573 = !DILocation(line: 104, column: 6, scope: !3567)
!3574 = !DILocation(line: 106, column: 19, scope: !3567)
!3575 = !DILocation(line: 106, column: 8, scope: !3567)
!3576 = !DILocation(line: 106, column: 6, scope: !3567)
!3577 = !DILocation(line: 107, column: 7, scope: !3578)
!3578 = distinct !DILexicalBlock(scope: !3567, file: !3, line: 107, column: 6)
!3579 = !DILocation(line: 107, column: 11, scope: !3578)
!3580 = !DILocation(line: 107, column: 14, scope: !3578)
!3581 = !{i8 0, i8 2}
!3582 = !DILocation(line: 107, column: 6, scope: !3567)
!3583 = !DILocation(line: 108, column: 3, scope: !3584)
!3584 = distinct !DILexicalBlock(scope: !3585, file: !3, line: 108, column: 3)
!3585 = distinct !DILexicalBlock(scope: !3578, file: !3, line: 107, column: 36)
!3586 = !DILocation(line: 108, column: 3, scope: !3587)
!3587 = distinct !DILexicalBlock(scope: !3584, file: !3, line: 108, column: 3)
!3588 = !DILocation(line: 109, column: 15, scope: !3585)
!3589 = !DILocation(line: 110, column: 2, scope: !3585)
!3590 = !DILocation(line: 112, column: 1, scope: !3567)
!3591 = !DILocation(line: 111, column: 2, scope: !3567)
!3592 = distinct !DISubprogram(name: "stack_depot_request_early_init", scope: !3, file: !3, line: 115, type: !2226, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3593)
!3593 = !{!3594, !3596}
!3594 = !DILocalVariable(name: "__ret_warn_on", scope: !3595, file: !3, line: 118, type: !117)
!3595 = distinct !DILexicalBlock(scope: !3592, file: !3, line: 118, column: 2)
!3596 = !DILocalVariable(name: "__flags", scope: !3597, file: !3, line: 118, type: !117)
!3597 = distinct !DILexicalBlock(scope: !3598, file: !3, line: 118, column: 2)
!3598 = distinct !DILexicalBlock(scope: !3595, file: !3, line: 118, column: 2)
!3599 = !DILocation(line: 118, column: 2, scope: !3595)
!3600 = !DILocation(line: 118, column: 2, scope: !3598)
!3601 = !DILocation(line: 118, column: 2, scope: !3597)
!3602 = !DILocation(line: 118, column: 2, scope: !3603)
!3603 = distinct !DILexicalBlock(scope: !3597, file: !3, line: 118, column: 2)
!3604 = !DILocation(line: 118, column: 2, scope: !3605)
!3605 = distinct !DILexicalBlock(scope: !3597, file: !3, line: 118, column: 2)
!3606 = !{i64 2154061481, i64 2154061510, i64 2154061556, i64 2154061614, i64 2154061668, i64 2154061722, i64 2154061777, i64 2154061808, i64 2154062116, i64 2154062122, i64 2154062169, i64 2154062192, i64 2154062218}
!3607 = !DILocation(line: 118, column: 2, scope: !3608)
!3608 = distinct !DILexicalBlock(scope: !3597, file: !3, line: 118, column: 2)
!3609 = !DILocation(line: 118, column: 2, scope: !3592)
!3610 = !DILocation(line: 120, column: 37, scope: !3592)
!3611 = !DILocation(line: 121, column: 1, scope: !3592)
!3612 = distinct !DISubprogram(name: "stack_depot_early_init", scope: !3, file: !3, line: 124, type: !3462, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3613)
!3613 = !{!3614, !3615, !3618}
!3614 = !DILocalVariable(name: "entries", scope: !3612, file: !3, line: 126, type: !111)
!3615 = !DILocalVariable(name: "__ret_warn_on", scope: !3616, file: !3, line: 129, type: !117)
!3616 = distinct !DILexicalBlock(scope: !3617, file: !3, line: 129, column: 6)
!3617 = distinct !DILexicalBlock(scope: !3612, file: !3, line: 129, column: 6)
!3618 = !DILocalVariable(name: "__flags", scope: !3619, file: !3, line: 129, type: !117)
!3619 = distinct !DILexicalBlock(scope: !3620, file: !3, line: 129, column: 6)
!3620 = distinct !DILexicalBlock(scope: !3616, file: !3, line: 129, column: 6)
!3621 = !DILocation(line: 126, column: 2, scope: !3612)
!3622 = !DILocation(line: 126, column: 16, scope: !3612)
!3623 = !DILocation(line: 129, column: 6, scope: !3616)
!3624 = !DILocation(line: 129, column: 6, scope: !3620)
!3625 = !DILocation(line: 129, column: 6, scope: !3619)
!3626 = !DILocation(line: 129, column: 6, scope: !3627)
!3627 = distinct !DILexicalBlock(scope: !3619, file: !3, line: 129, column: 6)
!3628 = !DILocation(line: 129, column: 6, scope: !3629)
!3629 = distinct !DILexicalBlock(scope: !3619, file: !3, line: 129, column: 6)
!3630 = !{i64 2154063136, i64 2154063165, i64 2154063211, i64 2154063269, i64 2154063323, i64 2154063377, i64 2154063432, i64 2154063463, i64 2154063771, i64 2154063777, i64 2154063824, i64 2154063847, i64 2154063873}
!3631 = !DILocation(line: 129, column: 6, scope: !3632)
!3632 = distinct !DILexicalBlock(scope: !3619, file: !3, line: 129, column: 6)
!3633 = !DILocation(line: 129, column: 6, scope: !3617)
!3634 = !DILocation(line: 129, column: 6, scope: !3612)
!3635 = !DILocation(line: 130, column: 3, scope: !3617)
!3636 = !DILocation(line: 131, column: 34, scope: !3612)
!3637 = !DILocation(line: 138, column: 6, scope: !3638)
!3638 = distinct !DILexicalBlock(scope: !3612, file: !3, line: 138, column: 6)
!3639 = !DILocation(line: 138, column: 22, scope: !3638)
!3640 = !DILocation(line: 138, column: 26, scope: !3638)
!3641 = !DILocation(line: 138, column: 6, scope: !3612)
!3642 = !DILocation(line: 139, column: 29, scope: !3638)
!3643 = !DILocation(line: 139, column: 3, scope: !3638)
!3644 = !DILocation(line: 141, column: 7, scope: !3645)
!3645 = distinct !DILexicalBlock(scope: !3612, file: !3, line: 141, column: 6)
!3646 = !DILocation(line: 141, column: 42, scope: !3645)
!3647 = !DILocation(line: 141, column: 45, scope: !3645)
!3648 = !DILocation(line: 141, column: 6, scope: !3612)
!3649 = !DILocation(line: 142, column: 3, scope: !3645)
!3650 = !DILocation(line: 148, column: 6, scope: !3651)
!3651 = distinct !DILexicalBlock(scope: !3612, file: !3, line: 148, column: 6)
!3652 = !DILocation(line: 148, column: 6, scope: !3612)
!3653 = !DILocation(line: 149, column: 20, scope: !3651)
!3654 = !DILocation(line: 149, column: 17, scope: !3651)
!3655 = !DILocation(line: 149, column: 11, scope: !3651)
!3656 = !DILocation(line: 149, column: 3, scope: !3651)
!3657 = !DILocation(line: 150, column: 2, scope: !3658)
!3658 = distinct !DILexicalBlock(scope: !3612, file: !3, line: 150, column: 2)
!3659 = !DILocation(line: 150, column: 2, scope: !3660)
!3660 = distinct !DILexicalBlock(scope: !3658, file: !3, line: 150, column: 2)
!3661 = !DILocation(line: 153, column: 7, scope: !3612)
!3662 = !DILocation(line: 151, column: 16, scope: !3612)
!3663 = !DILocation(line: 151, column: 14, scope: !3612)
!3664 = !DILocation(line: 160, column: 7, scope: !3665)
!3665 = distinct !DILexicalBlock(scope: !3612, file: !3, line: 160, column: 6)
!3666 = !DILocation(line: 160, column: 6, scope: !3612)
!3667 = !DILocation(line: 161, column: 3, scope: !3668)
!3668 = distinct !DILexicalBlock(scope: !3669, file: !3, line: 161, column: 3)
!3669 = distinct !DILexicalBlock(scope: !3665, file: !3, line: 160, column: 20)
!3670 = !DILocation(line: 161, column: 3, scope: !3671)
!3671 = distinct !DILexicalBlock(scope: !3668, file: !3, line: 161, column: 3)
!3672 = !DILocation(line: 162, column: 24, scope: !3669)
!3673 = !DILocation(line: 163, column: 3, scope: !3669)
!3674 = !DILocation(line: 166, column: 2, scope: !3612)
!3675 = !DILocation(line: 167, column: 1, scope: !3612)
!3676 = distinct !DISubprogram(name: "kasan_enabled", scope: !3677, file: !3677, line: 23, type: !3678, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3677 = !DIFile(filename: "./include/linux/kasan-enabled.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5ef0ae24e9ae46f6ab53afe6ff6bdebe")
!3678 = !DISubroutineType(types: !3679)
!3679 = !{!1324}
!3680 = !DILocation(line: 25, column: 2, scope: !3676)
!3681 = !DISubprogram(name: "_printk", scope: !3682, file: !3682, line: 153, type: !3683, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3682 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!3683 = !DISubroutineType(types: !3684)
!3684 = !{!117, !313, null}
!3685 = !DISubprogram(name: "alloc_large_system_hash", scope: !3686, file: !3686, line: 576, type: !3687, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3686 = !DIFile(filename: "./include/linux/memblock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee488cc8c6522cca1567fc06e1716948")
!3687 = !DISubroutineType(types: !3688)
!3688 = !{!82, !313, !111, !111, !117, !117, !828, !828, !111, !111}
!3689 = !DILocation(line: 173, column: 2, scope: !3461)
!3690 = !DILocation(line: 173, column: 16, scope: !3461)
!3691 = !DILocation(line: 174, column: 2, scope: !3461)
!3692 = !DILocation(line: 174, column: 6, scope: !3461)
!3693 = !DILocation(line: 176, column: 2, scope: !3461)
!3694 = !DILocation(line: 178, column: 6, scope: !3695)
!3695 = distinct !DILexicalBlock(scope: !3461, file: !3, line: 178, column: 6)
!3696 = !DILocation(line: 178, column: 27, scope: !3695)
!3697 = !DILocation(line: 178, column: 30, scope: !3695)
!3698 = !DILocation(line: 178, column: 6, scope: !3461)
!3699 = !DILocation(line: 179, column: 3, scope: !3695)
!3700 = !DILocation(line: 185, column: 6, scope: !3469)
!3701 = !DILocation(line: 185, column: 6, scope: !3461)
!3702 = !DILocation(line: 186, column: 20, scope: !3703)
!3703 = distinct !DILexicalBlock(scope: !3469, file: !3, line: 185, column: 33)
!3704 = !DILocation(line: 186, column: 17, scope: !3703)
!3705 = !DILocation(line: 186, column: 11, scope: !3703)
!3706 = !DILocation(line: 187, column: 2, scope: !3703)
!3707 = !DILocation(line: 188, column: 3, scope: !3468)
!3708 = !DILocation(line: 188, column: 7, scope: !3468)
!3709 = !DILocation(line: 190, column: 13, scope: !3468)
!3710 = !DILocation(line: 190, column: 11, scope: !3468)
!3711 = !DILocation(line: 191, column: 13, scope: !3468)
!3712 = !DILocation(line: 191, column: 11, scope: !3468)
!3713 = !DILocation(line: 193, column: 7, scope: !3714)
!3714 = distinct !DILexicalBlock(scope: !3468, file: !3, line: 193, column: 7)
!3715 = !DILocation(line: 193, column: 13, scope: !3714)
!3716 = !DILocation(line: 193, column: 7, scope: !3468)
!3717 = !DILocation(line: 194, column: 17, scope: !3714)
!3718 = !DILocation(line: 194, column: 23, scope: !3714)
!3719 = !DILocation(line: 194, column: 12, scope: !3714)
!3720 = !DILocation(line: 194, column: 4, scope: !3714)
!3721 = !DILocation(line: 196, column: 30, scope: !3714)
!3722 = !DILocation(line: 196, column: 28, scope: !3714)
!3723 = !DILocation(line: 196, column: 12, scope: !3714)
!3724 = !DILocation(line: 197, column: 2, scope: !3469)
!3725 = !DILocation(line: 199, column: 6, scope: !3726)
!3726 = distinct !DILexicalBlock(scope: !3461, file: !3, line: 199, column: 6)
!3727 = !DILocation(line: 199, column: 14, scope: !3726)
!3728 = !DILocation(line: 199, column: 6, scope: !3461)
!3729 = !DILocation(line: 200, column: 11, scope: !3726)
!3730 = !DILocation(line: 200, column: 3, scope: !3726)
!3731 = !DILocation(line: 201, column: 6, scope: !3732)
!3732 = distinct !DILexicalBlock(scope: !3461, file: !3, line: 201, column: 6)
!3733 = !DILocation(line: 201, column: 14, scope: !3732)
!3734 = !DILocation(line: 201, column: 6, scope: !3461)
!3735 = !DILocation(line: 202, column: 11, scope: !3732)
!3736 = !DILocation(line: 202, column: 3, scope: !3732)
!3737 = !DILocation(line: 204, column: 2, scope: !3738)
!3738 = distinct !DILexicalBlock(scope: !3461, file: !3, line: 204, column: 2)
!3739 = !DILocation(line: 204, column: 2, scope: !3740)
!3740 = distinct !DILexicalBlock(scope: !3738, file: !3, line: 204, column: 2)
!3741 = !DILocation(line: 205, column: 25, scope: !3461)
!3742 = !DILocation(line: 205, column: 16, scope: !3461)
!3743 = !DILocation(line: 205, column: 14, scope: !3461)
!3744 = !DILocation(line: 206, column: 7, scope: !3745)
!3745 = distinct !DILexicalBlock(scope: !3461, file: !3, line: 206, column: 6)
!3746 = !DILocation(line: 206, column: 6, scope: !3461)
!3747 = !DILocation(line: 207, column: 3, scope: !3748)
!3748 = distinct !DILexicalBlock(scope: !3749, file: !3, line: 207, column: 3)
!3749 = distinct !DILexicalBlock(scope: !3745, file: !3, line: 206, column: 20)
!3750 = !DILocation(line: 207, column: 3, scope: !3751)
!3751 = distinct !DILexicalBlock(scope: !3748, file: !3, line: 207, column: 3)
!3752 = !DILocation(line: 208, column: 24, scope: !3749)
!3753 = !DILocation(line: 209, column: 7, scope: !3749)
!3754 = !DILocation(line: 210, column: 3, scope: !3749)
!3755 = !DILocation(line: 212, column: 20, scope: !3461)
!3756 = !DILocation(line: 212, column: 28, scope: !3461)
!3757 = !DILocation(line: 212, column: 18, scope: !3461)
!3758 = !DILocation(line: 212, column: 2, scope: !3461)
!3759 = !DILocation(line: 214, column: 1, scope: !3461)
!3760 = !DILocation(line: 215, column: 2, scope: !3461)
!3761 = !DILocation(line: 217, column: 9, scope: !3461)
!3762 = !DILocation(line: 218, column: 1, scope: !3461)
!3763 = !DILocation(line: 217, column: 2, scope: !3461)
!3764 = !DISubprogram(name: "mutex_lock", scope: !508, file: !508, line: 227, type: !3765, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3765 = !DISubroutineType(types: !3766)
!3766 = !{null, !3767}
!3767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!3768 = !DISubprogram(name: "nr_free_buffer_pages", scope: !1569, file: !1569, line: 1290, type: !3769, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3769 = !DISubroutineType(types: !3770)
!3770 = !{!111}
!3771 = distinct !DISubprogram(name: "__ilog2_u64", scope: !3772, file: !3772, line: 30, type: !3773, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3775)
!3772 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c147744b0ec822ab26cfdb78fa4c3998")
!3773 = !DISubroutineType(types: !3774)
!3774 = !{!117, !125}
!3775 = !{!3776}
!3776 = !DILocalVariable(name: "n", arg: 1, scope: !3771, file: !3772, line: 30, type: !125)
!3777 = !DILocation(line: 30, column: 21, scope: !3771)
!3778 = !DILocation(line: 32, column: 15, scope: !3771)
!3779 = !DILocation(line: 32, column: 9, scope: !3771)
!3780 = !DILocation(line: 32, column: 18, scope: !3771)
!3781 = !DILocation(line: 32, column: 2, scope: !3771)
!3782 = distinct !DISubprogram(name: "__roundup_pow_of_two", scope: !3772, file: !3772, line: 55, type: !3783, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3785)
!3783 = !DISubroutineType(types: !3784)
!3784 = !{!111, !111}
!3785 = !{!3786}
!3786 = !DILocalVariable(name: "n", arg: 1, scope: !3782, file: !3772, line: 55, type: !111)
!3787 = !DILocation(line: 55, column: 50, scope: !3782)
!3788 = !DILocation(line: 57, column: 25, scope: !3782)
!3789 = !DILocation(line: 57, column: 27, scope: !3782)
!3790 = !DILocation(line: 57, column: 16, scope: !3782)
!3791 = !DILocation(line: 57, column: 13, scope: !3782)
!3792 = !DILocation(line: 57, column: 2, scope: !3782)
!3793 = distinct !DISubprogram(name: "kvcalloc", scope: !3794, file: !3794, line: 759, type: !3795, scopeLine: 760, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3797)
!3794 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!3795 = !DISubroutineType(types: !3796)
!3796 = !{!82, !120, !120, !80}
!3797 = !{!3798, !3799, !3800}
!3798 = !DILocalVariable(name: "n", arg: 1, scope: !3793, file: !3794, line: 759, type: !120)
!3799 = !DILocalVariable(name: "size", arg: 2, scope: !3793, file: !3794, line: 759, type: !120)
!3800 = !DILocalVariable(name: "flags", arg: 3, scope: !3793, file: !3794, line: 759, type: !80)
!3801 = !DILocation(line: 759, column: 56, scope: !3793)
!3802 = !DILocation(line: 759, column: 66, scope: !3793)
!3803 = !DILocation(line: 759, column: 78, scope: !3793)
!3804 = !DILocation(line: 761, column: 24, scope: !3793)
!3805 = !DILocation(line: 761, column: 27, scope: !3793)
!3806 = !DILocation(line: 761, column: 33, scope: !3793)
!3807 = !DILocation(line: 761, column: 39, scope: !3793)
!3808 = !DILocation(line: 761, column: 9, scope: !3793)
!3809 = !DILocation(line: 761, column: 2, scope: !3793)
!3810 = !DISubprogram(name: "mutex_unlock", scope: !508, file: !508, line: 246, type: !3765, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3811 = distinct !DISubprogram(name: "__stack_depot_save", scope: !3, file: !3, line: 358, type: !3812, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3814)
!3812 = !DISubroutineType(types: !3813)
!3813 = !{!100, !3526, !7, !80, !1324}
!3814 = !{!3815, !3816, !3817, !3818, !3819, !3820, !3821, !3822, !3823, !3824, !3825, !3826, !3828, !3831, !3834, !3835, !3838, !3841, !3842, !3843}
!3815 = !DILocalVariable(name: "entries", arg: 1, scope: !3811, file: !3, line: 358, type: !3526)
!3816 = !DILocalVariable(name: "nr_entries", arg: 2, scope: !3811, file: !3, line: 359, type: !7)
!3817 = !DILocalVariable(name: "alloc_flags", arg: 3, scope: !3811, file: !3, line: 360, type: !80)
!3818 = !DILocalVariable(name: "can_alloc", arg: 4, scope: !3811, file: !3, line: 360, type: !1324)
!3819 = !DILocalVariable(name: "found", scope: !3811, file: !3, line: 362, type: !86)
!3820 = !DILocalVariable(name: "bucket", scope: !3811, file: !3, line: 362, type: !3498)
!3821 = !DILocalVariable(name: "retval", scope: !3811, file: !3, line: 363, type: !97)
!3822 = !DILocalVariable(name: "page", scope: !3811, file: !3, line: 364, type: !128)
!3823 = !DILocalVariable(name: "prealloc", scope: !3811, file: !3, line: 365, type: !82)
!3824 = !DILocalVariable(name: "flags", scope: !3811, file: !3, line: 366, type: !111)
!3825 = !DILocalVariable(name: "hash", scope: !3811, file: !3, line: 367, type: !91)
!3826 = !DILocalVariable(name: "___p1", scope: !3827, file: !3, line: 390, type: !86)
!3827 = distinct !DILexicalBlock(scope: !3811, file: !3, line: 390, column: 21)
!3828 = !DILocalVariable(name: "___p1", scope: !3829, file: !3, line: 401, type: !117)
!3829 = distinct !DILexicalBlock(scope: !3830, file: !3, line: 401, column: 6)
!3830 = distinct !DILexicalBlock(scope: !3811, file: !3, line: 401, column: 6)
!3831 = !DILocalVariable(name: "__dummy", scope: !3832, file: !3, line: 415, type: !111)
!3832 = distinct !DILexicalBlock(scope: !3833, file: !3, line: 415, column: 2)
!3833 = distinct !DILexicalBlock(scope: !3811, file: !3, line: 415, column: 2)
!3834 = !DILocalVariable(name: "__dummy2", scope: !3832, file: !3, line: 415, type: !111)
!3835 = !DILocalVariable(name: "new", scope: !3836, file: !3, line: 419, type: !86)
!3836 = distinct !DILexicalBlock(scope: !3837, file: !3, line: 418, column: 14)
!3837 = distinct !DILexicalBlock(scope: !3811, file: !3, line: 418, column: 6)
!3838 = !DILocalVariable(name: "__dummy", scope: !3839, file: !3, line: 439, type: !111)
!3839 = distinct !DILexicalBlock(scope: !3840, file: !3, line: 439, column: 2)
!3840 = distinct !DILexicalBlock(scope: !3811, file: !3, line: 439, column: 2)
!3841 = !DILocalVariable(name: "__dummy2", scope: !3839, file: !3, line: 439, type: !111)
!3842 = !DILabel(scope: !3811, name: "exit", file: !3, line: 440)
!3843 = !DILabel(scope: !3811, name: "fast_exit", file: !3, line: 447)
!3844 = !DILocation(line: 358, column: 56, scope: !3811)
!3845 = !DILocation(line: 359, column: 19, scope: !3811)
!3846 = !DILocation(line: 360, column: 12, scope: !3811)
!3847 = !DILocation(line: 360, column: 30, scope: !3811)
!3848 = !DILocation(line: 362, column: 2, scope: !3811)
!3849 = !DILocation(line: 362, column: 23, scope: !3811)
!3850 = !DILocation(line: 362, column: 39, scope: !3811)
!3851 = !DILocation(line: 363, column: 2, scope: !3811)
!3852 = !DILocation(line: 363, column: 21, scope: !3811)
!3853 = !DILocation(line: 364, column: 2, scope: !3811)
!3854 = !DILocation(line: 364, column: 15, scope: !3811)
!3855 = !DILocation(line: 365, column: 2, scope: !3811)
!3856 = !DILocation(line: 365, column: 8, scope: !3811)
!3857 = !DILocation(line: 366, column: 2, scope: !3811)
!3858 = !DILocation(line: 366, column: 16, scope: !3811)
!3859 = !DILocation(line: 367, column: 2, scope: !3811)
!3860 = !DILocation(line: 367, column: 6, scope: !3811)
!3861 = !DILocation(line: 377, column: 33, scope: !3811)
!3862 = !DILocation(line: 377, column: 42, scope: !3811)
!3863 = !DILocation(line: 377, column: 15, scope: !3811)
!3864 = !DILocation(line: 377, column: 13, scope: !3811)
!3865 = !DILocation(line: 379, column: 6, scope: !3866)
!3866 = distinct !DILexicalBlock(scope: !3811, file: !3, line: 379, column: 6)
!3867 = !DILocation(line: 379, column: 32, scope: !3866)
!3868 = !DILocation(line: 379, column: 35, scope: !3866)
!3869 = !DILocation(line: 379, column: 6, scope: !3811)
!3870 = !DILocation(line: 380, column: 3, scope: !3866)
!3871 = !DILocation(line: 382, column: 20, scope: !3811)
!3872 = !DILocation(line: 382, column: 29, scope: !3811)
!3873 = !DILocation(line: 382, column: 9, scope: !3811)
!3874 = !DILocation(line: 382, column: 7, scope: !3811)
!3875 = !DILocation(line: 383, column: 12, scope: !3811)
!3876 = !DILocation(line: 383, column: 24, scope: !3811)
!3877 = !DILocation(line: 383, column: 31, scope: !3811)
!3878 = !DILocation(line: 383, column: 29, scope: !3811)
!3879 = !DILocation(line: 383, column: 9, scope: !3811)
!3880 = !DILocation(line: 390, column: 21, scope: !3827)
!3881 = !DILocation(line: 390, column: 21, scope: !3882)
!3882 = distinct !DILexicalBlock(scope: !3827, file: !3, line: 390, column: 21)
!3883 = !DILocation(line: 390, column: 21, scope: !3884)
!3884 = distinct !DILexicalBlock(scope: !3882, file: !3, line: 390, column: 21)
!3885 = !DILocation(line: 390, column: 21, scope: !3886)
!3886 = distinct !DILexicalBlock(scope: !3827, file: !3, line: 390, column: 21)
!3887 = !{i64 2154099181}
!3888 = !DILocation(line: 390, column: 21, scope: !3811)
!3889 = !DILocation(line: 390, column: 47, scope: !3811)
!3890 = !DILocation(line: 390, column: 56, scope: !3811)
!3891 = !DILocation(line: 390, column: 68, scope: !3811)
!3892 = !DILocation(line: 390, column: 10, scope: !3811)
!3893 = !DILocation(line: 390, column: 8, scope: !3811)
!3894 = !DILocation(line: 391, column: 6, scope: !3895)
!3895 = distinct !DILexicalBlock(scope: !3811, file: !3, line: 391, column: 6)
!3896 = !DILocation(line: 391, column: 6, scope: !3811)
!3897 = !DILocation(line: 392, column: 3, scope: !3895)
!3898 = !DILocation(line: 401, column: 6, scope: !3830)
!3899 = !DILocation(line: 401, column: 6, scope: !3829)
!3900 = !DILocation(line: 401, column: 6, scope: !3901)
!3901 = distinct !DILexicalBlock(scope: !3829, file: !3, line: 401, column: 6)
!3902 = !DILocation(line: 401, column: 6, scope: !3903)
!3903 = distinct !DILexicalBlock(scope: !3901, file: !3, line: 401, column: 6)
!3904 = !DILocation(line: 401, column: 6, scope: !3905)
!3905 = distinct !DILexicalBlock(scope: !3829, file: !3, line: 401, column: 6)
!3906 = !{i64 2154105993}
!3907 = !DILocation(line: 0, scope: !3830)
!3908 = !DILocation(line: 401, column: 6, scope: !3811)
!3909 = !DILocation(line: 407, column: 15, scope: !3910)
!3910 = distinct !DILexicalBlock(scope: !3830, file: !3, line: 401, column: 68)
!3911 = !DILocation(line: 408, column: 15, scope: !3910)
!3912 = !DILocation(line: 409, column: 15, scope: !3910)
!3913 = !DILocation(line: 410, column: 22, scope: !3910)
!3914 = !DILocation(line: 410, column: 10, scope: !3910)
!3915 = !DILocation(line: 410, column: 8, scope: !3910)
!3916 = !DILocation(line: 411, column: 7, scope: !3917)
!3917 = distinct !DILexicalBlock(scope: !3910, file: !3, line: 411, column: 7)
!3918 = !DILocation(line: 411, column: 7, scope: !3910)
!3919 = !DILocation(line: 412, column: 15, scope: !3917)
!3920 = !DILocation(line: 412, column: 13, scope: !3917)
!3921 = !DILocation(line: 412, column: 4, scope: !3917)
!3922 = !DILocation(line: 413, column: 2, scope: !3910)
!3923 = !DILocation(line: 415, column: 2, scope: !3811)
!3924 = !DILocation(line: 415, column: 2, scope: !3832)
!3925 = !DILocation(line: 415, column: 2, scope: !3833)
!3926 = !DILocation(line: 417, column: 22, scope: !3811)
!3927 = !DILocation(line: 417, column: 21, scope: !3811)
!3928 = !DILocation(line: 417, column: 30, scope: !3811)
!3929 = !DILocation(line: 417, column: 39, scope: !3811)
!3930 = !DILocation(line: 417, column: 51, scope: !3811)
!3931 = !DILocation(line: 417, column: 10, scope: !3811)
!3932 = !DILocation(line: 417, column: 8, scope: !3811)
!3933 = !DILocation(line: 418, column: 7, scope: !3837)
!3934 = !DILocation(line: 418, column: 6, scope: !3811)
!3935 = !DILocation(line: 419, column: 3, scope: !3836)
!3936 = !DILocation(line: 419, column: 24, scope: !3836)
!3937 = !DILocation(line: 420, column: 22, scope: !3836)
!3938 = !DILocation(line: 420, column: 31, scope: !3836)
!3939 = !DILocation(line: 420, column: 43, scope: !3836)
!3940 = !DILocation(line: 420, column: 4, scope: !3836)
!3941 = !DILocation(line: 422, column: 7, scope: !3942)
!3942 = distinct !DILexicalBlock(scope: !3836, file: !3, line: 422, column: 7)
!3943 = !DILocation(line: 422, column: 7, scope: !3836)
!3944 = !DILocation(line: 423, column: 17, scope: !3945)
!3945 = distinct !DILexicalBlock(scope: !3942, file: !3, line: 422, column: 12)
!3946 = !DILocation(line: 423, column: 16, scope: !3945)
!3947 = !DILocation(line: 423, column: 4, scope: !3945)
!3948 = !DILocation(line: 423, column: 9, scope: !3945)
!3949 = !DILocation(line: 423, column: 14, scope: !3945)
!3950 = !DILocation(line: 428, column: 4, scope: !3945)
!3951 = !DILocation(line: 428, column: 4, scope: !3952)
!3952 = distinct !DILexicalBlock(scope: !3945, file: !3, line: 428, column: 4)
!3953 = !DILocation(line: 428, column: 4, scope: !3954)
!3954 = distinct !DILexicalBlock(scope: !3952, file: !3, line: 428, column: 4)
!3955 = !DILocation(line: 428, column: 4, scope: !3956)
!3956 = distinct !DILexicalBlock(scope: !3952, file: !3, line: 428, column: 4)
!3957 = !DILocation(line: 428, column: 4, scope: !3958)
!3958 = distinct !DILexicalBlock(scope: !3956, file: !3, line: 428, column: 4)
!3959 = !{i64 2154108739}
!3960 = !DILocation(line: 428, column: 4, scope: !3961)
!3961 = distinct !DILexicalBlock(scope: !3956, file: !3, line: 428, column: 4)
!3962 = !DILocation(line: 428, column: 4, scope: !3963)
!3963 = distinct !DILexicalBlock(scope: !3961, file: !3, line: 428, column: 4)
!3964 = !DILocation(line: 428, column: 4, scope: !3965)
!3965 = distinct !DILexicalBlock(scope: !3961, file: !3, line: 428, column: 4)
!3966 = !DILocation(line: 429, column: 12, scope: !3945)
!3967 = !DILocation(line: 429, column: 10, scope: !3945)
!3968 = !DILocation(line: 430, column: 3, scope: !3945)
!3969 = !DILocation(line: 431, column: 2, scope: !3837)
!3970 = !DILocation(line: 431, column: 2, scope: !3836)
!3971 = !DILocation(line: 431, column: 13, scope: !3972)
!3972 = distinct !DILexicalBlock(scope: !3837, file: !3, line: 431, column: 13)
!3973 = !DILocation(line: 431, column: 13, scope: !3837)
!3974 = !DILocation(line: 436, column: 3, scope: !3975)
!3975 = distinct !DILexicalBlock(scope: !3972, file: !3, line: 431, column: 23)
!3976 = !DILocation(line: 437, column: 2, scope: !3975)
!3977 = !DILocation(line: 439, column: 2, scope: !3811)
!3978 = !DILocation(line: 439, column: 2, scope: !3839)
!3979 = !DILocation(line: 439, column: 2, scope: !3840)
!3980 = !DILocation(line: 440, column: 1, scope: !3811)
!3981 = !DILocation(line: 441, column: 6, scope: !3982)
!3982 = distinct !DILexicalBlock(scope: !3811, file: !3, line: 441, column: 6)
!3983 = !DILocation(line: 441, column: 6, scope: !3811)
!3984 = !DILocation(line: 443, column: 29, scope: !3985)
!3985 = distinct !DILexicalBlock(scope: !3982, file: !3, line: 441, column: 16)
!3986 = !DILocation(line: 443, column: 14, scope: !3985)
!3987 = !DILocation(line: 443, column: 3, scope: !3985)
!3988 = !DILocation(line: 444, column: 2, scope: !3985)
!3989 = !DILocation(line: 445, column: 6, scope: !3990)
!3990 = distinct !DILexicalBlock(scope: !3811, file: !3, line: 445, column: 6)
!3991 = !DILocation(line: 445, column: 6, scope: !3811)
!3992 = !DILocation(line: 446, column: 19, scope: !3990)
!3993 = !DILocation(line: 446, column: 26, scope: !3990)
!3994 = !DILocation(line: 446, column: 33, scope: !3990)
!3995 = !DILocation(line: 446, column: 17, scope: !3990)
!3996 = !DILocation(line: 446, column: 3, scope: !3990)
!3997 = !DILocation(line: 447, column: 1, scope: !3811)
!3998 = !DILocation(line: 448, column: 16, scope: !3811)
!3999 = !DILocation(line: 449, column: 1, scope: !3811)
!4000 = !DILocation(line: 448, column: 2, scope: !3811)
!4001 = !DISubprogram(name: "filter_irq_stacks", scope: !4002, file: !4002, line: 78, type: !4003, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4002 = !DIFile(filename: "./include/linux/stacktrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11b0c72fc4687ccc5ce3affce25c4431")
!4003 = !DISubroutineType(types: !4004)
!4004 = !{!7, !3526, !7}
!4005 = distinct !DISubprogram(name: "hash_stack", scope: !3, file: !3, line: 320, type: !4006, scopeLine: 321, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4008)
!4006 = !DISubroutineType(types: !4007)
!4007 = !{!91, !3526, !7}
!4008 = !{!4009, !4010}
!4009 = !DILocalVariable(name: "entries", arg: 1, scope: !4005, file: !3, line: 320, type: !3526)
!4010 = !DILocalVariable(name: "size", arg: 2, scope: !4005, file: !3, line: 320, type: !7)
!4011 = !DILocation(line: 320, column: 45, scope: !4005)
!4012 = !DILocation(line: 320, column: 67, scope: !4005)
!4013 = !DILocation(line: 322, column: 23, scope: !4005)
!4014 = !DILocation(line: 323, column: 9, scope: !4005)
!4015 = !DILocation(line: 323, column: 45, scope: !4005)
!4016 = !DILocation(line: 322, column: 9, scope: !4005)
!4017 = !DILocation(line: 322, column: 2, scope: !4005)
!4018 = distinct !DISubprogram(name: "find_stack", scope: !3, file: !3, line: 343, type: !4019, scopeLine: 346, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4021)
!4019 = !DISubroutineType(types: !4020)
!4020 = !{!86, !86, !3526, !117, !91}
!4021 = !{!4022, !4023, !4024, !4025, !4026}
!4022 = !DILocalVariable(name: "bucket", arg: 1, scope: !4018, file: !3, line: 343, type: !86)
!4023 = !DILocalVariable(name: "entries", arg: 2, scope: !4018, file: !3, line: 344, type: !3526)
!4024 = !DILocalVariable(name: "size", arg: 3, scope: !4018, file: !3, line: 344, type: !117)
!4025 = !DILocalVariable(name: "hash", arg: 4, scope: !4018, file: !3, line: 345, type: !91)
!4026 = !DILocalVariable(name: "found", scope: !4018, file: !3, line: 347, type: !86)
!4027 = !DILocation(line: 343, column: 68, scope: !4018)
!4028 = !DILocation(line: 344, column: 26, scope: !4018)
!4029 = !DILocation(line: 344, column: 39, scope: !4018)
!4030 = !DILocation(line: 345, column: 15, scope: !4018)
!4031 = !DILocation(line: 347, column: 2, scope: !4018)
!4032 = !DILocation(line: 347, column: 23, scope: !4018)
!4033 = !DILocation(line: 349, column: 15, scope: !4034)
!4034 = distinct !DILexicalBlock(scope: !4018, file: !3, line: 349, column: 2)
!4035 = !DILocation(line: 349, column: 13, scope: !4034)
!4036 = !DILocation(line: 349, column: 7, scope: !4034)
!4037 = !DILocation(line: 349, column: 23, scope: !4038)
!4038 = distinct !DILexicalBlock(scope: !4034, file: !3, line: 349, column: 2)
!4039 = !DILocation(line: 349, column: 2, scope: !4034)
!4040 = !DILocation(line: 350, column: 7, scope: !4041)
!4041 = distinct !DILexicalBlock(scope: !4042, file: !3, line: 350, column: 7)
!4042 = distinct !DILexicalBlock(scope: !4038, file: !3, line: 349, column: 51)
!4043 = !DILocation(line: 350, column: 14, scope: !4041)
!4044 = !DILocation(line: 350, column: 22, scope: !4041)
!4045 = !DILocation(line: 350, column: 19, scope: !4041)
!4046 = !DILocation(line: 350, column: 27, scope: !4041)
!4047 = !DILocation(line: 351, column: 7, scope: !4041)
!4048 = !DILocation(line: 351, column: 14, scope: !4041)
!4049 = !DILocation(line: 351, column: 22, scope: !4041)
!4050 = !DILocation(line: 351, column: 19, scope: !4041)
!4051 = !DILocation(line: 351, column: 27, scope: !4041)
!4052 = !DILocation(line: 352, column: 26, scope: !4041)
!4053 = !DILocation(line: 352, column: 35, scope: !4041)
!4054 = !DILocation(line: 352, column: 42, scope: !4041)
!4055 = !DILocation(line: 352, column: 51, scope: !4041)
!4056 = !DILocation(line: 352, column: 8, scope: !4041)
!4057 = !DILocation(line: 350, column: 7, scope: !4042)
!4058 = !DILocation(line: 353, column: 11, scope: !4041)
!4059 = !DILocation(line: 353, column: 4, scope: !4041)
!4060 = !DILocation(line: 354, column: 2, scope: !4042)
!4061 = !DILocation(line: 349, column: 38, scope: !4038)
!4062 = !DILocation(line: 349, column: 45, scope: !4038)
!4063 = !DILocation(line: 349, column: 36, scope: !4038)
!4064 = !DILocation(line: 349, column: 2, scope: !4038)
!4065 = distinct !{!4065, !4039, !4066, !4067, !4068}
!4066 = !DILocation(line: 354, column: 2, scope: !4034)
!4067 = !{!"llvm.loop.mustprogress"}
!4068 = !{!"llvm.loop.unroll.disable"}
!4069 = !DILocation(line: 355, column: 2, scope: !4018)
!4070 = !DILocation(line: 356, column: 1, scope: !4018)
!4071 = !DISubprogram(name: "alloc_pages", scope: !4072, file: !4072, line: 264, type: !4073, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4072 = !DIFile(filename: "./include/linux/gfp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9839e6e1390b3a0e2df74dd95101fbc5")
!4073 = !DISubroutineType(types: !4074)
!4074 = !{!128, !80, !7}
!4075 = distinct !DISubprogram(name: "lowmem_page_address", scope: !1569, file: !1569, line: 2176, type: !4076, scopeLine: 2177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4080)
!4076 = !DISubroutineType(types: !4077)
!4077 = !{!82, !4078}
!4078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4079, size: 64)
!4079 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !129)
!4080 = !{!4081}
!4081 = !DILocalVariable(name: "page", arg: 1, scope: !4075, file: !1569, line: 2176, type: !4078)
!4082 = !DILocation(line: 2176, column: 69, scope: !4075)
!4083 = !DILocation(line: 2178, column: 9, scope: !4075)
!4084 = !DILocation(line: 2178, column: 2, scope: !4075)
!4085 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !4086, file: !4086, line: 32, type: !4087, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4086 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!4087 = !DISubroutineType(types: !4088)
!4088 = !{!111, !4089}
!4089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!4090 = !DILocation(line: 260, column: 34, scope: !3523)
!4091 = !DILocation(line: 260, column: 47, scope: !3523)
!4092 = !DILocation(line: 260, column: 57, scope: !3523)
!4093 = !DILocation(line: 260, column: 70, scope: !3523)
!4094 = !DILocation(line: 262, column: 2, scope: !3523)
!4095 = !DILocation(line: 262, column: 23, scope: !3523)
!4096 = !DILocation(line: 263, column: 2, scope: !3523)
!4097 = !DILocation(line: 263, column: 9, scope: !3523)
!4098 = !DILocation(line: 263, column: 25, scope: !3523)
!4099 = !DILocation(line: 265, column: 18, scope: !3523)
!4100 = !DILocation(line: 265, column: 16, scope: !3523)
!4101 = !DILocation(line: 268, column: 6, scope: !3539)
!4102 = !DILocation(line: 268, column: 6, scope: !3523)
!4103 = !DILocation(line: 270, column: 7, scope: !3537)
!4104 = !DILocation(line: 270, column: 7, scope: !3538)
!4105 = !DILocation(line: 271, column: 4, scope: !3535)
!4106 = !DILocation(line: 271, column: 4, scope: !3541)
!4107 = !DILocation(line: 271, column: 4, scope: !4108)
!4108 = distinct !DILexicalBlock(scope: !3541, file: !3, line: 271, column: 4)
!4109 = !DILocation(line: 0, scope: !4108)
!4110 = !DILocation(line: 271, column: 4, scope: !4111)
!4111 = distinct !DILexicalBlock(scope: !4108, file: !3, line: 271, column: 4)
!4112 = !DILocation(line: 271, column: 4, scope: !3542)
!4113 = !DILocation(line: 271, column: 4, scope: !3545)
!4114 = !DILocation(line: 271, column: 4, scope: !3549)
!4115 = !DILocation(line: 271, column: 4, scope: !3548)
!4116 = !DILocation(line: 271, column: 4, scope: !4117)
!4117 = distinct !DILexicalBlock(scope: !3548, file: !3, line: 271, column: 4)
!4118 = !DILocation(line: 271, column: 4, scope: !3547)
!4119 = !DILocation(line: 271, column: 4, scope: !4120)
!4120 = distinct !DILexicalBlock(scope: !3547, file: !3, line: 271, column: 4)
!4121 = !DILocation(line: 271, column: 4, scope: !4122)
!4122 = distinct !DILexicalBlock(scope: !3547, file: !3, line: 271, column: 4)
!4123 = !{i64 2154084917, i64 2154084946, i64 2154084992, i64 2154085050, i64 2154085104, i64 2154085158, i64 2154085213, i64 2154085244, i64 2154085552, i64 2154085558, i64 2154085605, i64 2154085628, i64 2154085654}
!4124 = !DILocation(line: 271, column: 4, scope: !4125)
!4125 = distinct !DILexicalBlock(scope: !3547, file: !3, line: 271, column: 4)
!4126 = !DILocation(line: 271, column: 4, scope: !4127)
!4127 = distinct !DILexicalBlock(scope: !3548, file: !3, line: 271, column: 4)
!4128 = !DILocation(line: 271, column: 4, scope: !3536)
!4129 = !DILocation(line: 272, column: 4, scope: !3536)
!4130 = !DILocation(line: 280, column: 3, scope: !3538)
!4131 = !DILocation(line: 280, column: 3, scope: !4132)
!4132 = distinct !DILexicalBlock(scope: !3538, file: !3, line: 280, column: 3)
!4133 = !DILocation(line: 280, column: 3, scope: !4134)
!4134 = distinct !DILexicalBlock(scope: !4132, file: !3, line: 280, column: 3)
!4135 = !DILocation(line: 280, column: 3, scope: !4136)
!4136 = distinct !DILexicalBlock(scope: !4132, file: !3, line: 280, column: 3)
!4137 = !DILocation(line: 281, column: 15, scope: !3538)
!4138 = !DILocation(line: 288, column: 7, scope: !4139)
!4139 = distinct !DILexicalBlock(scope: !3538, file: !3, line: 288, column: 7)
!4140 = !DILocation(line: 288, column: 18, scope: !4139)
!4141 = !DILocation(line: 288, column: 22, scope: !4139)
!4142 = !DILocation(line: 288, column: 7, scope: !3538)
!4143 = !DILocation(line: 289, column: 4, scope: !4139)
!4144 = !DILocation(line: 289, column: 4, scope: !4145)
!4145 = distinct !DILexicalBlock(scope: !4139, file: !3, line: 289, column: 4)
!4146 = !DILocation(line: 289, column: 4, scope: !4147)
!4147 = distinct !DILexicalBlock(scope: !4145, file: !3, line: 289, column: 4)
!4148 = !DILocation(line: 289, column: 4, scope: !4149)
!4149 = distinct !DILexicalBlock(scope: !4145, file: !3, line: 289, column: 4)
!4150 = !DILocation(line: 289, column: 4, scope: !4151)
!4151 = distinct !DILexicalBlock(scope: !4149, file: !3, line: 289, column: 4)
!4152 = !{i64 2154090652}
!4153 = !DILocation(line: 289, column: 4, scope: !4154)
!4154 = distinct !DILexicalBlock(scope: !4149, file: !3, line: 289, column: 4)
!4155 = !DILocation(line: 289, column: 4, scope: !4156)
!4156 = distinct !DILexicalBlock(scope: !4154, file: !3, line: 289, column: 4)
!4157 = !DILocation(line: 289, column: 4, scope: !4158)
!4158 = distinct !DILexicalBlock(scope: !4154, file: !3, line: 289, column: 4)
!4159 = !DILocation(line: 290, column: 2, scope: !3538)
!4160 = !DILocation(line: 293, column: 7, scope: !4161)
!4161 = distinct !DILexicalBlock(scope: !3523, file: !3, line: 293, column: 6)
!4162 = !DILocation(line: 293, column: 6, scope: !4161)
!4163 = !DILocation(line: 293, column: 6, scope: !3523)
!4164 = !DILocation(line: 294, column: 19, scope: !4161)
!4165 = !DILocation(line: 294, column: 3, scope: !4161)
!4166 = !DILocation(line: 297, column: 18, scope: !4167)
!4167 = distinct !DILexicalBlock(scope: !3523, file: !3, line: 297, column: 6)
!4168 = !DILocation(line: 297, column: 6, scope: !4167)
!4169 = !DILocation(line: 297, column: 30, scope: !4167)
!4170 = !DILocation(line: 297, column: 6, scope: !3523)
!4171 = !DILocation(line: 298, column: 3, scope: !4167)
!4172 = !DILocation(line: 301, column: 22, scope: !3523)
!4173 = !DILocation(line: 301, column: 10, scope: !3523)
!4174 = !DILocation(line: 301, column: 36, scope: !3523)
!4175 = !DILocation(line: 301, column: 34, scope: !3523)
!4176 = !DILocation(line: 301, column: 8, scope: !3523)
!4177 = !DILocation(line: 302, column: 16, scope: !3523)
!4178 = !DILocation(line: 302, column: 2, scope: !3523)
!4179 = !DILocation(line: 302, column: 9, scope: !3523)
!4180 = !DILocation(line: 302, column: 14, scope: !3523)
!4181 = !DILocation(line: 303, column: 16, scope: !3523)
!4182 = !DILocation(line: 303, column: 2, scope: !3523)
!4183 = !DILocation(line: 303, column: 9, scope: !3523)
!4184 = !DILocation(line: 303, column: 14, scope: !3523)
!4185 = !DILocation(line: 304, column: 29, scope: !3523)
!4186 = !DILocation(line: 304, column: 2, scope: !3523)
!4187 = !DILocation(line: 304, column: 9, scope: !3523)
!4188 = !DILocation(line: 304, column: 27, scope: !3523)
!4189 = !DILocation(line: 305, column: 25, scope: !3523)
!4190 = !DILocation(line: 305, column: 37, scope: !3523)
!4191 = !DILocation(line: 305, column: 2, scope: !3523)
!4192 = !DILocation(line: 305, column: 9, scope: !3523)
!4193 = !DILocation(line: 305, column: 23, scope: !3523)
!4194 = !DILocation(line: 306, column: 2, scope: !3523)
!4195 = !DILocation(line: 306, column: 9, scope: !3523)
!4196 = !DILocation(line: 306, column: 22, scope: !3523)
!4197 = !DILocation(line: 307, column: 2, scope: !3523)
!4198 = !DILocation(line: 307, column: 9, scope: !3523)
!4199 = !DILocation(line: 307, column: 22, scope: !3523)
!4200 = !DILocation(line: 308, column: 9, scope: !3523)
!4201 = !DILocation(line: 308, column: 16, scope: !3523)
!4202 = !DILocation(line: 308, column: 25, scope: !3523)
!4203 = !DILocation(line: 308, column: 34, scope: !3523)
!4204 = !DILocation(line: 308, column: 2, scope: !3523)
!4205 = !DILocation(line: 309, column: 17, scope: !3523)
!4206 = !DILocation(line: 309, column: 14, scope: !3523)
!4207 = !DILocation(line: 314, column: 24, scope: !3523)
!4208 = !DILocation(line: 314, column: 31, scope: !3523)
!4209 = !DILocation(line: 314, column: 2, scope: !3523)
!4210 = !DILocation(line: 316, column: 9, scope: !3523)
!4211 = !DILocation(line: 316, column: 2, scope: !3523)
!4212 = !DILocation(line: 317, column: 1, scope: !3523)
!4213 = distinct !DISubprogram(name: "depot_init_pool", scope: !3, file: !3, line: 222, type: !4214, scopeLine: 223, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4216)
!4214 = !DISubroutineType(types: !4215)
!4215 = !{null, !1730}
!4216 = !{!4217, !4218}
!4217 = !DILocalVariable(name: "prealloc", arg: 1, scope: !4213, file: !3, line: 222, type: !1730)
!4218 = !DILocalVariable(name: "___p1", scope: !4219, file: !3, line: 230, type: !117)
!4219 = distinct !DILexicalBlock(scope: !4220, file: !3, line: 230, column: 7)
!4220 = distinct !DILexicalBlock(scope: !4213, file: !3, line: 230, column: 6)
!4221 = !DILocation(line: 222, column: 36, scope: !4213)
!4222 = !DILocation(line: 230, column: 7, scope: !4219)
!4223 = !DILocation(line: 230, column: 7, scope: !4224)
!4224 = distinct !DILexicalBlock(scope: !4219, file: !3, line: 230, column: 7)
!4225 = !DILocation(line: 230, column: 7, scope: !4226)
!4226 = distinct !DILexicalBlock(scope: !4224, file: !3, line: 230, column: 7)
!4227 = !DILocation(line: 230, column: 7, scope: !4228)
!4228 = distinct !DILexicalBlock(scope: !4219, file: !3, line: 230, column: 7)
!4229 = !{i64 2154074908}
!4230 = !DILocation(line: 230, column: 7, scope: !4220)
!4231 = !DILocation(line: 230, column: 6, scope: !4213)
!4232 = !DILocation(line: 231, column: 3, scope: !4220)
!4233 = !DILocation(line: 234, column: 18, scope: !4234)
!4234 = distinct !DILexicalBlock(scope: !4213, file: !3, line: 234, column: 6)
!4235 = !DILocation(line: 234, column: 6, scope: !4234)
!4236 = !DILocation(line: 234, column: 30, scope: !4234)
!4237 = !DILocation(line: 234, column: 6, scope: !4213)
!4238 = !DILocation(line: 236, column: 30, scope: !4239)
!4239 = distinct !DILexicalBlock(scope: !4234, file: !3, line: 234, column: 39)
!4240 = !DILocation(line: 236, column: 29, scope: !4239)
!4241 = !DILocation(line: 236, column: 15, scope: !4239)
!4242 = !DILocation(line: 236, column: 3, scope: !4239)
!4243 = !DILocation(line: 236, column: 27, scope: !4239)
!4244 = !DILocation(line: 237, column: 4, scope: !4239)
!4245 = !DILocation(line: 237, column: 13, scope: !4239)
!4246 = !DILocation(line: 238, column: 2, scope: !4239)
!4247 = !DILocation(line: 243, column: 7, scope: !4248)
!4248 = distinct !DILexicalBlock(scope: !4249, file: !3, line: 243, column: 7)
!4249 = distinct !DILexicalBlock(scope: !4234, file: !3, line: 238, column: 9)
!4250 = !DILocation(line: 243, column: 18, scope: !4248)
!4251 = !DILocation(line: 243, column: 22, scope: !4248)
!4252 = !DILocation(line: 243, column: 7, scope: !4249)
!4253 = !DILocation(line: 244, column: 35, scope: !4254)
!4254 = distinct !DILexicalBlock(scope: !4248, file: !3, line: 243, column: 41)
!4255 = !DILocation(line: 244, column: 34, scope: !4254)
!4256 = !DILocation(line: 244, column: 16, scope: !4254)
!4257 = !DILocation(line: 244, column: 27, scope: !4254)
!4258 = !DILocation(line: 244, column: 4, scope: !4254)
!4259 = !DILocation(line: 244, column: 32, scope: !4254)
!4260 = !DILocation(line: 245, column: 5, scope: !4254)
!4261 = !DILocation(line: 245, column: 14, scope: !4254)
!4262 = !DILocation(line: 246, column: 3, scope: !4254)
!4263 = !DILocation(line: 254, column: 3, scope: !4249)
!4264 = !DILocation(line: 254, column: 3, scope: !4265)
!4265 = distinct !DILexicalBlock(scope: !4249, file: !3, line: 254, column: 3)
!4266 = !DILocation(line: 254, column: 3, scope: !4267)
!4267 = distinct !DILexicalBlock(scope: !4265, file: !3, line: 254, column: 3)
!4268 = !DILocation(line: 254, column: 3, scope: !4269)
!4269 = distinct !DILexicalBlock(scope: !4265, file: !3, line: 254, column: 3)
!4270 = !DILocation(line: 254, column: 3, scope: !4271)
!4271 = distinct !DILexicalBlock(scope: !4269, file: !3, line: 254, column: 3)
!4272 = !{i64 2154077590}
!4273 = !DILocation(line: 254, column: 3, scope: !4274)
!4274 = distinct !DILexicalBlock(scope: !4269, file: !3, line: 254, column: 3)
!4275 = !DILocation(line: 254, column: 3, scope: !4276)
!4276 = distinct !DILexicalBlock(scope: !4274, file: !3, line: 254, column: 3)
!4277 = !DILocation(line: 254, column: 3, scope: !4278)
!4278 = distinct !DILexicalBlock(scope: !4274, file: !3, line: 254, column: 3)
!4279 = !DILocation(line: 256, column: 1, scope: !4213)
!4280 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !4086, file: !4086, line: 43, type: !4281, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4281 = !DISubroutineType(types: !4282)
!4282 = !{null, !4089, !111}
!4283 = !DISubprogram(name: "free_pages", scope: !4072, file: !4072, line: 303, type: !4284, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4284 = !DISubroutineType(types: !4285)
!4285 = !{null, !111, !7}
!4286 = distinct !DISubprogram(name: "stack_depot_save", scope: !3, file: !3, line: 452, type: !4287, scopeLine: 455, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4289)
!4287 = !DISubroutineType(types: !4288)
!4288 = !{!100, !3526, !7, !80}
!4289 = !{!4290, !4291, !4292}
!4290 = !DILocalVariable(name: "entries", arg: 1, scope: !4286, file: !3, line: 452, type: !3526)
!4291 = !DILocalVariable(name: "nr_entries", arg: 2, scope: !4286, file: !3, line: 453, type: !7)
!4292 = !DILocalVariable(name: "alloc_flags", arg: 3, scope: !4286, file: !3, line: 454, type: !80)
!4293 = !DILocation(line: 452, column: 54, scope: !4286)
!4294 = !DILocation(line: 453, column: 24, scope: !4286)
!4295 = !DILocation(line: 454, column: 17, scope: !4286)
!4296 = !DILocation(line: 456, column: 28, scope: !4286)
!4297 = !DILocation(line: 456, column: 37, scope: !4286)
!4298 = !DILocation(line: 456, column: 49, scope: !4286)
!4299 = !DILocation(line: 456, column: 9, scope: !4286)
!4300 = !DILocation(line: 456, column: 2, scope: !4286)
!4301 = distinct !DISubprogram(name: "stack_depot_fetch", scope: !3, file: !3, line: 460, type: !4302, scopeLine: 462, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4305)
!4302 = !DISubroutineType(types: !4303)
!4303 = !{!7, !100, !4304}
!4304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3526, size: 64)
!4305 = !{!4306, !4307, !4308, !4309, !4310, !4311, !4312, !4313, !4317}
!4306 = !DILocalVariable(name: "handle", arg: 1, scope: !4301, file: !3, line: 460, type: !100)
!4307 = !DILocalVariable(name: "entries", arg: 2, scope: !4301, file: !3, line: 461, type: !4304)
!4308 = !DILocalVariable(name: "parts", scope: !4301, file: !3, line: 463, type: !97)
!4309 = !DILocalVariable(name: "pool_index_cached", scope: !4301, file: !3, line: 468, type: !117)
!4310 = !DILocalVariable(name: "pool", scope: !4301, file: !3, line: 469, type: !82)
!4311 = !DILocalVariable(name: "offset", scope: !4301, file: !3, line: 470, type: !120)
!4312 = !DILocalVariable(name: "stack", scope: !4301, file: !3, line: 471, type: !86)
!4313 = !DILocalVariable(name: "__ret_warn_on", scope: !4314, file: !3, line: 484, type: !117)
!4314 = distinct !DILexicalBlock(scope: !4315, file: !3, line: 484, column: 3)
!4315 = distinct !DILexicalBlock(scope: !4316, file: !3, line: 483, column: 44)
!4316 = distinct !DILexicalBlock(scope: !4301, file: !3, line: 483, column: 6)
!4317 = !DILocalVariable(name: "__flags", scope: !4318, file: !3, line: 484, type: !117)
!4318 = distinct !DILexicalBlock(scope: !4319, file: !3, line: 484, column: 3)
!4319 = distinct !DILexicalBlock(scope: !4320, file: !3, line: 484, column: 3)
!4320 = distinct !DILexicalBlock(scope: !4314, file: !3, line: 484, column: 3)
!4321 = !DILocation(line: 460, column: 53, scope: !4301)
!4322 = !DILocation(line: 461, column: 27, scope: !4301)
!4323 = !DILocation(line: 463, column: 2, scope: !4301)
!4324 = !DILocation(line: 463, column: 21, scope: !4301)
!4325 = !DILocation(line: 463, column: 41, scope: !4301)
!4326 = !DILocation(line: 463, column: 29, scope: !4301)
!4327 = !DILocation(line: 468, column: 2, scope: !4301)
!4328 = !DILocation(line: 468, column: 6, scope: !4301)
!4329 = !DILocation(line: 468, column: 26, scope: !4330)
!4330 = distinct !DILexicalBlock(scope: !4301, file: !3, line: 468, column: 26)
!4331 = !DILocation(line: 468, column: 26, scope: !4332)
!4332 = distinct !DILexicalBlock(scope: !4330, file: !3, line: 468, column: 26)
!4333 = !DILocation(line: 469, column: 2, scope: !4301)
!4334 = !DILocation(line: 469, column: 8, scope: !4301)
!4335 = !DILocation(line: 470, column: 2, scope: !4301)
!4336 = !DILocation(line: 470, column: 9, scope: !4301)
!4337 = !DILocation(line: 470, column: 24, scope: !4301)
!4338 = !DILocation(line: 470, column: 31, scope: !4301)
!4339 = !DILocation(line: 470, column: 18, scope: !4301)
!4340 = !DILocation(line: 471, column: 2, scope: !4301)
!4341 = !DILocation(line: 471, column: 23, scope: !4301)
!4342 = !DILocation(line: 473, column: 3, scope: !4301)
!4343 = !DILocation(line: 473, column: 11, scope: !4301)
!4344 = !DILocation(line: 478, column: 24, scope: !4301)
!4345 = !DILocation(line: 478, column: 2, scope: !4301)
!4346 = !DILocation(line: 480, column: 7, scope: !4347)
!4347 = distinct !DILexicalBlock(scope: !4301, file: !3, line: 480, column: 6)
!4348 = !DILocation(line: 480, column: 6, scope: !4301)
!4349 = !DILocation(line: 481, column: 3, scope: !4347)
!4350 = !DILocation(line: 483, column: 12, scope: !4316)
!4351 = !DILocation(line: 483, column: 25, scope: !4316)
!4352 = !DILocation(line: 483, column: 23, scope: !4316)
!4353 = !DILocation(line: 483, column: 6, scope: !4301)
!4354 = !DILocation(line: 484, column: 3, scope: !4314)
!4355 = !DILocation(line: 484, column: 3, scope: !4320)
!4356 = !DILocation(line: 484, column: 3, scope: !4319)
!4357 = !DILocation(line: 484, column: 3, scope: !4358)
!4358 = distinct !DILexicalBlock(scope: !4319, file: !3, line: 484, column: 3)
!4359 = !DILocation(line: 484, column: 3, scope: !4318)
!4360 = !DILocation(line: 484, column: 3, scope: !4361)
!4361 = distinct !DILexicalBlock(scope: !4318, file: !3, line: 484, column: 3)
!4362 = !DILocation(line: 484, column: 3, scope: !4363)
!4363 = distinct !DILexicalBlock(scope: !4318, file: !3, line: 484, column: 3)
!4364 = !{i64 2154118270, i64 2154118299, i64 2154118345, i64 2154118403, i64 2154118457, i64 2154118511, i64 2154118566, i64 2154118597, i64 2154118905, i64 2154118911, i64 2154118958, i64 2154118981, i64 2154119007}
!4365 = !DILocation(line: 484, column: 3, scope: !4366)
!4366 = distinct !DILexicalBlock(scope: !4318, file: !3, line: 484, column: 3)
!4367 = !DILocation(line: 484, column: 3, scope: !4368)
!4368 = distinct !DILexicalBlock(scope: !4319, file: !3, line: 484, column: 3)
!4369 = !DILocation(line: 484, column: 3, scope: !4315)
!4370 = !DILocation(line: 486, column: 3, scope: !4315)
!4371 = !DILocation(line: 488, column: 27, scope: !4301)
!4372 = !DILocation(line: 488, column: 9, scope: !4301)
!4373 = !DILocation(line: 488, column: 7, scope: !4301)
!4374 = !DILocation(line: 489, column: 7, scope: !4375)
!4375 = distinct !DILexicalBlock(scope: !4301, file: !3, line: 489, column: 6)
!4376 = !DILocation(line: 489, column: 6, scope: !4301)
!4377 = !DILocation(line: 490, column: 3, scope: !4375)
!4378 = !DILocation(line: 491, column: 10, scope: !4301)
!4379 = !DILocation(line: 491, column: 17, scope: !4301)
!4380 = !DILocation(line: 491, column: 15, scope: !4301)
!4381 = !DILocation(line: 491, column: 8, scope: !4301)
!4382 = !DILocation(line: 493, column: 13, scope: !4301)
!4383 = !DILocation(line: 493, column: 20, scope: !4301)
!4384 = !DILocation(line: 493, column: 3, scope: !4301)
!4385 = !DILocation(line: 493, column: 11, scope: !4301)
!4386 = !DILocation(line: 494, column: 9, scope: !4301)
!4387 = !DILocation(line: 494, column: 16, scope: !4301)
!4388 = !DILocation(line: 494, column: 2, scope: !4301)
!4389 = !DILocation(line: 495, column: 1, scope: !4301)
!4390 = distinct !DISubprogram(name: "kmsan_unpoison_memory", scope: !4391, file: !4391, line: 70, type: !4392, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4394)
!4391 = !DIFile(filename: "./include/linux/kmsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cfeb6fcb47441b7815b086def457771")
!4392 = !DISubroutineType(types: !4393)
!4393 = !{null, !2576, !120}
!4394 = !{!4395, !4396}
!4395 = !DILocalVariable(name: "address", arg: 1, scope: !4390, file: !4391, line: 70, type: !2576)
!4396 = !DILocalVariable(name: "size", arg: 2, scope: !4390, file: !4391, line: 70, type: !120)
!4397 = !DILocation(line: 70, column: 54, scope: !4390)
!4398 = !DILocation(line: 70, column: 70, scope: !4390)
!4399 = !DILocation(line: 72, column: 1, scope: !4390)
!4400 = !DISubprogram(name: "__warn_printk", scope: !4401, file: !4401, line: 93, type: !4402, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4401 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!4402 = !DISubroutineType(types: !4403)
!4403 = !{null, !313, null}
!4404 = distinct !DISubprogram(name: "stack_depot_print", scope: !3, file: !3, line: 498, type: !4405, scopeLine: 499, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4407)
!4405 = !DISubroutineType(types: !4406)
!4406 = !{null, !100}
!4407 = !{!4408, !4409, !4410}
!4408 = !DILocalVariable(name: "stack", arg: 1, scope: !4404, file: !3, line: 498, type: !100)
!4409 = !DILocalVariable(name: "entries", scope: !4404, file: !3, line: 500, type: !3526)
!4410 = !DILocalVariable(name: "nr_entries", scope: !4404, file: !3, line: 501, type: !7)
!4411 = !DILocation(line: 498, column: 45, scope: !4404)
!4412 = !DILocation(line: 500, column: 2, scope: !4404)
!4413 = !DILocation(line: 500, column: 17, scope: !4404)
!4414 = !DILocation(line: 501, column: 2, scope: !4404)
!4415 = !DILocation(line: 501, column: 15, scope: !4404)
!4416 = !DILocation(line: 503, column: 33, scope: !4404)
!4417 = !DILocation(line: 503, column: 15, scope: !4404)
!4418 = !DILocation(line: 503, column: 13, scope: !4404)
!4419 = !DILocation(line: 504, column: 6, scope: !4420)
!4420 = distinct !DILexicalBlock(scope: !4404, file: !3, line: 504, column: 6)
!4421 = !DILocation(line: 504, column: 17, scope: !4420)
!4422 = !DILocation(line: 504, column: 6, scope: !4404)
!4423 = !DILocation(line: 505, column: 21, scope: !4420)
!4424 = !DILocation(line: 505, column: 30, scope: !4420)
!4425 = !DILocation(line: 505, column: 3, scope: !4420)
!4426 = !DILocation(line: 506, column: 1, scope: !4404)
!4427 = !DISubprogram(name: "stack_trace_print", scope: !4002, file: !4002, line: 66, type: !4428, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4428 = !DISubroutineType(types: !4429)
!4429 = !{null, !4430, !7, !117}
!4430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3356, size: 64)
!4431 = distinct !DISubprogram(name: "stack_depot_snprint", scope: !3, file: !3, line: 509, type: !4432, scopeLine: 511, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4434)
!4432 = !DISubroutineType(types: !4433)
!4433 = !{!117, !100, !339, !120, !117}
!4434 = !{!4435, !4436, !4437, !4438, !4439, !4440}
!4435 = !DILocalVariable(name: "handle", arg: 1, scope: !4431, file: !3, line: 509, type: !100)
!4436 = !DILocalVariable(name: "buf", arg: 2, scope: !4431, file: !3, line: 509, type: !339)
!4437 = !DILocalVariable(name: "size", arg: 3, scope: !4431, file: !3, line: 509, type: !120)
!4438 = !DILocalVariable(name: "spaces", arg: 4, scope: !4431, file: !3, line: 510, type: !117)
!4439 = !DILocalVariable(name: "entries", scope: !4431, file: !3, line: 512, type: !3526)
!4440 = !DILocalVariable(name: "nr_entries", scope: !4431, file: !3, line: 513, type: !7)
!4441 = !DILocation(line: 509, column: 46, scope: !4431)
!4442 = !DILocation(line: 509, column: 60, scope: !4431)
!4443 = !DILocation(line: 509, column: 72, scope: !4431)
!4444 = !DILocation(line: 510, column: 14, scope: !4431)
!4445 = !DILocation(line: 512, column: 2, scope: !4431)
!4446 = !DILocation(line: 512, column: 17, scope: !4431)
!4447 = !DILocation(line: 513, column: 2, scope: !4431)
!4448 = !DILocation(line: 513, column: 15, scope: !4431)
!4449 = !DILocation(line: 515, column: 33, scope: !4431)
!4450 = !DILocation(line: 515, column: 15, scope: !4431)
!4451 = !DILocation(line: 515, column: 13, scope: !4431)
!4452 = !DILocation(line: 516, column: 9, scope: !4431)
!4453 = !DILocation(line: 516, column: 42, scope: !4431)
!4454 = !DILocation(line: 516, column: 47, scope: !4431)
!4455 = !DILocation(line: 516, column: 53, scope: !4431)
!4456 = !DILocation(line: 516, column: 62, scope: !4431)
!4457 = !DILocation(line: 517, column: 7, scope: !4431)
!4458 = !DILocation(line: 516, column: 22, scope: !4431)
!4459 = !DILocation(line: 518, column: 1, scope: !4431)
!4460 = !DILocation(line: 516, column: 2, scope: !4431)
!4461 = !DISubprogram(name: "stack_trace_snprint", scope: !4002, file: !4002, line: 68, type: !4462, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4462 = !DISubroutineType(types: !4463)
!4463 = !{!117, !339, !120, !4430, !7, !117}
!4464 = distinct !DISubprogram(name: "stack_depot_set_extra_bits", scope: !3, file: !3, line: 521, type: !4465, scopeLine: 523, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4467)
!4465 = !DISubroutineType(types: !4466)
!4466 = !{!100, !100, !7}
!4467 = !{!4468, !4469, !4470}
!4468 = !DILocalVariable(name: "handle", arg: 1, scope: !4464, file: !3, line: 522, type: !100)
!4469 = !DILocalVariable(name: "extra_bits", arg: 2, scope: !4464, file: !3, line: 522, type: !7)
!4470 = !DILocalVariable(name: "parts", scope: !4464, file: !3, line: 524, type: !97)
!4471 = !DILocation(line: 522, column: 25, scope: !4464)
!4472 = !DILocation(line: 522, column: 46, scope: !4464)
!4473 = !DILocation(line: 524, column: 2, scope: !4464)
!4474 = !DILocation(line: 524, column: 21, scope: !4464)
!4475 = !DILocation(line: 524, column: 41, scope: !4464)
!4476 = !DILocation(line: 524, column: 29, scope: !4464)
!4477 = !DILocation(line: 527, column: 7, scope: !4478)
!4478 = distinct !DILexicalBlock(scope: !4464, file: !3, line: 527, column: 6)
!4479 = !DILocation(line: 527, column: 6, scope: !4464)
!4480 = !DILocation(line: 528, column: 3, scope: !4478)
!4481 = !DILocation(line: 530, column: 16, scope: !4464)
!4482 = !DILocation(line: 530, column: 14, scope: !4464)
!4483 = !DILocation(line: 531, column: 15, scope: !4464)
!4484 = !DILocation(line: 531, column: 2, scope: !4464)
!4485 = !DILocation(line: 532, column: 1, scope: !4464)
!4486 = distinct !DISubprogram(name: "stack_depot_get_extra_bits", scope: !3, file: !3, line: 535, type: !4487, scopeLine: 536, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4489)
!4487 = !DISubroutineType(types: !4488)
!4488 = !{!7, !100}
!4489 = !{!4490, !4491}
!4490 = !DILocalVariable(name: "handle", arg: 1, scope: !4486, file: !3, line: 535, type: !100)
!4491 = !DILocalVariable(name: "parts", scope: !4486, file: !3, line: 537, type: !97)
!4492 = !DILocation(line: 535, column: 62, scope: !4486)
!4493 = !DILocation(line: 537, column: 2, scope: !4486)
!4494 = !DILocation(line: 537, column: 21, scope: !4486)
!4495 = !DILocation(line: 537, column: 41, scope: !4486)
!4496 = !DILocation(line: 537, column: 29, scope: !4486)
!4497 = !DILocation(line: 539, column: 15, scope: !4486)
!4498 = !DILocation(line: 540, column: 1, scope: !4486)
!4499 = !DILocation(line: 539, column: 2, scope: !4486)
!4500 = !DISubprogram(name: "kstrtobool", scope: !4501, file: !4501, line: 98, type: !4502, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4501 = !DIFile(filename: "./include/linux/kstrtox.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b7da882f1f371706e764491098c6cb23")
!4502 = !DISubroutineType(types: !4503)
!4503 = !{!117, !313, !3297}
!4504 = distinct !DISubprogram(name: "fls64", scope: !4505, file: !4505, line: 401, type: !4506, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4508)
!4505 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!4506 = !DISubroutineType(types: !4507)
!4507 = !{!117, !126}
!4508 = !{!4509, !4510}
!4509 = !DILocalVariable(name: "x", arg: 1, scope: !4504, file: !4505, line: 401, type: !126)
!4510 = !DILocalVariable(name: "bitpos", scope: !4504, file: !4505, line: 403, type: !117)
!4511 = !DILocation(line: 401, column: 40, scope: !4504)
!4512 = !DILocation(line: 403, column: 2, scope: !4504)
!4513 = !DILocation(line: 403, column: 6, scope: !4504)
!4514 = !DILocation(line: 409, column: 2, scope: !4504)
!4515 = !DILocation(line: 411, column: 14, scope: !4504)
!4516 = !{i64 574746}
!4517 = !DILocation(line: 412, column: 9, scope: !4504)
!4518 = !DILocation(line: 412, column: 16, scope: !4504)
!4519 = !DILocation(line: 413, column: 1, scope: !4504)
!4520 = !DILocation(line: 412, column: 2, scope: !4504)
!4521 = distinct !DISubprogram(name: "fls_long", scope: !4522, file: !4522, line: 204, type: !4523, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4525)
!4522 = !DIFile(filename: "./include/linux/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7ff773790f4c3b71576b4a48e7797457")
!4523 = !DISubroutineType(types: !4524)
!4524 = !{!7, !111}
!4525 = !{!4526}
!4526 = !DILocalVariable(name: "l", arg: 1, scope: !4521, file: !4522, line: 204, type: !111)
!4527 = !DILocation(line: 204, column: 47, scope: !4521)
!4528 = !DILocation(line: 208, column: 15, scope: !4521)
!4529 = !DILocation(line: 208, column: 9, scope: !4521)
!4530 = !DILocation(line: 208, column: 2, scope: !4521)
!4531 = distinct !DISubprogram(name: "kvmalloc_array", scope: !3794, file: !3794, line: 749, type: !3795, scopeLine: 750, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4532)
!4532 = !{!4533, !4534, !4535, !4536}
!4533 = !DILocalVariable(name: "n", arg: 1, scope: !4531, file: !3794, line: 749, type: !120)
!4534 = !DILocalVariable(name: "size", arg: 2, scope: !4531, file: !3794, line: 749, type: !120)
!4535 = !DILocalVariable(name: "flags", arg: 3, scope: !4531, file: !3794, line: 749, type: !80)
!4536 = !DILocalVariable(name: "bytes", scope: !4531, file: !3794, line: 751, type: !120)
!4537 = !DILocation(line: 749, column: 62, scope: !4531)
!4538 = !DILocation(line: 749, column: 72, scope: !4531)
!4539 = !DILocation(line: 749, column: 84, scope: !4531)
!4540 = !DILocation(line: 751, column: 2, scope: !4531)
!4541 = !DILocation(line: 751, column: 9, scope: !4531)
!4542 = !DILocation(line: 753, column: 6, scope: !4543)
!4543 = distinct !DILexicalBlock(scope: !4531, file: !3794, line: 753, column: 6)
!4544 = !DILocation(line: 753, column: 6, scope: !4531)
!4545 = !DILocation(line: 754, column: 3, scope: !4543)
!4546 = !DILocation(line: 756, column: 18, scope: !4531)
!4547 = !DILocation(line: 756, column: 25, scope: !4531)
!4548 = !DILocation(line: 756, column: 9, scope: !4531)
!4549 = !DILocation(line: 756, column: 2, scope: !4531)
!4550 = !DILocation(line: 757, column: 1, scope: !4531)
!4551 = distinct !DISubprogram(name: "__must_check_overflow", scope: !4552, file: !4552, line: 51, type: !4553, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4555)
!4552 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!4553 = !DISubroutineType(types: !4554)
!4554 = !{!1324, !1324}
!4555 = !{!4556}
!4556 = !DILocalVariable(name: "overflow", arg: 1, scope: !4551, file: !4552, line: 51, type: !1324)
!4557 = !DILocation(line: 51, column: 60, scope: !4551)
!4558 = !DILocation(line: 53, column: 9, scope: !4551)
!4559 = !DILocation(line: 53, column: 2, scope: !4551)
!4560 = distinct !DISubprogram(name: "kvmalloc", scope: !3794, file: !3794, line: 736, type: !4561, scopeLine: 737, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4563)
!4561 = !DISubroutineType(types: !4562)
!4562 = !{!82, !120, !80}
!4563 = !{!4564, !4565}
!4564 = !DILocalVariable(name: "size", arg: 1, scope: !4560, file: !3794, line: 736, type: !120)
!4565 = !DILocalVariable(name: "flags", arg: 2, scope: !4560, file: !3794, line: 736, type: !80)
!4566 = !DILocation(line: 736, column: 53, scope: !4560)
!4567 = !DILocation(line: 736, column: 65, scope: !4560)
!4568 = !DILocation(line: 738, column: 23, scope: !4560)
!4569 = !DILocation(line: 738, column: 29, scope: !4560)
!4570 = !DILocation(line: 738, column: 9, scope: !4560)
!4571 = !DILocation(line: 738, column: 2, scope: !4560)
!4572 = !DISubprogram(name: "kvmalloc_node", scope: !3794, file: !3794, line: 735, type: !4573, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4573 = !DISubroutineType(types: !4574)
!4574 = !{!82, !120, !80, !117}
!4575 = distinct !DISubprogram(name: "jhash2", scope: !4576, file: !4576, line: 117, type: !4577, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4581)
!4576 = !DIFile(filename: "./include/linux/jhash.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ca86fa12155f71794da0bd26a93ce792")
!4577 = !DISubroutineType(types: !4578)
!4578 = !{!91, !4579, !91, !91}
!4579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4580, size: 64)
!4580 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !91)
!4581 = !{!4582, !4583, !4584, !4585, !4586, !4587}
!4582 = !DILocalVariable(name: "k", arg: 1, scope: !4575, file: !4576, line: 117, type: !4579)
!4583 = !DILocalVariable(name: "length", arg: 2, scope: !4575, file: !4576, line: 117, type: !91)
!4584 = !DILocalVariable(name: "initval", arg: 3, scope: !4575, file: !4576, line: 117, type: !91)
!4585 = !DILocalVariable(name: "a", scope: !4575, file: !4576, line: 119, type: !91)
!4586 = !DILocalVariable(name: "b", scope: !4575, file: !4576, line: 119, type: !91)
!4587 = !DILocalVariable(name: "c", scope: !4575, file: !4576, line: 119, type: !91)
!4588 = !DILocation(line: 117, column: 37, scope: !4575)
!4589 = !DILocation(line: 117, column: 44, scope: !4575)
!4590 = !DILocation(line: 117, column: 56, scope: !4575)
!4591 = !DILocation(line: 119, column: 2, scope: !4575)
!4592 = !DILocation(line: 119, column: 6, scope: !4575)
!4593 = !DILocation(line: 119, column: 9, scope: !4575)
!4594 = !DILocation(line: 119, column: 12, scope: !4575)
!4595 = !DILocation(line: 122, column: 31, scope: !4575)
!4596 = !DILocation(line: 122, column: 37, scope: !4575)
!4597 = !DILocation(line: 122, column: 28, scope: !4575)
!4598 = !DILocation(line: 122, column: 44, scope: !4575)
!4599 = !DILocation(line: 122, column: 42, scope: !4575)
!4600 = !DILocation(line: 122, column: 12, scope: !4575)
!4601 = !DILocation(line: 122, column: 8, scope: !4575)
!4602 = !DILocation(line: 122, column: 4, scope: !4575)
!4603 = !DILocation(line: 125, column: 2, scope: !4575)
!4604 = !DILocation(line: 125, column: 9, scope: !4575)
!4605 = !DILocation(line: 125, column: 16, scope: !4575)
!4606 = !DILocation(line: 126, column: 8, scope: !4607)
!4607 = distinct !DILexicalBlock(scope: !4575, file: !4576, line: 125, column: 21)
!4608 = !DILocation(line: 126, column: 5, scope: !4607)
!4609 = !DILocation(line: 127, column: 8, scope: !4607)
!4610 = !DILocation(line: 127, column: 5, scope: !4607)
!4611 = !DILocation(line: 128, column: 8, scope: !4607)
!4612 = !DILocation(line: 128, column: 5, scope: !4607)
!4613 = !DILocation(line: 129, column: 3, scope: !4614)
!4614 = distinct !DILexicalBlock(scope: !4607, file: !4576, line: 129, column: 3)
!4615 = !DILocation(line: 130, column: 10, scope: !4607)
!4616 = !DILocation(line: 131, column: 5, scope: !4607)
!4617 = distinct !{!4617, !4603, !4618, !4067, !4068}
!4618 = !DILocation(line: 132, column: 2, scope: !4575)
!4619 = !DILocation(line: 135, column: 10, scope: !4575)
!4620 = !DILocation(line: 135, column: 2, scope: !4575)
!4621 = !DILocation(line: 136, column: 15, scope: !4622)
!4622 = distinct !DILexicalBlock(scope: !4575, file: !4576, line: 135, column: 18)
!4623 = !DILocation(line: 136, column: 12, scope: !4622)
!4624 = !DILocation(line: 136, column: 10, scope: !4622)
!4625 = !DILocation(line: 137, column: 15, scope: !4622)
!4626 = !DILocation(line: 137, column: 12, scope: !4622)
!4627 = !DILocation(line: 137, column: 10, scope: !4622)
!4628 = !DILocation(line: 138, column: 15, scope: !4622)
!4629 = !DILocation(line: 138, column: 12, scope: !4622)
!4630 = !DILocation(line: 139, column: 3, scope: !4631)
!4631 = distinct !DILexicalBlock(scope: !4622, file: !4576, line: 139, column: 3)
!4632 = !DILocation(line: 140, column: 3, scope: !4622)
!4633 = !DILocation(line: 145, column: 9, scope: !4575)
!4634 = !DILocation(line: 146, column: 1, scope: !4575)
!4635 = !DILocation(line: 145, column: 2, scope: !4575)
!4636 = distinct !DISubprogram(name: "size_mul", scope: !4552, file: !4552, line: 189, type: !4637, scopeLine: 190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4639)
!4637 = !DISubroutineType(types: !4638)
!4638 = !{!120, !120, !120}
!4639 = !{!4640, !4641, !4642}
!4640 = !DILocalVariable(name: "factor1", arg: 1, scope: !4636, file: !4552, line: 189, type: !120)
!4641 = !DILocalVariable(name: "factor2", arg: 2, scope: !4636, file: !4552, line: 189, type: !120)
!4642 = !DILocalVariable(name: "bytes", scope: !4636, file: !4552, line: 191, type: !120)
!4643 = !DILocation(line: 189, column: 51, scope: !4636)
!4644 = !DILocation(line: 189, column: 67, scope: !4636)
!4645 = !DILocation(line: 191, column: 2, scope: !4636)
!4646 = !DILocation(line: 191, column: 9, scope: !4636)
!4647 = !DILocation(line: 193, column: 6, scope: !4648)
!4648 = distinct !DILexicalBlock(scope: !4636, file: !4552, line: 193, column: 6)
!4649 = !DILocation(line: 193, column: 6, scope: !4636)
!4650 = !DILocation(line: 194, column: 3, scope: !4648)
!4651 = !DILocation(line: 196, column: 9, scope: !4636)
!4652 = !DILocation(line: 196, column: 2, scope: !4636)
!4653 = !DILocation(line: 197, column: 1, scope: !4636)
!4654 = distinct !DISubprogram(name: "rol32", scope: !4522, file: !4522, line: 125, type: !4655, scopeLine: 126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4657)
!4655 = !DISubroutineType(types: !4656)
!4656 = !{!93, !93, !7}
!4657 = !{!4658, !4659}
!4658 = !DILocalVariable(name: "word", arg: 1, scope: !4654, file: !4522, line: 125, type: !93)
!4659 = !DILocalVariable(name: "shift", arg: 2, scope: !4654, file: !4522, line: 125, type: !7)
!4660 = !DILocation(line: 125, column: 33, scope: !4654)
!4661 = !DILocation(line: 125, column: 52, scope: !4654)
!4662 = !DILocation(line: 127, column: 10, scope: !4654)
!4663 = !DILocation(line: 127, column: 19, scope: !4654)
!4664 = !DILocation(line: 127, column: 25, scope: !4654)
!4665 = !DILocation(line: 127, column: 15, scope: !4654)
!4666 = !DILocation(line: 127, column: 35, scope: !4654)
!4667 = !DILocation(line: 127, column: 46, scope: !4654)
!4668 = !DILocation(line: 127, column: 45, scope: !4654)
!4669 = !DILocation(line: 127, column: 53, scope: !4654)
!4670 = !DILocation(line: 127, column: 40, scope: !4654)
!4671 = !DILocation(line: 127, column: 32, scope: !4654)
!4672 = !DILocation(line: 127, column: 2, scope: !4654)
!4673 = distinct !DISubprogram(name: "stackdepot_memcmp", scope: !3, file: !3, line: 332, type: !4674, scopeLine: 334, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4676)
!4674 = !DISubroutineType(types: !4675)
!4675 = !{!117, !4430, !4430, !7}
!4676 = !{!4677, !4678, !4679}
!4677 = !DILocalVariable(name: "u1", arg: 1, scope: !4673, file: !3, line: 332, type: !4430)
!4678 = !DILocalVariable(name: "u2", arg: 2, scope: !4673, file: !3, line: 332, type: !4430)
!4679 = !DILocalVariable(name: "n", arg: 3, scope: !4673, file: !3, line: 333, type: !7)
!4680 = !DILocation(line: 332, column: 44, scope: !4673)
!4681 = !DILocation(line: 332, column: 69, scope: !4673)
!4682 = !DILocation(line: 333, column: 17, scope: !4673)
!4683 = !DILocation(line: 335, column: 2, scope: !4673)
!4684 = !DILocation(line: 335, column: 11, scope: !4685)
!4685 = distinct !DILexicalBlock(scope: !4686, file: !3, line: 335, column: 2)
!4686 = distinct !DILexicalBlock(scope: !4673, file: !3, line: 335, column: 2)
!4687 = !DILocation(line: 335, column: 2, scope: !4686)
!4688 = !DILocation(line: 336, column: 8, scope: !4689)
!4689 = distinct !DILexicalBlock(scope: !4690, file: !3, line: 336, column: 7)
!4690 = distinct !DILexicalBlock(scope: !4685, file: !3, line: 335, column: 28)
!4691 = !DILocation(line: 336, column: 7, scope: !4689)
!4692 = !DILocation(line: 336, column: 15, scope: !4689)
!4693 = !DILocation(line: 336, column: 14, scope: !4689)
!4694 = !DILocation(line: 336, column: 11, scope: !4689)
!4695 = !DILocation(line: 336, column: 7, scope: !4690)
!4696 = !DILocation(line: 337, column: 4, scope: !4689)
!4697 = !DILocation(line: 338, column: 2, scope: !4690)
!4698 = !DILocation(line: 335, column: 18, scope: !4685)
!4699 = !DILocation(line: 335, column: 24, scope: !4685)
!4700 = !DILocation(line: 335, column: 2, scope: !4685)
!4701 = distinct !{!4701, !4687, !4702, !4067, !4068}
!4702 = !DILocation(line: 338, column: 2, scope: !4686)
!4703 = !DILocation(line: 339, column: 2, scope: !4673)
!4704 = !DILocation(line: 340, column: 1, scope: !4673)
!4705 = distinct !DISubprogram(name: "size_add", scope: !4552, file: !4552, line: 208, type: !4637, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4706)
!4706 = !{!4707, !4708, !4709}
!4707 = !DILocalVariable(name: "addend1", arg: 1, scope: !4705, file: !4552, line: 208, type: !120)
!4708 = !DILocalVariable(name: "addend2", arg: 2, scope: !4705, file: !4552, line: 208, type: !120)
!4709 = !DILocalVariable(name: "bytes", scope: !4705, file: !4552, line: 210, type: !120)
!4710 = !DILocation(line: 208, column: 51, scope: !4705)
!4711 = !DILocation(line: 208, column: 67, scope: !4705)
!4712 = !DILocation(line: 210, column: 2, scope: !4705)
!4713 = !DILocation(line: 210, column: 9, scope: !4705)
!4714 = !DILocation(line: 212, column: 6, scope: !4715)
!4715 = distinct !DILexicalBlock(scope: !4705, file: !4552, line: 212, column: 6)
!4716 = !DILocation(line: 212, column: 6, scope: !4705)
!4717 = !DILocation(line: 213, column: 3, scope: !4715)
!4718 = !DILocation(line: 215, column: 9, scope: !4705)
!4719 = !DILocation(line: 215, column: 2, scope: !4705)
!4720 = !DILocation(line: 216, column: 1, scope: !4705)
!4721 = !DISubprogram(name: "memcpy", scope: !4722, file: !4722, line: 18, type: !4723, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4722 = !DIFile(filename: "./arch/x86/include/asm/string_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2915e714ca16a16b791287599ade0ea7")
!4723 = !DISubroutineType(types: !4724)
!4724 = !{!82, !82, !2576, !120}
