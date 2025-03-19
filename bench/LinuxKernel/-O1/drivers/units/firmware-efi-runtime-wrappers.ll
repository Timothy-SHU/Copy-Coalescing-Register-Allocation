; ModuleID = 'drivers/firmware/efi/runtime-wrappers.c'
source_filename = "drivers/firmware/efi/runtime-wrappers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.efi = type { ptr, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.efi_memory_map, i64 }
%struct.efi_memory_map = type { i64, ptr, ptr, i32, i64, i64, i64 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.efi_runtime_work = type { ptr, i64, %struct.work_struct, i32, %struct.completion, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.lock_class_key = type {}
%union.efi_rts_args = type { %struct.anon.5 }
%struct.anon.5 = type { ptr, ptr, ptr, ptr, ptr }
%struct.anon.1 = type { ptr, ptr }
%struct.anon.2 = type { ptr }
%struct.anon.3 = type { ptr, ptr, ptr }
%struct.anon.4 = type { i8, ptr }
%struct.anon.6 = type { ptr, ptr, ptr }
%struct.anon.7 = type { ptr, ptr, i32, i64, ptr }
%struct.anon.13 = type { %struct.efi_table_hdr_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.efi_table_hdr_t = type { i64, i32, i32, i32, i32 }
%struct.anon.9 = type { ptr }
%struct.anon.8 = type { i32, ptr, ptr, ptr }
%struct.anon.10 = type { ptr, i64, i64 }
%struct.anon.11 = type { ptr, i64, ptr, ptr }
%struct.anon.12 = type { ptr, i64, ptr }

@.str = private unnamed_addr constant [40 x i8] c"drivers/firmware/efi/runtime-wrappers.c\00", align 1, !dbg !0
@efi_call_virt_check_flags._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 5000, i32 10, i32 0, i32 0, i64 0, i64 0 }, align 8, !dbg !7
@__func__.efi_call_virt_check_flags = private unnamed_addr constant [26 x i8] c"efi_call_virt_check_flags\00", align 1, !dbg !86
@.str.1 = private unnamed_addr constant [84 x i8] c"\013efi: [Firmware Bug]: IRQ flags corrupted (0x%08lx=>0x%08lx) by EFI call from %pS\0A\00", align 1, !dbg !92
@efi = external dso_local global %struct.efi, align 8
@efi_runtime_lock = internal global %struct.semaphore { %struct.raw_spinlock zeroinitializer, i32 1, %struct.list_head { ptr getelementptr (i8, ptr @efi_runtime_lock, i64 8), ptr getelementptr (i8, ptr @efi_runtime_lock, i64 8) } }, align 8, !dbg !312
@efi_rts_work = hidden global %struct.efi_runtime_work zeroinitializer, align 8, !dbg !97
@efi_disable_ibt_for_runtime = external dso_local global i8, align 1
@.str.2 = private unnamed_addr constant [108 x i8] c"\014efi: failed to invoke the reset_system() runtime service:\0Acould not get exclusive access to the firmware\0A\00", align 1, !dbg !307
@__efi_queue_work.__already_done = internal global i8 0, section ".data..once", align 1, !dbg !320
@.str.3 = private unnamed_addr constant [43 x i8] c"\014efi: EFI Runtime Services are disabled!\0A\00", align 1, !dbg !344
@__efi_queue_work.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !349
@efi_rts_wq = external dso_local global ptr, align 8
@.str.4 = private unnamed_addr constant [44 x i8] c"\013efi: Failed to queue work to efi_rts_wq.\0A\00", align 1, !dbg !354
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !359
@.str.5 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1, !dbg !367
@.str.6 = private unnamed_addr constant [57 x i8] c"\013efi: Requested executing invalid EFI Runtime Service.\0A\00", align 1, !dbg !372

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @efi_call_virt_save_flags() #0 align 16 !dbg !412 {
entry:
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #14, !dbg !421
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !416, metadata !DIExpression()), !dbg !422
  br label %do.body, !dbg !423

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #14, !dbg !424
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !417, metadata !DIExpression()), !dbg !424
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #14, !dbg !424
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !420, metadata !DIExpression()), !dbg !424
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !424
  %conv = zext i1 %cmp to i32, !dbg !424
  store i32 1, ptr %tmp, align 4, !dbg !424
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #14, !dbg !425
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #14, !dbg !425
  %0 = load i32, ptr %tmp, align 4, !dbg !424
  %call = call i64 @arch_local_save_flags() #15, !dbg !425
  store i64 %call, ptr %flags, align 8, !dbg !425
  br label %do.cond, !dbg !425

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !425

do.end:                                           ; preds = %do.cond
  %1 = load i64, ptr %flags, align 8, !dbg !426
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #14, !dbg !427
  ret i64 %1, !dbg !428
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_save_flags() #3 align 16 !dbg !429 {
entry:
  %call = call i64 @native_save_fl() #15, !dbg !431
  ret i64 %call, !dbg !432
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @efi_call_virt_check_flags(i64 noundef %flags, ptr noundef %caller) #0 align 16 !dbg !9 {
entry:
  %flags.addr = alloca i64, align 8
  %caller.addr = alloca ptr, align 8
  %cur_flags = alloca i64, align 8
  %mismatch = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp40 = alloca i32, align 4
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !378, metadata !DIExpression()), !dbg !433
  store ptr %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !379, metadata !DIExpression()), !dbg !434
  call void @llvm.lifetime.start.p0(i64 8, ptr %cur_flags) #14, !dbg !435
  call void @llvm.dbg.declare(metadata ptr %cur_flags, metadata !380, metadata !DIExpression()), !dbg !436
  call void @llvm.lifetime.start.p0(i64 8, ptr %mismatch) #14, !dbg !435
  call void @llvm.dbg.declare(metadata ptr %mismatch, metadata !381, metadata !DIExpression()), !dbg !437
  %call = call i64 @efi_call_virt_save_flags() #15, !dbg !438
  store i64 %call, ptr %cur_flags, align 8, !dbg !439
  %0 = load i64, ptr %flags.addr, align 8, !dbg !440
  %1 = load i64, ptr %cur_flags, align 8, !dbg !441
  %xor = xor i64 %0, %1, !dbg !442
  store i64 %xor, ptr %mismatch, align 8, !dbg !443
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !444
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !382, metadata !DIExpression()), !dbg !444
  %2 = load i64, ptr %mismatch, align 8, !dbg !444
  %and = and i64 %2, 512, !dbg !444
  %tobool = icmp ne i64 %and, 0, !dbg !444
  %lnot = xor i1 %tobool, true, !dbg !444
  %lnot1 = xor i1 %lnot, true, !dbg !444
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !444
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !444
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !445
  %tobool2 = icmp ne i32 %3, 0, !dbg !445
  %lnot3 = xor i1 %tobool2, true, !dbg !445
  %lnot5 = xor i1 %lnot3, true, !dbg !445
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !445
  %conv = sext i32 %lnot.ext6 to i64, !dbg !445
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !445
  %tobool7 = icmp ne i64 %expval, 0, !dbg !445
  br i1 %tobool7, label %if.then, label %if.end, !dbg !444

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !445

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #14, !dbg !446
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !385, metadata !DIExpression()), !dbg !446
  store i32 2307, ptr %__flags, align 4, !dbg !446
  br label %do.body8, !dbg !446

do.body8:                                         ; preds = %do.body
  br label %do.cond, !dbg !447

do.cond:                                          ; preds = %do.body8
  br label %do.end, !dbg !447

do.end:                                           ; preds = %do.cond
  br label %do.body9, !dbg !446

do.body9:                                         ; preds = %do.end
  %4 = load i32, ptr %__flags, align 4, !dbg !449
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 155, i32 %4, i64 12) #14, !dbg !449, !srcloc !451
  br label %do.cond10, !dbg !449

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !449

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !446

do.body12:                                        ; preds = %do.end11
  br label %do.cond13, !dbg !452

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !452

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #14, !dbg !445
  br label %do.cond15, !dbg !446

do.cond15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !446

do.end16:                                         ; preds = %do.cond15
  br label %if.end, !dbg !446

if.end:                                           ; preds = %do.end16, %entry
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !444
  %tobool17 = icmp ne i32 %5, 0, !dbg !444
  %lnot18 = xor i1 %tobool17, true, !dbg !444
  %lnot20 = xor i1 %lnot18, true, !dbg !444
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !444
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !444
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !444
  store i64 %expval23, ptr %tmp, align 8, !dbg !445
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !454
  %6 = load i64, ptr %tmp, align 8, !dbg !444
  %tobool24 = icmp ne i64 %6, 0, !dbg !454
  br i1 %tobool24, label %if.end26, label %if.then25, !dbg !455

if.then25:                                        ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !456

if.end26:                                         ; preds = %if.end
  call void @add_taint(i32 noundef 11, i32 noundef 1) #15, !dbg !457
  %call27 = call i32 @___ratelimit(ptr noundef @efi_call_virt_check_flags._rs, ptr noundef @__func__.efi_call_virt_check_flags) #15, !dbg !458
  %tobool28 = icmp ne i32 %call27, 0, !dbg !458
  br i1 %tobool28, label %if.then29, label %if.end36, !dbg !461

if.then29:                                        ; preds = %if.end26
  br label %do.body30, !dbg !462

do.body30:                                        ; preds = %if.then29
  br label %do.cond31, !dbg !464

do.cond31:                                        ; preds = %do.body30
  br label %do.end32, !dbg !464

do.end32:                                         ; preds = %do.cond31
  %7 = load i64, ptr %flags.addr, align 8, !dbg !462
  %8 = load i64, ptr %cur_flags, align 8, !dbg !462
  %9 = load ptr, ptr %caller.addr, align 8, !dbg !462
  %tobool34 = icmp ne ptr %9, null, !dbg !462
  br i1 %tobool34, label %cond.true, label %cond.false, !dbg !462

cond.true:                                        ; preds = %do.end32
  br label %cond.end, !dbg !462

cond.false:                                       ; preds = %do.end32
  %10 = call ptr @llvm.returnaddress(i32 0), !dbg !462
  br label %cond.end, !dbg !462

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %9, %cond.true ], [ %10, %cond.false ], !dbg !462
  %call35 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1, i64 noundef %7, i64 noundef %8, ptr noundef %cond) #16, !dbg !462
  store i32 %call35, ptr %tmp33, align 4, !dbg !464
  %11 = load i32, ptr %tmp33, align 4, !dbg !462
  br label %if.end36, !dbg !458

if.end36:                                         ; preds = %cond.end, %if.end26
  br label %do.body37, !dbg !466

do.body37:                                        ; preds = %if.end36
  br label %do.body38, !dbg !467

do.body38:                                        ; preds = %do.body37
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #14, !dbg !468
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !388, metadata !DIExpression()), !dbg !468
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #14, !dbg !468
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !392, metadata !DIExpression()), !dbg !468
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !468
  %conv39 = zext i1 %cmp to i32, !dbg !468
  store i32 1, ptr %tmp40, align 4, !dbg !468
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #14, !dbg !469
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #14, !dbg !469
  %12 = load i32, ptr %tmp40, align 4, !dbg !468
  br label %do.body41, !dbg !469

do.body41:                                        ; preds = %do.body38
  br label %do.cond42, !dbg !470

do.cond42:                                        ; preds = %do.body41
  br label %do.end43, !dbg !470

do.end43:                                         ; preds = %do.cond42
  %13 = load i64, ptr %flags.addr, align 8, !dbg !469
  call void @arch_local_irq_restore(i64 noundef %13) #15, !dbg !469
  br label %do.cond44, !dbg !469

do.cond44:                                        ; preds = %do.end43
  br label %do.end45, !dbg !469

do.end45:                                         ; preds = %do.cond44
  br label %do.cond46, !dbg !467

do.cond46:                                        ; preds = %do.end45
  br label %do.end47, !dbg !467

do.end47:                                         ; preds = %do.cond46
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !472
  br label %cleanup, !dbg !472

cleanup:                                          ; preds = %do.end47, %if.then25
  call void @llvm.lifetime.end.p0(i64 8, ptr %mismatch) #14, !dbg !472
  call void @llvm.lifetime.end.p0(i64 8, ptr %cur_flags) #14, !dbg !472
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !472

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !473 dso_local void @add_taint(i32 noundef, i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !476 dso_local i32 @___ratelimit(ptr noundef, ptr noundef) #5

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !481 dso_local i32 @_printk(ptr noundef, ...) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_restore(i64 noundef %flags) #3 align 16 !dbg !485 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !489, metadata !DIExpression()), !dbg !490
  %0 = load i64, ptr %flags.addr, align 8, !dbg !491
  %call = call i32 @arch_irqs_disabled_flags(i64 noundef %0) #15, !dbg !493
  %tobool = icmp ne i32 %call, 0, !dbg !493
  br i1 %tobool, label %if.end, label %if.then, !dbg !494

if.then:                                          ; preds = %entry
  call void @arch_local_irq_enable() #15, !dbg !495
  br label %if.end, !dbg !495

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !496
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @efi_native_runtime_setup() #7 section ".init.text" align 16 !dbg !497 {
entry:
  store ptr @virt_efi_get_time, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 13), align 8, !dbg !500
  store ptr @virt_efi_set_time, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 14), align 8, !dbg !501
  store ptr @virt_efi_get_wakeup_time, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 15), align 8, !dbg !502
  store ptr @virt_efi_set_wakeup_time, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 16), align 8, !dbg !503
  store ptr @virt_efi_get_variable, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 17), align 8, !dbg !504
  store ptr @virt_efi_get_next_variable, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 18), align 8, !dbg !505
  store ptr @virt_efi_set_variable, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 19), align 8, !dbg !506
  store ptr @virt_efi_set_variable_nb, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 20), align 8, !dbg !507
  store ptr @virt_efi_get_next_high_mono_count, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 25), align 8, !dbg !508
  store ptr @virt_efi_reset_system, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 26), align 8, !dbg !509
  store ptr @virt_efi_query_variable_info, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 21), align 8, !dbg !510
  store ptr @virt_efi_query_variable_info_nb, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 22), align 8, !dbg !511
  store ptr @virt_efi_update_capsule, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 23), align 8, !dbg !512
  store ptr @virt_efi_query_capsule_caps, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 24), align 8, !dbg !513
  ret void, !dbg !514
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @virt_efi_get_time(ptr noundef %tm, ptr noundef %tc) #0 align 16 !dbg !515 {
entry:
  %retval = alloca i64, align 8
  %tm.addr = alloca ptr, align 8
  %tc.addr = alloca ptr, align 8
  %status = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %.compoundliteral = alloca %union.efi_rts_args, align 8
  store ptr %tm, ptr %tm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tm.addr, metadata !519, metadata !DIExpression()), !dbg !522
  store ptr %tc, ptr %tc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tc.addr, metadata !520, metadata !DIExpression()), !dbg !523
  call void @llvm.lifetime.start.p0(i64 8, ptr %status) #14, !dbg !524
  call void @llvm.dbg.declare(metadata ptr %status, metadata !521, metadata !DIExpression()), !dbg !525
  %call = call i32 @down_interruptible(ptr noundef @efi_runtime_lock) #15, !dbg !526
  %tobool = icmp ne i32 %call, 0, !dbg !526
  br i1 %tobool, label %if.then, label %if.end, !dbg !528

if.then:                                          ; preds = %entry
  store i64 -9223372036854775787, ptr %retval, align 8, !dbg !529
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !529

if.end:                                           ; preds = %entry
  %time = getelementptr inbounds %struct.anon.1, ptr %.compoundliteral, i32 0, i32 0, !dbg !530
  %0 = load ptr, ptr %tm.addr, align 8, !dbg !530
  store ptr %0, ptr %time, align 8, !dbg !530
  %capabilities = getelementptr inbounds %struct.anon.1, ptr %.compoundliteral, i32 0, i32 1, !dbg !530
  %1 = load ptr, ptr %tc.addr, align 8, !dbg !530
  store ptr %1, ptr %capabilities, align 8, !dbg !530
  %call1 = call i64 @__efi_queue_work(i32 noundef 1, ptr noundef %.compoundliteral) #15, !dbg !530
  store i64 %call1, ptr %status, align 8, !dbg !531
  call void @up(ptr noundef @efi_runtime_lock) #15, !dbg !532
  %2 = load i64, ptr %status, align 8, !dbg !533
  store i64 %2, ptr %retval, align 8, !dbg !534
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !534

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %status) #14, !dbg !535
  %3 = load i64, ptr %retval, align 8, !dbg !535
  ret i64 %3, !dbg !535
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @virt_efi_set_time(ptr noundef %tm) #0 align 16 !dbg !536 {
entry:
  %retval = alloca i64, align 8
  %tm.addr = alloca ptr, align 8
  %status = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %.compoundliteral = alloca %union.efi_rts_args, align 8
  store ptr %tm, ptr %tm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tm.addr, metadata !540, metadata !DIExpression()), !dbg !542
  call void @llvm.lifetime.start.p0(i64 8, ptr %status) #14, !dbg !543
  call void @llvm.dbg.declare(metadata ptr %status, metadata !541, metadata !DIExpression()), !dbg !544
  %call = call i32 @down_interruptible(ptr noundef @efi_runtime_lock) #15, !dbg !545
  %tobool = icmp ne i32 %call, 0, !dbg !545
  br i1 %tobool, label %if.then, label %if.end, !dbg !547

if.then:                                          ; preds = %entry
  store i64 -9223372036854775787, ptr %retval, align 8, !dbg !548
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !548

if.end:                                           ; preds = %entry
  call void @llvm.memset.p0.i64(ptr align 8 %.compoundliteral, i8 0, i64 40, i1 false), !dbg !549
  %time = getelementptr inbounds %struct.anon.2, ptr %.compoundliteral, i32 0, i32 0, !dbg !549
  %0 = load ptr, ptr %tm.addr, align 8, !dbg !549
  store ptr %0, ptr %time, align 8, !dbg !549
  %call1 = call i64 @__efi_queue_work(i32 noundef 2, ptr noundef %.compoundliteral) #15, !dbg !549
  store i64 %call1, ptr %status, align 8, !dbg !550
  call void @up(ptr noundef @efi_runtime_lock) #15, !dbg !551
  %1 = load i64, ptr %status, align 8, !dbg !552
  store i64 %1, ptr %retval, align 8, !dbg !553
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !553

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %status) #14, !dbg !554
  %2 = load i64, ptr %retval, align 8, !dbg !554
  ret i64 %2, !dbg !554
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @virt_efi_get_wakeup_time(ptr noundef %enabled, ptr noundef %pending, ptr noundef %tm) #0 align 16 !dbg !555 {
entry:
  %retval = alloca i64, align 8
  %enabled.addr = alloca ptr, align 8
  %pending.addr = alloca ptr, align 8
  %tm.addr = alloca ptr, align 8
  %status = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %.compoundliteral = alloca %union.efi_rts_args, align 8
  store ptr %enabled, ptr %enabled.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %enabled.addr, metadata !559, metadata !DIExpression()), !dbg !563
  store ptr %pending, ptr %pending.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pending.addr, metadata !560, metadata !DIExpression()), !dbg !564
  store ptr %tm, ptr %tm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tm.addr, metadata !561, metadata !DIExpression()), !dbg !565
  call void @llvm.lifetime.start.p0(i64 8, ptr %status) #14, !dbg !566
  call void @llvm.dbg.declare(metadata ptr %status, metadata !562, metadata !DIExpression()), !dbg !567
  %call = call i32 @down_interruptible(ptr noundef @efi_runtime_lock) #15, !dbg !568
  %tobool = icmp ne i32 %call, 0, !dbg !568
  br i1 %tobool, label %if.then, label %if.end, !dbg !570

if.then:                                          ; preds = %entry
  store i64 -9223372036854775787, ptr %retval, align 8, !dbg !571
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !571

if.end:                                           ; preds = %entry
  %enabled1 = getelementptr inbounds %struct.anon.3, ptr %.compoundliteral, i32 0, i32 0, !dbg !572
  %0 = load ptr, ptr %enabled.addr, align 8, !dbg !572
  store ptr %0, ptr %enabled1, align 8, !dbg !572
  %pending2 = getelementptr inbounds %struct.anon.3, ptr %.compoundliteral, i32 0, i32 1, !dbg !572
  %1 = load ptr, ptr %pending.addr, align 8, !dbg !572
  store ptr %1, ptr %pending2, align 8, !dbg !572
  %time = getelementptr inbounds %struct.anon.3, ptr %.compoundliteral, i32 0, i32 2, !dbg !572
  %2 = load ptr, ptr %tm.addr, align 8, !dbg !572
  store ptr %2, ptr %time, align 8, !dbg !572
  %call3 = call i64 @__efi_queue_work(i32 noundef 3, ptr noundef %.compoundliteral) #15, !dbg !572
  store i64 %call3, ptr %status, align 8, !dbg !573
  call void @up(ptr noundef @efi_runtime_lock) #15, !dbg !574
  %3 = load i64, ptr %status, align 8, !dbg !575
  store i64 %3, ptr %retval, align 8, !dbg !576
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !576

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %status) #14, !dbg !577
  %4 = load i64, ptr %retval, align 8, !dbg !577
  ret i64 %4, !dbg !577
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @virt_efi_set_wakeup_time(i8 noundef zeroext %enabled, ptr noundef %tm) #0 align 16 !dbg !578 {
entry:
  %retval = alloca i64, align 8
  %enabled.addr = alloca i8, align 1
  %tm.addr = alloca ptr, align 8
  %status = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %.compoundliteral = alloca %union.efi_rts_args, align 8
  store i8 %enabled, ptr %enabled.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %enabled.addr, metadata !582, metadata !DIExpression()), !dbg !585
  store ptr %tm, ptr %tm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tm.addr, metadata !583, metadata !DIExpression()), !dbg !586
  call void @llvm.lifetime.start.p0(i64 8, ptr %status) #14, !dbg !587
  call void @llvm.dbg.declare(metadata ptr %status, metadata !584, metadata !DIExpression()), !dbg !588
  %call = call i32 @down_interruptible(ptr noundef @efi_runtime_lock) #15, !dbg !589
  %tobool = icmp ne i32 %call, 0, !dbg !589
  br i1 %tobool, label %if.then, label %if.end, !dbg !591

if.then:                                          ; preds = %entry
  store i64 -9223372036854775787, ptr %retval, align 8, !dbg !592
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !592

if.end:                                           ; preds = %entry
  call void @llvm.memset.p0.i64(ptr align 8 %.compoundliteral, i8 0, i64 40, i1 false), !dbg !593
  %enable = getelementptr inbounds %struct.anon.4, ptr %.compoundliteral, i32 0, i32 0, !dbg !593
  %0 = load i8, ptr %enabled.addr, align 1, !dbg !593
  store i8 %0, ptr %enable, align 8, !dbg !593
  %time = getelementptr inbounds %struct.anon.4, ptr %.compoundliteral, i32 0, i32 1, !dbg !593
  %1 = load ptr, ptr %tm.addr, align 8, !dbg !593
  store ptr %1, ptr %time, align 8, !dbg !593
  %call1 = call i64 @__efi_queue_work(i32 noundef 4, ptr noundef %.compoundliteral) #15, !dbg !593
  store i64 %call1, ptr %status, align 8, !dbg !594
  call void @up(ptr noundef @efi_runtime_lock) #15, !dbg !595
  %2 = load i64, ptr %status, align 8, !dbg !596
  store i64 %2, ptr %retval, align 8, !dbg !597
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !597

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %status) #14, !dbg !598
  %3 = load i64, ptr %retval, align 8, !dbg !598
  ret i64 %3, !dbg !598
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @virt_efi_get_variable(ptr noundef %name, ptr noundef %vendor, ptr noundef %attr, ptr noundef %data_size, ptr noundef %data) #0 align 16 !dbg !599 {
entry:
  %retval = alloca i64, align 8
  %name.addr = alloca ptr, align 8
  %vendor.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %data_size.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %status = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %.compoundliteral = alloca %union.efi_rts_args, align 8
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !603, metadata !DIExpression()), !dbg !609
  store ptr %vendor, ptr %vendor.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vendor.addr, metadata !604, metadata !DIExpression()), !dbg !610
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !605, metadata !DIExpression()), !dbg !611
  store ptr %data_size, ptr %data_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data_size.addr, metadata !606, metadata !DIExpression()), !dbg !612
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !607, metadata !DIExpression()), !dbg !613
  call void @llvm.lifetime.start.p0(i64 8, ptr %status) #14, !dbg !614
  call void @llvm.dbg.declare(metadata ptr %status, metadata !608, metadata !DIExpression()), !dbg !615
  %call = call i32 @down_interruptible(ptr noundef @efi_runtime_lock) #15, !dbg !616
  %tobool = icmp ne i32 %call, 0, !dbg !616
  br i1 %tobool, label %if.then, label %if.end, !dbg !618

if.then:                                          ; preds = %entry
  store i64 -9223372036854775787, ptr %retval, align 8, !dbg !619
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !619

if.end:                                           ; preds = %entry
  %name1 = getelementptr inbounds %struct.anon.5, ptr %.compoundliteral, i32 0, i32 0, !dbg !620
  %0 = load ptr, ptr %name.addr, align 8, !dbg !620
  store ptr %0, ptr %name1, align 8, !dbg !620
  %vendor2 = getelementptr inbounds %struct.anon.5, ptr %.compoundliteral, i32 0, i32 1, !dbg !620
  %1 = load ptr, ptr %vendor.addr, align 8, !dbg !620
  store ptr %1, ptr %vendor2, align 8, !dbg !620
  %attr3 = getelementptr inbounds %struct.anon.5, ptr %.compoundliteral, i32 0, i32 2, !dbg !620
  %2 = load ptr, ptr %attr.addr, align 8, !dbg !620
  store ptr %2, ptr %attr3, align 8, !dbg !620
  %data_size4 = getelementptr inbounds %struct.anon.5, ptr %.compoundliteral, i32 0, i32 3, !dbg !620
  %3 = load ptr, ptr %data_size.addr, align 8, !dbg !620
  store ptr %3, ptr %data_size4, align 8, !dbg !620
  %data5 = getelementptr inbounds %struct.anon.5, ptr %.compoundliteral, i32 0, i32 4, !dbg !620
  %4 = load ptr, ptr %data.addr, align 8, !dbg !620
  store ptr %4, ptr %data5, align 8, !dbg !620
  %call6 = call i64 @__efi_queue_work(i32 noundef 5, ptr noundef %.compoundliteral) #15, !dbg !620
  store i64 %call6, ptr %status, align 8, !dbg !621
  call void @up(ptr noundef @efi_runtime_lock) #15, !dbg !622
  %5 = load i64, ptr %status, align 8, !dbg !623
  store i64 %5, ptr %retval, align 8, !dbg !624
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !624

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %status) #14, !dbg !625
  %6 = load i64, ptr %retval, align 8, !dbg !625
  ret i64 %6, !dbg !625
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @virt_efi_get_next_variable(ptr noundef %name_size, ptr noundef %name, ptr noundef %vendor) #0 align 16 !dbg !626 {
entry:
  %retval = alloca i64, align 8
  %name_size.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %vendor.addr = alloca ptr, align 8
  %status = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %.compoundliteral = alloca %union.efi_rts_args, align 8
  store ptr %name_size, ptr %name_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name_size.addr, metadata !630, metadata !DIExpression()), !dbg !634
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !631, metadata !DIExpression()), !dbg !635
  store ptr %vendor, ptr %vendor.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vendor.addr, metadata !632, metadata !DIExpression()), !dbg !636
  call void @llvm.lifetime.start.p0(i64 8, ptr %status) #14, !dbg !637
  call void @llvm.dbg.declare(metadata ptr %status, metadata !633, metadata !DIExpression()), !dbg !638
  %call = call i32 @down_interruptible(ptr noundef @efi_runtime_lock) #15, !dbg !639
  %tobool = icmp ne i32 %call, 0, !dbg !639
  br i1 %tobool, label %if.then, label %if.end, !dbg !641

if.then:                                          ; preds = %entry
  store i64 -9223372036854775787, ptr %retval, align 8, !dbg !642
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !642

if.end:                                           ; preds = %entry
  %name_size1 = getelementptr inbounds %struct.anon.6, ptr %.compoundliteral, i32 0, i32 0, !dbg !643
  %0 = load ptr, ptr %name_size.addr, align 8, !dbg !643
  store ptr %0, ptr %name_size1, align 8, !dbg !643
  %name2 = getelementptr inbounds %struct.anon.6, ptr %.compoundliteral, i32 0, i32 1, !dbg !643
  %1 = load ptr, ptr %name.addr, align 8, !dbg !643
  store ptr %1, ptr %name2, align 8, !dbg !643
  %vendor3 = getelementptr inbounds %struct.anon.6, ptr %.compoundliteral, i32 0, i32 2, !dbg !643
  %2 = load ptr, ptr %vendor.addr, align 8, !dbg !643
  store ptr %2, ptr %vendor3, align 8, !dbg !643
  %call4 = call i64 @__efi_queue_work(i32 noundef 6, ptr noundef %.compoundliteral) #15, !dbg !643
  store i64 %call4, ptr %status, align 8, !dbg !644
  call void @up(ptr noundef @efi_runtime_lock) #15, !dbg !645
  %3 = load i64, ptr %status, align 8, !dbg !646
  store i64 %3, ptr %retval, align 8, !dbg !647
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !647

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %status) #14, !dbg !648
  %4 = load i64, ptr %retval, align 8, !dbg !648
  ret i64 %4, !dbg !648
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @virt_efi_set_variable(ptr noundef %name, ptr noundef %vendor, i32 noundef %attr, i64 noundef %data_size, ptr noundef %data) #0 align 16 !dbg !649 {
entry:
  %retval = alloca i64, align 8
  %name.addr = alloca ptr, align 8
  %vendor.addr = alloca ptr, align 8
  %attr.addr = alloca i32, align 4
  %data_size.addr = alloca i64, align 8
  %data.addr = alloca ptr, align 8
  %status = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %.compoundliteral = alloca %union.efi_rts_args, align 8
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !653, metadata !DIExpression()), !dbg !659
  store ptr %vendor, ptr %vendor.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vendor.addr, metadata !654, metadata !DIExpression()), !dbg !660
  store i32 %attr, ptr %attr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !655, metadata !DIExpression()), !dbg !661
  store i64 %data_size, ptr %data_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data_size.addr, metadata !656, metadata !DIExpression()), !dbg !662
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !657, metadata !DIExpression()), !dbg !663
  call void @llvm.lifetime.start.p0(i64 8, ptr %status) #14, !dbg !664
  call void @llvm.dbg.declare(metadata ptr %status, metadata !658, metadata !DIExpression()), !dbg !665
  %call = call i32 @down_interruptible(ptr noundef @efi_runtime_lock) #15, !dbg !666
  %tobool = icmp ne i32 %call, 0, !dbg !666
  br i1 %tobool, label %if.then, label %if.end, !dbg !668

if.then:                                          ; preds = %entry
  store i64 -9223372036854775787, ptr %retval, align 8, !dbg !669
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !669

if.end:                                           ; preds = %entry
  %name1 = getelementptr inbounds %struct.anon.7, ptr %.compoundliteral, i32 0, i32 0, !dbg !670
  %0 = load ptr, ptr %name.addr, align 8, !dbg !670
  store ptr %0, ptr %name1, align 8, !dbg !670
  %vendor2 = getelementptr inbounds %struct.anon.7, ptr %.compoundliteral, i32 0, i32 1, !dbg !670
  %1 = load ptr, ptr %vendor.addr, align 8, !dbg !670
  store ptr %1, ptr %vendor2, align 8, !dbg !670
  %attr3 = getelementptr inbounds %struct.anon.7, ptr %.compoundliteral, i32 0, i32 2, !dbg !670
  %2 = load i32, ptr %attr.addr, align 4, !dbg !670
  store i32 %2, ptr %attr3, align 8, !dbg !670
  %data_size4 = getelementptr inbounds %struct.anon.7, ptr %.compoundliteral, i32 0, i32 3, !dbg !670
  %3 = load i64, ptr %data_size.addr, align 8, !dbg !670
  store i64 %3, ptr %data_size4, align 8, !dbg !670
  %data5 = getelementptr inbounds %struct.anon.7, ptr %.compoundliteral, i32 0, i32 4, !dbg !670
  %4 = load ptr, ptr %data.addr, align 8, !dbg !670
  store ptr %4, ptr %data5, align 8, !dbg !670
  %call6 = call i64 @__efi_queue_work(i32 noundef 7, ptr noundef %.compoundliteral) #15, !dbg !670
  store i64 %call6, ptr %status, align 8, !dbg !671
  call void @up(ptr noundef @efi_runtime_lock) #15, !dbg !672
  %5 = load i64, ptr %status, align 8, !dbg !673
  store i64 %5, ptr %retval, align 8, !dbg !674
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !674

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %status) #14, !dbg !675
  %6 = load i64, ptr %retval, align 8, !dbg !675
  ret i64 %6, !dbg !675
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @virt_efi_set_variable_nb(ptr noundef %name, ptr noundef %vendor, i32 noundef %attr, i64 noundef %data_size, ptr noundef %data) #0 align 16 !dbg !676 {
entry:
  %retval = alloca i64, align 8
  %name.addr = alloca ptr, align 8
  %vendor.addr = alloca ptr, align 8
  %attr.addr = alloca i32, align 4
  %data_size.addr = alloca i64, align 8
  %data.addr = alloca ptr, align 8
  %status = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__s = alloca i64, align 8
  %__flags = alloca i64, align 8
  %ret = alloca i64, align 8
  %ibt = alloca i64, align 8
  %tmp = alloca i64, align 8
  %tmp5 = alloca i64, align 8
  %tmp6 = alloca i64, align 8
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !678, metadata !DIExpression()), !dbg !690
  store ptr %vendor, ptr %vendor.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vendor.addr, metadata !679, metadata !DIExpression()), !dbg !691
  store i32 %attr, ptr %attr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !680, metadata !DIExpression()), !dbg !692
  store i64 %data_size, ptr %data_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data_size.addr, metadata !681, metadata !DIExpression()), !dbg !693
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !682, metadata !DIExpression()), !dbg !694
  call void @llvm.lifetime.start.p0(i64 8, ptr %status) #14, !dbg !695
  call void @llvm.dbg.declare(metadata ptr %status, metadata !683, metadata !DIExpression()), !dbg !696
  %call = call i32 @down_trylock(ptr noundef @efi_runtime_lock) #15, !dbg !697
  %tobool = icmp ne i32 %call, 0, !dbg !697
  br i1 %tobool, label %if.then, label %if.end, !dbg !699

if.then:                                          ; preds = %entry
  store i64 -9223372036854775802, ptr %retval, align 8, !dbg !700
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !700

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__s) #14, !dbg !701
  call void @llvm.dbg.declare(metadata ptr %__s, metadata !684, metadata !DIExpression()), !dbg !701
  call void @llvm.lifetime.start.p0(i64 8, ptr %__flags) #14, !dbg !701
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !686, metadata !DIExpression()), !dbg !701
  call void @arch_efi_call_virt_setup() #15, !dbg !701
  %call1 = call i64 @efi_call_virt_save_flags() #15, !dbg !701
  store i64 %call1, ptr %__flags, align 8, !dbg !701
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #14, !dbg !702
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !687, metadata !DIExpression()), !dbg !702
  call void @llvm.lifetime.start.p0(i64 8, ptr %ibt) #14, !dbg !702
  call void @llvm.dbg.declare(metadata ptr %ibt, metadata !689, metadata !DIExpression()), !dbg !702
  %0 = load i8, ptr @efi_disable_ibt_for_runtime, align 1, !dbg !702, !range !703, !noundef !353
  %tobool2 = trunc i8 %0 to i1, !dbg !702
  %call3 = call i64 @ibt_save(i1 noundef zeroext %tobool2) #17, !dbg !702
  store i64 %call3, ptr %ibt, align 8, !dbg !702
  br label %do.body, !dbg !704

do.body:                                          ; preds = %if.end
  br label %do.cond, !dbg !707

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !707

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr @efi, align 8, !dbg !709
  %set_variable = getelementptr inbounds %struct.anon.13, ptr %1, i32 0, i32 9, !dbg !709
  %2 = load ptr, ptr %set_variable, align 8, !dbg !709
  %3 = load ptr, ptr %name.addr, align 8, !dbg !709
  %4 = load ptr, ptr %vendor.addr, align 8, !dbg !709
  %5 = load i32, ptr %attr.addr, align 4, !dbg !709
  %6 = load i64, ptr %data_size.addr, align 8, !dbg !709
  %7 = load ptr, ptr %data.addr, align 8, !dbg !709
  %call4 = call i64 (ptr, ...) @__efi_call(ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i64 noundef %6, ptr noundef %7) #15, !dbg !709
  store i64 %call4, ptr %tmp, align 8, !dbg !709
  %8 = load i64, ptr %tmp, align 8, !dbg !709
  store i64 %8, ptr %ret, align 8, !dbg !702
  %9 = load i64, ptr %ibt, align 8, !dbg !702
  call void @ibt_restore(i64 noundef %9) #17, !dbg !702
  %10 = load i64, ptr %ret, align 8, !dbg !702
  store i64 %10, ptr %tmp5, align 8, !dbg !702
  call void @llvm.lifetime.end.p0(i64 8, ptr %ibt) #14, !dbg !701
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #14, !dbg !701
  %11 = load i64, ptr %tmp5, align 8, !dbg !702
  store i64 %11, ptr %__s, align 8, !dbg !701
  %12 = load i64, ptr %__flags, align 8, !dbg !701
  call void @efi_call_virt_check_flags(i64 noundef %12, ptr noundef null) #15, !dbg !701
  call void @arch_efi_call_virt_teardown() #15, !dbg !701
  %13 = load i64, ptr %__s, align 8, !dbg !701
  store i64 %13, ptr %tmp6, align 8, !dbg !701
  call void @llvm.lifetime.end.p0(i64 8, ptr %__flags) #14, !dbg !710
  call void @llvm.lifetime.end.p0(i64 8, ptr %__s) #14, !dbg !710
  %14 = load i64, ptr %tmp6, align 8, !dbg !701
  store i64 %14, ptr %status, align 8, !dbg !711
  call void @up(ptr noundef @efi_runtime_lock) #15, !dbg !712
  %15 = load i64, ptr %status, align 8, !dbg !713
  store i64 %15, ptr %retval, align 8, !dbg !714
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !714

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %status) #14, !dbg !715
  %16 = load i64, ptr %retval, align 8, !dbg !715
  ret i64 %16, !dbg !715
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @virt_efi_get_next_high_mono_count(ptr noundef %count) #0 align 16 !dbg !716 {
entry:
  %retval = alloca i64, align 8
  %count.addr = alloca ptr, align 8
  %status = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %.compoundliteral = alloca %union.efi_rts_args, align 8
  store ptr %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !720, metadata !DIExpression()), !dbg !722
  call void @llvm.lifetime.start.p0(i64 8, ptr %status) #14, !dbg !723
  call void @llvm.dbg.declare(metadata ptr %status, metadata !721, metadata !DIExpression()), !dbg !724
  %call = call i32 @down_interruptible(ptr noundef @efi_runtime_lock) #15, !dbg !725
  %tobool = icmp ne i32 %call, 0, !dbg !725
  br i1 %tobool, label %if.then, label %if.end, !dbg !727

if.then:                                          ; preds = %entry
  store i64 -9223372036854775787, ptr %retval, align 8, !dbg !728
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !728

if.end:                                           ; preds = %entry
  call void @llvm.memset.p0.i64(ptr align 8 %.compoundliteral, i8 0, i64 40, i1 false), !dbg !729
  %high_count = getelementptr inbounds %struct.anon.9, ptr %.compoundliteral, i32 0, i32 0, !dbg !729
  %0 = load ptr, ptr %count.addr, align 8, !dbg !729
  store ptr %0, ptr %high_count, align 8, !dbg !729
  %call1 = call i64 @__efi_queue_work(i32 noundef 9, ptr noundef %.compoundliteral) #15, !dbg !729
  store i64 %call1, ptr %status, align 8, !dbg !730
  call void @up(ptr noundef @efi_runtime_lock) #15, !dbg !731
  %1 = load i64, ptr %status, align 8, !dbg !732
  store i64 %1, ptr %retval, align 8, !dbg !733
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !733

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %status) #14, !dbg !734
  %2 = load i64, ptr %retval, align 8, !dbg !734
  ret i64 %2, !dbg !734
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @virt_efi_reset_system(i32 noundef %reset_type, i64 noundef %status, i64 noundef %data_size, ptr noundef %data) #0 align 16 !dbg !735 {
entry:
  %reset_type.addr = alloca i32, align 4
  %status.addr = alloca i64, align 8
  %data_size.addr = alloca i64, align 8
  %data.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %ret = alloca i64, align 8
  %ibt = alloca i64, align 8
  %tmp6 = alloca i64, align 8
  %tmp8 = alloca i64, align 8
  store i32 %reset_type, ptr %reset_type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %reset_type.addr, metadata !739, metadata !DIExpression()), !dbg !746
  store i64 %status, ptr %status.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %status.addr, metadata !740, metadata !DIExpression()), !dbg !747
  store i64 %data_size, ptr %data_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data_size.addr, metadata !741, metadata !DIExpression()), !dbg !748
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !742, metadata !DIExpression()), !dbg !749
  %call = call i32 @down_trylock(ptr noundef @efi_runtime_lock) #15, !dbg !750
  %tobool = icmp ne i32 %call, 0, !dbg !750
  br i1 %tobool, label %if.then, label %if.end, !dbg !752

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !753

do.body:                                          ; preds = %if.then
  br label %do.end, !dbg !756

do.end:                                           ; preds = %do.body
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2) #16, !dbg !753
  store i32 %call1, ptr %tmp, align 4, !dbg !756
  %0 = load i32, ptr %tmp, align 4, !dbg !753
  br label %return, !dbg !758

if.end:                                           ; preds = %entry
  call void @arch_efi_call_virt_setup() #15, !dbg !759
  store i32 10, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 3), align 8, !dbg !760
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #14, !dbg !761
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !743, metadata !DIExpression()), !dbg !761
  call void @llvm.lifetime.start.p0(i64 8, ptr %ibt) #14, !dbg !761
  call void @llvm.dbg.declare(metadata ptr %ibt, metadata !745, metadata !DIExpression()), !dbg !761
  %1 = load i8, ptr @efi_disable_ibt_for_runtime, align 1, !dbg !761, !range !703, !noundef !353
  %tobool2 = trunc i8 %1 to i1, !dbg !761
  %call3 = call i64 @ibt_save(i1 noundef zeroext %tobool2) #17, !dbg !761
  store i64 %call3, ptr %ibt, align 8, !dbg !761
  br label %do.body4, !dbg !762

do.body4:                                         ; preds = %if.end
  br label %do.cond, !dbg !765

do.cond:                                          ; preds = %do.body4
  br label %do.end5, !dbg !765

do.end5:                                          ; preds = %do.cond
  %2 = load ptr, ptr @efi, align 8, !dbg !767
  %reset_system = getelementptr inbounds %struct.anon.13, ptr %2, i32 0, i32 11, !dbg !767
  %3 = load ptr, ptr %reset_system, align 8, !dbg !767
  %4 = load i32, ptr %reset_type.addr, align 4, !dbg !767
  %5 = load i64, ptr %status.addr, align 8, !dbg !767
  %6 = load i64, ptr %data_size.addr, align 8, !dbg !767
  %7 = load ptr, ptr %data.addr, align 8, !dbg !767
  %call7 = call i64 (ptr, ...) @__efi_call(ptr noundef %3, i32 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef %7) #15, !dbg !767
  store i64 %call7, ptr %tmp6, align 8, !dbg !767
  %8 = load i64, ptr %tmp6, align 8, !dbg !767
  store i64 %8, ptr %ret, align 8, !dbg !761
  %9 = load i64, ptr %ibt, align 8, !dbg !761
  call void @ibt_restore(i64 noundef %9) #17, !dbg !761
  %10 = load i64, ptr %ret, align 8, !dbg !761
  store i64 %10, ptr %tmp8, align 8, !dbg !761
  call void @llvm.lifetime.end.p0(i64 8, ptr %ibt) #14, !dbg !768
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #14, !dbg !768
  %11 = load i64, ptr %tmp8, align 8, !dbg !761
  call void @arch_efi_call_virt_teardown() #15, !dbg !769
  call void @up(ptr noundef @efi_runtime_lock) #15, !dbg !770
  br label %return, !dbg !771

return:                                           ; preds = %do.end5, %do.end
  ret void, !dbg !771
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @virt_efi_query_variable_info(i32 noundef %attr, ptr noundef %storage_space, ptr noundef %remaining_space, ptr noundef %max_variable_size) #0 align 16 !dbg !772 {
entry:
  %retval = alloca i64, align 8
  %attr.addr = alloca i32, align 4
  %storage_space.addr = alloca ptr, align 8
  %remaining_space.addr = alloca ptr, align 8
  %max_variable_size.addr = alloca ptr, align 8
  %status = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %.compoundliteral = alloca %union.efi_rts_args, align 8
  store i32 %attr, ptr %attr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !776, metadata !DIExpression()), !dbg !781
  store ptr %storage_space, ptr %storage_space.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %storage_space.addr, metadata !777, metadata !DIExpression()), !dbg !782
  store ptr %remaining_space, ptr %remaining_space.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %remaining_space.addr, metadata !778, metadata !DIExpression()), !dbg !783
  store ptr %max_variable_size, ptr %max_variable_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %max_variable_size.addr, metadata !779, metadata !DIExpression()), !dbg !784
  call void @llvm.lifetime.start.p0(i64 8, ptr %status) #14, !dbg !785
  call void @llvm.dbg.declare(metadata ptr %status, metadata !780, metadata !DIExpression()), !dbg !786
  %0 = load i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 1), align 8, !dbg !787
  %cmp = icmp ult i32 %0, 131072, !dbg !789
  br i1 %cmp, label %if.then, label %if.end, !dbg !790

if.then:                                          ; preds = %entry
  store i64 -9223372036854775805, ptr %retval, align 8, !dbg !791
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !791

if.end:                                           ; preds = %entry
  %call = call i32 @down_interruptible(ptr noundef @efi_runtime_lock) #15, !dbg !792
  %tobool = icmp ne i32 %call, 0, !dbg !792
  br i1 %tobool, label %if.then1, label %if.end2, !dbg !794

if.then1:                                         ; preds = %if.end
  store i64 -9223372036854775787, ptr %retval, align 8, !dbg !795
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !795

if.end2:                                          ; preds = %if.end
  %attr3 = getelementptr inbounds %struct.anon.8, ptr %.compoundliteral, i32 0, i32 0, !dbg !796
  %1 = load i32, ptr %attr.addr, align 4, !dbg !796
  store i32 %1, ptr %attr3, align 8, !dbg !796
  %storage_space4 = getelementptr inbounds %struct.anon.8, ptr %.compoundliteral, i32 0, i32 1, !dbg !796
  %2 = load ptr, ptr %storage_space.addr, align 8, !dbg !796
  store ptr %2, ptr %storage_space4, align 8, !dbg !796
  %remaining_space5 = getelementptr inbounds %struct.anon.8, ptr %.compoundliteral, i32 0, i32 2, !dbg !796
  %3 = load ptr, ptr %remaining_space.addr, align 8, !dbg !796
  store ptr %3, ptr %remaining_space5, align 8, !dbg !796
  %max_variable_size6 = getelementptr inbounds %struct.anon.8, ptr %.compoundliteral, i32 0, i32 3, !dbg !796
  %4 = load ptr, ptr %max_variable_size.addr, align 8, !dbg !796
  store ptr %4, ptr %max_variable_size6, align 8, !dbg !796
  %call7 = call i64 @__efi_queue_work(i32 noundef 8, ptr noundef %.compoundliteral) #15, !dbg !796
  store i64 %call7, ptr %status, align 8, !dbg !797
  call void @up(ptr noundef @efi_runtime_lock) #15, !dbg !798
  %5 = load i64, ptr %status, align 8, !dbg !799
  store i64 %5, ptr %retval, align 8, !dbg !800
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !800

cleanup:                                          ; preds = %if.end2, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %status) #14, !dbg !801
  %6 = load i64, ptr %retval, align 8, !dbg !801
  ret i64 %6, !dbg !801
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @virt_efi_query_variable_info_nb(i32 noundef %attr, ptr noundef %storage_space, ptr noundef %remaining_space, ptr noundef %max_variable_size) #0 align 16 !dbg !802 {
entry:
  %retval = alloca i64, align 8
  %attr.addr = alloca i32, align 4
  %storage_space.addr = alloca ptr, align 8
  %remaining_space.addr = alloca ptr, align 8
  %max_variable_size.addr = alloca ptr, align 8
  %status = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__s = alloca i64, align 8
  %__flags = alloca i64, align 8
  %ret = alloca i64, align 8
  %ibt = alloca i64, align 8
  %tmp = alloca i64, align 8
  %tmp7 = alloca i64, align 8
  %tmp8 = alloca i64, align 8
  store i32 %attr, ptr %attr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !804, metadata !DIExpression()), !dbg !815
  store ptr %storage_space, ptr %storage_space.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %storage_space.addr, metadata !805, metadata !DIExpression()), !dbg !816
  store ptr %remaining_space, ptr %remaining_space.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %remaining_space.addr, metadata !806, metadata !DIExpression()), !dbg !817
  store ptr %max_variable_size, ptr %max_variable_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %max_variable_size.addr, metadata !807, metadata !DIExpression()), !dbg !818
  call void @llvm.lifetime.start.p0(i64 8, ptr %status) #14, !dbg !819
  call void @llvm.dbg.declare(metadata ptr %status, metadata !808, metadata !DIExpression()), !dbg !820
  %0 = load i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 1), align 8, !dbg !821
  %cmp = icmp ult i32 %0, 131072, !dbg !823
  br i1 %cmp, label %if.then, label %if.end, !dbg !824

if.then:                                          ; preds = %entry
  store i64 -9223372036854775805, ptr %retval, align 8, !dbg !825
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !825

if.end:                                           ; preds = %entry
  %call = call i32 @down_trylock(ptr noundef @efi_runtime_lock) #15, !dbg !826
  %tobool = icmp ne i32 %call, 0, !dbg !826
  br i1 %tobool, label %if.then1, label %if.end2, !dbg !828

if.then1:                                         ; preds = %if.end
  store i64 -9223372036854775802, ptr %retval, align 8, !dbg !829
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !829

if.end2:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__s) #14, !dbg !830
  call void @llvm.dbg.declare(metadata ptr %__s, metadata !809, metadata !DIExpression()), !dbg !830
  call void @llvm.lifetime.start.p0(i64 8, ptr %__flags) #14, !dbg !830
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !811, metadata !DIExpression()), !dbg !830
  call void @arch_efi_call_virt_setup() #15, !dbg !830
  %call3 = call i64 @efi_call_virt_save_flags() #15, !dbg !830
  store i64 %call3, ptr %__flags, align 8, !dbg !830
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #14, !dbg !831
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !812, metadata !DIExpression()), !dbg !831
  call void @llvm.lifetime.start.p0(i64 8, ptr %ibt) #14, !dbg !831
  call void @llvm.dbg.declare(metadata ptr %ibt, metadata !814, metadata !DIExpression()), !dbg !831
  %1 = load i8, ptr @efi_disable_ibt_for_runtime, align 1, !dbg !831, !range !703, !noundef !353
  %tobool4 = trunc i8 %1 to i1, !dbg !831
  %call5 = call i64 @ibt_save(i1 noundef zeroext %tobool4) #17, !dbg !831
  store i64 %call5, ptr %ibt, align 8, !dbg !831
  br label %do.body, !dbg !832

do.body:                                          ; preds = %if.end2
  br label %do.cond, !dbg !835

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !835

do.end:                                           ; preds = %do.cond
  %2 = load ptr, ptr @efi, align 8, !dbg !837
  %query_variable_info = getelementptr inbounds %struct.anon.13, ptr %2, i32 0, i32 14, !dbg !837
  %3 = load ptr, ptr %query_variable_info, align 8, !dbg !837
  %4 = load i32, ptr %attr.addr, align 4, !dbg !837
  %5 = load ptr, ptr %storage_space.addr, align 8, !dbg !837
  %6 = load ptr, ptr %remaining_space.addr, align 8, !dbg !837
  %7 = load ptr, ptr %max_variable_size.addr, align 8, !dbg !837
  %call6 = call i64 (ptr, ...) @__efi_call(ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #15, !dbg !837
  store i64 %call6, ptr %tmp, align 8, !dbg !837
  %8 = load i64, ptr %tmp, align 8, !dbg !837
  store i64 %8, ptr %ret, align 8, !dbg !831
  %9 = load i64, ptr %ibt, align 8, !dbg !831
  call void @ibt_restore(i64 noundef %9) #17, !dbg !831
  %10 = load i64, ptr %ret, align 8, !dbg !831
  store i64 %10, ptr %tmp7, align 8, !dbg !831
  call void @llvm.lifetime.end.p0(i64 8, ptr %ibt) #14, !dbg !830
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #14, !dbg !830
  %11 = load i64, ptr %tmp7, align 8, !dbg !831
  store i64 %11, ptr %__s, align 8, !dbg !830
  %12 = load i64, ptr %__flags, align 8, !dbg !830
  call void @efi_call_virt_check_flags(i64 noundef %12, ptr noundef null) #15, !dbg !830
  call void @arch_efi_call_virt_teardown() #15, !dbg !830
  %13 = load i64, ptr %__s, align 8, !dbg !830
  store i64 %13, ptr %tmp8, align 8, !dbg !830
  call void @llvm.lifetime.end.p0(i64 8, ptr %__flags) #14, !dbg !838
  call void @llvm.lifetime.end.p0(i64 8, ptr %__s) #14, !dbg !838
  %14 = load i64, ptr %tmp8, align 8, !dbg !830
  store i64 %14, ptr %status, align 8, !dbg !839
  call void @up(ptr noundef @efi_runtime_lock) #15, !dbg !840
  %15 = load i64, ptr %status, align 8, !dbg !841
  store i64 %15, ptr %retval, align 8, !dbg !842
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !842

cleanup:                                          ; preds = %do.end, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %status) #14, !dbg !843
  %16 = load i64, ptr %retval, align 8, !dbg !843
  ret i64 %16, !dbg !843
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @virt_efi_update_capsule(ptr noundef %capsules, i64 noundef %count, i64 noundef %sg_list) #0 align 16 !dbg !844 {
entry:
  %retval = alloca i64, align 8
  %capsules.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %sg_list.addr = alloca i64, align 8
  %status = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %.compoundliteral = alloca %union.efi_rts_args, align 8
  store ptr %capsules, ptr %capsules.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %capsules.addr, metadata !848, metadata !DIExpression()), !dbg !852
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !849, metadata !DIExpression()), !dbg !853
  store i64 %sg_list, ptr %sg_list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sg_list.addr, metadata !850, metadata !DIExpression()), !dbg !854
  call void @llvm.lifetime.start.p0(i64 8, ptr %status) #14, !dbg !855
  call void @llvm.dbg.declare(metadata ptr %status, metadata !851, metadata !DIExpression()), !dbg !856
  %0 = load i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 1), align 8, !dbg !857
  %cmp = icmp ult i32 %0, 131072, !dbg !859
  br i1 %cmp, label %if.then, label %if.end, !dbg !860

if.then:                                          ; preds = %entry
  store i64 -9223372036854775805, ptr %retval, align 8, !dbg !861
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !861

if.end:                                           ; preds = %entry
  %call = call i32 @down_interruptible(ptr noundef @efi_runtime_lock) #15, !dbg !862
  %tobool = icmp ne i32 %call, 0, !dbg !862
  br i1 %tobool, label %if.then1, label %if.end2, !dbg !864

if.then1:                                         ; preds = %if.end
  store i64 -9223372036854775787, ptr %retval, align 8, !dbg !865
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !865

if.end2:                                          ; preds = %if.end
  %capsules3 = getelementptr inbounds %struct.anon.10, ptr %.compoundliteral, i32 0, i32 0, !dbg !866
  %1 = load ptr, ptr %capsules.addr, align 8, !dbg !866
  store ptr %1, ptr %capsules3, align 8, !dbg !866
  %count4 = getelementptr inbounds %struct.anon.10, ptr %.compoundliteral, i32 0, i32 1, !dbg !866
  %2 = load i64, ptr %count.addr, align 8, !dbg !866
  store i64 %2, ptr %count4, align 8, !dbg !866
  %sg_list5 = getelementptr inbounds %struct.anon.10, ptr %.compoundliteral, i32 0, i32 2, !dbg !866
  %3 = load i64, ptr %sg_list.addr, align 8, !dbg !866
  store i64 %3, ptr %sg_list5, align 8, !dbg !866
  %call6 = call i64 @__efi_queue_work(i32 noundef 11, ptr noundef %.compoundliteral) #15, !dbg !866
  store i64 %call6, ptr %status, align 8, !dbg !867
  call void @up(ptr noundef @efi_runtime_lock) #15, !dbg !868
  %4 = load i64, ptr %status, align 8, !dbg !869
  store i64 %4, ptr %retval, align 8, !dbg !870
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !870

cleanup:                                          ; preds = %if.end2, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %status) #14, !dbg !871
  %5 = load i64, ptr %retval, align 8, !dbg !871
  ret i64 %5, !dbg !871
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @virt_efi_query_capsule_caps(ptr noundef %capsules, i64 noundef %count, ptr noundef %max_size, ptr noundef %reset_type) #0 align 16 !dbg !872 {
entry:
  %retval = alloca i64, align 8
  %capsules.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %max_size.addr = alloca ptr, align 8
  %reset_type.addr = alloca ptr, align 8
  %status = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %.compoundliteral = alloca %union.efi_rts_args, align 8
  store ptr %capsules, ptr %capsules.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %capsules.addr, metadata !876, metadata !DIExpression()), !dbg !881
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !877, metadata !DIExpression()), !dbg !882
  store ptr %max_size, ptr %max_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %max_size.addr, metadata !878, metadata !DIExpression()), !dbg !883
  store ptr %reset_type, ptr %reset_type.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %reset_type.addr, metadata !879, metadata !DIExpression()), !dbg !884
  call void @llvm.lifetime.start.p0(i64 8, ptr %status) #14, !dbg !885
  call void @llvm.dbg.declare(metadata ptr %status, metadata !880, metadata !DIExpression()), !dbg !886
  %0 = load i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 1), align 8, !dbg !887
  %cmp = icmp ult i32 %0, 131072, !dbg !889
  br i1 %cmp, label %if.then, label %if.end, !dbg !890

if.then:                                          ; preds = %entry
  store i64 -9223372036854775805, ptr %retval, align 8, !dbg !891
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !891

if.end:                                           ; preds = %entry
  %call = call i32 @down_interruptible(ptr noundef @efi_runtime_lock) #15, !dbg !892
  %tobool = icmp ne i32 %call, 0, !dbg !892
  br i1 %tobool, label %if.then1, label %if.end2, !dbg !894

if.then1:                                         ; preds = %if.end
  store i64 -9223372036854775787, ptr %retval, align 8, !dbg !895
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !895

if.end2:                                          ; preds = %if.end
  %capsules3 = getelementptr inbounds %struct.anon.11, ptr %.compoundliteral, i32 0, i32 0, !dbg !896
  %1 = load ptr, ptr %capsules.addr, align 8, !dbg !896
  store ptr %1, ptr %capsules3, align 8, !dbg !896
  %count4 = getelementptr inbounds %struct.anon.11, ptr %.compoundliteral, i32 0, i32 1, !dbg !896
  %2 = load i64, ptr %count.addr, align 8, !dbg !896
  store i64 %2, ptr %count4, align 8, !dbg !896
  %max_size5 = getelementptr inbounds %struct.anon.11, ptr %.compoundliteral, i32 0, i32 2, !dbg !896
  %3 = load ptr, ptr %max_size.addr, align 8, !dbg !896
  store ptr %3, ptr %max_size5, align 8, !dbg !896
  %reset_type6 = getelementptr inbounds %struct.anon.11, ptr %.compoundliteral, i32 0, i32 3, !dbg !896
  %4 = load ptr, ptr %reset_type.addr, align 8, !dbg !896
  store ptr %4, ptr %reset_type6, align 8, !dbg !896
  %call7 = call i64 @__efi_queue_work(i32 noundef 12, ptr noundef %.compoundliteral) #15, !dbg !896
  store i64 %call7, ptr %status, align 8, !dbg !897
  call void @up(ptr noundef @efi_runtime_lock) #15, !dbg !898
  %5 = load i64, ptr %status, align 8, !dbg !899
  store i64 %5, ptr %retval, align 8, !dbg !900
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !900

cleanup:                                          ; preds = %if.end2, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %status) #14, !dbg !901
  %6 = load i64, ptr %retval, align 8, !dbg !901
  ret i64 %6, !dbg !901
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @efi_call_acpi_prm_handler(ptr noundef %handler_addr, i64 noundef %param_buffer_addr, ptr noundef %context) #0 align 16 !dbg !902 {
entry:
  %retval = alloca i64, align 8
  %handler_addr.addr = alloca ptr, align 8
  %param_buffer_addr.addr = alloca i64, align 8
  %context.addr = alloca ptr, align 8
  %status = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %.compoundliteral = alloca %union.efi_rts_args, align 8
  store ptr %handler_addr, ptr %handler_addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handler_addr.addr, metadata !906, metadata !DIExpression()), !dbg !910
  store i64 %param_buffer_addr, ptr %param_buffer_addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %param_buffer_addr.addr, metadata !907, metadata !DIExpression()), !dbg !911
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !908, metadata !DIExpression()), !dbg !912
  call void @llvm.lifetime.start.p0(i64 8, ptr %status) #14, !dbg !913
  call void @llvm.dbg.declare(metadata ptr %status, metadata !909, metadata !DIExpression()), !dbg !914
  %call = call i32 @down_interruptible(ptr noundef @efi_runtime_lock) #15, !dbg !915
  %tobool = icmp ne i32 %call, 0, !dbg !915
  br i1 %tobool, label %if.then, label %if.end, !dbg !917

if.then:                                          ; preds = %entry
  store i64 -9223372036854775787, ptr %retval, align 8, !dbg !918
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !918

if.end:                                           ; preds = %entry
  %acpi_prm_handler = getelementptr inbounds %struct.anon.12, ptr %.compoundliteral, i32 0, i32 0, !dbg !919
  %0 = load ptr, ptr %handler_addr.addr, align 8, !dbg !919
  store ptr %0, ptr %acpi_prm_handler, align 8, !dbg !919
  %param_buffer_addr1 = getelementptr inbounds %struct.anon.12, ptr %.compoundliteral, i32 0, i32 1, !dbg !919
  %1 = load i64, ptr %param_buffer_addr.addr, align 8, !dbg !919
  store i64 %1, ptr %param_buffer_addr1, align 8, !dbg !919
  %context2 = getelementptr inbounds %struct.anon.12, ptr %.compoundliteral, i32 0, i32 2, !dbg !919
  %2 = load ptr, ptr %context.addr, align 8, !dbg !919
  store ptr %2, ptr %context2, align 8, !dbg !919
  %call3 = call i64 @__efi_queue_work(i32 noundef 13, ptr noundef %.compoundliteral) #15, !dbg !919
  store i64 %call3, ptr %status, align 8, !dbg !920
  call void @up(ptr noundef @efi_runtime_lock) #15, !dbg !921
  %3 = load i64, ptr %status, align 8, !dbg !922
  store i64 %3, ptr %retval, align 8, !dbg !923
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !923

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %status) #14, !dbg !924
  %4 = load i64, ptr %retval, align 8, !dbg !924
  ret i64 %4, !dbg !924
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !925 dso_local i32 @down_interruptible(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__efi_queue_work(i32 noundef %id, ptr noundef %args) #0 align 16 !dbg !322 {
entry:
  %id.addr = alloca i32, align 4
  %args.addr = alloca ptr, align 8
  %__ret_do_once = alloca i8, align 1
  %__ret_cond = alloca i8, align 1
  %__ret_once = alloca i8, align 1
  %tmp = alloca i64, align 8
  %tmp18 = alloca i32, align 4
  %tmp21 = alloca i64, align 8
  %.compoundliteral = alloca %struct.atomic64_t, align 8
  %tmp41 = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp71 = alloca i64, align 8
  store i32 %id, ptr %id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !326, metadata !DIExpression()), !dbg !929
  store ptr %args, ptr %args.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %args.addr, metadata !327, metadata !DIExpression()), !dbg !930
  %0 = load i32, ptr %id.addr, align 4, !dbg !931
  store i32 %0, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 3), align 8, !dbg !932
  %1 = load ptr, ptr %args.addr, align 8, !dbg !933
  store ptr %1, ptr @efi_rts_work, align 8, !dbg !934
  %2 = call ptr @llvm.returnaddress(i32 0), !dbg !935
  store ptr %2, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 5), align 8, !dbg !936
  store i64 -9223372036854775787, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 1), align 8, !dbg !937
  %call = call zeroext i1 @efi_enabled(i32 noundef 3) #15, !dbg !938
  br i1 %call, label %if.end29, label %if.then, !dbg !939

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once) #14, !dbg !940
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once, metadata !328, metadata !DIExpression()), !dbg !940
  store i8 1, ptr %__ret_do_once, align 1, !dbg !940
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond) #14, !dbg !941
  call void @llvm.dbg.declare(metadata ptr %__ret_cond, metadata !334, metadata !DIExpression()), !dbg !941
  %3 = load i8, ptr %__ret_do_once, align 1, !dbg !941, !range !703, !noundef !353
  %tobool = trunc i8 %3 to i1, !dbg !941
  %lnot = xor i1 %tobool, true, !dbg !941
  %lnot1 = xor i1 %lnot, true, !dbg !941
  %frombool = zext i1 %lnot1 to i8, !dbg !941
  store i8 %frombool, ptr %__ret_cond, align 1, !dbg !941
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once) #14, !dbg !941
  call void @llvm.dbg.declare(metadata ptr %__ret_once, metadata !337, metadata !DIExpression()), !dbg !941
  store i8 0, ptr %__ret_once, align 1, !dbg !941
  %4 = load i8, ptr %__ret_cond, align 1, !dbg !942, !range !703, !noundef !353
  %tobool2 = trunc i8 %4 to i1, !dbg !942
  br i1 %tobool2, label %land.rhs, label %land.end, !dbg !942

land.rhs:                                         ; preds = %if.then
  %5 = load i8, ptr @__efi_queue_work.__already_done, align 1, !dbg !942, !range !703, !noundef !353
  %tobool3 = trunc i8 %5 to i1, !dbg !942
  %lnot4 = xor i1 %tobool3, true, !dbg !942
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then
  %6 = phi i1 [ false, %if.then ], [ %lnot4, %land.rhs ], !dbg !944
  %lnot5 = xor i1 %6, true, !dbg !942
  %lnot6 = xor i1 %lnot5, true, !dbg !942
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !942
  %conv = sext i32 %lnot.ext to i64, !dbg !942
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !942
  %tobool7 = icmp ne i64 %expval, 0, !dbg !942
  br i1 %tobool7, label %if.then8, label %if.end, !dbg !941

if.then8:                                         ; preds = %land.end
  store i8 1, ptr @__efi_queue_work.__already_done, align 1, !dbg !945
  store i8 1, ptr %__ret_once, align 1, !dbg !945
  br label %if.end, !dbg !945

if.end:                                           ; preds = %if.then8, %land.end
  %7 = load i8, ptr %__ret_once, align 1, !dbg !941, !range !703, !noundef !353
  %tobool9 = trunc i8 %7 to i1, !dbg !941
  %lnot10 = xor i1 %tobool9, true, !dbg !941
  %lnot12 = xor i1 %lnot10, true, !dbg !941
  %lnot.ext13 = zext i1 %lnot12 to i32, !dbg !941
  %conv14 = sext i32 %lnot.ext13 to i64, !dbg !941
  %expval15 = call i64 @llvm.expect.i64(i64 %conv14, i64 0), !dbg !941
  store i64 %expval15, ptr %tmp, align 8, !dbg !942
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once) #14, !dbg !947
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond) #14, !dbg !947
  %8 = load i64, ptr %tmp, align 8, !dbg !941
  %tobool16 = icmp ne i64 %8, 0, !dbg !947
  br i1 %tobool16, label %if.then17, label %if.end20, !dbg !940

if.then17:                                        ; preds = %if.end
  br label %do.body, !dbg !948

do.body:                                          ; preds = %if.then17
  br label %do.cond, !dbg !950

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !950

do.end:                                           ; preds = %do.cond
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef @.str.3) #16, !dbg !948
  store i32 %call19, ptr %tmp18, align 4, !dbg !950
  %9 = load i32, ptr %tmp18, align 4, !dbg !948
  br label %if.end20, !dbg !947

if.end20:                                         ; preds = %do.end, %if.end
  %10 = load i8, ptr %__ret_do_once, align 1, !dbg !940, !range !703, !noundef !353
  %tobool22 = trunc i8 %10 to i1, !dbg !940
  %lnot23 = xor i1 %tobool22, true, !dbg !940
  %lnot25 = xor i1 %lnot23, true, !dbg !940
  %lnot.ext26 = zext i1 %lnot25 to i32, !dbg !940
  %conv27 = sext i32 %lnot.ext26 to i64, !dbg !940
  %expval28 = call i64 @llvm.expect.i64(i64 %conv27, i64 0), !dbg !940
  store i64 %expval28, ptr %tmp21, align 8, !dbg !947
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once) #14, !dbg !952
  %11 = load i64, ptr %tmp21, align 8, !dbg !940
  store i64 -9223372036854775801, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 1), align 8, !dbg !953
  br label %exit, !dbg !954

if.end29:                                         ; preds = %entry
  call void @init_completion(ptr noundef getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 4)) #15, !dbg !955
  br label %do.body30, !dbg !956

do.body30:                                        ; preds = %if.end29
  br label %do.body31, !dbg !957

do.body31:                                        ; preds = %do.body30
  call void @__init_work(ptr noundef getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 2), i32 noundef 0) #15, !dbg !959
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %.compoundliteral, i32 0, i32 0, !dbg !959
  store i64 68719476704, ptr %counter, align 8, !dbg !959
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 2), ptr align 8 %.compoundliteral, i64 8, i1 false), !dbg !959
  call void @INIT_LIST_HEAD(ptr noundef getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 2, i32 1)) #15, !dbg !959
  store ptr @efi_call_rts, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 2, i32 2), align 8, !dbg !959
  br label %do.end33, !dbg !959

do.end33:                                         ; preds = %do.body31
  br label %do.end35, !dbg !957

do.end35:                                         ; preds = %do.end33
  %12 = load ptr, ptr @efi_rts_wq, align 8, !dbg !961
  %call36 = call zeroext i1 @queue_work(ptr noundef %12, ptr noundef getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 2)) #15, !dbg !963
  br i1 %call36, label %if.then37, label %if.else, !dbg !964

if.then37:                                        ; preds = %do.end35
  call void @wait_for_completion(ptr noundef getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 4)) #15, !dbg !965
  br label %if.end43, !dbg !965

if.else:                                          ; preds = %do.end35
  br label %do.body38, !dbg !966

do.body38:                                        ; preds = %if.else
  br label %do.end40, !dbg !968

do.end40:                                         ; preds = %do.body38
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef @.str.4) #16, !dbg !966
  store i32 %call42, ptr %tmp41, align 4, !dbg !968
  %13 = load i32, ptr %tmp41, align 4, !dbg !966
  br label %if.end43

if.end43:                                         ; preds = %do.end40, %if.then37
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !970
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !338, metadata !DIExpression()), !dbg !970
  %14 = load i64, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 1), align 8, !dbg !970
  %cmp = icmp eq i64 %14, -9223372036854775787, !dbg !970
  %lnot45 = xor i1 %cmp, true, !dbg !970
  %lnot47 = xor i1 %lnot45, true, !dbg !970
  %lnot.ext48 = zext i1 %lnot47 to i32, !dbg !970
  store i32 %lnot.ext48, ptr %__ret_warn_on, align 4, !dbg !970
  %15 = load i32, ptr %__ret_warn_on, align 4, !dbg !971
  %tobool49 = icmp ne i32 %15, 0, !dbg !971
  %lnot50 = xor i1 %tobool49, true, !dbg !971
  %lnot52 = xor i1 %lnot50, true, !dbg !971
  %lnot.ext53 = zext i1 %lnot52 to i32, !dbg !971
  %conv54 = sext i32 %lnot.ext53 to i64, !dbg !971
  %expval55 = call i64 @llvm.expect.i64(i64 %conv54, i64 0), !dbg !971
  %tobool56 = icmp ne i64 %expval55, 0, !dbg !971
  br i1 %tobool56, label %if.then57, label %if.end70, !dbg !970

if.then57:                                        ; preds = %if.end43
  br label %do.body58, !dbg !971

do.body58:                                        ; preds = %if.then57
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #14, !dbg !972
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !340, metadata !DIExpression()), !dbg !972
  store i32 2307, ptr %__flags, align 4, !dbg !972
  br label %do.body59, !dbg !972

do.body59:                                        ; preds = %do.body58
  br label %do.cond60, !dbg !973

do.cond60:                                        ; preds = %do.body59
  br label %do.end61, !dbg !973

do.end61:                                         ; preds = %do.cond60
  br label %do.body62, !dbg !972

do.body62:                                        ; preds = %do.end61
  %16 = load i32, ptr %__flags, align 4, !dbg !975
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 341, i32 %16, i64 12) #14, !dbg !975, !srcloc !977
  br label %do.cond63, !dbg !975

do.cond63:                                        ; preds = %do.body62
  br label %do.end64, !dbg !975

do.end64:                                         ; preds = %do.cond63
  br label %do.body65, !dbg !972

do.body65:                                        ; preds = %do.end64
  br label %do.cond66, !dbg !978

do.cond66:                                        ; preds = %do.body65
  br label %do.end67, !dbg !978

do.end67:                                         ; preds = %do.cond66
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #14, !dbg !971
  br label %do.cond68, !dbg !972

do.cond68:                                        ; preds = %do.end67
  br label %do.end69, !dbg !972

do.end69:                                         ; preds = %do.cond68
  br label %if.end70, !dbg !972

if.end70:                                         ; preds = %do.end69, %if.end43
  %17 = load i32, ptr %__ret_warn_on, align 4, !dbg !970
  %tobool72 = icmp ne i32 %17, 0, !dbg !970
  %lnot73 = xor i1 %tobool72, true, !dbg !970
  %lnot75 = xor i1 %lnot73, true, !dbg !970
  %lnot.ext76 = zext i1 %lnot75 to i32, !dbg !970
  %conv77 = sext i32 %lnot.ext76 to i64, !dbg !970
  %expval78 = call i64 @llvm.expect.i64(i64 %conv77, i64 0), !dbg !970
  store i64 %expval78, ptr %tmp71, align 8, !dbg !971
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !980
  %18 = load i64, ptr %tmp71, align 8, !dbg !970
  br label %exit, !dbg !980

exit:                                             ; preds = %if.end70, %if.end20
  call void @llvm.dbg.label(metadata !343), !dbg !981
  store i32 0, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 3), align 8, !dbg !982
  %19 = load i64, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 1), align 8, !dbg !983
  ret i64 %19, !dbg !984
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !985 dso_local void @up(ptr noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define available_externally dso_local i64 @native_save_fl() #3 align 16 !dbg !988 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #14, !dbg !991
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !990, metadata !DIExpression()), !dbg !992
  call void asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %flags) #14, !dbg !993, !srcloc !994
  %0 = load i64, ptr %flags, align 8, !dbg !995
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #14, !dbg !996
  ret i64 %0, !dbg !997
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_irqs_disabled_flags(i64 noundef %flags) #3 align 16 !dbg !998 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1002, metadata !DIExpression()), !dbg !1003
  %0 = load i64, ptr %flags.addr, align 8, !dbg !1004
  %and = and i64 %0, 512, !dbg !1005
  %tobool = icmp ne i64 %and, 0, !dbg !1006
  %lnot = xor i1 %tobool, true, !dbg !1006
  %lnot.ext = zext i1 %lnot to i32, !dbg !1006
  ret i32 %lnot.ext, !dbg !1007
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_enable() #3 align 16 !dbg !1008 {
entry:
  call void @native_irq_enable() #15, !dbg !1009
  ret void, !dbg !1010
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_irq_enable() #3 align 16 !dbg !1011 {
entry:
  call void asm sideeffect "sti", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !1012, !srcloc !1013
  ret void, !dbg !1014
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1015 dso_local i32 @down_trylock(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1016 dso_local void @arch_efi_call_virt_setup() #5

; Function Attrs: nocf_check noredzone null_pointer_is_valid
declare !dbg !1018 dso_local i64 @ibt_save(i1 noundef zeroext) #9

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1022 dso_local i64 @__efi_call(ptr noundef, ...) #5

; Function Attrs: nocf_check noredzone null_pointer_is_valid
declare !dbg !1025 dso_local void @ibt_restore(i64 noundef) #9

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1028 dso_local void @arch_efi_call_virt_teardown() #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @efi_enabled(i32 noundef %feature) #10 align 16 !dbg !1029 {
entry:
  %feature.addr = alloca i32, align 4
  store i32 %feature, ptr %feature.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %feature.addr, metadata !1033, metadata !DIExpression()), !dbg !1034
  %0 = load i32, ptr %feature.addr, align 4, !dbg !1035
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !1035
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !1035

land.lhs.true:                                    ; preds = %entry
  %conv = zext i1 icmp ne (i64 ptrtoint (ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 28) to i64), i64 0) to i32, !dbg !1035
  %2 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !1035
  br i1 %2, label %land.lhs.true1, label %cond.false, !dbg !1035

land.lhs.true1:                                   ; preds = %land.lhs.true
  br i1 icmp ne (i64 ptrtoint (ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 28) to i64), i64 0), label %land.lhs.true3, label %cond.false, !dbg !1035

land.lhs.true3:                                   ; preds = %land.lhs.true1
  %3 = load i64, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 28), align 8, !dbg !1035
  %4 = call i1 @llvm.is.constant.i64(i64 %3), !dbg !1035
  br i1 %4, label %cond.true, label %cond.false, !dbg !1035

cond.true:                                        ; preds = %land.lhs.true3
  %5 = load i32, ptr %feature.addr, align 4, !dbg !1035
  %conv4 = sext i32 %5 to i64, !dbg !1035
  %call = call zeroext i1 @const_test_bit(i64 noundef %conv4, ptr noundef getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 28)) #15, !dbg !1035
  %conv5 = zext i1 %call to i32, !dbg !1035
  br label %cond.end, !dbg !1035

cond.false:                                       ; preds = %land.lhs.true3, %land.lhs.true1, %land.lhs.true, %entry
  %6 = load i32, ptr %feature.addr, align 4, !dbg !1035
  %conv6 = sext i32 %6 to i64, !dbg !1035
  %call7 = call zeroext i1 @_test_bit(i64 noundef %conv6, ptr noundef getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 28)) #15, !dbg !1035
  %conv8 = zext i1 %call7 to i32, !dbg !1035
  br label %cond.end, !dbg !1035

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv5, %cond.true ], [ %conv8, %cond.false ], !dbg !1035
  %cmp = icmp ne i32 %cond, 0, !dbg !1036
  ret i1 %cmp, !dbg !1037
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @init_completion(ptr noundef %x) #10 align 16 !dbg !361 {
entry:
  %x.addr = alloca ptr, align 8
  store ptr %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !366, metadata !DIExpression()), !dbg !1038
  %0 = load ptr, ptr %x.addr, align 8, !dbg !1039
  %done = getelementptr inbounds %struct.completion, ptr %0, i32 0, i32 0, !dbg !1040
  store i32 0, ptr %done, align 8, !dbg !1041
  br label %do.body, !dbg !1042

do.body:                                          ; preds = %entry
  %1 = load ptr, ptr %x.addr, align 8, !dbg !1043
  %wait = getelementptr inbounds %struct.completion, ptr %1, i32 0, i32 1, !dbg !1043
  call void @__init_swait_queue_head(ptr noundef %wait, ptr noundef @.str.5, ptr noundef @init_completion.__key) #15, !dbg !1043
  br label %do.end, !dbg !1043

do.end:                                           ; preds = %do.body
  ret void, !dbg !1045
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__init_work(ptr noundef %work, i32 noundef %onstack) #10 align 16 !dbg !1046 {
entry:
  %work.addr = alloca ptr, align 8
  %onstack.addr = alloca i32, align 4
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !1050, metadata !DIExpression()), !dbg !1052
  store i32 %onstack, ptr %onstack.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %onstack.addr, metadata !1051, metadata !DIExpression()), !dbg !1053
  ret void, !dbg !1054
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #10 align 16 !dbg !1055 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !1060, metadata !DIExpression()), !dbg !1061
  br label %do.body, !dbg !1062

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !1063

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !1065

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !1063

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !1067
  %1 = load ptr, ptr %list.addr, align 8, !dbg !1067
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !1067
  store volatile ptr %0, ptr %next, align 8, !dbg !1067
  br label %do.end3, !dbg !1067

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !1063

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !1069

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !1070

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !1072

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !1070

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !1074
  %3 = load ptr, ptr %list.addr, align 8, !dbg !1074
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !1074
  store volatile ptr %2, ptr %prev, align 8, !dbg !1074
  br label %do.end9, !dbg !1074

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !1070

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !1076
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @efi_call_rts(ptr noundef %work) #0 align 16 !dbg !1077 {
entry:
  %work.addr = alloca ptr, align 8
  %args = alloca ptr, align 8
  %status = alloca i64, align 8
  %flags = alloca i64, align 8
  %ret = alloca i64, align 8
  %ibt = alloca i64, align 8
  %tmp = alloca i64, align 8
  %tmp3 = alloca i64, align 8
  %ret5 = alloca i64, align 8
  %ibt6 = alloca i64, align 8
  %tmp12 = alloca i64, align 8
  %tmp15 = alloca i64, align 8
  %ret17 = alloca i64, align 8
  %ibt18 = alloca i64, align 8
  %tmp24 = alloca i64, align 8
  %tmp27 = alloca i64, align 8
  %ret29 = alloca i64, align 8
  %ibt30 = alloca i64, align 8
  %tmp36 = alloca i64, align 8
  %tmp39 = alloca i64, align 8
  %ret41 = alloca i64, align 8
  %ibt42 = alloca i64, align 8
  %tmp48 = alloca i64, align 8
  %tmp50 = alloca i64, align 8
  %ret52 = alloca i64, align 8
  %ibt53 = alloca i64, align 8
  %tmp59 = alloca i64, align 8
  %tmp63 = alloca i64, align 8
  %ret65 = alloca i64, align 8
  %ibt66 = alloca i64, align 8
  %tmp72 = alloca i64, align 8
  %tmp79 = alloca i64, align 8
  %ret81 = alloca i64, align 8
  %ibt82 = alloca i64, align 8
  %tmp88 = alloca i64, align 8
  %tmp91 = alloca i64, align 8
  %ret93 = alloca i64, align 8
  %ibt94 = alloca i64, align 8
  %tmp100 = alloca i64, align 8
  %tmp102 = alloca i64, align 8
  %ret104 = alloca i64, align 8
  %ibt105 = alloca i64, align 8
  %tmp111 = alloca i64, align 8
  %tmp113 = alloca i64, align 8
  %ret115 = alloca i64, align 8
  %ibt116 = alloca i64, align 8
  %tmp122 = alloca i64, align 8
  %tmp126 = alloca i64, align 8
  %ret128 = alloca i64, align 8
  %ibt129 = alloca i64, align 8
  %tmp135 = alloca i64, align 8
  %tmp137 = alloca i64, align 8
  %tmp141 = alloca i32, align 4
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !1079, metadata !DIExpression()), !dbg !1122
  call void @llvm.lifetime.start.p0(i64 8, ptr %args) #14, !dbg !1123
  call void @llvm.dbg.declare(metadata ptr %args, metadata !1080, metadata !DIExpression()), !dbg !1124
  %0 = load ptr, ptr @efi_rts_work, align 8, !dbg !1125
  store ptr %0, ptr %args, align 8, !dbg !1124
  call void @llvm.lifetime.start.p0(i64 8, ptr %status) #14, !dbg !1126
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1083, metadata !DIExpression()), !dbg !1127
  store i64 -9223372036854775794, ptr %status, align 8, !dbg !1127
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #14, !dbg !1128
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !1084, metadata !DIExpression()), !dbg !1129
  call void @arch_efi_call_virt_setup() #15, !dbg !1130
  %call = call i64 @efi_call_virt_save_flags() #15, !dbg !1131
  store i64 %call, ptr %flags, align 8, !dbg !1132
  %1 = load i32, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 3), align 8, !dbg !1133
  switch i32 %1, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb4
    i32 3, label %sw.bb16
    i32 4, label %sw.bb28
    i32 5, label %sw.bb40
    i32 6, label %sw.bb51
    i32 7, label %sw.bb64
    i32 8, label %sw.bb80
    i32 9, label %sw.bb92
    i32 11, label %sw.bb103
    i32 12, label %sw.bb114
    i32 13, label %sw.bb127
  ], !dbg !1134

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #14, !dbg !1135
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !1085, metadata !DIExpression()), !dbg !1135
  call void @llvm.lifetime.start.p0(i64 8, ptr %ibt) #14, !dbg !1135
  call void @llvm.dbg.declare(metadata ptr %ibt, metadata !1088, metadata !DIExpression()), !dbg !1135
  %2 = load i8, ptr @efi_disable_ibt_for_runtime, align 1, !dbg !1135, !range !703, !noundef !353
  %tobool = trunc i8 %2 to i1, !dbg !1135
  %call1 = call i64 @ibt_save(i1 noundef zeroext %tobool) #17, !dbg !1135
  store i64 %call1, ptr %ibt, align 8, !dbg !1135
  br label %do.body, !dbg !1136

do.body:                                          ; preds = %sw.bb
  br label %do.cond, !dbg !1139

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1139

do.end:                                           ; preds = %do.cond
  %3 = load ptr, ptr @efi, align 8, !dbg !1141
  %get_time = getelementptr inbounds %struct.anon.13, ptr %3, i32 0, i32 1, !dbg !1141
  %4 = load ptr, ptr %get_time, align 8, !dbg !1141
  %5 = load ptr, ptr %args, align 8, !dbg !1141
  %time = getelementptr inbounds %struct.anon.1, ptr %5, i32 0, i32 0, !dbg !1141
  %6 = load ptr, ptr %time, align 8, !dbg !1141
  %7 = load ptr, ptr %args, align 8, !dbg !1141
  %capabilities = getelementptr inbounds %struct.anon.1, ptr %7, i32 0, i32 1, !dbg !1141
  %8 = load ptr, ptr %capabilities, align 8, !dbg !1141
  %call2 = call i64 (ptr, ...) @__efi_call(ptr noundef %4, ptr noundef %6, ptr noundef %8) #15, !dbg !1141
  store i64 %call2, ptr %tmp, align 8, !dbg !1141
  %9 = load i64, ptr %tmp, align 8, !dbg !1141
  store i64 %9, ptr %ret, align 8, !dbg !1135
  %10 = load i64, ptr %ibt, align 8, !dbg !1135
  call void @ibt_restore(i64 noundef %10) #17, !dbg !1135
  %11 = load i64, ptr %ret, align 8, !dbg !1135
  store i64 %11, ptr %tmp3, align 8, !dbg !1135
  call void @llvm.lifetime.end.p0(i64 8, ptr %ibt) #14, !dbg !1142
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #14, !dbg !1142
  %12 = load i64, ptr %tmp3, align 8, !dbg !1135
  store i64 %12, ptr %status, align 8, !dbg !1143
  br label %sw.epilog, !dbg !1144

sw.bb4:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret5) #14, !dbg !1145
  call void @llvm.dbg.declare(metadata ptr %ret5, metadata !1089, metadata !DIExpression()), !dbg !1145
  call void @llvm.lifetime.start.p0(i64 8, ptr %ibt6) #14, !dbg !1145
  call void @llvm.dbg.declare(metadata ptr %ibt6, metadata !1091, metadata !DIExpression()), !dbg !1145
  %13 = load i8, ptr @efi_disable_ibt_for_runtime, align 1, !dbg !1145, !range !703, !noundef !353
  %tobool7 = trunc i8 %13 to i1, !dbg !1145
  %call8 = call i64 @ibt_save(i1 noundef zeroext %tobool7) #17, !dbg !1145
  store i64 %call8, ptr %ibt6, align 8, !dbg !1145
  br label %do.body9, !dbg !1146

do.body9:                                         ; preds = %sw.bb4
  br label %do.cond10, !dbg !1149

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !1149

do.end11:                                         ; preds = %do.cond10
  %14 = load ptr, ptr @efi, align 8, !dbg !1151
  %set_time = getelementptr inbounds %struct.anon.13, ptr %14, i32 0, i32 2, !dbg !1151
  %15 = load ptr, ptr %set_time, align 8, !dbg !1151
  %16 = load ptr, ptr %args, align 8, !dbg !1151
  %time13 = getelementptr inbounds %struct.anon.2, ptr %16, i32 0, i32 0, !dbg !1151
  %17 = load ptr, ptr %time13, align 8, !dbg !1151
  %call14 = call i64 (ptr, ...) @__efi_call(ptr noundef %15, ptr noundef %17) #15, !dbg !1151
  store i64 %call14, ptr %tmp12, align 8, !dbg !1151
  %18 = load i64, ptr %tmp12, align 8, !dbg !1151
  store i64 %18, ptr %ret5, align 8, !dbg !1145
  %19 = load i64, ptr %ibt6, align 8, !dbg !1145
  call void @ibt_restore(i64 noundef %19) #17, !dbg !1145
  %20 = load i64, ptr %ret5, align 8, !dbg !1145
  store i64 %20, ptr %tmp15, align 8, !dbg !1145
  call void @llvm.lifetime.end.p0(i64 8, ptr %ibt6) #14, !dbg !1152
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret5) #14, !dbg !1152
  %21 = load i64, ptr %tmp15, align 8, !dbg !1145
  store i64 %21, ptr %status, align 8, !dbg !1153
  br label %sw.epilog, !dbg !1154

sw.bb16:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret17) #14, !dbg !1155
  call void @llvm.dbg.declare(metadata ptr %ret17, metadata !1092, metadata !DIExpression()), !dbg !1155
  call void @llvm.lifetime.start.p0(i64 8, ptr %ibt18) #14, !dbg !1155
  call void @llvm.dbg.declare(metadata ptr %ibt18, metadata !1094, metadata !DIExpression()), !dbg !1155
  %22 = load i8, ptr @efi_disable_ibt_for_runtime, align 1, !dbg !1155, !range !703, !noundef !353
  %tobool19 = trunc i8 %22 to i1, !dbg !1155
  %call20 = call i64 @ibt_save(i1 noundef zeroext %tobool19) #17, !dbg !1155
  store i64 %call20, ptr %ibt18, align 8, !dbg !1155
  br label %do.body21, !dbg !1156

do.body21:                                        ; preds = %sw.bb16
  br label %do.cond22, !dbg !1159

do.cond22:                                        ; preds = %do.body21
  br label %do.end23, !dbg !1159

do.end23:                                         ; preds = %do.cond22
  %23 = load ptr, ptr @efi, align 8, !dbg !1161
  %get_wakeup_time = getelementptr inbounds %struct.anon.13, ptr %23, i32 0, i32 3, !dbg !1161
  %24 = load ptr, ptr %get_wakeup_time, align 8, !dbg !1161
  %25 = load ptr, ptr %args, align 8, !dbg !1161
  %enabled = getelementptr inbounds %struct.anon.3, ptr %25, i32 0, i32 0, !dbg !1161
  %26 = load ptr, ptr %enabled, align 8, !dbg !1161
  %27 = load ptr, ptr %args, align 8, !dbg !1161
  %pending = getelementptr inbounds %struct.anon.3, ptr %27, i32 0, i32 1, !dbg !1161
  %28 = load ptr, ptr %pending, align 8, !dbg !1161
  %29 = load ptr, ptr %args, align 8, !dbg !1161
  %time25 = getelementptr inbounds %struct.anon.3, ptr %29, i32 0, i32 2, !dbg !1161
  %30 = load ptr, ptr %time25, align 8, !dbg !1161
  %call26 = call i64 (ptr, ...) @__efi_call(ptr noundef %24, ptr noundef %26, ptr noundef %28, ptr noundef %30) #15, !dbg !1161
  store i64 %call26, ptr %tmp24, align 8, !dbg !1161
  %31 = load i64, ptr %tmp24, align 8, !dbg !1161
  store i64 %31, ptr %ret17, align 8, !dbg !1155
  %32 = load i64, ptr %ibt18, align 8, !dbg !1155
  call void @ibt_restore(i64 noundef %32) #17, !dbg !1155
  %33 = load i64, ptr %ret17, align 8, !dbg !1155
  store i64 %33, ptr %tmp27, align 8, !dbg !1155
  call void @llvm.lifetime.end.p0(i64 8, ptr %ibt18) #14, !dbg !1162
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret17) #14, !dbg !1162
  %34 = load i64, ptr %tmp27, align 8, !dbg !1155
  store i64 %34, ptr %status, align 8, !dbg !1163
  br label %sw.epilog, !dbg !1164

sw.bb28:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret29) #14, !dbg !1165
  call void @llvm.dbg.declare(metadata ptr %ret29, metadata !1095, metadata !DIExpression()), !dbg !1165
  call void @llvm.lifetime.start.p0(i64 8, ptr %ibt30) #14, !dbg !1165
  call void @llvm.dbg.declare(metadata ptr %ibt30, metadata !1097, metadata !DIExpression()), !dbg !1165
  %35 = load i8, ptr @efi_disable_ibt_for_runtime, align 1, !dbg !1165, !range !703, !noundef !353
  %tobool31 = trunc i8 %35 to i1, !dbg !1165
  %call32 = call i64 @ibt_save(i1 noundef zeroext %tobool31) #17, !dbg !1165
  store i64 %call32, ptr %ibt30, align 8, !dbg !1165
  br label %do.body33, !dbg !1166

do.body33:                                        ; preds = %sw.bb28
  br label %do.cond34, !dbg !1169

do.cond34:                                        ; preds = %do.body33
  br label %do.end35, !dbg !1169

do.end35:                                         ; preds = %do.cond34
  %36 = load ptr, ptr @efi, align 8, !dbg !1171
  %set_wakeup_time = getelementptr inbounds %struct.anon.13, ptr %36, i32 0, i32 4, !dbg !1171
  %37 = load ptr, ptr %set_wakeup_time, align 8, !dbg !1171
  %38 = load ptr, ptr %args, align 8, !dbg !1171
  %enable = getelementptr inbounds %struct.anon.4, ptr %38, i32 0, i32 0, !dbg !1171
  %39 = load i8, ptr %enable, align 8, !dbg !1171
  %conv = zext i8 %39 to i32, !dbg !1171
  %40 = load ptr, ptr %args, align 8, !dbg !1171
  %time37 = getelementptr inbounds %struct.anon.4, ptr %40, i32 0, i32 1, !dbg !1171
  %41 = load ptr, ptr %time37, align 8, !dbg !1171
  %call38 = call i64 (ptr, ...) @__efi_call(ptr noundef %37, i32 noundef %conv, ptr noundef %41) #15, !dbg !1171
  store i64 %call38, ptr %tmp36, align 8, !dbg !1171
  %42 = load i64, ptr %tmp36, align 8, !dbg !1171
  store i64 %42, ptr %ret29, align 8, !dbg !1165
  %43 = load i64, ptr %ibt30, align 8, !dbg !1165
  call void @ibt_restore(i64 noundef %43) #17, !dbg !1165
  %44 = load i64, ptr %ret29, align 8, !dbg !1165
  store i64 %44, ptr %tmp39, align 8, !dbg !1165
  call void @llvm.lifetime.end.p0(i64 8, ptr %ibt30) #14, !dbg !1172
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret29) #14, !dbg !1172
  %45 = load i64, ptr %tmp39, align 8, !dbg !1165
  store i64 %45, ptr %status, align 8, !dbg !1173
  br label %sw.epilog, !dbg !1174

sw.bb40:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret41) #14, !dbg !1175
  call void @llvm.dbg.declare(metadata ptr %ret41, metadata !1098, metadata !DIExpression()), !dbg !1175
  call void @llvm.lifetime.start.p0(i64 8, ptr %ibt42) #14, !dbg !1175
  call void @llvm.dbg.declare(metadata ptr %ibt42, metadata !1100, metadata !DIExpression()), !dbg !1175
  %46 = load i8, ptr @efi_disable_ibt_for_runtime, align 1, !dbg !1175, !range !703, !noundef !353
  %tobool43 = trunc i8 %46 to i1, !dbg !1175
  %call44 = call i64 @ibt_save(i1 noundef zeroext %tobool43) #17, !dbg !1175
  store i64 %call44, ptr %ibt42, align 8, !dbg !1175
  br label %do.body45, !dbg !1176

do.body45:                                        ; preds = %sw.bb40
  br label %do.cond46, !dbg !1179

do.cond46:                                        ; preds = %do.body45
  br label %do.end47, !dbg !1179

do.end47:                                         ; preds = %do.cond46
  %47 = load ptr, ptr @efi, align 8, !dbg !1181
  %get_variable = getelementptr inbounds %struct.anon.13, ptr %47, i32 0, i32 7, !dbg !1181
  %48 = load ptr, ptr %get_variable, align 8, !dbg !1181
  %49 = load ptr, ptr %args, align 8, !dbg !1181
  %name = getelementptr inbounds %struct.anon.5, ptr %49, i32 0, i32 0, !dbg !1181
  %50 = load ptr, ptr %name, align 8, !dbg !1181
  %51 = load ptr, ptr %args, align 8, !dbg !1181
  %vendor = getelementptr inbounds %struct.anon.5, ptr %51, i32 0, i32 1, !dbg !1181
  %52 = load ptr, ptr %vendor, align 8, !dbg !1181
  %53 = load ptr, ptr %args, align 8, !dbg !1181
  %attr = getelementptr inbounds %struct.anon.5, ptr %53, i32 0, i32 2, !dbg !1181
  %54 = load ptr, ptr %attr, align 8, !dbg !1181
  %55 = load ptr, ptr %args, align 8, !dbg !1181
  %data_size = getelementptr inbounds %struct.anon.5, ptr %55, i32 0, i32 3, !dbg !1181
  %56 = load ptr, ptr %data_size, align 8, !dbg !1181
  %57 = load ptr, ptr %args, align 8, !dbg !1181
  %data = getelementptr inbounds %struct.anon.5, ptr %57, i32 0, i32 4, !dbg !1181
  %58 = load ptr, ptr %data, align 8, !dbg !1181
  %call49 = call i64 (ptr, ...) @__efi_call(ptr noundef %48, ptr noundef %50, ptr noundef %52, ptr noundef %54, ptr noundef %56, ptr noundef %58) #15, !dbg !1181
  store i64 %call49, ptr %tmp48, align 8, !dbg !1181
  %59 = load i64, ptr %tmp48, align 8, !dbg !1181
  store i64 %59, ptr %ret41, align 8, !dbg !1175
  %60 = load i64, ptr %ibt42, align 8, !dbg !1175
  call void @ibt_restore(i64 noundef %60) #17, !dbg !1175
  %61 = load i64, ptr %ret41, align 8, !dbg !1175
  store i64 %61, ptr %tmp50, align 8, !dbg !1175
  call void @llvm.lifetime.end.p0(i64 8, ptr %ibt42) #14, !dbg !1182
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret41) #14, !dbg !1182
  %62 = load i64, ptr %tmp50, align 8, !dbg !1175
  store i64 %62, ptr %status, align 8, !dbg !1183
  br label %sw.epilog, !dbg !1184

sw.bb51:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret52) #14, !dbg !1185
  call void @llvm.dbg.declare(metadata ptr %ret52, metadata !1101, metadata !DIExpression()), !dbg !1185
  call void @llvm.lifetime.start.p0(i64 8, ptr %ibt53) #14, !dbg !1185
  call void @llvm.dbg.declare(metadata ptr %ibt53, metadata !1103, metadata !DIExpression()), !dbg !1185
  %63 = load i8, ptr @efi_disable_ibt_for_runtime, align 1, !dbg !1185, !range !703, !noundef !353
  %tobool54 = trunc i8 %63 to i1, !dbg !1185
  %call55 = call i64 @ibt_save(i1 noundef zeroext %tobool54) #17, !dbg !1185
  store i64 %call55, ptr %ibt53, align 8, !dbg !1185
  br label %do.body56, !dbg !1186

do.body56:                                        ; preds = %sw.bb51
  br label %do.cond57, !dbg !1189

do.cond57:                                        ; preds = %do.body56
  br label %do.end58, !dbg !1189

do.end58:                                         ; preds = %do.cond57
  %64 = load ptr, ptr @efi, align 8, !dbg !1191
  %get_next_variable = getelementptr inbounds %struct.anon.13, ptr %64, i32 0, i32 8, !dbg !1191
  %65 = load ptr, ptr %get_next_variable, align 8, !dbg !1191
  %66 = load ptr, ptr %args, align 8, !dbg !1191
  %name_size = getelementptr inbounds %struct.anon.6, ptr %66, i32 0, i32 0, !dbg !1191
  %67 = load ptr, ptr %name_size, align 8, !dbg !1191
  %68 = load ptr, ptr %args, align 8, !dbg !1191
  %name60 = getelementptr inbounds %struct.anon.6, ptr %68, i32 0, i32 1, !dbg !1191
  %69 = load ptr, ptr %name60, align 8, !dbg !1191
  %70 = load ptr, ptr %args, align 8, !dbg !1191
  %vendor61 = getelementptr inbounds %struct.anon.6, ptr %70, i32 0, i32 2, !dbg !1191
  %71 = load ptr, ptr %vendor61, align 8, !dbg !1191
  %call62 = call i64 (ptr, ...) @__efi_call(ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #15, !dbg !1191
  store i64 %call62, ptr %tmp59, align 8, !dbg !1191
  %72 = load i64, ptr %tmp59, align 8, !dbg !1191
  store i64 %72, ptr %ret52, align 8, !dbg !1185
  %73 = load i64, ptr %ibt53, align 8, !dbg !1185
  call void @ibt_restore(i64 noundef %73) #17, !dbg !1185
  %74 = load i64, ptr %ret52, align 8, !dbg !1185
  store i64 %74, ptr %tmp63, align 8, !dbg !1185
  call void @llvm.lifetime.end.p0(i64 8, ptr %ibt53) #14, !dbg !1192
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret52) #14, !dbg !1192
  %75 = load i64, ptr %tmp63, align 8, !dbg !1185
  store i64 %75, ptr %status, align 8, !dbg !1193
  br label %sw.epilog, !dbg !1194

sw.bb64:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret65) #14, !dbg !1195
  call void @llvm.dbg.declare(metadata ptr %ret65, metadata !1104, metadata !DIExpression()), !dbg !1195
  call void @llvm.lifetime.start.p0(i64 8, ptr %ibt66) #14, !dbg !1195
  call void @llvm.dbg.declare(metadata ptr %ibt66, metadata !1106, metadata !DIExpression()), !dbg !1195
  %76 = load i8, ptr @efi_disable_ibt_for_runtime, align 1, !dbg !1195, !range !703, !noundef !353
  %tobool67 = trunc i8 %76 to i1, !dbg !1195
  %call68 = call i64 @ibt_save(i1 noundef zeroext %tobool67) #17, !dbg !1195
  store i64 %call68, ptr %ibt66, align 8, !dbg !1195
  br label %do.body69, !dbg !1196

do.body69:                                        ; preds = %sw.bb64
  br label %do.cond70, !dbg !1199

do.cond70:                                        ; preds = %do.body69
  br label %do.end71, !dbg !1199

do.end71:                                         ; preds = %do.cond70
  %77 = load ptr, ptr @efi, align 8, !dbg !1201
  %set_variable = getelementptr inbounds %struct.anon.13, ptr %77, i32 0, i32 9, !dbg !1201
  %78 = load ptr, ptr %set_variable, align 8, !dbg !1201
  %79 = load ptr, ptr %args, align 8, !dbg !1201
  %name73 = getelementptr inbounds %struct.anon.7, ptr %79, i32 0, i32 0, !dbg !1201
  %80 = load ptr, ptr %name73, align 8, !dbg !1201
  %81 = load ptr, ptr %args, align 8, !dbg !1201
  %vendor74 = getelementptr inbounds %struct.anon.7, ptr %81, i32 0, i32 1, !dbg !1201
  %82 = load ptr, ptr %vendor74, align 8, !dbg !1201
  %83 = load ptr, ptr %args, align 8, !dbg !1201
  %attr75 = getelementptr inbounds %struct.anon.7, ptr %83, i32 0, i32 2, !dbg !1201
  %84 = load i32, ptr %attr75, align 8, !dbg !1201
  %85 = load ptr, ptr %args, align 8, !dbg !1201
  %data_size76 = getelementptr inbounds %struct.anon.7, ptr %85, i32 0, i32 3, !dbg !1201
  %86 = load i64, ptr %data_size76, align 8, !dbg !1201
  %87 = load ptr, ptr %args, align 8, !dbg !1201
  %data77 = getelementptr inbounds %struct.anon.7, ptr %87, i32 0, i32 4, !dbg !1201
  %88 = load ptr, ptr %data77, align 8, !dbg !1201
  %call78 = call i64 (ptr, ...) @__efi_call(ptr noundef %78, ptr noundef %80, ptr noundef %82, i32 noundef %84, i64 noundef %86, ptr noundef %88) #15, !dbg !1201
  store i64 %call78, ptr %tmp72, align 8, !dbg !1201
  %89 = load i64, ptr %tmp72, align 8, !dbg !1201
  store i64 %89, ptr %ret65, align 8, !dbg !1195
  %90 = load i64, ptr %ibt66, align 8, !dbg !1195
  call void @ibt_restore(i64 noundef %90) #17, !dbg !1195
  %91 = load i64, ptr %ret65, align 8, !dbg !1195
  store i64 %91, ptr %tmp79, align 8, !dbg !1195
  call void @llvm.lifetime.end.p0(i64 8, ptr %ibt66) #14, !dbg !1202
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret65) #14, !dbg !1202
  %92 = load i64, ptr %tmp79, align 8, !dbg !1195
  store i64 %92, ptr %status, align 8, !dbg !1203
  br label %sw.epilog, !dbg !1204

sw.bb80:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret81) #14, !dbg !1205
  call void @llvm.dbg.declare(metadata ptr %ret81, metadata !1107, metadata !DIExpression()), !dbg !1205
  call void @llvm.lifetime.start.p0(i64 8, ptr %ibt82) #14, !dbg !1205
  call void @llvm.dbg.declare(metadata ptr %ibt82, metadata !1109, metadata !DIExpression()), !dbg !1205
  %93 = load i8, ptr @efi_disable_ibt_for_runtime, align 1, !dbg !1205, !range !703, !noundef !353
  %tobool83 = trunc i8 %93 to i1, !dbg !1205
  %call84 = call i64 @ibt_save(i1 noundef zeroext %tobool83) #17, !dbg !1205
  store i64 %call84, ptr %ibt82, align 8, !dbg !1205
  br label %do.body85, !dbg !1206

do.body85:                                        ; preds = %sw.bb80
  br label %do.cond86, !dbg !1209

do.cond86:                                        ; preds = %do.body85
  br label %do.end87, !dbg !1209

do.end87:                                         ; preds = %do.cond86
  %94 = load ptr, ptr @efi, align 8, !dbg !1211
  %query_variable_info = getelementptr inbounds %struct.anon.13, ptr %94, i32 0, i32 14, !dbg !1211
  %95 = load ptr, ptr %query_variable_info, align 8, !dbg !1211
  %96 = load ptr, ptr %args, align 8, !dbg !1211
  %attr89 = getelementptr inbounds %struct.anon.8, ptr %96, i32 0, i32 0, !dbg !1211
  %97 = load i32, ptr %attr89, align 8, !dbg !1211
  %98 = load ptr, ptr %args, align 8, !dbg !1211
  %storage_space = getelementptr inbounds %struct.anon.8, ptr %98, i32 0, i32 1, !dbg !1211
  %99 = load ptr, ptr %storage_space, align 8, !dbg !1211
  %100 = load ptr, ptr %args, align 8, !dbg !1211
  %remaining_space = getelementptr inbounds %struct.anon.8, ptr %100, i32 0, i32 2, !dbg !1211
  %101 = load ptr, ptr %remaining_space, align 8, !dbg !1211
  %102 = load ptr, ptr %args, align 8, !dbg !1211
  %max_variable_size = getelementptr inbounds %struct.anon.8, ptr %102, i32 0, i32 3, !dbg !1211
  %103 = load ptr, ptr %max_variable_size, align 8, !dbg !1211
  %call90 = call i64 (ptr, ...) @__efi_call(ptr noundef %95, i32 noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103) #15, !dbg !1211
  store i64 %call90, ptr %tmp88, align 8, !dbg !1211
  %104 = load i64, ptr %tmp88, align 8, !dbg !1211
  store i64 %104, ptr %ret81, align 8, !dbg !1205
  %105 = load i64, ptr %ibt82, align 8, !dbg !1205
  call void @ibt_restore(i64 noundef %105) #17, !dbg !1205
  %106 = load i64, ptr %ret81, align 8, !dbg !1205
  store i64 %106, ptr %tmp91, align 8, !dbg !1205
  call void @llvm.lifetime.end.p0(i64 8, ptr %ibt82) #14, !dbg !1212
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret81) #14, !dbg !1212
  %107 = load i64, ptr %tmp91, align 8, !dbg !1205
  store i64 %107, ptr %status, align 8, !dbg !1213
  br label %sw.epilog, !dbg !1214

sw.bb92:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret93) #14, !dbg !1215
  call void @llvm.dbg.declare(metadata ptr %ret93, metadata !1110, metadata !DIExpression()), !dbg !1215
  call void @llvm.lifetime.start.p0(i64 8, ptr %ibt94) #14, !dbg !1215
  call void @llvm.dbg.declare(metadata ptr %ibt94, metadata !1112, metadata !DIExpression()), !dbg !1215
  %108 = load i8, ptr @efi_disable_ibt_for_runtime, align 1, !dbg !1215, !range !703, !noundef !353
  %tobool95 = trunc i8 %108 to i1, !dbg !1215
  %call96 = call i64 @ibt_save(i1 noundef zeroext %tobool95) #17, !dbg !1215
  store i64 %call96, ptr %ibt94, align 8, !dbg !1215
  br label %do.body97, !dbg !1216

do.body97:                                        ; preds = %sw.bb92
  br label %do.cond98, !dbg !1219

do.cond98:                                        ; preds = %do.body97
  br label %do.end99, !dbg !1219

do.end99:                                         ; preds = %do.cond98
  %109 = load ptr, ptr @efi, align 8, !dbg !1221
  %get_next_high_mono_count = getelementptr inbounds %struct.anon.13, ptr %109, i32 0, i32 10, !dbg !1221
  %110 = load ptr, ptr %get_next_high_mono_count, align 8, !dbg !1221
  %111 = load ptr, ptr %args, align 8, !dbg !1221
  %high_count = getelementptr inbounds %struct.anon.9, ptr %111, i32 0, i32 0, !dbg !1221
  %112 = load ptr, ptr %high_count, align 8, !dbg !1221
  %call101 = call i64 (ptr, ...) @__efi_call(ptr noundef %110, ptr noundef %112) #15, !dbg !1221
  store i64 %call101, ptr %tmp100, align 8, !dbg !1221
  %113 = load i64, ptr %tmp100, align 8, !dbg !1221
  store i64 %113, ptr %ret93, align 8, !dbg !1215
  %114 = load i64, ptr %ibt94, align 8, !dbg !1215
  call void @ibt_restore(i64 noundef %114) #17, !dbg !1215
  %115 = load i64, ptr %ret93, align 8, !dbg !1215
  store i64 %115, ptr %tmp102, align 8, !dbg !1215
  call void @llvm.lifetime.end.p0(i64 8, ptr %ibt94) #14, !dbg !1222
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret93) #14, !dbg !1222
  %116 = load i64, ptr %tmp102, align 8, !dbg !1215
  store i64 %116, ptr %status, align 8, !dbg !1223
  br label %sw.epilog, !dbg !1224

sw.bb103:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret104) #14, !dbg !1225
  call void @llvm.dbg.declare(metadata ptr %ret104, metadata !1113, metadata !DIExpression()), !dbg !1225
  call void @llvm.lifetime.start.p0(i64 8, ptr %ibt105) #14, !dbg !1225
  call void @llvm.dbg.declare(metadata ptr %ibt105, metadata !1115, metadata !DIExpression()), !dbg !1225
  %117 = load i8, ptr @efi_disable_ibt_for_runtime, align 1, !dbg !1225, !range !703, !noundef !353
  %tobool106 = trunc i8 %117 to i1, !dbg !1225
  %call107 = call i64 @ibt_save(i1 noundef zeroext %tobool106) #17, !dbg !1225
  store i64 %call107, ptr %ibt105, align 8, !dbg !1225
  br label %do.body108, !dbg !1226

do.body108:                                       ; preds = %sw.bb103
  br label %do.cond109, !dbg !1229

do.cond109:                                       ; preds = %do.body108
  br label %do.end110, !dbg !1229

do.end110:                                        ; preds = %do.cond109
  %118 = load ptr, ptr @efi, align 8, !dbg !1231
  %update_capsule = getelementptr inbounds %struct.anon.13, ptr %118, i32 0, i32 12, !dbg !1231
  %119 = load ptr, ptr %update_capsule, align 8, !dbg !1231
  %120 = load ptr, ptr %args, align 8, !dbg !1231
  %capsules = getelementptr inbounds %struct.anon.10, ptr %120, i32 0, i32 0, !dbg !1231
  %121 = load ptr, ptr %capsules, align 8, !dbg !1231
  %122 = load ptr, ptr %args, align 8, !dbg !1231
  %count = getelementptr inbounds %struct.anon.10, ptr %122, i32 0, i32 1, !dbg !1231
  %123 = load i64, ptr %count, align 8, !dbg !1231
  %124 = load ptr, ptr %args, align 8, !dbg !1231
  %sg_list = getelementptr inbounds %struct.anon.10, ptr %124, i32 0, i32 2, !dbg !1231
  %125 = load i64, ptr %sg_list, align 8, !dbg !1231
  %call112 = call i64 (ptr, ...) @__efi_call(ptr noundef %119, ptr noundef %121, i64 noundef %123, i64 noundef %125) #15, !dbg !1231
  store i64 %call112, ptr %tmp111, align 8, !dbg !1231
  %126 = load i64, ptr %tmp111, align 8, !dbg !1231
  store i64 %126, ptr %ret104, align 8, !dbg !1225
  %127 = load i64, ptr %ibt105, align 8, !dbg !1225
  call void @ibt_restore(i64 noundef %127) #17, !dbg !1225
  %128 = load i64, ptr %ret104, align 8, !dbg !1225
  store i64 %128, ptr %tmp113, align 8, !dbg !1225
  call void @llvm.lifetime.end.p0(i64 8, ptr %ibt105) #14, !dbg !1232
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret104) #14, !dbg !1232
  %129 = load i64, ptr %tmp113, align 8, !dbg !1225
  store i64 %129, ptr %status, align 8, !dbg !1233
  br label %sw.epilog, !dbg !1234

sw.bb114:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret115) #14, !dbg !1235
  call void @llvm.dbg.declare(metadata ptr %ret115, metadata !1116, metadata !DIExpression()), !dbg !1235
  call void @llvm.lifetime.start.p0(i64 8, ptr %ibt116) #14, !dbg !1235
  call void @llvm.dbg.declare(metadata ptr %ibt116, metadata !1118, metadata !DIExpression()), !dbg !1235
  %130 = load i8, ptr @efi_disable_ibt_for_runtime, align 1, !dbg !1235, !range !703, !noundef !353
  %tobool117 = trunc i8 %130 to i1, !dbg !1235
  %call118 = call i64 @ibt_save(i1 noundef zeroext %tobool117) #17, !dbg !1235
  store i64 %call118, ptr %ibt116, align 8, !dbg !1235
  br label %do.body119, !dbg !1236

do.body119:                                       ; preds = %sw.bb114
  br label %do.cond120, !dbg !1239

do.cond120:                                       ; preds = %do.body119
  br label %do.end121, !dbg !1239

do.end121:                                        ; preds = %do.cond120
  %131 = load ptr, ptr @efi, align 8, !dbg !1241
  %query_capsule_caps = getelementptr inbounds %struct.anon.13, ptr %131, i32 0, i32 13, !dbg !1241
  %132 = load ptr, ptr %query_capsule_caps, align 8, !dbg !1241
  %133 = load ptr, ptr %args, align 8, !dbg !1241
  %capsules123 = getelementptr inbounds %struct.anon.11, ptr %133, i32 0, i32 0, !dbg !1241
  %134 = load ptr, ptr %capsules123, align 8, !dbg !1241
  %135 = load ptr, ptr %args, align 8, !dbg !1241
  %count124 = getelementptr inbounds %struct.anon.11, ptr %135, i32 0, i32 1, !dbg !1241
  %136 = load i64, ptr %count124, align 8, !dbg !1241
  %137 = load ptr, ptr %args, align 8, !dbg !1241
  %max_size = getelementptr inbounds %struct.anon.11, ptr %137, i32 0, i32 2, !dbg !1241
  %138 = load ptr, ptr %max_size, align 8, !dbg !1241
  %139 = load ptr, ptr %args, align 8, !dbg !1241
  %reset_type = getelementptr inbounds %struct.anon.11, ptr %139, i32 0, i32 3, !dbg !1241
  %140 = load ptr, ptr %reset_type, align 8, !dbg !1241
  %call125 = call i64 (ptr, ...) @__efi_call(ptr noundef %132, ptr noundef %134, i64 noundef %136, ptr noundef %138, ptr noundef %140) #15, !dbg !1241
  store i64 %call125, ptr %tmp122, align 8, !dbg !1241
  %141 = load i64, ptr %tmp122, align 8, !dbg !1241
  store i64 %141, ptr %ret115, align 8, !dbg !1235
  %142 = load i64, ptr %ibt116, align 8, !dbg !1235
  call void @ibt_restore(i64 noundef %142) #17, !dbg !1235
  %143 = load i64, ptr %ret115, align 8, !dbg !1235
  store i64 %143, ptr %tmp126, align 8, !dbg !1235
  call void @llvm.lifetime.end.p0(i64 8, ptr %ibt116) #14, !dbg !1242
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret115) #14, !dbg !1242
  %144 = load i64, ptr %tmp126, align 8, !dbg !1235
  store i64 %144, ptr %status, align 8, !dbg !1243
  br label %sw.epilog, !dbg !1244

sw.bb127:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret128) #14, !dbg !1245
  call void @llvm.dbg.declare(metadata ptr %ret128, metadata !1119, metadata !DIExpression()), !dbg !1245
  call void @llvm.lifetime.start.p0(i64 8, ptr %ibt129) #14, !dbg !1245
  call void @llvm.dbg.declare(metadata ptr %ibt129, metadata !1121, metadata !DIExpression()), !dbg !1245
  %145 = load i8, ptr @efi_disable_ibt_for_runtime, align 1, !dbg !1245, !range !703, !noundef !353
  %tobool130 = trunc i8 %145 to i1, !dbg !1245
  %call131 = call i64 @ibt_save(i1 noundef zeroext %tobool130) #17, !dbg !1245
  store i64 %call131, ptr %ibt129, align 8, !dbg !1245
  br label %do.body132, !dbg !1246

do.body132:                                       ; preds = %sw.bb127
  br label %do.cond133, !dbg !1249

do.cond133:                                       ; preds = %do.body132
  br label %do.end134, !dbg !1249

do.end134:                                        ; preds = %do.cond133
  %146 = load ptr, ptr %args, align 8, !dbg !1251
  %acpi_prm_handler = getelementptr inbounds %struct.anon.12, ptr %146, i32 0, i32 0, !dbg !1251
  %147 = load ptr, ptr %acpi_prm_handler, align 8, !dbg !1251
  %148 = load ptr, ptr %args, align 8, !dbg !1251
  %param_buffer_addr = getelementptr inbounds %struct.anon.12, ptr %148, i32 0, i32 1, !dbg !1251
  %149 = load i64, ptr %param_buffer_addr, align 8, !dbg !1251
  %150 = load ptr, ptr %args, align 8, !dbg !1251
  %context = getelementptr inbounds %struct.anon.12, ptr %150, i32 0, i32 2, !dbg !1251
  %151 = load ptr, ptr %context, align 8, !dbg !1251
  %call136 = call i64 (ptr, ...) @__efi_call(ptr noundef %147, i64 noundef %149, ptr noundef %151) #15, !dbg !1251
  store i64 %call136, ptr %tmp135, align 8, !dbg !1251
  %152 = load i64, ptr %tmp135, align 8, !dbg !1251
  store i64 %152, ptr %ret128, align 8, !dbg !1245
  %153 = load i64, ptr %ibt129, align 8, !dbg !1245
  call void @ibt_restore(i64 noundef %153) #17, !dbg !1245
  %154 = load i64, ptr %ret128, align 8, !dbg !1245
  store i64 %154, ptr %tmp137, align 8, !dbg !1245
  call void @llvm.lifetime.end.p0(i64 8, ptr %ibt129) #14, !dbg !1252
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret128) #14, !dbg !1252
  %155 = load i64, ptr %tmp137, align 8, !dbg !1245
  store i64 %155, ptr %status, align 8, !dbg !1253
  br label %sw.epilog, !dbg !1254

sw.default:                                       ; preds = %entry
  br label %do.body138, !dbg !1255

do.body138:                                       ; preds = %sw.default
  br label %do.cond139, !dbg !1257

do.cond139:                                       ; preds = %do.body138
  br label %do.end140, !dbg !1257

do.end140:                                        ; preds = %do.cond139
  %call142 = call i32 (ptr, ...) @_printk(ptr noundef @.str.6) #16, !dbg !1255
  store i32 %call142, ptr %tmp141, align 4, !dbg !1257
  %156 = load i32, ptr %tmp141, align 4, !dbg !1255
  br label %sw.epilog, !dbg !1259

sw.epilog:                                        ; preds = %do.end140, %do.end134, %do.end121, %do.end110, %do.end99, %do.end87, %do.end71, %do.end58, %do.end47, %do.end35, %do.end23, %do.end11, %do.end
  %157 = load i64, ptr %flags, align 8, !dbg !1260
  %158 = load ptr, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 5), align 8, !dbg !1261
  call void @efi_call_virt_check_flags(i64 noundef %157, ptr noundef %158) #15, !dbg !1262
  call void @arch_efi_call_virt_teardown() #15, !dbg !1263
  %159 = load i64, ptr %status, align 8, !dbg !1264
  store i64 %159, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 1), align 8, !dbg !1265
  call void @complete(ptr noundef getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 4)) #15, !dbg !1266
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #14, !dbg !1267
  call void @llvm.lifetime.end.p0(i64 8, ptr %status) #14, !dbg !1267
  call void @llvm.lifetime.end.p0(i64 8, ptr %args) #14, !dbg !1267
  ret void, !dbg !1267
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @queue_work(ptr noundef %wq, ptr noundef %work) #10 align 16 !dbg !1268 {
entry:
  %wq.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  store ptr %wq, ptr %wq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wq.addr, metadata !1274, metadata !DIExpression()), !dbg !1276
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !1275, metadata !DIExpression()), !dbg !1277
  %0 = load ptr, ptr %wq.addr, align 8, !dbg !1278
  %1 = load ptr, ptr %work.addr, align 8, !dbg !1279
  %call = call zeroext i1 @queue_work_on(i32 noundef 64, ptr noundef %0, ptr noundef %1) #15, !dbg !1280
  ret i1 %call, !dbg !1281
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1282 dso_local void @wait_for_completion(ptr noundef) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #12

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !1283 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1291, metadata !DIExpression()), !dbg !1296
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1292, metadata !DIExpression()), !dbg !1297
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #14, !dbg !1298
  call void @llvm.dbg.declare(metadata ptr %p, metadata !1293, metadata !DIExpression()), !dbg !1299
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !1300
  %1 = load i64, ptr %nr.addr, align 8, !dbg !1301
  %div = udiv i64 %1, 64, !dbg !1301
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !1302
  store ptr %add.ptr, ptr %p, align 8, !dbg !1299
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #14, !dbg !1303
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !1294, metadata !DIExpression()), !dbg !1304
  %2 = load i64, ptr %nr.addr, align 8, !dbg !1305
  %rem = urem i64 %2, 64, !dbg !1305
  %shl = shl i64 1, %rem, !dbg !1305
  store i64 %shl, ptr %mask, align 8, !dbg !1304
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #14, !dbg !1306
  call void @llvm.dbg.declare(metadata ptr %val, metadata !1295, metadata !DIExpression()), !dbg !1307
  %3 = load ptr, ptr %p, align 8, !dbg !1308
  %4 = load i64, ptr %3, align 8, !dbg !1309
  store i64 %4, ptr %val, align 8, !dbg !1307
  %5 = load i64, ptr %val, align 8, !dbg !1310
  %6 = load i64, ptr %mask, align 8, !dbg !1311
  %and = and i64 %5, %6, !dbg !1312
  %tobool = icmp ne i64 %and, 0, !dbg !1313
  %lnot = xor i1 %tobool, true, !dbg !1313
  %lnot1 = xor i1 %lnot, true, !dbg !1314
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #14, !dbg !1315
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #14, !dbg !1315
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #14, !dbg !1315
  ret i1 %lnot1, !dbg !1316
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !1317 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1320, metadata !DIExpression()), !dbg !1322
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1321, metadata !DIExpression()), !dbg !1323
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !1324
  %1 = load i64, ptr %nr.addr, align 8, !dbg !1325
  %div = udiv i64 %1, 64, !dbg !1325
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !1326
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #15, !dbg !1327
  %2 = load i64, ptr %nr.addr, align 8, !dbg !1328
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !1329
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #15, !dbg !1330
  ret i1 %call, !dbg !1331
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !1332 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1344, metadata !DIExpression()), !dbg !1346
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1345, metadata !DIExpression()), !dbg !1347
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1348
  %1 = load i64, ptr %size.addr, align 8, !dbg !1349
  %conv = trunc i64 %1 to i32, !dbg !1349
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #15, !dbg !1350
  %2 = load ptr, ptr %v.addr, align 8, !dbg !1351
  %3 = load i64, ptr %size.addr, align 8, !dbg !1351
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #15, !dbg !1351
  ret void, !dbg !1352
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !1353 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1356, metadata !DIExpression()), !dbg !1358
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1357, metadata !DIExpression()), !dbg !1359
  %0 = load i64, ptr %nr.addr, align 8, !dbg !1360
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1361
  br i1 %1, label %cond.true, label %cond.false, !dbg !1361

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !1362
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !1363
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #15, !dbg !1364
  %conv = zext i1 %call to i32, !dbg !1364
  br label %cond.end, !dbg !1361

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !1365
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !1366
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #15, !dbg !1367
  %conv2 = zext i1 %call1 to i32, !dbg !1367
  br label %cond.end, !dbg !1361

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !1361
  %tobool = icmp ne i32 %cond, 0, !dbg !1361
  ret i1 %tobool, !dbg !1368
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #10 align 16 !dbg !1369 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1374, metadata !DIExpression()), !dbg !1376
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1375, metadata !DIExpression()), !dbg !1377
  ret i1 true, !dbg !1378
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #10 align 16 !dbg !1379 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !1384, metadata !DIExpression()), !dbg !1387
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1385, metadata !DIExpression()), !dbg !1388
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !1386, metadata !DIExpression()), !dbg !1389
  ret void, !dbg !1390
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !1391 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1396, metadata !DIExpression()), !dbg !1398
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1397, metadata !DIExpression()), !dbg !1399
  %0 = load i64, ptr %nr.addr, align 8, !dbg !1400
  %and = and i64 %0, 63, !dbg !1401
  %shl = shl i64 1, %and, !dbg !1402
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !1403
  %2 = load i64, ptr %nr.addr, align 8, !dbg !1404
  %shr = ashr i64 %2, 6, !dbg !1405
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !1403
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !1403
  %and1 = and i64 %shl, %3, !dbg !1406
  %cmp = icmp ne i64 %and1, 0, !dbg !1407
  ret i1 %cmp, !dbg !1408
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !1409 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1411, metadata !DIExpression()), !dbg !1414
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1412, metadata !DIExpression()), !dbg !1415
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #14, !dbg !1416
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !1413, metadata !DIExpression()), !dbg !1417
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !1418
  %1 = load i64, ptr %nr.addr, align 8, !dbg !1419
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #14, !dbg !1420, !srcloc !1421
  %3 = icmp ult i8 %2, 2, !dbg !1420
  call void @llvm.assume(i1 %3), !dbg !1420
  store i8 %2, ptr %oldbit, align 1, !dbg !1420
  %4 = load i8, ptr %oldbit, align 1, !dbg !1422, !range !703, !noundef !353
  %tobool = trunc i8 %4 to i1, !dbg !1422
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #14, !dbg !1423
  ret i1 %tobool, !dbg !1424
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1425 dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1430 dso_local void @complete(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1431 dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) #5

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nocf_check noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }
attributes #15 = { noredzone }
attributes #16 = { cold noredzone }
attributes #17 = { nocf_check noredzone }

!llvm.dbg.cu = !{!15}
!llvm.module.flags = !{!403, !404, !405, !406, !407, !408, !409, !410}
!llvm.ident = !{!411}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 155, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/firmware/efi/runtime-wrappers.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "94b61d7a31eb7c482b353ce2559c9f5a")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 40)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "_rs", scope: !9, file: !2, line: 159, type: !393, isLocal: true, isDefinition: true)
!9 = distinct !DISubprogram(name: "efi_call_virt_check_flags", scope: !2, file: !2, line: 148, type: !10, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !377)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !13}
!12 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!15 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/firmware/efi/.runtime-wrappers.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/firmware/efi/runtime-wrappers\22 -D KBUILD_BASENAME=\22runtime_wrappers\22 -D KBUILD_MODNAME=\22runtime_wrappers\22 -D __KBUILD_MODNAME=kmod_runtime_wrappers -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/firmware/efi/runtime-wrappers.ll drivers/firmware/efi/runtime-wrappers.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !16, retainedTypes: !71, globals: !85, splitDebugInlining: false, nameTableKind: None)
!16 = !{!17, !23, !40, !45}
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lockdep_ok", file: !18, line: 87, baseType: !19, size: 32, elements: !20)
!18 = !DIFile(filename: "./include/linux/panic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3219e8109531a92b450817dd7e3cc0fb")
!19 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!20 = !{!21, !22}
!21 = !DIEnumerator(name: "LOCKDEP_STILL_OK", value: 0)
!22 = !DIEnumerator(name: "LOCKDEP_NOW_UNRELIABLE", value: 1)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "efi_rts_ids", file: !24, line: 1242, baseType: !19, size: 32, elements: !25)
!24 = !DIFile(filename: "./include/linux/efi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2323d214b32d787c50a5d65c12a21824")
!25 = !{!26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39}
!26 = !DIEnumerator(name: "EFI_NONE", value: 0)
!27 = !DIEnumerator(name: "EFI_GET_TIME", value: 1)
!28 = !DIEnumerator(name: "EFI_SET_TIME", value: 2)
!29 = !DIEnumerator(name: "EFI_GET_WAKEUP_TIME", value: 3)
!30 = !DIEnumerator(name: "EFI_SET_WAKEUP_TIME", value: 4)
!31 = !DIEnumerator(name: "EFI_GET_VARIABLE", value: 5)
!32 = !DIEnumerator(name: "EFI_GET_NEXT_VARIABLE", value: 6)
!33 = !DIEnumerator(name: "EFI_SET_VARIABLE", value: 7)
!34 = !DIEnumerator(name: "EFI_QUERY_VARIABLE_INFO", value: 8)
!35 = !DIEnumerator(name: "EFI_GET_NEXT_HIGH_MONO_COUNT", value: 9)
!36 = !DIEnumerator(name: "EFI_RESET_SYSTEM", value: 10)
!37 = !DIEnumerator(name: "EFI_UPDATE_CAPSULE", value: 11)
!38 = !DIEnumerator(name: "EFI_QUERY_CAPSULE_CAPS", value: 12)
!39 = !DIEnumerator(name: "EFI_ACPI_PRM_HANDLER", value: 13)
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !41, line: 10, baseType: !19, size: 32, elements: !42)
!41 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!42 = !{!43, !44}
!43 = !DIEnumerator(name: "false", value: 0)
!44 = !DIEnumerator(name: "true", value: 1)
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !46, line: 30, baseType: !19, size: 32, elements: !47)
!46 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!47 = !{!48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70}
!48 = !DIEnumerator(name: "WORK_STRUCT_PENDING_BIT", value: 0)
!49 = !DIEnumerator(name: "WORK_STRUCT_INACTIVE_BIT", value: 1)
!50 = !DIEnumerator(name: "WORK_STRUCT_PWQ_BIT", value: 2)
!51 = !DIEnumerator(name: "WORK_STRUCT_LINKED_BIT", value: 3)
!52 = !DIEnumerator(name: "WORK_STRUCT_COLOR_SHIFT", value: 4)
!53 = !DIEnumerator(name: "WORK_STRUCT_COLOR_BITS", value: 4)
!54 = !DIEnumerator(name: "WORK_STRUCT_PENDING", value: 1)
!55 = !DIEnumerator(name: "WORK_STRUCT_INACTIVE", value: 2)
!56 = !DIEnumerator(name: "WORK_STRUCT_PWQ", value: 4)
!57 = !DIEnumerator(name: "WORK_STRUCT_LINKED", value: 8)
!58 = !DIEnumerator(name: "WORK_STRUCT_STATIC", value: 0)
!59 = !DIEnumerator(name: "WORK_NR_COLORS", value: 16)
!60 = !DIEnumerator(name: "WORK_CPU_UNBOUND", value: 64)
!61 = !DIEnumerator(name: "WORK_STRUCT_FLAG_BITS", value: 8)
!62 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BASE", value: 4)
!63 = !DIEnumerator(name: "__WORK_OFFQ_CANCELING", value: 4)
!64 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BITS", value: 1)
!65 = !DIEnumerator(name: "WORK_OFFQ_POOL_SHIFT", value: 5)
!66 = !DIEnumerator(name: "WORK_OFFQ_LEFT", value: 59)
!67 = !DIEnumerator(name: "WORK_OFFQ_POOL_BITS", value: 31)
!68 = !DIEnumerator(name: "WORK_BUSY_PENDING", value: 1)
!69 = !DIEnumerator(name: "WORK_BUSY_RUNNING", value: 2)
!70 = !DIEnumerator(name: "WORKER_DESC_LEN", value: 32)
!71 = !{!72, !12, !73, !75, !77, !78}
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !74, line: 42, baseType: !12)
!74 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !80)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !74, line: 190, size: 128, elements: !82)
!82 = !{!83, !84}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !81, file: !74, line: 191, baseType: !80, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !81, file: !74, line: 191, baseType: !80, size: 64, offset: 64)
!85 = !{!0, !7, !86, !92, !97, !307, !312, !320, !344, !349, !354, !359, !367, !372}
!86 = !DIGlobalVariableExpression(var: !87, expr: !DIExpression())
!87 = distinct !DIGlobalVariable(scope: null, file: !2, line: 159, type: !88, isLocal: true, isDefinition: true)
!88 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 208, elements: !90)
!89 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!90 = !{!91}
!91 = !DISubrange(count: 26)
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(scope: null, file: !2, line: 159, type: !94, isLocal: true, isDefinition: true)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 672, elements: !95)
!95 = !{!96}
!96 = !DISubrange(count: 84)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(name: "efi_rts_work", scope: !15, file: !2, line: 119, type: !99, isLocal: false, isDefinition: true)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "efi_runtime_work", file: !24, line: 1269, size: 768, elements: !100)
!100 = !{!101, !246, !247, !267, !268, !306}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !99, file: !24, line: 1270, baseType: !102, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "efi_rts_args", file: !2, line: 45, size: 320, elements: !104)
!104 = !{!105, !145, !149, !157, !162, !183, !189, !197, !208, !212, !227, !236}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "GET_TIME", scope: !103, file: !2, line: 49, baseType: !106, size: 128)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !103, file: !2, line: 46, size: 128, elements: !107)
!107 = !{!108, !137}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !106, file: !2, line: 47, baseType: !109, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_time_t", file: !24, line: 242, baseType: !111)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !24, line: 230, size: 128, elements: !112)
!112 = !{!113, !119, !123, !124, !125, !126, !127, !128, !131, !135, !136}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "year", scope: !111, file: !24, line: 231, baseType: !114, size: 16)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !115, line: 19, baseType: !116)
!115 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !117, line: 24, baseType: !118)
!117 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!118 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "month", scope: !111, file: !24, line: 232, baseType: !120, size: 8, offset: 16)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !115, line: 17, baseType: !121)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !117, line: 21, baseType: !122)
!122 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "day", scope: !111, file: !24, line: 233, baseType: !120, size: 8, offset: 24)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "hour", scope: !111, file: !24, line: 234, baseType: !120, size: 8, offset: 32)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "minute", scope: !111, file: !24, line: 235, baseType: !120, size: 8, offset: 40)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "second", scope: !111, file: !24, line: 236, baseType: !120, size: 8, offset: 48)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "pad1", scope: !111, file: !24, line: 237, baseType: !120, size: 8, offset: 56)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "nanosecond", scope: !111, file: !24, line: 238, baseType: !129, size: 32, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !115, line: 21, baseType: !130)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !117, line: 27, baseType: !19)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "timezone", scope: !111, file: !24, line: 239, baseType: !132, size: 16, offset: 96)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !115, line: 18, baseType: !133)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !117, line: 23, baseType: !134)
!134 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "daylight", scope: !111, file: !24, line: 240, baseType: !120, size: 8, offset: 112)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "pad2", scope: !111, file: !24, line: 241, baseType: !120, size: 8, offset: 120)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !106, file: !2, line: 48, baseType: !138, size: 64, offset: 64)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_time_cap_t", file: !24, line: 248, baseType: !140)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !24, line: 244, size: 96, elements: !141)
!141 = !{!142, !143, !144}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !140, file: !24, line: 245, baseType: !129, size: 32)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "accuracy", scope: !140, file: !24, line: 246, baseType: !129, size: 32, offset: 32)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "sets_to_zero", scope: !140, file: !24, line: 247, baseType: !120, size: 8, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "SET_TIME", scope: !103, file: !2, line: 53, baseType: !146, size: 64)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !103, file: !2, line: 51, size: 64, elements: !147)
!147 = !{!148}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !146, file: !2, line: 52, baseType: !109, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "GET_WAKEUP_TIME", scope: !103, file: !2, line: 59, baseType: !150, size: 192)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !103, file: !2, line: 55, size: 192, elements: !151)
!151 = !{!152, !155, !156}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !150, file: !2, line: 56, baseType: !153, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_bool_t", file: !24, line: 48, baseType: !120)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !150, file: !2, line: 57, baseType: !153, size: 64, offset: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !150, file: !2, line: 58, baseType: !109, size: 64, offset: 128)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "SET_WAKEUP_TIME", scope: !103, file: !2, line: 64, baseType: !158, size: 128)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !103, file: !2, line: 61, size: 128, elements: !159)
!159 = !{!160, !161}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !158, file: !2, line: 62, baseType: !154, size: 8)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !158, file: !2, line: 63, baseType: !109, size: 64, offset: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "GET_VARIABLE", scope: !103, file: !2, line: 72, baseType: !163, size: 320)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !103, file: !2, line: 66, size: 320, elements: !164)
!164 = !{!165, !168, !179, !181, !182}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !163, file: !2, line: 67, baseType: !166, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_char16_t", file: !24, line: 49, baseType: !114)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !163, file: !2, line: 68, baseType: !169, size: 64, offset: 64)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_guid_t", file: !24, line: 74, baseType: !171, align: 32)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "guid_t", file: !172, line: 17, baseType: !173)
!172 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !172, line: 15, size: 128, elements: !174)
!174 = !{!175}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !173, file: !172, line: 16, baseType: !176, size: 128)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 128, elements: !177)
!177 = !{!178}
!178 = !DISubrange(count: 16)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !163, file: !2, line: 69, baseType: !180, size: 64, offset: 128)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "data_size", scope: !163, file: !2, line: 70, baseType: !77, size: 64, offset: 192)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !163, file: !2, line: 71, baseType: !72, size: 64, offset: 256)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "GET_NEXT_VARIABLE", scope: !103, file: !2, line: 78, baseType: !184, size: 192)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !103, file: !2, line: 74, size: 192, elements: !185)
!185 = !{!186, !187, !188}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "name_size", scope: !184, file: !2, line: 75, baseType: !77, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !184, file: !2, line: 76, baseType: !166, size: 64, offset: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !184, file: !2, line: 77, baseType: !169, size: 64, offset: 128)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "SET_VARIABLE", scope: !103, file: !2, line: 86, baseType: !190, size: 320)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !103, file: !2, line: 80, size: 320, elements: !191)
!191 = !{!192, !193, !194, !195, !196}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !190, file: !2, line: 81, baseType: !166, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !190, file: !2, line: 82, baseType: !169, size: 64, offset: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !190, file: !2, line: 83, baseType: !129, size: 32, offset: 128)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "data_size", scope: !190, file: !2, line: 84, baseType: !12, size: 64, offset: 192)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !190, file: !2, line: 85, baseType: !72, size: 64, offset: 256)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "QUERY_VARIABLE_INFO", scope: !103, file: !2, line: 93, baseType: !198, size: 256)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !103, file: !2, line: 88, size: 256, elements: !199)
!199 = !{!200, !201, !206, !207}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !198, file: !2, line: 89, baseType: !129, size: 32)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "storage_space", scope: !198, file: !2, line: 90, baseType: !202, size: 64, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !115, line: 23, baseType: !204)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !117, line: 31, baseType: !205)
!205 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "remaining_space", scope: !198, file: !2, line: 91, baseType: !202, size: 64, offset: 128)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "max_variable_size", scope: !198, file: !2, line: 92, baseType: !202, size: 64, offset: 192)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "GET_NEXT_HIGH_MONO_COUNT", scope: !103, file: !2, line: 97, baseType: !209, size: 64)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !103, file: !2, line: 95, size: 64, elements: !210)
!210 = !{!211}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "high_count", scope: !209, file: !2, line: 96, baseType: !180, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "UPDATE_CAPSULE", scope: !103, file: !2, line: 103, baseType: !213, size: 192)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !103, file: !2, line: 99, size: 192, elements: !214)
!214 = !{!215, !225, !226}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "capsules", scope: !213, file: !2, line: 100, baseType: !216, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_capsule_header_t", file: !24, line: 152, baseType: !219)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !24, line: 147, size: 224, elements: !220)
!220 = !{!221, !222, !223, !224}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "guid", scope: !219, file: !24, line: 148, baseType: !170, size: 128, align: 32)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "headersize", scope: !219, file: !24, line: 149, baseType: !129, size: 32, offset: 128)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !219, file: !24, line: 150, baseType: !129, size: 32, offset: 160)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "imagesize", scope: !219, file: !24, line: 151, baseType: !129, size: 32, offset: 192)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !213, file: !2, line: 101, baseType: !12, size: 64, offset: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "sg_list", scope: !213, file: !2, line: 102, baseType: !12, size: 64, offset: 128)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "QUERY_CAPSULE_CAPS", scope: !103, file: !2, line: 110, baseType: !228, size: 256)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !103, file: !2, line: 105, size: 256, elements: !229)
!229 = !{!230, !231, !232, !233}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "capsules", scope: !228, file: !2, line: 106, baseType: !216, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !228, file: !2, line: 107, baseType: !12, size: 64, offset: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "max_size", scope: !228, file: !2, line: 108, baseType: !202, size: 64, offset: 128)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "reset_type", scope: !228, file: !2, line: 109, baseType: !234, size: 64, offset: 192)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "ACPI_PRM_HANDLER", scope: !103, file: !2, line: 116, baseType: !237, size: 192)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !103, file: !2, line: 112, size: 192, elements: !238)
!238 = !{!239, !244, !245}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_prm_handler", scope: !237, file: !2, line: 113, baseType: !240, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !242)
!242 = !{!243, !203, !72}
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_status_t", file: !24, line: 47, baseType: !12)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "param_buffer_addr", scope: !237, file: !2, line: 114, baseType: !203, size: 64, offset: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !237, file: !2, line: 115, baseType: !72, size: 64, offset: 128)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !99, file: !24, line: 1271, baseType: !243, size: 64, offset: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !99, file: !24, line: 1272, baseType: !248, size: 256, offset: 128)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !46, line: 98, size: 256, elements: !249)
!249 = !{!250, !260, !261}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !248, file: !46, line: 99, baseType: !251, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !252, line: 13, baseType: !253)
!252 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !74, line: 181, baseType: !254)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !74, line: 179, size: 64, elements: !255)
!255 = !{!256}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !254, file: !74, line: 180, baseType: !257, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !115, line: 22, baseType: !258)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !117, line: 30, baseType: !259)
!259 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !248, file: !46, line: 100, baseType: !81, size: 128, offset: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !248, file: !46, line: 101, baseType: !262, size: 64, offset: 192)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !46, line: 21, baseType: !263)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DISubroutineType(types: !265)
!265 = !{null, !266}
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "efi_rts_id", scope: !99, file: !24, line: 1273, baseType: !23, size: 32, offset: 384)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "efi_rts_comp", scope: !99, file: !24, line: 1274, baseType: !269, size: 256, offset: 448)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !270, line: 26, size: 256, elements: !271)
!270 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!271 = !{!272, !273}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !269, file: !270, line: 27, baseType: !19, size: 32)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !269, file: !270, line: 28, baseType: !274, size: 192, offset: 64)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !275, line: 43, size: 192, elements: !276)
!275 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!276 = !{!277, !305}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !274, file: !275, line: 44, baseType: !278, size: 32)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !279, line: 23, baseType: !280)
!279 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !279, line: 14, size: 32, elements: !281)
!281 = !{!282}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !280, file: !279, line: 15, baseType: !283, size: 32)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !284, line: 44, baseType: !285)
!284 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !284, line: 14, size: 32, elements: !286)
!286 = !{!287}
!287 = !DIDerivedType(tag: DW_TAG_member, scope: !285, file: !284, line: 15, baseType: !288, size: 32)
!288 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !285, file: !284, line: 15, size: 32, elements: !289)
!289 = !{!290, !295, !300}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !288, file: !284, line: 16, baseType: !291, size: 32)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !74, line: 174, baseType: !292)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !74, line: 172, size: 32, elements: !293)
!293 = !{!294}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !292, file: !74, line: 173, baseType: !235, size: 32)
!295 = !DIDerivedType(tag: DW_TAG_member, scope: !288, file: !284, line: 24, baseType: !296, size: 16)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !288, file: !284, line: 24, size: 16, elements: !297)
!297 = !{!298, !299}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !296, file: !284, line: 25, baseType: !120, size: 8)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !296, file: !284, line: 26, baseType: !120, size: 8, offset: 8)
!300 = !DIDerivedType(tag: DW_TAG_member, scope: !288, file: !284, line: 28, baseType: !301, size: 32)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !288, file: !284, line: 28, size: 32, elements: !302)
!302 = !{!303, !304}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !301, file: !284, line: 29, baseType: !114, size: 16)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !301, file: !284, line: 30, baseType: !114, size: 16, offset: 16)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !274, file: !275, line: 45, baseType: !81, size: 128, offset: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !99, file: !24, line: 1275, baseType: !13, size: 64, offset: 704)
!307 = !DIGlobalVariableExpression(var: !308, expr: !DIExpression())
!308 = distinct !DIGlobalVariable(scope: null, file: !2, line: 508, type: !309, isLocal: true, isDefinition: true)
!309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 864, elements: !310)
!310 = !{!311}
!311 = !DISubrange(count: 108)
!312 = !DIGlobalVariableExpression(var: !313, expr: !DIExpression())
!313 = distinct !DIGlobalVariable(name: "efi_runtime_lock", scope: !15, file: !2, line: 203, type: !314, isLocal: true, isDefinition: true)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "semaphore", file: !315, line: 15, size: 192, elements: !316)
!315 = !DIFile(filename: "./include/linux/semaphore.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a6d1be1d1ca9e1e7e6ce72ef8c4c814f")
!316 = !{!317, !318, !319}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !314, file: !315, line: 16, baseType: !278, size: 32)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !314, file: !315, line: 17, baseType: !19, size: 32, offset: 32)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !314, file: !315, line: 18, baseType: !81, size: 128, offset: 64)
!320 = !DIGlobalVariableExpression(var: !321, expr: !DIExpression())
!321 = distinct !DIGlobalVariable(name: "__already_done", scope: !322, file: !2, line: 324, type: !332, isLocal: true, isDefinition: true)
!322 = distinct !DISubprogram(name: "__efi_queue_work", scope: !2, file: !2, line: 315, type: !323, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !325)
!323 = !DISubroutineType(types: !324)
!324 = !{!243, !23, !102}
!325 = !{!326, !327, !328, !334, !337, !338, !340, !343}
!326 = !DILocalVariable(name: "id", arg: 1, scope: !322, file: !2, line: 315, type: !23)
!327 = !DILocalVariable(name: "args", arg: 2, scope: !322, file: !2, line: 316, type: !102)
!328 = !DILocalVariable(name: "__ret_do_once", scope: !329, file: !2, line: 324, type: !332)
!329 = distinct !DILexicalBlock(scope: !330, file: !2, line: 324, column: 3)
!330 = distinct !DILexicalBlock(scope: !331, file: !2, line: 323, column: 42)
!331 = distinct !DILexicalBlock(scope: !322, file: !2, line: 323, column: 6)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !74, line: 35, baseType: !333)
!333 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!334 = !DILocalVariable(name: "__ret_cond", scope: !335, file: !2, line: 324, type: !332)
!335 = distinct !DILexicalBlock(scope: !336, file: !2, line: 324, column: 3)
!336 = distinct !DILexicalBlock(scope: !329, file: !2, line: 324, column: 3)
!337 = !DILocalVariable(name: "__ret_once", scope: !335, file: !2, line: 324, type: !332)
!338 = !DILocalVariable(name: "__ret_warn_on", scope: !339, file: !2, line: 341, type: !235)
!339 = distinct !DILexicalBlock(scope: !322, file: !2, line: 341, column: 2)
!340 = !DILocalVariable(name: "__flags", scope: !341, file: !2, line: 341, type: !235)
!341 = distinct !DILexicalBlock(scope: !342, file: !2, line: 341, column: 2)
!342 = distinct !DILexicalBlock(scope: !339, file: !2, line: 341, column: 2)
!343 = !DILabel(scope: !322, name: "exit", file: !2, line: 342)
!344 = !DIGlobalVariableExpression(var: !345, expr: !DIExpression())
!345 = distinct !DIGlobalVariable(scope: null, file: !2, line: 324, type: !346, isLocal: true, isDefinition: true)
!346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 344, elements: !347)
!347 = !{!348}
!348 = !DISubrange(count: 43)
!349 = !DIGlobalVariableExpression(var: !350, expr: !DIExpression())
!350 = distinct !DIGlobalVariable(name: "__key", scope: !322, file: !2, line: 330, type: !351, isLocal: true, isDefinition: true)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !352, line: 206, elements: !353)
!352 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!353 = !{}
!354 = !DIGlobalVariableExpression(var: !355, expr: !DIExpression())
!355 = distinct !DIGlobalVariable(scope: null, file: !2, line: 339, type: !356, isLocal: true, isDefinition: true)
!356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !357)
!357 = !{!358}
!358 = !DISubrange(count: 44)
!359 = !DIGlobalVariableExpression(var: !360, expr: !DIExpression())
!360 = distinct !DIGlobalVariable(name: "__key", scope: !361, file: !270, line: 87, type: !351, isLocal: true, isDefinition: true)
!361 = distinct !DISubprogram(name: "init_completion", scope: !270, file: !270, line: 84, type: !362, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !365)
!362 = !DISubroutineType(types: !363)
!363 = !{null, !364}
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!365 = !{!366}
!366 = !DILocalVariable(name: "x", arg: 1, scope: !361, file: !270, line: 84, type: !364)
!367 = !DIGlobalVariableExpression(var: !368, expr: !DIExpression())
!368 = distinct !DIGlobalVariable(scope: null, file: !270, line: 87, type: !369, isLocal: true, isDefinition: true)
!369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !370)
!370 = !{!371}
!371 = !DISubrange(count: 9)
!372 = !DIGlobalVariableExpression(var: !373, expr: !DIExpression())
!373 = distinct !DIGlobalVariable(scope: null, file: !2, line: 305, type: !374, isLocal: true, isDefinition: true)
!374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 456, elements: !375)
!375 = !{!376}
!376 = !DISubrange(count: 57)
!377 = !{!378, !379, !380, !381, !382, !385, !388, !392}
!378 = !DILocalVariable(name: "flags", arg: 1, scope: !9, file: !2, line: 148, type: !12)
!379 = !DILocalVariable(name: "caller", arg: 2, scope: !9, file: !2, line: 148, type: !13)
!380 = !DILocalVariable(name: "cur_flags", scope: !9, file: !2, line: 150, type: !12)
!381 = !DILocalVariable(name: "mismatch", scope: !9, file: !2, line: 150, type: !12)
!382 = !DILocalVariable(name: "__ret_warn_on", scope: !383, file: !2, line: 155, type: !235)
!383 = distinct !DILexicalBlock(scope: !384, file: !2, line: 155, column: 7)
!384 = distinct !DILexicalBlock(scope: !9, file: !2, line: 155, column: 6)
!385 = !DILocalVariable(name: "__flags", scope: !386, file: !2, line: 155, type: !235)
!386 = distinct !DILexicalBlock(scope: !387, file: !2, line: 155, column: 7)
!387 = distinct !DILexicalBlock(scope: !383, file: !2, line: 155, column: 7)
!388 = !DILocalVariable(name: "__dummy", scope: !389, file: !2, line: 161, type: !12)
!389 = distinct !DILexicalBlock(scope: !390, file: !2, line: 161, column: 2)
!390 = distinct !DILexicalBlock(scope: !391, file: !2, line: 161, column: 2)
!391 = distinct !DILexicalBlock(scope: !9, file: !2, line: 161, column: 2)
!392 = !DILocalVariable(name: "__dummy2", scope: !389, file: !2, line: 161, type: !12)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !394, line: 15, size: 320, elements: !395)
!394 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!395 = !{!396, !397, !398, !399, !400, !401, !402}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !393, file: !394, line: 16, baseType: !278, size: 32)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !393, file: !394, line: 18, baseType: !235, size: 32, offset: 32)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !393, file: !394, line: 19, baseType: !235, size: 32, offset: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !393, file: !394, line: 20, baseType: !235, size: 32, offset: 96)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !393, file: !394, line: 21, baseType: !235, size: 32, offset: 128)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !393, file: !394, line: 22, baseType: !12, size: 64, offset: 192)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !393, file: !394, line: 23, baseType: !12, size: 64, offset: 256)
!403 = !{i32 7, !"Dwarf Version", i32 5}
!404 = !{i32 2, !"Debug Info Version", i32 3}
!405 = !{i32 1, !"wchar_size", i32 2}
!406 = !{i32 8, !"cf-protection-branch", i32 1}
!407 = !{i32 4, !"function_return_thunk_extern", i32 1}
!408 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!409 = !{i32 1, !"Code Model", i32 2}
!410 = !{i32 1, !"override-stack-alignment", i32 8}
!411 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!412 = distinct !DISubprogram(name: "efi_call_virt_save_flags", scope: !2, file: !2, line: 140, type: !413, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !415)
!413 = !DISubroutineType(types: !414)
!414 = !{!12}
!415 = !{!416, !417, !420}
!416 = !DILocalVariable(name: "flags", scope: !412, file: !2, line: 142, type: !12)
!417 = !DILocalVariable(name: "__dummy", scope: !418, file: !2, line: 144, type: !12)
!418 = distinct !DILexicalBlock(scope: !419, file: !2, line: 144, column: 2)
!419 = distinct !DILexicalBlock(scope: !412, file: !2, line: 144, column: 2)
!420 = !DILocalVariable(name: "__dummy2", scope: !418, file: !2, line: 144, type: !12)
!421 = !DILocation(line: 142, column: 2, scope: !412)
!422 = !DILocation(line: 142, column: 16, scope: !412)
!423 = !DILocation(line: 144, column: 2, scope: !412)
!424 = !DILocation(line: 144, column: 2, scope: !418)
!425 = !DILocation(line: 144, column: 2, scope: !419)
!426 = !DILocation(line: 145, column: 9, scope: !412)
!427 = !DILocation(line: 146, column: 1, scope: !412)
!428 = !DILocation(line: 145, column: 2, scope: !412)
!429 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !430, file: !430, line: 65, type: !413, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15)
!430 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51de965a2a1c3c5d68742842f9133428")
!431 = !DILocation(line: 67, column: 9, scope: !429)
!432 = !DILocation(line: 67, column: 2, scope: !429)
!433 = !DILocation(line: 148, column: 46, scope: !9)
!434 = !DILocation(line: 148, column: 65, scope: !9)
!435 = !DILocation(line: 150, column: 2, scope: !9)
!436 = !DILocation(line: 150, column: 16, scope: !9)
!437 = !DILocation(line: 150, column: 27, scope: !9)
!438 = !DILocation(line: 152, column: 14, scope: !9)
!439 = !DILocation(line: 152, column: 12, scope: !9)
!440 = !DILocation(line: 154, column: 13, scope: !9)
!441 = !DILocation(line: 154, column: 21, scope: !9)
!442 = !DILocation(line: 154, column: 19, scope: !9)
!443 = !DILocation(line: 154, column: 11, scope: !9)
!444 = !DILocation(line: 155, column: 7, scope: !383)
!445 = !DILocation(line: 155, column: 7, scope: !387)
!446 = !DILocation(line: 155, column: 7, scope: !386)
!447 = !DILocation(line: 155, column: 7, scope: !448)
!448 = distinct !DILexicalBlock(scope: !386, file: !2, line: 155, column: 7)
!449 = !DILocation(line: 155, column: 7, scope: !450)
!450 = distinct !DILexicalBlock(scope: !386, file: !2, line: 155, column: 7)
!451 = !{i64 2155762001, i64 2155762030, i64 2155762076, i64 2155762134, i64 2155762188, i64 2155762242, i64 2155762297, i64 2155762328, i64 2155762636, i64 2155762642, i64 2155762689, i64 2155762712, i64 2155762738}
!452 = !DILocation(line: 155, column: 7, scope: !453)
!453 = distinct !DILexicalBlock(scope: !386, file: !2, line: 155, column: 7)
!454 = !DILocation(line: 155, column: 7, scope: !384)
!455 = !DILocation(line: 155, column: 6, scope: !9)
!456 = !DILocation(line: 156, column: 3, scope: !384)
!457 = !DILocation(line: 158, column: 2, scope: !9)
!458 = !DILocation(line: 159, column: 2, scope: !459)
!459 = distinct !DILexicalBlock(scope: !460, file: !2, line: 159, column: 2)
!460 = distinct !DILexicalBlock(scope: !9, file: !2, line: 159, column: 2)
!461 = !DILocation(line: 159, column: 2, scope: !460)
!462 = !DILocation(line: 159, column: 2, scope: !463)
!463 = distinct !DILexicalBlock(scope: !459, file: !2, line: 159, column: 2)
!464 = !DILocation(line: 159, column: 2, scope: !465)
!465 = distinct !DILexicalBlock(scope: !463, file: !2, line: 159, column: 2)
!466 = !DILocation(line: 161, column: 2, scope: !9)
!467 = !DILocation(line: 161, column: 2, scope: !391)
!468 = !DILocation(line: 161, column: 2, scope: !389)
!469 = !DILocation(line: 161, column: 2, scope: !390)
!470 = !DILocation(line: 161, column: 2, scope: !471)
!471 = distinct !DILexicalBlock(scope: !390, file: !2, line: 161, column: 2)
!472 = !DILocation(line: 162, column: 1, scope: !9)
!473 = !DISubprogram(name: "add_taint", scope: !18, file: !18, line: 93, type: !474, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!474 = !DISubroutineType(types: !475)
!475 = !{null, !19, !17}
!476 = !DISubprogram(name: "___ratelimit", scope: !394, file: !394, line: 44, type: !477, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!477 = !DISubroutineType(types: !478)
!478 = !{!235, !479, !480}
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!481 = !DISubprogram(name: "_printk", scope: !482, file: !482, line: 153, type: !483, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!482 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!483 = !DISubroutineType(types: !484)
!484 = !{!235, !480, null}
!485 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !430, file: !430, line: 132, type: !486, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !488)
!486 = !DISubroutineType(types: !487)
!487 = !{null, !12}
!488 = !{!489}
!489 = !DILocalVariable(name: "flags", arg: 1, scope: !485, file: !430, line: 132, type: !12)
!490 = !DILocation(line: 132, column: 66, scope: !485)
!491 = !DILocation(line: 134, column: 32, scope: !492)
!492 = distinct !DILexicalBlock(scope: !485, file: !430, line: 134, column: 6)
!493 = !DILocation(line: 134, column: 7, scope: !492)
!494 = !DILocation(line: 134, column: 6, scope: !485)
!495 = !DILocation(line: 135, column: 3, scope: !492)
!496 = !DILocation(line: 136, column: 1, scope: !485)
!497 = distinct !DISubprogram(name: "efi_native_runtime_setup", scope: !2, file: !2, line: 556, type: !498, scopeLine: 557, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !15)
!498 = !DISubroutineType(types: !499)
!499 = !{null}
!500 = !DILocation(line: 558, column: 21, scope: !497)
!501 = !DILocation(line: 559, column: 21, scope: !497)
!502 = !DILocation(line: 560, column: 27, scope: !497)
!503 = !DILocation(line: 561, column: 27, scope: !497)
!504 = !DILocation(line: 562, column: 24, scope: !497)
!505 = !DILocation(line: 563, column: 29, scope: !497)
!506 = !DILocation(line: 564, column: 24, scope: !497)
!507 = !DILocation(line: 565, column: 35, scope: !497)
!508 = !DILocation(line: 566, column: 35, scope: !497)
!509 = !DILocation(line: 567, column: 25, scope: !497)
!510 = !DILocation(line: 568, column: 31, scope: !497)
!511 = !DILocation(line: 569, column: 38, scope: !497)
!512 = !DILocation(line: 570, column: 26, scope: !497)
!513 = !DILocation(line: 571, column: 30, scope: !497)
!514 = !DILocation(line: 572, column: 1, scope: !497)
!515 = distinct !DISubprogram(name: "virt_efi_get_time", scope: !2, file: !2, line: 347, type: !516, scopeLine: 348, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !518)
!516 = !DISubroutineType(types: !517)
!517 = !{!243, !109, !138}
!518 = !{!519, !520, !521}
!519 = !DILocalVariable(name: "tm", arg: 1, scope: !515, file: !2, line: 347, type: !109)
!520 = !DILocalVariable(name: "tc", arg: 2, scope: !515, file: !2, line: 347, type: !138)
!521 = !DILocalVariable(name: "status", scope: !515, file: !2, line: 349, type: !243)
!522 = !DILocation(line: 347, column: 51, scope: !515)
!523 = !DILocation(line: 347, column: 71, scope: !515)
!524 = !DILocation(line: 349, column: 2, scope: !515)
!525 = !DILocation(line: 349, column: 15, scope: !515)
!526 = !DILocation(line: 351, column: 6, scope: !527)
!527 = distinct !DILexicalBlock(scope: !515, file: !2, line: 351, column: 6)
!528 = !DILocation(line: 351, column: 6, scope: !515)
!529 = !DILocation(line: 352, column: 3, scope: !527)
!530 = !DILocation(line: 353, column: 11, scope: !515)
!531 = !DILocation(line: 353, column: 9, scope: !515)
!532 = !DILocation(line: 354, column: 2, scope: !515)
!533 = !DILocation(line: 355, column: 9, scope: !515)
!534 = !DILocation(line: 355, column: 2, scope: !515)
!535 = !DILocation(line: 356, column: 1, scope: !515)
!536 = distinct !DISubprogram(name: "virt_efi_set_time", scope: !2, file: !2, line: 358, type: !537, scopeLine: 359, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !539)
!537 = !DISubroutineType(types: !538)
!538 = !{!243, !109}
!539 = !{!540, !541}
!540 = !DILocalVariable(name: "tm", arg: 1, scope: !536, file: !2, line: 358, type: !109)
!541 = !DILocalVariable(name: "status", scope: !536, file: !2, line: 360, type: !243)
!542 = !DILocation(line: 358, column: 51, scope: !536)
!543 = !DILocation(line: 360, column: 2, scope: !536)
!544 = !DILocation(line: 360, column: 15, scope: !536)
!545 = !DILocation(line: 362, column: 6, scope: !546)
!546 = distinct !DILexicalBlock(scope: !536, file: !2, line: 362, column: 6)
!547 = !DILocation(line: 362, column: 6, scope: !536)
!548 = !DILocation(line: 363, column: 3, scope: !546)
!549 = !DILocation(line: 364, column: 11, scope: !536)
!550 = !DILocation(line: 364, column: 9, scope: !536)
!551 = !DILocation(line: 365, column: 2, scope: !536)
!552 = !DILocation(line: 366, column: 9, scope: !536)
!553 = !DILocation(line: 366, column: 2, scope: !536)
!554 = !DILocation(line: 367, column: 1, scope: !536)
!555 = distinct !DISubprogram(name: "virt_efi_get_wakeup_time", scope: !2, file: !2, line: 369, type: !556, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !558)
!556 = !DISubroutineType(types: !557)
!557 = !{!243, !153, !153, !109}
!558 = !{!559, !560, !561, !562}
!559 = !DILocalVariable(name: "enabled", arg: 1, scope: !555, file: !2, line: 369, type: !153)
!560 = !DILocalVariable(name: "pending", arg: 2, scope: !555, file: !2, line: 370, type: !153)
!561 = !DILocalVariable(name: "tm", arg: 3, scope: !555, file: !2, line: 371, type: !109)
!562 = !DILocalVariable(name: "status", scope: !555, file: !2, line: 373, type: !243)
!563 = !DILocation(line: 369, column: 58, scope: !555)
!564 = !DILocation(line: 370, column: 23, scope: !555)
!565 = !DILocation(line: 371, column: 23, scope: !555)
!566 = !DILocation(line: 373, column: 2, scope: !555)
!567 = !DILocation(line: 373, column: 15, scope: !555)
!568 = !DILocation(line: 375, column: 6, scope: !569)
!569 = distinct !DILexicalBlock(scope: !555, file: !2, line: 375, column: 6)
!570 = !DILocation(line: 375, column: 6, scope: !555)
!571 = !DILocation(line: 376, column: 3, scope: !569)
!572 = !DILocation(line: 377, column: 11, scope: !555)
!573 = !DILocation(line: 377, column: 9, scope: !555)
!574 = !DILocation(line: 378, column: 2, scope: !555)
!575 = !DILocation(line: 379, column: 9, scope: !555)
!576 = !DILocation(line: 379, column: 2, scope: !555)
!577 = !DILocation(line: 380, column: 1, scope: !555)
!578 = distinct !DISubprogram(name: "virt_efi_set_wakeup_time", scope: !2, file: !2, line: 382, type: !579, scopeLine: 383, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !581)
!579 = !DISubroutineType(types: !580)
!580 = !{!243, !154, !109}
!581 = !{!582, !583, !584}
!582 = !DILocalVariable(name: "enabled", arg: 1, scope: !578, file: !2, line: 382, type: !154)
!583 = !DILocalVariable(name: "tm", arg: 2, scope: !578, file: !2, line: 382, type: !109)
!584 = !DILocalVariable(name: "status", scope: !578, file: !2, line: 384, type: !243)
!585 = !DILocation(line: 382, column: 57, scope: !578)
!586 = !DILocation(line: 382, column: 78, scope: !578)
!587 = !DILocation(line: 384, column: 2, scope: !578)
!588 = !DILocation(line: 384, column: 15, scope: !578)
!589 = !DILocation(line: 386, column: 6, scope: !590)
!590 = distinct !DILexicalBlock(scope: !578, file: !2, line: 386, column: 6)
!591 = !DILocation(line: 386, column: 6, scope: !578)
!592 = !DILocation(line: 387, column: 3, scope: !590)
!593 = !DILocation(line: 388, column: 11, scope: !578)
!594 = !DILocation(line: 388, column: 9, scope: !578)
!595 = !DILocation(line: 389, column: 2, scope: !578)
!596 = !DILocation(line: 390, column: 9, scope: !578)
!597 = !DILocation(line: 390, column: 2, scope: !578)
!598 = !DILocation(line: 391, column: 1, scope: !578)
!599 = distinct !DISubprogram(name: "virt_efi_get_variable", scope: !2, file: !2, line: 393, type: !600, scopeLine: 398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !602)
!600 = !DISubroutineType(types: !601)
!601 = !{!243, !166, !169, !180, !77, !72}
!602 = !{!603, !604, !605, !606, !607, !608}
!603 = !DILocalVariable(name: "name", arg: 1, scope: !599, file: !2, line: 393, type: !166)
!604 = !DILocalVariable(name: "vendor", arg: 2, scope: !599, file: !2, line: 394, type: !169)
!605 = !DILocalVariable(name: "attr", arg: 3, scope: !599, file: !2, line: 395, type: !180)
!606 = !DILocalVariable(name: "data_size", arg: 4, scope: !599, file: !2, line: 396, type: !77)
!607 = !DILocalVariable(name: "data", arg: 5, scope: !599, file: !2, line: 397, type: !72)
!608 = !DILocalVariable(name: "status", scope: !599, file: !2, line: 399, type: !243)
!609 = !DILocation(line: 393, column: 57, scope: !599)
!610 = !DILocation(line: 394, column: 20, scope: !599)
!611 = !DILocation(line: 395, column: 13, scope: !599)
!612 = !DILocation(line: 396, column: 23, scope: !599)
!613 = !DILocation(line: 397, column: 14, scope: !599)
!614 = !DILocation(line: 399, column: 2, scope: !599)
!615 = !DILocation(line: 399, column: 15, scope: !599)
!616 = !DILocation(line: 401, column: 6, scope: !617)
!617 = distinct !DILexicalBlock(scope: !599, file: !2, line: 401, column: 6)
!618 = !DILocation(line: 401, column: 6, scope: !599)
!619 = !DILocation(line: 402, column: 3, scope: !617)
!620 = !DILocation(line: 403, column: 11, scope: !599)
!621 = !DILocation(line: 403, column: 9, scope: !599)
!622 = !DILocation(line: 405, column: 2, scope: !599)
!623 = !DILocation(line: 406, column: 9, scope: !599)
!624 = !DILocation(line: 406, column: 2, scope: !599)
!625 = !DILocation(line: 407, column: 1, scope: !599)
!626 = distinct !DISubprogram(name: "virt_efi_get_next_variable", scope: !2, file: !2, line: 409, type: !627, scopeLine: 412, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !629)
!627 = !DISubroutineType(types: !628)
!628 = !{!243, !77, !166, !169}
!629 = !{!630, !631, !632, !633}
!630 = !DILocalVariable(name: "name_size", arg: 1, scope: !626, file: !2, line: 409, type: !77)
!631 = !DILocalVariable(name: "name", arg: 2, scope: !626, file: !2, line: 410, type: !166)
!632 = !DILocalVariable(name: "vendor", arg: 3, scope: !626, file: !2, line: 411, type: !169)
!633 = !DILocalVariable(name: "status", scope: !626, file: !2, line: 413, type: !243)
!634 = !DILocation(line: 409, column: 63, scope: !626)
!635 = !DILocation(line: 410, column: 27, scope: !626)
!636 = !DILocation(line: 411, column: 25, scope: !626)
!637 = !DILocation(line: 413, column: 2, scope: !626)
!638 = !DILocation(line: 413, column: 15, scope: !626)
!639 = !DILocation(line: 415, column: 6, scope: !640)
!640 = distinct !DILexicalBlock(scope: !626, file: !2, line: 415, column: 6)
!641 = !DILocation(line: 415, column: 6, scope: !626)
!642 = !DILocation(line: 416, column: 3, scope: !640)
!643 = !DILocation(line: 417, column: 11, scope: !626)
!644 = !DILocation(line: 417, column: 9, scope: !626)
!645 = !DILocation(line: 418, column: 2, scope: !626)
!646 = !DILocation(line: 419, column: 9, scope: !626)
!647 = !DILocation(line: 419, column: 2, scope: !626)
!648 = !DILocation(line: 420, column: 1, scope: !626)
!649 = distinct !DISubprogram(name: "virt_efi_set_variable", scope: !2, file: !2, line: 422, type: !650, scopeLine: 427, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !652)
!650 = !DISubroutineType(types: !651)
!651 = !{!243, !166, !169, !129, !12, !72}
!652 = !{!653, !654, !655, !656, !657, !658}
!653 = !DILocalVariable(name: "name", arg: 1, scope: !649, file: !2, line: 422, type: !166)
!654 = !DILocalVariable(name: "vendor", arg: 2, scope: !649, file: !2, line: 423, type: !169)
!655 = !DILocalVariable(name: "attr", arg: 3, scope: !649, file: !2, line: 424, type: !129)
!656 = !DILocalVariable(name: "data_size", arg: 4, scope: !649, file: !2, line: 425, type: !12)
!657 = !DILocalVariable(name: "data", arg: 5, scope: !649, file: !2, line: 426, type: !72)
!658 = !DILocalVariable(name: "status", scope: !649, file: !2, line: 428, type: !243)
!659 = !DILocation(line: 422, column: 57, scope: !649)
!660 = !DILocation(line: 423, column: 20, scope: !649)
!661 = !DILocation(line: 424, column: 12, scope: !649)
!662 = !DILocation(line: 425, column: 22, scope: !649)
!663 = !DILocation(line: 426, column: 14, scope: !649)
!664 = !DILocation(line: 428, column: 2, scope: !649)
!665 = !DILocation(line: 428, column: 15, scope: !649)
!666 = !DILocation(line: 430, column: 6, scope: !667)
!667 = distinct !DILexicalBlock(scope: !649, file: !2, line: 430, column: 6)
!668 = !DILocation(line: 430, column: 6, scope: !649)
!669 = !DILocation(line: 431, column: 3, scope: !667)
!670 = !DILocation(line: 432, column: 11, scope: !649)
!671 = !DILocation(line: 432, column: 9, scope: !649)
!672 = !DILocation(line: 434, column: 2, scope: !649)
!673 = !DILocation(line: 435, column: 9, scope: !649)
!674 = !DILocation(line: 435, column: 2, scope: !649)
!675 = !DILocation(line: 436, column: 1, scope: !649)
!676 = distinct !DISubprogram(name: "virt_efi_set_variable_nb", scope: !2, file: !2, line: 439, type: !650, scopeLine: 441, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !677)
!677 = !{!678, !679, !680, !681, !682, !683, !684, !686, !687, !689}
!678 = !DILocalVariable(name: "name", arg: 1, scope: !676, file: !2, line: 439, type: !166)
!679 = !DILocalVariable(name: "vendor", arg: 2, scope: !676, file: !2, line: 439, type: !169)
!680 = !DILocalVariable(name: "attr", arg: 3, scope: !676, file: !2, line: 439, type: !129)
!681 = !DILocalVariable(name: "data_size", arg: 4, scope: !676, file: !2, line: 440, type: !12)
!682 = !DILocalVariable(name: "data", arg: 5, scope: !676, file: !2, line: 440, type: !72)
!683 = !DILocalVariable(name: "status", scope: !676, file: !2, line: 442, type: !243)
!684 = !DILocalVariable(name: "__s", scope: !685, file: !2, line: 447, type: !243)
!685 = distinct !DILexicalBlock(scope: !676, file: !2, line: 447, column: 11)
!686 = !DILocalVariable(name: "__flags", scope: !685, file: !2, line: 447, type: !12)
!687 = !DILocalVariable(name: "ret", scope: !688, file: !2, line: 447, type: !203)
!688 = distinct !DILexicalBlock(scope: !685, file: !2, line: 447, column: 11)
!689 = !DILocalVariable(name: "ibt", scope: !688, file: !2, line: 447, type: !203)
!690 = !DILocation(line: 439, column: 40, scope: !676)
!691 = !DILocation(line: 439, column: 58, scope: !676)
!692 = !DILocation(line: 439, column: 70, scope: !676)
!693 = !DILocation(line: 440, column: 19, scope: !676)
!694 = !DILocation(line: 440, column: 36, scope: !676)
!695 = !DILocation(line: 442, column: 2, scope: !676)
!696 = !DILocation(line: 442, column: 15, scope: !676)
!697 = !DILocation(line: 444, column: 6, scope: !698)
!698 = distinct !DILexicalBlock(scope: !676, file: !2, line: 444, column: 6)
!699 = !DILocation(line: 444, column: 6, scope: !676)
!700 = !DILocation(line: 445, column: 3, scope: !698)
!701 = !DILocation(line: 447, column: 11, scope: !685)
!702 = !DILocation(line: 447, column: 11, scope: !688)
!703 = !{i8 0, i8 2}
!704 = !DILocation(line: 447, column: 11, scope: !705)
!705 = distinct !DILexicalBlock(scope: !706, file: !2, line: 447, column: 11)
!706 = distinct !DILexicalBlock(scope: !688, file: !2, line: 447, column: 11)
!707 = !DILocation(line: 447, column: 11, scope: !708)
!708 = distinct !DILexicalBlock(scope: !705, file: !2, line: 447, column: 11)
!709 = !DILocation(line: 447, column: 11, scope: !706)
!710 = !DILocation(line: 447, column: 11, scope: !676)
!711 = !DILocation(line: 447, column: 9, scope: !676)
!712 = !DILocation(line: 449, column: 2, scope: !676)
!713 = !DILocation(line: 450, column: 9, scope: !676)
!714 = !DILocation(line: 450, column: 2, scope: !676)
!715 = !DILocation(line: 451, column: 1, scope: !676)
!716 = distinct !DISubprogram(name: "virt_efi_get_next_high_mono_count", scope: !2, file: !2, line: 491, type: !717, scopeLine: 492, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !719)
!717 = !DISubroutineType(types: !718)
!718 = !{!243, !180}
!719 = !{!720, !721}
!720 = !DILocalVariable(name: "count", arg: 1, scope: !716, file: !2, line: 491, type: !180)
!721 = !DILocalVariable(name: "status", scope: !716, file: !2, line: 493, type: !243)
!722 = !DILocation(line: 491, column: 60, scope: !716)
!723 = !DILocation(line: 493, column: 2, scope: !716)
!724 = !DILocation(line: 493, column: 15, scope: !716)
!725 = !DILocation(line: 495, column: 6, scope: !726)
!726 = distinct !DILexicalBlock(scope: !716, file: !2, line: 495, column: 6)
!727 = !DILocation(line: 495, column: 6, scope: !716)
!728 = !DILocation(line: 496, column: 3, scope: !726)
!729 = !DILocation(line: 497, column: 11, scope: !716)
!730 = !DILocation(line: 497, column: 9, scope: !716)
!731 = !DILocation(line: 498, column: 2, scope: !716)
!732 = !DILocation(line: 499, column: 9, scope: !716)
!733 = !DILocation(line: 499, column: 2, scope: !716)
!734 = !DILocation(line: 500, column: 1, scope: !716)
!735 = distinct !DISubprogram(name: "virt_efi_reset_system", scope: !2, file: !2, line: 502, type: !736, scopeLine: 506, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !738)
!736 = !DISubroutineType(types: !737)
!737 = !{null, !235, !243, !12, !166}
!738 = !{!739, !740, !741, !742, !743, !745}
!739 = !DILocalVariable(name: "reset_type", arg: 1, scope: !735, file: !2, line: 502, type: !235)
!740 = !DILocalVariable(name: "status", arg: 2, scope: !735, file: !2, line: 503, type: !243)
!741 = !DILocalVariable(name: "data_size", arg: 3, scope: !735, file: !2, line: 504, type: !12)
!742 = !DILocalVariable(name: "data", arg: 4, scope: !735, file: !2, line: 505, type: !166)
!743 = !DILocalVariable(name: "ret", scope: !744, file: !2, line: 515, type: !203)
!744 = distinct !DILexicalBlock(scope: !735, file: !2, line: 515, column: 2)
!745 = !DILocalVariable(name: "ibt", scope: !744, file: !2, line: 515, type: !203)
!746 = !DILocation(line: 502, column: 39, scope: !735)
!747 = !DILocation(line: 503, column: 20, scope: !735)
!748 = !DILocation(line: 504, column: 21, scope: !735)
!749 = !DILocation(line: 505, column: 21, scope: !735)
!750 = !DILocation(line: 507, column: 6, scope: !751)
!751 = distinct !DILexicalBlock(scope: !735, file: !2, line: 507, column: 6)
!752 = !DILocation(line: 507, column: 6, scope: !735)
!753 = !DILocation(line: 508, column: 3, scope: !754)
!754 = distinct !DILexicalBlock(scope: !755, file: !2, line: 508, column: 3)
!755 = distinct !DILexicalBlock(scope: !751, file: !2, line: 507, column: 39)
!756 = !DILocation(line: 508, column: 3, scope: !757)
!757 = distinct !DILexicalBlock(scope: !754, file: !2, line: 508, column: 3)
!758 = !DILocation(line: 510, column: 3, scope: !755)
!759 = !DILocation(line: 513, column: 2, scope: !735)
!760 = !DILocation(line: 514, column: 26, scope: !735)
!761 = !DILocation(line: 515, column: 2, scope: !744)
!762 = !DILocation(line: 515, column: 2, scope: !763)
!763 = distinct !DILexicalBlock(scope: !764, file: !2, line: 515, column: 2)
!764 = distinct !DILexicalBlock(scope: !744, file: !2, line: 515, column: 2)
!765 = !DILocation(line: 515, column: 2, scope: !766)
!766 = distinct !DILexicalBlock(scope: !763, file: !2, line: 515, column: 2)
!767 = !DILocation(line: 515, column: 2, scope: !764)
!768 = !DILocation(line: 515, column: 2, scope: !735)
!769 = !DILocation(line: 517, column: 2, scope: !735)
!770 = !DILocation(line: 519, column: 2, scope: !735)
!771 = !DILocation(line: 520, column: 1, scope: !735)
!772 = distinct !DISubprogram(name: "virt_efi_query_variable_info", scope: !2, file: !2, line: 454, type: !773, scopeLine: 458, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !775)
!773 = !DISubroutineType(types: !774)
!774 = !{!243, !129, !202, !202, !202}
!775 = !{!776, !777, !778, !779, !780}
!776 = !DILocalVariable(name: "attr", arg: 1, scope: !772, file: !2, line: 454, type: !129)
!777 = !DILocalVariable(name: "storage_space", arg: 2, scope: !772, file: !2, line: 455, type: !202)
!778 = !DILocalVariable(name: "remaining_space", arg: 3, scope: !772, file: !2, line: 456, type: !202)
!779 = !DILocalVariable(name: "max_variable_size", arg: 4, scope: !772, file: !2, line: 457, type: !202)
!780 = !DILocalVariable(name: "status", scope: !772, file: !2, line: 459, type: !243)
!781 = !DILocation(line: 454, column: 54, scope: !772)
!782 = !DILocation(line: 455, column: 13, scope: !772)
!783 = !DILocation(line: 456, column: 13, scope: !772)
!784 = !DILocation(line: 457, column: 13, scope: !772)
!785 = !DILocation(line: 459, column: 2, scope: !772)
!786 = !DILocation(line: 459, column: 15, scope: !772)
!787 = !DILocation(line: 461, column: 10, scope: !788)
!788 = distinct !DILexicalBlock(scope: !772, file: !2, line: 461, column: 6)
!789 = !DILocation(line: 461, column: 26, scope: !788)
!790 = !DILocation(line: 461, column: 6, scope: !772)
!791 = !DILocation(line: 462, column: 3, scope: !788)
!792 = !DILocation(line: 464, column: 6, scope: !793)
!793 = distinct !DILexicalBlock(scope: !772, file: !2, line: 464, column: 6)
!794 = !DILocation(line: 464, column: 6, scope: !772)
!795 = !DILocation(line: 465, column: 3, scope: !793)
!796 = !DILocation(line: 466, column: 11, scope: !772)
!797 = !DILocation(line: 466, column: 9, scope: !772)
!798 = !DILocation(line: 468, column: 2, scope: !772)
!799 = !DILocation(line: 469, column: 9, scope: !772)
!800 = !DILocation(line: 469, column: 2, scope: !772)
!801 = !DILocation(line: 470, column: 1, scope: !772)
!802 = distinct !DISubprogram(name: "virt_efi_query_variable_info_nb", scope: !2, file: !2, line: 473, type: !773, scopeLine: 475, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !803)
!803 = !{!804, !805, !806, !807, !808, !809, !811, !812, !814}
!804 = !DILocalVariable(name: "attr", arg: 1, scope: !802, file: !2, line: 473, type: !129)
!805 = !DILocalVariable(name: "storage_space", arg: 2, scope: !802, file: !2, line: 473, type: !202)
!806 = !DILocalVariable(name: "remaining_space", arg: 3, scope: !802, file: !2, line: 474, type: !202)
!807 = !DILocalVariable(name: "max_variable_size", arg: 4, scope: !802, file: !2, line: 474, type: !202)
!808 = !DILocalVariable(name: "status", scope: !802, file: !2, line: 476, type: !243)
!809 = !DILocalVariable(name: "__s", scope: !810, file: !2, line: 484, type: !243)
!810 = distinct !DILexicalBlock(scope: !802, file: !2, line: 484, column: 11)
!811 = !DILocalVariable(name: "__flags", scope: !810, file: !2, line: 484, type: !12)
!812 = !DILocalVariable(name: "ret", scope: !813, file: !2, line: 484, type: !203)
!813 = distinct !DILexicalBlock(scope: !810, file: !2, line: 484, column: 11)
!814 = !DILocalVariable(name: "ibt", scope: !813, file: !2, line: 484, type: !203)
!815 = !DILocation(line: 473, column: 37, scope: !802)
!816 = !DILocation(line: 473, column: 48, scope: !802)
!817 = !DILocation(line: 474, column: 10, scope: !802)
!818 = !DILocation(line: 474, column: 32, scope: !802)
!819 = !DILocation(line: 476, column: 2, scope: !802)
!820 = !DILocation(line: 476, column: 15, scope: !802)
!821 = !DILocation(line: 478, column: 10, scope: !822)
!822 = distinct !DILexicalBlock(scope: !802, file: !2, line: 478, column: 6)
!823 = !DILocation(line: 478, column: 26, scope: !822)
!824 = !DILocation(line: 478, column: 6, scope: !802)
!825 = !DILocation(line: 479, column: 3, scope: !822)
!826 = !DILocation(line: 481, column: 6, scope: !827)
!827 = distinct !DILexicalBlock(scope: !802, file: !2, line: 481, column: 6)
!828 = !DILocation(line: 481, column: 6, scope: !802)
!829 = !DILocation(line: 482, column: 3, scope: !827)
!830 = !DILocation(line: 484, column: 11, scope: !810)
!831 = !DILocation(line: 484, column: 11, scope: !813)
!832 = !DILocation(line: 484, column: 11, scope: !833)
!833 = distinct !DILexicalBlock(scope: !834, file: !2, line: 484, column: 11)
!834 = distinct !DILexicalBlock(scope: !813, file: !2, line: 484, column: 11)
!835 = !DILocation(line: 484, column: 11, scope: !836)
!836 = distinct !DILexicalBlock(scope: !833, file: !2, line: 484, column: 11)
!837 = !DILocation(line: 484, column: 11, scope: !834)
!838 = !DILocation(line: 484, column: 11, scope: !802)
!839 = !DILocation(line: 484, column: 9, scope: !802)
!840 = !DILocation(line: 487, column: 2, scope: !802)
!841 = !DILocation(line: 488, column: 9, scope: !802)
!842 = !DILocation(line: 488, column: 2, scope: !802)
!843 = !DILocation(line: 489, column: 1, scope: !802)
!844 = distinct !DISubprogram(name: "virt_efi_update_capsule", scope: !2, file: !2, line: 522, type: !845, scopeLine: 525, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !847)
!845 = !DISubroutineType(types: !846)
!846 = !{!243, !216, !12, !12}
!847 = !{!848, !849, !850, !851}
!848 = !DILocalVariable(name: "capsules", arg: 1, scope: !844, file: !2, line: 522, type: !216)
!849 = !DILocalVariable(name: "count", arg: 2, scope: !844, file: !2, line: 523, type: !12)
!850 = !DILocalVariable(name: "sg_list", arg: 3, scope: !844, file: !2, line: 524, type: !12)
!851 = !DILocalVariable(name: "status", scope: !844, file: !2, line: 526, type: !243)
!852 = !DILocation(line: 522, column: 68, scope: !844)
!853 = !DILocation(line: 523, column: 24, scope: !844)
!854 = !DILocation(line: 524, column: 24, scope: !844)
!855 = !DILocation(line: 526, column: 2, scope: !844)
!856 = !DILocation(line: 526, column: 15, scope: !844)
!857 = !DILocation(line: 528, column: 10, scope: !858)
!858 = distinct !DILexicalBlock(scope: !844, file: !2, line: 528, column: 6)
!859 = !DILocation(line: 528, column: 26, scope: !858)
!860 = !DILocation(line: 528, column: 6, scope: !844)
!861 = !DILocation(line: 529, column: 3, scope: !858)
!862 = !DILocation(line: 531, column: 6, scope: !863)
!863 = distinct !DILexicalBlock(scope: !844, file: !2, line: 531, column: 6)
!864 = !DILocation(line: 531, column: 6, scope: !844)
!865 = !DILocation(line: 532, column: 3, scope: !863)
!866 = !DILocation(line: 533, column: 11, scope: !844)
!867 = !DILocation(line: 533, column: 9, scope: !844)
!868 = !DILocation(line: 534, column: 2, scope: !844)
!869 = !DILocation(line: 535, column: 9, scope: !844)
!870 = !DILocation(line: 535, column: 2, scope: !844)
!871 = !DILocation(line: 536, column: 1, scope: !844)
!872 = distinct !DISubprogram(name: "virt_efi_query_capsule_caps", scope: !2, file: !2, line: 538, type: !873, scopeLine: 542, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !875)
!873 = !DISubroutineType(types: !874)
!874 = !{!243, !216, !12, !202, !234}
!875 = !{!876, !877, !878, !879, !880}
!876 = !DILocalVariable(name: "capsules", arg: 1, scope: !872, file: !2, line: 538, type: !216)
!877 = !DILocalVariable(name: "count", arg: 2, scope: !872, file: !2, line: 539, type: !12)
!878 = !DILocalVariable(name: "max_size", arg: 3, scope: !872, file: !2, line: 540, type: !202)
!879 = !DILocalVariable(name: "reset_type", arg: 4, scope: !872, file: !2, line: 541, type: !234)
!880 = !DILocalVariable(name: "status", scope: !872, file: !2, line: 543, type: !243)
!881 = !DILocation(line: 538, column: 72, scope: !872)
!882 = !DILocation(line: 539, column: 21, scope: !872)
!883 = !DILocation(line: 540, column: 12, scope: !872)
!884 = !DILocation(line: 541, column: 12, scope: !872)
!885 = !DILocation(line: 543, column: 2, scope: !872)
!886 = !DILocation(line: 543, column: 15, scope: !872)
!887 = !DILocation(line: 545, column: 10, scope: !888)
!888 = distinct !DILexicalBlock(scope: !872, file: !2, line: 545, column: 6)
!889 = !DILocation(line: 545, column: 26, scope: !888)
!890 = !DILocation(line: 545, column: 6, scope: !872)
!891 = !DILocation(line: 546, column: 3, scope: !888)
!892 = !DILocation(line: 548, column: 6, scope: !893)
!893 = distinct !DILexicalBlock(scope: !872, file: !2, line: 548, column: 6)
!894 = !DILocation(line: 548, column: 6, scope: !872)
!895 = !DILocation(line: 549, column: 3, scope: !893)
!896 = !DILocation(line: 550, column: 11, scope: !872)
!897 = !DILocation(line: 550, column: 9, scope: !872)
!898 = !DILocation(line: 552, column: 2, scope: !872)
!899 = !DILocation(line: 553, column: 9, scope: !872)
!900 = !DILocation(line: 553, column: 2, scope: !872)
!901 = !DILocation(line: 554, column: 1, scope: !872)
!902 = distinct !DISubprogram(name: "efi_call_acpi_prm_handler", scope: !2, file: !2, line: 577, type: !903, scopeLine: 579, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !905)
!903 = !DISubroutineType(types: !904)
!904 = !{!243, !240, !203, !72}
!905 = !{!906, !907, !908, !909}
!906 = !DILocalVariable(name: "handler_addr", arg: 1, scope: !902, file: !2, line: 577, type: !240)
!907 = !DILocalVariable(name: "param_buffer_addr", arg: 2, scope: !902, file: !2, line: 578, type: !203)
!908 = !DILocalVariable(name: "context", arg: 3, scope: !902, file: !2, line: 578, type: !72)
!909 = !DILocalVariable(name: "status", scope: !902, file: !2, line: 580, type: !243)
!910 = !DILocation(line: 577, column: 51, scope: !902)
!911 = !DILocation(line: 578, column: 10, scope: !902)
!912 = !DILocation(line: 578, column: 35, scope: !902)
!913 = !DILocation(line: 580, column: 2, scope: !902)
!914 = !DILocation(line: 580, column: 15, scope: !902)
!915 = !DILocation(line: 582, column: 6, scope: !916)
!916 = distinct !DILexicalBlock(scope: !902, file: !2, line: 582, column: 6)
!917 = !DILocation(line: 582, column: 6, scope: !902)
!918 = !DILocation(line: 583, column: 3, scope: !916)
!919 = !DILocation(line: 584, column: 11, scope: !902)
!920 = !DILocation(line: 584, column: 9, scope: !902)
!921 = !DILocation(line: 586, column: 2, scope: !902)
!922 = !DILocation(line: 587, column: 9, scope: !902)
!923 = !DILocation(line: 587, column: 2, scope: !902)
!924 = !DILocation(line: 588, column: 1, scope: !902)
!925 = !DISubprogram(name: "down_interruptible", scope: !315, file: !315, line: 45, type: !926, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!926 = !DISubroutineType(types: !927)
!927 = !{!235, !928}
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!929 = !DILocation(line: 315, column: 55, scope: !322)
!930 = !DILocation(line: 316, column: 30, scope: !322)
!931 = !DILocation(line: 318, column: 28, scope: !322)
!932 = !DILocation(line: 318, column: 26, scope: !322)
!933 = !DILocation(line: 319, column: 22, scope: !322)
!934 = !DILocation(line: 319, column: 20, scope: !322)
!935 = !DILocation(line: 320, column: 24, scope: !322)
!936 = !DILocation(line: 320, column: 22, scope: !322)
!937 = !DILocation(line: 321, column: 22, scope: !322)
!938 = !DILocation(line: 323, column: 7, scope: !331)
!939 = !DILocation(line: 323, column: 6, scope: !322)
!940 = !DILocation(line: 324, column: 3, scope: !329)
!941 = !DILocation(line: 324, column: 3, scope: !335)
!942 = !DILocation(line: 324, column: 3, scope: !943)
!943 = distinct !DILexicalBlock(scope: !335, file: !2, line: 324, column: 3)
!944 = !DILocation(line: 0, scope: !943)
!945 = !DILocation(line: 324, column: 3, scope: !946)
!946 = distinct !DILexicalBlock(scope: !943, file: !2, line: 324, column: 3)
!947 = !DILocation(line: 324, column: 3, scope: !336)
!948 = !DILocation(line: 324, column: 3, scope: !949)
!949 = distinct !DILexicalBlock(scope: !336, file: !2, line: 324, column: 3)
!950 = !DILocation(line: 324, column: 3, scope: !951)
!951 = distinct !DILexicalBlock(scope: !949, file: !2, line: 324, column: 3)
!952 = !DILocation(line: 324, column: 3, scope: !330)
!953 = !DILocation(line: 325, column: 23, scope: !330)
!954 = !DILocation(line: 326, column: 3, scope: !330)
!955 = !DILocation(line: 329, column: 2, scope: !322)
!956 = !DILocation(line: 330, column: 2, scope: !322)
!957 = !DILocation(line: 330, column: 2, scope: !958)
!958 = distinct !DILexicalBlock(scope: !322, file: !2, line: 330, column: 2)
!959 = !DILocation(line: 330, column: 2, scope: !960)
!960 = distinct !DILexicalBlock(scope: !958, file: !2, line: 330, column: 2)
!961 = !DILocation(line: 336, column: 17, scope: !962)
!962 = distinct !DILexicalBlock(scope: !322, file: !2, line: 336, column: 6)
!963 = !DILocation(line: 336, column: 6, scope: !962)
!964 = !DILocation(line: 336, column: 6, scope: !322)
!965 = !DILocation(line: 337, column: 3, scope: !962)
!966 = !DILocation(line: 339, column: 3, scope: !967)
!967 = distinct !DILexicalBlock(scope: !962, file: !2, line: 339, column: 3)
!968 = !DILocation(line: 339, column: 3, scope: !969)
!969 = distinct !DILexicalBlock(scope: !967, file: !2, line: 339, column: 3)
!970 = !DILocation(line: 341, column: 2, scope: !339)
!971 = !DILocation(line: 341, column: 2, scope: !342)
!972 = !DILocation(line: 341, column: 2, scope: !341)
!973 = !DILocation(line: 341, column: 2, scope: !974)
!974 = distinct !DILexicalBlock(scope: !341, file: !2, line: 341, column: 2)
!975 = !DILocation(line: 341, column: 2, scope: !976)
!976 = distinct !DILexicalBlock(scope: !341, file: !2, line: 341, column: 2)
!977 = !{i64 2155806893, i64 2155806922, i64 2155806968, i64 2155807026, i64 2155807080, i64 2155807134, i64 2155807189, i64 2155807220, i64 2155807528, i64 2155807534, i64 2155807581, i64 2155807604, i64 2155807630}
!978 = !DILocation(line: 341, column: 2, scope: !979)
!979 = distinct !DILexicalBlock(scope: !341, file: !2, line: 341, column: 2)
!980 = !DILocation(line: 341, column: 2, scope: !322)
!981 = !DILocation(line: 342, column: 1, scope: !322)
!982 = !DILocation(line: 343, column: 26, scope: !322)
!983 = !DILocation(line: 344, column: 22, scope: !322)
!984 = !DILocation(line: 344, column: 2, scope: !322)
!985 = !DISubprogram(name: "up", scope: !315, file: !315, line: 49, type: !986, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!986 = !DISubroutineType(types: !987)
!987 = !{null, !928}
!988 = distinct !DISubprogram(name: "native_save_fl", scope: !430, file: !430, line: 17, type: !413, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !989)
!989 = !{!990}
!990 = !DILocalVariable(name: "flags", scope: !988, file: !430, line: 19, type: !12)
!991 = !DILocation(line: 19, column: 2, scope: !988)
!992 = !DILocation(line: 19, column: 16, scope: !988)
!993 = !DILocation(line: 26, column: 2, scope: !988)
!994 = !{i64 1795547, i64 1795568}
!995 = !DILocation(line: 32, column: 9, scope: !988)
!996 = !DILocation(line: 33, column: 1, scope: !988)
!997 = !DILocation(line: 32, column: 2, scope: !988)
!998 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !430, file: !430, line: 120, type: !999, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1001)
!999 = !DISubroutineType(types: !1000)
!1000 = !{!235, !12}
!1001 = !{!1002}
!1002 = !DILocalVariable(name: "flags", arg: 1, scope: !998, file: !430, line: 120, type: !12)
!1003 = !DILocation(line: 120, column: 67, scope: !998)
!1004 = !DILocation(line: 122, column: 11, scope: !998)
!1005 = !DILocation(line: 122, column: 17, scope: !998)
!1006 = !DILocation(line: 122, column: 9, scope: !998)
!1007 = !DILocation(line: 122, column: 2, scope: !998)
!1008 = distinct !DISubprogram(name: "arch_local_irq_enable", scope: !430, file: !430, line: 75, type: !498, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15)
!1009 = !DILocation(line: 77, column: 2, scope: !1008)
!1010 = !DILocation(line: 78, column: 1, scope: !1008)
!1011 = distinct !DISubprogram(name: "native_irq_enable", scope: !430, file: !430, line: 40, type: !498, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15)
!1012 = !DILocation(line: 42, column: 2, scope: !1011)
!1013 = !{i64 1795843}
!1014 = !DILocation(line: 43, column: 1, scope: !1011)
!1015 = !DISubprogram(name: "down_trylock", scope: !315, file: !315, line: 47, type: !926, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1016 = !DISubprogram(name: "arch_efi_call_virt_setup", scope: !1017, file: !1017, line: 143, type: !498, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1017 = !DIFile(filename: "./arch/x86/include/asm/efi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a4b467ae7390bce7623c86c5f172fa43")
!1018 = !DISubprogram(name: "ibt_save", scope: !1019, file: !1019, line: 77, type: !1020, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1019 = !DIFile(filename: "./arch/x86/include/asm/ibt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4ef64582d88d74150b3cb3d49f1e6881")
!1020 = !DISubroutineType(types: !1021)
!1021 = !{!203, !332}
!1022 = !DISubprogram(name: "__efi_call", scope: !1017, file: !1017, line: 97, type: !1023, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1023 = !DISubroutineType(types: !1024)
!1024 = !{!203, !72, null}
!1025 = !DISubprogram(name: "ibt_restore", scope: !1019, file: !1019, line: 78, type: !1026, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{null, !203}
!1028 = !DISubprogram(name: "arch_efi_call_virt_teardown", scope: !1017, file: !1017, line: 144, type: !498, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1029 = distinct !DISubprogram(name: "efi_enabled", scope: !24, file: !24, line: 880, type: !1030, scopeLine: 881, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1032)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{!332, !235}
!1032 = !{!1033}
!1033 = !DILocalVariable(name: "feature", arg: 1, scope: !1029, file: !24, line: 880, type: !235)
!1034 = !DILocation(line: 880, column: 36, scope: !1029)
!1035 = !DILocation(line: 882, column: 9, scope: !1029)
!1036 = !DILocation(line: 882, column: 39, scope: !1029)
!1037 = !DILocation(line: 882, column: 2, scope: !1029)
!1038 = !DILocation(line: 84, column: 55, scope: !361)
!1039 = !DILocation(line: 86, column: 2, scope: !361)
!1040 = !DILocation(line: 86, column: 5, scope: !361)
!1041 = !DILocation(line: 86, column: 10, scope: !361)
!1042 = !DILocation(line: 87, column: 2, scope: !361)
!1043 = !DILocation(line: 87, column: 2, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !361, file: !270, line: 87, column: 2)
!1045 = !DILocation(line: 88, column: 1, scope: !361)
!1046 = distinct !DISubprogram(name: "__init_work", scope: !46, file: !46, line: 263, type: !1047, scopeLine: 263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1049)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{null, !266, !235}
!1049 = !{!1050, !1051}
!1050 = !DILocalVariable(name: "work", arg: 1, scope: !1046, file: !46, line: 263, type: !266)
!1051 = !DILocalVariable(name: "onstack", arg: 2, scope: !1046, file: !46, line: 263, type: !235)
!1052 = !DILocation(line: 263, column: 52, scope: !1046)
!1053 = !DILocation(line: 263, column: 62, scope: !1046)
!1054 = !DILocation(line: 263, column: 73, scope: !1046)
!1055 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !1056, file: !1056, line: 35, type: !1057, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1059)
!1056 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!1057 = !DISubroutineType(types: !1058)
!1058 = !{null, !80}
!1059 = !{!1060}
!1060 = !DILocalVariable(name: "list", arg: 1, scope: !1055, file: !1056, line: 35, type: !80)
!1061 = !DILocation(line: 35, column: 53, scope: !1055)
!1062 = !DILocation(line: 37, column: 2, scope: !1055)
!1063 = !DILocation(line: 37, column: 2, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1055, file: !1056, line: 37, column: 2)
!1065 = !DILocation(line: 37, column: 2, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1064, file: !1056, line: 37, column: 2)
!1067 = !DILocation(line: 37, column: 2, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1064, file: !1056, line: 37, column: 2)
!1069 = !DILocation(line: 38, column: 2, scope: !1055)
!1070 = !DILocation(line: 38, column: 2, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1055, file: !1056, line: 38, column: 2)
!1072 = !DILocation(line: 38, column: 2, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1071, file: !1056, line: 38, column: 2)
!1074 = !DILocation(line: 38, column: 2, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1071, file: !1056, line: 38, column: 2)
!1076 = !DILocation(line: 39, column: 1, scope: !1055)
!1077 = distinct !DISubprogram(name: "efi_call_rts", scope: !2, file: !2, line: 216, type: !264, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1078)
!1078 = !{!1079, !1080, !1083, !1084, !1085, !1088, !1089, !1091, !1092, !1094, !1095, !1097, !1098, !1100, !1101, !1103, !1104, !1106, !1107, !1109, !1110, !1112, !1113, !1115, !1116, !1118, !1119, !1121}
!1079 = !DILocalVariable(name: "work", arg: 1, scope: !1077, file: !2, line: 216, type: !266)
!1080 = !DILocalVariable(name: "args", scope: !1077, file: !2, line: 218, type: !1081)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!1083 = !DILocalVariable(name: "status", scope: !1077, file: !2, line: 219, type: !243)
!1084 = !DILocalVariable(name: "flags", scope: !1077, file: !2, line: 220, type: !12)
!1085 = !DILocalVariable(name: "ret", scope: !1086, file: !2, line: 227, type: !203)
!1086 = distinct !DILexicalBlock(scope: !1087, file: !2, line: 227, column: 12)
!1087 = distinct !DILexicalBlock(scope: !1077, file: !2, line: 225, column: 35)
!1088 = !DILocalVariable(name: "ibt", scope: !1086, file: !2, line: 227, type: !203)
!1089 = !DILocalVariable(name: "ret", scope: !1090, file: !2, line: 232, type: !203)
!1090 = distinct !DILexicalBlock(scope: !1087, file: !2, line: 232, column: 12)
!1091 = !DILocalVariable(name: "ibt", scope: !1090, file: !2, line: 232, type: !203)
!1092 = !DILocalVariable(name: "ret", scope: !1093, file: !2, line: 236, type: !203)
!1093 = distinct !DILexicalBlock(scope: !1087, file: !2, line: 236, column: 12)
!1094 = !DILocalVariable(name: "ibt", scope: !1093, file: !2, line: 236, type: !203)
!1095 = !DILocalVariable(name: "ret", scope: !1096, file: !2, line: 242, type: !203)
!1096 = distinct !DILexicalBlock(scope: !1087, file: !2, line: 242, column: 12)
!1097 = !DILocalVariable(name: "ibt", scope: !1096, file: !2, line: 242, type: !203)
!1098 = !DILocalVariable(name: "ret", scope: !1099, file: !2, line: 247, type: !203)
!1099 = distinct !DILexicalBlock(scope: !1087, file: !2, line: 247, column: 12)
!1100 = !DILocalVariable(name: "ibt", scope: !1099, file: !2, line: 247, type: !203)
!1101 = !DILocalVariable(name: "ret", scope: !1102, file: !2, line: 255, type: !203)
!1102 = distinct !DILexicalBlock(scope: !1087, file: !2, line: 255, column: 12)
!1103 = !DILocalVariable(name: "ibt", scope: !1102, file: !2, line: 255, type: !203)
!1104 = !DILocalVariable(name: "ret", scope: !1105, file: !2, line: 261, type: !203)
!1105 = distinct !DILexicalBlock(scope: !1087, file: !2, line: 261, column: 12)
!1106 = !DILocalVariable(name: "ibt", scope: !1105, file: !2, line: 261, type: !203)
!1107 = !DILocalVariable(name: "ret", scope: !1108, file: !2, line: 269, type: !203)
!1108 = distinct !DILexicalBlock(scope: !1087, file: !2, line: 269, column: 12)
!1109 = !DILocalVariable(name: "ibt", scope: !1108, file: !2, line: 269, type: !203)
!1110 = !DILocalVariable(name: "ret", scope: !1111, file: !2, line: 276, type: !203)
!1111 = distinct !DILexicalBlock(scope: !1087, file: !2, line: 276, column: 12)
!1112 = !DILocalVariable(name: "ibt", scope: !1111, file: !2, line: 276, type: !203)
!1113 = !DILocalVariable(name: "ret", scope: !1114, file: !2, line: 280, type: !203)
!1114 = distinct !DILexicalBlock(scope: !1087, file: !2, line: 280, column: 12)
!1115 = !DILocalVariable(name: "ibt", scope: !1114, file: !2, line: 280, type: !203)
!1116 = !DILocalVariable(name: "ret", scope: !1117, file: !2, line: 286, type: !203)
!1117 = distinct !DILexicalBlock(scope: !1087, file: !2, line: 286, column: 12)
!1118 = !DILocalVariable(name: "ibt", scope: !1117, file: !2, line: 286, type: !203)
!1119 = !DILocalVariable(name: "ret", scope: !1120, file: !2, line: 294, type: !203)
!1120 = distinct !DILexicalBlock(scope: !1087, file: !2, line: 294, column: 12)
!1121 = !DILocalVariable(name: "ibt", scope: !1120, file: !2, line: 294, type: !203)
!1122 = !DILocation(line: 216, column: 46, scope: !1077)
!1123 = !DILocation(line: 218, column: 2, scope: !1077)
!1124 = !DILocation(line: 218, column: 28, scope: !1077)
!1125 = !DILocation(line: 218, column: 48, scope: !1077)
!1126 = !DILocation(line: 219, column: 2, scope: !1077)
!1127 = !DILocation(line: 219, column: 15, scope: !1077)
!1128 = !DILocation(line: 220, column: 2, scope: !1077)
!1129 = !DILocation(line: 220, column: 16, scope: !1077)
!1130 = !DILocation(line: 222, column: 2, scope: !1077)
!1131 = !DILocation(line: 223, column: 10, scope: !1077)
!1132 = !DILocation(line: 223, column: 8, scope: !1077)
!1133 = !DILocation(line: 225, column: 23, scope: !1077)
!1134 = !DILocation(line: 225, column: 2, scope: !1077)
!1135 = !DILocation(line: 227, column: 12, scope: !1086)
!1136 = !DILocation(line: 227, column: 12, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1138, file: !2, line: 227, column: 12)
!1138 = distinct !DILexicalBlock(scope: !1086, file: !2, line: 227, column: 12)
!1139 = !DILocation(line: 227, column: 12, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1137, file: !2, line: 227, column: 12)
!1141 = !DILocation(line: 227, column: 12, scope: !1138)
!1142 = !DILocation(line: 227, column: 12, scope: !1087)
!1143 = !DILocation(line: 227, column: 10, scope: !1087)
!1144 = !DILocation(line: 230, column: 3, scope: !1087)
!1145 = !DILocation(line: 232, column: 12, scope: !1090)
!1146 = !DILocation(line: 232, column: 12, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1148, file: !2, line: 232, column: 12)
!1148 = distinct !DILexicalBlock(scope: !1090, file: !2, line: 232, column: 12)
!1149 = !DILocation(line: 232, column: 12, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1147, file: !2, line: 232, column: 12)
!1151 = !DILocation(line: 232, column: 12, scope: !1148)
!1152 = !DILocation(line: 232, column: 12, scope: !1087)
!1153 = !DILocation(line: 232, column: 10, scope: !1087)
!1154 = !DILocation(line: 234, column: 3, scope: !1087)
!1155 = !DILocation(line: 236, column: 12, scope: !1093)
!1156 = !DILocation(line: 236, column: 12, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1158, file: !2, line: 236, column: 12)
!1158 = distinct !DILexicalBlock(scope: !1093, file: !2, line: 236, column: 12)
!1159 = !DILocation(line: 236, column: 12, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1157, file: !2, line: 236, column: 12)
!1161 = !DILocation(line: 236, column: 12, scope: !1158)
!1162 = !DILocation(line: 236, column: 12, scope: !1087)
!1163 = !DILocation(line: 236, column: 10, scope: !1087)
!1164 = !DILocation(line: 240, column: 3, scope: !1087)
!1165 = !DILocation(line: 242, column: 12, scope: !1096)
!1166 = !DILocation(line: 242, column: 12, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1168, file: !2, line: 242, column: 12)
!1168 = distinct !DILexicalBlock(scope: !1096, file: !2, line: 242, column: 12)
!1169 = !DILocation(line: 242, column: 12, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1167, file: !2, line: 242, column: 12)
!1171 = !DILocation(line: 242, column: 12, scope: !1168)
!1172 = !DILocation(line: 242, column: 12, scope: !1087)
!1173 = !DILocation(line: 242, column: 10, scope: !1087)
!1174 = !DILocation(line: 245, column: 3, scope: !1087)
!1175 = !DILocation(line: 247, column: 12, scope: !1099)
!1176 = !DILocation(line: 247, column: 12, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1178, file: !2, line: 247, column: 12)
!1178 = distinct !DILexicalBlock(scope: !1099, file: !2, line: 247, column: 12)
!1179 = !DILocation(line: 247, column: 12, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1177, file: !2, line: 247, column: 12)
!1181 = !DILocation(line: 247, column: 12, scope: !1178)
!1182 = !DILocation(line: 247, column: 12, scope: !1087)
!1183 = !DILocation(line: 247, column: 10, scope: !1087)
!1184 = !DILocation(line: 253, column: 3, scope: !1087)
!1185 = !DILocation(line: 255, column: 12, scope: !1102)
!1186 = !DILocation(line: 255, column: 12, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1188, file: !2, line: 255, column: 12)
!1188 = distinct !DILexicalBlock(scope: !1102, file: !2, line: 255, column: 12)
!1189 = !DILocation(line: 255, column: 12, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1187, file: !2, line: 255, column: 12)
!1191 = !DILocation(line: 255, column: 12, scope: !1188)
!1192 = !DILocation(line: 255, column: 12, scope: !1087)
!1193 = !DILocation(line: 255, column: 10, scope: !1087)
!1194 = !DILocation(line: 259, column: 3, scope: !1087)
!1195 = !DILocation(line: 261, column: 12, scope: !1105)
!1196 = !DILocation(line: 261, column: 12, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1198, file: !2, line: 261, column: 12)
!1198 = distinct !DILexicalBlock(scope: !1105, file: !2, line: 261, column: 12)
!1199 = !DILocation(line: 261, column: 12, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1197, file: !2, line: 261, column: 12)
!1201 = !DILocation(line: 261, column: 12, scope: !1198)
!1202 = !DILocation(line: 261, column: 12, scope: !1087)
!1203 = !DILocation(line: 261, column: 10, scope: !1087)
!1204 = !DILocation(line: 267, column: 3, scope: !1087)
!1205 = !DILocation(line: 269, column: 12, scope: !1108)
!1206 = !DILocation(line: 269, column: 12, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1208, file: !2, line: 269, column: 12)
!1208 = distinct !DILexicalBlock(scope: !1108, file: !2, line: 269, column: 12)
!1209 = !DILocation(line: 269, column: 12, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1207, file: !2, line: 269, column: 12)
!1211 = !DILocation(line: 269, column: 12, scope: !1208)
!1212 = !DILocation(line: 269, column: 12, scope: !1087)
!1213 = !DILocation(line: 269, column: 10, scope: !1087)
!1214 = !DILocation(line: 274, column: 3, scope: !1087)
!1215 = !DILocation(line: 276, column: 12, scope: !1111)
!1216 = !DILocation(line: 276, column: 12, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1218, file: !2, line: 276, column: 12)
!1218 = distinct !DILexicalBlock(scope: !1111, file: !2, line: 276, column: 12)
!1219 = !DILocation(line: 276, column: 12, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1217, file: !2, line: 276, column: 12)
!1221 = !DILocation(line: 276, column: 12, scope: !1218)
!1222 = !DILocation(line: 276, column: 12, scope: !1087)
!1223 = !DILocation(line: 276, column: 10, scope: !1087)
!1224 = !DILocation(line: 278, column: 3, scope: !1087)
!1225 = !DILocation(line: 280, column: 12, scope: !1114)
!1226 = !DILocation(line: 280, column: 12, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1228, file: !2, line: 280, column: 12)
!1228 = distinct !DILexicalBlock(scope: !1114, file: !2, line: 280, column: 12)
!1229 = !DILocation(line: 280, column: 12, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1227, file: !2, line: 280, column: 12)
!1231 = !DILocation(line: 280, column: 12, scope: !1228)
!1232 = !DILocation(line: 280, column: 12, scope: !1087)
!1233 = !DILocation(line: 280, column: 10, scope: !1087)
!1234 = !DILocation(line: 284, column: 3, scope: !1087)
!1235 = !DILocation(line: 286, column: 12, scope: !1117)
!1236 = !DILocation(line: 286, column: 12, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1238, file: !2, line: 286, column: 12)
!1238 = distinct !DILexicalBlock(scope: !1117, file: !2, line: 286, column: 12)
!1239 = !DILocation(line: 286, column: 12, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1237, file: !2, line: 286, column: 12)
!1241 = !DILocation(line: 286, column: 12, scope: !1238)
!1242 = !DILocation(line: 286, column: 12, scope: !1087)
!1243 = !DILocation(line: 286, column: 10, scope: !1087)
!1244 = !DILocation(line: 291, column: 3, scope: !1087)
!1245 = !DILocation(line: 294, column: 12, scope: !1120)
!1246 = !DILocation(line: 294, column: 12, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1248, file: !2, line: 294, column: 12)
!1248 = distinct !DILexicalBlock(scope: !1120, file: !2, line: 294, column: 12)
!1249 = !DILocation(line: 294, column: 12, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1247, file: !2, line: 294, column: 12)
!1251 = !DILocation(line: 294, column: 12, scope: !1248)
!1252 = !DILocation(line: 294, column: 12, scope: !1087)
!1253 = !DILocation(line: 294, column: 10, scope: !1087)
!1254 = !DILocation(line: 297, column: 3, scope: !1087)
!1255 = !DILocation(line: 305, column: 3, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1087, file: !2, line: 305, column: 3)
!1257 = !DILocation(line: 305, column: 3, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1256, file: !2, line: 305, column: 3)
!1259 = !DILocation(line: 306, column: 2, scope: !1087)
!1260 = !DILocation(line: 308, column: 28, scope: !1077)
!1261 = !DILocation(line: 308, column: 48, scope: !1077)
!1262 = !DILocation(line: 308, column: 2, scope: !1077)
!1263 = !DILocation(line: 309, column: 2, scope: !1077)
!1264 = !DILocation(line: 311, column: 24, scope: !1077)
!1265 = !DILocation(line: 311, column: 22, scope: !1077)
!1266 = !DILocation(line: 312, column: 2, scope: !1077)
!1267 = !DILocation(line: 313, column: 1, scope: !1077)
!1268 = distinct !DISubprogram(name: "queue_work", scope: !46, file: !46, line: 559, type: !1269, scopeLine: 561, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1273)
!1269 = !DISubroutineType(types: !1270)
!1270 = !{!332, !1271, !266}
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !46, line: 18, flags: DIFlagFwdDecl)
!1273 = !{!1274, !1275}
!1274 = !DILocalVariable(name: "wq", arg: 1, scope: !1268, file: !46, line: 559, type: !1271)
!1275 = !DILocalVariable(name: "work", arg: 2, scope: !1268, file: !46, line: 560, type: !266)
!1276 = !DILocation(line: 559, column: 56, scope: !1268)
!1277 = !DILocation(line: 560, column: 30, scope: !1268)
!1278 = !DILocation(line: 562, column: 41, scope: !1268)
!1279 = !DILocation(line: 562, column: 45, scope: !1268)
!1280 = !DILocation(line: 562, column: 9, scope: !1268)
!1281 = !DILocation(line: 562, column: 2, scope: !1268)
!1282 = !DISubprogram(name: "wait_for_completion", scope: !270, file: !270, line: 102, type: !362, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1283 = distinct !DISubprogram(name: "const_test_bit", scope: !1284, file: !1284, line: 166, type: !1285, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1290)
!1284 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!1285 = !DISubroutineType(types: !1286)
!1286 = !{!332, !12, !1287}
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1289)
!1289 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !12)
!1290 = !{!1291, !1292, !1293, !1294, !1295}
!1291 = !DILocalVariable(name: "nr", arg: 1, scope: !1283, file: !1284, line: 166, type: !12)
!1292 = !DILocalVariable(name: "addr", arg: 2, scope: !1283, file: !1284, line: 166, type: !1287)
!1293 = !DILocalVariable(name: "p", scope: !1283, file: !1284, line: 168, type: !75)
!1294 = !DILocalVariable(name: "mask", scope: !1283, file: !1284, line: 169, type: !12)
!1295 = !DILocalVariable(name: "val", scope: !1283, file: !1284, line: 170, type: !12)
!1296 = !DILocation(line: 166, column: 30, scope: !1283)
!1297 = !DILocation(line: 166, column: 64, scope: !1283)
!1298 = !DILocation(line: 168, column: 2, scope: !1283)
!1299 = !DILocation(line: 168, column: 23, scope: !1283)
!1300 = !DILocation(line: 168, column: 50, scope: !1283)
!1301 = !DILocation(line: 168, column: 57, scope: !1283)
!1302 = !DILocation(line: 168, column: 55, scope: !1283)
!1303 = !DILocation(line: 169, column: 2, scope: !1283)
!1304 = !DILocation(line: 169, column: 16, scope: !1283)
!1305 = !DILocation(line: 169, column: 23, scope: !1283)
!1306 = !DILocation(line: 170, column: 2, scope: !1283)
!1307 = !DILocation(line: 170, column: 16, scope: !1283)
!1308 = !DILocation(line: 170, column: 23, scope: !1283)
!1309 = !DILocation(line: 170, column: 22, scope: !1283)
!1310 = !DILocation(line: 172, column: 12, scope: !1283)
!1311 = !DILocation(line: 172, column: 18, scope: !1283)
!1312 = !DILocation(line: 172, column: 16, scope: !1283)
!1313 = !DILocation(line: 172, column: 10, scope: !1283)
!1314 = !DILocation(line: 172, column: 9, scope: !1283)
!1315 = !DILocation(line: 173, column: 1, scope: !1283)
!1316 = !DILocation(line: 172, column: 2, scope: !1283)
!1317 = distinct !DISubprogram(name: "_test_bit", scope: !1318, file: !1318, line: 139, type: !1285, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1319)
!1318 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!1319 = !{!1320, !1321}
!1320 = !DILocalVariable(name: "nr", arg: 1, scope: !1317, file: !1318, line: 139, type: !12)
!1321 = !DILocalVariable(name: "addr", arg: 2, scope: !1317, file: !1318, line: 139, type: !1287)
!1322 = !DILocation(line: 139, column: 25, scope: !1317)
!1323 = !DILocation(line: 139, column: 59, scope: !1317)
!1324 = !DILocation(line: 141, column: 25, scope: !1317)
!1325 = !DILocation(line: 141, column: 32, scope: !1317)
!1326 = !DILocation(line: 141, column: 30, scope: !1317)
!1327 = !DILocation(line: 141, column: 2, scope: !1317)
!1328 = !DILocation(line: 142, column: 23, scope: !1317)
!1329 = !DILocation(line: 142, column: 27, scope: !1317)
!1330 = !DILocation(line: 142, column: 9, scope: !1317)
!1331 = !DILocation(line: 142, column: 2, scope: !1317)
!1332 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !1333, file: !1333, line: 66, type: !1334, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1343)
!1333 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!1334 = !DISubroutineType(types: !1335)
!1335 = !{null, !1336, !1339}
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1338)
!1338 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!1339 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !74, line: 61, baseType: !1340)
!1340 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !1341, line: 72, baseType: !1342)
!1341 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!1342 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !1341, line: 16, baseType: !12)
!1343 = !{!1344, !1345}
!1344 = !DILocalVariable(name: "v", arg: 1, scope: !1332, file: !1333, line: 66, type: !1336)
!1345 = !DILocalVariable(name: "size", arg: 2, scope: !1332, file: !1333, line: 66, type: !1339)
!1346 = !DILocation(line: 66, column: 73, scope: !1332)
!1347 = !DILocation(line: 66, column: 83, scope: !1332)
!1348 = !DILocation(line: 68, column: 19, scope: !1332)
!1349 = !DILocation(line: 68, column: 22, scope: !1332)
!1350 = !DILocation(line: 68, column: 2, scope: !1332)
!1351 = !DILocation(line: 69, column: 2, scope: !1332)
!1352 = !DILocation(line: 70, column: 1, scope: !1332)
!1353 = distinct !DISubprogram(name: "arch_test_bit", scope: !1354, file: !1354, line: 237, type: !1285, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1355)
!1354 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!1355 = !{!1356, !1357}
!1356 = !DILocalVariable(name: "nr", arg: 1, scope: !1353, file: !1354, line: 237, type: !12)
!1357 = !DILocalVariable(name: "addr", arg: 2, scope: !1353, file: !1354, line: 237, type: !1287)
!1358 = !DILocation(line: 237, column: 29, scope: !1353)
!1359 = !DILocation(line: 237, column: 63, scope: !1353)
!1360 = !DILocation(line: 239, column: 30, scope: !1353)
!1361 = !DILocation(line: 239, column: 9, scope: !1353)
!1362 = !DILocation(line: 239, column: 54, scope: !1353)
!1363 = !DILocation(line: 239, column: 58, scope: !1353)
!1364 = !DILocation(line: 239, column: 36, scope: !1353)
!1365 = !DILocation(line: 240, column: 26, scope: !1353)
!1366 = !DILocation(line: 240, column: 30, scope: !1353)
!1367 = !DILocation(line: 240, column: 8, scope: !1353)
!1368 = !DILocation(line: 239, column: 2, scope: !1353)
!1369 = distinct !DISubprogram(name: "kasan_check_read", scope: !1370, file: !1370, line: 40, type: !1371, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1373)
!1370 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!1371 = !DISubroutineType(types: !1372)
!1372 = !{!332, !1336, !19}
!1373 = !{!1374, !1375}
!1374 = !DILocalVariable(name: "p", arg: 1, scope: !1369, file: !1370, line: 40, type: !1336)
!1375 = !DILocalVariable(name: "size", arg: 2, scope: !1369, file: !1370, line: 40, type: !19)
!1376 = !DILocation(line: 40, column: 58, scope: !1369)
!1377 = !DILocation(line: 40, column: 74, scope: !1369)
!1378 = !DILocation(line: 42, column: 2, scope: !1369)
!1379 = distinct !DISubprogram(name: "kcsan_check_access", scope: !1380, file: !1380, line: 229, type: !1381, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1383)
!1380 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!1381 = !DISubroutineType(types: !1382)
!1382 = !{null, !1336, !1339, !235}
!1383 = !{!1384, !1385, !1386}
!1384 = !DILocalVariable(name: "ptr", arg: 1, scope: !1379, file: !1380, line: 229, type: !1336)
!1385 = !DILocalVariable(name: "size", arg: 2, scope: !1379, file: !1380, line: 229, type: !1339)
!1386 = !DILocalVariable(name: "type", arg: 3, scope: !1379, file: !1380, line: 230, type: !235)
!1387 = !DILocation(line: 229, column: 60, scope: !1379)
!1388 = !DILocation(line: 229, column: 72, scope: !1379)
!1389 = !DILocation(line: 230, column: 15, scope: !1379)
!1390 = !DILocation(line: 230, column: 23, scope: !1379)
!1391 = distinct !DISubprogram(name: "constant_test_bit", scope: !1354, file: !1354, line: 204, type: !1392, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1395)
!1392 = !DISubroutineType(types: !1393)
!1393 = !{!332, !1394, !1287}
!1394 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!1395 = !{!1396, !1397}
!1396 = !DILocalVariable(name: "nr", arg: 1, scope: !1391, file: !1354, line: 204, type: !1394)
!1397 = !DILocalVariable(name: "addr", arg: 2, scope: !1391, file: !1354, line: 204, type: !1287)
!1398 = !DILocation(line: 204, column: 52, scope: !1391)
!1399 = !DILocation(line: 204, column: 86, scope: !1391)
!1400 = !DILocation(line: 206, column: 19, scope: !1391)
!1401 = !DILocation(line: 206, column: 22, scope: !1391)
!1402 = !DILocation(line: 206, column: 15, scope: !1391)
!1403 = !DILocation(line: 207, column: 4, scope: !1391)
!1404 = !DILocation(line: 207, column: 9, scope: !1391)
!1405 = !DILocation(line: 207, column: 12, scope: !1391)
!1406 = !DILocation(line: 206, column: 44, scope: !1391)
!1407 = !DILocation(line: 207, column: 37, scope: !1391)
!1408 = !DILocation(line: 206, column: 2, scope: !1391)
!1409 = distinct !DISubprogram(name: "variable_test_bit", scope: !1354, file: !1354, line: 224, type: !1392, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1410)
!1410 = !{!1411, !1412, !1413}
!1411 = !DILocalVariable(name: "nr", arg: 1, scope: !1409, file: !1354, line: 224, type: !1394)
!1412 = !DILocalVariable(name: "addr", arg: 2, scope: !1409, file: !1354, line: 224, type: !1287)
!1413 = !DILocalVariable(name: "oldbit", scope: !1409, file: !1354, line: 226, type: !332)
!1414 = !DILocation(line: 224, column: 52, scope: !1409)
!1415 = !DILocation(line: 224, column: 86, scope: !1409)
!1416 = !DILocation(line: 226, column: 2, scope: !1409)
!1417 = !DILocation(line: 226, column: 7, scope: !1409)
!1418 = !DILocation(line: 231, column: 33, scope: !1409)
!1419 = !DILocation(line: 231, column: 46, scope: !1409)
!1420 = !DILocation(line: 228, column: 2, scope: !1409)
!1421 = !{i64 2148357496, i64 2148357570}
!1422 = !DILocation(line: 233, column: 9, scope: !1409)
!1423 = !DILocation(line: 234, column: 1, scope: !1409)
!1424 = !DILocation(line: 233, column: 2, scope: !1409)
!1425 = !DISubprogram(name: "__init_swait_queue_head", scope: !275, file: !275, line: 69, type: !1426, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1426 = !DISubroutineType(types: !1427)
!1427 = !{null, !1428, !480, !1429}
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!1430 = !DISubprogram(name: "complete", scope: !270, file: !270, line: 118, type: !362, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1431 = !DISubprogram(name: "queue_work_on", scope: !46, file: !46, line: 496, type: !1432, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1432 = !DISubroutineType(types: !1433)
!1433 = !{!332, !235, !1271, !266}
