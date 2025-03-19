; ModuleID = 'arch/x86/kernel/kdebugfs.c'
source_filename = "arch/x86/kernel/kdebugfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_arch_debugfs_dir: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad arch_debugfs_dir ; .previous"
module asm ".section\09\22.initcall3.init..kmod_kdebugfs__278_195_arch_kdebugfs_init\22, \22a\22\09\09"
module asm "__initcall__kmod_kdebugfs__278_195_arch_kdebugfs_init3:\09\09\09"
module asm ".long\09__initstub__kmod_kdebugfs__278_195_arch_kdebugfs_init3 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.boot_params = type { %struct.screen_info, %struct.apm_bios_info, [4 x i8], i64, %struct.ist_info, i64, [8 x i8], [16 x i8], [16 x i8], %struct.sys_desc_table, %struct.olpc_ofw_header, i32, i32, i32, [112 x i8], i32, %struct.edid_info, %struct.efi_info, i32, i32, i8, i8, i8, i8, i8, [2 x i8], i8, [1 x i8], %struct.setup_header, [36 x i8], [16 x i32], [128 x %struct.boot_e820_entry], [48 x i8], [6 x %struct.edd_info], [276 x i8] }
%struct.screen_info = type <{ i8, i8, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i16, i16, i16, i16, i32, i32, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i32, i32, [2 x i8] }>
%struct.apm_bios_info = type { i16, i16, i32, i16, i16, i16, i16, i16, i16 }
%struct.ist_info = type { i32, i32, i32, i32 }
%struct.sys_desc_table = type { i16, [14 x i8] }
%struct.olpc_ofw_header = type { i32, i32, i32, i32 }
%struct.edid_info = type { [128 x i8] }
%struct.efi_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.setup_header = type <{ i8, i16, i32, i16, i16, i16, i16, i16, i32, i16, i32, i16, i16, i8, i8, i16, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i64, i32, i32, i64, i64, i32, i32, i32 }>
%struct.boot_e820_entry = type <{ i64, i64, i32 }>
%struct.edd_info = type { i8, i8, i16, i16, i8, i8, %struct.edd_device_params }
%struct.edd_device_params = type <{ i16, i16, i32, i32, i32, i64, i16, i32, i16, i8, i8, i16, [4 x i8], [8 x i8], %union.anon.13, %union.anon.20, i8, i8 }>
%union.anon.13 = type { %struct.anon.16 }
%struct.anon.16 = type { i64 }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { i8, i8, i16, i32, i64 }
%struct.debugfs_blob_wrapper = type { ptr, i64 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.setup_data = type { i64, i32, i32, [0 x i8] }
%struct.setup_indirect = type { i32, i32, i64, i64 }
%struct.setup_data_node = type { i64, i32, i32 }
%struct.file = type { %union.anon.31, %struct.spinlock, i32, %struct.atomic64_t, %struct.mutex, i64, i32, %struct.fown_struct, ptr, %struct.file_ra_state, %struct.path, ptr, ptr, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.31 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.atomic64_t = type { i64 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.32, %struct.qspinlock }
%union.anon.32 = type { %struct.atomic_t }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.path = type { ptr, ptr }

@arch_debugfs_dir = hidden global ptr null, align 8, !dbg !0
@__UNIQUE_ID___addressable_arch_debugfs_dir277 = internal global ptr @arch_debugfs_dir, section ".discard.addressable", align 8, !dbg !116
@__UNIQUE_ID___addressable___initstub__kmod_kdebugfs__278_195_arch_kdebugfs_init3279 = internal global ptr @__initstub__kmod_kdebugfs__278_195_arch_kdebugfs_init3, section ".discard.addressable", align 8, !dbg !118
@.str = private unnamed_addr constant [4 x i8] c"x86\00", align 1, !dbg !120
@.str.1 = private unnamed_addr constant [12 x i8] c"boot_params\00", align 1, !dbg !126
@.str.2 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !131
@boot_params = external dso_local global %struct.boot_params, align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"data\00", align 1, !dbg !136
@boot_params_blob = internal global %struct.debugfs_blob_wrapper { ptr @boot_params, i64 4096 }, align 8, !dbg !141
@.str.4 = private unnamed_addr constant [11 x i8] c"setup_data\00", align 1, !dbg !148
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.5 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !153
@.str.6 = private unnamed_addr constant [3 x i8] c"%d\00", align 1, !dbg !158
@.str.7 = private unnamed_addr constant [5 x i8] c"type\00", align 1, !dbg !163
@fops_setup_data = internal constant %struct.file_operations { ptr null, ptr @default_llseek, ptr @setup_data_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i64 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !165
@.str.8 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1, !dbg !3503
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID___addressable_arch_debugfs_dir277, ptr @__UNIQUE_ID___addressable___initstub__kmod_kdebugfs__278_195_arch_kdebugfs_init3279], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_kdebugfs__278_195_arch_kdebugfs_init3() #0 section ".init.text" align 16 !dbg !3518 {
entry:
  %call = call i32 @arch_kdebugfs_init() #15, !dbg !3521
  ret i32 %call, !dbg !3521
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @arch_kdebugfs_init() #0 section ".init.text" align 16 !dbg !3522 {
entry:
  %error = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #16, !dbg !3525
  call void @llvm.dbg.declare(metadata ptr %error, metadata !3524, metadata !DIExpression()), !dbg !3526
  store i32 0, ptr %error, align 4, !dbg !3526
  %call = call ptr @debugfs_create_dir(ptr noundef @.str, ptr noundef null) #17, !dbg !3527
  store ptr %call, ptr @arch_debugfs_dir, align 8, !dbg !3528
  %call1 = call i32 @boot_params_kdebugfs_init() #15, !dbg !3529
  store i32 %call1, ptr %error, align 4, !dbg !3530
  %0 = load i32, ptr %error, align 4, !dbg !3531
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #16, !dbg !3532
  ret i32 %0, !dbg !3533
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3534 dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) #3

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @boot_params_kdebugfs_init() #0 section ".init.text" align 16 !dbg !3537 {
entry:
  %dbp = alloca ptr, align 8
  %error = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %dbp) #16, !dbg !3541
  call void @llvm.dbg.declare(metadata ptr %dbp, metadata !3539, metadata !DIExpression()), !dbg !3542
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #16, !dbg !3543
  call void @llvm.dbg.declare(metadata ptr %error, metadata !3540, metadata !DIExpression()), !dbg !3544
  %0 = load ptr, ptr @arch_debugfs_dir, align 8, !dbg !3545
  %call = call ptr @debugfs_create_dir(ptr noundef @.str.1, ptr noundef %0) #17, !dbg !3546
  store ptr %call, ptr %dbp, align 8, !dbg !3547
  %1 = load ptr, ptr %dbp, align 8, !dbg !3548
  call void @debugfs_create_x16(ptr noundef @.str.2, i16 noundef zeroext 292, ptr noundef %1, ptr noundef getelementptr inbounds (%struct.boot_params, ptr @boot_params, i32 0, i32 28, i32 9)) #17, !dbg !3549
  %2 = load ptr, ptr %dbp, align 8, !dbg !3550
  %call1 = call ptr @debugfs_create_blob(ptr noundef @.str.3, i16 noundef zeroext 292, ptr noundef %2, ptr noundef @boot_params_blob) #17, !dbg !3551
  %3 = load ptr, ptr %dbp, align 8, !dbg !3552
  %call2 = call i32 @create_setup_data_nodes(ptr noundef %3) #15, !dbg !3553
  store i32 %call2, ptr %error, align 4, !dbg !3554
  %4 = load i32, ptr %error, align 4, !dbg !3555
  %tobool = icmp ne i32 %4, 0, !dbg !3555
  br i1 %tobool, label %if.then, label %if.end, !dbg !3557

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %dbp, align 8, !dbg !3558
  call void @debugfs_remove(ptr noundef %5) #17, !dbg !3559
  br label %if.end, !dbg !3559

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, ptr %error, align 4, !dbg !3560
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #16, !dbg !3561
  call void @llvm.lifetime.end.p0(i64 8, ptr %dbp) #16, !dbg !3561
  ret i32 %6, !dbg !3562
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3563 dso_local void @debugfs_create_x16(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3567 dso_local ptr @debugfs_create_blob(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) #3

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @create_setup_data_nodes(ptr noundef %parent) #0 section ".init.text" align 16 !dbg !3571 {
entry:
  %retval = alloca i32, align 4
  %parent.addr = alloca ptr, align 8
  %indirect = alloca ptr, align 8
  %node = alloca ptr, align 8
  %data = alloca ptr, align 8
  %pa_data = alloca i64, align 8
  %pa_next = alloca i64, align 8
  %d = alloca ptr, align 8
  %error = alloca i32, align 4
  %len = alloca i32, align 4
  %no = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !3573, metadata !DIExpression()), !dbg !3598
  call void @llvm.lifetime.start.p0(i64 8, ptr %indirect) #16, !dbg !3599
  call void @llvm.dbg.declare(metadata ptr %indirect, metadata !3574, metadata !DIExpression()), !dbg !3600
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #16, !dbg !3601
  call void @llvm.dbg.declare(metadata ptr %node, metadata !3575, metadata !DIExpression()), !dbg !3602
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #16, !dbg !3603
  call void @llvm.dbg.declare(metadata ptr %data, metadata !3582, metadata !DIExpression()), !dbg !3604
  call void @llvm.lifetime.start.p0(i64 8, ptr %pa_data) #16, !dbg !3605
  call void @llvm.dbg.declare(metadata ptr %pa_data, metadata !3591, metadata !DIExpression()), !dbg !3606
  call void @llvm.lifetime.start.p0(i64 8, ptr %pa_next) #16, !dbg !3605
  call void @llvm.dbg.declare(metadata ptr %pa_next, metadata !3592, metadata !DIExpression()), !dbg !3607
  call void @llvm.lifetime.start.p0(i64 8, ptr %d) #16, !dbg !3608
  call void @llvm.dbg.declare(metadata ptr %d, metadata !3593, metadata !DIExpression()), !dbg !3609
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #16, !dbg !3610
  call void @llvm.dbg.declare(metadata ptr %error, metadata !3594, metadata !DIExpression()), !dbg !3611
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #16, !dbg !3612
  call void @llvm.dbg.declare(metadata ptr %len, metadata !3595, metadata !DIExpression()), !dbg !3613
  call void @llvm.lifetime.start.p0(i64 4, ptr %no) #16, !dbg !3614
  call void @llvm.dbg.declare(metadata ptr %no, metadata !3596, metadata !DIExpression()), !dbg !3615
  store i32 0, ptr %no, align 4, !dbg !3615
  %0 = load ptr, ptr %parent.addr, align 8, !dbg !3616
  %call = call ptr @debugfs_create_dir(ptr noundef @.str.4, ptr noundef %0) #17, !dbg !3617
  store ptr %call, ptr %d, align 8, !dbg !3618
  %1 = load i64, ptr getelementptr inbounds (%struct.boot_params, ptr @boot_params, i32 0, i32 28, i32 34), align 1, !dbg !3619
  store i64 %1, ptr %pa_data, align 8, !dbg !3620
  br label %while.cond, !dbg !3621

while.cond:                                       ; preds = %if.end37, %entry
  %2 = load i64, ptr %pa_data, align 8, !dbg !3622
  %tobool = icmp ne i64 %2, 0, !dbg !3621
  br i1 %tobool, label %while.body, label %while.end, !dbg !3621

while.body:                                       ; preds = %while.cond
  %call1 = call noalias ptr @kmalloc(i64 noundef 16, i32 noundef 3264) #18, !dbg !3623
  store ptr %call1, ptr %node, align 8, !dbg !3625
  %3 = load ptr, ptr %node, align 8, !dbg !3626
  %tobool2 = icmp ne ptr %3, null, !dbg !3626
  br i1 %tobool2, label %if.end, label %if.then, !dbg !3628

if.then:                                          ; preds = %while.body
  store i32 -12, ptr %error, align 4, !dbg !3629
  br label %err_dir, !dbg !3631

if.end:                                           ; preds = %while.body
  %4 = load i64, ptr %pa_data, align 8, !dbg !3632
  %call3 = call ptr @memremap(i64 noundef %4, i64 noundef 16, i64 noundef 1) #17, !dbg !3633
  store ptr %call3, ptr %data, align 8, !dbg !3634
  %5 = load ptr, ptr %data, align 8, !dbg !3635
  %tobool4 = icmp ne ptr %5, null, !dbg !3635
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !3637

if.then5:                                         ; preds = %if.end
  %6 = load ptr, ptr %node, align 8, !dbg !3638
  call void @kfree(ptr noundef %6) #17, !dbg !3640
  store i32 -12, ptr %error, align 4, !dbg !3641
  br label %err_dir, !dbg !3642

if.end6:                                          ; preds = %if.end
  %7 = load ptr, ptr %data, align 8, !dbg !3643
  %next = getelementptr inbounds %struct.setup_data, ptr %7, i32 0, i32 0, !dbg !3644
  %8 = load i64, ptr %next, align 8, !dbg !3644
  store i64 %8, ptr %pa_next, align 8, !dbg !3645
  %9 = load ptr, ptr %data, align 8, !dbg !3646
  %type = getelementptr inbounds %struct.setup_data, ptr %9, i32 0, i32 1, !dbg !3648
  %10 = load i32, ptr %type, align 8, !dbg !3648
  %cmp = icmp eq i32 %10, -2147483648, !dbg !3649
  br i1 %cmp, label %if.then7, label %if.else31, !dbg !3650

if.then7:                                         ; preds = %if.end6
  %11 = load ptr, ptr %data, align 8, !dbg !3651
  %len8 = getelementptr inbounds %struct.setup_data, ptr %11, i32 0, i32 2, !dbg !3653
  %12 = load i32, ptr %len8, align 4, !dbg !3653
  %conv = zext i32 %12 to i64, !dbg !3651
  %add = add i64 16, %conv, !dbg !3654
  %conv9 = trunc i64 %add to i32, !dbg !3655
  store i32 %conv9, ptr %len, align 4, !dbg !3656
  %13 = load ptr, ptr %data, align 8, !dbg !3657
  call void @memunmap(ptr noundef %13) #17, !dbg !3658
  %14 = load i64, ptr %pa_data, align 8, !dbg !3659
  %15 = load i32, ptr %len, align 4, !dbg !3660
  %conv10 = zext i32 %15 to i64, !dbg !3660
  %call11 = call ptr @memremap(i64 noundef %14, i64 noundef %conv10, i64 noundef 1) #17, !dbg !3661
  store ptr %call11, ptr %data, align 8, !dbg !3662
  %16 = load ptr, ptr %data, align 8, !dbg !3663
  %tobool12 = icmp ne ptr %16, null, !dbg !3663
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !3665

if.then13:                                        ; preds = %if.then7
  %17 = load ptr, ptr %node, align 8, !dbg !3666
  call void @kfree(ptr noundef %17) #17, !dbg !3668
  store i32 -12, ptr %error, align 4, !dbg !3669
  br label %err_dir, !dbg !3670

if.end14:                                         ; preds = %if.then7
  %18 = load ptr, ptr %data, align 8, !dbg !3671
  %data15 = getelementptr inbounds %struct.setup_data, ptr %18, i32 0, i32 3, !dbg !3672
  %arraydecay = getelementptr inbounds [0 x i8], ptr %data15, i64 0, i64 0, !dbg !3671
  store ptr %arraydecay, ptr %indirect, align 8, !dbg !3673
  %19 = load ptr, ptr %indirect, align 8, !dbg !3674
  %type16 = getelementptr inbounds %struct.setup_indirect, ptr %19, i32 0, i32 0, !dbg !3676
  %20 = load i32, ptr %type16, align 8, !dbg !3676
  %cmp17 = icmp ne i32 %20, -2147483648, !dbg !3677
  br i1 %cmp17, label %if.then19, label %if.else, !dbg !3678

if.then19:                                        ; preds = %if.end14
  %21 = load ptr, ptr %indirect, align 8, !dbg !3679
  %addr = getelementptr inbounds %struct.setup_indirect, ptr %21, i32 0, i32 3, !dbg !3681
  %22 = load i64, ptr %addr, align 8, !dbg !3681
  %23 = load ptr, ptr %node, align 8, !dbg !3682
  %paddr = getelementptr inbounds %struct.setup_data_node, ptr %23, i32 0, i32 0, !dbg !3683
  store i64 %22, ptr %paddr, align 8, !dbg !3684
  %24 = load ptr, ptr %indirect, align 8, !dbg !3685
  %type20 = getelementptr inbounds %struct.setup_indirect, ptr %24, i32 0, i32 0, !dbg !3686
  %25 = load i32, ptr %type20, align 8, !dbg !3686
  %26 = load ptr, ptr %node, align 8, !dbg !3687
  %type21 = getelementptr inbounds %struct.setup_data_node, ptr %26, i32 0, i32 1, !dbg !3688
  store i32 %25, ptr %type21, align 8, !dbg !3689
  %27 = load ptr, ptr %indirect, align 8, !dbg !3690
  %len22 = getelementptr inbounds %struct.setup_indirect, ptr %27, i32 0, i32 2, !dbg !3691
  %28 = load i64, ptr %len22, align 8, !dbg !3691
  %conv23 = trunc i64 %28 to i32, !dbg !3690
  %29 = load ptr, ptr %node, align 8, !dbg !3692
  %len24 = getelementptr inbounds %struct.setup_data_node, ptr %29, i32 0, i32 2, !dbg !3693
  store i32 %conv23, ptr %len24, align 4, !dbg !3694
  br label %if.end30, !dbg !3695

if.else:                                          ; preds = %if.end14
  %30 = load i64, ptr %pa_data, align 8, !dbg !3696
  %31 = load ptr, ptr %node, align 8, !dbg !3698
  %paddr25 = getelementptr inbounds %struct.setup_data_node, ptr %31, i32 0, i32 0, !dbg !3699
  store i64 %30, ptr %paddr25, align 8, !dbg !3700
  %32 = load ptr, ptr %data, align 8, !dbg !3701
  %type26 = getelementptr inbounds %struct.setup_data, ptr %32, i32 0, i32 1, !dbg !3702
  %33 = load i32, ptr %type26, align 8, !dbg !3702
  %34 = load ptr, ptr %node, align 8, !dbg !3703
  %type27 = getelementptr inbounds %struct.setup_data_node, ptr %34, i32 0, i32 1, !dbg !3704
  store i32 %33, ptr %type27, align 8, !dbg !3705
  %35 = load ptr, ptr %data, align 8, !dbg !3706
  %len28 = getelementptr inbounds %struct.setup_data, ptr %35, i32 0, i32 2, !dbg !3707
  %36 = load i32, ptr %len28, align 4, !dbg !3707
  %37 = load ptr, ptr %node, align 8, !dbg !3708
  %len29 = getelementptr inbounds %struct.setup_data_node, ptr %37, i32 0, i32 2, !dbg !3709
  store i32 %36, ptr %len29, align 4, !dbg !3710
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.then19
  br label %if.end37, !dbg !3711

if.else31:                                        ; preds = %if.end6
  %38 = load i64, ptr %pa_data, align 8, !dbg !3712
  %39 = load ptr, ptr %node, align 8, !dbg !3714
  %paddr32 = getelementptr inbounds %struct.setup_data_node, ptr %39, i32 0, i32 0, !dbg !3715
  store i64 %38, ptr %paddr32, align 8, !dbg !3716
  %40 = load ptr, ptr %data, align 8, !dbg !3717
  %type33 = getelementptr inbounds %struct.setup_data, ptr %40, i32 0, i32 1, !dbg !3718
  %41 = load i32, ptr %type33, align 8, !dbg !3718
  %42 = load ptr, ptr %node, align 8, !dbg !3719
  %type34 = getelementptr inbounds %struct.setup_data_node, ptr %42, i32 0, i32 1, !dbg !3720
  store i32 %41, ptr %type34, align 8, !dbg !3721
  %43 = load ptr, ptr %data, align 8, !dbg !3722
  %len35 = getelementptr inbounds %struct.setup_data, ptr %43, i32 0, i32 2, !dbg !3723
  %44 = load i32, ptr %len35, align 4, !dbg !3723
  %45 = load ptr, ptr %node, align 8, !dbg !3724
  %len36 = getelementptr inbounds %struct.setup_data_node, ptr %45, i32 0, i32 2, !dbg !3725
  store i32 %44, ptr %len36, align 4, !dbg !3726
  br label %if.end37

if.end37:                                         ; preds = %if.else31, %if.end30
  %46 = load ptr, ptr %d, align 8, !dbg !3727
  %47 = load i32, ptr %no, align 4, !dbg !3728
  %48 = load ptr, ptr %node, align 8, !dbg !3729
  call void @create_setup_data_node(ptr noundef %46, i32 noundef %47, ptr noundef %48) #15, !dbg !3730
  %49 = load i64, ptr %pa_next, align 8, !dbg !3731
  store i64 %49, ptr %pa_data, align 8, !dbg !3732
  %50 = load ptr, ptr %data, align 8, !dbg !3733
  call void @memunmap(ptr noundef %50) #17, !dbg !3734
  %51 = load i32, ptr %no, align 4, !dbg !3735
  %inc = add i32 %51, 1, !dbg !3735
  store i32 %inc, ptr %no, align 4, !dbg !3735
  br label %while.cond, !dbg !3621, !llvm.loop !3736

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %retval, align 4, !dbg !3740
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3740

err_dir:                                          ; preds = %if.then13, %if.then5, %if.then
  call void @llvm.dbg.label(metadata !3597), !dbg !3741
  %52 = load ptr, ptr %d, align 8, !dbg !3742
  call void @debugfs_remove(ptr noundef %52) #17, !dbg !3743
  %53 = load i32, ptr %error, align 4, !dbg !3744
  store i32 %53, ptr %retval, align 4, !dbg !3745
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3745

cleanup:                                          ; preds = %err_dir, %while.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %no) #16, !dbg !3746
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #16, !dbg !3746
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #16, !dbg !3746
  call void @llvm.lifetime.end.p0(i64 8, ptr %d) #16, !dbg !3746
  call void @llvm.lifetime.end.p0(i64 8, ptr %pa_next) #16, !dbg !3746
  call void @llvm.lifetime.end.p0(i64 8, ptr %pa_data) #16, !dbg !3746
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #16, !dbg !3746
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #16, !dbg !3746
  call void @llvm.lifetime.end.p0(i64 8, ptr %indirect) #16, !dbg !3746
  %54 = load i32, ptr %retval, align 4, !dbg !3746
  ret i32 %54, !dbg !3746
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3747 dso_local void @debugfs_remove(ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #4 align 16 !dbg !3748 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3752, metadata !DIExpression()), !dbg !3757
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3753, metadata !DIExpression()), !dbg !3758
  %0 = load i64, ptr %size.addr, align 8, !dbg !3759
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3760
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !3761

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !3762
  %tobool = icmp ne i64 %2, 0, !dbg !3762
  br i1 %tobool, label %if.then, label %if.end7, !dbg !3763

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #16, !dbg !3764
  call void @llvm.dbg.declare(metadata ptr %index, metadata !3754, metadata !DIExpression()), !dbg !3765
  %3 = load i64, ptr %size.addr, align 8, !dbg !3766
  %cmp = icmp ugt i64 %3, 8192, !dbg !3768
  br i1 %cmp, label %if.then1, label %if.end, !dbg !3769

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !3770
  %5 = load i32, ptr %flags.addr, align 4, !dbg !3771
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #18, !dbg !3772
  store ptr %call, ptr %retval, align 8, !dbg !3773
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3773

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !3774
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #17, !dbg !3774
  store i32 %call2, ptr %index, align 4, !dbg !3775
  %7 = load i32, ptr %flags.addr, align 4, !dbg !3776
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !3777
  %9 = ptrtoint ptr %8 to i64, !dbg !3777
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #17, !dbg !3778
  %idxprom = zext i32 %call3 to i64, !dbg !3779
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !3779
  %10 = load i32, ptr %index, align 4, !dbg !3780
  %idxprom4 = zext i32 %10 to i64, !dbg !3779
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !3779
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !3779
  %12 = load i32, ptr %flags.addr, align 4, !dbg !3781
  %13 = load i64, ptr %size.addr, align 8, !dbg !3782
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #19, !dbg !3783
  store ptr %call6, ptr %retval, align 8, !dbg !3784
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3784

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #16, !dbg !3785
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !3786
  %15 = load i32, ptr %flags.addr, align 4, !dbg !3787
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #18, !dbg !3788
  store ptr %call8, ptr %retval, align 8, !dbg !3789
  br label %return, !dbg !3789

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !3790
  ret ptr %16, !dbg !3790
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3791 dso_local ptr @memremap(i64 noundef, i64 noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3795 dso_local void @kfree(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3798 dso_local void @memunmap(ptr noundef) #3

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @create_setup_data_node(ptr noundef %parent, i32 noundef %no, ptr noundef %node) #0 section ".init.text" align 16 !dbg !3799 {
entry:
  %parent.addr = alloca ptr, align 8
  %no.addr = alloca i32, align 4
  %node.addr = alloca ptr, align 8
  %d = alloca ptr, align 8
  %buf = alloca [16 x i8], align 16
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !3803, metadata !DIExpression()), !dbg !3808
  store i32 %no, ptr %no.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %no.addr, metadata !3804, metadata !DIExpression()), !dbg !3809
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !3805, metadata !DIExpression()), !dbg !3810
  call void @llvm.lifetime.start.p0(i64 8, ptr %d) #16, !dbg !3811
  call void @llvm.dbg.declare(metadata ptr %d, metadata !3806, metadata !DIExpression()), !dbg !3812
  call void @llvm.lifetime.start.p0(i64 16, ptr %buf) #16, !dbg !3813
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !3807, metadata !DIExpression()), !dbg !3814
  %arraydecay = getelementptr inbounds [16 x i8], ptr %buf, i64 0, i64 0, !dbg !3815
  %0 = load i32, ptr %no.addr, align 4, !dbg !3816
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay, ptr noundef @.str.6, i32 noundef %0) #17, !dbg !3817
  %arraydecay1 = getelementptr inbounds [16 x i8], ptr %buf, i64 0, i64 0, !dbg !3818
  %1 = load ptr, ptr %parent.addr, align 8, !dbg !3819
  %call2 = call ptr @debugfs_create_dir(ptr noundef %arraydecay1, ptr noundef %1) #17, !dbg !3820
  store ptr %call2, ptr %d, align 8, !dbg !3821
  %2 = load ptr, ptr %d, align 8, !dbg !3822
  %3 = load ptr, ptr %node.addr, align 8, !dbg !3823
  %type = getelementptr inbounds %struct.setup_data_node, ptr %3, i32 0, i32 1, !dbg !3824
  call void @debugfs_create_x32(ptr noundef @.str.7, i16 noundef zeroext 292, ptr noundef %2, ptr noundef %type) #17, !dbg !3825
  %4 = load ptr, ptr %d, align 8, !dbg !3826
  %5 = load ptr, ptr %node.addr, align 8, !dbg !3827
  %call3 = call ptr @debugfs_create_file(ptr noundef @.str.3, i16 noundef zeroext 292, ptr noundef %4, ptr noundef %5, ptr noundef @fops_setup_data) #17, !dbg !3828
  call void @llvm.lifetime.end.p0(i64 16, ptr %buf) #16, !dbg !3829
  call void @llvm.lifetime.end.p0(i64 8, ptr %d) #16, !dbg !3829
  ret void, !dbg !3829
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !3830 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #7 align 16 !dbg !3831 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3835, metadata !DIExpression()), !dbg !3837
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !3836, metadata !DIExpression()), !dbg !3838
  %0 = load i64, ptr %size.addr, align 8, !dbg !3839
  %tobool = icmp ne i64 %0, 0, !dbg !3839
  br i1 %tobool, label %if.end, label %if.then, !dbg !3841

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !3842
  br label %return, !dbg !3842

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !3843
  %cmp = icmp ule i64 %1, 8, !dbg !3845
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !3846

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !3847
  br label %return, !dbg !3847

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !3848
  %cmp3 = icmp ugt i64 %2, 64, !dbg !3850
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !3851

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !3852
  %cmp4 = icmp ule i64 %3, 96, !dbg !3853
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !3854

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !3855
  br label %return, !dbg !3855

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !3856
  %cmp7 = icmp ugt i64 %4, 128, !dbg !3858
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !3859

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !3860
  %cmp9 = icmp ule i64 %5, 192, !dbg !3861
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !3862

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !3863
  br label %return, !dbg !3863

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !3864
  %cmp12 = icmp ule i64 %6, 8, !dbg !3866
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !3867

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !3868
  br label %return, !dbg !3868

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !3869
  %cmp15 = icmp ule i64 %7, 16, !dbg !3871
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !3872

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !3873
  br label %return, !dbg !3873

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !3874
  %cmp18 = icmp ule i64 %8, 32, !dbg !3876
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !3877

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !3878
  br label %return, !dbg !3878

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !3879
  %cmp21 = icmp ule i64 %9, 64, !dbg !3881
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !3882

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !3883
  br label %return, !dbg !3883

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !3884
  %cmp24 = icmp ule i64 %10, 128, !dbg !3886
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !3887

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !3888
  br label %return, !dbg !3888

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !3889
  %cmp27 = icmp ule i64 %11, 256, !dbg !3891
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !3892

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !3893
  br label %return, !dbg !3893

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !3894
  %cmp30 = icmp ule i64 %12, 512, !dbg !3896
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !3897

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !3898
  br label %return, !dbg !3898

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !3899
  %cmp33 = icmp ule i64 %13, 1024, !dbg !3901
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !3902

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !3903
  br label %return, !dbg !3903

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !3904
  %cmp36 = icmp ule i64 %14, 2048, !dbg !3906
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !3907

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !3908
  br label %return, !dbg !3908

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !3909
  %cmp39 = icmp ule i64 %15, 4096, !dbg !3911
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !3912

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !3913
  br label %return, !dbg !3913

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !3914
  %cmp42 = icmp ule i64 %16, 8192, !dbg !3916
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !3917

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !3918
  br label %return, !dbg !3918

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !3919
  %cmp45 = icmp ule i64 %17, 16384, !dbg !3921
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !3922

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !3923
  br label %return, !dbg !3923

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !3924
  %cmp48 = icmp ule i64 %18, 32768, !dbg !3926
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !3927

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !3928
  br label %return, !dbg !3928

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !3929
  %cmp51 = icmp ule i64 %19, 65536, !dbg !3931
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !3932

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !3933
  br label %return, !dbg !3933

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !3934
  %cmp54 = icmp ule i64 %20, 131072, !dbg !3936
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !3937

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !3938
  br label %return, !dbg !3938

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !3939
  %cmp57 = icmp ule i64 %21, 262144, !dbg !3941
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !3942

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !3943
  br label %return, !dbg !3943

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !3944
  %cmp60 = icmp ule i64 %22, 524288, !dbg !3946
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !3947

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !3948
  br label %return, !dbg !3948

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !3949
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !3951
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !3952

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !3953
  br label %return, !dbg !3953

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !3954
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !3956
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !3957

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !3958
  br label %return, !dbg !3958

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !3959, !range !3961, !noundef !886
  %tobool69 = trunc i8 %25 to i1, !dbg !3959
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !3962

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !3963

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_245() #20, !dbg !3964, !srcloc !3967
  unreachable, !dbg !3964

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !3968

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !3969

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !3970

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !3972

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !3970

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.5, i32 480, i32 0, i64 12) #16, !dbg !3974, !srcloc !3976
  br label %do.end75, !dbg !3974

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !3970

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !3977
  br label %return, !dbg !3977

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !3978
  ret i32 %26, !dbg !3978
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !3979 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #7 align 16 !dbg !3985 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3989, metadata !DIExpression()), !dbg !3991
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !3990, metadata !DIExpression()), !dbg !3992
  %0 = load i32, ptr %flags.addr, align 4, !dbg !3993
  %and = and i32 %0, 17, !dbg !3993
  %cmp = icmp eq i32 %and, 0, !dbg !3993
  %lnot = xor i1 %cmp, true, !dbg !3993
  %lnot1 = xor i1 %lnot, true, !dbg !3993
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3993
  %conv = sext i32 %lnot.ext to i64, !dbg !3993
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !3993
  %tobool = icmp ne i64 %expval, 0, !dbg !3993
  br i1 %tobool, label %if.then, label %if.end, !dbg !3995

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !3996
  br label %return, !dbg !3996

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !3997
  %and2 = and i32 %1, 1, !dbg !3999
  %tobool3 = icmp ne i32 %and2, 0, !dbg !3999
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !4000

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !4001
  br label %return, !dbg !4001

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !4002
  br label %return, !dbg !4002

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !4004
  ret i32 %2, !dbg !4004
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !4005 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #6

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !4006 dso_local void @__compiletime_assert_245() #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #9

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4007 dso_local i32 @sprintf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4011 dso_local void @debugfs_create_x32(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4014 dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @setup_data_read(ptr noundef %file, ptr noundef %user_buf, i64 noundef %count, ptr noundef %ppos) #11 align 16 !dbg !4017 {
entry:
  %retval = alloca i64, align 8
  %file.addr = alloca ptr, align 8
  %user_buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %ppos.addr = alloca ptr, align 8
  %node = alloca ptr, align 8
  %remain = alloca i64, align 8
  %pos = alloca i64, align 8
  %p = alloca ptr, align 8
  %pa = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !4019, metadata !DIExpression()), !dbg !4028
  store ptr %user_buf, ptr %user_buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %user_buf.addr, metadata !4020, metadata !DIExpression()), !dbg !4029
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !4021, metadata !DIExpression()), !dbg !4030
  store ptr %ppos, ptr %ppos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ppos.addr, metadata !4022, metadata !DIExpression()), !dbg !4031
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #16, !dbg !4032
  call void @llvm.dbg.declare(metadata ptr %node, metadata !4023, metadata !DIExpression()), !dbg !4033
  %0 = load ptr, ptr %file.addr, align 8, !dbg !4034
  %private_data = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15, !dbg !4035
  %1 = load ptr, ptr %private_data, align 8, !dbg !4035
  store ptr %1, ptr %node, align 8, !dbg !4033
  call void @llvm.lifetime.start.p0(i64 8, ptr %remain) #16, !dbg !4036
  call void @llvm.dbg.declare(metadata ptr %remain, metadata !4024, metadata !DIExpression()), !dbg !4037
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos) #16, !dbg !4038
  call void @llvm.dbg.declare(metadata ptr %pos, metadata !4025, metadata !DIExpression()), !dbg !4039
  %2 = load ptr, ptr %ppos.addr, align 8, !dbg !4040
  %3 = load i64, ptr %2, align 8, !dbg !4041
  store i64 %3, ptr %pos, align 8, !dbg !4039
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #16, !dbg !4042
  call void @llvm.dbg.declare(metadata ptr %p, metadata !4026, metadata !DIExpression()), !dbg !4043
  call void @llvm.lifetime.start.p0(i64 8, ptr %pa) #16, !dbg !4044
  call void @llvm.dbg.declare(metadata ptr %pa, metadata !4027, metadata !DIExpression()), !dbg !4045
  %4 = load i64, ptr %pos, align 8, !dbg !4046
  %cmp = icmp slt i64 %4, 0, !dbg !4048
  br i1 %cmp, label %if.then, label %if.end, !dbg !4049

if.then:                                          ; preds = %entry
  store i64 -22, ptr %retval, align 8, !dbg !4050
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4050

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %pos, align 8, !dbg !4051
  %6 = load ptr, ptr %node, align 8, !dbg !4053
  %len = getelementptr inbounds %struct.setup_data_node, ptr %6, i32 0, i32 2, !dbg !4054
  %7 = load i32, ptr %len, align 4, !dbg !4054
  %conv = zext i32 %7 to i64, !dbg !4053
  %cmp1 = icmp sge i64 %5, %conv, !dbg !4055
  br i1 %cmp1, label %if.then3, label %if.end4, !dbg !4056

if.then3:                                         ; preds = %if.end
  store i64 0, ptr %retval, align 8, !dbg !4057
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4057

if.end4:                                          ; preds = %if.end
  %8 = load i64, ptr %count.addr, align 8, !dbg !4058
  %9 = load ptr, ptr %node, align 8, !dbg !4060
  %len5 = getelementptr inbounds %struct.setup_data_node, ptr %9, i32 0, i32 2, !dbg !4061
  %10 = load i32, ptr %len5, align 4, !dbg !4061
  %conv6 = zext i32 %10 to i64, !dbg !4060
  %11 = load i64, ptr %pos, align 8, !dbg !4062
  %sub = sub i64 %conv6, %11, !dbg !4063
  %cmp7 = icmp ugt i64 %8, %sub, !dbg !4064
  br i1 %cmp7, label %if.then9, label %if.end13, !dbg !4065

if.then9:                                         ; preds = %if.end4
  %12 = load ptr, ptr %node, align 8, !dbg !4066
  %len10 = getelementptr inbounds %struct.setup_data_node, ptr %12, i32 0, i32 2, !dbg !4067
  %13 = load i32, ptr %len10, align 4, !dbg !4067
  %conv11 = zext i32 %13 to i64, !dbg !4066
  %14 = load i64, ptr %pos, align 8, !dbg !4068
  %sub12 = sub i64 %conv11, %14, !dbg !4069
  store i64 %sub12, ptr %count.addr, align 8, !dbg !4070
  br label %if.end13, !dbg !4071

if.end13:                                         ; preds = %if.then9, %if.end4
  %15 = load ptr, ptr %node, align 8, !dbg !4072
  %paddr = getelementptr inbounds %struct.setup_data_node, ptr %15, i32 0, i32 0, !dbg !4073
  %16 = load i64, ptr %paddr, align 8, !dbg !4073
  %17 = load i64, ptr %pos, align 8, !dbg !4074
  %add = add i64 %16, %17, !dbg !4075
  store i64 %add, ptr %pa, align 8, !dbg !4076
  %18 = load ptr, ptr %node, align 8, !dbg !4077
  %type = getelementptr inbounds %struct.setup_data_node, ptr %18, i32 0, i32 1, !dbg !4079
  %19 = load i32, ptr %type, align 8, !dbg !4079
  %and = and i32 %19, -2147483648, !dbg !4080
  %tobool = icmp ne i32 %and, 0, !dbg !4080
  br i1 %tobool, label %lor.lhs.false, label %if.then17, !dbg !4081

lor.lhs.false:                                    ; preds = %if.end13
  %20 = load ptr, ptr %node, align 8, !dbg !4082
  %type14 = getelementptr inbounds %struct.setup_data_node, ptr %20, i32 0, i32 1, !dbg !4083
  %21 = load i32, ptr %type14, align 8, !dbg !4083
  %cmp15 = icmp eq i32 %21, -2147483648, !dbg !4084
  br i1 %cmp15, label %if.then17, label %if.end19, !dbg !4085

if.then17:                                        ; preds = %lor.lhs.false, %if.end13
  %22 = load i64, ptr %pa, align 8, !dbg !4086
  %add18 = add i64 %22, 16, !dbg !4086
  store i64 %add18, ptr %pa, align 8, !dbg !4086
  br label %if.end19, !dbg !4087

if.end19:                                         ; preds = %if.then17, %lor.lhs.false
  %23 = load i64, ptr %pa, align 8, !dbg !4088
  %24 = load i64, ptr %count.addr, align 8, !dbg !4089
  %call = call ptr @memremap(i64 noundef %23, i64 noundef %24, i64 noundef 1) #17, !dbg !4090
  store ptr %call, ptr %p, align 8, !dbg !4091
  %25 = load ptr, ptr %p, align 8, !dbg !4092
  %tobool20 = icmp ne ptr %25, null, !dbg !4092
  br i1 %tobool20, label %if.end22, label %if.then21, !dbg !4094

if.then21:                                        ; preds = %if.end19
  store i64 -12, ptr %retval, align 8, !dbg !4095
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4095

if.end22:                                         ; preds = %if.end19
  %26 = load ptr, ptr %user_buf.addr, align 8, !dbg !4096
  %27 = load ptr, ptr %p, align 8, !dbg !4097
  %28 = load i64, ptr %count.addr, align 8, !dbg !4098
  %call23 = call i64 @copy_to_user(ptr noundef %26, ptr noundef %27, i64 noundef %28) #17, !dbg !4099
  store i64 %call23, ptr %remain, align 8, !dbg !4100
  %29 = load ptr, ptr %p, align 8, !dbg !4101
  call void @memunmap(ptr noundef %29) #17, !dbg !4102
  %30 = load i64, ptr %remain, align 8, !dbg !4103
  %tobool24 = icmp ne i64 %30, 0, !dbg !4103
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !4105

if.then25:                                        ; preds = %if.end22
  store i64 -14, ptr %retval, align 8, !dbg !4106
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4106

if.end26:                                         ; preds = %if.end22
  %31 = load i64, ptr %pos, align 8, !dbg !4107
  %32 = load i64, ptr %count.addr, align 8, !dbg !4108
  %add27 = add i64 %31, %32, !dbg !4109
  %33 = load ptr, ptr %ppos.addr, align 8, !dbg !4110
  store i64 %add27, ptr %33, align 8, !dbg !4111
  %34 = load i64, ptr %count.addr, align 8, !dbg !4112
  store i64 %34, ptr %retval, align 8, !dbg !4113
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4113

cleanup:                                          ; preds = %if.end26, %if.then25, %if.then21, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pa) #16, !dbg !4114
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #16, !dbg !4114
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos) #16, !dbg !4114
  call void @llvm.lifetime.end.p0(i64 8, ptr %remain) #16, !dbg !4114
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #16, !dbg !4114
  %35 = load i64, ptr %retval, align 8, !dbg !4114
  ret i64 %35, !dbg !4114
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_to_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #7 align 16 !dbg !4115 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !4120, metadata !DIExpression()), !dbg !4123
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !4121, metadata !DIExpression()), !dbg !4124
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !4122, metadata !DIExpression()), !dbg !4125
  %0 = load ptr, ptr %from.addr, align 8, !dbg !4126
  %1 = load i64, ptr %n.addr, align 8, !dbg !4128
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext true) #17, !dbg !4129
  br i1 %call, label %if.then, label %if.end, !dbg !4130

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %to.addr, align 8, !dbg !4131
  %3 = load ptr, ptr %from.addr, align 8, !dbg !4132
  %4 = load i64, ptr %n.addr, align 8, !dbg !4133
  %call1 = call i64 @_copy_to_user(ptr noundef %2, ptr noundef %3, i64 noundef %4) #17, !dbg !4134
  store i64 %call1, ptr %n.addr, align 8, !dbg !4135
  br label %if.end, !dbg !4136

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !4137
  ret i64 %5, !dbg !4138
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @check_copy_size(ptr noundef %addr, i64 noundef %bytes, i1 noundef zeroext %is_source) #7 align 16 !dbg !4139 {
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
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4143, metadata !DIExpression()), !dbg !4153
  store i64 %bytes, ptr %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !4144, metadata !DIExpression()), !dbg !4154
  %frombool = zext i1 %is_source to i8
  store i8 %frombool, ptr %is_source.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %is_source.addr, metadata !4145, metadata !DIExpression()), !dbg !4155
  call void @llvm.lifetime.start.p0(i64 4, ptr %sz) #16, !dbg !4156
  call void @llvm.dbg.declare(metadata ptr %sz, metadata !4146, metadata !DIExpression()), !dbg !4157
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4158
  %1 = call i64 @llvm.objectsize.i64.p0(ptr %0, i1 false, i1 true, i1 false), !dbg !4159
  %conv = trunc i64 %1 to i32, !dbg !4159
  store i32 %conv, ptr %sz, align 4, !dbg !4157
  %2 = load i32, ptr %sz, align 4, !dbg !4160
  %cmp = icmp sge i32 %2, 0, !dbg !4160
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !4160

land.rhs:                                         ; preds = %entry
  %3 = load i32, ptr %sz, align 4, !dbg !4160
  %conv2 = sext i32 %3 to i64, !dbg !4160
  %4 = load i64, ptr %bytes.addr, align 8, !dbg !4160
  %cmp3 = icmp ult i64 %conv2, %4, !dbg !4160
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ], !dbg !4162
  %lnot = xor i1 %5, true, !dbg !4160
  %lnot5 = xor i1 %lnot, true, !dbg !4160
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !4160
  %conv6 = sext i32 %lnot.ext to i64, !dbg !4160
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 0), !dbg !4160
  %tobool = icmp ne i64 %expval, 0, !dbg !4160
  br i1 %tobool, label %if.then, label %if.end12, !dbg !4163

if.then:                                          ; preds = %land.end
  %6 = load i64, ptr %bytes.addr, align 8, !dbg !4164
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !4167
  br i1 %7, label %if.else, label %if.then7, !dbg !4168

if.then7:                                         ; preds = %if.then
  %8 = load i32, ptr %sz, align 4, !dbg !4169
  %9 = load i64, ptr %bytes.addr, align 8, !dbg !4170
  call void @copy_overflow(i32 noundef %8, i64 noundef %9) #17, !dbg !4171
  br label %if.end11, !dbg !4171

if.else:                                          ; preds = %if.then
  %10 = load i8, ptr %is_source.addr, align 1, !dbg !4172, !range !3961, !noundef !886
  %tobool8 = trunc i8 %10 to i1, !dbg !4172
  br i1 %tobool8, label %if.then9, label %if.else10, !dbg !4174

if.then9:                                         ; preds = %if.else
  call void @__bad_copy_from() #17, !dbg !4175, !srcloc !4176
  br label %if.end, !dbg !4175

if.else10:                                        ; preds = %if.else
  call void @__bad_copy_to() #17, !dbg !4177, !srcloc !4178
  br label %if.end

if.end:                                           ; preds = %if.else10, %if.then9
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then7
  store i1 false, ptr %retval, align 1, !dbg !4179
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4179

if.end12:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !4180
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4147, metadata !DIExpression()), !dbg !4180
  %11 = load i64, ptr %bytes.addr, align 8, !dbg !4180
  %cmp13 = icmp ugt i64 %11, 2147483647, !dbg !4180
  %lnot15 = xor i1 %cmp13, true, !dbg !4180
  %lnot17 = xor i1 %lnot15, true, !dbg !4180
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !4180
  store i32 %lnot.ext18, ptr %__ret_warn_on, align 4, !dbg !4180
  %12 = load i32, ptr %__ret_warn_on, align 4, !dbg !4181
  %tobool19 = icmp ne i32 %12, 0, !dbg !4181
  %lnot20 = xor i1 %tobool19, true, !dbg !4181
  %lnot22 = xor i1 %lnot20, true, !dbg !4181
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !4181
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !4181
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !4181
  %tobool26 = icmp ne i64 %expval25, 0, !dbg !4181
  br i1 %tobool26, label %if.then27, label %if.end37, !dbg !4180

if.then27:                                        ; preds = %if.end12
  br label %do.body, !dbg !4181

do.body:                                          ; preds = %if.then27
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #16, !dbg !4182
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4150, metadata !DIExpression()), !dbg !4182
  store i32 2307, ptr %__flags, align 4, !dbg !4182
  br label %do.body28, !dbg !4182

do.body28:                                        ; preds = %do.body
  br label %do.cond, !dbg !4183

do.cond:                                          ; preds = %do.body28
  br label %do.end, !dbg !4183

do.end:                                           ; preds = %do.cond
  br label %do.body29, !dbg !4182

do.body29:                                        ; preds = %do.end
  %13 = load i32, ptr %__flags, align 4, !dbg !4185
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.8, i32 249, i32 %13, i64 12) #16, !dbg !4185, !srcloc !4187
  br label %do.cond30, !dbg !4185

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !4185

do.end31:                                         ; preds = %do.cond30
  br label %do.body32, !dbg !4182

do.body32:                                        ; preds = %do.end31
  br label %do.cond33, !dbg !4188

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !4188

do.end34:                                         ; preds = %do.cond33
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #16, !dbg !4181
  br label %do.cond35, !dbg !4182

do.cond35:                                        ; preds = %do.end34
  br label %do.end36, !dbg !4182

do.end36:                                         ; preds = %do.cond35
  br label %if.end37, !dbg !4182

if.end37:                                         ; preds = %do.end36, %if.end12
  %14 = load i32, ptr %__ret_warn_on, align 4, !dbg !4180
  %tobool38 = icmp ne i32 %14, 0, !dbg !4180
  %lnot39 = xor i1 %tobool38, true, !dbg !4180
  %lnot41 = xor i1 %lnot39, true, !dbg !4180
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !4180
  %conv43 = sext i32 %lnot.ext42 to i64, !dbg !4180
  %expval44 = call i64 @llvm.expect.i64(i64 %conv43, i64 0), !dbg !4180
  store i64 %expval44, ptr %tmp, align 8, !dbg !4181
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !4190
  %15 = load i64, ptr %tmp, align 8, !dbg !4180
  %tobool45 = icmp ne i64 %15, 0, !dbg !4190
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !4191

if.then46:                                        ; preds = %if.end37
  store i1 false, ptr %retval, align 1, !dbg !4192
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4192

if.end47:                                         ; preds = %if.end37
  %16 = load ptr, ptr %addr.addr, align 8, !dbg !4193
  %17 = load i64, ptr %bytes.addr, align 8, !dbg !4194
  %18 = load i8, ptr %is_source.addr, align 1, !dbg !4195, !range !3961, !noundef !886
  %tobool48 = trunc i8 %18 to i1, !dbg !4195
  call void @check_object_size(ptr noundef %16, i64 noundef %17, i1 noundef zeroext %tobool48) #17, !dbg !4196
  store i1 true, ptr %retval, align 1, !dbg !4197
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4197

cleanup:                                          ; preds = %if.end47, %if.then46, %if.end11
  call void @llvm.lifetime.end.p0(i64 4, ptr %sz) #16, !dbg !4198
  %19 = load i1, ptr %retval, align 1, !dbg !4198
  ret i1 %19, !dbg !4198
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4199 dso_local i64 @_copy_to_user(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @copy_overflow(i32 noundef %size, i64 noundef %count) #12 align 16 !dbg !4200 {
entry:
  %size.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4204, metadata !DIExpression()), !dbg !4206
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !4205, metadata !DIExpression()), !dbg !4207
  %0 = load i32, ptr %size.addr, align 4, !dbg !4208
  %1 = load i64, ptr %count.addr, align 8, !dbg !4210
  call void @__copy_overflow(i32 noundef %0, i64 noundef %1) #17, !dbg !4211
  ret void, !dbg !4212
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4213 dso_local void @__bad_copy_from() #13

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4214 dso_local void @__bad_copy_to() #14

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @check_object_size(ptr noundef %ptr, i64 noundef %n, i1 noundef zeroext %to_user) #12 align 16 !dbg !4215 {
entry:
  %ptr.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4219, metadata !DIExpression()), !dbg !4222
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !4220, metadata !DIExpression()), !dbg !4223
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, ptr %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %to_user.addr, metadata !4221, metadata !DIExpression()), !dbg !4224
  ret void, !dbg !4225
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4226 dso_local void @__copy_overflow(i32 noundef, i64 noundef) #3

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone null_pointer_is_valid "dontcall-error"="copy source size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone null_pointer_is_valid "dontcall-error"="copy destination size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { cold noredzone }
attributes #16 = { nounwind }
attributes #17 = { noredzone }
attributes #18 = { noredzone allocsize(0) }
attributes #19 = { noredzone allocsize(2) }
attributes #20 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516}
!llvm.ident = !{!3517}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "arch_debugfs_dir", scope: !2, file: !3, line: 19, type: !596, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/.kdebugfs.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/kdebugfs\22 -D KBUILD_BASENAME=\22kdebugfs\22 -D KBUILD_MODNAME=\22kdebugfs\22 -D __KBUILD_MODNAME=kmod_kdebugfs -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/kdebugfs.ll arch/x86/kernel/kdebugfs.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !97, globals: !115, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/kernel/kdebugfs.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ef122dc17afebd6f72507ba3840ffe73")
!4 = !{!5, !14, !19, !25, !30, !36, !43, !51, !67, !74, !82, !87}
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
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !75, line: 140, baseType: !7, size: 32, elements: !76)
!75 = !DIFile(filename: "./include/linux/io.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9069a71c5724a11302a774eef2b1f711")
!76 = !{!77, !78, !79, !80, !81}
!77 = !DIEnumerator(name: "MEMREMAP_WB", value: 1)
!78 = !DIEnumerator(name: "MEMREMAP_WT", value: 2)
!79 = !DIEnumerator(name: "MEMREMAP_WC", value: 4)
!80 = !DIEnumerator(name: "MEMREMAP_ENC", value: 8)
!81 = !DIEnumerator(name: "MEMREMAP_DEC", value: 16)
!82 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !83, line: 10, baseType: !7, size: 32, elements: !84)
!83 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!84 = !{!85, !86}
!85 = !DIEnumerator(name: "false", value: 0)
!86 = !DIEnumerator(name: "true", value: 1)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !88, line: 364, baseType: !7, size: 32, elements: !89)
!88 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!89 = !{!90, !91, !92, !93, !94, !95, !96}
!90 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!91 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!92 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!93 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!94 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!95 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!96 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!97 = !{!98, !99, !101, !113, !114}
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !100, line: 154, baseType: !7)
!100 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "setup_indirect", file: !103, line: 61, size: 192, elements: !104)
!103 = !DIFile(filename: "./arch/x86/include/uapi/asm/bootparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c199ebf8ec5f27be76bf20ea05d3d919")
!104 = !{!105, !108, !109, !112}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !102, file: !103, line: 62, baseType: !106, size: 32)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !107, line: 27, baseType: !7)
!107 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!108 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !102, file: !103, line: 63, baseType: !106, size: 32, offset: 32)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !102, file: !103, line: 64, baseType: !110, size: 64, offset: 64)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !107, line: 31, baseType: !111)
!111 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !102, file: !103, line: 65, baseType: !110, size: 64, offset: 128)
!113 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!114 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!115 = !{!116, !118, !0, !120, !126, !131, !136, !141, !148, !153, !158, !163, !165, !3503}
!116 = !DIGlobalVariableExpression(var: !117, expr: !DIExpression())
!117 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_arch_debugfs_dir277", scope: !2, file: !3, line: 20, type: !98, isLocal: true, isDefinition: true)
!118 = !DIGlobalVariableExpression(var: !119, expr: !DIExpression())
!119 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_kdebugfs__278_195_arch_kdebugfs_init3279", scope: !2, file: !3, line: 195, type: !98, isLocal: true, isDefinition: true)
!120 = !DIGlobalVariableExpression(var: !121, expr: !DIExpression())
!121 = distinct !DIGlobalVariable(scope: null, file: !3, line: 187, type: !122, isLocal: true, isDefinition: true)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 32, elements: !124)
!123 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!124 = !{!125}
!125 = !DISubrange(count: 4)
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(scope: null, file: !3, line: 170, type: !128, isLocal: true, isDefinition: true)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 96, elements: !129)
!129 = !{!130}
!130 = !DISubrange(count: 12)
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!132 = distinct !DIGlobalVariable(scope: null, file: !3, line: 172, type: !133, isLocal: true, isDefinition: true)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 64, elements: !134)
!134 = !{!135}
!135 = !DISubrange(count: 8)
!136 = !DIGlobalVariableExpression(var: !137, expr: !DIExpression())
!137 = distinct !DIGlobalVariable(scope: null, file: !3, line: 173, type: !138, isLocal: true, isDefinition: true)
!138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 40, elements: !139)
!139 = !{!140}
!140 = !DISubrange(count: 5)
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(name: "boot_params_blob", scope: !2, file: !3, line: 160, type: !143, isLocal: true, isDefinition: true)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "debugfs_blob_wrapper", file: !144, line: 24, size: 128, elements: !145)
!144 = !DIFile(filename: "./include/linux/debugfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6e6228d229e8266f5bff9327360d42a5")
!145 = !{!146, !147}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !143, file: !144, line: 25, baseType: !98, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !143, file: !144, line: 26, baseType: !113, size: 64, offset: 64)
!148 = !DIGlobalVariableExpression(var: !149, expr: !DIExpression())
!149 = distinct !DIGlobalVariable(scope: null, file: !3, line: 100, type: !150, isLocal: true, isDefinition: true)
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 88, elements: !151)
!151 = !{!152}
!152 = !DISubrange(count: 11)
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(scope: null, file: !88, line: 480, type: !155, isLocal: true, isDefinition: true)
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 168, elements: !156)
!156 = !{!157}
!157 = !DISubrange(count: 21)
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(scope: null, file: !3, line: 82, type: !160, isLocal: true, isDefinition: true)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 24, elements: !161)
!161 = !{!162}
!162 = !DISubrange(count: 3)
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(scope: null, file: !3, line: 85, type: !138, isLocal: true, isDefinition: true)
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(name: "fops_setup_data", scope: !2, file: !3, line: 69, type: !167, isLocal: true, isDefinition: true)
!167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !168)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !15, line: 1914, size: 2112, elements: !169)
!169 = !{!170, !174, !3385, !3389, !3393, !3394, !3395, !3401, !3414, !3422, !3426, !3427, !3431, !3432, !3436, !3441, !3442, !3446, !3450, !3456, !3457, !3461, !3462, !3466, !3470, !3471, !3476, !3480, !3484, !3488, !3492, !3493, !3499}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !168, file: !15, line: 1915, baseType: !171, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !173, line: 103, flags: DIFlagFwdDecl)
!173 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ec86911224c4b764298f6e976616738c")
!174 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !168, file: !15, line: 1916, baseType: !175, size: 64, offset: 64)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DISubroutineType(types: !177)
!177 = !{!178, !182, !178, !114}
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !100, line: 52, baseType: !179)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !180, line: 88, baseType: !181)
!180 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!181 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !15, line: 994, size: 1856, align: 64, elements: !184)
!184 = !{!185, !204, !246, !248, !257, !275, !276, !277, !354, !577, !586, !3375, !3376, !3377, !3378, !3379, !3380, !3382, !3383, !3384}
!185 = !DIDerivedType(tag: DW_TAG_member, scope: !183, file: !15, line: 995, baseType: !186, size: 128)
!186 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !183, file: !15, line: 995, size: 128, elements: !187)
!187 = !{!188, !194, !203}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !186, file: !15, line: 996, baseType: !189, size: 64)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !190, line: 60, size: 64, elements: !191)
!190 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!191 = !{!192}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !189, file: !190, line: 61, baseType: !193, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !186, file: !15, line: 997, baseType: !195, size: 128, align: 64)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !100, line: 232, size: 128, align: 64, elements: !196)
!196 = !{!197, !199}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !195, file: !100, line: 233, baseType: !198, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !195, file: !100, line: 234, baseType: !200, size: 64, offset: 64)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DISubroutineType(types: !202)
!202 = !{null, !198}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !186, file: !15, line: 998, baseType: !7, size: 32)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !183, file: !15, line: 1005, baseType: !205, size: 32, offset: 128)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !206, line: 29, baseType: !207)
!206 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !206, line: 17, size: 32, elements: !208)
!208 = !{!209}
!209 = !DIDerivedType(tag: DW_TAG_member, scope: !207, file: !206, line: 18, baseType: !210, size: 32)
!210 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !207, file: !206, line: 18, size: 32, elements: !211)
!211 = !{!212}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !210, file: !206, line: 19, baseType: !213, size: 32)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !214, line: 14, size: 32, elements: !215)
!214 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!215 = !{!216}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !213, file: !214, line: 15, baseType: !217, size: 32)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !218, line: 44, baseType: !219)
!218 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !218, line: 14, size: 32, elements: !220)
!220 = !{!221}
!221 = !DIDerivedType(tag: DW_TAG_member, scope: !219, file: !218, line: 15, baseType: !222, size: 32)
!222 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !219, file: !218, line: 15, size: 32, elements: !223)
!223 = !{!224, !229, !238}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !222, file: !218, line: 16, baseType: !225, size: 32)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !100, line: 174, baseType: !226)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !100, line: 172, size: 32, elements: !227)
!227 = !{!228}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !226, file: !100, line: 173, baseType: !114, size: 32)
!229 = !DIDerivedType(tag: DW_TAG_member, scope: !222, file: !218, line: 24, baseType: !230, size: 16)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !222, file: !218, line: 24, size: 16, elements: !231)
!231 = !{!232, !237}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !230, file: !218, line: 25, baseType: !233, size: 8)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !234, line: 17, baseType: !235)
!234 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !107, line: 21, baseType: !236)
!236 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !230, file: !218, line: 26, baseType: !233, size: 8, offset: 8)
!238 = !DIDerivedType(tag: DW_TAG_member, scope: !222, file: !218, line: 28, baseType: !239, size: 32)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !222, file: !218, line: 28, size: 32, elements: !240)
!240 = !{!241, !245}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !239, file: !218, line: 29, baseType: !242, size: 16)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !234, line: 19, baseType: !243)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !107, line: 24, baseType: !244)
!244 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !239, file: !218, line: 30, baseType: !242, size: 16, offset: 16)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !183, file: !15, line: 1006, baseType: !247, size: 32, offset: 160)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !100, line: 156, baseType: !7)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !183, file: !15, line: 1007, baseType: !249, size: 64, offset: 192)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !250, line: 13, baseType: !251)
!250 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !100, line: 181, baseType: !252)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !100, line: 179, size: 64, elements: !253)
!253 = !{!254}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !252, file: !100, line: 180, baseType: !255, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !234, line: 22, baseType: !256)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !107, line: 30, baseType: !181)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !183, file: !15, line: 1008, baseType: !258, size: 256, offset: 256)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !259, line: 66, size: 256, elements: !260)
!259 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!260 = !{!261, !262, !264, !269}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !258, file: !259, line: 67, baseType: !249, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !258, file: !259, line: 68, baseType: !263, size: 32, offset: 64)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !214, line: 23, baseType: !213)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !258, file: !259, line: 70, baseType: !265, size: 32, offset: 96)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !266, line: 15, size: 32, elements: !267)
!266 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!267 = !{!268}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !265, file: !266, line: 20, baseType: !225, size: 32)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !258, file: !259, line: 72, baseType: !270, size: 128, offset: 128)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !100, line: 190, size: 128, elements: !271)
!271 = !{!272, !274}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !270, file: !100, line: 191, baseType: !273, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !270, file: !100, line: 191, baseType: !273, size: 64, offset: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !183, file: !15, line: 1009, baseType: !178, size: 64, offset: 512)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !183, file: !15, line: 1010, baseType: !7, size: 32, offset: 576)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !183, file: !15, line: 1011, baseType: !278, size: 256, offset: 640)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !15, line: 948, size: 256, elements: !279)
!279 = !{!280, !301, !343, !344, !352, !353}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !278, file: !15, line: 949, baseType: !281, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !282, line: 34, baseType: !283)
!282 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !282, line: 25, size: 64, elements: !284)
!284 = !{!285}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !283, file: !282, line: 26, baseType: !286, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !287, line: 27, baseType: !288)
!287 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !287, line: 13, size: 64, elements: !289)
!289 = !{!290, !300}
!290 = !DIDerivedType(tag: DW_TAG_member, scope: !288, file: !287, line: 14, baseType: !291, size: 32)
!291 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !288, file: !287, line: 14, size: 32, elements: !292)
!292 = !{!293, !294}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !291, file: !287, line: 15, baseType: !225, size: 32)
!294 = !DIDerivedType(tag: DW_TAG_member, scope: !291, file: !287, line: 16, baseType: !295, size: 32)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !291, file: !287, line: 16, size: 32, elements: !296)
!296 = !{!297, !298}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !295, file: !287, line: 18, baseType: !233, size: 8)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !295, file: !287, line: 19, baseType: !299, size: 24, offset: 8)
!299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 24, elements: !161)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !288, file: !287, line: 26, baseType: !217, size: 32, offset: 32)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !278, file: !15, line: 950, baseType: !302, size: 64, offset: 64)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !6, line: 59, size: 768, elements: !304)
!304 = !{!305, !311, !312, !313, !324, !325, !332, !333}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !303, file: !6, line: 61, baseType: !306, size: 32)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !307, line: 113, baseType: !308)
!307 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !307, line: 111, size: 32, elements: !309)
!309 = !{!310}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !308, file: !307, line: 112, baseType: !225, size: 32)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !303, file: !6, line: 62, baseType: !7, size: 32, offset: 32)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !303, file: !6, line: 63, baseType: !205, size: 32, offset: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !303, file: !6, line: 65, baseType: !314, size: 256, offset: 128)
!314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 256, elements: !124)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !100, line: 194, size: 64, elements: !316)
!316 = !{!317}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !315, file: !100, line: 195, baseType: !318, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !100, line: 198, size: 128, elements: !320)
!320 = !{!321, !322}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !319, file: !100, line: 199, baseType: !318, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !319, file: !100, line: 199, baseType: !323, size: 64, offset: 64)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !303, file: !6, line: 66, baseType: !315, size: 64, offset: 384)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !303, file: !6, line: 68, baseType: !326, size: 192, offset: 448)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !327, line: 41, baseType: !328)
!327 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !327, line: 37, size: 192, elements: !329)
!329 = !{!330, !331}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !328, file: !327, line: 38, baseType: !205, size: 32)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !328, file: !327, line: 39, baseType: !270, size: 128, offset: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !303, file: !6, line: 69, baseType: !195, size: 128, align: 64, offset: 640)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !303, file: !6, line: 70, baseType: !334, offset: 768)
!334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, elements: !341)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !6, line: 54, size: 128, elements: !336)
!336 = !{!337, !338}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !335, file: !6, line: 55, baseType: !114, size: 32)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !335, file: !6, line: 56, baseType: !339, size: 64, offset: 64)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !6, line: 56, flags: DIFlagFwdDecl)
!341 = !{!342}
!342 = !DISubrange(count: -1)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !278, file: !15, line: 951, baseType: !5, size: 32, offset: 128)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !278, file: !15, line: 952, baseType: !345, size: 32, offset: 160)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !346, line: 23, baseType: !347)
!346 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !346, line: 21, size: 32, elements: !348)
!348 = !{!349}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !347, file: !346, line: 22, baseType: !350, size: 32)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !100, line: 37, baseType: !351)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !180, line: 49, baseType: !7)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !278, file: !15, line: 952, baseType: !345, size: 32, offset: 192)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !278, file: !15, line: 953, baseType: !114, size: 32, offset: 224)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !183, file: !15, line: 1012, baseType: !355, size: 64, offset: 896)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !357)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !358, line: 110, size: 1472, elements: !359)
!358 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!359 = !{!360, !361, !362, !369, !370, !371, !372, !373, !374, !375, !376, !383, !384, !385, !386, !387, !388, !522, !523, !524, !525, !526, !557, !560, !564, !572}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !357, file: !358, line: 111, baseType: !249, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !357, file: !358, line: 112, baseType: !345, size: 32, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !357, file: !358, line: 113, baseType: !363, size: 32, offset: 96)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !346, line: 28, baseType: !364)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !346, line: 26, size: 32, elements: !365)
!365 = !{!366}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !364, file: !346, line: 27, baseType: !367, size: 32)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !100, line: 38, baseType: !368)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !180, line: 50, baseType: !7)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !357, file: !358, line: 114, baseType: !345, size: 32, offset: 128)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !357, file: !358, line: 115, baseType: !363, size: 32, offset: 160)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !357, file: !358, line: 116, baseType: !345, size: 32, offset: 192)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !357, file: !358, line: 117, baseType: !363, size: 32, offset: 224)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !357, file: !358, line: 118, baseType: !345, size: 32, offset: 256)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !357, file: !358, line: 119, baseType: !363, size: 32, offset: 288)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !357, file: !358, line: 120, baseType: !7, size: 32, offset: 320)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !357, file: !358, line: 121, baseType: !377, size: 64, offset: 384)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !378, line: 24, baseType: !379)
!378 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !378, line: 24, size: 64, elements: !380)
!380 = !{!381}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !379, file: !378, line: 24, baseType: !382, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !234, line: 23, baseType: !110)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !357, file: !358, line: 122, baseType: !377, size: 64, offset: 448)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !357, file: !358, line: 123, baseType: !377, size: 64, offset: 512)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !357, file: !358, line: 124, baseType: !377, size: 64, offset: 576)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !357, file: !358, line: 125, baseType: !377, size: 64, offset: 640)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !357, file: !358, line: 127, baseType: !236, size: 8, offset: 704)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !357, file: !358, line: 129, baseType: !389, size: 64, offset: 768)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !391, line: 195, size: 1728, elements: !392)
!391 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!392 = !{!393, !394, !399, !411, !420, !423, !424, !431, !432, !433, !434, !438, !439, !440, !442, !443, !486, !507}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !390, file: !391, line: 196, baseType: !306, size: 32)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !390, file: !391, line: 197, baseType: !395, size: 32, offset: 32)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !391, line: 28, baseType: !396)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !100, line: 104, baseType: !397)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !234, line: 20, baseType: !398)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !107, line: 26, baseType: !114)
!399 = !DIDerivedType(tag: DW_TAG_member, scope: !390, file: !391, line: 198, baseType: !400, size: 192, offset: 64)
!400 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !390, file: !391, line: 198, size: 192, elements: !401)
!401 = !{!402, !403}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !400, file: !391, line: 199, baseType: !270, size: 128)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !400, file: !391, line: 200, baseType: !404, size: 192, align: 64)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !405, line: 5, size: 192, align: 64, elements: !406)
!405 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!406 = !{!407, !408, !410}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !404, file: !405, line: 6, baseType: !113, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !404, file: !405, line: 7, baseType: !409, size: 64, offset: 64)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !404, file: !405, line: 8, baseType: !409, size: 64, offset: 128)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !390, file: !391, line: 205, baseType: !412, size: 320, offset: 256)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !413, line: 48, size: 320, elements: !414)
!413 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!414 = !{!415, !416, !417, !418, !419}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !412, file: !413, line: 49, baseType: !249, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !412, file: !413, line: 55, baseType: !249, size: 64, offset: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !412, file: !413, line: 57, baseType: !265, size: 32, offset: 128)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !412, file: !413, line: 59, baseType: !263, size: 32, offset: 160)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !412, file: !413, line: 60, baseType: !270, size: 128, offset: 192)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !390, file: !391, line: 206, baseType: !421, size: 64, offset: 576)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !391, line: 206, flags: DIFlagFwdDecl)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !390, file: !391, line: 207, baseType: !98, size: 64, offset: 640)
!424 = !DIDerivedType(tag: DW_TAG_member, scope: !390, file: !391, line: 208, baseType: !425, size: 64, offset: 704)
!425 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !390, file: !391, line: 208, size: 64, elements: !426)
!426 = !{!427, !430}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !425, file: !391, line: 209, baseType: !428, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !429, line: 8, baseType: !256)
!429 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!430 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !425, file: !391, line: 210, baseType: !428, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !390, file: !391, line: 212, baseType: !428, size: 64, offset: 768)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !390, file: !391, line: 213, baseType: !345, size: 32, offset: 832)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !390, file: !391, line: 214, baseType: !363, size: 32, offset: 864)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !390, file: !391, line: 215, baseType: !435, size: 32, offset: 896)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !391, line: 31, baseType: !436)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !100, line: 110, baseType: !437)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !234, line: 21, baseType: !106)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !390, file: !391, line: 216, baseType: !244, size: 16, offset: 928)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !390, file: !391, line: 217, baseType: !244, size: 16, offset: 944)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !390, file: !391, line: 221, baseType: !441, size: 16, offset: 960)
!441 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !390, file: !391, line: 228, baseType: !113, size: 64, offset: 1024)
!443 = !DIDerivedType(tag: DW_TAG_member, scope: !390, file: !391, line: 245, baseType: !444, size: 320, offset: 1088)
!444 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !390, file: !391, line: 245, size: 320, elements: !445)
!445 = !{!446, !477}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !444, file: !391, line: 246, baseType: !447, size: 320)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !391, line: 114, size: 320, elements: !448)
!448 = !{!449, !450, !462, !465, !474}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !447, file: !391, line: 116, baseType: !113, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, scope: !447, file: !391, line: 117, baseType: !451, size: 64, offset: 64)
!451 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !447, file: !391, line: 117, size: 64, elements: !452)
!452 = !{!453, !461}
!453 = !DIDerivedType(tag: DW_TAG_member, scope: !451, file: !391, line: 118, baseType: !454, size: 64)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !451, file: !391, line: 118, size: 64, elements: !455)
!455 = !{!456, !457}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !454, file: !391, line: 120, baseType: !242, size: 16)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !454, file: !391, line: 121, baseType: !458, size: 48, offset: 16)
!458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 48, elements: !459)
!459 = !{!460}
!460 = !DISubrange(count: 6)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !451, file: !391, line: 127, baseType: !113, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !447, file: !391, line: 129, baseType: !463, size: 64, offset: 128)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !391, line: 102, flags: DIFlagFwdDecl)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !447, file: !391, line: 130, baseType: !466, size: 64, offset: 192)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !391, line: 108, size: 192, elements: !468)
!468 = !{!469, !470, !471}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !467, file: !391, line: 109, baseType: !195, size: 128, align: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !467, file: !391, line: 110, baseType: !306, size: 32, offset: 128)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !467, file: !391, line: 111, baseType: !472, size: 8, offset: 160)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !100, line: 35, baseType: !473)
!473 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !447, file: !391, line: 131, baseType: !475, size: 64, offset: 256)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !123)
!477 = !DIDerivedType(tag: DW_TAG_member, scope: !444, file: !391, line: 247, baseType: !478, size: 320)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !444, file: !391, line: 247, size: 320, elements: !479)
!479 = !{!480, !481, !482, !483, !484}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !478, file: !391, line: 248, baseType: !113, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !478, file: !391, line: 249, baseType: !113, size: 64, offset: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !478, file: !391, line: 250, baseType: !463, size: 64, offset: 128)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !478, file: !391, line: 251, baseType: !466, size: 64, offset: 192)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !478, file: !391, line: 252, baseType: !485, size: 64, offset: 256)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, scope: !390, file: !391, line: 260, baseType: !487, size: 256, offset: 1408)
!487 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !390, file: !391, line: 260, size: 256, elements: !488)
!488 = !{!489, !495}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !487, file: !391, line: 261, baseType: !490, size: 256)
!490 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !391, line: 134, size: 256, elements: !491)
!491 = !{!492, !493}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !490, file: !391, line: 135, baseType: !98, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !490, file: !391, line: 136, baseType: !494, size: 256)
!494 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 256, elements: !124)
!495 = !DIDerivedType(tag: DW_TAG_member, scope: !487, file: !391, line: 262, baseType: !496, size: 256)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !487, file: !391, line: 262, size: 256, elements: !497)
!497 = !{!498, !499}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !496, file: !391, line: 264, baseType: !270, size: 128)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !496, file: !391, line: 265, baseType: !500, size: 128, offset: 128)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !501, line: 22, size: 128, elements: !502)
!501 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!502 = !{!503, !506}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !500, file: !501, line: 23, baseType: !504, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !501, line: 23, flags: DIFlagFwdDecl)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !500, file: !501, line: 24, baseType: !113, size: 64, offset: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !390, file: !391, line: 280, baseType: !508, size: 64, offset: 1664)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !391, line: 176, size: 192, elements: !510)
!510 = !{!511, !520, !521}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !509, file: !391, line: 177, baseType: !512, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !391, line: 171, baseType: !513)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DISubroutineType(types: !515)
!515 = !{!114, !389, !516, !518, !389}
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !464)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !490)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !509, file: !391, line: 178, baseType: !389, size: 64, offset: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !509, file: !391, line: 179, baseType: !463, size: 64, offset: 128)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !357, file: !358, line: 130, baseType: !389, size: 64, offset: 832)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !357, file: !358, line: 131, baseType: !389, size: 64, offset: 896)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !357, file: !358, line: 132, baseType: !389, size: 64, offset: 960)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !357, file: !358, line: 135, baseType: !98, size: 64, offset: 1024)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !357, file: !358, line: 137, baseType: !527, size: 64, offset: 1088)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !529, line: 14, size: 1088, elements: !530)
!529 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!530 = !{!531, !532, !541, !542, !543, !544, !545, !546}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !528, file: !529, line: 15, baseType: !306, size: 32)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !528, file: !529, line: 17, baseType: !533, size: 320, offset: 64)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !534, line: 22, size: 320, elements: !535)
!534 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!535 = !{!536, !537, !538, !539}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !533, file: !534, line: 23, baseType: !263, size: 32)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !533, file: !534, line: 24, baseType: !255, size: 64, offset: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !533, file: !534, line: 26, baseType: !270, size: 128, offset: 128)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !533, file: !534, line: 28, baseType: !540, size: 64, offset: 256)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !528, file: !529, line: 19, baseType: !113, size: 64, offset: 384)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !528, file: !529, line: 20, baseType: !249, size: 64, offset: 448)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !528, file: !529, line: 23, baseType: !319, size: 128, offset: 512)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !528, file: !529, line: 24, baseType: !345, size: 32, offset: 640)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !528, file: !529, line: 29, baseType: !249, size: 64, offset: 704)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !528, file: !529, line: 36, baseType: !547, size: 320, offset: 768)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !548, line: 15, size: 320, elements: !549)
!548 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!549 = !{!550, !551, !552, !553, !554, !555, !556}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !547, file: !548, line: 16, baseType: !263, size: 32)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !547, file: !548, line: 18, baseType: !114, size: 32, offset: 32)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !547, file: !548, line: 19, baseType: !114, size: 32, offset: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !547, file: !548, line: 20, baseType: !114, size: 32, offset: 96)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !547, file: !548, line: 21, baseType: !114, size: 32, offset: 128)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !547, file: !548, line: 22, baseType: !113, size: 64, offset: 192)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !547, file: !548, line: 23, baseType: !113, size: 64, offset: 256)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !357, file: !358, line: 138, baseType: !558, size: 64, offset: 1152)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !346, line: 18, flags: DIFlagFwdDecl)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !357, file: !358, line: 139, baseType: !561, size: 64, offset: 1216)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !563, line: 16, flags: DIFlagFwdDecl)
!563 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!564 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !357, file: !358, line: 140, baseType: !565, size: 64, offset: 1280)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !358, line: 25, size: 64, elements: !567)
!567 = !{!568, !569, !570}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !566, file: !358, line: 26, baseType: !225, size: 32)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !566, file: !358, line: 27, baseType: !114, size: 32, offset: 32)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !566, file: !358, line: 28, baseType: !571, offset: 64)
!571 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, elements: !341)
!572 = !DIDerivedType(tag: DW_TAG_member, scope: !357, file: !358, line: 142, baseType: !573, size: 128, offset: 1344)
!573 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !357, file: !358, line: 142, size: 128, elements: !574)
!574 = !{!575, !576}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !573, file: !358, line: 143, baseType: !114, size: 32)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !573, file: !358, line: 144, baseType: !195, size: 128, align: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !183, file: !15, line: 1013, baseType: !578, size: 256, offset: 960)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !15, line: 970, size: 256, elements: !579)
!579 = !{!580, !581, !582, !583, !584, !585}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !578, file: !15, line: 971, baseType: !113, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !578, file: !15, line: 972, baseType: !7, size: 32, offset: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !578, file: !15, line: 973, baseType: !7, size: 32, offset: 96)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !578, file: !15, line: 974, baseType: !7, size: 32, offset: 128)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !578, file: !15, line: 975, baseType: !7, size: 32, offset: 160)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !578, file: !15, line: 976, baseType: !178, size: 64, offset: 192)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !183, file: !15, line: 1014, baseType: !587, size: 128, offset: 1216)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !588, line: 8, size: 128, elements: !589)
!588 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!589 = !{!590, !3374}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !587, file: !588, line: 9, baseType: !591, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !593, line: 70, size: 256, elements: !594)
!593 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!594 = !{!595, !3371, !3372, !3373}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !592, file: !593, line: 71, baseType: !596, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !598, line: 82, size: 1536, elements: !599)
!598 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!599 = !{!600, !601, !611, !619, !620, !635, !3338, !3340, !3353, !3354, !3355, !3356, !3357, !3363, !3364, !3365}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !597, file: !598, line: 84, baseType: !7, size: 32)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !597, file: !598, line: 85, baseType: !602, size: 32, offset: 32)
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !603, line: 275, baseType: !604)
!603 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !603, line: 275, size: 32, elements: !605)
!605 = !{!606}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !604, file: !603, line: 275, baseType: !607, size: 32)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !603, line: 69, baseType: !608)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !603, line: 64, size: 32, elements: !609)
!609 = !{!610}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !608, file: !603, line: 65, baseType: !7, size: 32)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !597, file: !598, line: 86, baseType: !612, size: 128, offset: 64)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !613, line: 38, size: 128, elements: !614)
!613 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!614 = !{!615, !617}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !612, file: !613, line: 39, baseType: !616, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !612, file: !613, line: 39, baseType: !618, size: 64, offset: 64)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !597, file: !598, line: 87, baseType: !596, size: 64, offset: 192)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !597, file: !598, line: 88, baseType: !621, size: 128, offset: 256)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !598, line: 49, size: 128, elements: !622)
!622 = !{!623, !632}
!623 = !DIDerivedType(tag: DW_TAG_member, scope: !621, file: !598, line: 50, baseType: !624, size: 64)
!624 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !621, file: !598, line: 50, size: 64, elements: !625)
!625 = !{!626, !631}
!626 = !DIDerivedType(tag: DW_TAG_member, scope: !624, file: !598, line: 51, baseType: !627, size: 64)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !624, file: !598, line: 51, size: 64, elements: !628)
!628 = !{!629, !630}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !627, file: !598, line: 52, baseType: !437, size: 32)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !627, file: !598, line: 52, baseType: !437, size: 32, offset: 32)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !624, file: !598, line: 54, baseType: !382, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !621, file: !598, line: 56, baseType: !633, size: 64, offset: 64)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !236)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !597, file: !598, line: 89, baseType: !636, size: 64, offset: 384)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !15, line: 641, size: 4800, elements: !638)
!638 = !{!639, !641, !642, !643, !644, !645, !646, !649, !650, !847, !3276, !3277, !3278, !3279, !3285, !3286, !3287, !3288, !3289, !3290, !3291, !3292, !3293, !3294, !3295, !3296, !3297, !3298, !3299, !3300, !3301, !3302, !3303, !3308, !3309, !3310, !3311, !3312, !3313, !3314, !3320, !3323, !3324, !3325, !3334, !3335, !3336, !3337}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !637, file: !15, line: 642, baseType: !640, size: 16)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !100, line: 24, baseType: !244)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !637, file: !15, line: 643, baseType: !244, size: 16, offset: 16)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !637, file: !15, line: 644, baseType: !345, size: 32, offset: 32)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !637, file: !15, line: 645, baseType: !270, size: 128, offset: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !637, file: !15, line: 646, baseType: !363, size: 32, offset: 192)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !637, file: !15, line: 647, baseType: !7, size: 32, offset: 224)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !637, file: !15, line: 650, baseType: !647, size: 64, offset: 256)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !15, line: 607, flags: DIFlagFwdDecl)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !637, file: !15, line: 651, baseType: !647, size: 64, offset: 320)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !637, file: !15, line: 654, baseType: !651, size: 64, offset: 384)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !653)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !15, line: 1966, size: 2048, align: 512, elements: !654)
!654 = !{!655, !659, !672, !678, !682, !686, !690, !694, !698, !702, !706, !707, !713, !717, !755, !786, !796, !802, !806, !810, !814, !818, !822, !828, !832}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !653, file: !15, line: 1967, baseType: !656, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DISubroutineType(types: !658)
!658 = !{!596, !636, !596, !7}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !653, file: !15, line: 1968, baseType: !660, size: 64, offset: 64)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = !DISubroutineType(types: !662)
!662 = !{!475, !596, !636, !663}
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !665, line: 10, size: 128, elements: !666)
!665 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!666 = !{!667, !671}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !664, file: !665, line: 11, baseType: !668, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DISubroutineType(types: !670)
!670 = !{null, !98}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !664, file: !665, line: 12, baseType: !98, size: 64, offset: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !653, file: !15, line: 1969, baseType: !673, size: 64, offset: 128)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DISubroutineType(types: !675)
!675 = !{!114, !676, !636, !114}
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !378, line: 42, flags: DIFlagFwdDecl)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !653, file: !15, line: 1970, baseType: !679, size: 64, offset: 192)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DISubroutineType(types: !681)
!681 = !{!647, !636, !114, !472}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !653, file: !15, line: 1972, baseType: !683, size: 64, offset: 256)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DISubroutineType(types: !685)
!685 = !{!114, !596, !485, !114}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !653, file: !15, line: 1974, baseType: !687, size: 64, offset: 320)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DISubroutineType(types: !689)
!689 = !{!114, !676, !636, !596, !640, !472}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !653, file: !15, line: 1976, baseType: !691, size: 64, offset: 384)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = !DISubroutineType(types: !693)
!693 = !{!114, !596, !636, !596}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !653, file: !15, line: 1977, baseType: !695, size: 64, offset: 448)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DISubroutineType(types: !697)
!697 = !{!114, !636, !596}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !653, file: !15, line: 1978, baseType: !699, size: 64, offset: 512)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DISubroutineType(types: !701)
!701 = !{!114, !676, !636, !596, !475}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !653, file: !15, line: 1980, baseType: !703, size: 64, offset: 576)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = !DISubroutineType(types: !705)
!705 = !{!114, !676, !636, !596, !640}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !653, file: !15, line: 1982, baseType: !695, size: 64, offset: 640)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !653, file: !15, line: 1983, baseType: !708, size: 64, offset: 704)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DISubroutineType(types: !710)
!710 = !{!114, !676, !636, !596, !640, !711}
!711 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !100, line: 21, baseType: !712)
!712 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !100, line: 18, baseType: !437)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !653, file: !15, line: 1985, baseType: !714, size: 64, offset: 768)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DISubroutineType(types: !716)
!716 = !{!114, !676, !636, !596, !636, !596, !7}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !653, file: !15, line: 1987, baseType: !718, size: 64, offset: 832)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DISubroutineType(types: !720)
!720 = !{!114, !676, !596, !721}
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !15, line: 226, size: 640, elements: !723)
!723 = !{!724, !725, !726, !736, !745, !746, !752, !753, !754}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !722, file: !15, line: 227, baseType: !7, size: 32)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !722, file: !15, line: 228, baseType: !640, size: 16, offset: 32)
!726 = !DIDerivedType(tag: DW_TAG_member, scope: !722, file: !15, line: 241, baseType: !727, size: 32, offset: 64)
!727 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !722, file: !15, line: 241, size: 32, elements: !728)
!728 = !{!729, !730}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !727, file: !15, line: 242, baseType: !345, size: 32)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !727, file: !15, line: 243, baseType: !731, size: 32)
!731 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !732, line: 16, baseType: !733)
!732 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !732, line: 14, size: 32, elements: !734)
!734 = !{!735}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !733, file: !732, line: 15, baseType: !350, size: 32)
!736 = !DIDerivedType(tag: DW_TAG_member, scope: !722, file: !15, line: 245, baseType: !737, size: 32, offset: 96)
!737 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !722, file: !15, line: 245, size: 32, elements: !738)
!738 = !{!739, !740}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !737, file: !15, line: 246, baseType: !363, size: 32)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !737, file: !15, line: 247, baseType: !741, size: 32)
!741 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !732, line: 20, baseType: !742)
!742 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !732, line: 18, size: 32, elements: !743)
!743 = !{!744}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !742, file: !732, line: 19, baseType: !367, size: 32)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !722, file: !15, line: 249, baseType: !178, size: 64, offset: 128)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !722, file: !15, line: 250, baseType: !747, size: 128, offset: 192)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !429, line: 13, size: 128, elements: !748)
!748 = !{!749, !750}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !747, file: !429, line: 14, baseType: !428, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !747, file: !429, line: 15, baseType: !751, size: 64, offset: 64)
!751 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !722, file: !15, line: 251, baseType: !747, size: 128, offset: 320)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !722, file: !15, line: 252, baseType: !747, size: 128, offset: 448)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !722, file: !15, line: 259, baseType: !182, size: 64, offset: 576)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !653, file: !15, line: 1988, baseType: !756, size: 64, offset: 896)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DISubroutineType(types: !758)
!758 = !{!114, !676, !759, !761, !437, !7}
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !587)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !763, line: 22, size: 1280, elements: !764)
!763 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!764 = !{!765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !762, file: !763, line: 23, baseType: !437, size: 32)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !762, file: !763, line: 24, baseType: !640, size: 16, offset: 32)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !762, file: !763, line: 25, baseType: !7, size: 32, offset: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !762, file: !763, line: 26, baseType: !436, size: 32, offset: 96)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !762, file: !763, line: 27, baseType: !382, size: 64, offset: 128)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !762, file: !763, line: 28, baseType: !382, size: 64, offset: 192)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !762, file: !763, line: 41, baseType: !382, size: 64, offset: 256)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !762, file: !763, line: 42, baseType: !711, size: 32, offset: 320)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !762, file: !763, line: 43, baseType: !711, size: 32, offset: 352)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !762, file: !763, line: 44, baseType: !345, size: 32, offset: 384)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !762, file: !763, line: 45, baseType: !363, size: 32, offset: 416)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !762, file: !763, line: 46, baseType: !178, size: 64, offset: 448)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !762, file: !763, line: 47, baseType: !747, size: 128, offset: 512)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !762, file: !763, line: 48, baseType: !747, size: 128, offset: 640)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !762, file: !763, line: 49, baseType: !747, size: 128, offset: 768)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !762, file: !763, line: 50, baseType: !747, size: 128, offset: 896)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !762, file: !763, line: 51, baseType: !382, size: 64, offset: 1024)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !762, file: !763, line: 52, baseType: !382, size: 64, offset: 1088)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !762, file: !763, line: 53, baseType: !437, size: 32, offset: 1152)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !762, file: !763, line: 54, baseType: !437, size: 32, offset: 1184)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !762, file: !763, line: 55, baseType: !382, size: 64, offset: 1216)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !653, file: !15, line: 1990, baseType: !787, size: 64, offset: 960)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DISubroutineType(types: !789)
!789 = !{!790, !596, !485, !793}
!790 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !100, line: 66, baseType: !791)
!791 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !180, line: 73, baseType: !792)
!792 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !180, line: 15, baseType: !751)
!793 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !100, line: 61, baseType: !794)
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !180, line: 72, baseType: !795)
!795 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !180, line: 16, baseType: !113)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !653, file: !15, line: 1991, baseType: !797, size: 64, offset: 1024)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DISubroutineType(types: !799)
!799 = !{!114, !636, !800, !382, !382}
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !15, line: 55, flags: DIFlagFwdDecl)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !653, file: !15, line: 1993, baseType: !803, size: 64, offset: 1088)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DISubroutineType(types: !805)
!805 = !{!114, !636, !114}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !653, file: !15, line: 1994, baseType: !807, size: 64, offset: 1152)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = !DISubroutineType(types: !809)
!809 = !{!114, !636, !596, !182, !7, !640}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !653, file: !15, line: 1997, baseType: !811, size: 64, offset: 1216)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DISubroutineType(types: !813)
!813 = !{!114, !676, !636, !182, !640}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !653, file: !15, line: 1999, baseType: !815, size: 64, offset: 1280)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = !DISubroutineType(types: !817)
!817 = !{!647, !676, !596, !114}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !653, file: !15, line: 2001, baseType: !819, size: 64, offset: 1344)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DISubroutineType(types: !821)
!821 = !{!114, !676, !596, !647, !114}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !653, file: !15, line: 2003, baseType: !823, size: 64, offset: 1408)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DISubroutineType(types: !825)
!825 = !{!114, !676, !596, !826}
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !15, line: 76, flags: DIFlagFwdDecl)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !653, file: !15, line: 2005, baseType: !829, size: 64, offset: 1472)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DISubroutineType(types: !831)
!831 = !{!114, !596, !826}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !653, file: !15, line: 2006, baseType: !833, size: 64, offset: 1536)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DISubroutineType(types: !835)
!835 = !{!836, !636}
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !15, line: 3192, size: 192, elements: !838)
!838 = !{!839, !846}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !837, file: !15, line: 3193, baseType: !840, size: 128)
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !841, line: 296, size: 128, elements: !842)
!841 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!842 = !{!843, !844, !845}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !840, file: !841, line: 297, baseType: !205, size: 32)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !840, file: !841, line: 299, baseType: !99, size: 32, offset: 32)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !840, file: !841, line: 300, baseType: !98, size: 64, offset: 64)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !837, file: !15, line: 3194, baseType: !437, size: 32, offset: 128)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !637, file: !15, line: 655, baseType: !848, size: 64, offset: 448)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !15, line: 1190, size: 10752, elements: !850)
!850 = !{!851, !852, !853, !854, !855, !856, !895, !1069, !1109, !1192, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1209, !1213, !1214, !1217, !1220, !1223, !1226, !1227, !1228, !1269, !3149, !3150, !3151, !3152, !3153, !3154, !3157, !3159, !3166, !3167, !3168, !3169, !3228, !3243, !3244, !3245, !3246, !3247, !3250, !3251, !3252, !3267, !3268, !3269, !3270, !3271, !3272, !3273, !3274, !3275}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !849, file: !15, line: 1191, baseType: !270, size: 128)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !849, file: !15, line: 1192, baseType: !711, size: 32, offset: 128)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !849, file: !15, line: 1193, baseType: !236, size: 8, offset: 160)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !849, file: !15, line: 1194, baseType: !113, size: 64, offset: 192)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !849, file: !15, line: 1195, baseType: !178, size: 64, offset: 256)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !849, file: !15, line: 1196, baseType: !857, size: 64, offset: 320)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !15, line: 2366, size: 576, elements: !859)
!859 = !{!860, !861, !862, !868, !872, !876, !880, !881, !882, !883, !887, !888, !889, !891, !892, !893, !894}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !858, file: !15, line: 2367, baseType: !475, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !858, file: !15, line: 2368, baseType: !114, size: 32, offset: 64)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !858, file: !15, line: 2376, baseType: !863, size: 64, offset: 128)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DISubroutineType(types: !865)
!865 = !{!114, !866}
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !593, line: 21, flags: DIFlagFwdDecl)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !858, file: !15, line: 2377, baseType: !869, size: 64, offset: 192)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !871)
!871 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !15, line: 75, flags: DIFlagFwdDecl)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !858, file: !15, line: 2378, baseType: !873, size: 64, offset: 256)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DISubroutineType(types: !875)
!875 = !{!596, !857, !114, !475, !98}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !858, file: !15, line: 2380, baseType: !877, size: 64, offset: 320)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = !DISubroutineType(types: !879)
!879 = !{null, !848}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !858, file: !15, line: 2381, baseType: !171, size: 64, offset: 384)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !858, file: !15, line: 2382, baseType: !857, size: 64, offset: 448)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !858, file: !15, line: 2383, baseType: !315, size: 64, offset: 512)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !858, file: !15, line: 2385, baseType: !884, offset: 576)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !885, line: 206, elements: !886)
!885 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!886 = !{}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !858, file: !15, line: 2386, baseType: !884, offset: 576)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !858, file: !15, line: 2387, baseType: !884, offset: 576)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !858, file: !15, line: 2388, baseType: !890, offset: 576)
!890 = !DICompositeType(tag: DW_TAG_array_type, baseType: !884, elements: !161)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !858, file: !15, line: 2390, baseType: !884, offset: 576)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !858, file: !15, line: 2391, baseType: !884, offset: 576)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !858, file: !15, line: 2392, baseType: !884, offset: 576)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !858, file: !15, line: 2393, baseType: !884, offset: 576)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !849, file: !15, line: 1197, baseType: !896, size: 64, offset: 384)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !898)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !15, line: 2057, size: 1664, elements: !899)
!899 = !{!900, !904, !908, !909, !913, !919, !923, !924, !925, !929, !933, !937, !938, !939, !945, !950, !951, !994, !995, !996, !997, !1001, !1005, !1052, !1067, !1068}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !898, file: !15, line: 2058, baseType: !901, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DISubroutineType(types: !903)
!903 = !{!636, !848}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !898, file: !15, line: 2059, baseType: !905, size: 64, offset: 64)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = !DISubroutineType(types: !907)
!907 = !{null, !636}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !898, file: !15, line: 2060, baseType: !905, size: 64, offset: 128)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !898, file: !15, line: 2062, baseType: !910, size: 64, offset: 192)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = !DISubroutineType(types: !912)
!912 = !{null, !636, !114}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !898, file: !15, line: 2063, baseType: !914, size: 64, offset: 256)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = !DISubroutineType(types: !916)
!916 = !{!114, !636, !917}
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !15, line: 309, flags: DIFlagFwdDecl)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !898, file: !15, line: 2064, baseType: !920, size: 64, offset: 320)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DISubroutineType(types: !922)
!922 = !{!114, !636}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !898, file: !15, line: 2065, baseType: !905, size: 64, offset: 384)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !898, file: !15, line: 2066, baseType: !877, size: 64, offset: 448)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !898, file: !15, line: 2067, baseType: !926, size: 64, offset: 512)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = !DISubroutineType(types: !928)
!928 = !{!114, !848, !114}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !898, file: !15, line: 2068, baseType: !930, size: 64, offset: 576)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = !DISubroutineType(types: !932)
!932 = !{!114, !848, !14}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !898, file: !15, line: 2069, baseType: !934, size: 64, offset: 640)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = !DISubroutineType(types: !936)
!936 = !{!114, !848}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !898, file: !15, line: 2070, baseType: !930, size: 64, offset: 704)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !898, file: !15, line: 2071, baseType: !934, size: 64, offset: 768)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !898, file: !15, line: 2072, baseType: !940, size: 64, offset: 832)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = !DISubroutineType(types: !942)
!942 = !{!114, !596, !943}
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !15, line: 62, flags: DIFlagFwdDecl)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !898, file: !15, line: 2073, baseType: !946, size: 64, offset: 896)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = !DISubroutineType(types: !948)
!948 = !{!114, !848, !949, !485}
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !898, file: !15, line: 2074, baseType: !877, size: 64, offset: 960)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !898, file: !15, line: 2076, baseType: !952, size: 64, offset: 1024)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = !DISubroutineType(types: !954)
!954 = !{!114, !955, !596}
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !957, line: 17, size: 960, elements: !958)
!957 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!958 = !{!959, !960, !961, !962, !963, !964, !965, !966, !967, !989, !990, !993}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !956, file: !957, line: 18, baseType: !485, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !956, file: !957, line: 19, baseType: !793, size: 64, offset: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !956, file: !957, line: 20, baseType: !793, size: 64, offset: 128)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !956, file: !957, line: 21, baseType: !793, size: 64, offset: 192)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !956, file: !957, line: 22, baseType: !793, size: 64, offset: 256)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !956, file: !957, line: 23, baseType: !178, size: 64, offset: 320)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !956, file: !957, line: 24, baseType: !178, size: 64, offset: 384)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !956, file: !957, line: 25, baseType: !258, size: 256, offset: 448)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !956, file: !957, line: 26, baseType: !968, size: 64, offset: 704)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!969 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !970)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !957, line: 32, size: 256, elements: !971)
!971 = !{!972, !977, !981, !985}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !970, file: !957, line: 33, baseType: !973, size: 64)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DISubroutineType(types: !975)
!975 = !{!98, !955, !976}
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !970, file: !957, line: 34, baseType: !978, size: 64, offset: 64)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = !DISubroutineType(types: !980)
!980 = !{null, !955, !98}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !970, file: !957, line: 35, baseType: !982, size: 64, offset: 128)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DISubroutineType(types: !984)
!984 = !{!98, !955, !98, !976}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !970, file: !957, line: 36, baseType: !986, size: 64, offset: 192)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = !DISubroutineType(types: !988)
!988 = !{!114, !955, !98}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !956, file: !957, line: 27, baseType: !114, size: 32, offset: 768)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !956, file: !957, line: 28, baseType: !991, size: 64, offset: 832)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !183)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !956, file: !957, line: 29, baseType: !98, size: 64, offset: 896)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !898, file: !15, line: 2077, baseType: !952, size: 64, offset: 1088)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !898, file: !15, line: 2078, baseType: !952, size: 64, offset: 1152)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !898, file: !15, line: 2079, baseType: !952, size: 64, offset: 1216)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !898, file: !15, line: 2081, baseType: !998, size: 64, offset: 1280)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = !DISubroutineType(types: !1000)
!1000 = !{!790, !848, !114, !485, !793, !178}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !898, file: !15, line: 2082, baseType: !1002, size: 64, offset: 1344)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = !DISubroutineType(types: !1004)
!1004 = !{!790, !848, !114, !475, !793, !178}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !898, file: !15, line: 2083, baseType: !1006, size: 64, offset: 1408)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = !DISubroutineType(types: !1008)
!1008 = !{!1009, !636}
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !20, line: 296, size: 1664, elements: !1012)
!1012 = !{!1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1037, !1038, !1039}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1011, file: !20, line: 297, baseType: !319, size: 128)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1011, file: !20, line: 298, baseType: !270, size: 128, offset: 128)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1011, file: !20, line: 299, baseType: !270, size: 128, offset: 256)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1011, file: !20, line: 300, baseType: !270, size: 128, offset: 384)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1011, file: !20, line: 301, baseType: !258, size: 256, offset: 512)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1011, file: !20, line: 302, baseType: !205, size: 32, offset: 768)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1011, file: !20, line: 303, baseType: !225, size: 32, offset: 800)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1011, file: !20, line: 304, baseType: !848, size: 64, offset: 832)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1011, file: !20, line: 305, baseType: !1022, size: 64, offset: 896)
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !20, line: 68, size: 64, elements: !1023)
!1023 = !{!1024, !1036}
!1024 = !DIDerivedType(tag: DW_TAG_member, scope: !1022, file: !20, line: 69, baseType: !1025, size: 32)
!1025 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1022, file: !20, line: 69, size: 32, elements: !1026)
!1026 = !{!1027, !1028, !1029}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1025, file: !20, line: 70, baseType: !345, size: 32)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1025, file: !20, line: 71, baseType: !363, size: 32)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1025, file: !20, line: 72, baseType: !1030, size: 32)
!1030 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1031, line: 24, baseType: !1032)
!1031 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1031, line: 22, size: 32, elements: !1033)
!1033 = !{!1034}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1032, file: !1031, line: 23, baseType: !1035, size: 32)
!1035 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1031, line: 20, baseType: !351)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1022, file: !20, line: 74, baseType: !19, size: 32, offset: 32)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1011, file: !20, line: 306, baseType: !178, size: 64, offset: 960)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1011, file: !20, line: 307, baseType: !113, size: 64, offset: 1024)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1011, file: !20, line: 308, baseType: !1040, size: 576, offset: 1088)
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !20, line: 205, size: 576, elements: !1041)
!1041 = !{!1042, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1040, file: !20, line: 206, baseType: !1043, size: 64)
!1043 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !20, line: 66, baseType: !181)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1040, file: !20, line: 207, baseType: !1043, size: 64, offset: 64)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1040, file: !20, line: 208, baseType: !1043, size: 64, offset: 128)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1040, file: !20, line: 209, baseType: !1043, size: 64, offset: 192)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1040, file: !20, line: 210, baseType: !1043, size: 64, offset: 256)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1040, file: !20, line: 211, baseType: !1043, size: 64, offset: 320)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1040, file: !20, line: 212, baseType: !1043, size: 64, offset: 384)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1040, file: !20, line: 213, baseType: !428, size: 64, offset: 448)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1040, file: !20, line: 214, baseType: !428, size: 64, offset: 512)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !898, file: !15, line: 2085, baseType: !1053, size: 64, offset: 1472)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = !DISubroutineType(types: !1055)
!1055 = !{!751, !848, !1056}
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1058, line: 15, size: 256, elements: !1059)
!1058 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1059 = !{!1060, !1061, !1062, !1063, !1064}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1057, file: !1058, line: 16, baseType: !99, size: 32)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1057, file: !1058, line: 19, baseType: !114, size: 32, offset: 32)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1057, file: !1058, line: 26, baseType: !113, size: 64, offset: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1057, file: !1058, line: 33, baseType: !113, size: 64, offset: 128)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1057, file: !1058, line: 36, baseType: !1065, size: 64, offset: 192)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !1058, line: 36, flags: DIFlagFwdDecl)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !898, file: !15, line: 2087, baseType: !1053, size: 64, offset: 1536)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !898, file: !15, line: 2089, baseType: !877, size: 64, offset: 1600)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !849, file: !15, line: 1198, baseType: !1070, size: 64, offset: 448)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1072)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !20, line: 324, size: 704, elements: !1073)
!1073 = !{!1074, !1078, !1082, !1086, !1087, !1088, !1089, !1090, !1095, !1100, !1104}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1072, file: !20, line: 325, baseType: !1075, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = !DISubroutineType(types: !1077)
!1077 = !{!114, !1010}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1072, file: !20, line: 326, baseType: !1079, size: 64, offset: 64)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DISubroutineType(types: !1081)
!1081 = !{!1010, !848, !114}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1072, file: !20, line: 327, baseType: !1083, size: 64, offset: 128)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = !DISubroutineType(types: !1085)
!1085 = !{null, !1010}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1072, file: !20, line: 328, baseType: !1075, size: 64, offset: 192)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1072, file: !20, line: 329, baseType: !1075, size: 64, offset: 256)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1072, file: !20, line: 330, baseType: !1075, size: 64, offset: 320)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1072, file: !20, line: 331, baseType: !926, size: 64, offset: 384)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1072, file: !20, line: 334, baseType: !1091, size: 64, offset: 448)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = !DISubroutineType(types: !1093)
!1093 = !{!1094, !636}
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1072, file: !20, line: 335, baseType: !1096, size: 64, offset: 512)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1097 = !DISubroutineType(types: !1098)
!1098 = !{!114, !636, !1099}
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1072, file: !20, line: 337, baseType: !1101, size: 64, offset: 576)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = !DISubroutineType(types: !1103)
!1103 = !{!114, !636, !1094}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1072, file: !20, line: 339, baseType: !1105, size: 64, offset: 640)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = !DISubroutineType(types: !1107)
!1107 = !{!114, !848, !1108}
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !849, file: !15, line: 1199, baseType: !1110, size: 64, offset: 512)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1112)
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !20, line: 430, size: 704, elements: !1113)
!1113 = !{!1114, !1118, !1119, !1123, !1124, !1125, !1140, !1163, !1167, !1168, !1191}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1112, file: !20, line: 431, baseType: !1115, size: 64)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!114, !848, !114, !114, !759}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1112, file: !20, line: 432, baseType: !926, size: 64, offset: 64)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1112, file: !20, line: 433, baseType: !1120, size: 64, offset: 128)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{!114, !848, !7}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1112, file: !20, line: 434, baseType: !1120, size: 64, offset: 192)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1112, file: !20, line: 435, baseType: !926, size: 64, offset: 256)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1112, file: !20, line: 436, baseType: !1126, size: 64, offset: 320)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = !DISubroutineType(types: !1128)
!1128 = !{!114, !848, !114, !1129}
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !20, line: 417, size: 256, elements: !1131)
!1131 = !{!1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1130, file: !20, line: 418, baseType: !114, size: 32)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1130, file: !20, line: 419, baseType: !7, size: 32, offset: 32)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1130, file: !20, line: 420, baseType: !7, size: 32, offset: 64)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1130, file: !20, line: 422, baseType: !7, size: 32, offset: 96)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1130, file: !20, line: 423, baseType: !7, size: 32, offset: 128)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1130, file: !20, line: 424, baseType: !7, size: 32, offset: 160)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1130, file: !20, line: 425, baseType: !7, size: 32, offset: 192)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1130, file: !20, line: 426, baseType: !7, size: 32, offset: 224)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1112, file: !20, line: 437, baseType: !1141, size: 64, offset: 384)
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = !DISubroutineType(types: !1143)
!1143 = !{!114, !848, !1022, !1144}
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !20, line: 345, size: 960, elements: !1146)
!1146 = !{!1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1145, file: !20, line: 346, baseType: !114, size: 32)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1145, file: !20, line: 347, baseType: !382, size: 64, offset: 64)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1145, file: !20, line: 348, baseType: !382, size: 64, offset: 128)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1145, file: !20, line: 349, baseType: !382, size: 64, offset: 192)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1145, file: !20, line: 350, baseType: !382, size: 64, offset: 256)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1145, file: !20, line: 351, baseType: !382, size: 64, offset: 320)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1145, file: !20, line: 352, baseType: !382, size: 64, offset: 384)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1145, file: !20, line: 353, baseType: !255, size: 64, offset: 448)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1145, file: !20, line: 355, baseType: !255, size: 64, offset: 512)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1145, file: !20, line: 356, baseType: !114, size: 32, offset: 576)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1145, file: !20, line: 357, baseType: !114, size: 32, offset: 608)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1145, file: !20, line: 358, baseType: !382, size: 64, offset: 640)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1145, file: !20, line: 359, baseType: !382, size: 64, offset: 704)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1145, file: !20, line: 360, baseType: !382, size: 64, offset: 768)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1145, file: !20, line: 361, baseType: !255, size: 64, offset: 832)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1145, file: !20, line: 362, baseType: !114, size: 32, offset: 896)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1112, file: !20, line: 438, baseType: !1164, size: 64, offset: 448)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = !DISubroutineType(types: !1166)
!1166 = !{!114, !848, !1108, !1144}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1112, file: !20, line: 440, baseType: !1141, size: 64, offset: 512)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1112, file: !20, line: 441, baseType: !1169, size: 64, offset: 576)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = !DISubroutineType(types: !1171)
!1171 = !{!114, !848, !1172}
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !20, line: 411, size: 1408, elements: !1174)
!1174 = !{!1175, !1176}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1173, file: !20, line: 412, baseType: !7, size: 32)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1173, file: !20, line: 413, baseType: !1177, size: 1344, offset: 64)
!1177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1178, size: 1344, elements: !161)
!1178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !20, line: 397, size: 448, elements: !1179)
!1179 = !{!1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1190}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1178, file: !20, line: 398, baseType: !7, size: 32)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1178, file: !20, line: 399, baseType: !7, size: 32, offset: 32)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1178, file: !20, line: 401, baseType: !7, size: 32, offset: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1178, file: !20, line: 402, baseType: !7, size: 32, offset: 96)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1178, file: !20, line: 403, baseType: !7, size: 32, offset: 128)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1178, file: !20, line: 404, baseType: !7, size: 32, offset: 160)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1178, file: !20, line: 405, baseType: !7, size: 32, offset: 192)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1178, file: !20, line: 406, baseType: !111, size: 64, offset: 256)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1178, file: !20, line: 407, baseType: !1189, size: 64, offset: 320)
!1189 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !100, line: 132, baseType: !382)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1178, file: !20, line: 408, baseType: !1189, size: 64, offset: 384)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1112, file: !20, line: 442, baseType: !1120, size: 64, offset: 640)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !849, file: !15, line: 1200, baseType: !1193, size: 64, offset: 576)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1195)
!1195 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !15, line: 54, flags: DIFlagFwdDecl)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !849, file: !15, line: 1201, baseType: !113, size: 64, offset: 640)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !849, file: !15, line: 1202, baseType: !113, size: 64, offset: 704)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !849, file: !15, line: 1203, baseType: !113, size: 64, offset: 768)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !849, file: !15, line: 1204, baseType: !596, size: 64, offset: 832)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !849, file: !15, line: 1205, baseType: !412, size: 320, offset: 896)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !849, file: !15, line: 1206, baseType: !114, size: 32, offset: 1216)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !849, file: !15, line: 1207, baseType: !225, size: 32, offset: 1248)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !849, file: !15, line: 1209, baseType: !98, size: 64, offset: 1280)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !849, file: !15, line: 1211, baseType: !1205, size: 64, offset: 1344)
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1208)
!1208 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !15, line: 1211, flags: DIFlagFwdDecl)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !849, file: !15, line: 1223, baseType: !1210, size: 64, offset: 1408)
!1210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !613, line: 34, size: 64, elements: !1211)
!1211 = !{!1212}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1210, file: !613, line: 35, baseType: !616, size: 64)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !849, file: !15, line: 1224, baseType: !270, size: 128, offset: 1472)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !849, file: !15, line: 1225, baseType: !1215, size: 64, offset: 1600)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !15, line: 1225, flags: DIFlagFwdDecl)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !849, file: !15, line: 1226, baseType: !1218, size: 64, offset: 1664)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1219 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !15, line: 1226, flags: DIFlagFwdDecl)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !849, file: !15, line: 1227, baseType: !1221, size: 64, offset: 1728)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !15, line: 50, flags: DIFlagFwdDecl)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !849, file: !15, line: 1228, baseType: !1224, size: 64, offset: 1792)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !15, line: 1228, flags: DIFlagFwdDecl)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !849, file: !15, line: 1229, baseType: !319, size: 128, offset: 1856)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !849, file: !15, line: 1230, baseType: !7, size: 32, offset: 1984)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !849, file: !15, line: 1231, baseType: !1229, size: 2496, offset: 2048)
!1229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !20, line: 521, size: 2496, elements: !1230)
!1230 = !{!1231, !1232, !1233, !1235, !1267}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1229, file: !20, line: 522, baseType: !7, size: 32)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1229, file: !20, line: 523, baseType: !412, size: 320, offset: 64)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1229, file: !20, line: 524, baseType: !1234, size: 192, offset: 384)
!1234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !636, size: 192, elements: !161)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1229, file: !20, line: 525, baseType: !1236, size: 1728, offset: 576)
!1236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1237, size: 1728, elements: !161)
!1237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !20, line: 222, size: 576, elements: !1238)
!1238 = !{!1239, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1237, file: !20, line: 223, baseType: !1240, size: 64)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !20, line: 445, size: 256, elements: !1242)
!1242 = !{!1243, !1244, !1257, !1258}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1241, file: !20, line: 446, baseType: !114, size: 32)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1241, file: !20, line: 447, baseType: !1245, size: 64, offset: 64)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1247)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !20, line: 312, size: 512, elements: !1248)
!1248 = !{!1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1247, file: !20, line: 313, baseType: !926, size: 64)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1247, file: !20, line: 314, baseType: !926, size: 64, offset: 64)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1247, file: !20, line: 315, baseType: !926, size: 64, offset: 128)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1247, file: !20, line: 316, baseType: !926, size: 64, offset: 192)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1247, file: !20, line: 317, baseType: !1075, size: 64, offset: 256)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1247, file: !20, line: 318, baseType: !1075, size: 64, offset: 320)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1247, file: !20, line: 319, baseType: !1075, size: 64, offset: 384)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1247, file: !20, line: 320, baseType: !1105, size: 64, offset: 448)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1241, file: !20, line: 448, baseType: !171, size: 64, offset: 128)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1241, file: !20, line: 449, baseType: !1240, size: 64, offset: 192)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1237, file: !20, line: 224, baseType: !114, size: 32, offset: 64)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1237, file: !20, line: 226, baseType: !270, size: 128, offset: 128)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1237, file: !20, line: 227, baseType: !113, size: 64, offset: 256)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1237, file: !20, line: 228, baseType: !7, size: 32, offset: 320)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1237, file: !20, line: 229, baseType: !7, size: 32, offset: 352)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1237, file: !20, line: 230, baseType: !1043, size: 64, offset: 384)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1237, file: !20, line: 231, baseType: !1043, size: 64, offset: 448)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1237, file: !20, line: 232, baseType: !98, size: 64, offset: 512)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1229, file: !20, line: 526, baseType: !1268, size: 192, offset: 2304)
!1268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1245, size: 192, elements: !161)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !849, file: !15, line: 1233, baseType: !1270, size: 2368, offset: 4544)
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !15, line: 1184, size: 2368, elements: !1271)
!1271 = !{!1272, !1273, !1274}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1270, file: !15, line: 1185, baseType: !244, size: 16)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1270, file: !15, line: 1186, baseType: !244, size: 16, offset: 16)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1270, file: !15, line: 1187, baseType: !1275, size: 2304, offset: 64)
!1275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1276, size: 2304, elements: !161)
!1276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1277, line: 12, size: 768, elements: !1278)
!1277 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1278 = !{!1279, !1287, !1289, !3147, !3148}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1276, file: !1277, line: 13, baseType: !1280, size: 384)
!1280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1281, line: 17, size: 384, elements: !1282)
!1281 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1282 = !{!1283, !1284, !1285, !1286}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1280, file: !1281, line: 18, baseType: !114, size: 32)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1280, file: !1281, line: 19, baseType: !114, size: 32, offset: 32)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1280, file: !1281, line: 20, baseType: !326, size: 192, offset: 64)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1280, file: !1281, line: 22, baseType: !195, size: 128, align: 64, offset: 256)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1276, file: !1277, line: 14, baseType: !1288, size: 64, offset: 384)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1276, file: !1277, line: 15, baseType: !1290, size: 64, offset: 448)
!1290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1291, line: 16, size: 64, elements: !1292)
!1291 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1292 = !{!1293}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1290, file: !1291, line: 17, baseType: !1294, size: 64)
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1296, line: 746, size: 58368, elements: !1297)
!1296 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1297 = !{!1298, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1378, !1389, !1482, !1486, !1489, !1520, !1521, !1522, !1523, !1534, !1536, !1537, !1538, !1539, !1540, !1541, !1552, !1553, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1570, !1571, !1578, !1579, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1803, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1818, !1819, !1820, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1862, !1868, !1869, !1870, !1871, !1872, !1876, !1879, !1886, !1891, !1894, !1897, !1900, !1903, !2043, !2074, !2075, !2076, !2077, !2078, !2079, !2080, !2081, !2082, !2085, !2086, !2087, !2096, !2104, !2105, !2106, !2107, !2108, !2113, !2114, !2115, !2118, !2119, !2122, !2125, !2128, !2136, !2139, !2140, !2225, !2226, !2227, !2228, !2229, !2235, !2236, !2237, !2238, !2241, !2242, !2245, !2248, !2249, !2252, !2253, !2254, !2257, !2258, !2259, !2262, !2263, !2264, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2296, !2299, !2791, !2794, !2795, !2796, !2797, !2798, !2799, !2800, !2803, !2875, !2877, !2878, !2879, !2880, !2881, !2893, !2910, !2911, !2912, !2913, !2914, !2915, !2916, !2917, !2918, !2919, !2920, !2924, !2925, !2926}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1295, file: !1296, line: 752, baseType: !1299, size: 192)
!1299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1300, line: 56, size: 192, elements: !1301)
!1300 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1301 = !{!1302, !1303, !1304, !1305}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1299, file: !1300, line: 57, baseType: !113, size: 64)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1299, file: !1300, line: 58, baseType: !113, size: 64, offset: 64)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1299, file: !1300, line: 59, baseType: !437, size: 32, offset: 128)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1299, file: !1300, line: 61, baseType: !437, size: 32, offset: 160)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1295, file: !1296, line: 754, baseType: !7, size: 32, offset: 192)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1295, file: !1296, line: 767, baseType: !98, size: 64, offset: 256)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1295, file: !1296, line: 768, baseType: !306, size: 32, offset: 320)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1295, file: !1296, line: 770, baseType: !7, size: 32, offset: 352)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1295, file: !1296, line: 771, baseType: !7, size: 32, offset: 384)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1295, file: !1296, line: 774, baseType: !114, size: 32, offset: 416)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1295, file: !1296, line: 775, baseType: !1313, size: 128, offset: 448)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1314, line: 58, size: 128, elements: !1315)
!1314 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1315 = !{!1316, !1317, !1322, !1323}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1313, file: !1314, line: 59, baseType: !189, size: 64)
!1317 = !DIDerivedType(tag: DW_TAG_member, scope: !1313, file: !1314, line: 60, baseType: !1318, size: 32, offset: 64)
!1318 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1313, file: !1314, line: 60, size: 32, elements: !1319)
!1319 = !{!1320, !1321}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1318, file: !1314, line: 61, baseType: !7, size: 32)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1318, file: !1314, line: 62, baseType: !225, size: 32)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1313, file: !1314, line: 65, baseType: !242, size: 16, offset: 96)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1313, file: !1314, line: 65, baseType: !242, size: 16, offset: 112)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1295, file: !1296, line: 776, baseType: !7, size: 32, offset: 576)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1295, file: !1296, line: 777, baseType: !113, size: 64, offset: 640)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1295, file: !1296, line: 778, baseType: !1294, size: 64, offset: 704)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1295, file: !1296, line: 787, baseType: !114, size: 32, offset: 768)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1295, file: !1296, line: 788, baseType: !114, size: 32, offset: 800)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1295, file: !1296, line: 790, baseType: !114, size: 32, offset: 832)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1295, file: !1296, line: 792, baseType: !114, size: 32, offset: 864)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1295, file: !1296, line: 793, baseType: !114, size: 32, offset: 896)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1295, file: !1296, line: 794, baseType: !114, size: 32, offset: 928)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1295, file: !1296, line: 795, baseType: !7, size: 32, offset: 960)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1295, file: !1296, line: 797, baseType: !1335, size: 2048, offset: 1024)
!1335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1296, line: 551, size: 2048, elements: !1336)
!1336 = !{!1337, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1357, !1360, !1361, !1362}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1335, file: !1296, line: 553, baseType: !1338, size: 128)
!1338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1296, line: 411, size: 128, elements: !1339)
!1339 = !{!1340, !1341}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1338, file: !1296, line: 412, baseType: !113, size: 64)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1338, file: !1296, line: 413, baseType: !437, size: 32, offset: 64)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1335, file: !1296, line: 554, baseType: !404, size: 192, align: 64, offset: 128)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1335, file: !1296, line: 555, baseType: !382, size: 64, offset: 320)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1335, file: !1296, line: 556, baseType: !382, size: 64, offset: 384)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1335, file: !1296, line: 558, baseType: !270, size: 128, offset: 448)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1335, file: !1296, line: 559, baseType: !7, size: 32, offset: 576)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1335, file: !1296, line: 561, baseType: !382, size: 64, offset: 640)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1335, file: !1296, line: 562, baseType: !382, size: 64, offset: 704)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1335, file: !1296, line: 563, baseType: !382, size: 64, offset: 768)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1335, file: !1296, line: 564, baseType: !382, size: 64, offset: 832)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1335, file: !1296, line: 565, baseType: !255, size: 64, offset: 896)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1335, file: !1296, line: 566, baseType: !382, size: 64, offset: 960)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1335, file: !1296, line: 568, baseType: !382, size: 64, offset: 1024)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1335, file: !1296, line: 571, baseType: !114, size: 32, offset: 1088)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1335, file: !1296, line: 572, baseType: !1356, size: 64, offset: 1152)
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1335, file: !1296, line: 574, baseType: !1358, size: 64, offset: 1216)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1296, line: 49, flags: DIFlagFwdDecl)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1335, file: !1296, line: 576, baseType: !1358, size: 64, offset: 1280)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1335, file: !1296, line: 578, baseType: !113, size: 64, offset: 1344)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1335, file: !1296, line: 588, baseType: !1363, size: 512, align: 512, offset: 1536)
!1363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1296, line: 497, size: 512, align: 512, elements: !1364)
!1364 = !{!1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1363, file: !1296, line: 498, baseType: !382, size: 64)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1363, file: !1296, line: 499, baseType: !382, size: 64, offset: 64)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1363, file: !1296, line: 500, baseType: !382, size: 64, offset: 128)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1363, file: !1296, line: 501, baseType: !437, size: 32, offset: 192)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1363, file: !1296, line: 502, baseType: !437, size: 32, offset: 224)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1363, file: !1296, line: 503, baseType: !113, size: 64, offset: 256)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1363, file: !1296, line: 504, baseType: !113, size: 64, offset: 320)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1363, file: !1296, line: 505, baseType: !113, size: 64, offset: 384)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1363, file: !1296, line: 506, baseType: !1374, size: 64, align: 64, offset: 448)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1296, line: 445, size: 64, align: 64, elements: !1375)
!1375 = !{!1376, !1377}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1374, file: !1296, line: 446, baseType: !7, size: 32)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1374, file: !1296, line: 447, baseType: !7, size: 32, offset: 32)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1295, file: !1296, line: 798, baseType: !1379, size: 384, offset: 3072)
!1379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1296, line: 592, size: 384, elements: !1380)
!1380 = !{!1381, !1382, !1383, !1384, !1385, !1386, !1387}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1379, file: !1296, line: 593, baseType: !270, size: 128)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1379, file: !1296, line: 594, baseType: !113, size: 64, offset: 128)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1379, file: !1296, line: 595, baseType: !113, size: 64, offset: 192)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1379, file: !1296, line: 596, baseType: !7, size: 32, offset: 256)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1379, file: !1296, line: 597, baseType: !244, size: 16, offset: 288)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1379, file: !1296, line: 598, baseType: !244, size: 16, offset: 304)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1379, file: !1296, line: 600, baseType: !1388, size: 64, offset: 320)
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1295, file: !1296, line: 799, baseType: !1390, size: 1792, offset: 3456)
!1390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1296, line: 610, size: 1792, elements: !1391)
!1391 = !{!1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1479, !1480}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1390, file: !1296, line: 611, baseType: !404, size: 192, align: 64)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1390, file: !1296, line: 618, baseType: !382, size: 64, offset: 192)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1390, file: !1296, line: 619, baseType: !382, size: 64, offset: 256)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1390, file: !1296, line: 620, baseType: !382, size: 64, offset: 320)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1390, file: !1296, line: 621, baseType: !382, size: 64, offset: 384)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1390, file: !1296, line: 622, baseType: !382, size: 64, offset: 448)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1390, file: !1296, line: 629, baseType: !255, size: 64, offset: 512)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1390, file: !1296, line: 630, baseType: !382, size: 64, offset: 576)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1390, file: !1296, line: 631, baseType: !7, size: 32, offset: 640)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1390, file: !1296, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1390, file: !1296, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1390, file: !1296, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1390, file: !1296, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1390, file: !1296, line: 662, baseType: !1406, size: 512, offset: 704)
!1406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !26, line: 118, size: 512, elements: !1407)
!1407 = !{!1408, !1416, !1417, !1422, !1475, !1476, !1477, !1478}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1406, file: !26, line: 119, baseType: !1409, size: 256)
!1409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1410, line: 9, size: 256, elements: !1411)
!1410 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1411 = !{!1412, !1413}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1409, file: !1410, line: 10, baseType: !404, size: 192, align: 64)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1409, file: !1410, line: 11, baseType: !1414, size: 64, offset: 192)
!1414 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1415, line: 29, baseType: !255)
!1415 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1406, file: !26, line: 120, baseType: !1414, size: 64, offset: 256)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1406, file: !26, line: 121, baseType: !1418, size: 64, offset: 320)
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1419 = !DISubroutineType(types: !1420)
!1420 = !{!25, !1421}
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1406, file: !26, line: 122, baseType: !1423, size: 64, offset: 384)
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !26, line: 159, size: 512, align: 512, elements: !1425)
!1425 = !{!1426, !1449, !1450, !1453, !1458, !1459, !1470, !1474}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1424, file: !26, line: 160, baseType: !1427, size: 64)
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!1428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !26, line: 215, size: 4608, align: 512, elements: !1429)
!1429 = !{!1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1428, file: !26, line: 216, baseType: !263, size: 32)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1428, file: !26, line: 217, baseType: !7, size: 32, offset: 32)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1428, file: !26, line: 218, baseType: !7, size: 32, offset: 64)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1428, file: !26, line: 219, baseType: !7, size: 32, offset: 96)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1428, file: !26, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1428, file: !26, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1428, file: !26, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1428, file: !26, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1428, file: !26, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1428, file: !26, line: 226, baseType: !7, size: 32, offset: 160)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1428, file: !26, line: 227, baseType: !244, size: 16, offset: 192)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1428, file: !26, line: 228, baseType: !244, size: 16, offset: 208)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1428, file: !26, line: 229, baseType: !7, size: 32, offset: 224)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1428, file: !26, line: 235, baseType: !1414, size: 64, offset: 256)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1428, file: !26, line: 236, baseType: !1421, size: 64, offset: 320)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1428, file: !26, line: 237, baseType: !1414, size: 64, offset: 384)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1428, file: !26, line: 238, baseType: !1421, size: 64, offset: 448)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1428, file: !26, line: 239, baseType: !1448, size: 4096, align: 512, offset: 512)
!1448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1424, size: 4096, align: 512, elements: !134)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1424, file: !26, line: 161, baseType: !7, size: 32, offset: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1424, file: !26, line: 162, baseType: !1451, size: 32, offset: 96)
!1451 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !100, line: 32, baseType: !1452)
!1452 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !180, line: 96, baseType: !114)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1424, file: !26, line: 163, baseType: !1454, size: 32, offset: 128)
!1454 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !603, line: 274, baseType: !1455)
!1455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !603, line: 274, size: 32, elements: !1456)
!1456 = !{!1457}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1455, file: !603, line: 274, baseType: !607, size: 32)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1424, file: !26, line: 164, baseType: !1421, size: 64, offset: 192)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1424, file: !26, line: 165, baseType: !1460, size: 128, offset: 256)
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1410, line: 14, size: 128, elements: !1461)
!1461 = !{!1462}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1460, file: !1410, line: 15, baseType: !1463, size: 128)
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !405, line: 26, size: 128, elements: !1464)
!1464 = !{!1465, !1469}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1463, file: !405, line: 27, baseType: !1466, size: 64)
!1466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !405, line: 12, size: 64, elements: !1467)
!1467 = !{!1468}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1466, file: !405, line: 13, baseType: !409, size: 64)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1463, file: !405, line: 28, baseType: !409, size: 64, offset: 64)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1424, file: !26, line: 166, baseType: !1471, size: 64, offset: 384)
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1472 = !DISubroutineType(types: !1473)
!1473 = !{!1414}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1424, file: !26, line: 167, baseType: !1414, size: 64, offset: 448)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1406, file: !26, line: 123, baseType: !233, size: 8, offset: 448)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1406, file: !26, line: 124, baseType: !233, size: 8, offset: 456)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1406, file: !26, line: 125, baseType: !233, size: 8, offset: 464)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1406, file: !26, line: 126, baseType: !233, size: 8, offset: 472)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1390, file: !1296, line: 671, baseType: !1406, size: 512, offset: 1216)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1390, file: !1296, line: 679, baseType: !1481, size: 64, offset: 1728)
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1295, file: !1296, line: 800, baseType: !1483, size: 64, offset: 5248)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1485)
!1485 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1296, line: 800, flags: DIFlagFwdDecl)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1295, file: !1296, line: 809, baseType: !1487, size: 64, offset: 5312)
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!1488 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1296, line: 70, flags: DIFlagFwdDecl)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1295, file: !1296, line: 825, baseType: !1490, size: 2048, align: 512, offset: 5632)
!1490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1296, line: 509, size: 2048, align: 512, elements: !1491)
!1491 = !{!1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1490, file: !1296, line: 511, baseType: !382, size: 64)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1490, file: !1296, line: 512, baseType: !382, size: 64, offset: 64)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1490, file: !1296, line: 513, baseType: !382, size: 64, offset: 128)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1490, file: !1296, line: 514, baseType: !382, size: 64, offset: 192)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1490, file: !1296, line: 515, baseType: !382, size: 64, offset: 256)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1490, file: !1296, line: 516, baseType: !382, size: 64, offset: 320)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1490, file: !1296, line: 518, baseType: !382, size: 64, offset: 384)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1490, file: !1296, line: 519, baseType: !382, size: 64, offset: 448)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1490, file: !1296, line: 520, baseType: !255, size: 64, offset: 512)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1490, file: !1296, line: 522, baseType: !382, size: 64, offset: 576)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1490, file: !1296, line: 523, baseType: !382, size: 64, offset: 640)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1490, file: !1296, line: 524, baseType: !255, size: 64, offset: 704)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1490, file: !1296, line: 526, baseType: !255, size: 64, offset: 768)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1490, file: !1296, line: 527, baseType: !382, size: 64, offset: 832)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1490, file: !1296, line: 529, baseType: !382, size: 64, offset: 896)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1490, file: !1296, line: 530, baseType: !382, size: 64, offset: 960)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1490, file: !1296, line: 531, baseType: !382, size: 64, offset: 1024)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1490, file: !1296, line: 532, baseType: !382, size: 64, offset: 1088)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1490, file: !1296, line: 533, baseType: !382, size: 64, offset: 1152)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1490, file: !1296, line: 535, baseType: !382, size: 64, offset: 1216)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1490, file: !1296, line: 536, baseType: !382, size: 64, offset: 1280)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1490, file: !1296, line: 537, baseType: !382, size: 64, offset: 1344)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1490, file: !1296, line: 538, baseType: !382, size: 64, offset: 1408)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1490, file: !1296, line: 539, baseType: !382, size: 64, offset: 1472)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1490, file: !1296, line: 540, baseType: !382, size: 64, offset: 1536)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1490, file: !1296, line: 541, baseType: !382, size: 64, offset: 1600)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1490, file: !1296, line: 542, baseType: !382, size: 64, offset: 1664)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1490, file: !1296, line: 543, baseType: !382, size: 64, offset: 1728)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1295, file: !1296, line: 833, baseType: !7, size: 32, offset: 7680)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1295, file: !1296, line: 836, baseType: !7, size: 32, offset: 7712)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1295, file: !1296, line: 837, baseType: !114, size: 32, offset: 7744)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1295, file: !1296, line: 838, baseType: !1524, size: 64, offset: 7808)
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1525 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1526)
!1526 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1527, line: 19, baseType: !1528)
!1527 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1527, line: 19, size: 64, elements: !1529)
!1529 = !{!1530}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1528, file: !1527, line: 19, baseType: !1531, size: 64)
!1531 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 64, elements: !1532)
!1532 = !{!1533}
!1533 = !DISubrange(count: 1)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1295, file: !1296, line: 839, baseType: !1535, size: 64, offset: 7872)
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1295, file: !1296, line: 840, baseType: !1526, size: 64, offset: 7936)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1295, file: !1296, line: 841, baseType: !98, size: 64, offset: 8000)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1295, file: !1296, line: 843, baseType: !244, size: 16, offset: 8064)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1295, file: !1296, line: 845, baseType: !244, size: 16, offset: 8080)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1295, file: !1296, line: 848, baseType: !114, size: 32, offset: 8096)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1295, file: !1296, line: 849, baseType: !1542, size: 32, offset: 8128)
!1542 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1296, line: 718, size: 32, elements: !1543)
!1543 = !{!1544, !1551}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1542, file: !1296, line: 724, baseType: !1545, size: 32)
!1545 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1542, file: !1296, line: 719, size: 32, elements: !1546)
!1546 = !{!1547, !1548, !1549, !1550}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1545, file: !1296, line: 720, baseType: !233, size: 8)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1545, file: !1296, line: 721, baseType: !233, size: 8, offset: 8)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1545, file: !1296, line: 722, baseType: !233, size: 8, offset: 16)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1545, file: !1296, line: 723, baseType: !233, size: 8, offset: 24)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1542, file: !1296, line: 725, baseType: !437, size: 32)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1295, file: !1296, line: 850, baseType: !270, size: 128, offset: 8192)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1295, file: !1296, line: 851, baseType: !1554, size: 64, offset: 8320)
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1555, size: 64)
!1555 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1296, line: 60, flags: DIFlagFwdDecl)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1295, file: !1296, line: 855, baseType: !113, size: 64, offset: 8384)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1295, file: !1296, line: 856, baseType: !233, size: 8, offset: 8448)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1295, file: !1296, line: 857, baseType: !233, size: 8, offset: 8456)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1295, file: !1296, line: 858, baseType: !114, size: 32, offset: 8480)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1295, file: !1296, line: 859, baseType: !270, size: 128, offset: 8512)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1295, file: !1296, line: 860, baseType: !114, size: 32, offset: 8640)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1295, file: !1296, line: 861, baseType: !270, size: 128, offset: 8704)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1295, file: !1296, line: 873, baseType: !1564, size: 256, offset: 8832)
!1564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1296, line: 376, size: 256, elements: !1565)
!1565 = !{!1566, !1567, !1568, !1569}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1564, file: !1296, line: 381, baseType: !113, size: 64)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1564, file: !1296, line: 384, baseType: !111, size: 64, offset: 64)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1564, file: !1296, line: 389, baseType: !111, size: 64, offset: 128)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1564, file: !1296, line: 392, baseType: !111, size: 64, offset: 192)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1295, file: !1296, line: 875, baseType: !270, size: 128, offset: 9088)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1295, file: !1296, line: 877, baseType: !1572, size: 320, offset: 9216)
!1572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1573, line: 86, size: 320, elements: !1574)
!1573 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1574 = !{!1575, !1576, !1577}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1572, file: !1573, line: 87, baseType: !114, size: 32)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1572, file: !1573, line: 88, baseType: !270, size: 128, offset: 64)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1572, file: !1573, line: 89, baseType: !270, size: 128, offset: 192)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1295, file: !1296, line: 878, baseType: !404, size: 192, align: 64, offset: 9536)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1295, file: !1296, line: 881, baseType: !1580, size: 64, offset: 9728)
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !52, line: 733, size: 10240, elements: !1582)
!1582 = !{!1583, !1722}
!1583 = !DIDerivedType(tag: DW_TAG_member, scope: !1581, file: !52, line: 734, baseType: !1584, size: 10240)
!1584 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1581, file: !52, line: 734, size: 10240, elements: !1585)
!1585 = !{!1586, !1590, !1603, !1607, !1608, !1609, !1610, !1611, !1612, !1621, !1622, !1623, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1662, !1664, !1667, !1691, !1692, !1693, !1696, !1697, !1698, !1701, !1702, !1703, !1709, !1710}
!1586 = !DIDerivedType(tag: DW_TAG_member, scope: !1584, file: !52, line: 739, baseType: !1587, size: 512, align: 512)
!1587 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1584, file: !52, line: 739, size: 512, align: 512, elements: !1588)
!1588 = !{!1589}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1587, file: !52, line: 747, baseType: !225, size: 32)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1584, file: !52, line: 750, baseType: !1591, size: 128, offset: 512)
!1591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1592, line: 218, size: 128, elements: !1593)
!1592 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1593 = !{!1594, !1601, !1602}
!1594 = !DIDerivedType(tag: DW_TAG_member, scope: !1591, file: !1592, line: 219, baseType: !1595, size: 32)
!1595 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1591, file: !1592, line: 219, size: 32, elements: !1596)
!1596 = !{!1597, !1598}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1595, file: !1592, line: 220, baseType: !205, size: 32)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1595, file: !1592, line: 221, baseType: !1599)
!1599 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1592, line: 197, baseType: !1600)
!1600 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1592, line: 197, elements: !886)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1591, file: !1592, line: 223, baseType: !7, size: 32, offset: 32)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1591, file: !1592, line: 224, baseType: !98, size: 64, offset: 64)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1584, file: !52, line: 752, baseType: !1604, size: 64, offset: 640)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = !DISubroutineType(types: !1606)
!1606 = !{!113, !182, !113, !113, !113, !113}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1584, file: !52, line: 756, baseType: !113, size: 64, offset: 704)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1584, file: !52, line: 757, baseType: !113, size: 64, offset: 768)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1584, file: !52, line: 760, baseType: !113, size: 64, offset: 832)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1584, file: !52, line: 761, baseType: !113, size: 64, offset: 896)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1584, file: !52, line: 763, baseType: !113, size: 64, offset: 960)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1584, file: !52, line: 764, baseType: !1613, size: 64, offset: 1024)
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1614 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1615, line: 299, baseType: !1616)
!1615 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1616 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1615, line: 299, size: 64, elements: !1617)
!1617 = !{!1618}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1616, file: !1615, line: 299, baseType: !1619, size: 64)
!1619 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1620, line: 18, baseType: !113)
!1620 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1584, file: !52, line: 773, baseType: !225, size: 32, offset: 1088)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1584, file: !52, line: 785, baseType: !225, size: 32, offset: 1120)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1584, file: !52, line: 795, baseType: !1624, size: 64, offset: 1152)
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64)
!1625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !52, line: 726, size: 128, elements: !1626)
!1626 = !{!1627, !1628}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1625, file: !52, line: 727, baseType: !382, size: 64)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1625, file: !52, line: 728, baseType: !114, size: 32, offset: 64)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1584, file: !52, line: 801, baseType: !113, size: 64, offset: 1216)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1584, file: !52, line: 804, baseType: !249, size: 64, offset: 1280)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1584, file: !52, line: 806, baseType: !114, size: 32, offset: 1344)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1584, file: !52, line: 808, baseType: !205, size: 32, offset: 1376)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1584, file: !52, line: 823, baseType: !412, size: 320, offset: 1408)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1584, file: !52, line: 825, baseType: !270, size: 128, offset: 1728)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1584, file: !52, line: 845, baseType: !114, size: 32, offset: 1856)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1584, file: !52, line: 849, baseType: !113, size: 64, offset: 1920)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1584, file: !52, line: 850, baseType: !113, size: 64, offset: 1984)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1584, file: !52, line: 852, baseType: !113, size: 64, offset: 2048)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1584, file: !52, line: 853, baseType: !113, size: 64, offset: 2112)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1584, file: !52, line: 854, baseType: !251, size: 64, offset: 2176)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1584, file: !52, line: 855, baseType: !113, size: 64, offset: 2240)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1584, file: !52, line: 856, baseType: !113, size: 64, offset: 2304)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1584, file: !52, line: 857, baseType: !113, size: 64, offset: 2368)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1584, file: !52, line: 858, baseType: !113, size: 64, offset: 2432)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1584, file: !52, line: 865, baseType: !607, size: 32, offset: 2496)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1584, file: !52, line: 867, baseType: !205, size: 32, offset: 2528)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1584, file: !52, line: 869, baseType: !113, size: 64, offset: 2560)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1584, file: !52, line: 869, baseType: !113, size: 64, offset: 2624)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1584, file: !52, line: 869, baseType: !113, size: 64, offset: 2688)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1584, file: !52, line: 869, baseType: !113, size: 64, offset: 2752)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1584, file: !52, line: 870, baseType: !113, size: 64, offset: 2816)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1584, file: !52, line: 870, baseType: !113, size: 64, offset: 2880)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1584, file: !52, line: 870, baseType: !113, size: 64, offset: 2944)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1584, file: !52, line: 871, baseType: !113, size: 64, offset: 3008)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1584, file: !52, line: 871, baseType: !113, size: 64, offset: 3072)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1584, file: !52, line: 871, baseType: !113, size: 64, offset: 3136)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1584, file: !52, line: 871, baseType: !113, size: 64, offset: 3200)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1584, file: !52, line: 873, baseType: !1659, size: 3328, offset: 3264)
!1659 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 3328, elements: !1660)
!1660 = !{!1661}
!1661 = !DISubrange(count: 52)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1584, file: !52, line: 875, baseType: !1663, size: 1280, offset: 6592)
!1663 = !DICompositeType(tag: DW_TAG_array_type, baseType: !533, size: 1280, elements: !124)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1584, file: !52, line: 877, baseType: !1665, size: 64, offset: 7872)
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !52, line: 877, flags: DIFlagFwdDecl)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1584, file: !52, line: 880, baseType: !1668, size: 1088, offset: 7936)
!1668 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1669, line: 72, baseType: !1670)
!1669 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1670 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1669, line: 23, size: 1088, elements: !1671)
!1671 = !{!1672, !1673, !1674, !1675, !1676, !1679, !1680, !1681, !1682, !1686, !1687, !1688}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1670, file: !1669, line: 28, baseType: !382, size: 64)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1670, file: !1669, line: 38, baseType: !251, size: 64, offset: 64)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1670, file: !1669, line: 40, baseType: !113, size: 64, offset: 128)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1670, file: !1669, line: 43, baseType: !412, size: 320, offset: 192)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1670, file: !1669, line: 44, baseType: !1677, size: 64, offset: 512)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1669, line: 44, flags: DIFlagFwdDecl)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1670, file: !1669, line: 48, baseType: !113, size: 64, offset: 576)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1670, file: !1669, line: 59, baseType: !258, size: 256, offset: 640)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1670, file: !1669, line: 60, baseType: !98, size: 64, offset: 896)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1670, file: !1669, line: 61, baseType: !1683, size: 64, offset: 960)
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1684 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1685)
!1685 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1669, line: 61, flags: DIFlagFwdDecl)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1670, file: !1669, line: 63, baseType: !225, size: 32, offset: 1024)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1670, file: !1669, line: 69, baseType: !242, size: 16, offset: 1056)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1670, file: !1669, line: 70, baseType: !1689, size: 16, offset: 1072)
!1689 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !234, line: 18, baseType: !1690)
!1690 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !107, line: 23, baseType: !441)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1584, file: !52, line: 882, baseType: !113, size: 64, offset: 9024)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1584, file: !52, line: 885, baseType: !205, size: 32, offset: 9088)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1584, file: !52, line: 886, baseType: !1694, size: 64, offset: 9152)
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64)
!1695 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !52, line: 732, flags: DIFlagFwdDecl)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1584, file: !52, line: 901, baseType: !558, size: 64, offset: 9216)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1584, file: !52, line: 904, baseType: !182, size: 64, offset: 9280)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1584, file: !52, line: 906, baseType: !1699, size: 64, offset: 9344)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !52, line: 906, flags: DIFlagFwdDecl)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1584, file: !52, line: 930, baseType: !225, size: 32, offset: 9408)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1584, file: !52, line: 933, baseType: !225, size: 32, offset: 9440)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1584, file: !52, line: 935, baseType: !1704, size: 64, offset: 9472)
!1704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !68, line: 103, size: 64, elements: !1705)
!1705 = !{!1706}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1704, file: !68, line: 104, baseType: !1707, size: 64)
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1708 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !68, line: 101, flags: DIFlagFwdDecl)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1584, file: !52, line: 940, baseType: !249, size: 64, offset: 9536)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1584, file: !52, line: 942, baseType: !1711, size: 256, offset: 9600)
!1711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1712, line: 98, size: 256, elements: !1713)
!1712 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1713 = !{!1714, !1715, !1716}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1711, file: !1712, line: 99, baseType: !249, size: 64)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1711, file: !1712, line: 100, baseType: !270, size: 128, offset: 64)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1711, file: !1712, line: 101, baseType: !1717, size: 64, offset: 192)
!1717 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1712, line: 21, baseType: !1718)
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = !DISubroutineType(types: !1720)
!1720 = !{null, !1721}
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1581, file: !52, line: 986, baseType: !1723, offset: 10240)
!1723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, elements: !341)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1295, file: !1296, line: 882, baseType: !1580, size: 64, offset: 9792)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1295, file: !1296, line: 884, baseType: !114, size: 32, offset: 9856)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1295, file: !1296, line: 885, baseType: !114, size: 32, offset: 9888)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1295, file: !1296, line: 886, baseType: !114, size: 32, offset: 9920)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1295, file: !1296, line: 888, baseType: !114, size: 32, offset: 9952)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1295, file: !1296, line: 890, baseType: !113, size: 64, offset: 9984)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1295, file: !1296, line: 893, baseType: !7, size: 32, offset: 10048)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1295, file: !1296, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1295, file: !1296, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1295, file: !1296, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1295, file: !1296, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1295, file: !1296, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1295, file: !1296, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1295, file: !1296, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1295, file: !1296, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1295, file: !1296, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1295, file: !1296, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1295, file: !1296, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1295, file: !1296, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1295, file: !1296, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1295, file: !1296, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1295, file: !1296, line: 969, baseType: !113, size: 64, offset: 10176)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1295, file: !1296, line: 971, baseType: !1747, size: 448, offset: 10240)
!1747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !31, line: 25, size: 448, elements: !1748)
!1748 = !{!1749, !1750, !1755}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !1747, file: !31, line: 26, baseType: !113, size: 64)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1747, file: !31, line: 27, baseType: !1751, size: 64, offset: 64)
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1752 = !DISubroutineType(types: !1753)
!1753 = !{!751, !1754}
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1755 = !DIDerivedType(tag: DW_TAG_member, scope: !1747, file: !31, line: 28, baseType: !1756, size: 320, offset: 128)
!1756 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1747, file: !31, line: 28, size: 320, elements: !1757)
!1757 = !{!1758, !1768, !1793}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1756, file: !31, line: 37, baseType: !1759, size: 320)
!1759 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1756, file: !31, line: 30, size: 320, elements: !1760)
!1760 = !{!1761, !1763, !1764, !1765, !1766, !1767}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1759, file: !31, line: 31, baseType: !1762, size: 64)
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1759, file: !31, line: 32, baseType: !437, size: 32, offset: 64)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1759, file: !31, line: 33, baseType: !437, size: 32, offset: 96)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1759, file: !31, line: 34, baseType: !437, size: 32, offset: 128)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1759, file: !31, line: 35, baseType: !382, size: 64, offset: 192)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1759, file: !31, line: 36, baseType: !1762, size: 64, offset: 256)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1756, file: !31, line: 47, baseType: !1769, size: 192)
!1769 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1756, file: !31, line: 39, size: 192, elements: !1770)
!1770 = !{!1771, !1772, !1773, !1792}
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1769, file: !31, line: 40, baseType: !1451, size: 32)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1769, file: !31, line: 41, baseType: !30, size: 32, offset: 32)
!1773 = !DIDerivedType(tag: DW_TAG_member, scope: !1769, file: !31, line: 42, baseType: !1774, size: 64, offset: 64)
!1774 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1769, file: !31, line: 42, size: 64, elements: !1775)
!1775 = !{!1776, !1784}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1774, file: !31, line: 43, baseType: !1777, size: 64)
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1779, line: 7, size: 128, elements: !1780)
!1779 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!1780 = !{!1781, !1783}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1778, file: !1779, line: 8, baseType: !1782, size: 64)
!1782 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !180, line: 93, baseType: !181)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1778, file: !1779, line: 9, baseType: !181, size: 64, offset: 64)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1774, file: !31, line: 44, baseType: !1785, size: 64)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1787, line: 7, size: 64, elements: !1788)
!1787 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!1788 = !{!1789, !1791}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1786, file: !1787, line: 8, baseType: !1790, size: 32)
!1790 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1787, line: 5, baseType: !397)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1786, file: !1787, line: 9, baseType: !397, size: 32, offset: 32)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1769, file: !31, line: 46, baseType: !382, size: 64, offset: 128)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1756, file: !31, line: 55, baseType: !1794, size: 256)
!1794 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1756, file: !31, line: 49, size: 256, elements: !1795)
!1795 = !{!1796, !1799, !1800, !1801, !1802}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1794, file: !31, line: 50, baseType: !1797, size: 64)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !31, line: 14, flags: DIFlagFwdDecl)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1794, file: !31, line: 51, baseType: !114, size: 32, offset: 64)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1794, file: !31, line: 52, baseType: !114, size: 32, offset: 96)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1794, file: !31, line: 53, baseType: !113, size: 64, offset: 128)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1794, file: !31, line: 54, baseType: !113, size: 64, offset: 192)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1295, file: !1296, line: 973, baseType: !1804, size: 32, offset: 10688)
!1804 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !100, line: 27, baseType: !1805)
!1805 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !180, line: 28, baseType: !114)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1295, file: !1296, line: 974, baseType: !1804, size: 32, offset: 10720)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1295, file: !1296, line: 978, baseType: !113, size: 64, offset: 10752)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1295, file: !1296, line: 987, baseType: !1294, size: 64, offset: 10816)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1295, file: !1296, line: 990, baseType: !1294, size: 64, offset: 10880)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1295, file: !1296, line: 995, baseType: !270, size: 128, offset: 10944)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1295, file: !1296, line: 996, baseType: !270, size: 128, offset: 11072)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1295, file: !1296, line: 997, baseType: !1294, size: 64, offset: 11200)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1295, file: !1296, line: 1005, baseType: !270, size: 128, offset: 11264)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1295, file: !1296, line: 1006, baseType: !270, size: 128, offset: 11392)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1295, file: !1296, line: 1009, baseType: !302, size: 64, offset: 11520)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1295, file: !1296, line: 1010, baseType: !1817, size: 512, offset: 11584)
!1817 = !DICompositeType(tag: DW_TAG_array_type, baseType: !319, size: 512, elements: !124)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1295, file: !1296, line: 1011, baseType: !270, size: 128, offset: 12096)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1295, file: !1296, line: 1012, baseType: !270, size: 128, offset: 12224)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1295, file: !1296, line: 1014, baseType: !1821, size: 64, offset: 12352)
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1822, size: 64)
!1822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1823, line: 26, size: 256, elements: !1824)
!1823 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1824 = !{!1825, !1826}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1822, file: !1823, line: 27, baseType: !7, size: 32)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1822, file: !1823, line: 28, baseType: !1827, size: 192, offset: 64)
!1827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1828, line: 43, size: 192, elements: !1829)
!1828 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1829 = !{!1830, !1831}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1827, file: !1828, line: 44, baseType: !263, size: 32)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1827, file: !1828, line: 45, baseType: !270, size: 128, offset: 64)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1295, file: !1296, line: 1017, baseType: !949, size: 64, offset: 12416)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1295, file: !1296, line: 1020, baseType: !949, size: 64, offset: 12480)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1295, file: !1296, line: 1023, baseType: !98, size: 64, offset: 12544)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1295, file: !1296, line: 1025, baseType: !382, size: 64, offset: 12608)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1295, file: !1296, line: 1026, baseType: !382, size: 64, offset: 12672)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1295, file: !1296, line: 1031, baseType: !382, size: 64, offset: 12736)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1295, file: !1296, line: 1032, baseType: !1839, size: 192, offset: 12800)
!1839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1296, line: 324, size: 192, elements: !1840)
!1840 = !{!1841, !1842, !1843}
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1839, file: !1296, line: 326, baseType: !382, size: 64)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1839, file: !1296, line: 327, baseType: !382, size: 64, offset: 64)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1839, file: !1296, line: 328, baseType: !263, size: 32, offset: 128)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1295, file: !1296, line: 1041, baseType: !113, size: 64, offset: 12992)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1295, file: !1296, line: 1042, baseType: !113, size: 64, offset: 13056)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1295, file: !1296, line: 1045, baseType: !382, size: 64, offset: 13120)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1295, file: !1296, line: 1048, baseType: !382, size: 64, offset: 13184)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1295, file: !1296, line: 1051, baseType: !113, size: 64, offset: 13248)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1295, file: !1296, line: 1052, baseType: !113, size: 64, offset: 13312)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1295, file: !1296, line: 1055, baseType: !1851, size: 640, offset: 13376)
!1851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1852, line: 132, size: 640, elements: !1853)
!1852 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!1853 = !{!1854, !1860, !1861}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1851, file: !1852, line: 133, baseType: !1855, size: 576)
!1855 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1856, size: 576, elements: !161)
!1856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1852, line: 117, size: 192, elements: !1857)
!1857 = !{!1858, !1859}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1856, file: !1852, line: 118, baseType: !382, size: 64)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1856, file: !1852, line: 119, baseType: !1460, size: 128, offset: 64)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1851, file: !1852, line: 134, baseType: !7, size: 32, offset: 576)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1851, file: !1852, line: 135, baseType: !7, size: 32, offset: 608)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1295, file: !1296, line: 1058, baseType: !1863, size: 448, offset: 14016)
!1863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1852, line: 144, size: 448, elements: !1864)
!1864 = !{!1865, !1866, !1867}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1863, file: !1852, line: 145, baseType: !195, size: 128, align: 64)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1863, file: !1852, line: 146, baseType: !258, size: 256, offset: 128)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1863, file: !1852, line: 147, baseType: !7, size: 32, offset: 384)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1295, file: !1296, line: 1064, baseType: !355, size: 64, offset: 14464)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1295, file: !1296, line: 1067, baseType: !355, size: 64, offset: 14528)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1295, file: !1296, line: 1070, baseType: !355, size: 64, offset: 14592)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1295, file: !1296, line: 1074, baseType: !389, size: 64, offset: 14656)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1295, file: !1296, line: 1084, baseType: !1873, size: 128, offset: 14720)
!1873 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 128, elements: !1874)
!1874 = !{!1875}
!1875 = !DISubrange(count: 16)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1295, file: !1296, line: 1086, baseType: !1877, size: 64, offset: 14848)
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1878 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1296, line: 55, flags: DIFlagFwdDecl)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1295, file: !1296, line: 1089, baseType: !1880, size: 64, offset: 14912)
!1880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !1881, line: 12, size: 64, elements: !1882)
!1881 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!1882 = !{!1883}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !1880, file: !1881, line: 13, baseType: !1884, size: 64)
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1885 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !1881, line: 8, flags: DIFlagFwdDecl)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1295, file: !1296, line: 1090, baseType: !1887, size: 128, offset: 14976)
!1887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !1888, line: 13, size: 128, elements: !1889)
!1888 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!1889 = !{!1890}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !1887, file: !1888, line: 14, baseType: !270, size: 128)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1295, file: !1296, line: 1097, baseType: !1892, size: 64, offset: 15104)
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1893, size: 64)
!1893 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1296, line: 50, flags: DIFlagFwdDecl)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1295, file: !1296, line: 1100, baseType: !1895, size: 64, offset: 15168)
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1296, line: 1100, flags: DIFlagFwdDecl)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1295, file: !1296, line: 1103, baseType: !1898, size: 64, offset: 15232)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1296, line: 53, flags: DIFlagFwdDecl)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1295, file: !1296, line: 1107, baseType: !1901, size: 64, offset: 15296)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1296, line: 56, flags: DIFlagFwdDecl)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1295, file: !1296, line: 1110, baseType: !1904, size: 64, offset: 15360)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1906, line: 93, size: 8768, elements: !1907)
!1906 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!1907 = !{!1908, !1909, !1910, !1911, !1912, !1913, !1914, !1915, !1925, !1926, !1927, !1928, !1929, !1930, !1931, !1943, !1944, !1945, !1946, !1947, !1948, !1949, !1957, !1966, !1967, !1969, !1970, !1971, !1974, !1980, !1981, !1982, !1983, !1984, !1985, !1986, !1987, !1988, !1989, !1990, !1991, !1992, !1993, !1994, !1995, !1996, !1997, !1998, !1999, !2000, !2001, !2012, !2013, !2020, !2030, !2033, !2034, !2037, !2038, !2039, !2040, !2041, !2042}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1905, file: !1906, line: 94, baseType: !306, size: 32)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1905, file: !1906, line: 95, baseType: !225, size: 32, offset: 32)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1905, file: !1906, line: 96, baseType: !114, size: 32, offset: 64)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !1905, file: !1906, line: 97, baseType: !114, size: 32, offset: 96)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1905, file: !1906, line: 98, baseType: !270, size: 128, offset: 128)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1905, file: !1906, line: 100, baseType: !326, size: 192, offset: 256)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1905, file: !1906, line: 103, baseType: !1294, size: 64, offset: 448)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1905, file: !1906, line: 106, baseType: !1916, size: 192, offset: 512)
!1916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !563, line: 32, size: 192, elements: !1917)
!1917 = !{!1918, !1919}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1916, file: !563, line: 33, baseType: !270, size: 128)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1916, file: !563, line: 34, baseType: !1920, size: 64, offset: 128)
!1920 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1921, line: 25, baseType: !1922)
!1921 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!1922 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1921, line: 23, size: 64, elements: !1923)
!1923 = !{!1924}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1922, file: !1921, line: 24, baseType: !1531, size: 64)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1905, file: !1906, line: 109, baseType: !315, size: 64, offset: 704)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1905, file: !1906, line: 112, baseType: !114, size: 32, offset: 768)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1905, file: !1906, line: 114, baseType: !114, size: 32, offset: 800)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !1905, file: !1906, line: 115, baseType: !1294, size: 64, offset: 832)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1905, file: !1906, line: 118, baseType: !114, size: 32, offset: 896)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1905, file: !1906, line: 119, baseType: !7, size: 32, offset: 928)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1905, file: !1906, line: 121, baseType: !1932, size: 64, offset: 960)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !1906, line: 80, size: 448, elements: !1934)
!1934 = !{!1935, !1936, !1942}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1933, file: !1906, line: 81, baseType: !225, size: 32)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1933, file: !1906, line: 82, baseType: !1937, size: 128, offset: 64)
!1937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !1906, line: 75, size: 128, elements: !1938)
!1938 = !{!1939, !1940}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1937, file: !1906, line: 76, baseType: !1294, size: 64)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1937, file: !1906, line: 77, baseType: !1941, size: 64, offset: 64)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1933, file: !1906, line: 83, baseType: !1822, size: 256, offset: 192)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1905, file: !1906, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1905, file: !1906, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !1905, file: !1906, line: 138, baseType: !7, size: 32, offset: 1056)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1905, file: !1906, line: 139, baseType: !270, size: 128, offset: 1088)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1905, file: !1906, line: 142, baseType: !1406, size: 512, offset: 1216)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1905, file: !1906, line: 143, baseType: !1414, size: 64, offset: 1728)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1905, file: !1906, line: 150, baseType: !1950, size: 256, offset: 1792)
!1950 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1951, size: 256, elements: !1955)
!1951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1906, line: 38, size: 128, elements: !1952)
!1952 = !{!1953, !1954}
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1951, file: !1906, line: 39, baseType: !382, size: 64)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1951, file: !1906, line: 40, baseType: !382, size: 64, offset: 64)
!1955 = !{!1956}
!1956 = !DISubrange(count: 2)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1905, file: !1906, line: 156, baseType: !1958, size: 192, offset: 2048)
!1958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1906, line: 66, size: 192, elements: !1959)
!1959 = !{!1960}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1958, file: !1906, line: 67, baseType: !1961, size: 192)
!1961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1906, line: 47, size: 192, elements: !1962)
!1962 = !{!1963, !1964, !1965}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1961, file: !1906, line: 48, baseType: !251, size: 64)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1961, file: !1906, line: 49, baseType: !251, size: 64, offset: 64)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1961, file: !1906, line: 50, baseType: !251, size: 64, offset: 128)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1905, file: !1906, line: 160, baseType: !1851, size: 640, offset: 2240)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1905, file: !1906, line: 163, baseType: !1968, size: 256, offset: 2880)
!1968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !302, size: 256, elements: !124)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1905, file: !1906, line: 169, baseType: !302, size: 64, offset: 3136)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1905, file: !1906, line: 172, baseType: !114, size: 32, offset: 3200)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1905, file: !1906, line: 174, baseType: !1972, size: 64, offset: 3264)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1906, line: 174, flags: DIFlagFwdDecl)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1905, file: !1906, line: 185, baseType: !1975, size: 64, offset: 3328)
!1975 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !603, line: 860, baseType: !1976)
!1976 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !603, line: 853, size: 64, elements: !1977)
!1977 = !{!1978, !1979}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1976, file: !603, line: 858, baseType: !602, size: 32)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1976, file: !603, line: 859, baseType: !205, size: 32, offset: 32)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1905, file: !1906, line: 186, baseType: !382, size: 64, offset: 3392)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1905, file: !1906, line: 186, baseType: !382, size: 64, offset: 3456)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1905, file: !1906, line: 186, baseType: !382, size: 64, offset: 3520)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1905, file: !1906, line: 186, baseType: !382, size: 64, offset: 3584)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1905, file: !1906, line: 187, baseType: !382, size: 64, offset: 3648)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1905, file: !1906, line: 188, baseType: !382, size: 64, offset: 3712)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1905, file: !1906, line: 189, baseType: !1839, size: 192, offset: 3776)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1905, file: !1906, line: 190, baseType: !113, size: 64, offset: 3968)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1905, file: !1906, line: 190, baseType: !113, size: 64, offset: 4032)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1905, file: !1906, line: 190, baseType: !113, size: 64, offset: 4096)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1905, file: !1906, line: 190, baseType: !113, size: 64, offset: 4160)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1905, file: !1906, line: 191, baseType: !113, size: 64, offset: 4224)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1905, file: !1906, line: 191, baseType: !113, size: 64, offset: 4288)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1905, file: !1906, line: 191, baseType: !113, size: 64, offset: 4352)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1905, file: !1906, line: 191, baseType: !113, size: 64, offset: 4416)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1905, file: !1906, line: 192, baseType: !113, size: 64, offset: 4480)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1905, file: !1906, line: 192, baseType: !113, size: 64, offset: 4544)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1905, file: !1906, line: 192, baseType: !113, size: 64, offset: 4608)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1905, file: !1906, line: 192, baseType: !113, size: 64, offset: 4672)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1905, file: !1906, line: 193, baseType: !113, size: 64, offset: 4736)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1905, file: !1906, line: 193, baseType: !113, size: 64, offset: 4800)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1905, file: !1906, line: 194, baseType: !2002, size: 448, offset: 4864)
!2002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2003, line: 12, size: 448, elements: !2004)
!2003 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2004 = !{!2005, !2006, !2007, !2008, !2009, !2010, !2011}
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2002, file: !2003, line: 15, baseType: !382, size: 64)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2002, file: !2003, line: 17, baseType: !382, size: 64, offset: 64)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2002, file: !2003, line: 19, baseType: !382, size: 64, offset: 128)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2002, file: !2003, line: 21, baseType: !382, size: 64, offset: 192)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2002, file: !2003, line: 29, baseType: !382, size: 64, offset: 256)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2002, file: !2003, line: 35, baseType: !382, size: 64, offset: 320)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2002, file: !2003, line: 44, baseType: !382, size: 64, offset: 384)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1905, file: !1906, line: 202, baseType: !111, size: 64, offset: 5312)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1905, file: !1906, line: 213, baseType: !2014, size: 2048, offset: 5376)
!2014 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2015, size: 2048, elements: !1874)
!2015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2016, line: 43, size: 128, elements: !2017)
!2016 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2017 = !{!2018, !2019}
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2015, file: !2016, line: 44, baseType: !795, size: 64)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2015, file: !2016, line: 45, baseType: !795, size: 64, offset: 64)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !1905, file: !1906, line: 216, baseType: !2021, size: 448, offset: 7424)
!2021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !1906, line: 30, size: 448, elements: !2022)
!2022 = !{!2023, !2024, !2025, !2026, !2027, !2028, !2029}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2021, file: !1906, line: 31, baseType: !114, size: 32)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2021, file: !1906, line: 32, baseType: !751, size: 64, offset: 64)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2021, file: !1906, line: 33, baseType: !113, size: 64, offset: 128)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2021, file: !1906, line: 34, baseType: !382, size: 64, offset: 192)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2021, file: !1906, line: 34, baseType: !382, size: 64, offset: 256)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2021, file: !1906, line: 35, baseType: !113, size: 64, offset: 320)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2021, file: !1906, line: 35, baseType: !113, size: 64, offset: 384)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1905, file: !1906, line: 219, baseType: !2031, size: 64, offset: 7872)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !1906, line: 219, flags: DIFlagFwdDecl)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !1905, file: !1906, line: 222, baseType: !7, size: 32, offset: 7936)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !1905, file: !1906, line: 223, baseType: !2035, size: 64, offset: 8000)
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !1906, line: 223, flags: DIFlagFwdDecl)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1905, file: !1906, line: 230, baseType: !472, size: 8, offset: 8064)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1905, file: !1906, line: 231, baseType: !441, size: 16, offset: 8080)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1905, file: !1906, line: 232, baseType: !441, size: 16, offset: 8096)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1905, file: !1906, line: 234, baseType: !1580, size: 64, offset: 8128)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1905, file: !1906, line: 237, baseType: !258, size: 256, offset: 8192)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !1905, file: !1906, line: 243, baseType: !412, size: 320, offset: 8448)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1295, file: !1296, line: 1111, baseType: !2044, size: 64, offset: 15424)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1906, line: 20, size: 16640, elements: !2046)
!2046 = !{!2047, !2048, !2049, !2050}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2045, file: !1906, line: 21, baseType: !205, size: 32)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2045, file: !1906, line: 22, baseType: !306, size: 32, offset: 32)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2045, file: !1906, line: 23, baseType: !326, size: 192, offset: 64)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2045, file: !1906, line: 24, baseType: !2051, size: 16384, offset: 256)
!2051 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2052, size: 16384, elements: !2072)
!2052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !563, line: 51, size: 256, elements: !2053)
!2053 = !{!2054}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2052, file: !563, line: 52, baseType: !2055, size: 256)
!2055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !563, line: 37, size: 256, elements: !2056)
!2056 = !{!2057, !2064, !2065, !2071}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2055, file: !563, line: 39, baseType: !2058, size: 64)
!2058 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2059, line: 83, baseType: !2060)
!2059 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2061, size: 64)
!2061 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2059, line: 82, baseType: !2062)
!2062 = !DISubroutineType(types: !2063)
!2063 = !{null, !114}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2055, file: !563, line: 40, baseType: !113, size: 64, offset: 64)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2055, file: !563, line: 46, baseType: !2066, size: 64, offset: 128)
!2066 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2059, line: 86, baseType: !2067)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2059, line: 85, baseType: !2069)
!2069 = !DISubroutineType(types: !2070)
!2070 = !{null}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2055, file: !563, line: 48, baseType: !1920, size: 64, offset: 192)
!2072 = !{!2073}
!2073 = !DISubrange(count: 64)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1295, file: !1296, line: 1112, baseType: !1920, size: 64, offset: 15488)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1295, file: !1296, line: 1113, baseType: !1920, size: 64, offset: 15552)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1295, file: !1296, line: 1115, baseType: !1920, size: 64, offset: 15616)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1295, file: !1296, line: 1116, baseType: !1916, size: 192, offset: 15680)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1295, file: !1296, line: 1117, baseType: !113, size: 64, offset: 15872)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1295, file: !1296, line: 1118, baseType: !793, size: 64, offset: 15936)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1295, file: !1296, line: 1119, baseType: !7, size: 32, offset: 16000)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1295, file: !1296, line: 1121, baseType: !198, size: 64, offset: 16064)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1295, file: !1296, line: 1125, baseType: !2083, size: 64, offset: 16128)
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64)
!2084 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1296, line: 43, flags: DIFlagFwdDecl)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1295, file: !1296, line: 1127, baseType: !345, size: 32, offset: 16192)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1295, file: !1296, line: 1128, baseType: !7, size: 32, offset: 16224)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1295, file: !1296, line: 1130, baseType: !2088, size: 128, offset: 16256)
!2088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2089, line: 37, size: 128, elements: !2090)
!2089 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2090 = !{!2091, !2092, !2093}
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2088, file: !2089, line: 38, baseType: !114, size: 32)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2088, file: !2089, line: 39, baseType: !225, size: 32, offset: 32)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2088, file: !2089, line: 40, baseType: !2094, size: 64, offset: 64)
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!2095 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2089, line: 24, flags: DIFlagFwdDecl)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1295, file: !1296, line: 1131, baseType: !2097, size: 256, offset: 16384)
!2097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2098, line: 12, size: 256, elements: !2099)
!2098 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2099 = !{!2100, !2101, !2102, !2103}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2097, file: !2098, line: 13, baseType: !485, size: 64)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2097, file: !2098, line: 14, baseType: !113, size: 64, offset: 64)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2097, file: !2098, line: 15, baseType: !113, size: 64, offset: 128)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2097, file: !2098, line: 16, baseType: !472, size: 8, offset: 192)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1295, file: !1296, line: 1134, baseType: !382, size: 64, offset: 16640)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1295, file: !1296, line: 1135, baseType: !382, size: 64, offset: 16704)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1295, file: !1296, line: 1138, baseType: !205, size: 32, offset: 16768)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1295, file: !1296, line: 1141, baseType: !263, size: 32, offset: 16800)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1295, file: !1296, line: 1143, baseType: !2109, size: 64, offset: 16832)
!2109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1296, line: 735, size: 64, elements: !2110)
!2110 = !{!2111}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2109, file: !1296, line: 736, baseType: !2112, size: 64)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2109, size: 64)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1295, file: !1296, line: 1147, baseType: !1463, size: 128, offset: 16896)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1295, file: !1296, line: 1149, baseType: !1294, size: 64, offset: 17024)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1295, file: !1296, line: 1151, baseType: !2116, size: 64, offset: 17088)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1296, line: 1151, flags: DIFlagFwdDecl)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1295, file: !1296, line: 1188, baseType: !98, size: 64, offset: 17152)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1295, file: !1296, line: 1191, baseType: !2120, size: 64, offset: 17216)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2121 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1296, line: 44, flags: DIFlagFwdDecl)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1295, file: !1296, line: 1194, baseType: !2123, size: 64, offset: 17280)
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2124, size: 64)
!2124 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1296, line: 45, flags: DIFlagFwdDecl)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1295, file: !1296, line: 1197, baseType: !2126, size: 64, offset: 17344)
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2127 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1296, line: 61, flags: DIFlagFwdDecl)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1295, file: !1296, line: 1199, baseType: !2129, size: 64, offset: 17408)
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2131, line: 99, size: 128, elements: !2132)
!2131 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2132 = !{!2133, !2134, !2135}
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2130, file: !2131, line: 100, baseType: !249, size: 64)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2130, file: !2131, line: 101, baseType: !225, size: 32, offset: 64)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2130, file: !2131, line: 103, baseType: !244, size: 16, offset: 96)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1295, file: !1296, line: 1202, baseType: !2137, size: 64, offset: 17472)
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2138 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1296, line: 48, flags: DIFlagFwdDecl)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1295, file: !1296, line: 1205, baseType: !113, size: 64, offset: 17536)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1295, file: !1296, line: 1206, baseType: !2141, size: 64, offset: 17600)
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2142 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !563, line: 14, baseType: !2143)
!2143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !563, line: 12, size: 384, elements: !2144)
!2144 = !{!2145}
!2145 = !DIDerivedType(tag: DW_TAG_member, scope: !2143, file: !563, line: 13, baseType: !2146, size: 384)
!2146 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2143, file: !563, line: 13, size: 384, elements: !2147)
!2147 = !{!2148, !2149, !2150, !2151}
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2146, file: !563, line: 13, baseType: !114, size: 32)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2146, file: !563, line: 13, baseType: !114, size: 32, offset: 32)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2146, file: !563, line: 13, baseType: !114, size: 32, offset: 64)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2146, file: !563, line: 13, baseType: !2152, size: 256, offset: 128)
!2152 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2153, line: 37, size: 256, elements: !2154)
!2153 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2154 = !{!2155, !2160, !2173, !2179, !2188, !2214, !2219}
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2152, file: !2153, line: 42, baseType: !2156, size: 64)
!2156 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2152, file: !2153, line: 39, size: 64, elements: !2157)
!2157 = !{!2158, !2159}
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2156, file: !2153, line: 40, baseType: !1805, size: 32)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2156, file: !2153, line: 41, baseType: !351, size: 32, offset: 32)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2152, file: !2153, line: 50, baseType: !2161, size: 192)
!2161 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2152, file: !2153, line: 45, size: 192, elements: !2162)
!2162 = !{!2163, !2165, !2166, !2172}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2161, file: !2153, line: 46, baseType: !2164, size: 32)
!2164 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !180, line: 95, baseType: !114)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2161, file: !2153, line: 47, baseType: !114, size: 32, offset: 32)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2161, file: !2153, line: 48, baseType: !2167, size: 64, offset: 64)
!2167 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2153, line: 11, baseType: !2168)
!2168 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2153, line: 8, size: 64, elements: !2169)
!2169 = !{!2170, !2171}
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2168, file: !2153, line: 9, baseType: !114, size: 32)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2168, file: !2153, line: 10, baseType: !98, size: 64)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2161, file: !2153, line: 49, baseType: !114, size: 32, offset: 128)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2152, file: !2153, line: 57, baseType: !2174, size: 128)
!2174 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2152, file: !2153, line: 53, size: 128, elements: !2175)
!2175 = !{!2176, !2177, !2178}
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2174, file: !2153, line: 54, baseType: !1805, size: 32)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2174, file: !2153, line: 55, baseType: !351, size: 32, offset: 32)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2174, file: !2153, line: 56, baseType: !2167, size: 64, offset: 64)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2152, file: !2153, line: 66, baseType: !2180, size: 256)
!2180 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2152, file: !2153, line: 60, size: 256, elements: !2181)
!2181 = !{!2182, !2183, !2184, !2185, !2187}
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2180, file: !2153, line: 61, baseType: !1805, size: 32)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2180, file: !2153, line: 62, baseType: !351, size: 32, offset: 32)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2180, file: !2153, line: 63, baseType: !114, size: 32, offset: 64)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2180, file: !2153, line: 64, baseType: !2186, size: 64, offset: 128)
!2186 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !180, line: 94, baseType: !792)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2180, file: !2153, line: 65, baseType: !2186, size: 64, offset: 192)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2152, file: !2153, line: 105, baseType: !2189, size: 256)
!2189 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2152, file: !2153, line: 69, size: 256, elements: !2190)
!2190 = !{!2191, !2192}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2189, file: !2153, line: 70, baseType: !98, size: 64)
!2192 = !DIDerivedType(tag: DW_TAG_member, scope: !2189, file: !2153, line: 79, baseType: !2193, size: 192, offset: 64)
!2193 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2189, file: !2153, line: 79, size: 192, elements: !2194)
!2194 = !{!2195, !2196, !2197, !2203, !2208}
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2193, file: !2153, line: 81, baseType: !114, size: 32)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2193, file: !2153, line: 86, baseType: !441, size: 16)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2193, file: !2153, line: 92, baseType: !2198, size: 192)
!2198 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2193, file: !2153, line: 88, size: 192, elements: !2199)
!2199 = !{!2200, !2201, !2202}
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2198, file: !2153, line: 89, baseType: !133, size: 64)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2198, file: !2153, line: 90, baseType: !98, size: 64, offset: 64)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2198, file: !2153, line: 91, baseType: !98, size: 64, offset: 128)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2193, file: !2153, line: 97, baseType: !2204, size: 96)
!2204 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2193, file: !2153, line: 94, size: 96, elements: !2205)
!2205 = !{!2206, !2207}
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2204, file: !2153, line: 95, baseType: !133, size: 64)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2204, file: !2153, line: 96, baseType: !106, size: 32, offset: 64)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2193, file: !2153, line: 103, baseType: !2209, size: 128)
!2209 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2193, file: !2153, line: 99, size: 128, elements: !2210)
!2210 = !{!2211, !2212, !2213}
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2209, file: !2153, line: 100, baseType: !113, size: 64)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2209, file: !2153, line: 101, baseType: !106, size: 32, offset: 64)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2209, file: !2153, line: 102, baseType: !106, size: 32, offset: 96)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2152, file: !2153, line: 111, baseType: !2215, size: 128)
!2215 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2152, file: !2153, line: 108, size: 128, elements: !2216)
!2216 = !{!2217, !2218}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2215, file: !2153, line: 109, baseType: !751, size: 64)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2215, file: !2153, line: 110, baseType: !114, size: 32, offset: 64)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2152, file: !2153, line: 118, baseType: !2220, size: 128)
!2220 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2152, file: !2153, line: 114, size: 128, elements: !2221)
!2221 = !{!2222, !2223, !2224}
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2220, file: !2153, line: 115, baseType: !98, size: 64)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2220, file: !2153, line: 116, baseType: !114, size: 32, offset: 64)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2220, file: !2153, line: 117, baseType: !7, size: 32, offset: 96)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1295, file: !1296, line: 1208, baseType: !2002, size: 448, offset: 17664)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1295, file: !1296, line: 1215, baseType: !382, size: 64, offset: 18112)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1295, file: !1296, line: 1217, baseType: !382, size: 64, offset: 18176)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1295, file: !1296, line: 1219, baseType: !382, size: 64, offset: 18240)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1295, file: !1296, line: 1223, baseType: !2230, size: 64, offset: 18304)
!2230 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2231, line: 99, baseType: !2232)
!2231 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2232 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2231, line: 99, size: 64, elements: !2233)
!2233 = !{!2234}
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2232, file: !2231, line: 99, baseType: !1531, size: 64)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1295, file: !1296, line: 1225, baseType: !602, size: 32, offset: 18368)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1295, file: !1296, line: 1226, baseType: !114, size: 32, offset: 18400)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1295, file: !1296, line: 1227, baseType: !114, size: 32, offset: 18432)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1295, file: !1296, line: 1231, baseType: !2239, size: 64, offset: 18496)
!2239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2240, size: 64)
!2240 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1296, line: 1231, flags: DIFlagFwdDecl)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1295, file: !1296, line: 1233, baseType: !270, size: 128, offset: 18560)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1295, file: !1296, line: 1240, baseType: !2243, size: 64, offset: 18688)
!2243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2244, size: 64)
!2244 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1296, line: 62, flags: DIFlagFwdDecl)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1295, file: !1296, line: 1242, baseType: !2246, size: 64, offset: 18752)
!2246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2247, size: 64)
!2247 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1296, line: 1242, flags: DIFlagFwdDecl)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1295, file: !1296, line: 1244, baseType: !270, size: 128, offset: 18816)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1295, file: !1296, line: 1245, baseType: !2250, size: 64, offset: 18944)
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64)
!2251 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1296, line: 51, flags: DIFlagFwdDecl)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1295, file: !1296, line: 1246, baseType: !258, size: 256, offset: 19008)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1295, file: !1296, line: 1247, baseType: !7, size: 32, offset: 19264)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1295, file: !1296, line: 1250, baseType: !2255, size: 64, offset: 19328)
!2255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2256, size: 64)
!2256 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1296, line: 57, flags: DIFlagFwdDecl)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1295, file: !1296, line: 1251, baseType: !258, size: 256, offset: 19392)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1295, file: !1296, line: 1252, baseType: !270, size: 128, offset: 19648)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1295, file: !1296, line: 1259, baseType: !2260, size: 64, offset: 19776)
!2260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2261, size: 64)
!2261 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !52, line: 717, flags: DIFlagFwdDecl)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1295, file: !1296, line: 1260, baseType: !441, size: 16, offset: 19840)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1295, file: !1296, line: 1261, baseType: !441, size: 16, offset: 19856)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1295, file: !1296, line: 1314, baseType: !2265, size: 64, offset: 19904)
!2265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2266, size: 64)
!2266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2267, line: 62, size: 256, align: 256, elements: !2268)
!2267 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2268 = !{!2269, !2270, !2271, !2272, !2273, !2274, !2275}
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2266, file: !2267, line: 75, baseType: !106, size: 32)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2266, file: !2267, line: 90, baseType: !106, size: 32, offset: 32)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2266, file: !2267, line: 112, baseType: !110, size: 64, offset: 64)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2266, file: !2267, line: 132, baseType: !106, size: 32, offset: 128)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2266, file: !2267, line: 140, baseType: !106, size: 32, offset: 160)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2266, file: !2267, line: 149, baseType: !106, size: 32, offset: 192)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2266, file: !2267, line: 154, baseType: !2276, offset: 224)
!2276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, elements: !341)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1295, file: !1296, line: 1315, baseType: !437, size: 32, offset: 19968)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1295, file: !1296, line: 1316, baseType: !437, size: 32, offset: 20000)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1295, file: !1296, line: 1321, baseType: !113, size: 64, offset: 20032)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1295, file: !1296, line: 1325, baseType: !114, size: 32, offset: 20096)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1295, file: !1296, line: 1326, baseType: !114, size: 32, offset: 20128)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1295, file: !1296, line: 1327, baseType: !114, size: 32, offset: 20160)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1295, file: !1296, line: 1328, baseType: !114, size: 32, offset: 20192)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1295, file: !1296, line: 1329, baseType: !195, size: 128, align: 64, offset: 20224)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1295, file: !1296, line: 1332, baseType: !2286, size: 128, offset: 20352)
!2286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2287, line: 51, size: 128, elements: !2288)
!2287 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2288 = !{!2289, !2294, !2295}
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2286, file: !2287, line: 60, baseType: !2290, size: 64)
!2290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2291, line: 7, size: 64, elements: !2292)
!2291 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2292 = !{!2293}
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2290, file: !2291, line: 12, baseType: !1528, size: 64)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2286, file: !2287, line: 63, baseType: !472, size: 8, offset: 64)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2286, file: !2287, line: 70, baseType: !472, size: 8, offset: 72)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1295, file: !1296, line: 1335, baseType: !2297, size: 64, offset: 20480)
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2298, size: 64)
!2298 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1296, line: 59, flags: DIFlagFwdDecl)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1295, file: !1296, line: 1337, baseType: !2300, size: 128, offset: 20544)
!2300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2287, line: 39, size: 128, elements: !2301)
!2301 = !{!2302, !2789, !2790}
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2300, file: !2287, line: 40, baseType: !2303, size: 64)
!2303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2304, size: 64)
!2304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !52, line: 74, size: 512, align: 128, elements: !2305)
!2305 = !{!2306, !2307, !2783, !2788}
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2304, file: !52, line: 75, baseType: !113, size: 64)
!2307 = !DIDerivedType(tag: DW_TAG_member, scope: !2304, file: !52, line: 83, baseType: !2308, size: 320, offset: 64)
!2308 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2304, file: !52, line: 83, size: 320, elements: !2309)
!2309 = !{!2310, !2534, !2548, !2552, !2782}
!2310 = !DIDerivedType(tag: DW_TAG_member, scope: !2308, file: !52, line: 84, baseType: !2311, size: 320)
!2311 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2308, file: !52, line: 84, size: 320, elements: !2312)
!2312 = !{!2313, !2324, !2528, !2533}
!2313 = !DIDerivedType(tag: DW_TAG_member, scope: !2311, file: !52, line: 90, baseType: !2314, size: 128)
!2314 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2311, file: !52, line: 90, size: 128, elements: !2315)
!2315 = !{!2316, !2317, !2322, !2323}
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2314, file: !52, line: 91, baseType: !270, size: 128)
!2317 = !DIDerivedType(tag: DW_TAG_member, scope: !2314, file: !52, line: 94, baseType: !2318, size: 128)
!2318 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2314, file: !52, line: 94, size: 128, elements: !2319)
!2319 = !{!2320, !2321}
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2318, file: !52, line: 96, baseType: !98, size: 64)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2318, file: !52, line: 98, baseType: !7, size: 32, offset: 64)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2314, file: !52, line: 102, baseType: !270, size: 128)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2314, file: !52, line: 103, baseType: !270, size: 128)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2311, file: !52, line: 106, baseType: !2325, size: 64, offset: 128)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !15, line: 472, size: 1536, align: 64, elements: !2327)
!2327 = !{!2328, !2329, !2330, !2331, !2332, !2333, !2334, !2335, !2336, !2520, !2521, !2522, !2525, !2526, !2527}
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !2326, file: !15, line: 473, baseType: !636, size: 64)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !2326, file: !15, line: 474, baseType: !840, size: 128, offset: 64)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !2326, file: !15, line: 475, baseType: !412, size: 320, offset: 192)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2326, file: !15, line: 476, baseType: !99, size: 32, offset: 512)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !2326, file: !15, line: 477, baseType: !225, size: 32, offset: 544)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !2326, file: !15, line: 482, baseType: !1463, size: 128, offset: 576)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !2326, file: !15, line: 483, baseType: !113, size: 64, offset: 704)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !2326, file: !15, line: 484, baseType: !113, size: 64, offset: 768)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !2326, file: !15, line: 485, baseType: !2337, size: 64, offset: 832)
!2337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2338, size: 64)
!2338 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2339)
!2339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !15, line: 404, size: 1280, elements: !2340)
!2340 = !{!2341, !2345, !2415, !2419, !2423, !2429, !2435, !2439, !2444, !2448, !2452, !2456, !2484, !2488, !2492, !2496, !2501, !2505, !2512, !2516}
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !2339, file: !15, line: 405, baseType: !2342, size: 64)
!2342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2343, size: 64)
!2343 = !DISubroutineType(types: !2344)
!2344 = !{!114, !2303, !917}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !2339, file: !15, line: 406, baseType: !2346, size: 64, offset: 64)
!2346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2347, size: 64)
!2347 = !DISubroutineType(types: !2348)
!2348 = !{!114, !182, !2349}
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2350, size: 64)
!2350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !52, line: 293, size: 1536, elements: !2351)
!2351 = !{!2352, !2382, !2396}
!2352 = !DIDerivedType(tag: DW_TAG_member, scope: !2350, file: !52, line: 295, baseType: !2353, size: 512)
!2353 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2350, file: !52, line: 295, size: 512, elements: !2354)
!2354 = !{!2355, !2381}
!2355 = !DIDerivedType(tag: DW_TAG_member, scope: !2353, file: !52, line: 296, baseType: !2356, size: 448)
!2356 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2353, file: !52, line: 296, size: 448, elements: !2357)
!2357 = !{!2358, !2359, !2368, !2369, !2370, !2379, !2380}
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2356, file: !52, line: 298, baseType: !113, size: 64)
!2359 = !DIDerivedType(tag: DW_TAG_member, scope: !2356, file: !52, line: 299, baseType: !2360, size: 128, offset: 64)
!2360 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2356, file: !52, line: 299, size: 128, elements: !2361)
!2361 = !{!2362, !2363}
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2360, file: !52, line: 300, baseType: !270, size: 128)
!2363 = !DIDerivedType(tag: DW_TAG_member, scope: !2360, file: !52, line: 302, baseType: !2364, size: 128)
!2364 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2360, file: !52, line: 302, size: 128, elements: !2365)
!2365 = !{!2366, !2367}
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2364, file: !52, line: 303, baseType: !98, size: 64)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2364, file: !52, line: 305, baseType: !7, size: 32, offset: 64)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2356, file: !52, line: 310, baseType: !2325, size: 64, offset: 192)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2356, file: !52, line: 311, baseType: !113, size: 64, offset: 256)
!2370 = !DIDerivedType(tag: DW_TAG_member, scope: !2356, file: !52, line: 312, baseType: !2371, size: 64, offset: 320)
!2371 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2356, file: !52, line: 312, size: 64, elements: !2372)
!2372 = !{!2373, !2374}
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2371, file: !52, line: 313, baseType: !98, size: 64)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !2371, file: !52, line: 314, baseType: !2375, size: 64)
!2375 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !52, line: 257, baseType: !2376)
!2376 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !52, line: 255, size: 64, elements: !2377)
!2377 = !{!2378}
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2376, file: !52, line: 256, baseType: !113, size: 64)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2356, file: !52, line: 316, baseType: !225, size: 32, offset: 384)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2356, file: !52, line: 317, baseType: !225, size: 32, offset: 416)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2353, file: !52, line: 323, baseType: !2304, size: 512, align: 128)
!2382 = !DIDerivedType(tag: DW_TAG_member, scope: !2350, file: !52, line: 325, baseType: !2383, size: 512, offset: 512)
!2383 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2350, file: !52, line: 325, size: 512, elements: !2384)
!2384 = !{!2385, !2395}
!2385 = !DIDerivedType(tag: DW_TAG_member, scope: !2383, file: !52, line: 326, baseType: !2386, size: 320)
!2386 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2383, file: !52, line: 326, size: 320, elements: !2387)
!2387 = !{!2388, !2389, !2390, !2391, !2392, !2393, !2394}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !2386, file: !52, line: 327, baseType: !113, size: 64)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !2386, file: !52, line: 328, baseType: !113, size: 64, offset: 64)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !2386, file: !52, line: 329, baseType: !113, size: 64, offset: 128)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !2386, file: !52, line: 331, baseType: !225, size: 32, offset: 192)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !2386, file: !52, line: 332, baseType: !225, size: 32, offset: 224)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !2386, file: !52, line: 333, baseType: !225, size: 32, offset: 256)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !2386, file: !52, line: 335, baseType: !7, size: 32, offset: 288)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !2383, file: !52, line: 339, baseType: !2304, size: 512, align: 128)
!2396 = !DIDerivedType(tag: DW_TAG_member, scope: !2350, file: !52, line: 341, baseType: !2397, size: 512, offset: 1024)
!2397 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2350, file: !52, line: 341, size: 512, elements: !2398)
!2398 = !{!2399, !2408, !2414}
!2399 = !DIDerivedType(tag: DW_TAG_member, scope: !2397, file: !52, line: 342, baseType: !2400, size: 384)
!2400 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2397, file: !52, line: 342, size: 384, elements: !2401)
!2401 = !{!2402, !2403, !2404, !2405, !2406, !2407}
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !2400, file: !52, line: 343, baseType: !113, size: 64)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !2400, file: !52, line: 344, baseType: !113, size: 64, offset: 64)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !2400, file: !52, line: 346, baseType: !98, size: 64, offset: 128)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !2400, file: !52, line: 347, baseType: !98, size: 64, offset: 192)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !2400, file: !52, line: 348, baseType: !98, size: 64, offset: 256)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !2400, file: !52, line: 349, baseType: !98, size: 64, offset: 320)
!2408 = !DIDerivedType(tag: DW_TAG_member, scope: !2397, file: !52, line: 352, baseType: !2409, size: 256)
!2409 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2397, file: !52, line: 352, size: 256, elements: !2410)
!2410 = !{!2411, !2412, !2413}
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !2409, file: !52, line: 353, baseType: !113, size: 64)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !2409, file: !52, line: 354, baseType: !113, size: 64, offset: 64)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !2409, file: !52, line: 356, baseType: !270, size: 128, offset: 128)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !2397, file: !52, line: 359, baseType: !2304, size: 512, align: 128)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !2339, file: !15, line: 409, baseType: !2416, size: 64, offset: 128)
!2416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2417, size: 64)
!2417 = !DISubroutineType(types: !2418)
!2418 = !{!114, !2325, !917}
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !2339, file: !15, line: 412, baseType: !2420, size: 64, offset: 192)
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2421, size: 64)
!2421 = !DISubroutineType(types: !2422)
!2422 = !{!472, !2325, !2349}
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !2339, file: !15, line: 414, baseType: !2424, size: 64, offset: 256)
!2424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2425, size: 64)
!2425 = !DISubroutineType(types: !2426)
!2426 = !{null, !2427}
!2427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2428, size: 64)
!2428 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !15, line: 310, flags: DIFlagFwdDecl)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !2339, file: !15, line: 416, baseType: !2430, size: 64, offset: 320)
!2430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2431, size: 64)
!2431 = !DISubroutineType(types: !2432)
!2432 = !{!114, !182, !2325, !178, !7, !2433, !2434}
!2433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2303, size: 64)
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !2339, file: !15, line: 419, baseType: !2436, size: 64, offset: 384)
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2437, size: 64)
!2437 = !DISubroutineType(types: !2438)
!2438 = !{!114, !182, !2325, !178, !7, !7, !2303, !98}
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !2339, file: !15, line: 424, baseType: !2440, size: 64, offset: 448)
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2441 = !DISubroutineType(types: !2442)
!2442 = !{!2443, !2325, !2443}
!2443 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !100, line: 131, baseType: !382)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !2339, file: !15, line: 425, baseType: !2445, size: 64, offset: 512)
!2445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2446, size: 64)
!2446 = !DISubroutineType(types: !2447)
!2447 = !{null, !2349, !793, !793}
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !2339, file: !15, line: 426, baseType: !2449, size: 64, offset: 576)
!2449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2450, size: 64)
!2450 = !DISubroutineType(types: !2451)
!2451 = !{!472, !2349, !99}
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !2339, file: !15, line: 427, baseType: !2453, size: 64, offset: 640)
!2453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2454, size: 64)
!2454 = !DISubroutineType(types: !2455)
!2455 = !{null, !2349}
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !2339, file: !15, line: 428, baseType: !2457, size: 64, offset: 704)
!2457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2458, size: 64)
!2458 = !DISubroutineType(types: !2459)
!2459 = !{!790, !2460, !2482}
!2460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2461, size: 64)
!2461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !15, line: 373, size: 384, elements: !2462)
!2462 = !{!2463, !2464, !2465, !2469, !2470, !2471, !2472}
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2461, file: !15, line: 374, baseType: !182, size: 64)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2461, file: !15, line: 375, baseType: !178, size: 64, offset: 64)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2461, file: !15, line: 376, baseType: !2466, size: 64, offset: 128)
!2466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2467, size: 64)
!2467 = !DISubroutineType(types: !2468)
!2468 = !{null, !2460, !751}
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2461, file: !15, line: 377, baseType: !98, size: 64, offset: 192)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2461, file: !15, line: 378, baseType: !114, size: 32, offset: 256)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2461, file: !15, line: 379, baseType: !242, size: 16, offset: 288)
!2472 = !DIDerivedType(tag: DW_TAG_member, scope: !2461, file: !15, line: 380, baseType: !2473, size: 64, offset: 320)
!2473 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2461, file: !15, line: 380, size: 64, elements: !2474)
!2474 = !{!2475, !2478}
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2473, file: !15, line: 386, baseType: !2476, size: 64)
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2477, size: 64)
!2477 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !15, line: 386, flags: DIFlagFwdDecl)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2473, file: !15, line: 395, baseType: !2479, size: 64)
!2479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2480, size: 64)
!2480 = !DISubroutineType(types: !2481)
!2481 = !{!790, !98}
!2482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2483, size: 64)
!2483 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !15, line: 69, flags: DIFlagFwdDecl)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !2339, file: !15, line: 433, baseType: !2485, size: 64, offset: 768)
!2485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2486, size: 64)
!2486 = !DISubroutineType(types: !2487)
!2487 = !{!114, !2325, !2349, !2349, !36}
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !2339, file: !15, line: 435, baseType: !2489, size: 64, offset: 832)
!2489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2490, size: 64)
!2490 = !DISubroutineType(types: !2491)
!2491 = !{!114, !2349}
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !2339, file: !15, line: 436, baseType: !2493, size: 64, offset: 896)
!2493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2494, size: 64)
!2494 = !DISubroutineType(types: !2495)
!2495 = !{!472, !2349, !793, !793}
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !2339, file: !15, line: 438, baseType: !2497, size: 64, offset: 960)
!2497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2498, size: 64)
!2498 = !DISubroutineType(types: !2499)
!2499 = !{null, !2349, !2500, !2500}
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !2339, file: !15, line: 439, baseType: !2502, size: 64, offset: 1024)
!2502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2503, size: 64)
!2503 = !DISubroutineType(types: !2504)
!2504 = !{!114, !2325, !2303}
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !2339, file: !15, line: 442, baseType: !2506, size: 64, offset: 1088)
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2507, size: 64)
!2507 = !DISubroutineType(types: !2508)
!2508 = !{!114, !2509, !182, !2511}
!2509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2510, size: 64)
!2510 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !15, line: 66, flags: DIFlagFwdDecl)
!2511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2443, size: 64)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !2339, file: !15, line: 444, baseType: !2513, size: 64, offset: 1152)
!2513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2514, size: 64)
!2514 = !DISubroutineType(types: !2515)
!2515 = !{null, !182}
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !2339, file: !15, line: 445, baseType: !2517, size: 64, offset: 1216)
!2517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2518, size: 64)
!2518 = !DISubroutineType(types: !2519)
!2519 = !{!114, !2460, !2482}
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2326, file: !15, line: 486, baseType: !113, size: 64, offset: 896)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !2326, file: !15, line: 487, baseType: !412, size: 320, offset: 960)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !2326, file: !15, line: 488, baseType: !2523, size: 32, offset: 1280)
!2523 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2524, line: 8, baseType: !437)
!2524 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !2326, file: !15, line: 489, baseType: !205, size: 32, offset: 1312)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !2326, file: !15, line: 490, baseType: !270, size: 128, offset: 1344)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !2326, file: !15, line: 491, baseType: !98, size: 64, offset: 1472)
!2528 = !DIDerivedType(tag: DW_TAG_member, scope: !2311, file: !52, line: 107, baseType: !2529, size: 64, offset: 192)
!2529 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2311, file: !52, line: 107, size: 64, elements: !2530)
!2530 = !{!2531, !2532}
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2529, file: !52, line: 108, baseType: !113, size: 64)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2529, file: !52, line: 109, baseType: !113, size: 64)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2311, file: !52, line: 117, baseType: !113, size: 64, offset: 256)
!2534 = !DIDerivedType(tag: DW_TAG_member, scope: !2308, file: !52, line: 119, baseType: !2535, size: 320)
!2535 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2308, file: !52, line: 119, size: 320, elements: !2536)
!2536 = !{!2537, !2538, !2541, !2542, !2543}
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2535, file: !52, line: 124, baseType: !113, size: 64)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2535, file: !52, line: 125, baseType: !2539, size: 64, offset: 64)
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2540, size: 64)
!2540 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !52, line: 125, flags: DIFlagFwdDecl)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2535, file: !52, line: 126, baseType: !113, size: 64, offset: 128)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2535, file: !52, line: 127, baseType: !113, size: 64, offset: 192)
!2543 = !DIDerivedType(tag: DW_TAG_member, scope: !2535, file: !52, line: 128, baseType: !2544, size: 64, offset: 256)
!2544 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2535, file: !52, line: 128, size: 64, elements: !2545)
!2545 = !{!2546, !2547}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2544, file: !52, line: 133, baseType: !113, size: 64)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2544, file: !52, line: 138, baseType: !249, size: 64)
!2548 = !DIDerivedType(tag: DW_TAG_member, scope: !2308, file: !52, line: 141, baseType: !2549, size: 64)
!2549 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2308, file: !52, line: 141, size: 64, elements: !2550)
!2550 = !{!2551}
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2549, file: !52, line: 142, baseType: !113, size: 64)
!2552 = !DIDerivedType(tag: DW_TAG_member, scope: !2308, file: !52, line: 144, baseType: !2553, size: 128)
!2553 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2308, file: !52, line: 144, size: 128, elements: !2554)
!2554 = !{!2555, !2781}
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2553, file: !52, line: 146, baseType: !2556, size: 64)
!2556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2557, size: 64)
!2557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !44, line: 126, size: 1216, elements: !2558)
!2558 = !{!2559, !2569, !2590, !2591, !2592, !2593, !2594, !2763, !2764, !2765}
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2557, file: !44, line: 127, baseType: !2560, size: 384)
!2560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !44, line: 21, size: 384, elements: !2561)
!2561 = !{!2562, !2563, !2565, !2566, !2567, !2568}
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2560, file: !44, line: 22, baseType: !113, size: 64)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2560, file: !44, line: 23, baseType: !2564, size: 64, offset: 64)
!2564 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !113)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2560, file: !44, line: 24, baseType: !2564, size: 64, offset: 128)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2560, file: !44, line: 25, baseType: !113, size: 64, offset: 192)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2560, file: !44, line: 26, baseType: !113, size: 64, offset: 256)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2560, file: !44, line: 27, baseType: !113, size: 64, offset: 320)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2557, file: !44, line: 128, baseType: !2570, size: 128, offset: 384)
!2570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2571, line: 105, size: 128, elements: !2572)
!2571 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2572 = !{!2573, !2574}
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2570, file: !2571, line: 110, baseType: !113, size: 64)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2570, file: !2571, line: 118, baseType: !2575, size: 64, offset: 64)
!2575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2576, size: 64)
!2576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2571, line: 95, size: 448, elements: !2577)
!2577 = !{!2578, !2579, !2585, !2586, !2587, !2588, !2589}
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2576, file: !2571, line: 96, baseType: !249, size: 64)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2576, file: !2571, line: 97, baseType: !2580, size: 64, offset: 64)
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2581, size: 64)
!2581 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2571, line: 60, baseType: !2582)
!2582 = !DISubroutineType(types: !2583)
!2583 = !{null, !2584}
!2584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2570, size: 64)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2576, file: !2571, line: 98, baseType: !2580, size: 64, offset: 128)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2576, file: !2571, line: 99, baseType: !472, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2576, file: !2571, line: 100, baseType: !472, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2576, file: !2571, line: 101, baseType: !195, size: 128, align: 64, offset: 256)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2576, file: !2571, line: 102, baseType: !2584, size: 64, offset: 384)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2557, file: !44, line: 129, baseType: !1822, size: 256, offset: 512)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2557, file: !44, line: 130, baseType: !43, size: 32, offset: 768)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2557, file: !44, line: 131, baseType: !7, size: 32, offset: 800)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !2557, file: !44, line: 132, baseType: !113, size: 64, offset: 832)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2557, file: !44, line: 133, baseType: !2595, size: 64, offset: 896)
!2595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2596, size: 64)
!2596 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2597)
!2597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !44, line: 77, size: 192, elements: !2598)
!2598 = !{!2599, !2603, !2759}
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2597, file: !44, line: 83, baseType: !2600, size: 64)
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2601, size: 64)
!2601 = !DISubroutineType(types: !2602)
!2602 = !{null, !2303}
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2597, file: !44, line: 89, baseType: !2604, size: 64, offset: 64)
!2604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2605, size: 64)
!2605 = !DISubroutineType(types: !2606)
!2606 = !{!2607, !2608}
!2607 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !52, line: 1184, baseType: !7)
!2608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2609, size: 64)
!2609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !2610, line: 512, size: 896, elements: !2611)
!2610 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!2611 = !{!2612, !2726, !2727, !2734, !2741, !2751, !2752, !2753, !2755, !2757}
!2612 = !DIDerivedType(tag: DW_TAG_member, scope: !2609, file: !2610, line: 513, baseType: !2613, size: 320)
!2613 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2609, file: !2610, line: 513, size: 320, elements: !2614)
!2614 = !{!2615, !2722, !2723, !2724, !2725}
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2613, file: !2610, line: 514, baseType: !2616, size: 64)
!2616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2617, size: 64)
!2617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !52, line: 625, size: 1344, elements: !2618)
!2618 = !{!2619, !2628, !2629, !2635, !2642, !2643, !2648, !2649, !2654, !2655, !2658, !2715, !2716, !2717, !2718, !2719, !2720}
!2619 = !DIDerivedType(tag: DW_TAG_member, scope: !2617, file: !52, line: 628, baseType: !2620, size: 128)
!2620 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2617, file: !52, line: 628, size: 128, elements: !2621)
!2621 = !{!2622, !2627}
!2622 = !DIDerivedType(tag: DW_TAG_member, scope: !2620, file: !52, line: 629, baseType: !2623, size: 128)
!2623 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2620, file: !52, line: 629, size: 128, elements: !2624)
!2624 = !{!2625, !2626}
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2623, file: !52, line: 631, baseType: !113, size: 64)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2623, file: !52, line: 632, baseType: !113, size: 64, offset: 64)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2620, file: !52, line: 635, baseType: !195, size: 128, align: 64)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2617, file: !52, line: 639, baseType: !1580, size: 64, offset: 128)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2617, file: !52, line: 640, baseType: !2630, size: 64, offset: 192)
!2630 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1615, line: 297, baseType: !2631)
!2631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1615, line: 297, size: 64, elements: !2632)
!2632 = !{!2633}
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2631, file: !1615, line: 297, baseType: !2634, size: 64)
!2634 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1620, line: 19, baseType: !113)
!2635 = !DIDerivedType(tag: DW_TAG_member, scope: !2617, file: !52, line: 646, baseType: !2636, size: 64, offset: 256)
!2636 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2617, file: !52, line: 646, size: 64, elements: !2637)
!2637 = !{!2638, !2641}
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2636, file: !52, line: 647, baseType: !2639, size: 64)
!2639 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2640)
!2640 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !52, line: 542, baseType: !113)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2636, file: !52, line: 648, baseType: !2640, size: 64)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2617, file: !52, line: 666, baseType: !114, size: 32, offset: 320)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2617, file: !52, line: 667, baseType: !2644, size: 64, offset: 384)
!2644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2645, size: 64)
!2645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !52, line: 579, size: 320, elements: !2646)
!2646 = !{!2647}
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2645, file: !52, line: 580, baseType: !412, size: 320)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2617, file: !52, line: 670, baseType: !472, size: 8, offset: 448)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2617, file: !52, line: 681, baseType: !2650, size: 256, offset: 512)
!2650 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2617, file: !52, line: 678, size: 256, elements: !2651)
!2651 = !{!2652, !2653}
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2650, file: !52, line: 679, baseType: !404, size: 192, align: 64)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2650, file: !52, line: 680, baseType: !113, size: 64, offset: 192)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2617, file: !52, line: 689, baseType: !270, size: 128, offset: 768)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2617, file: !52, line: 691, baseType: !2656, size: 64, offset: 896)
!2656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2657, size: 64)
!2657 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !52, line: 691, flags: DIFlagFwdDecl)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2617, file: !52, line: 694, baseType: !2659, size: 64, offset: 960)
!2659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2660, size: 64)
!2660 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2661)
!2661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !2610, line: 563, size: 1024, elements: !2662)
!2662 = !{!2663, !2667, !2668, !2672, !2676, !2680, !2681, !2685, !2689, !2693, !2694, !2695, !2699, !2703, !2707, !2711}
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2661, file: !2610, line: 564, baseType: !2664, size: 64)
!2664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2665, size: 64)
!2665 = !DISubroutineType(types: !2666)
!2666 = !{null, !2616}
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2661, file: !2610, line: 569, baseType: !2664, size: 64, offset: 64)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2661, file: !2610, line: 571, baseType: !2669, size: 64, offset: 128)
!2669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2670, size: 64)
!2670 = !DISubroutineType(types: !2671)
!2671 = !{!114, !2616, !113}
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2661, file: !2610, line: 572, baseType: !2673, size: 64, offset: 192)
!2673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2674, size: 64)
!2674 = !DISubroutineType(types: !2675)
!2675 = !{!114, !2616}
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2661, file: !2610, line: 578, baseType: !2677, size: 64, offset: 256)
!2677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2678, size: 64)
!2678 = !DISubroutineType(types: !2679)
!2679 = !{!114, !2616, !113, !113, !113}
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2661, file: !2610, line: 580, baseType: !2604, size: 64, offset: 320)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2661, file: !2610, line: 581, baseType: !2682, size: 64, offset: 384)
!2682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2683, size: 64)
!2683 = !DISubroutineType(types: !2684)
!2684 = !{!2607, !2608, !7}
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2661, file: !2610, line: 582, baseType: !2686, size: 64, offset: 448)
!2686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2687, size: 64)
!2687 = !DISubroutineType(types: !2688)
!2688 = !{!2607, !2608, !113, !113}
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2661, file: !2610, line: 584, baseType: !2690, size: 64, offset: 512)
!2690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2691, size: 64)
!2691 = !DISubroutineType(types: !2692)
!2692 = !{!113, !2616}
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2661, file: !2610, line: 588, baseType: !2604, size: 64, offset: 576)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2661, file: !2610, line: 591, baseType: !2604, size: 64, offset: 640)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2661, file: !2610, line: 597, baseType: !2696, size: 64, offset: 704)
!2696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2697, size: 64)
!2697 = !DISubroutineType(types: !2698)
!2698 = !{!114, !2616, !113, !98, !114, !114}
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2661, file: !2610, line: 603, baseType: !2700, size: 64, offset: 768)
!2700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2701, size: 64)
!2701 = !DISubroutineType(types: !2702)
!2702 = !{!475, !2616}
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2661, file: !2610, line: 613, baseType: !2704, size: 64, offset: 832)
!2704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2705, size: 64)
!2705 = !DISubroutineType(types: !2706)
!2706 = !{!114, !2616, !2260}
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2661, file: !2610, line: 625, baseType: !2708, size: 64, offset: 896)
!2708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2709, size: 64)
!2709 = !DISubroutineType(types: !2710)
!2710 = !{!2260, !2616, !113}
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2661, file: !2610, line: 633, baseType: !2712, size: 64, offset: 960)
!2712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2713, size: 64)
!2713 = !DISubroutineType(types: !2714)
!2714 = !{!2303, !2616, !113}
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2617, file: !52, line: 697, baseType: !113, size: 64, offset: 1024)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2617, file: !52, line: 699, baseType: !182, size: 64, offset: 1088)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2617, file: !52, line: 700, baseType: !98, size: 64, offset: 1152)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2617, file: !52, line: 711, baseType: !249, size: 64, offset: 1216)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2617, file: !52, line: 717, baseType: !2260, size: 64, offset: 1280)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2617, file: !52, line: 722, baseType: !2721, offset: 1344)
!2721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !52, line: 570, elements: !886)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2613, file: !2610, line: 515, baseType: !99, size: 32, offset: 64)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2613, file: !2610, line: 516, baseType: !113, size: 64, offset: 128)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2613, file: !2610, line: 517, baseType: !113, size: 64, offset: 192)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2613, file: !2610, line: 518, baseType: !113, size: 64, offset: 256)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2609, file: !2610, line: 520, baseType: !51, size: 32, offset: 320)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2609, file: !2610, line: 522, baseType: !2728, size: 64, offset: 384)
!2728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2729, size: 64)
!2729 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1620, line: 22, baseType: !2730)
!2730 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1620, line: 22, size: 64, elements: !2731)
!2731 = !{!2732}
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2730, file: !1620, line: 22, baseType: !2733, size: 64)
!2733 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1620, line: 15, baseType: !113)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2609, file: !2610, line: 524, baseType: !2735, size: 64, offset: 448)
!2735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2736, size: 64)
!2736 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1615, line: 372, baseType: !2737)
!2737 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1615, line: 372, size: 64, elements: !2738)
!2738 = !{!2739}
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2737, file: !1615, line: 372, baseType: !2740, size: 64)
!2740 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1620, line: 16, baseType: !113)
!2741 = !DIDerivedType(tag: DW_TAG_member, scope: !2609, file: !2610, line: 527, baseType: !2742, size: 64, offset: 512)
!2742 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2609, file: !2610, line: 527, size: 64, elements: !2743)
!2743 = !{!2744, !2750}
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2742, file: !2610, line: 528, baseType: !2745, size: 64)
!2745 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1620, line: 21, baseType: !2746)
!2746 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1620, line: 21, size: 64, elements: !2747)
!2747 = !{!2748}
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2746, file: !1620, line: 21, baseType: !2749, size: 64)
!2749 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1620, line: 14, baseType: !113)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2742, file: !2610, line: 529, baseType: !2729, size: 64)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2609, file: !2610, line: 534, baseType: !2303, size: 64, offset: 576)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2609, file: !2610, line: 535, baseType: !2303, size: 64, offset: 640)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2609, file: !2610, line: 541, baseType: !2754, size: 64, offset: 704)
!2754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2745, size: 64)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2609, file: !2610, line: 545, baseType: !2756, size: 64, offset: 768)
!2756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2609, file: !2610, line: 549, baseType: !2758, size: 64, offset: 832)
!2758 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1615, line: 520, baseType: !2303)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !2597, file: !44, line: 100, baseType: !2760, size: 64, offset: 128)
!2760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2761, size: 64)
!2761 = !DISubroutineType(types: !2762)
!2762 = !{!114, !2556, !113, !113, !114}
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2557, file: !44, line: 134, baseType: !98, size: 64, offset: 960)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2557, file: !44, line: 135, baseType: !114, size: 32, offset: 1024)
!2765 = !DIDerivedType(tag: DW_TAG_member, scope: !2557, file: !44, line: 136, baseType: !2766, size: 128, offset: 1088)
!2766 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2557, file: !44, line: 136, size: 128, elements: !2767)
!2767 = !{!2768, !2774}
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2766, file: !44, line: 137, baseType: !2769, size: 128)
!2769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2770, line: 6, size: 128, elements: !2771)
!2770 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2771 = !{!2772, !2773}
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2769, file: !2770, line: 7, baseType: !382, size: 64)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2769, file: !2770, line: 8, baseType: !382, size: 64, offset: 64)
!2774 = !DIDerivedType(tag: DW_TAG_member, scope: !2766, file: !44, line: 138, baseType: !2775)
!2775 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2766, file: !44, line: 138, elements: !2776)
!2776 = !{!2777, !2779}
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2775, file: !44, line: 138, baseType: !2778)
!2778 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2775, file: !44, line: 138, elements: !886)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2775, file: !44, line: 138, baseType: !2780)
!2780 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2769, elements: !341)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2553, file: !52, line: 147, baseType: !98, size: 64, offset: 64)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2308, file: !52, line: 161, baseType: !195, size: 128, align: 64)
!2783 = !DIDerivedType(tag: DW_TAG_member, scope: !2304, file: !52, line: 164, baseType: !2784, size: 32, offset: 384)
!2784 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2304, file: !52, line: 164, size: 32, elements: !2785)
!2785 = !{!2786, !2787}
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2784, file: !52, line: 169, baseType: !225, size: 32)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2784, file: !52, line: 177, baseType: !7, size: 32)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2304, file: !52, line: 181, baseType: !225, size: 32, offset: 416)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2300, file: !2287, line: 42, baseType: !106, size: 32, offset: 64)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2300, file: !2287, line: 43, baseType: !106, size: 32, offset: 96)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1295, file: !1296, line: 1340, baseType: !2792, size: 64, offset: 20672)
!2792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2793, size: 64)
!2793 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1296, line: 69, flags: DIFlagFwdDecl)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1295, file: !1296, line: 1351, baseType: !114, size: 32, offset: 20736)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1295, file: !1296, line: 1352, baseType: !114, size: 32, offset: 20768)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1295, file: !1296, line: 1354, baseType: !113, size: 64, offset: 20800)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1295, file: !1296, line: 1364, baseType: !382, size: 64, offset: 20864)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1295, file: !1296, line: 1365, baseType: !382, size: 64, offset: 20928)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1295, file: !1296, line: 1412, baseType: !113, size: 64, offset: 20992)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1295, file: !1296, line: 1453, baseType: !2801, size: 64, offset: 21056)
!2801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2802, size: 64)
!2802 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1296, line: 1453, flags: DIFlagFwdDecl)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1295, file: !1296, line: 1457, baseType: !2804, size: 64, offset: 21120)
!2804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2805, size: 64)
!2805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !68, line: 61, size: 576, elements: !2806)
!2806 = !{!2807, !2808, !2827, !2830, !2831, !2864, !2874}
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2805, file: !68, line: 62, baseType: !67, size: 32)
!2808 = !DIDerivedType(tag: DW_TAG_member, scope: !2805, file: !68, line: 64, baseType: !2809, size: 192, offset: 64)
!2809 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2805, file: !68, line: 64, size: 192, elements: !2810)
!2810 = !{!2811, !2822}
!2811 = !DIDerivedType(tag: DW_TAG_member, scope: !2809, file: !68, line: 65, baseType: !2812, size: 192)
!2812 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2809, file: !68, line: 65, size: 192, elements: !2813)
!2813 = !{!2814, !2821}
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2812, file: !68, line: 66, baseType: !2815, size: 128)
!2815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2816, line: 50, size: 128, elements: !2817)
!2816 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2817 = !{!2818, !2819, !2820}
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2815, file: !2816, line: 52, baseType: !113, size: 64)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2815, file: !2816, line: 54, baseType: !7, size: 32, offset: 64)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2815, file: !2816, line: 55, baseType: !7, size: 32, offset: 96)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2812, file: !68, line: 67, baseType: !113, size: 64, offset: 128)
!2822 = !DIDerivedType(tag: DW_TAG_member, scope: !2809, file: !68, line: 70, baseType: !2823, size: 192)
!2823 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2809, file: !68, line: 70, size: 192, elements: !2824)
!2824 = !{!2825, !2826}
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2823, file: !68, line: 71, baseType: !195, size: 128, align: 64)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2823, file: !68, line: 72, baseType: !113, size: 64, offset: 128)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2805, file: !68, line: 76, baseType: !2828, size: 64, offset: 256)
!2828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2829, size: 64)
!2829 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !68, line: 76, flags: DIFlagFwdDecl)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2805, file: !68, line: 77, baseType: !113, size: 64, offset: 320)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2805, file: !68, line: 79, baseType: !2832, size: 64, offset: 384)
!2832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2833, size: 64)
!2833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2816, line: 25, size: 256, elements: !2834)
!2834 = !{!2835, !2841, !2845}
!2835 = !DIDerivedType(tag: DW_TAG_member, scope: !2833, file: !2816, line: 26, baseType: !2836, size: 128)
!2836 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2833, file: !2816, line: 26, size: 128, elements: !2837)
!2837 = !{!2838, !2840}
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2836, file: !2816, line: 27, baseType: !2839, size: 128)
!2839 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 128, elements: !1874)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2836, file: !2816, line: 28, baseType: !2839, size: 128)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2833, file: !2816, line: 31, baseType: !2842, size: 64, offset: 128)
!2842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2843, size: 64)
!2843 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2844)
!2844 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2816, line: 23, flags: DIFlagFwdDecl)
!2845 = !DIDerivedType(tag: DW_TAG_member, scope: !2833, file: !2816, line: 33, baseType: !2846, size: 64, offset: 192)
!2846 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2833, file: !2816, line: 33, size: 64, elements: !2847)
!2847 = !{!2848, !2854, !2859}
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2846, file: !2816, line: 38, baseType: !2849, size: 64)
!2849 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2846, file: !2816, line: 34, size: 64, elements: !2850)
!2850 = !{!2851, !2852, !2853}
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2849, file: !2816, line: 35, baseType: !397, size: 32)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2849, file: !2816, line: 36, baseType: !233, size: 8, offset: 32)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2849, file: !2816, line: 37, baseType: !233, size: 8, offset: 40)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2846, file: !2816, line: 42, baseType: !2855, size: 16)
!2855 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2846, file: !2816, line: 39, size: 16, elements: !2856)
!2856 = !{!2857, !2858}
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2855, file: !2816, line: 40, baseType: !233, size: 8)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2855, file: !2816, line: 41, baseType: !233, size: 8, offset: 8)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2846, file: !2816, line: 46, baseType: !2860, size: 16)
!2860 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2846, file: !2816, line: 43, size: 16, elements: !2861)
!2861 = !{!2862, !2863}
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2860, file: !2816, line: 44, baseType: !233, size: 8)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2860, file: !2816, line: 45, baseType: !233, size: 8, offset: 8)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2805, file: !68, line: 81, baseType: !2865, size: 64, offset: 448)
!2865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2866, size: 64)
!2866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !68, line: 85, size: 384, elements: !2867)
!2867 = !{!2868, !2869, !2870, !2871, !2872, !2873}
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2866, file: !68, line: 86, baseType: !2828, size: 64)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2866, file: !68, line: 87, baseType: !113, size: 64, offset: 64)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2866, file: !68, line: 88, baseType: !113, size: 64, offset: 128)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2866, file: !68, line: 89, baseType: !113, size: 64, offset: 192)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2866, file: !68, line: 90, baseType: !472, size: 8, offset: 256)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2866, file: !68, line: 92, baseType: !2865, size: 64, offset: 320)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2805, file: !68, line: 82, baseType: !7, size: 32, offset: 512)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1295, file: !1296, line: 1463, baseType: !2876, offset: 21184)
!2876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1296, line: 739, elements: !886)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1295, file: !1296, line: 1470, baseType: !195, size: 128, align: 64, offset: 21184)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1295, file: !1296, line: 1471, baseType: !306, size: 32, offset: 21312)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1295, file: !1296, line: 1472, baseType: !114, size: 32, offset: 21344)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1295, file: !1296, line: 1474, baseType: !1294, size: 64, offset: 21376)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1295, file: !1296, line: 1475, baseType: !2882, size: 320, offset: 21440)
!2882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2883, line: 11, size: 320, elements: !2884)
!2883 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2884 = !{!2885, !2886, !2887, !2892}
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2882, file: !2883, line: 16, baseType: !319, size: 128)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2882, file: !2883, line: 17, baseType: !113, size: 64, offset: 128)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2882, file: !2883, line: 18, baseType: !2888, size: 64, offset: 192)
!2888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2889, size: 64)
!2889 = !DISubroutineType(types: !2890)
!2890 = !{null, !2891}
!2891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2882, size: 64)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2882, file: !2883, line: 19, baseType: !437, size: 32, offset: 256)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1295, file: !1296, line: 1478, baseType: !2894, size: 64, offset: 21760)
!2894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2895, size: 64)
!2895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2896, line: 49, size: 512, elements: !2897)
!2896 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!2897 = !{!2898, !2899, !2900, !2901, !2902, !2903, !2904, !2905, !2907}
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2895, file: !2896, line: 50, baseType: !2894, size: 64)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2895, file: !2896, line: 51, baseType: !98, size: 64, offset: 64)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2895, file: !2896, line: 52, baseType: !113, size: 64, offset: 128)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2895, file: !2896, line: 53, baseType: !113, size: 64, offset: 192)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2895, file: !2896, line: 54, baseType: !2433, size: 64, offset: 256)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !2895, file: !2896, line: 56, baseType: !7, size: 32, offset: 320)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2895, file: !2896, line: 58, baseType: !7, size: 32, offset: 352)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2895, file: !2896, line: 59, baseType: !2906, size: 64, offset: 384)
!2906 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !100, line: 159, baseType: !382)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2895, file: !2896, line: 60, baseType: !2908, size: 64, offset: 448)
!2908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2909, size: 64)
!2909 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1295, file: !1296, line: 1482, baseType: !306, size: 32, offset: 21824)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1295, file: !1296, line: 1489, baseType: !98, size: 64, offset: 21888)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1295, file: !1296, line: 1504, baseType: !98, size: 64, offset: 21952)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1295, file: !1296, line: 1505, baseType: !110, size: 64, offset: 22016)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1295, file: !1296, line: 1506, baseType: !382, size: 64, offset: 22080)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1295, file: !1296, line: 1507, baseType: !110, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1295, file: !1296, line: 1508, baseType: !110, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1295, file: !1296, line: 1509, baseType: !110, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1295, file: !1296, line: 1510, baseType: !195, size: 128, align: 64, offset: 22208)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1295, file: !1296, line: 1511, baseType: !114, size: 32, offset: 22336)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1295, file: !1296, line: 1515, baseType: !2921, size: 64, offset: 22400)
!2921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !190, line: 56, size: 64, elements: !2922)
!2922 = !{!2923}
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2921, file: !190, line: 57, baseType: !193, size: 64)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1295, file: !1296, line: 1518, baseType: !2921, size: 64, offset: 22464)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1295, file: !1296, line: 1528, baseType: !195, size: 128, align: 64, offset: 22528)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1295, file: !1296, line: 1552, baseType: !2927, size: 35328, offset: 23040)
!2927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2928, line: 430, size: 35328, elements: !2929)
!2928 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!2929 = !{!2930, !2948, !2949, !2950, !2951, !2952, !2953, !2954, !2955, !2959, !2960, !2961, !2962, !2963, !2964, !2967, !2968, !2969, !2970}
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2927, file: !2928, line: 432, baseType: !2931, size: 192)
!2931 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2932, size: 192, elements: !161)
!2932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2933, line: 16, size: 64, elements: !2934)
!2933 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!2934 = !{!2935, !2936, !2937, !2938, !2939, !2940, !2941, !2942, !2943, !2944, !2945, !2946, !2947}
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2932, file: !2933, line: 17, baseType: !242, size: 16)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2932, file: !2933, line: 18, baseType: !242, size: 16, offset: 16)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2932, file: !2933, line: 19, baseType: !242, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2932, file: !2933, line: 19, baseType: !242, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2932, file: !2933, line: 19, baseType: !242, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2932, file: !2933, line: 19, baseType: !242, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2932, file: !2933, line: 19, baseType: !242, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2932, file: !2933, line: 20, baseType: !242, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2932, file: !2933, line: 20, baseType: !242, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2932, file: !2933, line: 20, baseType: !242, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2932, file: !2933, line: 20, baseType: !242, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2932, file: !2933, line: 20, baseType: !242, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2932, file: !2933, line: 20, baseType: !242, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2927, file: !2928, line: 436, baseType: !113, size: 64, offset: 192)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2927, file: !2928, line: 440, baseType: !244, size: 16, offset: 256)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2927, file: !2928, line: 441, baseType: !244, size: 16, offset: 272)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2927, file: !2928, line: 442, baseType: !244, size: 16, offset: 288)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2927, file: !2928, line: 443, baseType: !244, size: 16, offset: 304)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2927, file: !2928, line: 447, baseType: !113, size: 64, offset: 320)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2927, file: !2928, line: 448, baseType: !113, size: 64, offset: 384)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2927, file: !2928, line: 459, baseType: !2956, size: 256, offset: 448)
!2956 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2957, size: 256, elements: !124)
!2957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2958, size: 64)
!2958 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2928, line: 428, flags: DIFlagFwdDecl)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2927, file: !2928, line: 461, baseType: !113, size: 64, offset: 704)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2927, file: !2928, line: 463, baseType: !113, size: 64, offset: 768)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2927, file: !2928, line: 465, baseType: !113, size: 64, offset: 832)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2927, file: !2928, line: 466, baseType: !113, size: 64, offset: 896)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2927, file: !2928, line: 467, baseType: !113, size: 64, offset: 960)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2927, file: !2928, line: 473, baseType: !2965, size: 64, offset: 1024)
!2965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2966, size: 64)
!2966 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2928, line: 10, flags: DIFlagFwdDecl)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2927, file: !2928, line: 480, baseType: !113, size: 64, offset: 1088)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !2927, file: !2928, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !2927, file: !2928, line: 491, baseType: !437, size: 32, offset: 1184)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2927, file: !2928, line: 501, baseType: !2971, size: 33792, offset: 1536)
!2971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2972, line: 448, size: 33792, elements: !2973)
!2972 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!2973 = !{!2974, !2975, !2976, !3138, !3139, !3145, !3146}
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2971, file: !2972, line: 461, baseType: !7, size: 32)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2971, file: !2972, line: 468, baseType: !113, size: 64, offset: 64)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !2971, file: !2972, line: 476, baseType: !2977, size: 64, offset: 128)
!2977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2978, size: 64)
!2978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !2972, line: 356, size: 33280, align: 512, elements: !2979)
!2979 = !{!2980, !2981, !2982, !2983, !2984, !2985, !2986, !2987, !2988, !2989}
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2978, file: !2972, line: 358, baseType: !7, size: 32)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !2978, file: !2972, line: 361, baseType: !7, size: 32, offset: 32)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2978, file: !2972, line: 364, baseType: !382, size: 64, offset: 64)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !2978, file: !2972, line: 367, baseType: !382, size: 64, offset: 128)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !2978, file: !2972, line: 370, baseType: !382, size: 64, offset: 192)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !2978, file: !2972, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !2978, file: !2972, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !2978, file: !2972, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !2978, file: !2972, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2978, file: !2972, line: 397, baseType: !2990, size: 32768, offset: 512)
!2990 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2972, line: 348, size: 32768, elements: !2991)
!2991 = !{!2992, !3007, !3044, !3121, !3134}
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2990, file: !2972, line: 349, baseType: !2993, size: 896)
!2993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2972, line: 12, size: 896, elements: !2994)
!2994 = !{!2995, !2996, !2997, !2998, !2999, !3000, !3001, !3002, !3006}
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2993, file: !2972, line: 13, baseType: !437, size: 32)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2993, file: !2972, line: 14, baseType: !437, size: 32, offset: 32)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2993, file: !2972, line: 15, baseType: !437, size: 32, offset: 64)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2993, file: !2972, line: 16, baseType: !437, size: 32, offset: 96)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2993, file: !2972, line: 17, baseType: !437, size: 32, offset: 128)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2993, file: !2972, line: 18, baseType: !437, size: 32, offset: 160)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2993, file: !2972, line: 19, baseType: !437, size: 32, offset: 192)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2993, file: !2972, line: 22, baseType: !3003, size: 640, offset: 224)
!3003 = !DICompositeType(tag: DW_TAG_array_type, baseType: !437, size: 640, elements: !3004)
!3004 = !{!3005}
!3005 = !DISubrange(count: 20)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2993, file: !2972, line: 25, baseType: !437, size: 32, offset: 864)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2990, file: !2972, line: 350, baseType: !3008, size: 4096, align: 128)
!3008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2972, line: 34, size: 4096, align: 128, elements: !3009)
!3009 = !{!3010, !3011, !3012, !3013, !3014, !3029, !3030, !3031, !3035, !3037, !3039}
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3008, file: !2972, line: 35, baseType: !242, size: 16)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3008, file: !2972, line: 36, baseType: !242, size: 16, offset: 16)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3008, file: !2972, line: 37, baseType: !242, size: 16, offset: 32)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3008, file: !2972, line: 38, baseType: !242, size: 16, offset: 48)
!3014 = !DIDerivedType(tag: DW_TAG_member, scope: !3008, file: !2972, line: 39, baseType: !3015, size: 128, offset: 64)
!3015 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3008, file: !2972, line: 39, size: 128, elements: !3016)
!3016 = !{!3017, !3022}
!3017 = !DIDerivedType(tag: DW_TAG_member, scope: !3015, file: !2972, line: 40, baseType: !3018, size: 128)
!3018 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3015, file: !2972, line: 40, size: 128, elements: !3019)
!3019 = !{!3020, !3021}
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3018, file: !2972, line: 41, baseType: !382, size: 64)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3018, file: !2972, line: 42, baseType: !382, size: 64, offset: 64)
!3022 = !DIDerivedType(tag: DW_TAG_member, scope: !3015, file: !2972, line: 44, baseType: !3023, size: 128)
!3023 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3015, file: !2972, line: 44, size: 128, elements: !3024)
!3024 = !{!3025, !3026, !3027, !3028}
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3023, file: !2972, line: 45, baseType: !437, size: 32)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3023, file: !2972, line: 46, baseType: !437, size: 32, offset: 32)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3023, file: !2972, line: 47, baseType: !437, size: 32, offset: 64)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3023, file: !2972, line: 48, baseType: !437, size: 32, offset: 96)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3008, file: !2972, line: 51, baseType: !437, size: 32, offset: 192)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3008, file: !2972, line: 52, baseType: !437, size: 32, offset: 224)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3008, file: !2972, line: 55, baseType: !3032, size: 1024, offset: 256)
!3032 = !DICompositeType(tag: DW_TAG_array_type, baseType: !437, size: 1024, elements: !3033)
!3033 = !{!3034}
!3034 = !DISubrange(count: 32)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3008, file: !2972, line: 58, baseType: !3036, size: 2048, offset: 1280)
!3036 = !DICompositeType(tag: DW_TAG_array_type, baseType: !437, size: 2048, elements: !2072)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3008, file: !2972, line: 60, baseType: !3038, size: 384, offset: 3328)
!3038 = !DICompositeType(tag: DW_TAG_array_type, baseType: !437, size: 384, elements: !129)
!3039 = !DIDerivedType(tag: DW_TAG_member, scope: !3008, file: !2972, line: 62, baseType: !3040, size: 384, offset: 3712)
!3040 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3008, file: !2972, line: 62, size: 384, elements: !3041)
!3041 = !{!3042, !3043}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3040, file: !2972, line: 63, baseType: !3038, size: 384)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3040, file: !2972, line: 64, baseType: !3038, size: 384)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2990, file: !2972, line: 351, baseType: !3045, size: 1088)
!3045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2972, line: 79, size: 1088, elements: !3046)
!3046 = !{!3047, !3048, !3049, !3050, !3051, !3052, !3053, !3054, !3055, !3056, !3057, !3058, !3059, !3060, !3061, !3120}
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3045, file: !2972, line: 80, baseType: !437, size: 32)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3045, file: !2972, line: 81, baseType: !437, size: 32, offset: 32)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3045, file: !2972, line: 82, baseType: !437, size: 32, offset: 64)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3045, file: !2972, line: 83, baseType: !437, size: 32, offset: 96)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3045, file: !2972, line: 84, baseType: !437, size: 32, offset: 128)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3045, file: !2972, line: 85, baseType: !437, size: 32, offset: 160)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3045, file: !2972, line: 86, baseType: !437, size: 32, offset: 192)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3045, file: !2972, line: 88, baseType: !3003, size: 640, offset: 224)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3045, file: !2972, line: 89, baseType: !233, size: 8, offset: 864)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3045, file: !2972, line: 90, baseType: !233, size: 8, offset: 872)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3045, file: !2972, line: 91, baseType: !233, size: 8, offset: 880)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3045, file: !2972, line: 92, baseType: !233, size: 8, offset: 888)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3045, file: !2972, line: 93, baseType: !233, size: 8, offset: 896)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3045, file: !2972, line: 94, baseType: !233, size: 8, offset: 904)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3045, file: !2972, line: 95, baseType: !3062, size: 64, offset: 960)
!3062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3063, size: 64)
!3063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3064, line: 11, size: 128, elements: !3065)
!3064 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3065 = !{!3066, !3067}
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3063, file: !3064, line: 12, baseType: !751, size: 64)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3063, file: !3064, line: 13, baseType: !3068, size: 64, offset: 64)
!3068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3069, size: 64)
!3069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3070, line: 103, size: 1344, elements: !3071)
!3070 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3071 = !{!3072, !3073, !3074, !3075, !3076, !3077, !3078, !3079, !3080, !3081, !3082, !3083, !3084, !3085, !3086, !3087, !3088, !3089, !3100, !3101, !3102}
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3069, file: !3070, line: 109, baseType: !113, size: 64)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3069, file: !3070, line: 110, baseType: !113, size: 64, offset: 64)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3069, file: !3070, line: 111, baseType: !113, size: 64, offset: 128)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3069, file: !3070, line: 112, baseType: !113, size: 64, offset: 192)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3069, file: !3070, line: 113, baseType: !113, size: 64, offset: 256)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3069, file: !3070, line: 114, baseType: !113, size: 64, offset: 320)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3069, file: !3070, line: 117, baseType: !113, size: 64, offset: 384)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3069, file: !3070, line: 118, baseType: !113, size: 64, offset: 448)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3069, file: !3070, line: 119, baseType: !113, size: 64, offset: 512)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3069, file: !3070, line: 120, baseType: !113, size: 64, offset: 576)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3069, file: !3070, line: 121, baseType: !113, size: 64, offset: 640)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3069, file: !3070, line: 122, baseType: !113, size: 64, offset: 704)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3069, file: !3070, line: 123, baseType: !113, size: 64, offset: 768)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3069, file: !3070, line: 124, baseType: !113, size: 64, offset: 832)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3069, file: !3070, line: 125, baseType: !113, size: 64, offset: 896)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3069, file: !3070, line: 139, baseType: !113, size: 64, offset: 960)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3069, file: !3070, line: 142, baseType: !113, size: 64, offset: 1024)
!3089 = !DIDerivedType(tag: DW_TAG_member, scope: !3069, file: !3070, line: 144, baseType: !3090, size: 64, offset: 1088)
!3090 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3069, file: !3070, line: 144, size: 64, elements: !3091)
!3091 = !{!3092, !3093, !3094}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3090, file: !3070, line: 146, baseType: !242, size: 16)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3090, file: !3070, line: 148, baseType: !382, size: 64)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3090, file: !3070, line: 150, baseType: !3095, size: 64)
!3095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3070, line: 59, size: 64, elements: !3096)
!3096 = !{!3097, !3098, !3099}
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3095, file: !3070, line: 61, baseType: !382, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3095, file: !3070, line: 63, baseType: !382, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3095, file: !3070, line: 65, baseType: !382, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3069, file: !3070, line: 153, baseType: !113, size: 64, offset: 1152)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3069, file: !3070, line: 154, baseType: !113, size: 64, offset: 1216)
!3102 = !DIDerivedType(tag: DW_TAG_member, scope: !3069, file: !3070, line: 156, baseType: !3103, size: 64, offset: 1280)
!3103 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3069, file: !3070, line: 156, size: 64, elements: !3104)
!3104 = !{!3105, !3106, !3107}
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3103, file: !3070, line: 158, baseType: !242, size: 16)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3103, file: !3070, line: 160, baseType: !382, size: 64)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3103, file: !3070, line: 162, baseType: !3108, size: 64)
!3108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3070, line: 69, size: 64, elements: !3109)
!3109 = !{!3110, !3111, !3112, !3113, !3114, !3115, !3116, !3117, !3118, !3119}
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3108, file: !3070, line: 71, baseType: !382, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3108, file: !3070, line: 73, baseType: !382, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3108, file: !3070, line: 75, baseType: !382, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3108, file: !3070, line: 77, baseType: !382, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3108, file: !3070, line: 80, baseType: !382, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3108, file: !3070, line: 83, baseType: !382, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3108, file: !3070, line: 86, baseType: !382, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3108, file: !3070, line: 88, baseType: !382, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3108, file: !3070, line: 93, baseType: !382, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3108, file: !3070, line: 100, baseType: !382, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3045, file: !2972, line: 96, baseType: !437, size: 32, offset: 1024)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2990, file: !2972, line: 352, baseType: !3122, size: 4608, align: 512)
!3122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2972, line: 333, size: 4608, align: 512, elements: !3123)
!3123 = !{!3124, !3125, !3132}
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3122, file: !2972, line: 334, baseType: !3008, size: 4096, align: 128)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3122, file: !2972, line: 335, baseType: !3126, size: 512, offset: 4096)
!3126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2972, line: 312, size: 512, elements: !3127)
!3127 = !{!3128, !3129, !3130}
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3126, file: !2972, line: 313, baseType: !382, size: 64)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3126, file: !2972, line: 314, baseType: !382, size: 64, offset: 64)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3126, file: !2972, line: 315, baseType: !3131, size: 384, offset: 128)
!3131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !382, size: 384, elements: !459)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3122, file: !2972, line: 336, baseType: !3133, offset: 4608)
!3133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, elements: !341)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2990, file: !2972, line: 353, baseType: !3135, size: 32768)
!3135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 32768, elements: !3136)
!3136 = !{!3137}
!3137 = !DISubrange(count: 4096)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !2971, file: !2972, line: 484, baseType: !2977, size: 64, offset: 192)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2971, file: !2972, line: 491, baseType: !3140, size: 128, offset: 256)
!3140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !2972, line: 404, size: 128, elements: !3141)
!3141 = !{!3142, !3143, !3144}
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3140, file: !2972, line: 424, baseType: !382, size: 64)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3140, file: !2972, line: 432, baseType: !7, size: 32, offset: 64)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3140, file: !2972, line: 440, baseType: !7, size: 32, offset: 96)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !2971, file: !2972, line: 498, baseType: !3140, size: 128, offset: 384)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !2971, file: !2972, line: 508, baseType: !2978, size: 33280, align: 512, offset: 512)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1276, file: !1277, line: 16, baseType: !326, size: 192, offset: 512)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1276, file: !1277, line: 17, baseType: !225, size: 32, offset: 704)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !849, file: !15, line: 1240, baseType: !98, size: 64, offset: 6912)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !849, file: !15, line: 1243, baseType: !437, size: 32, offset: 6976)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !849, file: !15, line: 1245, baseType: !428, size: 64, offset: 7040)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !849, file: !15, line: 1246, baseType: !428, size: 64, offset: 7104)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !849, file: !15, line: 1248, baseType: !106, size: 32, offset: 7168)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !849, file: !15, line: 1249, baseType: !3155, size: 64, offset: 7232)
!3155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3156, size: 64)
!3156 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !15, line: 634, flags: DIFlagFwdDecl)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !849, file: !15, line: 1252, baseType: !3158, size: 256, offset: 7296)
!3158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 256, elements: !3033)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !849, file: !15, line: 1253, baseType: !3160, size: 128, offset: 7552)
!3160 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3161, line: 21, baseType: !3162)
!3161 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3162 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3161, line: 19, size: 128, elements: !3163)
!3163 = !{!3164}
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3162, file: !3161, line: 20, baseType: !3165, size: 128)
!3165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !235, size: 128, elements: !1874)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !849, file: !15, line: 1255, baseType: !7, size: 32, offset: 7680)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !849, file: !15, line: 1261, baseType: !258, size: 256, offset: 7744)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !849, file: !15, line: 1267, baseType: !475, size: 64, offset: 8000)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !849, file: !15, line: 1269, baseType: !3170, size: 64, offset: 8064)
!3170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3171, size: 64)
!3171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3172)
!3172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !598, line: 128, size: 1024, align: 512, elements: !3173)
!3173 = !{!3174, !3178, !3179, !3186, !3192, !3196, !3200, !3204, !3205, !3209, !3213, !3218, !3222}
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !3172, file: !598, line: 129, baseType: !3175, size: 64)
!3175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3176, size: 64)
!3176 = !DISubroutineType(types: !3177)
!3177 = !{!114, !596, !7}
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !3172, file: !598, line: 130, baseType: !3175, size: 64, offset: 64)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !3172, file: !598, line: 131, baseType: !3180, size: 64, offset: 128)
!3180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3181, size: 64)
!3181 = !DISubroutineType(types: !3182)
!3182 = !{!114, !3183, !3185}
!3183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3184, size: 64)
!3184 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !597)
!3185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !3172, file: !598, line: 132, baseType: !3187, size: 64, offset: 192)
!3187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3188, size: 64)
!3188 = !DISubroutineType(types: !3189)
!3189 = !{!114, !3183, !7, !475, !3190}
!3190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3191, size: 64)
!3191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !621)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !3172, file: !598, line: 134, baseType: !3193, size: 64, offset: 256)
!3193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3194, size: 64)
!3194 = !DISubroutineType(types: !3195)
!3195 = !{!114, !3183}
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !3172, file: !598, line: 135, baseType: !3197, size: 64, offset: 320)
!3197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3198, size: 64)
!3198 = !DISubroutineType(types: !3199)
!3199 = !{!114, !596}
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !3172, file: !598, line: 136, baseType: !3201, size: 64, offset: 384)
!3201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3202, size: 64)
!3202 = !DISubroutineType(types: !3203)
!3203 = !{null, !596}
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !3172, file: !598, line: 137, baseType: !3201, size: 64, offset: 448)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !3172, file: !598, line: 138, baseType: !3206, size: 64, offset: 512)
!3206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3207, size: 64)
!3207 = !DISubroutineType(types: !3208)
!3208 = !{null, !596, !636}
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !3172, file: !598, line: 139, baseType: !3210, size: 64, offset: 576)
!3210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3211, size: 64)
!3211 = !DISubroutineType(types: !3212)
!3212 = !{!485, !596, !485, !114}
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !3172, file: !598, line: 140, baseType: !3214, size: 64, offset: 640)
!3214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3215, size: 64)
!3215 = !DISubroutineType(types: !3216)
!3216 = !{!591, !3217}
!3217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !3172, file: !598, line: 141, baseType: !3219, size: 64, offset: 704)
!3219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3220, size: 64)
!3220 = !DISubroutineType(types: !3221)
!3221 = !{!114, !759, !472}
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !3172, file: !598, line: 142, baseType: !3223, size: 64, offset: 768)
!3223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3224, size: 64)
!3224 = !DISubroutineType(types: !3225)
!3225 = !{!596, !596, !3226}
!3226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3227, size: 64)
!3227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !637)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !849, file: !15, line: 1271, baseType: !3229, size: 448, offset: 8128)
!3229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1058, line: 63, size: 448, elements: !3230)
!3230 = !{!3231, !3236, !3237, !3238, !3239, !3240, !3241}
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3229, file: !1058, line: 64, baseType: !3232, size: 64)
!3232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3233, size: 64)
!3233 = !DISubroutineType(types: !3234)
!3234 = !{!113, !3235, !1056}
!3235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3229, size: 64)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3229, file: !1058, line: 66, baseType: !3232, size: 64, offset: 64)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3229, file: !1058, line: 69, baseType: !751, size: 64, offset: 128)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3229, file: !1058, line: 70, baseType: !114, size: 32, offset: 192)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3229, file: !1058, line: 71, baseType: !7, size: 32, offset: 224)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3229, file: !1058, line: 74, baseType: !270, size: 128, offset: 256)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3229, file: !1058, line: 85, baseType: !3242, size: 64, offset: 384)
!3242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !849, file: !15, line: 1274, baseType: !249, size: 64, offset: 8576)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !849, file: !15, line: 1280, baseType: !249, size: 64, offset: 8640)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !849, file: !15, line: 1283, baseType: !114, size: 32, offset: 8704)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !849, file: !15, line: 1286, baseType: !2523, size: 32, offset: 8736)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !849, file: !15, line: 1289, baseType: !3248, size: 64, offset: 8768)
!3248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3249, size: 64)
!3249 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1712, line: 18, flags: DIFlagFwdDecl)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !849, file: !15, line: 1290, baseType: !315, size: 64, offset: 8832)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !849, file: !15, line: 1297, baseType: !558, size: 64, offset: 8896)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !849, file: !15, line: 1304, baseType: !3253, size: 64, offset: 8960)
!3253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3254, line: 49, size: 64, elements: !3255)
!3254 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3255 = !{!3256}
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3253, file: !3254, line: 50, baseType: !3257, size: 64)
!3257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3258, size: 64)
!3258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3254, line: 41, size: 512, align: 512, elements: !3259)
!3259 = !{!3260, !3261, !3266}
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3258, file: !3254, line: 43, baseType: !205, size: 32)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3258, file: !3254, line: 45, baseType: !3262, size: 192, offset: 64)
!3262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3254, line: 29, size: 192, elements: !3263)
!3263 = !{!3264, !3265}
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3262, file: !3254, line: 30, baseType: !270, size: 128)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3262, file: !3254, line: 32, baseType: !751, size: 64, offset: 128)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3258, file: !3254, line: 46, baseType: !751, size: 64, offset: 256)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !849, file: !15, line: 1305, baseType: !3253, size: 64, offset: 9024)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !849, file: !15, line: 1306, baseType: !195, size: 128, align: 64, offset: 9088)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !849, file: !15, line: 1307, baseType: !1711, size: 256, offset: 9216)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !849, file: !15, line: 1309, baseType: !258, size: 256, offset: 9472)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !849, file: !15, line: 1314, baseType: !114, size: 32, offset: 9728)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !849, file: !15, line: 1317, baseType: !205, size: 32, align: 512, offset: 10240)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !849, file: !15, line: 1318, baseType: !270, size: 128, offset: 10304)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !849, file: !15, line: 1320, baseType: !205, size: 32, offset: 10432)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !849, file: !15, line: 1321, baseType: !270, size: 128, offset: 10496)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !637, file: !15, line: 656, baseType: !2325, size: 64, offset: 512)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !637, file: !15, line: 659, baseType: !98, size: 64, offset: 576)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !637, file: !15, line: 663, baseType: !113, size: 64, offset: 640)
!3279 = !DIDerivedType(tag: DW_TAG_member, scope: !637, file: !15, line: 671, baseType: !3280, size: 32, offset: 704)
!3280 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !637, file: !15, line: 671, size: 32, elements: !3281)
!3281 = !{!3282, !3284}
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3280, file: !15, line: 672, baseType: !3283, size: 32)
!3283 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3280, file: !15, line: 673, baseType: !7, size: 32)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !637, file: !15, line: 675, baseType: !711, size: 32, offset: 736)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !637, file: !15, line: 676, baseType: !178, size: 64, offset: 768)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !637, file: !15, line: 677, baseType: !747, size: 128, offset: 832)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !637, file: !15, line: 678, baseType: !747, size: 128, offset: 960)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !637, file: !15, line: 679, baseType: !747, size: 128, offset: 1088)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !637, file: !15, line: 680, baseType: !205, size: 32, offset: 1216)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !637, file: !15, line: 681, baseType: !244, size: 16, offset: 1248)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !637, file: !15, line: 682, baseType: !233, size: 8, offset: 1264)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !637, file: !15, line: 683, baseType: !233, size: 8, offset: 1272)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !637, file: !15, line: 684, baseType: !1189, size: 64, offset: 1280)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !637, file: !15, line: 691, baseType: !113, size: 64, offset: 1344)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !637, file: !15, line: 692, baseType: !412, size: 320, offset: 1408)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !637, file: !15, line: 694, baseType: !113, size: 64, offset: 1728)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !637, file: !15, line: 695, baseType: !113, size: 64, offset: 1792)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !637, file: !15, line: 697, baseType: !319, size: 128, offset: 1856)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !637, file: !15, line: 698, baseType: !270, size: 128, offset: 1984)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !637, file: !15, line: 707, baseType: !270, size: 128, offset: 2112)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !637, file: !15, line: 708, baseType: !270, size: 128, offset: 2240)
!3303 = !DIDerivedType(tag: DW_TAG_member, scope: !637, file: !15, line: 709, baseType: !3304, size: 128, offset: 2368)
!3304 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !637, file: !15, line: 709, size: 128, elements: !3305)
!3305 = !{!3306, !3307}
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3304, file: !15, line: 710, baseType: !315, size: 64)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3304, file: !15, line: 711, baseType: !195, size: 128, align: 64)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !637, file: !15, line: 713, baseType: !251, size: 64, offset: 2496)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !637, file: !15, line: 714, baseType: !251, size: 64, offset: 2560)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !637, file: !15, line: 715, baseType: !225, size: 32, offset: 2624)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !637, file: !15, line: 716, baseType: !225, size: 32, offset: 2656)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !637, file: !15, line: 717, baseType: !225, size: 32, offset: 2688)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !637, file: !15, line: 719, baseType: !225, size: 32, offset: 2720)
!3314 = !DIDerivedType(tag: DW_TAG_member, scope: !637, file: !15, line: 721, baseType: !3315, size: 64, offset: 2752)
!3315 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !637, file: !15, line: 721, size: 64, elements: !3316)
!3316 = !{!3317, !3319}
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3315, file: !15, line: 722, baseType: !3318, size: 64)
!3318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3315, file: !15, line: 723, baseType: !905, size: 64)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !637, file: !15, line: 725, baseType: !3321, size: 64, offset: 2816)
!3321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3322, size: 64)
!3322 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !15, line: 725, flags: DIFlagFwdDecl)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !637, file: !15, line: 726, baseType: !2326, size: 1536, align: 64, offset: 2880)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !637, file: !15, line: 727, baseType: !270, size: 128, offset: 4416)
!3325 = !DIDerivedType(tag: DW_TAG_member, scope: !637, file: !15, line: 728, baseType: !3326, size: 64, offset: 4544)
!3326 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !637, file: !15, line: 728, size: 64, elements: !3327)
!3327 = !{!3328, !3329, !3332, !3333}
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3326, file: !15, line: 729, baseType: !2297, size: 64)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3326, file: !15, line: 730, baseType: !3330, size: 64)
!3330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3331, size: 64)
!3331 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !15, line: 730, flags: DIFlagFwdDecl)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3326, file: !15, line: 731, baseType: !485, size: 64)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3326, file: !15, line: 732, baseType: !7, size: 32)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !637, file: !15, line: 735, baseType: !106, size: 32, offset: 4608)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !637, file: !15, line: 738, baseType: !106, size: 32, offset: 4640)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !637, file: !15, line: 739, baseType: !3155, size: 64, offset: 4672)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !637, file: !15, line: 750, baseType: !98, size: 64, offset: 4736)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !597, file: !598, line: 91, baseType: !3339, size: 256, offset: 448)
!3339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !236, size: 256, elements: !3033)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !597, file: !598, line: 94, baseType: !3341, size: 64, offset: 704)
!3341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3342, line: 25, size: 64, elements: !3343)
!3342 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!3343 = !{!3344}
!3344 = !DIDerivedType(tag: DW_TAG_member, scope: !3341, file: !3342, line: 26, baseType: !3345, size: 64)
!3345 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3341, file: !3342, line: 26, size: 64, elements: !3346)
!3346 = !{!3347, !3348}
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !3345, file: !3342, line: 28, baseType: !110, size: 64, align: 64)
!3348 = !DIDerivedType(tag: DW_TAG_member, scope: !3345, file: !3342, line: 30, baseType: !3349, size: 64)
!3349 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3345, file: !3342, line: 30, size: 64, elements: !3350)
!3350 = !{!3351, !3352}
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3349, file: !3342, line: 31, baseType: !205, size: 32)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3349, file: !3342, line: 32, baseType: !114, size: 32, offset: 32)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !597, file: !598, line: 95, baseType: !3170, size: 64, offset: 768)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !597, file: !598, line: 96, baseType: !848, size: 64, offset: 832)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !597, file: !598, line: 97, baseType: !113, size: 64, offset: 896)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !597, file: !598, line: 98, baseType: !98, size: 64, offset: 960)
!3357 = !DIDerivedType(tag: DW_TAG_member, scope: !597, file: !598, line: 100, baseType: !3358, size: 128, offset: 1024)
!3358 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !597, file: !598, line: 100, size: 128, elements: !3359)
!3359 = !{!3360, !3361}
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3358, file: !598, line: 101, baseType: !270, size: 128)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3358, file: !598, line: 102, baseType: !3362, size: 64)
!3362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !597, file: !598, line: 104, baseType: !270, size: 128, offset: 1152)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !597, file: !598, line: 105, baseType: !270, size: 128, offset: 1280)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !597, file: !598, line: 113, baseType: !3366, size: 128, offset: 1408)
!3366 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !597, file: !598, line: 109, size: 128, elements: !3367)
!3367 = !{!3368, !3369, !3370}
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3366, file: !598, line: 110, baseType: !319, size: 128)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3366, file: !598, line: 111, baseType: !612, size: 128)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3366, file: !598, line: 112, baseType: !195, size: 128, align: 64)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !592, file: !593, line: 72, baseType: !848, size: 64, offset: 64)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !592, file: !593, line: 73, baseType: !114, size: 32, offset: 128)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !592, file: !593, line: 74, baseType: !676, size: 64, offset: 192)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !587, file: !588, line: 10, baseType: !596, size: 64, offset: 64)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !183, file: !15, line: 1015, baseType: !636, size: 64, offset: 1344)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !183, file: !15, line: 1016, baseType: !3318, size: 64, offset: 1408)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !183, file: !15, line: 1018, baseType: !382, size: 64, offset: 1472)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !183, file: !15, line: 1020, baseType: !98, size: 64, offset: 1536)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !183, file: !15, line: 1023, baseType: !98, size: 64, offset: 1600)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !183, file: !15, line: 1027, baseType: !3381, size: 64, offset: 1664)
!3381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !183, file: !15, line: 1029, baseType: !2325, size: 64, offset: 1728)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !183, file: !15, line: 1030, baseType: !2523, size: 32, offset: 1792)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !183, file: !15, line: 1031, baseType: !2523, size: 32, offset: 1824)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !168, file: !15, line: 1917, baseType: !3386, size: 64, offset: 128)
!3386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3387, size: 64)
!3387 = !DISubroutineType(types: !3388)
!3388 = !{!790, !182, !485, !793, !976}
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !168, file: !15, line: 1918, baseType: !3390, size: 64, offset: 192)
!3390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3391, size: 64)
!3391 = !DISubroutineType(types: !3392)
!3392 = !{!790, !182, !475, !793, !976}
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !168, file: !15, line: 1919, baseType: !2457, size: 64, offset: 256)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !168, file: !15, line: 1920, baseType: !2457, size: 64, offset: 320)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !168, file: !15, line: 1921, baseType: !3396, size: 64, offset: 384)
!3396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3397, size: 64)
!3397 = !DISubroutineType(types: !3398)
!3398 = !{!114, !2460, !3399, !7}
!3399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3400, size: 64)
!3400 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !15, line: 53, flags: DIFlagFwdDecl)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !168, file: !15, line: 1923, baseType: !3402, size: 64, offset: 448)
!3402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3403, size: 64)
!3403 = !DISubroutineType(types: !3404)
!3404 = !{!114, !182, !3405}
!3405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3406, size: 64)
!3406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !15, line: 1858, size: 128, elements: !3407)
!3407 = !{!3408, !3413}
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3406, file: !15, line: 1859, baseType: !3409, size: 64)
!3409 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !15, line: 1855, baseType: !3410)
!3410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3411, size: 64)
!3411 = !DISubroutineType(types: !3412)
!3412 = !{!472, !3405, !475, !114, !178, !382, !7}
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3406, file: !15, line: 1860, baseType: !178, size: 64, offset: 64)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !168, file: !15, line: 1924, baseType: !3415, size: 64, offset: 512)
!3415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3416, size: 64)
!3416 = !DISubroutineType(types: !3417)
!3417 = !{!3418, !182, !3420}
!3418 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !3419, line: 59, baseType: !7)
!3419 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!3420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3421, size: 64)
!3421 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !15, line: 61, flags: DIFlagFwdDecl)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !168, file: !15, line: 1925, baseType: !3423, size: 64, offset: 576)
!3423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3424, size: 64)
!3424 = !DISubroutineType(types: !3425)
!3425 = !{!751, !182, !7, !113}
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !168, file: !15, line: 1926, baseType: !3423, size: 64, offset: 640)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !168, file: !15, line: 1927, baseType: !3428, size: 64, offset: 704)
!3428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3429, size: 64)
!3429 = !DISubroutineType(types: !3430)
!3430 = !{!114, !182, !2616}
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !168, file: !15, line: 1928, baseType: !113, size: 64, offset: 768)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !168, file: !15, line: 1929, baseType: !3433, size: 64, offset: 832)
!3433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3434, size: 64)
!3434 = !DISubroutineType(types: !3435)
!3435 = !{!114, !636, !182}
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !168, file: !15, line: 1930, baseType: !3437, size: 64, offset: 896)
!3437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3438, size: 64)
!3438 = !DISubroutineType(types: !3439)
!3439 = !{!114, !182, !3440}
!3440 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !15, line: 1061, baseType: !98)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !168, file: !15, line: 1931, baseType: !3433, size: 64, offset: 960)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !168, file: !15, line: 1932, baseType: !3443, size: 64, offset: 1024)
!3443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3444, size: 64)
!3444 = !DISubroutineType(types: !3445)
!3445 = !{!114, !182, !178, !178, !114}
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !168, file: !15, line: 1933, baseType: !3447, size: 64, offset: 1088)
!3447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3448, size: 64)
!3448 = !DISubroutineType(types: !3449)
!3449 = !{!114, !114, !182, !114}
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !168, file: !15, line: 1934, baseType: !3451, size: 64, offset: 1152)
!3451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3452, size: 64)
!3452 = !DISubroutineType(types: !3453)
!3453 = !{!114, !182, !114, !3454}
!3454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3455, size: 64)
!3455 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !15, line: 1063, flags: DIFlagFwdDecl)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !168, file: !15, line: 1935, baseType: !1604, size: 64, offset: 1216)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !168, file: !15, line: 1936, baseType: !3458, size: 64, offset: 1280)
!3458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3459, size: 64)
!3459 = !DISubroutineType(types: !3460)
!3460 = !{!114, !114}
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !168, file: !15, line: 1937, baseType: !3451, size: 64, offset: 1344)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !168, file: !15, line: 1938, baseType: !3463, size: 64, offset: 1408)
!3463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3464, size: 64)
!3464 = !DISubroutineType(types: !3465)
!3465 = !{!790, !2297, !182, !976, !793, !7}
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !168, file: !15, line: 1939, baseType: !3467, size: 64, offset: 1472)
!3467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3468, size: 64)
!3468 = !DISubroutineType(types: !3469)
!3469 = !{!790, !182, !976, !2297, !793, !7}
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !168, file: !15, line: 1940, baseType: !2513, size: 64, offset: 1536)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !168, file: !15, line: 1941, baseType: !3472, size: 64, offset: 1600)
!3472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3473, size: 64)
!3473 = !DISubroutineType(types: !3474)
!3474 = !{!114, !182, !114, !3475, !2434}
!3475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3454, size: 64)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !168, file: !15, line: 1942, baseType: !3477, size: 64, offset: 1664)
!3477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3478, size: 64)
!3478 = !DISubroutineType(types: !3479)
!3479 = !{!751, !182, !114, !178, !178}
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !168, file: !15, line: 1944, baseType: !3481, size: 64, offset: 1728)
!3481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3482, size: 64)
!3482 = !DISubroutineType(types: !3483)
!3483 = !{null, !955, !182}
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !168, file: !15, line: 1948, baseType: !3485, size: 64, offset: 1792)
!3485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3486, size: 64)
!3486 = !DISubroutineType(types: !3487)
!3487 = !{!790, !182, !178, !182, !178, !793, !7}
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !168, file: !15, line: 1950, baseType: !3489, size: 64, offset: 1856)
!3489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3490, size: 64)
!3490 = !DISubroutineType(types: !3491)
!3491 = !{!178, !182, !178, !182, !178, !178, !7}
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !168, file: !15, line: 1953, baseType: !3443, size: 64, offset: 1920)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !168, file: !15, line: 1954, baseType: !3494, size: 64, offset: 1984)
!3494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3495, size: 64)
!3495 = !DISubroutineType(types: !3496)
!3496 = !{!114, !3497, !7}
!3497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3498, size: 64)
!3498 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !15, line: 1911, flags: DIFlagFwdDecl)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !168, file: !15, line: 1955, baseType: !3500, size: 64, offset: 2048)
!3500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3501, size: 64)
!3501 = !DISubroutineType(types: !3502)
!3502 = !{!114, !3497, !3399, !7}
!3503 = !DIGlobalVariableExpression(var: !3504, expr: !DIExpression())
!3504 = distinct !DIGlobalVariable(scope: null, file: !3505, line: 249, type: !3506, isLocal: true, isDefinition: true)
!3505 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!3506 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 224, elements: !3507)
!3507 = !{!3508}
!3508 = !DISubrange(count: 28)
!3509 = !{i32 7, !"Dwarf Version", i32 5}
!3510 = !{i32 2, !"Debug Info Version", i32 3}
!3511 = !{i32 1, !"wchar_size", i32 2}
!3512 = !{i32 8, !"cf-protection-branch", i32 1}
!3513 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3514 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!3515 = !{i32 1, !"Code Model", i32 2}
!3516 = !{i32 1, !"override-stack-alignment", i32 8}
!3517 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!3518 = distinct !DISubprogram(name: "__initstub__kmod_kdebugfs__278_195_arch_kdebugfs_init3", scope: !3, file: !3, line: 195, type: !3519, scopeLine: 195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3519 = !DISubroutineType(types: !3520)
!3520 = !{!114}
!3521 = !DILocation(line: 195, column: 1, scope: !3518)
!3522 = distinct !DISubprogram(name: "arch_kdebugfs_init", scope: !3, file: !3, line: 183, type: !3519, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3523)
!3523 = !{!3524}
!3524 = !DILocalVariable(name: "error", scope: !3522, file: !3, line: 185, type: !114)
!3525 = !DILocation(line: 185, column: 2, scope: !3522)
!3526 = !DILocation(line: 185, column: 6, scope: !3522)
!3527 = !DILocation(line: 187, column: 21, scope: !3522)
!3528 = !DILocation(line: 187, column: 19, scope: !3522)
!3529 = !DILocation(line: 190, column: 10, scope: !3522)
!3530 = !DILocation(line: 190, column: 8, scope: !3522)
!3531 = !DILocation(line: 193, column: 9, scope: !3522)
!3532 = !DILocation(line: 194, column: 1, scope: !3522)
!3533 = !DILocation(line: 193, column: 2, scope: !3522)
!3534 = !DISubprogram(name: "debugfs_create_dir", scope: !144, file: !144, line: 87, type: !3535, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3535 = !DISubroutineType(types: !3536)
!3536 = !{!596, !475, !596}
!3537 = distinct !DISubprogram(name: "boot_params_kdebugfs_init", scope: !3, file: !3, line: 165, type: !3519, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3538)
!3538 = !{!3539, !3540}
!3539 = !DILocalVariable(name: "dbp", scope: !3537, file: !3, line: 167, type: !596)
!3540 = !DILocalVariable(name: "error", scope: !3537, file: !3, line: 168, type: !114)
!3541 = !DILocation(line: 167, column: 2, scope: !3537)
!3542 = !DILocation(line: 167, column: 17, scope: !3537)
!3543 = !DILocation(line: 168, column: 2, scope: !3537)
!3544 = !DILocation(line: 168, column: 6, scope: !3537)
!3545 = !DILocation(line: 170, column: 42, scope: !3537)
!3546 = !DILocation(line: 170, column: 8, scope: !3537)
!3547 = !DILocation(line: 170, column: 6, scope: !3537)
!3548 = !DILocation(line: 172, column: 41, scope: !3537)
!3549 = !DILocation(line: 172, column: 2, scope: !3537)
!3550 = !DILocation(line: 173, column: 39, scope: !3537)
!3551 = !DILocation(line: 173, column: 2, scope: !3537)
!3552 = !DILocation(line: 175, column: 34, scope: !3537)
!3553 = !DILocation(line: 175, column: 10, scope: !3537)
!3554 = !DILocation(line: 175, column: 8, scope: !3537)
!3555 = !DILocation(line: 176, column: 6, scope: !3556)
!3556 = distinct !DILexicalBlock(scope: !3537, file: !3, line: 176, column: 6)
!3557 = !DILocation(line: 176, column: 6, scope: !3537)
!3558 = !DILocation(line: 177, column: 28, scope: !3556)
!3559 = !DILocation(line: 177, column: 3, scope: !3556)
!3560 = !DILocation(line: 179, column: 9, scope: !3537)
!3561 = !DILocation(line: 180, column: 1, scope: !3537)
!3562 = !DILocation(line: 179, column: 2, scope: !3537)
!3563 = !DISubprogram(name: "debugfs_create_x16", scope: !144, file: !144, line: 129, type: !3564, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3564 = !DISubroutineType(types: !3565)
!3565 = !{null, !475, !640, !596, !3566}
!3566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!3567 = !DISubprogram(name: "debugfs_create_blob", scope: !144, file: !144, line: 144, type: !3568, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3568 = !DISubroutineType(types: !3569)
!3569 = !{!596, !475, !640, !596, !3570}
!3570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!3571 = distinct !DISubprogram(name: "create_setup_data_nodes", scope: !3, file: !3, line: 89, type: !3198, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3572)
!3572 = !{!3573, !3574, !3575, !3582, !3591, !3592, !3593, !3594, !3595, !3596, !3597}
!3573 = !DILocalVariable(name: "parent", arg: 1, scope: !3571, file: !3, line: 89, type: !596)
!3574 = !DILocalVariable(name: "indirect", scope: !3571, file: !3, line: 91, type: !101)
!3575 = !DILocalVariable(name: "node", scope: !3571, file: !3, line: 92, type: !3576)
!3576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3577, size: 64)
!3577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "setup_data_node", file: !3, line: 23, size: 128, elements: !3578)
!3578 = !{!3579, !3580, !3581}
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "paddr", scope: !3577, file: !3, line: 24, baseType: !382, size: 64)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3577, file: !3, line: 25, baseType: !437, size: 32, offset: 64)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3577, file: !3, line: 26, baseType: !437, size: 32, offset: 96)
!3582 = !DILocalVariable(name: "data", scope: !3571, file: !3, line: 93, type: !3583)
!3583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3584, size: 64)
!3584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "setup_data", file: !103, line: 53, size: 128, elements: !3585)
!3585 = !{!3586, !3587, !3588, !3589}
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3584, file: !103, line: 54, baseType: !110, size: 64)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3584, file: !103, line: 55, baseType: !106, size: 32, offset: 64)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3584, file: !103, line: 56, baseType: !106, size: 32, offset: 96)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3584, file: !103, line: 57, baseType: !3590, offset: 128)
!3590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !235, elements: !341)
!3591 = !DILocalVariable(name: "pa_data", scope: !3571, file: !3, line: 94, type: !382)
!3592 = !DILocalVariable(name: "pa_next", scope: !3571, file: !3, line: 94, type: !382)
!3593 = !DILocalVariable(name: "d", scope: !3571, file: !3, line: 95, type: !596)
!3594 = !DILocalVariable(name: "error", scope: !3571, file: !3, line: 96, type: !114)
!3595 = !DILocalVariable(name: "len", scope: !3571, file: !3, line: 97, type: !437)
!3596 = !DILocalVariable(name: "no", scope: !3571, file: !3, line: 98, type: !114)
!3597 = !DILabel(scope: !3571, name: "err_dir", file: !3, line: 155)
!3598 = !DILocation(line: 89, column: 58, scope: !3571)
!3599 = !DILocation(line: 91, column: 2, scope: !3571)
!3600 = !DILocation(line: 91, column: 25, scope: !3571)
!3601 = !DILocation(line: 92, column: 2, scope: !3571)
!3602 = !DILocation(line: 92, column: 26, scope: !3571)
!3603 = !DILocation(line: 93, column: 2, scope: !3571)
!3604 = !DILocation(line: 93, column: 21, scope: !3571)
!3605 = !DILocation(line: 94, column: 2, scope: !3571)
!3606 = !DILocation(line: 94, column: 6, scope: !3571)
!3607 = !DILocation(line: 94, column: 15, scope: !3571)
!3608 = !DILocation(line: 95, column: 2, scope: !3571)
!3609 = !DILocation(line: 95, column: 17, scope: !3571)
!3610 = !DILocation(line: 96, column: 2, scope: !3571)
!3611 = !DILocation(line: 96, column: 6, scope: !3571)
!3612 = !DILocation(line: 97, column: 2, scope: !3571)
!3613 = !DILocation(line: 97, column: 6, scope: !3571)
!3614 = !DILocation(line: 98, column: 2, scope: !3571)
!3615 = !DILocation(line: 98, column: 6, scope: !3571)
!3616 = !DILocation(line: 100, column: 39, scope: !3571)
!3617 = !DILocation(line: 100, column: 6, scope: !3571)
!3618 = !DILocation(line: 100, column: 4, scope: !3571)
!3619 = !DILocation(line: 102, column: 28, scope: !3571)
!3620 = !DILocation(line: 102, column: 10, scope: !3571)
!3621 = !DILocation(line: 104, column: 2, scope: !3571)
!3622 = !DILocation(line: 104, column: 9, scope: !3571)
!3623 = !DILocation(line: 105, column: 10, scope: !3624)
!3624 = distinct !DILexicalBlock(scope: !3571, file: !3, line: 104, column: 18)
!3625 = !DILocation(line: 105, column: 8, scope: !3624)
!3626 = !DILocation(line: 106, column: 8, scope: !3627)
!3627 = distinct !DILexicalBlock(scope: !3624, file: !3, line: 106, column: 7)
!3628 = !DILocation(line: 106, column: 7, scope: !3624)
!3629 = !DILocation(line: 107, column: 10, scope: !3630)
!3630 = distinct !DILexicalBlock(scope: !3627, file: !3, line: 106, column: 14)
!3631 = !DILocation(line: 108, column: 4, scope: !3630)
!3632 = !DILocation(line: 111, column: 19, scope: !3624)
!3633 = !DILocation(line: 111, column: 10, scope: !3624)
!3634 = !DILocation(line: 111, column: 8, scope: !3624)
!3635 = !DILocation(line: 112, column: 8, scope: !3636)
!3636 = distinct !DILexicalBlock(scope: !3624, file: !3, line: 112, column: 7)
!3637 = !DILocation(line: 112, column: 7, scope: !3624)
!3638 = !DILocation(line: 113, column: 10, scope: !3639)
!3639 = distinct !DILexicalBlock(scope: !3636, file: !3, line: 112, column: 14)
!3640 = !DILocation(line: 113, column: 4, scope: !3639)
!3641 = !DILocation(line: 114, column: 10, scope: !3639)
!3642 = !DILocation(line: 115, column: 4, scope: !3639)
!3643 = !DILocation(line: 117, column: 13, scope: !3624)
!3644 = !DILocation(line: 117, column: 19, scope: !3624)
!3645 = !DILocation(line: 117, column: 11, scope: !3624)
!3646 = !DILocation(line: 119, column: 7, scope: !3647)
!3647 = distinct !DILexicalBlock(scope: !3624, file: !3, line: 119, column: 7)
!3648 = !DILocation(line: 119, column: 13, scope: !3647)
!3649 = !DILocation(line: 119, column: 18, scope: !3647)
!3650 = !DILocation(line: 119, column: 7, scope: !3624)
!3651 = !DILocation(line: 120, column: 26, scope: !3652)
!3652 = distinct !DILexicalBlock(scope: !3647, file: !3, line: 119, column: 37)
!3653 = !DILocation(line: 120, column: 32, scope: !3652)
!3654 = !DILocation(line: 120, column: 24, scope: !3652)
!3655 = !DILocation(line: 120, column: 10, scope: !3652)
!3656 = !DILocation(line: 120, column: 8, scope: !3652)
!3657 = !DILocation(line: 121, column: 13, scope: !3652)
!3658 = !DILocation(line: 121, column: 4, scope: !3652)
!3659 = !DILocation(line: 122, column: 20, scope: !3652)
!3660 = !DILocation(line: 122, column: 29, scope: !3652)
!3661 = !DILocation(line: 122, column: 11, scope: !3652)
!3662 = !DILocation(line: 122, column: 9, scope: !3652)
!3663 = !DILocation(line: 123, column: 9, scope: !3664)
!3664 = distinct !DILexicalBlock(scope: !3652, file: !3, line: 123, column: 8)
!3665 = !DILocation(line: 123, column: 8, scope: !3652)
!3666 = !DILocation(line: 124, column: 11, scope: !3667)
!3667 = distinct !DILexicalBlock(scope: !3664, file: !3, line: 123, column: 15)
!3668 = !DILocation(line: 124, column: 5, scope: !3667)
!3669 = !DILocation(line: 125, column: 11, scope: !3667)
!3670 = !DILocation(line: 126, column: 5, scope: !3667)
!3671 = !DILocation(line: 129, column: 40, scope: !3652)
!3672 = !DILocation(line: 129, column: 46, scope: !3652)
!3673 = !DILocation(line: 129, column: 13, scope: !3652)
!3674 = !DILocation(line: 131, column: 8, scope: !3675)
!3675 = distinct !DILexicalBlock(scope: !3652, file: !3, line: 131, column: 8)
!3676 = !DILocation(line: 131, column: 18, scope: !3675)
!3677 = !DILocation(line: 131, column: 23, scope: !3675)
!3678 = !DILocation(line: 131, column: 8, scope: !3652)
!3679 = !DILocation(line: 132, column: 19, scope: !3680)
!3680 = distinct !DILexicalBlock(scope: !3675, file: !3, line: 131, column: 42)
!3681 = !DILocation(line: 132, column: 29, scope: !3680)
!3682 = !DILocation(line: 132, column: 5, scope: !3680)
!3683 = !DILocation(line: 132, column: 11, scope: !3680)
!3684 = !DILocation(line: 132, column: 17, scope: !3680)
!3685 = !DILocation(line: 133, column: 19, scope: !3680)
!3686 = !DILocation(line: 133, column: 29, scope: !3680)
!3687 = !DILocation(line: 133, column: 5, scope: !3680)
!3688 = !DILocation(line: 133, column: 11, scope: !3680)
!3689 = !DILocation(line: 133, column: 17, scope: !3680)
!3690 = !DILocation(line: 134, column: 19, scope: !3680)
!3691 = !DILocation(line: 134, column: 29, scope: !3680)
!3692 = !DILocation(line: 134, column: 5, scope: !3680)
!3693 = !DILocation(line: 134, column: 11, scope: !3680)
!3694 = !DILocation(line: 134, column: 17, scope: !3680)
!3695 = !DILocation(line: 135, column: 4, scope: !3680)
!3696 = !DILocation(line: 136, column: 19, scope: !3697)
!3697 = distinct !DILexicalBlock(scope: !3675, file: !3, line: 135, column: 11)
!3698 = !DILocation(line: 136, column: 5, scope: !3697)
!3699 = !DILocation(line: 136, column: 11, scope: !3697)
!3700 = !DILocation(line: 136, column: 17, scope: !3697)
!3701 = !DILocation(line: 137, column: 19, scope: !3697)
!3702 = !DILocation(line: 137, column: 25, scope: !3697)
!3703 = !DILocation(line: 137, column: 5, scope: !3697)
!3704 = !DILocation(line: 137, column: 11, scope: !3697)
!3705 = !DILocation(line: 137, column: 17, scope: !3697)
!3706 = !DILocation(line: 138, column: 19, scope: !3697)
!3707 = !DILocation(line: 138, column: 25, scope: !3697)
!3708 = !DILocation(line: 138, column: 5, scope: !3697)
!3709 = !DILocation(line: 138, column: 11, scope: !3697)
!3710 = !DILocation(line: 138, column: 17, scope: !3697)
!3711 = !DILocation(line: 140, column: 3, scope: !3652)
!3712 = !DILocation(line: 141, column: 18, scope: !3713)
!3713 = distinct !DILexicalBlock(scope: !3647, file: !3, line: 140, column: 10)
!3714 = !DILocation(line: 141, column: 4, scope: !3713)
!3715 = !DILocation(line: 141, column: 10, scope: !3713)
!3716 = !DILocation(line: 141, column: 16, scope: !3713)
!3717 = !DILocation(line: 142, column: 18, scope: !3713)
!3718 = !DILocation(line: 142, column: 24, scope: !3713)
!3719 = !DILocation(line: 142, column: 4, scope: !3713)
!3720 = !DILocation(line: 142, column: 10, scope: !3713)
!3721 = !DILocation(line: 142, column: 16, scope: !3713)
!3722 = !DILocation(line: 143, column: 18, scope: !3713)
!3723 = !DILocation(line: 143, column: 24, scope: !3713)
!3724 = !DILocation(line: 143, column: 4, scope: !3713)
!3725 = !DILocation(line: 143, column: 10, scope: !3713)
!3726 = !DILocation(line: 143, column: 16, scope: !3713)
!3727 = !DILocation(line: 146, column: 26, scope: !3624)
!3728 = !DILocation(line: 146, column: 29, scope: !3624)
!3729 = !DILocation(line: 146, column: 33, scope: !3624)
!3730 = !DILocation(line: 146, column: 3, scope: !3624)
!3731 = !DILocation(line: 147, column: 13, scope: !3624)
!3732 = !DILocation(line: 147, column: 11, scope: !3624)
!3733 = !DILocation(line: 149, column: 12, scope: !3624)
!3734 = !DILocation(line: 149, column: 3, scope: !3624)
!3735 = !DILocation(line: 150, column: 5, scope: !3624)
!3736 = distinct !{!3736, !3621, !3737, !3738, !3739}
!3737 = !DILocation(line: 151, column: 2, scope: !3571)
!3738 = !{!"llvm.loop.mustprogress"}
!3739 = !{!"llvm.loop.unroll.disable"}
!3740 = !DILocation(line: 153, column: 2, scope: !3571)
!3741 = !DILocation(line: 155, column: 1, scope: !3571)
!3742 = !DILocation(line: 156, column: 27, scope: !3571)
!3743 = !DILocation(line: 156, column: 2, scope: !3571)
!3744 = !DILocation(line: 157, column: 9, scope: !3571)
!3745 = !DILocation(line: 157, column: 2, scope: !3571)
!3746 = !DILocation(line: 158, column: 1, scope: !3571)
!3747 = !DISubprogram(name: "debugfs_remove", scope: !144, file: !144, line: 97, type: !3202, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3748 = distinct !DISubprogram(name: "kmalloc", scope: !88, file: !88, line: 591, type: !3749, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3751)
!3749 = !DISubroutineType(types: !3750)
!3750 = !{!98, !793, !99}
!3751 = !{!3752, !3753, !3754}
!3752 = !DILocalVariable(name: "size", arg: 1, scope: !3748, file: !88, line: 591, type: !793)
!3753 = !DILocalVariable(name: "flags", arg: 2, scope: !3748, file: !88, line: 591, type: !99)
!3754 = !DILocalVariable(name: "index", scope: !3755, file: !88, line: 594, type: !7)
!3755 = distinct !DILexicalBlock(scope: !3756, file: !88, line: 593, column: 42)
!3756 = distinct !DILexicalBlock(scope: !3748, file: !88, line: 593, column: 6)
!3757 = !DILocation(line: 591, column: 61, scope: !3748)
!3758 = !DILocation(line: 591, column: 73, scope: !3748)
!3759 = !DILocation(line: 593, column: 27, scope: !3756)
!3760 = !DILocation(line: 593, column: 6, scope: !3756)
!3761 = !DILocation(line: 593, column: 33, scope: !3756)
!3762 = !DILocation(line: 593, column: 36, scope: !3756)
!3763 = !DILocation(line: 593, column: 6, scope: !3748)
!3764 = !DILocation(line: 594, column: 3, scope: !3755)
!3765 = !DILocation(line: 594, column: 16, scope: !3755)
!3766 = !DILocation(line: 596, column: 7, scope: !3767)
!3767 = distinct !DILexicalBlock(scope: !3755, file: !88, line: 596, column: 7)
!3768 = !DILocation(line: 596, column: 12, scope: !3767)
!3769 = !DILocation(line: 596, column: 7, scope: !3755)
!3770 = !DILocation(line: 597, column: 25, scope: !3767)
!3771 = !DILocation(line: 597, column: 31, scope: !3767)
!3772 = !DILocation(line: 597, column: 11, scope: !3767)
!3773 = !DILocation(line: 597, column: 4, scope: !3767)
!3774 = !DILocation(line: 599, column: 11, scope: !3755)
!3775 = !DILocation(line: 599, column: 9, scope: !3755)
!3776 = !DILocation(line: 601, column: 33, scope: !3755)
!3777 = !DILocation(line: 601, column: 40, scope: !3755)
!3778 = !DILocation(line: 601, column: 20, scope: !3755)
!3779 = !DILocation(line: 601, column: 5, scope: !3755)
!3780 = !DILocation(line: 601, column: 51, scope: !3755)
!3781 = !DILocation(line: 602, column: 5, scope: !3755)
!3782 = !DILocation(line: 602, column: 12, scope: !3755)
!3783 = !DILocation(line: 600, column: 10, scope: !3755)
!3784 = !DILocation(line: 600, column: 3, scope: !3755)
!3785 = !DILocation(line: 603, column: 2, scope: !3756)
!3786 = !DILocation(line: 604, column: 19, scope: !3748)
!3787 = !DILocation(line: 604, column: 25, scope: !3748)
!3788 = !DILocation(line: 604, column: 9, scope: !3748)
!3789 = !DILocation(line: 604, column: 2, scope: !3748)
!3790 = !DILocation(line: 605, column: 1, scope: !3748)
!3791 = !DISubprogram(name: "memremap", scope: !75, file: !75, line: 149, type: !3792, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3792 = !DISubroutineType(types: !3793)
!3793 = !{!98, !3794, !793, !113}
!3794 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !100, line: 164, baseType: !2906)
!3795 = !DISubprogram(name: "kfree", scope: !88, file: !88, line: 227, type: !3796, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3796 = !DISubroutineType(types: !3797)
!3797 = !{null, !2908}
!3798 = !DISubprogram(name: "memunmap", scope: !75, file: !75, line: 150, type: !669, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3799 = distinct !DISubprogram(name: "create_setup_data_node", scope: !3, file: !3, line: 76, type: !3800, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3802)
!3800 = !DISubroutineType(types: !3801)
!3801 = !{null, !596, !114, !3576}
!3802 = !{!3803, !3804, !3805, !3806, !3807}
!3803 = !DILocalVariable(name: "parent", arg: 1, scope: !3799, file: !3, line: 76, type: !596)
!3804 = !DILocalVariable(name: "no", arg: 2, scope: !3799, file: !3, line: 76, type: !114)
!3805 = !DILocalVariable(name: "node", arg: 3, scope: !3799, file: !3, line: 77, type: !3576)
!3806 = !DILocalVariable(name: "d", scope: !3799, file: !3, line: 79, type: !596)
!3807 = !DILocalVariable(name: "buf", scope: !3799, file: !3, line: 80, type: !1873)
!3808 = !DILocation(line: 76, column: 39, scope: !3799)
!3809 = !DILocation(line: 76, column: 51, scope: !3799)
!3810 = !DILocation(line: 77, column: 34, scope: !3799)
!3811 = !DILocation(line: 79, column: 2, scope: !3799)
!3812 = !DILocation(line: 79, column: 17, scope: !3799)
!3813 = !DILocation(line: 80, column: 2, scope: !3799)
!3814 = !DILocation(line: 80, column: 7, scope: !3799)
!3815 = !DILocation(line: 82, column: 10, scope: !3799)
!3816 = !DILocation(line: 82, column: 21, scope: !3799)
!3817 = !DILocation(line: 82, column: 2, scope: !3799)
!3818 = !DILocation(line: 83, column: 25, scope: !3799)
!3819 = !DILocation(line: 83, column: 30, scope: !3799)
!3820 = !DILocation(line: 83, column: 6, scope: !3799)
!3821 = !DILocation(line: 83, column: 4, scope: !3799)
!3822 = !DILocation(line: 85, column: 38, scope: !3799)
!3823 = !DILocation(line: 85, column: 42, scope: !3799)
!3824 = !DILocation(line: 85, column: 48, scope: !3799)
!3825 = !DILocation(line: 85, column: 2, scope: !3799)
!3826 = !DILocation(line: 86, column: 39, scope: !3799)
!3827 = !DILocation(line: 86, column: 42, scope: !3799)
!3828 = !DILocation(line: 86, column: 2, scope: !3799)
!3829 = !DILocation(line: 87, column: 1, scope: !3799)
!3830 = !DISubprogram(name: "kmalloc_large", scope: !88, file: !88, line: 531, type: !3749, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3831 = distinct !DISubprogram(name: "__kmalloc_index", scope: !88, file: !88, line: 444, type: !3832, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3834)
!3832 = !DISubroutineType(types: !3833)
!3833 = !{!7, !793, !472}
!3834 = !{!3835, !3836}
!3835 = !DILocalVariable(name: "size", arg: 1, scope: !3831, file: !88, line: 444, type: !793)
!3836 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !3831, file: !88, line: 445, type: !472)
!3837 = !DILocation(line: 444, column: 60, scope: !3831)
!3838 = !DILocation(line: 445, column: 16, scope: !3831)
!3839 = !DILocation(line: 447, column: 7, scope: !3840)
!3840 = distinct !DILexicalBlock(scope: !3831, file: !88, line: 447, column: 6)
!3841 = !DILocation(line: 447, column: 6, scope: !3831)
!3842 = !DILocation(line: 448, column: 3, scope: !3840)
!3843 = !DILocation(line: 450, column: 6, scope: !3844)
!3844 = distinct !DILexicalBlock(scope: !3831, file: !88, line: 450, column: 6)
!3845 = !DILocation(line: 450, column: 11, scope: !3844)
!3846 = !DILocation(line: 450, column: 6, scope: !3831)
!3847 = !DILocation(line: 451, column: 3, scope: !3844)
!3848 = !DILocation(line: 453, column: 32, scope: !3849)
!3849 = distinct !DILexicalBlock(scope: !3831, file: !88, line: 453, column: 6)
!3850 = !DILocation(line: 453, column: 37, scope: !3849)
!3851 = !DILocation(line: 453, column: 42, scope: !3849)
!3852 = !DILocation(line: 453, column: 45, scope: !3849)
!3853 = !DILocation(line: 453, column: 50, scope: !3849)
!3854 = !DILocation(line: 453, column: 6, scope: !3831)
!3855 = !DILocation(line: 454, column: 3, scope: !3849)
!3856 = !DILocation(line: 455, column: 32, scope: !3857)
!3857 = distinct !DILexicalBlock(scope: !3831, file: !88, line: 455, column: 6)
!3858 = !DILocation(line: 455, column: 37, scope: !3857)
!3859 = !DILocation(line: 455, column: 43, scope: !3857)
!3860 = !DILocation(line: 455, column: 46, scope: !3857)
!3861 = !DILocation(line: 455, column: 51, scope: !3857)
!3862 = !DILocation(line: 455, column: 6, scope: !3831)
!3863 = !DILocation(line: 456, column: 3, scope: !3857)
!3864 = !DILocation(line: 457, column: 6, scope: !3865)
!3865 = distinct !DILexicalBlock(scope: !3831, file: !88, line: 457, column: 6)
!3866 = !DILocation(line: 457, column: 11, scope: !3865)
!3867 = !DILocation(line: 457, column: 6, scope: !3831)
!3868 = !DILocation(line: 457, column: 26, scope: !3865)
!3869 = !DILocation(line: 458, column: 6, scope: !3870)
!3870 = distinct !DILexicalBlock(scope: !3831, file: !88, line: 458, column: 6)
!3871 = !DILocation(line: 458, column: 11, scope: !3870)
!3872 = !DILocation(line: 458, column: 6, scope: !3831)
!3873 = !DILocation(line: 458, column: 26, scope: !3870)
!3874 = !DILocation(line: 459, column: 6, scope: !3875)
!3875 = distinct !DILexicalBlock(scope: !3831, file: !88, line: 459, column: 6)
!3876 = !DILocation(line: 459, column: 11, scope: !3875)
!3877 = !DILocation(line: 459, column: 6, scope: !3831)
!3878 = !DILocation(line: 459, column: 26, scope: !3875)
!3879 = !DILocation(line: 460, column: 6, scope: !3880)
!3880 = distinct !DILexicalBlock(scope: !3831, file: !88, line: 460, column: 6)
!3881 = !DILocation(line: 460, column: 11, scope: !3880)
!3882 = !DILocation(line: 460, column: 6, scope: !3831)
!3883 = !DILocation(line: 460, column: 26, scope: !3880)
!3884 = !DILocation(line: 461, column: 6, scope: !3885)
!3885 = distinct !DILexicalBlock(scope: !3831, file: !88, line: 461, column: 6)
!3886 = !DILocation(line: 461, column: 11, scope: !3885)
!3887 = !DILocation(line: 461, column: 6, scope: !3831)
!3888 = !DILocation(line: 461, column: 26, scope: !3885)
!3889 = !DILocation(line: 462, column: 6, scope: !3890)
!3890 = distinct !DILexicalBlock(scope: !3831, file: !88, line: 462, column: 6)
!3891 = !DILocation(line: 462, column: 11, scope: !3890)
!3892 = !DILocation(line: 462, column: 6, scope: !3831)
!3893 = !DILocation(line: 462, column: 26, scope: !3890)
!3894 = !DILocation(line: 463, column: 6, scope: !3895)
!3895 = distinct !DILexicalBlock(scope: !3831, file: !88, line: 463, column: 6)
!3896 = !DILocation(line: 463, column: 11, scope: !3895)
!3897 = !DILocation(line: 463, column: 6, scope: !3831)
!3898 = !DILocation(line: 463, column: 26, scope: !3895)
!3899 = !DILocation(line: 464, column: 6, scope: !3900)
!3900 = distinct !DILexicalBlock(scope: !3831, file: !88, line: 464, column: 6)
!3901 = !DILocation(line: 464, column: 11, scope: !3900)
!3902 = !DILocation(line: 464, column: 6, scope: !3831)
!3903 = !DILocation(line: 464, column: 26, scope: !3900)
!3904 = !DILocation(line: 465, column: 6, scope: !3905)
!3905 = distinct !DILexicalBlock(scope: !3831, file: !88, line: 465, column: 6)
!3906 = !DILocation(line: 465, column: 11, scope: !3905)
!3907 = !DILocation(line: 465, column: 6, scope: !3831)
!3908 = !DILocation(line: 465, column: 26, scope: !3905)
!3909 = !DILocation(line: 466, column: 6, scope: !3910)
!3910 = distinct !DILexicalBlock(scope: !3831, file: !88, line: 466, column: 6)
!3911 = !DILocation(line: 466, column: 11, scope: !3910)
!3912 = !DILocation(line: 466, column: 6, scope: !3831)
!3913 = !DILocation(line: 466, column: 26, scope: !3910)
!3914 = !DILocation(line: 467, column: 6, scope: !3915)
!3915 = distinct !DILexicalBlock(scope: !3831, file: !88, line: 467, column: 6)
!3916 = !DILocation(line: 467, column: 11, scope: !3915)
!3917 = !DILocation(line: 467, column: 6, scope: !3831)
!3918 = !DILocation(line: 467, column: 26, scope: !3915)
!3919 = !DILocation(line: 468, column: 6, scope: !3920)
!3920 = distinct !DILexicalBlock(scope: !3831, file: !88, line: 468, column: 6)
!3921 = !DILocation(line: 468, column: 11, scope: !3920)
!3922 = !DILocation(line: 468, column: 6, scope: !3831)
!3923 = !DILocation(line: 468, column: 26, scope: !3920)
!3924 = !DILocation(line: 469, column: 6, scope: !3925)
!3925 = distinct !DILexicalBlock(scope: !3831, file: !88, line: 469, column: 6)
!3926 = !DILocation(line: 469, column: 11, scope: !3925)
!3927 = !DILocation(line: 469, column: 6, scope: !3831)
!3928 = !DILocation(line: 469, column: 26, scope: !3925)
!3929 = !DILocation(line: 470, column: 6, scope: !3930)
!3930 = distinct !DILexicalBlock(scope: !3831, file: !88, line: 470, column: 6)
!3931 = !DILocation(line: 470, column: 11, scope: !3930)
!3932 = !DILocation(line: 470, column: 6, scope: !3831)
!3933 = !DILocation(line: 470, column: 26, scope: !3930)
!3934 = !DILocation(line: 471, column: 6, scope: !3935)
!3935 = distinct !DILexicalBlock(scope: !3831, file: !88, line: 471, column: 6)
!3936 = !DILocation(line: 471, column: 11, scope: !3935)
!3937 = !DILocation(line: 471, column: 6, scope: !3831)
!3938 = !DILocation(line: 471, column: 26, scope: !3935)
!3939 = !DILocation(line: 472, column: 6, scope: !3940)
!3940 = distinct !DILexicalBlock(scope: !3831, file: !88, line: 472, column: 6)
!3941 = !DILocation(line: 472, column: 11, scope: !3940)
!3942 = !DILocation(line: 472, column: 6, scope: !3831)
!3943 = !DILocation(line: 472, column: 26, scope: !3940)
!3944 = !DILocation(line: 473, column: 6, scope: !3945)
!3945 = distinct !DILexicalBlock(scope: !3831, file: !88, line: 473, column: 6)
!3946 = !DILocation(line: 473, column: 11, scope: !3945)
!3947 = !DILocation(line: 473, column: 6, scope: !3831)
!3948 = !DILocation(line: 473, column: 26, scope: !3945)
!3949 = !DILocation(line: 474, column: 6, scope: !3950)
!3950 = distinct !DILexicalBlock(scope: !3831, file: !88, line: 474, column: 6)
!3951 = !DILocation(line: 474, column: 11, scope: !3950)
!3952 = !DILocation(line: 474, column: 6, scope: !3831)
!3953 = !DILocation(line: 474, column: 27, scope: !3950)
!3954 = !DILocation(line: 475, column: 6, scope: !3955)
!3955 = distinct !DILexicalBlock(scope: !3831, file: !88, line: 475, column: 6)
!3956 = !DILocation(line: 475, column: 11, scope: !3955)
!3957 = !DILocation(line: 475, column: 6, scope: !3831)
!3958 = !DILocation(line: 475, column: 32, scope: !3955)
!3959 = !DILocation(line: 477, column: 50, scope: !3960)
!3960 = distinct !DILexicalBlock(scope: !3831, file: !88, line: 477, column: 6)
!3961 = !{i8 0, i8 2}
!3962 = !DILocation(line: 477, column: 6, scope: !3831)
!3963 = !DILocation(line: 478, column: 3, scope: !3960)
!3964 = !DILocation(line: 478, column: 3, scope: !3965)
!3965 = distinct !DILexicalBlock(scope: !3966, file: !88, line: 478, column: 3)
!3966 = distinct !DILexicalBlock(scope: !3960, file: !88, line: 478, column: 3)
!3967 = !{i32 -2141708995}
!3968 = !DILocation(line: 478, column: 3, scope: !3966)
!3969 = !DILocation(line: 480, column: 3, scope: !3960)
!3970 = !DILocation(line: 480, column: 3, scope: !3971)
!3971 = distinct !DILexicalBlock(scope: !3960, file: !88, line: 480, column: 3)
!3972 = !DILocation(line: 480, column: 3, scope: !3973)
!3973 = distinct !DILexicalBlock(scope: !3971, file: !88, line: 480, column: 3)
!3974 = !DILocation(line: 480, column: 3, scope: !3975)
!3975 = distinct !DILexicalBlock(scope: !3971, file: !88, line: 480, column: 3)
!3976 = !{i64 2153258504, i64 2153258533, i64 2153258579, i64 2153258637, i64 2153258691, i64 2153258745, i64 2153258800, i64 2153258831}
!3977 = !DILocation(line: 483, column: 2, scope: !3831)
!3978 = !DILocation(line: 484, column: 1, scope: !3831)
!3979 = !DISubprogram(name: "kmalloc_trace", scope: !88, file: !88, line: 525, type: !3980, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3980 = !DISubroutineType(types: !3981)
!3981 = !{!98, !3982, !99, !793}
!3982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3983, size: 64)
!3983 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !3984, line: 325, flags: DIFlagFwdDecl)
!3984 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!3985 = distinct !DISubprogram(name: "kmalloc_type", scope: !88, file: !88, line: 401, type: !3986, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3988)
!3986 = !DISubroutineType(types: !3987)
!3987 = !{!87, !99, !113}
!3988 = !{!3989, !3990}
!3989 = !DILocalVariable(name: "flags", arg: 1, scope: !3985, file: !88, line: 401, type: !99)
!3990 = !DILocalVariable(name: "caller", arg: 2, scope: !3985, file: !88, line: 401, type: !113)
!3991 = !DILocation(line: 401, column: 67, scope: !3985)
!3992 = !DILocation(line: 401, column: 88, scope: !3985)
!3993 = !DILocation(line: 407, column: 6, scope: !3994)
!3994 = distinct !DILexicalBlock(scope: !3985, file: !88, line: 407, column: 6)
!3995 = !DILocation(line: 407, column: 6, scope: !3985)
!3996 = !DILocation(line: 413, column: 3, scope: !3994)
!3997 = !DILocation(line: 423, column: 38, scope: !3998)
!3998 = distinct !DILexicalBlock(scope: !3985, file: !88, line: 423, column: 6)
!3999 = !DILocation(line: 423, column: 44, scope: !3998)
!4000 = !DILocation(line: 423, column: 6, scope: !3985)
!4001 = !DILocation(line: 424, column: 3, scope: !3998)
!4002 = !DILocation(line: 426, column: 3, scope: !4003)
!4003 = distinct !DILexicalBlock(scope: !3985, file: !88, line: 425, column: 6)
!4004 = !DILocation(line: 429, column: 1, scope: !3985)
!4005 = !DISubprogram(name: "__kmalloc", scope: !88, file: !88, line: 488, type: !3749, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4006 = !DISubprogram(name: "__compiletime_assert_245", scope: !88, file: !88, line: 478, type: !2069, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!4007 = !DISubprogram(name: "sprintf", scope: !4008, file: !4008, line: 10, type: !4009, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4008 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!4009 = !DISubroutineType(types: !4010)
!4010 = !{!114, !485, !475, null}
!4011 = !DISubprogram(name: "debugfs_create_x32", scope: !144, file: !144, line: 131, type: !4012, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4012 = !DISubroutineType(types: !4013)
!4013 = !{null, !475, !640, !596, !1762}
!4014 = !DISubprogram(name: "debugfs_create_file", scope: !144, file: !144, line: 75, type: !4015, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4015 = !DISubroutineType(types: !4016)
!4016 = !{!596, !475, !640, !596, !98, !3318}
!4017 = distinct !DISubprogram(name: "setup_data_read", scope: !3, file: !3, line: 29, type: !3387, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4018)
!4018 = !{!4019, !4020, !4021, !4022, !4023, !4024, !4025, !4026, !4027}
!4019 = !DILocalVariable(name: "file", arg: 1, scope: !4017, file: !3, line: 29, type: !182)
!4020 = !DILocalVariable(name: "user_buf", arg: 2, scope: !4017, file: !3, line: 29, type: !485)
!4021 = !DILocalVariable(name: "count", arg: 3, scope: !4017, file: !3, line: 30, type: !793)
!4022 = !DILocalVariable(name: "ppos", arg: 4, scope: !4017, file: !3, line: 30, type: !976)
!4023 = !DILocalVariable(name: "node", scope: !4017, file: !3, line: 32, type: !3576)
!4024 = !DILocalVariable(name: "remain", scope: !4017, file: !3, line: 33, type: !113)
!4025 = !DILocalVariable(name: "pos", scope: !4017, file: !3, line: 34, type: !178)
!4026 = !DILocalVariable(name: "p", scope: !4017, file: !3, line: 35, type: !98)
!4027 = !DILocalVariable(name: "pa", scope: !4017, file: !3, line: 36, type: !382)
!4028 = !DILocation(line: 29, column: 45, scope: !4017)
!4029 = !DILocation(line: 29, column: 64, scope: !4017)
!4030 = !DILocation(line: 30, column: 18, scope: !4017)
!4031 = !DILocation(line: 30, column: 33, scope: !4017)
!4032 = !DILocation(line: 32, column: 2, scope: !4017)
!4033 = !DILocation(line: 32, column: 26, scope: !4017)
!4034 = !DILocation(line: 32, column: 33, scope: !4017)
!4035 = !DILocation(line: 32, column: 39, scope: !4017)
!4036 = !DILocation(line: 33, column: 2, scope: !4017)
!4037 = !DILocation(line: 33, column: 16, scope: !4017)
!4038 = !DILocation(line: 34, column: 2, scope: !4017)
!4039 = !DILocation(line: 34, column: 9, scope: !4017)
!4040 = !DILocation(line: 34, column: 16, scope: !4017)
!4041 = !DILocation(line: 34, column: 15, scope: !4017)
!4042 = !DILocation(line: 35, column: 2, scope: !4017)
!4043 = !DILocation(line: 35, column: 8, scope: !4017)
!4044 = !DILocation(line: 36, column: 2, scope: !4017)
!4045 = !DILocation(line: 36, column: 6, scope: !4017)
!4046 = !DILocation(line: 38, column: 6, scope: !4047)
!4047 = distinct !DILexicalBlock(scope: !4017, file: !3, line: 38, column: 6)
!4048 = !DILocation(line: 38, column: 10, scope: !4047)
!4049 = !DILocation(line: 38, column: 6, scope: !4017)
!4050 = !DILocation(line: 39, column: 3, scope: !4047)
!4051 = !DILocation(line: 41, column: 6, scope: !4052)
!4052 = distinct !DILexicalBlock(scope: !4017, file: !3, line: 41, column: 6)
!4053 = !DILocation(line: 41, column: 13, scope: !4052)
!4054 = !DILocation(line: 41, column: 19, scope: !4052)
!4055 = !DILocation(line: 41, column: 10, scope: !4052)
!4056 = !DILocation(line: 41, column: 6, scope: !4017)
!4057 = !DILocation(line: 42, column: 3, scope: !4052)
!4058 = !DILocation(line: 44, column: 6, scope: !4059)
!4059 = distinct !DILexicalBlock(scope: !4017, file: !3, line: 44, column: 6)
!4060 = !DILocation(line: 44, column: 14, scope: !4059)
!4061 = !DILocation(line: 44, column: 20, scope: !4059)
!4062 = !DILocation(line: 44, column: 26, scope: !4059)
!4063 = !DILocation(line: 44, column: 24, scope: !4059)
!4064 = !DILocation(line: 44, column: 12, scope: !4059)
!4065 = !DILocation(line: 44, column: 6, scope: !4017)
!4066 = !DILocation(line: 45, column: 11, scope: !4059)
!4067 = !DILocation(line: 45, column: 17, scope: !4059)
!4068 = !DILocation(line: 45, column: 23, scope: !4059)
!4069 = !DILocation(line: 45, column: 21, scope: !4059)
!4070 = !DILocation(line: 45, column: 9, scope: !4059)
!4071 = !DILocation(line: 45, column: 3, scope: !4059)
!4072 = !DILocation(line: 47, column: 7, scope: !4017)
!4073 = !DILocation(line: 47, column: 13, scope: !4017)
!4074 = !DILocation(line: 47, column: 21, scope: !4017)
!4075 = !DILocation(line: 47, column: 19, scope: !4017)
!4076 = !DILocation(line: 47, column: 5, scope: !4017)
!4077 = !DILocation(line: 50, column: 8, scope: !4078)
!4078 = distinct !DILexicalBlock(scope: !4017, file: !3, line: 50, column: 6)
!4079 = !DILocation(line: 50, column: 14, scope: !4078)
!4080 = !DILocation(line: 50, column: 19, scope: !4078)
!4081 = !DILocation(line: 50, column: 37, scope: !4078)
!4082 = !DILocation(line: 50, column: 40, scope: !4078)
!4083 = !DILocation(line: 50, column: 46, scope: !4078)
!4084 = !DILocation(line: 50, column: 51, scope: !4078)
!4085 = !DILocation(line: 50, column: 6, scope: !4017)
!4086 = !DILocation(line: 51, column: 6, scope: !4078)
!4087 = !DILocation(line: 51, column: 3, scope: !4078)
!4088 = !DILocation(line: 53, column: 15, scope: !4017)
!4089 = !DILocation(line: 53, column: 19, scope: !4017)
!4090 = !DILocation(line: 53, column: 6, scope: !4017)
!4091 = !DILocation(line: 53, column: 4, scope: !4017)
!4092 = !DILocation(line: 54, column: 7, scope: !4093)
!4093 = distinct !DILexicalBlock(scope: !4017, file: !3, line: 54, column: 6)
!4094 = !DILocation(line: 54, column: 6, scope: !4017)
!4095 = !DILocation(line: 55, column: 3, scope: !4093)
!4096 = !DILocation(line: 57, column: 24, scope: !4017)
!4097 = !DILocation(line: 57, column: 34, scope: !4017)
!4098 = !DILocation(line: 57, column: 37, scope: !4017)
!4099 = !DILocation(line: 57, column: 11, scope: !4017)
!4100 = !DILocation(line: 57, column: 9, scope: !4017)
!4101 = !DILocation(line: 59, column: 11, scope: !4017)
!4102 = !DILocation(line: 59, column: 2, scope: !4017)
!4103 = !DILocation(line: 61, column: 6, scope: !4104)
!4104 = distinct !DILexicalBlock(scope: !4017, file: !3, line: 61, column: 6)
!4105 = !DILocation(line: 61, column: 6, scope: !4017)
!4106 = !DILocation(line: 62, column: 3, scope: !4104)
!4107 = !DILocation(line: 64, column: 10, scope: !4017)
!4108 = !DILocation(line: 64, column: 16, scope: !4017)
!4109 = !DILocation(line: 64, column: 14, scope: !4017)
!4110 = !DILocation(line: 64, column: 3, scope: !4017)
!4111 = !DILocation(line: 64, column: 8, scope: !4017)
!4112 = !DILocation(line: 66, column: 9, scope: !4017)
!4113 = !DILocation(line: 66, column: 2, scope: !4017)
!4114 = !DILocation(line: 67, column: 1, scope: !4017)
!4115 = distinct !DISubprogram(name: "copy_to_user", scope: !4116, file: !4116, line: 188, type: !4117, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4119)
!4116 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c6a99e19cfced98603230c2c71e2e3e")
!4117 = !DISubroutineType(types: !4118)
!4118 = !{!113, !98, !2908, !113}
!4119 = !{!4120, !4121, !4122}
!4120 = !DILocalVariable(name: "to", arg: 1, scope: !4115, file: !4116, line: 188, type: !98)
!4121 = !DILocalVariable(name: "from", arg: 2, scope: !4115, file: !4116, line: 188, type: !2908)
!4122 = !DILocalVariable(name: "n", arg: 3, scope: !4115, file: !4116, line: 188, type: !113)
!4123 = !DILocation(line: 188, column: 27, scope: !4115)
!4124 = !DILocation(line: 188, column: 43, scope: !4115)
!4125 = !DILocation(line: 188, column: 63, scope: !4115)
!4126 = !DILocation(line: 190, column: 22, scope: !4127)
!4127 = distinct !DILexicalBlock(scope: !4115, file: !4116, line: 190, column: 6)
!4128 = !DILocation(line: 190, column: 28, scope: !4127)
!4129 = !DILocation(line: 190, column: 6, scope: !4127)
!4130 = !DILocation(line: 190, column: 6, scope: !4115)
!4131 = !DILocation(line: 191, column: 21, scope: !4127)
!4132 = !DILocation(line: 191, column: 25, scope: !4127)
!4133 = !DILocation(line: 191, column: 31, scope: !4127)
!4134 = !DILocation(line: 191, column: 7, scope: !4127)
!4135 = !DILocation(line: 191, column: 5, scope: !4127)
!4136 = !DILocation(line: 191, column: 3, scope: !4127)
!4137 = !DILocation(line: 192, column: 9, scope: !4115)
!4138 = !DILocation(line: 192, column: 2, scope: !4115)
!4139 = distinct !DISubprogram(name: "check_copy_size", scope: !3505, file: !3505, line: 237, type: !4140, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4142)
!4140 = !DISubroutineType(types: !4141)
!4141 = !{!472, !2908, !793, !472}
!4142 = !{!4143, !4144, !4145, !4146, !4147, !4150}
!4143 = !DILocalVariable(name: "addr", arg: 1, scope: !4139, file: !3505, line: 237, type: !2908)
!4144 = !DILocalVariable(name: "bytes", arg: 2, scope: !4139, file: !3505, line: 237, type: !793)
!4145 = !DILocalVariable(name: "is_source", arg: 3, scope: !4139, file: !3505, line: 237, type: !472)
!4146 = !DILocalVariable(name: "sz", scope: !4139, file: !3505, line: 239, type: !114)
!4147 = !DILocalVariable(name: "__ret_warn_on", scope: !4148, file: !3505, line: 249, type: !114)
!4148 = distinct !DILexicalBlock(scope: !4149, file: !3505, line: 249, column: 6)
!4149 = distinct !DILexicalBlock(scope: !4139, file: !3505, line: 249, column: 6)
!4150 = !DILocalVariable(name: "__flags", scope: !4151, file: !3505, line: 249, type: !114)
!4151 = distinct !DILexicalBlock(scope: !4152, file: !3505, line: 249, column: 6)
!4152 = distinct !DILexicalBlock(scope: !4148, file: !3505, line: 249, column: 6)
!4153 = !DILocation(line: 237, column: 29, scope: !4139)
!4154 = !DILocation(line: 237, column: 42, scope: !4139)
!4155 = !DILocation(line: 237, column: 54, scope: !4139)
!4156 = !DILocation(line: 239, column: 2, scope: !4139)
!4157 = !DILocation(line: 239, column: 6, scope: !4139)
!4158 = !DILocation(line: 239, column: 33, scope: !4139)
!4159 = !DILocation(line: 239, column: 11, scope: !4139)
!4160 = !DILocation(line: 240, column: 6, scope: !4161)
!4161 = distinct !DILexicalBlock(scope: !4139, file: !3505, line: 240, column: 6)
!4162 = !DILocation(line: 0, scope: !4161)
!4163 = !DILocation(line: 240, column: 6, scope: !4139)
!4164 = !DILocation(line: 241, column: 29, scope: !4165)
!4165 = distinct !DILexicalBlock(scope: !4166, file: !3505, line: 241, column: 7)
!4166 = distinct !DILexicalBlock(scope: !4161, file: !3505, line: 240, column: 39)
!4167 = !DILocation(line: 241, column: 8, scope: !4165)
!4168 = !DILocation(line: 241, column: 7, scope: !4166)
!4169 = !DILocation(line: 242, column: 18, scope: !4165)
!4170 = !DILocation(line: 242, column: 22, scope: !4165)
!4171 = !DILocation(line: 242, column: 4, scope: !4165)
!4172 = !DILocation(line: 243, column: 12, scope: !4173)
!4173 = distinct !DILexicalBlock(scope: !4165, file: !3505, line: 243, column: 12)
!4174 = !DILocation(line: 243, column: 12, scope: !4165)
!4175 = !DILocation(line: 244, column: 4, scope: !4173)
!4176 = !{i32 973126}
!4177 = !DILocation(line: 246, column: 4, scope: !4173)
!4178 = !{i32 973155}
!4179 = !DILocation(line: 247, column: 3, scope: !4166)
!4180 = !DILocation(line: 249, column: 6, scope: !4148)
!4181 = !DILocation(line: 249, column: 6, scope: !4152)
!4182 = !DILocation(line: 249, column: 6, scope: !4151)
!4183 = !DILocation(line: 249, column: 6, scope: !4184)
!4184 = distinct !DILexicalBlock(scope: !4151, file: !3505, line: 249, column: 6)
!4185 = !DILocation(line: 249, column: 6, scope: !4186)
!4186 = distinct !DILexicalBlock(scope: !4151, file: !3505, line: 249, column: 6)
!4187 = !{i64 2149625397, i64 2149625426, i64 2149625472, i64 2149625530, i64 2149625584, i64 2149625638, i64 2149625693, i64 2149625724, i64 2149626032, i64 2149626038, i64 2149626085, i64 2149626108, i64 2149626134}
!4188 = !DILocation(line: 249, column: 6, scope: !4189)
!4189 = distinct !DILexicalBlock(scope: !4151, file: !3505, line: 249, column: 6)
!4190 = !DILocation(line: 249, column: 6, scope: !4149)
!4191 = !DILocation(line: 249, column: 6, scope: !4139)
!4192 = !DILocation(line: 250, column: 3, scope: !4149)
!4193 = !DILocation(line: 251, column: 20, scope: !4139)
!4194 = !DILocation(line: 251, column: 26, scope: !4139)
!4195 = !DILocation(line: 251, column: 33, scope: !4139)
!4196 = !DILocation(line: 251, column: 2, scope: !4139)
!4197 = !DILocation(line: 252, column: 2, scope: !4139)
!4198 = !DILocation(line: 253, column: 1, scope: !4139)
!4199 = !DISubprogram(name: "_copy_to_user", scope: !4116, file: !4116, line: 176, type: !4117, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4200 = distinct !DISubprogram(name: "copy_overflow", scope: !3505, file: !3505, line: 230, type: !4201, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4203)
!4201 = !DISubroutineType(types: !4202)
!4202 = !{null, !114, !113}
!4203 = !{!4204, !4205}
!4204 = !DILocalVariable(name: "size", arg: 1, scope: !4200, file: !3505, line: 230, type: !114)
!4205 = !DILocalVariable(name: "count", arg: 2, scope: !4200, file: !3505, line: 230, type: !113)
!4206 = !DILocation(line: 230, column: 38, scope: !4200)
!4207 = !DILocation(line: 230, column: 58, scope: !4200)
!4208 = !DILocation(line: 233, column: 19, scope: !4209)
!4209 = distinct !DILexicalBlock(scope: !4200, file: !3505, line: 232, column: 6)
!4210 = !DILocation(line: 233, column: 25, scope: !4209)
!4211 = !DILocation(line: 233, column: 3, scope: !4209)
!4212 = !DILocation(line: 234, column: 1, scope: !4200)
!4213 = !DISubprogram(name: "__bad_copy_from", scope: !3505, file: !3505, line: 224, type: !2069, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4214 = !DISubprogram(name: "__bad_copy_to", scope: !3505, file: !3505, line: 226, type: !2069, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4215 = distinct !DISubprogram(name: "check_object_size", scope: !3505, file: !3505, line: 218, type: !4216, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4218)
!4216 = !DISubroutineType(types: !4217)
!4217 = !{null, !2908, !113, !472}
!4218 = !{!4219, !4220, !4221}
!4219 = !DILocalVariable(name: "ptr", arg: 1, scope: !4215, file: !3505, line: 218, type: !2908)
!4220 = !DILocalVariable(name: "n", arg: 2, scope: !4215, file: !3505, line: 218, type: !113)
!4221 = !DILocalVariable(name: "to_user", arg: 3, scope: !4215, file: !3505, line: 219, type: !472)
!4222 = !DILocation(line: 218, column: 50, scope: !4215)
!4223 = !DILocation(line: 218, column: 69, scope: !4215)
!4224 = !DILocation(line: 219, column: 15, scope: !4215)
!4225 = !DILocation(line: 220, column: 3, scope: !4215)
!4226 = !DISubprogram(name: "__copy_overflow", scope: !3505, file: !3505, line: 228, type: !4201, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
