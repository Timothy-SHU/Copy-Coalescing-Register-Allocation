; ModuleID = 'arch/x86/kernel/cpu/mtrr/if.c'
source_filename = "arch/x86/kernel/cpu/mtrr/if.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall3.init..kmod_if__251_424_mtrr_if_init\22, \22a\22\09\09"
module asm "__initcall__kmod_if__251_424_mtrr_if_init3:\09\09\09"
module asm ".long\09__initstub__kmod_if__251_424_mtrr_if_init3 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.cpuinfo_x86 = type { %union.anon, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.0, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon = type { i32 }
%union.anon.0 = type { i64, [88 x i8] }
%struct.proc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mtrr_ops = type { i32, ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.16, %struct.spinlock, i32, %struct.atomic64_t, %struct.mutex, i64, i32, %struct.fown_struct, ptr, %struct.file_ra_state, %struct.path, ptr, ptr, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.16 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.11 }
%union.anon.11 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.atomic64_t = type { i64 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.17, %struct.qspinlock }
%union.anon.17 = type { %struct.atomic_t }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.path = type { ptr, ptr }
%struct.seq_file = type { ptr, i64, i64, i64, i64, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.mtrr_sentry = type { i64, i32, i32 }
%struct.mtrr_gentry = type { i64, i32, i32, i32, i32 }
%struct.mtrr_sentry32 = type { i32, i32, i32 }
%struct.mtrr_gentry32 = type { i32, i32, i32, i32 }

@mtrr_strings = internal constant [7 x ptr] [ptr @.str.1, ptr @.str.2, ptr @.str, ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.5], align 16, !dbg !0
@.str = private unnamed_addr constant [2 x i8] c"?\00", align 1, !dbg !3317
@__UNIQUE_ID___addressable___initstub__kmod_if__251_424_mtrr_if_init3252 = internal global ptr @__initstub__kmod_if__251_424_mtrr_if_init3, section ".discard.addressable", align 8, !dbg !3320
@.str.1 = private unnamed_addr constant [11 x i8] c"uncachable\00", align 1, !dbg !3322
@.str.2 = private unnamed_addr constant [16 x i8] c"write-combining\00", align 1, !dbg !3327
@.str.3 = private unnamed_addr constant [14 x i8] c"write-through\00", align 1, !dbg !3329
@.str.4 = private unnamed_addr constant [14 x i8] c"write-protect\00", align 1, !dbg !3334
@.str.5 = private unnamed_addr constant [11 x i8] c"write-back\00", align 1, !dbg !3336
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@.str.6 = private unnamed_addr constant [5 x i8] c"mtrr\00", align 1, !dbg !3338
@mtrr_proc_ops = internal constant %struct.proc_ops { i32 0, ptr @mtrr_open, ptr @seq_read, ptr null, ptr @mtrr_write, ptr @seq_lseek, ptr @mtrr_close, ptr null, ptr @mtrr_ioctl, ptr @mtrr_ioctl, ptr null, ptr null }, align 8, !dbg !3343
@mtrr_if = external dso_local global ptr, align 8
@num_var_ranges = external dso_local global i32, align 4
@mtrr_usage_table = external dso_local global [256 x i32], align 16
@.str.7 = private unnamed_addr constant [63 x i8] c"reg%02i: base=0x%06lx000 (%5luMB), size=%5lu%cB, count=%d: %s\0A\00", align 1, !dbg !3361
@.str.8 = private unnamed_addr constant [9 x i8] c"disable=\00", align 1, !dbg !3366
@.str.9 = private unnamed_addr constant [6 x i8] c"base=\00", align 1, !dbg !3371
@.str.10 = private unnamed_addr constant [6 x i8] c"size=\00", align 1, !dbg !3373
@.str.11 = private unnamed_addr constant [6 x i8] c"type=\00", align 1, !dbg !3375
@.str.12 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1, !dbg !3377
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.13 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !3383
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable___initstub__kmod_if__251_424_mtrr_if_init3252], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @mtrr_attrib_to_str(i32 noundef %x) #0 align 16 !dbg !3402 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !3406, metadata !DIExpression()), !dbg !3407
  %0 = load i32, ptr %x.addr, align 4, !dbg !3408
  %cmp = icmp sle i32 %0, 6, !dbg !3409
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !3410

cond.true:                                        ; preds = %entry
  %1 = load i32, ptr %x.addr, align 4, !dbg !3411
  %idxprom = sext i32 %1 to i64, !dbg !3412
  %arrayidx = getelementptr [7 x ptr], ptr @mtrr_strings, i64 0, i64 %idxprom, !dbg !3412
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !3412
  br label %cond.end, !dbg !3410

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3410

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %2, %cond.true ], [ @.str, %cond.false ], !dbg !3410
  ret ptr %cond, !dbg !3413
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_if__251_424_mtrr_if_init3() #2 section ".init.text" align 16 !dbg !3414 {
entry:
  %call = call i32 @mtrr_if_init() #20, !dbg !3417
  ret i32 %call, !dbg !3417
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @mtrr_if_init() #2 section ".init.text" align 16 !dbg !3418 {
entry:
  %retval = alloca i32, align 4
  %c = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #21, !dbg !3479
  call void @llvm.dbg.declare(metadata ptr %c, metadata !3420, metadata !DIExpression()), !dbg !3480
  store ptr @boot_cpu_data, ptr %c, align 8, !dbg !3480
  br i1 false, label %cond.true, label %cond.false, !dbg !3481

cond.true:                                        ; preds = %entry
  br i1 true, label %if.end, label %land.lhs.true, !dbg !3483

cond.false:                                       ; preds = %entry
  %0 = load ptr, ptr %c, align 8, !dbg !3483
  %1 = getelementptr inbounds %struct.cpuinfo_x86, ptr %0, i32 0, i32 10, !dbg !3483
  %arraydecay = getelementptr inbounds [24 x i32], ptr %1, i64 0, i64 0, !dbg !3483
  %call = call zeroext i1 @arch_test_bit(i64 noundef 12, ptr noundef %arraydecay) #22, !dbg !3483
  br i1 %call, label %if.end, label %land.lhs.true, !dbg !3481

land.lhs.true:                                    ; preds = %cond.false, %cond.true
  br i1 false, label %cond.true1, label %cond.false2, !dbg !3484

cond.true1:                                       ; preds = %land.lhs.true
  br i1 true, label %if.end, label %land.lhs.true5, !dbg !3485

cond.false2:                                      ; preds = %land.lhs.true
  %2 = load ptr, ptr %c, align 8, !dbg !3485
  %3 = getelementptr inbounds %struct.cpuinfo_x86, ptr %2, i32 0, i32 10, !dbg !3485
  %arraydecay3 = getelementptr inbounds [24 x i32], ptr %3, i64 0, i64 0, !dbg !3485
  %call4 = call zeroext i1 @arch_test_bit(i64 noundef 97, ptr noundef %arraydecay3) #22, !dbg !3485
  br i1 %call4, label %if.end, label %land.lhs.true5, !dbg !3484

land.lhs.true5:                                   ; preds = %cond.false2, %cond.true1
  br i1 false, label %cond.true6, label %cond.false7, !dbg !3486

cond.true6:                                       ; preds = %land.lhs.true5
  br i1 true, label %if.end, label %land.lhs.true10, !dbg !3487

cond.false7:                                      ; preds = %land.lhs.true5
  %4 = load ptr, ptr %c, align 8, !dbg !3487
  %5 = getelementptr inbounds %struct.cpuinfo_x86, ptr %4, i32 0, i32 10, !dbg !3487
  %arraydecay8 = getelementptr inbounds [24 x i32], ptr %5, i64 0, i64 0, !dbg !3487
  %call9 = call zeroext i1 @arch_test_bit(i64 noundef 98, ptr noundef %arraydecay8) #22, !dbg !3487
  br i1 %call9, label %if.end, label %land.lhs.true10, !dbg !3486

land.lhs.true10:                                  ; preds = %cond.false7, %cond.true6
  br i1 false, label %cond.true11, label %cond.false12, !dbg !3488

cond.true11:                                      ; preds = %land.lhs.true10
  br i1 true, label %if.end, label %if.then, !dbg !3489

cond.false12:                                     ; preds = %land.lhs.true10
  %6 = load ptr, ptr %c, align 8, !dbg !3489
  %7 = getelementptr inbounds %struct.cpuinfo_x86, ptr %6, i32 0, i32 10, !dbg !3489
  %arraydecay13 = getelementptr inbounds [24 x i32], ptr %7, i64 0, i64 0, !dbg !3489
  %call14 = call zeroext i1 @arch_test_bit(i64 noundef 99, ptr noundef %arraydecay13) #22, !dbg !3489
  br i1 %call14, label %if.end, label %if.then, !dbg !3488

if.then:                                          ; preds = %cond.false12, %cond.true11
  store i32 -19, ptr %retval, align 4, !dbg !3490
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3490

if.end:                                           ; preds = %cond.false12, %cond.true11, %cond.false7, %cond.true6, %cond.false2, %cond.true1, %cond.false, %cond.true
  %call15 = call ptr @proc_create(ptr noundef @.str.6, i16 noundef zeroext 420, ptr noundef null, ptr noundef @mtrr_proc_ops) #22, !dbg !3491
  store i32 0, ptr %retval, align 4, !dbg !3492
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3492

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #21, !dbg !3493
  %8 = load i32, ptr %retval, align 4, !dbg !3493
  ret i32 %8, !dbg !3493
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !3494 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3502, metadata !DIExpression()), !dbg !3504
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3503, metadata !DIExpression()), !dbg !3505
  %0 = load i64, ptr %nr.addr, align 8, !dbg !3506
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3507
  br i1 %1, label %cond.true, label %cond.false, !dbg !3507

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !3508
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !3509
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #22, !dbg !3510
  %conv = zext i1 %call to i32, !dbg !3510
  br label %cond.end, !dbg !3507

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !3511
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !3512
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #22, !dbg !3513
  %conv2 = zext i1 %call1 to i32, !dbg !3513
  br label %cond.end, !dbg !3507

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !3507
  %tobool = icmp ne i32 %cond, 0, !dbg !3507
  ret i1 %tobool, !dbg !3514
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3515 dso_local ptr @proc_create(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !3521 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3525, metadata !DIExpression()), !dbg !3527
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3526, metadata !DIExpression()), !dbg !3528
  %0 = load i64, ptr %nr.addr, align 8, !dbg !3529
  %and = and i64 %0, 63, !dbg !3530
  %shl = shl i64 1, %and, !dbg !3531
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !3532
  %2 = load i64, ptr %nr.addr, align 8, !dbg !3533
  %shr = ashr i64 %2, 6, !dbg !3534
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !3532
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !3532
  %and1 = and i64 %shl, %3, !dbg !3535
  %cmp = icmp ne i64 %and1, 0, !dbg !3536
  ret i1 %cmp, !dbg !3537
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !3538 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3540, metadata !DIExpression()), !dbg !3543
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3541, metadata !DIExpression()), !dbg !3544
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #21, !dbg !3545
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !3542, metadata !DIExpression()), !dbg !3546
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !3547
  %1 = load i64, ptr %nr.addr, align 8, !dbg !3548
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #21, !dbg !3549, !srcloc !3550
  %3 = icmp ult i8 %2, 2, !dbg !3549
  call void @llvm.assume(i1 %3), !dbg !3549
  store i8 %2, ptr %oldbit, align 1, !dbg !3549
  %4 = load i8, ptr %oldbit, align 1, !dbg !3551, !range !3552, !noundef !830
  %tobool = trunc i8 %4 to i1, !dbg !3551
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #21, !dbg !3553
  ret i1 %tobool, !dbg !3554
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @mtrr_open(ptr noundef %inode, ptr noundef %file) #0 align 16 !dbg !3555 {
entry:
  %retval = alloca i32, align 4
  %inode.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !3557, metadata !DIExpression()), !dbg !3559
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !3558, metadata !DIExpression()), !dbg !3560
  %0 = load ptr, ptr @mtrr_if, align 8, !dbg !3561
  %tobool = icmp ne ptr %0, null, !dbg !3561
  br i1 %tobool, label %if.end, label %if.then, !dbg !3563

if.then:                                          ; preds = %entry
  store i32 -5, ptr %retval, align 4, !dbg !3564
  br label %return, !dbg !3564

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @mtrr_if, align 8, !dbg !3565
  %get = getelementptr inbounds %struct.mtrr_ops, ptr %1, i32 0, i32 2, !dbg !3567
  %2 = load ptr, ptr %get, align 8, !dbg !3567
  %tobool1 = icmp ne ptr %2, null, !dbg !3565
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !3568

if.then2:                                         ; preds = %if.end
  store i32 -6, ptr %retval, align 4, !dbg !3569
  br label %return, !dbg !3569

if.end3:                                          ; preds = %if.end
  %call = call zeroext i1 @capable(i32 noundef 21) #22, !dbg !3570
  br i1 %call, label %if.end5, label %if.then4, !dbg !3572

if.then4:                                         ; preds = %if.end3
  store i32 -1, ptr %retval, align 4, !dbg !3573
  br label %return, !dbg !3573

if.end5:                                          ; preds = %if.end3
  %3 = load ptr, ptr %file.addr, align 8, !dbg !3574
  %call6 = call i32 @single_open(ptr noundef %3, ptr noundef @mtrr_seq_show, ptr noundef null) #22, !dbg !3575
  store i32 %call6, ptr %retval, align 4, !dbg !3576
  br label %return, !dbg !3576

return:                                           ; preds = %if.end5, %if.then4, %if.then2, %if.then
  %4 = load i32, ptr %retval, align 4, !dbg !3577
  ret i32 %4, !dbg !3577
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @seq_read(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @mtrr_write(ptr noundef %file, ptr noundef %buf, i64 noundef %len, ptr noundef %ppos) #0 align 16 !dbg !3578 {
entry:
  %retval = alloca i64, align 8
  %file.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %ppos.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %err = alloca i32, align 4
  %reg = alloca i64, align 8
  %base = alloca i64, align 8
  %size = alloca i64, align 8
  %ptr = alloca ptr, align 8
  %line = alloca [80 x i8], align 16
  %length = alloca i32, align 4
  %linelen = alloca i64, align 8
  %__UNIQUE_ID___x249 = alloca i64, align 8
  %__UNIQUE_ID___y250 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !3580, metadata !DIExpression()), !dbg !3599
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3581, metadata !DIExpression()), !dbg !3600
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !3582, metadata !DIExpression()), !dbg !3601
  store ptr %ppos, ptr %ppos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ppos.addr, metadata !3583, metadata !DIExpression()), !dbg !3602
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #21, !dbg !3603
  call void @llvm.dbg.declare(metadata ptr %i, metadata !3584, metadata !DIExpression()), !dbg !3604
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #21, !dbg !3603
  call void @llvm.dbg.declare(metadata ptr %err, metadata !3585, metadata !DIExpression()), !dbg !3605
  call void @llvm.lifetime.start.p0(i64 8, ptr %reg) #21, !dbg !3606
  call void @llvm.dbg.declare(metadata ptr %reg, metadata !3586, metadata !DIExpression()), !dbg !3607
  call void @llvm.lifetime.start.p0(i64 8, ptr %base) #21, !dbg !3608
  call void @llvm.dbg.declare(metadata ptr %base, metadata !3587, metadata !DIExpression()), !dbg !3609
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #21, !dbg !3608
  call void @llvm.dbg.declare(metadata ptr %size, metadata !3588, metadata !DIExpression()), !dbg !3610
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptr) #21, !dbg !3611
  call void @llvm.dbg.declare(metadata ptr %ptr, metadata !3589, metadata !DIExpression()), !dbg !3612
  call void @llvm.lifetime.start.p0(i64 80, ptr %line) #21, !dbg !3613
  call void @llvm.dbg.declare(metadata ptr %line, metadata !3590, metadata !DIExpression()), !dbg !3614
  call void @llvm.lifetime.start.p0(i64 4, ptr %length) #21, !dbg !3615
  call void @llvm.dbg.declare(metadata ptr %length, metadata !3594, metadata !DIExpression()), !dbg !3616
  call void @llvm.lifetime.start.p0(i64 8, ptr %linelen) #21, !dbg !3617
  call void @llvm.dbg.declare(metadata ptr %linelen, metadata !3595, metadata !DIExpression()), !dbg !3618
  %arraydecay = getelementptr inbounds [80 x i8], ptr %line, i64 0, i64 0, !dbg !3619
  call void @llvm.memset.p0.i64(ptr align 16 %arraydecay, i8 0, i64 80, i1 false), !dbg !3619
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x249) #21, !dbg !3620
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x249, metadata !3596, metadata !DIExpression()), !dbg !3620
  %0 = load i64, ptr %len.addr, align 8, !dbg !3620
  store i64 %0, ptr %__UNIQUE_ID___x249, align 8, !dbg !3620
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y250) #21, !dbg !3620
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y250, metadata !3598, metadata !DIExpression()), !dbg !3620
  store i64 79, ptr %__UNIQUE_ID___y250, align 8, !dbg !3620
  %1 = load i64, ptr %__UNIQUE_ID___x249, align 8, !dbg !3620
  %2 = load i64, ptr %__UNIQUE_ID___y250, align 8, !dbg !3620
  %cmp = icmp ult i64 %1, %2, !dbg !3620
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !3620

cond.true:                                        ; preds = %entry
  %3 = load i64, ptr %__UNIQUE_ID___x249, align 8, !dbg !3620
  br label %cond.end, !dbg !3620

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %__UNIQUE_ID___y250, align 8, !dbg !3620
  br label %cond.end, !dbg !3620

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %3, %cond.true ], [ %4, %cond.false ], !dbg !3620
  store i64 %cond, ptr %tmp, align 8, !dbg !3620
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y250) #21, !dbg !3621
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x249) #21, !dbg !3621
  %5 = load i64, ptr %tmp, align 8, !dbg !3620
  store i64 %5, ptr %len.addr, align 8, !dbg !3622
  %arraydecay1 = getelementptr inbounds [80 x i8], ptr %line, i64 0, i64 0, !dbg !3623
  %6 = load ptr, ptr %buf.addr, align 8, !dbg !3624
  %7 = load i64, ptr %len.addr, align 8, !dbg !3625
  %call = call i64 @strncpy_from_user(ptr noundef %arraydecay1, ptr noundef %6, i64 noundef %7) #22, !dbg !3626
  %conv = trunc i64 %call to i32, !dbg !3626
  store i32 %conv, ptr %length, align 4, !dbg !3627
  %8 = load i32, ptr %length, align 4, !dbg !3628
  %cmp2 = icmp slt i32 %8, 0, !dbg !3630
  br i1 %cmp2, label %if.then, label %if.end, !dbg !3631

if.then:                                          ; preds = %cond.end
  %9 = load i32, ptr %length, align 4, !dbg !3632
  %conv4 = sext i32 %9 to i64, !dbg !3632
  store i64 %conv4, ptr %retval, align 8, !dbg !3633
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3633

if.end:                                           ; preds = %cond.end
  %arraydecay5 = getelementptr inbounds [80 x i8], ptr %line, i64 0, i64 0, !dbg !3634
  %call6 = call i64 @strlen(ptr noundef %arraydecay5) #22, !dbg !3635
  store i64 %call6, ptr %linelen, align 8, !dbg !3636
  %arraydecay7 = getelementptr inbounds [80 x i8], ptr %line, i64 0, i64 0, !dbg !3637
  %10 = load i64, ptr %linelen, align 8, !dbg !3638
  %add.ptr = getelementptr i8, ptr %arraydecay7, i64 %10, !dbg !3639
  %add.ptr8 = getelementptr i8, ptr %add.ptr, i64 -1, !dbg !3640
  store ptr %add.ptr8, ptr %ptr, align 8, !dbg !3641
  %11 = load i64, ptr %linelen, align 8, !dbg !3642
  %tobool = icmp ne i64 %11, 0, !dbg !3642
  br i1 %tobool, label %land.lhs.true, label %if.end13, !dbg !3644

land.lhs.true:                                    ; preds = %if.end
  %12 = load ptr, ptr %ptr, align 8, !dbg !3645
  %13 = load i8, ptr %12, align 1, !dbg !3646
  %conv9 = zext i8 %13 to i32, !dbg !3646
  %cmp10 = icmp eq i32 %conv9, 10, !dbg !3647
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !3648

if.then12:                                        ; preds = %land.lhs.true
  %14 = load ptr, ptr %ptr, align 8, !dbg !3649
  store i8 0, ptr %14, align 1, !dbg !3650
  br label %if.end13, !dbg !3651

if.end13:                                         ; preds = %if.then12, %land.lhs.true, %if.end
  %arraydecay14 = getelementptr inbounds [80 x i8], ptr %line, i64 0, i64 0, !dbg !3652
  %call15 = call i32 @strncmp(ptr noundef %arraydecay14, ptr noundef @.str.8, i64 noundef 8) #22, !dbg !3654
  %tobool16 = icmp ne i32 %call15, 0, !dbg !3654
  br i1 %tobool16, label %if.end28, label %if.then17, !dbg !3655

if.then17:                                        ; preds = %if.end13
  %arraydecay18 = getelementptr inbounds [80 x i8], ptr %line, i64 0, i64 0, !dbg !3656
  %add.ptr19 = getelementptr i8, ptr %arraydecay18, i64 8, !dbg !3658
  %call20 = call i64 @simple_strtoul(ptr noundef %add.ptr19, ptr noundef %ptr, i32 noundef 0) #22, !dbg !3659
  store i64 %call20, ptr %reg, align 8, !dbg !3660
  %15 = load i64, ptr %reg, align 8, !dbg !3661
  %conv21 = trunc i64 %15 to i32, !dbg !3661
  %call22 = call i32 @mtrr_del_page(i32 noundef %conv21, i64 noundef 0, i64 noundef 0) #22, !dbg !3662
  store i32 %call22, ptr %err, align 4, !dbg !3663
  %16 = load i32, ptr %err, align 4, !dbg !3664
  %cmp23 = icmp slt i32 %16, 0, !dbg !3666
  br i1 %cmp23, label %if.then25, label %if.end27, !dbg !3667

if.then25:                                        ; preds = %if.then17
  %17 = load i32, ptr %err, align 4, !dbg !3668
  %conv26 = sext i32 %17 to i64, !dbg !3668
  store i64 %conv26, ptr %retval, align 8, !dbg !3669
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3669

if.end27:                                         ; preds = %if.then17
  %18 = load i64, ptr %len.addr, align 8, !dbg !3670
  store i64 %18, ptr %retval, align 8, !dbg !3671
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3671

if.end28:                                         ; preds = %if.end13
  %arraydecay29 = getelementptr inbounds [80 x i8], ptr %line, i64 0, i64 0, !dbg !3672
  %call30 = call i32 @strncmp(ptr noundef %arraydecay29, ptr noundef @.str.9, i64 noundef 5) #22, !dbg !3674
  %tobool31 = icmp ne i32 %call30, 0, !dbg !3674
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !3675

if.then32:                                        ; preds = %if.end28
  store i64 -22, ptr %retval, align 8, !dbg !3676
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3676

if.end33:                                         ; preds = %if.end28
  %arraydecay34 = getelementptr inbounds [80 x i8], ptr %line, i64 0, i64 0, !dbg !3677
  %add.ptr35 = getelementptr i8, ptr %arraydecay34, i64 5, !dbg !3678
  %call36 = call i64 @simple_strtoull(ptr noundef %add.ptr35, ptr noundef %ptr, i32 noundef 0) #22, !dbg !3679
  store i64 %call36, ptr %base, align 8, !dbg !3680
  %19 = load ptr, ptr %ptr, align 8, !dbg !3681
  %call37 = call ptr @skip_spaces(ptr noundef %19) #22, !dbg !3682
  store ptr %call37, ptr %ptr, align 8, !dbg !3683
  %20 = load ptr, ptr %ptr, align 8, !dbg !3684
  %call38 = call i32 @strncmp(ptr noundef %20, ptr noundef @.str.10, i64 noundef 5) #22, !dbg !3686
  %tobool39 = icmp ne i32 %call38, 0, !dbg !3686
  br i1 %tobool39, label %if.then40, label %if.end41, !dbg !3687

if.then40:                                        ; preds = %if.end33
  store i64 -22, ptr %retval, align 8, !dbg !3688
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3688

if.end41:                                         ; preds = %if.end33
  %21 = load ptr, ptr %ptr, align 8, !dbg !3689
  %add.ptr42 = getelementptr i8, ptr %21, i64 5, !dbg !3690
  %call43 = call i64 @simple_strtoull(ptr noundef %add.ptr42, ptr noundef %ptr, i32 noundef 0) #22, !dbg !3691
  store i64 %call43, ptr %size, align 8, !dbg !3692
  %22 = load i64, ptr %base, align 8, !dbg !3693
  %and = and i64 %22, 4095, !dbg !3695
  %tobool44 = icmp ne i64 %and, 0, !dbg !3695
  br i1 %tobool44, label %if.then47, label %lor.lhs.false, !dbg !3696

lor.lhs.false:                                    ; preds = %if.end41
  %23 = load i64, ptr %size, align 8, !dbg !3697
  %and45 = and i64 %23, 4095, !dbg !3698
  %tobool46 = icmp ne i64 %and45, 0, !dbg !3698
  br i1 %tobool46, label %if.then47, label %if.end48, !dbg !3699

if.then47:                                        ; preds = %lor.lhs.false, %if.end41
  store i64 -22, ptr %retval, align 8, !dbg !3700
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3700

if.end48:                                         ; preds = %lor.lhs.false
  %24 = load ptr, ptr %ptr, align 8, !dbg !3701
  %call49 = call ptr @skip_spaces(ptr noundef %24) #22, !dbg !3702
  store ptr %call49, ptr %ptr, align 8, !dbg !3703
  %25 = load ptr, ptr %ptr, align 8, !dbg !3704
  %call50 = call i32 @strncmp(ptr noundef %25, ptr noundef @.str.11, i64 noundef 5) #22, !dbg !3706
  %tobool51 = icmp ne i32 %call50, 0, !dbg !3706
  br i1 %tobool51, label %if.then52, label %if.end53, !dbg !3707

if.then52:                                        ; preds = %if.end48
  store i64 -22, ptr %retval, align 8, !dbg !3708
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3708

if.end53:                                         ; preds = %if.end48
  %26 = load ptr, ptr %ptr, align 8, !dbg !3709
  %add.ptr54 = getelementptr i8, ptr %26, i64 5, !dbg !3710
  %call55 = call ptr @skip_spaces(ptr noundef %add.ptr54) #22, !dbg !3711
  store ptr %call55, ptr %ptr, align 8, !dbg !3712
  %27 = load ptr, ptr %ptr, align 8, !dbg !3713
  %call56 = call i32 @match_string(ptr noundef @mtrr_strings, i64 noundef 7, ptr noundef %27) #22, !dbg !3714
  store i32 %call56, ptr %i, align 4, !dbg !3715
  %28 = load i32, ptr %i, align 4, !dbg !3716
  %cmp57 = icmp slt i32 %28, 0, !dbg !3718
  br i1 %cmp57, label %if.then59, label %if.end61, !dbg !3719

if.then59:                                        ; preds = %if.end53
  %29 = load i32, ptr %i, align 4, !dbg !3720
  %conv60 = sext i32 %29 to i64, !dbg !3720
  store i64 %conv60, ptr %retval, align 8, !dbg !3721
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3721

if.end61:                                         ; preds = %if.end53
  %30 = load i64, ptr %base, align 8, !dbg !3722
  %shr = lshr i64 %30, 12, !dbg !3722
  store i64 %shr, ptr %base, align 8, !dbg !3722
  %31 = load i64, ptr %size, align 8, !dbg !3723
  %shr62 = lshr i64 %31, 12, !dbg !3723
  store i64 %shr62, ptr %size, align 8, !dbg !3723
  %32 = load i64, ptr %base, align 8, !dbg !3724
  %33 = load i64, ptr %size, align 8, !dbg !3725
  %34 = load i32, ptr %i, align 4, !dbg !3726
  %call63 = call i32 @mtrr_add_page(i64 noundef %32, i64 noundef %33, i32 noundef %34, i1 noundef zeroext true) #22, !dbg !3727
  store i32 %call63, ptr %err, align 4, !dbg !3728
  %35 = load i32, ptr %err, align 4, !dbg !3729
  %cmp64 = icmp slt i32 %35, 0, !dbg !3731
  br i1 %cmp64, label %if.then66, label %if.end68, !dbg !3732

if.then66:                                        ; preds = %if.end61
  %36 = load i32, ptr %err, align 4, !dbg !3733
  %conv67 = sext i32 %36 to i64, !dbg !3733
  store i64 %conv67, ptr %retval, align 8, !dbg !3734
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3734

if.end68:                                         ; preds = %if.end61
  %37 = load i64, ptr %len.addr, align 8, !dbg !3735
  store i64 %37, ptr %retval, align 8, !dbg !3736
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3736

cleanup:                                          ; preds = %if.end68, %if.then66, %if.then59, %if.then52, %if.then47, %if.then40, %if.then32, %if.end27, %if.then25, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %linelen) #21, !dbg !3737
  call void @llvm.lifetime.end.p0(i64 4, ptr %length) #21, !dbg !3737
  call void @llvm.lifetime.end.p0(i64 80, ptr %line) #21, !dbg !3737
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptr) #21, !dbg !3737
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #21, !dbg !3737
  call void @llvm.lifetime.end.p0(i64 8, ptr %base) #21, !dbg !3737
  call void @llvm.lifetime.end.p0(i64 8, ptr %reg) #21, !dbg !3737
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #21, !dbg !3737
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #21, !dbg !3737
  %38 = load i64, ptr %retval, align 8, !dbg !3737
  ret i64 %38, !dbg !3737
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @mtrr_close(ptr noundef %ino, ptr noundef %file) #0 align 16 !dbg !3738 {
entry:
  %ino.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %fcount = alloca ptr, align 8
  %i = alloca i32, align 4
  %max = alloca i32, align 4
  store ptr %ino, ptr %ino.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ino.addr, metadata !3740, metadata !DIExpression()), !dbg !3745
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !3741, metadata !DIExpression()), !dbg !3746
  call void @llvm.lifetime.start.p0(i64 8, ptr %fcount) #21, !dbg !3747
  call void @llvm.dbg.declare(metadata ptr %fcount, metadata !3742, metadata !DIExpression()), !dbg !3748
  %0 = load ptr, ptr %file.addr, align 8, !dbg !3749
  %private_data = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15, !dbg !3749
  %1 = load ptr, ptr %private_data, align 8, !dbg !3749
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11, !dbg !3749
  %2 = load ptr, ptr %private, align 8, !dbg !3749
  store ptr %2, ptr %fcount, align 8, !dbg !3748
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #21, !dbg !3750
  call void @llvm.dbg.declare(metadata ptr %i, metadata !3743, metadata !DIExpression()), !dbg !3751
  call void @llvm.lifetime.start.p0(i64 4, ptr %max) #21, !dbg !3750
  call void @llvm.dbg.declare(metadata ptr %max, metadata !3744, metadata !DIExpression()), !dbg !3752
  %3 = load ptr, ptr %fcount, align 8, !dbg !3753
  %cmp = icmp ne ptr %3, null, !dbg !3755
  br i1 %cmp, label %if.then, label %if.end, !dbg !3756

if.then:                                          ; preds = %entry
  %4 = load i32, ptr @num_var_ranges, align 4, !dbg !3757
  store i32 %4, ptr %max, align 4, !dbg !3759
  store i32 0, ptr %i, align 4, !dbg !3760
  br label %for.cond, !dbg !3762

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, ptr %i, align 4, !dbg !3763
  %6 = load i32, ptr %max, align 4, !dbg !3765
  %cmp1 = icmp slt i32 %5, %6, !dbg !3766
  br i1 %cmp1, label %for.body, label %for.end, !dbg !3767

for.body:                                         ; preds = %for.cond
  br label %while.cond, !dbg !3768

while.cond:                                       ; preds = %while.body, %for.body
  %7 = load ptr, ptr %fcount, align 8, !dbg !3770
  %8 = load i32, ptr %i, align 4, !dbg !3771
  %idxprom = sext i32 %8 to i64, !dbg !3770
  %arrayidx = getelementptr i32, ptr %7, i64 %idxprom, !dbg !3770
  %9 = load i32, ptr %arrayidx, align 4, !dbg !3770
  %cmp2 = icmp ugt i32 %9, 0, !dbg !3772
  br i1 %cmp2, label %while.body, label %while.end, !dbg !3768

while.body:                                       ; preds = %while.cond
  %10 = load i32, ptr %i, align 4, !dbg !3773
  %call = call i32 @mtrr_del(i32 noundef %10, i64 noundef 0, i64 noundef 0) #22, !dbg !3775
  %11 = load ptr, ptr %fcount, align 8, !dbg !3776
  %12 = load i32, ptr %i, align 4, !dbg !3777
  %idxprom3 = sext i32 %12 to i64, !dbg !3776
  %arrayidx4 = getelementptr i32, ptr %11, i64 %idxprom3, !dbg !3776
  %13 = load i32, ptr %arrayidx4, align 4, !dbg !3778
  %dec = add i32 %13, -1, !dbg !3778
  store i32 %dec, ptr %arrayidx4, align 4, !dbg !3778
  br label %while.cond, !dbg !3768, !llvm.loop !3779

while.end:                                        ; preds = %while.cond
  br label %for.inc, !dbg !3783

for.inc:                                          ; preds = %while.end
  %14 = load i32, ptr %i, align 4, !dbg !3784
  %inc = add i32 %14, 1, !dbg !3784
  store i32 %inc, ptr %i, align 4, !dbg !3784
  br label %for.cond, !dbg !3785, !llvm.loop !3786

for.end:                                          ; preds = %for.cond
  %15 = load ptr, ptr %fcount, align 8, !dbg !3788
  call void @kfree(ptr noundef %15) #22, !dbg !3789
  %16 = load ptr, ptr %file.addr, align 8, !dbg !3790
  %private_data5 = getelementptr inbounds %struct.file, ptr %16, i32 0, i32 15, !dbg !3790
  %17 = load ptr, ptr %private_data5, align 8, !dbg !3790
  %private6 = getelementptr inbounds %struct.seq_file, ptr %17, i32 0, i32 11, !dbg !3790
  store ptr null, ptr %private6, align 8, !dbg !3791
  br label %if.end, !dbg !3792

if.end:                                           ; preds = %for.end, %entry
  %18 = load ptr, ptr %ino.addr, align 8, !dbg !3793
  %19 = load ptr, ptr %file.addr, align 8, !dbg !3794
  %call7 = call i32 @single_release(ptr noundef %18, ptr noundef %19) #22, !dbg !3795
  call void @llvm.lifetime.end.p0(i64 4, ptr %max) #21, !dbg !3796
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #21, !dbg !3796
  call void @llvm.lifetime.end.p0(i64 8, ptr %fcount) #21, !dbg !3796
  ret i32 %call7, !dbg !3797
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @mtrr_ioctl(ptr noundef %file, i32 noundef %cmd, i64 noundef %__arg) #0 align 16 !dbg !3798 {
entry:
  %retval = alloca i64, align 8
  %file.addr = alloca ptr, align 8
  %cmd.addr = alloca i32, align 4
  %__arg.addr = alloca i64, align 8
  %err = alloca i32, align 4
  %type = alloca i8, align 1
  %base = alloca i64, align 8
  %size = alloca i64, align 8
  %sentry = alloca %struct.mtrr_sentry, align 8
  %gentry = alloca %struct.mtrr_gentry, align 8
  %arg = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %s32 = alloca ptr, align 8
  %tmp = alloca i64, align 8
  %__ret_gu = alloca i32, align 4
  %__val_gu = alloca i32, align 4
  %__tmp = alloca i64, align 8
  %tmp10 = alloca i32, align 4
  %tmp14 = alloca i64, align 8
  %tmp17 = alloca i64, align 8
  %__ret_gu18 = alloca i32, align 4
  %__val_gu19 = alloca i32, align 4
  %__tmp24 = alloca i64, align 8
  %tmp26 = alloca i32, align 4
  %tmp29 = alloca i64, align 8
  %tmp34 = alloca i64, align 8
  %__ret_gu35 = alloca i32, align 4
  %__val_gu36 = alloca i32, align 4
  %__tmp41 = alloca i64, align 8
  %tmp43 = alloca i32, align 4
  %tmp46 = alloca i64, align 8
  %g32 = alloca ptr, align 8
  %tmp57 = alloca i64, align 8
  %__ret_gu58 = alloca i32, align 4
  %__val_gu59 = alloca i32, align 4
  %__tmp63 = alloca i64, align 8
  %tmp65 = alloca i32, align 4
  %tmp68 = alloca i64, align 8
  %tmp72 = alloca i64, align 8
  %__ret_gu73 = alloca i32, align 4
  %__val_gu74 = alloca i32, align 4
  %__tmp79 = alloca i64, align 8
  %tmp81 = alloca i32, align 4
  %tmp85 = alloca i64, align 8
  %tmp91 = alloca i64, align 8
  %__ret_gu92 = alloca i32, align 4
  %__val_gu93 = alloca i32, align 4
  %__tmp98 = alloca i64, align 8
  %tmp100 = alloca i32, align 4
  %tmp103 = alloca i64, align 8
  %tmp109 = alloca i64, align 8
  %__ret_gu110 = alloca i32, align 4
  %__val_gu111 = alloca i32, align 4
  %__tmp116 = alloca i64, align 8
  %tmp118 = alloca i32, align 4
  %tmp121 = alloca i64, align 8
  %g32232 = alloca ptr, align 8
  %tmp233 = alloca i64, align 8
  %__ret_pu = alloca i32, align 4
  %__ptr_pu = alloca ptr, align 8
  %__val_pu = alloca i32, align 4
  %__x = alloca i32, align 4
  %__ptr = alloca ptr, align 8
  %tmp239 = alloca i64, align 8
  %tmp243 = alloca i64, align 8
  %__ret_pu244 = alloca i32, align 4
  %__ptr_pu245 = alloca ptr, align 8
  %__val_pu246 = alloca i32, align 4
  %__x247 = alloca i32, align 4
  %__ptr249 = alloca ptr, align 8
  %tmp253 = alloca i64, align 8
  %tmp259 = alloca i64, align 8
  %__ret_pu260 = alloca i32, align 4
  %__ptr_pu261 = alloca ptr, align 8
  %__val_pu262 = alloca i32, align 4
  %__x263 = alloca i32, align 4
  %__ptr265 = alloca ptr, align 8
  %tmp269 = alloca i64, align 8
  %tmp275 = alloca i64, align 8
  %__ret_pu276 = alloca i32, align 4
  %__ptr_pu277 = alloca ptr, align 8
  %__val_pu278 = alloca i32, align 4
  %__x279 = alloca i32, align 4
  %__ptr281 = alloca ptr, align 8
  %tmp285 = alloca i64, align 8
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !3800, metadata !DIExpression()), !dbg !3904
  store i32 %cmd, ptr %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !3801, metadata !DIExpression()), !dbg !3905
  store i64 %__arg, ptr %__arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__arg.addr, metadata !3802, metadata !DIExpression()), !dbg !3906
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #21, !dbg !3907
  call void @llvm.dbg.declare(metadata ptr %err, metadata !3803, metadata !DIExpression()), !dbg !3908
  store i32 0, ptr %err, align 4, !dbg !3908
  call void @llvm.lifetime.start.p0(i64 1, ptr %type) #21, !dbg !3909
  call void @llvm.dbg.declare(metadata ptr %type, metadata !3804, metadata !DIExpression()), !dbg !3910
  call void @llvm.lifetime.start.p0(i64 8, ptr %base) #21, !dbg !3911
  call void @llvm.dbg.declare(metadata ptr %base, metadata !3807, metadata !DIExpression()), !dbg !3912
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #21, !dbg !3913
  call void @llvm.dbg.declare(metadata ptr %size, metadata !3808, metadata !DIExpression()), !dbg !3914
  call void @llvm.lifetime.start.p0(i64 16, ptr %sentry) #21, !dbg !3915
  call void @llvm.dbg.declare(metadata ptr %sentry, metadata !3809, metadata !DIExpression()), !dbg !3916
  call void @llvm.lifetime.start.p0(i64 24, ptr %gentry) #21, !dbg !3917
  call void @llvm.dbg.declare(metadata ptr %gentry, metadata !3815, metadata !DIExpression()), !dbg !3918
  call void @llvm.lifetime.start.p0(i64 8, ptr %arg) #21, !dbg !3919
  call void @llvm.dbg.declare(metadata ptr %arg, metadata !3823, metadata !DIExpression()), !dbg !3920
  %0 = load i64, ptr %__arg.addr, align 8, !dbg !3921
  %1 = inttoptr i64 %0 to ptr, !dbg !3922
  store ptr %1, ptr %arg, align 8, !dbg !3920
  call void @llvm.memset.p0.i64(ptr align 8 %gentry, i8 0, i64 24, i1 false), !dbg !3923
  %2 = load i32, ptr %cmd.addr, align 4, !dbg !3924
  switch i32 %2, label %sw.epilog [
    i32 1074810112, label %sw.bb
    i32 1074810113, label %sw.bb
    i32 1074810114, label %sw.bb
    i32 1074810116, label %sw.bb
    i32 1074810117, label %sw.bb
    i32 1074810118, label %sw.bb
    i32 1074810119, label %sw.bb
    i32 1074810121, label %sw.bb
    i32 -1072149245, label %sw.bb1
    i32 -1072149240, label %sw.bb1
    i32 1074547968, label %sw.bb6
    i32 1074547969, label %sw.bb6
    i32 1074547970, label %sw.bb6
    i32 1074547972, label %sw.bb6
    i32 1074547973, label %sw.bb6
    i32 1074547974, label %sw.bb6
    i32 1074547975, label %sw.bb6
    i32 1074547977, label %sw.bb6
    i32 -1072673533, label %sw.bb56
    i32 -1072673528, label %sw.bb56
  ], !dbg !3925

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %3 = load ptr, ptr %arg, align 8, !dbg !3926
  %call = call i64 @copy_from_user(ptr noundef %sentry, ptr noundef %3, i64 noundef 16) #22, !dbg !3928
  %tobool = icmp ne i64 %call, 0, !dbg !3928
  br i1 %tobool, label %if.then, label %if.end, !dbg !3929

if.then:                                          ; preds = %sw.bb
  store i64 -14, ptr %retval, align 8, !dbg !3930
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup294, !dbg !3930

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog, !dbg !3931

sw.bb1:                                           ; preds = %entry, %entry
  %4 = load ptr, ptr %arg, align 8, !dbg !3932
  %call2 = call i64 @copy_from_user(ptr noundef %gentry, ptr noundef %4, i64 noundef 24) #22, !dbg !3934
  %tobool3 = icmp ne i64 %call2, 0, !dbg !3934
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !3935

if.then4:                                         ; preds = %sw.bb1
  store i64 -14, ptr %retval, align 8, !dbg !3936
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup294, !dbg !3936

if.end5:                                          ; preds = %sw.bb1
  br label %sw.epilog, !dbg !3937

sw.bb6:                                           ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %s32) #21, !dbg !3938
  call void @llvm.dbg.declare(metadata ptr %s32, metadata !3824, metadata !DIExpression()), !dbg !3939
  %5 = load i64, ptr %__arg.addr, align 8, !dbg !3940
  %6 = inttoptr i64 %5 to ptr, !dbg !3941
  store ptr %6, ptr %s32, align 8, !dbg !3942
  call void @might_fault() #22, !dbg !3943
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_gu) #21, !dbg !3944
  call void @llvm.dbg.declare(metadata ptr %__ret_gu, metadata !3827, metadata !DIExpression()), !dbg !3944
  call void @llvm.lifetime.start.p0(i64 4, ptr %__val_gu) #21, !dbg !3944
  call void @llvm.dbg.declare(metadata ptr %__val_gu, metadata !3830, metadata !DIExpression()), !dbg !3944
  %7 = call i64 @llvm.read_register.i64(metadata !3392), !dbg !3944
  %8 = load ptr, ptr %s32, align 8, !dbg !3944
  %base7 = getelementptr inbounds %struct.mtrr_sentry32, ptr %8, i32 0, i32 0, !dbg !3944
  %9 = call { ptr, i32, i64 } asm sideeffect "call __get_user_${4:c}", "={ax},={rdx},={rsp},0,i,{rsp},~{dirflag},~{fpsr},~{flags}"(ptr %base7, i64 4, i64 %7) #21, !dbg !3944, !srcloc !3945
  %asmresult = extractvalue { ptr, i32, i64 } %9, 0, !dbg !3944
  %asmresult8 = extractvalue { ptr, i32, i64 } %9, 1, !dbg !3944
  %asmresult9 = extractvalue { ptr, i32, i64 } %9, 2, !dbg !3944
  %10 = ptrtoint ptr %asmresult to i64, !dbg !3944
  %11 = trunc i64 %10 to i32, !dbg !3944
  store i32 %11, ptr %__ret_gu, align 4, !dbg !3944
  store i32 %asmresult8, ptr %__val_gu, align 4, !dbg !3944
  call void @llvm.write_register.i64(metadata !3392, i64 %asmresult9), !dbg !3944
  call void @llvm.lifetime.start.p0(i64 8, ptr %__tmp) #21, !dbg !3946
  call void @llvm.dbg.declare(metadata ptr %__tmp, metadata !3831, metadata !DIExpression()), !dbg !3946
  %12 = load i32, ptr %__val_gu, align 4, !dbg !3946
  %conv = zext i32 %12 to i64, !dbg !3946
  store i64 %conv, ptr %__tmp, align 8, !dbg !3946
  call void @kmsan_unpoison_memory(ptr noundef %__tmp, i64 noundef 8) #22, !dbg !3946
  %13 = load i64, ptr %__tmp, align 8, !dbg !3946
  %conv11 = trunc i64 %13 to i32, !dbg !3946
  store i32 %conv11, ptr %__val_gu, align 4, !dbg !3946
  store i32 %conv11, ptr %tmp10, align 4, !dbg !3946
  call void @llvm.lifetime.end.p0(i64 8, ptr %__tmp) #21, !dbg !3944
  %14 = load i32, ptr %tmp10, align 4, !dbg !3946
  %15 = load i32, ptr %__val_gu, align 4, !dbg !3944
  %conv12 = zext i32 %15 to i64, !dbg !3944
  %base13 = getelementptr inbounds %struct.mtrr_sentry, ptr %sentry, i32 0, i32 0, !dbg !3944
  store i64 %conv12, ptr %base13, align 8, !dbg !3944
  %16 = load i32, ptr %__ret_gu, align 4, !dbg !3944
  %conv15 = sext i32 %16 to i64, !dbg !3944
  %expval = call i64 @llvm.expect.i64(i64 %conv15, i64 0), !dbg !3944
  store i64 %expval, ptr %tmp14, align 8, !dbg !3944
  call void @llvm.lifetime.end.p0(i64 4, ptr %__val_gu) #21, !dbg !3943
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_gu) #21, !dbg !3943
  %17 = load i64, ptr %tmp14, align 8, !dbg !3944
  store i64 %17, ptr %tmp, align 8, !dbg !3943
  %18 = load i64, ptr %tmp, align 8, !dbg !3943
  %conv16 = trunc i64 %18 to i32, !dbg !3947
  store i32 %conv16, ptr %err, align 4, !dbg !3948
  call void @might_fault() #22, !dbg !3949
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_gu18) #21, !dbg !3950
  call void @llvm.dbg.declare(metadata ptr %__ret_gu18, metadata !3833, metadata !DIExpression()), !dbg !3950
  call void @llvm.lifetime.start.p0(i64 4, ptr %__val_gu19) #21, !dbg !3950
  call void @llvm.dbg.declare(metadata ptr %__val_gu19, metadata !3836, metadata !DIExpression()), !dbg !3950
  %19 = call i64 @llvm.read_register.i64(metadata !3392), !dbg !3950
  %20 = load ptr, ptr %s32, align 8, !dbg !3950
  %size20 = getelementptr inbounds %struct.mtrr_sentry32, ptr %20, i32 0, i32 1, !dbg !3950
  %21 = call { ptr, i32, i64 } asm sideeffect "call __get_user_${4:c}", "={ax},={rdx},={rsp},0,i,{rsp},~{dirflag},~{fpsr},~{flags}"(ptr %size20, i64 4, i64 %19) #21, !dbg !3950, !srcloc !3951
  %asmresult21 = extractvalue { ptr, i32, i64 } %21, 0, !dbg !3950
  %asmresult22 = extractvalue { ptr, i32, i64 } %21, 1, !dbg !3950
  %asmresult23 = extractvalue { ptr, i32, i64 } %21, 2, !dbg !3950
  %22 = ptrtoint ptr %asmresult21 to i64, !dbg !3950
  %23 = trunc i64 %22 to i32, !dbg !3950
  store i32 %23, ptr %__ret_gu18, align 4, !dbg !3950
  store i32 %asmresult22, ptr %__val_gu19, align 4, !dbg !3950
  call void @llvm.write_register.i64(metadata !3392, i64 %asmresult23), !dbg !3950
  call void @llvm.lifetime.start.p0(i64 8, ptr %__tmp24) #21, !dbg !3952
  call void @llvm.dbg.declare(metadata ptr %__tmp24, metadata !3837, metadata !DIExpression()), !dbg !3952
  %24 = load i32, ptr %__val_gu19, align 4, !dbg !3952
  %conv25 = zext i32 %24 to i64, !dbg !3952
  store i64 %conv25, ptr %__tmp24, align 8, !dbg !3952
  call void @kmsan_unpoison_memory(ptr noundef %__tmp24, i64 noundef 8) #22, !dbg !3952
  %25 = load i64, ptr %__tmp24, align 8, !dbg !3952
  %conv27 = trunc i64 %25 to i32, !dbg !3952
  store i32 %conv27, ptr %__val_gu19, align 4, !dbg !3952
  store i32 %conv27, ptr %tmp26, align 4, !dbg !3952
  call void @llvm.lifetime.end.p0(i64 8, ptr %__tmp24) #21, !dbg !3950
  %26 = load i32, ptr %tmp26, align 4, !dbg !3952
  %27 = load i32, ptr %__val_gu19, align 4, !dbg !3950
  %size28 = getelementptr inbounds %struct.mtrr_sentry, ptr %sentry, i32 0, i32 1, !dbg !3950
  store i32 %27, ptr %size28, align 8, !dbg !3950
  %28 = load i32, ptr %__ret_gu18, align 4, !dbg !3950
  %conv30 = sext i32 %28 to i64, !dbg !3950
  %expval31 = call i64 @llvm.expect.i64(i64 %conv30, i64 0), !dbg !3950
  store i64 %expval31, ptr %tmp29, align 8, !dbg !3950
  call void @llvm.lifetime.end.p0(i64 4, ptr %__val_gu19) #21, !dbg !3949
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_gu18) #21, !dbg !3949
  %29 = load i64, ptr %tmp29, align 8, !dbg !3950
  store i64 %29, ptr %tmp17, align 8, !dbg !3949
  %30 = load i64, ptr %tmp17, align 8, !dbg !3949
  %31 = load i32, ptr %err, align 4, !dbg !3953
  %conv32 = sext i32 %31 to i64, !dbg !3953
  %or = or i64 %conv32, %30, !dbg !3953
  %conv33 = trunc i64 %or to i32, !dbg !3953
  store i32 %conv33, ptr %err, align 4, !dbg !3953
  call void @might_fault() #22, !dbg !3954
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_gu35) #21, !dbg !3955
  call void @llvm.dbg.declare(metadata ptr %__ret_gu35, metadata !3839, metadata !DIExpression()), !dbg !3955
  call void @llvm.lifetime.start.p0(i64 4, ptr %__val_gu36) #21, !dbg !3955
  call void @llvm.dbg.declare(metadata ptr %__val_gu36, metadata !3842, metadata !DIExpression()), !dbg !3955
  %32 = call i64 @llvm.read_register.i64(metadata !3392), !dbg !3955
  %33 = load ptr, ptr %s32, align 8, !dbg !3955
  %type37 = getelementptr inbounds %struct.mtrr_sentry32, ptr %33, i32 0, i32 2, !dbg !3955
  %34 = call { ptr, i32, i64 } asm sideeffect "call __get_user_${4:c}", "={ax},={rdx},={rsp},0,i,{rsp},~{dirflag},~{fpsr},~{flags}"(ptr %type37, i64 4, i64 %32) #21, !dbg !3955, !srcloc !3956
  %asmresult38 = extractvalue { ptr, i32, i64 } %34, 0, !dbg !3955
  %asmresult39 = extractvalue { ptr, i32, i64 } %34, 1, !dbg !3955
  %asmresult40 = extractvalue { ptr, i32, i64 } %34, 2, !dbg !3955
  %35 = ptrtoint ptr %asmresult38 to i64, !dbg !3955
  %36 = trunc i64 %35 to i32, !dbg !3955
  store i32 %36, ptr %__ret_gu35, align 4, !dbg !3955
  store i32 %asmresult39, ptr %__val_gu36, align 4, !dbg !3955
  call void @llvm.write_register.i64(metadata !3392, i64 %asmresult40), !dbg !3955
  call void @llvm.lifetime.start.p0(i64 8, ptr %__tmp41) #21, !dbg !3957
  call void @llvm.dbg.declare(metadata ptr %__tmp41, metadata !3843, metadata !DIExpression()), !dbg !3957
  %37 = load i32, ptr %__val_gu36, align 4, !dbg !3957
  %conv42 = zext i32 %37 to i64, !dbg !3957
  store i64 %conv42, ptr %__tmp41, align 8, !dbg !3957
  call void @kmsan_unpoison_memory(ptr noundef %__tmp41, i64 noundef 8) #22, !dbg !3957
  %38 = load i64, ptr %__tmp41, align 8, !dbg !3957
  %conv44 = trunc i64 %38 to i32, !dbg !3957
  store i32 %conv44, ptr %__val_gu36, align 4, !dbg !3957
  store i32 %conv44, ptr %tmp43, align 4, !dbg !3957
  call void @llvm.lifetime.end.p0(i64 8, ptr %__tmp41) #21, !dbg !3955
  %39 = load i32, ptr %tmp43, align 4, !dbg !3957
  %40 = load i32, ptr %__val_gu36, align 4, !dbg !3955
  %type45 = getelementptr inbounds %struct.mtrr_sentry, ptr %sentry, i32 0, i32 2, !dbg !3955
  store i32 %40, ptr %type45, align 4, !dbg !3955
  %41 = load i32, ptr %__ret_gu35, align 4, !dbg !3955
  %conv47 = sext i32 %41 to i64, !dbg !3955
  %expval48 = call i64 @llvm.expect.i64(i64 %conv47, i64 0), !dbg !3955
  store i64 %expval48, ptr %tmp46, align 8, !dbg !3955
  call void @llvm.lifetime.end.p0(i64 4, ptr %__val_gu36) #21, !dbg !3954
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_gu35) #21, !dbg !3954
  %42 = load i64, ptr %tmp46, align 8, !dbg !3955
  store i64 %42, ptr %tmp34, align 8, !dbg !3954
  %43 = load i64, ptr %tmp34, align 8, !dbg !3954
  %44 = load i32, ptr %err, align 4, !dbg !3958
  %conv49 = sext i32 %44 to i64, !dbg !3958
  %or50 = or i64 %conv49, %43, !dbg !3958
  %conv51 = trunc i64 %or50 to i32, !dbg !3958
  store i32 %conv51, ptr %err, align 4, !dbg !3958
  %45 = load i32, ptr %err, align 4, !dbg !3959
  %tobool52 = icmp ne i32 %45, 0, !dbg !3959
  br i1 %tobool52, label %if.then53, label %if.end55, !dbg !3961

if.then53:                                        ; preds = %sw.bb6
  %46 = load i32, ptr %err, align 4, !dbg !3962
  %conv54 = sext i32 %46 to i64, !dbg !3962
  store i64 %conv54, ptr %retval, align 8, !dbg !3963
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3963

if.end55:                                         ; preds = %sw.bb6
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3964

cleanup:                                          ; preds = %if.end55, %if.then53
  call void @llvm.lifetime.end.p0(i64 8, ptr %s32) #21, !dbg !3965
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup294 [
    i32 2, label %sw.epilog
  ]

sw.bb56:                                          ; preds = %entry, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %g32) #21, !dbg !3966
  call void @llvm.dbg.declare(metadata ptr %g32, metadata !3845, metadata !DIExpression()), !dbg !3967
  %47 = load i64, ptr %__arg.addr, align 8, !dbg !3968
  %48 = inttoptr i64 %47 to ptr, !dbg !3969
  store ptr %48, ptr %g32, align 8, !dbg !3970
  call void @might_fault() #22, !dbg !3971
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_gu58) #21, !dbg !3972
  call void @llvm.dbg.declare(metadata ptr %__ret_gu58, metadata !3847, metadata !DIExpression()), !dbg !3972
  call void @llvm.lifetime.start.p0(i64 4, ptr %__val_gu59) #21, !dbg !3972
  call void @llvm.dbg.declare(metadata ptr %__val_gu59, metadata !3850, metadata !DIExpression()), !dbg !3972
  %49 = call i64 @llvm.read_register.i64(metadata !3392), !dbg !3972
  %50 = load ptr, ptr %g32, align 8, !dbg !3972
  %regnum = getelementptr inbounds %struct.mtrr_gentry32, ptr %50, i32 0, i32 0, !dbg !3972
  %51 = call { ptr, i32, i64 } asm sideeffect "call __get_user_${4:c}", "={ax},={rdx},={rsp},0,i,{rsp},~{dirflag},~{fpsr},~{flags}"(ptr %regnum, i64 4, i64 %49) #21, !dbg !3972, !srcloc !3973
  %asmresult60 = extractvalue { ptr, i32, i64 } %51, 0, !dbg !3972
  %asmresult61 = extractvalue { ptr, i32, i64 } %51, 1, !dbg !3972
  %asmresult62 = extractvalue { ptr, i32, i64 } %51, 2, !dbg !3972
  %52 = ptrtoint ptr %asmresult60 to i64, !dbg !3972
  %53 = trunc i64 %52 to i32, !dbg !3972
  store i32 %53, ptr %__ret_gu58, align 4, !dbg !3972
  store i32 %asmresult61, ptr %__val_gu59, align 4, !dbg !3972
  call void @llvm.write_register.i64(metadata !3392, i64 %asmresult62), !dbg !3972
  call void @llvm.lifetime.start.p0(i64 8, ptr %__tmp63) #21, !dbg !3974
  call void @llvm.dbg.declare(metadata ptr %__tmp63, metadata !3851, metadata !DIExpression()), !dbg !3974
  %54 = load i32, ptr %__val_gu59, align 4, !dbg !3974
  %conv64 = zext i32 %54 to i64, !dbg !3974
  store i64 %conv64, ptr %__tmp63, align 8, !dbg !3974
  call void @kmsan_unpoison_memory(ptr noundef %__tmp63, i64 noundef 8) #22, !dbg !3974
  %55 = load i64, ptr %__tmp63, align 8, !dbg !3974
  %conv66 = trunc i64 %55 to i32, !dbg !3974
  store i32 %conv66, ptr %__val_gu59, align 4, !dbg !3974
  store i32 %conv66, ptr %tmp65, align 4, !dbg !3974
  call void @llvm.lifetime.end.p0(i64 8, ptr %__tmp63) #21, !dbg !3972
  %56 = load i32, ptr %tmp65, align 4, !dbg !3974
  %57 = load i32, ptr %__val_gu59, align 4, !dbg !3972
  %regnum67 = getelementptr inbounds %struct.mtrr_gentry, ptr %gentry, i32 0, i32 2, !dbg !3972
  store i32 %57, ptr %regnum67, align 4, !dbg !3972
  %58 = load i32, ptr %__ret_gu58, align 4, !dbg !3972
  %conv69 = sext i32 %58 to i64, !dbg !3972
  %expval70 = call i64 @llvm.expect.i64(i64 %conv69, i64 0), !dbg !3972
  store i64 %expval70, ptr %tmp68, align 8, !dbg !3972
  call void @llvm.lifetime.end.p0(i64 4, ptr %__val_gu59) #21, !dbg !3971
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_gu58) #21, !dbg !3971
  %59 = load i64, ptr %tmp68, align 8, !dbg !3972
  store i64 %59, ptr %tmp57, align 8, !dbg !3971
  %60 = load i64, ptr %tmp57, align 8, !dbg !3971
  %conv71 = trunc i64 %60 to i32, !dbg !3975
  store i32 %conv71, ptr %err, align 4, !dbg !3976
  call void @might_fault() #22, !dbg !3977
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_gu73) #21, !dbg !3978
  call void @llvm.dbg.declare(metadata ptr %__ret_gu73, metadata !3853, metadata !DIExpression()), !dbg !3978
  call void @llvm.lifetime.start.p0(i64 4, ptr %__val_gu74) #21, !dbg !3978
  call void @llvm.dbg.declare(metadata ptr %__val_gu74, metadata !3856, metadata !DIExpression()), !dbg !3978
  %61 = call i64 @llvm.read_register.i64(metadata !3392), !dbg !3978
  %62 = load ptr, ptr %g32, align 8, !dbg !3978
  %base75 = getelementptr inbounds %struct.mtrr_gentry32, ptr %62, i32 0, i32 1, !dbg !3978
  %63 = call { ptr, i32, i64 } asm sideeffect "call __get_user_${4:c}", "={ax},={rdx},={rsp},0,i,{rsp},~{dirflag},~{fpsr},~{flags}"(ptr %base75, i64 4, i64 %61) #21, !dbg !3978, !srcloc !3979
  %asmresult76 = extractvalue { ptr, i32, i64 } %63, 0, !dbg !3978
  %asmresult77 = extractvalue { ptr, i32, i64 } %63, 1, !dbg !3978
  %asmresult78 = extractvalue { ptr, i32, i64 } %63, 2, !dbg !3978
  %64 = ptrtoint ptr %asmresult76 to i64, !dbg !3978
  %65 = trunc i64 %64 to i32, !dbg !3978
  store i32 %65, ptr %__ret_gu73, align 4, !dbg !3978
  store i32 %asmresult77, ptr %__val_gu74, align 4, !dbg !3978
  call void @llvm.write_register.i64(metadata !3392, i64 %asmresult78), !dbg !3978
  call void @llvm.lifetime.start.p0(i64 8, ptr %__tmp79) #21, !dbg !3980
  call void @llvm.dbg.declare(metadata ptr %__tmp79, metadata !3857, metadata !DIExpression()), !dbg !3980
  %66 = load i32, ptr %__val_gu74, align 4, !dbg !3980
  %conv80 = zext i32 %66 to i64, !dbg !3980
  store i64 %conv80, ptr %__tmp79, align 8, !dbg !3980
  call void @kmsan_unpoison_memory(ptr noundef %__tmp79, i64 noundef 8) #22, !dbg !3980
  %67 = load i64, ptr %__tmp79, align 8, !dbg !3980
  %conv82 = trunc i64 %67 to i32, !dbg !3980
  store i32 %conv82, ptr %__val_gu74, align 4, !dbg !3980
  store i32 %conv82, ptr %tmp81, align 4, !dbg !3980
  call void @llvm.lifetime.end.p0(i64 8, ptr %__tmp79) #21, !dbg !3978
  %68 = load i32, ptr %tmp81, align 4, !dbg !3980
  %69 = load i32, ptr %__val_gu74, align 4, !dbg !3978
  %conv83 = zext i32 %69 to i64, !dbg !3978
  %base84 = getelementptr inbounds %struct.mtrr_gentry, ptr %gentry, i32 0, i32 0, !dbg !3978
  store i64 %conv83, ptr %base84, align 8, !dbg !3978
  %70 = load i32, ptr %__ret_gu73, align 4, !dbg !3978
  %conv86 = sext i32 %70 to i64, !dbg !3978
  %expval87 = call i64 @llvm.expect.i64(i64 %conv86, i64 0), !dbg !3978
  store i64 %expval87, ptr %tmp85, align 8, !dbg !3978
  call void @llvm.lifetime.end.p0(i64 4, ptr %__val_gu74) #21, !dbg !3977
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_gu73) #21, !dbg !3977
  %71 = load i64, ptr %tmp85, align 8, !dbg !3978
  store i64 %71, ptr %tmp72, align 8, !dbg !3977
  %72 = load i64, ptr %tmp72, align 8, !dbg !3977
  %73 = load i32, ptr %err, align 4, !dbg !3981
  %conv88 = sext i32 %73 to i64, !dbg !3981
  %or89 = or i64 %conv88, %72, !dbg !3981
  %conv90 = trunc i64 %or89 to i32, !dbg !3981
  store i32 %conv90, ptr %err, align 4, !dbg !3981
  call void @might_fault() #22, !dbg !3982
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_gu92) #21, !dbg !3983
  call void @llvm.dbg.declare(metadata ptr %__ret_gu92, metadata !3859, metadata !DIExpression()), !dbg !3983
  call void @llvm.lifetime.start.p0(i64 4, ptr %__val_gu93) #21, !dbg !3983
  call void @llvm.dbg.declare(metadata ptr %__val_gu93, metadata !3862, metadata !DIExpression()), !dbg !3983
  %74 = call i64 @llvm.read_register.i64(metadata !3392), !dbg !3983
  %75 = load ptr, ptr %g32, align 8, !dbg !3983
  %size94 = getelementptr inbounds %struct.mtrr_gentry32, ptr %75, i32 0, i32 2, !dbg !3983
  %76 = call { ptr, i32, i64 } asm sideeffect "call __get_user_${4:c}", "={ax},={rdx},={rsp},0,i,{rsp},~{dirflag},~{fpsr},~{flags}"(ptr %size94, i64 4, i64 %74) #21, !dbg !3983, !srcloc !3984
  %asmresult95 = extractvalue { ptr, i32, i64 } %76, 0, !dbg !3983
  %asmresult96 = extractvalue { ptr, i32, i64 } %76, 1, !dbg !3983
  %asmresult97 = extractvalue { ptr, i32, i64 } %76, 2, !dbg !3983
  %77 = ptrtoint ptr %asmresult95 to i64, !dbg !3983
  %78 = trunc i64 %77 to i32, !dbg !3983
  store i32 %78, ptr %__ret_gu92, align 4, !dbg !3983
  store i32 %asmresult96, ptr %__val_gu93, align 4, !dbg !3983
  call void @llvm.write_register.i64(metadata !3392, i64 %asmresult97), !dbg !3983
  call void @llvm.lifetime.start.p0(i64 8, ptr %__tmp98) #21, !dbg !3985
  call void @llvm.dbg.declare(metadata ptr %__tmp98, metadata !3863, metadata !DIExpression()), !dbg !3985
  %79 = load i32, ptr %__val_gu93, align 4, !dbg !3985
  %conv99 = zext i32 %79 to i64, !dbg !3985
  store i64 %conv99, ptr %__tmp98, align 8, !dbg !3985
  call void @kmsan_unpoison_memory(ptr noundef %__tmp98, i64 noundef 8) #22, !dbg !3985
  %80 = load i64, ptr %__tmp98, align 8, !dbg !3985
  %conv101 = trunc i64 %80 to i32, !dbg !3985
  store i32 %conv101, ptr %__val_gu93, align 4, !dbg !3985
  store i32 %conv101, ptr %tmp100, align 4, !dbg !3985
  call void @llvm.lifetime.end.p0(i64 8, ptr %__tmp98) #21, !dbg !3983
  %81 = load i32, ptr %tmp100, align 4, !dbg !3985
  %82 = load i32, ptr %__val_gu93, align 4, !dbg !3983
  %size102 = getelementptr inbounds %struct.mtrr_gentry, ptr %gentry, i32 0, i32 1, !dbg !3983
  store i32 %82, ptr %size102, align 8, !dbg !3983
  %83 = load i32, ptr %__ret_gu92, align 4, !dbg !3983
  %conv104 = sext i32 %83 to i64, !dbg !3983
  %expval105 = call i64 @llvm.expect.i64(i64 %conv104, i64 0), !dbg !3983
  store i64 %expval105, ptr %tmp103, align 8, !dbg !3983
  call void @llvm.lifetime.end.p0(i64 4, ptr %__val_gu93) #21, !dbg !3982
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_gu92) #21, !dbg !3982
  %84 = load i64, ptr %tmp103, align 8, !dbg !3983
  store i64 %84, ptr %tmp91, align 8, !dbg !3982
  %85 = load i64, ptr %tmp91, align 8, !dbg !3982
  %86 = load i32, ptr %err, align 4, !dbg !3986
  %conv106 = sext i32 %86 to i64, !dbg !3986
  %or107 = or i64 %conv106, %85, !dbg !3986
  %conv108 = trunc i64 %or107 to i32, !dbg !3986
  store i32 %conv108, ptr %err, align 4, !dbg !3986
  call void @might_fault() #22, !dbg !3987
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_gu110) #21, !dbg !3988
  call void @llvm.dbg.declare(metadata ptr %__ret_gu110, metadata !3865, metadata !DIExpression()), !dbg !3988
  call void @llvm.lifetime.start.p0(i64 4, ptr %__val_gu111) #21, !dbg !3988
  call void @llvm.dbg.declare(metadata ptr %__val_gu111, metadata !3868, metadata !DIExpression()), !dbg !3988
  %87 = call i64 @llvm.read_register.i64(metadata !3392), !dbg !3988
  %88 = load ptr, ptr %g32, align 8, !dbg !3988
  %type112 = getelementptr inbounds %struct.mtrr_gentry32, ptr %88, i32 0, i32 3, !dbg !3988
  %89 = call { ptr, i32, i64 } asm sideeffect "call __get_user_${4:c}", "={ax},={rdx},={rsp},0,i,{rsp},~{dirflag},~{fpsr},~{flags}"(ptr %type112, i64 4, i64 %87) #21, !dbg !3988, !srcloc !3989
  %asmresult113 = extractvalue { ptr, i32, i64 } %89, 0, !dbg !3988
  %asmresult114 = extractvalue { ptr, i32, i64 } %89, 1, !dbg !3988
  %asmresult115 = extractvalue { ptr, i32, i64 } %89, 2, !dbg !3988
  %90 = ptrtoint ptr %asmresult113 to i64, !dbg !3988
  %91 = trunc i64 %90 to i32, !dbg !3988
  store i32 %91, ptr %__ret_gu110, align 4, !dbg !3988
  store i32 %asmresult114, ptr %__val_gu111, align 4, !dbg !3988
  call void @llvm.write_register.i64(metadata !3392, i64 %asmresult115), !dbg !3988
  call void @llvm.lifetime.start.p0(i64 8, ptr %__tmp116) #21, !dbg !3990
  call void @llvm.dbg.declare(metadata ptr %__tmp116, metadata !3869, metadata !DIExpression()), !dbg !3990
  %92 = load i32, ptr %__val_gu111, align 4, !dbg !3990
  %conv117 = zext i32 %92 to i64, !dbg !3990
  store i64 %conv117, ptr %__tmp116, align 8, !dbg !3990
  call void @kmsan_unpoison_memory(ptr noundef %__tmp116, i64 noundef 8) #22, !dbg !3990
  %93 = load i64, ptr %__tmp116, align 8, !dbg !3990
  %conv119 = trunc i64 %93 to i32, !dbg !3990
  store i32 %conv119, ptr %__val_gu111, align 4, !dbg !3990
  store i32 %conv119, ptr %tmp118, align 4, !dbg !3990
  call void @llvm.lifetime.end.p0(i64 8, ptr %__tmp116) #21, !dbg !3988
  %94 = load i32, ptr %tmp118, align 4, !dbg !3990
  %95 = load i32, ptr %__val_gu111, align 4, !dbg !3988
  %type120 = getelementptr inbounds %struct.mtrr_gentry, ptr %gentry, i32 0, i32 3, !dbg !3988
  store i32 %95, ptr %type120, align 8, !dbg !3988
  %96 = load i32, ptr %__ret_gu110, align 4, !dbg !3988
  %conv122 = sext i32 %96 to i64, !dbg !3988
  %expval123 = call i64 @llvm.expect.i64(i64 %conv122, i64 0), !dbg !3988
  store i64 %expval123, ptr %tmp121, align 8, !dbg !3988
  call void @llvm.lifetime.end.p0(i64 4, ptr %__val_gu111) #21, !dbg !3987
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_gu110) #21, !dbg !3987
  %97 = load i64, ptr %tmp121, align 8, !dbg !3988
  store i64 %97, ptr %tmp109, align 8, !dbg !3987
  %98 = load i64, ptr %tmp109, align 8, !dbg !3987
  %99 = load i32, ptr %err, align 4, !dbg !3991
  %conv124 = sext i32 %99 to i64, !dbg !3991
  %or125 = or i64 %conv124, %98, !dbg !3991
  %conv126 = trunc i64 %or125 to i32, !dbg !3991
  store i32 %conv126, ptr %err, align 4, !dbg !3991
  %100 = load i32, ptr %err, align 4, !dbg !3992
  %tobool127 = icmp ne i32 %100, 0, !dbg !3992
  br i1 %tobool127, label %if.then128, label %if.end130, !dbg !3994

if.then128:                                       ; preds = %sw.bb56
  %101 = load i32, ptr %err, align 4, !dbg !3995
  %conv129 = sext i32 %101 to i64, !dbg !3995
  store i64 %conv129, ptr %retval, align 8, !dbg !3996
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup131, !dbg !3996

if.end130:                                        ; preds = %sw.bb56
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup131, !dbg !3997

cleanup131:                                       ; preds = %if.end130, %if.then128
  call void @llvm.lifetime.end.p0(i64 8, ptr %g32) #21, !dbg !3998
  %cleanup.dest132 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest132, label %cleanup294 [
    i32 2, label %sw.epilog
  ]

sw.epilog:                                        ; preds = %entry, %cleanup131, %cleanup, %if.end5, %if.end
  %102 = load i32, ptr %cmd.addr, align 4, !dbg !3999
  switch i32 %102, label %sw.default [
    i32 1074810112, label %sw.bb133
    i32 1074547968, label %sw.bb133
    i32 1074810113, label %sw.bb139
    i32 1074547969, label %sw.bb139
    i32 1074810114, label %sw.bb145
    i32 1074547970, label %sw.bb145
    i32 1074810116, label %sw.bb150
    i32 1074547972, label %sw.bb150
    i32 -1072149245, label %sw.bb155
    i32 -1072673533, label %sw.bb155
    i32 1074810117, label %sw.bb176
    i32 1074547973, label %sw.bb176
    i32 1074810118, label %sw.bb182
    i32 1074547974, label %sw.bb182
    i32 1074810119, label %sw.bb188
    i32 1074547975, label %sw.bb188
    i32 1074810121, label %sw.bb193
    i32 1074547977, label %sw.bb193
    i32 -1072149240, label %sw.bb198
    i32 -1072673528, label %sw.bb198
  ], !dbg !4000

sw.default:                                       ; preds = %sw.epilog
  store i64 -25, ptr %retval, align 8, !dbg !4001
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup294, !dbg !4001

sw.bb133:                                         ; preds = %sw.epilog, %sw.epilog
  %base134 = getelementptr inbounds %struct.mtrr_sentry, ptr %sentry, i32 0, i32 0, !dbg !4003
  %103 = load i64, ptr %base134, align 8, !dbg !4003
  %size135 = getelementptr inbounds %struct.mtrr_sentry, ptr %sentry, i32 0, i32 1, !dbg !4004
  %104 = load i32, ptr %size135, align 8, !dbg !4004
  %conv136 = zext i32 %104 to i64, !dbg !4005
  %type137 = getelementptr inbounds %struct.mtrr_sentry, ptr %sentry, i32 0, i32 2, !dbg !4006
  %105 = load i32, ptr %type137, align 4, !dbg !4006
  %106 = load ptr, ptr %file.addr, align 8, !dbg !4007
  %call138 = call i32 @mtrr_file_add(i64 noundef %103, i64 noundef %conv136, i32 noundef %105, i1 noundef zeroext true, ptr noundef %106, i32 noundef 0) #22, !dbg !4008
  store i32 %call138, ptr %err, align 4, !dbg !4009
  br label %sw.epilog221, !dbg !4010

sw.bb139:                                         ; preds = %sw.epilog, %sw.epilog
  %base140 = getelementptr inbounds %struct.mtrr_sentry, ptr %sentry, i32 0, i32 0, !dbg !4011
  %107 = load i64, ptr %base140, align 8, !dbg !4011
  %size141 = getelementptr inbounds %struct.mtrr_sentry, ptr %sentry, i32 0, i32 1, !dbg !4012
  %108 = load i32, ptr %size141, align 8, !dbg !4012
  %conv142 = zext i32 %108 to i64, !dbg !4013
  %type143 = getelementptr inbounds %struct.mtrr_sentry, ptr %sentry, i32 0, i32 2, !dbg !4014
  %109 = load i32, ptr %type143, align 4, !dbg !4014
  %call144 = call i32 @mtrr_add(i64 noundef %107, i64 noundef %conv142, i32 noundef %109, i1 noundef zeroext false) #22, !dbg !4015
  store i32 %call144, ptr %err, align 4, !dbg !4016
  br label %sw.epilog221, !dbg !4017

sw.bb145:                                         ; preds = %sw.epilog, %sw.epilog
  %base146 = getelementptr inbounds %struct.mtrr_sentry, ptr %sentry, i32 0, i32 0, !dbg !4018
  %110 = load i64, ptr %base146, align 8, !dbg !4018
  %size147 = getelementptr inbounds %struct.mtrr_sentry, ptr %sentry, i32 0, i32 1, !dbg !4019
  %111 = load i32, ptr %size147, align 8, !dbg !4019
  %conv148 = zext i32 %111 to i64, !dbg !4020
  %112 = load ptr, ptr %file.addr, align 8, !dbg !4021
  %call149 = call i32 @mtrr_file_del(i64 noundef %110, i64 noundef %conv148, ptr noundef %112, i32 noundef 0) #22, !dbg !4022
  store i32 %call149, ptr %err, align 4, !dbg !4023
  br label %sw.epilog221, !dbg !4024

sw.bb150:                                         ; preds = %sw.epilog, %sw.epilog
  %base151 = getelementptr inbounds %struct.mtrr_sentry, ptr %sentry, i32 0, i32 0, !dbg !4025
  %113 = load i64, ptr %base151, align 8, !dbg !4025
  %size152 = getelementptr inbounds %struct.mtrr_sentry, ptr %sentry, i32 0, i32 1, !dbg !4026
  %114 = load i32, ptr %size152, align 8, !dbg !4026
  %conv153 = zext i32 %114 to i64, !dbg !4027
  %call154 = call i32 @mtrr_del(i32 noundef -1, i64 noundef %113, i64 noundef %conv153) #22, !dbg !4028
  store i32 %call154, ptr %err, align 4, !dbg !4029
  br label %sw.epilog221, !dbg !4030

sw.bb155:                                         ; preds = %sw.epilog, %sw.epilog
  %regnum156 = getelementptr inbounds %struct.mtrr_gentry, ptr %gentry, i32 0, i32 2, !dbg !4031
  %115 = load i32, ptr %regnum156, align 4, !dbg !4031
  %116 = load i32, ptr @num_var_ranges, align 4, !dbg !4033
  %cmp = icmp uge i32 %115, %116, !dbg !4034
  br i1 %cmp, label %if.then158, label %if.end159, !dbg !4035

if.then158:                                       ; preds = %sw.bb155
  store i64 -22, ptr %retval, align 8, !dbg !4036
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup294, !dbg !4036

if.end159:                                        ; preds = %sw.bb155
  %117 = load ptr, ptr @mtrr_if, align 8, !dbg !4037
  %get = getelementptr inbounds %struct.mtrr_ops, ptr %117, i32 0, i32 2, !dbg !4038
  %118 = load ptr, ptr %get, align 8, !dbg !4038
  %regnum160 = getelementptr inbounds %struct.mtrr_gentry, ptr %gentry, i32 0, i32 2, !dbg !4039
  %119 = load i32, ptr %regnum160, align 4, !dbg !4039
  call void %118(i32 noundef %119, ptr noundef %base, ptr noundef %size, ptr noundef %type) #22, !dbg !4037
  %120 = load i64, ptr %base, align 8, !dbg !4040
  %121 = load i64, ptr %size, align 8, !dbg !4042
  %add = add i64 %120, %121, !dbg !4043
  %sub = sub i64 %add, 1, !dbg !4044
  %cmp161 = icmp uge i64 %sub, 1048576, !dbg !4045
  br i1 %cmp161, label %if.then165, label %lor.lhs.false, !dbg !4046

lor.lhs.false:                                    ; preds = %if.end159
  %122 = load i64, ptr %size, align 8, !dbg !4047
  %cmp163 = icmp uge i64 %122, 1048576, !dbg !4048
  br i1 %cmp163, label %if.then165, label %if.else, !dbg !4049

if.then165:                                       ; preds = %lor.lhs.false, %if.end159
  %type166 = getelementptr inbounds %struct.mtrr_gentry, ptr %gentry, i32 0, i32 3, !dbg !4050
  store i32 0, ptr %type166, align 8, !dbg !4051
  %size167 = getelementptr inbounds %struct.mtrr_gentry, ptr %gentry, i32 0, i32 1, !dbg !4052
  store i32 0, ptr %size167, align 8, !dbg !4053
  %base168 = getelementptr inbounds %struct.mtrr_gentry, ptr %gentry, i32 0, i32 0, !dbg !4054
  store i64 0, ptr %base168, align 8, !dbg !4055
  br label %if.end175, !dbg !4056

if.else:                                          ; preds = %lor.lhs.false
  %123 = load i64, ptr %base, align 8, !dbg !4057
  %shl = shl i64 %123, 12, !dbg !4059
  %base169 = getelementptr inbounds %struct.mtrr_gentry, ptr %gentry, i32 0, i32 0, !dbg !4060
  store i64 %shl, ptr %base169, align 8, !dbg !4061
  %124 = load i64, ptr %size, align 8, !dbg !4062
  %shl170 = shl i64 %124, 12, !dbg !4063
  %conv171 = trunc i64 %shl170 to i32, !dbg !4062
  %size172 = getelementptr inbounds %struct.mtrr_gentry, ptr %gentry, i32 0, i32 1, !dbg !4064
  store i32 %conv171, ptr %size172, align 8, !dbg !4065
  %125 = load i8, ptr %type, align 1, !dbg !4066
  %conv173 = zext i8 %125 to i32, !dbg !4066
  %type174 = getelementptr inbounds %struct.mtrr_gentry, ptr %gentry, i32 0, i32 3, !dbg !4067
  store i32 %conv173, ptr %type174, align 8, !dbg !4068
  br label %if.end175

if.end175:                                        ; preds = %if.else, %if.then165
  br label %sw.epilog221, !dbg !4069

sw.bb176:                                         ; preds = %sw.epilog, %sw.epilog
  %base177 = getelementptr inbounds %struct.mtrr_sentry, ptr %sentry, i32 0, i32 0, !dbg !4070
  %126 = load i64, ptr %base177, align 8, !dbg !4070
  %size178 = getelementptr inbounds %struct.mtrr_sentry, ptr %sentry, i32 0, i32 1, !dbg !4071
  %127 = load i32, ptr %size178, align 8, !dbg !4071
  %conv179 = zext i32 %127 to i64, !dbg !4072
  %type180 = getelementptr inbounds %struct.mtrr_sentry, ptr %sentry, i32 0, i32 2, !dbg !4073
  %128 = load i32, ptr %type180, align 4, !dbg !4073
  %129 = load ptr, ptr %file.addr, align 8, !dbg !4074
  %call181 = call i32 @mtrr_file_add(i64 noundef %126, i64 noundef %conv179, i32 noundef %128, i1 noundef zeroext true, ptr noundef %129, i32 noundef 1) #22, !dbg !4075
  store i32 %call181, ptr %err, align 4, !dbg !4076
  br label %sw.epilog221, !dbg !4077

sw.bb182:                                         ; preds = %sw.epilog, %sw.epilog
  %base183 = getelementptr inbounds %struct.mtrr_sentry, ptr %sentry, i32 0, i32 0, !dbg !4078
  %130 = load i64, ptr %base183, align 8, !dbg !4078
  %size184 = getelementptr inbounds %struct.mtrr_sentry, ptr %sentry, i32 0, i32 1, !dbg !4079
  %131 = load i32, ptr %size184, align 8, !dbg !4079
  %conv185 = zext i32 %131 to i64, !dbg !4080
  %type186 = getelementptr inbounds %struct.mtrr_sentry, ptr %sentry, i32 0, i32 2, !dbg !4081
  %132 = load i32, ptr %type186, align 4, !dbg !4081
  %call187 = call i32 @mtrr_add_page(i64 noundef %130, i64 noundef %conv185, i32 noundef %132, i1 noundef zeroext false) #22, !dbg !4082
  store i32 %call187, ptr %err, align 4, !dbg !4083
  br label %sw.epilog221, !dbg !4084

sw.bb188:                                         ; preds = %sw.epilog, %sw.epilog
  %base189 = getelementptr inbounds %struct.mtrr_sentry, ptr %sentry, i32 0, i32 0, !dbg !4085
  %133 = load i64, ptr %base189, align 8, !dbg !4085
  %size190 = getelementptr inbounds %struct.mtrr_sentry, ptr %sentry, i32 0, i32 1, !dbg !4086
  %134 = load i32, ptr %size190, align 8, !dbg !4086
  %conv191 = zext i32 %134 to i64, !dbg !4087
  %135 = load ptr, ptr %file.addr, align 8, !dbg !4088
  %call192 = call i32 @mtrr_file_del(i64 noundef %133, i64 noundef %conv191, ptr noundef %135, i32 noundef 1) #22, !dbg !4089
  store i32 %call192, ptr %err, align 4, !dbg !4090
  br label %sw.epilog221, !dbg !4091

sw.bb193:                                         ; preds = %sw.epilog, %sw.epilog
  %base194 = getelementptr inbounds %struct.mtrr_sentry, ptr %sentry, i32 0, i32 0, !dbg !4092
  %136 = load i64, ptr %base194, align 8, !dbg !4092
  %size195 = getelementptr inbounds %struct.mtrr_sentry, ptr %sentry, i32 0, i32 1, !dbg !4093
  %137 = load i32, ptr %size195, align 8, !dbg !4093
  %conv196 = zext i32 %137 to i64, !dbg !4094
  %call197 = call i32 @mtrr_del_page(i32 noundef -1, i64 noundef %136, i64 noundef %conv196) #22, !dbg !4095
  store i32 %call197, ptr %err, align 4, !dbg !4096
  br label %sw.epilog221, !dbg !4097

sw.bb198:                                         ; preds = %sw.epilog, %sw.epilog
  %regnum199 = getelementptr inbounds %struct.mtrr_gentry, ptr %gentry, i32 0, i32 2, !dbg !4098
  %138 = load i32, ptr %regnum199, align 4, !dbg !4098
  %139 = load i32, ptr @num_var_ranges, align 4, !dbg !4100
  %cmp200 = icmp uge i32 %138, %139, !dbg !4101
  br i1 %cmp200, label %if.then202, label %if.end203, !dbg !4102

if.then202:                                       ; preds = %sw.bb198
  store i64 -22, ptr %retval, align 8, !dbg !4103
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup294, !dbg !4103

if.end203:                                        ; preds = %sw.bb198
  %140 = load ptr, ptr @mtrr_if, align 8, !dbg !4104
  %get204 = getelementptr inbounds %struct.mtrr_ops, ptr %140, i32 0, i32 2, !dbg !4105
  %141 = load ptr, ptr %get204, align 8, !dbg !4105
  %regnum205 = getelementptr inbounds %struct.mtrr_gentry, ptr %gentry, i32 0, i32 2, !dbg !4106
  %142 = load i32, ptr %regnum205, align 4, !dbg !4106
  call void %141(i32 noundef %142, ptr noundef %base, ptr noundef %size, ptr noundef %type) #22, !dbg !4104
  %143 = load i64, ptr %size, align 8, !dbg !4107
  %144 = load i64, ptr %size, align 8, !dbg !4109
  %conv206 = trunc i64 %144 to i32, !dbg !4110
  %conv207 = zext i32 %conv206 to i64, !dbg !4110
  %cmp208 = icmp ne i64 %143, %conv207, !dbg !4111
  br i1 %cmp208, label %if.then210, label %if.else214, !dbg !4112

if.then210:                                       ; preds = %if.end203
  %type211 = getelementptr inbounds %struct.mtrr_gentry, ptr %gentry, i32 0, i32 3, !dbg !4113
  store i32 0, ptr %type211, align 8, !dbg !4114
  %size212 = getelementptr inbounds %struct.mtrr_gentry, ptr %gentry, i32 0, i32 1, !dbg !4115
  store i32 0, ptr %size212, align 8, !dbg !4116
  %base213 = getelementptr inbounds %struct.mtrr_gentry, ptr %gentry, i32 0, i32 0, !dbg !4117
  store i64 0, ptr %base213, align 8, !dbg !4118
  br label %if.end220, !dbg !4119

if.else214:                                       ; preds = %if.end203
  %145 = load i64, ptr %base, align 8, !dbg !4120
  %base215 = getelementptr inbounds %struct.mtrr_gentry, ptr %gentry, i32 0, i32 0, !dbg !4122
  store i64 %145, ptr %base215, align 8, !dbg !4123
  %146 = load i64, ptr %size, align 8, !dbg !4124
  %conv216 = trunc i64 %146 to i32, !dbg !4124
  %size217 = getelementptr inbounds %struct.mtrr_gentry, ptr %gentry, i32 0, i32 1, !dbg !4125
  store i32 %conv216, ptr %size217, align 8, !dbg !4126
  %147 = load i8, ptr %type, align 1, !dbg !4127
  %conv218 = zext i8 %147 to i32, !dbg !4127
  %type219 = getelementptr inbounds %struct.mtrr_gentry, ptr %gentry, i32 0, i32 3, !dbg !4128
  store i32 %conv218, ptr %type219, align 8, !dbg !4129
  br label %if.end220

if.end220:                                        ; preds = %if.else214, %if.then210
  br label %sw.epilog221, !dbg !4130

sw.epilog221:                                     ; preds = %if.end220, %sw.bb193, %sw.bb188, %sw.bb182, %sw.bb176, %if.end175, %sw.bb150, %sw.bb145, %sw.bb139, %sw.bb133
  %148 = load i32, ptr %err, align 4, !dbg !4131
  %tobool222 = icmp ne i32 %148, 0, !dbg !4131
  br i1 %tobool222, label %if.then223, label %if.end225, !dbg !4133

if.then223:                                       ; preds = %sw.epilog221
  %149 = load i32, ptr %err, align 4, !dbg !4134
  %conv224 = sext i32 %149 to i64, !dbg !4134
  store i64 %conv224, ptr %retval, align 8, !dbg !4135
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup294, !dbg !4135

if.end225:                                        ; preds = %sw.epilog221
  %150 = load i32, ptr %cmd.addr, align 4, !dbg !4136
  switch i32 %150, label %sw.epilog292 [
    i32 -1072149245, label %sw.bb226
    i32 -1072149240, label %sw.bb226
    i32 -1072673533, label %sw.bb231
    i32 -1072673528, label %sw.bb231
  ], !dbg !4137

sw.bb226:                                         ; preds = %if.end225, %if.end225
  %151 = load ptr, ptr %arg, align 8, !dbg !4138
  %call227 = call i64 @copy_to_user(ptr noundef %151, ptr noundef %gentry, i64 noundef 24) #22, !dbg !4140
  %tobool228 = icmp ne i64 %call227, 0, !dbg !4140
  br i1 %tobool228, label %if.then229, label %if.end230, !dbg !4141

if.then229:                                       ; preds = %sw.bb226
  store i32 -14, ptr %err, align 4, !dbg !4142
  br label %if.end230, !dbg !4143

if.end230:                                        ; preds = %if.then229, %sw.bb226
  br label %sw.epilog292, !dbg !4144

sw.bb231:                                         ; preds = %if.end225, %if.end225
  call void @llvm.lifetime.start.p0(i64 8, ptr %g32232) #21, !dbg !4145
  call void @llvm.dbg.declare(metadata ptr %g32232, metadata !3871, metadata !DIExpression()), !dbg !4146
  %152 = load i64, ptr %__arg.addr, align 8, !dbg !4147
  %153 = inttoptr i64 %152 to ptr, !dbg !4148
  store ptr %153, ptr %g32232, align 8, !dbg !4149
  call void @might_fault() #22, !dbg !4150
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_pu) #21, !dbg !4151
  call void @llvm.dbg.declare(metadata ptr %__ret_pu, metadata !3874, metadata !DIExpression()), !dbg !4151
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr_pu) #21, !dbg !4151
  call void @llvm.dbg.declare(metadata ptr %__ptr_pu, metadata !3877, metadata !DIExpression()), !dbg !4151
  call void @llvm.lifetime.start.p0(i64 4, ptr %__val_pu) #21, !dbg !4151
  call void @llvm.dbg.declare(metadata ptr %__val_pu, metadata !3878, metadata !DIExpression()), !dbg !4151
  call void @llvm.lifetime.start.p0(i64 4, ptr %__x) #21, !dbg !4151
  call void @llvm.dbg.declare(metadata ptr %__x, metadata !3879, metadata !DIExpression()), !dbg !4151
  %base234 = getelementptr inbounds %struct.mtrr_gentry, ptr %gentry, i32 0, i32 0, !dbg !4151
  %154 = load i64, ptr %base234, align 8, !dbg !4151
  %conv235 = trunc i64 %154 to i32, !dbg !4151
  store i32 %conv235, ptr %__x, align 4, !dbg !4151
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #21, !dbg !4151
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !3880, metadata !DIExpression()), !dbg !4151
  %155 = load ptr, ptr %g32232, align 8, !dbg !4151
  %base236 = getelementptr inbounds %struct.mtrr_gentry32, ptr %155, i32 0, i32 1, !dbg !4151
  store ptr %base236, ptr %__ptr, align 8, !dbg !4151
  %156 = load ptr, ptr %__ptr, align 8, !dbg !4151
  store ptr %156, ptr %__ptr_pu, align 8, !dbg !4151
  %157 = load i32, ptr %__x, align 4, !dbg !4151
  store i32 %157, ptr %__val_pu, align 4, !dbg !4151
  %158 = call i64 @llvm.read_register.i64(metadata !3392), !dbg !4151
  %159 = load ptr, ptr %__ptr_pu, align 8, !dbg !4151
  %160 = load i32, ptr %__val_pu, align 4, !dbg !4151
  %161 = call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %159, i32 %160, i64 4, i64 %158) #21, !dbg !4151, !srcloc !4152
  %asmresult237 = extractvalue { ptr, i64 } %161, 0, !dbg !4151
  %asmresult238 = extractvalue { ptr, i64 } %161, 1, !dbg !4151
  %162 = ptrtoint ptr %asmresult237 to i64, !dbg !4151
  %163 = trunc i64 %162 to i32, !dbg !4151
  store i32 %163, ptr %__ret_pu, align 4, !dbg !4151
  call void @llvm.write_register.i64(metadata !3392, i64 %asmresult238), !dbg !4151
  %164 = load ptr, ptr %__ptr, align 8, !dbg !4153
  call void @kmsan_copy_to_user(ptr noundef %164, ptr noundef %__x, i64 noundef 4, i64 noundef 0) #22, !dbg !4153
  %165 = load i32, ptr %__ret_pu, align 4, !dbg !4151
  %conv240 = sext i32 %165 to i64, !dbg !4151
  %expval241 = call i64 @llvm.expect.i64(i64 %conv240, i64 0), !dbg !4151
  store i64 %expval241, ptr %tmp239, align 8, !dbg !4151
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #21, !dbg !4150
  call void @llvm.lifetime.end.p0(i64 4, ptr %__x) #21, !dbg !4150
  call void @llvm.lifetime.end.p0(i64 4, ptr %__val_pu) #21, !dbg !4150
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr_pu) #21, !dbg !4150
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_pu) #21, !dbg !4150
  %166 = load i64, ptr %tmp239, align 8, !dbg !4151
  store i64 %166, ptr %tmp233, align 8, !dbg !4150
  %167 = load i64, ptr %tmp233, align 8, !dbg !4150
  %conv242 = trunc i64 %167 to i32, !dbg !4155
  store i32 %conv242, ptr %err, align 4, !dbg !4156
  call void @might_fault() #22, !dbg !4157
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_pu244) #21, !dbg !4158
  call void @llvm.dbg.declare(metadata ptr %__ret_pu244, metadata !3882, metadata !DIExpression()), !dbg !4158
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr_pu245) #21, !dbg !4158
  call void @llvm.dbg.declare(metadata ptr %__ptr_pu245, metadata !3885, metadata !DIExpression()), !dbg !4158
  call void @llvm.lifetime.start.p0(i64 4, ptr %__val_pu246) #21, !dbg !4158
  call void @llvm.dbg.declare(metadata ptr %__val_pu246, metadata !3886, metadata !DIExpression()), !dbg !4158
  call void @llvm.lifetime.start.p0(i64 4, ptr %__x247) #21, !dbg !4158
  call void @llvm.dbg.declare(metadata ptr %__x247, metadata !3887, metadata !DIExpression()), !dbg !4158
  %size248 = getelementptr inbounds %struct.mtrr_gentry, ptr %gentry, i32 0, i32 1, !dbg !4158
  %168 = load i32, ptr %size248, align 8, !dbg !4158
  store i32 %168, ptr %__x247, align 4, !dbg !4158
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr249) #21, !dbg !4158
  call void @llvm.dbg.declare(metadata ptr %__ptr249, metadata !3888, metadata !DIExpression()), !dbg !4158
  %169 = load ptr, ptr %g32232, align 8, !dbg !4158
  %size250 = getelementptr inbounds %struct.mtrr_gentry32, ptr %169, i32 0, i32 2, !dbg !4158
  store ptr %size250, ptr %__ptr249, align 8, !dbg !4158
  %170 = load ptr, ptr %__ptr249, align 8, !dbg !4158
  store ptr %170, ptr %__ptr_pu245, align 8, !dbg !4158
  %171 = load i32, ptr %__x247, align 4, !dbg !4158
  store i32 %171, ptr %__val_pu246, align 4, !dbg !4158
  %172 = call i64 @llvm.read_register.i64(metadata !3392), !dbg !4158
  %173 = load ptr, ptr %__ptr_pu245, align 8, !dbg !4158
  %174 = load i32, ptr %__val_pu246, align 4, !dbg !4158
  %175 = call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %173, i32 %174, i64 4, i64 %172) #21, !dbg !4158, !srcloc !4159
  %asmresult251 = extractvalue { ptr, i64 } %175, 0, !dbg !4158
  %asmresult252 = extractvalue { ptr, i64 } %175, 1, !dbg !4158
  %176 = ptrtoint ptr %asmresult251 to i64, !dbg !4158
  %177 = trunc i64 %176 to i32, !dbg !4158
  store i32 %177, ptr %__ret_pu244, align 4, !dbg !4158
  call void @llvm.write_register.i64(metadata !3392, i64 %asmresult252), !dbg !4158
  %178 = load ptr, ptr %__ptr249, align 8, !dbg !4160
  call void @kmsan_copy_to_user(ptr noundef %178, ptr noundef %__x247, i64 noundef 4, i64 noundef 0) #22, !dbg !4160
  %179 = load i32, ptr %__ret_pu244, align 4, !dbg !4158
  %conv254 = sext i32 %179 to i64, !dbg !4158
  %expval255 = call i64 @llvm.expect.i64(i64 %conv254, i64 0), !dbg !4158
  store i64 %expval255, ptr %tmp253, align 8, !dbg !4158
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr249) #21, !dbg !4157
  call void @llvm.lifetime.end.p0(i64 4, ptr %__x247) #21, !dbg !4157
  call void @llvm.lifetime.end.p0(i64 4, ptr %__val_pu246) #21, !dbg !4157
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr_pu245) #21, !dbg !4157
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_pu244) #21, !dbg !4157
  %180 = load i64, ptr %tmp253, align 8, !dbg !4158
  store i64 %180, ptr %tmp243, align 8, !dbg !4157
  %181 = load i64, ptr %tmp243, align 8, !dbg !4157
  %182 = load i32, ptr %err, align 4, !dbg !4162
  %conv256 = sext i32 %182 to i64, !dbg !4162
  %or257 = or i64 %conv256, %181, !dbg !4162
  %conv258 = trunc i64 %or257 to i32, !dbg !4162
  store i32 %conv258, ptr %err, align 4, !dbg !4162
  call void @might_fault() #22, !dbg !4163
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_pu260) #21, !dbg !4164
  call void @llvm.dbg.declare(metadata ptr %__ret_pu260, metadata !3889, metadata !DIExpression()), !dbg !4164
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr_pu261) #21, !dbg !4164
  call void @llvm.dbg.declare(metadata ptr %__ptr_pu261, metadata !3892, metadata !DIExpression()), !dbg !4164
  call void @llvm.lifetime.start.p0(i64 4, ptr %__val_pu262) #21, !dbg !4164
  call void @llvm.dbg.declare(metadata ptr %__val_pu262, metadata !3893, metadata !DIExpression()), !dbg !4164
  call void @llvm.lifetime.start.p0(i64 4, ptr %__x263) #21, !dbg !4164
  call void @llvm.dbg.declare(metadata ptr %__x263, metadata !3894, metadata !DIExpression()), !dbg !4164
  %regnum264 = getelementptr inbounds %struct.mtrr_gentry, ptr %gentry, i32 0, i32 2, !dbg !4164
  %183 = load i32, ptr %regnum264, align 4, !dbg !4164
  store i32 %183, ptr %__x263, align 4, !dbg !4164
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr265) #21, !dbg !4164
  call void @llvm.dbg.declare(metadata ptr %__ptr265, metadata !3895, metadata !DIExpression()), !dbg !4164
  %184 = load ptr, ptr %g32232, align 8, !dbg !4164
  %regnum266 = getelementptr inbounds %struct.mtrr_gentry32, ptr %184, i32 0, i32 0, !dbg !4164
  store ptr %regnum266, ptr %__ptr265, align 8, !dbg !4164
  %185 = load ptr, ptr %__ptr265, align 8, !dbg !4164
  store ptr %185, ptr %__ptr_pu261, align 8, !dbg !4164
  %186 = load i32, ptr %__x263, align 4, !dbg !4164
  store i32 %186, ptr %__val_pu262, align 4, !dbg !4164
  %187 = call i64 @llvm.read_register.i64(metadata !3392), !dbg !4164
  %188 = load ptr, ptr %__ptr_pu261, align 8, !dbg !4164
  %189 = load i32, ptr %__val_pu262, align 4, !dbg !4164
  %190 = call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %188, i32 %189, i64 4, i64 %187) #21, !dbg !4164, !srcloc !4165
  %asmresult267 = extractvalue { ptr, i64 } %190, 0, !dbg !4164
  %asmresult268 = extractvalue { ptr, i64 } %190, 1, !dbg !4164
  %191 = ptrtoint ptr %asmresult267 to i64, !dbg !4164
  %192 = trunc i64 %191 to i32, !dbg !4164
  store i32 %192, ptr %__ret_pu260, align 4, !dbg !4164
  call void @llvm.write_register.i64(metadata !3392, i64 %asmresult268), !dbg !4164
  %193 = load ptr, ptr %__ptr265, align 8, !dbg !4166
  call void @kmsan_copy_to_user(ptr noundef %193, ptr noundef %__x263, i64 noundef 4, i64 noundef 0) #22, !dbg !4166
  %194 = load i32, ptr %__ret_pu260, align 4, !dbg !4164
  %conv270 = sext i32 %194 to i64, !dbg !4164
  %expval271 = call i64 @llvm.expect.i64(i64 %conv270, i64 0), !dbg !4164
  store i64 %expval271, ptr %tmp269, align 8, !dbg !4164
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr265) #21, !dbg !4163
  call void @llvm.lifetime.end.p0(i64 4, ptr %__x263) #21, !dbg !4163
  call void @llvm.lifetime.end.p0(i64 4, ptr %__val_pu262) #21, !dbg !4163
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr_pu261) #21, !dbg !4163
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_pu260) #21, !dbg !4163
  %195 = load i64, ptr %tmp269, align 8, !dbg !4164
  store i64 %195, ptr %tmp259, align 8, !dbg !4163
  %196 = load i64, ptr %tmp259, align 8, !dbg !4163
  %197 = load i32, ptr %err, align 4, !dbg !4168
  %conv272 = sext i32 %197 to i64, !dbg !4168
  %or273 = or i64 %conv272, %196, !dbg !4168
  %conv274 = trunc i64 %or273 to i32, !dbg !4168
  store i32 %conv274, ptr %err, align 4, !dbg !4168
  call void @might_fault() #22, !dbg !4169
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_pu276) #21, !dbg !4170
  call void @llvm.dbg.declare(metadata ptr %__ret_pu276, metadata !3897, metadata !DIExpression()), !dbg !4170
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr_pu277) #21, !dbg !4170
  call void @llvm.dbg.declare(metadata ptr %__ptr_pu277, metadata !3900, metadata !DIExpression()), !dbg !4170
  call void @llvm.lifetime.start.p0(i64 4, ptr %__val_pu278) #21, !dbg !4170
  call void @llvm.dbg.declare(metadata ptr %__val_pu278, metadata !3901, metadata !DIExpression()), !dbg !4170
  call void @llvm.lifetime.start.p0(i64 4, ptr %__x279) #21, !dbg !4170
  call void @llvm.dbg.declare(metadata ptr %__x279, metadata !3902, metadata !DIExpression()), !dbg !4170
  %type280 = getelementptr inbounds %struct.mtrr_gentry, ptr %gentry, i32 0, i32 3, !dbg !4170
  %198 = load i32, ptr %type280, align 8, !dbg !4170
  store i32 %198, ptr %__x279, align 4, !dbg !4170
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr281) #21, !dbg !4170
  call void @llvm.dbg.declare(metadata ptr %__ptr281, metadata !3903, metadata !DIExpression()), !dbg !4170
  %199 = load ptr, ptr %g32232, align 8, !dbg !4170
  %type282 = getelementptr inbounds %struct.mtrr_gentry32, ptr %199, i32 0, i32 3, !dbg !4170
  store ptr %type282, ptr %__ptr281, align 8, !dbg !4170
  %200 = load ptr, ptr %__ptr281, align 8, !dbg !4170
  store ptr %200, ptr %__ptr_pu277, align 8, !dbg !4170
  %201 = load i32, ptr %__x279, align 4, !dbg !4170
  store i32 %201, ptr %__val_pu278, align 4, !dbg !4170
  %202 = call i64 @llvm.read_register.i64(metadata !3392), !dbg !4170
  %203 = load ptr, ptr %__ptr_pu277, align 8, !dbg !4170
  %204 = load i32, ptr %__val_pu278, align 4, !dbg !4170
  %205 = call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %203, i32 %204, i64 4, i64 %202) #21, !dbg !4170, !srcloc !4171
  %asmresult283 = extractvalue { ptr, i64 } %205, 0, !dbg !4170
  %asmresult284 = extractvalue { ptr, i64 } %205, 1, !dbg !4170
  %206 = ptrtoint ptr %asmresult283 to i64, !dbg !4170
  %207 = trunc i64 %206 to i32, !dbg !4170
  store i32 %207, ptr %__ret_pu276, align 4, !dbg !4170
  call void @llvm.write_register.i64(metadata !3392, i64 %asmresult284), !dbg !4170
  %208 = load ptr, ptr %__ptr281, align 8, !dbg !4172
  call void @kmsan_copy_to_user(ptr noundef %208, ptr noundef %__x279, i64 noundef 4, i64 noundef 0) #22, !dbg !4172
  %209 = load i32, ptr %__ret_pu276, align 4, !dbg !4170
  %conv286 = sext i32 %209 to i64, !dbg !4170
  %expval287 = call i64 @llvm.expect.i64(i64 %conv286, i64 0), !dbg !4170
  store i64 %expval287, ptr %tmp285, align 8, !dbg !4170
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr281) #21, !dbg !4169
  call void @llvm.lifetime.end.p0(i64 4, ptr %__x279) #21, !dbg !4169
  call void @llvm.lifetime.end.p0(i64 4, ptr %__val_pu278) #21, !dbg !4169
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr_pu277) #21, !dbg !4169
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_pu276) #21, !dbg !4169
  %210 = load i64, ptr %tmp285, align 8, !dbg !4170
  store i64 %210, ptr %tmp275, align 8, !dbg !4169
  %211 = load i64, ptr %tmp275, align 8, !dbg !4169
  %212 = load i32, ptr %err, align 4, !dbg !4174
  %conv288 = sext i32 %212 to i64, !dbg !4174
  %or289 = or i64 %conv288, %211, !dbg !4174
  %conv290 = trunc i64 %or289 to i32, !dbg !4174
  store i32 %conv290, ptr %err, align 4, !dbg !4174
  store i32 4, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %g32232) #21, !dbg !4175
  br label %sw.epilog292

sw.epilog292:                                     ; preds = %if.end225, %sw.bb231, %if.end230
  %213 = load i32, ptr %err, align 4, !dbg !4176
  %conv293 = sext i32 %213 to i64, !dbg !4176
  store i64 %conv293, ptr %retval, align 8, !dbg !4177
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup294, !dbg !4177

cleanup294:                                       ; preds = %sw.epilog292, %if.then223, %if.then202, %if.then158, %sw.default, %cleanup131, %cleanup, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %arg) #21, !dbg !4178
  call void @llvm.lifetime.end.p0(i64 24, ptr %gentry) #21, !dbg !4178
  call void @llvm.lifetime.end.p0(i64 16, ptr %sentry) #21, !dbg !4178
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #21, !dbg !4178
  call void @llvm.lifetime.end.p0(i64 8, ptr %base) #21, !dbg !4178
  call void @llvm.lifetime.end.p0(i64 1, ptr %type) #21, !dbg !4178
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #21, !dbg !4178
  %214 = load i64, ptr %retval, align 8, !dbg !4178
  ret i64 %214, !dbg !4178
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4179 dso_local zeroext i1 @capable(i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4182 dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @mtrr_seq_show(ptr noundef %seq, ptr noundef %offset) #0 align 16 !dbg !4185 {
entry:
  %seq.addr = alloca ptr, align 8
  %offset.addr = alloca ptr, align 8
  %factor = alloca i8, align 1
  %i = alloca i32, align 4
  %max = alloca i32, align 4
  %type = alloca i8, align 1
  %base = alloca i64, align 8
  %size = alloca i64, align 8
  store ptr %seq, ptr %seq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %seq.addr, metadata !4187, metadata !DIExpression()), !dbg !4195
  store ptr %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !4188, metadata !DIExpression()), !dbg !4196
  call void @llvm.lifetime.start.p0(i64 1, ptr %factor) #21, !dbg !4197
  call void @llvm.dbg.declare(metadata ptr %factor, metadata !4189, metadata !DIExpression()), !dbg !4198
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #21, !dbg !4199
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4190, metadata !DIExpression()), !dbg !4200
  call void @llvm.lifetime.start.p0(i64 4, ptr %max) #21, !dbg !4199
  call void @llvm.dbg.declare(metadata ptr %max, metadata !4191, metadata !DIExpression()), !dbg !4201
  call void @llvm.lifetime.start.p0(i64 1, ptr %type) #21, !dbg !4202
  call void @llvm.dbg.declare(metadata ptr %type, metadata !4192, metadata !DIExpression()), !dbg !4203
  call void @llvm.lifetime.start.p0(i64 8, ptr %base) #21, !dbg !4204
  call void @llvm.dbg.declare(metadata ptr %base, metadata !4193, metadata !DIExpression()), !dbg !4205
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #21, !dbg !4204
  call void @llvm.dbg.declare(metadata ptr %size, metadata !4194, metadata !DIExpression()), !dbg !4206
  %0 = load i32, ptr @num_var_ranges, align 4, !dbg !4207
  store i32 %0, ptr %max, align 4, !dbg !4208
  store i32 0, ptr %i, align 4, !dbg !4209
  br label %for.cond, !dbg !4211

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4, !dbg !4212
  %2 = load i32, ptr %max, align 4, !dbg !4214
  %cmp = icmp slt i32 %1, %2, !dbg !4215
  br i1 %cmp, label %for.body, label %for.end, !dbg !4216

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr @mtrr_if, align 8, !dbg !4217
  %get = getelementptr inbounds %struct.mtrr_ops, ptr %3, i32 0, i32 2, !dbg !4219
  %4 = load ptr, ptr %get, align 8, !dbg !4219
  %5 = load i32, ptr %i, align 4, !dbg !4220
  call void %4(i32 noundef %5, ptr noundef %base, ptr noundef %size, ptr noundef %type) #22, !dbg !4217
  %6 = load i64, ptr %size, align 8, !dbg !4221
  %cmp1 = icmp eq i64 %6, 0, !dbg !4223
  br i1 %cmp1, label %if.then, label %if.end, !dbg !4224

if.then:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4, !dbg !4225
  %idxprom = sext i32 %7 to i64, !dbg !4227
  %arrayidx = getelementptr [256 x i32], ptr @mtrr_usage_table, i64 0, i64 %idxprom, !dbg !4227
  store i32 0, ptr %arrayidx, align 4, !dbg !4228
  br label %for.inc, !dbg !4229

if.end:                                           ; preds = %for.body
  %8 = load i64, ptr %size, align 8, !dbg !4230
  %cmp2 = icmp ult i64 %8, 256, !dbg !4232
  br i1 %cmp2, label %if.then3, label %if.else, !dbg !4233

if.then3:                                         ; preds = %if.end
  store i8 75, ptr %factor, align 1, !dbg !4234
  %9 = load i64, ptr %size, align 8, !dbg !4236
  %shl = shl i64 %9, 2, !dbg !4236
  store i64 %shl, ptr %size, align 8, !dbg !4236
  br label %if.end4, !dbg !4237

if.else:                                          ; preds = %if.end
  store i8 77, ptr %factor, align 1, !dbg !4238
  %10 = load i64, ptr %size, align 8, !dbg !4240
  %shr = lshr i64 %10, 8, !dbg !4240
  store i64 %shr, ptr %size, align 8, !dbg !4240
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then3
  %11 = load ptr, ptr %seq.addr, align 8, !dbg !4241
  %12 = load i32, ptr %i, align 4, !dbg !4242
  %13 = load i64, ptr %base, align 8, !dbg !4243
  %14 = load i64, ptr %base, align 8, !dbg !4244
  %shr5 = lshr i64 %14, 8, !dbg !4245
  %15 = load i64, ptr %size, align 8, !dbg !4246
  %16 = load i8, ptr %factor, align 1, !dbg !4247
  %conv = zext i8 %16 to i32, !dbg !4247
  %17 = load i32, ptr %i, align 4, !dbg !4248
  %idxprom6 = sext i32 %17 to i64, !dbg !4249
  %arrayidx7 = getelementptr [256 x i32], ptr @mtrr_usage_table, i64 0, i64 %idxprom6, !dbg !4249
  %18 = load i32, ptr %arrayidx7, align 4, !dbg !4249
  %19 = load i8, ptr %type, align 1, !dbg !4250
  %conv8 = zext i8 %19 to i32, !dbg !4250
  %call = call ptr @mtrr_attrib_to_str(i32 noundef %conv8) #22, !dbg !4251
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %11, ptr noundef @.str.7, i32 noundef %12, i64 noundef %13, i64 noundef %shr5, i64 noundef %15, i32 noundef %conv, i32 noundef %18, ptr noundef %call) #22, !dbg !4252
  br label %for.inc, !dbg !4253

for.inc:                                          ; preds = %if.end4, %if.then
  %20 = load i32, ptr %i, align 4, !dbg !4254
  %inc = add i32 %20, 1, !dbg !4254
  store i32 %inc, ptr %i, align 4, !dbg !4254
  br label %for.cond, !dbg !4255, !llvm.loop !4256

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #21, !dbg !4258
  call void @llvm.lifetime.end.p0(i64 8, ptr %base) #21, !dbg !4258
  call void @llvm.lifetime.end.p0(i64 1, ptr %type) #21, !dbg !4258
  call void @llvm.lifetime.end.p0(i64 4, ptr %max) #21, !dbg !4258
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #21, !dbg !4258
  call void @llvm.lifetime.end.p0(i64 1, ptr %factor) #21, !dbg !4258
  ret i32 0, !dbg !4259
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4260 dso_local void @seq_printf(ptr noundef, ptr noundef, ...) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4263 dso_local i64 @strncpy_from_user(ptr noundef, ptr noundef, i64 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4267 dso_local i64 @strlen(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4271 dso_local i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4274 dso_local i64 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4279 dso_local i32 @mtrr_del_page(i32 noundef, i64 noundef, i64 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4282 dso_local i64 @simple_strtoull(ptr noundef, ptr noundef, i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4285 dso_local ptr @skip_spaces(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4288 dso_local i32 @match_string(ptr noundef, i64 noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4292 dso_local i32 @mtrr_add_page(i64 noundef, i64 noundef, i32 noundef, i1 noundef zeroext) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4295 dso_local i32 @mtrr_del(i32 noundef, i64 noundef, i64 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4296 dso_local void @kfree(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4301 dso_local i32 @single_release(ptr noundef, ptr noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_from_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #4 align 16 !dbg !4302 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !4307, metadata !DIExpression()), !dbg !4310
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !4308, metadata !DIExpression()), !dbg !4311
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !4309, metadata !DIExpression()), !dbg !4312
  %0 = load ptr, ptr %to.addr, align 8, !dbg !4313
  %1 = load i64, ptr %n.addr, align 8, !dbg !4315
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext false) #22, !dbg !4316
  br i1 %call, label %if.then, label %if.end, !dbg !4317

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %to.addr, align 8, !dbg !4318
  %3 = load ptr, ptr %from.addr, align 8, !dbg !4319
  %4 = load i64, ptr %n.addr, align 8, !dbg !4320
  %call1 = call i64 @_copy_from_user(ptr noundef %2, ptr noundef %3, i64 noundef %4) #22, !dbg !4321
  store i64 %call1, ptr %n.addr, align 8, !dbg !4322
  br label %if.end, !dbg !4323

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !4324
  ret i64 %5, !dbg !4325
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @might_fault() #9 align 16 !dbg !4326 {
entry:
  ret void, !dbg !4328
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #10

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #11

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kmsan_unpoison_memory(ptr noundef %address, i64 noundef %size) #9 align 16 !dbg !4329 {
entry:
  %address.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !4334, metadata !DIExpression()), !dbg !4336
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4335, metadata !DIExpression()), !dbg !4337
  ret void, !dbg !4338
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #12

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @mtrr_file_add(i64 noundef %base, i64 noundef %size, i32 noundef %type, i1 noundef zeroext %increment, ptr noundef %file, i32 noundef %page) #0 align 16 !dbg !4339 {
entry:
  %retval = alloca i32, align 4
  %base.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  %increment.addr = alloca i8, align 1
  %file.addr = alloca ptr, align 8
  %page.addr = alloca i32, align 4
  %fcount = alloca ptr, align 8
  %reg = alloca i32, align 4
  %max = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %base, ptr %base.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !4343, metadata !DIExpression()), !dbg !4352
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4344, metadata !DIExpression()), !dbg !4353
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !4345, metadata !DIExpression()), !dbg !4354
  %frombool = zext i1 %increment to i8
  store i8 %frombool, ptr %increment.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %increment.addr, metadata !4346, metadata !DIExpression()), !dbg !4355
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !4347, metadata !DIExpression()), !dbg !4356
  store i32 %page, ptr %page.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !4348, metadata !DIExpression()), !dbg !4357
  call void @llvm.lifetime.start.p0(i64 8, ptr %fcount) #21, !dbg !4358
  call void @llvm.dbg.declare(metadata ptr %fcount, metadata !4349, metadata !DIExpression()), !dbg !4359
  %0 = load ptr, ptr %file.addr, align 8, !dbg !4360
  %private_data = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15, !dbg !4360
  %1 = load ptr, ptr %private_data, align 8, !dbg !4360
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11, !dbg !4360
  %2 = load ptr, ptr %private, align 8, !dbg !4360
  store ptr %2, ptr %fcount, align 8, !dbg !4359
  call void @llvm.lifetime.start.p0(i64 4, ptr %reg) #21, !dbg !4361
  call void @llvm.dbg.declare(metadata ptr %reg, metadata !4350, metadata !DIExpression()), !dbg !4362
  call void @llvm.lifetime.start.p0(i64 4, ptr %max) #21, !dbg !4361
  call void @llvm.dbg.declare(metadata ptr %max, metadata !4351, metadata !DIExpression()), !dbg !4363
  %3 = load i32, ptr @num_var_ranges, align 4, !dbg !4364
  store i32 %3, ptr %max, align 4, !dbg !4365
  %4 = load ptr, ptr %fcount, align 8, !dbg !4366
  %cmp = icmp eq ptr %4, null, !dbg !4368
  br i1 %cmp, label %if.then, label %if.end4, !dbg !4369

if.then:                                          ; preds = %entry
  %5 = load i32, ptr %max, align 4, !dbg !4370
  %conv = sext i32 %5 to i64, !dbg !4370
  %call = call noalias ptr @kcalloc(i64 noundef %conv, i64 noundef 4, i32 noundef 3264) #23, !dbg !4372
  store ptr %call, ptr %fcount, align 8, !dbg !4373
  %6 = load ptr, ptr %fcount, align 8, !dbg !4374
  %tobool = icmp ne ptr %6, null, !dbg !4374
  br i1 %tobool, label %if.end, label %if.then1, !dbg !4376

if.then1:                                         ; preds = %if.then
  store i32 -12, ptr %retval, align 4, !dbg !4377
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4377

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %fcount, align 8, !dbg !4378
  %8 = load ptr, ptr %file.addr, align 8, !dbg !4379
  %private_data2 = getelementptr inbounds %struct.file, ptr %8, i32 0, i32 15, !dbg !4379
  %9 = load ptr, ptr %private_data2, align 8, !dbg !4379
  %private3 = getelementptr inbounds %struct.seq_file, ptr %9, i32 0, i32 11, !dbg !4379
  store ptr %7, ptr %private3, align 8, !dbg !4380
  br label %if.end4, !dbg !4381

if.end4:                                          ; preds = %if.end, %entry
  %10 = load i32, ptr %page.addr, align 4, !dbg !4382
  %tobool5 = icmp ne i32 %10, 0, !dbg !4382
  br i1 %tobool5, label %if.end13, label %if.then6, !dbg !4384

if.then6:                                         ; preds = %if.end4
  %11 = load i64, ptr %base.addr, align 8, !dbg !4385
  %and = and i64 %11, 4095, !dbg !4388
  %tobool7 = icmp ne i64 %and, 0, !dbg !4388
  br i1 %tobool7, label %if.then10, label %lor.lhs.false, !dbg !4389

lor.lhs.false:                                    ; preds = %if.then6
  %12 = load i64, ptr %size.addr, align 8, !dbg !4390
  %and8 = and i64 %12, 4095, !dbg !4391
  %tobool9 = icmp ne i64 %and8, 0, !dbg !4391
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !4392

if.then10:                                        ; preds = %lor.lhs.false, %if.then6
  store i32 -22, ptr %retval, align 4, !dbg !4393
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4393

if.end11:                                         ; preds = %lor.lhs.false
  %13 = load i64, ptr %base.addr, align 8, !dbg !4394
  %shr = lshr i64 %13, 12, !dbg !4394
  store i64 %shr, ptr %base.addr, align 8, !dbg !4394
  %14 = load i64, ptr %size.addr, align 8, !dbg !4395
  %shr12 = lshr i64 %14, 12, !dbg !4395
  store i64 %shr12, ptr %size.addr, align 8, !dbg !4395
  br label %if.end13, !dbg !4396

if.end13:                                         ; preds = %if.end11, %if.end4
  %15 = load i64, ptr %base.addr, align 8, !dbg !4397
  %16 = load i64, ptr %size.addr, align 8, !dbg !4398
  %17 = load i32, ptr %type.addr, align 4, !dbg !4399
  %call14 = call i32 @mtrr_add_page(i64 noundef %15, i64 noundef %16, i32 noundef %17, i1 noundef zeroext true) #22, !dbg !4400
  store i32 %call14, ptr %reg, align 4, !dbg !4401
  %18 = load i32, ptr %reg, align 4, !dbg !4402
  %cmp15 = icmp sge i32 %18, 0, !dbg !4404
  br i1 %cmp15, label %if.then17, label %if.end18, !dbg !4405

if.then17:                                        ; preds = %if.end13
  %19 = load ptr, ptr %fcount, align 8, !dbg !4406
  %20 = load i32, ptr %reg, align 4, !dbg !4407
  %idxprom = sext i32 %20 to i64, !dbg !4406
  %arrayidx = getelementptr i32, ptr %19, i64 %idxprom, !dbg !4406
  %21 = load i32, ptr %arrayidx, align 4, !dbg !4408
  %inc = add i32 %21, 1, !dbg !4408
  store i32 %inc, ptr %arrayidx, align 4, !dbg !4408
  br label %if.end18, !dbg !4408

if.end18:                                         ; preds = %if.then17, %if.end13
  %22 = load i32, ptr %reg, align 4, !dbg !4409
  store i32 %22, ptr %retval, align 4, !dbg !4410
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4410

cleanup:                                          ; preds = %if.end18, %if.then10, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %max) #21, !dbg !4411
  call void @llvm.lifetime.end.p0(i64 4, ptr %reg) #21, !dbg !4411
  call void @llvm.lifetime.end.p0(i64 8, ptr %fcount) #21, !dbg !4411
  %23 = load i32, ptr %retval, align 4, !dbg !4411
  ret i32 %23, !dbg !4411
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4412 dso_local i32 @mtrr_add(i64 noundef, i64 noundef, i32 noundef, i1 noundef zeroext) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @mtrr_file_del(i64 noundef %base, i64 noundef %size, ptr noundef %file, i32 noundef %page) #0 align 16 !dbg !4413 {
entry:
  %retval = alloca i32, align 4
  %base.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %file.addr = alloca ptr, align 8
  %page.addr = alloca i32, align 4
  %fcount = alloca ptr, align 8
  %reg = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %base, ptr %base.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !4417, metadata !DIExpression()), !dbg !4423
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4418, metadata !DIExpression()), !dbg !4424
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !4419, metadata !DIExpression()), !dbg !4425
  store i32 %page, ptr %page.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !4420, metadata !DIExpression()), !dbg !4426
  call void @llvm.lifetime.start.p0(i64 8, ptr %fcount) #21, !dbg !4427
  call void @llvm.dbg.declare(metadata ptr %fcount, metadata !4421, metadata !DIExpression()), !dbg !4428
  %0 = load ptr, ptr %file.addr, align 8, !dbg !4429
  %private_data = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15, !dbg !4429
  %1 = load ptr, ptr %private_data, align 8, !dbg !4429
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11, !dbg !4429
  %2 = load ptr, ptr %private, align 8, !dbg !4429
  store ptr %2, ptr %fcount, align 8, !dbg !4428
  call void @llvm.lifetime.start.p0(i64 4, ptr %reg) #21, !dbg !4430
  call void @llvm.dbg.declare(metadata ptr %reg, metadata !4422, metadata !DIExpression()), !dbg !4431
  %3 = load i32, ptr %page.addr, align 4, !dbg !4432
  %tobool = icmp ne i32 %3, 0, !dbg !4432
  br i1 %tobool, label %if.end6, label %if.then, !dbg !4434

if.then:                                          ; preds = %entry
  %4 = load i64, ptr %base.addr, align 8, !dbg !4435
  %and = and i64 %4, 4095, !dbg !4438
  %tobool1 = icmp ne i64 %and, 0, !dbg !4438
  br i1 %tobool1, label %if.then4, label %lor.lhs.false, !dbg !4439

lor.lhs.false:                                    ; preds = %if.then
  %5 = load i64, ptr %size.addr, align 8, !dbg !4440
  %and2 = and i64 %5, 4095, !dbg !4441
  %tobool3 = icmp ne i64 %and2, 0, !dbg !4441
  br i1 %tobool3, label %if.then4, label %if.end, !dbg !4442

if.then4:                                         ; preds = %lor.lhs.false, %if.then
  store i32 -22, ptr %retval, align 4, !dbg !4443
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4443

if.end:                                           ; preds = %lor.lhs.false
  %6 = load i64, ptr %base.addr, align 8, !dbg !4444
  %shr = lshr i64 %6, 12, !dbg !4444
  store i64 %shr, ptr %base.addr, align 8, !dbg !4444
  %7 = load i64, ptr %size.addr, align 8, !dbg !4445
  %shr5 = lshr i64 %7, 12, !dbg !4445
  store i64 %shr5, ptr %size.addr, align 8, !dbg !4445
  br label %if.end6, !dbg !4446

if.end6:                                          ; preds = %if.end, %entry
  %8 = load i64, ptr %base.addr, align 8, !dbg !4447
  %9 = load i64, ptr %size.addr, align 8, !dbg !4448
  %call = call i32 @mtrr_del_page(i32 noundef -1, i64 noundef %8, i64 noundef %9) #22, !dbg !4449
  store i32 %call, ptr %reg, align 4, !dbg !4450
  %10 = load i32, ptr %reg, align 4, !dbg !4451
  %cmp = icmp slt i32 %10, 0, !dbg !4453
  br i1 %cmp, label %if.then7, label %if.end8, !dbg !4454

if.then7:                                         ; preds = %if.end6
  %11 = load i32, ptr %reg, align 4, !dbg !4455
  store i32 %11, ptr %retval, align 4, !dbg !4456
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4456

if.end8:                                          ; preds = %if.end6
  %12 = load ptr, ptr %fcount, align 8, !dbg !4457
  %cmp9 = icmp eq ptr %12, null, !dbg !4459
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !4460

if.then10:                                        ; preds = %if.end8
  %13 = load i32, ptr %reg, align 4, !dbg !4461
  store i32 %13, ptr %retval, align 4, !dbg !4462
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4462

if.end11:                                         ; preds = %if.end8
  %14 = load ptr, ptr %fcount, align 8, !dbg !4463
  %15 = load i32, ptr %reg, align 4, !dbg !4465
  %idxprom = sext i32 %15 to i64, !dbg !4463
  %arrayidx = getelementptr i32, ptr %14, i64 %idxprom, !dbg !4463
  %16 = load i32, ptr %arrayidx, align 4, !dbg !4463
  %cmp12 = icmp ult i32 %16, 1, !dbg !4466
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !4467

if.then13:                                        ; preds = %if.end11
  store i32 -22, ptr %retval, align 4, !dbg !4468
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4468

if.end14:                                         ; preds = %if.end11
  %17 = load ptr, ptr %fcount, align 8, !dbg !4469
  %18 = load i32, ptr %reg, align 4, !dbg !4470
  %idxprom15 = sext i32 %18 to i64, !dbg !4469
  %arrayidx16 = getelementptr i32, ptr %17, i64 %idxprom15, !dbg !4469
  %19 = load i32, ptr %arrayidx16, align 4, !dbg !4471
  %dec = add i32 %19, -1, !dbg !4471
  store i32 %dec, ptr %arrayidx16, align 4, !dbg !4471
  %20 = load i32, ptr %reg, align 4, !dbg !4472
  store i32 %20, ptr %retval, align 4, !dbg !4473
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4473

cleanup:                                          ; preds = %if.end14, %if.then13, %if.then10, %if.then7, %if.then4
  call void @llvm.lifetime.end.p0(i64 4, ptr %reg) #21, !dbg !4474
  call void @llvm.lifetime.end.p0(i64 8, ptr %fcount) #21, !dbg !4474
  %21 = load i32, ptr %retval, align 4, !dbg !4474
  ret i32 %21, !dbg !4474
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_to_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #4 align 16 !dbg !4475 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !4477, metadata !DIExpression()), !dbg !4480
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !4478, metadata !DIExpression()), !dbg !4481
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !4479, metadata !DIExpression()), !dbg !4482
  %0 = load ptr, ptr %from.addr, align 8, !dbg !4483
  %1 = load i64, ptr %n.addr, align 8, !dbg !4485
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext true) #22, !dbg !4486
  br i1 %call, label %if.then, label %if.end, !dbg !4487

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %to.addr, align 8, !dbg !4488
  %3 = load ptr, ptr %from.addr, align 8, !dbg !4489
  %4 = load i64, ptr %n.addr, align 8, !dbg !4490
  %call1 = call i64 @_copy_to_user(ptr noundef %2, ptr noundef %3, i64 noundef %4) #22, !dbg !4491
  store i64 %call1, ptr %n.addr, align 8, !dbg !4492
  br label %if.end, !dbg !4493

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !4494
  ret i64 %5, !dbg !4495
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kmsan_copy_to_user(ptr noundef %to, ptr noundef %from, i64 noundef %to_copy, i64 noundef %left) #9 align 16 !dbg !4496 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %to_copy.addr = alloca i64, align 8
  %left.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !4500, metadata !DIExpression()), !dbg !4504
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !4501, metadata !DIExpression()), !dbg !4505
  store i64 %to_copy, ptr %to_copy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to_copy.addr, metadata !4502, metadata !DIExpression()), !dbg !4506
  store i64 %left, ptr %left.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %left.addr, metadata !4503, metadata !DIExpression()), !dbg !4507
  ret void, !dbg !4508
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @check_copy_size(ptr noundef %addr, i64 noundef %bytes, i1 noundef zeroext %is_source) #4 align 16 !dbg !4509 {
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
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4513, metadata !DIExpression()), !dbg !4523
  store i64 %bytes, ptr %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !4514, metadata !DIExpression()), !dbg !4524
  %frombool = zext i1 %is_source to i8
  store i8 %frombool, ptr %is_source.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %is_source.addr, metadata !4515, metadata !DIExpression()), !dbg !4525
  call void @llvm.lifetime.start.p0(i64 4, ptr %sz) #21, !dbg !4526
  call void @llvm.dbg.declare(metadata ptr %sz, metadata !4516, metadata !DIExpression()), !dbg !4527
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4528
  %1 = call i64 @llvm.objectsize.i64.p0(ptr %0, i1 false, i1 true, i1 false), !dbg !4529
  %conv = trunc i64 %1 to i32, !dbg !4529
  store i32 %conv, ptr %sz, align 4, !dbg !4527
  %2 = load i32, ptr %sz, align 4, !dbg !4530
  %cmp = icmp sge i32 %2, 0, !dbg !4530
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !4530

land.rhs:                                         ; preds = %entry
  %3 = load i32, ptr %sz, align 4, !dbg !4530
  %conv2 = sext i32 %3 to i64, !dbg !4530
  %4 = load i64, ptr %bytes.addr, align 8, !dbg !4530
  %cmp3 = icmp ult i64 %conv2, %4, !dbg !4530
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ], !dbg !4532
  %lnot = xor i1 %5, true, !dbg !4530
  %lnot5 = xor i1 %lnot, true, !dbg !4530
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !4530
  %conv6 = sext i32 %lnot.ext to i64, !dbg !4530
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 0), !dbg !4530
  %tobool = icmp ne i64 %expval, 0, !dbg !4530
  br i1 %tobool, label %if.then, label %if.end12, !dbg !4533

if.then:                                          ; preds = %land.end
  %6 = load i64, ptr %bytes.addr, align 8, !dbg !4534
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !4537
  br i1 %7, label %if.else, label %if.then7, !dbg !4538

if.then7:                                         ; preds = %if.then
  %8 = load i32, ptr %sz, align 4, !dbg !4539
  %9 = load i64, ptr %bytes.addr, align 8, !dbg !4540
  call void @copy_overflow(i32 noundef %8, i64 noundef %9) #22, !dbg !4541
  br label %if.end11, !dbg !4541

if.else:                                          ; preds = %if.then
  %10 = load i8, ptr %is_source.addr, align 1, !dbg !4542, !range !3552, !noundef !830
  %tobool8 = trunc i8 %10 to i1, !dbg !4542
  br i1 %tobool8, label %if.then9, label %if.else10, !dbg !4544

if.then9:                                         ; preds = %if.else
  call void @__bad_copy_from() #22, !dbg !4545, !srcloc !4546
  br label %if.end, !dbg !4545

if.else10:                                        ; preds = %if.else
  call void @__bad_copy_to() #22, !dbg !4547, !srcloc !4548
  br label %if.end

if.end:                                           ; preds = %if.else10, %if.then9
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then7
  store i1 false, ptr %retval, align 1, !dbg !4549
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4549

if.end12:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #21, !dbg !4550
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4517, metadata !DIExpression()), !dbg !4550
  %11 = load i64, ptr %bytes.addr, align 8, !dbg !4550
  %cmp13 = icmp ugt i64 %11, 2147483647, !dbg !4550
  %lnot15 = xor i1 %cmp13, true, !dbg !4550
  %lnot17 = xor i1 %lnot15, true, !dbg !4550
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !4550
  store i32 %lnot.ext18, ptr %__ret_warn_on, align 4, !dbg !4550
  %12 = load i32, ptr %__ret_warn_on, align 4, !dbg !4551
  %tobool19 = icmp ne i32 %12, 0, !dbg !4551
  %lnot20 = xor i1 %tobool19, true, !dbg !4551
  %lnot22 = xor i1 %lnot20, true, !dbg !4551
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !4551
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !4551
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !4551
  %tobool26 = icmp ne i64 %expval25, 0, !dbg !4551
  br i1 %tobool26, label %if.then27, label %if.end37, !dbg !4550

if.then27:                                        ; preds = %if.end12
  br label %do.body, !dbg !4551

do.body:                                          ; preds = %if.then27
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #21, !dbg !4552
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4520, metadata !DIExpression()), !dbg !4552
  store i32 2307, ptr %__flags, align 4, !dbg !4552
  br label %do.body28, !dbg !4552

do.body28:                                        ; preds = %do.body
  br label %do.cond, !dbg !4553

do.cond:                                          ; preds = %do.body28
  br label %do.end, !dbg !4553

do.end:                                           ; preds = %do.cond
  br label %do.body29, !dbg !4552

do.body29:                                        ; preds = %do.end
  %13 = load i32, ptr %__flags, align 4, !dbg !4555
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.12, i32 249, i32 %13, i64 12) #21, !dbg !4555, !srcloc !4557
  br label %do.cond30, !dbg !4555

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !4555

do.end31:                                         ; preds = %do.cond30
  br label %do.body32, !dbg !4552

do.body32:                                        ; preds = %do.end31
  br label %do.cond33, !dbg !4558

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !4558

do.end34:                                         ; preds = %do.cond33
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #21, !dbg !4551
  br label %do.cond35, !dbg !4552

do.cond35:                                        ; preds = %do.end34
  br label %do.end36, !dbg !4552

do.end36:                                         ; preds = %do.cond35
  br label %if.end37, !dbg !4552

if.end37:                                         ; preds = %do.end36, %if.end12
  %14 = load i32, ptr %__ret_warn_on, align 4, !dbg !4550
  %tobool38 = icmp ne i32 %14, 0, !dbg !4550
  %lnot39 = xor i1 %tobool38, true, !dbg !4550
  %lnot41 = xor i1 %lnot39, true, !dbg !4550
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !4550
  %conv43 = sext i32 %lnot.ext42 to i64, !dbg !4550
  %expval44 = call i64 @llvm.expect.i64(i64 %conv43, i64 0), !dbg !4550
  store i64 %expval44, ptr %tmp, align 8, !dbg !4551
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #21, !dbg !4560
  %15 = load i64, ptr %tmp, align 8, !dbg !4550
  %tobool45 = icmp ne i64 %15, 0, !dbg !4560
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !4561

if.then46:                                        ; preds = %if.end37
  store i1 false, ptr %retval, align 1, !dbg !4562
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4562

if.end47:                                         ; preds = %if.end37
  %16 = load ptr, ptr %addr.addr, align 8, !dbg !4563
  %17 = load i64, ptr %bytes.addr, align 8, !dbg !4564
  %18 = load i8, ptr %is_source.addr, align 1, !dbg !4565, !range !3552, !noundef !830
  %tobool48 = trunc i8 %18 to i1, !dbg !4565
  call void @check_object_size(ptr noundef %16, i64 noundef %17, i1 noundef zeroext %tobool48) #22, !dbg !4566
  store i1 true, ptr %retval, align 1, !dbg !4567
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4567

cleanup:                                          ; preds = %if.end47, %if.then46, %if.end11
  call void @llvm.lifetime.end.p0(i64 4, ptr %sz) #21, !dbg !4568
  %19 = load i1, ptr %retval, align 1, !dbg !4568
  ret i1 %19, !dbg !4568
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4569 dso_local i64 @_copy_from_user(ptr noundef, ptr noundef, i64 noundef) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @copy_overflow(i32 noundef %size, i64 noundef %count) #9 align 16 !dbg !4570 {
entry:
  %size.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4574, metadata !DIExpression()), !dbg !4576
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !4575, metadata !DIExpression()), !dbg !4577
  %0 = load i32, ptr %size.addr, align 4, !dbg !4578
  %1 = load i64, ptr %count.addr, align 8, !dbg !4580
  call void @__copy_overflow(i32 noundef %0, i64 noundef %1) #22, !dbg !4581
  ret void, !dbg !4582
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4583 dso_local void @__bad_copy_from() #13

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4584 dso_local void @__bad_copy_to() #14

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @check_object_size(ptr noundef %ptr, i64 noundef %n, i1 noundef zeroext %to_user) #9 align 16 !dbg !4585 {
entry:
  %ptr.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4589, metadata !DIExpression()), !dbg !4592
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !4590, metadata !DIExpression()), !dbg !4593
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, ptr %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %to_user.addr, metadata !4591, metadata !DIExpression()), !dbg !4594
  ret void, !dbg !4595
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4596 dso_local void @__copy_overflow(i32 noundef, i64 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kcalloc(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #15 align 16 !dbg !4597 {
entry:
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !4601, metadata !DIExpression()), !dbg !4604
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4602, metadata !DIExpression()), !dbg !4605
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4603, metadata !DIExpression()), !dbg !4606
  %0 = load i64, ptr %n.addr, align 8, !dbg !4607
  %1 = load i64, ptr %size.addr, align 8, !dbg !4608
  %2 = load i32, ptr %flags.addr, align 4, !dbg !4609
  %or = or i32 %2, 256, !dbg !4610
  %call = call noalias ptr @kmalloc_array(i64 noundef %0, i64 noundef %1, i32 noundef %or) #23, !dbg !4611
  ret ptr %call, !dbg !4612
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kmalloc_array(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #15 align 16 !dbg !4613 {
entry:
  %retval = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !4615, metadata !DIExpression()), !dbg !4619
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4616, metadata !DIExpression()), !dbg !4620
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4617, metadata !DIExpression()), !dbg !4621
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #21, !dbg !4622
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !4618, metadata !DIExpression()), !dbg !4623
  %0 = load i64, ptr %n.addr, align 8, !dbg !4624
  %1 = load i64, ptr %size.addr, align 8, !dbg !4624
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !4624
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !4624
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !4624
  store i64 %4, ptr %bytes, align 8, !dbg !4624
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #22, !dbg !4624
  %lnot = xor i1 %call, true, !dbg !4624
  %lnot1 = xor i1 %lnot, true, !dbg !4624
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4624
  %conv = sext i32 %lnot.ext to i64, !dbg !4624
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4624
  %tobool = icmp ne i64 %expval, 0, !dbg !4624
  br i1 %tobool, label %if.then, label %if.end, !dbg !4626

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !4627
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4627

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !4628
  %6 = call i1 @llvm.is.constant.i64(i64 %5), !dbg !4630
  br i1 %6, label %land.lhs.true, label %if.end4, !dbg !4631

land.lhs.true:                                    ; preds = %if.end
  %7 = load i64, ptr %size.addr, align 8, !dbg !4632
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !4633
  br i1 %8, label %if.then2, label %if.end4, !dbg !4634

if.then2:                                         ; preds = %land.lhs.true
  %9 = load i64, ptr %bytes, align 8, !dbg !4635
  %10 = load i32, ptr %flags.addr, align 4, !dbg !4636
  %call3 = call noalias ptr @kmalloc(i64 noundef %9, i32 noundef %10) #24, !dbg !4637
  store ptr %call3, ptr %retval, align 8, !dbg !4638
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4638

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %11 = load i64, ptr %bytes, align 8, !dbg !4639
  %12 = load i32, ptr %flags.addr, align 4, !dbg !4640
  %call5 = call noalias align 8 ptr @__kmalloc(i64 noundef %11, i32 noundef %12) #24, !dbg !4641
  store ptr %call5, ptr %retval, align 8, !dbg !4642
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4642

cleanup:                                          ; preds = %if.end4, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #21, !dbg !4643
  %13 = load ptr, ptr %retval, align 8, !dbg !4643
  ret ptr %13, !dbg !4643
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #9 align 16 !dbg !4644 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !4649, metadata !DIExpression()), !dbg !4650
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !4651, !range !3552, !noundef !830
  %tobool = trunc i8 %0 to i1, !dbg !4651
  %lnot = xor i1 %tobool, true, !dbg !4651
  %lnot1 = xor i1 %lnot, true, !dbg !4651
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4651
  %conv = sext i32 %lnot.ext to i64, !dbg !4651
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4651
  %tobool2 = icmp ne i64 %expval, 0, !dbg !4651
  ret i1 %tobool2, !dbg !4652
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #16 align 16 !dbg !4653 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4657, metadata !DIExpression()), !dbg !4662
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4658, metadata !DIExpression()), !dbg !4663
  %0 = load i64, ptr %size.addr, align 8, !dbg !4664
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4665
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !4666

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !4667
  %tobool = icmp ne i64 %2, 0, !dbg !4667
  br i1 %tobool, label %if.then, label %if.end7, !dbg !4668

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #21, !dbg !4669
  call void @llvm.dbg.declare(metadata ptr %index, metadata !4659, metadata !DIExpression()), !dbg !4670
  %3 = load i64, ptr %size.addr, align 8, !dbg !4671
  %cmp = icmp ugt i64 %3, 8192, !dbg !4673
  br i1 %cmp, label %if.then1, label %if.end, !dbg !4674

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !4675
  %5 = load i32, ptr %flags.addr, align 4, !dbg !4676
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #24, !dbg !4677
  store ptr %call, ptr %retval, align 8, !dbg !4678
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4678

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !4679
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #22, !dbg !4679
  store i32 %call2, ptr %index, align 4, !dbg !4680
  %7 = load i32, ptr %flags.addr, align 4, !dbg !4681
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !4682
  %9 = ptrtoint ptr %8 to i64, !dbg !4682
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #22, !dbg !4683
  %idxprom = zext i32 %call3 to i64, !dbg !4684
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !4684
  %10 = load i32, ptr %index, align 4, !dbg !4685
  %idxprom4 = zext i32 %10 to i64, !dbg !4684
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !4684
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !4684
  %12 = load i32, ptr %flags.addr, align 4, !dbg !4686
  %13 = load i64, ptr %size.addr, align 8, !dbg !4687
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #25, !dbg !4688
  store ptr %call6, ptr %retval, align 8, !dbg !4689
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4689

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #21, !dbg !4690
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !4691
  %15 = load i32, ptr %flags.addr, align 4, !dbg !4692
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #24, !dbg !4693
  store ptr %call8, ptr %retval, align 8, !dbg !4694
  br label %return, !dbg !4694

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !4695
  ret ptr %16, !dbg !4695
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !4696 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #17

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !4697 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #17

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #4 align 16 !dbg !4698 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4702, metadata !DIExpression()), !dbg !4704
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !4703, metadata !DIExpression()), !dbg !4705
  %0 = load i64, ptr %size.addr, align 8, !dbg !4706
  %tobool = icmp ne i64 %0, 0, !dbg !4706
  br i1 %tobool, label %if.end, label %if.then, !dbg !4708

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4709
  br label %return, !dbg !4709

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !4710
  %cmp = icmp ule i64 %1, 8, !dbg !4712
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !4713

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !4714
  br label %return, !dbg !4714

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !4715
  %cmp3 = icmp ugt i64 %2, 64, !dbg !4717
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !4718

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !4719
  %cmp4 = icmp ule i64 %3, 96, !dbg !4720
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !4721

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !4722
  br label %return, !dbg !4722

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !4723
  %cmp7 = icmp ugt i64 %4, 128, !dbg !4725
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !4726

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !4727
  %cmp9 = icmp ule i64 %5, 192, !dbg !4728
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !4729

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !4730
  br label %return, !dbg !4730

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !4731
  %cmp12 = icmp ule i64 %6, 8, !dbg !4733
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !4734

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !4735
  br label %return, !dbg !4735

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !4736
  %cmp15 = icmp ule i64 %7, 16, !dbg !4738
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !4739

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !4740
  br label %return, !dbg !4740

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !4741
  %cmp18 = icmp ule i64 %8, 32, !dbg !4743
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !4744

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !4745
  br label %return, !dbg !4745

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !4746
  %cmp21 = icmp ule i64 %9, 64, !dbg !4748
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !4749

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !4750
  br label %return, !dbg !4750

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !4751
  %cmp24 = icmp ule i64 %10, 128, !dbg !4753
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !4754

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !4755
  br label %return, !dbg !4755

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !4756
  %cmp27 = icmp ule i64 %11, 256, !dbg !4758
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !4759

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !4760
  br label %return, !dbg !4760

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !4761
  %cmp30 = icmp ule i64 %12, 512, !dbg !4763
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !4764

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !4765
  br label %return, !dbg !4765

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !4766
  %cmp33 = icmp ule i64 %13, 1024, !dbg !4768
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !4769

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !4770
  br label %return, !dbg !4770

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !4771
  %cmp36 = icmp ule i64 %14, 2048, !dbg !4773
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !4774

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !4775
  br label %return, !dbg !4775

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !4776
  %cmp39 = icmp ule i64 %15, 4096, !dbg !4778
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !4779

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !4780
  br label %return, !dbg !4780

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !4781
  %cmp42 = icmp ule i64 %16, 8192, !dbg !4783
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !4784

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !4785
  br label %return, !dbg !4785

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !4786
  %cmp45 = icmp ule i64 %17, 16384, !dbg !4788
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !4789

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !4790
  br label %return, !dbg !4790

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !4791
  %cmp48 = icmp ule i64 %18, 32768, !dbg !4793
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !4794

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !4795
  br label %return, !dbg !4795

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !4796
  %cmp51 = icmp ule i64 %19, 65536, !dbg !4798
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !4799

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !4800
  br label %return, !dbg !4800

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !4801
  %cmp54 = icmp ule i64 %20, 131072, !dbg !4803
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !4804

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !4805
  br label %return, !dbg !4805

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !4806
  %cmp57 = icmp ule i64 %21, 262144, !dbg !4808
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !4809

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !4810
  br label %return, !dbg !4810

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !4811
  %cmp60 = icmp ule i64 %22, 524288, !dbg !4813
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !4814

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !4815
  br label %return, !dbg !4815

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !4816
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !4818
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !4819

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !4820
  br label %return, !dbg !4820

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !4821
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !4823
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !4824

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !4825
  br label %return, !dbg !4825

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !4826, !range !3552, !noundef !830
  %tobool69 = trunc i8 %25 to i1, !dbg !4826
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !4828

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !4829

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_245() #26, !dbg !4830, !srcloc !4833
  unreachable, !dbg !4830

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !4834

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !4835

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !4836

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !4838

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !4836

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.13, i32 480, i32 0, i64 12) #21, !dbg !4840, !srcloc !4842
  br label %do.end75, !dbg !4840

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !4836

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !4843
  br label %return, !dbg !4843

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !4844
  ret i32 %26, !dbg !4844
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !4845 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #18

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #4 align 16 !dbg !4851 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4855, metadata !DIExpression()), !dbg !4857
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !4856, metadata !DIExpression()), !dbg !4858
  %0 = load i32, ptr %flags.addr, align 4, !dbg !4859
  %and = and i32 %0, 17, !dbg !4859
  %cmp = icmp eq i32 %and, 0, !dbg !4859
  %lnot = xor i1 %cmp, true, !dbg !4859
  %lnot1 = xor i1 %lnot, true, !dbg !4859
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4859
  %conv = sext i32 %lnot.ext to i64, !dbg !4859
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !4859
  %tobool = icmp ne i64 %expval, 0, !dbg !4859
  br i1 %tobool, label %if.then, label %if.end, !dbg !4861

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4862
  br label %return, !dbg !4862

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !4863
  %and2 = and i32 %1, 1, !dbg !4865
  %tobool3 = icmp ne i32 %and2, 0, !dbg !4865
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !4866

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !4867
  br label %return, !dbg !4867

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !4868
  br label %return, !dbg !4868

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !4870
  ret i32 %2, !dbg !4870
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #12

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !4871 dso_local void @__compiletime_assert_245() #19

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4872 dso_local i64 @_copy_to_user(ptr noundef, ptr noundef, i64 noundef) #5

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #11 = { nocallback nounwind }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { noredzone null_pointer_is_valid "dontcall-error"="copy source size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone null_pointer_is_valid "dontcall-error"="copy destination size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #17 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #18 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #19 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #20 = { cold noredzone }
attributes #21 = { nounwind }
attributes #22 = { noredzone }
attributes #23 = { noredzone allocsize(0,1) }
attributes #24 = { noredzone allocsize(0) }
attributes #25 = { noredzone allocsize(2) }
attributes #26 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!3392}
!llvm.module.flags = !{!3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400}
!llvm.ident = !{!3401}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "mtrr_strings", scope: !2, file: !3, line: 19, type: !3388, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/cpu/mtrr/.if.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/cpu/mtrr/if\22 -D KBUILD_BASENAME=\22if\22 -D KBUILD_MODNAME=\22if\22 -D __KBUILD_MODNAME=kmod_if -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/cpu/mtrr/if.ll arch/x86/kernel/cpu/mtrr/if.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !65, globals: !3316, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/kernel/cpu/mtrr/if.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da2954c12a99bb1112a70ce4ed0517b8")
!4 = !{!5, !11, !19, !26, !32, !37, !43, !50, !55}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !6, line: 2052, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!10 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !12, line: 9, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!13 = !{!14, !15, !16, !17, !18}
!14 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!15 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!16 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!17 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!18 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !20, line: 15, baseType: !7, size: 32, elements: !21)
!20 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!21 = !{!22, !23, !24, !25}
!22 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!23 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!24 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!25 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !27, line: 54, baseType: !7, size: 32, elements: !28)
!27 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!28 = !{!29, !30, !31}
!29 = !DIEnumerator(name: "USRQUOTA", value: 0)
!30 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!31 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !33, line: 65, baseType: !7, size: 32, elements: !34)
!33 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!34 = !{!35, !36}
!35 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!36 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !38, line: 16, baseType: !7, size: 32, elements: !39)
!38 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!39 = !{!40, !41, !42}
!40 = !DIEnumerator(name: "TT_NONE", value: 0)
!41 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!42 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !44, line: 51, baseType: !7, size: 32, elements: !45)
!44 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!45 = !{!46, !47, !48, !49}
!46 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!47 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!48 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!49 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !51, line: 10, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!52 = !{!53, !54}
!53 = !DIEnumerator(name: "false", value: 0)
!54 = !DIEnumerator(name: "true", value: 1)
!55 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !56, line: 364, baseType: !7, size: 32, elements: !57)
!56 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!57 = !{!58, !59, !60, !61, !62, !63, !64}
!58 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!59 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!60 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!61 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!62 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!63 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!64 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!65 = !{!66, !67, !68, !70, !69, !75, !3300, !322, !3305, !3307, !3309, !380, !785}
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!67 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !71, line: 61, baseType: !72)
!71 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !73, line: 72, baseType: !74)
!73 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !73, line: 16, baseType: !69)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !77, line: 17, size: 960, elements: !78)
!77 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!78 = !{!79, !82, !83, !84, !85, !86, !90, !91, !151, !173, !174, !3299}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !76, file: !77, line: 18, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !76, file: !77, line: 19, baseType: !70, size: 64, offset: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !76, file: !77, line: 20, baseType: !70, size: 64, offset: 128)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !76, file: !77, line: 21, baseType: !70, size: 64, offset: 192)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !76, file: !77, line: 22, baseType: !70, size: 64, offset: 256)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !76, file: !77, line: 23, baseType: !87, size: 64, offset: 320)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !71, line: 52, baseType: !88)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !73, line: 88, baseType: !89)
!89 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !76, file: !77, line: 24, baseType: !87, size: 64, offset: 384)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !76, file: !77, line: 25, baseType: !92, size: 256, offset: 448)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !93, line: 66, size: 256, elements: !94)
!93 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!94 = !{!95, !106, !140, !145}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !92, file: !93, line: 67, baseType: !96, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !97, line: 13, baseType: !98)
!97 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !71, line: 181, baseType: !99)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 179, size: 64, elements: !100)
!100 = !{!101}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !99, file: !71, line: 180, baseType: !102, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !103, line: 22, baseType: !104)
!103 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !105, line: 30, baseType: !89)
!105 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!106 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !92, file: !93, line: 68, baseType: !107, size: 32, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !108, line: 23, baseType: !109)
!108 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !108, line: 14, size: 32, elements: !110)
!110 = !{!111}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !109, file: !108, line: 15, baseType: !112, size: 32)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !113, line: 44, baseType: !114)
!113 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !113, line: 14, size: 32, elements: !115)
!115 = !{!116}
!116 = !DIDerivedType(tag: DW_TAG_member, scope: !114, file: !113, line: 15, baseType: !117, size: 32)
!117 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !114, file: !113, line: 15, size: 32, elements: !118)
!118 = !{!119, !124, !132}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !117, file: !113, line: 16, baseType: !120, size: 32)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !71, line: 174, baseType: !121)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 172, size: 32, elements: !122)
!122 = !{!123}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !121, file: !71, line: 173, baseType: !67, size: 32)
!124 = !DIDerivedType(tag: DW_TAG_member, scope: !117, file: !113, line: 24, baseType: !125, size: 16)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !117, file: !113, line: 24, size: 16, elements: !126)
!126 = !{!127, !131}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !125, file: !113, line: 25, baseType: !128, size: 8)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !103, line: 17, baseType: !129)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !105, line: 21, baseType: !130)
!130 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !125, file: !113, line: 26, baseType: !128, size: 8, offset: 8)
!132 = !DIDerivedType(tag: DW_TAG_member, scope: !117, file: !113, line: 28, baseType: !133, size: 32)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !117, file: !113, line: 28, size: 32, elements: !134)
!134 = !{!135, !139}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !133, file: !113, line: 29, baseType: !136, size: 16)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !103, line: 19, baseType: !137)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !105, line: 24, baseType: !138)
!138 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !133, file: !113, line: 30, baseType: !136, size: 16, offset: 16)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !92, file: !93, line: 70, baseType: !141, size: 32, offset: 96)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !142, line: 15, size: 32, elements: !143)
!142 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!143 = !{!144}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !141, file: !142, line: 20, baseType: !120, size: 32)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !92, file: !93, line: 72, baseType: !146, size: 128, offset: 128)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !71, line: 190, size: 128, elements: !147)
!147 = !{!148, !150}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !146, file: !71, line: 191, baseType: !149, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !146, file: !71, line: 191, baseType: !149, size: 64, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !76, file: !77, line: 26, baseType: !152, size: 64, offset: 704)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !154)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !77, line: 32, size: 256, elements: !155)
!155 = !{!156, !161, !165, !169}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !154, file: !77, line: 33, baseType: !157, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DISubroutineType(types: !159)
!159 = !{!66, !75, !160}
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !154, file: !77, line: 34, baseType: !162, size: 64, offset: 64)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DISubroutineType(types: !164)
!164 = !{null, !75, !66}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !154, file: !77, line: 35, baseType: !166, size: 64, offset: 128)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DISubroutineType(types: !168)
!168 = !{!66, !75, !66, !160}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !154, file: !77, line: 36, baseType: !170, size: 64, offset: 192)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DISubroutineType(types: !172)
!172 = !{!67, !75, !66}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !76, file: !77, line: 27, baseType: !67, size: 32, offset: 768)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !76, file: !77, line: 28, baseType: !175, size: 64, offset: 832)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !177)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !6, line: 994, size: 1856, align: 64, elements: !178)
!178 = !{!179, !198, !207, !209, !210, !211, !212, !213, !294, !519, !528, !3289, !3290, !3291, !3292, !3293, !3294, !3296, !3297, !3298}
!179 = !DIDerivedType(tag: DW_TAG_member, scope: !177, file: !6, line: 995, baseType: !180, size: 128)
!180 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !177, file: !6, line: 995, size: 128, elements: !181)
!181 = !{!182, !188, !197}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !180, file: !6, line: 996, baseType: !183, size: 64)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !184, line: 60, size: 64, elements: !185)
!184 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!185 = !{!186}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !183, file: !184, line: 61, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !180, file: !6, line: 997, baseType: !189, size: 128, align: 64)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !71, line: 232, size: 128, align: 64, elements: !190)
!190 = !{!191, !193}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !189, file: !71, line: 233, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !189, file: !71, line: 234, baseType: !194, size: 64, offset: 64)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DISubroutineType(types: !196)
!196 = !{null, !192}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !180, file: !6, line: 998, baseType: !7, size: 32)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !177, file: !6, line: 1005, baseType: !199, size: 32, offset: 128)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !200, line: 29, baseType: !201)
!200 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !200, line: 17, size: 32, elements: !202)
!202 = !{!203}
!203 = !DIDerivedType(tag: DW_TAG_member, scope: !201, file: !200, line: 18, baseType: !204, size: 32)
!204 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !201, file: !200, line: 18, size: 32, elements: !205)
!205 = !{!206}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !204, file: !200, line: 19, baseType: !109, size: 32)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !177, file: !6, line: 1006, baseType: !208, size: 32, offset: 160)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !71, line: 156, baseType: !7)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !177, file: !6, line: 1007, baseType: !96, size: 64, offset: 192)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !177, file: !6, line: 1008, baseType: !92, size: 256, offset: 256)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !177, file: !6, line: 1009, baseType: !87, size: 64, offset: 512)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !177, file: !6, line: 1010, baseType: !7, size: 32, offset: 576)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !177, file: !6, line: 1011, baseType: !214, size: 256, offset: 640)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !6, line: 948, size: 256, elements: !215)
!215 = !{!216, !239, !283, !284, !292, !293}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !214, file: !6, line: 949, baseType: !217, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !218, line: 34, baseType: !219)
!218 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !218, line: 25, size: 64, elements: !220)
!220 = !{!221}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !219, file: !218, line: 26, baseType: !222, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !223, line: 27, baseType: !224)
!223 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !223, line: 13, size: 64, elements: !225)
!225 = !{!226, !238}
!226 = !DIDerivedType(tag: DW_TAG_member, scope: !224, file: !223, line: 14, baseType: !227, size: 32)
!227 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !224, file: !223, line: 14, size: 32, elements: !228)
!228 = !{!229, !230}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !227, file: !223, line: 15, baseType: !120, size: 32)
!230 = !DIDerivedType(tag: DW_TAG_member, scope: !227, file: !223, line: 16, baseType: !231, size: 32)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !227, file: !223, line: 16, size: 32, elements: !232)
!232 = !{!233, !234}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !231, file: !223, line: 18, baseType: !128, size: 8)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !231, file: !223, line: 19, baseType: !235, size: 24, offset: 8)
!235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 24, elements: !236)
!236 = !{!237}
!237 = !DISubrange(count: 3)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !224, file: !223, line: 26, baseType: !112, size: 32, offset: 32)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !214, file: !6, line: 950, baseType: !240, size: 64, offset: 64)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !12, line: 59, size: 768, elements: !242)
!242 = !{!243, !249, !250, !251, !264, !265, !272, !273}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !241, file: !12, line: 61, baseType: !244, size: 32)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !245, line: 113, baseType: !246)
!245 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !245, line: 111, size: 32, elements: !247)
!247 = !{!248}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !246, file: !245, line: 112, baseType: !120, size: 32)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !241, file: !12, line: 62, baseType: !7, size: 32, offset: 32)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !241, file: !12, line: 63, baseType: !199, size: 32, offset: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !241, file: !12, line: 65, baseType: !252, size: 256, offset: 128)
!252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !253, size: 256, elements: !262)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !71, line: 194, size: 64, elements: !254)
!254 = !{!255}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !253, file: !71, line: 195, baseType: !256, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !71, line: 198, size: 128, elements: !258)
!258 = !{!259, !260}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !257, file: !71, line: 199, baseType: !256, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !257, file: !71, line: 199, baseType: !261, size: 64, offset: 64)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!262 = !{!263}
!263 = !DISubrange(count: 4)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !241, file: !12, line: 66, baseType: !253, size: 64, offset: 384)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !241, file: !12, line: 68, baseType: !266, size: 192, offset: 448)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !267, line: 41, baseType: !268)
!267 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !267, line: 37, size: 192, elements: !269)
!269 = !{!270, !271}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !268, file: !267, line: 38, baseType: !199, size: 32)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !268, file: !267, line: 39, baseType: !146, size: 128, offset: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !241, file: !12, line: 69, baseType: !189, size: 128, align: 64, offset: 640)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !241, file: !12, line: 70, baseType: !274, offset: 768)
!274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !275, elements: !281)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !12, line: 54, size: 128, elements: !276)
!276 = !{!277, !278}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !275, file: !12, line: 55, baseType: !67, size: 32)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !275, file: !12, line: 56, baseType: !279, size: 64, offset: 64)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !12, line: 56, flags: DIFlagFwdDecl)
!281 = !{!282}
!282 = !DISubrange(count: -1)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !214, file: !6, line: 951, baseType: !11, size: 32, offset: 128)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !214, file: !6, line: 952, baseType: !285, size: 32, offset: 160)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !286, line: 23, baseType: !287)
!286 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !286, line: 21, size: 32, elements: !288)
!288 = !{!289}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !287, file: !286, line: 22, baseType: !290, size: 32)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !71, line: 37, baseType: !291)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !73, line: 49, baseType: !7)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !214, file: !6, line: 952, baseType: !285, size: 32, offset: 192)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !214, file: !6, line: 953, baseType: !67, size: 32, offset: 224)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !177, file: !6, line: 1012, baseType: !295, size: 64, offset: 896)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !297)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !298, line: 110, size: 1472, elements: !299)
!298 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!299 = !{!300, !301, !302, !309, !310, !311, !312, !313, !314, !315, !316, !325, !326, !327, !328, !329, !330, !464, !465, !466, !467, !468, !499, !502, !506, !514}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !297, file: !298, line: 111, baseType: !96, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !297, file: !298, line: 112, baseType: !285, size: 32, offset: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !297, file: !298, line: 113, baseType: !303, size: 32, offset: 96)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !286, line: 28, baseType: !304)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !286, line: 26, size: 32, elements: !305)
!305 = !{!306}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !304, file: !286, line: 27, baseType: !307, size: 32)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !71, line: 38, baseType: !308)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !73, line: 50, baseType: !7)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !297, file: !298, line: 114, baseType: !285, size: 32, offset: 128)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !297, file: !298, line: 115, baseType: !303, size: 32, offset: 160)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !297, file: !298, line: 116, baseType: !285, size: 32, offset: 192)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !297, file: !298, line: 117, baseType: !303, size: 32, offset: 224)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !297, file: !298, line: 118, baseType: !285, size: 32, offset: 256)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !297, file: !298, line: 119, baseType: !303, size: 32, offset: 288)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !297, file: !298, line: 120, baseType: !7, size: 32, offset: 320)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !297, file: !298, line: 121, baseType: !317, size: 64, offset: 384)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !318, line: 24, baseType: !319)
!318 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !318, line: 24, size: 64, elements: !320)
!320 = !{!321}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !319, file: !318, line: 24, baseType: !322, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !103, line: 23, baseType: !323)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !105, line: 31, baseType: !324)
!324 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !297, file: !298, line: 122, baseType: !317, size: 64, offset: 448)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !297, file: !298, line: 123, baseType: !317, size: 64, offset: 512)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !297, file: !298, line: 124, baseType: !317, size: 64, offset: 576)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !297, file: !298, line: 125, baseType: !317, size: 64, offset: 640)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !297, file: !298, line: 127, baseType: !130, size: 8, offset: 704)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !297, file: !298, line: 129, baseType: !331, size: 64, offset: 768)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !333, line: 195, size: 1728, elements: !334)
!333 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!334 = !{!335, !336, !341, !353, !362, !365, !366, !373, !374, !375, !376, !381, !382, !383, !385, !386, !428, !449}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !332, file: !333, line: 196, baseType: !244, size: 32)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !332, file: !333, line: 197, baseType: !337, size: 32, offset: 32)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !333, line: 28, baseType: !338)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !71, line: 104, baseType: !339)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !103, line: 20, baseType: !340)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !105, line: 26, baseType: !67)
!341 = !DIDerivedType(tag: DW_TAG_member, scope: !332, file: !333, line: 198, baseType: !342, size: 192, offset: 64)
!342 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !332, file: !333, line: 198, size: 192, elements: !343)
!343 = !{!344, !345}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !342, file: !333, line: 199, baseType: !146, size: 128)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !342, file: !333, line: 200, baseType: !346, size: 192, align: 64)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !347, line: 5, size: 192, align: 64, elements: !348)
!347 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!348 = !{!349, !350, !352}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !346, file: !347, line: 6, baseType: !69, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !346, file: !347, line: 7, baseType: !351, size: 64, offset: 64)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !346, file: !347, line: 8, baseType: !351, size: 64, offset: 128)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !332, file: !333, line: 205, baseType: !354, size: 320, offset: 256)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !355, line: 48, size: 320, elements: !356)
!355 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!356 = !{!357, !358, !359, !360, !361}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !354, file: !355, line: 49, baseType: !96, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !354, file: !355, line: 55, baseType: !96, size: 64, offset: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !354, file: !355, line: 57, baseType: !141, size: 32, offset: 128)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !354, file: !355, line: 59, baseType: !107, size: 32, offset: 160)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !354, file: !355, line: 60, baseType: !146, size: 128, offset: 192)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !332, file: !333, line: 206, baseType: !363, size: 64, offset: 576)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !333, line: 206, flags: DIFlagFwdDecl)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !332, file: !333, line: 207, baseType: !66, size: 64, offset: 640)
!366 = !DIDerivedType(tag: DW_TAG_member, scope: !332, file: !333, line: 208, baseType: !367, size: 64, offset: 704)
!367 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !332, file: !333, line: 208, size: 64, elements: !368)
!368 = !{!369, !372}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !367, file: !333, line: 209, baseType: !370, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !371, line: 8, baseType: !104)
!371 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!372 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !367, file: !333, line: 210, baseType: !370, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !332, file: !333, line: 212, baseType: !370, size: 64, offset: 768)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !332, file: !333, line: 213, baseType: !285, size: 32, offset: 832)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !332, file: !333, line: 214, baseType: !303, size: 32, offset: 864)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !332, file: !333, line: 215, baseType: !377, size: 32, offset: 896)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !333, line: 31, baseType: !378)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !71, line: 110, baseType: !379)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !103, line: 21, baseType: !380)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !105, line: 27, baseType: !7)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !332, file: !333, line: 216, baseType: !138, size: 16, offset: 928)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !332, file: !333, line: 217, baseType: !138, size: 16, offset: 944)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !332, file: !333, line: 221, baseType: !384, size: 16, offset: 960)
!384 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !332, file: !333, line: 228, baseType: !69, size: 64, offset: 1024)
!386 = !DIDerivedType(tag: DW_TAG_member, scope: !332, file: !333, line: 245, baseType: !387, size: 320, offset: 1088)
!387 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !332, file: !333, line: 245, size: 320, elements: !388)
!388 = !{!389, !420}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !387, file: !333, line: 246, baseType: !390, size: 320)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !333, line: 114, size: 320, elements: !391)
!391 = !{!392, !393, !405, !408, !417}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !390, file: !333, line: 116, baseType: !69, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, scope: !390, file: !333, line: 117, baseType: !394, size: 64, offset: 64)
!394 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !390, file: !333, line: 117, size: 64, elements: !395)
!395 = !{!396, !404}
!396 = !DIDerivedType(tag: DW_TAG_member, scope: !394, file: !333, line: 118, baseType: !397, size: 64)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !394, file: !333, line: 118, size: 64, elements: !398)
!398 = !{!399, !400}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !397, file: !333, line: 120, baseType: !136, size: 16)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !397, file: !333, line: 121, baseType: !401, size: 48, offset: 16)
!401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 48, elements: !402)
!402 = !{!403}
!403 = !DISubrange(count: 6)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !394, file: !333, line: 127, baseType: !69, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !390, file: !333, line: 129, baseType: !406, size: 64, offset: 128)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !333, line: 102, flags: DIFlagFwdDecl)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !390, file: !333, line: 130, baseType: !409, size: 64, offset: 192)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !333, line: 108, size: 192, elements: !411)
!411 = !{!412, !413, !414}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !410, file: !333, line: 109, baseType: !189, size: 128, align: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !410, file: !333, line: 110, baseType: !244, size: 32, offset: 128)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !410, file: !333, line: 111, baseType: !415, size: 8, offset: 160)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !71, line: 35, baseType: !416)
!416 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !390, file: !333, line: 131, baseType: !418, size: 64, offset: 256)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !81)
!420 = !DIDerivedType(tag: DW_TAG_member, scope: !387, file: !333, line: 247, baseType: !421, size: 320)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !387, file: !333, line: 247, size: 320, elements: !422)
!422 = !{!423, !424, !425, !426, !427}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !421, file: !333, line: 248, baseType: !69, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !421, file: !333, line: 249, baseType: !69, size: 64, offset: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !421, file: !333, line: 250, baseType: !406, size: 64, offset: 128)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !421, file: !333, line: 251, baseType: !409, size: 64, offset: 192)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !421, file: !333, line: 252, baseType: !80, size: 64, offset: 256)
!428 = !DIDerivedType(tag: DW_TAG_member, scope: !332, file: !333, line: 260, baseType: !429, size: 256, offset: 1408)
!429 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !332, file: !333, line: 260, size: 256, elements: !430)
!430 = !{!431, !437}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !429, file: !333, line: 261, baseType: !432, size: 256)
!432 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !333, line: 134, size: 256, elements: !433)
!433 = !{!434, !435}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !432, file: !333, line: 135, baseType: !66, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !432, file: !333, line: 136, baseType: !436, size: 256)
!436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 256, elements: !262)
!437 = !DIDerivedType(tag: DW_TAG_member, scope: !429, file: !333, line: 262, baseType: !438, size: 256)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !429, file: !333, line: 262, size: 256, elements: !439)
!439 = !{!440, !441}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !438, file: !333, line: 264, baseType: !146, size: 128)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !438, file: !333, line: 265, baseType: !442, size: 128, offset: 128)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !443, line: 22, size: 128, elements: !444)
!443 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!444 = !{!445, !448}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !442, file: !443, line: 23, baseType: !446, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !443, line: 23, flags: DIFlagFwdDecl)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !442, file: !443, line: 24, baseType: !69, size: 64, offset: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !332, file: !333, line: 280, baseType: !450, size: 64, offset: 1664)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !333, line: 176, size: 192, elements: !452)
!452 = !{!453, !462, !463}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !451, file: !333, line: 177, baseType: !454, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !333, line: 171, baseType: !455)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DISubroutineType(types: !457)
!457 = !{!67, !331, !458, !460, !331}
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !407)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !432)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !451, file: !333, line: 178, baseType: !331, size: 64, offset: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !451, file: !333, line: 179, baseType: !406, size: 64, offset: 128)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !297, file: !298, line: 130, baseType: !331, size: 64, offset: 832)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !297, file: !298, line: 131, baseType: !331, size: 64, offset: 896)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !297, file: !298, line: 132, baseType: !331, size: 64, offset: 960)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !297, file: !298, line: 135, baseType: !66, size: 64, offset: 1024)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !297, file: !298, line: 137, baseType: !469, size: 64, offset: 1088)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !471, line: 14, size: 1088, elements: !472)
!471 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!472 = !{!473, !474, !483, !484, !485, !486, !487, !488}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !470, file: !471, line: 15, baseType: !244, size: 32)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !470, file: !471, line: 17, baseType: !475, size: 320, offset: 64)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !476, line: 22, size: 320, elements: !477)
!476 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!477 = !{!478, !479, !480, !481}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !475, file: !476, line: 23, baseType: !107, size: 32)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !475, file: !476, line: 24, baseType: !102, size: 64, offset: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !475, file: !476, line: 26, baseType: !146, size: 128, offset: 128)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !475, file: !476, line: 28, baseType: !482, size: 64, offset: 256)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !470, file: !471, line: 19, baseType: !69, size: 64, offset: 384)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !470, file: !471, line: 20, baseType: !96, size: 64, offset: 448)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !470, file: !471, line: 23, baseType: !257, size: 128, offset: 512)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !470, file: !471, line: 24, baseType: !285, size: 32, offset: 640)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !470, file: !471, line: 29, baseType: !96, size: 64, offset: 704)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !470, file: !471, line: 36, baseType: !489, size: 320, offset: 768)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !490, line: 15, size: 320, elements: !491)
!490 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!491 = !{!492, !493, !494, !495, !496, !497, !498}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !489, file: !490, line: 16, baseType: !107, size: 32)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !489, file: !490, line: 18, baseType: !67, size: 32, offset: 32)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !489, file: !490, line: 19, baseType: !67, size: 32, offset: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !489, file: !490, line: 20, baseType: !67, size: 32, offset: 96)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !489, file: !490, line: 21, baseType: !67, size: 32, offset: 128)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !489, file: !490, line: 22, baseType: !69, size: 64, offset: 192)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !489, file: !490, line: 23, baseType: !69, size: 64, offset: 256)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !297, file: !298, line: 138, baseType: !500, size: 64, offset: 1152)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !286, line: 18, flags: DIFlagFwdDecl)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !297, file: !298, line: 139, baseType: !503, size: 64, offset: 1216)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !505, line: 16, flags: DIFlagFwdDecl)
!505 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!506 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !297, file: !298, line: 140, baseType: !507, size: 64, offset: 1280)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !298, line: 25, size: 64, elements: !509)
!509 = !{!510, !511, !512}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !508, file: !298, line: 26, baseType: !120, size: 32)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !508, file: !298, line: 27, baseType: !67, size: 32, offset: 32)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !508, file: !298, line: 28, baseType: !513, offset: 64)
!513 = !DICompositeType(tag: DW_TAG_array_type, baseType: !303, elements: !281)
!514 = !DIDerivedType(tag: DW_TAG_member, scope: !297, file: !298, line: 142, baseType: !515, size: 128, offset: 1344)
!515 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !297, file: !298, line: 142, size: 128, elements: !516)
!516 = !{!517, !518}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !515, file: !298, line: 143, baseType: !67, size: 32)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !515, file: !298, line: 144, baseType: !189, size: 128, align: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !177, file: !6, line: 1013, baseType: !520, size: 256, offset: 960)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !6, line: 970, size: 256, elements: !521)
!521 = !{!522, !523, !524, !525, !526, !527}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !520, file: !6, line: 971, baseType: !69, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !520, file: !6, line: 972, baseType: !7, size: 32, offset: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !520, file: !6, line: 973, baseType: !7, size: 32, offset: 96)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !520, file: !6, line: 974, baseType: !7, size: 32, offset: 128)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !520, file: !6, line: 975, baseType: !7, size: 32, offset: 160)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !520, file: !6, line: 976, baseType: !87, size: 64, offset: 192)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !177, file: !6, line: 1014, baseType: !529, size: 128, offset: 1216)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !530, line: 8, size: 128, elements: !531)
!530 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!531 = !{!532, !3288}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !529, file: !530, line: 9, baseType: !533, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !535, line: 70, size: 256, elements: !536)
!535 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!536 = !{!537, !3285, !3286, !3287}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !534, file: !535, line: 71, baseType: !538, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !540, line: 82, size: 1536, elements: !541)
!540 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!541 = !{!542, !543, !553, !561, !562, !577, !3252, !3254, !3267, !3268, !3269, !3270, !3271, !3277, !3278, !3279}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !539, file: !540, line: 84, baseType: !7, size: 32)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !539, file: !540, line: 85, baseType: !544, size: 32, offset: 32)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !545, line: 275, baseType: !546)
!545 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !545, line: 275, size: 32, elements: !547)
!547 = !{!548}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !546, file: !545, line: 275, baseType: !549, size: 32)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !545, line: 69, baseType: !550)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !545, line: 64, size: 32, elements: !551)
!551 = !{!552}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !550, file: !545, line: 65, baseType: !7, size: 32)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !539, file: !540, line: 86, baseType: !554, size: 128, offset: 64)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !555, line: 38, size: 128, elements: !556)
!555 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!556 = !{!557, !559}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !554, file: !555, line: 39, baseType: !558, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !554, file: !555, line: 39, baseType: !560, size: 64, offset: 64)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !539, file: !540, line: 87, baseType: !538, size: 64, offset: 192)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !539, file: !540, line: 88, baseType: !563, size: 128, offset: 256)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !540, line: 49, size: 128, elements: !564)
!564 = !{!565, !574}
!565 = !DIDerivedType(tag: DW_TAG_member, scope: !563, file: !540, line: 50, baseType: !566, size: 64)
!566 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !563, file: !540, line: 50, size: 64, elements: !567)
!567 = !{!568, !573}
!568 = !DIDerivedType(tag: DW_TAG_member, scope: !566, file: !540, line: 51, baseType: !569, size: 64)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !566, file: !540, line: 51, size: 64, elements: !570)
!570 = !{!571, !572}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !569, file: !540, line: 52, baseType: !379, size: 32)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !569, file: !540, line: 52, baseType: !379, size: 32, offset: 32)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !566, file: !540, line: 54, baseType: !322, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !563, file: !540, line: 56, baseType: !575, size: 64, offset: 64)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !130)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !539, file: !540, line: 89, baseType: !578, size: 64, offset: 384)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !6, line: 641, size: 4800, elements: !580)
!580 = !{!581, !583, !584, !585, !586, !587, !588, !591, !592, !788, !3011, !3012, !3013, !3014, !3020, !3021, !3022, !3023, !3024, !3025, !3026, !3027, !3028, !3029, !3030, !3031, !3032, !3033, !3034, !3035, !3036, !3037, !3038, !3043, !3044, !3045, !3046, !3047, !3048, !3049, !3234, !3237, !3238, !3239, !3248, !3249, !3250, !3251}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !579, file: !6, line: 642, baseType: !582, size: 16)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !71, line: 24, baseType: !138)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !579, file: !6, line: 643, baseType: !138, size: 16, offset: 16)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !579, file: !6, line: 644, baseType: !285, size: 32, offset: 32)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !579, file: !6, line: 645, baseType: !146, size: 128, offset: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !579, file: !6, line: 646, baseType: !303, size: 32, offset: 192)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !579, file: !6, line: 647, baseType: !7, size: 32, offset: 224)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !579, file: !6, line: 650, baseType: !589, size: 64, offset: 256)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !6, line: 607, flags: DIFlagFwdDecl)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !579, file: !6, line: 651, baseType: !589, size: 64, offset: 320)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !579, file: !6, line: 654, baseType: !593, size: 64, offset: 384)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !595)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !6, line: 1966, size: 2048, align: 512, elements: !596)
!596 = !{!597, !601, !614, !620, !624, !628, !632, !636, !640, !644, !648, !649, !655, !659, !698, !729, !736, !742, !746, !750, !754, !758, !762, !768, !772}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !595, file: !6, line: 1967, baseType: !598, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DISubroutineType(types: !600)
!600 = !{!538, !578, !538, !7}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !595, file: !6, line: 1968, baseType: !602, size: 64, offset: 64)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DISubroutineType(types: !604)
!604 = !{!418, !538, !578, !605}
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !607, line: 10, size: 128, elements: !608)
!607 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!608 = !{!609, !613}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !606, file: !607, line: 11, baseType: !610, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DISubroutineType(types: !612)
!612 = !{null, !66}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !606, file: !607, line: 12, baseType: !66, size: 64, offset: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !595, file: !6, line: 1969, baseType: !615, size: 64, offset: 128)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = !DISubroutineType(types: !617)
!617 = !{!67, !618, !578, !67}
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !318, line: 42, flags: DIFlagFwdDecl)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !595, file: !6, line: 1970, baseType: !621, size: 64, offset: 192)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DISubroutineType(types: !623)
!623 = !{!589, !578, !67, !415}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !595, file: !6, line: 1972, baseType: !625, size: 64, offset: 256)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DISubroutineType(types: !627)
!627 = !{!67, !538, !80, !67}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !595, file: !6, line: 1974, baseType: !629, size: 64, offset: 320)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DISubroutineType(types: !631)
!631 = !{!67, !618, !578, !538, !582, !415}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !595, file: !6, line: 1976, baseType: !633, size: 64, offset: 384)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DISubroutineType(types: !635)
!635 = !{!67, !538, !578, !538}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !595, file: !6, line: 1977, baseType: !637, size: 64, offset: 448)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DISubroutineType(types: !639)
!639 = !{!67, !578, !538}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !595, file: !6, line: 1978, baseType: !641, size: 64, offset: 512)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DISubroutineType(types: !643)
!643 = !{!67, !618, !578, !538, !418}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !595, file: !6, line: 1980, baseType: !645, size: 64, offset: 576)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DISubroutineType(types: !647)
!647 = !{!67, !618, !578, !538, !582}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !595, file: !6, line: 1982, baseType: !637, size: 64, offset: 640)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !595, file: !6, line: 1983, baseType: !650, size: 64, offset: 704)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = !DISubroutineType(types: !652)
!652 = !{!67, !618, !578, !538, !582, !653}
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !71, line: 21, baseType: !654)
!654 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !71, line: 18, baseType: !379)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !595, file: !6, line: 1985, baseType: !656, size: 64, offset: 768)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DISubroutineType(types: !658)
!658 = !{!67, !618, !578, !538, !578, !538, !7}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !595, file: !6, line: 1987, baseType: !660, size: 64, offset: 832)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = !DISubroutineType(types: !662)
!662 = !{!67, !618, !538, !663}
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !6, line: 226, size: 640, elements: !665)
!665 = !{!666, !667, !668, !678, !687, !688, !694, !695, !696}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !664, file: !6, line: 227, baseType: !7, size: 32)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !664, file: !6, line: 228, baseType: !582, size: 16, offset: 32)
!668 = !DIDerivedType(tag: DW_TAG_member, scope: !664, file: !6, line: 241, baseType: !669, size: 32, offset: 64)
!669 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !664, file: !6, line: 241, size: 32, elements: !670)
!670 = !{!671, !672}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !669, file: !6, line: 242, baseType: !285, size: 32)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !669, file: !6, line: 243, baseType: !673, size: 32)
!673 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !674, line: 16, baseType: !675)
!674 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !674, line: 14, size: 32, elements: !676)
!676 = !{!677}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !675, file: !674, line: 15, baseType: !290, size: 32)
!678 = !DIDerivedType(tag: DW_TAG_member, scope: !664, file: !6, line: 245, baseType: !679, size: 32, offset: 96)
!679 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !664, file: !6, line: 245, size: 32, elements: !680)
!680 = !{!681, !682}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !679, file: !6, line: 246, baseType: !303, size: 32)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !679, file: !6, line: 247, baseType: !683, size: 32)
!683 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !674, line: 20, baseType: !684)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !674, line: 18, size: 32, elements: !685)
!685 = !{!686}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !684, file: !674, line: 19, baseType: !307, size: 32)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !664, file: !6, line: 249, baseType: !87, size: 64, offset: 128)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !664, file: !6, line: 250, baseType: !689, size: 128, offset: 192)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !371, line: 13, size: 128, elements: !690)
!690 = !{!691, !692}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !689, file: !371, line: 14, baseType: !370, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !689, file: !371, line: 15, baseType: !693, size: 64, offset: 64)
!693 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !664, file: !6, line: 251, baseType: !689, size: 128, offset: 320)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !664, file: !6, line: 252, baseType: !689, size: 128, offset: 448)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !664, file: !6, line: 259, baseType: !697, size: 64, offset: 576)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !595, file: !6, line: 1988, baseType: !699, size: 64, offset: 896)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DISubroutineType(types: !701)
!701 = !{!67, !618, !702, !704, !379, !7}
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !529)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !706, line: 22, size: 1280, elements: !707)
!706 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!707 = !{!708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !705, file: !706, line: 23, baseType: !379, size: 32)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !705, file: !706, line: 24, baseType: !582, size: 16, offset: 32)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !705, file: !706, line: 25, baseType: !7, size: 32, offset: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !705, file: !706, line: 26, baseType: !378, size: 32, offset: 96)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !705, file: !706, line: 27, baseType: !322, size: 64, offset: 128)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !705, file: !706, line: 28, baseType: !322, size: 64, offset: 192)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !705, file: !706, line: 41, baseType: !322, size: 64, offset: 256)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !705, file: !706, line: 42, baseType: !653, size: 32, offset: 320)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !705, file: !706, line: 43, baseType: !653, size: 32, offset: 352)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !705, file: !706, line: 44, baseType: !285, size: 32, offset: 384)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !705, file: !706, line: 45, baseType: !303, size: 32, offset: 416)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !705, file: !706, line: 46, baseType: !87, size: 64, offset: 448)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !705, file: !706, line: 47, baseType: !689, size: 128, offset: 512)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !705, file: !706, line: 48, baseType: !689, size: 128, offset: 640)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !705, file: !706, line: 49, baseType: !689, size: 128, offset: 768)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !705, file: !706, line: 50, baseType: !689, size: 128, offset: 896)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !705, file: !706, line: 51, baseType: !322, size: 64, offset: 1024)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !705, file: !706, line: 52, baseType: !322, size: 64, offset: 1088)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !705, file: !706, line: 53, baseType: !379, size: 32, offset: 1152)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !705, file: !706, line: 54, baseType: !379, size: 32, offset: 1184)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !705, file: !706, line: 55, baseType: !322, size: 64, offset: 1216)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !595, file: !6, line: 1990, baseType: !730, size: 64, offset: 960)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DISubroutineType(types: !732)
!732 = !{!733, !538, !80, !70}
!733 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !71, line: 66, baseType: !734)
!734 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !73, line: 73, baseType: !735)
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !73, line: 15, baseType: !693)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !595, file: !6, line: 1991, baseType: !737, size: 64, offset: 1024)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = !DISubroutineType(types: !739)
!739 = !{!67, !578, !740, !322, !322}
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !6, line: 55, flags: DIFlagFwdDecl)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !595, file: !6, line: 1993, baseType: !743, size: 64, offset: 1088)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DISubroutineType(types: !745)
!745 = !{!67, !578, !67}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !595, file: !6, line: 1994, baseType: !747, size: 64, offset: 1152)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DISubroutineType(types: !749)
!749 = !{!67, !578, !538, !697, !7, !582}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !595, file: !6, line: 1997, baseType: !751, size: 64, offset: 1216)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DISubroutineType(types: !753)
!753 = !{!67, !618, !578, !697, !582}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !595, file: !6, line: 1999, baseType: !755, size: 64, offset: 1280)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DISubroutineType(types: !757)
!757 = !{!589, !618, !538, !67}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !595, file: !6, line: 2001, baseType: !759, size: 64, offset: 1344)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DISubroutineType(types: !761)
!761 = !{!67, !618, !538, !589, !67}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !595, file: !6, line: 2003, baseType: !763, size: 64, offset: 1408)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = !DISubroutineType(types: !765)
!765 = !{!67, !618, !538, !766}
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !6, line: 76, flags: DIFlagFwdDecl)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !595, file: !6, line: 2005, baseType: !769, size: 64, offset: 1472)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DISubroutineType(types: !771)
!771 = !{!67, !538, !766}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !595, file: !6, line: 2006, baseType: !773, size: 64, offset: 1536)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DISubroutineType(types: !775)
!775 = !{!776, !578}
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !6, line: 3192, size: 192, elements: !778)
!778 = !{!779, !787}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !777, file: !6, line: 3193, baseType: !780, size: 128)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !781, line: 296, size: 128, elements: !782)
!781 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!782 = !{!783, !784, !786}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !780, file: !781, line: 297, baseType: !199, size: 32)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !780, file: !781, line: 299, baseType: !785, size: 32, offset: 32)
!785 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !71, line: 154, baseType: !7)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !780, file: !781, line: 300, baseType: !66, size: 64, offset: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !777, file: !6, line: 3194, baseType: !379, size: 32, offset: 128)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !579, file: !6, line: 655, baseType: !789, size: 64, offset: 448)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !6, line: 1190, size: 10752, elements: !791)
!791 = !{!792, !793, !794, !795, !796, !797, !839, !974, !1014, !1097, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1114, !1118, !1119, !1122, !1125, !1128, !1131, !1132, !1133, !1174, !2884, !2885, !2886, !2887, !2888, !2889, !2892, !2894, !2901, !2902, !2903, !2904, !2963, !2978, !2979, !2980, !2981, !2982, !2985, !2986, !2987, !3002, !3003, !3004, !3005, !3006, !3007, !3008, !3009, !3010}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !790, file: !6, line: 1191, baseType: !146, size: 128)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !790, file: !6, line: 1192, baseType: !653, size: 32, offset: 128)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !790, file: !6, line: 1193, baseType: !130, size: 8, offset: 160)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !790, file: !6, line: 1194, baseType: !69, size: 64, offset: 192)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !790, file: !6, line: 1195, baseType: !87, size: 64, offset: 256)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !790, file: !6, line: 1196, baseType: !798, size: 64, offset: 320)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !6, line: 2366, size: 576, elements: !800)
!800 = !{!801, !802, !803, !809, !813, !817, !821, !825, !826, !827, !831, !832, !833, !835, !836, !837, !838}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !799, file: !6, line: 2367, baseType: !418, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !799, file: !6, line: 2368, baseType: !67, size: 32, offset: 64)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !799, file: !6, line: 2376, baseType: !804, size: 64, offset: 128)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DISubroutineType(types: !806)
!806 = !{!67, !807}
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !535, line: 21, flags: DIFlagFwdDecl)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !799, file: !6, line: 2377, baseType: !810, size: 64, offset: 192)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !812)
!812 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !6, line: 75, flags: DIFlagFwdDecl)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !799, file: !6, line: 2378, baseType: !814, size: 64, offset: 256)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = !DISubroutineType(types: !816)
!816 = !{!538, !798, !67, !418, !66}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !799, file: !6, line: 2380, baseType: !818, size: 64, offset: 320)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DISubroutineType(types: !820)
!820 = !{null, !789}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !799, file: !6, line: 2381, baseType: !822, size: 64, offset: 384)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !824, line: 196, flags: DIFlagFwdDecl)
!824 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!825 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !799, file: !6, line: 2382, baseType: !798, size: 64, offset: 448)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !799, file: !6, line: 2383, baseType: !253, size: 64, offset: 512)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !799, file: !6, line: 2385, baseType: !828, offset: 576)
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !829, line: 206, elements: !830)
!829 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!830 = !{}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !799, file: !6, line: 2386, baseType: !828, offset: 576)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !799, file: !6, line: 2387, baseType: !828, offset: 576)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !799, file: !6, line: 2388, baseType: !834, offset: 576)
!834 = !DICompositeType(tag: DW_TAG_array_type, baseType: !828, elements: !236)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !799, file: !6, line: 2390, baseType: !828, offset: 576)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !799, file: !6, line: 2391, baseType: !828, offset: 576)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !799, file: !6, line: 2392, baseType: !828, offset: 576)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !799, file: !6, line: 2393, baseType: !828, offset: 576)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !790, file: !6, line: 1197, baseType: !840, size: 64, offset: 384)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !842)
!842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !6, line: 2057, size: 1664, elements: !843)
!843 = !{!844, !848, !852, !853, !857, !863, !867, !868, !869, !873, !877, !881, !882, !883, !889, !894, !895, !899, !900, !901, !902, !906, !910, !957, !972, !973}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !842, file: !6, line: 2058, baseType: !845, size: 64)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DISubroutineType(types: !847)
!847 = !{!578, !789}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !842, file: !6, line: 2059, baseType: !849, size: 64, offset: 64)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DISubroutineType(types: !851)
!851 = !{null, !578}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !842, file: !6, line: 2060, baseType: !849, size: 64, offset: 128)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !842, file: !6, line: 2062, baseType: !854, size: 64, offset: 192)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DISubroutineType(types: !856)
!856 = !{null, !578, !67}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !842, file: !6, line: 2063, baseType: !858, size: 64, offset: 256)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DISubroutineType(types: !860)
!860 = !{!67, !578, !861}
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !6, line: 309, flags: DIFlagFwdDecl)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !842, file: !6, line: 2064, baseType: !864, size: 64, offset: 320)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DISubroutineType(types: !866)
!866 = !{!67, !578}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !842, file: !6, line: 2065, baseType: !849, size: 64, offset: 384)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !842, file: !6, line: 2066, baseType: !818, size: 64, offset: 448)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !842, file: !6, line: 2067, baseType: !870, size: 64, offset: 512)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DISubroutineType(types: !872)
!872 = !{!67, !789, !67}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !842, file: !6, line: 2068, baseType: !874, size: 64, offset: 576)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = !DISubroutineType(types: !876)
!876 = !{!67, !789, !5}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !842, file: !6, line: 2069, baseType: !878, size: 64, offset: 640)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DISubroutineType(types: !880)
!880 = !{!67, !789}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !842, file: !6, line: 2070, baseType: !874, size: 64, offset: 704)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !842, file: !6, line: 2071, baseType: !878, size: 64, offset: 768)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !842, file: !6, line: 2072, baseType: !884, size: 64, offset: 832)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = !DISubroutineType(types: !886)
!886 = !{!67, !538, !887}
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !6, line: 62, flags: DIFlagFwdDecl)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !842, file: !6, line: 2073, baseType: !890, size: 64, offset: 896)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DISubroutineType(types: !892)
!892 = !{!67, !789, !893, !80}
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !842, file: !6, line: 2074, baseType: !818, size: 64, offset: 960)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !842, file: !6, line: 2076, baseType: !896, size: 64, offset: 1024)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DISubroutineType(types: !898)
!898 = !{!67, !75, !538}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !842, file: !6, line: 2077, baseType: !896, size: 64, offset: 1088)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !842, file: !6, line: 2078, baseType: !896, size: 64, offset: 1152)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !842, file: !6, line: 2079, baseType: !896, size: 64, offset: 1216)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !842, file: !6, line: 2081, baseType: !903, size: 64, offset: 1280)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = !DISubroutineType(types: !905)
!905 = !{!733, !789, !67, !80, !70, !87}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !842, file: !6, line: 2082, baseType: !907, size: 64, offset: 1344)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DISubroutineType(types: !909)
!909 = !{!733, !789, !67, !418, !70, !87}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !842, file: !6, line: 2083, baseType: !911, size: 64, offset: 1408)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DISubroutineType(types: !913)
!913 = !{!914, !578}
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !27, line: 296, size: 1664, elements: !917)
!917 = !{!918, !919, !920, !921, !922, !923, !924, !925, !926, !942, !943, !944}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !916, file: !27, line: 297, baseType: !257, size: 128)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !916, file: !27, line: 298, baseType: !146, size: 128, offset: 128)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !916, file: !27, line: 299, baseType: !146, size: 128, offset: 256)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !916, file: !27, line: 300, baseType: !146, size: 128, offset: 384)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !916, file: !27, line: 301, baseType: !92, size: 256, offset: 512)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !916, file: !27, line: 302, baseType: !199, size: 32, offset: 768)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !916, file: !27, line: 303, baseType: !120, size: 32, offset: 800)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !916, file: !27, line: 304, baseType: !789, size: 64, offset: 832)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !916, file: !27, line: 305, baseType: !927, size: 64, offset: 896)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !27, line: 68, size: 64, elements: !928)
!928 = !{!929, !941}
!929 = !DIDerivedType(tag: DW_TAG_member, scope: !927, file: !27, line: 69, baseType: !930, size: 32)
!930 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !927, file: !27, line: 69, size: 32, elements: !931)
!931 = !{!932, !933, !934}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !930, file: !27, line: 70, baseType: !285, size: 32)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !930, file: !27, line: 71, baseType: !303, size: 32)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !930, file: !27, line: 72, baseType: !935, size: 32)
!935 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !936, line: 24, baseType: !937)
!936 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!937 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !936, line: 22, size: 32, elements: !938)
!938 = !{!939}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !937, file: !936, line: 23, baseType: !940, size: 32)
!940 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !936, line: 20, baseType: !291)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !927, file: !27, line: 74, baseType: !26, size: 32, offset: 32)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !916, file: !27, line: 306, baseType: !87, size: 64, offset: 960)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !916, file: !27, line: 307, baseType: !69, size: 64, offset: 1024)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !916, file: !27, line: 308, baseType: !945, size: 576, offset: 1088)
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !27, line: 205, size: 576, elements: !946)
!946 = !{!947, !949, !950, !951, !952, !953, !954, !955, !956}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !945, file: !27, line: 206, baseType: !948, size: 64)
!948 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !27, line: 66, baseType: !89)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !945, file: !27, line: 207, baseType: !948, size: 64, offset: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !945, file: !27, line: 208, baseType: !948, size: 64, offset: 128)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !945, file: !27, line: 209, baseType: !948, size: 64, offset: 192)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !945, file: !27, line: 210, baseType: !948, size: 64, offset: 256)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !945, file: !27, line: 211, baseType: !948, size: 64, offset: 320)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !945, file: !27, line: 212, baseType: !948, size: 64, offset: 384)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !945, file: !27, line: 213, baseType: !370, size: 64, offset: 448)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !945, file: !27, line: 214, baseType: !370, size: 64, offset: 512)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !842, file: !6, line: 2085, baseType: !958, size: 64, offset: 1472)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DISubroutineType(types: !960)
!960 = !{!693, !789, !961}
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !963, line: 15, size: 256, elements: !964)
!963 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!964 = !{!965, !966, !967, !968, !969}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !962, file: !963, line: 16, baseType: !785, size: 32)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !962, file: !963, line: 19, baseType: !67, size: 32, offset: 32)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !962, file: !963, line: 26, baseType: !69, size: 64, offset: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !962, file: !963, line: 33, baseType: !69, size: 64, offset: 128)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !962, file: !963, line: 36, baseType: !970, size: 64, offset: 192)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !963, line: 36, flags: DIFlagFwdDecl)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !842, file: !6, line: 2087, baseType: !958, size: 64, offset: 1536)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !842, file: !6, line: 2089, baseType: !818, size: 64, offset: 1600)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !790, file: !6, line: 1198, baseType: !975, size: 64, offset: 448)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !977)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !27, line: 324, size: 704, elements: !978)
!978 = !{!979, !983, !987, !991, !992, !993, !994, !995, !1000, !1005, !1009}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !977, file: !27, line: 325, baseType: !980, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = !DISubroutineType(types: !982)
!982 = !{!67, !915}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !977, file: !27, line: 326, baseType: !984, size: 64, offset: 64)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = !DISubroutineType(types: !986)
!986 = !{!915, !789, !67}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !977, file: !27, line: 327, baseType: !988, size: 64, offset: 128)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DISubroutineType(types: !990)
!990 = !{null, !915}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !977, file: !27, line: 328, baseType: !980, size: 64, offset: 192)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !977, file: !27, line: 329, baseType: !980, size: 64, offset: 256)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !977, file: !27, line: 330, baseType: !980, size: 64, offset: 320)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !977, file: !27, line: 331, baseType: !870, size: 64, offset: 384)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !977, file: !27, line: 334, baseType: !996, size: 64, offset: 448)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = !DISubroutineType(types: !998)
!998 = !{!999, !578}
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !977, file: !27, line: 335, baseType: !1001, size: 64, offset: 512)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = !DISubroutineType(types: !1003)
!1003 = !{!67, !578, !1004}
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !977, file: !27, line: 337, baseType: !1006, size: 64, offset: 576)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = !DISubroutineType(types: !1008)
!1008 = !{!67, !578, !999}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !977, file: !27, line: 339, baseType: !1010, size: 64, offset: 640)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{!67, !789, !1013}
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !790, file: !6, line: 1199, baseType: !1015, size: 64, offset: 512)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1017)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !27, line: 430, size: 704, elements: !1018)
!1018 = !{!1019, !1023, !1024, !1028, !1029, !1030, !1045, !1068, !1072, !1073, !1096}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1017, file: !27, line: 431, baseType: !1020, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = !DISubroutineType(types: !1022)
!1022 = !{!67, !789, !67, !67, !702}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1017, file: !27, line: 432, baseType: !870, size: 64, offset: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1017, file: !27, line: 433, baseType: !1025, size: 64, offset: 128)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{!67, !789, !7}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1017, file: !27, line: 434, baseType: !1025, size: 64, offset: 192)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1017, file: !27, line: 435, baseType: !870, size: 64, offset: 256)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1017, file: !27, line: 436, baseType: !1031, size: 64, offset: 320)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DISubroutineType(types: !1033)
!1033 = !{!67, !789, !67, !1034}
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !27, line: 417, size: 256, elements: !1036)
!1036 = !{!1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1035, file: !27, line: 418, baseType: !67, size: 32)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1035, file: !27, line: 419, baseType: !7, size: 32, offset: 32)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1035, file: !27, line: 420, baseType: !7, size: 32, offset: 64)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1035, file: !27, line: 422, baseType: !7, size: 32, offset: 96)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1035, file: !27, line: 423, baseType: !7, size: 32, offset: 128)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1035, file: !27, line: 424, baseType: !7, size: 32, offset: 160)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1035, file: !27, line: 425, baseType: !7, size: 32, offset: 192)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1035, file: !27, line: 426, baseType: !7, size: 32, offset: 224)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1017, file: !27, line: 437, baseType: !1046, size: 64, offset: 384)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!67, !789, !927, !1049}
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !27, line: 345, size: 960, elements: !1051)
!1051 = !{!1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1050, file: !27, line: 346, baseType: !67, size: 32)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1050, file: !27, line: 347, baseType: !322, size: 64, offset: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1050, file: !27, line: 348, baseType: !322, size: 64, offset: 128)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1050, file: !27, line: 349, baseType: !322, size: 64, offset: 192)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1050, file: !27, line: 350, baseType: !322, size: 64, offset: 256)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1050, file: !27, line: 351, baseType: !322, size: 64, offset: 320)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1050, file: !27, line: 352, baseType: !322, size: 64, offset: 384)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1050, file: !27, line: 353, baseType: !102, size: 64, offset: 448)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1050, file: !27, line: 355, baseType: !102, size: 64, offset: 512)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1050, file: !27, line: 356, baseType: !67, size: 32, offset: 576)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1050, file: !27, line: 357, baseType: !67, size: 32, offset: 608)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1050, file: !27, line: 358, baseType: !322, size: 64, offset: 640)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1050, file: !27, line: 359, baseType: !322, size: 64, offset: 704)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1050, file: !27, line: 360, baseType: !322, size: 64, offset: 768)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1050, file: !27, line: 361, baseType: !102, size: 64, offset: 832)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1050, file: !27, line: 362, baseType: !67, size: 32, offset: 896)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1017, file: !27, line: 438, baseType: !1069, size: 64, offset: 448)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = !DISubroutineType(types: !1071)
!1071 = !{!67, !789, !1013, !1049}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1017, file: !27, line: 440, baseType: !1046, size: 64, offset: 512)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1017, file: !27, line: 441, baseType: !1074, size: 64, offset: 576)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{!67, !789, !1077}
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !27, line: 411, size: 1408, elements: !1079)
!1079 = !{!1080, !1081}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1078, file: !27, line: 412, baseType: !7, size: 32)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1078, file: !27, line: 413, baseType: !1082, size: 1344, offset: 64)
!1082 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1083, size: 1344, elements: !236)
!1083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !27, line: 397, size: 448, elements: !1084)
!1084 = !{!1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1095}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1083, file: !27, line: 398, baseType: !7, size: 32)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1083, file: !27, line: 399, baseType: !7, size: 32, offset: 32)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1083, file: !27, line: 401, baseType: !7, size: 32, offset: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1083, file: !27, line: 402, baseType: !7, size: 32, offset: 96)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1083, file: !27, line: 403, baseType: !7, size: 32, offset: 128)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1083, file: !27, line: 404, baseType: !7, size: 32, offset: 160)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1083, file: !27, line: 405, baseType: !7, size: 32, offset: 192)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1083, file: !27, line: 406, baseType: !324, size: 64, offset: 256)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1083, file: !27, line: 407, baseType: !1094, size: 64, offset: 320)
!1094 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !71, line: 132, baseType: !322)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1083, file: !27, line: 408, baseType: !1094, size: 64, offset: 384)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1017, file: !27, line: 442, baseType: !1025, size: 64, offset: 640)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !790, file: !6, line: 1200, baseType: !1098, size: 64, offset: 576)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1100)
!1100 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !6, line: 54, flags: DIFlagFwdDecl)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !790, file: !6, line: 1201, baseType: !69, size: 64, offset: 640)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !790, file: !6, line: 1202, baseType: !69, size: 64, offset: 704)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !790, file: !6, line: 1203, baseType: !69, size: 64, offset: 768)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !790, file: !6, line: 1204, baseType: !538, size: 64, offset: 832)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !790, file: !6, line: 1205, baseType: !354, size: 320, offset: 896)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !790, file: !6, line: 1206, baseType: !67, size: 32, offset: 1216)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !790, file: !6, line: 1207, baseType: !120, size: 32, offset: 1248)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !790, file: !6, line: 1209, baseType: !66, size: 64, offset: 1280)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !790, file: !6, line: 1211, baseType: !1110, size: 64, offset: 1344)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1113)
!1113 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !6, line: 1211, flags: DIFlagFwdDecl)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !790, file: !6, line: 1223, baseType: !1115, size: 64, offset: 1408)
!1115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !555, line: 34, size: 64, elements: !1116)
!1116 = !{!1117}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1115, file: !555, line: 35, baseType: !558, size: 64)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !790, file: !6, line: 1224, baseType: !146, size: 128, offset: 1472)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !790, file: !6, line: 1225, baseType: !1120, size: 64, offset: 1600)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !6, line: 1225, flags: DIFlagFwdDecl)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !790, file: !6, line: 1226, baseType: !1123, size: 64, offset: 1664)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !6, line: 1226, flags: DIFlagFwdDecl)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !790, file: !6, line: 1227, baseType: !1126, size: 64, offset: 1728)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !6, line: 50, flags: DIFlagFwdDecl)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !790, file: !6, line: 1228, baseType: !1129, size: 64, offset: 1792)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !6, line: 1228, flags: DIFlagFwdDecl)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !790, file: !6, line: 1229, baseType: !257, size: 128, offset: 1856)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !790, file: !6, line: 1230, baseType: !7, size: 32, offset: 1984)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !790, file: !6, line: 1231, baseType: !1134, size: 2496, offset: 2048)
!1134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !27, line: 521, size: 2496, elements: !1135)
!1135 = !{!1136, !1137, !1138, !1140, !1172}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1134, file: !27, line: 522, baseType: !7, size: 32)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1134, file: !27, line: 523, baseType: !354, size: 320, offset: 64)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1134, file: !27, line: 524, baseType: !1139, size: 192, offset: 384)
!1139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !578, size: 192, elements: !236)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1134, file: !27, line: 525, baseType: !1141, size: 1728, offset: 576)
!1141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1142, size: 1728, elements: !236)
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !27, line: 222, size: 576, elements: !1143)
!1143 = !{!1144, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1142, file: !27, line: 223, baseType: !1145, size: 64)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !27, line: 445, size: 256, elements: !1147)
!1147 = !{!1148, !1149, !1162, !1163}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1146, file: !27, line: 446, baseType: !67, size: 32)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1146, file: !27, line: 447, baseType: !1150, size: 64, offset: 64)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1152)
!1152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !27, line: 312, size: 512, elements: !1153)
!1153 = !{!1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1152, file: !27, line: 313, baseType: !870, size: 64)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1152, file: !27, line: 314, baseType: !870, size: 64, offset: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1152, file: !27, line: 315, baseType: !870, size: 64, offset: 128)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1152, file: !27, line: 316, baseType: !870, size: 64, offset: 192)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1152, file: !27, line: 317, baseType: !980, size: 64, offset: 256)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1152, file: !27, line: 318, baseType: !980, size: 64, offset: 320)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1152, file: !27, line: 319, baseType: !980, size: 64, offset: 384)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1152, file: !27, line: 320, baseType: !1010, size: 64, offset: 448)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1146, file: !27, line: 448, baseType: !822, size: 64, offset: 128)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1146, file: !27, line: 449, baseType: !1145, size: 64, offset: 192)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1142, file: !27, line: 224, baseType: !67, size: 32, offset: 64)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1142, file: !27, line: 226, baseType: !146, size: 128, offset: 128)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1142, file: !27, line: 227, baseType: !69, size: 64, offset: 256)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1142, file: !27, line: 228, baseType: !7, size: 32, offset: 320)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1142, file: !27, line: 229, baseType: !7, size: 32, offset: 352)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1142, file: !27, line: 230, baseType: !948, size: 64, offset: 384)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1142, file: !27, line: 231, baseType: !948, size: 64, offset: 448)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1142, file: !27, line: 232, baseType: !66, size: 64, offset: 512)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1134, file: !27, line: 526, baseType: !1173, size: 192, offset: 2304)
!1173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1150, size: 192, elements: !236)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !790, file: !6, line: 1233, baseType: !1175, size: 2368, offset: 4544)
!1175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !6, line: 1184, size: 2368, elements: !1176)
!1176 = !{!1177, !1178, !1179}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1175, file: !6, line: 1185, baseType: !138, size: 16)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1175, file: !6, line: 1186, baseType: !138, size: 16, offset: 16)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1175, file: !6, line: 1187, baseType: !1180, size: 2304, offset: 64)
!1180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1181, size: 2304, elements: !236)
!1181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1182, line: 12, size: 768, elements: !1183)
!1182 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1183 = !{!1184, !1192, !1194, !2882, !2883}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1181, file: !1182, line: 13, baseType: !1185, size: 384)
!1185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1186, line: 17, size: 384, elements: !1187)
!1186 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1187 = !{!1188, !1189, !1190, !1191}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1185, file: !1186, line: 18, baseType: !67, size: 32)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1185, file: !1186, line: 19, baseType: !67, size: 32, offset: 32)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1185, file: !1186, line: 20, baseType: !266, size: 192, offset: 64)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1185, file: !1186, line: 22, baseType: !189, size: 128, align: 64, offset: 256)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1181, file: !1182, line: 14, baseType: !1193, size: 64, offset: 384)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1181, file: !1182, line: 15, baseType: !1195, size: 64, offset: 448)
!1195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1196, line: 16, size: 64, elements: !1197)
!1196 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1197 = !{!1198}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1195, file: !1196, line: 17, baseType: !1199, size: 64)
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1201, line: 746, size: 58368, elements: !1202)
!1201 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1202 = !{!1203, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1283, !1294, !1389, !1393, !1396, !1427, !1428, !1429, !1430, !1441, !1443, !1444, !1445, !1446, !1447, !1448, !1459, !1460, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1477, !1478, !1485, !1486, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1711, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1726, !1727, !1728, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1770, !1776, !1777, !1778, !1779, !1780, !1784, !1787, !1794, !1799, !1802, !1805, !1808, !1811, !1951, !1982, !1983, !1984, !1985, !1986, !1987, !1988, !1989, !1990, !1993, !1994, !1995, !2004, !2012, !2013, !2014, !2015, !2016, !2021, !2022, !2023, !2026, !2027, !2030, !2033, !2036, !2044, !2047, !2048, !2134, !2135, !2136, !2137, !2138, !2144, !2145, !2146, !2147, !2150, !2151, !2154, !2168, !2169, !2172, !2173, !2174, !2177, !2178, !2179, !2182, !2183, !2184, !2197, !2198, !2199, !2200, !2201, !2202, !2203, !2204, !2205, !2216, !2219, !2538, !2541, !2542, !2543, !2544, !2545, !2546, !2547, !2550, !2622, !2624, !2625, !2626, !2627, !2628, !2640, !2643, !2644, !2645, !2646, !2647, !2648, !2649, !2650, !2651, !2652, !2653, !2657, !2658, !2659}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1200, file: !1201, line: 752, baseType: !1204, size: 192)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1205, line: 56, size: 192, elements: !1206)
!1205 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1206 = !{!1207, !1208, !1209, !1210}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1204, file: !1205, line: 57, baseType: !69, size: 64)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1204, file: !1205, line: 58, baseType: !69, size: 64, offset: 64)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1204, file: !1205, line: 59, baseType: !379, size: 32, offset: 128)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1204, file: !1205, line: 61, baseType: !379, size: 32, offset: 160)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1200, file: !1201, line: 754, baseType: !7, size: 32, offset: 192)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1200, file: !1201, line: 767, baseType: !66, size: 64, offset: 256)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1200, file: !1201, line: 768, baseType: !244, size: 32, offset: 320)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1200, file: !1201, line: 770, baseType: !7, size: 32, offset: 352)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1200, file: !1201, line: 771, baseType: !7, size: 32, offset: 384)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1200, file: !1201, line: 774, baseType: !67, size: 32, offset: 416)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1200, file: !1201, line: 775, baseType: !1218, size: 128, offset: 448)
!1218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1219, line: 58, size: 128, elements: !1220)
!1219 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1220 = !{!1221, !1222, !1227, !1228}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1218, file: !1219, line: 59, baseType: !183, size: 64)
!1222 = !DIDerivedType(tag: DW_TAG_member, scope: !1218, file: !1219, line: 60, baseType: !1223, size: 32, offset: 64)
!1223 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1218, file: !1219, line: 60, size: 32, elements: !1224)
!1224 = !{!1225, !1226}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1223, file: !1219, line: 61, baseType: !7, size: 32)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1223, file: !1219, line: 62, baseType: !120, size: 32)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1218, file: !1219, line: 65, baseType: !136, size: 16, offset: 96)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1218, file: !1219, line: 65, baseType: !136, size: 16, offset: 112)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1200, file: !1201, line: 776, baseType: !7, size: 32, offset: 576)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1200, file: !1201, line: 777, baseType: !69, size: 64, offset: 640)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1200, file: !1201, line: 778, baseType: !1199, size: 64, offset: 704)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1200, file: !1201, line: 787, baseType: !67, size: 32, offset: 768)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1200, file: !1201, line: 788, baseType: !67, size: 32, offset: 800)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1200, file: !1201, line: 790, baseType: !67, size: 32, offset: 832)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1200, file: !1201, line: 792, baseType: !67, size: 32, offset: 864)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1200, file: !1201, line: 793, baseType: !67, size: 32, offset: 896)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1200, file: !1201, line: 794, baseType: !67, size: 32, offset: 928)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1200, file: !1201, line: 795, baseType: !7, size: 32, offset: 960)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1200, file: !1201, line: 797, baseType: !1240, size: 2048, offset: 1024)
!1240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1201, line: 551, size: 2048, elements: !1241)
!1241 = !{!1242, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1262, !1265, !1266, !1267}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1240, file: !1201, line: 553, baseType: !1243, size: 128)
!1243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1201, line: 411, size: 128, elements: !1244)
!1244 = !{!1245, !1246}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1243, file: !1201, line: 412, baseType: !69, size: 64)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1243, file: !1201, line: 413, baseType: !379, size: 32, offset: 64)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1240, file: !1201, line: 554, baseType: !346, size: 192, align: 64, offset: 128)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1240, file: !1201, line: 555, baseType: !322, size: 64, offset: 320)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1240, file: !1201, line: 556, baseType: !322, size: 64, offset: 384)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1240, file: !1201, line: 558, baseType: !146, size: 128, offset: 448)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1240, file: !1201, line: 559, baseType: !7, size: 32, offset: 576)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1240, file: !1201, line: 561, baseType: !322, size: 64, offset: 640)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1240, file: !1201, line: 562, baseType: !322, size: 64, offset: 704)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1240, file: !1201, line: 563, baseType: !322, size: 64, offset: 768)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1240, file: !1201, line: 564, baseType: !322, size: 64, offset: 832)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1240, file: !1201, line: 565, baseType: !102, size: 64, offset: 896)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1240, file: !1201, line: 566, baseType: !322, size: 64, offset: 960)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1240, file: !1201, line: 568, baseType: !322, size: 64, offset: 1024)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1240, file: !1201, line: 571, baseType: !67, size: 32, offset: 1088)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1240, file: !1201, line: 572, baseType: !1261, size: 64, offset: 1152)
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1240, file: !1201, line: 574, baseType: !1263, size: 64, offset: 1216)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1264 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1201, line: 49, flags: DIFlagFwdDecl)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1240, file: !1201, line: 576, baseType: !1263, size: 64, offset: 1280)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1240, file: !1201, line: 578, baseType: !69, size: 64, offset: 1344)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1240, file: !1201, line: 588, baseType: !1268, size: 512, align: 512, offset: 1536)
!1268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1201, line: 497, size: 512, align: 512, elements: !1269)
!1269 = !{!1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1268, file: !1201, line: 498, baseType: !322, size: 64)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1268, file: !1201, line: 499, baseType: !322, size: 64, offset: 64)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1268, file: !1201, line: 500, baseType: !322, size: 64, offset: 128)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1268, file: !1201, line: 501, baseType: !379, size: 32, offset: 192)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1268, file: !1201, line: 502, baseType: !379, size: 32, offset: 224)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1268, file: !1201, line: 503, baseType: !69, size: 64, offset: 256)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1268, file: !1201, line: 504, baseType: !69, size: 64, offset: 320)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1268, file: !1201, line: 505, baseType: !69, size: 64, offset: 384)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1268, file: !1201, line: 506, baseType: !1279, size: 64, align: 64, offset: 448)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1201, line: 445, size: 64, align: 64, elements: !1280)
!1280 = !{!1281, !1282}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1279, file: !1201, line: 446, baseType: !7, size: 32)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1279, file: !1201, line: 447, baseType: !7, size: 32, offset: 32)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1200, file: !1201, line: 798, baseType: !1284, size: 384, offset: 3072)
!1284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1201, line: 592, size: 384, elements: !1285)
!1285 = !{!1286, !1287, !1288, !1289, !1290, !1291, !1292}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1284, file: !1201, line: 593, baseType: !146, size: 128)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1284, file: !1201, line: 594, baseType: !69, size: 64, offset: 128)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1284, file: !1201, line: 595, baseType: !69, size: 64, offset: 192)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1284, file: !1201, line: 596, baseType: !7, size: 32, offset: 256)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1284, file: !1201, line: 597, baseType: !138, size: 16, offset: 288)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1284, file: !1201, line: 598, baseType: !138, size: 16, offset: 304)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1284, file: !1201, line: 600, baseType: !1293, size: 64, offset: 320)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1200, file: !1201, line: 799, baseType: !1295, size: 1792, offset: 3456)
!1295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1201, line: 610, size: 1792, elements: !1296)
!1296 = !{!1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1386, !1387}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1295, file: !1201, line: 611, baseType: !346, size: 192, align: 64)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1295, file: !1201, line: 618, baseType: !322, size: 64, offset: 192)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1295, file: !1201, line: 619, baseType: !322, size: 64, offset: 256)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1295, file: !1201, line: 620, baseType: !322, size: 64, offset: 320)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1295, file: !1201, line: 621, baseType: !322, size: 64, offset: 384)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1295, file: !1201, line: 622, baseType: !322, size: 64, offset: 448)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1295, file: !1201, line: 629, baseType: !102, size: 64, offset: 512)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1295, file: !1201, line: 630, baseType: !322, size: 64, offset: 576)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1295, file: !1201, line: 631, baseType: !7, size: 32, offset: 640)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1295, file: !1201, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1295, file: !1201, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1295, file: !1201, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1295, file: !1201, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1295, file: !1201, line: 662, baseType: !1311, size: 512, offset: 704)
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !33, line: 118, size: 512, elements: !1312)
!1312 = !{!1313, !1321, !1322, !1327, !1382, !1383, !1384, !1385}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1311, file: !33, line: 119, baseType: !1314, size: 256)
!1314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1315, line: 9, size: 256, elements: !1316)
!1315 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1316 = !{!1317, !1318}
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1314, file: !1315, line: 10, baseType: !346, size: 192, align: 64)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1314, file: !1315, line: 11, baseType: !1319, size: 64, offset: 192)
!1319 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1320, line: 29, baseType: !102)
!1320 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1311, file: !33, line: 120, baseType: !1319, size: 64, offset: 256)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1311, file: !33, line: 121, baseType: !1323, size: 64, offset: 320)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = !DISubroutineType(types: !1325)
!1325 = !{!32, !1326}
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1311, file: !33, line: 122, baseType: !1328, size: 64, offset: 384)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !33, line: 159, size: 512, align: 512, elements: !1330)
!1330 = !{!1331, !1356, !1357, !1360, !1365, !1366, !1377, !1381}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1329, file: !33, line: 160, baseType: !1332, size: 64)
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !33, line: 215, size: 4608, align: 512, elements: !1334)
!1334 = !{!1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1333, file: !33, line: 216, baseType: !107, size: 32)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1333, file: !33, line: 217, baseType: !7, size: 32, offset: 32)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1333, file: !33, line: 218, baseType: !7, size: 32, offset: 64)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1333, file: !33, line: 219, baseType: !7, size: 32, offset: 96)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1333, file: !33, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1333, file: !33, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1333, file: !33, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1333, file: !33, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1333, file: !33, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1333, file: !33, line: 226, baseType: !7, size: 32, offset: 160)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1333, file: !33, line: 227, baseType: !138, size: 16, offset: 192)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1333, file: !33, line: 228, baseType: !138, size: 16, offset: 208)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1333, file: !33, line: 229, baseType: !7, size: 32, offset: 224)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1333, file: !33, line: 235, baseType: !1319, size: 64, offset: 256)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1333, file: !33, line: 236, baseType: !1326, size: 64, offset: 320)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1333, file: !33, line: 237, baseType: !1319, size: 64, offset: 384)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1333, file: !33, line: 238, baseType: !1326, size: 64, offset: 448)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1333, file: !33, line: 239, baseType: !1353, size: 4096, align: 512, offset: 512)
!1353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1329, size: 4096, align: 512, elements: !1354)
!1354 = !{!1355}
!1355 = !DISubrange(count: 8)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1329, file: !33, line: 161, baseType: !7, size: 32, offset: 64)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1329, file: !33, line: 162, baseType: !1358, size: 32, offset: 96)
!1358 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !71, line: 32, baseType: !1359)
!1359 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !73, line: 96, baseType: !67)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1329, file: !33, line: 163, baseType: !1361, size: 32, offset: 128)
!1361 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !545, line: 274, baseType: !1362)
!1362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !545, line: 274, size: 32, elements: !1363)
!1363 = !{!1364}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1362, file: !545, line: 274, baseType: !549, size: 32)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1329, file: !33, line: 164, baseType: !1326, size: 64, offset: 192)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1329, file: !33, line: 165, baseType: !1367, size: 128, offset: 256)
!1367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1315, line: 14, size: 128, elements: !1368)
!1368 = !{!1369}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1367, file: !1315, line: 15, baseType: !1370, size: 128)
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !347, line: 26, size: 128, elements: !1371)
!1371 = !{!1372, !1376}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1370, file: !347, line: 27, baseType: !1373, size: 64)
!1373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !347, line: 12, size: 64, elements: !1374)
!1374 = !{!1375}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1373, file: !347, line: 13, baseType: !351, size: 64)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1370, file: !347, line: 28, baseType: !351, size: 64, offset: 64)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1329, file: !33, line: 166, baseType: !1378, size: 64, offset: 384)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = !DISubroutineType(types: !1380)
!1380 = !{!1319}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1329, file: !33, line: 167, baseType: !1319, size: 64, offset: 448)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1311, file: !33, line: 123, baseType: !128, size: 8, offset: 448)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1311, file: !33, line: 124, baseType: !128, size: 8, offset: 456)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1311, file: !33, line: 125, baseType: !128, size: 8, offset: 464)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1311, file: !33, line: 126, baseType: !128, size: 8, offset: 472)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1295, file: !1201, line: 671, baseType: !1311, size: 512, offset: 1216)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1295, file: !1201, line: 679, baseType: !1388, size: 64, offset: 1728)
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1200, file: !1201, line: 800, baseType: !1390, size: 64, offset: 5248)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1392)
!1392 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1201, line: 800, flags: DIFlagFwdDecl)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1200, file: !1201, line: 809, baseType: !1394, size: 64, offset: 5312)
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1201, line: 70, flags: DIFlagFwdDecl)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1200, file: !1201, line: 825, baseType: !1397, size: 2048, align: 512, offset: 5632)
!1397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1201, line: 509, size: 2048, align: 512, elements: !1398)
!1398 = !{!1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1397, file: !1201, line: 511, baseType: !322, size: 64)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1397, file: !1201, line: 512, baseType: !322, size: 64, offset: 64)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1397, file: !1201, line: 513, baseType: !322, size: 64, offset: 128)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1397, file: !1201, line: 514, baseType: !322, size: 64, offset: 192)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1397, file: !1201, line: 515, baseType: !322, size: 64, offset: 256)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1397, file: !1201, line: 516, baseType: !322, size: 64, offset: 320)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1397, file: !1201, line: 518, baseType: !322, size: 64, offset: 384)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1397, file: !1201, line: 519, baseType: !322, size: 64, offset: 448)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1397, file: !1201, line: 520, baseType: !102, size: 64, offset: 512)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1397, file: !1201, line: 522, baseType: !322, size: 64, offset: 576)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1397, file: !1201, line: 523, baseType: !322, size: 64, offset: 640)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1397, file: !1201, line: 524, baseType: !102, size: 64, offset: 704)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1397, file: !1201, line: 526, baseType: !102, size: 64, offset: 768)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1397, file: !1201, line: 527, baseType: !322, size: 64, offset: 832)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1397, file: !1201, line: 529, baseType: !322, size: 64, offset: 896)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1397, file: !1201, line: 530, baseType: !322, size: 64, offset: 960)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1397, file: !1201, line: 531, baseType: !322, size: 64, offset: 1024)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1397, file: !1201, line: 532, baseType: !322, size: 64, offset: 1088)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1397, file: !1201, line: 533, baseType: !322, size: 64, offset: 1152)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1397, file: !1201, line: 535, baseType: !322, size: 64, offset: 1216)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1397, file: !1201, line: 536, baseType: !322, size: 64, offset: 1280)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1397, file: !1201, line: 537, baseType: !322, size: 64, offset: 1344)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1397, file: !1201, line: 538, baseType: !322, size: 64, offset: 1408)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1397, file: !1201, line: 539, baseType: !322, size: 64, offset: 1472)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1397, file: !1201, line: 540, baseType: !322, size: 64, offset: 1536)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1397, file: !1201, line: 541, baseType: !322, size: 64, offset: 1600)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1397, file: !1201, line: 542, baseType: !322, size: 64, offset: 1664)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1397, file: !1201, line: 543, baseType: !322, size: 64, offset: 1728)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1200, file: !1201, line: 833, baseType: !7, size: 32, offset: 7680)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1200, file: !1201, line: 836, baseType: !7, size: 32, offset: 7712)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1200, file: !1201, line: 837, baseType: !67, size: 32, offset: 7744)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1200, file: !1201, line: 838, baseType: !1431, size: 64, offset: 7808)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1433)
!1433 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1434, line: 19, baseType: !1435)
!1434 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1434, line: 19, size: 64, elements: !1436)
!1436 = !{!1437}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1435, file: !1434, line: 19, baseType: !1438, size: 64)
!1438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 64, elements: !1439)
!1439 = !{!1440}
!1440 = !DISubrange(count: 1)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1200, file: !1201, line: 839, baseType: !1442, size: 64, offset: 7872)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1200, file: !1201, line: 840, baseType: !1433, size: 64, offset: 7936)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1200, file: !1201, line: 841, baseType: !66, size: 64, offset: 8000)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1200, file: !1201, line: 843, baseType: !138, size: 16, offset: 8064)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1200, file: !1201, line: 845, baseType: !138, size: 16, offset: 8080)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1200, file: !1201, line: 848, baseType: !67, size: 32, offset: 8096)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1200, file: !1201, line: 849, baseType: !1449, size: 32, offset: 8128)
!1449 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1201, line: 718, size: 32, elements: !1450)
!1450 = !{!1451, !1458}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1449, file: !1201, line: 724, baseType: !1452, size: 32)
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1449, file: !1201, line: 719, size: 32, elements: !1453)
!1453 = !{!1454, !1455, !1456, !1457}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1452, file: !1201, line: 720, baseType: !128, size: 8)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1452, file: !1201, line: 721, baseType: !128, size: 8, offset: 8)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1452, file: !1201, line: 722, baseType: !128, size: 8, offset: 16)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1452, file: !1201, line: 723, baseType: !128, size: 8, offset: 24)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1449, file: !1201, line: 725, baseType: !379, size: 32)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1200, file: !1201, line: 850, baseType: !146, size: 128, offset: 8192)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1200, file: !1201, line: 851, baseType: !1461, size: 64, offset: 8320)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1201, line: 60, flags: DIFlagFwdDecl)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1200, file: !1201, line: 855, baseType: !69, size: 64, offset: 8384)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1200, file: !1201, line: 856, baseType: !128, size: 8, offset: 8448)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1200, file: !1201, line: 857, baseType: !128, size: 8, offset: 8456)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1200, file: !1201, line: 858, baseType: !67, size: 32, offset: 8480)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1200, file: !1201, line: 859, baseType: !146, size: 128, offset: 8512)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1200, file: !1201, line: 860, baseType: !67, size: 32, offset: 8640)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1200, file: !1201, line: 861, baseType: !146, size: 128, offset: 8704)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1200, file: !1201, line: 873, baseType: !1471, size: 256, offset: 8832)
!1471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1201, line: 376, size: 256, elements: !1472)
!1472 = !{!1473, !1474, !1475, !1476}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1471, file: !1201, line: 381, baseType: !69, size: 64)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1471, file: !1201, line: 384, baseType: !324, size: 64, offset: 64)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1471, file: !1201, line: 389, baseType: !324, size: 64, offset: 128)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1471, file: !1201, line: 392, baseType: !324, size: 64, offset: 192)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1200, file: !1201, line: 875, baseType: !146, size: 128, offset: 9088)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1200, file: !1201, line: 877, baseType: !1479, size: 320, offset: 9216)
!1479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1480, line: 86, size: 320, elements: !1481)
!1480 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1481 = !{!1482, !1483, !1484}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1479, file: !1480, line: 87, baseType: !67, size: 32)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1479, file: !1480, line: 88, baseType: !146, size: 128, offset: 64)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1479, file: !1480, line: 89, baseType: !146, size: 128, offset: 192)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1200, file: !1201, line: 878, baseType: !346, size: 192, align: 64, offset: 9536)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1200, file: !1201, line: 881, baseType: !1487, size: 64, offset: 9728)
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !1489, line: 733, size: 10240, elements: !1490)
!1489 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!1490 = !{!1491, !1630}
!1491 = !DIDerivedType(tag: DW_TAG_member, scope: !1488, file: !1489, line: 734, baseType: !1492, size: 10240)
!1492 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1488, file: !1489, line: 734, size: 10240, elements: !1493)
!1493 = !{!1494, !1498, !1511, !1515, !1516, !1517, !1518, !1519, !1520, !1529, !1530, !1531, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1570, !1572, !1575, !1599, !1600, !1601, !1604, !1605, !1606, !1609, !1610, !1611, !1617, !1618}
!1494 = !DIDerivedType(tag: DW_TAG_member, scope: !1492, file: !1489, line: 739, baseType: !1495, size: 512, align: 512)
!1495 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1492, file: !1489, line: 739, size: 512, align: 512, elements: !1496)
!1496 = !{!1497}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1495, file: !1489, line: 747, baseType: !120, size: 32)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1492, file: !1489, line: 750, baseType: !1499, size: 128, offset: 512)
!1499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1500, line: 218, size: 128, elements: !1501)
!1500 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1501 = !{!1502, !1509, !1510}
!1502 = !DIDerivedType(tag: DW_TAG_member, scope: !1499, file: !1500, line: 219, baseType: !1503, size: 32)
!1503 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1499, file: !1500, line: 219, size: 32, elements: !1504)
!1504 = !{!1505, !1506}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1503, file: !1500, line: 220, baseType: !199, size: 32)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1503, file: !1500, line: 221, baseType: !1507)
!1507 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1500, line: 197, baseType: !1508)
!1508 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1500, line: 197, elements: !830)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1499, file: !1500, line: 223, baseType: !7, size: 32, offset: 32)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1499, file: !1500, line: 224, baseType: !66, size: 64, offset: 64)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1492, file: !1489, line: 752, baseType: !1512, size: 64, offset: 640)
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!1513 = !DISubroutineType(types: !1514)
!1514 = !{!69, !697, !69, !69, !69, !69}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1492, file: !1489, line: 756, baseType: !69, size: 64, offset: 704)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1492, file: !1489, line: 757, baseType: !69, size: 64, offset: 768)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1492, file: !1489, line: 760, baseType: !69, size: 64, offset: 832)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1492, file: !1489, line: 761, baseType: !69, size: 64, offset: 896)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1492, file: !1489, line: 763, baseType: !69, size: 64, offset: 960)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1492, file: !1489, line: 764, baseType: !1521, size: 64, offset: 1024)
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64)
!1522 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1523, line: 299, baseType: !1524)
!1523 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1524 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1523, line: 299, size: 64, elements: !1525)
!1525 = !{!1526}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1524, file: !1523, line: 299, baseType: !1527, size: 64)
!1527 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1528, line: 18, baseType: !69)
!1528 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1492, file: !1489, line: 773, baseType: !120, size: 32, offset: 1088)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1492, file: !1489, line: 785, baseType: !120, size: 32, offset: 1120)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1492, file: !1489, line: 795, baseType: !1532, size: 64, offset: 1152)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !1489, line: 726, size: 128, elements: !1534)
!1534 = !{!1535, !1536}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1533, file: !1489, line: 727, baseType: !322, size: 64)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1533, file: !1489, line: 728, baseType: !67, size: 32, offset: 64)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1492, file: !1489, line: 801, baseType: !69, size: 64, offset: 1216)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1492, file: !1489, line: 804, baseType: !96, size: 64, offset: 1280)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1492, file: !1489, line: 806, baseType: !67, size: 32, offset: 1344)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1492, file: !1489, line: 808, baseType: !199, size: 32, offset: 1376)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1492, file: !1489, line: 823, baseType: !354, size: 320, offset: 1408)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1492, file: !1489, line: 825, baseType: !146, size: 128, offset: 1728)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1492, file: !1489, line: 845, baseType: !67, size: 32, offset: 1856)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1492, file: !1489, line: 849, baseType: !69, size: 64, offset: 1920)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1492, file: !1489, line: 850, baseType: !69, size: 64, offset: 1984)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1492, file: !1489, line: 852, baseType: !69, size: 64, offset: 2048)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1492, file: !1489, line: 853, baseType: !69, size: 64, offset: 2112)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1492, file: !1489, line: 854, baseType: !98, size: 64, offset: 2176)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1492, file: !1489, line: 855, baseType: !69, size: 64, offset: 2240)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1492, file: !1489, line: 856, baseType: !69, size: 64, offset: 2304)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1492, file: !1489, line: 857, baseType: !69, size: 64, offset: 2368)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1492, file: !1489, line: 858, baseType: !69, size: 64, offset: 2432)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1492, file: !1489, line: 865, baseType: !549, size: 32, offset: 2496)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1492, file: !1489, line: 867, baseType: !199, size: 32, offset: 2528)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1492, file: !1489, line: 869, baseType: !69, size: 64, offset: 2560)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1492, file: !1489, line: 869, baseType: !69, size: 64, offset: 2624)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1492, file: !1489, line: 869, baseType: !69, size: 64, offset: 2688)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1492, file: !1489, line: 869, baseType: !69, size: 64, offset: 2752)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1492, file: !1489, line: 870, baseType: !69, size: 64, offset: 2816)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1492, file: !1489, line: 870, baseType: !69, size: 64, offset: 2880)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1492, file: !1489, line: 870, baseType: !69, size: 64, offset: 2944)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1492, file: !1489, line: 871, baseType: !69, size: 64, offset: 3008)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1492, file: !1489, line: 871, baseType: !69, size: 64, offset: 3072)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1492, file: !1489, line: 871, baseType: !69, size: 64, offset: 3136)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1492, file: !1489, line: 871, baseType: !69, size: 64, offset: 3200)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1492, file: !1489, line: 873, baseType: !1567, size: 3328, offset: 3264)
!1567 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 3328, elements: !1568)
!1568 = !{!1569}
!1569 = !DISubrange(count: 52)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1492, file: !1489, line: 875, baseType: !1571, size: 1280, offset: 6592)
!1571 = !DICompositeType(tag: DW_TAG_array_type, baseType: !475, size: 1280, elements: !262)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1492, file: !1489, line: 877, baseType: !1573, size: 64, offset: 7872)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !1489, line: 877, flags: DIFlagFwdDecl)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1492, file: !1489, line: 880, baseType: !1576, size: 1088, offset: 7936)
!1576 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1577, line: 72, baseType: !1578)
!1577 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1578 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1577, line: 23, size: 1088, elements: !1579)
!1579 = !{!1580, !1581, !1582, !1583, !1584, !1587, !1588, !1589, !1590, !1594, !1595, !1596}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1578, file: !1577, line: 28, baseType: !322, size: 64)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1578, file: !1577, line: 38, baseType: !98, size: 64, offset: 64)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1578, file: !1577, line: 40, baseType: !69, size: 64, offset: 128)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1578, file: !1577, line: 43, baseType: !354, size: 320, offset: 192)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1578, file: !1577, line: 44, baseType: !1585, size: 64, offset: 512)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1577, line: 44, flags: DIFlagFwdDecl)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1578, file: !1577, line: 48, baseType: !69, size: 64, offset: 576)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1578, file: !1577, line: 59, baseType: !92, size: 256, offset: 640)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1578, file: !1577, line: 60, baseType: !66, size: 64, offset: 896)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1578, file: !1577, line: 61, baseType: !1591, size: 64, offset: 960)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1593)
!1593 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1577, line: 61, flags: DIFlagFwdDecl)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1578, file: !1577, line: 63, baseType: !120, size: 32, offset: 1024)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1578, file: !1577, line: 69, baseType: !136, size: 16, offset: 1056)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1578, file: !1577, line: 70, baseType: !1597, size: 16, offset: 1072)
!1597 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !103, line: 18, baseType: !1598)
!1598 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !105, line: 23, baseType: !384)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1492, file: !1489, line: 882, baseType: !69, size: 64, offset: 9024)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1492, file: !1489, line: 885, baseType: !199, size: 32, offset: 9088)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1492, file: !1489, line: 886, baseType: !1602, size: 64, offset: 9152)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !1489, line: 732, flags: DIFlagFwdDecl)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1492, file: !1489, line: 901, baseType: !500, size: 64, offset: 9216)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1492, file: !1489, line: 904, baseType: !697, size: 64, offset: 9280)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1492, file: !1489, line: 906, baseType: !1607, size: 64, offset: 9344)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !1489, line: 906, flags: DIFlagFwdDecl)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1492, file: !1489, line: 930, baseType: !120, size: 32, offset: 9408)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1492, file: !1489, line: 933, baseType: !120, size: 32, offset: 9440)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1492, file: !1489, line: 935, baseType: !1612, size: 64, offset: 9472)
!1612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !44, line: 103, size: 64, elements: !1613)
!1613 = !{!1614}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1612, file: !44, line: 104, baseType: !1615, size: 64)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !44, line: 101, flags: DIFlagFwdDecl)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1492, file: !1489, line: 940, baseType: !96, size: 64, offset: 9536)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1492, file: !1489, line: 942, baseType: !1619, size: 256, offset: 9600)
!1619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1620, line: 98, size: 256, elements: !1621)
!1620 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1621 = !{!1622, !1623, !1624}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1619, file: !1620, line: 99, baseType: !96, size: 64)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1619, file: !1620, line: 100, baseType: !146, size: 128, offset: 64)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1619, file: !1620, line: 101, baseType: !1625, size: 64, offset: 192)
!1625 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1620, line: 21, baseType: !1626)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = !DISubroutineType(types: !1628)
!1628 = !{null, !1629}
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1488, file: !1489, line: 986, baseType: !1631, offset: 10240)
!1631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, elements: !281)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1200, file: !1201, line: 882, baseType: !1487, size: 64, offset: 9792)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1200, file: !1201, line: 884, baseType: !67, size: 32, offset: 9856)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1200, file: !1201, line: 885, baseType: !67, size: 32, offset: 9888)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1200, file: !1201, line: 886, baseType: !67, size: 32, offset: 9920)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1200, file: !1201, line: 888, baseType: !67, size: 32, offset: 9952)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1200, file: !1201, line: 890, baseType: !69, size: 64, offset: 9984)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1200, file: !1201, line: 893, baseType: !7, size: 32, offset: 10048)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1200, file: !1201, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1200, file: !1201, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1200, file: !1201, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1200, file: !1201, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1200, file: !1201, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1200, file: !1201, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1200, file: !1201, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1200, file: !1201, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1200, file: !1201, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1200, file: !1201, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1200, file: !1201, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1200, file: !1201, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1200, file: !1201, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1200, file: !1201, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1200, file: !1201, line: 969, baseType: !69, size: 64, offset: 10176)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1200, file: !1201, line: 971, baseType: !1655, size: 448, offset: 10240)
!1655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !38, line: 25, size: 448, elements: !1656)
!1656 = !{!1657, !1658, !1663}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !1655, file: !38, line: 26, baseType: !69, size: 64)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1655, file: !38, line: 27, baseType: !1659, size: 64, offset: 64)
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1660, size: 64)
!1660 = !DISubroutineType(types: !1661)
!1661 = !{!693, !1662}
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1663 = !DIDerivedType(tag: DW_TAG_member, scope: !1655, file: !38, line: 28, baseType: !1664, size: 320, offset: 128)
!1664 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1655, file: !38, line: 28, size: 320, elements: !1665)
!1665 = !{!1666, !1676, !1701}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1664, file: !38, line: 37, baseType: !1667, size: 320)
!1667 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1664, file: !38, line: 30, size: 320, elements: !1668)
!1668 = !{!1669, !1671, !1672, !1673, !1674, !1675}
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1667, file: !38, line: 31, baseType: !1670, size: 64)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1667, file: !38, line: 32, baseType: !379, size: 32, offset: 64)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1667, file: !38, line: 33, baseType: !379, size: 32, offset: 96)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1667, file: !38, line: 34, baseType: !379, size: 32, offset: 128)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1667, file: !38, line: 35, baseType: !322, size: 64, offset: 192)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1667, file: !38, line: 36, baseType: !1670, size: 64, offset: 256)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1664, file: !38, line: 47, baseType: !1677, size: 192)
!1677 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1664, file: !38, line: 39, size: 192, elements: !1678)
!1678 = !{!1679, !1680, !1681, !1700}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1677, file: !38, line: 40, baseType: !1358, size: 32)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1677, file: !38, line: 41, baseType: !37, size: 32, offset: 32)
!1681 = !DIDerivedType(tag: DW_TAG_member, scope: !1677, file: !38, line: 42, baseType: !1682, size: 64, offset: 64)
!1682 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1677, file: !38, line: 42, size: 64, elements: !1683)
!1683 = !{!1684, !1692}
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1682, file: !38, line: 43, baseType: !1685, size: 64)
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1687, line: 7, size: 128, elements: !1688)
!1687 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!1688 = !{!1689, !1691}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1686, file: !1687, line: 8, baseType: !1690, size: 64)
!1690 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !73, line: 93, baseType: !89)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1686, file: !1687, line: 9, baseType: !89, size: 64, offset: 64)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1682, file: !38, line: 44, baseType: !1693, size: 64)
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1694, size: 64)
!1694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1695, line: 7, size: 64, elements: !1696)
!1695 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!1696 = !{!1697, !1699}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1694, file: !1695, line: 8, baseType: !1698, size: 32)
!1698 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1695, line: 5, baseType: !339)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1694, file: !1695, line: 9, baseType: !339, size: 32, offset: 32)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1677, file: !38, line: 46, baseType: !322, size: 64, offset: 128)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1664, file: !38, line: 55, baseType: !1702, size: 256)
!1702 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1664, file: !38, line: 49, size: 256, elements: !1703)
!1703 = !{!1704, !1707, !1708, !1709, !1710}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1702, file: !38, line: 50, baseType: !1705, size: 64)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !38, line: 14, flags: DIFlagFwdDecl)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1702, file: !38, line: 51, baseType: !67, size: 32, offset: 64)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1702, file: !38, line: 52, baseType: !67, size: 32, offset: 96)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1702, file: !38, line: 53, baseType: !69, size: 64, offset: 128)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1702, file: !38, line: 54, baseType: !69, size: 64, offset: 192)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1200, file: !1201, line: 973, baseType: !1712, size: 32, offset: 10688)
!1712 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !71, line: 27, baseType: !1713)
!1713 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !73, line: 28, baseType: !67)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1200, file: !1201, line: 974, baseType: !1712, size: 32, offset: 10720)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1200, file: !1201, line: 978, baseType: !69, size: 64, offset: 10752)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1200, file: !1201, line: 987, baseType: !1199, size: 64, offset: 10816)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1200, file: !1201, line: 990, baseType: !1199, size: 64, offset: 10880)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1200, file: !1201, line: 995, baseType: !146, size: 128, offset: 10944)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1200, file: !1201, line: 996, baseType: !146, size: 128, offset: 11072)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1200, file: !1201, line: 997, baseType: !1199, size: 64, offset: 11200)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1200, file: !1201, line: 1005, baseType: !146, size: 128, offset: 11264)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1200, file: !1201, line: 1006, baseType: !146, size: 128, offset: 11392)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1200, file: !1201, line: 1009, baseType: !240, size: 64, offset: 11520)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1200, file: !1201, line: 1010, baseType: !1725, size: 512, offset: 11584)
!1725 = !DICompositeType(tag: DW_TAG_array_type, baseType: !257, size: 512, elements: !262)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1200, file: !1201, line: 1011, baseType: !146, size: 128, offset: 12096)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1200, file: !1201, line: 1012, baseType: !146, size: 128, offset: 12224)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1200, file: !1201, line: 1014, baseType: !1729, size: 64, offset: 12352)
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1730, size: 64)
!1730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1731, line: 26, size: 256, elements: !1732)
!1731 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1732 = !{!1733, !1734}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1730, file: !1731, line: 27, baseType: !7, size: 32)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1730, file: !1731, line: 28, baseType: !1735, size: 192, offset: 64)
!1735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1736, line: 43, size: 192, elements: !1737)
!1736 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1737 = !{!1738, !1739}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1735, file: !1736, line: 44, baseType: !107, size: 32)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1735, file: !1736, line: 45, baseType: !146, size: 128, offset: 64)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1200, file: !1201, line: 1017, baseType: !893, size: 64, offset: 12416)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1200, file: !1201, line: 1020, baseType: !893, size: 64, offset: 12480)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1200, file: !1201, line: 1023, baseType: !66, size: 64, offset: 12544)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1200, file: !1201, line: 1025, baseType: !322, size: 64, offset: 12608)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1200, file: !1201, line: 1026, baseType: !322, size: 64, offset: 12672)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1200, file: !1201, line: 1031, baseType: !322, size: 64, offset: 12736)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1200, file: !1201, line: 1032, baseType: !1747, size: 192, offset: 12800)
!1747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1201, line: 324, size: 192, elements: !1748)
!1748 = !{!1749, !1750, !1751}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1747, file: !1201, line: 326, baseType: !322, size: 64)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1747, file: !1201, line: 327, baseType: !322, size: 64, offset: 64)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1747, file: !1201, line: 328, baseType: !107, size: 32, offset: 128)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1200, file: !1201, line: 1041, baseType: !69, size: 64, offset: 12992)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1200, file: !1201, line: 1042, baseType: !69, size: 64, offset: 13056)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1200, file: !1201, line: 1045, baseType: !322, size: 64, offset: 13120)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1200, file: !1201, line: 1048, baseType: !322, size: 64, offset: 13184)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1200, file: !1201, line: 1051, baseType: !69, size: 64, offset: 13248)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1200, file: !1201, line: 1052, baseType: !69, size: 64, offset: 13312)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1200, file: !1201, line: 1055, baseType: !1759, size: 640, offset: 13376)
!1759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1760, line: 132, size: 640, elements: !1761)
!1760 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!1761 = !{!1762, !1768, !1769}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1759, file: !1760, line: 133, baseType: !1763, size: 576)
!1763 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1764, size: 576, elements: !236)
!1764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1760, line: 117, size: 192, elements: !1765)
!1765 = !{!1766, !1767}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1764, file: !1760, line: 118, baseType: !322, size: 64)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1764, file: !1760, line: 119, baseType: !1367, size: 128, offset: 64)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1759, file: !1760, line: 134, baseType: !7, size: 32, offset: 576)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1759, file: !1760, line: 135, baseType: !7, size: 32, offset: 608)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1200, file: !1201, line: 1058, baseType: !1771, size: 448, offset: 14016)
!1771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1760, line: 144, size: 448, elements: !1772)
!1772 = !{!1773, !1774, !1775}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1771, file: !1760, line: 145, baseType: !189, size: 128, align: 64)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1771, file: !1760, line: 146, baseType: !92, size: 256, offset: 128)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1771, file: !1760, line: 147, baseType: !7, size: 32, offset: 384)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1200, file: !1201, line: 1064, baseType: !295, size: 64, offset: 14464)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1200, file: !1201, line: 1067, baseType: !295, size: 64, offset: 14528)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1200, file: !1201, line: 1070, baseType: !295, size: 64, offset: 14592)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1200, file: !1201, line: 1074, baseType: !331, size: 64, offset: 14656)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1200, file: !1201, line: 1084, baseType: !1781, size: 128, offset: 14720)
!1781 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 128, elements: !1782)
!1782 = !{!1783}
!1783 = !DISubrange(count: 16)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1200, file: !1201, line: 1086, baseType: !1785, size: 64, offset: 14848)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1201, line: 55, flags: DIFlagFwdDecl)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1200, file: !1201, line: 1089, baseType: !1788, size: 64, offset: 14912)
!1788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !1789, line: 12, size: 64, elements: !1790)
!1789 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!1790 = !{!1791}
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !1788, file: !1789, line: 13, baseType: !1792, size: 64)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1793 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !1789, line: 8, flags: DIFlagFwdDecl)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1200, file: !1201, line: 1090, baseType: !1795, size: 128, offset: 14976)
!1795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !1796, line: 13, size: 128, elements: !1797)
!1796 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!1797 = !{!1798}
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !1795, file: !1796, line: 14, baseType: !146, size: 128)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1200, file: !1201, line: 1097, baseType: !1800, size: 64, offset: 15104)
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1801 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1201, line: 50, flags: DIFlagFwdDecl)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1200, file: !1201, line: 1100, baseType: !1803, size: 64, offset: 15168)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1201, line: 1100, flags: DIFlagFwdDecl)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1200, file: !1201, line: 1103, baseType: !1806, size: 64, offset: 15232)
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1807 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1201, line: 53, flags: DIFlagFwdDecl)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1200, file: !1201, line: 1107, baseType: !1809, size: 64, offset: 15296)
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1810, size: 64)
!1810 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1201, line: 56, flags: DIFlagFwdDecl)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1200, file: !1201, line: 1110, baseType: !1812, size: 64, offset: 15360)
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64)
!1813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1814, line: 93, size: 8768, elements: !1815)
!1814 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!1815 = !{!1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1865, !1874, !1875, !1877, !1878, !1879, !1882, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906, !1907, !1908, !1909, !1920, !1921, !1928, !1938, !1941, !1942, !1945, !1946, !1947, !1948, !1949, !1950}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1813, file: !1814, line: 94, baseType: !244, size: 32)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1813, file: !1814, line: 95, baseType: !120, size: 32, offset: 32)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1813, file: !1814, line: 96, baseType: !67, size: 32, offset: 64)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !1813, file: !1814, line: 97, baseType: !67, size: 32, offset: 96)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1813, file: !1814, line: 98, baseType: !146, size: 128, offset: 128)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1813, file: !1814, line: 100, baseType: !266, size: 192, offset: 256)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1813, file: !1814, line: 103, baseType: !1199, size: 64, offset: 448)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1813, file: !1814, line: 106, baseType: !1824, size: 192, offset: 512)
!1824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !505, line: 32, size: 192, elements: !1825)
!1825 = !{!1826, !1827}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1824, file: !505, line: 33, baseType: !146, size: 128)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1824, file: !505, line: 34, baseType: !1828, size: 64, offset: 128)
!1828 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1829, line: 25, baseType: !1830)
!1829 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!1830 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1829, line: 23, size: 64, elements: !1831)
!1831 = !{!1832}
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1830, file: !1829, line: 24, baseType: !1438, size: 64)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1813, file: !1814, line: 109, baseType: !253, size: 64, offset: 704)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1813, file: !1814, line: 112, baseType: !67, size: 32, offset: 768)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1813, file: !1814, line: 114, baseType: !67, size: 32, offset: 800)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !1813, file: !1814, line: 115, baseType: !1199, size: 64, offset: 832)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1813, file: !1814, line: 118, baseType: !67, size: 32, offset: 896)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1813, file: !1814, line: 119, baseType: !7, size: 32, offset: 928)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1813, file: !1814, line: 121, baseType: !1840, size: 64, offset: 960)
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !1814, line: 80, size: 448, elements: !1842)
!1842 = !{!1843, !1844, !1850}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1841, file: !1814, line: 81, baseType: !120, size: 32)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1841, file: !1814, line: 82, baseType: !1845, size: 128, offset: 64)
!1845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !1814, line: 75, size: 128, elements: !1846)
!1846 = !{!1847, !1848}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1845, file: !1814, line: 76, baseType: !1199, size: 64)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1845, file: !1814, line: 77, baseType: !1849, size: 64, offset: 64)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1841, file: !1814, line: 83, baseType: !1730, size: 256, offset: 192)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1813, file: !1814, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1813, file: !1814, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !1813, file: !1814, line: 138, baseType: !7, size: 32, offset: 1056)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1813, file: !1814, line: 139, baseType: !146, size: 128, offset: 1088)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1813, file: !1814, line: 142, baseType: !1311, size: 512, offset: 1216)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1813, file: !1814, line: 143, baseType: !1319, size: 64, offset: 1728)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1813, file: !1814, line: 150, baseType: !1858, size: 256, offset: 1792)
!1858 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1859, size: 256, elements: !1863)
!1859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1814, line: 38, size: 128, elements: !1860)
!1860 = !{!1861, !1862}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1859, file: !1814, line: 39, baseType: !322, size: 64)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1859, file: !1814, line: 40, baseType: !322, size: 64, offset: 64)
!1863 = !{!1864}
!1864 = !DISubrange(count: 2)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1813, file: !1814, line: 156, baseType: !1866, size: 192, offset: 2048)
!1866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1814, line: 66, size: 192, elements: !1867)
!1867 = !{!1868}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1866, file: !1814, line: 67, baseType: !1869, size: 192)
!1869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1814, line: 47, size: 192, elements: !1870)
!1870 = !{!1871, !1872, !1873}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1869, file: !1814, line: 48, baseType: !98, size: 64)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1869, file: !1814, line: 49, baseType: !98, size: 64, offset: 64)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1869, file: !1814, line: 50, baseType: !98, size: 64, offset: 128)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1813, file: !1814, line: 160, baseType: !1759, size: 640, offset: 2240)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1813, file: !1814, line: 163, baseType: !1876, size: 256, offset: 2880)
!1876 = !DICompositeType(tag: DW_TAG_array_type, baseType: !240, size: 256, elements: !262)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1813, file: !1814, line: 169, baseType: !240, size: 64, offset: 3136)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1813, file: !1814, line: 172, baseType: !67, size: 32, offset: 3200)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1813, file: !1814, line: 174, baseType: !1880, size: 64, offset: 3264)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1814, line: 174, flags: DIFlagFwdDecl)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1813, file: !1814, line: 185, baseType: !1883, size: 64, offset: 3328)
!1883 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !545, line: 860, baseType: !1884)
!1884 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !545, line: 853, size: 64, elements: !1885)
!1885 = !{!1886, !1887}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1884, file: !545, line: 858, baseType: !544, size: 32)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1884, file: !545, line: 859, baseType: !199, size: 32, offset: 32)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1813, file: !1814, line: 186, baseType: !322, size: 64, offset: 3392)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1813, file: !1814, line: 186, baseType: !322, size: 64, offset: 3456)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1813, file: !1814, line: 186, baseType: !322, size: 64, offset: 3520)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1813, file: !1814, line: 186, baseType: !322, size: 64, offset: 3584)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1813, file: !1814, line: 187, baseType: !322, size: 64, offset: 3648)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1813, file: !1814, line: 188, baseType: !322, size: 64, offset: 3712)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1813, file: !1814, line: 189, baseType: !1747, size: 192, offset: 3776)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1813, file: !1814, line: 190, baseType: !69, size: 64, offset: 3968)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1813, file: !1814, line: 190, baseType: !69, size: 64, offset: 4032)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1813, file: !1814, line: 190, baseType: !69, size: 64, offset: 4096)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1813, file: !1814, line: 190, baseType: !69, size: 64, offset: 4160)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1813, file: !1814, line: 191, baseType: !69, size: 64, offset: 4224)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1813, file: !1814, line: 191, baseType: !69, size: 64, offset: 4288)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1813, file: !1814, line: 191, baseType: !69, size: 64, offset: 4352)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1813, file: !1814, line: 191, baseType: !69, size: 64, offset: 4416)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1813, file: !1814, line: 192, baseType: !69, size: 64, offset: 4480)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1813, file: !1814, line: 192, baseType: !69, size: 64, offset: 4544)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1813, file: !1814, line: 192, baseType: !69, size: 64, offset: 4608)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1813, file: !1814, line: 192, baseType: !69, size: 64, offset: 4672)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1813, file: !1814, line: 193, baseType: !69, size: 64, offset: 4736)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1813, file: !1814, line: 193, baseType: !69, size: 64, offset: 4800)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1813, file: !1814, line: 194, baseType: !1910, size: 448, offset: 4864)
!1910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1911, line: 12, size: 448, elements: !1912)
!1911 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!1912 = !{!1913, !1914, !1915, !1916, !1917, !1918, !1919}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !1910, file: !1911, line: 15, baseType: !322, size: 64)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !1910, file: !1911, line: 17, baseType: !322, size: 64, offset: 64)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !1910, file: !1911, line: 19, baseType: !322, size: 64, offset: 128)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !1910, file: !1911, line: 21, baseType: !322, size: 64, offset: 192)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !1910, file: !1911, line: 29, baseType: !322, size: 64, offset: 256)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !1910, file: !1911, line: 35, baseType: !322, size: 64, offset: 320)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !1910, file: !1911, line: 44, baseType: !322, size: 64, offset: 384)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1813, file: !1814, line: 202, baseType: !324, size: 64, offset: 5312)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1813, file: !1814, line: 213, baseType: !1922, size: 2048, offset: 5376)
!1922 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1923, size: 2048, elements: !1782)
!1923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1924, line: 43, size: 128, elements: !1925)
!1924 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!1925 = !{!1926, !1927}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1923, file: !1924, line: 44, baseType: !74, size: 64)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1923, file: !1924, line: 45, baseType: !74, size: 64, offset: 64)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !1813, file: !1814, line: 216, baseType: !1929, size: 448, offset: 7424)
!1929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !1814, line: 30, size: 448, elements: !1930)
!1930 = !{!1931, !1932, !1933, !1934, !1935, !1936, !1937}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !1929, file: !1814, line: 31, baseType: !67, size: 32)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !1929, file: !1814, line: 32, baseType: !693, size: 64, offset: 64)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !1929, file: !1814, line: 33, baseType: !69, size: 64, offset: 128)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !1929, file: !1814, line: 34, baseType: !322, size: 64, offset: 192)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !1929, file: !1814, line: 34, baseType: !322, size: 64, offset: 256)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !1929, file: !1814, line: 35, baseType: !69, size: 64, offset: 320)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !1929, file: !1814, line: 35, baseType: !69, size: 64, offset: 384)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1813, file: !1814, line: 219, baseType: !1939, size: 64, offset: 7872)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !1814, line: 219, flags: DIFlagFwdDecl)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !1813, file: !1814, line: 222, baseType: !7, size: 32, offset: 7936)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !1813, file: !1814, line: 223, baseType: !1943, size: 64, offset: 8000)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !1814, line: 223, flags: DIFlagFwdDecl)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1813, file: !1814, line: 230, baseType: !415, size: 8, offset: 8064)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1813, file: !1814, line: 231, baseType: !384, size: 16, offset: 8080)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1813, file: !1814, line: 232, baseType: !384, size: 16, offset: 8096)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1813, file: !1814, line: 234, baseType: !1487, size: 64, offset: 8128)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1813, file: !1814, line: 237, baseType: !92, size: 256, offset: 8192)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !1813, file: !1814, line: 243, baseType: !354, size: 320, offset: 8448)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1200, file: !1201, line: 1111, baseType: !1952, size: 64, offset: 15424)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1814, line: 20, size: 16640, elements: !1954)
!1954 = !{!1955, !1956, !1957, !1958}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1953, file: !1814, line: 21, baseType: !199, size: 32)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1953, file: !1814, line: 22, baseType: !244, size: 32, offset: 32)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1953, file: !1814, line: 23, baseType: !266, size: 192, offset: 64)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1953, file: !1814, line: 24, baseType: !1959, size: 16384, offset: 256)
!1959 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1960, size: 16384, elements: !1980)
!1960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !505, line: 51, size: 256, elements: !1961)
!1961 = !{!1962}
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1960, file: !505, line: 52, baseType: !1963, size: 256)
!1963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !505, line: 37, size: 256, elements: !1964)
!1964 = !{!1965, !1972, !1973, !1979}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1963, file: !505, line: 39, baseType: !1966, size: 64)
!1966 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1967, line: 83, baseType: !1968)
!1967 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1967, line: 82, baseType: !1970)
!1970 = !DISubroutineType(types: !1971)
!1971 = !{null, !67}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1963, file: !505, line: 40, baseType: !69, size: 64, offset: 64)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1963, file: !505, line: 46, baseType: !1974, size: 64, offset: 128)
!1974 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1967, line: 86, baseType: !1975)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1967, line: 85, baseType: !1977)
!1977 = !DISubroutineType(types: !1978)
!1978 = !{null}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1963, file: !505, line: 48, baseType: !1828, size: 64, offset: 192)
!1980 = !{!1981}
!1981 = !DISubrange(count: 64)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1200, file: !1201, line: 1112, baseType: !1828, size: 64, offset: 15488)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1200, file: !1201, line: 1113, baseType: !1828, size: 64, offset: 15552)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1200, file: !1201, line: 1115, baseType: !1828, size: 64, offset: 15616)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1200, file: !1201, line: 1116, baseType: !1824, size: 192, offset: 15680)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1200, file: !1201, line: 1117, baseType: !69, size: 64, offset: 15872)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1200, file: !1201, line: 1118, baseType: !70, size: 64, offset: 15936)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1200, file: !1201, line: 1119, baseType: !7, size: 32, offset: 16000)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1200, file: !1201, line: 1121, baseType: !192, size: 64, offset: 16064)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1200, file: !1201, line: 1125, baseType: !1991, size: 64, offset: 16128)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1201, line: 43, flags: DIFlagFwdDecl)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1200, file: !1201, line: 1127, baseType: !285, size: 32, offset: 16192)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1200, file: !1201, line: 1128, baseType: !7, size: 32, offset: 16224)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1200, file: !1201, line: 1130, baseType: !1996, size: 128, offset: 16256)
!1996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1997, line: 37, size: 128, elements: !1998)
!1997 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!1998 = !{!1999, !2000, !2001}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1996, file: !1997, line: 38, baseType: !67, size: 32)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1996, file: !1997, line: 39, baseType: !120, size: 32, offset: 32)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1996, file: !1997, line: 40, baseType: !2002, size: 64, offset: 64)
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2003, size: 64)
!2003 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1997, line: 24, flags: DIFlagFwdDecl)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1200, file: !1201, line: 1131, baseType: !2005, size: 256, offset: 16384)
!2005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2006, line: 12, size: 256, elements: !2007)
!2006 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2007 = !{!2008, !2009, !2010, !2011}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2005, file: !2006, line: 13, baseType: !80, size: 64)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2005, file: !2006, line: 14, baseType: !69, size: 64, offset: 64)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2005, file: !2006, line: 15, baseType: !69, size: 64, offset: 128)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2005, file: !2006, line: 16, baseType: !415, size: 8, offset: 192)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1200, file: !1201, line: 1134, baseType: !322, size: 64, offset: 16640)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1200, file: !1201, line: 1135, baseType: !322, size: 64, offset: 16704)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1200, file: !1201, line: 1138, baseType: !199, size: 32, offset: 16768)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1200, file: !1201, line: 1141, baseType: !107, size: 32, offset: 16800)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1200, file: !1201, line: 1143, baseType: !2017, size: 64, offset: 16832)
!2017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1201, line: 735, size: 64, elements: !2018)
!2018 = !{!2019}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2017, file: !1201, line: 736, baseType: !2020, size: 64)
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1200, file: !1201, line: 1147, baseType: !1370, size: 128, offset: 16896)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1200, file: !1201, line: 1149, baseType: !1199, size: 64, offset: 17024)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1200, file: !1201, line: 1151, baseType: !2024, size: 64, offset: 17088)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1201, line: 1151, flags: DIFlagFwdDecl)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1200, file: !1201, line: 1188, baseType: !66, size: 64, offset: 17152)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1200, file: !1201, line: 1191, baseType: !2028, size: 64, offset: 17216)
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1201, line: 44, flags: DIFlagFwdDecl)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1200, file: !1201, line: 1194, baseType: !2031, size: 64, offset: 17280)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1201, line: 45, flags: DIFlagFwdDecl)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1200, file: !1201, line: 1197, baseType: !2034, size: 64, offset: 17344)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1201, line: 61, flags: DIFlagFwdDecl)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1200, file: !1201, line: 1199, baseType: !2037, size: 64, offset: 17408)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2039, line: 99, size: 128, elements: !2040)
!2039 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2040 = !{!2041, !2042, !2043}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2038, file: !2039, line: 100, baseType: !96, size: 64)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2038, file: !2039, line: 101, baseType: !120, size: 32, offset: 64)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2038, file: !2039, line: 103, baseType: !138, size: 16, offset: 96)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1200, file: !1201, line: 1202, baseType: !2045, size: 64, offset: 17472)
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2046, size: 64)
!2046 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1201, line: 48, flags: DIFlagFwdDecl)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1200, file: !1201, line: 1205, baseType: !69, size: 64, offset: 17536)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1200, file: !1201, line: 1206, baseType: !2049, size: 64, offset: 17600)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !505, line: 14, baseType: !2051)
!2051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !505, line: 12, size: 384, elements: !2052)
!2052 = !{!2053}
!2053 = !DIDerivedType(tag: DW_TAG_member, scope: !2051, file: !505, line: 13, baseType: !2054, size: 384)
!2054 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2051, file: !505, line: 13, size: 384, elements: !2055)
!2055 = !{!2056, !2057, !2058, !2059}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2054, file: !505, line: 13, baseType: !67, size: 32)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2054, file: !505, line: 13, baseType: !67, size: 32, offset: 32)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2054, file: !505, line: 13, baseType: !67, size: 32, offset: 64)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2054, file: !505, line: 13, baseType: !2060, size: 256, offset: 128)
!2060 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2061, line: 37, size: 256, elements: !2062)
!2061 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2062 = !{!2063, !2068, !2081, !2087, !2096, !2123, !2128}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2060, file: !2061, line: 42, baseType: !2064, size: 64)
!2064 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2060, file: !2061, line: 39, size: 64, elements: !2065)
!2065 = !{!2066, !2067}
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2064, file: !2061, line: 40, baseType: !1713, size: 32)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2064, file: !2061, line: 41, baseType: !291, size: 32, offset: 32)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2060, file: !2061, line: 50, baseType: !2069, size: 192)
!2069 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2060, file: !2061, line: 45, size: 192, elements: !2070)
!2070 = !{!2071, !2073, !2074, !2080}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2069, file: !2061, line: 46, baseType: !2072, size: 32)
!2072 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !73, line: 95, baseType: !67)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2069, file: !2061, line: 47, baseType: !67, size: 32, offset: 32)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2069, file: !2061, line: 48, baseType: !2075, size: 64, offset: 64)
!2075 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2061, line: 11, baseType: !2076)
!2076 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2061, line: 8, size: 64, elements: !2077)
!2077 = !{!2078, !2079}
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2076, file: !2061, line: 9, baseType: !67, size: 32)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2076, file: !2061, line: 10, baseType: !66, size: 64)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2069, file: !2061, line: 49, baseType: !67, size: 32, offset: 128)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2060, file: !2061, line: 57, baseType: !2082, size: 128)
!2082 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2060, file: !2061, line: 53, size: 128, elements: !2083)
!2083 = !{!2084, !2085, !2086}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2082, file: !2061, line: 54, baseType: !1713, size: 32)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2082, file: !2061, line: 55, baseType: !291, size: 32, offset: 32)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2082, file: !2061, line: 56, baseType: !2075, size: 64, offset: 64)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2060, file: !2061, line: 66, baseType: !2088, size: 256)
!2088 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2060, file: !2061, line: 60, size: 256, elements: !2089)
!2089 = !{!2090, !2091, !2092, !2093, !2095}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2088, file: !2061, line: 61, baseType: !1713, size: 32)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2088, file: !2061, line: 62, baseType: !291, size: 32, offset: 32)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2088, file: !2061, line: 63, baseType: !67, size: 32, offset: 64)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2088, file: !2061, line: 64, baseType: !2094, size: 64, offset: 128)
!2094 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !73, line: 94, baseType: !735)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2088, file: !2061, line: 65, baseType: !2094, size: 64, offset: 192)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2060, file: !2061, line: 105, baseType: !2097, size: 256)
!2097 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2060, file: !2061, line: 69, size: 256, elements: !2098)
!2098 = !{!2099, !2100}
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2097, file: !2061, line: 70, baseType: !66, size: 64)
!2100 = !DIDerivedType(tag: DW_TAG_member, scope: !2097, file: !2061, line: 79, baseType: !2101, size: 192, offset: 64)
!2101 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2097, file: !2061, line: 79, size: 192, elements: !2102)
!2102 = !{!2103, !2104, !2105, !2112, !2117}
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2101, file: !2061, line: 81, baseType: !67, size: 32)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2101, file: !2061, line: 86, baseType: !384, size: 16)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2101, file: !2061, line: 92, baseType: !2106, size: 192)
!2106 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2101, file: !2061, line: 88, size: 192, elements: !2107)
!2107 = !{!2108, !2110, !2111}
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2106, file: !2061, line: 89, baseType: !2109, size: 64)
!2109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 64, elements: !1354)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2106, file: !2061, line: 90, baseType: !66, size: 64, offset: 64)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2106, file: !2061, line: 91, baseType: !66, size: 64, offset: 128)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2101, file: !2061, line: 97, baseType: !2113, size: 96)
!2113 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2101, file: !2061, line: 94, size: 96, elements: !2114)
!2114 = !{!2115, !2116}
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2113, file: !2061, line: 95, baseType: !2109, size: 64)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2113, file: !2061, line: 96, baseType: !380, size: 32, offset: 64)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2101, file: !2061, line: 103, baseType: !2118, size: 128)
!2118 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2101, file: !2061, line: 99, size: 128, elements: !2119)
!2119 = !{!2120, !2121, !2122}
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2118, file: !2061, line: 100, baseType: !69, size: 64)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2118, file: !2061, line: 101, baseType: !380, size: 32, offset: 64)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2118, file: !2061, line: 102, baseType: !380, size: 32, offset: 96)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2060, file: !2061, line: 111, baseType: !2124, size: 128)
!2124 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2060, file: !2061, line: 108, size: 128, elements: !2125)
!2125 = !{!2126, !2127}
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2124, file: !2061, line: 109, baseType: !693, size: 64)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2124, file: !2061, line: 110, baseType: !67, size: 32, offset: 64)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2060, file: !2061, line: 118, baseType: !2129, size: 128)
!2129 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2060, file: !2061, line: 114, size: 128, elements: !2130)
!2130 = !{!2131, !2132, !2133}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2129, file: !2061, line: 115, baseType: !66, size: 64)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2129, file: !2061, line: 116, baseType: !67, size: 32, offset: 64)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2129, file: !2061, line: 117, baseType: !7, size: 32, offset: 96)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1200, file: !1201, line: 1208, baseType: !1910, size: 448, offset: 17664)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1200, file: !1201, line: 1215, baseType: !322, size: 64, offset: 18112)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1200, file: !1201, line: 1217, baseType: !322, size: 64, offset: 18176)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1200, file: !1201, line: 1219, baseType: !322, size: 64, offset: 18240)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1200, file: !1201, line: 1223, baseType: !2139, size: 64, offset: 18304)
!2139 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2140, line: 99, baseType: !2141)
!2140 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2141 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2140, line: 99, size: 64, elements: !2142)
!2142 = !{!2143}
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2141, file: !2140, line: 99, baseType: !1438, size: 64)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1200, file: !1201, line: 1225, baseType: !544, size: 32, offset: 18368)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1200, file: !1201, line: 1226, baseType: !67, size: 32, offset: 18400)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1200, file: !1201, line: 1227, baseType: !67, size: 32, offset: 18432)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1200, file: !1201, line: 1231, baseType: !2148, size: 64, offset: 18496)
!2148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2149, size: 64)
!2149 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1201, line: 1231, flags: DIFlagFwdDecl)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1200, file: !1201, line: 1233, baseType: !146, size: 128, offset: 18560)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1200, file: !1201, line: 1240, baseType: !2152, size: 64, offset: 18688)
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2153 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1201, line: 62, flags: DIFlagFwdDecl)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1200, file: !1201, line: 1242, baseType: !2155, size: 64, offset: 18752)
!2155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2156, size: 64)
!2156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !2157, line: 392, size: 96, elements: !2158)
!2157 = !DIFile(filename: "./include/linux/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4fb3431a0ca9e11a8015b961c002b640")
!2158 = !{!2159, !2165, !2167}
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2156, file: !2157, line: 393, baseType: !2160, size: 32)
!2160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list", file: !2157, line: 388, size: 32, elements: !2161)
!2161 = !{!2162}
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2160, file: !2157, line: 389, baseType: !2163, size: 32)
!2163 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_uptr_t", file: !2164, line: 46, baseType: !379)
!2164 = !DIFile(filename: "./include/asm-generic/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "789dd20e6944b4211a8be38fb9d0b245")
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "futex_offset", scope: !2156, file: !2157, line: 394, baseType: !2166, size: 32, offset: 32)
!2166 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_long_t", file: !2164, line: 42, baseType: !339)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "list_op_pending", scope: !2156, file: !2157, line: 395, baseType: !2163, size: 32, offset: 64)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1200, file: !1201, line: 1244, baseType: !146, size: 128, offset: 18816)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1200, file: !1201, line: 1245, baseType: !2170, size: 64, offset: 18944)
!2170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2171, size: 64)
!2171 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1201, line: 51, flags: DIFlagFwdDecl)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1200, file: !1201, line: 1246, baseType: !92, size: 256, offset: 19008)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1200, file: !1201, line: 1247, baseType: !7, size: 32, offset: 19264)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1200, file: !1201, line: 1250, baseType: !2175, size: 64, offset: 19328)
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2176 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1201, line: 57, flags: DIFlagFwdDecl)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1200, file: !1201, line: 1251, baseType: !92, size: 256, offset: 19392)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1200, file: !1201, line: 1252, baseType: !146, size: 128, offset: 19648)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1200, file: !1201, line: 1259, baseType: !2180, size: 64, offset: 19776)
!2180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2181, size: 64)
!2181 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1489, line: 717, flags: DIFlagFwdDecl)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1200, file: !1201, line: 1260, baseType: !384, size: 16, offset: 19840)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1200, file: !1201, line: 1261, baseType: !384, size: 16, offset: 19856)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1200, file: !1201, line: 1314, baseType: !2185, size: 64, offset: 19904)
!2185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2186, size: 64)
!2186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2187, line: 62, size: 256, align: 256, elements: !2188)
!2187 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2188 = !{!2189, !2190, !2191, !2192, !2193, !2194, !2195}
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2186, file: !2187, line: 75, baseType: !380, size: 32)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2186, file: !2187, line: 90, baseType: !380, size: 32, offset: 32)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2186, file: !2187, line: 112, baseType: !323, size: 64, offset: 64)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2186, file: !2187, line: 132, baseType: !380, size: 32, offset: 128)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2186, file: !2187, line: 140, baseType: !380, size: 32, offset: 160)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2186, file: !2187, line: 149, baseType: !380, size: 32, offset: 192)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2186, file: !2187, line: 154, baseType: !2196, offset: 224)
!2196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, elements: !281)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1200, file: !1201, line: 1315, baseType: !379, size: 32, offset: 19968)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1200, file: !1201, line: 1316, baseType: !379, size: 32, offset: 20000)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1200, file: !1201, line: 1321, baseType: !69, size: 64, offset: 20032)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1200, file: !1201, line: 1325, baseType: !67, size: 32, offset: 20096)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1200, file: !1201, line: 1326, baseType: !67, size: 32, offset: 20128)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1200, file: !1201, line: 1327, baseType: !67, size: 32, offset: 20160)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1200, file: !1201, line: 1328, baseType: !67, size: 32, offset: 20192)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1200, file: !1201, line: 1329, baseType: !189, size: 128, align: 64, offset: 20224)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1200, file: !1201, line: 1332, baseType: !2206, size: 128, offset: 20352)
!2206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2207, line: 51, size: 128, elements: !2208)
!2207 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2208 = !{!2209, !2214, !2215}
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2206, file: !2207, line: 60, baseType: !2210, size: 64)
!2210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2211, line: 7, size: 64, elements: !2212)
!2211 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2212 = !{!2213}
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2210, file: !2211, line: 12, baseType: !1435, size: 64)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2206, file: !2207, line: 63, baseType: !415, size: 8, offset: 64)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2206, file: !2207, line: 70, baseType: !415, size: 8, offset: 72)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1200, file: !1201, line: 1335, baseType: !2217, size: 64, offset: 20480)
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64)
!2218 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1201, line: 59, flags: DIFlagFwdDecl)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1200, file: !1201, line: 1337, baseType: !2220, size: 128, offset: 20544)
!2220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2207, line: 39, size: 128, elements: !2221)
!2221 = !{!2222, !2536, !2537}
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2220, file: !2207, line: 40, baseType: !2223, size: 64)
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2224, size: 64)
!2224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !1489, line: 74, size: 512, align: 128, elements: !2225)
!2225 = !{!2226, !2227, !2530, !2535}
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2224, file: !1489, line: 75, baseType: !69, size: 64)
!2227 = !DIDerivedType(tag: DW_TAG_member, scope: !2224, file: !1489, line: 83, baseType: !2228, size: 320, offset: 64)
!2228 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2224, file: !1489, line: 83, size: 320, elements: !2229)
!2229 = !{!2230, !2504, !2518, !2522, !2529}
!2230 = !DIDerivedType(tag: DW_TAG_member, scope: !2228, file: !1489, line: 84, baseType: !2231, size: 320)
!2231 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2228, file: !1489, line: 84, size: 320, elements: !2232)
!2232 = !{!2233, !2244, !2498, !2503}
!2233 = !DIDerivedType(tag: DW_TAG_member, scope: !2231, file: !1489, line: 90, baseType: !2234, size: 128)
!2234 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2231, file: !1489, line: 90, size: 128, elements: !2235)
!2235 = !{!2236, !2237, !2242, !2243}
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2234, file: !1489, line: 91, baseType: !146, size: 128)
!2237 = !DIDerivedType(tag: DW_TAG_member, scope: !2234, file: !1489, line: 94, baseType: !2238, size: 128)
!2238 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2234, file: !1489, line: 94, size: 128, elements: !2239)
!2239 = !{!2240, !2241}
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2238, file: !1489, line: 96, baseType: !66, size: 64)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2238, file: !1489, line: 98, baseType: !7, size: 32, offset: 64)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2234, file: !1489, line: 102, baseType: !146, size: 128)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2234, file: !1489, line: 103, baseType: !146, size: 128)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2231, file: !1489, line: 106, baseType: !2245, size: 64, offset: 128)
!2245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2246, size: 64)
!2246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !6, line: 472, size: 1536, align: 64, elements: !2247)
!2247 = !{!2248, !2249, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2490, !2491, !2492, !2495, !2496, !2497}
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !2246, file: !6, line: 473, baseType: !578, size: 64)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !2246, file: !6, line: 474, baseType: !780, size: 128, offset: 64)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !2246, file: !6, line: 475, baseType: !354, size: 320, offset: 192)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2246, file: !6, line: 476, baseType: !785, size: 32, offset: 512)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !2246, file: !6, line: 477, baseType: !120, size: 32, offset: 544)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !2246, file: !6, line: 482, baseType: !1370, size: 128, offset: 576)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !2246, file: !6, line: 483, baseType: !69, size: 64, offset: 704)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !2246, file: !6, line: 484, baseType: !69, size: 64, offset: 768)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !2246, file: !6, line: 485, baseType: !2257, size: 64, offset: 832)
!2257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2258, size: 64)
!2258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2259)
!2259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !6, line: 404, size: 1280, elements: !2260)
!2260 = !{!2261, !2265, !2335, !2339, !2343, !2349, !2355, !2359, !2364, !2368, !2372, !2376, !2454, !2458, !2462, !2466, !2471, !2475, !2482, !2486}
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !2259, file: !6, line: 405, baseType: !2262, size: 64)
!2262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2263, size: 64)
!2263 = !DISubroutineType(types: !2264)
!2264 = !{!67, !2223, !861}
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !2259, file: !6, line: 406, baseType: !2266, size: 64, offset: 64)
!2266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2267, size: 64)
!2267 = !DISubroutineType(types: !2268)
!2268 = !{!67, !697, !2269}
!2269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2270, size: 64)
!2270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !1489, line: 293, size: 1536, elements: !2271)
!2271 = !{!2272, !2302, !2316}
!2272 = !DIDerivedType(tag: DW_TAG_member, scope: !2270, file: !1489, line: 295, baseType: !2273, size: 512)
!2273 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2270, file: !1489, line: 295, size: 512, elements: !2274)
!2274 = !{!2275, !2301}
!2275 = !DIDerivedType(tag: DW_TAG_member, scope: !2273, file: !1489, line: 296, baseType: !2276, size: 448)
!2276 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2273, file: !1489, line: 296, size: 448, elements: !2277)
!2277 = !{!2278, !2279, !2288, !2289, !2290, !2299, !2300}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2276, file: !1489, line: 298, baseType: !69, size: 64)
!2279 = !DIDerivedType(tag: DW_TAG_member, scope: !2276, file: !1489, line: 299, baseType: !2280, size: 128, offset: 64)
!2280 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2276, file: !1489, line: 299, size: 128, elements: !2281)
!2281 = !{!2282, !2283}
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2280, file: !1489, line: 300, baseType: !146, size: 128)
!2283 = !DIDerivedType(tag: DW_TAG_member, scope: !2280, file: !1489, line: 302, baseType: !2284, size: 128)
!2284 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2280, file: !1489, line: 302, size: 128, elements: !2285)
!2285 = !{!2286, !2287}
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2284, file: !1489, line: 303, baseType: !66, size: 64)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2284, file: !1489, line: 305, baseType: !7, size: 32, offset: 64)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2276, file: !1489, line: 310, baseType: !2245, size: 64, offset: 192)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2276, file: !1489, line: 311, baseType: !69, size: 64, offset: 256)
!2290 = !DIDerivedType(tag: DW_TAG_member, scope: !2276, file: !1489, line: 312, baseType: !2291, size: 64, offset: 320)
!2291 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2276, file: !1489, line: 312, size: 64, elements: !2292)
!2292 = !{!2293, !2294}
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2291, file: !1489, line: 313, baseType: !66, size: 64)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !2291, file: !1489, line: 314, baseType: !2295, size: 64)
!2295 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !1489, line: 257, baseType: !2296)
!2296 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1489, line: 255, size: 64, elements: !2297)
!2297 = !{!2298}
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2296, file: !1489, line: 256, baseType: !69, size: 64)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2276, file: !1489, line: 316, baseType: !120, size: 32, offset: 384)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2276, file: !1489, line: 317, baseType: !120, size: 32, offset: 416)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2273, file: !1489, line: 323, baseType: !2224, size: 512, align: 128)
!2302 = !DIDerivedType(tag: DW_TAG_member, scope: !2270, file: !1489, line: 325, baseType: !2303, size: 512, offset: 512)
!2303 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2270, file: !1489, line: 325, size: 512, elements: !2304)
!2304 = !{!2305, !2315}
!2305 = !DIDerivedType(tag: DW_TAG_member, scope: !2303, file: !1489, line: 326, baseType: !2306, size: 320)
!2306 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2303, file: !1489, line: 326, size: 320, elements: !2307)
!2307 = !{!2308, !2309, !2310, !2311, !2312, !2313, !2314}
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !2306, file: !1489, line: 327, baseType: !69, size: 64)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !2306, file: !1489, line: 328, baseType: !69, size: 64, offset: 64)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !2306, file: !1489, line: 329, baseType: !69, size: 64, offset: 128)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !2306, file: !1489, line: 331, baseType: !120, size: 32, offset: 192)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !2306, file: !1489, line: 332, baseType: !120, size: 32, offset: 224)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !2306, file: !1489, line: 333, baseType: !120, size: 32, offset: 256)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !2306, file: !1489, line: 335, baseType: !7, size: 32, offset: 288)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !2303, file: !1489, line: 339, baseType: !2224, size: 512, align: 128)
!2316 = !DIDerivedType(tag: DW_TAG_member, scope: !2270, file: !1489, line: 341, baseType: !2317, size: 512, offset: 1024)
!2317 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2270, file: !1489, line: 341, size: 512, elements: !2318)
!2318 = !{!2319, !2328, !2334}
!2319 = !DIDerivedType(tag: DW_TAG_member, scope: !2317, file: !1489, line: 342, baseType: !2320, size: 384)
!2320 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2317, file: !1489, line: 342, size: 384, elements: !2321)
!2321 = !{!2322, !2323, !2324, !2325, !2326, !2327}
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !2320, file: !1489, line: 343, baseType: !69, size: 64)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !2320, file: !1489, line: 344, baseType: !69, size: 64, offset: 64)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !2320, file: !1489, line: 346, baseType: !66, size: 64, offset: 128)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !2320, file: !1489, line: 347, baseType: !66, size: 64, offset: 192)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !2320, file: !1489, line: 348, baseType: !66, size: 64, offset: 256)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !2320, file: !1489, line: 349, baseType: !66, size: 64, offset: 320)
!2328 = !DIDerivedType(tag: DW_TAG_member, scope: !2317, file: !1489, line: 352, baseType: !2329, size: 256)
!2329 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2317, file: !1489, line: 352, size: 256, elements: !2330)
!2330 = !{!2331, !2332, !2333}
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !2329, file: !1489, line: 353, baseType: !69, size: 64)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !2329, file: !1489, line: 354, baseType: !69, size: 64, offset: 64)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !2329, file: !1489, line: 356, baseType: !146, size: 128, offset: 128)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !2317, file: !1489, line: 359, baseType: !2224, size: 512, align: 128)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !2259, file: !6, line: 409, baseType: !2336, size: 64, offset: 128)
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2337 = !DISubroutineType(types: !2338)
!2338 = !{!67, !2245, !861}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !2259, file: !6, line: 412, baseType: !2340, size: 64, offset: 192)
!2340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2341, size: 64)
!2341 = !DISubroutineType(types: !2342)
!2342 = !{!415, !2245, !2269}
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !2259, file: !6, line: 414, baseType: !2344, size: 64, offset: 256)
!2344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2345, size: 64)
!2345 = !DISubroutineType(types: !2346)
!2346 = !{null, !2347}
!2347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2348, size: 64)
!2348 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !6, line: 310, flags: DIFlagFwdDecl)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !2259, file: !6, line: 416, baseType: !2350, size: 64, offset: 320)
!2350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2351, size: 64)
!2351 = !DISubroutineType(types: !2352)
!2352 = !{!67, !697, !2245, !87, !7, !2353, !2354}
!2353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2223, size: 64)
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !2259, file: !6, line: 419, baseType: !2356, size: 64, offset: 384)
!2356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2357, size: 64)
!2357 = !DISubroutineType(types: !2358)
!2358 = !{!67, !697, !2245, !87, !7, !7, !2223, !66}
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !2259, file: !6, line: 424, baseType: !2360, size: 64, offset: 448)
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2361, size: 64)
!2361 = !DISubroutineType(types: !2362)
!2362 = !{!2363, !2245, !2363}
!2363 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !71, line: 131, baseType: !322)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !2259, file: !6, line: 425, baseType: !2365, size: 64, offset: 512)
!2365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2366, size: 64)
!2366 = !DISubroutineType(types: !2367)
!2367 = !{null, !2269, !70, !70}
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !2259, file: !6, line: 426, baseType: !2369, size: 64, offset: 576)
!2369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2370, size: 64)
!2370 = !DISubroutineType(types: !2371)
!2371 = !{!415, !2269, !785}
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !2259, file: !6, line: 427, baseType: !2373, size: 64, offset: 640)
!2373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2374, size: 64)
!2374 = !DISubroutineType(types: !2375)
!2375 = !{null, !2269}
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !2259, file: !6, line: 428, baseType: !2377, size: 64, offset: 704)
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2378 = !DISubroutineType(types: !2379)
!2379 = !{!733, !2380, !2402}
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2381, size: 64)
!2381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !6, line: 373, size: 384, elements: !2382)
!2382 = !{!2383, !2384, !2385, !2389, !2390, !2391, !2392}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2381, file: !6, line: 374, baseType: !697, size: 64)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2381, file: !6, line: 375, baseType: !87, size: 64, offset: 64)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2381, file: !6, line: 376, baseType: !2386, size: 64, offset: 128)
!2386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2387, size: 64)
!2387 = !DISubroutineType(types: !2388)
!2388 = !{null, !2380, !693}
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2381, file: !6, line: 377, baseType: !66, size: 64, offset: 192)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2381, file: !6, line: 378, baseType: !67, size: 32, offset: 256)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2381, file: !6, line: 379, baseType: !136, size: 16, offset: 288)
!2392 = !DIDerivedType(tag: DW_TAG_member, scope: !2381, file: !6, line: 380, baseType: !2393, size: 64, offset: 320)
!2393 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2381, file: !6, line: 380, size: 64, elements: !2394)
!2394 = !{!2395, !2398}
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2393, file: !6, line: 386, baseType: !2396, size: 64)
!2396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2397, size: 64)
!2397 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !6, line: 386, flags: DIFlagFwdDecl)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2393, file: !6, line: 395, baseType: !2399, size: 64)
!2399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2400, size: 64)
!2400 = !DISubroutineType(types: !2401)
!2401 = !{!733, !66}
!2402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2403, size: 64)
!2403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !2404, line: 41, size: 320, elements: !2405)
!2404 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!2405 = !{!2406, !2407, !2408, !2409, !2410, !2411, !2416, !2449}
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !2403, file: !2404, line: 42, baseType: !128, size: 8)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !2403, file: !2404, line: 43, baseType: !415, size: 8, offset: 8)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !2403, file: !2404, line: 44, baseType: !415, size: 8, offset: 16)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !2403, file: !2404, line: 45, baseType: !415, size: 8, offset: 24)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !2403, file: !2404, line: 46, baseType: !415, size: 8, offset: 32)
!2411 = !DIDerivedType(tag: DW_TAG_member, scope: !2403, file: !2404, line: 47, baseType: !2412, size: 64, offset: 64)
!2412 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2403, file: !2404, line: 47, size: 64, elements: !2413)
!2413 = !{!2414, !2415}
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !2412, file: !2404, line: 48, baseType: !70, size: 64)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !2412, file: !2404, line: 49, baseType: !67, size: 32)
!2416 = !DIDerivedType(tag: DW_TAG_member, scope: !2403, file: !2404, line: 61, baseType: !2417, size: 128, offset: 128)
!2417 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2403, file: !2404, line: 61, size: 128, elements: !2418)
!2418 = !{!2419, !2425}
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !2417, file: !2404, line: 67, baseType: !2420, size: 128)
!2420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !2421, line: 17, size: 128, elements: !2422)
!2421 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!2422 = !{!2423, !2424}
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !2420, file: !2421, line: 19, baseType: !66, size: 64)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !2420, file: !2421, line: 20, baseType: !72, size: 64, offset: 64)
!2425 = !DIDerivedType(tag: DW_TAG_member, scope: !2417, file: !2404, line: 68, baseType: !2426, size: 128)
!2426 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2417, file: !2404, line: 68, size: 128, elements: !2427)
!2427 = !{!2428, !2448}
!2428 = !DIDerivedType(tag: DW_TAG_member, scope: !2426, file: !2404, line: 69, baseType: !2429, size: 64)
!2429 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2426, file: !2404, line: 69, size: 64, elements: !2430)
!2430 = !{!2431, !2434, !2441, !2445, !2447}
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !2429, file: !2404, line: 71, baseType: !2432, size: 64)
!2432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2433, size: 64)
!2433 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2420)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !2429, file: !2404, line: 72, baseType: !2435, size: 64)
!2435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2436, size: 64)
!2436 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2437)
!2437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !2404, line: 17, size: 128, elements: !2438)
!2438 = !{!2439, !2440}
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !2437, file: !2404, line: 18, baseType: !66, size: 64)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !2437, file: !2404, line: 19, baseType: !70, size: 64, offset: 64)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !2429, file: !2404, line: 73, baseType: !2442, size: 64)
!2442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2443, size: 64)
!2443 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2444)
!2444 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !2404, line: 73, flags: DIFlagFwdDecl)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !2429, file: !2404, line: 74, baseType: !2446, size: 64)
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !2429, file: !2404, line: 75, baseType: !66, size: 64)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2426, file: !2404, line: 77, baseType: !70, size: 64, offset: 64)
!2449 = !DIDerivedType(tag: DW_TAG_member, scope: !2403, file: !2404, line: 80, baseType: !2450, size: 64, offset: 256)
!2450 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2403, file: !2404, line: 80, size: 64, elements: !2451)
!2451 = !{!2452, !2453}
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !2450, file: !2404, line: 81, baseType: !69, size: 64)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !2450, file: !2404, line: 82, baseType: !87, size: 64)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !2259, file: !6, line: 433, baseType: !2455, size: 64, offset: 768)
!2455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2456, size: 64)
!2456 = !DISubroutineType(types: !2457)
!2457 = !{!67, !2245, !2269, !2269, !19}
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !2259, file: !6, line: 435, baseType: !2459, size: 64, offset: 832)
!2459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2460, size: 64)
!2460 = !DISubroutineType(types: !2461)
!2461 = !{!67, !2269}
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !2259, file: !6, line: 436, baseType: !2463, size: 64, offset: 896)
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2464 = !DISubroutineType(types: !2465)
!2465 = !{!415, !2269, !70, !70}
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !2259, file: !6, line: 438, baseType: !2467, size: 64, offset: 960)
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2468 = !DISubroutineType(types: !2469)
!2469 = !{null, !2269, !2470, !2470}
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !2259, file: !6, line: 439, baseType: !2472, size: 64, offset: 1024)
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2473 = !DISubroutineType(types: !2474)
!2474 = !{!67, !2245, !2223}
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !2259, file: !6, line: 442, baseType: !2476, size: 64, offset: 1088)
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2477, size: 64)
!2477 = !DISubroutineType(types: !2478)
!2478 = !{!67, !2479, !697, !2481}
!2479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2480, size: 64)
!2480 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !6, line: 66, flags: DIFlagFwdDecl)
!2481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2363, size: 64)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !2259, file: !6, line: 444, baseType: !2483, size: 64, offset: 1152)
!2483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2484, size: 64)
!2484 = !DISubroutineType(types: !2485)
!2485 = !{null, !697}
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !2259, file: !6, line: 445, baseType: !2487, size: 64, offset: 1216)
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2488, size: 64)
!2488 = !DISubroutineType(types: !2489)
!2489 = !{!67, !2380, !2402}
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2246, file: !6, line: 486, baseType: !69, size: 64, offset: 896)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !2246, file: !6, line: 487, baseType: !354, size: 320, offset: 960)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !2246, file: !6, line: 488, baseType: !2493, size: 32, offset: 1280)
!2493 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2494, line: 8, baseType: !379)
!2494 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !2246, file: !6, line: 489, baseType: !199, size: 32, offset: 1312)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !2246, file: !6, line: 490, baseType: !146, size: 128, offset: 1344)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !2246, file: !6, line: 491, baseType: !66, size: 64, offset: 1472)
!2498 = !DIDerivedType(tag: DW_TAG_member, scope: !2231, file: !1489, line: 107, baseType: !2499, size: 64, offset: 192)
!2499 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2231, file: !1489, line: 107, size: 64, elements: !2500)
!2500 = !{!2501, !2502}
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2499, file: !1489, line: 108, baseType: !69, size: 64)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2499, file: !1489, line: 109, baseType: !69, size: 64)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2231, file: !1489, line: 117, baseType: !69, size: 64, offset: 256)
!2504 = !DIDerivedType(tag: DW_TAG_member, scope: !2228, file: !1489, line: 119, baseType: !2505, size: 320)
!2505 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2228, file: !1489, line: 119, size: 320, elements: !2506)
!2506 = !{!2507, !2508, !2511, !2512, !2513}
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2505, file: !1489, line: 124, baseType: !69, size: 64)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2505, file: !1489, line: 125, baseType: !2509, size: 64, offset: 64)
!2509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2510, size: 64)
!2510 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !1489, line: 125, flags: DIFlagFwdDecl)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2505, file: !1489, line: 126, baseType: !69, size: 64, offset: 128)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2505, file: !1489, line: 127, baseType: !69, size: 64, offset: 192)
!2513 = !DIDerivedType(tag: DW_TAG_member, scope: !2505, file: !1489, line: 128, baseType: !2514, size: 64, offset: 256)
!2514 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2505, file: !1489, line: 128, size: 64, elements: !2515)
!2515 = !{!2516, !2517}
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2514, file: !1489, line: 133, baseType: !69, size: 64)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2514, file: !1489, line: 138, baseType: !96, size: 64)
!2518 = !DIDerivedType(tag: DW_TAG_member, scope: !2228, file: !1489, line: 141, baseType: !2519, size: 64)
!2519 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2228, file: !1489, line: 141, size: 64, elements: !2520)
!2520 = !{!2521}
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2519, file: !1489, line: 142, baseType: !69, size: 64)
!2522 = !DIDerivedType(tag: DW_TAG_member, scope: !2228, file: !1489, line: 144, baseType: !2523, size: 128)
!2523 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2228, file: !1489, line: 144, size: 128, elements: !2524)
!2524 = !{!2525, !2528}
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2523, file: !1489, line: 146, baseType: !2526, size: 64)
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2527, size: 64)
!2527 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !1489, line: 146, flags: DIFlagFwdDecl)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2523, file: !1489, line: 147, baseType: !66, size: 64, offset: 64)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2228, file: !1489, line: 161, baseType: !189, size: 128, align: 64)
!2530 = !DIDerivedType(tag: DW_TAG_member, scope: !2224, file: !1489, line: 164, baseType: !2531, size: 32, offset: 384)
!2531 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2224, file: !1489, line: 164, size: 32, elements: !2532)
!2532 = !{!2533, !2534}
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2531, file: !1489, line: 169, baseType: !120, size: 32)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2531, file: !1489, line: 177, baseType: !7, size: 32)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2224, file: !1489, line: 181, baseType: !120, size: 32, offset: 416)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2220, file: !2207, line: 42, baseType: !380, size: 32, offset: 64)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2220, file: !2207, line: 43, baseType: !380, size: 32, offset: 96)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1200, file: !1201, line: 1340, baseType: !2539, size: 64, offset: 20672)
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2540, size: 64)
!2540 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1201, line: 69, flags: DIFlagFwdDecl)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1200, file: !1201, line: 1351, baseType: !67, size: 32, offset: 20736)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1200, file: !1201, line: 1352, baseType: !67, size: 32, offset: 20768)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1200, file: !1201, line: 1354, baseType: !69, size: 64, offset: 20800)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1200, file: !1201, line: 1364, baseType: !322, size: 64, offset: 20864)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1200, file: !1201, line: 1365, baseType: !322, size: 64, offset: 20928)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1200, file: !1201, line: 1412, baseType: !69, size: 64, offset: 20992)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1200, file: !1201, line: 1453, baseType: !2548, size: 64, offset: 21056)
!2548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2549, size: 64)
!2549 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1201, line: 1453, flags: DIFlagFwdDecl)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1200, file: !1201, line: 1457, baseType: !2551, size: 64, offset: 21120)
!2551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2552, size: 64)
!2552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !44, line: 61, size: 576, elements: !2553)
!2553 = !{!2554, !2555, !2574, !2577, !2578, !2611, !2621}
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2552, file: !44, line: 62, baseType: !43, size: 32)
!2555 = !DIDerivedType(tag: DW_TAG_member, scope: !2552, file: !44, line: 64, baseType: !2556, size: 192, offset: 64)
!2556 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2552, file: !44, line: 64, size: 192, elements: !2557)
!2557 = !{!2558, !2569}
!2558 = !DIDerivedType(tag: DW_TAG_member, scope: !2556, file: !44, line: 65, baseType: !2559, size: 192)
!2559 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2556, file: !44, line: 65, size: 192, elements: !2560)
!2560 = !{!2561, !2568}
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2559, file: !44, line: 66, baseType: !2562, size: 128)
!2562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2563, line: 50, size: 128, elements: !2564)
!2563 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2564 = !{!2565, !2566, !2567}
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2562, file: !2563, line: 52, baseType: !69, size: 64)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2562, file: !2563, line: 54, baseType: !7, size: 32, offset: 64)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2562, file: !2563, line: 55, baseType: !7, size: 32, offset: 96)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2559, file: !44, line: 67, baseType: !69, size: 64, offset: 128)
!2569 = !DIDerivedType(tag: DW_TAG_member, scope: !2556, file: !44, line: 70, baseType: !2570, size: 192)
!2570 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2556, file: !44, line: 70, size: 192, elements: !2571)
!2571 = !{!2572, !2573}
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2570, file: !44, line: 71, baseType: !189, size: 128, align: 64)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2570, file: !44, line: 72, baseType: !69, size: 64, offset: 128)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2552, file: !44, line: 76, baseType: !2575, size: 64, offset: 256)
!2575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2576, size: 64)
!2576 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !44, line: 76, flags: DIFlagFwdDecl)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2552, file: !44, line: 77, baseType: !69, size: 64, offset: 320)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2552, file: !44, line: 79, baseType: !2579, size: 64, offset: 384)
!2579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2580, size: 64)
!2580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2563, line: 25, size: 256, elements: !2581)
!2581 = !{!2582, !2588, !2592}
!2582 = !DIDerivedType(tag: DW_TAG_member, scope: !2580, file: !2563, line: 26, baseType: !2583, size: 128)
!2583 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2580, file: !2563, line: 26, size: 128, elements: !2584)
!2584 = !{!2585, !2587}
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2583, file: !2563, line: 27, baseType: !2586, size: 128)
!2586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 128, elements: !1782)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2583, file: !2563, line: 28, baseType: !2586, size: 128)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2580, file: !2563, line: 31, baseType: !2589, size: 64, offset: 128)
!2589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2590, size: 64)
!2590 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2591)
!2591 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2563, line: 23, flags: DIFlagFwdDecl)
!2592 = !DIDerivedType(tag: DW_TAG_member, scope: !2580, file: !2563, line: 33, baseType: !2593, size: 64, offset: 192)
!2593 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2580, file: !2563, line: 33, size: 64, elements: !2594)
!2594 = !{!2595, !2601, !2606}
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2593, file: !2563, line: 38, baseType: !2596, size: 64)
!2596 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2593, file: !2563, line: 34, size: 64, elements: !2597)
!2597 = !{!2598, !2599, !2600}
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2596, file: !2563, line: 35, baseType: !339, size: 32)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2596, file: !2563, line: 36, baseType: !128, size: 8, offset: 32)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2596, file: !2563, line: 37, baseType: !128, size: 8, offset: 40)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2593, file: !2563, line: 42, baseType: !2602, size: 16)
!2602 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2593, file: !2563, line: 39, size: 16, elements: !2603)
!2603 = !{!2604, !2605}
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2602, file: !2563, line: 40, baseType: !128, size: 8)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2602, file: !2563, line: 41, baseType: !128, size: 8, offset: 8)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2593, file: !2563, line: 46, baseType: !2607, size: 16)
!2607 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2593, file: !2563, line: 43, size: 16, elements: !2608)
!2608 = !{!2609, !2610}
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2607, file: !2563, line: 44, baseType: !128, size: 8)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2607, file: !2563, line: 45, baseType: !128, size: 8, offset: 8)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2552, file: !44, line: 81, baseType: !2612, size: 64, offset: 448)
!2612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2613, size: 64)
!2613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !44, line: 85, size: 384, elements: !2614)
!2614 = !{!2615, !2616, !2617, !2618, !2619, !2620}
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2613, file: !44, line: 86, baseType: !2575, size: 64)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2613, file: !44, line: 87, baseType: !69, size: 64, offset: 64)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2613, file: !44, line: 88, baseType: !69, size: 64, offset: 128)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2613, file: !44, line: 89, baseType: !69, size: 64, offset: 192)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2613, file: !44, line: 90, baseType: !415, size: 8, offset: 256)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2613, file: !44, line: 92, baseType: !2612, size: 64, offset: 320)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2552, file: !44, line: 82, baseType: !7, size: 32, offset: 512)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1200, file: !1201, line: 1463, baseType: !2623, offset: 21184)
!2623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1201, line: 739, elements: !830)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1200, file: !1201, line: 1470, baseType: !189, size: 128, align: 64, offset: 21184)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1200, file: !1201, line: 1471, baseType: !244, size: 32, offset: 21312)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1200, file: !1201, line: 1472, baseType: !67, size: 32, offset: 21344)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1200, file: !1201, line: 1474, baseType: !1199, size: 64, offset: 21376)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1200, file: !1201, line: 1475, baseType: !2629, size: 320, offset: 21440)
!2629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2630, line: 11, size: 320, elements: !2631)
!2630 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2631 = !{!2632, !2633, !2634, !2639}
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2629, file: !2630, line: 16, baseType: !257, size: 128)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2629, file: !2630, line: 17, baseType: !69, size: 64, offset: 128)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2629, file: !2630, line: 18, baseType: !2635, size: 64, offset: 192)
!2635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2636, size: 64)
!2636 = !DISubroutineType(types: !2637)
!2637 = !{null, !2638}
!2638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2629, size: 64)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2629, file: !2630, line: 19, baseType: !379, size: 32, offset: 256)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1200, file: !1201, line: 1478, baseType: !2641, size: 64, offset: 21760)
!2641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2642, size: 64)
!2642 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1201, line: 1478, flags: DIFlagFwdDecl)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1200, file: !1201, line: 1482, baseType: !244, size: 32, offset: 21824)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1200, file: !1201, line: 1489, baseType: !66, size: 64, offset: 21888)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1200, file: !1201, line: 1504, baseType: !66, size: 64, offset: 21952)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1200, file: !1201, line: 1505, baseType: !323, size: 64, offset: 22016)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1200, file: !1201, line: 1506, baseType: !322, size: 64, offset: 22080)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1200, file: !1201, line: 1507, baseType: !323, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1200, file: !1201, line: 1508, baseType: !323, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1200, file: !1201, line: 1509, baseType: !323, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1200, file: !1201, line: 1510, baseType: !189, size: 128, align: 64, offset: 22208)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1200, file: !1201, line: 1511, baseType: !67, size: 32, offset: 22336)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1200, file: !1201, line: 1515, baseType: !2654, size: 64, offset: 22400)
!2654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !184, line: 56, size: 64, elements: !2655)
!2655 = !{!2656}
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2654, file: !184, line: 57, baseType: !187, size: 64)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1200, file: !1201, line: 1518, baseType: !2654, size: 64, offset: 22464)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1200, file: !1201, line: 1528, baseType: !189, size: 128, align: 64, offset: 22528)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1200, file: !1201, line: 1552, baseType: !2660, size: 35328, offset: 23040)
!2660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2661, line: 430, size: 35328, elements: !2662)
!2661 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!2662 = !{!2663, !2681, !2682, !2683, !2684, !2685, !2686, !2687, !2688, !2692, !2693, !2694, !2695, !2696, !2697, !2700, !2701, !2702, !2703}
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2660, file: !2661, line: 432, baseType: !2664, size: 192)
!2664 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2665, size: 192, elements: !236)
!2665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2666, line: 16, size: 64, elements: !2667)
!2666 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!2667 = !{!2668, !2669, !2670, !2671, !2672, !2673, !2674, !2675, !2676, !2677, !2678, !2679, !2680}
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2665, file: !2666, line: 17, baseType: !136, size: 16)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2665, file: !2666, line: 18, baseType: !136, size: 16, offset: 16)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2665, file: !2666, line: 19, baseType: !136, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2665, file: !2666, line: 19, baseType: !136, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2665, file: !2666, line: 19, baseType: !136, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2665, file: !2666, line: 19, baseType: !136, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2665, file: !2666, line: 19, baseType: !136, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2665, file: !2666, line: 20, baseType: !136, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2665, file: !2666, line: 20, baseType: !136, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2665, file: !2666, line: 20, baseType: !136, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2665, file: !2666, line: 20, baseType: !136, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2665, file: !2666, line: 20, baseType: !136, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2665, file: !2666, line: 20, baseType: !136, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2660, file: !2661, line: 436, baseType: !69, size: 64, offset: 192)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2660, file: !2661, line: 440, baseType: !138, size: 16, offset: 256)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2660, file: !2661, line: 441, baseType: !138, size: 16, offset: 272)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2660, file: !2661, line: 442, baseType: !138, size: 16, offset: 288)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2660, file: !2661, line: 443, baseType: !138, size: 16, offset: 304)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2660, file: !2661, line: 447, baseType: !69, size: 64, offset: 320)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2660, file: !2661, line: 448, baseType: !69, size: 64, offset: 384)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2660, file: !2661, line: 459, baseType: !2689, size: 256, offset: 448)
!2689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2690, size: 256, elements: !262)
!2690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2691, size: 64)
!2691 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2661, line: 428, flags: DIFlagFwdDecl)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2660, file: !2661, line: 461, baseType: !69, size: 64, offset: 704)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2660, file: !2661, line: 463, baseType: !69, size: 64, offset: 768)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2660, file: !2661, line: 465, baseType: !69, size: 64, offset: 832)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2660, file: !2661, line: 466, baseType: !69, size: 64, offset: 896)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2660, file: !2661, line: 467, baseType: !69, size: 64, offset: 960)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2660, file: !2661, line: 473, baseType: !2698, size: 64, offset: 1024)
!2698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2699, size: 64)
!2699 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2661, line: 10, flags: DIFlagFwdDecl)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2660, file: !2661, line: 480, baseType: !69, size: 64, offset: 1088)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !2660, file: !2661, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !2660, file: !2661, line: 491, baseType: !379, size: 32, offset: 1184)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2660, file: !2661, line: 501, baseType: !2704, size: 33792, offset: 1536)
!2704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2705, line: 448, size: 33792, elements: !2706)
!2705 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!2706 = !{!2707, !2708, !2709, !2873, !2874, !2880, !2881}
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2704, file: !2705, line: 461, baseType: !7, size: 32)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2704, file: !2705, line: 468, baseType: !69, size: 64, offset: 64)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !2704, file: !2705, line: 476, baseType: !2710, size: 64, offset: 128)
!2710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2711, size: 64)
!2711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !2705, line: 356, size: 33280, align: 512, elements: !2712)
!2712 = !{!2713, !2714, !2715, !2716, !2717, !2718, !2719, !2720, !2721, !2722}
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2711, file: !2705, line: 358, baseType: !7, size: 32)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !2711, file: !2705, line: 361, baseType: !7, size: 32, offset: 32)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2711, file: !2705, line: 364, baseType: !322, size: 64, offset: 64)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !2711, file: !2705, line: 367, baseType: !322, size: 64, offset: 128)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !2711, file: !2705, line: 370, baseType: !322, size: 64, offset: 192)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !2711, file: !2705, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !2711, file: !2705, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !2711, file: !2705, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !2711, file: !2705, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2711, file: !2705, line: 397, baseType: !2723, size: 32768, offset: 512)
!2723 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2705, line: 348, size: 32768, elements: !2724)
!2724 = !{!2725, !2740, !2779, !2856, !2869}
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2723, file: !2705, line: 349, baseType: !2726, size: 896)
!2726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2705, line: 12, size: 896, elements: !2727)
!2727 = !{!2728, !2729, !2730, !2731, !2732, !2733, !2734, !2735, !2739}
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2726, file: !2705, line: 13, baseType: !379, size: 32)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2726, file: !2705, line: 14, baseType: !379, size: 32, offset: 32)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2726, file: !2705, line: 15, baseType: !379, size: 32, offset: 64)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2726, file: !2705, line: 16, baseType: !379, size: 32, offset: 96)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2726, file: !2705, line: 17, baseType: !379, size: 32, offset: 128)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2726, file: !2705, line: 18, baseType: !379, size: 32, offset: 160)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2726, file: !2705, line: 19, baseType: !379, size: 32, offset: 192)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2726, file: !2705, line: 22, baseType: !2736, size: 640, offset: 224)
!2736 = !DICompositeType(tag: DW_TAG_array_type, baseType: !379, size: 640, elements: !2737)
!2737 = !{!2738}
!2738 = !DISubrange(count: 20)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2726, file: !2705, line: 25, baseType: !379, size: 32, offset: 864)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2723, file: !2705, line: 350, baseType: !2741, size: 4096, align: 128)
!2741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2705, line: 34, size: 4096, align: 128, elements: !2742)
!2742 = !{!2743, !2744, !2745, !2746, !2747, !2762, !2763, !2764, !2768, !2770, !2774}
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2741, file: !2705, line: 35, baseType: !136, size: 16)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2741, file: !2705, line: 36, baseType: !136, size: 16, offset: 16)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2741, file: !2705, line: 37, baseType: !136, size: 16, offset: 32)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2741, file: !2705, line: 38, baseType: !136, size: 16, offset: 48)
!2747 = !DIDerivedType(tag: DW_TAG_member, scope: !2741, file: !2705, line: 39, baseType: !2748, size: 128, offset: 64)
!2748 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2741, file: !2705, line: 39, size: 128, elements: !2749)
!2749 = !{!2750, !2755}
!2750 = !DIDerivedType(tag: DW_TAG_member, scope: !2748, file: !2705, line: 40, baseType: !2751, size: 128)
!2751 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2748, file: !2705, line: 40, size: 128, elements: !2752)
!2752 = !{!2753, !2754}
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2751, file: !2705, line: 41, baseType: !322, size: 64)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2751, file: !2705, line: 42, baseType: !322, size: 64, offset: 64)
!2755 = !DIDerivedType(tag: DW_TAG_member, scope: !2748, file: !2705, line: 44, baseType: !2756, size: 128)
!2756 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2748, file: !2705, line: 44, size: 128, elements: !2757)
!2757 = !{!2758, !2759, !2760, !2761}
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2756, file: !2705, line: 45, baseType: !379, size: 32)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2756, file: !2705, line: 46, baseType: !379, size: 32, offset: 32)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2756, file: !2705, line: 47, baseType: !379, size: 32, offset: 64)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2756, file: !2705, line: 48, baseType: !379, size: 32, offset: 96)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2741, file: !2705, line: 51, baseType: !379, size: 32, offset: 192)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2741, file: !2705, line: 52, baseType: !379, size: 32, offset: 224)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2741, file: !2705, line: 55, baseType: !2765, size: 1024, offset: 256)
!2765 = !DICompositeType(tag: DW_TAG_array_type, baseType: !379, size: 1024, elements: !2766)
!2766 = !{!2767}
!2767 = !DISubrange(count: 32)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2741, file: !2705, line: 58, baseType: !2769, size: 2048, offset: 1280)
!2769 = !DICompositeType(tag: DW_TAG_array_type, baseType: !379, size: 2048, elements: !1980)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2741, file: !2705, line: 60, baseType: !2771, size: 384, offset: 3328)
!2771 = !DICompositeType(tag: DW_TAG_array_type, baseType: !379, size: 384, elements: !2772)
!2772 = !{!2773}
!2773 = !DISubrange(count: 12)
!2774 = !DIDerivedType(tag: DW_TAG_member, scope: !2741, file: !2705, line: 62, baseType: !2775, size: 384, offset: 3712)
!2775 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2741, file: !2705, line: 62, size: 384, elements: !2776)
!2776 = !{!2777, !2778}
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2775, file: !2705, line: 63, baseType: !2771, size: 384)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2775, file: !2705, line: 64, baseType: !2771, size: 384)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2723, file: !2705, line: 351, baseType: !2780, size: 1088)
!2780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2705, line: 79, size: 1088, elements: !2781)
!2781 = !{!2782, !2783, !2784, !2785, !2786, !2787, !2788, !2789, !2790, !2791, !2792, !2793, !2794, !2795, !2796, !2855}
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2780, file: !2705, line: 80, baseType: !379, size: 32)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2780, file: !2705, line: 81, baseType: !379, size: 32, offset: 32)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2780, file: !2705, line: 82, baseType: !379, size: 32, offset: 64)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2780, file: !2705, line: 83, baseType: !379, size: 32, offset: 96)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2780, file: !2705, line: 84, baseType: !379, size: 32, offset: 128)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2780, file: !2705, line: 85, baseType: !379, size: 32, offset: 160)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2780, file: !2705, line: 86, baseType: !379, size: 32, offset: 192)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2780, file: !2705, line: 88, baseType: !2736, size: 640, offset: 224)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2780, file: !2705, line: 89, baseType: !128, size: 8, offset: 864)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2780, file: !2705, line: 90, baseType: !128, size: 8, offset: 872)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2780, file: !2705, line: 91, baseType: !128, size: 8, offset: 880)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2780, file: !2705, line: 92, baseType: !128, size: 8, offset: 888)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2780, file: !2705, line: 93, baseType: !128, size: 8, offset: 896)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2780, file: !2705, line: 94, baseType: !128, size: 8, offset: 904)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2780, file: !2705, line: 95, baseType: !2797, size: 64, offset: 960)
!2797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2798, size: 64)
!2798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2799, line: 11, size: 128, elements: !2800)
!2799 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!2800 = !{!2801, !2802}
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2798, file: !2799, line: 12, baseType: !693, size: 64)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2798, file: !2799, line: 13, baseType: !2803, size: 64, offset: 64)
!2803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2804, size: 64)
!2804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2805, line: 103, size: 1344, elements: !2806)
!2805 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!2806 = !{!2807, !2808, !2809, !2810, !2811, !2812, !2813, !2814, !2815, !2816, !2817, !2818, !2819, !2820, !2821, !2822, !2823, !2824, !2835, !2836, !2837}
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2804, file: !2805, line: 109, baseType: !69, size: 64)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2804, file: !2805, line: 110, baseType: !69, size: 64, offset: 64)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2804, file: !2805, line: 111, baseType: !69, size: 64, offset: 128)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2804, file: !2805, line: 112, baseType: !69, size: 64, offset: 192)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2804, file: !2805, line: 113, baseType: !69, size: 64, offset: 256)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2804, file: !2805, line: 114, baseType: !69, size: 64, offset: 320)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2804, file: !2805, line: 117, baseType: !69, size: 64, offset: 384)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2804, file: !2805, line: 118, baseType: !69, size: 64, offset: 448)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2804, file: !2805, line: 119, baseType: !69, size: 64, offset: 512)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2804, file: !2805, line: 120, baseType: !69, size: 64, offset: 576)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2804, file: !2805, line: 121, baseType: !69, size: 64, offset: 640)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2804, file: !2805, line: 122, baseType: !69, size: 64, offset: 704)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2804, file: !2805, line: 123, baseType: !69, size: 64, offset: 768)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2804, file: !2805, line: 124, baseType: !69, size: 64, offset: 832)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2804, file: !2805, line: 125, baseType: !69, size: 64, offset: 896)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2804, file: !2805, line: 139, baseType: !69, size: 64, offset: 960)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2804, file: !2805, line: 142, baseType: !69, size: 64, offset: 1024)
!2824 = !DIDerivedType(tag: DW_TAG_member, scope: !2804, file: !2805, line: 144, baseType: !2825, size: 64, offset: 1088)
!2825 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2804, file: !2805, line: 144, size: 64, elements: !2826)
!2826 = !{!2827, !2828, !2829}
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2825, file: !2805, line: 146, baseType: !136, size: 16)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !2825, file: !2805, line: 148, baseType: !322, size: 64)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !2825, file: !2805, line: 150, baseType: !2830, size: 64)
!2830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !2805, line: 59, size: 64, elements: !2831)
!2831 = !{!2832, !2833, !2834}
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2830, file: !2805, line: 61, baseType: !322, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !2830, file: !2805, line: 63, baseType: !322, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !2830, file: !2805, line: 65, baseType: !322, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2804, file: !2805, line: 153, baseType: !69, size: 64, offset: 1152)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2804, file: !2805, line: 154, baseType: !69, size: 64, offset: 1216)
!2837 = !DIDerivedType(tag: DW_TAG_member, scope: !2804, file: !2805, line: 156, baseType: !2838, size: 64, offset: 1280)
!2838 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2804, file: !2805, line: 156, size: 64, elements: !2839)
!2839 = !{!2840, !2841, !2842}
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2838, file: !2805, line: 158, baseType: !136, size: 16)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !2838, file: !2805, line: 160, baseType: !322, size: 64)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !2838, file: !2805, line: 162, baseType: !2843, size: 64)
!2843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !2805, line: 69, size: 64, elements: !2844)
!2844 = !{!2845, !2846, !2847, !2848, !2849, !2850, !2851, !2852, !2853, !2854}
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2843, file: !2805, line: 71, baseType: !322, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !2843, file: !2805, line: 73, baseType: !322, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !2843, file: !2805, line: 75, baseType: !322, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !2843, file: !2805, line: 77, baseType: !322, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !2843, file: !2805, line: 80, baseType: !322, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2843, file: !2805, line: 83, baseType: !322, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !2843, file: !2805, line: 86, baseType: !322, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !2843, file: !2805, line: 88, baseType: !322, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !2843, file: !2805, line: 93, baseType: !322, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !2843, file: !2805, line: 100, baseType: !322, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2780, file: !2705, line: 96, baseType: !379, size: 32, offset: 1024)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2723, file: !2705, line: 352, baseType: !2857, size: 4608, align: 512)
!2857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2705, line: 333, size: 4608, align: 512, elements: !2858)
!2858 = !{!2859, !2860, !2867}
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2857, file: !2705, line: 334, baseType: !2741, size: 4096, align: 128)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2857, file: !2705, line: 335, baseType: !2861, size: 512, offset: 4096)
!2861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2705, line: 312, size: 512, elements: !2862)
!2862 = !{!2863, !2864, !2865}
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2861, file: !2705, line: 313, baseType: !322, size: 64)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2861, file: !2705, line: 314, baseType: !322, size: 64, offset: 64)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2861, file: !2705, line: 315, baseType: !2866, size: 384, offset: 128)
!2866 = !DICompositeType(tag: DW_TAG_array_type, baseType: !322, size: 384, elements: !402)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2857, file: !2705, line: 336, baseType: !2868, offset: 4608)
!2868 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, elements: !281)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2723, file: !2705, line: 353, baseType: !2870, size: 32768)
!2870 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 32768, elements: !2871)
!2871 = !{!2872}
!2872 = !DISubrange(count: 4096)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !2704, file: !2705, line: 484, baseType: !2710, size: 64, offset: 192)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2704, file: !2705, line: 491, baseType: !2875, size: 128, offset: 256)
!2875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !2705, line: 404, size: 128, elements: !2876)
!2876 = !{!2877, !2878, !2879}
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !2875, file: !2705, line: 424, baseType: !322, size: 64)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !2875, file: !2705, line: 432, baseType: !7, size: 32, offset: 64)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !2875, file: !2705, line: 440, baseType: !7, size: 32, offset: 96)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !2704, file: !2705, line: 498, baseType: !2875, size: 128, offset: 384)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !2704, file: !2705, line: 508, baseType: !2711, size: 33280, align: 512, offset: 512)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1181, file: !1182, line: 16, baseType: !266, size: 192, offset: 512)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1181, file: !1182, line: 17, baseType: !120, size: 32, offset: 704)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !790, file: !6, line: 1240, baseType: !66, size: 64, offset: 6912)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !790, file: !6, line: 1243, baseType: !379, size: 32, offset: 6976)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !790, file: !6, line: 1245, baseType: !370, size: 64, offset: 7040)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !790, file: !6, line: 1246, baseType: !370, size: 64, offset: 7104)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !790, file: !6, line: 1248, baseType: !380, size: 32, offset: 7168)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !790, file: !6, line: 1249, baseType: !2890, size: 64, offset: 7232)
!2890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2891, size: 64)
!2891 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !6, line: 634, flags: DIFlagFwdDecl)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !790, file: !6, line: 1252, baseType: !2893, size: 256, offset: 7296)
!2893 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 256, elements: !2766)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !790, file: !6, line: 1253, baseType: !2895, size: 128, offset: 7552)
!2895 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2896, line: 21, baseType: !2897)
!2896 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!2897 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2896, line: 19, size: 128, elements: !2898)
!2898 = !{!2899}
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2897, file: !2896, line: 20, baseType: !2900, size: 128)
!2900 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 128, elements: !1782)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !790, file: !6, line: 1255, baseType: !7, size: 32, offset: 7680)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !790, file: !6, line: 1261, baseType: !92, size: 256, offset: 7744)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !790, file: !6, line: 1267, baseType: !418, size: 64, offset: 8000)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !790, file: !6, line: 1269, baseType: !2905, size: 64, offset: 8064)
!2905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2906, size: 64)
!2906 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2907)
!2907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !540, line: 128, size: 1024, align: 512, elements: !2908)
!2908 = !{!2909, !2913, !2914, !2921, !2927, !2931, !2935, !2939, !2940, !2944, !2948, !2953, !2957}
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2907, file: !540, line: 129, baseType: !2910, size: 64)
!2910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2911, size: 64)
!2911 = !DISubroutineType(types: !2912)
!2912 = !{!67, !538, !7}
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2907, file: !540, line: 130, baseType: !2910, size: 64, offset: 64)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2907, file: !540, line: 131, baseType: !2915, size: 64, offset: 128)
!2915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2916, size: 64)
!2916 = !DISubroutineType(types: !2917)
!2917 = !{!67, !2918, !2920}
!2918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2919, size: 64)
!2919 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !539)
!2920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2907, file: !540, line: 132, baseType: !2922, size: 64, offset: 192)
!2922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2923, size: 64)
!2923 = !DISubroutineType(types: !2924)
!2924 = !{!67, !2918, !7, !418, !2925}
!2925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2926, size: 64)
!2926 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !563)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2907, file: !540, line: 134, baseType: !2928, size: 64, offset: 256)
!2928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2929, size: 64)
!2929 = !DISubroutineType(types: !2930)
!2930 = !{!67, !2918}
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2907, file: !540, line: 135, baseType: !2932, size: 64, offset: 320)
!2932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2933, size: 64)
!2933 = !DISubroutineType(types: !2934)
!2934 = !{!67, !538}
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2907, file: !540, line: 136, baseType: !2936, size: 64, offset: 384)
!2936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2937, size: 64)
!2937 = !DISubroutineType(types: !2938)
!2938 = !{null, !538}
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2907, file: !540, line: 137, baseType: !2936, size: 64, offset: 448)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2907, file: !540, line: 138, baseType: !2941, size: 64, offset: 512)
!2941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2942, size: 64)
!2942 = !DISubroutineType(types: !2943)
!2943 = !{null, !538, !578}
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2907, file: !540, line: 139, baseType: !2945, size: 64, offset: 576)
!2945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2946, size: 64)
!2946 = !DISubroutineType(types: !2947)
!2947 = !{!80, !538, !80, !67}
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2907, file: !540, line: 140, baseType: !2949, size: 64, offset: 640)
!2949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2950, size: 64)
!2950 = !DISubroutineType(types: !2951)
!2951 = !{!533, !2952}
!2952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2907, file: !540, line: 141, baseType: !2954, size: 64, offset: 704)
!2954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2955, size: 64)
!2955 = !DISubroutineType(types: !2956)
!2956 = !{!67, !702, !415}
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2907, file: !540, line: 142, baseType: !2958, size: 64, offset: 768)
!2958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2959, size: 64)
!2959 = !DISubroutineType(types: !2960)
!2960 = !{!538, !538, !2961}
!2961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2962, size: 64)
!2962 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !579)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !790, file: !6, line: 1271, baseType: !2964, size: 448, offset: 8128)
!2964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !963, line: 63, size: 448, elements: !2965)
!2965 = !{!2966, !2971, !2972, !2973, !2974, !2975, !2976}
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2964, file: !963, line: 64, baseType: !2967, size: 64)
!2967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2968, size: 64)
!2968 = !DISubroutineType(types: !2969)
!2969 = !{!69, !2970, !961}
!2970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2964, size: 64)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2964, file: !963, line: 66, baseType: !2967, size: 64, offset: 64)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2964, file: !963, line: 69, baseType: !693, size: 64, offset: 128)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2964, file: !963, line: 70, baseType: !67, size: 32, offset: 192)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2964, file: !963, line: 71, baseType: !7, size: 32, offset: 224)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2964, file: !963, line: 74, baseType: !146, size: 128, offset: 256)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2964, file: !963, line: 85, baseType: !2977, size: 64, offset: 384)
!2977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !790, file: !6, line: 1274, baseType: !96, size: 64, offset: 8576)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !790, file: !6, line: 1280, baseType: !96, size: 64, offset: 8640)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !790, file: !6, line: 1283, baseType: !67, size: 32, offset: 8704)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !790, file: !6, line: 1286, baseType: !2493, size: 32, offset: 8736)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !790, file: !6, line: 1289, baseType: !2983, size: 64, offset: 8768)
!2983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2984, size: 64)
!2984 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1620, line: 18, flags: DIFlagFwdDecl)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !790, file: !6, line: 1290, baseType: !253, size: 64, offset: 8832)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !790, file: !6, line: 1297, baseType: !500, size: 64, offset: 8896)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !790, file: !6, line: 1304, baseType: !2988, size: 64, offset: 8960)
!2988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2989, line: 49, size: 64, elements: !2990)
!2989 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!2990 = !{!2991}
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2988, file: !2989, line: 50, baseType: !2992, size: 64)
!2992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2993, size: 64)
!2993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2989, line: 41, size: 512, align: 512, elements: !2994)
!2994 = !{!2995, !2996, !3001}
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2993, file: !2989, line: 43, baseType: !199, size: 32)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2993, file: !2989, line: 45, baseType: !2997, size: 192, offset: 64)
!2997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2989, line: 29, size: 192, elements: !2998)
!2998 = !{!2999, !3000}
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2997, file: !2989, line: 30, baseType: !146, size: 128)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2997, file: !2989, line: 32, baseType: !693, size: 64, offset: 128)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2993, file: !2989, line: 46, baseType: !693, size: 64, offset: 256)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !790, file: !6, line: 1305, baseType: !2988, size: 64, offset: 9024)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !790, file: !6, line: 1306, baseType: !189, size: 128, align: 64, offset: 9088)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !790, file: !6, line: 1307, baseType: !1619, size: 256, offset: 9216)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !790, file: !6, line: 1309, baseType: !92, size: 256, offset: 9472)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !790, file: !6, line: 1314, baseType: !67, size: 32, offset: 9728)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !790, file: !6, line: 1317, baseType: !199, size: 32, align: 512, offset: 10240)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !790, file: !6, line: 1318, baseType: !146, size: 128, offset: 10304)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !790, file: !6, line: 1320, baseType: !199, size: 32, offset: 10432)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !790, file: !6, line: 1321, baseType: !146, size: 128, offset: 10496)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !579, file: !6, line: 656, baseType: !2245, size: 64, offset: 512)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !579, file: !6, line: 659, baseType: !66, size: 64, offset: 576)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !579, file: !6, line: 663, baseType: !69, size: 64, offset: 640)
!3014 = !DIDerivedType(tag: DW_TAG_member, scope: !579, file: !6, line: 671, baseType: !3015, size: 32, offset: 704)
!3015 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !579, file: !6, line: 671, size: 32, elements: !3016)
!3016 = !{!3017, !3019}
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3015, file: !6, line: 672, baseType: !3018, size: 32)
!3018 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3015, file: !6, line: 673, baseType: !7, size: 32)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !579, file: !6, line: 675, baseType: !653, size: 32, offset: 736)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !579, file: !6, line: 676, baseType: !87, size: 64, offset: 768)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !579, file: !6, line: 677, baseType: !689, size: 128, offset: 832)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !579, file: !6, line: 678, baseType: !689, size: 128, offset: 960)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !579, file: !6, line: 679, baseType: !689, size: 128, offset: 1088)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !579, file: !6, line: 680, baseType: !199, size: 32, offset: 1216)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !579, file: !6, line: 681, baseType: !138, size: 16, offset: 1248)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !579, file: !6, line: 682, baseType: !128, size: 8, offset: 1264)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !579, file: !6, line: 683, baseType: !128, size: 8, offset: 1272)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !579, file: !6, line: 684, baseType: !1094, size: 64, offset: 1280)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !579, file: !6, line: 691, baseType: !69, size: 64, offset: 1344)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !579, file: !6, line: 692, baseType: !354, size: 320, offset: 1408)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !579, file: !6, line: 694, baseType: !69, size: 64, offset: 1728)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !579, file: !6, line: 695, baseType: !69, size: 64, offset: 1792)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !579, file: !6, line: 697, baseType: !257, size: 128, offset: 1856)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !579, file: !6, line: 698, baseType: !146, size: 128, offset: 1984)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !579, file: !6, line: 707, baseType: !146, size: 128, offset: 2112)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !579, file: !6, line: 708, baseType: !146, size: 128, offset: 2240)
!3038 = !DIDerivedType(tag: DW_TAG_member, scope: !579, file: !6, line: 709, baseType: !3039, size: 128, offset: 2368)
!3039 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !579, file: !6, line: 709, size: 128, elements: !3040)
!3040 = !{!3041, !3042}
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3039, file: !6, line: 710, baseType: !253, size: 64)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3039, file: !6, line: 711, baseType: !189, size: 128, align: 64)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !579, file: !6, line: 713, baseType: !98, size: 64, offset: 2496)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !579, file: !6, line: 714, baseType: !98, size: 64, offset: 2560)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !579, file: !6, line: 715, baseType: !120, size: 32, offset: 2624)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !579, file: !6, line: 716, baseType: !120, size: 32, offset: 2656)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !579, file: !6, line: 717, baseType: !120, size: 32, offset: 2688)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !579, file: !6, line: 719, baseType: !120, size: 32, offset: 2720)
!3049 = !DIDerivedType(tag: DW_TAG_member, scope: !579, file: !6, line: 721, baseType: !3050, size: 64, offset: 2752)
!3050 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !579, file: !6, line: 721, size: 64, elements: !3051)
!3051 = !{!3052, !3233}
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3050, file: !6, line: 722, baseType: !3053, size: 64)
!3053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3054, size: 64)
!3054 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3055)
!3055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !6, line: 1914, size: 2112, elements: !3056)
!3056 = !{!3057, !3058, !3062, !3066, !3070, !3071, !3072, !3078, !3091, !3099, !3103, !3104, !3161, !3162, !3166, !3171, !3172, !3176, !3180, !3186, !3187, !3191, !3192, !3196, !3200, !3201, !3206, !3210, !3214, !3218, !3222, !3223, !3229}
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3055, file: !6, line: 1915, baseType: !822, size: 64)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3055, file: !6, line: 1916, baseType: !3059, size: 64, offset: 64)
!3059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3060, size: 64)
!3060 = !DISubroutineType(types: !3061)
!3061 = !{!87, !697, !87, !67}
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3055, file: !6, line: 1917, baseType: !3063, size: 64, offset: 128)
!3063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3064, size: 64)
!3064 = !DISubroutineType(types: !3065)
!3065 = !{!733, !697, !80, !70, !160}
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3055, file: !6, line: 1918, baseType: !3067, size: 64, offset: 192)
!3067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3068, size: 64)
!3068 = !DISubroutineType(types: !3069)
!3069 = !{!733, !697, !418, !70, !160}
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3055, file: !6, line: 1919, baseType: !2377, size: 64, offset: 256)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3055, file: !6, line: 1920, baseType: !2377, size: 64, offset: 320)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3055, file: !6, line: 1921, baseType: !3073, size: 64, offset: 384)
!3073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3074, size: 64)
!3074 = !DISubroutineType(types: !3075)
!3075 = !{!67, !2380, !3076, !7}
!3076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3077, size: 64)
!3077 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !6, line: 53, flags: DIFlagFwdDecl)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3055, file: !6, line: 1923, baseType: !3079, size: 64, offset: 448)
!3079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3080, size: 64)
!3080 = !DISubroutineType(types: !3081)
!3081 = !{!67, !697, !3082}
!3082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3083, size: 64)
!3083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !6, line: 1858, size: 128, elements: !3084)
!3084 = !{!3085, !3090}
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3083, file: !6, line: 1859, baseType: !3086, size: 64)
!3086 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !6, line: 1855, baseType: !3087)
!3087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3088, size: 64)
!3088 = !DISubroutineType(types: !3089)
!3089 = !{!415, !3082, !418, !67, !87, !322, !7}
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3083, file: !6, line: 1860, baseType: !87, size: 64, offset: 64)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3055, file: !6, line: 1924, baseType: !3092, size: 64, offset: 512)
!3092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3093, size: 64)
!3093 = !DISubroutineType(types: !3094)
!3094 = !{!3095, !697, !3097}
!3095 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !3096, line: 59, baseType: !7)
!3096 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!3097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64)
!3098 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !6, line: 61, flags: DIFlagFwdDecl)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3055, file: !6, line: 1925, baseType: !3100, size: 64, offset: 576)
!3100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3101, size: 64)
!3101 = !DISubroutineType(types: !3102)
!3102 = !{!693, !697, !7, !69}
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3055, file: !6, line: 1926, baseType: !3100, size: 64, offset: 640)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3055, file: !6, line: 1927, baseType: !3105, size: 64, offset: 704)
!3105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3106, size: 64)
!3106 = !DISubroutineType(types: !3107)
!3107 = !{!67, !697, !3108}
!3108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3109, size: 64)
!3109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !1489, line: 625, size: 1344, elements: !3110)
!3110 = !{!3111, !3120, !3121, !3127, !3134, !3135, !3140, !3141, !3146, !3147, !3150, !3154, !3155, !3156, !3157, !3158, !3159}
!3111 = !DIDerivedType(tag: DW_TAG_member, scope: !3109, file: !1489, line: 628, baseType: !3112, size: 128)
!3112 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3109, file: !1489, line: 628, size: 128, elements: !3113)
!3113 = !{!3114, !3119}
!3114 = !DIDerivedType(tag: DW_TAG_member, scope: !3112, file: !1489, line: 629, baseType: !3115, size: 128)
!3115 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3112, file: !1489, line: 629, size: 128, elements: !3116)
!3116 = !{!3117, !3118}
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !3115, file: !1489, line: 631, baseType: !69, size: 64)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !3115, file: !1489, line: 632, baseType: !69, size: 64, offset: 64)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !3112, file: !1489, line: 635, baseType: !189, size: 128, align: 64)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !3109, file: !1489, line: 639, baseType: !1487, size: 64, offset: 128)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !3109, file: !1489, line: 640, baseType: !3122, size: 64, offset: 192)
!3122 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1523, line: 297, baseType: !3123)
!3123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1523, line: 297, size: 64, elements: !3124)
!3124 = !{!3125}
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !3123, file: !1523, line: 297, baseType: !3126, size: 64)
!3126 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1528, line: 19, baseType: !69)
!3127 = !DIDerivedType(tag: DW_TAG_member, scope: !3109, file: !1489, line: 646, baseType: !3128, size: 64, offset: 256)
!3128 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3109, file: !1489, line: 646, size: 64, elements: !3129)
!3129 = !{!3130, !3133}
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !3128, file: !1489, line: 647, baseType: !3131, size: 64)
!3131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3132)
!3132 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !1489, line: 542, baseType: !69)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !3128, file: !1489, line: 648, baseType: !3132, size: 64)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !3109, file: !1489, line: 666, baseType: !67, size: 32, offset: 320)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !3109, file: !1489, line: 667, baseType: !3136, size: 64, offset: 384)
!3136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3137, size: 64)
!3137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !1489, line: 579, size: 320, elements: !3138)
!3138 = !{!3139}
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3137, file: !1489, line: 580, baseType: !354, size: 320)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !3109, file: !1489, line: 670, baseType: !415, size: 8, offset: 448)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !3109, file: !1489, line: 681, baseType: !3142, size: 256, offset: 512)
!3142 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3109, file: !1489, line: 678, size: 256, elements: !3143)
!3143 = !{!3144, !3145}
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3142, file: !1489, line: 679, baseType: !346, size: 192, align: 64)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !3142, file: !1489, line: 680, baseType: !69, size: 64, offset: 192)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !3109, file: !1489, line: 689, baseType: !146, size: 128, offset: 768)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !3109, file: !1489, line: 691, baseType: !3148, size: 64, offset: 896)
!3148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3149, size: 64)
!3149 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !1489, line: 691, flags: DIFlagFwdDecl)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3109, file: !1489, line: 694, baseType: !3151, size: 64, offset: 960)
!3151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3152, size: 64)
!3152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3153)
!3153 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1489, line: 694, flags: DIFlagFwdDecl)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !3109, file: !1489, line: 697, baseType: !69, size: 64, offset: 1024)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !3109, file: !1489, line: 699, baseType: !697, size: 64, offset: 1088)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !3109, file: !1489, line: 700, baseType: !66, size: 64, offset: 1152)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !3109, file: !1489, line: 711, baseType: !96, size: 64, offset: 1216)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !3109, file: !1489, line: 717, baseType: !2180, size: 64, offset: 1280)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !3109, file: !1489, line: 722, baseType: !3160, offset: 1344)
!3160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !1489, line: 570, elements: !830)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3055, file: !6, line: 1928, baseType: !69, size: 64, offset: 768)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3055, file: !6, line: 1929, baseType: !3163, size: 64, offset: 832)
!3163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3164, size: 64)
!3164 = !DISubroutineType(types: !3165)
!3165 = !{!67, !578, !697}
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3055, file: !6, line: 1930, baseType: !3167, size: 64, offset: 896)
!3167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3168, size: 64)
!3168 = !DISubroutineType(types: !3169)
!3169 = !{!67, !697, !3170}
!3170 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !6, line: 1061, baseType: !66)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3055, file: !6, line: 1931, baseType: !3163, size: 64, offset: 960)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3055, file: !6, line: 1932, baseType: !3173, size: 64, offset: 1024)
!3173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3174, size: 64)
!3174 = !DISubroutineType(types: !3175)
!3175 = !{!67, !697, !87, !87, !67}
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3055, file: !6, line: 1933, baseType: !3177, size: 64, offset: 1088)
!3177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3178, size: 64)
!3178 = !DISubroutineType(types: !3179)
!3179 = !{!67, !67, !697, !67}
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3055, file: !6, line: 1934, baseType: !3181, size: 64, offset: 1152)
!3181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3182, size: 64)
!3182 = !DISubroutineType(types: !3183)
!3183 = !{!67, !697, !67, !3184}
!3184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3185, size: 64)
!3185 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !6, line: 1063, flags: DIFlagFwdDecl)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3055, file: !6, line: 1935, baseType: !1512, size: 64, offset: 1216)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3055, file: !6, line: 1936, baseType: !3188, size: 64, offset: 1280)
!3188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3189, size: 64)
!3189 = !DISubroutineType(types: !3190)
!3190 = !{!67, !67}
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3055, file: !6, line: 1937, baseType: !3181, size: 64, offset: 1344)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3055, file: !6, line: 1938, baseType: !3193, size: 64, offset: 1408)
!3193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3194, size: 64)
!3194 = !DISubroutineType(types: !3195)
!3195 = !{!733, !2217, !697, !160, !70, !7}
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3055, file: !6, line: 1939, baseType: !3197, size: 64, offset: 1472)
!3197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3198, size: 64)
!3198 = !DISubroutineType(types: !3199)
!3199 = !{!733, !697, !160, !2217, !70, !7}
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !3055, file: !6, line: 1940, baseType: !2483, size: 64, offset: 1536)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3055, file: !6, line: 1941, baseType: !3202, size: 64, offset: 1600)
!3202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3203, size: 64)
!3203 = !DISubroutineType(types: !3204)
!3204 = !{!67, !697, !67, !3205, !2354}
!3205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3184, size: 64)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3055, file: !6, line: 1942, baseType: !3207, size: 64, offset: 1664)
!3207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3208, size: 64)
!3208 = !DISubroutineType(types: !3209)
!3209 = !{!693, !697, !67, !87, !87}
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3055, file: !6, line: 1944, baseType: !3211, size: 64, offset: 1728)
!3211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3212, size: 64)
!3212 = !DISubroutineType(types: !3213)
!3213 = !{null, !75, !697}
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3055, file: !6, line: 1948, baseType: !3215, size: 64, offset: 1792)
!3215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3216, size: 64)
!3216 = !DISubroutineType(types: !3217)
!3217 = !{!733, !697, !87, !697, !87, !70, !7}
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3055, file: !6, line: 1950, baseType: !3219, size: 64, offset: 1856)
!3219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3220, size: 64)
!3220 = !DISubroutineType(types: !3221)
!3221 = !{!87, !697, !87, !697, !87, !87, !7}
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3055, file: !6, line: 1953, baseType: !3173, size: 64, offset: 1920)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !3055, file: !6, line: 1954, baseType: !3224, size: 64, offset: 1984)
!3224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3225, size: 64)
!3225 = !DISubroutineType(types: !3226)
!3226 = !{!67, !3227, !7}
!3227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3228, size: 64)
!3228 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !6, line: 1911, flags: DIFlagFwdDecl)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !3055, file: !6, line: 1955, baseType: !3230, size: 64, offset: 2048)
!3230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3231, size: 64)
!3231 = !DISubroutineType(types: !3232)
!3232 = !{!67, !3227, !3076, !7}
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3050, file: !6, line: 723, baseType: !849, size: 64)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !579, file: !6, line: 725, baseType: !3235, size: 64, offset: 2816)
!3235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3236, size: 64)
!3236 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !6, line: 725, flags: DIFlagFwdDecl)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !579, file: !6, line: 726, baseType: !2246, size: 1536, align: 64, offset: 2880)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !579, file: !6, line: 727, baseType: !146, size: 128, offset: 4416)
!3239 = !DIDerivedType(tag: DW_TAG_member, scope: !579, file: !6, line: 728, baseType: !3240, size: 64, offset: 4544)
!3240 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !579, file: !6, line: 728, size: 64, elements: !3241)
!3241 = !{!3242, !3243, !3246, !3247}
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3240, file: !6, line: 729, baseType: !2217, size: 64)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3240, file: !6, line: 730, baseType: !3244, size: 64)
!3244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3245, size: 64)
!3245 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !6, line: 730, flags: DIFlagFwdDecl)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3240, file: !6, line: 731, baseType: !80, size: 64)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3240, file: !6, line: 732, baseType: !7, size: 32)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !579, file: !6, line: 735, baseType: !380, size: 32, offset: 4608)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !579, file: !6, line: 738, baseType: !380, size: 32, offset: 4640)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !579, file: !6, line: 739, baseType: !2890, size: 64, offset: 4672)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !579, file: !6, line: 750, baseType: !66, size: 64, offset: 4736)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !539, file: !540, line: 91, baseType: !3253, size: 256, offset: 448)
!3253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 256, elements: !2766)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !539, file: !540, line: 94, baseType: !3255, size: 64, offset: 704)
!3255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3256, line: 25, size: 64, elements: !3257)
!3256 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!3257 = !{!3258}
!3258 = !DIDerivedType(tag: DW_TAG_member, scope: !3255, file: !3256, line: 26, baseType: !3259, size: 64)
!3259 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3255, file: !3256, line: 26, size: 64, elements: !3260)
!3260 = !{!3261, !3262}
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !3259, file: !3256, line: 28, baseType: !323, size: 64, align: 64)
!3262 = !DIDerivedType(tag: DW_TAG_member, scope: !3259, file: !3256, line: 30, baseType: !3263, size: 64)
!3263 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3259, file: !3256, line: 30, size: 64, elements: !3264)
!3264 = !{!3265, !3266}
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3263, file: !3256, line: 31, baseType: !199, size: 32)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3263, file: !3256, line: 32, baseType: !67, size: 32, offset: 32)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !539, file: !540, line: 95, baseType: !2905, size: 64, offset: 768)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !539, file: !540, line: 96, baseType: !789, size: 64, offset: 832)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !539, file: !540, line: 97, baseType: !69, size: 64, offset: 896)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !539, file: !540, line: 98, baseType: !66, size: 64, offset: 960)
!3271 = !DIDerivedType(tag: DW_TAG_member, scope: !539, file: !540, line: 100, baseType: !3272, size: 128, offset: 1024)
!3272 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !539, file: !540, line: 100, size: 128, elements: !3273)
!3273 = !{!3274, !3275}
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3272, file: !540, line: 101, baseType: !146, size: 128)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3272, file: !540, line: 102, baseType: !3276, size: 64)
!3276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !539, file: !540, line: 104, baseType: !146, size: 128, offset: 1152)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !539, file: !540, line: 105, baseType: !146, size: 128, offset: 1280)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !539, file: !540, line: 113, baseType: !3280, size: 128, offset: 1408)
!3280 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !539, file: !540, line: 109, size: 128, elements: !3281)
!3281 = !{!3282, !3283, !3284}
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3280, file: !540, line: 110, baseType: !257, size: 128)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3280, file: !540, line: 111, baseType: !554, size: 128)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3280, file: !540, line: 112, baseType: !189, size: 128, align: 64)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !534, file: !535, line: 72, baseType: !789, size: 64, offset: 64)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !534, file: !535, line: 73, baseType: !67, size: 32, offset: 128)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !534, file: !535, line: 74, baseType: !618, size: 64, offset: 192)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !529, file: !530, line: 10, baseType: !538, size: 64, offset: 64)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !177, file: !6, line: 1015, baseType: !578, size: 64, offset: 1344)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !177, file: !6, line: 1016, baseType: !3053, size: 64, offset: 1408)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !177, file: !6, line: 1018, baseType: !322, size: 64, offset: 1472)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !177, file: !6, line: 1020, baseType: !66, size: 64, offset: 1536)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !177, file: !6, line: 1023, baseType: !66, size: 64, offset: 1600)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !177, file: !6, line: 1027, baseType: !3295, size: 64, offset: 1664)
!3295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !177, file: !6, line: 1029, baseType: !2245, size: 64, offset: 1728)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !177, file: !6, line: 1030, baseType: !2493, size: 32, offset: 1792)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !177, file: !6, line: 1031, baseType: !2493, size: 32, offset: 1824)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !76, file: !77, line: 29, baseType: !66, size: 64, offset: 896)
!3300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3301, size: 64)
!3301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtrr_sentry32", file: !3302, line: 129, size: 96, elements: !3303)
!3302 = !DIFile(filename: "./arch/x86/include/asm/mtrr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a7c890308cdc14a3bfc2cc2c920505da")
!3303 = !{!3304, !3306, !3308}
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !3301, file: !3302, line: 130, baseType: !3305, size: 32)
!3305 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_ulong_t", file: !2164, line: 45, baseType: !379)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3301, file: !3302, line: 131, baseType: !3307, size: 32, offset: 32)
!3307 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_uint_t", file: !2164, line: 44, baseType: !379)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3301, file: !3302, line: 132, baseType: !3307, size: 32, offset: 64)
!3309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3310, size: 64)
!3310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtrr_gentry32", file: !3302, line: 135, size: 128, elements: !3311)
!3311 = !{!3312, !3313, !3314, !3315}
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "regnum", scope: !3310, file: !3302, line: 136, baseType: !3305, size: 32)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !3310, file: !3302, line: 137, baseType: !3307, size: 32, offset: 32)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3310, file: !3302, line: 138, baseType: !3307, size: 32, offset: 64)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3310, file: !3302, line: 139, baseType: !3307, size: 32, offset: 96)
!3316 = !{!3317, !3320, !3322, !3327, !3329, !3334, !3336, !0, !3338, !3343, !3361, !3366, !3371, !3373, !3375, !3377, !3383}
!3317 = !DIGlobalVariableExpression(var: !3318, expr: !DIExpression())
!3318 = distinct !DIGlobalVariable(scope: null, file: !3, line: 32, type: !3319, isLocal: true, isDefinition: true)
!3319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 16, elements: !1863)
!3320 = !DIGlobalVariableExpression(var: !3321, expr: !DIExpression())
!3321 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_if__251_424_mtrr_if_init3252", scope: !2, file: !3, line: 424, type: !66, isLocal: true, isDefinition: true)
!3322 = !DIGlobalVariableExpression(var: !3323, expr: !DIExpression())
!3323 = distinct !DIGlobalVariable(scope: null, file: !3, line: 21, type: !3324, isLocal: true, isDefinition: true)
!3324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 88, elements: !3325)
!3325 = !{!3326}
!3326 = !DISubrange(count: 11)
!3327 = !DIGlobalVariableExpression(var: !3328, expr: !DIExpression())
!3328 = distinct !DIGlobalVariable(scope: null, file: !3, line: 22, type: !1781, isLocal: true, isDefinition: true)
!3329 = !DIGlobalVariableExpression(var: !3330, expr: !DIExpression())
!3330 = distinct !DIGlobalVariable(scope: null, file: !3, line: 25, type: !3331, isLocal: true, isDefinition: true)
!3331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 112, elements: !3332)
!3332 = !{!3333}
!3333 = !DISubrange(count: 14)
!3334 = !DIGlobalVariableExpression(var: !3335, expr: !DIExpression())
!3335 = distinct !DIGlobalVariable(scope: null, file: !3, line: 26, type: !3331, isLocal: true, isDefinition: true)
!3336 = !DIGlobalVariableExpression(var: !3337, expr: !DIExpression())
!3337 = distinct !DIGlobalVariable(scope: null, file: !3, line: 27, type: !3324, isLocal: true, isDefinition: true)
!3338 = !DIGlobalVariableExpression(var: !3339, expr: !DIExpression())
!3339 = distinct !DIGlobalVariable(scope: null, file: !3, line: 421, type: !3340, isLocal: true, isDefinition: true)
!3340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 40, elements: !3341)
!3341 = !{!3342}
!3342 = !DISubrange(count: 5)
!3343 = !DIGlobalVariableExpression(var: !3344, expr: !DIExpression())
!3344 = distinct !DIGlobalVariable(name: "mtrr_proc_ops", scope: !2, file: !3, line: 399, type: !3345, isLocal: true, isDefinition: true)
!3345 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3346)
!3346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ops", file: !3347, line: 29, size: 768, elements: !3348)
!3347 = !DIFile(filename: "./include/linux/proc_fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3e8a31057d6ce7bcf5851cd096e4b3e8")
!3348 = !{!3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359, !3360}
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "proc_flags", scope: !3346, file: !3347, line: 30, baseType: !7, size: 32)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "proc_open", scope: !3346, file: !3347, line: 31, baseType: !3163, size: 64, offset: 64)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "proc_read", scope: !3346, file: !3347, line: 32, baseType: !3063, size: 64, offset: 128)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "proc_read_iter", scope: !3346, file: !3347, line: 33, baseType: !2377, size: 64, offset: 192)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "proc_write", scope: !3346, file: !3347, line: 34, baseType: !3067, size: 64, offset: 256)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "proc_lseek", scope: !3346, file: !3347, line: 36, baseType: !3059, size: 64, offset: 320)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "proc_release", scope: !3346, file: !3347, line: 37, baseType: !3163, size: 64, offset: 384)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "proc_poll", scope: !3346, file: !3347, line: 38, baseType: !3092, size: 64, offset: 448)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "proc_ioctl", scope: !3346, file: !3347, line: 39, baseType: !3100, size: 64, offset: 512)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "proc_compat_ioctl", scope: !3346, file: !3347, line: 41, baseType: !3100, size: 64, offset: 576)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "proc_mmap", scope: !3346, file: !3347, line: 43, baseType: !3105, size: 64, offset: 640)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "proc_get_unmapped_area", scope: !3346, file: !3347, line: 44, baseType: !1512, size: 64, offset: 704)
!3361 = !DIGlobalVariableExpression(var: !3362, expr: !DIExpression())
!3362 = distinct !DIGlobalVariable(scope: null, file: !3, line: 380, type: !3363, isLocal: true, isDefinition: true)
!3363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 504, elements: !3364)
!3364 = !{!3365}
!3365 = !DISubrange(count: 63)
!3366 = !DIGlobalVariableExpression(var: !3367, expr: !DIExpression())
!3367 = distinct !DIGlobalVariable(scope: null, file: !3, line: 116, type: !3368, isLocal: true, isDefinition: true)
!3368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 72, elements: !3369)
!3369 = !{!3370}
!3370 = !DISubrange(count: 9)
!3371 = !DIGlobalVariableExpression(var: !3372, expr: !DIExpression())
!3372 = distinct !DIGlobalVariable(scope: null, file: !3, line: 124, type: !401, isLocal: true, isDefinition: true)
!3373 = !DIGlobalVariableExpression(var: !3374, expr: !DIExpression())
!3374 = distinct !DIGlobalVariable(scope: null, file: !3, line: 130, type: !401, isLocal: true, isDefinition: true)
!3375 = !DIGlobalVariableExpression(var: !3376, expr: !DIExpression())
!3376 = distinct !DIGlobalVariable(scope: null, file: !3, line: 138, type: !401, isLocal: true, isDefinition: true)
!3377 = !DIGlobalVariableExpression(var: !3378, expr: !DIExpression())
!3378 = distinct !DIGlobalVariable(scope: null, file: !3379, line: 249, type: !3380, isLocal: true, isDefinition: true)
!3379 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!3380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 224, elements: !3381)
!3381 = !{!3382}
!3382 = !DISubrange(count: 28)
!3383 = !DIGlobalVariableExpression(var: !3384, expr: !DIExpression())
!3384 = distinct !DIGlobalVariable(scope: null, file: !56, line: 480, type: !3385, isLocal: true, isDefinition: true)
!3385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 168, elements: !3386)
!3386 = !{!3387}
!3387 = !DISubrange(count: 21)
!3388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3389, size: 448, elements: !3390)
!3389 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !418)
!3390 = !{!3391}
!3391 = !DISubrange(count: 7)
!3392 = !{!"rsp"}
!3393 = !{i32 7, !"Dwarf Version", i32 5}
!3394 = !{i32 2, !"Debug Info Version", i32 3}
!3395 = !{i32 1, !"wchar_size", i32 2}
!3396 = !{i32 8, !"cf-protection-branch", i32 1}
!3397 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3398 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!3399 = !{i32 1, !"Code Model", i32 2}
!3400 = !{i32 1, !"override-stack-alignment", i32 8}
!3401 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!3402 = distinct !DISubprogram(name: "mtrr_attrib_to_str", scope: !3, file: !3, line: 30, type: !3403, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3405)
!3403 = !DISubroutineType(types: !3404)
!3404 = !{!418, !67}
!3405 = !{!3406}
!3406 = !DILocalVariable(name: "x", arg: 1, scope: !3402, file: !3, line: 30, type: !67)
!3407 = !DILocation(line: 30, column: 36, scope: !3402)
!3408 = !DILocation(line: 32, column: 10, scope: !3402)
!3409 = !DILocation(line: 32, column: 12, scope: !3402)
!3410 = !DILocation(line: 32, column: 9, scope: !3402)
!3411 = !DILocation(line: 32, column: 33, scope: !3402)
!3412 = !DILocation(line: 32, column: 20, scope: !3402)
!3413 = !DILocation(line: 32, column: 2, scope: !3402)
!3414 = distinct !DISubprogram(name: "__initstub__kmod_if__251_424_mtrr_if_init3", scope: !3, file: !3, line: 424, type: !3415, scopeLine: 424, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3415 = !DISubroutineType(types: !3416)
!3416 = !{!67}
!3417 = !DILocation(line: 424, column: 1, scope: !3414)
!3418 = distinct !DISubprogram(name: "mtrr_if_init", scope: !3, file: !3, line: 411, type: !3415, scopeLine: 412, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3419)
!3419 = !{!3420}
!3420 = !DILocalVariable(name: "c", scope: !3418, file: !3, line: 413, type: !3421)
!3421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3422, size: 64)
!3422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuinfo_x86", file: !2661, line: 83, size: 2368, elements: !3423)
!3423 = !{!3424, !3435, !3436, !3437, !3439, !3440, !3441, !3442, !3443, !3444, !3445, !3453, !3454, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3476, !3477, !3478}
!3424 = !DIDerivedType(tag: DW_TAG_member, scope: !3422, file: !2661, line: 84, baseType: !3425, size: 32)
!3425 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3422, file: !2661, line: 84, size: 32, elements: !3426)
!3426 = !{!3427, !3434}
!3427 = !DIDerivedType(tag: DW_TAG_member, scope: !3425, file: !2661, line: 90, baseType: !3428, size: 32)
!3428 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3425, file: !2661, line: 90, size: 32, elements: !3429)
!3429 = !{!3430, !3431, !3432, !3433}
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "x86_model", scope: !3428, file: !2661, line: 91, baseType: !129, size: 8)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "x86", scope: !3428, file: !2661, line: 93, baseType: !129, size: 8, offset: 8)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vendor", scope: !3428, file: !2661, line: 95, baseType: !129, size: 8, offset: 16)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "x86_reserved", scope: !3428, file: !2661, line: 96, baseType: !129, size: 8, offset: 24)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vfm", scope: !3425, file: !2661, line: 99, baseType: !380, size: 32)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "x86_stepping", scope: !3422, file: !2661, line: 101, baseType: !129, size: 8, offset: 32)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "x86_tlbsize", scope: !3422, file: !2661, line: 104, baseType: !67, size: 32, offset: 64)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "vmx_capability", scope: !3422, file: !2661, line: 107, baseType: !3438, size: 160, offset: 96)
!3438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !380, size: 160, elements: !3341)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "x86_virt_bits", scope: !3422, file: !2661, line: 109, baseType: !129, size: 8, offset: 256)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "x86_phys_bits", scope: !3422, file: !2661, line: 110, baseType: !129, size: 8, offset: 264)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "x86_coreid_bits", scope: !3422, file: !2661, line: 112, baseType: !129, size: 8, offset: 272)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "cu_id", scope: !3422, file: !2661, line: 113, baseType: !129, size: 8, offset: 280)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "extended_cpuid_level", scope: !3422, file: !2661, line: 115, baseType: !380, size: 32, offset: 288)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "cpuid_level", scope: !3422, file: !2661, line: 117, baseType: !67, size: 32, offset: 320)
!3445 = !DIDerivedType(tag: DW_TAG_member, scope: !3422, file: !2661, line: 123, baseType: !3446, size: 768, offset: 384)
!3446 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3422, file: !2661, line: 123, size: 768, elements: !3447)
!3447 = !{!3448, !3452}
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "x86_capability", scope: !3446, file: !2661, line: 124, baseType: !3449, size: 768)
!3449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !380, size: 768, elements: !3450)
!3450 = !{!3451}
!3451 = !DISubrange(count: 24)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "x86_capability_alignment", scope: !3446, file: !2661, line: 125, baseType: !69, size: 64)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vendor_id", scope: !3422, file: !2661, line: 127, baseType: !1781, size: 128, offset: 1152)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "x86_model_id", scope: !3422, file: !2661, line: 128, baseType: !3455, size: 512, offset: 1280)
!3455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 512, elements: !1980)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_size", scope: !3422, file: !2661, line: 130, baseType: !7, size: 32, offset: 1792)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_alignment", scope: !3422, file: !2661, line: 131, baseType: !67, size: 32, offset: 1824)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_max_rmid", scope: !3422, file: !2661, line: 133, baseType: !67, size: 32, offset: 1856)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_occ_scale", scope: !3422, file: !2661, line: 134, baseType: !67, size: 32, offset: 1888)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_mbm_width_offset", scope: !3422, file: !2661, line: 135, baseType: !67, size: 32, offset: 1920)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "x86_power", scope: !3422, file: !2661, line: 136, baseType: !67, size: 32, offset: 1952)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "loops_per_jiffy", scope: !3422, file: !2661, line: 137, baseType: !69, size: 64, offset: 1984)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "ppin", scope: !3422, file: !2661, line: 139, baseType: !322, size: 64, offset: 2048)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "x86_max_cores", scope: !3422, file: !2661, line: 141, baseType: !136, size: 16, offset: 2112)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "apicid", scope: !3422, file: !2661, line: 142, baseType: !136, size: 16, offset: 2128)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "initial_apicid", scope: !3422, file: !2661, line: 143, baseType: !136, size: 16, offset: 2144)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "x86_clflush_size", scope: !3422, file: !2661, line: 144, baseType: !136, size: 16, offset: 2160)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "booted_cores", scope: !3422, file: !2661, line: 146, baseType: !136, size: 16, offset: 2176)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "phys_proc_id", scope: !3422, file: !2661, line: 148, baseType: !136, size: 16, offset: 2192)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "logical_proc_id", scope: !3422, file: !2661, line: 150, baseType: !136, size: 16, offset: 2208)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_core_id", scope: !3422, file: !2661, line: 152, baseType: !136, size: 16, offset: 2224)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_die_id", scope: !3422, file: !2661, line: 153, baseType: !136, size: 16, offset: 2240)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "logical_die_id", scope: !3422, file: !2661, line: 154, baseType: !136, size: 16, offset: 2256)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_index", scope: !3422, file: !2661, line: 156, baseType: !136, size: 16, offset: 2272)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "smt_active", scope: !3422, file: !2661, line: 158, baseType: !415, size: 8, offset: 2288)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "microcode", scope: !3422, file: !2661, line: 159, baseType: !379, size: 32, offset: 2304)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_bits", scope: !3422, file: !2661, line: 161, baseType: !128, size: 8, offset: 2336)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !3422, file: !2661, line: 162, baseType: !7, size: 1, offset: 2344, flags: DIFlagBitField, extraData: i64 2344)
!3479 = !DILocation(line: 413, column: 2, scope: !3418)
!3480 = !DILocation(line: 413, column: 22, scope: !3418)
!3481 = !DILocation(line: 415, column: 38, scope: !3482)
!3482 = distinct !DILexicalBlock(scope: !3418, file: !3, line: 415, column: 6)
!3483 = !DILocation(line: 415, column: 8, scope: !3482)
!3484 = !DILocation(line: 416, column: 41, scope: !3482)
!3485 = !DILocation(line: 416, column: 8, scope: !3482)
!3486 = !DILocation(line: 417, column: 43, scope: !3482)
!3487 = !DILocation(line: 417, column: 8, scope: !3482)
!3488 = !DILocation(line: 415, column: 6, scope: !3418)
!3489 = !DILocation(line: 418, column: 8, scope: !3482)
!3490 = !DILocation(line: 419, column: 3, scope: !3482)
!3491 = !DILocation(line: 421, column: 2, scope: !3418)
!3492 = !DILocation(line: 422, column: 2, scope: !3418)
!3493 = !DILocation(line: 423, column: 1, scope: !3418)
!3494 = distinct !DISubprogram(name: "arch_test_bit", scope: !3495, file: !3495, line: 237, type: !3496, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3501)
!3495 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!3496 = !DISubroutineType(types: !3497)
!3497 = !{!415, !69, !3498}
!3498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3499, size: 64)
!3499 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3500)
!3500 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !69)
!3501 = !{!3502, !3503}
!3502 = !DILocalVariable(name: "nr", arg: 1, scope: !3494, file: !3495, line: 237, type: !69)
!3503 = !DILocalVariable(name: "addr", arg: 2, scope: !3494, file: !3495, line: 237, type: !3498)
!3504 = !DILocation(line: 237, column: 29, scope: !3494)
!3505 = !DILocation(line: 237, column: 63, scope: !3494)
!3506 = !DILocation(line: 239, column: 30, scope: !3494)
!3507 = !DILocation(line: 239, column: 9, scope: !3494)
!3508 = !DILocation(line: 239, column: 54, scope: !3494)
!3509 = !DILocation(line: 239, column: 58, scope: !3494)
!3510 = !DILocation(line: 239, column: 36, scope: !3494)
!3511 = !DILocation(line: 240, column: 26, scope: !3494)
!3512 = !DILocation(line: 240, column: 30, scope: !3494)
!3513 = !DILocation(line: 240, column: 8, scope: !3494)
!3514 = !DILocation(line: 239, column: 2, scope: !3494)
!3515 = !DISubprogram(name: "proc_create", scope: !3347, file: !3347, line: 110, type: !3516, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3516 = !DISubroutineType(types: !3517)
!3517 = !{!3518, !418, !582, !3518, !3520}
!3518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3519, size: 64)
!3519 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !3347, line: 12, flags: DIFlagFwdDecl)
!3520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3345, size: 64)
!3521 = distinct !DISubprogram(name: "constant_test_bit", scope: !3495, file: !3495, line: 204, type: !3522, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3524)
!3522 = !DISubroutineType(types: !3523)
!3523 = !{!415, !693, !3498}
!3524 = !{!3525, !3526}
!3525 = !DILocalVariable(name: "nr", arg: 1, scope: !3521, file: !3495, line: 204, type: !693)
!3526 = !DILocalVariable(name: "addr", arg: 2, scope: !3521, file: !3495, line: 204, type: !3498)
!3527 = !DILocation(line: 204, column: 52, scope: !3521)
!3528 = !DILocation(line: 204, column: 86, scope: !3521)
!3529 = !DILocation(line: 206, column: 19, scope: !3521)
!3530 = !DILocation(line: 206, column: 22, scope: !3521)
!3531 = !DILocation(line: 206, column: 15, scope: !3521)
!3532 = !DILocation(line: 207, column: 4, scope: !3521)
!3533 = !DILocation(line: 207, column: 9, scope: !3521)
!3534 = !DILocation(line: 207, column: 12, scope: !3521)
!3535 = !DILocation(line: 206, column: 44, scope: !3521)
!3536 = !DILocation(line: 207, column: 37, scope: !3521)
!3537 = !DILocation(line: 206, column: 2, scope: !3521)
!3538 = distinct !DISubprogram(name: "variable_test_bit", scope: !3495, file: !3495, line: 224, type: !3522, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3539)
!3539 = !{!3540, !3541, !3542}
!3540 = !DILocalVariable(name: "nr", arg: 1, scope: !3538, file: !3495, line: 224, type: !693)
!3541 = !DILocalVariable(name: "addr", arg: 2, scope: !3538, file: !3495, line: 224, type: !3498)
!3542 = !DILocalVariable(name: "oldbit", scope: !3538, file: !3495, line: 226, type: !415)
!3543 = !DILocation(line: 224, column: 52, scope: !3538)
!3544 = !DILocation(line: 224, column: 86, scope: !3538)
!3545 = !DILocation(line: 226, column: 2, scope: !3538)
!3546 = !DILocation(line: 226, column: 7, scope: !3538)
!3547 = !DILocation(line: 231, column: 33, scope: !3538)
!3548 = !DILocation(line: 231, column: 46, scope: !3538)
!3549 = !DILocation(line: 228, column: 2, scope: !3538)
!3550 = !{i64 2148066906, i64 2148066980}
!3551 = !DILocation(line: 233, column: 9, scope: !3538)
!3552 = !{i8 0, i8 2}
!3553 = !DILocation(line: 234, column: 1, scope: !3538)
!3554 = !DILocation(line: 233, column: 2, scope: !3538)
!3555 = distinct !DISubprogram(name: "mtrr_open", scope: !3, file: !3, line: 388, type: !3164, scopeLine: 389, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3556)
!3556 = !{!3557, !3558}
!3557 = !DILocalVariable(name: "inode", arg: 1, scope: !3555, file: !3, line: 388, type: !578)
!3558 = !DILocalVariable(name: "file", arg: 2, scope: !3555, file: !3, line: 388, type: !697)
!3559 = !DILocation(line: 388, column: 36, scope: !3555)
!3560 = !DILocation(line: 388, column: 56, scope: !3555)
!3561 = !DILocation(line: 390, column: 7, scope: !3562)
!3562 = distinct !DILexicalBlock(scope: !3555, file: !3, line: 390, column: 6)
!3563 = !DILocation(line: 390, column: 6, scope: !3555)
!3564 = !DILocation(line: 391, column: 3, scope: !3562)
!3565 = !DILocation(line: 392, column: 7, scope: !3566)
!3566 = distinct !DILexicalBlock(scope: !3555, file: !3, line: 392, column: 6)
!3567 = !DILocation(line: 392, column: 16, scope: !3566)
!3568 = !DILocation(line: 392, column: 6, scope: !3555)
!3569 = !DILocation(line: 393, column: 3, scope: !3566)
!3570 = !DILocation(line: 394, column: 7, scope: !3571)
!3571 = distinct !DILexicalBlock(scope: !3555, file: !3, line: 394, column: 6)
!3572 = !DILocation(line: 394, column: 6, scope: !3555)
!3573 = !DILocation(line: 395, column: 3, scope: !3571)
!3574 = !DILocation(line: 396, column: 21, scope: !3555)
!3575 = !DILocation(line: 396, column: 9, scope: !3555)
!3576 = !DILocation(line: 396, column: 2, scope: !3555)
!3577 = !DILocation(line: 397, column: 1, scope: !3555)
!3578 = distinct !DISubprogram(name: "mtrr_write", scope: !3, file: !3, line: 94, type: !3068, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3579)
!3579 = !{!3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3594, !3595, !3596, !3598}
!3580 = !DILocalVariable(name: "file", arg: 1, scope: !3578, file: !3, line: 94, type: !697)
!3581 = !DILocalVariable(name: "buf", arg: 2, scope: !3578, file: !3, line: 94, type: !418)
!3582 = !DILocalVariable(name: "len", arg: 3, scope: !3578, file: !3, line: 94, type: !70)
!3583 = !DILocalVariable(name: "ppos", arg: 4, scope: !3578, file: !3, line: 94, type: !160)
!3584 = !DILocalVariable(name: "i", scope: !3578, file: !3, line: 96, type: !67)
!3585 = !DILocalVariable(name: "err", scope: !3578, file: !3, line: 96, type: !67)
!3586 = !DILocalVariable(name: "reg", scope: !3578, file: !3, line: 97, type: !69)
!3587 = !DILocalVariable(name: "base", scope: !3578, file: !3, line: 98, type: !324)
!3588 = !DILocalVariable(name: "size", scope: !3578, file: !3, line: 98, type: !324)
!3589 = !DILocalVariable(name: "ptr", scope: !3578, file: !3, line: 99, type: !80)
!3590 = !DILocalVariable(name: "line", scope: !3578, file: !3, line: 100, type: !3591)
!3591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 640, elements: !3592)
!3592 = !{!3593}
!3593 = !DISubrange(count: 80)
!3594 = !DILocalVariable(name: "length", scope: !3578, file: !3, line: 101, type: !67)
!3595 = !DILocalVariable(name: "linelen", scope: !3578, file: !3, line: 102, type: !70)
!3596 = !DILocalVariable(name: "__UNIQUE_ID___x249", scope: !3597, file: !3, line: 106, type: !70)
!3597 = distinct !DILexicalBlock(scope: !3578, file: !3, line: 106, column: 8)
!3598 = !DILocalVariable(name: "__UNIQUE_ID___y250", scope: !3597, file: !3, line: 106, type: !70)
!3599 = !DILocation(line: 94, column: 25, scope: !3578)
!3600 = !DILocation(line: 94, column: 50, scope: !3578)
!3601 = !DILocation(line: 94, column: 62, scope: !3578)
!3602 = !DILocation(line: 94, column: 76, scope: !3578)
!3603 = !DILocation(line: 96, column: 2, scope: !3578)
!3604 = !DILocation(line: 96, column: 6, scope: !3578)
!3605 = !DILocation(line: 96, column: 9, scope: !3578)
!3606 = !DILocation(line: 97, column: 2, scope: !3578)
!3607 = !DILocation(line: 97, column: 16, scope: !3578)
!3608 = !DILocation(line: 98, column: 2, scope: !3578)
!3609 = !DILocation(line: 98, column: 21, scope: !3578)
!3610 = !DILocation(line: 98, column: 27, scope: !3578)
!3611 = !DILocation(line: 99, column: 2, scope: !3578)
!3612 = !DILocation(line: 99, column: 8, scope: !3578)
!3613 = !DILocation(line: 100, column: 2, scope: !3578)
!3614 = !DILocation(line: 100, column: 7, scope: !3578)
!3615 = !DILocation(line: 101, column: 2, scope: !3578)
!3616 = !DILocation(line: 101, column: 6, scope: !3578)
!3617 = !DILocation(line: 102, column: 2, scope: !3578)
!3618 = !DILocation(line: 102, column: 9, scope: !3578)
!3619 = !DILocation(line: 104, column: 2, scope: !3578)
!3620 = !DILocation(line: 106, column: 8, scope: !3597)
!3621 = !DILocation(line: 106, column: 8, scope: !3578)
!3622 = !DILocation(line: 106, column: 6, scope: !3578)
!3623 = !DILocation(line: 107, column: 29, scope: !3578)
!3624 = !DILocation(line: 107, column: 35, scope: !3578)
!3625 = !DILocation(line: 107, column: 40, scope: !3578)
!3626 = !DILocation(line: 107, column: 11, scope: !3578)
!3627 = !DILocation(line: 107, column: 9, scope: !3578)
!3628 = !DILocation(line: 108, column: 6, scope: !3629)
!3629 = distinct !DILexicalBlock(scope: !3578, file: !3, line: 108, column: 6)
!3630 = !DILocation(line: 108, column: 13, scope: !3629)
!3631 = !DILocation(line: 108, column: 6, scope: !3578)
!3632 = !DILocation(line: 109, column: 10, scope: !3629)
!3633 = !DILocation(line: 109, column: 3, scope: !3629)
!3634 = !DILocation(line: 111, column: 19, scope: !3578)
!3635 = !DILocation(line: 111, column: 12, scope: !3578)
!3636 = !DILocation(line: 111, column: 10, scope: !3578)
!3637 = !DILocation(line: 112, column: 8, scope: !3578)
!3638 = !DILocation(line: 112, column: 15, scope: !3578)
!3639 = !DILocation(line: 112, column: 13, scope: !3578)
!3640 = !DILocation(line: 112, column: 23, scope: !3578)
!3641 = !DILocation(line: 112, column: 6, scope: !3578)
!3642 = !DILocation(line: 113, column: 6, scope: !3643)
!3643 = distinct !DILexicalBlock(scope: !3578, file: !3, line: 113, column: 6)
!3644 = !DILocation(line: 113, column: 14, scope: !3643)
!3645 = !DILocation(line: 113, column: 18, scope: !3643)
!3646 = !DILocation(line: 113, column: 17, scope: !3643)
!3647 = !DILocation(line: 113, column: 22, scope: !3643)
!3648 = !DILocation(line: 113, column: 6, scope: !3578)
!3649 = !DILocation(line: 114, column: 4, scope: !3643)
!3650 = !DILocation(line: 114, column: 8, scope: !3643)
!3651 = !DILocation(line: 114, column: 3, scope: !3643)
!3652 = !DILocation(line: 116, column: 15, scope: !3653)
!3653 = distinct !DILexicalBlock(scope: !3578, file: !3, line: 116, column: 6)
!3654 = !DILocation(line: 116, column: 7, scope: !3653)
!3655 = !DILocation(line: 116, column: 6, scope: !3578)
!3656 = !DILocation(line: 117, column: 24, scope: !3657)
!3657 = distinct !DILexicalBlock(scope: !3653, file: !3, line: 116, column: 37)
!3658 = !DILocation(line: 117, column: 29, scope: !3657)
!3659 = !DILocation(line: 117, column: 9, scope: !3657)
!3660 = !DILocation(line: 117, column: 7, scope: !3657)
!3661 = !DILocation(line: 118, column: 23, scope: !3657)
!3662 = !DILocation(line: 118, column: 9, scope: !3657)
!3663 = !DILocation(line: 118, column: 7, scope: !3657)
!3664 = !DILocation(line: 119, column: 7, scope: !3665)
!3665 = distinct !DILexicalBlock(scope: !3657, file: !3, line: 119, column: 7)
!3666 = !DILocation(line: 119, column: 11, scope: !3665)
!3667 = !DILocation(line: 119, column: 7, scope: !3657)
!3668 = !DILocation(line: 120, column: 11, scope: !3665)
!3669 = !DILocation(line: 120, column: 4, scope: !3665)
!3670 = !DILocation(line: 121, column: 10, scope: !3657)
!3671 = !DILocation(line: 121, column: 3, scope: !3657)
!3672 = !DILocation(line: 124, column: 14, scope: !3673)
!3673 = distinct !DILexicalBlock(scope: !3578, file: !3, line: 124, column: 6)
!3674 = !DILocation(line: 124, column: 6, scope: !3673)
!3675 = !DILocation(line: 124, column: 6, scope: !3578)
!3676 = !DILocation(line: 125, column: 3, scope: !3673)
!3677 = !DILocation(line: 127, column: 25, scope: !3578)
!3678 = !DILocation(line: 127, column: 30, scope: !3578)
!3679 = !DILocation(line: 127, column: 9, scope: !3578)
!3680 = !DILocation(line: 127, column: 7, scope: !3578)
!3681 = !DILocation(line: 128, column: 20, scope: !3578)
!3682 = !DILocation(line: 128, column: 8, scope: !3578)
!3683 = !DILocation(line: 128, column: 6, scope: !3578)
!3684 = !DILocation(line: 130, column: 14, scope: !3685)
!3685 = distinct !DILexicalBlock(scope: !3578, file: !3, line: 130, column: 6)
!3686 = !DILocation(line: 130, column: 6, scope: !3685)
!3687 = !DILocation(line: 130, column: 6, scope: !3578)
!3688 = !DILocation(line: 131, column: 3, scope: !3685)
!3689 = !DILocation(line: 133, column: 25, scope: !3578)
!3690 = !DILocation(line: 133, column: 29, scope: !3578)
!3691 = !DILocation(line: 133, column: 9, scope: !3578)
!3692 = !DILocation(line: 133, column: 7, scope: !3578)
!3693 = !DILocation(line: 134, column: 7, scope: !3694)
!3694 = distinct !DILexicalBlock(scope: !3578, file: !3, line: 134, column: 6)
!3695 = !DILocation(line: 134, column: 12, scope: !3694)
!3696 = !DILocation(line: 134, column: 21, scope: !3694)
!3697 = !DILocation(line: 134, column: 25, scope: !3694)
!3698 = !DILocation(line: 134, column: 30, scope: !3694)
!3699 = !DILocation(line: 134, column: 6, scope: !3578)
!3700 = !DILocation(line: 135, column: 3, scope: !3694)
!3701 = !DILocation(line: 136, column: 20, scope: !3578)
!3702 = !DILocation(line: 136, column: 8, scope: !3578)
!3703 = !DILocation(line: 136, column: 6, scope: !3578)
!3704 = !DILocation(line: 138, column: 14, scope: !3705)
!3705 = distinct !DILexicalBlock(scope: !3578, file: !3, line: 138, column: 6)
!3706 = !DILocation(line: 138, column: 6, scope: !3705)
!3707 = !DILocation(line: 138, column: 6, scope: !3578)
!3708 = !DILocation(line: 139, column: 3, scope: !3705)
!3709 = !DILocation(line: 140, column: 20, scope: !3578)
!3710 = !DILocation(line: 140, column: 24, scope: !3578)
!3711 = !DILocation(line: 140, column: 8, scope: !3578)
!3712 = !DILocation(line: 140, column: 6, scope: !3578)
!3713 = !DILocation(line: 142, column: 49, scope: !3578)
!3714 = !DILocation(line: 142, column: 6, scope: !3578)
!3715 = !DILocation(line: 142, column: 4, scope: !3578)
!3716 = !DILocation(line: 143, column: 6, scope: !3717)
!3717 = distinct !DILexicalBlock(scope: !3578, file: !3, line: 143, column: 6)
!3718 = !DILocation(line: 143, column: 8, scope: !3717)
!3719 = !DILocation(line: 143, column: 6, scope: !3578)
!3720 = !DILocation(line: 144, column: 10, scope: !3717)
!3721 = !DILocation(line: 144, column: 3, scope: !3717)
!3722 = !DILocation(line: 146, column: 7, scope: !3578)
!3723 = !DILocation(line: 147, column: 7, scope: !3578)
!3724 = !DILocation(line: 148, column: 37, scope: !3578)
!3725 = !DILocation(line: 148, column: 58, scope: !3578)
!3726 = !DILocation(line: 148, column: 64, scope: !3578)
!3727 = !DILocation(line: 148, column: 8, scope: !3578)
!3728 = !DILocation(line: 148, column: 6, scope: !3578)
!3729 = !DILocation(line: 149, column: 6, scope: !3730)
!3730 = distinct !DILexicalBlock(scope: !3578, file: !3, line: 149, column: 6)
!3731 = !DILocation(line: 149, column: 10, scope: !3730)
!3732 = !DILocation(line: 149, column: 6, scope: !3578)
!3733 = !DILocation(line: 150, column: 10, scope: !3730)
!3734 = !DILocation(line: 150, column: 3, scope: !3730)
!3735 = !DILocation(line: 151, column: 9, scope: !3578)
!3736 = !DILocation(line: 151, column: 2, scope: !3578)
!3737 = !DILocation(line: 152, column: 1, scope: !3578)
!3738 = distinct !DISubprogram(name: "mtrr_close", scope: !3, file: !3, line: 338, type: !3164, scopeLine: 339, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3739)
!3739 = !{!3740, !3741, !3742, !3743, !3744}
!3740 = !DILocalVariable(name: "ino", arg: 1, scope: !3738, file: !3, line: 338, type: !578)
!3741 = !DILocalVariable(name: "file", arg: 2, scope: !3738, file: !3, line: 338, type: !697)
!3742 = !DILocalVariable(name: "fcount", scope: !3738, file: !3, line: 340, type: !1193)
!3743 = !DILocalVariable(name: "i", scope: !3738, file: !3, line: 341, type: !67)
!3744 = !DILocalVariable(name: "max", scope: !3738, file: !3, line: 341, type: !67)
!3745 = !DILocation(line: 338, column: 37, scope: !3738)
!3746 = !DILocation(line: 338, column: 55, scope: !3738)
!3747 = !DILocation(line: 340, column: 2, scope: !3738)
!3748 = !DILocation(line: 340, column: 16, scope: !3738)
!3749 = !DILocation(line: 340, column: 25, scope: !3738)
!3750 = !DILocation(line: 341, column: 2, scope: !3738)
!3751 = !DILocation(line: 341, column: 6, scope: !3738)
!3752 = !DILocation(line: 341, column: 9, scope: !3738)
!3753 = !DILocation(line: 343, column: 6, scope: !3754)
!3754 = distinct !DILexicalBlock(scope: !3738, file: !3, line: 343, column: 6)
!3755 = !DILocation(line: 343, column: 13, scope: !3754)
!3756 = !DILocation(line: 343, column: 6, scope: !3738)
!3757 = !DILocation(line: 344, column: 9, scope: !3758)
!3758 = distinct !DILexicalBlock(scope: !3754, file: !3, line: 343, column: 22)
!3759 = !DILocation(line: 344, column: 7, scope: !3758)
!3760 = !DILocation(line: 345, column: 10, scope: !3761)
!3761 = distinct !DILexicalBlock(scope: !3758, file: !3, line: 345, column: 3)
!3762 = !DILocation(line: 345, column: 8, scope: !3761)
!3763 = !DILocation(line: 345, column: 15, scope: !3764)
!3764 = distinct !DILexicalBlock(scope: !3761, file: !3, line: 345, column: 3)
!3765 = !DILocation(line: 345, column: 19, scope: !3764)
!3766 = !DILocation(line: 345, column: 17, scope: !3764)
!3767 = !DILocation(line: 345, column: 3, scope: !3761)
!3768 = !DILocation(line: 346, column: 4, scope: !3769)
!3769 = distinct !DILexicalBlock(scope: !3764, file: !3, line: 345, column: 29)
!3770 = !DILocation(line: 346, column: 11, scope: !3769)
!3771 = !DILocation(line: 346, column: 18, scope: !3769)
!3772 = !DILocation(line: 346, column: 21, scope: !3769)
!3773 = !DILocation(line: 347, column: 14, scope: !3774)
!3774 = distinct !DILexicalBlock(scope: !3769, file: !3, line: 346, column: 26)
!3775 = !DILocation(line: 347, column: 5, scope: !3774)
!3776 = !DILocation(line: 348, column: 7, scope: !3774)
!3777 = !DILocation(line: 348, column: 14, scope: !3774)
!3778 = !DILocation(line: 348, column: 5, scope: !3774)
!3779 = distinct !{!3779, !3768, !3780, !3781, !3782}
!3780 = !DILocation(line: 349, column: 4, scope: !3769)
!3781 = !{!"llvm.loop.mustprogress"}
!3782 = !{!"llvm.loop.unroll.disable"}
!3783 = !DILocation(line: 350, column: 3, scope: !3769)
!3784 = !DILocation(line: 345, column: 24, scope: !3764)
!3785 = !DILocation(line: 345, column: 3, scope: !3764)
!3786 = distinct !{!3786, !3767, !3787, !3781, !3782}
!3787 = !DILocation(line: 350, column: 3, scope: !3761)
!3788 = !DILocation(line: 351, column: 9, scope: !3758)
!3789 = !DILocation(line: 351, column: 3, scope: !3758)
!3790 = !DILocation(line: 352, column: 3, scope: !3758)
!3791 = !DILocation(line: 352, column: 21, scope: !3758)
!3792 = !DILocation(line: 353, column: 2, scope: !3758)
!3793 = !DILocation(line: 354, column: 24, scope: !3738)
!3794 = !DILocation(line: 354, column: 29, scope: !3738)
!3795 = !DILocation(line: 354, column: 9, scope: !3738)
!3796 = !DILocation(line: 355, column: 1, scope: !3738)
!3797 = !DILocation(line: 354, column: 2, scope: !3738)
!3798 = distinct !DISubprogram(name: "mtrr_ioctl", scope: !3, file: !3, line: 155, type: !3101, scopeLine: 156, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3799)
!3799 = !{!3800, !3801, !3802, !3803, !3804, !3807, !3808, !3809, !3815, !3823, !3824, !3827, !3830, !3831, !3833, !3836, !3837, !3839, !3842, !3843, !3845, !3847, !3850, !3851, !3853, !3856, !3857, !3859, !3862, !3863, !3865, !3868, !3869, !3871, !3874, !3877, !3878, !3879, !3880, !3882, !3885, !3886, !3887, !3888, !3889, !3892, !3893, !3894, !3895, !3897, !3900, !3901, !3902, !3903}
!3800 = !DILocalVariable(name: "file", arg: 1, scope: !3798, file: !3, line: 155, type: !697)
!3801 = !DILocalVariable(name: "cmd", arg: 2, scope: !3798, file: !3, line: 155, type: !7)
!3802 = !DILocalVariable(name: "__arg", arg: 3, scope: !3798, file: !3, line: 155, type: !69)
!3803 = !DILocalVariable(name: "err", scope: !3798, file: !3, line: 157, type: !67)
!3804 = !DILocalVariable(name: "type", scope: !3798, file: !3, line: 158, type: !3805)
!3805 = !DIDerivedType(tag: DW_TAG_typedef, name: "mtrr_type", file: !3806, line: 79, baseType: !129)
!3806 = !DIFile(filename: "./arch/x86/include/uapi/asm/mtrr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ec45d3f08a98ea4c76b6e3b4c69c8d40")
!3807 = !DILocalVariable(name: "base", scope: !3798, file: !3, line: 159, type: !69)
!3808 = !DILocalVariable(name: "size", scope: !3798, file: !3, line: 160, type: !69)
!3809 = !DILocalVariable(name: "sentry", scope: !3798, file: !3, line: 161, type: !3810)
!3810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtrr_sentry", file: !3806, line: 54, size: 128, elements: !3811)
!3811 = !{!3812, !3813, !3814}
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !3810, file: !3806, line: 55, baseType: !323, size: 64)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3810, file: !3806, line: 56, baseType: !380, size: 32, offset: 64)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3810, file: !3806, line: 57, baseType: !380, size: 32, offset: 96)
!3815 = !DILocalVariable(name: "gentry", scope: !3798, file: !3, line: 162, type: !3816)
!3816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtrr_gentry", file: !3806, line: 60, size: 192, elements: !3817)
!3817 = !{!3818, !3819, !3820, !3821, !3822}
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !3816, file: !3806, line: 61, baseType: !323, size: 64)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3816, file: !3806, line: 62, baseType: !380, size: 32, offset: 64)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "regnum", scope: !3816, file: !3806, line: 63, baseType: !380, size: 32, offset: 96)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3816, file: !3806, line: 64, baseType: !380, size: 32, offset: 128)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "_pad", scope: !3816, file: !3806, line: 65, baseType: !380, size: 32, offset: 160)
!3823 = !DILocalVariable(name: "arg", scope: !3798, file: !3, line: 163, type: !66)
!3824 = !DILocalVariable(name: "s32", scope: !3825, file: !3, line: 193, type: !3300)
!3825 = distinct !DILexicalBlock(scope: !3826, file: !3, line: 192, column: 34)
!3826 = distinct !DILexicalBlock(scope: !3798, file: !3, line: 167, column: 15)
!3827 = !DILocalVariable(name: "__ret_gu", scope: !3828, file: !3, line: 196, type: !67)
!3828 = distinct !DILexicalBlock(scope: !3829, file: !3, line: 196, column: 9)
!3829 = distinct !DILexicalBlock(scope: !3825, file: !3, line: 196, column: 9)
!3830 = !DILocalVariable(name: "__val_gu", scope: !3828, file: !3, line: 196, type: !7)
!3831 = !DILocalVariable(name: "__tmp", scope: !3832, file: !3, line: 196, type: !322)
!3832 = distinct !DILexicalBlock(scope: !3828, file: !3, line: 196, column: 9)
!3833 = !DILocalVariable(name: "__ret_gu", scope: !3834, file: !3, line: 197, type: !67)
!3834 = distinct !DILexicalBlock(scope: !3835, file: !3, line: 197, column: 10)
!3835 = distinct !DILexicalBlock(scope: !3825, file: !3, line: 197, column: 10)
!3836 = !DILocalVariable(name: "__val_gu", scope: !3834, file: !3, line: 197, type: !7)
!3837 = !DILocalVariable(name: "__tmp", scope: !3838, file: !3, line: 197, type: !322)
!3838 = distinct !DILexicalBlock(scope: !3834, file: !3, line: 197, column: 10)
!3839 = !DILocalVariable(name: "__ret_gu", scope: !3840, file: !3, line: 198, type: !67)
!3840 = distinct !DILexicalBlock(scope: !3841, file: !3, line: 198, column: 10)
!3841 = distinct !DILexicalBlock(scope: !3825, file: !3, line: 198, column: 10)
!3842 = !DILocalVariable(name: "__val_gu", scope: !3840, file: !3, line: 198, type: !7)
!3843 = !DILocalVariable(name: "__tmp", scope: !3844, file: !3, line: 198, type: !322)
!3844 = distinct !DILexicalBlock(scope: !3840, file: !3, line: 198, column: 10)
!3845 = !DILocalVariable(name: "g32", scope: !3846, file: !3, line: 205, type: !3309)
!3846 = distinct !DILexicalBlock(scope: !3826, file: !3, line: 204, column: 33)
!3847 = !DILocalVariable(name: "__ret_gu", scope: !3848, file: !3, line: 208, type: !67)
!3848 = distinct !DILexicalBlock(scope: !3849, file: !3, line: 208, column: 9)
!3849 = distinct !DILexicalBlock(scope: !3846, file: !3, line: 208, column: 9)
!3850 = !DILocalVariable(name: "__val_gu", scope: !3848, file: !3, line: 208, type: !7)
!3851 = !DILocalVariable(name: "__tmp", scope: !3852, file: !3, line: 208, type: !322)
!3852 = distinct !DILexicalBlock(scope: !3848, file: !3, line: 208, column: 9)
!3853 = !DILocalVariable(name: "__ret_gu", scope: !3854, file: !3, line: 209, type: !67)
!3854 = distinct !DILexicalBlock(scope: !3855, file: !3, line: 209, column: 10)
!3855 = distinct !DILexicalBlock(scope: !3846, file: !3, line: 209, column: 10)
!3856 = !DILocalVariable(name: "__val_gu", scope: !3854, file: !3, line: 209, type: !7)
!3857 = !DILocalVariable(name: "__tmp", scope: !3858, file: !3, line: 209, type: !322)
!3858 = distinct !DILexicalBlock(scope: !3854, file: !3, line: 209, column: 10)
!3859 = !DILocalVariable(name: "__ret_gu", scope: !3860, file: !3, line: 210, type: !67)
!3860 = distinct !DILexicalBlock(scope: !3861, file: !3, line: 210, column: 10)
!3861 = distinct !DILexicalBlock(scope: !3846, file: !3, line: 210, column: 10)
!3862 = !DILocalVariable(name: "__val_gu", scope: !3860, file: !3, line: 210, type: !7)
!3863 = !DILocalVariable(name: "__tmp", scope: !3864, file: !3, line: 210, type: !322)
!3864 = distinct !DILexicalBlock(scope: !3860, file: !3, line: 210, column: 10)
!3865 = !DILocalVariable(name: "__ret_gu", scope: !3866, file: !3, line: 211, type: !67)
!3866 = distinct !DILexicalBlock(scope: !3867, file: !3, line: 211, column: 10)
!3867 = distinct !DILexicalBlock(scope: !3846, file: !3, line: 211, column: 10)
!3868 = !DILocalVariable(name: "__val_gu", scope: !3866, file: !3, line: 211, type: !7)
!3869 = !DILocalVariable(name: "__tmp", scope: !3870, file: !3, line: 211, type: !322)
!3870 = distinct !DILexicalBlock(scope: !3866, file: !3, line: 211, column: 10)
!3871 = !DILocalVariable(name: "g32", scope: !3872, file: !3, line: 324, type: !3309)
!3872 = distinct !DILexicalBlock(scope: !3873, file: !3, line: 323, column: 33)
!3873 = distinct !DILexicalBlock(scope: !3798, file: !3, line: 315, column: 15)
!3874 = !DILocalVariable(name: "__ret_pu", scope: !3875, file: !3, line: 327, type: !67)
!3875 = distinct !DILexicalBlock(scope: !3876, file: !3, line: 327, column: 9)
!3876 = distinct !DILexicalBlock(scope: !3872, file: !3, line: 327, column: 9)
!3877 = !DILocalVariable(name: "__ptr_pu", scope: !3875, file: !3, line: 327, type: !66)
!3878 = !DILocalVariable(name: "__val_pu", scope: !3875, file: !3, line: 327, type: !3307)
!3879 = !DILocalVariable(name: "__x", scope: !3875, file: !3, line: 327, type: !3307)
!3880 = !DILocalVariable(name: "__ptr", scope: !3875, file: !3, line: 327, type: !3881)
!3881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3307, size: 64)
!3882 = !DILocalVariable(name: "__ret_pu", scope: !3883, file: !3, line: 328, type: !67)
!3883 = distinct !DILexicalBlock(scope: !3884, file: !3, line: 328, column: 10)
!3884 = distinct !DILexicalBlock(scope: !3872, file: !3, line: 328, column: 10)
!3885 = !DILocalVariable(name: "__ptr_pu", scope: !3883, file: !3, line: 328, type: !66)
!3886 = !DILocalVariable(name: "__val_pu", scope: !3883, file: !3, line: 328, type: !3307)
!3887 = !DILocalVariable(name: "__x", scope: !3883, file: !3, line: 328, type: !3307)
!3888 = !DILocalVariable(name: "__ptr", scope: !3883, file: !3, line: 328, type: !3881)
!3889 = !DILocalVariable(name: "__ret_pu", scope: !3890, file: !3, line: 329, type: !67)
!3890 = distinct !DILexicalBlock(scope: !3891, file: !3, line: 329, column: 10)
!3891 = distinct !DILexicalBlock(scope: !3872, file: !3, line: 329, column: 10)
!3892 = !DILocalVariable(name: "__ptr_pu", scope: !3890, file: !3, line: 329, type: !66)
!3893 = !DILocalVariable(name: "__val_pu", scope: !3890, file: !3, line: 329, type: !3305)
!3894 = !DILocalVariable(name: "__x", scope: !3890, file: !3, line: 329, type: !3305)
!3895 = !DILocalVariable(name: "__ptr", scope: !3890, file: !3, line: 329, type: !3896)
!3896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3305, size: 64)
!3897 = !DILocalVariable(name: "__ret_pu", scope: !3898, file: !3, line: 330, type: !67)
!3898 = distinct !DILexicalBlock(scope: !3899, file: !3, line: 330, column: 10)
!3899 = distinct !DILexicalBlock(scope: !3872, file: !3, line: 330, column: 10)
!3900 = !DILocalVariable(name: "__ptr_pu", scope: !3898, file: !3, line: 330, type: !66)
!3901 = !DILocalVariable(name: "__val_pu", scope: !3898, file: !3, line: 330, type: !3307)
!3902 = !DILocalVariable(name: "__x", scope: !3898, file: !3, line: 330, type: !3307)
!3903 = !DILocalVariable(name: "__ptr", scope: !3898, file: !3, line: 330, type: !3881)
!3904 = !DILocation(line: 155, column: 25, scope: !3798)
!3905 = !DILocation(line: 155, column: 44, scope: !3798)
!3906 = !DILocation(line: 155, column: 63, scope: !3798)
!3907 = !DILocation(line: 157, column: 2, scope: !3798)
!3908 = !DILocation(line: 157, column: 6, scope: !3798)
!3909 = !DILocation(line: 158, column: 2, scope: !3798)
!3910 = !DILocation(line: 158, column: 12, scope: !3798)
!3911 = !DILocation(line: 159, column: 2, scope: !3798)
!3912 = !DILocation(line: 159, column: 16, scope: !3798)
!3913 = !DILocation(line: 160, column: 2, scope: !3798)
!3914 = !DILocation(line: 160, column: 16, scope: !3798)
!3915 = !DILocation(line: 161, column: 2, scope: !3798)
!3916 = !DILocation(line: 161, column: 21, scope: !3798)
!3917 = !DILocation(line: 162, column: 2, scope: !3798)
!3918 = !DILocation(line: 162, column: 21, scope: !3798)
!3919 = !DILocation(line: 163, column: 2, scope: !3798)
!3920 = !DILocation(line: 163, column: 15, scope: !3798)
!3921 = !DILocation(line: 163, column: 37, scope: !3798)
!3922 = !DILocation(line: 163, column: 21, scope: !3798)
!3923 = !DILocation(line: 165, column: 2, scope: !3798)
!3924 = !DILocation(line: 167, column: 10, scope: !3798)
!3925 = !DILocation(line: 167, column: 2, scope: !3798)
!3926 = !DILocation(line: 176, column: 31, scope: !3927)
!3927 = distinct !DILexicalBlock(scope: !3826, file: !3, line: 176, column: 7)
!3928 = !DILocation(line: 176, column: 7, scope: !3927)
!3929 = !DILocation(line: 176, column: 7, scope: !3826)
!3930 = !DILocation(line: 177, column: 4, scope: !3927)
!3931 = !DILocation(line: 178, column: 3, scope: !3826)
!3932 = !DILocation(line: 181, column: 31, scope: !3933)
!3933 = distinct !DILexicalBlock(scope: !3826, file: !3, line: 181, column: 7)
!3934 = !DILocation(line: 181, column: 7, scope: !3933)
!3935 = !DILocation(line: 181, column: 7, scope: !3826)
!3936 = !DILocation(line: 182, column: 4, scope: !3933)
!3937 = !DILocation(line: 183, column: 3, scope: !3826)
!3938 = !DILocation(line: 193, column: 3, scope: !3825)
!3939 = !DILocation(line: 193, column: 32, scope: !3825)
!3940 = !DILocation(line: 195, column: 40, scope: !3825)
!3941 = !DILocation(line: 195, column: 9, scope: !3825)
!3942 = !DILocation(line: 195, column: 7, scope: !3825)
!3943 = !DILocation(line: 196, column: 9, scope: !3829)
!3944 = !DILocation(line: 196, column: 9, scope: !3828)
!3945 = !{i64 2153578812}
!3946 = !DILocation(line: 196, column: 9, scope: !3832)
!3947 = !DILocation(line: 196, column: 9, scope: !3825)
!3948 = !DILocation(line: 196, column: 7, scope: !3825)
!3949 = !DILocation(line: 197, column: 10, scope: !3835)
!3950 = !DILocation(line: 197, column: 10, scope: !3834)
!3951 = !{i64 2153580800}
!3952 = !DILocation(line: 197, column: 10, scope: !3838)
!3953 = !DILocation(line: 197, column: 7, scope: !3825)
!3954 = !DILocation(line: 198, column: 10, scope: !3841)
!3955 = !DILocation(line: 198, column: 10, scope: !3840)
!3956 = !{i64 2153582788}
!3957 = !DILocation(line: 198, column: 10, scope: !3844)
!3958 = !DILocation(line: 198, column: 7, scope: !3825)
!3959 = !DILocation(line: 199, column: 7, scope: !3960)
!3960 = distinct !DILexicalBlock(scope: !3825, file: !3, line: 199, column: 7)
!3961 = !DILocation(line: 199, column: 7, scope: !3825)
!3962 = !DILocation(line: 200, column: 11, scope: !3960)
!3963 = !DILocation(line: 200, column: 4, scope: !3960)
!3964 = !DILocation(line: 201, column: 3, scope: !3825)
!3965 = !DILocation(line: 202, column: 2, scope: !3826)
!3966 = !DILocation(line: 205, column: 3, scope: !3846)
!3967 = !DILocation(line: 205, column: 32, scope: !3846)
!3968 = !DILocation(line: 207, column: 40, scope: !3846)
!3969 = !DILocation(line: 207, column: 9, scope: !3846)
!3970 = !DILocation(line: 207, column: 7, scope: !3846)
!3971 = !DILocation(line: 208, column: 9, scope: !3849)
!3972 = !DILocation(line: 208, column: 9, scope: !3848)
!3973 = !{i64 2153586614}
!3974 = !DILocation(line: 208, column: 9, scope: !3852)
!3975 = !DILocation(line: 208, column: 9, scope: !3846)
!3976 = !DILocation(line: 208, column: 7, scope: !3846)
!3977 = !DILocation(line: 209, column: 10, scope: !3855)
!3978 = !DILocation(line: 209, column: 10, scope: !3854)
!3979 = !{i64 2153588642}
!3980 = !DILocation(line: 209, column: 10, scope: !3858)
!3981 = !DILocation(line: 209, column: 7, scope: !3846)
!3982 = !DILocation(line: 210, column: 10, scope: !3861)
!3983 = !DILocation(line: 210, column: 10, scope: !3860)
!3984 = !{i64 2153590630}
!3985 = !DILocation(line: 210, column: 10, scope: !3864)
!3986 = !DILocation(line: 210, column: 7, scope: !3846)
!3987 = !DILocation(line: 211, column: 10, scope: !3867)
!3988 = !DILocation(line: 211, column: 10, scope: !3866)
!3989 = !{i64 2153592618}
!3990 = !DILocation(line: 211, column: 10, scope: !3870)
!3991 = !DILocation(line: 211, column: 7, scope: !3846)
!3992 = !DILocation(line: 212, column: 7, scope: !3993)
!3993 = distinct !DILexicalBlock(scope: !3846, file: !3, line: 212, column: 7)
!3994 = !DILocation(line: 212, column: 7, scope: !3846)
!3995 = !DILocation(line: 213, column: 11, scope: !3993)
!3996 = !DILocation(line: 213, column: 4, scope: !3993)
!3997 = !DILocation(line: 214, column: 3, scope: !3846)
!3998 = !DILocation(line: 215, column: 2, scope: !3826)
!3999 = !DILocation(line: 219, column: 10, scope: !3798)
!4000 = !DILocation(line: 219, column: 2, scope: !3798)
!4001 = !DILocation(line: 221, column: 3, scope: !4002)
!4002 = distinct !DILexicalBlock(scope: !3798, file: !3, line: 219, column: 15)
!4003 = !DILocation(line: 227, column: 28, scope: !4002)
!4004 = !DILocation(line: 227, column: 41, scope: !4002)
!4005 = !DILocation(line: 227, column: 34, scope: !4002)
!4006 = !DILocation(line: 227, column: 54, scope: !4002)
!4007 = !DILocation(line: 228, column: 7, scope: !4002)
!4008 = !DILocation(line: 227, column: 7, scope: !4002)
!4009 = !DILocation(line: 226, column: 7, scope: !4002)
!4010 = !DILocation(line: 229, column: 3, scope: !4002)
!4011 = !DILocation(line: 234, column: 25, scope: !4002)
!4012 = !DILocation(line: 234, column: 38, scope: !4002)
!4013 = !DILocation(line: 234, column: 31, scope: !4002)
!4014 = !DILocation(line: 234, column: 51, scope: !4002)
!4015 = !DILocation(line: 234, column: 9, scope: !4002)
!4016 = !DILocation(line: 234, column: 7, scope: !4002)
!4017 = !DILocation(line: 235, column: 3, scope: !4002)
!4018 = !DILocation(line: 240, column: 30, scope: !4002)
!4019 = !DILocation(line: 240, column: 43, scope: !4002)
!4020 = !DILocation(line: 240, column: 36, scope: !4002)
!4021 = !DILocation(line: 240, column: 49, scope: !4002)
!4022 = !DILocation(line: 240, column: 9, scope: !4002)
!4023 = !DILocation(line: 240, column: 7, scope: !4002)
!4024 = !DILocation(line: 241, column: 3, scope: !4002)
!4025 = !DILocation(line: 246, column: 29, scope: !4002)
!4026 = !DILocation(line: 246, column: 42, scope: !4002)
!4027 = !DILocation(line: 246, column: 35, scope: !4002)
!4028 = !DILocation(line: 246, column: 9, scope: !4002)
!4029 = !DILocation(line: 246, column: 7, scope: !4002)
!4030 = !DILocation(line: 247, column: 3, scope: !4002)
!4031 = !DILocation(line: 252, column: 14, scope: !4032)
!4032 = distinct !DILexicalBlock(scope: !4002, file: !3, line: 252, column: 7)
!4033 = !DILocation(line: 252, column: 24, scope: !4032)
!4034 = !DILocation(line: 252, column: 21, scope: !4032)
!4035 = !DILocation(line: 252, column: 7, scope: !4002)
!4036 = !DILocation(line: 253, column: 4, scope: !4032)
!4037 = !DILocation(line: 254, column: 3, scope: !4002)
!4038 = !DILocation(line: 254, column: 12, scope: !4002)
!4039 = !DILocation(line: 254, column: 23, scope: !4002)
!4040 = !DILocation(line: 257, column: 7, scope: !4041)
!4041 = distinct !DILexicalBlock(scope: !4002, file: !3, line: 257, column: 7)
!4042 = !DILocation(line: 257, column: 14, scope: !4041)
!4043 = !DILocation(line: 257, column: 12, scope: !4041)
!4044 = !DILocation(line: 257, column: 19, scope: !4041)
!4045 = !DILocation(line: 257, column: 23, scope: !4041)
!4046 = !DILocation(line: 258, column: 7, scope: !4041)
!4047 = !DILocation(line: 258, column: 10, scope: !4041)
!4048 = !DILocation(line: 258, column: 15, scope: !4041)
!4049 = !DILocation(line: 257, column: 7, scope: !4002)
!4050 = !DILocation(line: 259, column: 39, scope: !4041)
!4051 = !DILocation(line: 259, column: 44, scope: !4041)
!4052 = !DILocation(line: 259, column: 25, scope: !4041)
!4053 = !DILocation(line: 259, column: 30, scope: !4041)
!4054 = !DILocation(line: 259, column: 11, scope: !4041)
!4055 = !DILocation(line: 259, column: 16, scope: !4041)
!4056 = !DILocation(line: 259, column: 4, scope: !4041)
!4057 = !DILocation(line: 261, column: 18, scope: !4058)
!4058 = distinct !DILexicalBlock(scope: !4041, file: !3, line: 260, column: 8)
!4059 = !DILocation(line: 261, column: 23, scope: !4058)
!4060 = !DILocation(line: 261, column: 11, scope: !4058)
!4061 = !DILocation(line: 261, column: 16, scope: !4058)
!4062 = !DILocation(line: 262, column: 18, scope: !4058)
!4063 = !DILocation(line: 262, column: 23, scope: !4058)
!4064 = !DILocation(line: 262, column: 11, scope: !4058)
!4065 = !DILocation(line: 262, column: 16, scope: !4058)
!4066 = !DILocation(line: 263, column: 18, scope: !4058)
!4067 = !DILocation(line: 263, column: 11, scope: !4058)
!4068 = !DILocation(line: 263, column: 16, scope: !4058)
!4069 = !DILocation(line: 266, column: 3, scope: !4002)
!4070 = !DILocation(line: 272, column: 28, scope: !4002)
!4071 = !DILocation(line: 272, column: 41, scope: !4002)
!4072 = !DILocation(line: 272, column: 34, scope: !4002)
!4073 = !DILocation(line: 272, column: 54, scope: !4002)
!4074 = !DILocation(line: 273, column: 7, scope: !4002)
!4075 = !DILocation(line: 272, column: 7, scope: !4002)
!4076 = !DILocation(line: 271, column: 7, scope: !4002)
!4077 = !DILocation(line: 274, column: 3, scope: !4002)
!4078 = !DILocation(line: 280, column: 28, scope: !4002)
!4079 = !DILocation(line: 280, column: 41, scope: !4002)
!4080 = !DILocation(line: 280, column: 34, scope: !4002)
!4081 = !DILocation(line: 280, column: 54, scope: !4002)
!4082 = !DILocation(line: 280, column: 7, scope: !4002)
!4083 = !DILocation(line: 279, column: 7, scope: !4002)
!4084 = !DILocation(line: 281, column: 3, scope: !4002)
!4085 = !DILocation(line: 286, column: 30, scope: !4002)
!4086 = !DILocation(line: 286, column: 43, scope: !4002)
!4087 = !DILocation(line: 286, column: 36, scope: !4002)
!4088 = !DILocation(line: 286, column: 49, scope: !4002)
!4089 = !DILocation(line: 286, column: 9, scope: !4002)
!4090 = !DILocation(line: 286, column: 7, scope: !4002)
!4091 = !DILocation(line: 287, column: 3, scope: !4002)
!4092 = !DILocation(line: 292, column: 34, scope: !4002)
!4093 = !DILocation(line: 292, column: 47, scope: !4002)
!4094 = !DILocation(line: 292, column: 40, scope: !4002)
!4095 = !DILocation(line: 292, column: 9, scope: !4002)
!4096 = !DILocation(line: 292, column: 7, scope: !4002)
!4097 = !DILocation(line: 293, column: 3, scope: !4002)
!4098 = !DILocation(line: 298, column: 14, scope: !4099)
!4099 = distinct !DILexicalBlock(scope: !4002, file: !3, line: 298, column: 7)
!4100 = !DILocation(line: 298, column: 24, scope: !4099)
!4101 = !DILocation(line: 298, column: 21, scope: !4099)
!4102 = !DILocation(line: 298, column: 7, scope: !4002)
!4103 = !DILocation(line: 299, column: 4, scope: !4099)
!4104 = !DILocation(line: 300, column: 3, scope: !4002)
!4105 = !DILocation(line: 300, column: 12, scope: !4002)
!4106 = !DILocation(line: 300, column: 23, scope: !4002)
!4107 = !DILocation(line: 302, column: 7, scope: !4108)
!4108 = distinct !DILexicalBlock(scope: !4002, file: !3, line: 302, column: 7)
!4109 = !DILocation(line: 302, column: 40, scope: !4108)
!4110 = !DILocation(line: 302, column: 15, scope: !4108)
!4111 = !DILocation(line: 302, column: 12, scope: !4108)
!4112 = !DILocation(line: 302, column: 7, scope: !4002)
!4113 = !DILocation(line: 303, column: 39, scope: !4108)
!4114 = !DILocation(line: 303, column: 44, scope: !4108)
!4115 = !DILocation(line: 303, column: 25, scope: !4108)
!4116 = !DILocation(line: 303, column: 30, scope: !4108)
!4117 = !DILocation(line: 303, column: 11, scope: !4108)
!4118 = !DILocation(line: 303, column: 16, scope: !4108)
!4119 = !DILocation(line: 303, column: 4, scope: !4108)
!4120 = !DILocation(line: 305, column: 18, scope: !4121)
!4121 = distinct !DILexicalBlock(scope: !4108, file: !3, line: 304, column: 8)
!4122 = !DILocation(line: 305, column: 11, scope: !4121)
!4123 = !DILocation(line: 305, column: 16, scope: !4121)
!4124 = !DILocation(line: 306, column: 18, scope: !4121)
!4125 = !DILocation(line: 306, column: 11, scope: !4121)
!4126 = !DILocation(line: 306, column: 16, scope: !4121)
!4127 = !DILocation(line: 307, column: 18, scope: !4121)
!4128 = !DILocation(line: 307, column: 11, scope: !4121)
!4129 = !DILocation(line: 307, column: 16, scope: !4121)
!4130 = !DILocation(line: 309, column: 3, scope: !4002)
!4131 = !DILocation(line: 312, column: 6, scope: !4132)
!4132 = distinct !DILexicalBlock(scope: !3798, file: !3, line: 312, column: 6)
!4133 = !DILocation(line: 312, column: 6, scope: !3798)
!4134 = !DILocation(line: 313, column: 10, scope: !4132)
!4135 = !DILocation(line: 313, column: 3, scope: !4132)
!4136 = !DILocation(line: 315, column: 10, scope: !3798)
!4137 = !DILocation(line: 315, column: 2, scope: !3798)
!4138 = !DILocation(line: 318, column: 20, scope: !4139)
!4139 = distinct !DILexicalBlock(scope: !3873, file: !3, line: 318, column: 7)
!4140 = !DILocation(line: 318, column: 7, scope: !4139)
!4141 = !DILocation(line: 318, column: 7, scope: !3873)
!4142 = !DILocation(line: 319, column: 8, scope: !4139)
!4143 = !DILocation(line: 319, column: 4, scope: !4139)
!4144 = !DILocation(line: 320, column: 3, scope: !3873)
!4145 = !DILocation(line: 324, column: 3, scope: !3872)
!4146 = !DILocation(line: 324, column: 32, scope: !3872)
!4147 = !DILocation(line: 326, column: 40, scope: !3872)
!4148 = !DILocation(line: 326, column: 9, scope: !3872)
!4149 = !DILocation(line: 326, column: 7, scope: !3872)
!4150 = !DILocation(line: 327, column: 9, scope: !3876)
!4151 = !DILocation(line: 327, column: 9, scope: !3875)
!4152 = !{i64 2153615885}
!4153 = !DILocation(line: 327, column: 9, scope: !4154)
!4154 = distinct !DILexicalBlock(scope: !3875, file: !3, line: 327, column: 9)
!4155 = !DILocation(line: 327, column: 9, scope: !3872)
!4156 = !DILocation(line: 327, column: 7, scope: !3872)
!4157 = !DILocation(line: 328, column: 10, scope: !3884)
!4158 = !DILocation(line: 328, column: 10, scope: !3883)
!4159 = !{i64 2153616976}
!4160 = !DILocation(line: 328, column: 10, scope: !4161)
!4161 = distinct !DILexicalBlock(scope: !3883, file: !3, line: 328, column: 10)
!4162 = !DILocation(line: 328, column: 7, scope: !3872)
!4163 = !DILocation(line: 329, column: 10, scope: !3891)
!4164 = !DILocation(line: 329, column: 10, scope: !3890)
!4165 = !{i64 2153618071}
!4166 = !DILocation(line: 329, column: 10, scope: !4167)
!4167 = distinct !DILexicalBlock(scope: !3890, file: !3, line: 329, column: 10)
!4168 = !DILocation(line: 329, column: 7, scope: !3872)
!4169 = !DILocation(line: 330, column: 10, scope: !3899)
!4170 = !DILocation(line: 330, column: 10, scope: !3898)
!4171 = !{i64 2153619176}
!4172 = !DILocation(line: 330, column: 10, scope: !4173)
!4173 = distinct !DILexicalBlock(scope: !3898, file: !3, line: 330, column: 10)
!4174 = !DILocation(line: 330, column: 7, scope: !3872)
!4175 = !DILocation(line: 332, column: 2, scope: !3873)
!4176 = !DILocation(line: 335, column: 9, scope: !3798)
!4177 = !DILocation(line: 335, column: 2, scope: !3798)
!4178 = !DILocation(line: 336, column: 1, scope: !3798)
!4179 = !DISubprogram(name: "capable", scope: !318, file: !318, line: 148, type: !4180, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4180 = !DISubroutineType(types: !4181)
!4181 = !{!415, !67}
!4182 = !DISubprogram(name: "single_open", scope: !77, file: !77, line: 166, type: !4183, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4183 = !DISubroutineType(types: !4184)
!4184 = !{!67, !697, !170, !66}
!4185 = distinct !DISubprogram(name: "mtrr_seq_show", scope: !3, file: !3, line: 357, type: !171, scopeLine: 358, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4186)
!4186 = !{!4187, !4188, !4189, !4190, !4191, !4192, !4193, !4194}
!4187 = !DILocalVariable(name: "seq", arg: 1, scope: !4185, file: !3, line: 357, type: !75)
!4188 = !DILocalVariable(name: "offset", arg: 2, scope: !4185, file: !3, line: 357, type: !66)
!4189 = !DILocalVariable(name: "factor", scope: !4185, file: !3, line: 359, type: !81)
!4190 = !DILocalVariable(name: "i", scope: !4185, file: !3, line: 360, type: !67)
!4191 = !DILocalVariable(name: "max", scope: !4185, file: !3, line: 360, type: !67)
!4192 = !DILocalVariable(name: "type", scope: !4185, file: !3, line: 361, type: !3805)
!4193 = !DILocalVariable(name: "base", scope: !4185, file: !3, line: 362, type: !69)
!4194 = !DILocalVariable(name: "size", scope: !4185, file: !3, line: 362, type: !69)
!4195 = !DILocation(line: 357, column: 43, scope: !4185)
!4196 = !DILocation(line: 357, column: 54, scope: !4185)
!4197 = !DILocation(line: 359, column: 2, scope: !4185)
!4198 = !DILocation(line: 359, column: 7, scope: !4185)
!4199 = !DILocation(line: 360, column: 2, scope: !4185)
!4200 = !DILocation(line: 360, column: 6, scope: !4185)
!4201 = !DILocation(line: 360, column: 9, scope: !4185)
!4202 = !DILocation(line: 361, column: 2, scope: !4185)
!4203 = !DILocation(line: 361, column: 12, scope: !4185)
!4204 = !DILocation(line: 362, column: 2, scope: !4185)
!4205 = !DILocation(line: 362, column: 16, scope: !4185)
!4206 = !DILocation(line: 362, column: 22, scope: !4185)
!4207 = !DILocation(line: 364, column: 8, scope: !4185)
!4208 = !DILocation(line: 364, column: 6, scope: !4185)
!4209 = !DILocation(line: 365, column: 9, scope: !4210)
!4210 = distinct !DILexicalBlock(scope: !4185, file: !3, line: 365, column: 2)
!4211 = !DILocation(line: 365, column: 7, scope: !4210)
!4212 = !DILocation(line: 365, column: 14, scope: !4213)
!4213 = distinct !DILexicalBlock(scope: !4210, file: !3, line: 365, column: 2)
!4214 = !DILocation(line: 365, column: 18, scope: !4213)
!4215 = !DILocation(line: 365, column: 16, scope: !4213)
!4216 = !DILocation(line: 365, column: 2, scope: !4210)
!4217 = !DILocation(line: 366, column: 3, scope: !4218)
!4218 = distinct !DILexicalBlock(scope: !4213, file: !3, line: 365, column: 28)
!4219 = !DILocation(line: 366, column: 12, scope: !4218)
!4220 = !DILocation(line: 366, column: 16, scope: !4218)
!4221 = !DILocation(line: 367, column: 7, scope: !4222)
!4222 = distinct !DILexicalBlock(scope: !4218, file: !3, line: 367, column: 7)
!4223 = !DILocation(line: 367, column: 12, scope: !4222)
!4224 = !DILocation(line: 367, column: 7, scope: !4218)
!4225 = !DILocation(line: 368, column: 21, scope: !4226)
!4226 = distinct !DILexicalBlock(scope: !4222, file: !3, line: 367, column: 18)
!4227 = !DILocation(line: 368, column: 4, scope: !4226)
!4228 = !DILocation(line: 368, column: 24, scope: !4226)
!4229 = !DILocation(line: 369, column: 4, scope: !4226)
!4230 = !DILocation(line: 371, column: 7, scope: !4231)
!4231 = distinct !DILexicalBlock(scope: !4218, file: !3, line: 371, column: 7)
!4232 = !DILocation(line: 371, column: 12, scope: !4231)
!4233 = !DILocation(line: 371, column: 7, scope: !4218)
!4234 = !DILocation(line: 373, column: 11, scope: !4235)
!4235 = distinct !DILexicalBlock(scope: !4231, file: !3, line: 371, column: 40)
!4236 = !DILocation(line: 374, column: 9, scope: !4235)
!4237 = !DILocation(line: 375, column: 3, scope: !4235)
!4238 = !DILocation(line: 376, column: 11, scope: !4239)
!4239 = distinct !DILexicalBlock(scope: !4231, file: !3, line: 375, column: 10)
!4240 = !DILocation(line: 377, column: 9, scope: !4239)
!4241 = !DILocation(line: 380, column: 14, scope: !4218)
!4242 = !DILocation(line: 381, column: 7, scope: !4218)
!4243 = !DILocation(line: 381, column: 10, scope: !4218)
!4244 = !DILocation(line: 381, column: 16, scope: !4218)
!4245 = !DILocation(line: 381, column: 21, scope: !4218)
!4246 = !DILocation(line: 382, column: 7, scope: !4218)
!4247 = !DILocation(line: 382, column: 13, scope: !4218)
!4248 = !DILocation(line: 383, column: 24, scope: !4218)
!4249 = !DILocation(line: 383, column: 7, scope: !4218)
!4250 = !DILocation(line: 383, column: 47, scope: !4218)
!4251 = !DILocation(line: 383, column: 28, scope: !4218)
!4252 = !DILocation(line: 380, column: 3, scope: !4218)
!4253 = !DILocation(line: 384, column: 2, scope: !4218)
!4254 = !DILocation(line: 365, column: 24, scope: !4213)
!4255 = !DILocation(line: 365, column: 2, scope: !4213)
!4256 = distinct !{!4256, !4216, !4257, !3781, !3782}
!4257 = !DILocation(line: 384, column: 2, scope: !4210)
!4258 = !DILocation(line: 386, column: 1, scope: !4185)
!4259 = !DILocation(line: 385, column: 2, scope: !4185)
!4260 = !DISubprogram(name: "seq_printf", scope: !77, file: !77, line: 119, type: !4261, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4261 = !DISubroutineType(types: !4262)
!4262 = !{null, !75, !418, null}
!4263 = !DISubprogram(name: "strncpy_from_user", scope: !4264, file: !4264, line: 489, type: !4265, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4264 = !DIFile(filename: "./arch/x86/include/asm/uaccess.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b103a53a1960df693128e0148737f8c5")
!4265 = !DISubroutineType(types: !4266)
!4266 = !{!693, !80, !418, !693}
!4267 = !DISubprogram(name: "strlen", scope: !4268, file: !4268, line: 128, type: !4269, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4268 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!4269 = !DISubroutineType(types: !4270)
!4270 = !{!69, !418}
!4271 = !DISubprogram(name: "strncmp", scope: !4268, file: !4268, line: 91, type: !4272, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4272 = !DISubroutineType(types: !4273)
!4273 = !{!67, !418, !418, !72}
!4274 = !DISubprogram(name: "simple_strtoul", scope: !4275, file: !4275, line: 145, type: !4276, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4275 = !DIFile(filename: "./include/linux/kstrtox.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b7da882f1f371706e764491098c6cb23")
!4276 = !DISubroutineType(types: !4277)
!4277 = !{!69, !418, !4278, !7}
!4278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!4279 = !DISubprogram(name: "mtrr_del_page", scope: !3302, file: !3302, line: 71, type: !4280, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4280 = !DISubroutineType(types: !4281)
!4281 = !{!67, !67, !69, !69}
!4282 = !DISubprogram(name: "simple_strtoull", scope: !4275, file: !4275, line: 147, type: !4283, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4283 = !DISubroutineType(types: !4284)
!4284 = !{!324, !418, !4278, !7}
!4285 = !DISubprogram(name: "skip_spaces", scope: !4268, file: !4268, line: 112, type: !4286, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4286 = !DISubroutineType(types: !4287)
!4287 = !{!80, !418}
!4288 = !DISubprogram(name: "match_string", scope: !4268, file: !4268, line: 227, type: !4289, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4289 = !DISubroutineType(types: !4290)
!4290 = !{!67, !4291, !70, !418}
!4291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3389, size: 64)
!4292 = !DISubprogram(name: "mtrr_add_page", scope: !3302, file: !3302, line: 68, type: !4293, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4293 = !DISubroutineType(types: !4294)
!4294 = !{!67, !69, !69, !7, !415}
!4295 = !DISubprogram(name: "mtrr_del", scope: !3302, file: !3302, line: 70, type: !4280, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4296 = !DISubprogram(name: "kfree", scope: !56, file: !56, line: 227, type: !4297, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4297 = !DISubroutineType(types: !4298)
!4298 = !{null, !4299}
!4299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4300, size: 64)
!4300 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!4301 = !DISubprogram(name: "single_release", scope: !77, file: !77, line: 168, type: !3164, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4302 = distinct !DISubprogram(name: "copy_from_user", scope: !4303, file: !4303, line: 180, type: !4304, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4306)
!4303 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c6a99e19cfced98603230c2c71e2e3e")
!4304 = !DISubroutineType(types: !4305)
!4305 = !{!69, !66, !4299, !69}
!4306 = !{!4307, !4308, !4309}
!4307 = !DILocalVariable(name: "to", arg: 1, scope: !4302, file: !4303, line: 180, type: !66)
!4308 = !DILocalVariable(name: "from", arg: 2, scope: !4302, file: !4303, line: 180, type: !4299)
!4309 = !DILocalVariable(name: "n", arg: 3, scope: !4302, file: !4303, line: 180, type: !69)
!4310 = !DILocation(line: 180, column: 22, scope: !4302)
!4311 = !DILocation(line: 180, column: 45, scope: !4302)
!4312 = !DILocation(line: 180, column: 65, scope: !4302)
!4313 = !DILocation(line: 182, column: 22, scope: !4314)
!4314 = distinct !DILexicalBlock(scope: !4302, file: !4303, line: 182, column: 6)
!4315 = !DILocation(line: 182, column: 26, scope: !4314)
!4316 = !DILocation(line: 182, column: 6, scope: !4314)
!4317 = !DILocation(line: 182, column: 6, scope: !4302)
!4318 = !DILocation(line: 183, column: 23, scope: !4314)
!4319 = !DILocation(line: 183, column: 27, scope: !4314)
!4320 = !DILocation(line: 183, column: 33, scope: !4314)
!4321 = !DILocation(line: 183, column: 7, scope: !4314)
!4322 = !DILocation(line: 183, column: 5, scope: !4314)
!4323 = !DILocation(line: 183, column: 3, scope: !4314)
!4324 = !DILocation(line: 184, column: 9, scope: !4302)
!4325 = !DILocation(line: 184, column: 2, scope: !4302)
!4326 = distinct !DISubprogram(name: "might_fault", scope: !4327, file: !4327, line: 202, type: !1977, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4327 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!4328 = !DILocation(line: 202, column: 40, scope: !4326)
!4329 = distinct !DISubprogram(name: "kmsan_unpoison_memory", scope: !4330, file: !4330, line: 70, type: !4331, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4333)
!4330 = !DIFile(filename: "./include/linux/kmsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cfeb6fcb47441b7815b086def457771")
!4331 = !DISubroutineType(types: !4332)
!4332 = !{null, !4299, !70}
!4333 = !{!4334, !4335}
!4334 = !DILocalVariable(name: "address", arg: 1, scope: !4329, file: !4330, line: 70, type: !4299)
!4335 = !DILocalVariable(name: "size", arg: 2, scope: !4329, file: !4330, line: 70, type: !70)
!4336 = !DILocation(line: 70, column: 54, scope: !4329)
!4337 = !DILocation(line: 70, column: 70, scope: !4329)
!4338 = !DILocation(line: 72, column: 1, scope: !4329)
!4339 = distinct !DISubprogram(name: "mtrr_file_add", scope: !3, file: !3, line: 38, type: !4340, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4342)
!4340 = !DISubroutineType(types: !4341)
!4341 = !{!67, !69, !69, !7, !415, !697, !67}
!4342 = !{!4343, !4344, !4345, !4346, !4347, !4348, !4349, !4350, !4351}
!4343 = !DILocalVariable(name: "base", arg: 1, scope: !4339, file: !3, line: 38, type: !69)
!4344 = !DILocalVariable(name: "size", arg: 2, scope: !4339, file: !3, line: 38, type: !69)
!4345 = !DILocalVariable(name: "type", arg: 3, scope: !4339, file: !3, line: 39, type: !7)
!4346 = !DILocalVariable(name: "increment", arg: 4, scope: !4339, file: !3, line: 39, type: !415)
!4347 = !DILocalVariable(name: "file", arg: 5, scope: !4339, file: !3, line: 39, type: !697)
!4348 = !DILocalVariable(name: "page", arg: 6, scope: !4339, file: !3, line: 39, type: !67)
!4349 = !DILocalVariable(name: "fcount", scope: !4339, file: !3, line: 41, type: !1193)
!4350 = !DILocalVariable(name: "reg", scope: !4339, file: !3, line: 42, type: !67)
!4351 = !DILocalVariable(name: "max", scope: !4339, file: !3, line: 42, type: !67)
!4352 = !DILocation(line: 38, column: 29, scope: !4339)
!4353 = !DILocation(line: 38, column: 49, scope: !4339)
!4354 = !DILocation(line: 39, column: 21, scope: !4339)
!4355 = !DILocation(line: 39, column: 32, scope: !4339)
!4356 = !DILocation(line: 39, column: 56, scope: !4339)
!4357 = !DILocation(line: 39, column: 66, scope: !4339)
!4358 = !DILocation(line: 41, column: 2, scope: !4339)
!4359 = !DILocation(line: 41, column: 16, scope: !4339)
!4360 = !DILocation(line: 41, column: 25, scope: !4339)
!4361 = !DILocation(line: 42, column: 2, scope: !4339)
!4362 = !DILocation(line: 42, column: 6, scope: !4339)
!4363 = !DILocation(line: 42, column: 11, scope: !4339)
!4364 = !DILocation(line: 44, column: 8, scope: !4339)
!4365 = !DILocation(line: 44, column: 6, scope: !4339)
!4366 = !DILocation(line: 45, column: 6, scope: !4367)
!4367 = distinct !DILexicalBlock(scope: !4339, file: !3, line: 45, column: 6)
!4368 = !DILocation(line: 45, column: 13, scope: !4367)
!4369 = !DILocation(line: 45, column: 6, scope: !4339)
!4370 = !DILocation(line: 46, column: 20, scope: !4371)
!4371 = distinct !DILexicalBlock(scope: !4367, file: !3, line: 45, column: 22)
!4372 = !DILocation(line: 46, column: 12, scope: !4371)
!4373 = !DILocation(line: 46, column: 10, scope: !4371)
!4374 = !DILocation(line: 47, column: 8, scope: !4375)
!4375 = distinct !DILexicalBlock(scope: !4371, file: !3, line: 47, column: 7)
!4376 = !DILocation(line: 47, column: 7, scope: !4371)
!4377 = !DILocation(line: 48, column: 4, scope: !4375)
!4378 = !DILocation(line: 49, column: 23, scope: !4371)
!4379 = !DILocation(line: 49, column: 3, scope: !4371)
!4380 = !DILocation(line: 49, column: 21, scope: !4371)
!4381 = !DILocation(line: 50, column: 2, scope: !4371)
!4382 = !DILocation(line: 51, column: 7, scope: !4383)
!4383 = distinct !DILexicalBlock(scope: !4339, file: !3, line: 51, column: 6)
!4384 = !DILocation(line: 51, column: 6, scope: !4339)
!4385 = !DILocation(line: 52, column: 8, scope: !4386)
!4386 = distinct !DILexicalBlock(scope: !4387, file: !3, line: 52, column: 7)
!4387 = distinct !DILexicalBlock(scope: !4383, file: !3, line: 51, column: 13)
!4388 = !DILocation(line: 52, column: 13, scope: !4386)
!4389 = !DILocation(line: 52, column: 32, scope: !4386)
!4390 = !DILocation(line: 52, column: 36, scope: !4386)
!4391 = !DILocation(line: 52, column: 41, scope: !4386)
!4392 = !DILocation(line: 52, column: 7, scope: !4387)
!4393 = !DILocation(line: 53, column: 4, scope: !4386)
!4394 = !DILocation(line: 54, column: 8, scope: !4387)
!4395 = !DILocation(line: 55, column: 8, scope: !4387)
!4396 = !DILocation(line: 56, column: 2, scope: !4387)
!4397 = !DILocation(line: 57, column: 22, scope: !4339)
!4398 = !DILocation(line: 57, column: 28, scope: !4339)
!4399 = !DILocation(line: 57, column: 34, scope: !4339)
!4400 = !DILocation(line: 57, column: 8, scope: !4339)
!4401 = !DILocation(line: 57, column: 6, scope: !4339)
!4402 = !DILocation(line: 58, column: 6, scope: !4403)
!4403 = distinct !DILexicalBlock(scope: !4339, file: !3, line: 58, column: 6)
!4404 = !DILocation(line: 58, column: 10, scope: !4403)
!4405 = !DILocation(line: 58, column: 6, scope: !4339)
!4406 = !DILocation(line: 59, column: 5, scope: !4403)
!4407 = !DILocation(line: 59, column: 12, scope: !4403)
!4408 = !DILocation(line: 59, column: 3, scope: !4403)
!4409 = !DILocation(line: 60, column: 9, scope: !4339)
!4410 = !DILocation(line: 60, column: 2, scope: !4339)
!4411 = !DILocation(line: 61, column: 1, scope: !4339)
!4412 = !DISubprogram(name: "mtrr_add", scope: !3302, file: !3302, line: 66, type: !4293, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4413 = distinct !DISubprogram(name: "mtrr_file_del", scope: !3, file: !3, line: 64, type: !4414, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4416)
!4414 = !DISubroutineType(types: !4415)
!4415 = !{!67, !69, !69, !697, !67}
!4416 = !{!4417, !4418, !4419, !4420, !4421, !4422}
!4417 = !DILocalVariable(name: "base", arg: 1, scope: !4413, file: !3, line: 64, type: !69)
!4418 = !DILocalVariable(name: "size", arg: 2, scope: !4413, file: !3, line: 64, type: !69)
!4419 = !DILocalVariable(name: "file", arg: 3, scope: !4413, file: !3, line: 65, type: !697)
!4420 = !DILocalVariable(name: "page", arg: 4, scope: !4413, file: !3, line: 65, type: !67)
!4421 = !DILocalVariable(name: "fcount", scope: !4413, file: !3, line: 67, type: !1193)
!4422 = !DILocalVariable(name: "reg", scope: !4413, file: !3, line: 68, type: !67)
!4423 = !DILocation(line: 64, column: 29, scope: !4413)
!4424 = !DILocation(line: 64, column: 49, scope: !4413)
!4425 = !DILocation(line: 65, column: 21, scope: !4413)
!4426 = !DILocation(line: 65, column: 31, scope: !4413)
!4427 = !DILocation(line: 67, column: 2, scope: !4413)
!4428 = !DILocation(line: 67, column: 16, scope: !4413)
!4429 = !DILocation(line: 67, column: 25, scope: !4413)
!4430 = !DILocation(line: 68, column: 2, scope: !4413)
!4431 = !DILocation(line: 68, column: 6, scope: !4413)
!4432 = !DILocation(line: 70, column: 7, scope: !4433)
!4433 = distinct !DILexicalBlock(scope: !4413, file: !3, line: 70, column: 6)
!4434 = !DILocation(line: 70, column: 6, scope: !4413)
!4435 = !DILocation(line: 71, column: 8, scope: !4436)
!4436 = distinct !DILexicalBlock(scope: !4437, file: !3, line: 71, column: 7)
!4437 = distinct !DILexicalBlock(scope: !4433, file: !3, line: 70, column: 13)
!4438 = !DILocation(line: 71, column: 13, scope: !4436)
!4439 = !DILocation(line: 71, column: 32, scope: !4436)
!4440 = !DILocation(line: 71, column: 36, scope: !4436)
!4441 = !DILocation(line: 71, column: 41, scope: !4436)
!4442 = !DILocation(line: 71, column: 7, scope: !4437)
!4443 = !DILocation(line: 72, column: 4, scope: !4436)
!4444 = !DILocation(line: 73, column: 8, scope: !4437)
!4445 = !DILocation(line: 74, column: 8, scope: !4437)
!4446 = !DILocation(line: 75, column: 2, scope: !4437)
!4447 = !DILocation(line: 76, column: 26, scope: !4413)
!4448 = !DILocation(line: 76, column: 32, scope: !4413)
!4449 = !DILocation(line: 76, column: 8, scope: !4413)
!4450 = !DILocation(line: 76, column: 6, scope: !4413)
!4451 = !DILocation(line: 77, column: 6, scope: !4452)
!4452 = distinct !DILexicalBlock(scope: !4413, file: !3, line: 77, column: 6)
!4453 = !DILocation(line: 77, column: 10, scope: !4452)
!4454 = !DILocation(line: 77, column: 6, scope: !4413)
!4455 = !DILocation(line: 78, column: 10, scope: !4452)
!4456 = !DILocation(line: 78, column: 3, scope: !4452)
!4457 = !DILocation(line: 79, column: 6, scope: !4458)
!4458 = distinct !DILexicalBlock(scope: !4413, file: !3, line: 79, column: 6)
!4459 = !DILocation(line: 79, column: 13, scope: !4458)
!4460 = !DILocation(line: 79, column: 6, scope: !4413)
!4461 = !DILocation(line: 80, column: 10, scope: !4458)
!4462 = !DILocation(line: 80, column: 3, scope: !4458)
!4463 = !DILocation(line: 81, column: 6, scope: !4464)
!4464 = distinct !DILexicalBlock(scope: !4413, file: !3, line: 81, column: 6)
!4465 = !DILocation(line: 81, column: 13, scope: !4464)
!4466 = !DILocation(line: 81, column: 18, scope: !4464)
!4467 = !DILocation(line: 81, column: 6, scope: !4413)
!4468 = !DILocation(line: 82, column: 3, scope: !4464)
!4469 = !DILocation(line: 83, column: 4, scope: !4413)
!4470 = !DILocation(line: 83, column: 11, scope: !4413)
!4471 = !DILocation(line: 83, column: 2, scope: !4413)
!4472 = !DILocation(line: 84, column: 9, scope: !4413)
!4473 = !DILocation(line: 84, column: 2, scope: !4413)
!4474 = !DILocation(line: 85, column: 1, scope: !4413)
!4475 = distinct !DISubprogram(name: "copy_to_user", scope: !4303, file: !4303, line: 188, type: !4304, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4476)
!4476 = !{!4477, !4478, !4479}
!4477 = !DILocalVariable(name: "to", arg: 1, scope: !4475, file: !4303, line: 188, type: !66)
!4478 = !DILocalVariable(name: "from", arg: 2, scope: !4475, file: !4303, line: 188, type: !4299)
!4479 = !DILocalVariable(name: "n", arg: 3, scope: !4475, file: !4303, line: 188, type: !69)
!4480 = !DILocation(line: 188, column: 27, scope: !4475)
!4481 = !DILocation(line: 188, column: 43, scope: !4475)
!4482 = !DILocation(line: 188, column: 63, scope: !4475)
!4483 = !DILocation(line: 190, column: 22, scope: !4484)
!4484 = distinct !DILexicalBlock(scope: !4475, file: !4303, line: 190, column: 6)
!4485 = !DILocation(line: 190, column: 28, scope: !4484)
!4486 = !DILocation(line: 190, column: 6, scope: !4484)
!4487 = !DILocation(line: 190, column: 6, scope: !4475)
!4488 = !DILocation(line: 191, column: 21, scope: !4484)
!4489 = !DILocation(line: 191, column: 25, scope: !4484)
!4490 = !DILocation(line: 191, column: 31, scope: !4484)
!4491 = !DILocation(line: 191, column: 7, scope: !4484)
!4492 = !DILocation(line: 191, column: 5, scope: !4484)
!4493 = !DILocation(line: 191, column: 3, scope: !4484)
!4494 = !DILocation(line: 192, column: 9, scope: !4475)
!4495 = !DILocation(line: 192, column: 2, scope: !4475)
!4496 = distinct !DISubprogram(name: "kmsan_copy_to_user", scope: !4330, file: !4330, line: 76, type: !4497, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4499)
!4497 = !DISubroutineType(types: !4498)
!4498 = !{null, !66, !4299, !70, !70}
!4499 = !{!4500, !4501, !4502, !4503}
!4500 = !DILocalVariable(name: "to", arg: 1, scope: !4496, file: !4330, line: 76, type: !66)
!4501 = !DILocalVariable(name: "from", arg: 2, scope: !4496, file: !4330, line: 76, type: !4299)
!4502 = !DILocalVariable(name: "to_copy", arg: 3, scope: !4496, file: !4330, line: 77, type: !70)
!4503 = !DILocalVariable(name: "left", arg: 4, scope: !4496, file: !4330, line: 77, type: !70)
!4504 = !DILocation(line: 76, column: 52, scope: !4496)
!4505 = !DILocation(line: 76, column: 68, scope: !4496)
!4506 = !DILocation(line: 77, column: 18, scope: !4496)
!4507 = !DILocation(line: 77, column: 34, scope: !4496)
!4508 = !DILocation(line: 79, column: 1, scope: !4496)
!4509 = distinct !DISubprogram(name: "check_copy_size", scope: !3379, file: !3379, line: 237, type: !4510, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4512)
!4510 = !DISubroutineType(types: !4511)
!4511 = !{!415, !4299, !70, !415}
!4512 = !{!4513, !4514, !4515, !4516, !4517, !4520}
!4513 = !DILocalVariable(name: "addr", arg: 1, scope: !4509, file: !3379, line: 237, type: !4299)
!4514 = !DILocalVariable(name: "bytes", arg: 2, scope: !4509, file: !3379, line: 237, type: !70)
!4515 = !DILocalVariable(name: "is_source", arg: 3, scope: !4509, file: !3379, line: 237, type: !415)
!4516 = !DILocalVariable(name: "sz", scope: !4509, file: !3379, line: 239, type: !67)
!4517 = !DILocalVariable(name: "__ret_warn_on", scope: !4518, file: !3379, line: 249, type: !67)
!4518 = distinct !DILexicalBlock(scope: !4519, file: !3379, line: 249, column: 6)
!4519 = distinct !DILexicalBlock(scope: !4509, file: !3379, line: 249, column: 6)
!4520 = !DILocalVariable(name: "__flags", scope: !4521, file: !3379, line: 249, type: !67)
!4521 = distinct !DILexicalBlock(scope: !4522, file: !3379, line: 249, column: 6)
!4522 = distinct !DILexicalBlock(scope: !4518, file: !3379, line: 249, column: 6)
!4523 = !DILocation(line: 237, column: 29, scope: !4509)
!4524 = !DILocation(line: 237, column: 42, scope: !4509)
!4525 = !DILocation(line: 237, column: 54, scope: !4509)
!4526 = !DILocation(line: 239, column: 2, scope: !4509)
!4527 = !DILocation(line: 239, column: 6, scope: !4509)
!4528 = !DILocation(line: 239, column: 33, scope: !4509)
!4529 = !DILocation(line: 239, column: 11, scope: !4509)
!4530 = !DILocation(line: 240, column: 6, scope: !4531)
!4531 = distinct !DILexicalBlock(scope: !4509, file: !3379, line: 240, column: 6)
!4532 = !DILocation(line: 0, scope: !4531)
!4533 = !DILocation(line: 240, column: 6, scope: !4509)
!4534 = !DILocation(line: 241, column: 29, scope: !4535)
!4535 = distinct !DILexicalBlock(scope: !4536, file: !3379, line: 241, column: 7)
!4536 = distinct !DILexicalBlock(scope: !4531, file: !3379, line: 240, column: 39)
!4537 = !DILocation(line: 241, column: 8, scope: !4535)
!4538 = !DILocation(line: 241, column: 7, scope: !4536)
!4539 = !DILocation(line: 242, column: 18, scope: !4535)
!4540 = !DILocation(line: 242, column: 22, scope: !4535)
!4541 = !DILocation(line: 242, column: 4, scope: !4535)
!4542 = !DILocation(line: 243, column: 12, scope: !4543)
!4543 = distinct !DILexicalBlock(scope: !4535, file: !3379, line: 243, column: 12)
!4544 = !DILocation(line: 243, column: 12, scope: !4535)
!4545 = !DILocation(line: 244, column: 4, scope: !4543)
!4546 = !{i32 1642481}
!4547 = !DILocation(line: 246, column: 4, scope: !4543)
!4548 = !{i32 1642510}
!4549 = !DILocation(line: 247, column: 3, scope: !4536)
!4550 = !DILocation(line: 249, column: 6, scope: !4518)
!4551 = !DILocation(line: 249, column: 6, scope: !4522)
!4552 = !DILocation(line: 249, column: 6, scope: !4521)
!4553 = !DILocation(line: 249, column: 6, scope: !4554)
!4554 = distinct !DILexicalBlock(scope: !4521, file: !3379, line: 249, column: 6)
!4555 = !DILocation(line: 249, column: 6, scope: !4556)
!4556 = distinct !DILexicalBlock(scope: !4521, file: !3379, line: 249, column: 6)
!4557 = !{i64 2149551746, i64 2149551775, i64 2149551821, i64 2149551879, i64 2149551933, i64 2149551987, i64 2149552042, i64 2149552073, i64 2149552381, i64 2149552387, i64 2149552434, i64 2149552457, i64 2149552483}
!4558 = !DILocation(line: 249, column: 6, scope: !4559)
!4559 = distinct !DILexicalBlock(scope: !4521, file: !3379, line: 249, column: 6)
!4560 = !DILocation(line: 249, column: 6, scope: !4519)
!4561 = !DILocation(line: 249, column: 6, scope: !4509)
!4562 = !DILocation(line: 250, column: 3, scope: !4519)
!4563 = !DILocation(line: 251, column: 20, scope: !4509)
!4564 = !DILocation(line: 251, column: 26, scope: !4509)
!4565 = !DILocation(line: 251, column: 33, scope: !4509)
!4566 = !DILocation(line: 251, column: 2, scope: !4509)
!4567 = !DILocation(line: 252, column: 2, scope: !4509)
!4568 = !DILocation(line: 253, column: 1, scope: !4509)
!4569 = !DISubprogram(name: "_copy_from_user", scope: !4303, file: !4303, line: 158, type: !4304, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4570 = distinct !DISubprogram(name: "copy_overflow", scope: !3379, file: !3379, line: 230, type: !4571, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4573)
!4571 = !DISubroutineType(types: !4572)
!4572 = !{null, !67, !69}
!4573 = !{!4574, !4575}
!4574 = !DILocalVariable(name: "size", arg: 1, scope: !4570, file: !3379, line: 230, type: !67)
!4575 = !DILocalVariable(name: "count", arg: 2, scope: !4570, file: !3379, line: 230, type: !69)
!4576 = !DILocation(line: 230, column: 38, scope: !4570)
!4577 = !DILocation(line: 230, column: 58, scope: !4570)
!4578 = !DILocation(line: 233, column: 19, scope: !4579)
!4579 = distinct !DILexicalBlock(scope: !4570, file: !3379, line: 232, column: 6)
!4580 = !DILocation(line: 233, column: 25, scope: !4579)
!4581 = !DILocation(line: 233, column: 3, scope: !4579)
!4582 = !DILocation(line: 234, column: 1, scope: !4570)
!4583 = !DISubprogram(name: "__bad_copy_from", scope: !3379, file: !3379, line: 224, type: !1977, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4584 = !DISubprogram(name: "__bad_copy_to", scope: !3379, file: !3379, line: 226, type: !1977, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4585 = distinct !DISubprogram(name: "check_object_size", scope: !3379, file: !3379, line: 218, type: !4586, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4588)
!4586 = !DISubroutineType(types: !4587)
!4587 = !{null, !4299, !69, !415}
!4588 = !{!4589, !4590, !4591}
!4589 = !DILocalVariable(name: "ptr", arg: 1, scope: !4585, file: !3379, line: 218, type: !4299)
!4590 = !DILocalVariable(name: "n", arg: 2, scope: !4585, file: !3379, line: 218, type: !69)
!4591 = !DILocalVariable(name: "to_user", arg: 3, scope: !4585, file: !3379, line: 219, type: !415)
!4592 = !DILocation(line: 218, column: 50, scope: !4585)
!4593 = !DILocation(line: 218, column: 69, scope: !4585)
!4594 = !DILocation(line: 219, column: 15, scope: !4585)
!4595 = !DILocation(line: 220, column: 3, scope: !4585)
!4596 = !DISubprogram(name: "__copy_overflow", scope: !3379, file: !3379, line: 228, type: !4571, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4597 = distinct !DISubprogram(name: "kcalloc", scope: !56, file: !56, line: 666, type: !4598, scopeLine: 667, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4600)
!4598 = !DISubroutineType(types: !4599)
!4599 = !{!66, !70, !70, !785}
!4600 = !{!4601, !4602, !4603}
!4601 = !DILocalVariable(name: "n", arg: 1, scope: !4597, file: !56, line: 666, type: !70)
!4602 = !DILocalVariable(name: "size", arg: 2, scope: !4597, file: !56, line: 666, type: !70)
!4603 = !DILocalVariable(name: "flags", arg: 3, scope: !4597, file: !56, line: 666, type: !785)
!4604 = !DILocation(line: 666, column: 55, scope: !4597)
!4605 = !DILocation(line: 666, column: 65, scope: !4597)
!4606 = !DILocation(line: 666, column: 77, scope: !4597)
!4607 = !DILocation(line: 668, column: 23, scope: !4597)
!4608 = !DILocation(line: 668, column: 26, scope: !4597)
!4609 = !DILocation(line: 668, column: 32, scope: !4597)
!4610 = !DILocation(line: 668, column: 38, scope: !4597)
!4611 = !DILocation(line: 668, column: 9, scope: !4597)
!4612 = !DILocation(line: 668, column: 2, scope: !4597)
!4613 = distinct !DISubprogram(name: "kmalloc_array", scope: !56, file: !56, line: 629, type: !4598, scopeLine: 630, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4614)
!4614 = !{!4615, !4616, !4617, !4618}
!4615 = !DILocalVariable(name: "n", arg: 1, scope: !4613, file: !56, line: 629, type: !70)
!4616 = !DILocalVariable(name: "size", arg: 2, scope: !4613, file: !56, line: 629, type: !70)
!4617 = !DILocalVariable(name: "flags", arg: 3, scope: !4613, file: !56, line: 629, type: !785)
!4618 = !DILocalVariable(name: "bytes", scope: !4613, file: !56, line: 631, type: !70)
!4619 = !DILocation(line: 629, column: 61, scope: !4613)
!4620 = !DILocation(line: 629, column: 71, scope: !4613)
!4621 = !DILocation(line: 629, column: 83, scope: !4613)
!4622 = !DILocation(line: 631, column: 2, scope: !4613)
!4623 = !DILocation(line: 631, column: 9, scope: !4613)
!4624 = !DILocation(line: 633, column: 6, scope: !4625)
!4625 = distinct !DILexicalBlock(scope: !4613, file: !56, line: 633, column: 6)
!4626 = !DILocation(line: 633, column: 6, scope: !4613)
!4627 = !DILocation(line: 634, column: 3, scope: !4625)
!4628 = !DILocation(line: 635, column: 27, scope: !4629)
!4629 = distinct !DILexicalBlock(scope: !4613, file: !56, line: 635, column: 6)
!4630 = !DILocation(line: 635, column: 6, scope: !4629)
!4631 = !DILocation(line: 635, column: 30, scope: !4629)
!4632 = !DILocation(line: 635, column: 54, scope: !4629)
!4633 = !DILocation(line: 635, column: 33, scope: !4629)
!4634 = !DILocation(line: 635, column: 6, scope: !4613)
!4635 = !DILocation(line: 636, column: 18, scope: !4629)
!4636 = !DILocation(line: 636, column: 25, scope: !4629)
!4637 = !DILocation(line: 636, column: 10, scope: !4629)
!4638 = !DILocation(line: 636, column: 3, scope: !4629)
!4639 = !DILocation(line: 637, column: 19, scope: !4613)
!4640 = !DILocation(line: 637, column: 26, scope: !4613)
!4641 = !DILocation(line: 637, column: 9, scope: !4613)
!4642 = !DILocation(line: 637, column: 2, scope: !4613)
!4643 = !DILocation(line: 638, column: 1, scope: !4613)
!4644 = distinct !DISubprogram(name: "__must_check_overflow", scope: !4645, file: !4645, line: 51, type: !4646, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4648)
!4645 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!4646 = !DISubroutineType(types: !4647)
!4647 = !{!415, !415}
!4648 = !{!4649}
!4649 = !DILocalVariable(name: "overflow", arg: 1, scope: !4644, file: !4645, line: 51, type: !415)
!4650 = !DILocation(line: 51, column: 60, scope: !4644)
!4651 = !DILocation(line: 53, column: 9, scope: !4644)
!4652 = !DILocation(line: 53, column: 2, scope: !4644)
!4653 = distinct !DISubprogram(name: "kmalloc", scope: !56, file: !56, line: 591, type: !4654, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4656)
!4654 = !DISubroutineType(types: !4655)
!4655 = !{!66, !70, !785}
!4656 = !{!4657, !4658, !4659}
!4657 = !DILocalVariable(name: "size", arg: 1, scope: !4653, file: !56, line: 591, type: !70)
!4658 = !DILocalVariable(name: "flags", arg: 2, scope: !4653, file: !56, line: 591, type: !785)
!4659 = !DILocalVariable(name: "index", scope: !4660, file: !56, line: 594, type: !7)
!4660 = distinct !DILexicalBlock(scope: !4661, file: !56, line: 593, column: 42)
!4661 = distinct !DILexicalBlock(scope: !4653, file: !56, line: 593, column: 6)
!4662 = !DILocation(line: 591, column: 61, scope: !4653)
!4663 = !DILocation(line: 591, column: 73, scope: !4653)
!4664 = !DILocation(line: 593, column: 27, scope: !4661)
!4665 = !DILocation(line: 593, column: 6, scope: !4661)
!4666 = !DILocation(line: 593, column: 33, scope: !4661)
!4667 = !DILocation(line: 593, column: 36, scope: !4661)
!4668 = !DILocation(line: 593, column: 6, scope: !4653)
!4669 = !DILocation(line: 594, column: 3, scope: !4660)
!4670 = !DILocation(line: 594, column: 16, scope: !4660)
!4671 = !DILocation(line: 596, column: 7, scope: !4672)
!4672 = distinct !DILexicalBlock(scope: !4660, file: !56, line: 596, column: 7)
!4673 = !DILocation(line: 596, column: 12, scope: !4672)
!4674 = !DILocation(line: 596, column: 7, scope: !4660)
!4675 = !DILocation(line: 597, column: 25, scope: !4672)
!4676 = !DILocation(line: 597, column: 31, scope: !4672)
!4677 = !DILocation(line: 597, column: 11, scope: !4672)
!4678 = !DILocation(line: 597, column: 4, scope: !4672)
!4679 = !DILocation(line: 599, column: 11, scope: !4660)
!4680 = !DILocation(line: 599, column: 9, scope: !4660)
!4681 = !DILocation(line: 601, column: 33, scope: !4660)
!4682 = !DILocation(line: 601, column: 40, scope: !4660)
!4683 = !DILocation(line: 601, column: 20, scope: !4660)
!4684 = !DILocation(line: 601, column: 5, scope: !4660)
!4685 = !DILocation(line: 601, column: 51, scope: !4660)
!4686 = !DILocation(line: 602, column: 5, scope: !4660)
!4687 = !DILocation(line: 602, column: 12, scope: !4660)
!4688 = !DILocation(line: 600, column: 10, scope: !4660)
!4689 = !DILocation(line: 600, column: 3, scope: !4660)
!4690 = !DILocation(line: 603, column: 2, scope: !4661)
!4691 = !DILocation(line: 604, column: 19, scope: !4653)
!4692 = !DILocation(line: 604, column: 25, scope: !4653)
!4693 = !DILocation(line: 604, column: 9, scope: !4653)
!4694 = !DILocation(line: 604, column: 2, scope: !4653)
!4695 = !DILocation(line: 605, column: 1, scope: !4653)
!4696 = !DISubprogram(name: "__kmalloc", scope: !56, file: !56, line: 488, type: !4654, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4697 = !DISubprogram(name: "kmalloc_large", scope: !56, file: !56, line: 531, type: !4654, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4698 = distinct !DISubprogram(name: "__kmalloc_index", scope: !56, file: !56, line: 444, type: !4699, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4701)
!4699 = !DISubroutineType(types: !4700)
!4700 = !{!7, !70, !415}
!4701 = !{!4702, !4703}
!4702 = !DILocalVariable(name: "size", arg: 1, scope: !4698, file: !56, line: 444, type: !70)
!4703 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !4698, file: !56, line: 445, type: !415)
!4704 = !DILocation(line: 444, column: 60, scope: !4698)
!4705 = !DILocation(line: 445, column: 16, scope: !4698)
!4706 = !DILocation(line: 447, column: 7, scope: !4707)
!4707 = distinct !DILexicalBlock(scope: !4698, file: !56, line: 447, column: 6)
!4708 = !DILocation(line: 447, column: 6, scope: !4698)
!4709 = !DILocation(line: 448, column: 3, scope: !4707)
!4710 = !DILocation(line: 450, column: 6, scope: !4711)
!4711 = distinct !DILexicalBlock(scope: !4698, file: !56, line: 450, column: 6)
!4712 = !DILocation(line: 450, column: 11, scope: !4711)
!4713 = !DILocation(line: 450, column: 6, scope: !4698)
!4714 = !DILocation(line: 451, column: 3, scope: !4711)
!4715 = !DILocation(line: 453, column: 32, scope: !4716)
!4716 = distinct !DILexicalBlock(scope: !4698, file: !56, line: 453, column: 6)
!4717 = !DILocation(line: 453, column: 37, scope: !4716)
!4718 = !DILocation(line: 453, column: 42, scope: !4716)
!4719 = !DILocation(line: 453, column: 45, scope: !4716)
!4720 = !DILocation(line: 453, column: 50, scope: !4716)
!4721 = !DILocation(line: 453, column: 6, scope: !4698)
!4722 = !DILocation(line: 454, column: 3, scope: !4716)
!4723 = !DILocation(line: 455, column: 32, scope: !4724)
!4724 = distinct !DILexicalBlock(scope: !4698, file: !56, line: 455, column: 6)
!4725 = !DILocation(line: 455, column: 37, scope: !4724)
!4726 = !DILocation(line: 455, column: 43, scope: !4724)
!4727 = !DILocation(line: 455, column: 46, scope: !4724)
!4728 = !DILocation(line: 455, column: 51, scope: !4724)
!4729 = !DILocation(line: 455, column: 6, scope: !4698)
!4730 = !DILocation(line: 456, column: 3, scope: !4724)
!4731 = !DILocation(line: 457, column: 6, scope: !4732)
!4732 = distinct !DILexicalBlock(scope: !4698, file: !56, line: 457, column: 6)
!4733 = !DILocation(line: 457, column: 11, scope: !4732)
!4734 = !DILocation(line: 457, column: 6, scope: !4698)
!4735 = !DILocation(line: 457, column: 26, scope: !4732)
!4736 = !DILocation(line: 458, column: 6, scope: !4737)
!4737 = distinct !DILexicalBlock(scope: !4698, file: !56, line: 458, column: 6)
!4738 = !DILocation(line: 458, column: 11, scope: !4737)
!4739 = !DILocation(line: 458, column: 6, scope: !4698)
!4740 = !DILocation(line: 458, column: 26, scope: !4737)
!4741 = !DILocation(line: 459, column: 6, scope: !4742)
!4742 = distinct !DILexicalBlock(scope: !4698, file: !56, line: 459, column: 6)
!4743 = !DILocation(line: 459, column: 11, scope: !4742)
!4744 = !DILocation(line: 459, column: 6, scope: !4698)
!4745 = !DILocation(line: 459, column: 26, scope: !4742)
!4746 = !DILocation(line: 460, column: 6, scope: !4747)
!4747 = distinct !DILexicalBlock(scope: !4698, file: !56, line: 460, column: 6)
!4748 = !DILocation(line: 460, column: 11, scope: !4747)
!4749 = !DILocation(line: 460, column: 6, scope: !4698)
!4750 = !DILocation(line: 460, column: 26, scope: !4747)
!4751 = !DILocation(line: 461, column: 6, scope: !4752)
!4752 = distinct !DILexicalBlock(scope: !4698, file: !56, line: 461, column: 6)
!4753 = !DILocation(line: 461, column: 11, scope: !4752)
!4754 = !DILocation(line: 461, column: 6, scope: !4698)
!4755 = !DILocation(line: 461, column: 26, scope: !4752)
!4756 = !DILocation(line: 462, column: 6, scope: !4757)
!4757 = distinct !DILexicalBlock(scope: !4698, file: !56, line: 462, column: 6)
!4758 = !DILocation(line: 462, column: 11, scope: !4757)
!4759 = !DILocation(line: 462, column: 6, scope: !4698)
!4760 = !DILocation(line: 462, column: 26, scope: !4757)
!4761 = !DILocation(line: 463, column: 6, scope: !4762)
!4762 = distinct !DILexicalBlock(scope: !4698, file: !56, line: 463, column: 6)
!4763 = !DILocation(line: 463, column: 11, scope: !4762)
!4764 = !DILocation(line: 463, column: 6, scope: !4698)
!4765 = !DILocation(line: 463, column: 26, scope: !4762)
!4766 = !DILocation(line: 464, column: 6, scope: !4767)
!4767 = distinct !DILexicalBlock(scope: !4698, file: !56, line: 464, column: 6)
!4768 = !DILocation(line: 464, column: 11, scope: !4767)
!4769 = !DILocation(line: 464, column: 6, scope: !4698)
!4770 = !DILocation(line: 464, column: 26, scope: !4767)
!4771 = !DILocation(line: 465, column: 6, scope: !4772)
!4772 = distinct !DILexicalBlock(scope: !4698, file: !56, line: 465, column: 6)
!4773 = !DILocation(line: 465, column: 11, scope: !4772)
!4774 = !DILocation(line: 465, column: 6, scope: !4698)
!4775 = !DILocation(line: 465, column: 26, scope: !4772)
!4776 = !DILocation(line: 466, column: 6, scope: !4777)
!4777 = distinct !DILexicalBlock(scope: !4698, file: !56, line: 466, column: 6)
!4778 = !DILocation(line: 466, column: 11, scope: !4777)
!4779 = !DILocation(line: 466, column: 6, scope: !4698)
!4780 = !DILocation(line: 466, column: 26, scope: !4777)
!4781 = !DILocation(line: 467, column: 6, scope: !4782)
!4782 = distinct !DILexicalBlock(scope: !4698, file: !56, line: 467, column: 6)
!4783 = !DILocation(line: 467, column: 11, scope: !4782)
!4784 = !DILocation(line: 467, column: 6, scope: !4698)
!4785 = !DILocation(line: 467, column: 26, scope: !4782)
!4786 = !DILocation(line: 468, column: 6, scope: !4787)
!4787 = distinct !DILexicalBlock(scope: !4698, file: !56, line: 468, column: 6)
!4788 = !DILocation(line: 468, column: 11, scope: !4787)
!4789 = !DILocation(line: 468, column: 6, scope: !4698)
!4790 = !DILocation(line: 468, column: 26, scope: !4787)
!4791 = !DILocation(line: 469, column: 6, scope: !4792)
!4792 = distinct !DILexicalBlock(scope: !4698, file: !56, line: 469, column: 6)
!4793 = !DILocation(line: 469, column: 11, scope: !4792)
!4794 = !DILocation(line: 469, column: 6, scope: !4698)
!4795 = !DILocation(line: 469, column: 26, scope: !4792)
!4796 = !DILocation(line: 470, column: 6, scope: !4797)
!4797 = distinct !DILexicalBlock(scope: !4698, file: !56, line: 470, column: 6)
!4798 = !DILocation(line: 470, column: 11, scope: !4797)
!4799 = !DILocation(line: 470, column: 6, scope: !4698)
!4800 = !DILocation(line: 470, column: 26, scope: !4797)
!4801 = !DILocation(line: 471, column: 6, scope: !4802)
!4802 = distinct !DILexicalBlock(scope: !4698, file: !56, line: 471, column: 6)
!4803 = !DILocation(line: 471, column: 11, scope: !4802)
!4804 = !DILocation(line: 471, column: 6, scope: !4698)
!4805 = !DILocation(line: 471, column: 26, scope: !4802)
!4806 = !DILocation(line: 472, column: 6, scope: !4807)
!4807 = distinct !DILexicalBlock(scope: !4698, file: !56, line: 472, column: 6)
!4808 = !DILocation(line: 472, column: 11, scope: !4807)
!4809 = !DILocation(line: 472, column: 6, scope: !4698)
!4810 = !DILocation(line: 472, column: 26, scope: !4807)
!4811 = !DILocation(line: 473, column: 6, scope: !4812)
!4812 = distinct !DILexicalBlock(scope: !4698, file: !56, line: 473, column: 6)
!4813 = !DILocation(line: 473, column: 11, scope: !4812)
!4814 = !DILocation(line: 473, column: 6, scope: !4698)
!4815 = !DILocation(line: 473, column: 26, scope: !4812)
!4816 = !DILocation(line: 474, column: 6, scope: !4817)
!4817 = distinct !DILexicalBlock(scope: !4698, file: !56, line: 474, column: 6)
!4818 = !DILocation(line: 474, column: 11, scope: !4817)
!4819 = !DILocation(line: 474, column: 6, scope: !4698)
!4820 = !DILocation(line: 474, column: 27, scope: !4817)
!4821 = !DILocation(line: 475, column: 6, scope: !4822)
!4822 = distinct !DILexicalBlock(scope: !4698, file: !56, line: 475, column: 6)
!4823 = !DILocation(line: 475, column: 11, scope: !4822)
!4824 = !DILocation(line: 475, column: 6, scope: !4698)
!4825 = !DILocation(line: 475, column: 32, scope: !4822)
!4826 = !DILocation(line: 477, column: 50, scope: !4827)
!4827 = distinct !DILexicalBlock(scope: !4698, file: !56, line: 477, column: 6)
!4828 = !DILocation(line: 477, column: 6, scope: !4698)
!4829 = !DILocation(line: 478, column: 3, scope: !4827)
!4830 = !DILocation(line: 478, column: 3, scope: !4831)
!4831 = distinct !DILexicalBlock(scope: !4832, file: !56, line: 478, column: 3)
!4832 = distinct !DILexicalBlock(scope: !4827, file: !56, line: 478, column: 3)
!4833 = !{i32 -2141694344}
!4834 = !DILocation(line: 478, column: 3, scope: !4832)
!4835 = !DILocation(line: 480, column: 3, scope: !4827)
!4836 = !DILocation(line: 480, column: 3, scope: !4837)
!4837 = distinct !DILexicalBlock(scope: !4827, file: !56, line: 480, column: 3)
!4838 = !DILocation(line: 480, column: 3, scope: !4839)
!4839 = distinct !DILexicalBlock(scope: !4837, file: !56, line: 480, column: 3)
!4840 = !DILocation(line: 480, column: 3, scope: !4841)
!4841 = distinct !DILexicalBlock(scope: !4837, file: !56, line: 480, column: 3)
!4842 = !{i64 2153273155, i64 2153273184, i64 2153273230, i64 2153273288, i64 2153273342, i64 2153273396, i64 2153273451, i64 2153273482}
!4843 = !DILocation(line: 483, column: 2, scope: !4698)
!4844 = !DILocation(line: 484, column: 1, scope: !4698)
!4845 = !DISubprogram(name: "kmalloc_trace", scope: !56, file: !56, line: 525, type: !4846, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4846 = !DISubroutineType(types: !4847)
!4847 = !{!66, !4848, !785, !70}
!4848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4849, size: 64)
!4849 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !4850, line: 325, flags: DIFlagFwdDecl)
!4850 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!4851 = distinct !DISubprogram(name: "kmalloc_type", scope: !56, file: !56, line: 401, type: !4852, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4854)
!4852 = !DISubroutineType(types: !4853)
!4853 = !{!55, !785, !69}
!4854 = !{!4855, !4856}
!4855 = !DILocalVariable(name: "flags", arg: 1, scope: !4851, file: !56, line: 401, type: !785)
!4856 = !DILocalVariable(name: "caller", arg: 2, scope: !4851, file: !56, line: 401, type: !69)
!4857 = !DILocation(line: 401, column: 67, scope: !4851)
!4858 = !DILocation(line: 401, column: 88, scope: !4851)
!4859 = !DILocation(line: 407, column: 6, scope: !4860)
!4860 = distinct !DILexicalBlock(scope: !4851, file: !56, line: 407, column: 6)
!4861 = !DILocation(line: 407, column: 6, scope: !4851)
!4862 = !DILocation(line: 413, column: 3, scope: !4860)
!4863 = !DILocation(line: 423, column: 38, scope: !4864)
!4864 = distinct !DILexicalBlock(scope: !4851, file: !56, line: 423, column: 6)
!4865 = !DILocation(line: 423, column: 44, scope: !4864)
!4866 = !DILocation(line: 423, column: 6, scope: !4851)
!4867 = !DILocation(line: 424, column: 3, scope: !4864)
!4868 = !DILocation(line: 426, column: 3, scope: !4869)
!4869 = distinct !DILexicalBlock(scope: !4851, file: !56, line: 425, column: 6)
!4870 = !DILocation(line: 429, column: 1, scope: !4851)
!4871 = !DISubprogram(name: "__compiletime_assert_245", scope: !56, file: !56, line: 478, type: !1977, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!4872 = !DISubprogram(name: "_copy_to_user", scope: !4303, file: !4303, line: 176, type: !4304, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
