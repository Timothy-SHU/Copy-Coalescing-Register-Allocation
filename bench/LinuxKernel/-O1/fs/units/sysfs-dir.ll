; ModuleID = 'fs/sysfs/dir.c'
source_filename = "fs/sysfs/dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_sysfs_create_mount_point: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad sysfs_create_mount_point ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_sysfs_remove_mount_point: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad sysfs_remove_mount_point ; .previous"

%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.rb_node, ptr, i32, %union.anon.13, ptr, i64, i16, i16, ptr, %struct.callback_head }
%struct.rb_node = type { i64, ptr, ptr }
%union.anon.13 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, ptr, i64 }
%struct.rb_root = type { ptr }
%struct.callback_head = type { ptr, ptr }

@sysfs_symlink_target_lock = hidden global %struct.spinlock zeroinitializer, align 4, !dbg !0
@.str = private unnamed_addr constant [51 x i8] c"\014sysfs: cannot create duplicate filename '%s/%s'\0A\00", align 1, !dbg !84
@.str.1 = private unnamed_addr constant [15 x i8] c"fs/sysfs/dir.c\00", align 1, !dbg !90
@sysfs_root_kn = external dso_local global ptr, align 8
@__UNIQUE_ID___addressable_sysfs_create_mount_point253 = internal global ptr @sysfs_create_mount_point, section ".discard.addressable", align 8, !dbg !95
@__UNIQUE_ID___addressable_sysfs_remove_mount_point254 = internal global ptr @sysfs_remove_mount_point, section ".discard.addressable", align 8, !dbg !97
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !99
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID___addressable_sysfs_create_mount_point253, ptr @__UNIQUE_ID___addressable_sysfs_remove_mount_point254], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @sysfs_warn_dup(ptr noundef %parent, ptr noundef %name) #0 align 16 !dbg !156 {
entry:
  %parent.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %buf = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !3351, metadata !DIExpression()), !dbg !3354
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !3352, metadata !DIExpression()), !dbg !3355
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #14, !dbg !3356
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !3353, metadata !DIExpression()), !dbg !3357
  %call = call noalias ptr @kzalloc(i64 noundef 4096, i32 noundef 3264) #15, !dbg !3358
  store ptr %call, ptr %buf, align 8, !dbg !3359
  %0 = load ptr, ptr %buf, align 8, !dbg !3360
  %tobool = icmp ne ptr %0, null, !dbg !3360
  br i1 %tobool, label %if.then, label %if.end, !dbg !3362

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %parent.addr, align 8, !dbg !3363
  %2 = load ptr, ptr %buf, align 8, !dbg !3364
  %call1 = call i32 @kernfs_path(ptr noundef %1, ptr noundef %2, i64 noundef 4096) #16, !dbg !3365
  br label %if.end, !dbg !3365

if.end:                                           ; preds = %if.then, %entry
  br label %do.body, !dbg !3366

do.body:                                          ; preds = %if.end
  br label %do.cond, !dbg !3368

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3368

do.end:                                           ; preds = %do.cond
  %3 = load ptr, ptr %buf, align 8, !dbg !3366
  %4 = load ptr, ptr %name.addr, align 8, !dbg !3366
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef @.str, ptr noundef %3, ptr noundef %4) #17, !dbg !3366
  store i32 %call2, ptr %tmp, align 4, !dbg !3368
  %5 = load i32, ptr %tmp, align 4, !dbg !3366
  call void @dump_stack() #17, !dbg !3370
  %6 = load ptr, ptr %buf, align 8, !dbg !3371
  call void @kfree(ptr noundef %6) #16, !dbg !3372
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #14, !dbg !3373
  ret void, !dbg !3373
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #3 align 16 !dbg !3374 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3378, metadata !DIExpression()), !dbg !3380
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3379, metadata !DIExpression()), !dbg !3381
  %0 = load i64, ptr %size.addr, align 8, !dbg !3382
  %1 = load i32, ptr %flags.addr, align 4, !dbg !3383
  %or = or i32 %1, 256, !dbg !3384
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #15, !dbg !3385
  ret ptr %call, !dbg !3386
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kernfs_path(ptr noundef %kn, ptr noundef %buf, i64 noundef %buflen) #4 align 16 !dbg !3387 {
entry:
  %kn.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %buflen.addr = alloca i64, align 8
  store ptr %kn, ptr %kn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kn.addr, metadata !3391, metadata !DIExpression()), !dbg !3394
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3392, metadata !DIExpression()), !dbg !3395
  store i64 %buflen, ptr %buflen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buflen.addr, metadata !3393, metadata !DIExpression()), !dbg !3396
  %0 = load ptr, ptr %kn.addr, align 8, !dbg !3397
  %1 = load ptr, ptr %buf.addr, align 8, !dbg !3398
  %2 = load i64, ptr %buflen.addr, align 8, !dbg !3399
  %call = call i32 @kernfs_path_from_node(ptr noundef %0, ptr noundef null, ptr noundef %1, i64 noundef %2) #16, !dbg !3400
  ret i32 %call, !dbg !3401
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !3402 dso_local i32 @_printk(ptr noundef, ...) #5

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !3406 dso_local void @dump_stack() #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3407 dso_local void @kfree(ptr noundef) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @sysfs_create_dir_ns(ptr noundef %kobj, ptr noundef %ns) #0 align 16 !dbg !3410 {
entry:
  %retval = alloca i32, align 4
  %kobj.addr = alloca ptr, align 8
  %ns.addr = alloca ptr, align 8
  %parent = alloca ptr, align 8
  %kn = alloca ptr, align 8
  %uid = alloca %struct.kuid_t, align 4
  %gid = alloca %struct.kgid_t, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !3578, metadata !DIExpression()), !dbg !3590
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !3579, metadata !DIExpression()), !dbg !3591
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #14, !dbg !3592
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !3580, metadata !DIExpression()), !dbg !3593
  call void @llvm.lifetime.start.p0(i64 8, ptr %kn) #14, !dbg !3592
  call void @llvm.dbg.declare(metadata ptr %kn, metadata !3581, metadata !DIExpression()), !dbg !3594
  call void @llvm.lifetime.start.p0(i64 4, ptr %uid) #14, !dbg !3595
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !3582, metadata !DIExpression()), !dbg !3596
  call void @llvm.lifetime.start.p0(i64 4, ptr %gid) #14, !dbg !3597
  call void @llvm.dbg.declare(metadata ptr %gid, metadata !3583, metadata !DIExpression()), !dbg !3598
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !3599
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !3584, metadata !DIExpression()), !dbg !3599
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !3599
  %tobool = icmp ne ptr %0, null, !dbg !3599
  %lnot = xor i1 %tobool, true, !dbg !3599
  %lnot1 = xor i1 %lnot, true, !dbg !3599
  %lnot2 = xor i1 %lnot1, true, !dbg !3599
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !3599
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !3599
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !3600
  %tobool3 = icmp ne i32 %1, 0, !dbg !3600
  %lnot4 = xor i1 %tobool3, true, !dbg !3600
  %lnot6 = xor i1 %lnot4, true, !dbg !3600
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !3600
  %conv = sext i32 %lnot.ext7 to i64, !dbg !3600
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3600
  %tobool8 = icmp ne i64 %expval, 0, !dbg !3600
  br i1 %tobool8, label %if.then, label %if.end, !dbg !3599

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !3600

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #14, !dbg !3601
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !3587, metadata !DIExpression()), !dbg !3601
  store i32 2305, ptr %__flags, align 4, !dbg !3601
  br label %do.body9, !dbg !3601

do.body9:                                         ; preds = %do.body
  br label %do.cond, !dbg !3602

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !3602

do.end:                                           ; preds = %do.cond
  br label %do.body10, !dbg !3601

do.body10:                                        ; preds = %do.end
  %2 = load i32, ptr %__flags, align 4, !dbg !3604
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 46, i32 %2, i64 12) #14, !dbg !3604, !srcloc !3606
  br label %do.cond11, !dbg !3604

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !3604

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !3601

do.body13:                                        ; preds = %do.end12
  br label %do.cond14, !dbg !3607

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !3607

do.end15:                                         ; preds = %do.cond14
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #14, !dbg !3600
  br label %do.cond16, !dbg !3601

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !3601

do.end17:                                         ; preds = %do.cond16
  br label %if.end, !dbg !3601

if.end:                                           ; preds = %do.end17, %entry
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !3599
  %tobool18 = icmp ne i32 %3, 0, !dbg !3599
  %lnot19 = xor i1 %tobool18, true, !dbg !3599
  %lnot21 = xor i1 %lnot19, true, !dbg !3599
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !3599
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !3599
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0), !dbg !3599
  store i64 %expval24, ptr %tmp, align 8, !dbg !3600
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !3609
  %4 = load i64, ptr %tmp, align 8, !dbg !3599
  %tobool25 = icmp ne i64 %4, 0, !dbg !3609
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !3610

if.then26:                                        ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !3611
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3611

if.end27:                                         ; preds = %if.end
  %5 = load ptr, ptr %kobj.addr, align 8, !dbg !3612
  %parent28 = getelementptr inbounds %struct.kobject, ptr %5, i32 0, i32 2, !dbg !3614
  %6 = load ptr, ptr %parent28, align 8, !dbg !3614
  %tobool29 = icmp ne ptr %6, null, !dbg !3612
  br i1 %tobool29, label %if.then30, label %if.else, !dbg !3615

if.then30:                                        ; preds = %if.end27
  %7 = load ptr, ptr %kobj.addr, align 8, !dbg !3616
  %parent31 = getelementptr inbounds %struct.kobject, ptr %7, i32 0, i32 2, !dbg !3617
  %8 = load ptr, ptr %parent31, align 8, !dbg !3617
  %sd = getelementptr inbounds %struct.kobject, ptr %8, i32 0, i32 5, !dbg !3618
  %9 = load ptr, ptr %sd, align 8, !dbg !3618
  store ptr %9, ptr %parent, align 8, !dbg !3619
  br label %if.end32, !dbg !3620

if.else:                                          ; preds = %if.end27
  %10 = load ptr, ptr @sysfs_root_kn, align 8, !dbg !3621
  store ptr %10, ptr %parent, align 8, !dbg !3622
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.then30
  %11 = load ptr, ptr %parent, align 8, !dbg !3623
  %tobool33 = icmp ne ptr %11, null, !dbg !3623
  br i1 %tobool33, label %if.end35, label %if.then34, !dbg !3625

if.then34:                                        ; preds = %if.end32
  store i32 -2, ptr %retval, align 4, !dbg !3626
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3626

if.end35:                                         ; preds = %if.end32
  %12 = load ptr, ptr %kobj.addr, align 8, !dbg !3627
  call void @kobject_get_ownership(ptr noundef %12, ptr noundef %uid, ptr noundef %gid) #16, !dbg !3628
  %13 = load ptr, ptr %parent, align 8, !dbg !3629
  %14 = load ptr, ptr %kobj.addr, align 8, !dbg !3630
  %call = call ptr @kobject_name(ptr noundef %14) #16, !dbg !3631
  %15 = load ptr, ptr %kobj.addr, align 8, !dbg !3632
  %16 = load ptr, ptr %ns.addr, align 8, !dbg !3633
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !3634
  %17 = load i32, ptr %coerce.dive, align 4, !dbg !3634
  %coerce.dive36 = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0, !dbg !3634
  %18 = load i32, ptr %coerce.dive36, align 4, !dbg !3634
  %call37 = call ptr @kernfs_create_dir_ns(ptr noundef %13, ptr noundef %call, i16 noundef zeroext 493, i32 %17, i32 %18, ptr noundef %15, ptr noundef %16) #16, !dbg !3634
  store ptr %call37, ptr %kn, align 8, !dbg !3635
  %19 = load ptr, ptr %kn, align 8, !dbg !3636
  %call38 = call zeroext i1 @IS_ERR(ptr noundef %19) #16, !dbg !3638
  br i1 %call38, label %if.then39, label %if.end47, !dbg !3639

if.then39:                                        ; preds = %if.end35
  %20 = load ptr, ptr %kn, align 8, !dbg !3640
  %call40 = call i64 @PTR_ERR(ptr noundef %20) #16, !dbg !3643
  %cmp = icmp eq i64 %call40, -17, !dbg !3644
  br i1 %cmp, label %if.then42, label %if.end44, !dbg !3645

if.then42:                                        ; preds = %if.then39
  %21 = load ptr, ptr %parent, align 8, !dbg !3646
  %22 = load ptr, ptr %kobj.addr, align 8, !dbg !3647
  %call43 = call ptr @kobject_name(ptr noundef %22) #16, !dbg !3648
  call void @sysfs_warn_dup(ptr noundef %21, ptr noundef %call43) #16, !dbg !3649
  br label %if.end44, !dbg !3649

if.end44:                                         ; preds = %if.then42, %if.then39
  %23 = load ptr, ptr %kn, align 8, !dbg !3650
  %call45 = call i64 @PTR_ERR(ptr noundef %23) #16, !dbg !3651
  %conv46 = trunc i64 %call45 to i32, !dbg !3651
  store i32 %conv46, ptr %retval, align 4, !dbg !3652
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3652

if.end47:                                         ; preds = %if.end35
  %24 = load ptr, ptr %kn, align 8, !dbg !3653
  %25 = load ptr, ptr %kobj.addr, align 8, !dbg !3654
  %sd48 = getelementptr inbounds %struct.kobject, ptr %25, i32 0, i32 5, !dbg !3655
  store ptr %24, ptr %sd48, align 8, !dbg !3656
  store i32 0, ptr %retval, align 4, !dbg !3657
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3657

cleanup:                                          ; preds = %if.end47, %if.end44, %if.then34, %if.then26
  call void @llvm.lifetime.end.p0(i64 4, ptr %gid) #14, !dbg !3658
  call void @llvm.lifetime.end.p0(i64 4, ptr %uid) #14, !dbg !3658
  call void @llvm.lifetime.end.p0(i64 8, ptr %kn) #14, !dbg !3658
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #14, !dbg !3658
  %26 = load i32, ptr %retval, align 4, !dbg !3658
  ret i32 %26, !dbg !3658
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3659 dso_local void @kobject_get_ownership(ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3660 dso_local ptr @kernfs_create_dir_ns(ptr noundef, ptr noundef, i16 noundef zeroext, i32, i32, ptr noundef, ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kobject_name(ptr noundef %kobj) #4 align 16 !dbg !3663 {
entry:
  %kobj.addr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !3665, metadata !DIExpression()), !dbg !3666
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !3667
  %name = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 0, !dbg !3668
  %1 = load ptr, ptr %name, align 8, !dbg !3668
  ret ptr %1, !dbg !3669
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #4 align 16 !dbg !3670 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !3675, metadata !DIExpression()), !dbg !3676
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !3677
  %1 = ptrtoint ptr %0 to i64, !dbg !3677
  %2 = inttoptr i64 %1 to ptr, !dbg !3677
  %3 = ptrtoint ptr %2 to i64, !dbg !3677
  %cmp = icmp uge i64 %3, -4095, !dbg !3677
  %lnot = xor i1 %cmp, true, !dbg !3677
  %lnot1 = xor i1 %lnot, true, !dbg !3677
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3677
  %conv = sext i32 %lnot.ext to i64, !dbg !3677
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3677
  %tobool = icmp ne i64 %expval, 0, !dbg !3677
  ret i1 %tobool, !dbg !3678
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #4 align 16 !dbg !3679 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !3683, metadata !DIExpression()), !dbg !3684
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !3685
  %1 = ptrtoint ptr %0 to i64, !dbg !3686
  ret i64 %1, !dbg !3687
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @sysfs_remove_dir(ptr noundef %kobj) #0 align 16 !dbg !3688 {
entry:
  %kobj.addr = alloca ptr, align 8
  %kn = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !3690, metadata !DIExpression()), !dbg !3699
  call void @llvm.lifetime.start.p0(i64 8, ptr %kn) #14, !dbg !3700
  call void @llvm.dbg.declare(metadata ptr %kn, metadata !3691, metadata !DIExpression()), !dbg !3701
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !3702
  %sd = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 5, !dbg !3703
  %1 = load ptr, ptr %sd, align 8, !dbg !3703
  store ptr %1, ptr %kn, align 8, !dbg !3701
  call void @spin_lock(ptr noundef @sysfs_symlink_target_lock) #16, !dbg !3704
  %2 = load ptr, ptr %kobj.addr, align 8, !dbg !3705
  %sd1 = getelementptr inbounds %struct.kobject, ptr %2, i32 0, i32 5, !dbg !3706
  store ptr null, ptr %sd1, align 8, !dbg !3707
  call void @spin_unlock(ptr noundef @sysfs_symlink_target_lock) #16, !dbg !3708
  %3 = load ptr, ptr %kn, align 8, !dbg !3709
  %tobool = icmp ne ptr %3, null, !dbg !3709
  br i1 %tobool, label %if.then, label %if.end26, !dbg !3710

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !3711
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !3692, metadata !DIExpression()), !dbg !3711
  %4 = load ptr, ptr %kn, align 8, !dbg !3711
  %call = call i32 @kernfs_type(ptr noundef %4) #16, !dbg !3711
  %cmp = icmp ne i32 %call, 1, !dbg !3711
  %lnot = xor i1 %cmp, true, !dbg !3711
  %lnot2 = xor i1 %lnot, true, !dbg !3711
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !3711
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !3711
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !3712
  %tobool3 = icmp ne i32 %5, 0, !dbg !3712
  %lnot4 = xor i1 %tobool3, true, !dbg !3712
  %lnot6 = xor i1 %lnot4, true, !dbg !3712
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !3712
  %conv = sext i32 %lnot.ext7 to i64, !dbg !3712
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3712
  %tobool8 = icmp ne i64 %expval, 0, !dbg !3712
  br i1 %tobool8, label %if.then9, label %if.end, !dbg !3711

if.then9:                                         ; preds = %if.then
  br label %do.body, !dbg !3712

do.body:                                          ; preds = %if.then9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #14, !dbg !3713
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !3696, metadata !DIExpression()), !dbg !3713
  store i32 2307, ptr %__flags, align 4, !dbg !3713
  br label %do.body10, !dbg !3713

do.body10:                                        ; preds = %do.body
  br label %do.cond, !dbg !3714

do.cond:                                          ; preds = %do.body10
  br label %do.end, !dbg !3714

do.end:                                           ; preds = %do.cond
  br label %do.body11, !dbg !3713

do.body11:                                        ; preds = %do.end
  %6 = load i32, ptr %__flags, align 4, !dbg !3716
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 100, i32 %6, i64 12) #14, !dbg !3716, !srcloc !3718
  br label %do.cond12, !dbg !3716

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !3716

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !3713

do.body14:                                        ; preds = %do.end13
  br label %do.cond15, !dbg !3719

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !3719

do.end16:                                         ; preds = %do.cond15
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #14, !dbg !3712
  br label %do.cond17, !dbg !3713

do.cond17:                                        ; preds = %do.end16
  br label %do.end18, !dbg !3713

do.end18:                                         ; preds = %do.cond17
  br label %if.end, !dbg !3713

if.end:                                           ; preds = %do.end18, %if.then
  %7 = load i32, ptr %__ret_warn_on, align 4, !dbg !3711
  %tobool19 = icmp ne i32 %7, 0, !dbg !3711
  %lnot20 = xor i1 %tobool19, true, !dbg !3711
  %lnot22 = xor i1 %lnot20, true, !dbg !3711
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !3711
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !3711
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !3711
  store i64 %expval25, ptr %tmp, align 8, !dbg !3712
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !3721
  %8 = load i64, ptr %tmp, align 8, !dbg !3711
  %9 = load ptr, ptr %kn, align 8, !dbg !3722
  call void @kernfs_remove(ptr noundef %9) #16, !dbg !3723
  br label %if.end26, !dbg !3724

if.end26:                                         ; preds = %if.end, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %kn) #14, !dbg !3725
  ret void, !dbg !3725
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #8 align 16 !dbg !3726 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !3732, metadata !DIExpression()), !dbg !3733
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !3734
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !3734
  call void @_raw_spin_lock(ptr noundef %1) #16, !dbg !3734
  ret void, !dbg !3735
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #8 align 16 !dbg !3736 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !3738, metadata !DIExpression()), !dbg !3739
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !3740
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !3740
  call void @_raw_spin_unlock(ptr noundef %1) #16, !dbg !3740
  ret void, !dbg !3741
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kernfs_type(ptr noundef %kn) #4 align 16 !dbg !3742 {
entry:
  %kn.addr = alloca ptr, align 8
  store ptr %kn, ptr %kn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kn.addr, metadata !3746, metadata !DIExpression()), !dbg !3747
  %0 = load ptr, ptr %kn.addr, align 8, !dbg !3748
  %flags = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 10, !dbg !3749
  %1 = load i16, ptr %flags, align 8, !dbg !3749
  %conv = zext i16 %1 to i32, !dbg !3748
  %and = and i32 %conv, 15, !dbg !3750
  ret i32 %and, !dbg !3751
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3752 dso_local void @kernfs_remove(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @sysfs_rename_dir_ns(ptr noundef %kobj, ptr noundef %new_name, ptr noundef %new_ns) #0 align 16 !dbg !3755 {
entry:
  %kobj.addr = alloca ptr, align 8
  %new_name.addr = alloca ptr, align 8
  %new_ns.addr = alloca ptr, align 8
  %parent = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !3759, metadata !DIExpression()), !dbg !3764
  store ptr %new_name, ptr %new_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new_name.addr, metadata !3760, metadata !DIExpression()), !dbg !3765
  store ptr %new_ns, ptr %new_ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new_ns.addr, metadata !3761, metadata !DIExpression()), !dbg !3766
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #14, !dbg !3767
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !3762, metadata !DIExpression()), !dbg !3768
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !3769
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3763, metadata !DIExpression()), !dbg !3770
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !3771
  %sd = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 5, !dbg !3772
  %1 = load ptr, ptr %sd, align 8, !dbg !3772
  %call = call ptr @kernfs_get_parent(ptr noundef %1) #16, !dbg !3773
  store ptr %call, ptr %parent, align 8, !dbg !3774
  %2 = load ptr, ptr %kobj.addr, align 8, !dbg !3775
  %sd1 = getelementptr inbounds %struct.kobject, ptr %2, i32 0, i32 5, !dbg !3776
  %3 = load ptr, ptr %sd1, align 8, !dbg !3776
  %4 = load ptr, ptr %parent, align 8, !dbg !3777
  %5 = load ptr, ptr %new_name.addr, align 8, !dbg !3778
  %6 = load ptr, ptr %new_ns.addr, align 8, !dbg !3779
  %call2 = call i32 @kernfs_rename_ns(ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #16, !dbg !3780
  store i32 %call2, ptr %ret, align 4, !dbg !3781
  %7 = load ptr, ptr %parent, align 8, !dbg !3782
  call void @kernfs_put(ptr noundef %7) #16, !dbg !3783
  %8 = load i32, ptr %ret, align 4, !dbg !3784
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !3785
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #14, !dbg !3785
  ret i32 %8, !dbg !3786
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3787 dso_local ptr @kernfs_get_parent(ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3790 dso_local i32 @kernfs_rename_ns(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3793 dso_local void @kernfs_put(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @sysfs_move_dir_ns(ptr noundef %kobj, ptr noundef %new_parent_kobj, ptr noundef %new_ns) #0 align 16 !dbg !3794 {
entry:
  %kobj.addr = alloca ptr, align 8
  %new_parent_kobj.addr = alloca ptr, align 8
  %new_ns.addr = alloca ptr, align 8
  %kn = alloca ptr, align 8
  %new_parent = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !3798, metadata !DIExpression()), !dbg !3803
  store ptr %new_parent_kobj, ptr %new_parent_kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new_parent_kobj.addr, metadata !3799, metadata !DIExpression()), !dbg !3804
  store ptr %new_ns, ptr %new_ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new_ns.addr, metadata !3800, metadata !DIExpression()), !dbg !3805
  call void @llvm.lifetime.start.p0(i64 8, ptr %kn) #14, !dbg !3806
  call void @llvm.dbg.declare(metadata ptr %kn, metadata !3801, metadata !DIExpression()), !dbg !3807
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !3808
  %sd = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 5, !dbg !3809
  %1 = load ptr, ptr %sd, align 8, !dbg !3809
  store ptr %1, ptr %kn, align 8, !dbg !3807
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_parent) #14, !dbg !3810
  call void @llvm.dbg.declare(metadata ptr %new_parent, metadata !3802, metadata !DIExpression()), !dbg !3811
  %2 = load ptr, ptr %new_parent_kobj.addr, align 8, !dbg !3812
  %tobool = icmp ne ptr %2, null, !dbg !3812
  br i1 %tobool, label %land.lhs.true, label %cond.false, !dbg !3813

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %new_parent_kobj.addr, align 8, !dbg !3814
  %sd1 = getelementptr inbounds %struct.kobject, ptr %3, i32 0, i32 5, !dbg !3815
  %4 = load ptr, ptr %sd1, align 8, !dbg !3815
  %tobool2 = icmp ne ptr %4, null, !dbg !3814
  br i1 %tobool2, label %cond.true, label %cond.false, !dbg !3812

cond.true:                                        ; preds = %land.lhs.true
  %5 = load ptr, ptr %new_parent_kobj.addr, align 8, !dbg !3816
  %sd3 = getelementptr inbounds %struct.kobject, ptr %5, i32 0, i32 5, !dbg !3817
  %6 = load ptr, ptr %sd3, align 8, !dbg !3817
  br label %cond.end, !dbg !3812

cond.false:                                       ; preds = %land.lhs.true, %entry
  %7 = load ptr, ptr @sysfs_root_kn, align 8, !dbg !3818
  br label %cond.end, !dbg !3812

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %6, %cond.true ], [ %7, %cond.false ], !dbg !3812
  store ptr %cond, ptr %new_parent, align 8, !dbg !3819
  %8 = load ptr, ptr %kn, align 8, !dbg !3820
  %9 = load ptr, ptr %new_parent, align 8, !dbg !3821
  %10 = load ptr, ptr %kn, align 8, !dbg !3822
  %name = getelementptr inbounds %struct.kernfs_node, ptr %10, i32 0, i32 3, !dbg !3823
  %11 = load ptr, ptr %name, align 8, !dbg !3823
  %12 = load ptr, ptr %new_ns.addr, align 8, !dbg !3824
  %call = call i32 @kernfs_rename_ns(ptr noundef %8, ptr noundef %9, ptr noundef %11, ptr noundef %12) #16, !dbg !3825
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_parent) #14, !dbg !3826
  call void @llvm.lifetime.end.p0(i64 8, ptr %kn) #14, !dbg !3826
  ret i32 %call, !dbg !3827
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @sysfs_create_mount_point(ptr noundef %parent_kobj, ptr noundef %name) #0 align 16 !dbg !3828 {
entry:
  %retval = alloca i32, align 4
  %parent_kobj.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %kn = alloca ptr, align 8
  %parent = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %parent_kobj, ptr %parent_kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent_kobj.addr, metadata !3832, metadata !DIExpression()), !dbg !3836
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !3833, metadata !DIExpression()), !dbg !3837
  call void @llvm.lifetime.start.p0(i64 8, ptr %kn) #14, !dbg !3838
  call void @llvm.dbg.declare(metadata ptr %kn, metadata !3834, metadata !DIExpression()), !dbg !3839
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #14, !dbg !3838
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !3835, metadata !DIExpression()), !dbg !3840
  %0 = load ptr, ptr %parent_kobj.addr, align 8, !dbg !3841
  %sd = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 5, !dbg !3842
  %1 = load ptr, ptr %sd, align 8, !dbg !3842
  store ptr %1, ptr %parent, align 8, !dbg !3840
  %2 = load ptr, ptr %parent, align 8, !dbg !3843
  %3 = load ptr, ptr %name.addr, align 8, !dbg !3844
  %call = call ptr @kernfs_create_empty_dir(ptr noundef %2, ptr noundef %3) #16, !dbg !3845
  store ptr %call, ptr %kn, align 8, !dbg !3846
  %4 = load ptr, ptr %kn, align 8, !dbg !3847
  %call1 = call zeroext i1 @IS_ERR(ptr noundef %4) #16, !dbg !3849
  br i1 %call1, label %if.then, label %if.end5, !dbg !3850

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %kn, align 8, !dbg !3851
  %call2 = call i64 @PTR_ERR(ptr noundef %5) #16, !dbg !3854
  %cmp = icmp eq i64 %call2, -17, !dbg !3855
  br i1 %cmp, label %if.then3, label %if.end, !dbg !3856

if.then3:                                         ; preds = %if.then
  %6 = load ptr, ptr %parent, align 8, !dbg !3857
  %7 = load ptr, ptr %name.addr, align 8, !dbg !3858
  call void @sysfs_warn_dup(ptr noundef %6, ptr noundef %7) #16, !dbg !3859
  br label %if.end, !dbg !3859

if.end:                                           ; preds = %if.then3, %if.then
  %8 = load ptr, ptr %kn, align 8, !dbg !3860
  %call4 = call i64 @PTR_ERR(ptr noundef %8) #16, !dbg !3861
  %conv = trunc i64 %call4 to i32, !dbg !3861
  store i32 %conv, ptr %retval, align 4, !dbg !3862
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3862

if.end5:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !3863
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3863

cleanup:                                          ; preds = %if.end5, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #14, !dbg !3864
  call void @llvm.lifetime.end.p0(i64 8, ptr %kn) #14, !dbg !3864
  %9 = load i32, ptr %retval, align 4, !dbg !3864
  ret i32 %9, !dbg !3864
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3865 dso_local ptr @kernfs_create_empty_dir(ptr noundef, ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @sysfs_remove_mount_point(ptr noundef %parent_kobj, ptr noundef %name) #0 align 16 !dbg !3868 {
entry:
  %parent_kobj.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %parent = alloca ptr, align 8
  store ptr %parent_kobj, ptr %parent_kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent_kobj.addr, metadata !3872, metadata !DIExpression()), !dbg !3875
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !3873, metadata !DIExpression()), !dbg !3876
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #14, !dbg !3877
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !3874, metadata !DIExpression()), !dbg !3878
  %0 = load ptr, ptr %parent_kobj.addr, align 8, !dbg !3879
  %sd = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 5, !dbg !3880
  %1 = load ptr, ptr %sd, align 8, !dbg !3880
  store ptr %1, ptr %parent, align 8, !dbg !3878
  %2 = load ptr, ptr %parent, align 8, !dbg !3881
  %3 = load ptr, ptr %name.addr, align 8, !dbg !3882
  %call = call i32 @kernfs_remove_by_name_ns(ptr noundef %2, ptr noundef %3, ptr noundef null) #16, !dbg !3883
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #14, !dbg !3884
  ret void, !dbg !3884
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3885 dso_local i32 @kernfs_remove_by_name_ns(ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #9 align 16 !dbg !3888 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3890, metadata !DIExpression()), !dbg !3895
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3891, metadata !DIExpression()), !dbg !3896
  %0 = load i64, ptr %size.addr, align 8, !dbg !3897
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3898
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !3899

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !3900
  %tobool = icmp ne i64 %2, 0, !dbg !3900
  br i1 %tobool, label %if.then, label %if.end7, !dbg !3901

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #14, !dbg !3902
  call void @llvm.dbg.declare(metadata ptr %index, metadata !3892, metadata !DIExpression()), !dbg !3903
  %3 = load i64, ptr %size.addr, align 8, !dbg !3904
  %cmp = icmp ugt i64 %3, 8192, !dbg !3906
  br i1 %cmp, label %if.then1, label %if.end, !dbg !3907

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !3908
  %5 = load i32, ptr %flags.addr, align 4, !dbg !3909
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #15, !dbg !3910
  store ptr %call, ptr %retval, align 8, !dbg !3911
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3911

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !3912
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #16, !dbg !3912
  store i32 %call2, ptr %index, align 4, !dbg !3913
  %7 = load i32, ptr %flags.addr, align 4, !dbg !3914
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !3915
  %9 = ptrtoint ptr %8 to i64, !dbg !3915
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #16, !dbg !3916
  %idxprom = zext i32 %call3 to i64, !dbg !3917
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !3917
  %10 = load i32, ptr %index, align 4, !dbg !3918
  %idxprom4 = zext i32 %10 to i64, !dbg !3917
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !3917
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !3917
  %12 = load i32, ptr %flags.addr, align 4, !dbg !3919
  %13 = load i64, ptr %size.addr, align 8, !dbg !3920
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #18, !dbg !3921
  store ptr %call6, ptr %retval, align 8, !dbg !3922
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3922

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #14, !dbg !3923
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !3924
  %15 = load i32, ptr %flags.addr, align 4, !dbg !3925
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #15, !dbg !3926
  store ptr %call8, ptr %retval, align 8, !dbg !3927
  br label %return, !dbg !3927

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !3928
  ret ptr %16, !dbg !3928
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #10

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !3929 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #8 align 16 !dbg !3930 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3934, metadata !DIExpression()), !dbg !3936
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !3935, metadata !DIExpression()), !dbg !3937
  %0 = load i64, ptr %size.addr, align 8, !dbg !3938
  %tobool = icmp ne i64 %0, 0, !dbg !3938
  br i1 %tobool, label %if.end, label %if.then, !dbg !3940

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !3941
  br label %return, !dbg !3941

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !3942
  %cmp = icmp ule i64 %1, 8, !dbg !3944
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !3945

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !3946
  br label %return, !dbg !3946

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !3947
  %cmp3 = icmp ugt i64 %2, 64, !dbg !3949
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !3950

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !3951
  %cmp4 = icmp ule i64 %3, 96, !dbg !3952
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !3953

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !3954
  br label %return, !dbg !3954

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !3955
  %cmp7 = icmp ugt i64 %4, 128, !dbg !3957
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !3958

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !3959
  %cmp9 = icmp ule i64 %5, 192, !dbg !3960
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !3961

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !3962
  br label %return, !dbg !3962

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !3963
  %cmp12 = icmp ule i64 %6, 8, !dbg !3965
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !3966

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !3967
  br label %return, !dbg !3967

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !3968
  %cmp15 = icmp ule i64 %7, 16, !dbg !3970
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !3971

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !3972
  br label %return, !dbg !3972

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !3973
  %cmp18 = icmp ule i64 %8, 32, !dbg !3975
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !3976

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !3977
  br label %return, !dbg !3977

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !3978
  %cmp21 = icmp ule i64 %9, 64, !dbg !3980
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !3981

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !3982
  br label %return, !dbg !3982

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !3983
  %cmp24 = icmp ule i64 %10, 128, !dbg !3985
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !3986

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !3987
  br label %return, !dbg !3987

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !3988
  %cmp27 = icmp ule i64 %11, 256, !dbg !3990
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !3991

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !3992
  br label %return, !dbg !3992

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !3993
  %cmp30 = icmp ule i64 %12, 512, !dbg !3995
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !3996

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !3997
  br label %return, !dbg !3997

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !3998
  %cmp33 = icmp ule i64 %13, 1024, !dbg !4000
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !4001

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !4002
  br label %return, !dbg !4002

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !4003
  %cmp36 = icmp ule i64 %14, 2048, !dbg !4005
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !4006

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !4007
  br label %return, !dbg !4007

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !4008
  %cmp39 = icmp ule i64 %15, 4096, !dbg !4010
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !4011

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !4012
  br label %return, !dbg !4012

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !4013
  %cmp42 = icmp ule i64 %16, 8192, !dbg !4015
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !4016

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !4017
  br label %return, !dbg !4017

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !4018
  %cmp45 = icmp ule i64 %17, 16384, !dbg !4020
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !4021

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !4022
  br label %return, !dbg !4022

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !4023
  %cmp48 = icmp ule i64 %18, 32768, !dbg !4025
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !4026

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !4027
  br label %return, !dbg !4027

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !4028
  %cmp51 = icmp ule i64 %19, 65536, !dbg !4030
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !4031

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !4032
  br label %return, !dbg !4032

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !4033
  %cmp54 = icmp ule i64 %20, 131072, !dbg !4035
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !4036

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !4037
  br label %return, !dbg !4037

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !4038
  %cmp57 = icmp ule i64 %21, 262144, !dbg !4040
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !4041

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !4042
  br label %return, !dbg !4042

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !4043
  %cmp60 = icmp ule i64 %22, 524288, !dbg !4045
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !4046

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !4047
  br label %return, !dbg !4047

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !4048
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !4050
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !4051

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !4052
  br label %return, !dbg !4052

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !4053
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !4055
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !4056

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !4057
  br label %return, !dbg !4057

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !4058, !range !4060, !noundef !883
  %tobool69 = trunc i8 %25 to i1, !dbg !4058
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !4061

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !4062

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_245() #19, !dbg !4063, !srcloc !4066
  unreachable, !dbg !4063

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !4067

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !4068

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !4069

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !4071

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !4069

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 480, i32 0, i64 12) #14, !dbg !4073, !srcloc !4075
  br label %do.end75, !dbg !4073

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !4069

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !4076
  br label %return, !dbg !4076

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !4077
  ret i32 %26, !dbg !4077
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !4078 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #8 align 16 !dbg !4084 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4088, metadata !DIExpression()), !dbg !4090
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !4089, metadata !DIExpression()), !dbg !4091
  %0 = load i32, ptr %flags.addr, align 4, !dbg !4092
  %and = and i32 %0, 17, !dbg !4092
  %cmp = icmp eq i32 %and, 0, !dbg !4092
  %lnot = xor i1 %cmp, true, !dbg !4092
  %lnot1 = xor i1 %lnot, true, !dbg !4092
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4092
  %conv = sext i32 %lnot.ext to i64, !dbg !4092
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !4092
  %tobool = icmp ne i64 %expval, 0, !dbg !4092
  br i1 %tobool, label %if.then, label %if.end, !dbg !4094

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4095
  br label %return, !dbg !4095

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !4096
  %and2 = and i32 %1, 1, !dbg !4098
  %tobool3 = icmp ne i32 %and2, 0, !dbg !4098
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !4099

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !4100
  br label %return, !dbg !4100

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !4101
  br label %return, !dbg !4101

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !4103
  ret i32 %2, !dbg !4103
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !4104 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #11

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !4105 dso_local void @__compiletime_assert_245() #13

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4106 dso_local i32 @kernfs_path_from_node(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4109 dso_local void @_raw_spin_lock(ptr noundef) #6 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4114 dso_local void @_raw_spin_unlock(ptr noundef) #6 section ".spinlock.text"

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nounwind }
attributes #15 = { noredzone allocsize(0) }
attributes #16 = { noredzone }
attributes #17 = { cold noredzone }
attributes #18 = { noredzone allocsize(2) }
attributes #19 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!147, !148, !149, !150, !151, !152, !153, !154}
!llvm.ident = !{!155}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "sysfs_symlink_target_lock", scope: !2, file: !3, line: 19, type: !104, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF fs/sysfs/.dir.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22fs/sysfs/dir\22 -D KBUILD_BASENAME=\22dir\22 -D KBUILD_MODNAME=\22dir\22 -D __KBUILD_MODNAME=kmod_dir -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o fs/sysfs/dir.ll fs/sysfs/dir.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !77, globals: !83, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "fs/sysfs/dir.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2529e3a0a7d0aba2371e78bef11aaa4")
!4 = !{!5, !14, !19, !25, !30, !36, !43, !50, !56, !62, !67}
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
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !44, line: 51, baseType: !7, size: 32, elements: !45)
!44 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!45 = !{!46, !47, !48, !49}
!46 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!47 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!48 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!49 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !51, line: 26, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!52 = !{!53, !54, !55}
!53 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!54 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!55 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kernfs_node_type", file: !57, line: 94, baseType: !7, size: 32, elements: !58)
!57 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!58 = !{!59, !60, !61}
!59 = !DIEnumerator(name: "KERNFS_DIR", value: 1)
!60 = !DIEnumerator(name: "KERNFS_FILE", value: 2)
!61 = !DIEnumerator(name: "KERNFS_LINK", value: 4)
!62 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !63, line: 10, baseType: !7, size: 32, elements: !64)
!63 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!64 = !{!65, !66}
!65 = !DIEnumerator(name: "false", value: 0)
!66 = !DIEnumerator(name: "true", value: 1)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !68, line: 364, baseType: !7, size: 32, elements: !69)
!68 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!69 = !{!70, !71, !72, !73, !74, !75, !76}
!70 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!71 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!72 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!73 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!74 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!75 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!76 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!77 = !{!78, !80, !81, !82}
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !79, line: 154, baseType: !7)
!79 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!81 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!82 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!83 = !{!0, !84, !90, !95, !97, !99}
!84 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression())
!85 = distinct !DIGlobalVariable(scope: null, file: !3, line: 29, type: !86, isLocal: true, isDefinition: true)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 408, elements: !88)
!87 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!88 = !{!89}
!89 = !DISubrange(count: 51)
!90 = !DIGlobalVariableExpression(var: !91, expr: !DIExpression())
!91 = distinct !DIGlobalVariable(scope: null, file: !3, line: 46, type: !92, isLocal: true, isDefinition: true)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 120, elements: !93)
!93 = !{!94}
!94 = !DISubrange(count: 15)
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression())
!96 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_sysfs_create_mount_point253", scope: !2, file: !3, line: 147, type: !80, isLocal: true, isDefinition: true)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_sysfs_remove_mount_point254", scope: !2, file: !3, line: 161, type: !80, isLocal: true, isDefinition: true)
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression())
!100 = distinct !DIGlobalVariable(scope: null, file: !68, line: 480, type: !101, isLocal: true, isDefinition: true)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 168, elements: !102)
!102 = !{!103}
!103 = !DISubrange(count: 21)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !105, line: 29, baseType: !106)
!105 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !105, line: 17, size: 32, elements: !107)
!107 = !{!108}
!108 = !DIDerivedType(tag: DW_TAG_member, scope: !106, file: !105, line: 18, baseType: !109, size: 32)
!109 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !106, file: !105, line: 18, size: 32, elements: !110)
!110 = !{!111}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !109, file: !105, line: 19, baseType: !112, size: 32)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !113, line: 14, size: 32, elements: !114)
!113 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!114 = !{!115}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !112, file: !113, line: 15, baseType: !116, size: 32)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !117, line: 44, baseType: !118)
!117 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !117, line: 14, size: 32, elements: !119)
!119 = !{!120}
!120 = !DIDerivedType(tag: DW_TAG_member, scope: !118, file: !117, line: 15, baseType: !121, size: 32)
!121 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !118, file: !117, line: 15, size: 32, elements: !122)
!122 = !{!123, !129, !139}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !121, file: !117, line: 16, baseType: !124, size: 32)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !79, line: 174, baseType: !125)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !79, line: 172, size: 32, elements: !126)
!126 = !{!127}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !125, file: !79, line: 173, baseType: !128, size: 32)
!128 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!129 = !DIDerivedType(tag: DW_TAG_member, scope: !121, file: !117, line: 24, baseType: !130, size: 16)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !121, file: !117, line: 24, size: 16, elements: !131)
!131 = !{!132, !138}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !130, file: !117, line: 25, baseType: !133, size: 8)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !134, line: 17, baseType: !135)
!134 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !136, line: 21, baseType: !137)
!136 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!137 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !130, file: !117, line: 26, baseType: !133, size: 8, offset: 8)
!139 = !DIDerivedType(tag: DW_TAG_member, scope: !121, file: !117, line: 28, baseType: !140, size: 32)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !121, file: !117, line: 28, size: 32, elements: !141)
!141 = !{!142, !146}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !140, file: !117, line: 29, baseType: !143, size: 16)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !134, line: 19, baseType: !144)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !136, line: 24, baseType: !145)
!145 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !140, file: !117, line: 30, baseType: !143, size: 16, offset: 16)
!147 = !{i32 7, !"Dwarf Version", i32 5}
!148 = !{i32 2, !"Debug Info Version", i32 3}
!149 = !{i32 1, !"wchar_size", i32 2}
!150 = !{i32 8, !"cf-protection-branch", i32 1}
!151 = !{i32 4, !"function_return_thunk_extern", i32 1}
!152 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!153 = !{i32 1, !"Code Model", i32 2}
!154 = !{i32 1, !"override-stack-alignment", i32 8}
!155 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!156 = distinct !DISubprogram(name: "sysfs_warn_dup", scope: !3, file: !3, line: 21, type: !157, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3350)
!157 = !DISubroutineType(types: !158)
!158 = !{null, !159, !166}
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !57, line: 190, size: 1152, elements: !161)
!161 = !{!162, !163, !164, !165, !168, !176, !179, !180, !3342, !3343, !3344, !3345, !3346, !3349}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !160, file: !57, line: 191, baseType: !124, size: 32)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !160, file: !57, line: 192, baseType: !124, size: 32, offset: 32)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !160, file: !57, line: 202, baseType: !159, size: 64, offset: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !160, file: !57, line: 203, baseType: !166, size: 64, offset: 128)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !160, file: !57, line: 205, baseType: !169, size: 192, align: 64, offset: 192)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !170, line: 5, size: 192, align: 64, elements: !171)
!170 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!171 = !{!172, !173, !175}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !169, file: !170, line: 6, baseType: !81, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !169, file: !170, line: 7, baseType: !174, size: 64, offset: 64)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !169, file: !170, line: 8, baseType: !174, size: 64, offset: 128)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !160, file: !57, line: 207, baseType: !177, size: 64, offset: 384)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !160, file: !57, line: 208, baseType: !7, size: 32, offset: 448)
!180 = !DIDerivedType(tag: DW_TAG_member, scope: !160, file: !57, line: 209, baseType: !181, size: 256, offset: 512)
!181 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !160, file: !57, line: 209, size: 256, elements: !182)
!182 = !{!183, !195, !199}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !181, file: !57, line: 210, baseType: !184, size: 256)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !57, line: 153, size: 256, elements: !185)
!185 = !{!186, !187, !191, !194}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !184, file: !57, line: 154, baseType: !81, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !184, file: !57, line: 156, baseType: !188, size: 64, offset: 64)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !170, line: 12, size: 64, elements: !189)
!189 = !{!190}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !188, file: !170, line: 13, baseType: !174, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !184, file: !57, line: 162, baseType: !192, size: 64, offset: 128)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !57, line: 162, flags: DIFlagFwdDecl)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !184, file: !57, line: 167, baseType: !81, size: 64, offset: 192)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !181, file: !57, line: 211, baseType: !196, size: 64)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !57, line: 170, size: 64, elements: !197)
!197 = !{!198}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !196, file: !57, line: 171, baseType: !159, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !181, file: !57, line: 212, baseType: !200, size: 256)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !57, line: 174, size: 256, elements: !201)
!201 = !{!202, !3337, !3340, !3341}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !200, file: !57, line: 175, baseType: !203, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !205)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !57, line: 271, size: 768, elements: !206)
!206 = !{!207, !3302, !3306, !3310, !3314, !3318, !3322, !3326, !3327, !3328, !3329, !3333}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !205, file: !57, line: 276, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DISubroutineType(types: !210)
!210 = !{!128, !211}
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !57, line: 251, size: 1216, elements: !213)
!213 = !{!214, !215, !3291, !3292, !3293, !3294, !3295, !3296, !3297, !3298, !3299, !3300, !3301}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !212, file: !57, line: 253, baseType: !159, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !212, file: !57, line: 254, baseType: !216, size: 64, offset: 64)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !15, line: 994, size: 1856, align: 64, elements: !218)
!218 = !{!219, !238, !239, !241, !251, !269, !273, !274, !355, !572, !581, !3281, !3282, !3283, !3284, !3285, !3286, !3288, !3289, !3290}
!219 = !DIDerivedType(tag: DW_TAG_member, scope: !217, file: !15, line: 995, baseType: !220, size: 128)
!220 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !217, file: !15, line: 995, size: 128, elements: !221)
!221 = !{!222, !228, !237}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !220, file: !15, line: 996, baseType: !223, size: 64)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !224, line: 60, size: 64, elements: !225)
!224 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!225 = !{!226}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !223, file: !224, line: 61, baseType: !227, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !220, file: !15, line: 997, baseType: !229, size: 128, align: 64)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !79, line: 232, size: 128, align: 64, elements: !230)
!230 = !{!231, !233}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !229, file: !79, line: 233, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !229, file: !79, line: 234, baseType: !234, size: 64, offset: 64)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DISubroutineType(types: !236)
!236 = !{null, !232}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !220, file: !15, line: 998, baseType: !7, size: 32)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !217, file: !15, line: 1005, baseType: !104, size: 32, offset: 128)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !217, file: !15, line: 1006, baseType: !240, size: 32, offset: 160)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !79, line: 156, baseType: !7)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !217, file: !15, line: 1007, baseType: !242, size: 64, offset: 192)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !243, line: 13, baseType: !244)
!243 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !79, line: 181, baseType: !245)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !79, line: 179, size: 64, elements: !246)
!246 = !{!247}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !245, file: !79, line: 180, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !134, line: 22, baseType: !249)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !136, line: 30, baseType: !250)
!250 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !217, file: !15, line: 1008, baseType: !252, size: 256, offset: 256)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !253, line: 66, size: 256, elements: !254)
!253 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!254 = !{!255, !256, !258, !263}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !252, file: !253, line: 67, baseType: !242, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !252, file: !253, line: 68, baseType: !257, size: 32, offset: 64)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !113, line: 23, baseType: !112)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !252, file: !253, line: 70, baseType: !259, size: 32, offset: 96)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !260, line: 15, size: 32, elements: !261)
!260 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!261 = !{!262}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !259, file: !260, line: 20, baseType: !124, size: 32)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !252, file: !253, line: 72, baseType: !264, size: 128, offset: 128)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !79, line: 190, size: 128, elements: !265)
!265 = !{!266, !268}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !264, file: !79, line: 191, baseType: !267, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !264, file: !79, line: 191, baseType: !267, size: 64, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !217, file: !15, line: 1009, baseType: !270, size: 64, offset: 512)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !79, line: 52, baseType: !271)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !272, line: 88, baseType: !250)
!272 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!273 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !217, file: !15, line: 1010, baseType: !7, size: 32, offset: 576)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !217, file: !15, line: 1011, baseType: !275, size: 256, offset: 640)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !15, line: 948, size: 256, elements: !276)
!276 = !{!277, !300, !344, !345, !353, !354}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !275, file: !15, line: 949, baseType: !278, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !279, line: 34, baseType: !280)
!279 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !279, line: 25, size: 64, elements: !281)
!281 = !{!282}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !280, file: !279, line: 26, baseType: !283, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !284, line: 27, baseType: !285)
!284 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !284, line: 13, size: 64, elements: !286)
!286 = !{!287, !299}
!287 = !DIDerivedType(tag: DW_TAG_member, scope: !285, file: !284, line: 14, baseType: !288, size: 32)
!288 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !285, file: !284, line: 14, size: 32, elements: !289)
!289 = !{!290, !291}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !288, file: !284, line: 15, baseType: !124, size: 32)
!291 = !DIDerivedType(tag: DW_TAG_member, scope: !288, file: !284, line: 16, baseType: !292, size: 32)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !288, file: !284, line: 16, size: 32, elements: !293)
!293 = !{!294, !295}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !292, file: !284, line: 18, baseType: !133, size: 8)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !292, file: !284, line: 19, baseType: !296, size: 24, offset: 8)
!296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 24, elements: !297)
!297 = !{!298}
!298 = !DISubrange(count: 3)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !285, file: !284, line: 26, baseType: !116, size: 32, offset: 32)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !275, file: !15, line: 950, baseType: !301, size: 64, offset: 64)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !6, line: 59, size: 768, elements: !303)
!303 = !{!304, !310, !311, !312, !325, !326, !333, !334}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !302, file: !6, line: 61, baseType: !305, size: 32)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !306, line: 113, baseType: !307)
!306 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !306, line: 111, size: 32, elements: !308)
!308 = !{!309}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !307, file: !306, line: 112, baseType: !124, size: 32)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !302, file: !6, line: 62, baseType: !7, size: 32, offset: 32)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !302, file: !6, line: 63, baseType: !104, size: 32, offset: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !302, file: !6, line: 65, baseType: !313, size: 256, offset: 128)
!313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !314, size: 256, elements: !323)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !79, line: 194, size: 64, elements: !315)
!315 = !{!316}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !314, file: !79, line: 195, baseType: !317, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !79, line: 198, size: 128, elements: !319)
!319 = !{!320, !321}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !318, file: !79, line: 199, baseType: !317, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !318, file: !79, line: 199, baseType: !322, size: 64, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!323 = !{!324}
!324 = !DISubrange(count: 4)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !302, file: !6, line: 66, baseType: !314, size: 64, offset: 384)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !302, file: !6, line: 68, baseType: !327, size: 192, offset: 448)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !328, line: 41, baseType: !329)
!328 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !328, line: 37, size: 192, elements: !330)
!330 = !{!331, !332}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !329, file: !328, line: 38, baseType: !104, size: 32)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !329, file: !328, line: 39, baseType: !264, size: 128, offset: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !302, file: !6, line: 69, baseType: !229, size: 128, align: 64, offset: 640)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !302, file: !6, line: 70, baseType: !335, offset: 768)
!335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !336, elements: !342)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !6, line: 54, size: 128, elements: !337)
!337 = !{!338, !339}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !336, file: !6, line: 55, baseType: !128, size: 32)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !336, file: !6, line: 56, baseType: !340, size: 64, offset: 64)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !6, line: 56, flags: DIFlagFwdDecl)
!342 = !{!343}
!343 = !DISubrange(count: -1)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !275, file: !15, line: 951, baseType: !5, size: 32, offset: 128)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !275, file: !15, line: 952, baseType: !346, size: 32, offset: 160)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !347, line: 23, baseType: !348)
!347 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !347, line: 21, size: 32, elements: !349)
!349 = !{!350}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !348, file: !347, line: 22, baseType: !351, size: 32)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !79, line: 37, baseType: !352)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !272, line: 49, baseType: !7)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !275, file: !15, line: 952, baseType: !346, size: 32, offset: 192)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !275, file: !15, line: 953, baseType: !128, size: 32, offset: 224)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !217, file: !15, line: 1012, baseType: !356, size: 64, offset: 896)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !358)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !359, line: 110, size: 1472, elements: !360)
!359 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!360 = !{!361, !362, !363, !370, !371, !372, !373, !374, !375, !376, !377, !386, !387, !388, !389, !390, !391, !517, !518, !519, !520, !521, !552, !555, !559, !567}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !358, file: !359, line: 111, baseType: !242, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !358, file: !359, line: 112, baseType: !346, size: 32, offset: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !358, file: !359, line: 113, baseType: !364, size: 32, offset: 96)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !347, line: 28, baseType: !365)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !347, line: 26, size: 32, elements: !366)
!366 = !{!367}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !365, file: !347, line: 27, baseType: !368, size: 32)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !79, line: 38, baseType: !369)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !272, line: 50, baseType: !7)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !358, file: !359, line: 114, baseType: !346, size: 32, offset: 128)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !358, file: !359, line: 115, baseType: !364, size: 32, offset: 160)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !358, file: !359, line: 116, baseType: !346, size: 32, offset: 192)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !358, file: !359, line: 117, baseType: !364, size: 32, offset: 224)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !358, file: !359, line: 118, baseType: !346, size: 32, offset: 256)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !358, file: !359, line: 119, baseType: !364, size: 32, offset: 288)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !358, file: !359, line: 120, baseType: !7, size: 32, offset: 320)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !358, file: !359, line: 121, baseType: !378, size: 64, offset: 384)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !379, line: 24, baseType: !380)
!379 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !379, line: 24, size: 64, elements: !381)
!381 = !{!382}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !380, file: !379, line: 24, baseType: !383, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !134, line: 23, baseType: !384)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !136, line: 31, baseType: !385)
!385 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !358, file: !359, line: 122, baseType: !378, size: 64, offset: 448)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !358, file: !359, line: 123, baseType: !378, size: 64, offset: 512)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !358, file: !359, line: 124, baseType: !378, size: 64, offset: 576)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !358, file: !359, line: 125, baseType: !378, size: 64, offset: 640)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !358, file: !359, line: 127, baseType: !137, size: 8, offset: 704)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !358, file: !359, line: 129, baseType: !392, size: 64, offset: 768)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !394, line: 195, size: 1728, elements: !395)
!394 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!395 = !{!396, !397, !402, !407, !416, !419, !420, !427, !428, !429, !430, !435, !436, !437, !439, !440, !481, !502}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !393, file: !394, line: 196, baseType: !305, size: 32)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !393, file: !394, line: 197, baseType: !398, size: 32, offset: 32)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !394, line: 28, baseType: !399)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !79, line: 104, baseType: !400)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !134, line: 20, baseType: !401)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !136, line: 26, baseType: !128)
!402 = !DIDerivedType(tag: DW_TAG_member, scope: !393, file: !394, line: 198, baseType: !403, size: 192, offset: 64)
!403 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !393, file: !394, line: 198, size: 192, elements: !404)
!404 = !{!405, !406}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !403, file: !394, line: 199, baseType: !264, size: 128)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !403, file: !394, line: 200, baseType: !169, size: 192, align: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !393, file: !394, line: 205, baseType: !408, size: 320, offset: 256)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !409, line: 48, size: 320, elements: !410)
!409 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!410 = !{!411, !412, !413, !414, !415}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !408, file: !409, line: 49, baseType: !242, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !408, file: !409, line: 55, baseType: !242, size: 64, offset: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !408, file: !409, line: 57, baseType: !259, size: 32, offset: 128)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !408, file: !409, line: 59, baseType: !257, size: 32, offset: 160)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !408, file: !409, line: 60, baseType: !264, size: 128, offset: 192)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !393, file: !394, line: 206, baseType: !417, size: 64, offset: 576)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !394, line: 206, flags: DIFlagFwdDecl)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !393, file: !394, line: 207, baseType: !80, size: 64, offset: 640)
!420 = !DIDerivedType(tag: DW_TAG_member, scope: !393, file: !394, line: 208, baseType: !421, size: 64, offset: 704)
!421 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !393, file: !394, line: 208, size: 64, elements: !422)
!422 = !{!423, !426}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !421, file: !394, line: 209, baseType: !424, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !425, line: 8, baseType: !249)
!425 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!426 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !421, file: !394, line: 210, baseType: !424, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !393, file: !394, line: 212, baseType: !424, size: 64, offset: 768)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !393, file: !394, line: 213, baseType: !346, size: 32, offset: 832)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !393, file: !394, line: 214, baseType: !364, size: 32, offset: 864)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !393, file: !394, line: 215, baseType: !431, size: 32, offset: 896)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !394, line: 31, baseType: !432)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !79, line: 110, baseType: !433)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !134, line: 21, baseType: !434)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !136, line: 27, baseType: !7)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !393, file: !394, line: 216, baseType: !145, size: 16, offset: 928)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !393, file: !394, line: 217, baseType: !145, size: 16, offset: 944)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !393, file: !394, line: 221, baseType: !438, size: 16, offset: 960)
!438 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !393, file: !394, line: 228, baseType: !81, size: 64, offset: 1024)
!440 = !DIDerivedType(tag: DW_TAG_member, scope: !393, file: !394, line: 245, baseType: !441, size: 320, offset: 1088)
!441 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !393, file: !394, line: 245, size: 320, elements: !442)
!442 = !{!443, !472}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !441, file: !394, line: 246, baseType: !444, size: 320)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !394, line: 114, size: 320, elements: !445)
!445 = !{!446, !447, !459, !462, !471}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !444, file: !394, line: 116, baseType: !81, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, scope: !444, file: !394, line: 117, baseType: !448, size: 64, offset: 64)
!448 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !444, file: !394, line: 117, size: 64, elements: !449)
!449 = !{!450, !458}
!450 = !DIDerivedType(tag: DW_TAG_member, scope: !448, file: !394, line: 118, baseType: !451, size: 64)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !448, file: !394, line: 118, size: 64, elements: !452)
!452 = !{!453, !454}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !451, file: !394, line: 120, baseType: !143, size: 16)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !451, file: !394, line: 121, baseType: !455, size: 48, offset: 16)
!455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 48, elements: !456)
!456 = !{!457}
!457 = !DISubrange(count: 6)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !448, file: !394, line: 127, baseType: !81, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !444, file: !394, line: 129, baseType: !460, size: 64, offset: 128)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !394, line: 102, flags: DIFlagFwdDecl)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !444, file: !394, line: 130, baseType: !463, size: 64, offset: 192)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !394, line: 108, size: 192, elements: !465)
!465 = !{!466, !467, !468}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !464, file: !394, line: 109, baseType: !229, size: 128, align: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !464, file: !394, line: 110, baseType: !305, size: 32, offset: 128)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !464, file: !394, line: 111, baseType: !469, size: 8, offset: 160)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !79, line: 35, baseType: !470)
!470 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !444, file: !394, line: 131, baseType: !166, size: 64, offset: 256)
!472 = !DIDerivedType(tag: DW_TAG_member, scope: !441, file: !394, line: 247, baseType: !473, size: 320)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !441, file: !394, line: 247, size: 320, elements: !474)
!474 = !{!475, !476, !477, !478, !479}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !473, file: !394, line: 248, baseType: !81, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !473, file: !394, line: 249, baseType: !81, size: 64, offset: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !473, file: !394, line: 250, baseType: !460, size: 64, offset: 128)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !473, file: !394, line: 251, baseType: !463, size: 64, offset: 192)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !473, file: !394, line: 252, baseType: !480, size: 64, offset: 256)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, scope: !393, file: !394, line: 260, baseType: !482, size: 256, offset: 1408)
!482 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !393, file: !394, line: 260, size: 256, elements: !483)
!483 = !{!484, !490}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !482, file: !394, line: 261, baseType: !485, size: 256)
!485 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !394, line: 134, size: 256, elements: !486)
!486 = !{!487, !488}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !485, file: !394, line: 135, baseType: !80, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !485, file: !394, line: 136, baseType: !489, size: 256)
!489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 256, elements: !323)
!490 = !DIDerivedType(tag: DW_TAG_member, scope: !482, file: !394, line: 262, baseType: !491, size: 256)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !482, file: !394, line: 262, size: 256, elements: !492)
!492 = !{!493, !494}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !491, file: !394, line: 264, baseType: !264, size: 128)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !491, file: !394, line: 265, baseType: !495, size: 128, offset: 128)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !496, line: 22, size: 128, elements: !497)
!496 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!497 = !{!498, !501}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !495, file: !496, line: 23, baseType: !499, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !496, line: 23, flags: DIFlagFwdDecl)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !495, file: !496, line: 24, baseType: !81, size: 64, offset: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !393, file: !394, line: 280, baseType: !503, size: 64, offset: 1664)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !394, line: 176, size: 192, elements: !505)
!505 = !{!506, !515, !516}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !504, file: !394, line: 177, baseType: !507, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !394, line: 171, baseType: !508)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DISubroutineType(types: !510)
!510 = !{!128, !392, !511, !513, !392}
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !461)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !485)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !504, file: !394, line: 178, baseType: !392, size: 64, offset: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !504, file: !394, line: 179, baseType: !460, size: 64, offset: 128)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !358, file: !359, line: 130, baseType: !392, size: 64, offset: 832)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !358, file: !359, line: 131, baseType: !392, size: 64, offset: 896)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !358, file: !359, line: 132, baseType: !392, size: 64, offset: 960)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !358, file: !359, line: 135, baseType: !80, size: 64, offset: 1024)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !358, file: !359, line: 137, baseType: !522, size: 64, offset: 1088)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !524, line: 14, size: 1088, elements: !525)
!524 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!525 = !{!526, !527, !536, !537, !538, !539, !540, !541}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !523, file: !524, line: 15, baseType: !305, size: 32)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !523, file: !524, line: 17, baseType: !528, size: 320, offset: 64)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !529, line: 22, size: 320, elements: !530)
!529 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!530 = !{!531, !532, !533, !534}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !528, file: !529, line: 23, baseType: !257, size: 32)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !528, file: !529, line: 24, baseType: !248, size: 64, offset: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !528, file: !529, line: 26, baseType: !264, size: 128, offset: 128)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !528, file: !529, line: 28, baseType: !535, size: 64, offset: 256)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !523, file: !524, line: 19, baseType: !81, size: 64, offset: 384)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !523, file: !524, line: 20, baseType: !242, size: 64, offset: 448)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !523, file: !524, line: 23, baseType: !318, size: 128, offset: 512)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !523, file: !524, line: 24, baseType: !346, size: 32, offset: 640)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !523, file: !524, line: 29, baseType: !242, size: 64, offset: 704)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !523, file: !524, line: 36, baseType: !542, size: 320, offset: 768)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !543, line: 15, size: 320, elements: !544)
!543 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!544 = !{!545, !546, !547, !548, !549, !550, !551}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !542, file: !543, line: 16, baseType: !257, size: 32)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !542, file: !543, line: 18, baseType: !128, size: 32, offset: 32)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !542, file: !543, line: 19, baseType: !128, size: 32, offset: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !542, file: !543, line: 20, baseType: !128, size: 32, offset: 96)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !542, file: !543, line: 21, baseType: !128, size: 32, offset: 128)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !542, file: !543, line: 22, baseType: !81, size: 64, offset: 192)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !542, file: !543, line: 23, baseType: !81, size: 64, offset: 256)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !358, file: !359, line: 138, baseType: !553, size: 64, offset: 1152)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !347, line: 18, flags: DIFlagFwdDecl)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !358, file: !359, line: 139, baseType: !556, size: 64, offset: 1216)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !558, line: 16, flags: DIFlagFwdDecl)
!558 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!559 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !358, file: !359, line: 140, baseType: !560, size: 64, offset: 1280)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !359, line: 25, size: 64, elements: !562)
!562 = !{!563, !564, !565}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !561, file: !359, line: 26, baseType: !124, size: 32)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !561, file: !359, line: 27, baseType: !128, size: 32, offset: 32)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !561, file: !359, line: 28, baseType: !566, offset: 64)
!566 = !DICompositeType(tag: DW_TAG_array_type, baseType: !364, elements: !342)
!567 = !DIDerivedType(tag: DW_TAG_member, scope: !358, file: !359, line: 142, baseType: !568, size: 128, offset: 1344)
!568 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !358, file: !359, line: 142, size: 128, elements: !569)
!569 = !{!570, !571}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !568, file: !359, line: 143, baseType: !128, size: 32)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !568, file: !359, line: 144, baseType: !229, size: 128, align: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !217, file: !15, line: 1013, baseType: !573, size: 256, offset: 960)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !15, line: 970, size: 256, elements: !574)
!574 = !{!575, !576, !577, !578, !579, !580}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !573, file: !15, line: 971, baseType: !81, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !573, file: !15, line: 972, baseType: !7, size: 32, offset: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !573, file: !15, line: 973, baseType: !7, size: 32, offset: 96)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !573, file: !15, line: 974, baseType: !7, size: 32, offset: 128)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !573, file: !15, line: 975, baseType: !7, size: 32, offset: 160)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !573, file: !15, line: 976, baseType: !270, size: 64, offset: 192)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !217, file: !15, line: 1014, baseType: !582, size: 128, offset: 1216)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !583, line: 8, size: 128, elements: !584)
!583 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!584 = !{!585, !3280}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !582, file: !583, line: 9, baseType: !586, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !588, line: 70, size: 256, elements: !589)
!588 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!589 = !{!590, !3277, !3278, !3279}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !587, file: !588, line: 71, baseType: !591, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !593, line: 82, size: 1536, elements: !594)
!593 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!594 = !{!595, !596, !606, !614, !615, !630, !3244, !3246, !3259, !3260, !3261, !3262, !3263, !3269, !3270, !3271}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !592, file: !593, line: 84, baseType: !7, size: 32)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !592, file: !593, line: 85, baseType: !597, size: 32, offset: 32)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !598, line: 275, baseType: !599)
!598 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !598, line: 275, size: 32, elements: !600)
!600 = !{!601}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !599, file: !598, line: 275, baseType: !602, size: 32)
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !598, line: 69, baseType: !603)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !598, line: 64, size: 32, elements: !604)
!604 = !{!605}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !603, file: !598, line: 65, baseType: !7, size: 32)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !592, file: !593, line: 86, baseType: !607, size: 128, offset: 64)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !608, line: 38, size: 128, elements: !609)
!608 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!609 = !{!610, !612}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !607, file: !608, line: 39, baseType: !611, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !607, file: !608, line: 39, baseType: !613, size: 64, offset: 64)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !592, file: !593, line: 87, baseType: !591, size: 64, offset: 192)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !592, file: !593, line: 88, baseType: !616, size: 128, offset: 256)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !593, line: 49, size: 128, elements: !617)
!617 = !{!618, !627}
!618 = !DIDerivedType(tag: DW_TAG_member, scope: !616, file: !593, line: 50, baseType: !619, size: 64)
!619 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !616, file: !593, line: 50, size: 64, elements: !620)
!620 = !{!621, !626}
!621 = !DIDerivedType(tag: DW_TAG_member, scope: !619, file: !593, line: 51, baseType: !622, size: 64)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !619, file: !593, line: 51, size: 64, elements: !623)
!623 = !{!624, !625}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !622, file: !593, line: 52, baseType: !433, size: 32)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !622, file: !593, line: 52, baseType: !433, size: 32, offset: 32)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !619, file: !593, line: 54, baseType: !383, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !616, file: !593, line: 56, baseType: !628, size: 64, offset: 64)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !137)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !592, file: !593, line: 89, baseType: !631, size: 64, offset: 384)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !15, line: 641, size: 4800, elements: !633)
!633 = !{!634, !636, !637, !638, !639, !640, !641, !644, !645, !841, !3002, !3003, !3004, !3005, !3011, !3012, !3013, !3014, !3015, !3016, !3017, !3018, !3019, !3020, !3021, !3022, !3023, !3024, !3025, !3026, !3027, !3028, !3029, !3034, !3035, !3036, !3037, !3038, !3039, !3040, !3226, !3229, !3230, !3231, !3240, !3241, !3242, !3243}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !632, file: !15, line: 642, baseType: !635, size: 16)
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !79, line: 24, baseType: !145)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !632, file: !15, line: 643, baseType: !145, size: 16, offset: 16)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !632, file: !15, line: 644, baseType: !346, size: 32, offset: 32)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !632, file: !15, line: 645, baseType: !264, size: 128, offset: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !632, file: !15, line: 646, baseType: !364, size: 32, offset: 192)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !632, file: !15, line: 647, baseType: !7, size: 32, offset: 224)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !632, file: !15, line: 650, baseType: !642, size: 64, offset: 256)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !15, line: 607, flags: DIFlagFwdDecl)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !632, file: !15, line: 651, baseType: !642, size: 64, offset: 320)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !632, file: !15, line: 654, baseType: !646, size: 64, offset: 384)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !648)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !15, line: 1966, size: 2048, align: 512, elements: !649)
!649 = !{!650, !654, !667, !673, !677, !681, !685, !689, !693, !697, !701, !702, !708, !712, !749, !780, !790, !796, !800, !804, !808, !812, !816, !822, !826}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !648, file: !15, line: 1967, baseType: !651, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DISubroutineType(types: !653)
!653 = !{!591, !631, !591, !7}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !648, file: !15, line: 1968, baseType: !655, size: 64, offset: 64)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DISubroutineType(types: !657)
!657 = !{!166, !591, !631, !658}
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !660, line: 10, size: 128, elements: !661)
!660 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!661 = !{!662, !666}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !659, file: !660, line: 11, baseType: !663, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = !DISubroutineType(types: !665)
!665 = !{null, !80}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !659, file: !660, line: 12, baseType: !80, size: 64, offset: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !648, file: !15, line: 1969, baseType: !668, size: 64, offset: 128)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DISubroutineType(types: !670)
!670 = !{!128, !671, !631, !128}
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !379, line: 42, flags: DIFlagFwdDecl)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !648, file: !15, line: 1970, baseType: !674, size: 64, offset: 192)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DISubroutineType(types: !676)
!676 = !{!642, !631, !128, !469}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !648, file: !15, line: 1972, baseType: !678, size: 64, offset: 256)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DISubroutineType(types: !680)
!680 = !{!128, !591, !480, !128}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !648, file: !15, line: 1974, baseType: !682, size: 64, offset: 320)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DISubroutineType(types: !684)
!684 = !{!128, !671, !631, !591, !635, !469}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !648, file: !15, line: 1976, baseType: !686, size: 64, offset: 384)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DISubroutineType(types: !688)
!688 = !{!128, !591, !631, !591}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !648, file: !15, line: 1977, baseType: !690, size: 64, offset: 448)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DISubroutineType(types: !692)
!692 = !{!128, !631, !591}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !648, file: !15, line: 1978, baseType: !694, size: 64, offset: 512)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DISubroutineType(types: !696)
!696 = !{!128, !671, !631, !591, !166}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !648, file: !15, line: 1980, baseType: !698, size: 64, offset: 576)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DISubroutineType(types: !700)
!700 = !{!128, !671, !631, !591, !635}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !648, file: !15, line: 1982, baseType: !690, size: 64, offset: 640)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !648, file: !15, line: 1983, baseType: !703, size: 64, offset: 704)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = !DISubroutineType(types: !705)
!705 = !{!128, !671, !631, !591, !635, !706}
!706 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !79, line: 21, baseType: !707)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !79, line: 18, baseType: !433)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !648, file: !15, line: 1985, baseType: !709, size: 64, offset: 768)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = !DISubroutineType(types: !711)
!711 = !{!128, !671, !631, !591, !631, !591, !7}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !648, file: !15, line: 1987, baseType: !713, size: 64, offset: 832)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DISubroutineType(types: !715)
!715 = !{!128, !671, !591, !716}
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !15, line: 226, size: 640, elements: !718)
!718 = !{!719, !720, !721, !731, !740, !741, !746, !747, !748}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !717, file: !15, line: 227, baseType: !7, size: 32)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !717, file: !15, line: 228, baseType: !635, size: 16, offset: 32)
!721 = !DIDerivedType(tag: DW_TAG_member, scope: !717, file: !15, line: 241, baseType: !722, size: 32, offset: 64)
!722 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !717, file: !15, line: 241, size: 32, elements: !723)
!723 = !{!724, !725}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !722, file: !15, line: 242, baseType: !346, size: 32)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !722, file: !15, line: 243, baseType: !726, size: 32)
!726 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !727, line: 16, baseType: !728)
!727 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !727, line: 14, size: 32, elements: !729)
!729 = !{!730}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !728, file: !727, line: 15, baseType: !351, size: 32)
!731 = !DIDerivedType(tag: DW_TAG_member, scope: !717, file: !15, line: 245, baseType: !732, size: 32, offset: 96)
!732 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !717, file: !15, line: 245, size: 32, elements: !733)
!733 = !{!734, !735}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !732, file: !15, line: 246, baseType: !364, size: 32)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !732, file: !15, line: 247, baseType: !736, size: 32)
!736 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !727, line: 20, baseType: !737)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !727, line: 18, size: 32, elements: !738)
!738 = !{!739}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !737, file: !727, line: 19, baseType: !368, size: 32)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !717, file: !15, line: 249, baseType: !270, size: 64, offset: 128)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !717, file: !15, line: 250, baseType: !742, size: 128, offset: 192)
!742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !425, line: 13, size: 128, elements: !743)
!743 = !{!744, !745}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !742, file: !425, line: 14, baseType: !424, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !742, file: !425, line: 15, baseType: !82, size: 64, offset: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !717, file: !15, line: 251, baseType: !742, size: 128, offset: 320)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !717, file: !15, line: 252, baseType: !742, size: 128, offset: 448)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !717, file: !15, line: 259, baseType: !216, size: 64, offset: 576)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !648, file: !15, line: 1988, baseType: !750, size: 64, offset: 896)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DISubroutineType(types: !752)
!752 = !{!128, !671, !753, !755, !433, !7}
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !582)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !757, line: 22, size: 1280, elements: !758)
!757 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!758 = !{!759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !756, file: !757, line: 23, baseType: !433, size: 32)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !756, file: !757, line: 24, baseType: !635, size: 16, offset: 32)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !756, file: !757, line: 25, baseType: !7, size: 32, offset: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !756, file: !757, line: 26, baseType: !432, size: 32, offset: 96)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !756, file: !757, line: 27, baseType: !383, size: 64, offset: 128)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !756, file: !757, line: 28, baseType: !383, size: 64, offset: 192)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !756, file: !757, line: 41, baseType: !383, size: 64, offset: 256)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !756, file: !757, line: 42, baseType: !706, size: 32, offset: 320)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !756, file: !757, line: 43, baseType: !706, size: 32, offset: 352)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !756, file: !757, line: 44, baseType: !346, size: 32, offset: 384)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !756, file: !757, line: 45, baseType: !364, size: 32, offset: 416)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !756, file: !757, line: 46, baseType: !270, size: 64, offset: 448)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !756, file: !757, line: 47, baseType: !742, size: 128, offset: 512)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !756, file: !757, line: 48, baseType: !742, size: 128, offset: 640)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !756, file: !757, line: 49, baseType: !742, size: 128, offset: 768)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !756, file: !757, line: 50, baseType: !742, size: 128, offset: 896)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !756, file: !757, line: 51, baseType: !383, size: 64, offset: 1024)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !756, file: !757, line: 52, baseType: !383, size: 64, offset: 1088)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !756, file: !757, line: 53, baseType: !433, size: 32, offset: 1152)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !756, file: !757, line: 54, baseType: !433, size: 32, offset: 1184)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !756, file: !757, line: 55, baseType: !383, size: 64, offset: 1216)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !648, file: !15, line: 1990, baseType: !781, size: 64, offset: 960)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = !DISubroutineType(types: !783)
!783 = !{!784, !591, !480, !787}
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !79, line: 66, baseType: !785)
!785 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !272, line: 73, baseType: !786)
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !272, line: 15, baseType: !82)
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !79, line: 61, baseType: !788)
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !272, line: 72, baseType: !789)
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !272, line: 16, baseType: !81)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !648, file: !15, line: 1991, baseType: !791, size: 64, offset: 1024)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DISubroutineType(types: !793)
!793 = !{!128, !631, !794, !383, !383}
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !15, line: 55, flags: DIFlagFwdDecl)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !648, file: !15, line: 1993, baseType: !797, size: 64, offset: 1088)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DISubroutineType(types: !799)
!799 = !{!128, !631, !128}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !648, file: !15, line: 1994, baseType: !801, size: 64, offset: 1152)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DISubroutineType(types: !803)
!803 = !{!128, !631, !591, !216, !7, !635}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !648, file: !15, line: 1997, baseType: !805, size: 64, offset: 1216)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DISubroutineType(types: !807)
!807 = !{!128, !671, !631, !216, !635}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !648, file: !15, line: 1999, baseType: !809, size: 64, offset: 1280)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DISubroutineType(types: !811)
!811 = !{!642, !671, !591, !128}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !648, file: !15, line: 2001, baseType: !813, size: 64, offset: 1344)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DISubroutineType(types: !815)
!815 = !{!128, !671, !591, !642, !128}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !648, file: !15, line: 2003, baseType: !817, size: 64, offset: 1408)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DISubroutineType(types: !819)
!819 = !{!128, !671, !591, !820}
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !15, line: 76, flags: DIFlagFwdDecl)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !648, file: !15, line: 2005, baseType: !823, size: 64, offset: 1472)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DISubroutineType(types: !825)
!825 = !{!128, !591, !820}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !648, file: !15, line: 2006, baseType: !827, size: 64, offset: 1536)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DISubroutineType(types: !829)
!829 = !{!830, !631}
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !15, line: 3192, size: 192, elements: !832)
!832 = !{!833, !840}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !831, file: !15, line: 3193, baseType: !834, size: 128)
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !835, line: 296, size: 128, elements: !836)
!835 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!836 = !{!837, !838, !839}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !834, file: !835, line: 297, baseType: !104, size: 32)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !834, file: !835, line: 299, baseType: !78, size: 32, offset: 32)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !834, file: !835, line: 300, baseType: !80, size: 64, offset: 64)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !831, file: !15, line: 3194, baseType: !433, size: 32, offset: 128)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !632, file: !15, line: 655, baseType: !842, size: 64, offset: 448)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !15, line: 1190, size: 10752, elements: !844)
!844 = !{!845, !846, !847, !848, !849, !850, !892, !1030, !1070, !1153, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1170, !1174, !1175, !1178, !1181, !1184, !1187, !1188, !1189, !1230, !2875, !2876, !2877, !2878, !2879, !2880, !2883, !2885, !2892, !2893, !2894, !2895, !2954, !2969, !2970, !2971, !2972, !2973, !2976, !2977, !2978, !2993, !2994, !2995, !2996, !2997, !2998, !2999, !3000, !3001}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !843, file: !15, line: 1191, baseType: !264, size: 128)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !843, file: !15, line: 1192, baseType: !706, size: 32, offset: 128)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !843, file: !15, line: 1193, baseType: !137, size: 8, offset: 160)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !843, file: !15, line: 1194, baseType: !81, size: 64, offset: 192)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !843, file: !15, line: 1195, baseType: !270, size: 64, offset: 256)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !843, file: !15, line: 1196, baseType: !851, size: 64, offset: 320)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !15, line: 2366, size: 576, elements: !853)
!853 = !{!854, !855, !856, !862, !866, !870, !874, !878, !879, !880, !884, !885, !886, !888, !889, !890, !891}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !852, file: !15, line: 2367, baseType: !166, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !852, file: !15, line: 2368, baseType: !128, size: 32, offset: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !852, file: !15, line: 2376, baseType: !857, size: 64, offset: 128)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DISubroutineType(types: !859)
!859 = !{!128, !860}
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !588, line: 21, flags: DIFlagFwdDecl)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !852, file: !15, line: 2377, baseType: !863, size: 64, offset: 192)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !865)
!865 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !15, line: 75, flags: DIFlagFwdDecl)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !852, file: !15, line: 2378, baseType: !867, size: 64, offset: 256)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DISubroutineType(types: !869)
!869 = !{!591, !851, !128, !166, !80}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !852, file: !15, line: 2380, baseType: !871, size: 64, offset: 320)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DISubroutineType(types: !873)
!873 = !{null, !842}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !852, file: !15, line: 2381, baseType: !875, size: 64, offset: 384)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !877, line: 103, flags: DIFlagFwdDecl)
!877 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ec86911224c4b764298f6e976616738c")
!878 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !852, file: !15, line: 2382, baseType: !851, size: 64, offset: 448)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !852, file: !15, line: 2383, baseType: !314, size: 64, offset: 512)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !852, file: !15, line: 2385, baseType: !881, offset: 576)
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !882, line: 206, elements: !883)
!882 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!883 = !{}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !852, file: !15, line: 2386, baseType: !881, offset: 576)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !852, file: !15, line: 2387, baseType: !881, offset: 576)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !852, file: !15, line: 2388, baseType: !887, offset: 576)
!887 = !DICompositeType(tag: DW_TAG_array_type, baseType: !881, elements: !297)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !852, file: !15, line: 2390, baseType: !881, offset: 576)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !852, file: !15, line: 2391, baseType: !881, offset: 576)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !852, file: !15, line: 2392, baseType: !881, offset: 576)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !852, file: !15, line: 2393, baseType: !881, offset: 576)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !843, file: !15, line: 1197, baseType: !893, size: 64, offset: 384)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !895)
!895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !15, line: 2057, size: 1664, elements: !896)
!896 = !{!897, !901, !905, !906, !910, !916, !920, !921, !922, !926, !930, !934, !935, !936, !942, !947, !948, !955, !956, !957, !958, !962, !966, !1013, !1028, !1029}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !895, file: !15, line: 2058, baseType: !898, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DISubroutineType(types: !900)
!900 = !{!631, !842}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !895, file: !15, line: 2059, baseType: !902, size: 64, offset: 64)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = !DISubroutineType(types: !904)
!904 = !{null, !631}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !895, file: !15, line: 2060, baseType: !902, size: 64, offset: 128)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !895, file: !15, line: 2062, baseType: !907, size: 64, offset: 192)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DISubroutineType(types: !909)
!909 = !{null, !631, !128}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !895, file: !15, line: 2063, baseType: !911, size: 64, offset: 256)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DISubroutineType(types: !913)
!913 = !{!128, !631, !914}
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !15, line: 309, flags: DIFlagFwdDecl)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !895, file: !15, line: 2064, baseType: !917, size: 64, offset: 320)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = !DISubroutineType(types: !919)
!919 = !{!128, !631}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !895, file: !15, line: 2065, baseType: !902, size: 64, offset: 384)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !895, file: !15, line: 2066, baseType: !871, size: 64, offset: 448)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !895, file: !15, line: 2067, baseType: !923, size: 64, offset: 512)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = !DISubroutineType(types: !925)
!925 = !{!128, !842, !128}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !895, file: !15, line: 2068, baseType: !927, size: 64, offset: 576)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DISubroutineType(types: !929)
!929 = !{!128, !842, !14}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !895, file: !15, line: 2069, baseType: !931, size: 64, offset: 640)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = !DISubroutineType(types: !933)
!933 = !{!128, !842}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !895, file: !15, line: 2070, baseType: !927, size: 64, offset: 704)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !895, file: !15, line: 2071, baseType: !931, size: 64, offset: 768)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !895, file: !15, line: 2072, baseType: !937, size: 64, offset: 832)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = !DISubroutineType(types: !939)
!939 = !{!128, !591, !940}
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !15, line: 62, flags: DIFlagFwdDecl)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !895, file: !15, line: 2073, baseType: !943, size: 64, offset: 896)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = !DISubroutineType(types: !945)
!945 = !{!128, !842, !946, !480}
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !895, file: !15, line: 2074, baseType: !871, size: 64, offset: 960)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !895, file: !15, line: 2076, baseType: !949, size: 64, offset: 1024)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = !DISubroutineType(types: !951)
!951 = !{!128, !952, !591}
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !954, line: 66, flags: DIFlagFwdDecl)
!954 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!955 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !895, file: !15, line: 2077, baseType: !949, size: 64, offset: 1088)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !895, file: !15, line: 2078, baseType: !949, size: 64, offset: 1152)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !895, file: !15, line: 2079, baseType: !949, size: 64, offset: 1216)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !895, file: !15, line: 2081, baseType: !959, size: 64, offset: 1280)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = !DISubroutineType(types: !961)
!961 = !{!784, !842, !128, !480, !787, !270}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !895, file: !15, line: 2082, baseType: !963, size: 64, offset: 1344)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = !DISubroutineType(types: !965)
!965 = !{!784, !842, !128, !166, !787, !270}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !895, file: !15, line: 2083, baseType: !967, size: 64, offset: 1408)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DISubroutineType(types: !969)
!969 = !{!970, !631}
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !20, line: 296, size: 1664, elements: !973)
!973 = !{!974, !975, !976, !977, !978, !979, !980, !981, !982, !998, !999, !1000}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !972, file: !20, line: 297, baseType: !318, size: 128)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !972, file: !20, line: 298, baseType: !264, size: 128, offset: 128)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !972, file: !20, line: 299, baseType: !264, size: 128, offset: 256)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !972, file: !20, line: 300, baseType: !264, size: 128, offset: 384)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !972, file: !20, line: 301, baseType: !252, size: 256, offset: 512)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !972, file: !20, line: 302, baseType: !104, size: 32, offset: 768)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !972, file: !20, line: 303, baseType: !124, size: 32, offset: 800)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !972, file: !20, line: 304, baseType: !842, size: 64, offset: 832)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !972, file: !20, line: 305, baseType: !983, size: 64, offset: 896)
!983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !20, line: 68, size: 64, elements: !984)
!984 = !{!985, !997}
!985 = !DIDerivedType(tag: DW_TAG_member, scope: !983, file: !20, line: 69, baseType: !986, size: 32)
!986 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !983, file: !20, line: 69, size: 32, elements: !987)
!987 = !{!988, !989, !990}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !986, file: !20, line: 70, baseType: !346, size: 32)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !986, file: !20, line: 71, baseType: !364, size: 32)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !986, file: !20, line: 72, baseType: !991, size: 32)
!991 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !992, line: 24, baseType: !993)
!992 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!993 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !992, line: 22, size: 32, elements: !994)
!994 = !{!995}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !993, file: !992, line: 23, baseType: !996, size: 32)
!996 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !992, line: 20, baseType: !352)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !983, file: !20, line: 74, baseType: !19, size: 32, offset: 32)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !972, file: !20, line: 306, baseType: !270, size: 64, offset: 960)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !972, file: !20, line: 307, baseType: !81, size: 64, offset: 1024)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !972, file: !20, line: 308, baseType: !1001, size: 576, offset: 1088)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !20, line: 205, size: 576, elements: !1002)
!1002 = !{!1003, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1001, file: !20, line: 206, baseType: !1004, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !20, line: 66, baseType: !250)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1001, file: !20, line: 207, baseType: !1004, size: 64, offset: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1001, file: !20, line: 208, baseType: !1004, size: 64, offset: 128)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1001, file: !20, line: 209, baseType: !1004, size: 64, offset: 192)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1001, file: !20, line: 210, baseType: !1004, size: 64, offset: 256)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1001, file: !20, line: 211, baseType: !1004, size: 64, offset: 320)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1001, file: !20, line: 212, baseType: !1004, size: 64, offset: 384)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1001, file: !20, line: 213, baseType: !424, size: 64, offset: 448)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1001, file: !20, line: 214, baseType: !424, size: 64, offset: 512)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !895, file: !15, line: 2085, baseType: !1014, size: 64, offset: 1472)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{!82, !842, !1017}
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1019, line: 15, size: 256, elements: !1020)
!1019 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1020 = !{!1021, !1022, !1023, !1024, !1025}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1018, file: !1019, line: 16, baseType: !78, size: 32)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1018, file: !1019, line: 19, baseType: !128, size: 32, offset: 32)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1018, file: !1019, line: 26, baseType: !81, size: 64, offset: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1018, file: !1019, line: 33, baseType: !81, size: 64, offset: 128)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1018, file: !1019, line: 36, baseType: !1026, size: 64, offset: 192)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !1019, line: 36, flags: DIFlagFwdDecl)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !895, file: !15, line: 2087, baseType: !1014, size: 64, offset: 1536)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !895, file: !15, line: 2089, baseType: !871, size: 64, offset: 1600)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !843, file: !15, line: 1198, baseType: !1031, size: 64, offset: 448)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1033)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !20, line: 324, size: 704, elements: !1034)
!1034 = !{!1035, !1039, !1043, !1047, !1048, !1049, !1050, !1051, !1056, !1061, !1065}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1033, file: !20, line: 325, baseType: !1036, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{!128, !971}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1033, file: !20, line: 326, baseType: !1040, size: 64, offset: 64)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!971, !842, !128}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1033, file: !20, line: 327, baseType: !1044, size: 64, offset: 128)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{null, !971}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1033, file: !20, line: 328, baseType: !1036, size: 64, offset: 192)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1033, file: !20, line: 329, baseType: !1036, size: 64, offset: 256)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1033, file: !20, line: 330, baseType: !1036, size: 64, offset: 320)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1033, file: !20, line: 331, baseType: !923, size: 64, offset: 384)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1033, file: !20, line: 334, baseType: !1052, size: 64, offset: 448)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!1055, !631}
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1033, file: !20, line: 335, baseType: !1057, size: 64, offset: 512)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DISubroutineType(types: !1059)
!1059 = !{!128, !631, !1060}
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1033, file: !20, line: 337, baseType: !1062, size: 64, offset: 576)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{!128, !631, !1055}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1033, file: !20, line: 339, baseType: !1066, size: 64, offset: 640)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{!128, !842, !1069}
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !843, file: !15, line: 1199, baseType: !1071, size: 64, offset: 512)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1073)
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !20, line: 430, size: 704, elements: !1074)
!1074 = !{!1075, !1079, !1080, !1084, !1085, !1086, !1101, !1124, !1128, !1129, !1152}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1073, file: !20, line: 431, baseType: !1076, size: 64)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = !DISubroutineType(types: !1078)
!1078 = !{!128, !842, !128, !128, !753}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1073, file: !20, line: 432, baseType: !923, size: 64, offset: 64)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1073, file: !20, line: 433, baseType: !1081, size: 64, offset: 128)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = !DISubroutineType(types: !1083)
!1083 = !{!128, !842, !7}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1073, file: !20, line: 434, baseType: !1081, size: 64, offset: 192)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1073, file: !20, line: 435, baseType: !923, size: 64, offset: 256)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1073, file: !20, line: 436, baseType: !1087, size: 64, offset: 320)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = !DISubroutineType(types: !1089)
!1089 = !{!128, !842, !128, !1090}
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !20, line: 417, size: 256, elements: !1092)
!1092 = !{!1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1091, file: !20, line: 418, baseType: !128, size: 32)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1091, file: !20, line: 419, baseType: !7, size: 32, offset: 32)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1091, file: !20, line: 420, baseType: !7, size: 32, offset: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1091, file: !20, line: 422, baseType: !7, size: 32, offset: 96)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1091, file: !20, line: 423, baseType: !7, size: 32, offset: 128)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1091, file: !20, line: 424, baseType: !7, size: 32, offset: 160)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1091, file: !20, line: 425, baseType: !7, size: 32, offset: 192)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1091, file: !20, line: 426, baseType: !7, size: 32, offset: 224)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1073, file: !20, line: 437, baseType: !1102, size: 64, offset: 384)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = !DISubroutineType(types: !1104)
!1104 = !{!128, !842, !983, !1105}
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !20, line: 345, size: 960, elements: !1107)
!1107 = !{!1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1106, file: !20, line: 346, baseType: !128, size: 32)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1106, file: !20, line: 347, baseType: !383, size: 64, offset: 64)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1106, file: !20, line: 348, baseType: !383, size: 64, offset: 128)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1106, file: !20, line: 349, baseType: !383, size: 64, offset: 192)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1106, file: !20, line: 350, baseType: !383, size: 64, offset: 256)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1106, file: !20, line: 351, baseType: !383, size: 64, offset: 320)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1106, file: !20, line: 352, baseType: !383, size: 64, offset: 384)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1106, file: !20, line: 353, baseType: !248, size: 64, offset: 448)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1106, file: !20, line: 355, baseType: !248, size: 64, offset: 512)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1106, file: !20, line: 356, baseType: !128, size: 32, offset: 576)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1106, file: !20, line: 357, baseType: !128, size: 32, offset: 608)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1106, file: !20, line: 358, baseType: !383, size: 64, offset: 640)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1106, file: !20, line: 359, baseType: !383, size: 64, offset: 704)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1106, file: !20, line: 360, baseType: !383, size: 64, offset: 768)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1106, file: !20, line: 361, baseType: !248, size: 64, offset: 832)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1106, file: !20, line: 362, baseType: !128, size: 32, offset: 896)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1073, file: !20, line: 438, baseType: !1125, size: 64, offset: 448)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = !DISubroutineType(types: !1127)
!1127 = !{!128, !842, !1069, !1105}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1073, file: !20, line: 440, baseType: !1102, size: 64, offset: 512)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1073, file: !20, line: 441, baseType: !1130, size: 64, offset: 576)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{!128, !842, !1133}
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !20, line: 411, size: 1408, elements: !1135)
!1135 = !{!1136, !1137}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1134, file: !20, line: 412, baseType: !7, size: 32)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1134, file: !20, line: 413, baseType: !1138, size: 1344, offset: 64)
!1138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1139, size: 1344, elements: !297)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !20, line: 397, size: 448, elements: !1140)
!1140 = !{!1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1151}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1139, file: !20, line: 398, baseType: !7, size: 32)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1139, file: !20, line: 399, baseType: !7, size: 32, offset: 32)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1139, file: !20, line: 401, baseType: !7, size: 32, offset: 64)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1139, file: !20, line: 402, baseType: !7, size: 32, offset: 96)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1139, file: !20, line: 403, baseType: !7, size: 32, offset: 128)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1139, file: !20, line: 404, baseType: !7, size: 32, offset: 160)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1139, file: !20, line: 405, baseType: !7, size: 32, offset: 192)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1139, file: !20, line: 406, baseType: !385, size: 64, offset: 256)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1139, file: !20, line: 407, baseType: !1150, size: 64, offset: 320)
!1150 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !79, line: 132, baseType: !383)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1139, file: !20, line: 408, baseType: !1150, size: 64, offset: 384)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1073, file: !20, line: 442, baseType: !1081, size: 64, offset: 640)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !843, file: !15, line: 1200, baseType: !1154, size: 64, offset: 576)
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1156)
!1156 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !15, line: 54, flags: DIFlagFwdDecl)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !843, file: !15, line: 1201, baseType: !81, size: 64, offset: 640)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !843, file: !15, line: 1202, baseType: !81, size: 64, offset: 704)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !843, file: !15, line: 1203, baseType: !81, size: 64, offset: 768)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !843, file: !15, line: 1204, baseType: !591, size: 64, offset: 832)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !843, file: !15, line: 1205, baseType: !408, size: 320, offset: 896)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !843, file: !15, line: 1206, baseType: !128, size: 32, offset: 1216)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !843, file: !15, line: 1207, baseType: !124, size: 32, offset: 1248)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !843, file: !15, line: 1209, baseType: !80, size: 64, offset: 1280)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !843, file: !15, line: 1211, baseType: !1166, size: 64, offset: 1344)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1169)
!1169 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !15, line: 1211, flags: DIFlagFwdDecl)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !843, file: !15, line: 1223, baseType: !1171, size: 64, offset: 1408)
!1171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !608, line: 34, size: 64, elements: !1172)
!1172 = !{!1173}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1171, file: !608, line: 35, baseType: !611, size: 64)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !843, file: !15, line: 1224, baseType: !264, size: 128, offset: 1472)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !843, file: !15, line: 1225, baseType: !1176, size: 64, offset: 1600)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !15, line: 1225, flags: DIFlagFwdDecl)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !843, file: !15, line: 1226, baseType: !1179, size: 64, offset: 1664)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !15, line: 1226, flags: DIFlagFwdDecl)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !843, file: !15, line: 1227, baseType: !1182, size: 64, offset: 1728)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !15, line: 50, flags: DIFlagFwdDecl)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !843, file: !15, line: 1228, baseType: !1185, size: 64, offset: 1792)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !15, line: 1228, flags: DIFlagFwdDecl)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !843, file: !15, line: 1229, baseType: !318, size: 128, offset: 1856)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !843, file: !15, line: 1230, baseType: !7, size: 32, offset: 1984)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !843, file: !15, line: 1231, baseType: !1190, size: 2496, offset: 2048)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !20, line: 521, size: 2496, elements: !1191)
!1191 = !{!1192, !1193, !1194, !1196, !1228}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1190, file: !20, line: 522, baseType: !7, size: 32)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1190, file: !20, line: 523, baseType: !408, size: 320, offset: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1190, file: !20, line: 524, baseType: !1195, size: 192, offset: 384)
!1195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !631, size: 192, elements: !297)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1190, file: !20, line: 525, baseType: !1197, size: 1728, offset: 576)
!1197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1198, size: 1728, elements: !297)
!1198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !20, line: 222, size: 576, elements: !1199)
!1199 = !{!1200, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1198, file: !20, line: 223, baseType: !1201, size: 64)
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !20, line: 445, size: 256, elements: !1203)
!1203 = !{!1204, !1205, !1218, !1219}
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1202, file: !20, line: 446, baseType: !128, size: 32)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1202, file: !20, line: 447, baseType: !1206, size: 64, offset: 64)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1208)
!1208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !20, line: 312, size: 512, elements: !1209)
!1209 = !{!1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1208, file: !20, line: 313, baseType: !923, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1208, file: !20, line: 314, baseType: !923, size: 64, offset: 64)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1208, file: !20, line: 315, baseType: !923, size: 64, offset: 128)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1208, file: !20, line: 316, baseType: !923, size: 64, offset: 192)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1208, file: !20, line: 317, baseType: !1036, size: 64, offset: 256)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1208, file: !20, line: 318, baseType: !1036, size: 64, offset: 320)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1208, file: !20, line: 319, baseType: !1036, size: 64, offset: 384)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1208, file: !20, line: 320, baseType: !1066, size: 64, offset: 448)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1202, file: !20, line: 448, baseType: !875, size: 64, offset: 128)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1202, file: !20, line: 449, baseType: !1201, size: 64, offset: 192)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1198, file: !20, line: 224, baseType: !128, size: 32, offset: 64)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1198, file: !20, line: 226, baseType: !264, size: 128, offset: 128)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1198, file: !20, line: 227, baseType: !81, size: 64, offset: 256)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1198, file: !20, line: 228, baseType: !7, size: 32, offset: 320)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1198, file: !20, line: 229, baseType: !7, size: 32, offset: 352)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1198, file: !20, line: 230, baseType: !1004, size: 64, offset: 384)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1198, file: !20, line: 231, baseType: !1004, size: 64, offset: 448)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1198, file: !20, line: 232, baseType: !80, size: 64, offset: 512)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1190, file: !20, line: 526, baseType: !1229, size: 192, offset: 2304)
!1229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1206, size: 192, elements: !297)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !843, file: !15, line: 1233, baseType: !1231, size: 2368, offset: 4544)
!1231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !15, line: 1184, size: 2368, elements: !1232)
!1232 = !{!1233, !1234, !1235}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1231, file: !15, line: 1185, baseType: !145, size: 16)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1231, file: !15, line: 1186, baseType: !145, size: 16, offset: 16)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1231, file: !15, line: 1187, baseType: !1236, size: 2304, offset: 64)
!1236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1237, size: 2304, elements: !297)
!1237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1238, line: 12, size: 768, elements: !1239)
!1238 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1239 = !{!1240, !1248, !1250, !2873, !2874}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1237, file: !1238, line: 13, baseType: !1241, size: 384)
!1241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1242, line: 17, size: 384, elements: !1243)
!1242 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1243 = !{!1244, !1245, !1246, !1247}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1241, file: !1242, line: 18, baseType: !128, size: 32)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1241, file: !1242, line: 19, baseType: !128, size: 32, offset: 32)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1241, file: !1242, line: 20, baseType: !327, size: 192, offset: 64)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1241, file: !1242, line: 22, baseType: !229, size: 128, align: 64, offset: 256)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1237, file: !1238, line: 14, baseType: !1249, size: 64, offset: 384)
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1237, file: !1238, line: 15, baseType: !1251, size: 64, offset: 448)
!1251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1252, line: 16, size: 64, elements: !1253)
!1252 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1253 = !{!1254}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1251, file: !1252, line: 17, baseType: !1255, size: 64)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !954, line: 746, size: 58368, elements: !1257)
!1257 = !{!1258, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1338, !1349, !1441, !1445, !1448, !1479, !1480, !1481, !1482, !1493, !1495, !1496, !1497, !1498, !1499, !1500, !1511, !1512, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1529, !1530, !1537, !1538, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1763, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1778, !1779, !1780, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1822, !1828, !1829, !1830, !1831, !1832, !1836, !1839, !1846, !1851, !1854, !1857, !1860, !1863, !2003, !2034, !2035, !2036, !2037, !2038, !2039, !2040, !2041, !2042, !2045, !2046, !2047, !2056, !2064, !2065, !2066, !2067, !2068, !2073, !2074, !2075, !2078, !2079, !2082, !2085, !2088, !2096, !2099, !2100, !2186, !2187, !2188, !2189, !2190, !2196, !2197, !2198, !2199, !2202, !2203, !2206, !2209, !2210, !2213, !2214, !2215, !2218, !2219, !2220, !2223, !2224, !2225, !2238, !2239, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2257, !2260, !2529, !2532, !2533, !2534, !2535, !2536, !2537, !2538, !2541, !2613, !2615, !2616, !2617, !2618, !2619, !2631, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2648, !2649, !2650}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1256, file: !954, line: 752, baseType: !1259, size: 192)
!1259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1260, line: 56, size: 192, elements: !1261)
!1260 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1261 = !{!1262, !1263, !1264, !1265}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1259, file: !1260, line: 57, baseType: !81, size: 64)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1259, file: !1260, line: 58, baseType: !81, size: 64, offset: 64)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1259, file: !1260, line: 59, baseType: !433, size: 32, offset: 128)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1259, file: !1260, line: 61, baseType: !433, size: 32, offset: 160)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1256, file: !954, line: 754, baseType: !7, size: 32, offset: 192)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1256, file: !954, line: 767, baseType: !80, size: 64, offset: 256)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1256, file: !954, line: 768, baseType: !305, size: 32, offset: 320)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1256, file: !954, line: 770, baseType: !7, size: 32, offset: 352)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1256, file: !954, line: 771, baseType: !7, size: 32, offset: 384)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1256, file: !954, line: 774, baseType: !128, size: 32, offset: 416)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1256, file: !954, line: 775, baseType: !1273, size: 128, offset: 448)
!1273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1274, line: 58, size: 128, elements: !1275)
!1274 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1275 = !{!1276, !1277, !1282, !1283}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1273, file: !1274, line: 59, baseType: !223, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_member, scope: !1273, file: !1274, line: 60, baseType: !1278, size: 32, offset: 64)
!1278 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1273, file: !1274, line: 60, size: 32, elements: !1279)
!1279 = !{!1280, !1281}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1278, file: !1274, line: 61, baseType: !7, size: 32)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1278, file: !1274, line: 62, baseType: !124, size: 32)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1273, file: !1274, line: 65, baseType: !143, size: 16, offset: 96)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1273, file: !1274, line: 65, baseType: !143, size: 16, offset: 112)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1256, file: !954, line: 776, baseType: !7, size: 32, offset: 576)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1256, file: !954, line: 777, baseType: !81, size: 64, offset: 640)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1256, file: !954, line: 778, baseType: !1255, size: 64, offset: 704)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1256, file: !954, line: 787, baseType: !128, size: 32, offset: 768)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1256, file: !954, line: 788, baseType: !128, size: 32, offset: 800)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1256, file: !954, line: 790, baseType: !128, size: 32, offset: 832)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1256, file: !954, line: 792, baseType: !128, size: 32, offset: 864)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1256, file: !954, line: 793, baseType: !128, size: 32, offset: 896)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1256, file: !954, line: 794, baseType: !128, size: 32, offset: 928)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1256, file: !954, line: 795, baseType: !7, size: 32, offset: 960)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1256, file: !954, line: 797, baseType: !1295, size: 2048, offset: 1024)
!1295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !954, line: 551, size: 2048, elements: !1296)
!1296 = !{!1297, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1317, !1320, !1321, !1322}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1295, file: !954, line: 553, baseType: !1298, size: 128)
!1298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !954, line: 411, size: 128, elements: !1299)
!1299 = !{!1300, !1301}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1298, file: !954, line: 412, baseType: !81, size: 64)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1298, file: !954, line: 413, baseType: !433, size: 32, offset: 64)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1295, file: !954, line: 554, baseType: !169, size: 192, align: 64, offset: 128)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1295, file: !954, line: 555, baseType: !383, size: 64, offset: 320)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1295, file: !954, line: 556, baseType: !383, size: 64, offset: 384)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1295, file: !954, line: 558, baseType: !264, size: 128, offset: 448)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1295, file: !954, line: 559, baseType: !7, size: 32, offset: 576)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1295, file: !954, line: 561, baseType: !383, size: 64, offset: 640)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1295, file: !954, line: 562, baseType: !383, size: 64, offset: 704)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1295, file: !954, line: 563, baseType: !383, size: 64, offset: 768)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1295, file: !954, line: 564, baseType: !383, size: 64, offset: 832)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1295, file: !954, line: 565, baseType: !248, size: 64, offset: 896)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1295, file: !954, line: 566, baseType: !383, size: 64, offset: 960)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1295, file: !954, line: 568, baseType: !383, size: 64, offset: 1024)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1295, file: !954, line: 571, baseType: !128, size: 32, offset: 1088)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1295, file: !954, line: 572, baseType: !1316, size: 64, offset: 1152)
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1295, file: !954, line: 574, baseType: !1318, size: 64, offset: 1216)
!1318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1319, size: 64)
!1319 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !954, line: 49, flags: DIFlagFwdDecl)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1295, file: !954, line: 576, baseType: !1318, size: 64, offset: 1280)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1295, file: !954, line: 578, baseType: !81, size: 64, offset: 1344)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1295, file: !954, line: 588, baseType: !1323, size: 512, align: 512, offset: 1536)
!1323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !954, line: 497, size: 512, align: 512, elements: !1324)
!1324 = !{!1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333}
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1323, file: !954, line: 498, baseType: !383, size: 64)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1323, file: !954, line: 499, baseType: !383, size: 64, offset: 64)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1323, file: !954, line: 500, baseType: !383, size: 64, offset: 128)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1323, file: !954, line: 501, baseType: !433, size: 32, offset: 192)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1323, file: !954, line: 502, baseType: !433, size: 32, offset: 224)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1323, file: !954, line: 503, baseType: !81, size: 64, offset: 256)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1323, file: !954, line: 504, baseType: !81, size: 64, offset: 320)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1323, file: !954, line: 505, baseType: !81, size: 64, offset: 384)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1323, file: !954, line: 506, baseType: !1334, size: 64, align: 64, offset: 448)
!1334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !954, line: 445, size: 64, align: 64, elements: !1335)
!1335 = !{!1336, !1337}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1334, file: !954, line: 446, baseType: !7, size: 32)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1334, file: !954, line: 447, baseType: !7, size: 32, offset: 32)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1256, file: !954, line: 798, baseType: !1339, size: 384, offset: 3072)
!1339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !954, line: 592, size: 384, elements: !1340)
!1340 = !{!1341, !1342, !1343, !1344, !1345, !1346, !1347}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1339, file: !954, line: 593, baseType: !264, size: 128)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1339, file: !954, line: 594, baseType: !81, size: 64, offset: 128)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1339, file: !954, line: 595, baseType: !81, size: 64, offset: 192)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1339, file: !954, line: 596, baseType: !7, size: 32, offset: 256)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1339, file: !954, line: 597, baseType: !145, size: 16, offset: 288)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1339, file: !954, line: 598, baseType: !145, size: 16, offset: 304)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1339, file: !954, line: 600, baseType: !1348, size: 64, offset: 320)
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1256, file: !954, line: 799, baseType: !1350, size: 1792, offset: 3456)
!1350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !954, line: 610, size: 1792, elements: !1351)
!1351 = !{!1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1438, !1439}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1350, file: !954, line: 611, baseType: !169, size: 192, align: 64)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1350, file: !954, line: 618, baseType: !383, size: 64, offset: 192)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1350, file: !954, line: 619, baseType: !383, size: 64, offset: 256)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1350, file: !954, line: 620, baseType: !383, size: 64, offset: 320)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1350, file: !954, line: 621, baseType: !383, size: 64, offset: 384)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1350, file: !954, line: 622, baseType: !383, size: 64, offset: 448)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1350, file: !954, line: 629, baseType: !248, size: 64, offset: 512)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1350, file: !954, line: 630, baseType: !383, size: 64, offset: 576)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1350, file: !954, line: 631, baseType: !7, size: 32, offset: 640)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1350, file: !954, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1350, file: !954, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1350, file: !954, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1350, file: !954, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1350, file: !954, line: 662, baseType: !1366, size: 512, offset: 704)
!1366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !26, line: 118, size: 512, elements: !1367)
!1367 = !{!1368, !1376, !1377, !1382, !1434, !1435, !1436, !1437}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1366, file: !26, line: 119, baseType: !1369, size: 256)
!1369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1370, line: 9, size: 256, elements: !1371)
!1370 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1371 = !{!1372, !1373}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1369, file: !1370, line: 10, baseType: !169, size: 192, align: 64)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1369, file: !1370, line: 11, baseType: !1374, size: 64, offset: 192)
!1374 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1375, line: 29, baseType: !248)
!1375 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1366, file: !26, line: 120, baseType: !1374, size: 64, offset: 256)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1366, file: !26, line: 121, baseType: !1378, size: 64, offset: 320)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = !DISubroutineType(types: !1380)
!1380 = !{!25, !1381}
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1366, file: !26, line: 122, baseType: !1383, size: 64, offset: 384)
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !26, line: 159, size: 512, align: 512, elements: !1385)
!1385 = !{!1386, !1411, !1412, !1415, !1420, !1421, !1429, !1433}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1384, file: !26, line: 160, baseType: !1387, size: 64)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !26, line: 215, size: 4608, align: 512, elements: !1389)
!1389 = !{!1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1388, file: !26, line: 216, baseType: !257, size: 32)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1388, file: !26, line: 217, baseType: !7, size: 32, offset: 32)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1388, file: !26, line: 218, baseType: !7, size: 32, offset: 64)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1388, file: !26, line: 219, baseType: !7, size: 32, offset: 96)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1388, file: !26, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1388, file: !26, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1388, file: !26, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1388, file: !26, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1388, file: !26, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1388, file: !26, line: 226, baseType: !7, size: 32, offset: 160)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1388, file: !26, line: 227, baseType: !145, size: 16, offset: 192)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1388, file: !26, line: 228, baseType: !145, size: 16, offset: 208)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1388, file: !26, line: 229, baseType: !7, size: 32, offset: 224)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1388, file: !26, line: 235, baseType: !1374, size: 64, offset: 256)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1388, file: !26, line: 236, baseType: !1381, size: 64, offset: 320)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1388, file: !26, line: 237, baseType: !1374, size: 64, offset: 384)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1388, file: !26, line: 238, baseType: !1381, size: 64, offset: 448)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1388, file: !26, line: 239, baseType: !1408, size: 4096, align: 512, offset: 512)
!1408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1384, size: 4096, align: 512, elements: !1409)
!1409 = !{!1410}
!1410 = !DISubrange(count: 8)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1384, file: !26, line: 161, baseType: !7, size: 32, offset: 64)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1384, file: !26, line: 162, baseType: !1413, size: 32, offset: 96)
!1413 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !79, line: 32, baseType: !1414)
!1414 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !272, line: 96, baseType: !128)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1384, file: !26, line: 163, baseType: !1416, size: 32, offset: 128)
!1416 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !598, line: 274, baseType: !1417)
!1417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !598, line: 274, size: 32, elements: !1418)
!1418 = !{!1419}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1417, file: !598, line: 274, baseType: !602, size: 32)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1384, file: !26, line: 164, baseType: !1381, size: 64, offset: 192)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1384, file: !26, line: 165, baseType: !1422, size: 128, offset: 256)
!1422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1370, line: 14, size: 128, elements: !1423)
!1423 = !{!1424}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1422, file: !1370, line: 15, baseType: !1425, size: 128)
!1425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !170, line: 26, size: 128, elements: !1426)
!1426 = !{!1427, !1428}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1425, file: !170, line: 27, baseType: !188, size: 64)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1425, file: !170, line: 28, baseType: !174, size: 64, offset: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1384, file: !26, line: 166, baseType: !1430, size: 64, offset: 384)
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!1431 = !DISubroutineType(types: !1432)
!1432 = !{!1374}
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1384, file: !26, line: 167, baseType: !1374, size: 64, offset: 448)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1366, file: !26, line: 123, baseType: !133, size: 8, offset: 448)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1366, file: !26, line: 124, baseType: !133, size: 8, offset: 456)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1366, file: !26, line: 125, baseType: !133, size: 8, offset: 464)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1366, file: !26, line: 126, baseType: !133, size: 8, offset: 472)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1350, file: !954, line: 671, baseType: !1366, size: 512, offset: 1216)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1350, file: !954, line: 679, baseType: !1440, size: 64, offset: 1728)
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1256, file: !954, line: 800, baseType: !1442, size: 64, offset: 5248)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1444)
!1444 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !954, line: 800, flags: DIFlagFwdDecl)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1256, file: !954, line: 809, baseType: !1446, size: 64, offset: 5312)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1447 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !954, line: 70, flags: DIFlagFwdDecl)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1256, file: !954, line: 825, baseType: !1449, size: 2048, align: 512, offset: 5632)
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !954, line: 509, size: 2048, align: 512, elements: !1450)
!1450 = !{!1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1449, file: !954, line: 511, baseType: !383, size: 64)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1449, file: !954, line: 512, baseType: !383, size: 64, offset: 64)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1449, file: !954, line: 513, baseType: !383, size: 64, offset: 128)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1449, file: !954, line: 514, baseType: !383, size: 64, offset: 192)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1449, file: !954, line: 515, baseType: !383, size: 64, offset: 256)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1449, file: !954, line: 516, baseType: !383, size: 64, offset: 320)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1449, file: !954, line: 518, baseType: !383, size: 64, offset: 384)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1449, file: !954, line: 519, baseType: !383, size: 64, offset: 448)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1449, file: !954, line: 520, baseType: !248, size: 64, offset: 512)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1449, file: !954, line: 522, baseType: !383, size: 64, offset: 576)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1449, file: !954, line: 523, baseType: !383, size: 64, offset: 640)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1449, file: !954, line: 524, baseType: !248, size: 64, offset: 704)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1449, file: !954, line: 526, baseType: !248, size: 64, offset: 768)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1449, file: !954, line: 527, baseType: !383, size: 64, offset: 832)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1449, file: !954, line: 529, baseType: !383, size: 64, offset: 896)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1449, file: !954, line: 530, baseType: !383, size: 64, offset: 960)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1449, file: !954, line: 531, baseType: !383, size: 64, offset: 1024)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1449, file: !954, line: 532, baseType: !383, size: 64, offset: 1088)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1449, file: !954, line: 533, baseType: !383, size: 64, offset: 1152)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1449, file: !954, line: 535, baseType: !383, size: 64, offset: 1216)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1449, file: !954, line: 536, baseType: !383, size: 64, offset: 1280)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1449, file: !954, line: 537, baseType: !383, size: 64, offset: 1344)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1449, file: !954, line: 538, baseType: !383, size: 64, offset: 1408)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1449, file: !954, line: 539, baseType: !383, size: 64, offset: 1472)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1449, file: !954, line: 540, baseType: !383, size: 64, offset: 1536)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1449, file: !954, line: 541, baseType: !383, size: 64, offset: 1600)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1449, file: !954, line: 542, baseType: !383, size: 64, offset: 1664)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1449, file: !954, line: 543, baseType: !383, size: 64, offset: 1728)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1256, file: !954, line: 833, baseType: !7, size: 32, offset: 7680)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1256, file: !954, line: 836, baseType: !7, size: 32, offset: 7712)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1256, file: !954, line: 837, baseType: !128, size: 32, offset: 7744)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1256, file: !954, line: 838, baseType: !1483, size: 64, offset: 7808)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1485)
!1485 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1486, line: 19, baseType: !1487)
!1486 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1486, line: 19, size: 64, elements: !1488)
!1488 = !{!1489}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1487, file: !1486, line: 19, baseType: !1490, size: 64)
!1490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 64, elements: !1491)
!1491 = !{!1492}
!1492 = !DISubrange(count: 1)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1256, file: !954, line: 839, baseType: !1494, size: 64, offset: 7872)
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1256, file: !954, line: 840, baseType: !1485, size: 64, offset: 7936)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1256, file: !954, line: 841, baseType: !80, size: 64, offset: 8000)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1256, file: !954, line: 843, baseType: !145, size: 16, offset: 8064)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1256, file: !954, line: 845, baseType: !145, size: 16, offset: 8080)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1256, file: !954, line: 848, baseType: !128, size: 32, offset: 8096)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1256, file: !954, line: 849, baseType: !1501, size: 32, offset: 8128)
!1501 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !954, line: 718, size: 32, elements: !1502)
!1502 = !{!1503, !1510}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1501, file: !954, line: 724, baseType: !1504, size: 32)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1501, file: !954, line: 719, size: 32, elements: !1505)
!1505 = !{!1506, !1507, !1508, !1509}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1504, file: !954, line: 720, baseType: !133, size: 8)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1504, file: !954, line: 721, baseType: !133, size: 8, offset: 8)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1504, file: !954, line: 722, baseType: !133, size: 8, offset: 16)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1504, file: !954, line: 723, baseType: !133, size: 8, offset: 24)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1501, file: !954, line: 725, baseType: !433, size: 32)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1256, file: !954, line: 850, baseType: !264, size: 128, offset: 8192)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1256, file: !954, line: 851, baseType: !1513, size: 64, offset: 8320)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !954, line: 60, flags: DIFlagFwdDecl)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1256, file: !954, line: 855, baseType: !81, size: 64, offset: 8384)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1256, file: !954, line: 856, baseType: !133, size: 8, offset: 8448)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1256, file: !954, line: 857, baseType: !133, size: 8, offset: 8456)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1256, file: !954, line: 858, baseType: !128, size: 32, offset: 8480)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1256, file: !954, line: 859, baseType: !264, size: 128, offset: 8512)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1256, file: !954, line: 860, baseType: !128, size: 32, offset: 8640)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1256, file: !954, line: 861, baseType: !264, size: 128, offset: 8704)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1256, file: !954, line: 873, baseType: !1523, size: 256, offset: 8832)
!1523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !954, line: 376, size: 256, elements: !1524)
!1524 = !{!1525, !1526, !1527, !1528}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1523, file: !954, line: 381, baseType: !81, size: 64)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1523, file: !954, line: 384, baseType: !385, size: 64, offset: 64)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1523, file: !954, line: 389, baseType: !385, size: 64, offset: 128)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1523, file: !954, line: 392, baseType: !385, size: 64, offset: 192)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1256, file: !954, line: 875, baseType: !264, size: 128, offset: 9088)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1256, file: !954, line: 877, baseType: !1531, size: 320, offset: 9216)
!1531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1532, line: 86, size: 320, elements: !1533)
!1532 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1533 = !{!1534, !1535, !1536}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1531, file: !1532, line: 87, baseType: !128, size: 32)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1531, file: !1532, line: 88, baseType: !264, size: 128, offset: 64)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1531, file: !1532, line: 89, baseType: !264, size: 128, offset: 192)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1256, file: !954, line: 878, baseType: !169, size: 192, align: 64, offset: 9536)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1256, file: !954, line: 881, baseType: !1539, size: 64, offset: 9728)
!1539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1540, size: 64)
!1540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !1541, line: 733, size: 10240, elements: !1542)
!1541 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!1542 = !{!1543, !1682}
!1543 = !DIDerivedType(tag: DW_TAG_member, scope: !1540, file: !1541, line: 734, baseType: !1544, size: 10240)
!1544 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1540, file: !1541, line: 734, size: 10240, elements: !1545)
!1545 = !{!1546, !1550, !1563, !1567, !1568, !1569, !1570, !1571, !1572, !1581, !1582, !1583, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1622, !1624, !1627, !1651, !1652, !1653, !1656, !1657, !1658, !1661, !1662, !1663, !1669, !1670}
!1546 = !DIDerivedType(tag: DW_TAG_member, scope: !1544, file: !1541, line: 739, baseType: !1547, size: 512, align: 512)
!1547 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1544, file: !1541, line: 739, size: 512, align: 512, elements: !1548)
!1548 = !{!1549}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1547, file: !1541, line: 747, baseType: !124, size: 32)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1544, file: !1541, line: 750, baseType: !1551, size: 128, offset: 512)
!1551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1552, line: 218, size: 128, elements: !1553)
!1552 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1553 = !{!1554, !1561, !1562}
!1554 = !DIDerivedType(tag: DW_TAG_member, scope: !1551, file: !1552, line: 219, baseType: !1555, size: 32)
!1555 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1551, file: !1552, line: 219, size: 32, elements: !1556)
!1556 = !{!1557, !1558}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1555, file: !1552, line: 220, baseType: !104, size: 32)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1555, file: !1552, line: 221, baseType: !1559)
!1559 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1552, line: 197, baseType: !1560)
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1552, line: 197, elements: !883)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1551, file: !1552, line: 223, baseType: !7, size: 32, offset: 32)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1551, file: !1552, line: 224, baseType: !80, size: 64, offset: 64)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1544, file: !1541, line: 752, baseType: !1564, size: 64, offset: 640)
!1564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1565, size: 64)
!1565 = !DISubroutineType(types: !1566)
!1566 = !{!81, !216, !81, !81, !81, !81}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1544, file: !1541, line: 756, baseType: !81, size: 64, offset: 704)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1544, file: !1541, line: 757, baseType: !81, size: 64, offset: 768)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1544, file: !1541, line: 760, baseType: !81, size: 64, offset: 832)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1544, file: !1541, line: 761, baseType: !81, size: 64, offset: 896)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1544, file: !1541, line: 763, baseType: !81, size: 64, offset: 960)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1544, file: !1541, line: 764, baseType: !1573, size: 64, offset: 1024)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1575, line: 299, baseType: !1576)
!1575 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1576 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1575, line: 299, size: 64, elements: !1577)
!1577 = !{!1578}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1576, file: !1575, line: 299, baseType: !1579, size: 64)
!1579 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1580, line: 18, baseType: !81)
!1580 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1544, file: !1541, line: 773, baseType: !124, size: 32, offset: 1088)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1544, file: !1541, line: 785, baseType: !124, size: 32, offset: 1120)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1544, file: !1541, line: 795, baseType: !1584, size: 64, offset: 1152)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !1541, line: 726, size: 128, elements: !1586)
!1586 = !{!1587, !1588}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1585, file: !1541, line: 727, baseType: !383, size: 64)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1585, file: !1541, line: 728, baseType: !128, size: 32, offset: 64)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1544, file: !1541, line: 801, baseType: !81, size: 64, offset: 1216)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1544, file: !1541, line: 804, baseType: !242, size: 64, offset: 1280)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1544, file: !1541, line: 806, baseType: !128, size: 32, offset: 1344)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1544, file: !1541, line: 808, baseType: !104, size: 32, offset: 1376)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1544, file: !1541, line: 823, baseType: !408, size: 320, offset: 1408)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1544, file: !1541, line: 825, baseType: !264, size: 128, offset: 1728)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1544, file: !1541, line: 845, baseType: !128, size: 32, offset: 1856)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1544, file: !1541, line: 849, baseType: !81, size: 64, offset: 1920)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1544, file: !1541, line: 850, baseType: !81, size: 64, offset: 1984)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1544, file: !1541, line: 852, baseType: !81, size: 64, offset: 2048)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1544, file: !1541, line: 853, baseType: !81, size: 64, offset: 2112)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1544, file: !1541, line: 854, baseType: !244, size: 64, offset: 2176)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1544, file: !1541, line: 855, baseType: !81, size: 64, offset: 2240)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1544, file: !1541, line: 856, baseType: !81, size: 64, offset: 2304)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1544, file: !1541, line: 857, baseType: !81, size: 64, offset: 2368)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1544, file: !1541, line: 858, baseType: !81, size: 64, offset: 2432)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1544, file: !1541, line: 865, baseType: !602, size: 32, offset: 2496)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1544, file: !1541, line: 867, baseType: !104, size: 32, offset: 2528)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1544, file: !1541, line: 869, baseType: !81, size: 64, offset: 2560)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1544, file: !1541, line: 869, baseType: !81, size: 64, offset: 2624)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1544, file: !1541, line: 869, baseType: !81, size: 64, offset: 2688)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1544, file: !1541, line: 869, baseType: !81, size: 64, offset: 2752)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1544, file: !1541, line: 870, baseType: !81, size: 64, offset: 2816)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1544, file: !1541, line: 870, baseType: !81, size: 64, offset: 2880)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1544, file: !1541, line: 870, baseType: !81, size: 64, offset: 2944)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1544, file: !1541, line: 871, baseType: !81, size: 64, offset: 3008)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1544, file: !1541, line: 871, baseType: !81, size: 64, offset: 3072)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1544, file: !1541, line: 871, baseType: !81, size: 64, offset: 3136)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1544, file: !1541, line: 871, baseType: !81, size: 64, offset: 3200)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1544, file: !1541, line: 873, baseType: !1619, size: 3328, offset: 3264)
!1619 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 3328, elements: !1620)
!1620 = !{!1621}
!1621 = !DISubrange(count: 52)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1544, file: !1541, line: 875, baseType: !1623, size: 1280, offset: 6592)
!1623 = !DICompositeType(tag: DW_TAG_array_type, baseType: !528, size: 1280, elements: !323)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1544, file: !1541, line: 877, baseType: !1625, size: 64, offset: 7872)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !1541, line: 877, flags: DIFlagFwdDecl)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1544, file: !1541, line: 880, baseType: !1628, size: 1088, offset: 7936)
!1628 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1629, line: 72, baseType: !1630)
!1629 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1630 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1629, line: 23, size: 1088, elements: !1631)
!1631 = !{!1632, !1633, !1634, !1635, !1636, !1639, !1640, !1641, !1642, !1646, !1647, !1648}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1630, file: !1629, line: 28, baseType: !383, size: 64)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1630, file: !1629, line: 38, baseType: !244, size: 64, offset: 64)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1630, file: !1629, line: 40, baseType: !81, size: 64, offset: 128)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1630, file: !1629, line: 43, baseType: !408, size: 320, offset: 192)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1630, file: !1629, line: 44, baseType: !1637, size: 64, offset: 512)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1629, line: 44, flags: DIFlagFwdDecl)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1630, file: !1629, line: 48, baseType: !81, size: 64, offset: 576)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1630, file: !1629, line: 59, baseType: !252, size: 256, offset: 640)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1630, file: !1629, line: 60, baseType: !80, size: 64, offset: 896)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1630, file: !1629, line: 61, baseType: !1643, size: 64, offset: 960)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1645)
!1645 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1629, line: 61, flags: DIFlagFwdDecl)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1630, file: !1629, line: 63, baseType: !124, size: 32, offset: 1024)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1630, file: !1629, line: 69, baseType: !143, size: 16, offset: 1056)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1630, file: !1629, line: 70, baseType: !1649, size: 16, offset: 1072)
!1649 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !134, line: 18, baseType: !1650)
!1650 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !136, line: 23, baseType: !438)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1544, file: !1541, line: 882, baseType: !81, size: 64, offset: 9024)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1544, file: !1541, line: 885, baseType: !104, size: 32, offset: 9088)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1544, file: !1541, line: 886, baseType: !1654, size: 64, offset: 9152)
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1655 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !1541, line: 732, flags: DIFlagFwdDecl)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1544, file: !1541, line: 901, baseType: !553, size: 64, offset: 9216)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1544, file: !1541, line: 904, baseType: !216, size: 64, offset: 9280)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1544, file: !1541, line: 906, baseType: !1659, size: 64, offset: 9344)
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1660, size: 64)
!1660 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !1541, line: 906, flags: DIFlagFwdDecl)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1544, file: !1541, line: 930, baseType: !124, size: 32, offset: 9408)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1544, file: !1541, line: 933, baseType: !124, size: 32, offset: 9440)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1544, file: !1541, line: 935, baseType: !1664, size: 64, offset: 9472)
!1664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !44, line: 103, size: 64, elements: !1665)
!1665 = !{!1666}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1664, file: !44, line: 104, baseType: !1667, size: 64)
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !44, line: 101, flags: DIFlagFwdDecl)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1544, file: !1541, line: 940, baseType: !242, size: 64, offset: 9536)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1544, file: !1541, line: 942, baseType: !1671, size: 256, offset: 9600)
!1671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1672, line: 98, size: 256, elements: !1673)
!1672 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1673 = !{!1674, !1675, !1676}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1671, file: !1672, line: 99, baseType: !242, size: 64)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1671, file: !1672, line: 100, baseType: !264, size: 128, offset: 64)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1671, file: !1672, line: 101, baseType: !1677, size: 64, offset: 192)
!1677 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1672, line: 21, baseType: !1678)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = !DISubroutineType(types: !1680)
!1680 = !{null, !1681}
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1540, file: !1541, line: 986, baseType: !1683, offset: 10240)
!1683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, elements: !342)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1256, file: !954, line: 882, baseType: !1539, size: 64, offset: 9792)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1256, file: !954, line: 884, baseType: !128, size: 32, offset: 9856)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1256, file: !954, line: 885, baseType: !128, size: 32, offset: 9888)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1256, file: !954, line: 886, baseType: !128, size: 32, offset: 9920)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1256, file: !954, line: 888, baseType: !128, size: 32, offset: 9952)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1256, file: !954, line: 890, baseType: !81, size: 64, offset: 9984)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1256, file: !954, line: 893, baseType: !7, size: 32, offset: 10048)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1256, file: !954, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1256, file: !954, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1256, file: !954, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1256, file: !954, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1256, file: !954, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1256, file: !954, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1256, file: !954, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1256, file: !954, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1256, file: !954, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1256, file: !954, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1256, file: !954, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1256, file: !954, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1256, file: !954, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1256, file: !954, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1256, file: !954, line: 969, baseType: !81, size: 64, offset: 10176)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1256, file: !954, line: 971, baseType: !1707, size: 448, offset: 10240)
!1707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !31, line: 25, size: 448, elements: !1708)
!1708 = !{!1709, !1710, !1715}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !1707, file: !31, line: 26, baseType: !81, size: 64)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1707, file: !31, line: 27, baseType: !1711, size: 64, offset: 64)
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1712, size: 64)
!1712 = !DISubroutineType(types: !1713)
!1713 = !{!82, !1714}
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1715 = !DIDerivedType(tag: DW_TAG_member, scope: !1707, file: !31, line: 28, baseType: !1716, size: 320, offset: 128)
!1716 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1707, file: !31, line: 28, size: 320, elements: !1717)
!1717 = !{!1718, !1728, !1753}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1716, file: !31, line: 37, baseType: !1719, size: 320)
!1719 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1716, file: !31, line: 30, size: 320, elements: !1720)
!1720 = !{!1721, !1723, !1724, !1725, !1726, !1727}
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1719, file: !31, line: 31, baseType: !1722, size: 64)
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1719, file: !31, line: 32, baseType: !433, size: 32, offset: 64)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1719, file: !31, line: 33, baseType: !433, size: 32, offset: 96)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1719, file: !31, line: 34, baseType: !433, size: 32, offset: 128)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1719, file: !31, line: 35, baseType: !383, size: 64, offset: 192)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1719, file: !31, line: 36, baseType: !1722, size: 64, offset: 256)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1716, file: !31, line: 47, baseType: !1729, size: 192)
!1729 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1716, file: !31, line: 39, size: 192, elements: !1730)
!1730 = !{!1731, !1732, !1733, !1752}
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1729, file: !31, line: 40, baseType: !1413, size: 32)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1729, file: !31, line: 41, baseType: !30, size: 32, offset: 32)
!1733 = !DIDerivedType(tag: DW_TAG_member, scope: !1729, file: !31, line: 42, baseType: !1734, size: 64, offset: 64)
!1734 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1729, file: !31, line: 42, size: 64, elements: !1735)
!1735 = !{!1736, !1744}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1734, file: !31, line: 43, baseType: !1737, size: 64)
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!1738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1739, line: 7, size: 128, elements: !1740)
!1739 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!1740 = !{!1741, !1743}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1738, file: !1739, line: 8, baseType: !1742, size: 64)
!1742 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !272, line: 93, baseType: !250)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1738, file: !1739, line: 9, baseType: !250, size: 64, offset: 64)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1734, file: !31, line: 44, baseType: !1745, size: 64)
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1747, line: 7, size: 64, elements: !1748)
!1747 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!1748 = !{!1749, !1751}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1746, file: !1747, line: 8, baseType: !1750, size: 32)
!1750 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1747, line: 5, baseType: !400)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1746, file: !1747, line: 9, baseType: !400, size: 32, offset: 32)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1729, file: !31, line: 46, baseType: !383, size: 64, offset: 128)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1716, file: !31, line: 55, baseType: !1754, size: 256)
!1754 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1716, file: !31, line: 49, size: 256, elements: !1755)
!1755 = !{!1756, !1759, !1760, !1761, !1762}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1754, file: !31, line: 50, baseType: !1757, size: 64)
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !31, line: 14, flags: DIFlagFwdDecl)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1754, file: !31, line: 51, baseType: !128, size: 32, offset: 64)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1754, file: !31, line: 52, baseType: !128, size: 32, offset: 96)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1754, file: !31, line: 53, baseType: !81, size: 64, offset: 128)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1754, file: !31, line: 54, baseType: !81, size: 64, offset: 192)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1256, file: !954, line: 973, baseType: !1764, size: 32, offset: 10688)
!1764 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !79, line: 27, baseType: !1765)
!1765 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !272, line: 28, baseType: !128)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1256, file: !954, line: 974, baseType: !1764, size: 32, offset: 10720)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1256, file: !954, line: 978, baseType: !81, size: 64, offset: 10752)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1256, file: !954, line: 987, baseType: !1255, size: 64, offset: 10816)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1256, file: !954, line: 990, baseType: !1255, size: 64, offset: 10880)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1256, file: !954, line: 995, baseType: !264, size: 128, offset: 10944)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1256, file: !954, line: 996, baseType: !264, size: 128, offset: 11072)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1256, file: !954, line: 997, baseType: !1255, size: 64, offset: 11200)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1256, file: !954, line: 1005, baseType: !264, size: 128, offset: 11264)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1256, file: !954, line: 1006, baseType: !264, size: 128, offset: 11392)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1256, file: !954, line: 1009, baseType: !301, size: 64, offset: 11520)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1256, file: !954, line: 1010, baseType: !1777, size: 512, offset: 11584)
!1777 = !DICompositeType(tag: DW_TAG_array_type, baseType: !318, size: 512, elements: !323)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1256, file: !954, line: 1011, baseType: !264, size: 128, offset: 12096)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1256, file: !954, line: 1012, baseType: !264, size: 128, offset: 12224)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1256, file: !954, line: 1014, baseType: !1781, size: 64, offset: 12352)
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1782, size: 64)
!1782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1783, line: 26, size: 256, elements: !1784)
!1783 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1784 = !{!1785, !1786}
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1782, file: !1783, line: 27, baseType: !7, size: 32)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1782, file: !1783, line: 28, baseType: !1787, size: 192, offset: 64)
!1787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1788, line: 43, size: 192, elements: !1789)
!1788 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1789 = !{!1790, !1791}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1787, file: !1788, line: 44, baseType: !257, size: 32)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1787, file: !1788, line: 45, baseType: !264, size: 128, offset: 64)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1256, file: !954, line: 1017, baseType: !946, size: 64, offset: 12416)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1256, file: !954, line: 1020, baseType: !946, size: 64, offset: 12480)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1256, file: !954, line: 1023, baseType: !80, size: 64, offset: 12544)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1256, file: !954, line: 1025, baseType: !383, size: 64, offset: 12608)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1256, file: !954, line: 1026, baseType: !383, size: 64, offset: 12672)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1256, file: !954, line: 1031, baseType: !383, size: 64, offset: 12736)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1256, file: !954, line: 1032, baseType: !1799, size: 192, offset: 12800)
!1799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !954, line: 324, size: 192, elements: !1800)
!1800 = !{!1801, !1802, !1803}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1799, file: !954, line: 326, baseType: !383, size: 64)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1799, file: !954, line: 327, baseType: !383, size: 64, offset: 64)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1799, file: !954, line: 328, baseType: !257, size: 32, offset: 128)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1256, file: !954, line: 1041, baseType: !81, size: 64, offset: 12992)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1256, file: !954, line: 1042, baseType: !81, size: 64, offset: 13056)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1256, file: !954, line: 1045, baseType: !383, size: 64, offset: 13120)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1256, file: !954, line: 1048, baseType: !383, size: 64, offset: 13184)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1256, file: !954, line: 1051, baseType: !81, size: 64, offset: 13248)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1256, file: !954, line: 1052, baseType: !81, size: 64, offset: 13312)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1256, file: !954, line: 1055, baseType: !1811, size: 640, offset: 13376)
!1811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1812, line: 132, size: 640, elements: !1813)
!1812 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!1813 = !{!1814, !1820, !1821}
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1811, file: !1812, line: 133, baseType: !1815, size: 576)
!1815 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1816, size: 576, elements: !297)
!1816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1812, line: 117, size: 192, elements: !1817)
!1817 = !{!1818, !1819}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1816, file: !1812, line: 118, baseType: !383, size: 64)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1816, file: !1812, line: 119, baseType: !1422, size: 128, offset: 64)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1811, file: !1812, line: 134, baseType: !7, size: 32, offset: 576)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1811, file: !1812, line: 135, baseType: !7, size: 32, offset: 608)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1256, file: !954, line: 1058, baseType: !1823, size: 448, offset: 14016)
!1823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1812, line: 144, size: 448, elements: !1824)
!1824 = !{!1825, !1826, !1827}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1823, file: !1812, line: 145, baseType: !229, size: 128, align: 64)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1823, file: !1812, line: 146, baseType: !252, size: 256, offset: 128)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1823, file: !1812, line: 147, baseType: !7, size: 32, offset: 384)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1256, file: !954, line: 1064, baseType: !356, size: 64, offset: 14464)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1256, file: !954, line: 1067, baseType: !356, size: 64, offset: 14528)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1256, file: !954, line: 1070, baseType: !356, size: 64, offset: 14592)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1256, file: !954, line: 1074, baseType: !392, size: 64, offset: 14656)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1256, file: !954, line: 1084, baseType: !1833, size: 128, offset: 14720)
!1833 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 128, elements: !1834)
!1834 = !{!1835}
!1835 = !DISubrange(count: 16)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1256, file: !954, line: 1086, baseType: !1837, size: 64, offset: 14848)
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!1838 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !954, line: 55, flags: DIFlagFwdDecl)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1256, file: !954, line: 1089, baseType: !1840, size: 64, offset: 14912)
!1840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !1841, line: 12, size: 64, elements: !1842)
!1841 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!1842 = !{!1843}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !1840, file: !1841, line: 13, baseType: !1844, size: 64)
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !1841, line: 8, flags: DIFlagFwdDecl)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1256, file: !954, line: 1090, baseType: !1847, size: 128, offset: 14976)
!1847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !1848, line: 13, size: 128, elements: !1849)
!1848 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!1849 = !{!1850}
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !1847, file: !1848, line: 14, baseType: !264, size: 128)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1256, file: !954, line: 1097, baseType: !1852, size: 64, offset: 15104)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !954, line: 50, flags: DIFlagFwdDecl)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1256, file: !954, line: 1100, baseType: !1855, size: 64, offset: 15168)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !954, line: 1100, flags: DIFlagFwdDecl)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1256, file: !954, line: 1103, baseType: !1858, size: 64, offset: 15232)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !954, line: 53, flags: DIFlagFwdDecl)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1256, file: !954, line: 1107, baseType: !1861, size: 64, offset: 15296)
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !954, line: 56, flags: DIFlagFwdDecl)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1256, file: !954, line: 1110, baseType: !1864, size: 64, offset: 15360)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1866, line: 93, size: 8768, elements: !1867)
!1866 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!1867 = !{!1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1903, !1904, !1905, !1906, !1907, !1908, !1909, !1917, !1926, !1927, !1929, !1930, !1931, !1934, !1940, !1941, !1942, !1943, !1944, !1945, !1946, !1947, !1948, !1949, !1950, !1951, !1952, !1953, !1954, !1955, !1956, !1957, !1958, !1959, !1960, !1961, !1972, !1973, !1980, !1990, !1993, !1994, !1997, !1998, !1999, !2000, !2001, !2002}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1865, file: !1866, line: 94, baseType: !305, size: 32)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1865, file: !1866, line: 95, baseType: !124, size: 32, offset: 32)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1865, file: !1866, line: 96, baseType: !128, size: 32, offset: 64)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !1865, file: !1866, line: 97, baseType: !128, size: 32, offset: 96)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1865, file: !1866, line: 98, baseType: !264, size: 128, offset: 128)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1865, file: !1866, line: 100, baseType: !327, size: 192, offset: 256)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1865, file: !1866, line: 103, baseType: !1255, size: 64, offset: 448)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1865, file: !1866, line: 106, baseType: !1876, size: 192, offset: 512)
!1876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !558, line: 32, size: 192, elements: !1877)
!1877 = !{!1878, !1879}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1876, file: !558, line: 33, baseType: !264, size: 128)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1876, file: !558, line: 34, baseType: !1880, size: 64, offset: 128)
!1880 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1881, line: 25, baseType: !1882)
!1881 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!1882 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1881, line: 23, size: 64, elements: !1883)
!1883 = !{!1884}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1882, file: !1881, line: 24, baseType: !1490, size: 64)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1865, file: !1866, line: 109, baseType: !314, size: 64, offset: 704)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1865, file: !1866, line: 112, baseType: !128, size: 32, offset: 768)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1865, file: !1866, line: 114, baseType: !128, size: 32, offset: 800)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !1865, file: !1866, line: 115, baseType: !1255, size: 64, offset: 832)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1865, file: !1866, line: 118, baseType: !128, size: 32, offset: 896)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1865, file: !1866, line: 119, baseType: !7, size: 32, offset: 928)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1865, file: !1866, line: 121, baseType: !1892, size: 64, offset: 960)
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1893, size: 64)
!1893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !1866, line: 80, size: 448, elements: !1894)
!1894 = !{!1895, !1896, !1902}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1893, file: !1866, line: 81, baseType: !124, size: 32)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1893, file: !1866, line: 82, baseType: !1897, size: 128, offset: 64)
!1897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !1866, line: 75, size: 128, elements: !1898)
!1898 = !{!1899, !1900}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1897, file: !1866, line: 76, baseType: !1255, size: 64)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1897, file: !1866, line: 77, baseType: !1901, size: 64, offset: 64)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1893, file: !1866, line: 83, baseType: !1782, size: 256, offset: 192)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1865, file: !1866, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1865, file: !1866, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !1865, file: !1866, line: 138, baseType: !7, size: 32, offset: 1056)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1865, file: !1866, line: 139, baseType: !264, size: 128, offset: 1088)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1865, file: !1866, line: 142, baseType: !1366, size: 512, offset: 1216)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1865, file: !1866, line: 143, baseType: !1374, size: 64, offset: 1728)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1865, file: !1866, line: 150, baseType: !1910, size: 256, offset: 1792)
!1910 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1911, size: 256, elements: !1915)
!1911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1866, line: 38, size: 128, elements: !1912)
!1912 = !{!1913, !1914}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1911, file: !1866, line: 39, baseType: !383, size: 64)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1911, file: !1866, line: 40, baseType: !383, size: 64, offset: 64)
!1915 = !{!1916}
!1916 = !DISubrange(count: 2)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1865, file: !1866, line: 156, baseType: !1918, size: 192, offset: 2048)
!1918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1866, line: 66, size: 192, elements: !1919)
!1919 = !{!1920}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1918, file: !1866, line: 67, baseType: !1921, size: 192)
!1921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1866, line: 47, size: 192, elements: !1922)
!1922 = !{!1923, !1924, !1925}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1921, file: !1866, line: 48, baseType: !244, size: 64)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1921, file: !1866, line: 49, baseType: !244, size: 64, offset: 64)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1921, file: !1866, line: 50, baseType: !244, size: 64, offset: 128)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1865, file: !1866, line: 160, baseType: !1811, size: 640, offset: 2240)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1865, file: !1866, line: 163, baseType: !1928, size: 256, offset: 2880)
!1928 = !DICompositeType(tag: DW_TAG_array_type, baseType: !301, size: 256, elements: !323)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1865, file: !1866, line: 169, baseType: !301, size: 64, offset: 3136)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1865, file: !1866, line: 172, baseType: !128, size: 32, offset: 3200)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1865, file: !1866, line: 174, baseType: !1932, size: 64, offset: 3264)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1866, line: 174, flags: DIFlagFwdDecl)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1865, file: !1866, line: 185, baseType: !1935, size: 64, offset: 3328)
!1935 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !598, line: 860, baseType: !1936)
!1936 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !598, line: 853, size: 64, elements: !1937)
!1937 = !{!1938, !1939}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1936, file: !598, line: 858, baseType: !597, size: 32)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1936, file: !598, line: 859, baseType: !104, size: 32, offset: 32)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1865, file: !1866, line: 186, baseType: !383, size: 64, offset: 3392)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1865, file: !1866, line: 186, baseType: !383, size: 64, offset: 3456)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1865, file: !1866, line: 186, baseType: !383, size: 64, offset: 3520)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1865, file: !1866, line: 186, baseType: !383, size: 64, offset: 3584)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1865, file: !1866, line: 187, baseType: !383, size: 64, offset: 3648)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1865, file: !1866, line: 188, baseType: !383, size: 64, offset: 3712)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1865, file: !1866, line: 189, baseType: !1799, size: 192, offset: 3776)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1865, file: !1866, line: 190, baseType: !81, size: 64, offset: 3968)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1865, file: !1866, line: 190, baseType: !81, size: 64, offset: 4032)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1865, file: !1866, line: 190, baseType: !81, size: 64, offset: 4096)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1865, file: !1866, line: 190, baseType: !81, size: 64, offset: 4160)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1865, file: !1866, line: 191, baseType: !81, size: 64, offset: 4224)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1865, file: !1866, line: 191, baseType: !81, size: 64, offset: 4288)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1865, file: !1866, line: 191, baseType: !81, size: 64, offset: 4352)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1865, file: !1866, line: 191, baseType: !81, size: 64, offset: 4416)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1865, file: !1866, line: 192, baseType: !81, size: 64, offset: 4480)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1865, file: !1866, line: 192, baseType: !81, size: 64, offset: 4544)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1865, file: !1866, line: 192, baseType: !81, size: 64, offset: 4608)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1865, file: !1866, line: 192, baseType: !81, size: 64, offset: 4672)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1865, file: !1866, line: 193, baseType: !81, size: 64, offset: 4736)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1865, file: !1866, line: 193, baseType: !81, size: 64, offset: 4800)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1865, file: !1866, line: 194, baseType: !1962, size: 448, offset: 4864)
!1962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1963, line: 12, size: 448, elements: !1964)
!1963 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!1964 = !{!1965, !1966, !1967, !1968, !1969, !1970, !1971}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !1962, file: !1963, line: 15, baseType: !383, size: 64)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !1962, file: !1963, line: 17, baseType: !383, size: 64, offset: 64)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !1962, file: !1963, line: 19, baseType: !383, size: 64, offset: 128)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !1962, file: !1963, line: 21, baseType: !383, size: 64, offset: 192)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !1962, file: !1963, line: 29, baseType: !383, size: 64, offset: 256)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !1962, file: !1963, line: 35, baseType: !383, size: 64, offset: 320)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !1962, file: !1963, line: 44, baseType: !383, size: 64, offset: 384)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1865, file: !1866, line: 202, baseType: !385, size: 64, offset: 5312)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1865, file: !1866, line: 213, baseType: !1974, size: 2048, offset: 5376)
!1974 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1975, size: 2048, elements: !1834)
!1975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1976, line: 43, size: 128, elements: !1977)
!1976 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!1977 = !{!1978, !1979}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1975, file: !1976, line: 44, baseType: !789, size: 64)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1975, file: !1976, line: 45, baseType: !789, size: 64, offset: 64)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !1865, file: !1866, line: 216, baseType: !1981, size: 448, offset: 7424)
!1981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !1866, line: 30, size: 448, elements: !1982)
!1982 = !{!1983, !1984, !1985, !1986, !1987, !1988, !1989}
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !1981, file: !1866, line: 31, baseType: !128, size: 32)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !1981, file: !1866, line: 32, baseType: !82, size: 64, offset: 64)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !1981, file: !1866, line: 33, baseType: !81, size: 64, offset: 128)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !1981, file: !1866, line: 34, baseType: !383, size: 64, offset: 192)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !1981, file: !1866, line: 34, baseType: !383, size: 64, offset: 256)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !1981, file: !1866, line: 35, baseType: !81, size: 64, offset: 320)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !1981, file: !1866, line: 35, baseType: !81, size: 64, offset: 384)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1865, file: !1866, line: 219, baseType: !1991, size: 64, offset: 7872)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !1866, line: 219, flags: DIFlagFwdDecl)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !1865, file: !1866, line: 222, baseType: !7, size: 32, offset: 7936)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !1865, file: !1866, line: 223, baseType: !1995, size: 64, offset: 8000)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !1866, line: 223, flags: DIFlagFwdDecl)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1865, file: !1866, line: 230, baseType: !469, size: 8, offset: 8064)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1865, file: !1866, line: 231, baseType: !438, size: 16, offset: 8080)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1865, file: !1866, line: 232, baseType: !438, size: 16, offset: 8096)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1865, file: !1866, line: 234, baseType: !1539, size: 64, offset: 8128)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1865, file: !1866, line: 237, baseType: !252, size: 256, offset: 8192)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !1865, file: !1866, line: 243, baseType: !408, size: 320, offset: 8448)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1256, file: !954, line: 1111, baseType: !2004, size: 64, offset: 15424)
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1866, line: 20, size: 16640, elements: !2006)
!2006 = !{!2007, !2008, !2009, !2010}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2005, file: !1866, line: 21, baseType: !104, size: 32)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2005, file: !1866, line: 22, baseType: !305, size: 32, offset: 32)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2005, file: !1866, line: 23, baseType: !327, size: 192, offset: 64)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2005, file: !1866, line: 24, baseType: !2011, size: 16384, offset: 256)
!2011 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2012, size: 16384, elements: !2032)
!2012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !558, line: 51, size: 256, elements: !2013)
!2013 = !{!2014}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2012, file: !558, line: 52, baseType: !2015, size: 256)
!2015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !558, line: 37, size: 256, elements: !2016)
!2016 = !{!2017, !2024, !2025, !2031}
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2015, file: !558, line: 39, baseType: !2018, size: 64)
!2018 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2019, line: 83, baseType: !2020)
!2019 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!2021 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2019, line: 82, baseType: !2022)
!2022 = !DISubroutineType(types: !2023)
!2023 = !{null, !128}
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2015, file: !558, line: 40, baseType: !81, size: 64, offset: 64)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2015, file: !558, line: 46, baseType: !2026, size: 64, offset: 128)
!2026 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2019, line: 86, baseType: !2027)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2019, line: 85, baseType: !2029)
!2029 = !DISubroutineType(types: !2030)
!2030 = !{null}
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2015, file: !558, line: 48, baseType: !1880, size: 64, offset: 192)
!2032 = !{!2033}
!2033 = !DISubrange(count: 64)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1256, file: !954, line: 1112, baseType: !1880, size: 64, offset: 15488)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1256, file: !954, line: 1113, baseType: !1880, size: 64, offset: 15552)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1256, file: !954, line: 1115, baseType: !1880, size: 64, offset: 15616)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1256, file: !954, line: 1116, baseType: !1876, size: 192, offset: 15680)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1256, file: !954, line: 1117, baseType: !81, size: 64, offset: 15872)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1256, file: !954, line: 1118, baseType: !787, size: 64, offset: 15936)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1256, file: !954, line: 1119, baseType: !7, size: 32, offset: 16000)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1256, file: !954, line: 1121, baseType: !232, size: 64, offset: 16064)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1256, file: !954, line: 1125, baseType: !2043, size: 64, offset: 16128)
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!2044 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !954, line: 43, flags: DIFlagFwdDecl)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1256, file: !954, line: 1127, baseType: !346, size: 32, offset: 16192)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1256, file: !954, line: 1128, baseType: !7, size: 32, offset: 16224)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1256, file: !954, line: 1130, baseType: !2048, size: 128, offset: 16256)
!2048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2049, line: 37, size: 128, elements: !2050)
!2049 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2050 = !{!2051, !2052, !2053}
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2048, file: !2049, line: 38, baseType: !128, size: 32)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2048, file: !2049, line: 39, baseType: !124, size: 32, offset: 32)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2048, file: !2049, line: 40, baseType: !2054, size: 64, offset: 64)
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2055, size: 64)
!2055 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2049, line: 24, flags: DIFlagFwdDecl)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1256, file: !954, line: 1131, baseType: !2057, size: 256, offset: 16384)
!2057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2058, line: 12, size: 256, elements: !2059)
!2058 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2059 = !{!2060, !2061, !2062, !2063}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2057, file: !2058, line: 13, baseType: !480, size: 64)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2057, file: !2058, line: 14, baseType: !81, size: 64, offset: 64)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2057, file: !2058, line: 15, baseType: !81, size: 64, offset: 128)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2057, file: !2058, line: 16, baseType: !469, size: 8, offset: 192)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1256, file: !954, line: 1134, baseType: !383, size: 64, offset: 16640)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1256, file: !954, line: 1135, baseType: !383, size: 64, offset: 16704)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1256, file: !954, line: 1138, baseType: !104, size: 32, offset: 16768)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1256, file: !954, line: 1141, baseType: !257, size: 32, offset: 16800)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1256, file: !954, line: 1143, baseType: !2069, size: 64, offset: 16832)
!2069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !954, line: 735, size: 64, elements: !2070)
!2070 = !{!2071}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2069, file: !954, line: 736, baseType: !2072, size: 64)
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2069, size: 64)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1256, file: !954, line: 1147, baseType: !1425, size: 128, offset: 16896)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1256, file: !954, line: 1149, baseType: !1255, size: 64, offset: 17024)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1256, file: !954, line: 1151, baseType: !2076, size: 64, offset: 17088)
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2077, size: 64)
!2077 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !954, line: 1151, flags: DIFlagFwdDecl)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1256, file: !954, line: 1188, baseType: !80, size: 64, offset: 17152)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1256, file: !954, line: 1191, baseType: !2080, size: 64, offset: 17216)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !954, line: 44, flags: DIFlagFwdDecl)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1256, file: !954, line: 1194, baseType: !2083, size: 64, offset: 17280)
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64)
!2084 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !954, line: 45, flags: DIFlagFwdDecl)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1256, file: !954, line: 1197, baseType: !2086, size: 64, offset: 17344)
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !954, line: 61, flags: DIFlagFwdDecl)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1256, file: !954, line: 1199, baseType: !2089, size: 64, offset: 17408)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2091, line: 99, size: 128, elements: !2092)
!2091 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2092 = !{!2093, !2094, !2095}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2090, file: !2091, line: 100, baseType: !242, size: 64)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2090, file: !2091, line: 101, baseType: !124, size: 32, offset: 64)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2090, file: !2091, line: 103, baseType: !145, size: 16, offset: 96)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1256, file: !954, line: 1202, baseType: !2097, size: 64, offset: 17472)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !954, line: 48, flags: DIFlagFwdDecl)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1256, file: !954, line: 1205, baseType: !81, size: 64, offset: 17536)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1256, file: !954, line: 1206, baseType: !2101, size: 64, offset: 17600)
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2102 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !558, line: 14, baseType: !2103)
!2103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !558, line: 12, size: 384, elements: !2104)
!2104 = !{!2105}
!2105 = !DIDerivedType(tag: DW_TAG_member, scope: !2103, file: !558, line: 13, baseType: !2106, size: 384)
!2106 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2103, file: !558, line: 13, size: 384, elements: !2107)
!2107 = !{!2108, !2109, !2110, !2111}
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2106, file: !558, line: 13, baseType: !128, size: 32)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2106, file: !558, line: 13, baseType: !128, size: 32, offset: 32)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2106, file: !558, line: 13, baseType: !128, size: 32, offset: 64)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2106, file: !558, line: 13, baseType: !2112, size: 256, offset: 128)
!2112 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2113, line: 37, size: 256, elements: !2114)
!2113 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2114 = !{!2115, !2120, !2133, !2139, !2148, !2175, !2180}
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2112, file: !2113, line: 42, baseType: !2116, size: 64)
!2116 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2112, file: !2113, line: 39, size: 64, elements: !2117)
!2117 = !{!2118, !2119}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2116, file: !2113, line: 40, baseType: !1765, size: 32)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2116, file: !2113, line: 41, baseType: !352, size: 32, offset: 32)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2112, file: !2113, line: 50, baseType: !2121, size: 192)
!2121 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2112, file: !2113, line: 45, size: 192, elements: !2122)
!2122 = !{!2123, !2125, !2126, !2132}
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2121, file: !2113, line: 46, baseType: !2124, size: 32)
!2124 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !272, line: 95, baseType: !128)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2121, file: !2113, line: 47, baseType: !128, size: 32, offset: 32)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2121, file: !2113, line: 48, baseType: !2127, size: 64, offset: 64)
!2127 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2113, line: 11, baseType: !2128)
!2128 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2113, line: 8, size: 64, elements: !2129)
!2129 = !{!2130, !2131}
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2128, file: !2113, line: 9, baseType: !128, size: 32)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2128, file: !2113, line: 10, baseType: !80, size: 64)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2121, file: !2113, line: 49, baseType: !128, size: 32, offset: 128)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2112, file: !2113, line: 57, baseType: !2134, size: 128)
!2134 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2112, file: !2113, line: 53, size: 128, elements: !2135)
!2135 = !{!2136, !2137, !2138}
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2134, file: !2113, line: 54, baseType: !1765, size: 32)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2134, file: !2113, line: 55, baseType: !352, size: 32, offset: 32)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2134, file: !2113, line: 56, baseType: !2127, size: 64, offset: 64)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2112, file: !2113, line: 66, baseType: !2140, size: 256)
!2140 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2112, file: !2113, line: 60, size: 256, elements: !2141)
!2141 = !{!2142, !2143, !2144, !2145, !2147}
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2140, file: !2113, line: 61, baseType: !1765, size: 32)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2140, file: !2113, line: 62, baseType: !352, size: 32, offset: 32)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2140, file: !2113, line: 63, baseType: !128, size: 32, offset: 64)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2140, file: !2113, line: 64, baseType: !2146, size: 64, offset: 128)
!2146 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !272, line: 94, baseType: !786)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2140, file: !2113, line: 65, baseType: !2146, size: 64, offset: 192)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2112, file: !2113, line: 105, baseType: !2149, size: 256)
!2149 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2112, file: !2113, line: 69, size: 256, elements: !2150)
!2150 = !{!2151, !2152}
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2149, file: !2113, line: 70, baseType: !80, size: 64)
!2152 = !DIDerivedType(tag: DW_TAG_member, scope: !2149, file: !2113, line: 79, baseType: !2153, size: 192, offset: 64)
!2153 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2149, file: !2113, line: 79, size: 192, elements: !2154)
!2154 = !{!2155, !2156, !2157, !2164, !2169}
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2153, file: !2113, line: 81, baseType: !128, size: 32)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2153, file: !2113, line: 86, baseType: !438, size: 16)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2153, file: !2113, line: 92, baseType: !2158, size: 192)
!2158 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2153, file: !2113, line: 88, size: 192, elements: !2159)
!2159 = !{!2160, !2162, !2163}
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2158, file: !2113, line: 89, baseType: !2161, size: 64)
!2161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 64, elements: !1409)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2158, file: !2113, line: 90, baseType: !80, size: 64, offset: 64)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2158, file: !2113, line: 91, baseType: !80, size: 64, offset: 128)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2153, file: !2113, line: 97, baseType: !2165, size: 96)
!2165 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2153, file: !2113, line: 94, size: 96, elements: !2166)
!2166 = !{!2167, !2168}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2165, file: !2113, line: 95, baseType: !2161, size: 64)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2165, file: !2113, line: 96, baseType: !434, size: 32, offset: 64)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2153, file: !2113, line: 103, baseType: !2170, size: 128)
!2170 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2153, file: !2113, line: 99, size: 128, elements: !2171)
!2171 = !{!2172, !2173, !2174}
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2170, file: !2113, line: 100, baseType: !81, size: 64)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2170, file: !2113, line: 101, baseType: !434, size: 32, offset: 64)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2170, file: !2113, line: 102, baseType: !434, size: 32, offset: 96)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2112, file: !2113, line: 111, baseType: !2176, size: 128)
!2176 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2112, file: !2113, line: 108, size: 128, elements: !2177)
!2177 = !{!2178, !2179}
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2176, file: !2113, line: 109, baseType: !82, size: 64)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2176, file: !2113, line: 110, baseType: !128, size: 32, offset: 64)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2112, file: !2113, line: 118, baseType: !2181, size: 128)
!2181 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2112, file: !2113, line: 114, size: 128, elements: !2182)
!2182 = !{!2183, !2184, !2185}
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2181, file: !2113, line: 115, baseType: !80, size: 64)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2181, file: !2113, line: 116, baseType: !128, size: 32, offset: 64)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2181, file: !2113, line: 117, baseType: !7, size: 32, offset: 96)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1256, file: !954, line: 1208, baseType: !1962, size: 448, offset: 17664)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1256, file: !954, line: 1215, baseType: !383, size: 64, offset: 18112)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1256, file: !954, line: 1217, baseType: !383, size: 64, offset: 18176)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1256, file: !954, line: 1219, baseType: !383, size: 64, offset: 18240)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1256, file: !954, line: 1223, baseType: !2191, size: 64, offset: 18304)
!2191 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2192, line: 99, baseType: !2193)
!2192 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2193 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2192, line: 99, size: 64, elements: !2194)
!2194 = !{!2195}
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2193, file: !2192, line: 99, baseType: !1490, size: 64)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1256, file: !954, line: 1225, baseType: !597, size: 32, offset: 18368)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1256, file: !954, line: 1226, baseType: !128, size: 32, offset: 18400)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1256, file: !954, line: 1227, baseType: !128, size: 32, offset: 18432)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1256, file: !954, line: 1231, baseType: !2200, size: 64, offset: 18496)
!2200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2201, size: 64)
!2201 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !954, line: 1231, flags: DIFlagFwdDecl)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1256, file: !954, line: 1233, baseType: !264, size: 128, offset: 18560)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1256, file: !954, line: 1240, baseType: !2204, size: 64, offset: 18688)
!2204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2205, size: 64)
!2205 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !954, line: 62, flags: DIFlagFwdDecl)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1256, file: !954, line: 1242, baseType: !2207, size: 64, offset: 18752)
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2208 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !954, line: 1242, flags: DIFlagFwdDecl)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1256, file: !954, line: 1244, baseType: !264, size: 128, offset: 18816)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1256, file: !954, line: 1245, baseType: !2211, size: 64, offset: 18944)
!2211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2212, size: 64)
!2212 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !954, line: 51, flags: DIFlagFwdDecl)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1256, file: !954, line: 1246, baseType: !252, size: 256, offset: 19008)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1256, file: !954, line: 1247, baseType: !7, size: 32, offset: 19264)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1256, file: !954, line: 1250, baseType: !2216, size: 64, offset: 19328)
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2217, size: 64)
!2217 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !954, line: 57, flags: DIFlagFwdDecl)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1256, file: !954, line: 1251, baseType: !252, size: 256, offset: 19392)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1256, file: !954, line: 1252, baseType: !264, size: 128, offset: 19648)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1256, file: !954, line: 1259, baseType: !2221, size: 64, offset: 19776)
!2221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2222, size: 64)
!2222 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1541, line: 717, flags: DIFlagFwdDecl)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1256, file: !954, line: 1260, baseType: !438, size: 16, offset: 19840)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1256, file: !954, line: 1261, baseType: !438, size: 16, offset: 19856)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1256, file: !954, line: 1314, baseType: !2226, size: 64, offset: 19904)
!2226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2227, size: 64)
!2227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2228, line: 62, size: 256, align: 256, elements: !2229)
!2228 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2229 = !{!2230, !2231, !2232, !2233, !2234, !2235, !2236}
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2227, file: !2228, line: 75, baseType: !434, size: 32)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2227, file: !2228, line: 90, baseType: !434, size: 32, offset: 32)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2227, file: !2228, line: 112, baseType: !384, size: 64, offset: 64)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2227, file: !2228, line: 132, baseType: !434, size: 32, offset: 128)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2227, file: !2228, line: 140, baseType: !434, size: 32, offset: 160)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2227, file: !2228, line: 149, baseType: !434, size: 32, offset: 192)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2227, file: !2228, line: 154, baseType: !2237, offset: 224)
!2237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, elements: !342)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1256, file: !954, line: 1315, baseType: !433, size: 32, offset: 19968)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1256, file: !954, line: 1316, baseType: !433, size: 32, offset: 20000)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1256, file: !954, line: 1321, baseType: !81, size: 64, offset: 20032)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1256, file: !954, line: 1325, baseType: !128, size: 32, offset: 20096)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1256, file: !954, line: 1326, baseType: !128, size: 32, offset: 20128)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1256, file: !954, line: 1327, baseType: !128, size: 32, offset: 20160)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1256, file: !954, line: 1328, baseType: !128, size: 32, offset: 20192)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1256, file: !954, line: 1329, baseType: !229, size: 128, align: 64, offset: 20224)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1256, file: !954, line: 1332, baseType: !2247, size: 128, offset: 20352)
!2247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2248, line: 51, size: 128, elements: !2249)
!2248 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2249 = !{!2250, !2255, !2256}
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2247, file: !2248, line: 60, baseType: !2251, size: 64)
!2251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2252, line: 7, size: 64, elements: !2253)
!2252 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2253 = !{!2254}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2251, file: !2252, line: 12, baseType: !1487, size: 64)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2247, file: !2248, line: 63, baseType: !469, size: 8, offset: 64)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2247, file: !2248, line: 70, baseType: !469, size: 8, offset: 72)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1256, file: !954, line: 1335, baseType: !2258, size: 64, offset: 20480)
!2258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2259, size: 64)
!2259 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !954, line: 59, flags: DIFlagFwdDecl)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1256, file: !954, line: 1337, baseType: !2261, size: 128, offset: 20544)
!2261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2248, line: 39, size: 128, elements: !2262)
!2262 = !{!2263, !2527, !2528}
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2261, file: !2248, line: 40, baseType: !2264, size: 64)
!2264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2265, size: 64)
!2265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !1541, line: 74, size: 512, align: 128, elements: !2266)
!2266 = !{!2267, !2268, !2521, !2526}
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2265, file: !1541, line: 75, baseType: !81, size: 64)
!2268 = !DIDerivedType(tag: DW_TAG_member, scope: !2265, file: !1541, line: 83, baseType: !2269, size: 320, offset: 64)
!2269 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2265, file: !1541, line: 83, size: 320, elements: !2270)
!2270 = !{!2271, !2495, !2509, !2513, !2520}
!2271 = !DIDerivedType(tag: DW_TAG_member, scope: !2269, file: !1541, line: 84, baseType: !2272, size: 320)
!2272 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2269, file: !1541, line: 84, size: 320, elements: !2273)
!2273 = !{!2274, !2285, !2489, !2494}
!2274 = !DIDerivedType(tag: DW_TAG_member, scope: !2272, file: !1541, line: 90, baseType: !2275, size: 128)
!2275 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2272, file: !1541, line: 90, size: 128, elements: !2276)
!2276 = !{!2277, !2278, !2283, !2284}
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2275, file: !1541, line: 91, baseType: !264, size: 128)
!2278 = !DIDerivedType(tag: DW_TAG_member, scope: !2275, file: !1541, line: 94, baseType: !2279, size: 128)
!2279 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2275, file: !1541, line: 94, size: 128, elements: !2280)
!2280 = !{!2281, !2282}
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2279, file: !1541, line: 96, baseType: !80, size: 64)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2279, file: !1541, line: 98, baseType: !7, size: 32, offset: 64)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2275, file: !1541, line: 102, baseType: !264, size: 128)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2275, file: !1541, line: 103, baseType: !264, size: 128)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2272, file: !1541, line: 106, baseType: !2286, size: 64, offset: 128)
!2286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2287, size: 64)
!2287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !15, line: 472, size: 1536, align: 64, elements: !2288)
!2288 = !{!2289, !2290, !2291, !2292, !2293, !2294, !2295, !2296, !2297, !2481, !2482, !2483, !2486, !2487, !2488}
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !2287, file: !15, line: 473, baseType: !631, size: 64)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !2287, file: !15, line: 474, baseType: !834, size: 128, offset: 64)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !2287, file: !15, line: 475, baseType: !408, size: 320, offset: 192)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2287, file: !15, line: 476, baseType: !78, size: 32, offset: 512)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !2287, file: !15, line: 477, baseType: !124, size: 32, offset: 544)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !2287, file: !15, line: 482, baseType: !1425, size: 128, offset: 576)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !2287, file: !15, line: 483, baseType: !81, size: 64, offset: 704)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !2287, file: !15, line: 484, baseType: !81, size: 64, offset: 768)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !2287, file: !15, line: 485, baseType: !2298, size: 64, offset: 832)
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2299, size: 64)
!2299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2300)
!2300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !15, line: 404, size: 1280, elements: !2301)
!2301 = !{!2302, !2306, !2376, !2380, !2384, !2390, !2396, !2400, !2405, !2409, !2413, !2417, !2445, !2449, !2453, !2457, !2462, !2466, !2473, !2477}
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !2300, file: !15, line: 405, baseType: !2303, size: 64)
!2303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2304, size: 64)
!2304 = !DISubroutineType(types: !2305)
!2305 = !{!128, !2264, !914}
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !2300, file: !15, line: 406, baseType: !2307, size: 64, offset: 64)
!2307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2308, size: 64)
!2308 = !DISubroutineType(types: !2309)
!2309 = !{!128, !216, !2310}
!2310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2311, size: 64)
!2311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !1541, line: 293, size: 1536, elements: !2312)
!2312 = !{!2313, !2343, !2357}
!2313 = !DIDerivedType(tag: DW_TAG_member, scope: !2311, file: !1541, line: 295, baseType: !2314, size: 512)
!2314 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2311, file: !1541, line: 295, size: 512, elements: !2315)
!2315 = !{!2316, !2342}
!2316 = !DIDerivedType(tag: DW_TAG_member, scope: !2314, file: !1541, line: 296, baseType: !2317, size: 448)
!2317 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2314, file: !1541, line: 296, size: 448, elements: !2318)
!2318 = !{!2319, !2320, !2329, !2330, !2331, !2340, !2341}
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2317, file: !1541, line: 298, baseType: !81, size: 64)
!2320 = !DIDerivedType(tag: DW_TAG_member, scope: !2317, file: !1541, line: 299, baseType: !2321, size: 128, offset: 64)
!2321 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2317, file: !1541, line: 299, size: 128, elements: !2322)
!2322 = !{!2323, !2324}
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2321, file: !1541, line: 300, baseType: !264, size: 128)
!2324 = !DIDerivedType(tag: DW_TAG_member, scope: !2321, file: !1541, line: 302, baseType: !2325, size: 128)
!2325 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2321, file: !1541, line: 302, size: 128, elements: !2326)
!2326 = !{!2327, !2328}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2325, file: !1541, line: 303, baseType: !80, size: 64)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2325, file: !1541, line: 305, baseType: !7, size: 32, offset: 64)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2317, file: !1541, line: 310, baseType: !2286, size: 64, offset: 192)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2317, file: !1541, line: 311, baseType: !81, size: 64, offset: 256)
!2331 = !DIDerivedType(tag: DW_TAG_member, scope: !2317, file: !1541, line: 312, baseType: !2332, size: 64, offset: 320)
!2332 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2317, file: !1541, line: 312, size: 64, elements: !2333)
!2333 = !{!2334, !2335}
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2332, file: !1541, line: 313, baseType: !80, size: 64)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !2332, file: !1541, line: 314, baseType: !2336, size: 64)
!2336 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !1541, line: 257, baseType: !2337)
!2337 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1541, line: 255, size: 64, elements: !2338)
!2338 = !{!2339}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2337, file: !1541, line: 256, baseType: !81, size: 64)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2317, file: !1541, line: 316, baseType: !124, size: 32, offset: 384)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2317, file: !1541, line: 317, baseType: !124, size: 32, offset: 416)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2314, file: !1541, line: 323, baseType: !2265, size: 512, align: 128)
!2343 = !DIDerivedType(tag: DW_TAG_member, scope: !2311, file: !1541, line: 325, baseType: !2344, size: 512, offset: 512)
!2344 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2311, file: !1541, line: 325, size: 512, elements: !2345)
!2345 = !{!2346, !2356}
!2346 = !DIDerivedType(tag: DW_TAG_member, scope: !2344, file: !1541, line: 326, baseType: !2347, size: 320)
!2347 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2344, file: !1541, line: 326, size: 320, elements: !2348)
!2348 = !{!2349, !2350, !2351, !2352, !2353, !2354, !2355}
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !2347, file: !1541, line: 327, baseType: !81, size: 64)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !2347, file: !1541, line: 328, baseType: !81, size: 64, offset: 64)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !2347, file: !1541, line: 329, baseType: !81, size: 64, offset: 128)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !2347, file: !1541, line: 331, baseType: !124, size: 32, offset: 192)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !2347, file: !1541, line: 332, baseType: !124, size: 32, offset: 224)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !2347, file: !1541, line: 333, baseType: !124, size: 32, offset: 256)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !2347, file: !1541, line: 335, baseType: !7, size: 32, offset: 288)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !2344, file: !1541, line: 339, baseType: !2265, size: 512, align: 128)
!2357 = !DIDerivedType(tag: DW_TAG_member, scope: !2311, file: !1541, line: 341, baseType: !2358, size: 512, offset: 1024)
!2358 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2311, file: !1541, line: 341, size: 512, elements: !2359)
!2359 = !{!2360, !2369, !2375}
!2360 = !DIDerivedType(tag: DW_TAG_member, scope: !2358, file: !1541, line: 342, baseType: !2361, size: 384)
!2361 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2358, file: !1541, line: 342, size: 384, elements: !2362)
!2362 = !{!2363, !2364, !2365, !2366, !2367, !2368}
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !2361, file: !1541, line: 343, baseType: !81, size: 64)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !2361, file: !1541, line: 344, baseType: !81, size: 64, offset: 64)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !2361, file: !1541, line: 346, baseType: !80, size: 64, offset: 128)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !2361, file: !1541, line: 347, baseType: !80, size: 64, offset: 192)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !2361, file: !1541, line: 348, baseType: !80, size: 64, offset: 256)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !2361, file: !1541, line: 349, baseType: !80, size: 64, offset: 320)
!2369 = !DIDerivedType(tag: DW_TAG_member, scope: !2358, file: !1541, line: 352, baseType: !2370, size: 256)
!2370 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2358, file: !1541, line: 352, size: 256, elements: !2371)
!2371 = !{!2372, !2373, !2374}
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !2370, file: !1541, line: 353, baseType: !81, size: 64)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !2370, file: !1541, line: 354, baseType: !81, size: 64, offset: 64)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !2370, file: !1541, line: 356, baseType: !264, size: 128, offset: 128)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !2358, file: !1541, line: 359, baseType: !2265, size: 512, align: 128)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !2300, file: !15, line: 409, baseType: !2377, size: 64, offset: 128)
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2378 = !DISubroutineType(types: !2379)
!2379 = !{!128, !2286, !914}
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !2300, file: !15, line: 412, baseType: !2381, size: 64, offset: 192)
!2381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2382, size: 64)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{!469, !2286, !2310}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !2300, file: !15, line: 414, baseType: !2385, size: 64, offset: 256)
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2386 = !DISubroutineType(types: !2387)
!2387 = !{null, !2388}
!2388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2389, size: 64)
!2389 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !15, line: 310, flags: DIFlagFwdDecl)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !2300, file: !15, line: 416, baseType: !2391, size: 64, offset: 320)
!2391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!2392 = !DISubroutineType(types: !2393)
!2393 = !{!128, !216, !2286, !270, !7, !2394, !2395}
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !2300, file: !15, line: 419, baseType: !2397, size: 64, offset: 384)
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2398 = !DISubroutineType(types: !2399)
!2399 = !{!128, !216, !2286, !270, !7, !7, !2264, !80}
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !2300, file: !15, line: 424, baseType: !2401, size: 64, offset: 448)
!2401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2402, size: 64)
!2402 = !DISubroutineType(types: !2403)
!2403 = !{!2404, !2286, !2404}
!2404 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !79, line: 131, baseType: !383)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !2300, file: !15, line: 425, baseType: !2406, size: 64, offset: 512)
!2406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2407, size: 64)
!2407 = !DISubroutineType(types: !2408)
!2408 = !{null, !2310, !787, !787}
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !2300, file: !15, line: 426, baseType: !2410, size: 64, offset: 576)
!2410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2411, size: 64)
!2411 = !DISubroutineType(types: !2412)
!2412 = !{!469, !2310, !78}
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !2300, file: !15, line: 427, baseType: !2414, size: 64, offset: 640)
!2414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2415, size: 64)
!2415 = !DISubroutineType(types: !2416)
!2416 = !{null, !2310}
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !2300, file: !15, line: 428, baseType: !2418, size: 64, offset: 704)
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2419, size: 64)
!2419 = !DISubroutineType(types: !2420)
!2420 = !{!784, !2421, !2443}
!2421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2422, size: 64)
!2422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !15, line: 373, size: 384, elements: !2423)
!2423 = !{!2424, !2425, !2426, !2430, !2431, !2432, !2433}
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2422, file: !15, line: 374, baseType: !216, size: 64)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2422, file: !15, line: 375, baseType: !270, size: 64, offset: 64)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2422, file: !15, line: 376, baseType: !2427, size: 64, offset: 128)
!2427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2428, size: 64)
!2428 = !DISubroutineType(types: !2429)
!2429 = !{null, !2421, !82}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2422, file: !15, line: 377, baseType: !80, size: 64, offset: 192)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2422, file: !15, line: 378, baseType: !128, size: 32, offset: 256)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2422, file: !15, line: 379, baseType: !143, size: 16, offset: 288)
!2433 = !DIDerivedType(tag: DW_TAG_member, scope: !2422, file: !15, line: 380, baseType: !2434, size: 64, offset: 320)
!2434 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2422, file: !15, line: 380, size: 64, elements: !2435)
!2435 = !{!2436, !2439}
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2434, file: !15, line: 386, baseType: !2437, size: 64)
!2437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2438, size: 64)
!2438 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !15, line: 386, flags: DIFlagFwdDecl)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2434, file: !15, line: 395, baseType: !2440, size: 64)
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2441 = !DISubroutineType(types: !2442)
!2442 = !{!784, !80}
!2443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2444, size: 64)
!2444 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !15, line: 69, flags: DIFlagFwdDecl)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !2300, file: !15, line: 433, baseType: !2446, size: 64, offset: 768)
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2447, size: 64)
!2447 = !DISubroutineType(types: !2448)
!2448 = !{!128, !2286, !2310, !2310, !36}
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !2300, file: !15, line: 435, baseType: !2450, size: 64, offset: 832)
!2450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2451, size: 64)
!2451 = !DISubroutineType(types: !2452)
!2452 = !{!128, !2310}
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !2300, file: !15, line: 436, baseType: !2454, size: 64, offset: 896)
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = !DISubroutineType(types: !2456)
!2456 = !{!469, !2310, !787, !787}
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !2300, file: !15, line: 438, baseType: !2458, size: 64, offset: 960)
!2458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2459, size: 64)
!2459 = !DISubroutineType(types: !2460)
!2460 = !{null, !2310, !2461, !2461}
!2461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !2300, file: !15, line: 439, baseType: !2463, size: 64, offset: 1024)
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2464 = !DISubroutineType(types: !2465)
!2465 = !{!128, !2286, !2264}
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !2300, file: !15, line: 442, baseType: !2467, size: 64, offset: 1088)
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2468 = !DISubroutineType(types: !2469)
!2469 = !{!128, !2470, !216, !2472}
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2471, size: 64)
!2471 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !15, line: 66, flags: DIFlagFwdDecl)
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2404, size: 64)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !2300, file: !15, line: 444, baseType: !2474, size: 64, offset: 1152)
!2474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2475, size: 64)
!2475 = !DISubroutineType(types: !2476)
!2476 = !{null, !216}
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !2300, file: !15, line: 445, baseType: !2478, size: 64, offset: 1216)
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2479, size: 64)
!2479 = !DISubroutineType(types: !2480)
!2480 = !{!128, !2421, !2443}
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2287, file: !15, line: 486, baseType: !81, size: 64, offset: 896)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !2287, file: !15, line: 487, baseType: !408, size: 320, offset: 960)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !2287, file: !15, line: 488, baseType: !2484, size: 32, offset: 1280)
!2484 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2485, line: 8, baseType: !433)
!2485 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !2287, file: !15, line: 489, baseType: !104, size: 32, offset: 1312)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !2287, file: !15, line: 490, baseType: !264, size: 128, offset: 1344)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !2287, file: !15, line: 491, baseType: !80, size: 64, offset: 1472)
!2489 = !DIDerivedType(tag: DW_TAG_member, scope: !2272, file: !1541, line: 107, baseType: !2490, size: 64, offset: 192)
!2490 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2272, file: !1541, line: 107, size: 64, elements: !2491)
!2491 = !{!2492, !2493}
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2490, file: !1541, line: 108, baseType: !81, size: 64)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2490, file: !1541, line: 109, baseType: !81, size: 64)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2272, file: !1541, line: 117, baseType: !81, size: 64, offset: 256)
!2495 = !DIDerivedType(tag: DW_TAG_member, scope: !2269, file: !1541, line: 119, baseType: !2496, size: 320)
!2496 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2269, file: !1541, line: 119, size: 320, elements: !2497)
!2497 = !{!2498, !2499, !2502, !2503, !2504}
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2496, file: !1541, line: 124, baseType: !81, size: 64)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2496, file: !1541, line: 125, baseType: !2500, size: 64, offset: 64)
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!2501 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !1541, line: 125, flags: DIFlagFwdDecl)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2496, file: !1541, line: 126, baseType: !81, size: 64, offset: 128)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2496, file: !1541, line: 127, baseType: !81, size: 64, offset: 192)
!2504 = !DIDerivedType(tag: DW_TAG_member, scope: !2496, file: !1541, line: 128, baseType: !2505, size: 64, offset: 256)
!2505 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2496, file: !1541, line: 128, size: 64, elements: !2506)
!2506 = !{!2507, !2508}
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2505, file: !1541, line: 133, baseType: !81, size: 64)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2505, file: !1541, line: 138, baseType: !242, size: 64)
!2509 = !DIDerivedType(tag: DW_TAG_member, scope: !2269, file: !1541, line: 141, baseType: !2510, size: 64)
!2510 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2269, file: !1541, line: 141, size: 64, elements: !2511)
!2511 = !{!2512}
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2510, file: !1541, line: 142, baseType: !81, size: 64)
!2513 = !DIDerivedType(tag: DW_TAG_member, scope: !2269, file: !1541, line: 144, baseType: !2514, size: 128)
!2514 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2269, file: !1541, line: 144, size: 128, elements: !2515)
!2515 = !{!2516, !2519}
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2514, file: !1541, line: 146, baseType: !2517, size: 64)
!2517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2518, size: 64)
!2518 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !1541, line: 146, flags: DIFlagFwdDecl)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2514, file: !1541, line: 147, baseType: !80, size: 64, offset: 64)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2269, file: !1541, line: 161, baseType: !229, size: 128, align: 64)
!2521 = !DIDerivedType(tag: DW_TAG_member, scope: !2265, file: !1541, line: 164, baseType: !2522, size: 32, offset: 384)
!2522 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2265, file: !1541, line: 164, size: 32, elements: !2523)
!2523 = !{!2524, !2525}
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2522, file: !1541, line: 169, baseType: !124, size: 32)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2522, file: !1541, line: 177, baseType: !7, size: 32)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2265, file: !1541, line: 181, baseType: !124, size: 32, offset: 416)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2261, file: !2248, line: 42, baseType: !434, size: 32, offset: 64)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2261, file: !2248, line: 43, baseType: !434, size: 32, offset: 96)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1256, file: !954, line: 1340, baseType: !2530, size: 64, offset: 20672)
!2530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2531, size: 64)
!2531 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !954, line: 69, flags: DIFlagFwdDecl)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1256, file: !954, line: 1351, baseType: !128, size: 32, offset: 20736)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1256, file: !954, line: 1352, baseType: !128, size: 32, offset: 20768)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1256, file: !954, line: 1354, baseType: !81, size: 64, offset: 20800)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1256, file: !954, line: 1364, baseType: !383, size: 64, offset: 20864)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1256, file: !954, line: 1365, baseType: !383, size: 64, offset: 20928)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1256, file: !954, line: 1412, baseType: !81, size: 64, offset: 20992)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1256, file: !954, line: 1453, baseType: !2539, size: 64, offset: 21056)
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2540, size: 64)
!2540 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !954, line: 1453, flags: DIFlagFwdDecl)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1256, file: !954, line: 1457, baseType: !2542, size: 64, offset: 21120)
!2542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2543, size: 64)
!2543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !44, line: 61, size: 576, elements: !2544)
!2544 = !{!2545, !2546, !2565, !2568, !2569, !2602, !2612}
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2543, file: !44, line: 62, baseType: !43, size: 32)
!2546 = !DIDerivedType(tag: DW_TAG_member, scope: !2543, file: !44, line: 64, baseType: !2547, size: 192, offset: 64)
!2547 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2543, file: !44, line: 64, size: 192, elements: !2548)
!2548 = !{!2549, !2560}
!2549 = !DIDerivedType(tag: DW_TAG_member, scope: !2547, file: !44, line: 65, baseType: !2550, size: 192)
!2550 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2547, file: !44, line: 65, size: 192, elements: !2551)
!2551 = !{!2552, !2559}
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2550, file: !44, line: 66, baseType: !2553, size: 128)
!2553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2554, line: 50, size: 128, elements: !2555)
!2554 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2555 = !{!2556, !2557, !2558}
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2553, file: !2554, line: 52, baseType: !81, size: 64)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2553, file: !2554, line: 54, baseType: !7, size: 32, offset: 64)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2553, file: !2554, line: 55, baseType: !7, size: 32, offset: 96)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2550, file: !44, line: 67, baseType: !81, size: 64, offset: 128)
!2560 = !DIDerivedType(tag: DW_TAG_member, scope: !2547, file: !44, line: 70, baseType: !2561, size: 192)
!2561 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2547, file: !44, line: 70, size: 192, elements: !2562)
!2562 = !{!2563, !2564}
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2561, file: !44, line: 71, baseType: !229, size: 128, align: 64)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2561, file: !44, line: 72, baseType: !81, size: 64, offset: 128)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2543, file: !44, line: 76, baseType: !2566, size: 64, offset: 256)
!2566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2567, size: 64)
!2567 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !44, line: 76, flags: DIFlagFwdDecl)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2543, file: !44, line: 77, baseType: !81, size: 64, offset: 320)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2543, file: !44, line: 79, baseType: !2570, size: 64, offset: 384)
!2570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2571, size: 64)
!2571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2554, line: 25, size: 256, elements: !2572)
!2572 = !{!2573, !2579, !2583}
!2573 = !DIDerivedType(tag: DW_TAG_member, scope: !2571, file: !2554, line: 26, baseType: !2574, size: 128)
!2574 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2571, file: !2554, line: 26, size: 128, elements: !2575)
!2575 = !{!2576, !2578}
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2574, file: !2554, line: 27, baseType: !2577, size: 128)
!2577 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 128, elements: !1834)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2574, file: !2554, line: 28, baseType: !2577, size: 128)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2571, file: !2554, line: 31, baseType: !2580, size: 64, offset: 128)
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2581, size: 64)
!2581 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2582)
!2582 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2554, line: 23, flags: DIFlagFwdDecl)
!2583 = !DIDerivedType(tag: DW_TAG_member, scope: !2571, file: !2554, line: 33, baseType: !2584, size: 64, offset: 192)
!2584 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2571, file: !2554, line: 33, size: 64, elements: !2585)
!2585 = !{!2586, !2592, !2597}
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2584, file: !2554, line: 38, baseType: !2587, size: 64)
!2587 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2584, file: !2554, line: 34, size: 64, elements: !2588)
!2588 = !{!2589, !2590, !2591}
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2587, file: !2554, line: 35, baseType: !400, size: 32)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2587, file: !2554, line: 36, baseType: !133, size: 8, offset: 32)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2587, file: !2554, line: 37, baseType: !133, size: 8, offset: 40)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2584, file: !2554, line: 42, baseType: !2593, size: 16)
!2593 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2584, file: !2554, line: 39, size: 16, elements: !2594)
!2594 = !{!2595, !2596}
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2593, file: !2554, line: 40, baseType: !133, size: 8)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2593, file: !2554, line: 41, baseType: !133, size: 8, offset: 8)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2584, file: !2554, line: 46, baseType: !2598, size: 16)
!2598 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2584, file: !2554, line: 43, size: 16, elements: !2599)
!2599 = !{!2600, !2601}
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2598, file: !2554, line: 44, baseType: !133, size: 8)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2598, file: !2554, line: 45, baseType: !133, size: 8, offset: 8)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2543, file: !44, line: 81, baseType: !2603, size: 64, offset: 448)
!2603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2604, size: 64)
!2604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !44, line: 85, size: 384, elements: !2605)
!2605 = !{!2606, !2607, !2608, !2609, !2610, !2611}
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2604, file: !44, line: 86, baseType: !2566, size: 64)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2604, file: !44, line: 87, baseType: !81, size: 64, offset: 64)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2604, file: !44, line: 88, baseType: !81, size: 64, offset: 128)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2604, file: !44, line: 89, baseType: !81, size: 64, offset: 192)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2604, file: !44, line: 90, baseType: !469, size: 8, offset: 256)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2604, file: !44, line: 92, baseType: !2603, size: 64, offset: 320)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2543, file: !44, line: 82, baseType: !7, size: 32, offset: 512)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1256, file: !954, line: 1463, baseType: !2614, offset: 21184)
!2614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !954, line: 739, elements: !883)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1256, file: !954, line: 1470, baseType: !229, size: 128, align: 64, offset: 21184)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1256, file: !954, line: 1471, baseType: !305, size: 32, offset: 21312)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1256, file: !954, line: 1472, baseType: !128, size: 32, offset: 21344)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1256, file: !954, line: 1474, baseType: !1255, size: 64, offset: 21376)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1256, file: !954, line: 1475, baseType: !2620, size: 320, offset: 21440)
!2620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2621, line: 11, size: 320, elements: !2622)
!2621 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2622 = !{!2623, !2624, !2625, !2630}
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2620, file: !2621, line: 16, baseType: !318, size: 128)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2620, file: !2621, line: 17, baseType: !81, size: 64, offset: 128)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2620, file: !2621, line: 18, baseType: !2626, size: 64, offset: 192)
!2626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2627, size: 64)
!2627 = !DISubroutineType(types: !2628)
!2628 = !{null, !2629}
!2629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2620, size: 64)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2620, file: !2621, line: 19, baseType: !433, size: 32, offset: 256)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1256, file: !954, line: 1478, baseType: !2632, size: 64, offset: 21760)
!2632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2633, size: 64)
!2633 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !954, line: 1478, flags: DIFlagFwdDecl)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1256, file: !954, line: 1482, baseType: !305, size: 32, offset: 21824)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1256, file: !954, line: 1489, baseType: !80, size: 64, offset: 21888)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1256, file: !954, line: 1504, baseType: !80, size: 64, offset: 21952)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1256, file: !954, line: 1505, baseType: !384, size: 64, offset: 22016)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1256, file: !954, line: 1506, baseType: !383, size: 64, offset: 22080)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1256, file: !954, line: 1507, baseType: !384, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1256, file: !954, line: 1508, baseType: !384, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1256, file: !954, line: 1509, baseType: !384, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1256, file: !954, line: 1510, baseType: !229, size: 128, align: 64, offset: 22208)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1256, file: !954, line: 1511, baseType: !128, size: 32, offset: 22336)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1256, file: !954, line: 1515, baseType: !2645, size: 64, offset: 22400)
!2645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !224, line: 56, size: 64, elements: !2646)
!2646 = !{!2647}
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2645, file: !224, line: 57, baseType: !227, size: 64)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1256, file: !954, line: 1518, baseType: !2645, size: 64, offset: 22464)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1256, file: !954, line: 1528, baseType: !229, size: 128, align: 64, offset: 22528)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1256, file: !954, line: 1552, baseType: !2651, size: 35328, offset: 23040)
!2651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2652, line: 430, size: 35328, elements: !2653)
!2652 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!2653 = !{!2654, !2672, !2673, !2674, !2675, !2676, !2677, !2678, !2679, !2683, !2684, !2685, !2686, !2687, !2688, !2691, !2692, !2693, !2694}
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2651, file: !2652, line: 432, baseType: !2655, size: 192)
!2655 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2656, size: 192, elements: !297)
!2656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2657, line: 16, size: 64, elements: !2658)
!2657 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!2658 = !{!2659, !2660, !2661, !2662, !2663, !2664, !2665, !2666, !2667, !2668, !2669, !2670, !2671}
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2656, file: !2657, line: 17, baseType: !143, size: 16)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2656, file: !2657, line: 18, baseType: !143, size: 16, offset: 16)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2656, file: !2657, line: 19, baseType: !143, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2656, file: !2657, line: 19, baseType: !143, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2656, file: !2657, line: 19, baseType: !143, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2656, file: !2657, line: 19, baseType: !143, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2656, file: !2657, line: 19, baseType: !143, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2656, file: !2657, line: 20, baseType: !143, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2656, file: !2657, line: 20, baseType: !143, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2656, file: !2657, line: 20, baseType: !143, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2656, file: !2657, line: 20, baseType: !143, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2656, file: !2657, line: 20, baseType: !143, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2656, file: !2657, line: 20, baseType: !143, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2651, file: !2652, line: 436, baseType: !81, size: 64, offset: 192)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2651, file: !2652, line: 440, baseType: !145, size: 16, offset: 256)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2651, file: !2652, line: 441, baseType: !145, size: 16, offset: 272)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2651, file: !2652, line: 442, baseType: !145, size: 16, offset: 288)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2651, file: !2652, line: 443, baseType: !145, size: 16, offset: 304)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2651, file: !2652, line: 447, baseType: !81, size: 64, offset: 320)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2651, file: !2652, line: 448, baseType: !81, size: 64, offset: 384)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2651, file: !2652, line: 459, baseType: !2680, size: 256, offset: 448)
!2680 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2681, size: 256, elements: !323)
!2681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2682, size: 64)
!2682 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2652, line: 428, flags: DIFlagFwdDecl)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2651, file: !2652, line: 461, baseType: !81, size: 64, offset: 704)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2651, file: !2652, line: 463, baseType: !81, size: 64, offset: 768)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2651, file: !2652, line: 465, baseType: !81, size: 64, offset: 832)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2651, file: !2652, line: 466, baseType: !81, size: 64, offset: 896)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2651, file: !2652, line: 467, baseType: !81, size: 64, offset: 960)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2651, file: !2652, line: 473, baseType: !2689, size: 64, offset: 1024)
!2689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2690, size: 64)
!2690 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2652, line: 10, flags: DIFlagFwdDecl)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2651, file: !2652, line: 480, baseType: !81, size: 64, offset: 1088)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !2651, file: !2652, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !2651, file: !2652, line: 491, baseType: !433, size: 32, offset: 1184)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2651, file: !2652, line: 501, baseType: !2695, size: 33792, offset: 1536)
!2695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2696, line: 448, size: 33792, elements: !2697)
!2696 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!2697 = !{!2698, !2699, !2700, !2864, !2865, !2871, !2872}
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2695, file: !2696, line: 461, baseType: !7, size: 32)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2695, file: !2696, line: 468, baseType: !81, size: 64, offset: 64)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !2695, file: !2696, line: 476, baseType: !2701, size: 64, offset: 128)
!2701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2702, size: 64)
!2702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !2696, line: 356, size: 33280, align: 512, elements: !2703)
!2703 = !{!2704, !2705, !2706, !2707, !2708, !2709, !2710, !2711, !2712, !2713}
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2702, file: !2696, line: 358, baseType: !7, size: 32)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !2702, file: !2696, line: 361, baseType: !7, size: 32, offset: 32)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2702, file: !2696, line: 364, baseType: !383, size: 64, offset: 64)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !2702, file: !2696, line: 367, baseType: !383, size: 64, offset: 128)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !2702, file: !2696, line: 370, baseType: !383, size: 64, offset: 192)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !2702, file: !2696, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !2702, file: !2696, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !2702, file: !2696, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !2702, file: !2696, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2702, file: !2696, line: 397, baseType: !2714, size: 32768, offset: 512)
!2714 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2696, line: 348, size: 32768, elements: !2715)
!2715 = !{!2716, !2731, !2770, !2847, !2860}
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2714, file: !2696, line: 349, baseType: !2717, size: 896)
!2717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2696, line: 12, size: 896, elements: !2718)
!2718 = !{!2719, !2720, !2721, !2722, !2723, !2724, !2725, !2726, !2730}
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2717, file: !2696, line: 13, baseType: !433, size: 32)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2717, file: !2696, line: 14, baseType: !433, size: 32, offset: 32)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2717, file: !2696, line: 15, baseType: !433, size: 32, offset: 64)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2717, file: !2696, line: 16, baseType: !433, size: 32, offset: 96)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2717, file: !2696, line: 17, baseType: !433, size: 32, offset: 128)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2717, file: !2696, line: 18, baseType: !433, size: 32, offset: 160)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2717, file: !2696, line: 19, baseType: !433, size: 32, offset: 192)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2717, file: !2696, line: 22, baseType: !2727, size: 640, offset: 224)
!2727 = !DICompositeType(tag: DW_TAG_array_type, baseType: !433, size: 640, elements: !2728)
!2728 = !{!2729}
!2729 = !DISubrange(count: 20)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2717, file: !2696, line: 25, baseType: !433, size: 32, offset: 864)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2714, file: !2696, line: 350, baseType: !2732, size: 4096, align: 128)
!2732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2696, line: 34, size: 4096, align: 128, elements: !2733)
!2733 = !{!2734, !2735, !2736, !2737, !2738, !2753, !2754, !2755, !2759, !2761, !2765}
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2732, file: !2696, line: 35, baseType: !143, size: 16)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2732, file: !2696, line: 36, baseType: !143, size: 16, offset: 16)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2732, file: !2696, line: 37, baseType: !143, size: 16, offset: 32)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2732, file: !2696, line: 38, baseType: !143, size: 16, offset: 48)
!2738 = !DIDerivedType(tag: DW_TAG_member, scope: !2732, file: !2696, line: 39, baseType: !2739, size: 128, offset: 64)
!2739 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2732, file: !2696, line: 39, size: 128, elements: !2740)
!2740 = !{!2741, !2746}
!2741 = !DIDerivedType(tag: DW_TAG_member, scope: !2739, file: !2696, line: 40, baseType: !2742, size: 128)
!2742 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2739, file: !2696, line: 40, size: 128, elements: !2743)
!2743 = !{!2744, !2745}
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2742, file: !2696, line: 41, baseType: !383, size: 64)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2742, file: !2696, line: 42, baseType: !383, size: 64, offset: 64)
!2746 = !DIDerivedType(tag: DW_TAG_member, scope: !2739, file: !2696, line: 44, baseType: !2747, size: 128)
!2747 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2739, file: !2696, line: 44, size: 128, elements: !2748)
!2748 = !{!2749, !2750, !2751, !2752}
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2747, file: !2696, line: 45, baseType: !433, size: 32)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2747, file: !2696, line: 46, baseType: !433, size: 32, offset: 32)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2747, file: !2696, line: 47, baseType: !433, size: 32, offset: 64)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2747, file: !2696, line: 48, baseType: !433, size: 32, offset: 96)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2732, file: !2696, line: 51, baseType: !433, size: 32, offset: 192)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2732, file: !2696, line: 52, baseType: !433, size: 32, offset: 224)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2732, file: !2696, line: 55, baseType: !2756, size: 1024, offset: 256)
!2756 = !DICompositeType(tag: DW_TAG_array_type, baseType: !433, size: 1024, elements: !2757)
!2757 = !{!2758}
!2758 = !DISubrange(count: 32)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2732, file: !2696, line: 58, baseType: !2760, size: 2048, offset: 1280)
!2760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !433, size: 2048, elements: !2032)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2732, file: !2696, line: 60, baseType: !2762, size: 384, offset: 3328)
!2762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !433, size: 384, elements: !2763)
!2763 = !{!2764}
!2764 = !DISubrange(count: 12)
!2765 = !DIDerivedType(tag: DW_TAG_member, scope: !2732, file: !2696, line: 62, baseType: !2766, size: 384, offset: 3712)
!2766 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2732, file: !2696, line: 62, size: 384, elements: !2767)
!2767 = !{!2768, !2769}
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2766, file: !2696, line: 63, baseType: !2762, size: 384)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2766, file: !2696, line: 64, baseType: !2762, size: 384)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2714, file: !2696, line: 351, baseType: !2771, size: 1088)
!2771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2696, line: 79, size: 1088, elements: !2772)
!2772 = !{!2773, !2774, !2775, !2776, !2777, !2778, !2779, !2780, !2781, !2782, !2783, !2784, !2785, !2786, !2787, !2846}
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2771, file: !2696, line: 80, baseType: !433, size: 32)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2771, file: !2696, line: 81, baseType: !433, size: 32, offset: 32)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2771, file: !2696, line: 82, baseType: !433, size: 32, offset: 64)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2771, file: !2696, line: 83, baseType: !433, size: 32, offset: 96)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2771, file: !2696, line: 84, baseType: !433, size: 32, offset: 128)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2771, file: !2696, line: 85, baseType: !433, size: 32, offset: 160)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2771, file: !2696, line: 86, baseType: !433, size: 32, offset: 192)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2771, file: !2696, line: 88, baseType: !2727, size: 640, offset: 224)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2771, file: !2696, line: 89, baseType: !133, size: 8, offset: 864)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2771, file: !2696, line: 90, baseType: !133, size: 8, offset: 872)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2771, file: !2696, line: 91, baseType: !133, size: 8, offset: 880)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2771, file: !2696, line: 92, baseType: !133, size: 8, offset: 888)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2771, file: !2696, line: 93, baseType: !133, size: 8, offset: 896)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2771, file: !2696, line: 94, baseType: !133, size: 8, offset: 904)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2771, file: !2696, line: 95, baseType: !2788, size: 64, offset: 960)
!2788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2789, size: 64)
!2789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2790, line: 11, size: 128, elements: !2791)
!2790 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!2791 = !{!2792, !2793}
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2789, file: !2790, line: 12, baseType: !82, size: 64)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2789, file: !2790, line: 13, baseType: !2794, size: 64, offset: 64)
!2794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2795, size: 64)
!2795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2796, line: 103, size: 1344, elements: !2797)
!2796 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!2797 = !{!2798, !2799, !2800, !2801, !2802, !2803, !2804, !2805, !2806, !2807, !2808, !2809, !2810, !2811, !2812, !2813, !2814, !2815, !2826, !2827, !2828}
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2795, file: !2796, line: 109, baseType: !81, size: 64)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2795, file: !2796, line: 110, baseType: !81, size: 64, offset: 64)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2795, file: !2796, line: 111, baseType: !81, size: 64, offset: 128)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2795, file: !2796, line: 112, baseType: !81, size: 64, offset: 192)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2795, file: !2796, line: 113, baseType: !81, size: 64, offset: 256)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2795, file: !2796, line: 114, baseType: !81, size: 64, offset: 320)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2795, file: !2796, line: 117, baseType: !81, size: 64, offset: 384)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2795, file: !2796, line: 118, baseType: !81, size: 64, offset: 448)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2795, file: !2796, line: 119, baseType: !81, size: 64, offset: 512)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2795, file: !2796, line: 120, baseType: !81, size: 64, offset: 576)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2795, file: !2796, line: 121, baseType: !81, size: 64, offset: 640)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2795, file: !2796, line: 122, baseType: !81, size: 64, offset: 704)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2795, file: !2796, line: 123, baseType: !81, size: 64, offset: 768)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2795, file: !2796, line: 124, baseType: !81, size: 64, offset: 832)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2795, file: !2796, line: 125, baseType: !81, size: 64, offset: 896)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2795, file: !2796, line: 139, baseType: !81, size: 64, offset: 960)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2795, file: !2796, line: 142, baseType: !81, size: 64, offset: 1024)
!2815 = !DIDerivedType(tag: DW_TAG_member, scope: !2795, file: !2796, line: 144, baseType: !2816, size: 64, offset: 1088)
!2816 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2795, file: !2796, line: 144, size: 64, elements: !2817)
!2817 = !{!2818, !2819, !2820}
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2816, file: !2796, line: 146, baseType: !143, size: 16)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !2816, file: !2796, line: 148, baseType: !383, size: 64)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !2816, file: !2796, line: 150, baseType: !2821, size: 64)
!2821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !2796, line: 59, size: 64, elements: !2822)
!2822 = !{!2823, !2824, !2825}
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2821, file: !2796, line: 61, baseType: !383, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !2821, file: !2796, line: 63, baseType: !383, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !2821, file: !2796, line: 65, baseType: !383, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2795, file: !2796, line: 153, baseType: !81, size: 64, offset: 1152)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2795, file: !2796, line: 154, baseType: !81, size: 64, offset: 1216)
!2828 = !DIDerivedType(tag: DW_TAG_member, scope: !2795, file: !2796, line: 156, baseType: !2829, size: 64, offset: 1280)
!2829 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2795, file: !2796, line: 156, size: 64, elements: !2830)
!2830 = !{!2831, !2832, !2833}
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2829, file: !2796, line: 158, baseType: !143, size: 16)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !2829, file: !2796, line: 160, baseType: !383, size: 64)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !2829, file: !2796, line: 162, baseType: !2834, size: 64)
!2834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !2796, line: 69, size: 64, elements: !2835)
!2835 = !{!2836, !2837, !2838, !2839, !2840, !2841, !2842, !2843, !2844, !2845}
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2834, file: !2796, line: 71, baseType: !383, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !2834, file: !2796, line: 73, baseType: !383, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !2834, file: !2796, line: 75, baseType: !383, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !2834, file: !2796, line: 77, baseType: !383, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !2834, file: !2796, line: 80, baseType: !383, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2834, file: !2796, line: 83, baseType: !383, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !2834, file: !2796, line: 86, baseType: !383, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !2834, file: !2796, line: 88, baseType: !383, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !2834, file: !2796, line: 93, baseType: !383, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !2834, file: !2796, line: 100, baseType: !383, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2771, file: !2696, line: 96, baseType: !433, size: 32, offset: 1024)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2714, file: !2696, line: 352, baseType: !2848, size: 4608, align: 512)
!2848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2696, line: 333, size: 4608, align: 512, elements: !2849)
!2849 = !{!2850, !2851, !2858}
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2848, file: !2696, line: 334, baseType: !2732, size: 4096, align: 128)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2848, file: !2696, line: 335, baseType: !2852, size: 512, offset: 4096)
!2852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2696, line: 312, size: 512, elements: !2853)
!2853 = !{!2854, !2855, !2856}
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2852, file: !2696, line: 313, baseType: !383, size: 64)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2852, file: !2696, line: 314, baseType: !383, size: 64, offset: 64)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2852, file: !2696, line: 315, baseType: !2857, size: 384, offset: 128)
!2857 = !DICompositeType(tag: DW_TAG_array_type, baseType: !383, size: 384, elements: !456)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2848, file: !2696, line: 336, baseType: !2859, offset: 4608)
!2859 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, elements: !342)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2714, file: !2696, line: 353, baseType: !2861, size: 32768)
!2861 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 32768, elements: !2862)
!2862 = !{!2863}
!2863 = !DISubrange(count: 4096)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !2695, file: !2696, line: 484, baseType: !2701, size: 64, offset: 192)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2695, file: !2696, line: 491, baseType: !2866, size: 128, offset: 256)
!2866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !2696, line: 404, size: 128, elements: !2867)
!2867 = !{!2868, !2869, !2870}
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !2866, file: !2696, line: 424, baseType: !383, size: 64)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !2866, file: !2696, line: 432, baseType: !7, size: 32, offset: 64)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !2866, file: !2696, line: 440, baseType: !7, size: 32, offset: 96)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !2695, file: !2696, line: 498, baseType: !2866, size: 128, offset: 384)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !2695, file: !2696, line: 508, baseType: !2702, size: 33280, align: 512, offset: 512)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1237, file: !1238, line: 16, baseType: !327, size: 192, offset: 512)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1237, file: !1238, line: 17, baseType: !124, size: 32, offset: 704)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !843, file: !15, line: 1240, baseType: !80, size: 64, offset: 6912)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !843, file: !15, line: 1243, baseType: !433, size: 32, offset: 6976)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !843, file: !15, line: 1245, baseType: !424, size: 64, offset: 7040)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !843, file: !15, line: 1246, baseType: !424, size: 64, offset: 7104)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !843, file: !15, line: 1248, baseType: !434, size: 32, offset: 7168)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !843, file: !15, line: 1249, baseType: !2881, size: 64, offset: 7232)
!2881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2882, size: 64)
!2882 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !15, line: 634, flags: DIFlagFwdDecl)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !843, file: !15, line: 1252, baseType: !2884, size: 256, offset: 7296)
!2884 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 256, elements: !2757)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !843, file: !15, line: 1253, baseType: !2886, size: 128, offset: 7552)
!2886 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2887, line: 21, baseType: !2888)
!2887 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!2888 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2887, line: 19, size: 128, elements: !2889)
!2889 = !{!2890}
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2888, file: !2887, line: 20, baseType: !2891, size: 128)
!2891 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 128, elements: !1834)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !843, file: !15, line: 1255, baseType: !7, size: 32, offset: 7680)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !843, file: !15, line: 1261, baseType: !252, size: 256, offset: 7744)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !843, file: !15, line: 1267, baseType: !166, size: 64, offset: 8000)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !843, file: !15, line: 1269, baseType: !2896, size: 64, offset: 8064)
!2896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2897, size: 64)
!2897 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2898)
!2898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !593, line: 128, size: 1024, align: 512, elements: !2899)
!2899 = !{!2900, !2904, !2905, !2912, !2918, !2922, !2926, !2930, !2931, !2935, !2939, !2944, !2948}
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2898, file: !593, line: 129, baseType: !2901, size: 64)
!2901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2902, size: 64)
!2902 = !DISubroutineType(types: !2903)
!2903 = !{!128, !591, !7}
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2898, file: !593, line: 130, baseType: !2901, size: 64, offset: 64)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2898, file: !593, line: 131, baseType: !2906, size: 64, offset: 128)
!2906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2907, size: 64)
!2907 = !DISubroutineType(types: !2908)
!2908 = !{!128, !2909, !2911}
!2909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2910, size: 64)
!2910 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !592)
!2911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2898, file: !593, line: 132, baseType: !2913, size: 64, offset: 192)
!2913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2914, size: 64)
!2914 = !DISubroutineType(types: !2915)
!2915 = !{!128, !2909, !7, !166, !2916}
!2916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2917, size: 64)
!2917 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !616)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2898, file: !593, line: 134, baseType: !2919, size: 64, offset: 256)
!2919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2920, size: 64)
!2920 = !DISubroutineType(types: !2921)
!2921 = !{!128, !2909}
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2898, file: !593, line: 135, baseType: !2923, size: 64, offset: 320)
!2923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2924, size: 64)
!2924 = !DISubroutineType(types: !2925)
!2925 = !{!128, !591}
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2898, file: !593, line: 136, baseType: !2927, size: 64, offset: 384)
!2927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2928, size: 64)
!2928 = !DISubroutineType(types: !2929)
!2929 = !{null, !591}
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2898, file: !593, line: 137, baseType: !2927, size: 64, offset: 448)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2898, file: !593, line: 138, baseType: !2932, size: 64, offset: 512)
!2932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2933, size: 64)
!2933 = !DISubroutineType(types: !2934)
!2934 = !{null, !591, !631}
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2898, file: !593, line: 139, baseType: !2936, size: 64, offset: 576)
!2936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2937, size: 64)
!2937 = !DISubroutineType(types: !2938)
!2938 = !{!480, !591, !480, !128}
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2898, file: !593, line: 140, baseType: !2940, size: 64, offset: 640)
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2941, size: 64)
!2941 = !DISubroutineType(types: !2942)
!2942 = !{!586, !2943}
!2943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2898, file: !593, line: 141, baseType: !2945, size: 64, offset: 704)
!2945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2946, size: 64)
!2946 = !DISubroutineType(types: !2947)
!2947 = !{!128, !753, !469}
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2898, file: !593, line: 142, baseType: !2949, size: 64, offset: 768)
!2949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2950, size: 64)
!2950 = !DISubroutineType(types: !2951)
!2951 = !{!591, !591, !2952}
!2952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2953, size: 64)
!2953 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !632)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !843, file: !15, line: 1271, baseType: !2955, size: 448, offset: 8128)
!2955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1019, line: 63, size: 448, elements: !2956)
!2956 = !{!2957, !2962, !2963, !2964, !2965, !2966, !2967}
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2955, file: !1019, line: 64, baseType: !2958, size: 64)
!2958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2959, size: 64)
!2959 = !DISubroutineType(types: !2960)
!2960 = !{!81, !2961, !1017}
!2961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2955, size: 64)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2955, file: !1019, line: 66, baseType: !2958, size: 64, offset: 64)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2955, file: !1019, line: 69, baseType: !82, size: 64, offset: 128)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2955, file: !1019, line: 70, baseType: !128, size: 32, offset: 192)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2955, file: !1019, line: 71, baseType: !7, size: 32, offset: 224)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2955, file: !1019, line: 74, baseType: !264, size: 128, offset: 256)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2955, file: !1019, line: 85, baseType: !2968, size: 64, offset: 384)
!2968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !843, file: !15, line: 1274, baseType: !242, size: 64, offset: 8576)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !843, file: !15, line: 1280, baseType: !242, size: 64, offset: 8640)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !843, file: !15, line: 1283, baseType: !128, size: 32, offset: 8704)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !843, file: !15, line: 1286, baseType: !2484, size: 32, offset: 8736)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !843, file: !15, line: 1289, baseType: !2974, size: 64, offset: 8768)
!2974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2975, size: 64)
!2975 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1672, line: 18, flags: DIFlagFwdDecl)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !843, file: !15, line: 1290, baseType: !314, size: 64, offset: 8832)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !843, file: !15, line: 1297, baseType: !553, size: 64, offset: 8896)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !843, file: !15, line: 1304, baseType: !2979, size: 64, offset: 8960)
!2979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2980, line: 49, size: 64, elements: !2981)
!2980 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!2981 = !{!2982}
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2979, file: !2980, line: 50, baseType: !2983, size: 64)
!2983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2984, size: 64)
!2984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2980, line: 41, size: 512, align: 512, elements: !2985)
!2985 = !{!2986, !2987, !2992}
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2984, file: !2980, line: 43, baseType: !104, size: 32)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2984, file: !2980, line: 45, baseType: !2988, size: 192, offset: 64)
!2988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2980, line: 29, size: 192, elements: !2989)
!2989 = !{!2990, !2991}
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2988, file: !2980, line: 30, baseType: !264, size: 128)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2988, file: !2980, line: 32, baseType: !82, size: 64, offset: 128)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2984, file: !2980, line: 46, baseType: !82, size: 64, offset: 256)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !843, file: !15, line: 1305, baseType: !2979, size: 64, offset: 9024)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !843, file: !15, line: 1306, baseType: !229, size: 128, align: 64, offset: 9088)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !843, file: !15, line: 1307, baseType: !1671, size: 256, offset: 9216)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !843, file: !15, line: 1309, baseType: !252, size: 256, offset: 9472)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !843, file: !15, line: 1314, baseType: !128, size: 32, offset: 9728)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !843, file: !15, line: 1317, baseType: !104, size: 32, align: 512, offset: 10240)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !843, file: !15, line: 1318, baseType: !264, size: 128, offset: 10304)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !843, file: !15, line: 1320, baseType: !104, size: 32, offset: 10432)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !843, file: !15, line: 1321, baseType: !264, size: 128, offset: 10496)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !632, file: !15, line: 656, baseType: !2286, size: 64, offset: 512)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !632, file: !15, line: 659, baseType: !80, size: 64, offset: 576)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !632, file: !15, line: 663, baseType: !81, size: 64, offset: 640)
!3005 = !DIDerivedType(tag: DW_TAG_member, scope: !632, file: !15, line: 671, baseType: !3006, size: 32, offset: 704)
!3006 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !632, file: !15, line: 671, size: 32, elements: !3007)
!3007 = !{!3008, !3010}
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3006, file: !15, line: 672, baseType: !3009, size: 32)
!3009 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3006, file: !15, line: 673, baseType: !7, size: 32)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !632, file: !15, line: 675, baseType: !706, size: 32, offset: 736)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !632, file: !15, line: 676, baseType: !270, size: 64, offset: 768)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !632, file: !15, line: 677, baseType: !742, size: 128, offset: 832)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !632, file: !15, line: 678, baseType: !742, size: 128, offset: 960)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !632, file: !15, line: 679, baseType: !742, size: 128, offset: 1088)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !632, file: !15, line: 680, baseType: !104, size: 32, offset: 1216)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !632, file: !15, line: 681, baseType: !145, size: 16, offset: 1248)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !632, file: !15, line: 682, baseType: !133, size: 8, offset: 1264)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !632, file: !15, line: 683, baseType: !133, size: 8, offset: 1272)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !632, file: !15, line: 684, baseType: !1150, size: 64, offset: 1280)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !632, file: !15, line: 691, baseType: !81, size: 64, offset: 1344)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !632, file: !15, line: 692, baseType: !408, size: 320, offset: 1408)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !632, file: !15, line: 694, baseType: !81, size: 64, offset: 1728)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !632, file: !15, line: 695, baseType: !81, size: 64, offset: 1792)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !632, file: !15, line: 697, baseType: !318, size: 128, offset: 1856)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !632, file: !15, line: 698, baseType: !264, size: 128, offset: 1984)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !632, file: !15, line: 707, baseType: !264, size: 128, offset: 2112)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !632, file: !15, line: 708, baseType: !264, size: 128, offset: 2240)
!3029 = !DIDerivedType(tag: DW_TAG_member, scope: !632, file: !15, line: 709, baseType: !3030, size: 128, offset: 2368)
!3030 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !632, file: !15, line: 709, size: 128, elements: !3031)
!3031 = !{!3032, !3033}
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3030, file: !15, line: 710, baseType: !314, size: 64)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3030, file: !15, line: 711, baseType: !229, size: 128, align: 64)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !632, file: !15, line: 713, baseType: !244, size: 64, offset: 2496)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !632, file: !15, line: 714, baseType: !244, size: 64, offset: 2560)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !632, file: !15, line: 715, baseType: !124, size: 32, offset: 2624)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !632, file: !15, line: 716, baseType: !124, size: 32, offset: 2656)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !632, file: !15, line: 717, baseType: !124, size: 32, offset: 2688)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !632, file: !15, line: 719, baseType: !124, size: 32, offset: 2720)
!3040 = !DIDerivedType(tag: DW_TAG_member, scope: !632, file: !15, line: 721, baseType: !3041, size: 64, offset: 2752)
!3041 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !632, file: !15, line: 721, size: 64, elements: !3042)
!3042 = !{!3043, !3225}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3041, file: !15, line: 722, baseType: !3044, size: 64)
!3044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3045, size: 64)
!3045 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3046)
!3046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !15, line: 1914, size: 2112, elements: !3047)
!3047 = !{!3048, !3049, !3053, !3058, !3062, !3063, !3064, !3070, !3083, !3091, !3095, !3096, !3153, !3154, !3158, !3163, !3164, !3168, !3172, !3178, !3179, !3183, !3184, !3188, !3192, !3193, !3198, !3202, !3206, !3210, !3214, !3215, !3221}
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3046, file: !15, line: 1915, baseType: !875, size: 64)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3046, file: !15, line: 1916, baseType: !3050, size: 64, offset: 64)
!3050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3051, size: 64)
!3051 = !DISubroutineType(types: !3052)
!3052 = !{!270, !216, !270, !128}
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3046, file: !15, line: 1917, baseType: !3054, size: 64, offset: 128)
!3054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3055, size: 64)
!3055 = !DISubroutineType(types: !3056)
!3056 = !{!784, !216, !480, !787, !3057}
!3057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3046, file: !15, line: 1918, baseType: !3059, size: 64, offset: 192)
!3059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3060, size: 64)
!3060 = !DISubroutineType(types: !3061)
!3061 = !{!784, !216, !166, !787, !3057}
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3046, file: !15, line: 1919, baseType: !2418, size: 64, offset: 256)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3046, file: !15, line: 1920, baseType: !2418, size: 64, offset: 320)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3046, file: !15, line: 1921, baseType: !3065, size: 64, offset: 384)
!3065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3066, size: 64)
!3066 = !DISubroutineType(types: !3067)
!3067 = !{!128, !2421, !3068, !7}
!3068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3069, size: 64)
!3069 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !15, line: 53, flags: DIFlagFwdDecl)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3046, file: !15, line: 1923, baseType: !3071, size: 64, offset: 448)
!3071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3072, size: 64)
!3072 = !DISubroutineType(types: !3073)
!3073 = !{!128, !216, !3074}
!3074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3075, size: 64)
!3075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !15, line: 1858, size: 128, elements: !3076)
!3076 = !{!3077, !3082}
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3075, file: !15, line: 1859, baseType: !3078, size: 64)
!3078 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !15, line: 1855, baseType: !3079)
!3079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3080, size: 64)
!3080 = !DISubroutineType(types: !3081)
!3081 = !{!469, !3074, !166, !128, !270, !383, !7}
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3075, file: !15, line: 1860, baseType: !270, size: 64, offset: 64)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3046, file: !15, line: 1924, baseType: !3084, size: 64, offset: 512)
!3084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3085, size: 64)
!3085 = !DISubroutineType(types: !3086)
!3086 = !{!3087, !216, !3089}
!3087 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !3088, line: 59, baseType: !7)
!3088 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !15, line: 61, flags: DIFlagFwdDecl)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3046, file: !15, line: 1925, baseType: !3092, size: 64, offset: 576)
!3092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3093, size: 64)
!3093 = !DISubroutineType(types: !3094)
!3094 = !{!82, !216, !7, !81}
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3046, file: !15, line: 1926, baseType: !3092, size: 64, offset: 640)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3046, file: !15, line: 1927, baseType: !3097, size: 64, offset: 704)
!3097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64)
!3098 = !DISubroutineType(types: !3099)
!3099 = !{!128, !216, !3100}
!3100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3101, size: 64)
!3101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !1541, line: 625, size: 1344, elements: !3102)
!3102 = !{!3103, !3112, !3113, !3119, !3126, !3127, !3132, !3133, !3138, !3139, !3142, !3146, !3147, !3148, !3149, !3150, !3151}
!3103 = !DIDerivedType(tag: DW_TAG_member, scope: !3101, file: !1541, line: 628, baseType: !3104, size: 128)
!3104 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3101, file: !1541, line: 628, size: 128, elements: !3105)
!3105 = !{!3106, !3111}
!3106 = !DIDerivedType(tag: DW_TAG_member, scope: !3104, file: !1541, line: 629, baseType: !3107, size: 128)
!3107 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3104, file: !1541, line: 629, size: 128, elements: !3108)
!3108 = !{!3109, !3110}
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !3107, file: !1541, line: 631, baseType: !81, size: 64)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !3107, file: !1541, line: 632, baseType: !81, size: 64, offset: 64)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !3104, file: !1541, line: 635, baseType: !229, size: 128, align: 64)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !3101, file: !1541, line: 639, baseType: !1539, size: 64, offset: 128)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !3101, file: !1541, line: 640, baseType: !3114, size: 64, offset: 192)
!3114 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1575, line: 297, baseType: !3115)
!3115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1575, line: 297, size: 64, elements: !3116)
!3116 = !{!3117}
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !3115, file: !1575, line: 297, baseType: !3118, size: 64)
!3118 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1580, line: 19, baseType: !81)
!3119 = !DIDerivedType(tag: DW_TAG_member, scope: !3101, file: !1541, line: 646, baseType: !3120, size: 64, offset: 256)
!3120 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3101, file: !1541, line: 646, size: 64, elements: !3121)
!3121 = !{!3122, !3125}
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !3120, file: !1541, line: 647, baseType: !3123, size: 64)
!3123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3124)
!3124 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !1541, line: 542, baseType: !81)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !3120, file: !1541, line: 648, baseType: !3124, size: 64)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !3101, file: !1541, line: 666, baseType: !128, size: 32, offset: 320)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !3101, file: !1541, line: 667, baseType: !3128, size: 64, offset: 384)
!3128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3129, size: 64)
!3129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !1541, line: 579, size: 320, elements: !3130)
!3130 = !{!3131}
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3129, file: !1541, line: 580, baseType: !408, size: 320)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !3101, file: !1541, line: 670, baseType: !469, size: 8, offset: 448)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !3101, file: !1541, line: 681, baseType: !3134, size: 256, offset: 512)
!3134 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3101, file: !1541, line: 678, size: 256, elements: !3135)
!3135 = !{!3136, !3137}
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3134, file: !1541, line: 679, baseType: !169, size: 192, align: 64)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !3134, file: !1541, line: 680, baseType: !81, size: 64, offset: 192)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !3101, file: !1541, line: 689, baseType: !264, size: 128, offset: 768)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !3101, file: !1541, line: 691, baseType: !3140, size: 64, offset: 896)
!3140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3141, size: 64)
!3141 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !1541, line: 691, flags: DIFlagFwdDecl)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3101, file: !1541, line: 694, baseType: !3143, size: 64, offset: 960)
!3143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3144, size: 64)
!3144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3145)
!3145 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1541, line: 694, flags: DIFlagFwdDecl)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !3101, file: !1541, line: 697, baseType: !81, size: 64, offset: 1024)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !3101, file: !1541, line: 699, baseType: !216, size: 64, offset: 1088)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !3101, file: !1541, line: 700, baseType: !80, size: 64, offset: 1152)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !3101, file: !1541, line: 711, baseType: !242, size: 64, offset: 1216)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !3101, file: !1541, line: 717, baseType: !2221, size: 64, offset: 1280)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !3101, file: !1541, line: 722, baseType: !3152, offset: 1344)
!3152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !1541, line: 570, elements: !883)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3046, file: !15, line: 1928, baseType: !81, size: 64, offset: 768)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3046, file: !15, line: 1929, baseType: !3155, size: 64, offset: 832)
!3155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3156, size: 64)
!3156 = !DISubroutineType(types: !3157)
!3157 = !{!128, !631, !216}
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3046, file: !15, line: 1930, baseType: !3159, size: 64, offset: 896)
!3159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3160, size: 64)
!3160 = !DISubroutineType(types: !3161)
!3161 = !{!128, !216, !3162}
!3162 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !15, line: 1061, baseType: !80)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3046, file: !15, line: 1931, baseType: !3155, size: 64, offset: 960)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3046, file: !15, line: 1932, baseType: !3165, size: 64, offset: 1024)
!3165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3166, size: 64)
!3166 = !DISubroutineType(types: !3167)
!3167 = !{!128, !216, !270, !270, !128}
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3046, file: !15, line: 1933, baseType: !3169, size: 64, offset: 1088)
!3169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3170, size: 64)
!3170 = !DISubroutineType(types: !3171)
!3171 = !{!128, !128, !216, !128}
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3046, file: !15, line: 1934, baseType: !3173, size: 64, offset: 1152)
!3173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3174, size: 64)
!3174 = !DISubroutineType(types: !3175)
!3175 = !{!128, !216, !128, !3176}
!3176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3177, size: 64)
!3177 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !15, line: 1063, flags: DIFlagFwdDecl)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3046, file: !15, line: 1935, baseType: !1564, size: 64, offset: 1216)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3046, file: !15, line: 1936, baseType: !3180, size: 64, offset: 1280)
!3180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3181, size: 64)
!3181 = !DISubroutineType(types: !3182)
!3182 = !{!128, !128}
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3046, file: !15, line: 1937, baseType: !3173, size: 64, offset: 1344)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3046, file: !15, line: 1938, baseType: !3185, size: 64, offset: 1408)
!3185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3186, size: 64)
!3186 = !DISubroutineType(types: !3187)
!3187 = !{!784, !2258, !216, !3057, !787, !7}
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3046, file: !15, line: 1939, baseType: !3189, size: 64, offset: 1472)
!3189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3190, size: 64)
!3190 = !DISubroutineType(types: !3191)
!3191 = !{!784, !216, !3057, !2258, !787, !7}
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !3046, file: !15, line: 1940, baseType: !2474, size: 64, offset: 1536)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3046, file: !15, line: 1941, baseType: !3194, size: 64, offset: 1600)
!3194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3195, size: 64)
!3195 = !DISubroutineType(types: !3196)
!3196 = !{!128, !216, !128, !3197, !2395}
!3197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3176, size: 64)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3046, file: !15, line: 1942, baseType: !3199, size: 64, offset: 1664)
!3199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3200, size: 64)
!3200 = !DISubroutineType(types: !3201)
!3201 = !{!82, !216, !128, !270, !270}
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3046, file: !15, line: 1944, baseType: !3203, size: 64, offset: 1728)
!3203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3204, size: 64)
!3204 = !DISubroutineType(types: !3205)
!3205 = !{null, !952, !216}
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3046, file: !15, line: 1948, baseType: !3207, size: 64, offset: 1792)
!3207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3208, size: 64)
!3208 = !DISubroutineType(types: !3209)
!3209 = !{!784, !216, !270, !216, !270, !787, !7}
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3046, file: !15, line: 1950, baseType: !3211, size: 64, offset: 1856)
!3211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3212, size: 64)
!3212 = !DISubroutineType(types: !3213)
!3213 = !{!270, !216, !270, !216, !270, !270, !7}
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3046, file: !15, line: 1953, baseType: !3165, size: 64, offset: 1920)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !3046, file: !15, line: 1954, baseType: !3216, size: 64, offset: 1984)
!3216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3217, size: 64)
!3217 = !DISubroutineType(types: !3218)
!3218 = !{!128, !3219, !7}
!3219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3220, size: 64)
!3220 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !15, line: 1911, flags: DIFlagFwdDecl)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !3046, file: !15, line: 1955, baseType: !3222, size: 64, offset: 2048)
!3222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3223, size: 64)
!3223 = !DISubroutineType(types: !3224)
!3224 = !{!128, !3219, !3068, !7}
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3041, file: !15, line: 723, baseType: !902, size: 64)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !632, file: !15, line: 725, baseType: !3227, size: 64, offset: 2816)
!3227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3228, size: 64)
!3228 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !15, line: 725, flags: DIFlagFwdDecl)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !632, file: !15, line: 726, baseType: !2287, size: 1536, align: 64, offset: 2880)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !632, file: !15, line: 727, baseType: !264, size: 128, offset: 4416)
!3231 = !DIDerivedType(tag: DW_TAG_member, scope: !632, file: !15, line: 728, baseType: !3232, size: 64, offset: 4544)
!3232 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !632, file: !15, line: 728, size: 64, elements: !3233)
!3233 = !{!3234, !3235, !3238, !3239}
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3232, file: !15, line: 729, baseType: !2258, size: 64)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3232, file: !15, line: 730, baseType: !3236, size: 64)
!3236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3237, size: 64)
!3237 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !15, line: 730, flags: DIFlagFwdDecl)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3232, file: !15, line: 731, baseType: !480, size: 64)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3232, file: !15, line: 732, baseType: !7, size: 32)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !632, file: !15, line: 735, baseType: !434, size: 32, offset: 4608)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !632, file: !15, line: 738, baseType: !434, size: 32, offset: 4640)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !632, file: !15, line: 739, baseType: !2881, size: 64, offset: 4672)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !632, file: !15, line: 750, baseType: !80, size: 64, offset: 4736)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !592, file: !593, line: 91, baseType: !3245, size: 256, offset: 448)
!3245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 256, elements: !2757)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !592, file: !593, line: 94, baseType: !3247, size: 64, offset: 704)
!3247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3248, line: 25, size: 64, elements: !3249)
!3248 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!3249 = !{!3250}
!3250 = !DIDerivedType(tag: DW_TAG_member, scope: !3247, file: !3248, line: 26, baseType: !3251, size: 64)
!3251 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3247, file: !3248, line: 26, size: 64, elements: !3252)
!3252 = !{!3253, !3254}
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !3251, file: !3248, line: 28, baseType: !384, size: 64, align: 64)
!3254 = !DIDerivedType(tag: DW_TAG_member, scope: !3251, file: !3248, line: 30, baseType: !3255, size: 64)
!3255 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3251, file: !3248, line: 30, size: 64, elements: !3256)
!3256 = !{!3257, !3258}
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3255, file: !3248, line: 31, baseType: !104, size: 32)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3255, file: !3248, line: 32, baseType: !128, size: 32, offset: 32)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !592, file: !593, line: 95, baseType: !2896, size: 64, offset: 768)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !592, file: !593, line: 96, baseType: !842, size: 64, offset: 832)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !592, file: !593, line: 97, baseType: !81, size: 64, offset: 896)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !592, file: !593, line: 98, baseType: !80, size: 64, offset: 960)
!3263 = !DIDerivedType(tag: DW_TAG_member, scope: !592, file: !593, line: 100, baseType: !3264, size: 128, offset: 1024)
!3264 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !592, file: !593, line: 100, size: 128, elements: !3265)
!3265 = !{!3266, !3267}
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3264, file: !593, line: 101, baseType: !264, size: 128)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3264, file: !593, line: 102, baseType: !3268, size: 64)
!3268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !592, file: !593, line: 104, baseType: !264, size: 128, offset: 1152)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !592, file: !593, line: 105, baseType: !264, size: 128, offset: 1280)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !592, file: !593, line: 113, baseType: !3272, size: 128, offset: 1408)
!3272 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !592, file: !593, line: 109, size: 128, elements: !3273)
!3273 = !{!3274, !3275, !3276}
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3272, file: !593, line: 110, baseType: !318, size: 128)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3272, file: !593, line: 111, baseType: !607, size: 128)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3272, file: !593, line: 112, baseType: !229, size: 128, align: 64)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !587, file: !588, line: 72, baseType: !842, size: 64, offset: 64)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !587, file: !588, line: 73, baseType: !128, size: 32, offset: 128)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !587, file: !588, line: 74, baseType: !671, size: 64, offset: 192)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !582, file: !583, line: 10, baseType: !591, size: 64, offset: 64)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !217, file: !15, line: 1015, baseType: !631, size: 64, offset: 1344)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !217, file: !15, line: 1016, baseType: !3044, size: 64, offset: 1408)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !217, file: !15, line: 1018, baseType: !383, size: 64, offset: 1472)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !217, file: !15, line: 1020, baseType: !80, size: 64, offset: 1536)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !217, file: !15, line: 1023, baseType: !80, size: 64, offset: 1600)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !217, file: !15, line: 1027, baseType: !3287, size: 64, offset: 1664)
!3287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !217, file: !15, line: 1029, baseType: !2286, size: 64, offset: 1728)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !217, file: !15, line: 1030, baseType: !2484, size: 32, offset: 1792)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !217, file: !15, line: 1031, baseType: !2484, size: 32, offset: 1824)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !212, file: !57, line: 255, baseType: !952, size: 64, offset: 128)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !212, file: !57, line: 256, baseType: !80, size: 64, offset: 192)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !212, file: !57, line: 259, baseType: !252, size: 256, offset: 256)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !212, file: !57, line: 260, baseType: !252, size: 256, offset: 512)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !212, file: !57, line: 261, baseType: !128, size: 32, offset: 768)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !212, file: !57, line: 262, baseType: !264, size: 128, offset: 832)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !212, file: !57, line: 263, baseType: !480, size: 64, offset: 960)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !212, file: !57, line: 265, baseType: !787, size: 64, offset: 1024)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !212, file: !57, line: 266, baseType: !469, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !212, file: !57, line: 267, baseType: !469, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !212, file: !57, line: 268, baseType: !3143, size: 64, offset: 1152)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !205, file: !57, line: 277, baseType: !3303, size: 64, offset: 64)
!3303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3304, size: 64)
!3304 = !DISubroutineType(types: !3305)
!3305 = !{null, !211}
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !205, file: !57, line: 290, baseType: !3307, size: 64, offset: 128)
!3307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3308, size: 64)
!3308 = !DISubroutineType(types: !3309)
!3309 = !{!128, !952, !80}
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !205, file: !57, line: 292, baseType: !3311, size: 64, offset: 192)
!3311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3312, size: 64)
!3312 = !DISubroutineType(types: !3313)
!3313 = !{!80, !952, !3057}
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !205, file: !57, line: 293, baseType: !3315, size: 64, offset: 256)
!3315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3316, size: 64)
!3316 = !DISubroutineType(types: !3317)
!3317 = !{!80, !952, !80, !3057}
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !205, file: !57, line: 294, baseType: !3319, size: 64, offset: 320)
!3319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3320, size: 64)
!3320 = !DISubroutineType(types: !3321)
!3321 = !{null, !952, !80}
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !205, file: !57, line: 296, baseType: !3323, size: 64, offset: 384)
!3323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3324, size: 64)
!3324 = !DISubroutineType(types: !3325)
!3325 = !{!784, !211, !480, !787, !270}
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !205, file: !57, line: 306, baseType: !787, size: 64, offset: 448)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !205, file: !57, line: 313, baseType: !469, size: 8, offset: 512)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !205, file: !57, line: 314, baseType: !3323, size: 64, offset: 576)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !205, file: !57, line: 317, baseType: !3330, size: 64, offset: 640)
!3330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3331, size: 64)
!3331 = !DISubroutineType(types: !3332)
!3332 = !{!3087, !211, !3089}
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !205, file: !57, line: 320, baseType: !3334, size: 64, offset: 704)
!3334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3335, size: 64)
!3335 = !DISubroutineType(types: !3336)
!3336 = !{!128, !211, !3100}
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !200, file: !57, line: 176, baseType: !3338, size: 64, offset: 64)
!3338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3339, size: 64)
!3339 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !57, line: 35, flags: DIFlagFwdDecl)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !200, file: !57, line: 177, baseType: !270, size: 64, offset: 128)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !200, file: !57, line: 178, baseType: !159, size: 64, offset: 192)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !160, file: !57, line: 215, baseType: !80, size: 64, offset: 768)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !160, file: !57, line: 221, baseType: !383, size: 64, offset: 832)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !160, file: !57, line: 223, baseType: !145, size: 16, offset: 896)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !160, file: !57, line: 224, baseType: !635, size: 16, offset: 912)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !160, file: !57, line: 225, baseType: !3347, size: 64, offset: 960)
!3347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3348, size: 64)
!3348 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !57, line: 36, flags: DIFlagFwdDecl)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !160, file: !57, line: 227, baseType: !229, size: 128, align: 64, offset: 1024)
!3350 = !{!3351, !3352, !3353}
!3351 = !DILocalVariable(name: "parent", arg: 1, scope: !156, file: !3, line: 21, type: !159)
!3352 = !DILocalVariable(name: "name", arg: 2, scope: !156, file: !3, line: 21, type: !166)
!3353 = !DILocalVariable(name: "buf", scope: !156, file: !3, line: 23, type: !480)
!3354 = !DILocation(line: 21, column: 41, scope: !156)
!3355 = !DILocation(line: 21, column: 61, scope: !156)
!3356 = !DILocation(line: 23, column: 2, scope: !156)
!3357 = !DILocation(line: 23, column: 8, scope: !156)
!3358 = !DILocation(line: 25, column: 8, scope: !156)
!3359 = !DILocation(line: 25, column: 6, scope: !156)
!3360 = !DILocation(line: 26, column: 6, scope: !3361)
!3361 = distinct !DILexicalBlock(scope: !156, file: !3, line: 26, column: 6)
!3362 = !DILocation(line: 26, column: 6, scope: !156)
!3363 = !DILocation(line: 27, column: 15, scope: !3361)
!3364 = !DILocation(line: 27, column: 23, scope: !3361)
!3365 = !DILocation(line: 27, column: 3, scope: !3361)
!3366 = !DILocation(line: 29, column: 2, scope: !3367)
!3367 = distinct !DILexicalBlock(scope: !156, file: !3, line: 29, column: 2)
!3368 = !DILocation(line: 29, column: 2, scope: !3369)
!3369 = distinct !DILexicalBlock(scope: !3367, file: !3, line: 29, column: 2)
!3370 = !DILocation(line: 30, column: 2, scope: !156)
!3371 = !DILocation(line: 32, column: 8, scope: !156)
!3372 = !DILocation(line: 32, column: 2, scope: !156)
!3373 = !DILocation(line: 33, column: 1, scope: !156)
!3374 = distinct !DISubprogram(name: "kzalloc", scope: !68, file: !68, line: 719, type: !3375, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3377)
!3375 = !DISubroutineType(types: !3376)
!3376 = !{!80, !787, !78}
!3377 = !{!3378, !3379}
!3378 = !DILocalVariable(name: "size", arg: 1, scope: !3374, file: !68, line: 719, type: !787)
!3379 = !DILocalVariable(name: "flags", arg: 2, scope: !3374, file: !68, line: 719, type: !78)
!3380 = !DILocation(line: 719, column: 52, scope: !3374)
!3381 = !DILocation(line: 719, column: 64, scope: !3374)
!3382 = !DILocation(line: 721, column: 17, scope: !3374)
!3383 = !DILocation(line: 721, column: 23, scope: !3374)
!3384 = !DILocation(line: 721, column: 29, scope: !3374)
!3385 = !DILocation(line: 721, column: 9, scope: !3374)
!3386 = !DILocation(line: 721, column: 2, scope: !3374)
!3387 = distinct !DISubprogram(name: "kernfs_path", scope: !57, file: !57, line: 595, type: !3388, scopeLine: 596, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3390)
!3388 = !DISubroutineType(types: !3389)
!3389 = !{!128, !159, !480, !787}
!3390 = !{!3391, !3392, !3393}
!3391 = !DILocalVariable(name: "kn", arg: 1, scope: !3387, file: !57, line: 595, type: !159)
!3392 = !DILocalVariable(name: "buf", arg: 2, scope: !3387, file: !57, line: 595, type: !480)
!3393 = !DILocalVariable(name: "buflen", arg: 3, scope: !3387, file: !57, line: 595, type: !787)
!3394 = !DILocation(line: 595, column: 51, scope: !3387)
!3395 = !DILocation(line: 595, column: 61, scope: !3387)
!3396 = !DILocation(line: 595, column: 73, scope: !3387)
!3397 = !DILocation(line: 597, column: 31, scope: !3387)
!3398 = !DILocation(line: 597, column: 41, scope: !3387)
!3399 = !DILocation(line: 597, column: 46, scope: !3387)
!3400 = !DILocation(line: 597, column: 9, scope: !3387)
!3401 = !DILocation(line: 597, column: 2, scope: !3387)
!3402 = !DISubprogram(name: "_printk", scope: !3403, file: !3403, line: 153, type: !3404, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3403 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!3404 = !DISubroutineType(types: !3405)
!3405 = !{!128, !166, null}
!3406 = !DISubprogram(name: "dump_stack", scope: !3403, file: !3403, line: 193, type: !2029, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3407 = !DISubprogram(name: "kfree", scope: !68, file: !68, line: 227, type: !3408, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3408 = !DISubroutineType(types: !3409)
!3409 = !{null, !177}
!3410 = distinct !DISubprogram(name: "sysfs_create_dir_ns", scope: !3, file: !3, line: 40, type: !3411, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3577)
!3411 = !DISubroutineType(types: !3412)
!3412 = !{!128, !3413, !177}
!3413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3414, size: 64)
!3414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !3415, line: 64, size: 512, elements: !3416)
!3415 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!3416 = !{!3417, !3418, !3419, !3420, !3462, !3566, !3567, !3572, !3573, !3574, !3575, !3576}
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3414, file: !3415, line: 65, baseType: !166, size: 64)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3414, file: !3415, line: 66, baseType: !264, size: 128, offset: 64)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3414, file: !3415, line: 67, baseType: !3413, size: 64, offset: 192)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !3414, file: !3415, line: 68, baseType: !3421, size: 64, offset: 256)
!3421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3422, size: 64)
!3422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !3415, line: 168, size: 768, elements: !3423)
!3423 = !{!3424, !3425, !3426, !3427}
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3422, file: !3415, line: 169, baseType: !264, size: 128)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !3422, file: !3415, line: 170, baseType: !104, size: 32, offset: 128)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3422, file: !3415, line: 171, baseType: !3414, size: 512, offset: 192)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !3422, file: !3415, line: 172, baseType: !3428, size: 64, offset: 704)
!3428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3429, size: 64)
!3429 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3430)
!3430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !3415, line: 133, size: 192, elements: !3431)
!3431 = !{!3432, !3439, !3444}
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3430, file: !3415, line: 134, baseType: !3433, size: 64)
!3433 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3434)
!3434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3435, size: 64)
!3435 = !DISubroutineType(types: !3436)
!3436 = !{!128, !3437}
!3437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3438, size: 64)
!3438 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3414)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3430, file: !3415, line: 135, baseType: !3440, size: 64, offset: 64)
!3440 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3441)
!3441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3442, size: 64)
!3442 = !DISubroutineType(types: !3443)
!3443 = !{!166, !3437}
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3430, file: !3415, line: 136, baseType: !3445, size: 64, offset: 128)
!3445 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3446)
!3446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3447, size: 64)
!3447 = !DISubroutineType(types: !3448)
!3448 = !{!128, !3437, !3449}
!3449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3450, size: 64)
!3450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !3415, line: 125, size: 20736, elements: !3451)
!3451 = !{!3452, !3454, !3456, !3457, !3461}
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !3450, file: !3415, line: 126, baseType: !3453, size: 192)
!3453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !480, size: 192, elements: !297)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !3450, file: !3415, line: 127, baseType: !3455, size: 4096, offset: 192)
!3455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !480, size: 4096, elements: !2032)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !3450, file: !3415, line: 128, baseType: !128, size: 32, offset: 4288)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !3450, file: !3415, line: 129, baseType: !3458, size: 16384, offset: 4320)
!3458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 16384, elements: !3459)
!3459 = !{!3460}
!3460 = !DISubrange(count: 2048)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !3450, file: !3415, line: 130, baseType: !128, size: 32, offset: 20704)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !3414, file: !3415, line: 69, baseType: !3463, size: 64, offset: 320)
!3463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3464, size: 64)
!3464 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3465)
!3465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !3415, line: 116, size: 384, elements: !3466)
!3466 = !{!3467, !3471, !3490, !3528, !3556, !3560}
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3465, file: !3415, line: 117, baseType: !3468, size: 64)
!3468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3469, size: 64)
!3469 = !DISubroutineType(types: !3470)
!3470 = !{null, !3413}
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !3465, file: !3415, line: 118, baseType: !3472, size: 64, offset: 64)
!3472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3473, size: 64)
!3473 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3474)
!3474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !3475, line: 254, size: 128, elements: !3476)
!3475 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!3476 = !{!3477, !3486}
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3474, file: !3475, line: 255, baseType: !3478, size: 64)
!3478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3479, size: 64)
!3479 = !DISubroutineType(types: !3480)
!3480 = !{!784, !3413, !3481, !480}
!3481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3482, size: 64)
!3482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !3475, line: 30, size: 128, elements: !3483)
!3483 = !{!3484, !3485}
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3482, file: !3475, line: 31, baseType: !166, size: 64)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3482, file: !3475, line: 32, baseType: !635, size: 16, offset: 64)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3474, file: !3475, line: 256, baseType: !3487, size: 64, offset: 64)
!3487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3488, size: 64)
!3488 = !DISubroutineType(types: !3489)
!3489 = !{!784, !3413, !3481, !166, !787}
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !3465, file: !3415, line: 119, baseType: !3491, size: 64, offset: 128)
!3491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3492, size: 64)
!3492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3493, size: 64)
!3493 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3494)
!3494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !3475, line: 84, size: 320, elements: !3495)
!3495 = !{!3496, !3497, !3501, !3524, !3526}
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3494, file: !3475, line: 85, baseType: !166, size: 64)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !3494, file: !3475, line: 86, baseType: !3498, size: 64, offset: 64)
!3498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3499, size: 64)
!3499 = !DISubroutineType(types: !3500)
!3500 = !{!635, !3413, !3481, !128}
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !3494, file: !3475, line: 88, baseType: !3502, size: 64, offset: 128)
!3502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3503, size: 64)
!3503 = !DISubroutineType(types: !3504)
!3504 = !{!635, !3413, !3505, !128}
!3505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3506, size: 64)
!3506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !3475, line: 175, size: 512, elements: !3507)
!3507 = !{!3508, !3509, !3510, !3511, !3515, !3519, !3520}
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3506, file: !3475, line: 176, baseType: !3482, size: 128)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3506, file: !3475, line: 177, baseType: !787, size: 64, offset: 128)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3506, file: !3475, line: 178, baseType: !80, size: 64, offset: 192)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !3506, file: !3475, line: 179, baseType: !3512, size: 64, offset: 256)
!3512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3513, size: 64)
!3513 = !DISubroutineType(types: !3514)
!3514 = !{!2286}
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3506, file: !3475, line: 180, baseType: !3516, size: 64, offset: 320)
!3516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3517, size: 64)
!3517 = !DISubroutineType(types: !3518)
!3518 = !{!784, !216, !3413, !3505, !480, !270, !787}
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3506, file: !3475, line: 182, baseType: !3516, size: 64, offset: 384)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3506, file: !3475, line: 184, baseType: !3521, size: 64, offset: 448)
!3521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3522, size: 64)
!3522 = !DISubroutineType(types: !3523)
!3523 = !{!128, !216, !3413, !3505, !3100}
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !3494, file: !3475, line: 90, baseType: !3525, size: 64, offset: 192)
!3525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3481, size: 64)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !3494, file: !3475, line: 91, baseType: !3527, size: 64, offset: 256)
!3527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3505, size: 64)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !3465, file: !3415, line: 120, baseType: !3529, size: 64, offset: 192)
!3529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3530, size: 64)
!3530 = !DISubroutineType(types: !3531)
!3531 = !{!3532, !3437}
!3532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3533, size: 64)
!3533 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3534)
!3534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !51, line: 39, size: 384, elements: !3535)
!3535 = !{!3536, !3537, !3541, !3545, !3551, !3555}
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3534, file: !51, line: 40, baseType: !50, size: 32)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3534, file: !51, line: 41, baseType: !3538, size: 64, offset: 64)
!3538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3539, size: 64)
!3539 = !DISubroutineType(types: !3540)
!3540 = !{!469}
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3534, file: !51, line: 42, baseType: !3542, size: 64, offset: 128)
!3542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3543, size: 64)
!3543 = !DISubroutineType(types: !3544)
!3544 = !{!80}
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3534, file: !51, line: 43, baseType: !3546, size: 64, offset: 192)
!3546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3547, size: 64)
!3547 = !DISubroutineType(types: !3548)
!3548 = !{!177, !3549}
!3549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3550, size: 64)
!3550 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !51, line: 19, flags: DIFlagFwdDecl)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3534, file: !51, line: 44, baseType: !3552, size: 64, offset: 256)
!3552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3553, size: 64)
!3553 = !DISubroutineType(types: !3554)
!3554 = !{!177}
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3534, file: !51, line: 45, baseType: !663, size: 64, offset: 320)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3465, file: !3415, line: 121, baseType: !3557, size: 64, offset: 256)
!3557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3558, size: 64)
!3558 = !DISubroutineType(types: !3559)
!3559 = !{!177, !3437}
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3465, file: !3415, line: 122, baseType: !3561, size: 64, offset: 320)
!3561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3562, size: 64)
!3562 = !DISubroutineType(types: !3563)
!3563 = !{null, !3437, !3564, !3565}
!3564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!3565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !3414, file: !3415, line: 70, baseType: !159, size: 64, offset: 384)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !3414, file: !3415, line: 71, baseType: !3568, size: 32, offset: 448)
!3568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3569, line: 19, size: 32, elements: !3570)
!3569 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!3570 = !{!3571}
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3568, file: !3569, line: 20, baseType: !305, size: 32)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !3414, file: !3415, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !3414, file: !3415, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !3414, file: !3415, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !3414, file: !3415, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !3414, file: !3415, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3577 = !{!3578, !3579, !3580, !3581, !3582, !3583, !3584, !3587}
!3578 = !DILocalVariable(name: "kobj", arg: 1, scope: !3410, file: !3, line: 40, type: !3413)
!3579 = !DILocalVariable(name: "ns", arg: 2, scope: !3410, file: !3, line: 40, type: !177)
!3580 = !DILocalVariable(name: "parent", scope: !3410, file: !3, line: 42, type: !159)
!3581 = !DILocalVariable(name: "kn", scope: !3410, file: !3, line: 42, type: !159)
!3582 = !DILocalVariable(name: "uid", scope: !3410, file: !3, line: 43, type: !346)
!3583 = !DILocalVariable(name: "gid", scope: !3410, file: !3, line: 44, type: !364)
!3584 = !DILocalVariable(name: "__ret_warn_on", scope: !3585, file: !3, line: 46, type: !128)
!3585 = distinct !DILexicalBlock(scope: !3586, file: !3, line: 46, column: 6)
!3586 = distinct !DILexicalBlock(scope: !3410, file: !3, line: 46, column: 6)
!3587 = !DILocalVariable(name: "__flags", scope: !3588, file: !3, line: 46, type: !128)
!3588 = distinct !DILexicalBlock(scope: !3589, file: !3, line: 46, column: 6)
!3589 = distinct !DILexicalBlock(scope: !3585, file: !3, line: 46, column: 6)
!3590 = !DILocation(line: 40, column: 41, scope: !3410)
!3591 = !DILocation(line: 40, column: 59, scope: !3410)
!3592 = !DILocation(line: 42, column: 2, scope: !3410)
!3593 = !DILocation(line: 42, column: 22, scope: !3410)
!3594 = !DILocation(line: 42, column: 31, scope: !3410)
!3595 = !DILocation(line: 43, column: 2, scope: !3410)
!3596 = !DILocation(line: 43, column: 9, scope: !3410)
!3597 = !DILocation(line: 44, column: 2, scope: !3410)
!3598 = !DILocation(line: 44, column: 9, scope: !3410)
!3599 = !DILocation(line: 46, column: 6, scope: !3585)
!3600 = !DILocation(line: 46, column: 6, scope: !3589)
!3601 = !DILocation(line: 46, column: 6, scope: !3588)
!3602 = !DILocation(line: 46, column: 6, scope: !3603)
!3603 = distinct !DILexicalBlock(scope: !3588, file: !3, line: 46, column: 6)
!3604 = !DILocation(line: 46, column: 6, scope: !3605)
!3605 = distinct !DILexicalBlock(scope: !3588, file: !3, line: 46, column: 6)
!3606 = !{i64 2153448743, i64 2153448772, i64 2153448818, i64 2153448876, i64 2153448930, i64 2153448984, i64 2153449039, i64 2153449070, i64 2153449378, i64 2153449384, i64 2153449431, i64 2153449454, i64 2153449480}
!3607 = !DILocation(line: 46, column: 6, scope: !3608)
!3608 = distinct !DILexicalBlock(scope: !3588, file: !3, line: 46, column: 6)
!3609 = !DILocation(line: 46, column: 6, scope: !3586)
!3610 = !DILocation(line: 46, column: 6, scope: !3410)
!3611 = !DILocation(line: 47, column: 3, scope: !3586)
!3612 = !DILocation(line: 49, column: 6, scope: !3613)
!3613 = distinct !DILexicalBlock(scope: !3410, file: !3, line: 49, column: 6)
!3614 = !DILocation(line: 49, column: 12, scope: !3613)
!3615 = !DILocation(line: 49, column: 6, scope: !3410)
!3616 = !DILocation(line: 50, column: 12, scope: !3613)
!3617 = !DILocation(line: 50, column: 18, scope: !3613)
!3618 = !DILocation(line: 50, column: 26, scope: !3613)
!3619 = !DILocation(line: 50, column: 10, scope: !3613)
!3620 = !DILocation(line: 50, column: 3, scope: !3613)
!3621 = !DILocation(line: 52, column: 12, scope: !3613)
!3622 = !DILocation(line: 52, column: 10, scope: !3613)
!3623 = !DILocation(line: 54, column: 7, scope: !3624)
!3624 = distinct !DILexicalBlock(scope: !3410, file: !3, line: 54, column: 6)
!3625 = !DILocation(line: 54, column: 6, scope: !3410)
!3626 = !DILocation(line: 55, column: 3, scope: !3624)
!3627 = !DILocation(line: 57, column: 24, scope: !3410)
!3628 = !DILocation(line: 57, column: 2, scope: !3410)
!3629 = !DILocation(line: 59, column: 28, scope: !3410)
!3630 = !DILocation(line: 59, column: 49, scope: !3410)
!3631 = !DILocation(line: 59, column: 36, scope: !3410)
!3632 = !DILocation(line: 60, column: 7, scope: !3410)
!3633 = !DILocation(line: 60, column: 13, scope: !3410)
!3634 = !DILocation(line: 59, column: 7, scope: !3410)
!3635 = !DILocation(line: 59, column: 5, scope: !3410)
!3636 = !DILocation(line: 61, column: 13, scope: !3637)
!3637 = distinct !DILexicalBlock(scope: !3410, file: !3, line: 61, column: 6)
!3638 = !DILocation(line: 61, column: 6, scope: !3637)
!3639 = !DILocation(line: 61, column: 6, scope: !3410)
!3640 = !DILocation(line: 62, column: 15, scope: !3641)
!3641 = distinct !DILexicalBlock(scope: !3642, file: !3, line: 62, column: 7)
!3642 = distinct !DILexicalBlock(scope: !3637, file: !3, line: 61, column: 18)
!3643 = !DILocation(line: 62, column: 7, scope: !3641)
!3644 = !DILocation(line: 62, column: 19, scope: !3641)
!3645 = !DILocation(line: 62, column: 7, scope: !3642)
!3646 = !DILocation(line: 63, column: 19, scope: !3641)
!3647 = !DILocation(line: 63, column: 40, scope: !3641)
!3648 = !DILocation(line: 63, column: 27, scope: !3641)
!3649 = !DILocation(line: 63, column: 4, scope: !3641)
!3650 = !DILocation(line: 64, column: 18, scope: !3642)
!3651 = !DILocation(line: 64, column: 10, scope: !3642)
!3652 = !DILocation(line: 64, column: 3, scope: !3642)
!3653 = !DILocation(line: 67, column: 13, scope: !3410)
!3654 = !DILocation(line: 67, column: 2, scope: !3410)
!3655 = !DILocation(line: 67, column: 8, scope: !3410)
!3656 = !DILocation(line: 67, column: 11, scope: !3410)
!3657 = !DILocation(line: 68, column: 2, scope: !3410)
!3658 = !DILocation(line: 69, column: 1, scope: !3410)
!3659 = !DISubprogram(name: "kobject_get_ownership", scope: !3415, file: !3415, line: 113, type: !3562, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3660 = !DISubprogram(name: "kernfs_create_dir_ns", scope: !57, file: !57, line: 419, type: !3661, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3661 = !DISubroutineType(types: !3662)
!3662 = !{!159, !159, !166, !635, !346, !364, !80, !177}
!3663 = distinct !DISubprogram(name: "kobject_name", scope: !3415, file: !3415, line: 87, type: !3442, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3664)
!3664 = !{!3665}
!3665 = !DILocalVariable(name: "kobj", arg: 1, scope: !3663, file: !3415, line: 87, type: !3437)
!3666 = !DILocation(line: 87, column: 62, scope: !3663)
!3667 = !DILocation(line: 89, column: 9, scope: !3663)
!3668 = !DILocation(line: 89, column: 15, scope: !3663)
!3669 = !DILocation(line: 89, column: 2, scope: !3663)
!3670 = distinct !DISubprogram(name: "IS_ERR", scope: !3671, file: !3671, line: 59, type: !3672, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3674)
!3671 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!3672 = !DISubroutineType(types: !3673)
!3673 = !{!469, !177}
!3674 = !{!3675}
!3675 = !DILocalVariable(name: "ptr", arg: 1, scope: !3670, file: !3671, line: 59, type: !177)
!3676 = !DILocation(line: 59, column: 60, scope: !3670)
!3677 = !DILocation(line: 61, column: 9, scope: !3670)
!3678 = !DILocation(line: 61, column: 2, scope: !3670)
!3679 = distinct !DISubprogram(name: "PTR_ERR", scope: !3671, file: !3671, line: 49, type: !3680, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3682)
!3680 = !DISubroutineType(types: !3681)
!3681 = !{!82, !177}
!3682 = !{!3683}
!3683 = !DILocalVariable(name: "ptr", arg: 1, scope: !3679, file: !3671, line: 49, type: !177)
!3684 = !DILocation(line: 49, column: 61, scope: !3679)
!3685 = !DILocation(line: 51, column: 16, scope: !3679)
!3686 = !DILocation(line: 51, column: 9, scope: !3679)
!3687 = !DILocation(line: 51, column: 2, scope: !3679)
!3688 = distinct !DISubprogram(name: "sysfs_remove_dir", scope: !3, file: !3, line: 79, type: !3469, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3689)
!3689 = !{!3690, !3691, !3692, !3696}
!3690 = !DILocalVariable(name: "kobj", arg: 1, scope: !3688, file: !3, line: 79, type: !3413)
!3691 = !DILocalVariable(name: "kn", scope: !3688, file: !3, line: 81, type: !159)
!3692 = !DILocalVariable(name: "__ret_warn_on", scope: !3693, file: !3, line: 100, type: !128)
!3693 = distinct !DILexicalBlock(scope: !3694, file: !3, line: 100, column: 3)
!3694 = distinct !DILexicalBlock(scope: !3695, file: !3, line: 99, column: 10)
!3695 = distinct !DILexicalBlock(scope: !3688, file: !3, line: 99, column: 6)
!3696 = !DILocalVariable(name: "__flags", scope: !3697, file: !3, line: 100, type: !128)
!3697 = distinct !DILexicalBlock(scope: !3698, file: !3, line: 100, column: 3)
!3698 = distinct !DILexicalBlock(scope: !3693, file: !3, line: 100, column: 3)
!3699 = !DILocation(line: 79, column: 39, scope: !3688)
!3700 = !DILocation(line: 81, column: 2, scope: !3688)
!3701 = !DILocation(line: 81, column: 22, scope: !3688)
!3702 = !DILocation(line: 81, column: 27, scope: !3688)
!3703 = !DILocation(line: 81, column: 33, scope: !3688)
!3704 = !DILocation(line: 95, column: 2, scope: !3688)
!3705 = !DILocation(line: 96, column: 2, scope: !3688)
!3706 = !DILocation(line: 96, column: 8, scope: !3688)
!3707 = !DILocation(line: 96, column: 11, scope: !3688)
!3708 = !DILocation(line: 97, column: 2, scope: !3688)
!3709 = !DILocation(line: 99, column: 6, scope: !3695)
!3710 = !DILocation(line: 99, column: 6, scope: !3688)
!3711 = !DILocation(line: 100, column: 3, scope: !3693)
!3712 = !DILocation(line: 100, column: 3, scope: !3698)
!3713 = !DILocation(line: 100, column: 3, scope: !3697)
!3714 = !DILocation(line: 100, column: 3, scope: !3715)
!3715 = distinct !DILexicalBlock(scope: !3697, file: !3, line: 100, column: 3)
!3716 = !DILocation(line: 100, column: 3, scope: !3717)
!3717 = distinct !DILexicalBlock(scope: !3697, file: !3, line: 100, column: 3)
!3718 = !{i64 2153450297, i64 2153450326, i64 2153450372, i64 2153450430, i64 2153450484, i64 2153450538, i64 2153450593, i64 2153450624, i64 2153450932, i64 2153450938, i64 2153450985, i64 2153451008, i64 2153451034}
!3719 = !DILocation(line: 100, column: 3, scope: !3720)
!3720 = distinct !DILexicalBlock(scope: !3697, file: !3, line: 100, column: 3)
!3721 = !DILocation(line: 100, column: 3, scope: !3694)
!3722 = !DILocation(line: 101, column: 17, scope: !3694)
!3723 = !DILocation(line: 101, column: 3, scope: !3694)
!3724 = !DILocation(line: 102, column: 2, scope: !3694)
!3725 = !DILocation(line: 103, column: 1, scope: !3688)
!3726 = distinct !DISubprogram(name: "spin_lock", scope: !3727, file: !3727, line: 349, type: !3728, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3731)
!3727 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!3728 = !DISubroutineType(types: !3729)
!3729 = !{null, !3730}
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!3731 = !{!3732}
!3732 = !DILocalVariable(name: "lock", arg: 1, scope: !3726, file: !3727, line: 349, type: !3730)
!3733 = !DILocation(line: 349, column: 51, scope: !3726)
!3734 = !DILocation(line: 351, column: 2, scope: !3726)
!3735 = !DILocation(line: 352, column: 1, scope: !3726)
!3736 = distinct !DISubprogram(name: "spin_unlock", scope: !3727, file: !3727, line: 389, type: !3728, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3737)
!3737 = !{!3738}
!3738 = !DILocalVariable(name: "lock", arg: 1, scope: !3736, file: !3727, line: 389, type: !3730)
!3739 = !DILocation(line: 389, column: 53, scope: !3736)
!3740 = !DILocation(line: 391, column: 2, scope: !3736)
!3741 = !DILocation(line: 392, column: 1, scope: !3736)
!3742 = distinct !DISubprogram(name: "kernfs_type", scope: !57, file: !57, line: 337, type: !3743, scopeLine: 338, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3745)
!3743 = !DISubroutineType(types: !3744)
!3744 = !{!56, !159}
!3745 = !{!3746}
!3746 = !DILocalVariable(name: "kn", arg: 1, scope: !3742, file: !57, line: 337, type: !159)
!3747 = !DILocation(line: 337, column: 69, scope: !3742)
!3748 = !DILocation(line: 339, column: 9, scope: !3742)
!3749 = !DILocation(line: 339, column: 13, scope: !3742)
!3750 = !DILocation(line: 339, column: 19, scope: !3742)
!3751 = !DILocation(line: 339, column: 2, scope: !3742)
!3752 = !DISubprogram(name: "kernfs_remove", scope: !57, file: !57, line: 437, type: !3753, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3753 = !DISubroutineType(types: !3754)
!3754 = !{null, !159}
!3755 = distinct !DISubprogram(name: "sysfs_rename_dir_ns", scope: !3, file: !3, line: 105, type: !3756, scopeLine: 107, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3758)
!3756 = !DISubroutineType(types: !3757)
!3757 = !{!128, !3413, !166, !177}
!3758 = !{!3759, !3760, !3761, !3762, !3763}
!3759 = !DILocalVariable(name: "kobj", arg: 1, scope: !3755, file: !3, line: 105, type: !3413)
!3760 = !DILocalVariable(name: "new_name", arg: 2, scope: !3755, file: !3, line: 105, type: !166)
!3761 = !DILocalVariable(name: "new_ns", arg: 3, scope: !3755, file: !3, line: 106, type: !177)
!3762 = !DILocalVariable(name: "parent", scope: !3755, file: !3, line: 108, type: !159)
!3763 = !DILocalVariable(name: "ret", scope: !3755, file: !3, line: 109, type: !128)
!3764 = !DILocation(line: 105, column: 41, scope: !3755)
!3765 = !DILocation(line: 105, column: 59, scope: !3755)
!3766 = !DILocation(line: 106, column: 16, scope: !3755)
!3767 = !DILocation(line: 108, column: 2, scope: !3755)
!3768 = !DILocation(line: 108, column: 22, scope: !3755)
!3769 = !DILocation(line: 109, column: 2, scope: !3755)
!3770 = !DILocation(line: 109, column: 6, scope: !3755)
!3771 = !DILocation(line: 111, column: 29, scope: !3755)
!3772 = !DILocation(line: 111, column: 35, scope: !3755)
!3773 = !DILocation(line: 111, column: 11, scope: !3755)
!3774 = !DILocation(line: 111, column: 9, scope: !3755)
!3775 = !DILocation(line: 112, column: 25, scope: !3755)
!3776 = !DILocation(line: 112, column: 31, scope: !3755)
!3777 = !DILocation(line: 112, column: 35, scope: !3755)
!3778 = !DILocation(line: 112, column: 43, scope: !3755)
!3779 = !DILocation(line: 112, column: 53, scope: !3755)
!3780 = !DILocation(line: 112, column: 8, scope: !3755)
!3781 = !DILocation(line: 112, column: 6, scope: !3755)
!3782 = !DILocation(line: 113, column: 13, scope: !3755)
!3783 = !DILocation(line: 113, column: 2, scope: !3755)
!3784 = !DILocation(line: 114, column: 9, scope: !3755)
!3785 = !DILocation(line: 115, column: 1, scope: !3755)
!3786 = !DILocation(line: 114, column: 2, scope: !3755)
!3787 = !DISubprogram(name: "kernfs_get_parent", scope: !57, file: !57, line: 401, type: !3788, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3788 = !DISubroutineType(types: !3789)
!3789 = !{!159, !159}
!3790 = !DISubprogram(name: "kernfs_rename_ns", scope: !57, file: !57, line: 443, type: !3791, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3791 = !DISubroutineType(types: !3792)
!3792 = !{!128, !159, !159, !166, !177}
!3793 = !DISubprogram(name: "kernfs_put", scope: !57, file: !57, line: 407, type: !3753, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3794 = distinct !DISubprogram(name: "sysfs_move_dir_ns", scope: !3, file: !3, line: 117, type: !3795, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3797)
!3795 = !DISubroutineType(types: !3796)
!3796 = !{!128, !3413, !3413, !177}
!3797 = !{!3798, !3799, !3800, !3801, !3802}
!3798 = !DILocalVariable(name: "kobj", arg: 1, scope: !3794, file: !3, line: 117, type: !3413)
!3799 = !DILocalVariable(name: "new_parent_kobj", arg: 2, scope: !3794, file: !3, line: 117, type: !3413)
!3800 = !DILocalVariable(name: "new_ns", arg: 3, scope: !3794, file: !3, line: 118, type: !177)
!3801 = !DILocalVariable(name: "kn", scope: !3794, file: !3, line: 120, type: !159)
!3802 = !DILocalVariable(name: "new_parent", scope: !3794, file: !3, line: 121, type: !159)
!3803 = !DILocation(line: 117, column: 39, scope: !3794)
!3804 = !DILocation(line: 117, column: 61, scope: !3794)
!3805 = !DILocation(line: 118, column: 21, scope: !3794)
!3806 = !DILocation(line: 120, column: 2, scope: !3794)
!3807 = !DILocation(line: 120, column: 22, scope: !3794)
!3808 = !DILocation(line: 120, column: 27, scope: !3794)
!3809 = !DILocation(line: 120, column: 33, scope: !3794)
!3810 = !DILocation(line: 121, column: 2, scope: !3794)
!3811 = !DILocation(line: 121, column: 22, scope: !3794)
!3812 = !DILocation(line: 123, column: 15, scope: !3794)
!3813 = !DILocation(line: 123, column: 31, scope: !3794)
!3814 = !DILocation(line: 123, column: 34, scope: !3794)
!3815 = !DILocation(line: 123, column: 51, scope: !3794)
!3816 = !DILocation(line: 124, column: 3, scope: !3794)
!3817 = !DILocation(line: 124, column: 20, scope: !3794)
!3818 = !DILocation(line: 124, column: 25, scope: !3794)
!3819 = !DILocation(line: 123, column: 13, scope: !3794)
!3820 = !DILocation(line: 126, column: 26, scope: !3794)
!3821 = !DILocation(line: 126, column: 30, scope: !3794)
!3822 = !DILocation(line: 126, column: 42, scope: !3794)
!3823 = !DILocation(line: 126, column: 46, scope: !3794)
!3824 = !DILocation(line: 126, column: 52, scope: !3794)
!3825 = !DILocation(line: 126, column: 9, scope: !3794)
!3826 = !DILocation(line: 127, column: 1, scope: !3794)
!3827 = !DILocation(line: 126, column: 2, scope: !3794)
!3828 = distinct !DISubprogram(name: "sysfs_create_mount_point", scope: !3, file: !3, line: 134, type: !3829, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3831)
!3829 = !DISubroutineType(types: !3830)
!3830 = !{!128, !3413, !166}
!3831 = !{!3832, !3833, !3834, !3835}
!3832 = !DILocalVariable(name: "parent_kobj", arg: 1, scope: !3828, file: !3, line: 134, type: !3413)
!3833 = !DILocalVariable(name: "name", arg: 2, scope: !3828, file: !3, line: 134, type: !166)
!3834 = !DILocalVariable(name: "kn", scope: !3828, file: !3, line: 136, type: !159)
!3835 = !DILocalVariable(name: "parent", scope: !3828, file: !3, line: 136, type: !159)
!3836 = !DILocation(line: 134, column: 46, scope: !3828)
!3837 = !DILocation(line: 134, column: 71, scope: !3828)
!3838 = !DILocation(line: 136, column: 2, scope: !3828)
!3839 = !DILocation(line: 136, column: 22, scope: !3828)
!3840 = !DILocation(line: 136, column: 27, scope: !3828)
!3841 = !DILocation(line: 136, column: 36, scope: !3828)
!3842 = !DILocation(line: 136, column: 49, scope: !3828)
!3843 = !DILocation(line: 138, column: 31, scope: !3828)
!3844 = !DILocation(line: 138, column: 39, scope: !3828)
!3845 = !DILocation(line: 138, column: 7, scope: !3828)
!3846 = !DILocation(line: 138, column: 5, scope: !3828)
!3847 = !DILocation(line: 139, column: 13, scope: !3848)
!3848 = distinct !DILexicalBlock(scope: !3828, file: !3, line: 139, column: 6)
!3849 = !DILocation(line: 139, column: 6, scope: !3848)
!3850 = !DILocation(line: 139, column: 6, scope: !3828)
!3851 = !DILocation(line: 140, column: 15, scope: !3852)
!3852 = distinct !DILexicalBlock(scope: !3853, file: !3, line: 140, column: 7)
!3853 = distinct !DILexicalBlock(scope: !3848, file: !3, line: 139, column: 18)
!3854 = !DILocation(line: 140, column: 7, scope: !3852)
!3855 = !DILocation(line: 140, column: 19, scope: !3852)
!3856 = !DILocation(line: 140, column: 7, scope: !3853)
!3857 = !DILocation(line: 141, column: 19, scope: !3852)
!3858 = !DILocation(line: 141, column: 27, scope: !3852)
!3859 = !DILocation(line: 141, column: 4, scope: !3852)
!3860 = !DILocation(line: 142, column: 18, scope: !3853)
!3861 = !DILocation(line: 142, column: 10, scope: !3853)
!3862 = !DILocation(line: 142, column: 3, scope: !3853)
!3863 = !DILocation(line: 145, column: 2, scope: !3828)
!3864 = !DILocation(line: 146, column: 1, scope: !3828)
!3865 = !DISubprogram(name: "kernfs_create_empty_dir", scope: !57, file: !57, line: 423, type: !3866, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3866 = !DISubroutineType(types: !3867)
!3867 = !{!159, !159, !166}
!3868 = distinct !DISubprogram(name: "sysfs_remove_mount_point", scope: !3, file: !3, line: 155, type: !3869, scopeLine: 156, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3871)
!3869 = !DISubroutineType(types: !3870)
!3870 = !{null, !3413, !166}
!3871 = !{!3872, !3873, !3874}
!3872 = !DILocalVariable(name: "parent_kobj", arg: 1, scope: !3868, file: !3, line: 155, type: !3413)
!3873 = !DILocalVariable(name: "name", arg: 2, scope: !3868, file: !3, line: 155, type: !166)
!3874 = !DILocalVariable(name: "parent", scope: !3868, file: !3, line: 157, type: !159)
!3875 = !DILocation(line: 155, column: 47, scope: !3868)
!3876 = !DILocation(line: 155, column: 72, scope: !3868)
!3877 = !DILocation(line: 157, column: 2, scope: !3868)
!3878 = !DILocation(line: 157, column: 22, scope: !3868)
!3879 = !DILocation(line: 157, column: 31, scope: !3868)
!3880 = !DILocation(line: 157, column: 44, scope: !3868)
!3881 = !DILocation(line: 159, column: 27, scope: !3868)
!3882 = !DILocation(line: 159, column: 35, scope: !3868)
!3883 = !DILocation(line: 159, column: 2, scope: !3868)
!3884 = !DILocation(line: 160, column: 1, scope: !3868)
!3885 = !DISubprogram(name: "kernfs_remove_by_name_ns", scope: !57, file: !57, line: 441, type: !3886, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3886 = !DISubroutineType(types: !3887)
!3887 = !{!128, !159, !166, !177}
!3888 = distinct !DISubprogram(name: "kmalloc", scope: !68, file: !68, line: 591, type: !3375, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3889)
!3889 = !{!3890, !3891, !3892}
!3890 = !DILocalVariable(name: "size", arg: 1, scope: !3888, file: !68, line: 591, type: !787)
!3891 = !DILocalVariable(name: "flags", arg: 2, scope: !3888, file: !68, line: 591, type: !78)
!3892 = !DILocalVariable(name: "index", scope: !3893, file: !68, line: 594, type: !7)
!3893 = distinct !DILexicalBlock(scope: !3894, file: !68, line: 593, column: 42)
!3894 = distinct !DILexicalBlock(scope: !3888, file: !68, line: 593, column: 6)
!3895 = !DILocation(line: 591, column: 61, scope: !3888)
!3896 = !DILocation(line: 591, column: 73, scope: !3888)
!3897 = !DILocation(line: 593, column: 27, scope: !3894)
!3898 = !DILocation(line: 593, column: 6, scope: !3894)
!3899 = !DILocation(line: 593, column: 33, scope: !3894)
!3900 = !DILocation(line: 593, column: 36, scope: !3894)
!3901 = !DILocation(line: 593, column: 6, scope: !3888)
!3902 = !DILocation(line: 594, column: 3, scope: !3893)
!3903 = !DILocation(line: 594, column: 16, scope: !3893)
!3904 = !DILocation(line: 596, column: 7, scope: !3905)
!3905 = distinct !DILexicalBlock(scope: !3893, file: !68, line: 596, column: 7)
!3906 = !DILocation(line: 596, column: 12, scope: !3905)
!3907 = !DILocation(line: 596, column: 7, scope: !3893)
!3908 = !DILocation(line: 597, column: 25, scope: !3905)
!3909 = !DILocation(line: 597, column: 31, scope: !3905)
!3910 = !DILocation(line: 597, column: 11, scope: !3905)
!3911 = !DILocation(line: 597, column: 4, scope: !3905)
!3912 = !DILocation(line: 599, column: 11, scope: !3893)
!3913 = !DILocation(line: 599, column: 9, scope: !3893)
!3914 = !DILocation(line: 601, column: 33, scope: !3893)
!3915 = !DILocation(line: 601, column: 40, scope: !3893)
!3916 = !DILocation(line: 601, column: 20, scope: !3893)
!3917 = !DILocation(line: 601, column: 5, scope: !3893)
!3918 = !DILocation(line: 601, column: 51, scope: !3893)
!3919 = !DILocation(line: 602, column: 5, scope: !3893)
!3920 = !DILocation(line: 602, column: 12, scope: !3893)
!3921 = !DILocation(line: 600, column: 10, scope: !3893)
!3922 = !DILocation(line: 600, column: 3, scope: !3893)
!3923 = !DILocation(line: 603, column: 2, scope: !3894)
!3924 = !DILocation(line: 604, column: 19, scope: !3888)
!3925 = !DILocation(line: 604, column: 25, scope: !3888)
!3926 = !DILocation(line: 604, column: 9, scope: !3888)
!3927 = !DILocation(line: 604, column: 2, scope: !3888)
!3928 = !DILocation(line: 605, column: 1, scope: !3888)
!3929 = !DISubprogram(name: "kmalloc_large", scope: !68, file: !68, line: 531, type: !3375, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3930 = distinct !DISubprogram(name: "__kmalloc_index", scope: !68, file: !68, line: 444, type: !3931, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3933)
!3931 = !DISubroutineType(types: !3932)
!3932 = !{!7, !787, !469}
!3933 = !{!3934, !3935}
!3934 = !DILocalVariable(name: "size", arg: 1, scope: !3930, file: !68, line: 444, type: !787)
!3935 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !3930, file: !68, line: 445, type: !469)
!3936 = !DILocation(line: 444, column: 60, scope: !3930)
!3937 = !DILocation(line: 445, column: 16, scope: !3930)
!3938 = !DILocation(line: 447, column: 7, scope: !3939)
!3939 = distinct !DILexicalBlock(scope: !3930, file: !68, line: 447, column: 6)
!3940 = !DILocation(line: 447, column: 6, scope: !3930)
!3941 = !DILocation(line: 448, column: 3, scope: !3939)
!3942 = !DILocation(line: 450, column: 6, scope: !3943)
!3943 = distinct !DILexicalBlock(scope: !3930, file: !68, line: 450, column: 6)
!3944 = !DILocation(line: 450, column: 11, scope: !3943)
!3945 = !DILocation(line: 450, column: 6, scope: !3930)
!3946 = !DILocation(line: 451, column: 3, scope: !3943)
!3947 = !DILocation(line: 453, column: 32, scope: !3948)
!3948 = distinct !DILexicalBlock(scope: !3930, file: !68, line: 453, column: 6)
!3949 = !DILocation(line: 453, column: 37, scope: !3948)
!3950 = !DILocation(line: 453, column: 42, scope: !3948)
!3951 = !DILocation(line: 453, column: 45, scope: !3948)
!3952 = !DILocation(line: 453, column: 50, scope: !3948)
!3953 = !DILocation(line: 453, column: 6, scope: !3930)
!3954 = !DILocation(line: 454, column: 3, scope: !3948)
!3955 = !DILocation(line: 455, column: 32, scope: !3956)
!3956 = distinct !DILexicalBlock(scope: !3930, file: !68, line: 455, column: 6)
!3957 = !DILocation(line: 455, column: 37, scope: !3956)
!3958 = !DILocation(line: 455, column: 43, scope: !3956)
!3959 = !DILocation(line: 455, column: 46, scope: !3956)
!3960 = !DILocation(line: 455, column: 51, scope: !3956)
!3961 = !DILocation(line: 455, column: 6, scope: !3930)
!3962 = !DILocation(line: 456, column: 3, scope: !3956)
!3963 = !DILocation(line: 457, column: 6, scope: !3964)
!3964 = distinct !DILexicalBlock(scope: !3930, file: !68, line: 457, column: 6)
!3965 = !DILocation(line: 457, column: 11, scope: !3964)
!3966 = !DILocation(line: 457, column: 6, scope: !3930)
!3967 = !DILocation(line: 457, column: 26, scope: !3964)
!3968 = !DILocation(line: 458, column: 6, scope: !3969)
!3969 = distinct !DILexicalBlock(scope: !3930, file: !68, line: 458, column: 6)
!3970 = !DILocation(line: 458, column: 11, scope: !3969)
!3971 = !DILocation(line: 458, column: 6, scope: !3930)
!3972 = !DILocation(line: 458, column: 26, scope: !3969)
!3973 = !DILocation(line: 459, column: 6, scope: !3974)
!3974 = distinct !DILexicalBlock(scope: !3930, file: !68, line: 459, column: 6)
!3975 = !DILocation(line: 459, column: 11, scope: !3974)
!3976 = !DILocation(line: 459, column: 6, scope: !3930)
!3977 = !DILocation(line: 459, column: 26, scope: !3974)
!3978 = !DILocation(line: 460, column: 6, scope: !3979)
!3979 = distinct !DILexicalBlock(scope: !3930, file: !68, line: 460, column: 6)
!3980 = !DILocation(line: 460, column: 11, scope: !3979)
!3981 = !DILocation(line: 460, column: 6, scope: !3930)
!3982 = !DILocation(line: 460, column: 26, scope: !3979)
!3983 = !DILocation(line: 461, column: 6, scope: !3984)
!3984 = distinct !DILexicalBlock(scope: !3930, file: !68, line: 461, column: 6)
!3985 = !DILocation(line: 461, column: 11, scope: !3984)
!3986 = !DILocation(line: 461, column: 6, scope: !3930)
!3987 = !DILocation(line: 461, column: 26, scope: !3984)
!3988 = !DILocation(line: 462, column: 6, scope: !3989)
!3989 = distinct !DILexicalBlock(scope: !3930, file: !68, line: 462, column: 6)
!3990 = !DILocation(line: 462, column: 11, scope: !3989)
!3991 = !DILocation(line: 462, column: 6, scope: !3930)
!3992 = !DILocation(line: 462, column: 26, scope: !3989)
!3993 = !DILocation(line: 463, column: 6, scope: !3994)
!3994 = distinct !DILexicalBlock(scope: !3930, file: !68, line: 463, column: 6)
!3995 = !DILocation(line: 463, column: 11, scope: !3994)
!3996 = !DILocation(line: 463, column: 6, scope: !3930)
!3997 = !DILocation(line: 463, column: 26, scope: !3994)
!3998 = !DILocation(line: 464, column: 6, scope: !3999)
!3999 = distinct !DILexicalBlock(scope: !3930, file: !68, line: 464, column: 6)
!4000 = !DILocation(line: 464, column: 11, scope: !3999)
!4001 = !DILocation(line: 464, column: 6, scope: !3930)
!4002 = !DILocation(line: 464, column: 26, scope: !3999)
!4003 = !DILocation(line: 465, column: 6, scope: !4004)
!4004 = distinct !DILexicalBlock(scope: !3930, file: !68, line: 465, column: 6)
!4005 = !DILocation(line: 465, column: 11, scope: !4004)
!4006 = !DILocation(line: 465, column: 6, scope: !3930)
!4007 = !DILocation(line: 465, column: 26, scope: !4004)
!4008 = !DILocation(line: 466, column: 6, scope: !4009)
!4009 = distinct !DILexicalBlock(scope: !3930, file: !68, line: 466, column: 6)
!4010 = !DILocation(line: 466, column: 11, scope: !4009)
!4011 = !DILocation(line: 466, column: 6, scope: !3930)
!4012 = !DILocation(line: 466, column: 26, scope: !4009)
!4013 = !DILocation(line: 467, column: 6, scope: !4014)
!4014 = distinct !DILexicalBlock(scope: !3930, file: !68, line: 467, column: 6)
!4015 = !DILocation(line: 467, column: 11, scope: !4014)
!4016 = !DILocation(line: 467, column: 6, scope: !3930)
!4017 = !DILocation(line: 467, column: 26, scope: !4014)
!4018 = !DILocation(line: 468, column: 6, scope: !4019)
!4019 = distinct !DILexicalBlock(scope: !3930, file: !68, line: 468, column: 6)
!4020 = !DILocation(line: 468, column: 11, scope: !4019)
!4021 = !DILocation(line: 468, column: 6, scope: !3930)
!4022 = !DILocation(line: 468, column: 26, scope: !4019)
!4023 = !DILocation(line: 469, column: 6, scope: !4024)
!4024 = distinct !DILexicalBlock(scope: !3930, file: !68, line: 469, column: 6)
!4025 = !DILocation(line: 469, column: 11, scope: !4024)
!4026 = !DILocation(line: 469, column: 6, scope: !3930)
!4027 = !DILocation(line: 469, column: 26, scope: !4024)
!4028 = !DILocation(line: 470, column: 6, scope: !4029)
!4029 = distinct !DILexicalBlock(scope: !3930, file: !68, line: 470, column: 6)
!4030 = !DILocation(line: 470, column: 11, scope: !4029)
!4031 = !DILocation(line: 470, column: 6, scope: !3930)
!4032 = !DILocation(line: 470, column: 26, scope: !4029)
!4033 = !DILocation(line: 471, column: 6, scope: !4034)
!4034 = distinct !DILexicalBlock(scope: !3930, file: !68, line: 471, column: 6)
!4035 = !DILocation(line: 471, column: 11, scope: !4034)
!4036 = !DILocation(line: 471, column: 6, scope: !3930)
!4037 = !DILocation(line: 471, column: 26, scope: !4034)
!4038 = !DILocation(line: 472, column: 6, scope: !4039)
!4039 = distinct !DILexicalBlock(scope: !3930, file: !68, line: 472, column: 6)
!4040 = !DILocation(line: 472, column: 11, scope: !4039)
!4041 = !DILocation(line: 472, column: 6, scope: !3930)
!4042 = !DILocation(line: 472, column: 26, scope: !4039)
!4043 = !DILocation(line: 473, column: 6, scope: !4044)
!4044 = distinct !DILexicalBlock(scope: !3930, file: !68, line: 473, column: 6)
!4045 = !DILocation(line: 473, column: 11, scope: !4044)
!4046 = !DILocation(line: 473, column: 6, scope: !3930)
!4047 = !DILocation(line: 473, column: 26, scope: !4044)
!4048 = !DILocation(line: 474, column: 6, scope: !4049)
!4049 = distinct !DILexicalBlock(scope: !3930, file: !68, line: 474, column: 6)
!4050 = !DILocation(line: 474, column: 11, scope: !4049)
!4051 = !DILocation(line: 474, column: 6, scope: !3930)
!4052 = !DILocation(line: 474, column: 27, scope: !4049)
!4053 = !DILocation(line: 475, column: 6, scope: !4054)
!4054 = distinct !DILexicalBlock(scope: !3930, file: !68, line: 475, column: 6)
!4055 = !DILocation(line: 475, column: 11, scope: !4054)
!4056 = !DILocation(line: 475, column: 6, scope: !3930)
!4057 = !DILocation(line: 475, column: 32, scope: !4054)
!4058 = !DILocation(line: 477, column: 50, scope: !4059)
!4059 = distinct !DILexicalBlock(scope: !3930, file: !68, line: 477, column: 6)
!4060 = !{i8 0, i8 2}
!4061 = !DILocation(line: 477, column: 6, scope: !3930)
!4062 = !DILocation(line: 478, column: 3, scope: !4059)
!4063 = !DILocation(line: 478, column: 3, scope: !4064)
!4064 = distinct !DILexicalBlock(scope: !4065, file: !68, line: 478, column: 3)
!4065 = distinct !DILexicalBlock(scope: !4059, file: !68, line: 478, column: 3)
!4066 = !{i32 -2141720925}
!4067 = !DILocation(line: 478, column: 3, scope: !4065)
!4068 = !DILocation(line: 480, column: 3, scope: !4059)
!4069 = !DILocation(line: 480, column: 3, scope: !4070)
!4070 = distinct !DILexicalBlock(scope: !4059, file: !68, line: 480, column: 3)
!4071 = !DILocation(line: 480, column: 3, scope: !4072)
!4072 = distinct !DILexicalBlock(scope: !4070, file: !68, line: 480, column: 3)
!4073 = !DILocation(line: 480, column: 3, scope: !4074)
!4074 = distinct !DILexicalBlock(scope: !4070, file: !68, line: 480, column: 3)
!4075 = !{i64 2153246574, i64 2153246603, i64 2153246649, i64 2153246707, i64 2153246761, i64 2153246815, i64 2153246870, i64 2153246901}
!4076 = !DILocation(line: 483, column: 2, scope: !3930)
!4077 = !DILocation(line: 484, column: 1, scope: !3930)
!4078 = !DISubprogram(name: "kmalloc_trace", scope: !68, file: !68, line: 525, type: !4079, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4079 = !DISubroutineType(types: !4080)
!4080 = !{!80, !4081, !78, !787}
!4081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4082, size: 64)
!4082 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !4083, line: 325, flags: DIFlagFwdDecl)
!4083 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!4084 = distinct !DISubprogram(name: "kmalloc_type", scope: !68, file: !68, line: 401, type: !4085, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4087)
!4085 = !DISubroutineType(types: !4086)
!4086 = !{!67, !78, !81}
!4087 = !{!4088, !4089}
!4088 = !DILocalVariable(name: "flags", arg: 1, scope: !4084, file: !68, line: 401, type: !78)
!4089 = !DILocalVariable(name: "caller", arg: 2, scope: !4084, file: !68, line: 401, type: !81)
!4090 = !DILocation(line: 401, column: 67, scope: !4084)
!4091 = !DILocation(line: 401, column: 88, scope: !4084)
!4092 = !DILocation(line: 407, column: 6, scope: !4093)
!4093 = distinct !DILexicalBlock(scope: !4084, file: !68, line: 407, column: 6)
!4094 = !DILocation(line: 407, column: 6, scope: !4084)
!4095 = !DILocation(line: 413, column: 3, scope: !4093)
!4096 = !DILocation(line: 423, column: 38, scope: !4097)
!4097 = distinct !DILexicalBlock(scope: !4084, file: !68, line: 423, column: 6)
!4098 = !DILocation(line: 423, column: 44, scope: !4097)
!4099 = !DILocation(line: 423, column: 6, scope: !4084)
!4100 = !DILocation(line: 424, column: 3, scope: !4097)
!4101 = !DILocation(line: 426, column: 3, scope: !4102)
!4102 = distinct !DILexicalBlock(scope: !4084, file: !68, line: 425, column: 6)
!4103 = !DILocation(line: 429, column: 1, scope: !4084)
!4104 = !DISubprogram(name: "__kmalloc", scope: !68, file: !68, line: 488, type: !3375, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4105 = !DISubprogram(name: "__compiletime_assert_245", scope: !68, file: !68, line: 478, type: !2029, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!4106 = !DISubprogram(name: "kernfs_path_from_node", scope: !57, file: !57, line: 397, type: !4107, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4107 = !DISubroutineType(types: !4108)
!4108 = !{!128, !159, !159, !480, !787}
!4109 = !DISubprogram(name: "_raw_spin_lock", scope: !4110, file: !4110, line: 22, type: !4111, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4110 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!4111 = !DISubroutineType(types: !4112)
!4112 = !{null, !4113}
!4113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!4114 = !DISubprogram(name: "_raw_spin_unlock", scope: !4110, file: !4110, line: 39, type: !4111, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
